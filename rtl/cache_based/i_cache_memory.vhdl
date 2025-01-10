library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.math_real.all;
use work.ext_functions.all;
use work.dtekv_lib.all;
--use work.debug.all;

entity i_cache_memory is 
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
end;

architecture RTL of i_cache_memory is 
    constant offsetSize : integer := f_log2(WORDS_LINE);
    constant indexSize  : integer := f_log2(LINES);
    constant tagSize    : integer := AddressWidth - offsetSize - indexSize - 2;
    constant indexIndex : integer := indexSize + offsetSize - 1 + 2;

    type ValidBit_T is array (0 to LINES-1) of std_logic;
    signal validBit_array : ValidBit_T := (others => '0');      

    type Tag_T is array (0 to LINES-1) of unsigned(tagSize - 1 downto 0);
    signal tag_array :  Tag_T := (others => (others => '0'));

    --type Block_T is array (0 to WORDS_LINE) of Word;
    --type Memory_T is array (0 to LINES-1) of Block_T;
    type Memory_T is array (0 to LINES-1, 0 to WORDS_LINE-1) of Word;
    signal memory : Memory_T := (others => (others => (others => '0')));  
    
    signal r_index  : unsigned(indexSize-1 downto 0);
    signal r_offset : unsigned(offsetSize-1 downto 0);
    signal r_tag    : unsigned(tagSize-1 downto 0);

    signal w_index  : unsigned(indexSize-1 downto 0);
    signal w_offset : unsigned(offsetSize-1 downto 0);
    signal w_tag    : unsigned(tagSize-1 downto 0);
begin
    r_index  <= r_addr(indexIndex downto offsetSize + 2);
    r_offset <= r_addr(offsetSize - 1 + 2 downto 2);
    r_tag    <= r_addr(AddressWidth - 1 downto indexIndex + 1);

    w_index  <= w_addr(indexIndex downto offsetSize + 2);
    w_offset <= w_addr(offsetSize - 1 + 2 downto 2);
    w_tag    <= w_addr(AddressWidth - 1 downto indexIndex + 1);

    hit <= '1' when ((tag_array(to_integer(r_index)) = r_tag) and (validBit_array(to_integer(r_index)) = '1')) else '0'; 

    process(clk, rst) begin
        if (rst = '1') then 
            validBit_array <= (others => '0'); 
            --tag_array <= (others => (others => '0'));
            --memory <= (others => (others => (others => '0')));
            
            --validBit_array <= X"55";
            --validBit_array <= (others => '1');

            --tag_array(0) <= B"00000_00000_00000_00000_00000";
            --tag_array(1) <= B"00000_00000_00000_00000_00000";
            --tag_array(2) <= B"00000_00000_00000_00000_00000";
            --tag_array(3) <= B"00000_00000_00000_00000_00000";

            --tag_array(4) <= B"00000_00000_00000_00000_00000";
            --tag_array(5) <= B"00000_00000_00000_00000_00000";
            --tag_array(6) <= B"00000_00000_00000_00000_00000";
            --tag_array(7) <= B"00000_00000_00000_00000_00000";

            --memory(0, 0) <= x"11111111";
            --memory(0, 1) <= x"22222222";
            --memory(0, 2) <= x"33333333";
            --memory(0, 3) <= x"44444444";

            --memory(1, 0) <= x"55555555";
            --memory(1, 1) <= x"66666666";
            --memory(1, 2) <= x"77777777";
            --memory(1, 3) <= x"88888888";

            --memory(2, 0) <= x"99999999";
            --memory(2, 1) <= x"AAAAAAAA";
            --memory(2, 2) <= x"BBBBBBBB";
            --memory(2, 3) <= x"CCCCCCCC";

            --memory(3, 0) <= x"DDDDDDDD";
            --memory(3, 1) <= x"EEEEEEEE";
            --memory(3, 2) <= x"FFFFFFFF";
            --memory(3, 3) <= x"12121212";

            --memory(4, 0) <= x"23232323";
            --memory(4, 1) <= x"34343434";
            --memory(4, 2) <= x"45454545";
            --memory(4, 3) <= x"56565656";

            --memory(5, 0) <= x"67676767";
            --memory(5, 1) <= x"78787878";
            --memory(5, 2) <= x"89898989";
            --memory(5, 3) <= x"9A9A9A9A";

            --memory(6, 0) <= x"ABABABAB";
            --memory(6, 1) <= x"BCBCBCBC";
            --memory(6, 2) <= x"CDCDCDCD";
            --memory(6, 3) <= x"DEDEDEDE";

            --memory(7, 0) <= x"EFEFEFEF";
            --memory(7, 1) <= x"F0F0F0F0";
            --memory(7, 2) <= x"11221122";
            --memory(7, 3) <= x"22332233";
        
        elsif (clk'event and clk='1') then
            if(we = '1') then
                memory(to_integer(w_index), to_integer(w_offset)) <= word_in;
                tag_array(to_integer(w_index)) <= w_tag;
                validBit_array(to_integer(w_index)) <= '1';
            end if;
        end if;    
    end process;

    word_out <= memory(to_integer(r_index), to_integer(r_offset)) when (re = '1') else X"00000000";
    --process(re, r_addr, r_index, r_offset) begin
    --    if (re = '1') then
    --        word_out <= memory(to_integer(r_index), to_integer(r_offset));
    --    end if;
    --end process;
end;