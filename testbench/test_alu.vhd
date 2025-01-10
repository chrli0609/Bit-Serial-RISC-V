


----------------------------------------------------------------------------------

-- Dependencies:
    -- Requires a text file containing 32-bit binary RISC-V machine code
    -- Requires a text file containing 32-bit binary expected alu_outputs (for result_bus_out signal)





package file_paths is
    constant INSTRUCTION_FILE_PATH          : string := "test_cases\wack_machine_code_format.txt";
    constant EXPECTED_ALU_RESULTS_FILE_PATH : string := "test_cases\test_alu_results.txt";
end file_paths;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use std.env.stop;
use std.textio.all;
use work.file_paths.all; -- Include the package for the constant


entity instruction_tb is
end instruction_tb;

architecture  instruction_arch of instruction_tb is
    component CiscV is
        port(
            clk                 :IN std_logic;
            s_active            :IN std_logic_vector(0 downto 0);
            s_data              :IN std_logic_vector(1 downto 0);
            sreset              :IN std_logic_vector(0 downto 0);
            com_enable          :OUT std_logic_vector(0 downto 0);
            m_active            :OUT std_logic_vector(0 downto 0);
            addr                :OUT std_logic_vector(1 downto 0);
            m_data              :OUT std_logic_vector(1 downto 0)
        );
    end component CiscV;
    
    signal clk                 : std_logic := '0';
    signal s_active            : std_logic_vector(0 downto 0) := (others => '0');
    signal s_data              : std_logic_vector(1 downto 0);
    signal sreset              : std_logic_vector(0 downto 0) := (others => '0');
    signal com_enable          : std_logic_vector(0 downto 0) := (others => '0');
    signal m_active            : std_logic_vector(0 downto 0) := (others => '0');
    signal addr                : std_logic_vector(1 downto 0) := (others => '0');
    signal m_data              : std_logic_vector(1 downto 0) := (others => '0');



    -- Clock parameters
    constant clock_period : time := 20ns;


    signal show_test_num : integer := 0;


    signal inst_code : std_logic_vector(31 downto 0);



    -- Define the maximum number of instructions
    constant MAX_INSTRUCTIONS_NUM : integer := 100;  -- Predefined max number of instructions
    constant ALU_RESULT_SIZE      : integer := 32;   -- Size of the instruction in bits
    
    -- Declare an array to store instructions as std_logic_vector
    type alu_result_array is array (0 to MAX_INSTRUCTIONS_NUM - 1) of std_logic_vector(ALU_RESULT_SIZE - 1 downto 0);
    signal expected_alu_results : alu_result_array;
    
    -- Variable to store the number of valid instructions read
    signal num_results : integer := 0;
    signal error_counter : integer := 0;
    
    begin
    
    uut: CiscV
        port map (
        clk         => clk,
        s_active    => s_active,
        s_data      => s_data,
        sreset      => sreset,
        com_enable  => com_enable,
        m_active    => m_active,
        addr        => addr,
        m_data      => m_data,
        rd_data_out => rd_data_out,
        rs1_data_out => rs1_data_out,
        rs2_data_out => rs2_data_out,
        result_bus_out => result_bus_out,
        op1_bus_out => op1_bus_out,
        op2_bus_out => op2_bus_out,
        op1_alt_out => op1_alt_out,
        op2_alt_out => op2_alt_out,
        result_select_out => result_select_out,
        pc_out      => pc_out
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
        



    -- Instruction Test Process
    instruction_test : process


        -- For expected alu results
        file alu_result_file : text open read_mode is EXPECTED_ALU_RESULTS_FILE_PATH;
        variable line_in_results : line;
        variable alu_result_str : string(1 to ALU_RESULT_SIZE);

    
        -- For test instruction
        -- file instruction_file : text open read_mode is "test_instructions.txt";
        file instruction_file : text open read_mode is INSTRUCTION_FILE_PATH;
        variable line_in : line;
        variable inst_code_str : string(1 to 32);
        variable slice_start : integer := 0;
        variable test_num_res : integer := 0;
    begin

        
        --- ################################################################## ---
        --- ######################### STORE RESULTS ########################## ---
        --- ################################################################## ---

        -- Read each line from the file
        while not endfile(alu_result_file) loop
            -- Check if the array is full
            if num_results = MAX_INSTRUCTIONS_NUM then
                report "Maximum instruction count reached";
                exit;
            end if;



            -- Read one line from the file
            readline(alu_result_file, line_in_results);
            -- Read the first 32 characters (assuming 32-bit instructions in the file)
            -- read(line_in_results, alu_result_str);
            -- Convert line_in to string and print
            report "Read Expected ALU results line: " & line_in_results.all;
            -- Check if the line has sufficient length
            if line_in_results'length >= 32 then
                alu_result_str := line_in_results.all(1 to 32); -- Extract the first 32 characters
            else
                report "Line in file too short: " & integer'image(line_in_results'length) severity error;
            end if;

            report "check alu_result_str: " & alu_result_str;

            -- Convert the string to std_logic_vector and store in the array
            for i in 0 to ALU_RESULT_SIZE - 1 loop
                if alu_result_str(i+1) = '0' then
                    expected_alu_results(test_num_res)(ALU_RESULT_SIZE-1-i) <= '0';
                elsif alu_result_str(i+1) = '1' then
                    expected_alu_results(test_num_res)(ALU_RESULT_SIZE-1-i) <= '1';
                else
                    report "OMEGA ERROR HAS OCCURRED!" & LF &
                            "alu_result_str(i+1): " & alu_result_str(i+1)
                            severity FAILURE;
                end if;
                ---expected_alu_results(test_num_res)(i) <= '1' when alu_result_str(i + 1) = '0' else '0';
            end loop;

            -- Increment the instruction counter
            test_num_res := test_num_res + 1;
            num_results <= num_results + 1;

        end loop;

        -- Stop simulation after reading the file
        report "Finished reading expected results file";



        /*
        -- Test that the expected alu results are stored in array
        for i in 0 to 5 loop
            report "expected_alu_results " & integer'image(i) & ": " & to_hstring(expected_alu_results(i));
        end loop;
        */





        --- ################################################################## ---
        --- ######################### RUN SIMULATION ######################### ---
        --- ################################################################## ---

        while not endfile(instruction_file) loop

            -- Keep track of which test instruction
            show_test_num <= show_test_num + 1;




            -- ###################### ---
            -- READ test instructions ---
            -- ###################### ---

            readline(instruction_file, line_in);
            -- Convert line_in to string and print
            report "Read line: " & line_in.all;
            -- Check if the line has sufficient length
            if line_in'length >= 32 then
                inst_code_str := line_in.all(1 to 32); -- Extract the first 32 characters
            else
                report "Line in file too short: " & integer'image(line_in'length) severity error;
            end if;



            -- Convert the string to std_logic_vector
            for i in 0 to 31 loop
                inst_code(i) <= '0' when inst_code_str(i + 1) = '0' else '1';
            end loop;



            
            -- ########################################## ---
            -- Send instruction bit serially to processor ---
            -- ########################################## ---
            
            
            -- Give signal to start reading instructions
            wait until com_enable(0) = '1';
            wait for 16*clock_period;    
            wait for 0.1*clock_period;  
            
            -- Process the instruction in 16 cycles
            for i in 0 to 15 loop
                wait for clock_period;
                slice_start := 31 - (i * 2);
                s_data <= inst_code(slice_start downto slice_start - 1);
            end loop;


            -- Stall CPU for 3 cycles
            --for i in 1 to 5 loop
            --    wait until rising_edge(clk);
            --    s_data <= "10";
            --end loop;

            wait until com_enable(0) = '0';

            
            -- Assert that the expected alu results are outputted from the processor
            -- report "######## ABOUT TO MAKE ASSERTION!!!!!! #########";
            -- wait until falling_edge(clk);
            wait for 1.1*clock_period;
            assert result_bus_out = expected_alu_results(show_test_num-1) report LF &
                                                                                "###########################################################################################" & LF &
                                                                                "###########################################################################################" & LF &
                                                                                "FAILED Test instruction " & integer'image(show_test_num) & LF &
                                                                                "-----------------------------------------------------------------------------------------" & LF &
                                                                                "operand_1: " & to_string(op1_bus_out) & LF &
                                                                                "operand_2: " & to_string(op2_bus_out) & LF &
                                                                                "-----------------------------------------------------------------------------------------" & LF &
                                                                                "expected alu result: " & to_string(expected_alu_results(show_test_num-1)) & LF &
                                                                                "received alu result: " & to_string(result_bus_out) & LF &
                                                                                "###########################################################################################" & LF &
                                                                                "###########################################################################################"
                                                                                severity error;
            assert result_bus_out /= expected_alu_results(show_test_num-1) report "PASSED Test instruction: " &  integer'image(show_test_num) severity note;
            
            
            if result_bus_out /= expected_alu_results(show_test_num-1) then
                error_counter <= error_counter + 1;
            end if;
        
        end loop;

        wait for clock_period/10;

            
        -- Report how many errors were found
        report                                                            LF &
                "#####################################################" & LF &
                "NUM TEST FAILED: "& integer'image(error_counter)       & LF &
                "#####################################################";


        -- Stop simulation
        wait for clock_period;
        stop;
    end process;
end instruction_arch;
