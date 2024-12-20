

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




set FILE_LIST { serv_aligner.v  serv_bufreg.v   serv_compdec.v  serv_ctrl.v   serv_decode.v  serv_mem_if.v  serv_rf_ram.v     serv_rf_top.v  serv_alu.v      serv_bufreg2.v  serv_csr.v      serv_debug.v  serv_immdec.v  serv_rf_if.v   serv_rf_ram_if.v  serv_state.v   serv_top.v serv_synth_wrapper.v}



#set SYN_EFFORT   high
#set MAP_EFFORT   high


#set DESIGN serv_synth_wrapper
set DESIGN serv_rf_top

set THE_DATE  [exec date +%m%d.%H%M]

# *********************************************************
# * Display the system info and Start Time
# *********************************************************
puts "The output file  PREFIX is ${THE_DATE} \n"
