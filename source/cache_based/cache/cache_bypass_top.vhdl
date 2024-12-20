library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dtekv_lib.all;
-- use work.debug.all;

entity cache_bypass_top is
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
end;

architecture rtl of cache_bypass_top is
    component cache_bypass_control
    port(
        -- To general interface
        clk, rst   : in  std_logic;

        -- To CPU interface 
        d_en       : in  OneBit;
        d_w_req    : in  OneBit;
        d_complete : out OneBit;
        
        -- To serial interface
        complete   : in  std_logic;
        w_request  : out std_logic;
        r_request  : out std_logic
    ); 
    end component;
    
begin
    bs_addr      <= cpu_addr;
    bs_data_out  <= cpu_data_in;
    -- cpu_data_out <= bs_data_in;

    process(clk, rst)
    begin
        if(rst = '1') then
            cpu_data_out <= X"00000000";
        elsif (clk'event and clk = '1') then
            cpu_data_out <= bs_data_in;
        end if;
    end process;

    control : cache_bypass_control 
    port map(
        clk, rst,
        d_en, d_w_req, d_complete, 
        complete, w_request, r_request
    );
end;