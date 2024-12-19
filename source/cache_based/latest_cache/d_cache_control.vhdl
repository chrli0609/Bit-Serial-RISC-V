library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
use work.debug.all;
-- OPTIMIZATION: THE BASE ADDRESS FIELD CAN BE REDUCED TO ELIMINATE THE ZEROS
entity d_cache_control is
    generic(
        WORDS_LINE : integer := 4--;--8;
    --    LINES      : integer := 8 --64
    );
    port(
        -- To general interface
        clk, rst   : in  std_logic;

        -- To CPU interface 
        d_en       : in  OneBit;
        d_w_req    : in  OneBit;
        d_complete : out OneBit;
        d_addr     : in  MemoryAddress;
        
        -- To memory interface
        hit        : in  std_logic;
        dirty      : in  std_logic;
        re, we     : out std_logic;
        
        -- To serial interface
        complete   : in  std_logic;
        w_request  : out std_logic;
        r_request  : out std_logic;
        base_addr  : out MemoryAddress
    ); 
end;

architecture RTL of d_cache_control is
    constant offsetSize : integer := integer(ceil(log2(real(WORDS_LINE))));
    
    type dCacheState_T is (IDLE_S, MISS_DIRTY_S, MISS_CLEAN_S, 
        HIT_READ_S, HIT_WRITE_S);
    signal state, nextstate : dCacheState_T;

    --signal prevAddr : MemoryAddress;
    --signal started  : std_logic;
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
    process(clk, rst, d_en, hit, d_w_req, dirty, state, d_addr, complete) begin
        case state is
            when IDLE_S => 
                if (d_en = "1" and hit = '1' and d_w_req = "0") then
                    nextstate <= HIT_READ_S;
                elsif (d_en = "1" and hit = '1' and d_w_req = "1") then
                    nextstate <= HIT_WRITE_S;
                elsif (d_en = "1" and hit = '0' and dirty = '0') then
                    nextstate <= MISS_CLEAN_S;
                elsif (d_en = "1" and hit = '0' and dirty = '1') then
                    nextstate <= MISS_DIRTY_S;
                else
                    nextstate <= IDLE_S;                
                end if;
            
            when MISS_DIRTY_S => 
                if (complete = '1') then
                    nextstate <= MISS_CLEAN_S;
                else
                    nextstate <= MISS_DIRTY_S;
                end if;

            when MISS_CLEAN_S =>
                if (complete = '1' and d_w_req = "0") then
                    nextstate <= HIT_READ_S;
                elsif (complete = '1' and d_w_req = "1") then
                    nextstate <= HIT_WRITE_S;    
                else
                    nextstate <= MISS_CLEAN_S;
                end if;

            when HIT_READ_S =>
                nextstate <= IDLE_S;

            when HIT_WRITE_S =>
                nextstate <= IDLE_S;

            when others => 
                nextstate <= IDLE_S;
        end case;
    end process;

    -- Output logic
    process(clk, rst, state, complete) begin
        case state is
            when IDLE_S =>
                d_complete <= "0";
                we <= '0';
                re <= '0';
                w_request <= '0';
                r_request <= '0';
                base_addr <= X"00000000";
            when MISS_DIRTY_S => 
                d_complete <= "0";
                we <= '0';
                re <= '0';
                w_request <= not complete;
                r_request <= '0';
                base_addr <= d_addr(AddressWidth-1 downto offsetSize+2) & (offsetSize+1 downto 0 => '0');   
            when MISS_CLEAN_S =>
                d_complete <= "0";
                we <= '0';
                re <= '0';
                w_request <= '0';
                r_request <= not complete;
                base_addr <= d_addr(AddressWidth-1 downto offsetSize+2) & (offsetSize+1 downto 0 => '0');
            when HIT_READ_S =>
                d_complete <= "1";
                we <= '0';
                re <= '1';
                w_request <= '0';
                r_request <= '0';
                base_addr <= X"00000000";
            when HIT_WRITE_S =>
                d_complete <= "1";
                we <= '1';
                re <= '0';
                w_request <= '0';
                r_request <= '0';
                base_addr <= X"00000000";
            when others =>
                d_complete <= "0";
                we <= '0';
                re <= '0';
                w_request <= '0';
                r_request <= '0';
                base_addr <= X"00000000";                
        end case;
    end process;
end;