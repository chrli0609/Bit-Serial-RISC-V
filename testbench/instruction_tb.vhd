----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2024 01:47:23 PM
-- Design Name: 
-- Module Name: instruction_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_tb is
--  Port ( );
end instruction_tb;

architecture  instruction_arch of instruction_tb is
component CiscV_0 is
    port(
        clk             : in std_logic;
        m_data          : in std_logic_vector(1 downto 0);
        sreset          : in std_logic_vector(0 downto 0);
        rd_data         : out std_logic_vector(4 downto 0);
        rs1_data        : out std_logic_vector(4 downto 0);
        rs2_data        : out std_logic_vector(4 downto 0);
        rs_sel          : out std_logic_vector(1 downto 0);
        result_bus      : out std_logic_vector(31 downto 0);
        op1_alt         : out std_logic_vector(31 downto 0);
        op2_alt         : out std_logic_vector(31 downto 0);
        imm5_data       : out std_logic_vector(4 downto 0);
        imm7_data       : out std_logic_vector(6 downto 0);
        imm12_data      : out std_logic_vector(11 downto 0);
        succ_data       : out std_logic_vector(3 downto 0);
        pred_data       : out std_logic_vector(3 downto 0);
        wr_reg          : out std_logic_vector(0 downto 0);
        go              : out std_logic_vector(1 downto 0);
        alu_ctrl        : out std_logic_vector(2 downto 0);
        pc              : in std_logic_vector(31 downto 0);
        pres_state_out : OUT INTEGER RANGE 0 TO 17
    );
end component CiscV_0;

signal clk        : std_logic := '0';
signal m_data     : std_logic_vector(1 downto 0);
signal sreset     : std_logic_vector(0 downto 0) := (others => '0');
signal rd_data    : std_logic_vector(4 downto 0);
signal rs1_data   : std_logic_vector(4 downto 0);
signal rs2_data   : std_logic_vector(4 downto 0);
signal rs_sel     : std_logic_vector(1 downto 0);
signal result_bus : std_logic_vector(31 downto 0);
signal op1_alt    : std_logic_vector(31 downto 0);
signal op2_alt    : std_logic_vector(31 downto 0);
signal imm5_data  : std_logic_vector(4 downto 0);
signal imm7_data  : std_logic_vector(6 downto 0);
signal imm12_data : std_logic_vector(11 downto 0);
signal succ_data  : std_logic_vector(3 downto 0);
signal pred_data  : std_logic_vector(3 downto 0);
signal wr_reg     : std_logic_vector(0 downto 0);
signal go         : std_logic_vector(1 downto 0);
signal alu_ctrl   : std_logic_vector(2 downto 0);
signal pc         : std_logic_vector(31 downto 0) := (others => '0');
signal pres_state_out : INTEGER RANGE 0 TO 17;

constant clock_period : time := 20ns;
constant clock_offset : time := 0.5ns;

begin

uut: CiscV_0 
    port map (
    clk         => clk,
    m_data      => m_data,
    sreset      => sreset,
    rd_data     => rd_data,
    rs1_data    => rs1_data,
    rs2_data    => rs2_data,
    rs_sel      => rs_sel,
    result_bus  => result_bus,
    op1_alt     => op1_alt,
    op2_alt     => op2_alt,
    imm5_data   => imm5_data,
    imm7_data   => imm7_data,
    imm12_data  => imm12_data,
    succ_data   => succ_data,
    pred_data   => pred_data,
    wr_reg      => wr_reg,
    go          => go,
    alu_ctrl    => alu_ctrl,
    pc          => pc,
    pres_state_out => pres_state_out
    );


clock_process :process
begin
clk <= '0';
wait for clock_period/2;
clk <= '1';
wait for clock_period/2;
end process;

reset_test :process
begin

    sreset <= "1";
    wait for 40 ns; 
    sreset <= "0";
    wait;
end process;

instruction_test :process
begin
    -- IMPORTANT Do not overflow data send 1 bit if opcode overflows
    --LUI instruction       
    
    --OpCode
    wait for 4.5*clock_period-clock_offset;
    m_data <= "01";
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "11";
    wait for clock_period;
    m_data <= "10";--single bit 1 for instruction and, MSB is for instruction, LSB is for rd
    --1 bit above makes rd
    wait for clock_period;
    m_data <= "00"; --single bit 0
    wait for clock_period;
    m_data <= "01";
    
    --imm20
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "10";
    
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "10";
    
    --LUI instruction 2      
    
    --OpCode
    wait for 5*clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "11";
    wait for clock_period;
    m_data <= "10";--single bit 1 for instruction and, MSB is for instruction, LSB is for rd
    --1 bit above makes rd
    wait for clock_period;
    m_data <= "00"; --single bit 0
    wait for clock_period;
    m_data <= "10";
    
    --imm20
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "11";
    
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "10";
    
    --add instruction
    --OpCode
    wait for 5*clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "10";
    wait for clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "10";--single bit 1 for instruction and, MSB is for instruction, LSB is for rd
    
    --1 bit above makes rd
    wait for clock_period;
    m_data <= "00"; --single bit 0
    wait for clock_period;
    m_data <= "11";
    
    --alu_code
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00"; --MSB is for alu_code, LSB is for rs1
    
    --rs1
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "01";
    
    --rs2
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "01";
    wait for clock_period;
    m_data <= "00";
    
    --imm7 1 from above
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
    wait for clock_period;
    m_data <= "00";
       
       
     --FÅ ADD ATT FUNGERA OM DET BLIR 0 ÄNDRA I PROGRAM SÅ ATT MAN GÖR wr VID LUI
     --`LISTA UT HUR MAN SKA SKICKA INSTRUCTION EFTER INSTRUCTION UTAN ATT DEN RÅKAR LÄSA FEL TEX STOPPA LÄSNING TEMPORÄRT
    wait;
end process;

end instruction_arch;