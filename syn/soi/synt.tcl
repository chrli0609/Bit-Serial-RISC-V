#----------------------------------------
# Genus scripted synthesys for XFAB 0.18
# Author: Saul Rodriguez
# Date: 2020-04-01
#----------------------------------------

#-------------------------------------
#  Load libraries and design, Lab 1.1
#-------------------------------------

set_db information_level 9
set_db hdl_search_path ${RTL_PATH}
set_db lib_search_path ${LIB_PATH}




set_db library $LIBRARY
set_db operating_condition $OPERATING_CONDITION


#--------------------------
# Read Design
#--------------------------
#read_hdl -vhdl ../../source/brisc/program_package.vhdl
#read_hdl -vhdl ../../source/brisc/CiscV.vhdl


#read_hdl -vhdl $FILE_LIST
#read_hdl $FILE_LIST



foreach rtl_file $FILE_LIST {
	set nameDotTypeList [split $rtl_file "."]
	set filetype [lindex $nameDotTypeList 1]
	puts "----- filetype is: $filetype ------ "
	if {$filetype == "v"} {
	read_hdl $rtl_file
	} else {
	read_hdl -vhdl $rtl_file
	}
}


#for {set i 0} {$i < llength $FILE_LIST} {incr i}{
#	puts "value of i: $i"
#	if {lindex $FILE_LIST $i }
#	read_hdl
#}



set_db hdl_error_on_blackbox 1
set_db hdl_error_on_latch 1


elaborate $DESIGN

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
#set_false_path -from [get_ports reset] 
#set_false_path -from [get_ports rst] 
#set_false_path -from [get_ports i_rst] 
#
#
set_false_path -from [get_ports $RESET_SIGNAL] 

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
write_hdl > genus_output/${DESIGN}_synth.v
write_sdc > genus_output/${DESIGN}_design.sdc
write_script > genus_output/${DESIGN}_design.genus_const.tcl

# report_timing -lint -verbose

report_timing > genus_output/${DESIGN}_synth_timing.rpt	
report_area   > genus_output/${DESIGN}_synth_area.rpt
report_gates  > genus_output/${DESIGN}_synth_gates.rpt	
report_power  > genus_output/${DESIGN}_synth_power.rpt

puts "Final Runtime & Memory."
timestat FINAL
#puts "=========================================="
#puts "${DESIGN} Synthesis Finished ........."
#puts "=========================================="
puts "==========================================\n${DESIGN} Synthesis Finished .........\n=========================================="
