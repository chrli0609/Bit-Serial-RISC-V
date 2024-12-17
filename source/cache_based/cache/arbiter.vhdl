library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_misc.all;
use work.dtekv_lib.all;
use work.debug.all;

entity arbiter is
    generic(
        MODULES : integer := 3
    );
    port (
        clk, rst : in  std_logic;
        requests : in  std_logic_vector(2 downto 0);
        grants   : out std_logic_vector(2 downto 0)
    );
end;

architecture RTL of arbiter is
    signal rotary : std_logic_vector(2 downto 0);
    signal last_grant : std_logic_vector(2 downto 0);
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            rotary <= "001";
            grants <= "000";
            last_grant <= "000";
        elsif (clk'event and clk = '1') then
            -- Si el módulo previamente servido sigue solicitando, mantener el grant
            if (last_grant(0) = '1' and requests(0) = '1') or
               (last_grant(1) = '1' and requests(1) = '1') or
               (last_grant(2) = '1' and requests(2) = '1') then
                grants <= last_grant;
            else
                -- Lógica de arbitraje con prioridad rotativa
                case requests is
                    when "000" =>
                        grants <= "000";
                        last_grant <= "000";

                    when "001" =>
                        grants <= "001";
                        rotary <= "010";
                        last_grant <= "001";
                        
                    when "010" => 
                        grants <= "010";
                        rotary <= "100";
                        last_grant <= "010";

                    when "100" => 
                        grants <= "100";
                        rotary <= "001";
                        last_grant <= "100";

                    when "011" =>
                        case rotary is
                            when "001" =>
                                grants <= "001";
                                rotary <= "010";
                                last_grant <= "001";
                            when "010" => 
                                grants <= "010";
                                rotary <= "100";
                                last_grant <= "010";
                            when "100" => 
                                grants <= "001";
                                rotary <= "010";
                                last_grant <= "001";
                            when others =>
                                grants <= "000";
                                rotary <= rotary(1 downto 0) & rotary(2);
                                last_grant <= "000";
                        end case;

                    when "110" =>
                        case rotary is
                            when "001" =>
                                grants <= "010";
                                rotary <= "100";
                                last_grant <= "010";
                            when "010" => 
                                grants <= "010";
                                rotary <= "100";
                                last_grant <= "010";
                            when "100" => 
                                grants <= "100";
                                rotary <= "001";
                                last_grant <= "100";
                            when others =>
                                grants <= "000";
                                rotary <= rotary(1 downto 0) & rotary(2);
                                last_grant <= "000";
                        end case;

                    when "101" =>
                        case rotary is
                            when "001" =>
                                grants <= "001";
                                rotary <= "100";
                                last_grant <= "001";
                            when "010" => 
                                grants <= "100";
                                rotary <= "001";
                                last_grant <= "100";
                            when "100" => 
                                grants <= "100";
                                rotary <= "001";
                                last_grant <= "100";
                            when others =>
                                grants <= "000";
                                rotary <= rotary(1 downto 0) & rotary(2);
                                last_grant <= "000";
                        end case;

                    when "111" =>
                        case rotary is
                            when "001" =>
                                grants <= "001";
                                rotary <= "010";
                                last_grant <= "001";
                            when "010" => 
                                grants <= "010";
                                rotary <= "100";
                                last_grant <= "010";
                            when "100" => 
                                grants <= "100";
                                rotary <= "001";
                                last_grant <= "100";
                            when others =>
                                grants <= "000";
                                rotary <= rotary(1 downto 0) & rotary(2);
                                last_grant <= "000";
                        end case;

                    when others =>
                        grants <= "000";
                        rotary <= rotary(1 downto 0) & rotary(2);
                        last_grant <= "000";
                end case;
            end if;
        end if;
    end process;
end architecture RTL;