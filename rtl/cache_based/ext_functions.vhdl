library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ext_functions is
    function f_log2 (x : integer) return integer;
end package ext_functions;

package body ext_functions is
    --function f_log2 (x : integer) return integer is
    --    variable i : integer;
    -- begin
    --    i := 0;  
    --    while (2**i < x) and i < 31 loop
    --       i := i + 1;
    --    end loop;
    --    return i;
    -- end function;

    function f_log2 (x : integer) return integer is
    begin
    case x is
        when 1   => return 1;
        when 2   => return 1;
        when 4   => return 2;
        when 8   => return 3;
        when 16  => return 4;
        when 32  => return 5;
        when 64  => return 6;
        when 128 => return 7;
        when 256 => return 8;
        when 512 => return 9;
	when others => return 1;
    end case;

    end function;

end package body;
