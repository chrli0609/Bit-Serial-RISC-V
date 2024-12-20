library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dtekv_lib.all;
--use work.debug.all;
-- OPTIMIZATION: THE BASE ADDRESS FIELD CAN BE REDUCED TO ELIMINATE THE ZEROS
entity i_cache_control is
    generic(
        WORDS_LINE : integer := 4--;--8;
    --    LINES      : integer := 8 --64
    );
    port(
        -- To general interface
        clk, rst : in  std_logic;

        -- To CPU interface 
        addr     : in  MemoryAddress;
        i_valid  : out std_logic;

        -- To memory interface
        hit      : in  std_logic;
        re       : out std_logic;
        
        -- To serial interface
        complete  : in  std_logic;
        request   : out std_logic;
        base_addr : out MemoryAddress
    );
end;

architecture RTL of i_cache_control is
    constant offsetSize : integer := integer(ceil(log2(real(WORDS_LINE))));
    
    type iCacheState_T is (IDLE_S, VALID_S, REQUEST_S);
    signal state, nextstate : iCacheState_T;

    signal prevAddr : MemoryAddress;
    signal started  : std_logic;
begin
    -- State Register
    process(clk, rst) begin
        if (rst = '1') then 
            state <= VALID_S;
        elsif (clk'event and clk='1') then 
            state <= nextstate;
        end if;
    end process;

    -- Next state logic
    process(clk, rst, hit, addr, complete, state, nextstate, prevAddr) begin
        case state is
            when IDLE_S => 
                if (started = '0') then
                    if (hit = '1') then
                        nextstate <= VALID_S;
                    elsif (hit = '0') then
                        nextstate <= REQUEST_S;
                    else
                        nextstate <= IDLE_S;
                    end if;
                end if;
            when VALID_S =>  
                if (hit = '1' and (addr /= prevAddr or started = '1')) then
                    nextstate <= VALID_S;
                elsif (hit = '0' and (addr /= prevAddr or started = '1')) then
                    nextstate <= REQUEST_S;
                else
                    nextstate <= VALID_S;
                end if;
                --nextstate <= IDLE_S;
            when REQUEST_S =>
                if (complete = '1' and hit = '1') then
                    nextstate <= VALID_S;
                else 
                    nextstate <= REQUEST_S;
                end if;
            when others => 
                nextstate <= IDLE_S;
        end case;
    end process;

    -- Output logic
    process(clk, rst, state, started, complete) begin
        case state is
            when IDLE_S =>
                i_valid <= '0';
                re <= '0';
                request <= '0';
                base_addr <= X"00000000";
            when VALID_S =>
                i_valid <= hit and started;
                re <= '1';
                request <= '0';
                base_addr <= X"00000000";
            When REQUEST_S =>
                i_valid <= '0';
                re <= '0';
                request <= not complete;
                --base_addr <= (addr(AddressWidth-1 downto offsetSize+1), others => '0');
                base_addr <= addr(AddressWidth-1 downto offsetSize + 2) & (offsetSize + 1 downto 0 => '0');
            when others =>
                i_valid <= '0';
                re <= '0';
                request <= '0';
                base_addr <= X"00000000";
        end case;
    end process;

    -- Previous address register
    process(clk, rst) begin
        if (rst = '1') then 
            prevAddr <= X"00000000";
        elsif (clk'event and clk='1') then 
            if (state = VALID_S) then
                prevAddr <= addr;
            else 
                prevAddr <= prevAddr;
            end if;
        end if;
    end process;

    -- Started register
    process(clk, rst) begin
        if (rst = '1') then
            started <= '0';
        elsif (clk'event and clk='1') then
            if (state /= IDLE_S) then
                started <= '1';
            end if;
        end if;
    end process;
end;