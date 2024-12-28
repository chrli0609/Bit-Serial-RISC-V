
# *************************************************
# * Local Variable settings for this design
# *************************************************
#include load_etc.tcl



set LOCAL_DIR "[exec pwd]"
set SYNTH_DIR $LOCAL_DIR


#set RTL_PATH $LOCAL_DIR/../../source/cache_based/cache/
set RTL_PATH $LOCAL_DIR/../../source/cache_based/latest_cache/

set LIB_PATH $LOCAL_DIR/models/liberty/

set LIBRARY  {KISTA_SOI_STDLIB2_CCS_TT.lib}
set OPERATING_CONDITION {PVT_1P8V_25C}





set FILE_LIST {dtekv_lib.vhdl ext_functions.vhdl          d_cache_control.vhdl    exec_mem.vhdl         mem_stage.vhdl d_cache_memory.vhdl     hazardunit.vhdl       no_d_cache.vhdl
arbiter.vhdl               d_cache_top.vhdl        i_cache_control.vhdl  no_i_cache.vhdl
bus_interface_top.vhdl i_cache_memory.vhdl   priority_cycle_module.vhdl
cache_bypass_control.vhdl           i_cache_top.vhdl      round_robin_module.vhdl
cache_bypass_top.vhdl       if_decode.vhdl        writeback.vhdl dtekv_top_nocache.vhdl RISC_V_Cached.vhdl}



#set SYN_EFFORT   high
#set MAP_EFFORT   high


set DESIGN       RISC_V_Cached

set RESET_SIGNAL reset

set THE_DATE  [exec date +%m%d.%H%M]

# *********************************************************
# * Display the system info and Start Time
# *********************************************************
puts "The output file  PREFIX is ${THE_DATE} \n"

#set_attr information_level 9 /
#set_attr hdl_search_path ${RTL_PATH} /
#set_attr lib_search_path ${LIB_PATH} /








#set_db operating_conditions PVT_1P08V_125C
#set_db operating_conditions PVT_1P8V_25C
