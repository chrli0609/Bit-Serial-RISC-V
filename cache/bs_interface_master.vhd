library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
-- use work.debug.all;

entity bs_interface_master is
    generic(
        RESPONSE_TIME : integer  := 8;
        WORDS_LINE    : integer  := 4
    );
    port (
        clk, rst      : in  std_logic;

        -- I cache interface
        i_we          : out std_logic;
        i_complete    : out std_logic;
        i_request     : in  std_logic;
        i_word_in     : out Word;
        i_w_addr      : out MemoryAddress;
        i_base_addr   : in  MemoryAddress;

        -- D cache interface
        d_complete    : out std_logic;
        d_w_request   : in  std_logic;
        d_r_request   : in  std_logic;
        d_base_addr   : in  MemoryAddress;

        d_bs_we       : out std_logic;
        d_bs_data_in  : out Word;
        d_bs_re       : out std_logic;
        d_bs_data_out : in  Word;
        d_bs_addr     : out MemoryAddress;

        -- Bypass interface
        b_complete    : out std_logic;
        b_w_request   : in  std_logic;
        b_r_request   : in  std_logic;

        b_bs_addr     : in  MemoryAddress;
        b_bs_data_out : in  Word;
        b_bs_data_in  : out Word;

        -- Arbiter interface
        a_grants      : in  std_logic_vector(2 downto 0);

        -- Bus interface
        s_clk         : out std_logic;
        s_com_enabled : out std_logic;
        s_m_active    : out std_logic;
        s_m_data      : out std_logic_vector(1 downto 0);
        s_addr        : out std_logic_vector(1 downto 0);

        s_s_active    : in  std_logic;
        s_s_data      : in  std_logic_vector(1 downto 0)

    ) ;
end;

architecture rtl of bs_interface_master is
    constant WordSize : integer := 2;

    type state_type is (IDLE, WR_TX, WR_WAIT_ACK, RD_TX_ADDR, RD_WAIT_ACK, RD_TX_DATA);
    signal current_state        : state_type := IDLE;
    signal request_sel          : std_logic_vector(2 downto 0):= "000"; 
    signal mode                 : unsigned(1 downto 0) := "00";
    signal counter              : integer range 0 to 2**(3+WordSize) := 2**(3+WordSize);
    signal br_counter           : integer range 0 to WORDS_LINE := WORDS_LINE; -- Burst read counter
    signal target_addr          : MemoryAddress := (others => '0');
    signal data_packet          : Word := (others => '0');
    signal parity_check_data    : unsigned(1 downto 0) := (others => '0');
    signal parity_check_addr    : unsigned(1 downto 0) := (others => '0');
    signal we_reg               : std_logic := '0';

begin

    -- State transition process
    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= IDLE;
            s_com_enabled <= '0';
            s_m_active <= '0';
            s_m_data <= (others => '0');
            s_addr <= (others => '0');
            data_packet <= (others => '0');
            target_addr <= (others => '0');
            counter <= 0;
            br_counter <= 0;
            i_we <= '0';
            i_complete <= '0';
            i_w_addr <= (others => '0');
            i_word_in <= (others => '0');
            d_bs_we <= '0';
            d_bs_data_in <= (others => '0');
            d_complete <= '0';
            d_bs_re <= '0';
            d_bs_addr <= (others => '0');
            b_bs_data_in <= (others => '0');
            b_complete <= '0';
        elsif rising_edge(clk) then
            case current_state is
                when IDLE =>
                    i_we <= '0';
                    i_complete <= '0';
                    i_w_addr <= (others => '0');
                    i_word_in <= (others => '0');
                    d_bs_we <= '0';
                    d_bs_data_in <= (others => '0');
                    d_complete <= '0';
                    d_bs_re <= '0';
                    d_bs_addr <= (others => '0');
                    b_bs_data_in <= (others => '0');
                    b_complete <= '0';
                    if a_grants(0) = '1' then
                        if i_request = '1' then
                            s_com_enabled <= '1';
                            s_m_active <= '1';
                            target_addr <= i_base_addr;
                            parity_check_data <= (others => '0');
                            parity_check_addr <= (others => '0');
                            target_addr <= i_base_addr;
                            counter <= 0;
                            br_counter <= 0;
                            mode <= "11";
                            s_addr <= "11";
                            current_state <= RD_TX_ADDR;
                        end if;
                    elsif a_grants(1) = '1' then
                        if d_w_request = '1' then
                            s_com_enabled <= '1';
                            s_m_active <= '1';
                            target_addr <= d_base_addr;
                            data_packet <= d_bs_data_out;
                            parity_check_data <= (others => '0');
                            parity_check_addr <= (others => '0');
                            counter <= 0;
                            br_counter <= 0;
                            mode <= "01";
                            s_addr <= "01";
                            current_state <= WR_TX;
                        elsif d_r_request = '1' then
                            s_com_enabled <= '1';
                            s_m_active <= '1';
                            target_addr <= d_base_addr;
                            parity_check_data <= (others => '0');
                            parity_check_addr <= (others => '0');
                            counter <= 0;
                            br_counter <= 0;
                            mode <= "11";
                            s_addr <= "11";
                            current_state <= RD_TX_ADDR;
                        end if;
                    elsif a_grants(2) = '1' then
                        if b_w_request = '1' then
                            s_com_enabled <= '1';
                            s_m_active <= '1';
                            target_addr <= b_bs_addr;
                            data_packet <= b_bs_data_out;
                            parity_check_data <= (others => '0');
                            parity_check_addr <= (others => '0');
                            counter <= 0;
                            mode <= "00";
                            s_addr <= "00";
                            current_state <= WR_TX;
                        elsif b_r_request = '1' then
                            s_com_enabled <= '1';
                            s_m_active <= '1';
                            target_addr <= b_bs_addr;
                            parity_check_data <= (others => '0');
                            parity_check_addr <= (others => '0');
                            counter <= 0;
                            mode <= "10";
                            s_addr <= "10";
                            current_state <= RD_TX_ADDR;
                        end if;
                    else
                        s_com_enabled <= '0';
                        s_m_active <= '0';
                        s_m_data <= (others => '0');
                        s_addr <= (others => '0');
                        data_packet <= (others => '0');
                        target_addr <= (others => '0');
                        counter <= 0;
                        br_counter <= 0;
                    end if;
                    request_sel <= a_grants;

                when WR_TX =>
                    s_m_active <= '1';
                    if counter < 2**(3+WordSize) then
                        counter <= counter + 2;
                        s_m_data <= std_logic_vector(data_packet(counter+1 downto counter));
                        parity_check_data <= parity_check_data xor data_packet(counter+1 downto counter);
                        s_addr <= std_logic_vector(target_addr(counter+1 downto counter));
                        parity_check_addr <= parity_check_addr xor target_addr(counter+1 downto counter);
                    else
                        current_state <= WR_WAIT_ACK;
                        s_m_data <= std_logic_vector(parity_check_data);
                        s_addr <= std_logic_vector(parity_check_addr);
                        if request_sel(1) = '1' then
                            d_bs_re <= '1';
                            d_bs_addr <= target_addr + 4;
                            target_addr <= target_addr + 4;
                        end if;
                    end if;

                when WR_WAIT_ACK =>
                    if s_s_active = '1' then
                        if request_sel(1) = '1' and br_counter < WORDS_LINE - 1 then
                            br_counter <= br_counter + 1;
                            d_bs_re <= '0';
                            data_packet <= d_bs_data_out;
                            s_m_data <= std_logic_vector(d_bs_data_out(1 downto 0));
                            parity_check_data <= d_bs_data_out(1 downto 0);
                            counter <= 2;
                            current_state <= WR_TX;
                        else
                            if request_sel(1) = '1' then
                                d_complete <= '1';
                            else 
                                b_complete <= '1';
                            end if;
                            s_com_enabled <= '0';
                            current_state <= IDLE;
                        end if;
                    else
                        s_com_enabled <= '0';
                        current_state <= IDLE;
                    end if;

                when RD_TX_ADDR =>
                    if counter < 2**(3+WordSize) then
                        counter <= counter + 2;
                        s_addr <= std_logic_vector(target_addr(counter+1 downto counter));
                        parity_check_addr <= parity_check_addr xor target_addr(counter+1 downto counter);
                    else
                        current_state <= RD_WAIT_ACK;
                        s_addr <= std_logic_vector(parity_check_addr);
                    end if;

                when RD_WAIT_ACK =>
                    s_m_active <= '0';
                    if s_s_active /= '1' then
                        current_state <= IDLE;
                    else
                        current_state <= RD_TX_DATA;
                        parity_check_data <= (others => '0');
                        counter <= 0;
                    end if;

                when RD_TX_DATA =>
                    if counter < 2**(3+WordSize) then
                        i_we <= '0';
                        d_bs_we <= '0';
                        counter <= counter + 2;
                        data_packet(counter+1 downto counter) <= unsigned(s_s_data);
                        parity_check_data <= parity_check_data xor unsigned(s_s_data);
                    else
                        if parity_check_data = unsigned(s_s_data) then
                            if request_sel(0) = '1' then
                                i_we <= '1';
                                i_word_in <= data_packet;
                                i_w_addr <= target_addr;
                                data_packet <= (others => '0');
                                if br_counter = WORDS_LINE - 1 then
                                    current_state <= IDLE;
                                    i_complete <= '1';
                                end if;
                                counter <= 0;
                                br_counter <= br_counter + 1;
                                target_addr <= target_addr + 4;
                                parity_check_data <= (others => '0');
                            elsif request_sel(1) = '1' then
                                d_bs_we <= '1';
                                d_bs_data_in <= data_packet;
                                d_bs_addr <= target_addr;
                                if br_counter = WORDS_LINE - 1 then
                                    current_state <= IDLE;
                                    d_complete <= '1';
                                end if;
                                counter <= 0;
                                br_counter <= br_counter + 1;
                                target_addr <= target_addr + 4;
                                parity_check_data <= (others => '0');
                            else
                                current_state <= IDLE;
                                b_complete <= '1';
                                b_bs_data_in <= data_packet;
                            end if;
                        else
                            current_state <= IDLE;
                        end if;
                    end if;
                
            end case;
        end if;
    end process;

    s_clk <= clk when current_state /= IDLE else '0';

end rtl;
