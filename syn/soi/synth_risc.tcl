
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




#RISC_V_Cached.vhdl          cache_bypass_control.vhdl   dtekv_top_nocache.vhdl      mem_stage.vhdl
#RV_tb.vhdl                  cache_bypass_top.vhdl       exec_mem.vhdl               no_d_cache.vhdl
#arbiter.vhdl                d_cache_control.vhdl        hazardunit.vhdl             no_i_cache.vhdl
#bs_interface_master.vhd     d_cache_memory.vhdl         i_cache_control.vhdl        priority_cycle_module.vhdl
#bs_interface_slave.vhd      d_cache_top.vhdl            i_cache_memory.vhdl         round_robin_module.vhdl
#bs_interface_tb.vhd         debug.vhdl                  i_cache_top.vhdl            types_pkg.vhd
#bs_protocol.vhd             dtekv_lib.vhdl              if_decode.vhdl              writeback.vhdl


set FILE_LIST {RISC_V_Cached.vhdl          cache_bypass_control.vhdl   dtekv_top_nocache.vhdl      mem_stage.vhdl
RV_tb.vhdl                  cache_bypass_top.vhdl       exec_mem.vhdl               no_d_cache.vhdl
arbiter.vhdl                d_cache_control.vhdl        hazardunit.vhdl             no_i_cache.vhdl
bs_interface_master.vhd     d_cache_memory.vhdl         i_cache_control.vhdl        priority_cycle_module.vhdl
bs_interface_slave.vhd      d_cache_top.vhdl            i_cache_memory.vhdl         round_robin_module.vhdl
bs_interface_tb.vhd         debug.vhdl                  i_cache_top.vhdl            types_pkg.vhd
bs_protocol.vhd             dtekv_lib.vhdl              if_decode.vhdl              writeback.vhdl}

read_hdl -vhdl $FILE_LIST

#read_hdl -vhdl ../../source/



set_db hdl_error_on_blackbox 1
#set_db hdl_error_on_latch 1

elaborate d_cache_top

check_design -unresolved 
check_design -all
#Insert tiehi or tielo cells to inputs connected to 1 or 0
#insert_tiehilo_cells -high TIEHI -low TIELO SPI_Slave
##or simply
#insert_tiehilo_cells

#--------------------
# Output and Reports
#--------------------

#write out verilog netlists and constraints
write_hdl > genus_output/d_cache_top_synth.v
write_sdc > genus_output/design.sdc
write_script > genus_output/design.genus_const.tcl

# report_timing -lint -verbose

report_timing > genus_output/d_cache_top_synth_timing.rpt
report_area   > genus_output/d_cache_top_synth_area.rpt
report_gates  > genus_output/d_cache_top_synth_gates.rpt
report_power  > genus_output/d_cache_top_synth_power.rpt

puts "Final Runtime & Memory."
timestat FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"
