library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dtekv_lib.all;
use work.debug.all;

entity i_cache_top is
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
end;

architecture rtl of i_cache_top is
    component i_cache_memory
        generic(
            WORDS_LINE : integer := 4;--8;
            LINES      : integer := 8 --64
        );
        port(
            -- To General interface
            clk, rst : in  std_logic;

            -- To Bus interface
            we       : in  std_logic;
            word_in  : in  Word;

            -- To CPU interface        
            r_addr   : in MemoryAddress;
            word_out : out Word;   
            
            -- To Cache control
            re   : in  std_logic;
            w_addr   : in  MemoryAddress;
            hit      : out std_logic
        );
    end component;

    component i_cache_control 
        generic(
            WORDS_LINE : integer := 4--;--8;
        --    LINES      : integer := 8 --64
        );
        port(
            -- To general interface
            clk, rst : in  std_logic;
    
            -- To CPU interface 
            addr     : in  MemoryAddress;
            i_valid  : out std_logic;
    
            -- To memory interface
            hit      : in  std_logic;
            re       : out std_logic;
            
            -- To serial interface
            complete  : in  std_logic;
            request   : out std_logic;
            base_addr : out MemoryAddress
        );
    end component;
    
    signal re, hit : std_logic;
begin
    dut : i_cache_memory generic map(
        WORDS_LINE => WORDS_LINE,
        LINES      => LINES
    )
    port map(
        clk, rst,
        we,
        word_in,
        r_addr,
        word_out,
        re,
        w_addr,
        hit
    );

    dut_control : i_cache_control generic map(
        WORDS_LINE => WORDS_LINE
    )
    port map(
        clk, rst,
        r_addr,
        i_valid,
        hit,
        re,
        complete,
        request,
        base_addr
    );
end;