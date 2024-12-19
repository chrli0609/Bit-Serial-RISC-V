library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dtekv_lib.all;
use work.debug.all;

entity RV_tb is
end;

architecture sim of RV_tb is
    component RISC_V_Cached 
        port(
            -- General interface
            clk, reset    : in  std_logic;
    
            -- Serial bus interface
            s_clk         : out std_logic;
            s_com_enabled : out std_logic;
            s_m_active    : out std_logic;
            s_m_data      : out std_logic_vector(1 downto 0);
            s_addr        : out std_logic_vector(1 downto 0);
    
            s_s_active    : in  std_logic;
            s_s_data      : in  std_logic_vector(1 downto 0)
        );
    end component;
    
    signal clk, reset : std_logic := '1';
    signal s_clk, s_com_enabled, s_m_active, s_s_active : std_logic;
    signal s_m_data, s_addr, s_s_data : std_logic_vector(1 downto 0);

begin

    RV : RISC_V_Cached port map(
        clk, reset, s_clk, s_com_enabled, s_m_active, s_m_data, s_addr, s_s_active, s_s_data
    );

    process begin
        clk <= not clk; 
        wait for 5 ns;
    end process;

    process begin
        reset <= '1'; 
        wait for 7 ns;
        reset <= '0';
        wait;
    end process; 

    process begin
        s_s_active <= '0';
        s_s_data <= "00";
        wait for 224 ns;
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '1';
        -- LUI X5 32768
        s_s_data <= "11"; -- 1
        wait for 10 ns;
        s_s_data <= "01"; -- 2
        wait for 10 ns;
        s_s_data <= "11"; -- 3
        wait for 10 ns;
        s_s_data <= "10"; -- 4
        wait for 10 ns;
        s_s_data <= "10"; -- 5
        wait for 10 ns;
        s_s_data <= "00"; -- 6
        wait for 10 ns;
        s_s_data <= "00"; -- 7
        wait for 10 ns;
        s_s_data <= "00"; -- 8
        wait for 10 ns;
        s_s_data <= "00"; -- 9
        wait for 10 ns;
        s_s_data <= "00"; -- 10
        wait for 10 ns;
        s_s_data <= "00"; -- 11
        wait for 10 ns;
        s_s_data <= "00"; -- 12
        wait for 10 ns;
        s_s_data <= "00"; -- 13
        wait for 10 ns;
        s_s_data <= "10"; -- 14
        wait for 10 ns;
        s_s_data <= "00"; -- 15
        wait for 10 ns;
        s_s_data <= "00"; -- 16
        wait for 10 ns;
        s_s_data <= "11"; -- P
        wait for 10 ns;

        -- LI X4 0x700
        s_s_data <= "11"; -- 1
        wait for 10 ns;
        s_s_data <= "00"; -- 2
        wait for 10 ns;
        s_s_data <= "01"; -- 3
        wait for 10 ns;
        s_s_data <= "00"; -- 4
        wait for 10 ns;
        s_s_data <= "10"; -- 5
        wait for 10 ns;
        s_s_data <= "00"; -- 6
        wait for 10 ns;
        s_s_data <= "00"; -- 7
        wait for 10 ns;
        s_s_data <= "00"; -- 8
        wait for 10 ns;
        s_s_data <= "00"; -- 9
        wait for 10 ns;
        s_s_data <= "00"; -- 10
        wait for 10 ns;
        s_s_data <= "00"; -- 11
        wait for 10 ns;
        s_s_data <= "00"; -- 12
        wait for 10 ns;
        s_s_data <= "00"; -- 13
        wait for 10 ns;
        s_s_data <= "00"; -- 14
        wait for 10 ns;
        s_s_data <= "11"; -- 15
        wait for 10 ns;
        s_s_data <= "01"; -- 16
        wait for 10 ns;
        s_s_data <= "10"; -- P
        wait for 10 ns;

        -- LB X1 4(X5)
        s_s_data <= "11"; -- 1
        wait for 10 ns;
        s_s_data <= "00"; -- 2
        wait for 10 ns;
        s_s_data <= "00"; -- 3
        wait for 10 ns;
        s_s_data <= "10"; -- 4
        wait for 10 ns;
        s_s_data <= "00"; -- 5
        wait for 10 ns;
        s_s_data <= "00"; -- 6
        wait for 10 ns;
        s_s_data <= "00"; -- 7
        wait for 10 ns;
        s_s_data <= "10"; -- 8
        wait for 10 ns;
        s_s_data <= "10"; -- 9
        wait for 10 ns;
        s_s_data <= "00"; -- 10
        wait for 10 ns;
        s_s_data <= "00"; -- 11
        wait for 10 ns;
        s_s_data <= "01"; -- 12
        wait for 10 ns;
        s_s_data <= "00"; -- 13
        wait for 10 ns;
        s_s_data <= "00"; -- 14
        wait for 10 ns;
        s_s_data <= "00"; -- 15
        wait for 10 ns;
        s_s_data <= "00"; -- 16
        wait for 10 ns;
        s_s_data <= "00"; -- P
        wait for 10 ns;

        -- SH X1, 12(X4)
        s_s_data <= "11"; -- 1
        wait for 10 ns;
        s_s_data <= "00"; -- 2
        wait for 10 ns;
        s_s_data <= "10"; -- 3
        wait for 10 ns;
        s_s_data <= "00"; -- 4
        wait for 10 ns;
        s_s_data <= "10"; -- 5
        wait for 10 ns;
        s_s_data <= "01"; -- 6
        wait for 10 ns;
        s_s_data <= "01"; -- 7
        wait for 10 ns;
        s_s_data <= "00"; -- 8
        wait for 10 ns;
        s_s_data <= "10"; -- 9
        wait for 10 ns;
        s_s_data <= "00"; -- 10
        wait for 10 ns;
        s_s_data <= "01"; -- 11
        wait for 10 ns;
        s_s_data <= "00"; -- 12
        wait for 10 ns;
        s_s_data <= "00"; -- 13
        wait for 10 ns;
        s_s_data <= "00"; -- 14
        wait for 10 ns;
        s_s_data <= "00"; -- 15
        wait for 10 ns;
        s_s_data <= "00"; -- 16
        wait for 10 ns;
        s_s_data <= "00"; -- P
        wait for 10 ns;

        s_s_active <= '0';
        s_s_data <= "00";
        wait for 280 ns;
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '1';

        -- PERIPHERAL REPLY
        s_s_data <= "10"; -- 1
        wait for 10 ns;
        s_s_data <= "01"; -- 2
        wait for 10 ns;
        s_s_data <= "10"; -- 3
        wait for 10 ns;
        s_s_data <= "01"; -- 4
        wait for 10 ns;
        s_s_data <= "00"; -- 5
        wait for 10 ns;
        s_s_data <= "00"; -- 6
        wait for 10 ns;
        s_s_data <= "11"; -- 7
        wait for 10 ns;
        s_s_data <= "00"; -- 8
        wait for 10 ns;
        s_s_data <= "01"; -- 9
        wait for 10 ns;
        s_s_data <= "01"; -- 10
        wait for 10 ns;
        s_s_data <= "10"; -- 11
        wait for 10 ns;
        s_s_data <= "10"; -- 12
        wait for 10 ns;
        s_s_data <= "11"; -- 13
        wait for 10 ns;
        s_s_data <= "11"; -- 14
        wait for 10 ns;
        s_s_data <= "00"; -- 15
        wait for 10 ns;
        s_s_data <= "01"; -- 16
        wait for 10 ns;
        s_s_data <= "10"; -- P
        wait for 10 ns;

        s_s_active <= '0';
        s_s_data <= "00";
        wait for 240 ns;
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '1';

        -- LH X2 12(X4)
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;

        -- SW X2, 4(X5)
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;

        -- ADDI X7, X0, 0x600
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        -- LW X3, 0xC(X7)
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        s_s_active <= '0';
        s_s_data <= "00";
        wait for 190 ns;
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '1';

        -- CLEAN CACHE MISS
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;

        s_s_active <= '0';
        s_s_data <= "00";
        wait for 280 ns;

        -- BYPASS WRITE
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '0';
        
        wait for 250 ns;
        s_s_active <= '1';
        wait for 10 ns;
        s_s_active <= '1';

        -- NOP
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;

        -- NOP
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;

        -- NOP
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;

        -- NOP
        s_s_data <= "11";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "01";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "00";
        wait for 10 ns;
        s_s_data <= "10";
        wait for 10 ns;
        
        wait;
    end process;
end;