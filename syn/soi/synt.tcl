#----------------------------------------
# Genus scripted synthesys for XFAB 0.18
# Author: Saul Rodriguez
# Date: 2020-04-01
#----------------------------------------

#-------------------------------------
#  Load libraries and design, Lab 1.1
#-------------------------------------
set_db information_level 9

set_db lib_search_path "models/liberty"
#set_db library KISTA_SOI_STDLIB_ECSM_TT.lib

set_db library KISTA_SOI_STDLIB2_CCS_TT.lib

#Change to /home/christopher/proj/models/liberty/KISTA_SOI_STDLIB2_CCS_TT.lib


#set_db operating_conditions PVT_1P08V_125C
set_db operating_conditions PVT_1P8V_25C

#--------------------------
# Read Design
#--------------------------
#read_hdl ../verilog/SPI_Slave.v 
read_hdl -vhdl verilog/program_package.vhdl
read_hdl -vhdl verilog/CiscV.vhdl

set_db hdl_error_on_blackbox 1
#set_db hdl_error_on_latch 1

elaborate CiscV

check_design -unresolved 
check_design -all

#-----------------------
# Constraints, Lab 1.3
#-----------------------

#Clock
create_clock -name "CLK" -add -period 100.0 [get_ports clk]
set_clock_latency 0.2 [get_clocks CLK]
set_clock_uncertainty -setup 0.3 [get_clocks CLK]
set_clock_uncertainty -hold 0.2 [get_clocks CLK]
#set_clock_transition 0.1 [get_clocks CLK]

#Asynchronous input signals (note: they need to be synchronized in RTL!)
#set_false_path -from [get_ports rx]

#Asynchronous reset signals
#set_false_path -from [get_ports resetn] 
set_false_path -from [get_ports sreset] 

#Output constraints
#Set output delays
set_output_delay 0.2 -max -network_latency_included \
-clock CLK [all_outputs]
set_output_delay 0.1 -min -network_latency_included \
-clock CLK [all_outputs]

#Set loads
set_load  0.10 -max [all_outputs]
set_load  0.01 -min [all_outputs]

#Input constraints
set_input_delay 0.2 -max -network_latency_included \
-clock CLK [all_inputs]
set_input_delay 0.1 -min -network_latency_included \
-clock CLK [all_inputs]

#Settings for block constraints. For chip constrains use an output pad of an output driver 
set_driving_cell -min -lib_cell BUFX2 -library KISTA_SOI_STDLIB_ECSM_TT -pin "Y" [all_inputs]
set_driving_cell -max -lib_cell BUFX2 -library KISTA_SOI_STDLIB_ECSM_TT -pin "Y" [all_inputs]

#------------
# Synthesis 
#------------

syn_generic
syn_map
syn_opt

#Insert tiehi or tielo cells to inputs connected to 1 or 0
#insert_tiehilo_cells -high TIEHI -low TIELO SPI_Slave
#or simply	
#insert_tiehilo_cells

#--------------------
# Output and Reports 
#--------------------

#write out verilog netlists and constraints
write_hdl > genus_output/CiscV_synth.v
write_sdc > genus_output/design.sdc
write_script > genus_output/design.genus_const.tcl

# report_timing -lint -verbose

report_timing > genus_output/synth_timing.rpt	
report_area   > genus_output/synth_area.rpt
report_gates  > genus_output/synth_gates.rpt	
report_power  > genus_output/synth_power.rpt

