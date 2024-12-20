library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
--use work.debug.all;

entity round_robin_module is
    generic(
        FIRST : boolean := FALSE
    );    
    port (
        clk, rst  : in  std_logic;
        grant     : in  std_logic;
        any_grant : in  std_logic;
        priority  : out std_logic
    );
end;

architecture RTL of round_robin_module is
    signal nextPriority, priority_i : std_logic;

begin
    nextPriority <= grant or (not any_grant and priority_i);
    
    process (clk, rst) begin
        if(rst = '1') then
            if (FIRST) then
                priority_i <= '1';
            else 
                priority_i <= '0';
            end if;
        elsif (clk'event and clk = '1') then
            priority_i <= nextPriority;
        end if;    
    end process;
    
    priority <= priority_i;
end;