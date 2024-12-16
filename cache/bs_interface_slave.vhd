library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
-- use work.debug.all;

entity bs_interface_slave is
	generic(
        RESPONSE_TIME : integer  := 8;
        WORDS_LINE    : integer  := 4
    );
	port (	clk				: in std_logic;
			com_enable		: in std_logic;
			m_active		: in std_logic;
			tx_data			: in unsigned(1 downto 0);
			addr			: in unsigned(1 downto 0);
			s_active		: out std_logic;
			rx_data			: out unsigned(1 downto 0);

			data_addr		: out MemoryAddress;
			we				: out std_logic;
			data4mem		: in Word;					-- Data from memory
			data2mem		: out Word;					-- Data to memory
			data4io			: in Word;					-- Data from IO 
			data2io			: out Word					-- Data to IO 
		 );
end entity bs_interface_slave;

architecture Behavioral of bs_interface_slave is

    type state_type is (IDLE, WR_TX, WR_WAIT_ACK, WR_WAIT_NACK, RD_TX_ADDR, RD_TX_DATA);
	signal current_state		: state_type := IDLE;
	signal burst				: std_logic := '0';
	signal mode					: unsigned(1 downto 0) := "00";
	signal counter				: integer range 0 to 2**(3+WordSize) := 0;
	signal br_counter			: integer range 0 to WORDS_LINE := WORDS_LINE; -- Burst read counter
	signal target_addr			: MemoryAddress := (others => '0');
	signal data_packet			: Word := (others => '0');
	signal parity_check_data	: unsigned(1 downto 0) := (others => '0');
	signal parity_check_addr	: unsigned(1 downto 0) := (others => '0');
	signal we_reg				: std_logic := '0';

begin

	s_active <= '1' when (current_state = WR_TX and counter = 2**(3+WordSize) and parity_check_data = tx_data and (burst = '1' or (burst = '0' and parity_check_addr = addr))) or (current_state = RD_TX_ADDR and counter = 2**(3+WordSize) and parity_check_addr = addr) or (current_state = RD_TX_DATA) else '0';

    process(clk)
    begin
		if rising_edge(clk) then
			case current_state is
				when IDLE =>
					we_reg <= '0';
					rx_data <= (others => '0');
					if com_enable = '1' and m_active = '1' then 
						target_addr <= (others => '0');
						parity_check_data <= (others => '0');
						parity_check_addr <= (others => '0');
						-- counter <= 2**(3+WordSize);
						counter <= 0;
						mode <= addr;
						case addr is
							when "00" =>
								current_state <= WR_TX;
							when "01" =>
								current_state <= WR_TX;
							when "10" =>
								current_state <= RD_TX_ADDR;
							when "11" =>
								current_state <= RD_TX_ADDR;
								br_counter <= WORDS_LINE;
							when others =>
								current_state <= IDLE;
						end case;
					end if;

				when WR_TX =>
					if (counter = 2**(3+WordSize)) then
						-- Parity check:
						if parity_check_data /= tx_data then 
							current_state <= WR_WAIT_NACK;
							burst <= '0';
						elsif burst = '0' and parity_check_addr /= addr then
							current_state <= WR_WAIT_NACK;
						else
							current_state <= WR_WAIT_ACK;
							we_reg <= '1';
							burst <= '0';
						end if;
					else
						parity_check_data <= parity_check_data xor tx_data;
						parity_check_addr <= parity_check_addr xor addr;
						data_packet(counter+1 downto counter) <= tx_data;
						if burst = '0' then
							target_addr(counter+1 downto counter) <= addr;
						end if;
						counter <= counter + 2;
					end if;

				when WR_WAIT_ACK =>
					we_reg <= '0';

					if mode = "00" then
						current_state <= IDLE;
					elsif mode = "01" then
						if burst = '0' then
							burst <= '1';
						end if;
						if com_enable = '1' and m_active = '1' then
							current_state <= WR_TX;
							target_addr <= target_addr + to_unsigned(2**WordSize, MemoryAddress'length);
							parity_check_data <= (others => '0');
							parity_check_addr <= (others => '0');
							data_packet <= ((Word'length - 3 downto 0 => '0') & tx_data);
							counter <= 2;
						else
							burst <= '0';
							current_state <= IDLE;
						end if;
					end if;

				when WR_WAIT_NACK =>
					current_state <= IDLE;

				when RD_TX_ADDR =>
					if (counter = 2**(3+WordSize)) then
						-- Parity check:
						if parity_check_addr /= addr then
							current_state <= IDLE;
						else
							current_state <= RD_TX_DATA;
							counter <= 2;
							target_addr <= target_addr + to_unsigned(2**WordSize, MemoryAddress'length);
							if target_addr = ('1' & (MemoryAddress'length - 2 downto 0 => '0')) then
								data_packet <= data4io;
								rx_data <= data4io(1 downto 0);
								parity_check_data <= data4io(1 downto 0);
							else
								data_packet <= data4mem;
								rx_data <= data4mem(1 downto 0);
								parity_check_data <= data4mem(1 downto 0);
							end if;
						end if;
					else
						parity_check_addr <= parity_check_addr xor addr;
						target_addr(counter+1 downto counter) <= addr;
						counter <= counter + 2;
					end if;
				
				when RD_TX_DATA =>
					if counter = 2**(3+WordSize) then
						if mode = "11" and br_counter /= 1 then
							br_counter <= br_counter - 1;
							counter <= 0;
							if target_addr = ('1' & (MemoryAddress'length - 2 downto 0 => '0')) then
								data_packet <= data4io;
							else
								data_packet <= data4mem;
							end if;
							target_addr <= target_addr + to_unsigned(2**WordSize, MemoryAddress'length);
						else
							current_state <= IDLE;
						end if;
						rx_data <= parity_check_data;
						parity_check_data <= (others => '0');
					else
						counter <= counter + 2;
						parity_check_data <= parity_check_data xor data_packet(counter+1 downto counter);
						rx_data <= data_packet(counter+1 downto counter);
					end if;

			end case;
		end if;
    end process;

	we <= we_reg;
	data_addr <= target_addr;

	data2io <= data_packet when current_state = WR_WAIT_ACK and burst = '0' and target_addr = ('1' & (MemoryAddress'length - 2 downto 0 => '0')) else (others => '0');

	data2mem <= data_packet when current_state = WR_WAIT_ACK and burst = '0' and target_addr /= ('1' & (MemoryAddress'length - 2 downto 0 => '0')) else (others => '0');

end Behavioral;
