library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
use work.debug.all;

entity cache_bypass_control is
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
end;

architecture RTL of cache_bypass_control is       
    type bypassState_T is (IDLE_S, READ_S, WRITE_S, READY_S);
    signal state, nextstate : bypassState_T;

begin
    -- State Register
    process(clk, rst) begin
        if (rst = '1') then 
            state <= IDLE_S;
        elsif (clk'event and clk='1') then 
            state <= nextstate;
        end if;
    end process;

    -- Next state logic
    process(d_en, d_w_req, state, complete) begin
        case state is
            when IDLE_S => 
                if (d_en = "1" and d_w_req = "1") then
                    nextstate <= WRITE_S;
                elsif (d_en = "1" and d_w_req = "0") then
                    nextstate <= READ_S;
                else 
                    nextstate <= IDLE_S;
                end if;
            
            when READ_S =>
                if (complete = '1') then
                    nextstate <= READY_S;
                else
                    nextstate <= READ_S;
                end if;
                
            when WRITE_S =>
                if (complete = '1') then
                    nextstate <= READY_S;
                else
                    nextstate <= WRITE_S;
                end if;

            when READY_S => 
                nextstate <= IDLE_S;

            when others => 
                nextstate <= IDLE_S;
        end case;
    end process;

    -- Output logic
    process(state, complete) begin
        case state is
            when IDLE_S =>
                d_complete <= "0";
                w_request <= '0';
                r_request <= '0';
            when READ_S =>
                d_complete <= "0";
                w_request <= '0';
                r_request <= not complete;
            when WRITE_S =>
                d_complete <= "0";
                w_request <= not complete;
                r_request <= '0';
            when READY_S =>
                d_complete <= "1";
                w_request <= '0';
                r_request <= '0';
            when others =>
                d_complete <= "0";
                w_request <= '0';
                r_request <= '0';              
        end case;
    end process;
end;