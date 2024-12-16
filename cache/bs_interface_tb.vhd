library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
-- use work.debug.all;

entity bs_interface_tb is
end entity;

architecture testbench of bs_interface_tb is
    -- Signals for clock and reset
    signal clk          : std_logic := '1';
    signal rst          : std_logic := '0';

    -- Signals for master interface
    signal i_request     : std_logic := '0';
    signal i_we          : std_logic;
    signal i_complete    : std_logic;
    signal i_word_in     : Word;
    signal i_w_addr      : MemoryAddress;
    signal i_base_addr   : MemoryAddress := (others => '0');

    signal d_w_request   : std_logic := '0';
    signal d_r_request   : std_logic := '0';
    signal d_complete    : std_logic;
    signal d_base_addr   : MemoryAddress := (others => '0');

    signal d_bs_we       : std_logic;
    signal d_bs_data_in  : Word;
    signal d_bs_re       : std_logic;
    signal d_bs_data_out : Word := (others => '0');
    signal d_bs_addr     : MemoryAddress;

    signal b_w_request   : std_logic := '0';
    signal b_r_request   : std_logic := '0';
    signal b_complete    : std_logic;

    signal b_bs_addr     : MemoryAddress := (others => '0');
    signal b_bs_data_out : Word := (others => '0');
    signal b_bs_data_in  : Word;

    signal a_grants      : std_logic_vector(2 downto 0) := (others => '0');

    -- Signals for slave interface
    signal data_addr     : MemoryAddress;
    signal we            : std_logic;
    signal data4mem      : Word := (others => '0');
    signal data2mem      : Word;
    signal data4io       : Word := (others => '0');
    signal data2io       : Word;

begin

    -- Clock generation
    clk_process : process
    begin
        wait for 5 ns;
        clk <= not clk;
    end process;

    -- Instantiate bs_protocol
    uut: entity work.bs_protocol
        port map (
            clk          => clk,
            rst          => rst,

            -- Master interface ports
            i_we          => i_we,
            i_complete    => i_complete,
            i_request     => i_request,
            i_word_in     => i_word_in,
            i_w_addr      => i_w_addr,
            i_base_addr   => i_base_addr,

            d_complete    => d_complete,
            d_w_request   => d_w_request,
            d_r_request   => d_r_request,
            d_base_addr   => d_base_addr,

            d_bs_we       => d_bs_we,
            d_bs_data_in  => d_bs_data_in,
            d_bs_re       => d_bs_re,
            d_bs_data_out => d_bs_data_out,
            d_bs_addr     => d_bs_addr,

            b_complete    => b_complete,
            b_w_request   => b_w_request,
            b_r_request   => b_r_request,

            b_bs_addr     => b_bs_addr,
            b_bs_data_out => b_bs_data_out,
            b_bs_data_in  => b_bs_data_in,

            a_grants      => a_grants,

            -- Slave interface ports
            data_addr     => data_addr,
            we            => we,
            data4mem      => data4mem,
            data2mem      => data2mem,
            data4io       => data4io,
            data2io       => data2io
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        rst <= '1';
        i_base_addr <= x"0000ABCD";
        d_base_addr <= x"00080008";
        d_bs_data_out <= x"FEDCBA98";
        b_bs_addr <= x"000C000C";
        b_bs_data_out <= x"ABCDEF01";
        wait for 20 ns;
        rst <= '0';

        data4mem <= x"12345678";
        data4io <= x"87654321";

        -- Example stimulus: Instruction fetch request
        i_request <= '1';
        a_grants <= "001";
        wait until i_complete = '1';
        i_request <= '0';

        -- Data read request
        -- d_r_request <= '1';
        -- a_grants <= "010";
        -- wait until d_complete = '1';
        -- d_r_request <= '0';

        -- Data write request
        -- a_grants <= "010";
        -- d_w_request <= '1';
        -- wait until d_complete = '1';
        -- d_w_request <= '0';

        -- Bypass read request
        -- b_r_request <= '1';
        -- a_grants <= "100";
        -- wait until b_complete = '1';
        -- b_r_request <= '0';

        -- Bypass write request
        -- b_w_request <= '1';
        -- a_grants <= "100";
        -- wait until b_complete = '1';
        -- b_w_request <= '0';

        wait;
    end process;

end architecture;