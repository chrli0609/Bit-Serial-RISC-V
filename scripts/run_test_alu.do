quit -sim
vlib work


vcom -work work -2008 -explicit ../rtl/brisc/program_package.vhdl
vcom -work work -2008 -explicit ../rtl/brisc/CiscV.vhdl
vcom -work work -2008 -explicit ../testbench/test_alu.vhd


vsim -gui work.instruction_tb -voptargs=+acc -debugDB

add wave -position insertpoint  \
sim:/instruction_tb/clk \
sim:/instruction_tb/com_enable \
sim:/instruction_tb/m_active \
sim:/instruction_tb/s_active \
sim:/instruction_tb/uut/U0/wr_reg \
sim:/instruction_tb/addr \
sim:/instruction_tb/m_data \
sim:/instruction_tb/s_data \
sim:/instruction_tb/sreset \
sim:/instruction_tb/rd_data_out \
sim:/instruction_tb/rs1_data_out \
sim:/instruction_tb/rs2_data_out \
sim:/instruction_tb/result_bus_out \
sim:/instruction_tb/op1_bus_out \
sim:/instruction_tb/op2_bus_out \
sim:/instruction_tb/op1_alt_out \
sim:/instruction_tb/op2_alt_out \
sim:/instruction_tb/result_select_out \
sim:/instruction_tb/clock_period \
sim:/instruction_tb/expected_alu_results \
sim:/instruction_tb/num_results \
sim:/instruction_tb/uut/U0/alu_funct

add wave -radix hex sim:/instruction_tb/result_bus_out
add wave -radix hex sim:/instruction_tb/op1_bus_out
add wave -radix hex sim:/instruction_tb/op2_bus_out
add wave -radix decimal sim:/instruction_tb/show_test_num


set StdArithNoWarnings 1
set NumericStdNoWarnings 1

run -all


