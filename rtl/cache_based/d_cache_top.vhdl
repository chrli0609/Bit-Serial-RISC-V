library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dtekv_lib.all;
--use work.debug.all;

entity d_cache_top is
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
end;

architecture rtl of d_cache_top is
    component d_cache_memory
        generic(
            WORDS_LINE : integer := 4;--8;
            LINES      : integer := 8 --64
        );
        port(
            -- To General interface
            clk, rst    : in  std_logic;
    
            -- Bit serial bus interface
            bs_we       : in  std_logic;     -- Bit serial bus write enable
            bs_re       : in  std_logic;     -- Bit serial bus read enable
            bs_data_in  : in  Word;          -- Bit serial bus data in
            bs_data_out : out Word;          -- Bit serial bus data out
            bs_addr     : in  MemoryAddress; -- Bit serial bus addr
            
            -- CPU interface
            cpu_we       : in  std_logic; 
            cpu_re       : in  std_logic;
            cpu_byte_sel : in  std_logic_vector(3 downto 0);
            cpu_data_in  : in  Word;
            cpu_data_out : out Word;
            cpu_addr     : in  MemoryAddress;
            
            -- To Cache control
            hit          : out std_logic;
            dirty        : out std_logic
        );
    end component;
        
    component d_cache_control
        generic(
            WORDS_LINE : integer := 4
        );
        port(
            -- To general interface
            clk, rst   : in  std_logic;

            -- To CPU interface 
            d_en       : in  OneBit;
            d_w_req    : in  OneBit;
            d_complete : out OneBit;
            d_addr     : in  MemoryAddress;
            
            -- To memory interface
            hit        : in  std_logic;
            dirty      : in  std_logic;
            re, we     : out std_logic;
            
            -- To serial interface
            complete   : in  std_logic;
            w_request  : out std_logic;
            r_request  : out std_logic;
            base_addr  : out MemoryAddress
        );
    end component;
    
    signal hit, dirty, cpu_we, cpu_re : std_logic;
    signal always_base, base_int      : MemoryAddress;
begin
    always_base <= base_int or bs_addr;
    base_addr   <= base_int;

    memory : d_cache_memory generic map(
        WORDS_LINE => WORDS_LINE,
        LINES      => LINES
    )
    port map(
        clk, rst,
        --bs_we, bs_re, bs_data_in, bs_data_out, bs_addr,
        bs_we, '1', bs_data_in, bs_data_out, always_base,
        cpu_we, cpu_re, cpu_byte_sel, cpu_data_in, cpu_data_out, cpu_addr,
        hit, dirty
    );

    control : d_cache_control 
    generic map(
        WORDS_LINE => WORDS_LINE
    )
    port map(
        clk, rst,
        d_en, d_w_req, d_complete, cpu_addr,
        hit, dirty, cpu_re, cpu_we,
        --complete, w_request, r_request, base_addr
        complete, w_request, r_request, base_int
    );
end;