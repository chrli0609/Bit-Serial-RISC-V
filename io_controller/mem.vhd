library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types_pkg.all;
--use IEEE.TEXTIO.ALL;
-- use work.debug.all;

entity RAM is  
  port (   clk       : in std_logic;
           reset     : in std_logic;

           data_addr : in MemoryAddress;
           we : in std_logic;
           data_in  : in Word;
           data_out : out Word);
end entity;  

architecture RTL of RAM is
  type memory_array is array (0 to MemLen - 1) of Word;
  signal ram : memory_array;
  --file ram_file : text open read_mode is "ram_init.bin";
begin

  --load_ram: process
	--variable one_word : Word;
      --  variable addr : integer := 0;
    --begin
	 
 --       while not endfile(ram_file) loop
 --           read(ram_file, one_word);
 --           ram(addr) <= one_word;
 --           addr := addr + 1;
--        end loop;
--        wait;
 --   end process;
	
  process(clk, reset)
	variable addr : integer;
  begin
    if (reset = '1') then
		for i in 0 to MemLen - 1 loop
			ram(i) <= (others => '0');
		end loop;

    elsif (clk = '1' and clk'event) then
		addr := to_integer(unsigned(data_addr)) / 4;
		if we = '1' then
			ram(addr) <= data_in;
		else
			data_out <= ram(addr);
		end if;
    end if;
  end process;
      
  
end architecture RTL;
