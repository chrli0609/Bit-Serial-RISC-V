library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
use work.types_pkg.ALL;

entity peripheral_tb is
end peripheral_tb;

architecture behavior of peripheral_tb is

    -- Constants and signals
    constant CLK_PERIOD : time := 10 ns;

    -- DUT signals
    signal clk          : std_logic := '1';
    signal com_enable   : std_logic := '0';
    signal m_active     : std_logic := '0';
    signal s_active     : std_logic;
    signal addr         : unsigned(1 downto 0) := "00";
    signal tx_data		: unsigned(1 downto 0) := "00";
    signal rx_data      : unsigned(1 downto 0) := "00";
    signal parity_data	: unsigned(1 downto 0) := "00";
    signal parity_addr	: unsigned(1 downto 0) := "00";
	signal data4io		: Word;
	signal data4mem		: Word;
	signal data2io		: Word;
	signal data2mem		: Word;
	signal data_addr	: MemoryAddress;
	signal reset		: std_logic := '1';
	signal we_sig		: std_logic;
	signal tb_addr		: MemoryAddress;

begin

    clk_process : process
    begin
        clk <= '1';
        wait for CLK_PERIOD / 2;
        clk <= '0';
        wait for CLK_PERIOD / 2;
    end process;

    uut: entity work.bs_interface
        port map (
            clk         => clk,
            com_enable  => com_enable,
            m_active    => m_active,
            s_active    => s_active,
            addr        => addr,
            tx_data		=> tx_data,
            rx_data     => rx_data,
			data4io		=> data4io,
			data4mem	=> data4mem,
			data_addr	=> data_addr,
			we			=> we_sig
        );
	
	mem: entity work.RAM
		port map (
			clk			=> clk,
			reset		=> reset,

			data_addr	=> data_addr,
			we			=> we_sig,
			data_in		=> data2mem
			-- data_out	=> data4mem
		);

    test_process : process
		variable seed1, seed2 : positive := 5;
		variable rand_real : real;
        variable rand_int : integer;
    begin
		data4mem <= (others => '0');
		data4io <= (others => '0');
        -- Idle State Test
        wait for 50 ns;
		reset <= '0';
        assert (clk = '1' and com_enable = '0' and m_active = '0' and s_active = '0')
            report "Idle state failed" severity error;

        -- Single Write Test
        -- Start communication
		-- Write/Burst write testing
        com_enable <= '1';
        m_active <= '1';
        addr <= "01";  -- 0x0 for single write

		wait for CLK_PERIOD;

		-- for i in 0 to 15 loop 
		-- 	uniform(seed1, seed2, rand_real);
        --     rand_int := integer(rand_real * 4.0);  -- Scale to 0, 1, 2, or 3
        --     tx_data <= to_unsigned(rand_int, 2);
		-- 	-- tx_data <= "10";
		-- 	parity_data <= parity_data xor to_unsigned(rand_int, 2);

		-- 	wait for CLK_PERIOD;
		-- end loop;
        -- 
		-- tx_data <= parity_data;
		-- addr <= "00";

		-- wait for CLK_PERIOD;
		-- tx_data <= "00";
        -- m_active <= '0';
        -- -- Inject parity (even parity for "10" is 1)
        -- -- DUT should send parity and expect ACK from slave

        -- -- Wait for ACK
		-- wait for CLK_PERIOD;
        -- if s_active = '1' then
        --     report "Single write success: ACK received";
        -- else
        --     report "Single write failed: ACK not received" severity error;
        -- end if;

		-- m_active <= '1';
		-- for i in 0 to 15 loop 
		-- 	uniform(seed1, seed2, rand_real);
        --     rand_int := integer(rand_real * 4.0);  -- Scale to 0, 1, 2, or 3
        --     tx_data <= to_unsigned(rand_int, 2);
		-- 	-- tx_data <= "10";
		-- 	parity_data <= parity_data xor to_unsigned(rand_int, 2);

		-- 	wait for CLK_PERIOD;
		-- end loop;

		-- tx_data <= parity_data;
		-- addr <= "00";

		-- wait for CLK_PERIOD;
		-- tx_data <= "00";
        -- m_active <= '0';
        -- -- Deassert signals to end transmission
		-- wait for CLK_PERIOD;
        -- com_enable <= '0';
		-- tx_data <= "00";

        -- wait for CLK_PERIOD;

		-- Read
        com_enable <= '1';
        m_active <= '1';
        addr <= "10";  -- 0x0 for single write
		data4mem <= x"AAAA0000";
		data4io <= x"0000AAAA";

		tb_addr <= x"80000000"; -- Address for I/Os

		parity_data <= "00";
		wait for CLK_PERIOD;

		for i in 15 to 0 loop 
			uniform(seed1, seed2, rand_real);
            rand_int := integer(rand_real * 4.0);  -- Scale to 0, 1, 2, or 3
            addr <= tb_addr(2*i+1 downto 2*i);
			-- tx_data <= "10";
			parity_data <= parity_data xor tb_addr(2*i+1 downto 2*i);

			wait for CLK_PERIOD;
		end loop;
        
		addr <= parity_data;

		wait for CLK_PERIOD;
		tx_data <= "00";
        m_active <= '0';
        -- Inject parity (even parity for "10" is 1)
        -- DUT should send parity and expect ACK from slave

        -- Wait for ACK
		wait for CLK_PERIOD;
        if s_active = '1' then
            report "Single write success: ACK received";
        else
            report "Single write failed: ACK not received" severity error;
		end if;
		
		wait for 16*CLK_PERIOD;
        wait;
    end process;

end behavior;

