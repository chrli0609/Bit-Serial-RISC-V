library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types_pkg.all;
-- use work.debug.all;

entity io_controller is  
	port (  we		 : in std_logic;
			data_in	 : in Word;	
			data_out : out Word;	
			ports	 : inout unsigned(IOPorts-1 downto 0));
end entity;  

architecture RTL of io_controller is
begin

	ports <= data_in(IOPorts-1 downto 0) when we='1' else (others => 'Z');
	data_out(Word'length-1 downto Word'length-IOPorts) <= (others => '0');
	data_out(IOPorts-1 downto 0) <= ports;
  
end architecture RTL;
