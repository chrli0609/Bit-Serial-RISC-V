# *************************************************
# * Local Variable settings for this design
# *************************************************
#include load_etc.tcl



set LOCAL_DIR "[exec pwd]"
set SYNTH_DIR $LOCAL_DIR


set RTL_PATH $LOCAL_DIR/../../rtl/brisc/
set LIB_PATH $LOCAL_DIR/models/liberty/

set LIBRARY  {KISTA_SOI_STDLIB2_CCS_TT.lib}
set OPERATING_CONDITION {PVT_1P8V_25C}

set FILE_LIST {program_package.vhdl types_pkg.vhd CiscV.vhdl bs_interface.vhd BRISC_top_no_io.vhdl}


#set SYN_EFFORT   high
#set MAP_EFFORT   high


set DESIGN       BRISC_top_no_io

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
