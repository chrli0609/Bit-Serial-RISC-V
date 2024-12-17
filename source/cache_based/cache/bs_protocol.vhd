library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types_pkg.all;

entity bs_protocol is
    generic(
        RESPONSE_TIME : integer := 8;
        WORDS_LINE    : integer := 4
    );
    port (
        clk, rst      : in  std_logic;

        -- Master interface ports
        i_we          : out std_logic;
        i_complete    : out std_logic;
        i_request     : in  std_logic;
        i_word_in     : out Word;
        i_w_addr      : out MemoryAddress;
        i_base_addr   : in  MemoryAddress;

        d_complete    : out std_logic;
        d_w_request   : in  std_logic;
        d_r_request   : in  std_logic;
        d_base_addr   : in  MemoryAddress;

        d_bs_we       : out std_logic;
        d_bs_data_in  : out Word;
        d_bs_re       : out std_logic;
        d_bs_data_out : in  Word;
        d_bs_addr     : out MemoryAddress;

        b_complete    : out std_logic;
        b_w_request   : in  std_logic;
        b_r_request   : in  std_logic;

        b_bs_addr     : in  MemoryAddress;
        b_bs_data_out : in  Word;
        b_bs_data_in  : out Word;

        a_grants      : in  std_logic_vector(2 downto 0);

        -- Slave interface ports
        data_addr     : out MemoryAddress;
        we            : out std_logic;
        data4mem      : in  Word;
        data2mem      : out Word;
        data4io       : in  Word;
        data2io       : out Word
    );
end entity;

architecture Behavioral of bs_protocol is

    -- Component declarations
    component bs_interface_master
        generic(
            RESPONSE_TIME : integer;
            WORDS_LINE    : integer
        );
        port (
            clk, rst      : in  std_logic;

            -- Master interface ports
            i_we          : out std_logic;
            i_complete    : out std_logic;
            i_request     : in  std_logic;
            i_word_in     : out Word;
            i_w_addr      : out MemoryAddress;
            i_base_addr   : in  MemoryAddress;

            d_complete    : out std_logic;
            d_w_request   : in  std_logic;
            d_r_request   : in  std_logic;
            d_base_addr   : in  MemoryAddress;

            d_bs_we       : out std_logic;
            d_bs_data_in  : out Word;
            d_bs_re       : out std_logic;
            d_bs_data_out : in  Word;
            d_bs_addr     : out MemoryAddress;

            b_complete    : out std_logic;
            b_w_request   : in  std_logic;
            b_r_request   : in  std_logic;

            b_bs_addr     : in  MemoryAddress;
            b_bs_data_out : in  Word;
            b_bs_data_in  : out Word;

            a_grants      : in  std_logic_vector(2 downto 0);

            -- Bus interface signals
            s_clk         : out std_logic;
            s_com_enabled : out std_logic;
            s_m_active    : out std_logic;
            s_m_data      : out std_logic_vector(1 downto 0);
            s_addr        : out std_logic_vector(1 downto 0);
            s_s_active    : in  std_logic;
            s_s_data      : in  std_logic_vector(1 downto 0)
        );
    end component;

    component bs_interface_slave
        port (
            clk            : in std_logic;
            com_enable     : in std_logic;
            m_active       : in std_logic;
            tx_data        : in unsigned(1 downto 0);
            addr           : in unsigned(1 downto 0);
            s_active       : out std_logic;
            rx_data        : out unsigned(1 downto 0);

            data_addr      : out MemoryAddress;
            we             : out std_logic;
            data4mem       : in  Word;
            data2mem       : out Word;
            data4io        : in  Word;
            data2io        : out Word
        );
    end component;

    -- Internal signals to connect master and slave
    signal s_clk_internal         : std_logic;
    signal s_com_enabled_internal : std_logic;
    signal s_m_active_internal    : std_logic;
    signal s_m_data_internal      : std_logic_vector(1 downto 0);
    signal s_addr_internal        : std_logic_vector(1 downto 0);
    signal s_s_active_internal    : std_logic;
    signal s_s_data_internal      : unsigned(1 downto 0);

begin

    -- Instantiate master interface
    master_inst: bs_interface_master
        generic map (
            RESPONSE_TIME => RESPONSE_TIME,
            WORDS_LINE    => WORDS_LINE
        )
        port map (
            clk       => clk,
            rst       => rst,

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

            -- Bus interface signals
            s_clk         => s_clk_internal,
            s_com_enabled => s_com_enabled_internal,
            s_m_active    => s_m_active_internal,
            s_m_data      => s_m_data_internal,
            s_addr        => s_addr_internal,
            s_s_active    => s_s_active_internal,
            s_s_data      => std_logic_vector(s_s_data_internal)
        );

    -- Instantiate slave interface
    slave_inst: bs_interface_slave
        port map (
            clk         => clk,
            com_enable  => s_com_enabled_internal,
            m_active    => s_m_active_internal,
            tx_data     => unsigned(s_m_data_internal),
            addr        => unsigned(s_addr_internal),
            s_active    => s_s_active_internal,
            rx_data     => s_s_data_internal,

            data_addr   => data_addr,
            we          => we,
            data4mem    => data4mem,
            data2mem    => data2mem,
            data4io     => data4io,
            data2io     => data2io
        );

end Behavioral;
