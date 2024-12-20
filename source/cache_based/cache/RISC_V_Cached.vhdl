library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dtekv_lib.all;
--use work.debug.all;

entity RISC_V_Cached is
    port(
        -- General interface
        clk, reset    : in  std_logic;

        -- Serial bus interface
        s_clk         : out std_logic;
        s_com_enabled : out std_logic;
        s_m_active    : out std_logic;
        s_m_data      : out std_logic_vector(1 downto 0);
        s_addr        : out std_logic_vector(1 downto 0);

        s_s_active    : in  std_logic;
        s_s_data      : in  std_logic_vector(1 downto 0)
    );
end;

architecture RTL of RISC_V_Cached is
    component dtekv_top_nocache
        port ( 
            clk   : in std_logic;
            reset : in std_logic;
            
            -- DATA CACHE
            dcache_bs              : out std_logic_vector(3 downto 0);
            dcache_adr             : out MemoryAddress;
            dcache_en              : out OneBit;
            dcache_rw              : out OneBit;
            dcache_wrdata          : out Word;
            dcache_lddata          : in  Word;
            dcache_complete        : in  OneBit;

            -- INSTR CACHE
            icache_adr             : out MemoryAddress;
            icache_instr           : in  Word;
            icache_instr_valid     : in  std_logic
        );
    end component;

    component i_cache_top 
        generic(
            WORDS_LINE : integer := 4;
            LINES      : integer := 8
        );
        port(
            -- General interface
            clk, rst : in  std_logic;
            
            -- CPU interface
            i_valid  : out std_logic; 
            word_out : out Word;
            r_addr   : in  MemoryAddress;
        
            -- Serial interface
            we, complete : in  std_logic;
            request      : out std_logic;
            word_in      : in  Word;
            w_addr       : in  MemoryAddress; 
            base_addr    : out MemoryAddress
        );
    end component;

    component d_cache_top
        generic(
            WORDS_LINE : integer := 4;
            LINES      : integer := 8
        );
        port(
            -- General interface
            clk, rst     : in  std_logic;
            
            -- CPU interface
            d_en         : in  OneBit;
            d_w_req      : in  OneBit;
            d_complete   : out OneBit;
            cpu_byte_sel : in  std_logic_vector(3 downto 0);
            cpu_addr     : in  MemoryAddress;
            cpu_data_in  : in  Word;
            cpu_data_out : out Word;
    
            -- Serial interface
            complete     : in  std_logic;
            w_request    : out std_logic;
            r_request    : out std_logic;
            base_addr    : out MemoryAddress;
            bs_we        : in  std_logic;
            bs_data_in   : in  Word;
            bs_re        : in  std_logic;
            bs_data_out  : out Word;
            bs_addr      : in  MemoryAddress
        );
    end component;

    component cache_bypass_top
        port(
            -- General interface
            clk, rst     : in  std_logic;
            
            -- CPU interface
            d_en         : in  OneBit;
            d_w_req      : in  OneBit;
            d_complete   : out OneBit;
            cpu_byte_sel : in  std_logic_vector(3 downto 0);
            cpu_addr     : in  MemoryAddress;
            cpu_data_in  : in  Word;
            cpu_data_out : out Word;
    
            -- Serial interface
            complete     : in  std_logic;
            w_request    : out std_logic;
            r_request    : out std_logic;
            bs_addr      : out MemoryAddress;
            bs_data_out  : out Word;
            bs_data_in   : in  Word
        );
    end component;

    component bus_interface_top
        generic(
            RESPONSE_TIME : integer := 8;
            WORDS_LINE    : integer := 4
        );
        port (
            clk, rst      : in  std_logic;
    
            -- I cache interface
            i_we          : out std_logic;
            i_complete    : out std_logic;
            i_request     : in  std_logic;
            i_word_in     : out Word;
            i_w_addr      : out MemoryAddress;
            i_base_addr   : in MemoryAddress;
    
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
    end component;

    component arbiter
        generic(
            MODULES : integer := 3
        );
        port (
            clk, rst : in  std_logic;
            requests : in  std_logic_vector(MODULES-1 downto 0);
            grants   : out std_logic_vector(MODULES-1 downto 0)
        );
    end component;

    constant WORDS_LINE    : integer := 4;
    constant LINES         : integer := 16;
    constant MODULES       : integer := 3;
	 constant RESPONSE_TIME : integer := 8;
	 constant IO_BASE_ADDR  : MemoryAddress := X"00080000";

    -- CPU DATA CACHE
    signal dcache_bs           : std_logic_vector(3 downto 0);
    signal dcache_adr          : MemoryAddress;
    signal dcache_en           : OneBit;
    signal dcache_rw           : OneBit;
    signal dcache_wrdata       : Word;
    signal dcache_lddata       : Word;
    signal dcache_complete     : OneBit;
    signal data_en             : OneBit;
    signal bypass_en           : OneBit;
    signal data_lddata         : Word;
    signal bypass_lddata       : Word;
    signal data_complete       : OneBit;
    signal bypass_complete     : OneBit;

    -- CPU INSTR CACHE
    signal icache_adr          : MemoryAddress;
    signal icache_instr        : Word := X"00000013";
    signal icache_instr_valid  : std_logic;

    -- INSTR CACHE CACHE SERIAL BUS
    signal i_we, i_complete, i_request : std_logic;
    signal word_in                     : Word;
    signal w_addr, i_base_addr         : MemoryAddress;

    -- DATA CACHE SERIAL BUS
    signal complete, w_request, r_request, bs_we, bs_re : std_logic;
    signal d_base_addr, bs_addr                         : MemoryAddress;  
    signal bs_data_in, bs_data_out                      : Word;

    -- BYPASS SERIAL BUS
    signal b_complete    : std_logic;
    signal b_w_request   : std_logic;
    signal b_r_request   : std_logic;

    signal b_bs_addr     : MemoryAddress;
    signal b_bs_data_out : Word;
    signal b_bs_data_in  : Word;

    -- ARBITER
    signal dcache_arb_request : std_logic;
    signal bypass_arb_request : std_logic;
    signal a_grants           : std_logic_vector(2 downto 0);
    signal a_requests         : std_logic_vector(2 downto 0);

begin 

    data_complete <= dcache_complete or bypass_complete;
    data_lddata <= bypass_lddata when (dcache_adr >= IO_BASE_ADDR) else dcache_lddata;

    CPU: dtekv_top_nocache port map( 
        clk                => clk,  
        reset              => reset,

        -- DATA CACHE
        dcache_bs          => dcache_bs,   
        dcache_adr         => dcache_adr,
        dcache_en          => data_en,
        dcache_rw          => dcache_rw,
        dcache_wrdata      => dcache_wrdata,
        dcache_lddata      => data_lddata,
        dcache_complete    => data_complete,

        -- INSTR CACHE
        icache_adr         => icache_adr,
        icache_instr       => icache_instr,    
        icache_instr_valid => icache_instr_valid
    );

    i_cache: i_cache_top generic map(
        WORDS_LINE => WORDS_LINE,
        LINES      => LINES
    )
    port map(
        clk        => clk, 
        rst        => reset,

        -- CPU INTERFACE
        i_valid    => icache_instr_valid,
        word_out   => icache_instr,
        r_addr     => icache_adr,

        -- SERIAL INTERFACE
        we         => i_we, 
        complete   => i_complete,
        request    => i_request,
        word_in    => word_in,
        w_addr     => w_addr,
        base_addr  => i_base_addr
    );

    dcache_en <= data_en when (dcache_adr < IO_BASE_ADDR) else "0";

    d_cache: d_cache_top generic map(
        WORDS_LINE   => WORDS_LINE,
        LINES        => LINES
    )
    port map(
        clk          => clk, 
        rst          => reset,

        -- CPU INTERFACE
        d_en         => dcache_en, 
        d_w_req      => dcache_rw, 
        d_complete   => dcache_complete, 
        cpu_byte_sel => dcache_bs, 
        cpu_addr     => dcache_adr, 
        cpu_data_in  => dcache_wrdata, 
        cpu_data_out => dcache_lddata,

        -- SERIAL INTERFACE
        complete     => complete, 
        w_request    => w_request, 
        r_request    => r_request, 
        base_addr    => d_base_addr, 
        bs_we        => bs_we, 
        bs_data_in   => bs_data_in, 
        bs_re        => bs_re, 
        bs_data_out  => bs_data_out, 
        bs_addr      => bs_addr
    );

    bypass_en <= data_en when (dcache_adr >= IO_BASE_ADDR) else "0";

    bypass: cache_bypass_top port map(
        clk          => clk,
        rst          => reset,
        
        -- CPU INTERFACE
        d_en         => bypass_en,
        d_w_req      => dcache_rw,
        d_complete   => bypass_complete,
        cpu_byte_sel => dcache_bs,
        cpu_addr     => dcache_adr,
        cpu_data_in  => dcache_wrdata,
        cpu_data_out => bypass_lddata,

        -- SERIAL INTERFACE
        complete     => b_complete,
        w_request    => b_w_request,
        r_request    => b_r_request,
        bs_addr      => b_bs_addr,
        bs_data_out  => b_bs_data_out,
        bs_data_in   => b_bs_data_in
    );

    dcache_arb_request <= w_request or r_request;
    bypass_arb_request <= b_w_request or b_r_request;

    a_requests <= (bypass_arb_request, dcache_arb_request, i_request);

    rr_arbiter: arbiter generic map(
        MODULES  => MODULES
    )
    port map(
        clk      => clk, 
        rst      => reset,
        requests => a_requests,
        grants   => a_grants
    );

    bus_interface: bus_interface_top generic map(
        RESPONSE_TIME => RESPONSE_TIME,
        WORDS_LINE    => WORDS_LINE
    )
    port map(
        clk           => clk, 
        rst           => reset,

        -- I CACHE INTERFACE 
        i_we          => i_we, 
        i_complete    => i_complete,
        i_request     => i_request,
        i_word_in     => word_in,
        i_w_addr      => w_addr,
        i_base_addr   => i_base_addr,

        -- D CACHE INTERFACE
        d_complete    => complete,
        d_w_request   => w_request,
        d_r_request   => r_request,
        d_base_addr   => d_base_addr,

        d_bs_we       => bs_we,
        d_bs_data_in  => bs_data_in,
        d_bs_re       => bs_re,
        d_bs_data_out => bs_data_out,
        d_bs_addr     => bs_addr,

        -- BYPASS INTERFACE
        b_complete    => b_complete,
        b_w_request   => b_w_request,
        b_r_request   => b_r_request,

        b_bs_addr     => b_bs_addr,
        b_bs_data_out => b_bs_data_out,
        b_bs_data_in  => b_bs_data_in,

        -- ARBITER INTERFACE
        a_grants      => a_grants,

        -- BUS INTERFACE
        s_clk         => s_clk,
        s_com_enabled => s_com_enabled,
        s_m_active    => s_m_active,
        s_m_data      => s_m_data,
        s_addr        => s_addr,

        s_s_active    => s_s_active,
        s_s_data      => s_s_data    
    );
end;