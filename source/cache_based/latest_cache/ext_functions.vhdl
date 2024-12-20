library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ext_functions is
    function f_log2 (x : integer) return integer;
end package ext_functions;

package body ext_functions is
    function f_log2 (x : integer) return integer is
        variable i : integer;
     begin
        i := 0;  
        while (2**i < x) and i < 31 loop
           i := i + 1;
        end loop;
        return i;
     end function;

end package body;