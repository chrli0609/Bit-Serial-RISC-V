library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
use work.debug.all;

entity priority_cycle_module is
    port (
        priority  : in  std_logic;
        carry_in  : in  std_logic;
        request   : in  std_logic;
        grant     : out std_logic;
        carry_out : out std_logic
    );
end;

architecture RTL of priority_cycle_module is
    signal prio_carry : std_logic;

begin
    prio_carry <= priority or carry_in;
    
    grant <= prio_carry and request;
    carry_out <= prio_carry and (not request);
end;