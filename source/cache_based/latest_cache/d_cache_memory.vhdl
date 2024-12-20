library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
--use work.debug.all;

entity d_cache_memory is 
    generic(
        WORDS_LINE   : integer := 4;--8;
        LINES        : integer := 8 --64
    );
    port(
        -- To General interface
        clk, rst     : in  std_logic;
 
        -- Bit serial bus interface
        bs_we        : in  std_logic;     -- Bit serial bus write enable
        bs_re        : in  std_logic;     -- Bit serial bus read enable
        bs_data_in   : in  Word;          -- Bit serial bus data in
        bs_data_out  : out Word;          -- Bit serial bus data out
        bs_addr      : in  MemoryAddress; -- Bit serial bus addr
        
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
end;

architecture RTL of d_cache_memory is 
    constant offsetSize : integer := integer(ceil(log2(real(WORDS_LINE))));
    constant indexSize  : integer := integer(ceil(log2(real(LINES))));
    constant tagSize    : integer := AddressWidth - offsetSize - indexSize - 2;
    constant indexIndex : integer := indexSize + offsetSize - 1 + 2;

    type ValidBit_T is array (0 to LINES-1) of std_logic_vector(1 downto 0); -- (Bit 1: valid bit, bit 0: dirty bit)
    signal validBit_array : ValidBit_T := (others => (others => '0'));      

    type Tag_T is array (0 to LINES-1) of unsigned(tagSize - 1 downto 0);
    signal tag_array :  Tag_T := (others => (others => '0'));

    type Memory_T is array (0 to LINES-1, 0 to WORDS_LINE-1) of Word;
    signal memory : Memory_T := (others => (others => (others => '0')));  
    
    signal cpu_index  : unsigned(indexSize-1 downto 0);
    signal cpu_offset : unsigned(offsetSize-1 downto 0);
    signal cpu_tag    : unsigned(tagSize-1 downto 0);

    signal bs_index   : unsigned(indexSize-1 downto 0);
    signal bs_offset  : unsigned(offsetSize-1 downto 0);
    signal bs_tag     : unsigned(tagSize-1 downto 0);
begin

    cpu_index  <= cpu_addr(indexIndex downto offsetSize + 2);
    cpu_offset <= cpu_addr(offsetSize - 1 + 2 downto 2);
    cpu_tag    <= cpu_addr(AddressWidth - 1 downto indexIndex + 1);

    bs_index   <= bs_addr(indexIndex downto offsetSize + 2);
    bs_offset  <= bs_addr(offsetSize - 1 + 2 downto 2);
    bs_tag     <= bs_addr(AddressWidth - 1 downto indexIndex + 1);

    dirty <= validBit_array(to_integer(cpu_index))(0);
    hit <= '1' when ((tag_array(to_integer(cpu_index)) = cpu_tag) and (validBit_array(to_integer(cpu_index))(1) = '1')) else '0';     

    process(clk, rst) begin
        if (rst = '1') then 
            validBit_array <= (others => (others => '0'));
            --tag_array <= (others => (others => '0'));
            --memory <= (others => (others => (others => '0')));
        
        elsif (clk'event and clk='1') then
            if(cpu_we = '1') then
                case cpu_byte_sel is
                    when "0001" => memory(to_integer(cpu_index), to_integer(cpu_offset))(7  downto 0 ) <= cpu_data_in(7  downto 0 );
                    when "0010" => memory(to_integer(cpu_index), to_integer(cpu_offset))(15 downto 8 ) <= cpu_data_in(15 downto 8 );
                    when "0100" => memory(to_integer(cpu_index), to_integer(cpu_offset))(23 downto 16) <= cpu_data_in(23 downto 16);
                    when "1000" => memory(to_integer(cpu_index), to_integer(cpu_offset))(31 downto 24) <= cpu_data_in(31 downto 24);
                    when "0011" => memory(to_integer(cpu_index), to_integer(cpu_offset))(15 downto 0 ) <= cpu_data_in(15 downto 0 );
                    when "1100" => memory(to_integer(cpu_index), to_integer(cpu_offset))(31 downto 16) <= cpu_data_in(31 downto 16);
                    when others => memory(to_integer(cpu_index), to_integer(cpu_offset)) <= cpu_data_in;
                end case;
                validBit_array(to_integer(cpu_index))(0) <= '1';

            elsif (bs_we = '1') then
                memory(to_integer(bs_index), to_integer(bs_offset)) <= bs_data_in;
                tag_array(to_integer(bs_index)) <= bs_tag;
                validBit_array(to_integer(bs_index))(1) <= '1';
                validBit_array(to_integer(bs_index))(0) <= '0';
            elsif (bs_re = '1') then
                validBit_array(to_integer(bs_index))(1) <= '1';
            end if;
        end if;    
    end process;

    process(cpu_re, bs_re, cpu_addr, cpu_index, cpu_offset, bs_addr, bs_index, bs_offset) 
        variable temp_data_out : Word;
    begin
        if (cpu_re = '1') then
            --cpu_data_out <= memory(to_integer(cpu_index), to_integer(cpu_offset));
            temp_data_out := X"00000000";
            case cpu_byte_sel is
                when "0001" => temp_data_out(7  downto 0 ) := memory(to_integer(cpu_index), to_integer(cpu_offset))(7  downto 0 );
                when "0010" => temp_data_out(15 downto 8 ) := memory(to_integer(cpu_index), to_integer(cpu_offset))(15 downto 8 );
                when "0100" => temp_data_out(23 downto 16) := memory(to_integer(cpu_index), to_integer(cpu_offset))(23 downto 16);
                when "1000" => temp_data_out(31 downto 24) := memory(to_integer(cpu_index), to_integer(cpu_offset))(31 downto 24);
                when "0011" => temp_data_out(15 downto 0 ) := memory(to_integer(cpu_index), to_integer(cpu_offset))(15 downto 0 );
                when "1100" => temp_data_out(31 downto 16) := memory(to_integer(cpu_index), to_integer(cpu_offset))(31 downto 16);
                when others => temp_data_out := memory(to_integer(cpu_index), to_integer(cpu_offset));
            end case;
            cpu_data_out <= temp_data_out;
        elsif (bs_re = '1') then
            bs_data_out  <= memory(to_integer(bs_index), to_integer(bs_offset));
        end if;
    end process;
end;