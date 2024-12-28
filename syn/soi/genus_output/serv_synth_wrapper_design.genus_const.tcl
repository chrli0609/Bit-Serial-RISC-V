######################################################################

# Created by Genus(TM) Synthesis Solution 21.19-s055_1 on Sat Dec 28 21:48:28 CET 2024

# This file contains the Genus script for design:serv_synth_wrapper

######################################################################

set_db -quiet information_level 9
set_db -quiet init_lib_search_path /home/christopher/Bit-Serial-RISC-V/syn/soi/models/liberty/
set_db -quiet design_mode_process no_value
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 10 0.0 10.0} {to_generic 4 14 4 14} {first_condense 2 17 3 18} {PBS_Generic_Opt-Post 8 18 6.985102999999999 16.985103} {{PBS_Generic-Postgen HBO Optimizations} 0 18 0.0 16.985103} {PBS_TechMap-Start 0 18 0.0 16.985103} {{PBS_TechMap-Premap HBO Optimizations} 0 18 0.0 16.985103} {second_condense 2 20 2 21} {reify 2 22 4 25} {global_incr_map 1 23 1 26} {{PBS_Techmap-Global Mapping} 5 23 4.755863999999999 21.740966999999998} {{PBS_TechMap-Datapath Postmap Operations} 1 24 2.0 23.740966999999998} {{PBS_TechMap-Postmap HBO Optimizations} 0 24 -0.033891999999998035 23.707075} {{PBS_TechMap-Postmap Clock Gating} 0 24 0.0 23.707075} {{PBS_TechMap-Postmap Cleanup} 0 24 -0.035314000000003176 23.671760999999996} {PBS_Techmap-Post_MBCI 0 24 0.0 23.671760999999996} {incr_opt 2 27 3 31} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_error_on_latch true
set_db -quiet hdl_error_on_blackbox true
set_db -quiet tinfo_tstamp_file .rs_christopher.tstamp
set_db -quiet metric_enable true
set_db -quiet flow_metrics_snapshot_uuid dd328736-92e3-465a-8b6f-018c1b4d0f31
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet interconnect_mode wireload
set_db -quiet wireload_mode enclosed
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/PVT_1P8V_25C
set_db -quiet wireload_selection none
set_db -quiet operating_condition:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/PVT_1P8V_25C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name CLK -domain domain_1 -period 1000000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:serv_synth_wrapper port:serv_synth_wrapper/clk
set_db -quiet clock:serv_synth_wrapper/CLK .clock_network_early_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:serv_synth_wrapper/CLK .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:serv_synth_wrapper/CLK .clock_setup_uncertainty {300.0 300.0}
set_db -quiet clock:serv_synth_wrapper/CLK .clock_hold_uncertainty {200.0 200.0}
define_cost_group -design design:serv_synth_wrapper -name CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:serv_synth_wrapper/CLK -name create_clock_delay_domain_1_CLK_R_0 port:serv_synth_wrapper/clk
set_db -quiet external_delay:serv_synth_wrapper/create_clock_delay_domain_1_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:serv_synth_wrapper/CLK -edge_fall -name create_clock_delay_domain_1_CLK_F_0 port:serv_synth_wrapper/clk
set_db -quiet external_delay:serv_synth_wrapper/create_clock_delay_domain_1_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del {{port:serv_synth_wrapper/o_ibus_adr[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_1_1 {{port:serv_synth_wrapper/o_ibus_adr[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_1_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_2_1 {{port:serv_synth_wrapper/o_ibus_adr[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_2_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_3_1 {{port:serv_synth_wrapper/o_ibus_adr[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_3_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_4_1 {{port:serv_synth_wrapper/o_ibus_adr[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_4_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_5_1 {{port:serv_synth_wrapper/o_ibus_adr[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_5_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_6_1 {{port:serv_synth_wrapper/o_ibus_adr[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_6_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_7_1 {{port:serv_synth_wrapper/o_ibus_adr[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_7_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_8_1 {{port:serv_synth_wrapper/o_ibus_adr[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_8_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_9_1 {{port:serv_synth_wrapper/o_ibus_adr[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_9_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_10_1 {{port:serv_synth_wrapper/o_ibus_adr[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_10_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_11_1 {{port:serv_synth_wrapper/o_ibus_adr[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_11_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_12_1 {{port:serv_synth_wrapper/o_ibus_adr[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_12_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_13_1 {{port:serv_synth_wrapper/o_ibus_adr[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_13_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_14_1 {{port:serv_synth_wrapper/o_ibus_adr[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_14_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_15_1 {{port:serv_synth_wrapper/o_ibus_adr[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_15_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_16_1 {{port:serv_synth_wrapper/o_ibus_adr[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_16_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_17_1 {{port:serv_synth_wrapper/o_ibus_adr[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_17_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_18_1 {{port:serv_synth_wrapper/o_ibus_adr[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_18_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_19_1 {{port:serv_synth_wrapper/o_ibus_adr[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_19_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_20_1 {{port:serv_synth_wrapper/o_ibus_adr[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_20_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_21_1 {{port:serv_synth_wrapper/o_ibus_adr[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_21_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_22_1 {{port:serv_synth_wrapper/o_ibus_adr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_22_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_23_1 {{port:serv_synth_wrapper/o_ibus_adr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_23_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_24_1 {{port:serv_synth_wrapper/o_ibus_adr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_24_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_25_1 {{port:serv_synth_wrapper/o_ibus_adr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_25_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_26_1 {{port:serv_synth_wrapper/o_ibus_adr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_26_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_27_1 {{port:serv_synth_wrapper/o_ibus_adr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_27_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_28_1 {{port:serv_synth_wrapper/o_ibus_adr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_28_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_29_1 {{port:serv_synth_wrapper/o_ibus_adr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_29_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_30_1 {{port:serv_synth_wrapper/o_ibus_adr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_30_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_31_1 {{port:serv_synth_wrapper/o_ibus_adr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_31_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_32_1 port:serv_synth_wrapper/o_ibus_cyc
set_db -quiet external_delay:serv_synth_wrapper/ou_del_32_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_33_1 {{port:serv_synth_wrapper/o_dbus_adr[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_33_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_34_1 {{port:serv_synth_wrapper/o_dbus_adr[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_34_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_35_1 {{port:serv_synth_wrapper/o_dbus_adr[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_35_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_36_1 {{port:serv_synth_wrapper/o_dbus_adr[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_36_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_37_1 {{port:serv_synth_wrapper/o_dbus_adr[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_37_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_38_1 {{port:serv_synth_wrapper/o_dbus_adr[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_38_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_39_1 {{port:serv_synth_wrapper/o_dbus_adr[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_39_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_40_1 {{port:serv_synth_wrapper/o_dbus_adr[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_40_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_41_1 {{port:serv_synth_wrapper/o_dbus_adr[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_41_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_42_1 {{port:serv_synth_wrapper/o_dbus_adr[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_42_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_43_1 {{port:serv_synth_wrapper/o_dbus_adr[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_43_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_44_1 {{port:serv_synth_wrapper/o_dbus_adr[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_44_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_45_1 {{port:serv_synth_wrapper/o_dbus_adr[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_45_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_46_1 {{port:serv_synth_wrapper/o_dbus_adr[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_46_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_47_1 {{port:serv_synth_wrapper/o_dbus_adr[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_47_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_48_1 {{port:serv_synth_wrapper/o_dbus_adr[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_48_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_49_1 {{port:serv_synth_wrapper/o_dbus_adr[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_49_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_50_1 {{port:serv_synth_wrapper/o_dbus_adr[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_50_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_51_1 {{port:serv_synth_wrapper/o_dbus_adr[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_51_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_52_1 {{port:serv_synth_wrapper/o_dbus_adr[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_52_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_53_1 {{port:serv_synth_wrapper/o_dbus_adr[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_53_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_54_1 {{port:serv_synth_wrapper/o_dbus_adr[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_54_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_55_1 {{port:serv_synth_wrapper/o_dbus_adr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_55_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_56_1 {{port:serv_synth_wrapper/o_dbus_adr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_56_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_57_1 {{port:serv_synth_wrapper/o_dbus_adr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_57_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_58_1 {{port:serv_synth_wrapper/o_dbus_adr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_58_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_59_1 {{port:serv_synth_wrapper/o_dbus_adr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_59_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_60_1 {{port:serv_synth_wrapper/o_dbus_adr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_60_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_61_1 {{port:serv_synth_wrapper/o_dbus_adr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_61_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_62_1 {{port:serv_synth_wrapper/o_dbus_adr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_62_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_63_1 {{port:serv_synth_wrapper/o_dbus_adr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_63_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_64_1 {{port:serv_synth_wrapper/o_dbus_adr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_64_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_65_1 {{port:serv_synth_wrapper/o_dbus_dat[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_65_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_66_1 {{port:serv_synth_wrapper/o_dbus_dat[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_66_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_67_1 {{port:serv_synth_wrapper/o_dbus_dat[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_67_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_68_1 {{port:serv_synth_wrapper/o_dbus_dat[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_68_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_69_1 {{port:serv_synth_wrapper/o_dbus_dat[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_69_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_70_1 {{port:serv_synth_wrapper/o_dbus_dat[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_70_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_71_1 {{port:serv_synth_wrapper/o_dbus_dat[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_71_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_72_1 {{port:serv_synth_wrapper/o_dbus_dat[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_72_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_73_1 {{port:serv_synth_wrapper/o_dbus_dat[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_73_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_74_1 {{port:serv_synth_wrapper/o_dbus_dat[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_74_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_75_1 {{port:serv_synth_wrapper/o_dbus_dat[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_75_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_76_1 {{port:serv_synth_wrapper/o_dbus_dat[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_76_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_77_1 {{port:serv_synth_wrapper/o_dbus_dat[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_77_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_78_1 {{port:serv_synth_wrapper/o_dbus_dat[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_78_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_79_1 {{port:serv_synth_wrapper/o_dbus_dat[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_79_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_80_1 {{port:serv_synth_wrapper/o_dbus_dat[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_80_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_81_1 {{port:serv_synth_wrapper/o_dbus_dat[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_81_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_82_1 {{port:serv_synth_wrapper/o_dbus_dat[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_82_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_83_1 {{port:serv_synth_wrapper/o_dbus_dat[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_83_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_84_1 {{port:serv_synth_wrapper/o_dbus_dat[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_84_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_85_1 {{port:serv_synth_wrapper/o_dbus_dat[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_85_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_86_1 {{port:serv_synth_wrapper/o_dbus_dat[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_86_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_87_1 {{port:serv_synth_wrapper/o_dbus_dat[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_87_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_88_1 {{port:serv_synth_wrapper/o_dbus_dat[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_88_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_89_1 {{port:serv_synth_wrapper/o_dbus_dat[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_89_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_90_1 {{port:serv_synth_wrapper/o_dbus_dat[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_90_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_91_1 {{port:serv_synth_wrapper/o_dbus_dat[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_91_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_92_1 {{port:serv_synth_wrapper/o_dbus_dat[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_92_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_93_1 {{port:serv_synth_wrapper/o_dbus_dat[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_93_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_94_1 {{port:serv_synth_wrapper/o_dbus_dat[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_94_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_95_1 {{port:serv_synth_wrapper/o_dbus_dat[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_95_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_96_1 {{port:serv_synth_wrapper/o_dbus_dat[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_96_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_97_1 {{port:serv_synth_wrapper/o_dbus_sel[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_97_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_98_1 {{port:serv_synth_wrapper/o_dbus_sel[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_98_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_99_1 {{port:serv_synth_wrapper/o_dbus_sel[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_99_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_100_1 {{port:serv_synth_wrapper/o_dbus_sel[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_100_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_101_1 port:serv_synth_wrapper/o_dbus_we
set_db -quiet external_delay:serv_synth_wrapper/ou_del_101_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_102_1 port:serv_synth_wrapper/o_dbus_cyc
set_db -quiet external_delay:serv_synth_wrapper/ou_del_102_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_103_1 {{port:serv_synth_wrapper/o_waddr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_103_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_104_1 {{port:serv_synth_wrapper/o_waddr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_104_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_105_1 {{port:serv_synth_wrapper/o_waddr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_105_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_106_1 {{port:serv_synth_wrapper/o_waddr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_106_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_107_1 {{port:serv_synth_wrapper/o_waddr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_107_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_108_1 {{port:serv_synth_wrapper/o_waddr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_108_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_109_1 {{port:serv_synth_wrapper/o_waddr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_109_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_110_1 {{port:serv_synth_wrapper/o_waddr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_110_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_111_1 {{port:serv_synth_wrapper/o_waddr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_111_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_112_1 {{port:serv_synth_wrapper/o_waddr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_112_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_113_1 {{port:serv_synth_wrapper/o_wdata[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_113_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_114_1 {{port:serv_synth_wrapper/o_wdata[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_114_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_115_1 port:serv_synth_wrapper/o_wen
set_db -quiet external_delay:serv_synth_wrapper/ou_del_115_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_116_1 {{port:serv_synth_wrapper/o_raddr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_116_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_117_1 {{port:serv_synth_wrapper/o_raddr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_117_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_118_1 {{port:serv_synth_wrapper/o_raddr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_118_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_119_1 {{port:serv_synth_wrapper/o_raddr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_119_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_120_1 {{port:serv_synth_wrapper/o_raddr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_120_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_121_1 {{port:serv_synth_wrapper/o_raddr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_121_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_122_1 {{port:serv_synth_wrapper/o_raddr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_122_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_123_1 {{port:serv_synth_wrapper/o_raddr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_123_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_124_1 {{port:serv_synth_wrapper/o_raddr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_124_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name ou_del_125_1 {{port:serv_synth_wrapper/o_raddr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_125_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_126_1 {{port:serv_synth_wrapper/o_ibus_adr[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_126_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_127_1 {{port:serv_synth_wrapper/o_ibus_adr[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_127_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_128_1 {{port:serv_synth_wrapper/o_ibus_adr[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_128_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_129_1 {{port:serv_synth_wrapper/o_ibus_adr[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_129_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_130_1 {{port:serv_synth_wrapper/o_ibus_adr[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_130_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_131_1 {{port:serv_synth_wrapper/o_ibus_adr[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_131_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_132_1 {{port:serv_synth_wrapper/o_ibus_adr[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_132_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_133_1 {{port:serv_synth_wrapper/o_ibus_adr[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_133_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_134_1 {{port:serv_synth_wrapper/o_ibus_adr[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_134_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_135_1 {{port:serv_synth_wrapper/o_ibus_adr[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_135_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_136_1 {{port:serv_synth_wrapper/o_ibus_adr[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_136_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_137_1 {{port:serv_synth_wrapper/o_ibus_adr[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_137_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_138_1 {{port:serv_synth_wrapper/o_ibus_adr[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_138_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_139_1 {{port:serv_synth_wrapper/o_ibus_adr[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_139_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_140_1 {{port:serv_synth_wrapper/o_ibus_adr[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_140_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_141_1 {{port:serv_synth_wrapper/o_ibus_adr[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_141_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_142_1 {{port:serv_synth_wrapper/o_ibus_adr[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_142_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_143_1 {{port:serv_synth_wrapper/o_ibus_adr[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_143_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_144_1 {{port:serv_synth_wrapper/o_ibus_adr[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_144_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_145_1 {{port:serv_synth_wrapper/o_ibus_adr[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_145_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_146_1 {{port:serv_synth_wrapper/o_ibus_adr[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_146_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_147_1 {{port:serv_synth_wrapper/o_ibus_adr[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_147_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_148_1 {{port:serv_synth_wrapper/o_ibus_adr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_148_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_149_1 {{port:serv_synth_wrapper/o_ibus_adr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_149_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_150_1 {{port:serv_synth_wrapper/o_ibus_adr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_150_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_151_1 {{port:serv_synth_wrapper/o_ibus_adr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_151_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_152_1 {{port:serv_synth_wrapper/o_ibus_adr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_152_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_153_1 {{port:serv_synth_wrapper/o_ibus_adr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_153_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_154_1 {{port:serv_synth_wrapper/o_ibus_adr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_154_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_155_1 {{port:serv_synth_wrapper/o_ibus_adr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_155_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_156_1 {{port:serv_synth_wrapper/o_ibus_adr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_156_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_157_1 {{port:serv_synth_wrapper/o_ibus_adr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_157_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_158_1 port:serv_synth_wrapper/o_ibus_cyc
set_db -quiet external_delay:serv_synth_wrapper/ou_del_158_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_159_1 {{port:serv_synth_wrapper/o_dbus_adr[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_159_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_160_1 {{port:serv_synth_wrapper/o_dbus_adr[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_160_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_161_1 {{port:serv_synth_wrapper/o_dbus_adr[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_161_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_162_1 {{port:serv_synth_wrapper/o_dbus_adr[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_162_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_163_1 {{port:serv_synth_wrapper/o_dbus_adr[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_163_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_164_1 {{port:serv_synth_wrapper/o_dbus_adr[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_164_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_165_1 {{port:serv_synth_wrapper/o_dbus_adr[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_165_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_166_1 {{port:serv_synth_wrapper/o_dbus_adr[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_166_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_167_1 {{port:serv_synth_wrapper/o_dbus_adr[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_167_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_168_1 {{port:serv_synth_wrapper/o_dbus_adr[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_168_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_169_1 {{port:serv_synth_wrapper/o_dbus_adr[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_169_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_170_1 {{port:serv_synth_wrapper/o_dbus_adr[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_170_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_171_1 {{port:serv_synth_wrapper/o_dbus_adr[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_171_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_172_1 {{port:serv_synth_wrapper/o_dbus_adr[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_172_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_173_1 {{port:serv_synth_wrapper/o_dbus_adr[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_173_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_174_1 {{port:serv_synth_wrapper/o_dbus_adr[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_174_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_175_1 {{port:serv_synth_wrapper/o_dbus_adr[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_175_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_176_1 {{port:serv_synth_wrapper/o_dbus_adr[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_176_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_177_1 {{port:serv_synth_wrapper/o_dbus_adr[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_177_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_178_1 {{port:serv_synth_wrapper/o_dbus_adr[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_178_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_179_1 {{port:serv_synth_wrapper/o_dbus_adr[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_179_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_180_1 {{port:serv_synth_wrapper/o_dbus_adr[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_180_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_181_1 {{port:serv_synth_wrapper/o_dbus_adr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_181_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_182_1 {{port:serv_synth_wrapper/o_dbus_adr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_182_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_183_1 {{port:serv_synth_wrapper/o_dbus_adr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_183_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_184_1 {{port:serv_synth_wrapper/o_dbus_adr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_184_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_185_1 {{port:serv_synth_wrapper/o_dbus_adr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_185_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_186_1 {{port:serv_synth_wrapper/o_dbus_adr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_186_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_187_1 {{port:serv_synth_wrapper/o_dbus_adr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_187_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_188_1 {{port:serv_synth_wrapper/o_dbus_adr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_188_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_189_1 {{port:serv_synth_wrapper/o_dbus_adr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_189_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_190_1 {{port:serv_synth_wrapper/o_dbus_adr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_190_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_191_1 {{port:serv_synth_wrapper/o_dbus_dat[31]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_191_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_192_1 {{port:serv_synth_wrapper/o_dbus_dat[30]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_192_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_193_1 {{port:serv_synth_wrapper/o_dbus_dat[29]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_193_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_194_1 {{port:serv_synth_wrapper/o_dbus_dat[28]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_194_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_195_1 {{port:serv_synth_wrapper/o_dbus_dat[27]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_195_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_196_1 {{port:serv_synth_wrapper/o_dbus_dat[26]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_196_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_197_1 {{port:serv_synth_wrapper/o_dbus_dat[25]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_197_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_198_1 {{port:serv_synth_wrapper/o_dbus_dat[24]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_198_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_199_1 {{port:serv_synth_wrapper/o_dbus_dat[23]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_199_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_200_1 {{port:serv_synth_wrapper/o_dbus_dat[22]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_200_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_201_1 {{port:serv_synth_wrapper/o_dbus_dat[21]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_201_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_202_1 {{port:serv_synth_wrapper/o_dbus_dat[20]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_202_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_203_1 {{port:serv_synth_wrapper/o_dbus_dat[19]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_203_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_204_1 {{port:serv_synth_wrapper/o_dbus_dat[18]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_204_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_205_1 {{port:serv_synth_wrapper/o_dbus_dat[17]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_205_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_206_1 {{port:serv_synth_wrapper/o_dbus_dat[16]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_206_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_207_1 {{port:serv_synth_wrapper/o_dbus_dat[15]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_207_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_208_1 {{port:serv_synth_wrapper/o_dbus_dat[14]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_208_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_209_1 {{port:serv_synth_wrapper/o_dbus_dat[13]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_209_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_210_1 {{port:serv_synth_wrapper/o_dbus_dat[12]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_210_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_211_1 {{port:serv_synth_wrapper/o_dbus_dat[11]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_211_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_212_1 {{port:serv_synth_wrapper/o_dbus_dat[10]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_212_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_213_1 {{port:serv_synth_wrapper/o_dbus_dat[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_213_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_214_1 {{port:serv_synth_wrapper/o_dbus_dat[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_214_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_215_1 {{port:serv_synth_wrapper/o_dbus_dat[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_215_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_216_1 {{port:serv_synth_wrapper/o_dbus_dat[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_216_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_217_1 {{port:serv_synth_wrapper/o_dbus_dat[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_217_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_218_1 {{port:serv_synth_wrapper/o_dbus_dat[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_218_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_219_1 {{port:serv_synth_wrapper/o_dbus_dat[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_219_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_220_1 {{port:serv_synth_wrapper/o_dbus_dat[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_220_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_221_1 {{port:serv_synth_wrapper/o_dbus_dat[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_221_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_222_1 {{port:serv_synth_wrapper/o_dbus_dat[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_222_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_223_1 {{port:serv_synth_wrapper/o_dbus_sel[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_223_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_224_1 {{port:serv_synth_wrapper/o_dbus_sel[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_224_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_225_1 {{port:serv_synth_wrapper/o_dbus_sel[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_225_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_226_1 {{port:serv_synth_wrapper/o_dbus_sel[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_226_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_227_1 port:serv_synth_wrapper/o_dbus_we
set_db -quiet external_delay:serv_synth_wrapper/ou_del_227_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_228_1 port:serv_synth_wrapper/o_dbus_cyc
set_db -quiet external_delay:serv_synth_wrapper/ou_del_228_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_229_1 {{port:serv_synth_wrapper/o_waddr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_229_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_230_1 {{port:serv_synth_wrapper/o_waddr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_230_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_231_1 {{port:serv_synth_wrapper/o_waddr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_231_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_232_1 {{port:serv_synth_wrapper/o_waddr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_232_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_233_1 {{port:serv_synth_wrapper/o_waddr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_233_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_234_1 {{port:serv_synth_wrapper/o_waddr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_234_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_235_1 {{port:serv_synth_wrapper/o_waddr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_235_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_236_1 {{port:serv_synth_wrapper/o_waddr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_236_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_237_1 {{port:serv_synth_wrapper/o_waddr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_237_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_238_1 {{port:serv_synth_wrapper/o_waddr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_238_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_239_1 {{port:serv_synth_wrapper/o_wdata[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_239_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_240_1 {{port:serv_synth_wrapper/o_wdata[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_240_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_241_1 port:serv_synth_wrapper/o_wen
set_db -quiet external_delay:serv_synth_wrapper/ou_del_241_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_242_1 {{port:serv_synth_wrapper/o_raddr[9]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_242_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_243_1 {{port:serv_synth_wrapper/o_raddr[8]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_243_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_244_1 {{port:serv_synth_wrapper/o_raddr[7]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_244_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_245_1 {{port:serv_synth_wrapper/o_raddr[6]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_245_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_246_1 {{port:serv_synth_wrapper/o_raddr[5]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_246_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_247_1 {{port:serv_synth_wrapper/o_raddr[4]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_247_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_248_1 {{port:serv_synth_wrapper/o_raddr[3]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_248_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_249_1 {{port:serv_synth_wrapper/o_raddr[2]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_249_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_250_1 {{port:serv_synth_wrapper/o_raddr[1]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_250_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name ou_del_251_1 {{port:serv_synth_wrapper/o_raddr[0]}}
set_db -quiet external_delay:serv_synth_wrapper/ou_del_251_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del port:serv_synth_wrapper/i_rst
set_db -quiet external_delay:serv_synth_wrapper/in_del .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_251_1 port:serv_synth_wrapper/i_timer_irq
set_db -quiet external_delay:serv_synth_wrapper/in_del_251_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_252_1 {{port:serv_synth_wrapper/i_ibus_rdt[31]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_252_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_253_1 {{port:serv_synth_wrapper/i_ibus_rdt[30]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_253_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_254_1 {{port:serv_synth_wrapper/i_ibus_rdt[29]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_254_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_255_1 {{port:serv_synth_wrapper/i_ibus_rdt[28]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_255_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_256_1 {{port:serv_synth_wrapper/i_ibus_rdt[27]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_256_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_257_1 {{port:serv_synth_wrapper/i_ibus_rdt[26]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_257_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_258_1 {{port:serv_synth_wrapper/i_ibus_rdt[25]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_258_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_259_1 {{port:serv_synth_wrapper/i_ibus_rdt[24]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_259_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_260_1 {{port:serv_synth_wrapper/i_ibus_rdt[23]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_260_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_261_1 {{port:serv_synth_wrapper/i_ibus_rdt[22]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_261_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_262_1 {{port:serv_synth_wrapper/i_ibus_rdt[21]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_262_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_263_1 {{port:serv_synth_wrapper/i_ibus_rdt[20]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_263_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_264_1 {{port:serv_synth_wrapper/i_ibus_rdt[19]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_264_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_265_1 {{port:serv_synth_wrapper/i_ibus_rdt[18]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_265_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_266_1 {{port:serv_synth_wrapper/i_ibus_rdt[17]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_266_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_267_1 {{port:serv_synth_wrapper/i_ibus_rdt[16]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_267_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_268_1 {{port:serv_synth_wrapper/i_ibus_rdt[15]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_268_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_269_1 {{port:serv_synth_wrapper/i_ibus_rdt[14]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_269_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_270_1 {{port:serv_synth_wrapper/i_ibus_rdt[13]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_270_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_271_1 {{port:serv_synth_wrapper/i_ibus_rdt[12]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_271_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_272_1 {{port:serv_synth_wrapper/i_ibus_rdt[11]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_272_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_273_1 {{port:serv_synth_wrapper/i_ibus_rdt[10]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_273_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_274_1 {{port:serv_synth_wrapper/i_ibus_rdt[9]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_274_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_275_1 {{port:serv_synth_wrapper/i_ibus_rdt[8]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_275_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_276_1 {{port:serv_synth_wrapper/i_ibus_rdt[7]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_276_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_277_1 {{port:serv_synth_wrapper/i_ibus_rdt[6]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_277_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_278_1 {{port:serv_synth_wrapper/i_ibus_rdt[5]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_278_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_279_1 {{port:serv_synth_wrapper/i_ibus_rdt[4]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_279_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_280_1 {{port:serv_synth_wrapper/i_ibus_rdt[3]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_280_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_281_1 {{port:serv_synth_wrapper/i_ibus_rdt[2]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_281_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_282_1 {{port:serv_synth_wrapper/i_ibus_rdt[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_282_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_283_1 {{port:serv_synth_wrapper/i_ibus_rdt[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_283_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_284_1 port:serv_synth_wrapper/i_ibus_ack
set_db -quiet external_delay:serv_synth_wrapper/in_del_284_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_285_1 {{port:serv_synth_wrapper/i_dbus_rdt[31]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_285_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_286_1 {{port:serv_synth_wrapper/i_dbus_rdt[30]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_286_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_287_1 {{port:serv_synth_wrapper/i_dbus_rdt[29]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_287_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_288_1 {{port:serv_synth_wrapper/i_dbus_rdt[28]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_288_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_289_1 {{port:serv_synth_wrapper/i_dbus_rdt[27]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_289_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_290_1 {{port:serv_synth_wrapper/i_dbus_rdt[26]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_290_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_291_1 {{port:serv_synth_wrapper/i_dbus_rdt[25]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_291_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_292_1 {{port:serv_synth_wrapper/i_dbus_rdt[24]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_292_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_293_1 {{port:serv_synth_wrapper/i_dbus_rdt[23]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_293_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_294_1 {{port:serv_synth_wrapper/i_dbus_rdt[22]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_294_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_295_1 {{port:serv_synth_wrapper/i_dbus_rdt[21]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_295_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_296_1 {{port:serv_synth_wrapper/i_dbus_rdt[20]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_296_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_297_1 {{port:serv_synth_wrapper/i_dbus_rdt[19]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_297_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_298_1 {{port:serv_synth_wrapper/i_dbus_rdt[18]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_298_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_299_1 {{port:serv_synth_wrapper/i_dbus_rdt[17]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_299_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_300_1 {{port:serv_synth_wrapper/i_dbus_rdt[16]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_300_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_301_1 {{port:serv_synth_wrapper/i_dbus_rdt[15]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_301_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_302_1 {{port:serv_synth_wrapper/i_dbus_rdt[14]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_302_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_303_1 {{port:serv_synth_wrapper/i_dbus_rdt[13]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_303_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_304_1 {{port:serv_synth_wrapper/i_dbus_rdt[12]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_304_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_305_1 {{port:serv_synth_wrapper/i_dbus_rdt[11]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_305_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_306_1 {{port:serv_synth_wrapper/i_dbus_rdt[10]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_306_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_307_1 {{port:serv_synth_wrapper/i_dbus_rdt[9]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_307_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_308_1 {{port:serv_synth_wrapper/i_dbus_rdt[8]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_308_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_309_1 {{port:serv_synth_wrapper/i_dbus_rdt[7]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_309_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_310_1 {{port:serv_synth_wrapper/i_dbus_rdt[6]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_310_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_311_1 {{port:serv_synth_wrapper/i_dbus_rdt[5]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_311_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_312_1 {{port:serv_synth_wrapper/i_dbus_rdt[4]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_312_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_313_1 {{port:serv_synth_wrapper/i_dbus_rdt[3]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_313_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_314_1 {{port:serv_synth_wrapper/i_dbus_rdt[2]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_314_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_315_1 {{port:serv_synth_wrapper/i_dbus_rdt[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_315_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_316_1 {{port:serv_synth_wrapper/i_dbus_rdt[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_316_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_317_1 port:serv_synth_wrapper/i_dbus_ack
set_db -quiet external_delay:serv_synth_wrapper/in_del_317_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_318_1 {{port:serv_synth_wrapper/i_rdata[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_318_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 200.0 200.0} -clock clock:serv_synth_wrapper/CLK -name in_del_319_1 {{port:serv_synth_wrapper/i_rdata[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_319_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_320_1 port:serv_synth_wrapper/i_rst
set_db -quiet external_delay:serv_synth_wrapper/in_del_320_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_321_1 port:serv_synth_wrapper/i_timer_irq
set_db -quiet external_delay:serv_synth_wrapper/in_del_321_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_322_1 {{port:serv_synth_wrapper/i_ibus_rdt[31]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_322_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_323_1 {{port:serv_synth_wrapper/i_ibus_rdt[30]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_323_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_324_1 {{port:serv_synth_wrapper/i_ibus_rdt[29]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_324_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_325_1 {{port:serv_synth_wrapper/i_ibus_rdt[28]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_325_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_326_1 {{port:serv_synth_wrapper/i_ibus_rdt[27]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_326_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_327_1 {{port:serv_synth_wrapper/i_ibus_rdt[26]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_327_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_328_1 {{port:serv_synth_wrapper/i_ibus_rdt[25]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_328_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_329_1 {{port:serv_synth_wrapper/i_ibus_rdt[24]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_329_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_330_1 {{port:serv_synth_wrapper/i_ibus_rdt[23]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_330_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_331_1 {{port:serv_synth_wrapper/i_ibus_rdt[22]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_331_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_332_1 {{port:serv_synth_wrapper/i_ibus_rdt[21]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_332_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_333_1 {{port:serv_synth_wrapper/i_ibus_rdt[20]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_333_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_334_1 {{port:serv_synth_wrapper/i_ibus_rdt[19]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_334_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_335_1 {{port:serv_synth_wrapper/i_ibus_rdt[18]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_335_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_336_1 {{port:serv_synth_wrapper/i_ibus_rdt[17]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_336_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_337_1 {{port:serv_synth_wrapper/i_ibus_rdt[16]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_337_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_338_1 {{port:serv_synth_wrapper/i_ibus_rdt[15]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_338_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_339_1 {{port:serv_synth_wrapper/i_ibus_rdt[14]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_339_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_340_1 {{port:serv_synth_wrapper/i_ibus_rdt[13]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_340_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_341_1 {{port:serv_synth_wrapper/i_ibus_rdt[12]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_341_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_342_1 {{port:serv_synth_wrapper/i_ibus_rdt[11]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_342_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_343_1 {{port:serv_synth_wrapper/i_ibus_rdt[10]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_343_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_344_1 {{port:serv_synth_wrapper/i_ibus_rdt[9]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_344_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_345_1 {{port:serv_synth_wrapper/i_ibus_rdt[8]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_345_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_346_1 {{port:serv_synth_wrapper/i_ibus_rdt[7]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_346_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_347_1 {{port:serv_synth_wrapper/i_ibus_rdt[6]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_347_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_348_1 {{port:serv_synth_wrapper/i_ibus_rdt[5]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_348_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_349_1 {{port:serv_synth_wrapper/i_ibus_rdt[4]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_349_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_350_1 {{port:serv_synth_wrapper/i_ibus_rdt[3]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_350_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_351_1 {{port:serv_synth_wrapper/i_ibus_rdt[2]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_351_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_352_1 {{port:serv_synth_wrapper/i_ibus_rdt[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_352_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_353_1 {{port:serv_synth_wrapper/i_ibus_rdt[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_353_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_354_1 port:serv_synth_wrapper/i_ibus_ack
set_db -quiet external_delay:serv_synth_wrapper/in_del_354_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_355_1 {{port:serv_synth_wrapper/i_dbus_rdt[31]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_355_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_356_1 {{port:serv_synth_wrapper/i_dbus_rdt[30]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_356_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_357_1 {{port:serv_synth_wrapper/i_dbus_rdt[29]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_357_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_358_1 {{port:serv_synth_wrapper/i_dbus_rdt[28]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_358_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_359_1 {{port:serv_synth_wrapper/i_dbus_rdt[27]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_359_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_360_1 {{port:serv_synth_wrapper/i_dbus_rdt[26]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_360_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_361_1 {{port:serv_synth_wrapper/i_dbus_rdt[25]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_361_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_362_1 {{port:serv_synth_wrapper/i_dbus_rdt[24]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_362_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_363_1 {{port:serv_synth_wrapper/i_dbus_rdt[23]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_363_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_364_1 {{port:serv_synth_wrapper/i_dbus_rdt[22]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_364_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_365_1 {{port:serv_synth_wrapper/i_dbus_rdt[21]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_365_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_366_1 {{port:serv_synth_wrapper/i_dbus_rdt[20]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_366_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_367_1 {{port:serv_synth_wrapper/i_dbus_rdt[19]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_367_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_368_1 {{port:serv_synth_wrapper/i_dbus_rdt[18]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_368_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_369_1 {{port:serv_synth_wrapper/i_dbus_rdt[17]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_369_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_370_1 {{port:serv_synth_wrapper/i_dbus_rdt[16]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_370_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_371_1 {{port:serv_synth_wrapper/i_dbus_rdt[15]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_371_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_372_1 {{port:serv_synth_wrapper/i_dbus_rdt[14]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_372_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_373_1 {{port:serv_synth_wrapper/i_dbus_rdt[13]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_373_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_374_1 {{port:serv_synth_wrapper/i_dbus_rdt[12]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_374_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_375_1 {{port:serv_synth_wrapper/i_dbus_rdt[11]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_375_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_376_1 {{port:serv_synth_wrapper/i_dbus_rdt[10]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_376_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_377_1 {{port:serv_synth_wrapper/i_dbus_rdt[9]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_377_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_378_1 {{port:serv_synth_wrapper/i_dbus_rdt[8]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_378_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_379_1 {{port:serv_synth_wrapper/i_dbus_rdt[7]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_379_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_380_1 {{port:serv_synth_wrapper/i_dbus_rdt[6]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_380_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_381_1 {{port:serv_synth_wrapper/i_dbus_rdt[5]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_381_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_382_1 {{port:serv_synth_wrapper/i_dbus_rdt[4]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_382_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_383_1 {{port:serv_synth_wrapper/i_dbus_rdt[3]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_383_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_384_1 {{port:serv_synth_wrapper/i_dbus_rdt[2]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_384_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_385_1 {{port:serv_synth_wrapper/i_dbus_rdt[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_385_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_386_1 {{port:serv_synth_wrapper/i_dbus_rdt[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_386_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_387_1 port:serv_synth_wrapper/i_dbus_ack
set_db -quiet external_delay:serv_synth_wrapper/in_del_387_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_388_1 {{port:serv_synth_wrapper/i_rdata[1]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_388_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:serv_synth_wrapper/CLK -name in_del_389_1 {{port:serv_synth_wrapper/i_rdata[0]}}
set_db -quiet external_delay:serv_synth_wrapper/in_del_389_1 .clock_network_latency_included true
path_group -paths [specify_paths -lenient -to clock:serv_synth_wrapper/CLK]  -name CLK -group cost_group:serv_synth_wrapper/CLK -user_priority -1047552
path_disable -paths [specify_paths -lenient -from port:serv_synth_wrapper/i_rst]  -name dis_1 -user_priority -770048
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:serv_synth_wrapper .seq_reason_deleted_internal {{cpu/decode/imm25 unloaded cpu/decode/imm25} {rf_ram_if/rgate_reg unloaded rf_ram_if/rgate}}
set_db -quiet design:serv_synth_wrapper .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 1936889} {cell_count 1033} {utilization  0.00} {runtime 4 14 4 14} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 1944967} {cell_count 1117} {utilization  0.00} {runtime 2 17 3 18} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 1939374} {cell_count 1109} {utilization  0.00} {runtime 2 20 2 21} }{reify {wns 967911} {tns 0} {vep 0} {area 1474880} {cell_count 1078} {utilization  0.00} {runtime 2 22 4 25} }{global_incr_map {wns 968162} {tns 0} {vep 0} {area 1471840} {cell_count 1078} {utilization  0.00} {runtime 1 23 1 26} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 1525600} {cell_count 1149} {utilization  0.00} {runtime 2 27 3 31} }}
set_db -quiet design:serv_synth_wrapper .seq_mbci_coverage 0.0
set_db -quiet design:serv_synth_wrapper .hdl_user_name serv_synth_wrapper
set_db -quiet design:serv_synth_wrapper .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_bufreg.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_ctrl.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_decode.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_mem_if.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_alu.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_bufreg2.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_csr.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_immdec.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_rf_if.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_rf_ram_if.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_state.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_top.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}} {default -v2001 {SYNTHESIS} {/home/christopher/Bit-Serial-RISC-V/source/serv/serv_synth_wrapper.v} {/home/christopher/Bit-Serial-RISC-V/syn/soi/../../source/serv/} {}}}
set_db -quiet design:serv_synth_wrapper .seq_reason_deleted {{cpu/decode/imm25 unloaded} {rf_ram_if/rgate_reg unloaded}}
set_db -quiet design:serv_synth_wrapper .verification_directory fv/serv_synth_wrapper
set_db -quiet design:serv_synth_wrapper .lp_clock_gating_max_flops inf
set_db -quiet port:serv_synth_wrapper/clk .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/clk .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/clk .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/clk .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/clk .original_name clk
set_db -quiet port:serv_synth_wrapper/i_rst .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_rst .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_rst .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_rst .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_rst .original_name i_rst
set_db -quiet port:serv_synth_wrapper/i_timer_irq .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_timer_irq .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_timer_irq .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_timer_irq .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_timer_irq .original_name i_timer_irq
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[31]} .original_name {i_ibus_rdt[31]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[30]} .original_name {i_ibus_rdt[30]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[29]} .original_name {i_ibus_rdt[29]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[28]} .original_name {i_ibus_rdt[28]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[27]} .original_name {i_ibus_rdt[27]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[26]} .original_name {i_ibus_rdt[26]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[25]} .original_name {i_ibus_rdt[25]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[24]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[24]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[24]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[24]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[24]} .original_name {i_ibus_rdt[24]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[23]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[23]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[23]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[23]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[23]} .original_name {i_ibus_rdt[23]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[22]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[22]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[22]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[22]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[22]} .original_name {i_ibus_rdt[22]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[21]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[21]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[21]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[21]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[21]} .original_name {i_ibus_rdt[21]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[20]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[20]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[20]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[20]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[20]} .original_name {i_ibus_rdt[20]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[19]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[19]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[19]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[19]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[19]} .original_name {i_ibus_rdt[19]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[18]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[18]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[18]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[18]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[18]} .original_name {i_ibus_rdt[18]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[17]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[17]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[17]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[17]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[17]} .original_name {i_ibus_rdt[17]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[16]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[16]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[16]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[16]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[16]} .original_name {i_ibus_rdt[16]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[15]} .original_name {i_ibus_rdt[15]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[14]} .original_name {i_ibus_rdt[14]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[13]} .original_name {i_ibus_rdt[13]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[12]} .original_name {i_ibus_rdt[12]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[11]} .original_name {i_ibus_rdt[11]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[10]} .original_name {i_ibus_rdt[10]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[9]} .original_name {i_ibus_rdt[9]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[8]} .original_name {i_ibus_rdt[8]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[7]} .original_name {i_ibus_rdt[7]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[6]} .original_name {i_ibus_rdt[6]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[5]} .original_name {i_ibus_rdt[5]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[4]} .original_name {i_ibus_rdt[4]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[3]} .original_name {i_ibus_rdt[3]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[2]} .original_name {i_ibus_rdt[2]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[1]} .original_name {i_ibus_rdt[1]}
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_ibus_rdt[0]} .original_name {i_ibus_rdt[0]}
set_db -quiet port:serv_synth_wrapper/i_ibus_ack .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_ibus_ack .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_ibus_ack .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_ibus_ack .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_ibus_ack .original_name i_ibus_ack
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[31]} .original_name {i_dbus_rdt[31]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[30]} .original_name {i_dbus_rdt[30]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[29]} .original_name {i_dbus_rdt[29]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[28]} .original_name {i_dbus_rdt[28]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[27]} .original_name {i_dbus_rdt[27]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[26]} .original_name {i_dbus_rdt[26]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[25]} .original_name {i_dbus_rdt[25]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[24]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[24]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[24]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[24]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[24]} .original_name {i_dbus_rdt[24]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[23]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[23]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[23]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[23]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[23]} .original_name {i_dbus_rdt[23]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[22]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[22]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[22]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[22]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[22]} .original_name {i_dbus_rdt[22]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[21]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[21]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[21]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[21]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[21]} .original_name {i_dbus_rdt[21]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[20]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[20]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[20]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[20]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[20]} .original_name {i_dbus_rdt[20]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[19]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[19]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[19]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[19]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[19]} .original_name {i_dbus_rdt[19]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[18]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[18]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[18]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[18]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[18]} .original_name {i_dbus_rdt[18]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[17]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[17]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[17]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[17]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[17]} .original_name {i_dbus_rdt[17]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[16]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[16]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[16]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[16]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[16]} .original_name {i_dbus_rdt[16]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[15]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[15]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[15]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[15]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[15]} .original_name {i_dbus_rdt[15]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[14]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[14]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[14]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[14]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[14]} .original_name {i_dbus_rdt[14]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[13]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[13]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[13]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[13]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[13]} .original_name {i_dbus_rdt[13]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[12]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[12]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[12]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[12]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[12]} .original_name {i_dbus_rdt[12]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[11]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[11]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[11]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[11]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[11]} .original_name {i_dbus_rdt[11]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[10]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[10]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[10]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[10]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[10]} .original_name {i_dbus_rdt[10]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[9]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[9]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[9]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[9]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[9]} .original_name {i_dbus_rdt[9]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[8]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[8]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[8]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[8]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[8]} .original_name {i_dbus_rdt[8]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[7]} .original_name {i_dbus_rdt[7]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[6]} .original_name {i_dbus_rdt[6]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[5]} .original_name {i_dbus_rdt[5]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[4]} .original_name {i_dbus_rdt[4]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[3]} .original_name {i_dbus_rdt[3]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[2]} .original_name {i_dbus_rdt[2]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[1]} .original_name {i_dbus_rdt[1]}
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_dbus_rdt[0]} .original_name {i_dbus_rdt[0]}
set_db -quiet port:serv_synth_wrapper/i_dbus_ack .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_dbus_ack .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_dbus_ack .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_dbus_ack .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet port:serv_synth_wrapper/i_dbus_ack .original_name i_dbus_ack
set_db -quiet {port:serv_synth_wrapper/i_rdata[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[1]} .original_name {i_rdata[1]}
set_db -quiet {port:serv_synth_wrapper/i_rdata[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/KISTA_SOI_STDLIB2_CCS_TT/BUFX2/Y
set_db -quiet {port:serv_synth_wrapper/i_rdata[0]} .original_name {i_rdata[0]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[31]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[31]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[31]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[31]} .original_name {o_ibus_adr[31]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[31]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[30]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[30]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[30]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[30]} .original_name {o_ibus_adr[30]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[30]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[29]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[29]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[29]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[29]} .original_name {o_ibus_adr[29]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[29]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[28]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[28]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[28]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[28]} .original_name {o_ibus_adr[28]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[28]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[27]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[27]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[27]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[27]} .original_name {o_ibus_adr[27]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[27]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[26]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[26]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[26]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[26]} .original_name {o_ibus_adr[26]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[26]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[25]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[25]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[25]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[25]} .original_name {o_ibus_adr[25]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[25]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[24]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[24]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[24]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[24]} .original_name {o_ibus_adr[24]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[24]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[23]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[23]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[23]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[23]} .original_name {o_ibus_adr[23]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[23]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[22]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[22]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[22]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[22]} .original_name {o_ibus_adr[22]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[22]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[21]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[21]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[21]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[21]} .original_name {o_ibus_adr[21]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[21]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[20]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[20]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[20]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[20]} .original_name {o_ibus_adr[20]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[20]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[19]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[19]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[19]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[19]} .original_name {o_ibus_adr[19]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[19]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[18]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[18]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[18]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[18]} .original_name {o_ibus_adr[18]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[18]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[17]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[17]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[17]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[17]} .original_name {o_ibus_adr[17]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[17]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[16]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[16]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[16]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[16]} .original_name {o_ibus_adr[16]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[16]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[15]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[15]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[15]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[15]} .original_name {o_ibus_adr[15]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[15]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[14]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[14]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[14]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[14]} .original_name {o_ibus_adr[14]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[14]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[13]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[13]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[13]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[13]} .original_name {o_ibus_adr[13]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[13]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[12]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[12]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[12]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[12]} .original_name {o_ibus_adr[12]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[12]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[11]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[11]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[11]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[11]} .original_name {o_ibus_adr[11]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[11]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[10]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[10]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[10]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[10]} .original_name {o_ibus_adr[10]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[10]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[9]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[9]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[9]} .original_name {o_ibus_adr[9]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[9]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[8]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[8]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[8]} .original_name {o_ibus_adr[8]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[8]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[7]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[7]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[7]} .original_name {o_ibus_adr[7]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[7]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[6]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[6]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[6]} .original_name {o_ibus_adr[6]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[6]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[5]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[5]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[5]} .original_name {o_ibus_adr[5]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[5]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[4]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[4]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[4]} .original_name {o_ibus_adr[4]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[4]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[3]} .original_name {o_ibus_adr[3]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[2]} .original_name {o_ibus_adr[2]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[1]} .original_name {o_ibus_adr[1]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[0]} .original_name {o_ibus_adr[0]}
set_db -quiet {port:serv_synth_wrapper/o_ibus_adr[0]} .external_pin_cap {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_ibus_cyc .external_pin_cap_min 10.0
set_db -quiet port:serv_synth_wrapper/o_ibus_cyc .external_capacitance_max {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_ibus_cyc .external_capacitance_min 10.0
set_db -quiet port:serv_synth_wrapper/o_ibus_cyc .original_name o_ibus_cyc
set_db -quiet port:serv_synth_wrapper/o_ibus_cyc .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[31]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[31]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[31]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[31]} .original_name {o_dbus_adr[31]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[31]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[30]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[30]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[30]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[30]} .original_name {o_dbus_adr[30]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[30]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[29]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[29]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[29]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[29]} .original_name {o_dbus_adr[29]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[29]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[28]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[28]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[28]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[28]} .original_name {o_dbus_adr[28]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[28]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[27]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[27]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[27]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[27]} .original_name {o_dbus_adr[27]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[27]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[26]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[26]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[26]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[26]} .original_name {o_dbus_adr[26]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[26]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[25]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[25]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[25]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[25]} .original_name {o_dbus_adr[25]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[25]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[24]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[24]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[24]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[24]} .original_name {o_dbus_adr[24]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[24]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[23]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[23]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[23]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[23]} .original_name {o_dbus_adr[23]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[23]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[22]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[22]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[22]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[22]} .original_name {o_dbus_adr[22]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[22]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[21]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[21]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[21]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[21]} .original_name {o_dbus_adr[21]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[21]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[20]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[20]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[20]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[20]} .original_name {o_dbus_adr[20]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[20]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[19]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[19]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[19]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[19]} .original_name {o_dbus_adr[19]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[19]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[18]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[18]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[18]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[18]} .original_name {o_dbus_adr[18]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[18]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[17]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[17]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[17]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[17]} .original_name {o_dbus_adr[17]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[17]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[16]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[16]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[16]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[16]} .original_name {o_dbus_adr[16]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[16]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[15]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[15]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[15]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[15]} .original_name {o_dbus_adr[15]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[15]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[14]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[14]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[14]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[14]} .original_name {o_dbus_adr[14]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[14]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[13]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[13]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[13]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[13]} .original_name {o_dbus_adr[13]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[13]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[12]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[12]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[12]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[12]} .original_name {o_dbus_adr[12]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[12]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[11]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[11]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[11]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[11]} .original_name {o_dbus_adr[11]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[11]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[10]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[10]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[10]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[10]} .original_name {o_dbus_adr[10]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[10]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[9]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[9]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[9]} .original_name {o_dbus_adr[9]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[9]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[8]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[8]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[8]} .original_name {o_dbus_adr[8]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[8]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[7]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[7]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[7]} .original_name {o_dbus_adr[7]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[7]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[6]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[6]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[6]} .original_name {o_dbus_adr[6]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[6]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[5]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[5]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[5]} .original_name {o_dbus_adr[5]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[5]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[4]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[4]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[4]} .original_name {o_dbus_adr[4]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[4]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[3]} .original_name {o_dbus_adr[3]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[2]} .original_name {o_dbus_adr[2]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[1]} .original_name {o_dbus_adr[1]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[0]} .original_name {o_dbus_adr[0]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_adr[0]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[31]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[31]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[31]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[31]} .original_name {o_dbus_dat[31]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[31]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[30]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[30]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[30]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[30]} .original_name {o_dbus_dat[30]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[30]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[29]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[29]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[29]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[29]} .original_name {o_dbus_dat[29]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[29]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[28]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[28]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[28]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[28]} .original_name {o_dbus_dat[28]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[28]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[27]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[27]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[27]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[27]} .original_name {o_dbus_dat[27]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[27]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[26]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[26]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[26]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[26]} .original_name {o_dbus_dat[26]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[26]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[25]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[25]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[25]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[25]} .original_name {o_dbus_dat[25]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[25]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[24]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[24]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[24]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[24]} .original_name {o_dbus_dat[24]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[24]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[23]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[23]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[23]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[23]} .original_name {o_dbus_dat[23]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[23]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[22]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[22]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[22]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[22]} .original_name {o_dbus_dat[22]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[22]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[21]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[21]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[21]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[21]} .original_name {o_dbus_dat[21]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[21]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[20]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[20]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[20]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[20]} .original_name {o_dbus_dat[20]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[20]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[19]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[19]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[19]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[19]} .original_name {o_dbus_dat[19]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[19]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[18]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[18]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[18]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[18]} .original_name {o_dbus_dat[18]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[18]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[17]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[17]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[17]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[17]} .original_name {o_dbus_dat[17]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[17]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[16]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[16]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[16]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[16]} .original_name {o_dbus_dat[16]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[16]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[15]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[15]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[15]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[15]} .original_name {o_dbus_dat[15]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[15]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[14]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[14]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[14]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[14]} .original_name {o_dbus_dat[14]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[14]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[13]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[13]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[13]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[13]} .original_name {o_dbus_dat[13]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[13]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[12]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[12]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[12]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[12]} .original_name {o_dbus_dat[12]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[12]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[11]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[11]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[11]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[11]} .original_name {o_dbus_dat[11]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[11]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[10]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[10]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[10]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[10]} .original_name {o_dbus_dat[10]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[10]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[9]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[9]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[9]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[9]} .original_name {o_dbus_dat[9]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[9]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[8]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[8]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[8]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[8]} .original_name {o_dbus_dat[8]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[8]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[7]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[7]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[7]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[7]} .original_name {o_dbus_dat[7]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[7]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[6]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[6]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[6]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[6]} .original_name {o_dbus_dat[6]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[6]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[5]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[5]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[5]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[5]} .original_name {o_dbus_dat[5]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[5]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[4]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[4]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[4]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[4]} .original_name {o_dbus_dat[4]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[4]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[3]} .original_name {o_dbus_dat[3]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[2]} .original_name {o_dbus_dat[2]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[1]} .original_name {o_dbus_dat[1]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[0]} .original_name {o_dbus_dat[0]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_dat[0]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[3]} .original_name {o_dbus_sel[3]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[2]} .original_name {o_dbus_sel[2]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[1]} .original_name {o_dbus_sel[1]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[0]} .original_name {o_dbus_sel[0]}
set_db -quiet {port:serv_synth_wrapper/o_dbus_sel[0]} .external_pin_cap {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_dbus_we .external_pin_cap_min 10.0
set_db -quiet port:serv_synth_wrapper/o_dbus_we .external_capacitance_max {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_dbus_we .external_capacitance_min 10.0
set_db -quiet port:serv_synth_wrapper/o_dbus_we .original_name o_dbus_we
set_db -quiet port:serv_synth_wrapper/o_dbus_we .external_pin_cap {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_dbus_cyc .external_pin_cap_min 10.0
set_db -quiet port:serv_synth_wrapper/o_dbus_cyc .external_capacitance_max {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_dbus_cyc .external_capacitance_min 10.0
set_db -quiet port:serv_synth_wrapper/o_dbus_cyc .original_name o_dbus_cyc
set_db -quiet port:serv_synth_wrapper/o_dbus_cyc .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[9]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[9]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[9]} .original_name {o_waddr[9]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[9]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[8]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[8]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[8]} .original_name {o_waddr[8]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[8]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[7]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[7]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[7]} .original_name {o_waddr[7]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[7]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[6]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[6]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[6]} .original_name {o_waddr[6]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[6]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[5]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[5]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[5]} .original_name {o_waddr[5]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[5]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[4]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[4]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[4]} .original_name {o_waddr[4]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[4]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[3]} .original_name {o_waddr[3]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[2]} .original_name {o_waddr[2]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[1]} .original_name {o_waddr[1]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_waddr[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_waddr[0]} .original_name {o_waddr[0]}
set_db -quiet {port:serv_synth_wrapper/o_waddr[0]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_wdata[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_wdata[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_wdata[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_wdata[1]} .original_name {o_wdata[1]}
set_db -quiet {port:serv_synth_wrapper/o_wdata[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_wdata[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_wdata[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_wdata[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_wdata[0]} .original_name {o_wdata[0]}
set_db -quiet {port:serv_synth_wrapper/o_wdata[0]} .external_pin_cap {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_wen .external_pin_cap_min 10.0
set_db -quiet port:serv_synth_wrapper/o_wen .external_capacitance_max {100.0 100.0}
set_db -quiet port:serv_synth_wrapper/o_wen .external_capacitance_min 10.0
set_db -quiet port:serv_synth_wrapper/o_wen .original_name o_wen
set_db -quiet port:serv_synth_wrapper/o_wen .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[9]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[9]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[9]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[9]} .original_name {o_raddr[9]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[9]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[8]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[8]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[8]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[8]} .original_name {o_raddr[8]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[8]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[7]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[7]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[7]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[7]} .original_name {o_raddr[7]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[7]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[6]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[6]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[6]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[6]} .original_name {o_raddr[6]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[6]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[5]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[5]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[5]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[5]} .original_name {o_raddr[5]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[5]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[4]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[4]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[4]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[4]} .original_name {o_raddr[4]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[4]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[3]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[3]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[3]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[3]} .original_name {o_raddr[3]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[3]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[2]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[2]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[2]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[2]} .original_name {o_raddr[2]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[2]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[1]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[1]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[1]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[1]} .original_name {o_raddr[1]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[1]} .external_pin_cap {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[0]} .external_pin_cap_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[0]} .external_capacitance_max {100.0 100.0}
set_db -quiet {port:serv_synth_wrapper/o_raddr[0]} .external_capacitance_min 10.0
set_db -quiet {port:serv_synth_wrapper/o_raddr[0]} .original_name {o_raddr[0]}
set_db -quiet {port:serv_synth_wrapper/o_raddr[0]} .external_pin_cap {100.0 100.0}
set_db -quiet inst:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg .original_name cpu/state/gen_csr.misalign_trap_sync_r
set_db -quiet inst:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg .single_bit_orig_name cpu/state/gen_csr.misalign_trap_sync_r
set_db -quiet inst:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg/Q .original_name cpu/state/gen_csr.misalign_trap_sync_r/q
set_db -quiet pin:serv_synth_wrapper/cpu_state_gen_csr.misalign_trap_sync_r_reg/QN .original_name cpu/state/gen_csr.misalign_trap_sync_r/q
set_db -quiet inst:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg .original_name cpu/state/o_ctrl_jump
set_db -quiet inst:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg .single_bit_orig_name cpu/state/o_ctrl_jump
set_db -quiet inst:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg/Q .original_name cpu/state/o_ctrl_jump/q
set_db -quiet pin:serv_synth_wrapper/cpu_state_o_ctrl_jump_reg/QN .original_name cpu/state/o_ctrl_jump/q
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]} .original_name {{rf_ram_if/wdata0_r[0]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]} .single_bit_orig_name {rf_ram_if/wdata0_r[0]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]/Q} .original_name {rf_ram_if/wdata0_r[0]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[0]/QN} .original_name {rf_ram_if/wdata0_r[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]} .original_name {{cpu/ctrl/o_ibus_adr[31]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[31]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]/Q} .original_name {cpu/ctrl/o_ibus_adr[31]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[31]/QN} .original_name {cpu/ctrl/o_ibus_adr[31]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]} .original_name {{rf_ram_if/wdata0_r[1]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]} .single_bit_orig_name {rf_ram_if/wdata0_r[1]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]/Q} .original_name {rf_ram_if/wdata0_r[1]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata0_r_reg[1]/QN} .original_name {rf_ram_if/wdata0_r[1]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_alu_cmp_r_reg .original_name cpu/alu/cmp_r
set_db -quiet inst:serv_synth_wrapper/cpu_alu_cmp_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_alu_cmp_r_reg .single_bit_orig_name cpu/alu/cmp_r
set_db -quiet inst:serv_synth_wrapper/cpu_alu_cmp_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_alu_cmp_r_reg/Q .original_name cpu/alu/cmp_r/q
set_db -quiet pin:serv_synth_wrapper/cpu_alu_cmp_r_reg/QN .original_name cpu/alu/cmp_r/q
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]} .original_name {{rf_ram_if/rcnt[1]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]} .single_bit_orig_name {rf_ram_if/rcnt[1]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]/Q} .original_name {rf_ram_if/rcnt[1]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[1]/QN} .original_name {rf_ram_if/rcnt[1]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]} .original_name {{rf_ram_if/rcnt[4]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]} .single_bit_orig_name {rf_ram_if/rcnt[4]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]/Q} .original_name {rf_ram_if/rcnt[4]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[4]/QN} .original_name {rf_ram_if/rcnt[4]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]} .original_name {{rf_ram_if/rcnt[2]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]} .single_bit_orig_name {rf_ram_if/rcnt[2]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]/Q} .original_name {rf_ram_if/rcnt[2]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[2]/QN} .original_name {rf_ram_if/rcnt[2]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]} .original_name {{rf_ram_if/rcnt[3]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]} .single_bit_orig_name {rf_ram_if/rcnt[3]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]/Q} .original_name {rf_ram_if/rcnt[3]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[3]/QN} .original_name {rf_ram_if/rcnt[3]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]} .original_name {{rf_ram_if/rcnt[0]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]} .single_bit_orig_name {rf_ram_if/rcnt[0]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]/Q} .original_name {rf_ram_if/rcnt[0]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rcnt_reg[0]/QN} .original_name {rf_ram_if/rcnt[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]} .original_name {{cpu/state/gen_cnt_w_eq_1.cnt_lsb[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]} .single_bit_orig_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]/Q} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[0]/QN} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[1]} .original_name {{cpu/bufreg/data[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[1]} .single_bit_orig_name {cpu/bufreg/data[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[1]/Q} .original_name {cpu/bufreg/data[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[1]/QN} .original_name {cpu/bufreg/data[1]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg .original_name cpu/ctrl/pc_plus_offset_cy_r
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg .single_bit_orig_name cpu/ctrl/pc_plus_offset_cy_r
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg/Q .original_name cpu/ctrl/pc_plus_offset_cy_r/q
set_db -quiet pin:serv_synth_wrapper/cpu_ctrl_pc_plus_offset_cy_r_reg/QN .original_name cpu/ctrl/pc_plus_offset_cy_r/q
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[0]} .original_name {{cpu/bufreg/data[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[0]} .single_bit_orig_name {cpu/bufreg/data[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[0]/Q} .original_name {cpu/bufreg/data[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[0]/QN} .original_name {cpu/bufreg/data[0]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]} .original_name {{rf_ram_if/wdata1_r[0]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]} .single_bit_orig_name {rf_ram_if/wdata1_r[0]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]/Q} .original_name {rf_ram_if/wdata1_r[0]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[0]/QN} .original_name {rf_ram_if/wdata1_r[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]} .original_name {{cpu/gen_csr.csr/mcause3_0[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]} .single_bit_orig_name {cpu/gen_csr.csr/mcause3_0[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]/Q} .original_name {cpu/gen_csr.csr/mcause3_0[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[3]/QN} .original_name {cpu/gen_csr.csr/mcause3_0[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]} .original_name {{cpu/alu/add_cy_r[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]} .single_bit_orig_name {cpu/alu/add_cy_r[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]/Q} .original_name {cpu/alu/add_cy_r[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_alu_add_cy_r_reg[0]/QN} .original_name {cpu/alu/add_cy_r[0]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg .original_name cpu/gen_csr.csr/mstatus_mie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg .single_bit_orig_name cpu/gen_csr.csr/mstatus_mie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg/Q .original_name cpu/gen_csr.csr/mstatus_mie/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mie_reg/QN .original_name cpu/gen_csr.csr/mstatus_mie/q
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]} .original_name {{rf_ram_if/wdata1_r[1]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]} .single_bit_orig_name {rf_ram_if/wdata1_r[1]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]/Q} .original_name {rf_ram_if/wdata1_r[1]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[1]/QN} .original_name {rf_ram_if/wdata1_r[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[31]} .original_name {{cpu/bufreg/data[31]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[31]} .single_bit_orig_name {cpu/bufreg/data[31]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[31]/Q} .original_name {cpu/bufreg/data[31]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[31]/QN} .original_name {cpu/bufreg/data[31]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg .original_name cpu/gen_csr.csr/mcause31
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg .single_bit_orig_name cpu/gen_csr.csr/mcause31
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg/Q .original_name cpu/gen_csr.csr/mcause31/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause31_reg/QN .original_name cpu/gen_csr.csr/mcause31/q
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[6]} .original_name {{cpu/bufreg/data[6]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[6]} .single_bit_orig_name {cpu/bufreg/data[6]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[6]/Q} .original_name {cpu/bufreg/data[6]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[6]/QN} .original_name {cpu/bufreg/data[6]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[19]} .original_name {{cpu/bufreg/data[19]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[19]} .single_bit_orig_name {cpu/bufreg/data[19]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[19]/Q} .original_name {cpu/bufreg/data[19]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[19]/QN} .original_name {cpu/bufreg/data[19]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[2]} .original_name {{cpu/bufreg/data[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[2]} .single_bit_orig_name {cpu/bufreg/data[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[2]/Q} .original_name {cpu/bufreg/data[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[2]/QN} .original_name {cpu/bufreg/data[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[4]} .original_name {{cpu/bufreg/data[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[4]} .single_bit_orig_name {cpu/bufreg/data[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[4]/Q} .original_name {cpu/bufreg/data[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[4]/QN} .original_name {cpu/bufreg/data[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[3]} .original_name {{cpu/bufreg/data[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[3]} .single_bit_orig_name {cpu/bufreg/data[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[3]/Q} .original_name {cpu/bufreg/data[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[3]/QN} .original_name {cpu/bufreg/data[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[18]} .original_name {{cpu/bufreg/data[18]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[18]} .single_bit_orig_name {cpu/bufreg/data[18]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[18]/Q} .original_name {cpu/bufreg/data[18]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[18]/QN} .original_name {cpu/bufreg/data[18]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[5]} .original_name {{cpu/bufreg/data[5]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[5]} .single_bit_orig_name {cpu/bufreg/data[5]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[5]/Q} .original_name {cpu/bufreg/data[5]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[5]/QN} .original_name {cpu/bufreg/data[5]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[7]} .original_name {{cpu/bufreg/data[7]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[7]} .single_bit_orig_name {cpu/bufreg/data[7]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[7]/Q} .original_name {cpu/bufreg/data[7]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[7]/QN} .original_name {cpu/bufreg/data[7]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[8]} .original_name {{cpu/bufreg/data[8]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[8]} .single_bit_orig_name {cpu/bufreg/data[8]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[8]/Q} .original_name {cpu/bufreg/data[8]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[8]/QN} .original_name {cpu/bufreg/data[8]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[9]} .original_name {{cpu/bufreg/data[9]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[9]} .single_bit_orig_name {cpu/bufreg/data[9]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[9]/Q} .original_name {cpu/bufreg/data[9]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[9]/QN} .original_name {cpu/bufreg/data[9]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[20]} .original_name {{cpu/bufreg/data[20]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[20]} .single_bit_orig_name {cpu/bufreg/data[20]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[20]/Q} .original_name {cpu/bufreg/data[20]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[20]/QN} .original_name {cpu/bufreg/data[20]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[12]} .original_name {{cpu/bufreg/data[12]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[12]} .single_bit_orig_name {cpu/bufreg/data[12]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[12]/Q} .original_name {cpu/bufreg/data[12]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[12]/QN} .original_name {cpu/bufreg/data[12]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[11]} .original_name {{cpu/bufreg/data[11]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[11]} .single_bit_orig_name {cpu/bufreg/data[11]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[11]/Q} .original_name {cpu/bufreg/data[11]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[11]/QN} .original_name {cpu/bufreg/data[11]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[13]} .original_name {{cpu/bufreg/data[13]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[13]} .single_bit_orig_name {cpu/bufreg/data[13]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[13]/Q} .original_name {cpu/bufreg/data[13]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[13]/QN} .original_name {cpu/bufreg/data[13]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[14]} .original_name {{cpu/bufreg/data[14]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[14]} .single_bit_orig_name {cpu/bufreg/data[14]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[14]/Q} .original_name {cpu/bufreg/data[14]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[14]/QN} .original_name {cpu/bufreg/data[14]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[15]} .original_name {{cpu/bufreg/data[15]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[15]} .single_bit_orig_name {cpu/bufreg/data[15]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[15]/Q} .original_name {cpu/bufreg/data[15]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[15]/QN} .original_name {cpu/bufreg/data[15]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[16]} .original_name {{cpu/bufreg/data[16]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[16]} .single_bit_orig_name {cpu/bufreg/data[16]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[16]/Q} .original_name {cpu/bufreg/data[16]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[16]/QN} .original_name {cpu/bufreg/data[16]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[17]} .original_name {{cpu/bufreg/data[17]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[17]} .single_bit_orig_name {cpu/bufreg/data[17]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[17]/Q} .original_name {cpu/bufreg/data[17]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[17]/QN} .original_name {cpu/bufreg/data[17]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[27]} .original_name {{cpu/bufreg/data[27]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[27]} .single_bit_orig_name {cpu/bufreg/data[27]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[27]/Q} .original_name {cpu/bufreg/data[27]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[27]/QN} .original_name {cpu/bufreg/data[27]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[10]} .original_name {{cpu/bufreg/data[10]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[10]} .single_bit_orig_name {cpu/bufreg/data[10]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[10]/Q} .original_name {cpu/bufreg/data[10]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[10]/QN} .original_name {cpu/bufreg/data[10]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[26]} .original_name {{cpu/bufreg/data[26]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[26]} .single_bit_orig_name {cpu/bufreg/data[26]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[26]/Q} .original_name {cpu/bufreg/data[26]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[26]/QN} .original_name {cpu/bufreg/data[26]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[30]} .original_name {{cpu/bufreg/data[30]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[30]} .single_bit_orig_name {cpu/bufreg/data[30]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[30]/Q} .original_name {cpu/bufreg/data[30]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[30]/QN} .original_name {cpu/bufreg/data[30]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[28]} .original_name {{cpu/bufreg/data[28]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[28]} .single_bit_orig_name {cpu/bufreg/data[28]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[28]/Q} .original_name {cpu/bufreg/data[28]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[28]/QN} .original_name {cpu/bufreg/data[28]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[29]} .original_name {{cpu/bufreg/data[29]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[29]} .single_bit_orig_name {cpu/bufreg/data[29]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[29]/Q} .original_name {cpu/bufreg/data[29]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[29]/QN} .original_name {cpu/bufreg/data[29]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[21]} .original_name {{cpu/bufreg/data[21]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[21]} .single_bit_orig_name {cpu/bufreg/data[21]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[21]/Q} .original_name {cpu/bufreg/data[21]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[21]/QN} .original_name {cpu/bufreg/data[21]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[22]} .original_name {{cpu/bufreg/data[22]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[22]} .single_bit_orig_name {cpu/bufreg/data[22]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[22]/Q} .original_name {cpu/bufreg/data[22]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[22]/QN} .original_name {cpu/bufreg/data[22]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[24]} .original_name {{cpu/bufreg/data[24]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[24]} .single_bit_orig_name {cpu/bufreg/data[24]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[24]/Q} .original_name {cpu/bufreg/data[24]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[24]/QN} .original_name {cpu/bufreg/data[24]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[23]} .original_name {{cpu/bufreg/data[23]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[23]} .single_bit_orig_name {cpu/bufreg/data[23]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[23]/Q} .original_name {cpu/bufreg/data[23]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[23]/QN} .original_name {cpu/bufreg/data[23]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[25]} .original_name {{cpu/bufreg/data[25]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[25]} .single_bit_orig_name {cpu/bufreg/data[25]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_data_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[25]/Q} .original_name {cpu/bufreg/data[25]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_data_reg[25]/QN} .original_name {cpu/bufreg/data[25]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]} .original_name {{rf_ram_if/wdata1_r[2]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]} .single_bit_orig_name {rf_ram_if/wdata1_r[2]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]/Q} .original_name {rf_ram_if/wdata1_r[2]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_wdata1_r_reg[2]/QN} .original_name {rf_ram_if/wdata1_r[2]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg .original_name cpu/gen_csr.csr/mie_mtie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg .single_bit_orig_name cpu/gen_csr.csr/mie_mtie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg/Q .original_name cpu/gen_csr.csr/mie_mtie/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mie_mtie_reg/QN .original_name cpu/gen_csr.csr/mie_mtie/q
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]} .original_name {{cpu/bufreg/c_r[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]} .single_bit_orig_name {cpu/bufreg/c_r[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]/Q} .original_name {cpu/bufreg/c_r[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg_c_r_reg[0]/QN} .original_name {cpu/bufreg/c_r[0]/q}
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rgnt_reg .original_name rf_ram_if/rgnt
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rgnt_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rgnt_reg .single_bit_orig_name rf_ram_if/rgnt
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rgnt_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rgnt_reg/Q .original_name rf_ram_if/rgnt/q
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rgnt_reg/QN .original_name rf_ram_if/rgnt/q
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]} .original_name {{cpu/bufreg2/dat[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]} .single_bit_orig_name {cpu/bufreg2/dat[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]/Q} .original_name {cpu/bufreg2/dat[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[4]/QN} .original_name {cpu/bufreg2/dat[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]} .original_name {{cpu/bufreg2/dat[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]} .single_bit_orig_name {cpu/bufreg2/dat[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]/Q} .original_name {cpu/bufreg2/dat[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[3]/QN} .original_name {cpu/bufreg2/dat[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]} .original_name {{cpu/bufreg2/dat[5]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]} .single_bit_orig_name {cpu/bufreg2/dat[5]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]/Q} .original_name {cpu/bufreg2/dat[5]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[5]/QN} .original_name {cpu/bufreg2/dat[5]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]} .original_name {{cpu/bufreg2/dat[31]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]} .single_bit_orig_name {cpu/bufreg2/dat[31]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]/Q} .original_name {cpu/bufreg2/dat[31]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[31]/QN} .original_name {cpu/bufreg2/dat[31]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]} .original_name {{cpu/bufreg2/dat[14]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]} .single_bit_orig_name {cpu/bufreg2/dat[14]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]/Q} .original_name {cpu/bufreg2/dat[14]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[14]/QN} .original_name {cpu/bufreg2/dat[14]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]} .original_name {{cpu/bufreg2/dat[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]} .single_bit_orig_name {cpu/bufreg2/dat[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]/Q} .original_name {cpu/bufreg2/dat[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[1]/QN} .original_name {cpu/bufreg2/dat[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]} .original_name {{cpu/bufreg2/dat[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]} .single_bit_orig_name {cpu/bufreg2/dat[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]/Q} .original_name {cpu/bufreg2/dat[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[0]/QN} .original_name {cpu/bufreg2/dat[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]} .original_name {{cpu/bufreg2/dat[21]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]} .single_bit_orig_name {cpu/bufreg2/dat[21]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]/Q} .original_name {cpu/bufreg2/dat[21]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[21]/QN} .original_name {cpu/bufreg2/dat[21]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]} .original_name {{cpu/bufreg2/dat[23]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]} .single_bit_orig_name {cpu/bufreg2/dat[23]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]/Q} .original_name {cpu/bufreg2/dat[23]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[23]/QN} .original_name {cpu/bufreg2/dat[23]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]} .original_name {{cpu/bufreg2/dat[26]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]} .single_bit_orig_name {cpu/bufreg2/dat[26]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]/Q} .original_name {cpu/bufreg2/dat[26]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[26]/QN} .original_name {cpu/bufreg2/dat[26]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]} .original_name {{cpu/bufreg2/dat[29]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]} .single_bit_orig_name {cpu/bufreg2/dat[29]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]/Q} .original_name {cpu/bufreg2/dat[29]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[29]/QN} .original_name {cpu/bufreg2/dat[29]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]} .original_name {{cpu/bufreg2/dat[20]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]} .single_bit_orig_name {cpu/bufreg2/dat[20]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]/Q} .original_name {cpu/bufreg2/dat[20]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[20]/QN} .original_name {cpu/bufreg2/dat[20]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]} .original_name {{cpu/bufreg2/dat[7]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]} .single_bit_orig_name {cpu/bufreg2/dat[7]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]/Q} .original_name {cpu/bufreg2/dat[7]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[7]/QN} .original_name {cpu/bufreg2/dat[7]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]} .original_name {{cpu/bufreg2/dat[9]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]} .single_bit_orig_name {cpu/bufreg2/dat[9]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]/Q} .original_name {cpu/bufreg2/dat[9]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[9]/QN} .original_name {cpu/bufreg2/dat[9]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]} .original_name {{cpu/bufreg2/dat[10]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]} .single_bit_orig_name {cpu/bufreg2/dat[10]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]/Q} .original_name {cpu/bufreg2/dat[10]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[10]/QN} .original_name {cpu/bufreg2/dat[10]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]} .original_name {{cpu/bufreg2/dat[19]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]} .single_bit_orig_name {cpu/bufreg2/dat[19]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]/Q} .original_name {cpu/bufreg2/dat[19]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[19]/QN} .original_name {cpu/bufreg2/dat[19]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]} .original_name {{cpu/bufreg2/dat[8]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]} .single_bit_orig_name {cpu/bufreg2/dat[8]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]/Q} .original_name {cpu/bufreg2/dat[8]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[8]/QN} .original_name {cpu/bufreg2/dat[8]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]} .original_name {{cpu/bufreg2/dat[28]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]} .single_bit_orig_name {cpu/bufreg2/dat[28]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]/Q} .original_name {cpu/bufreg2/dat[28]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[28]/QN} .original_name {cpu/bufreg2/dat[28]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]} .original_name {{cpu/bufreg2/dat[12]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]} .single_bit_orig_name {cpu/bufreg2/dat[12]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]/Q} .original_name {cpu/bufreg2/dat[12]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[12]/QN} .original_name {cpu/bufreg2/dat[12]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]} .original_name {{cpu/bufreg2/dat[18]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]} .single_bit_orig_name {cpu/bufreg2/dat[18]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]/Q} .original_name {cpu/bufreg2/dat[18]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[18]/QN} .original_name {cpu/bufreg2/dat[18]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]} .original_name {{cpu/bufreg2/dat[17]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]} .single_bit_orig_name {cpu/bufreg2/dat[17]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]/Q} .original_name {cpu/bufreg2/dat[17]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[17]/QN} .original_name {cpu/bufreg2/dat[17]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]} .original_name {{cpu/bufreg2/dat[22]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]} .single_bit_orig_name {cpu/bufreg2/dat[22]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]/Q} .original_name {cpu/bufreg2/dat[22]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[22]/QN} .original_name {cpu/bufreg2/dat[22]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]} .original_name {{cpu/bufreg2/dat[15]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]} .single_bit_orig_name {cpu/bufreg2/dat[15]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]/Q} .original_name {cpu/bufreg2/dat[15]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[15]/QN} .original_name {cpu/bufreg2/dat[15]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]} .original_name {{cpu/bufreg2/dat[30]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]} .single_bit_orig_name {cpu/bufreg2/dat[30]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]/Q} .original_name {cpu/bufreg2/dat[30]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[30]/QN} .original_name {cpu/bufreg2/dat[30]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]} .original_name {{cpu/bufreg2/dat[27]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]} .single_bit_orig_name {cpu/bufreg2/dat[27]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]/Q} .original_name {cpu/bufreg2/dat[27]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[27]/QN} .original_name {cpu/bufreg2/dat[27]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]} .original_name {{cpu/bufreg2/dat[13]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]} .single_bit_orig_name {cpu/bufreg2/dat[13]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]/Q} .original_name {cpu/bufreg2/dat[13]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[13]/QN} .original_name {cpu/bufreg2/dat[13]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]} .original_name {{cpu/bufreg2/dat[25]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]} .single_bit_orig_name {cpu/bufreg2/dat[25]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]/Q} .original_name {cpu/bufreg2/dat[25]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[25]/QN} .original_name {cpu/bufreg2/dat[25]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]} .original_name {{cpu/bufreg2/dat[11]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]} .single_bit_orig_name {cpu/bufreg2/dat[11]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]/Q} .original_name {cpu/bufreg2/dat[11]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[11]/QN} .original_name {cpu/bufreg2/dat[11]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]} .original_name {{cpu/bufreg2/dat[6]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]} .single_bit_orig_name {cpu/bufreg2/dat[6]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]/Q} .original_name {cpu/bufreg2/dat[6]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[6]/QN} .original_name {cpu/bufreg2/dat[6]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]} .original_name {{cpu/bufreg2/dat[16]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]} .single_bit_orig_name {cpu/bufreg2/dat[16]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]/Q} .original_name {cpu/bufreg2/dat[16]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[16]/QN} .original_name {cpu/bufreg2/dat[16]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]} .original_name {{cpu/bufreg2/dat[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]} .single_bit_orig_name {cpu/bufreg2/dat[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]/Q} .original_name {cpu/bufreg2/dat[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[2]/QN} .original_name {cpu/bufreg2/dat[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]} .original_name {{cpu/bufreg2/dat[24]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]} .single_bit_orig_name {cpu/bufreg2/dat[24]}
set_db -quiet {inst:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]/Q} .original_name {cpu/bufreg2/dat[24]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_bufreg2_dat_reg[24]/QN} .original_name {cpu/bufreg2/dat[24]/q}
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rreq_r_reg .original_name rf_ram_if/rreq_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rreq_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rreq_r_reg .single_bit_orig_name rf_ram_if/rreq_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rreq_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rreq_r_reg/Q .original_name rf_ram_if/rreq_r/q
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rreq_r_reg/QN .original_name rf_ram_if/rreq_r/q
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]} .original_name {{cpu/gen_csr.csr/mcause3_0[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]} .single_bit_orig_name {cpu/gen_csr.csr/mcause3_0[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]/Q} .original_name {cpu/gen_csr.csr/mcause3_0[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[1]/QN} .original_name {cpu/gen_csr.csr/mcause3_0[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]} .original_name {{cpu/gen_csr.csr/mcause3_0[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]} .single_bit_orig_name {cpu/gen_csr.csr/mcause3_0[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]/Q} .original_name {cpu/gen_csr.csr/mcause3_0[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[2]/QN} .original_name {cpu/gen_csr.csr/mcause3_0[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]} .original_name {{cpu/gen_csr.csr/mcause3_0[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]} .single_bit_orig_name {cpu/gen_csr.csr/mcause3_0[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]/Q} .original_name {cpu/gen_csr.csr/mcause3_0[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_gen_csr.csr_mcause3_0_reg[0]/QN} .original_name {cpu/gen_csr.csr/mcause3_0[0]/q}
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen0_r_reg .original_name rf_ram_if/wen0_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen0_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen0_r_reg .single_bit_orig_name rf_ram_if/wen0_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen0_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_wen0_r_reg/Q .original_name rf_ram_if/wen0_r/q
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_wen0_r_reg/QN .original_name rf_ram_if/wen0_r/q
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]} .original_name {{cpu/ctrl/o_ibus_adr[18]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[18]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]/Q} .original_name {cpu/ctrl/o_ibus_adr[18]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[18]/QN} .original_name {cpu/ctrl/o_ibus_adr[18]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_state_ibus_cyc_reg .original_name cpu/state/ibus_cyc
set_db -quiet inst:serv_synth_wrapper/cpu_state_ibus_cyc_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_state_ibus_cyc_reg .single_bit_orig_name cpu/state/ibus_cyc
set_db -quiet inst:serv_synth_wrapper/cpu_state_ibus_cyc_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_state_ibus_cyc_reg/Q .original_name cpu/state/ibus_cyc/q
set_db -quiet pin:serv_synth_wrapper/cpu_state_ibus_cyc_reg/QN .original_name cpu/state/ibus_cyc/q
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]} .original_name {{cpu/immdec/imm30_25[5]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]} .single_bit_orig_name {cpu/immdec/imm30_25[5]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]/Q} .original_name {cpu/immdec/imm30_25[5]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[5]/QN} .original_name {cpu/immdec/imm30_25[5]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]} .original_name {{cpu/ctrl/o_ibus_adr[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]/Q} .original_name {cpu/ctrl/o_ibus_adr[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[4]/QN} .original_name {cpu/ctrl/o_ibus_adr[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]} .original_name {{cpu/ctrl/o_ibus_adr[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]/Q} .original_name {cpu/ctrl/o_ibus_adr[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[2]/QN} .original_name {cpu/ctrl/o_ibus_adr[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]} .original_name {{cpu/ctrl/o_ibus_adr[9]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[9]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]/Q} .original_name {cpu/ctrl/o_ibus_adr[9]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[9]/QN} .original_name {cpu/ctrl/o_ibus_adr[9]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]} .original_name {{cpu/ctrl/o_ibus_adr[24]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[24]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]/Q} .original_name {cpu/ctrl/o_ibus_adr[24]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[24]/QN} .original_name {cpu/ctrl/o_ibus_adr[24]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]} .original_name {{cpu/ctrl/o_ibus_adr[29]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[29]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]/Q} .original_name {cpu/ctrl/o_ibus_adr[29]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[29]/QN} .original_name {cpu/ctrl/o_ibus_adr[29]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]} .original_name {{cpu/ctrl/o_ibus_adr[13]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[13]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]/Q} .original_name {cpu/ctrl/o_ibus_adr[13]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[13]/QN} .original_name {cpu/ctrl/o_ibus_adr[13]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]} .original_name {{cpu/ctrl/o_ibus_adr[12]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[12]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]/Q} .original_name {cpu/ctrl/o_ibus_adr[12]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[12]/QN} .original_name {cpu/ctrl/o_ibus_adr[12]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]} .original_name {{cpu/ctrl/o_ibus_adr[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]/Q} .original_name {cpu/ctrl/o_ibus_adr[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[0]/QN} .original_name {cpu/ctrl/o_ibus_adr[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]} .original_name {{cpu/ctrl/o_ibus_adr[26]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[26]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]/Q} .original_name {cpu/ctrl/o_ibus_adr[26]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[26]/QN} .original_name {cpu/ctrl/o_ibus_adr[26]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]} .original_name {{cpu/ctrl/o_ibus_adr[10]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[10]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]/Q} .original_name {cpu/ctrl/o_ibus_adr[10]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[10]/QN} .original_name {cpu/ctrl/o_ibus_adr[10]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]} .original_name {{cpu/ctrl/o_ibus_adr[22]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[22]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]/Q} .original_name {cpu/ctrl/o_ibus_adr[22]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[22]/QN} .original_name {cpu/ctrl/o_ibus_adr[22]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]} .original_name {{cpu/ctrl/o_ibus_adr[6]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[6]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]/Q} .original_name {cpu/ctrl/o_ibus_adr[6]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[6]/QN} .original_name {cpu/ctrl/o_ibus_adr[6]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]} .original_name {{cpu/ctrl/o_ibus_adr[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]/Q} .original_name {cpu/ctrl/o_ibus_adr[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[1]/QN} .original_name {cpu/ctrl/o_ibus_adr[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]} .original_name {{cpu/ctrl/o_ibus_adr[7]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[7]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]/Q} .original_name {cpu/ctrl/o_ibus_adr[7]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[7]/QN} .original_name {cpu/ctrl/o_ibus_adr[7]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]} .original_name {{cpu/ctrl/o_ibus_adr[21]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[21]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]/Q} .original_name {cpu/ctrl/o_ibus_adr[21]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[21]/QN} .original_name {cpu/ctrl/o_ibus_adr[21]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]} .original_name {{cpu/ctrl/o_ibus_adr[11]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[11]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]/Q} .original_name {cpu/ctrl/o_ibus_adr[11]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[11]/QN} .original_name {cpu/ctrl/o_ibus_adr[11]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]} .original_name {{cpu/ctrl/o_ibus_adr[14]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[14]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]/Q} .original_name {cpu/ctrl/o_ibus_adr[14]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[14]/QN} .original_name {cpu/ctrl/o_ibus_adr[14]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]} .original_name {{cpu/ctrl/o_ibus_adr[16]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[16]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]/Q} .original_name {cpu/ctrl/o_ibus_adr[16]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[16]/QN} .original_name {cpu/ctrl/o_ibus_adr[16]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]} .original_name {{cpu/ctrl/o_ibus_adr[15]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[15]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]/Q} .original_name {cpu/ctrl/o_ibus_adr[15]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[15]/QN} .original_name {cpu/ctrl/o_ibus_adr[15]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]} .original_name {{cpu/ctrl/o_ibus_adr[19]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[19]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]/Q} .original_name {cpu/ctrl/o_ibus_adr[19]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[19]/QN} .original_name {cpu/ctrl/o_ibus_adr[19]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]} .original_name {{cpu/ctrl/o_ibus_adr[17]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[17]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]/Q} .original_name {cpu/ctrl/o_ibus_adr[17]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[17]/QN} .original_name {cpu/ctrl/o_ibus_adr[17]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]} .original_name {{cpu/ctrl/o_ibus_adr[23]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[23]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]/Q} .original_name {cpu/ctrl/o_ibus_adr[23]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[23]/QN} .original_name {cpu/ctrl/o_ibus_adr[23]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]} .original_name {{cpu/ctrl/o_ibus_adr[25]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[25]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]/Q} .original_name {cpu/ctrl/o_ibus_adr[25]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[25]/QN} .original_name {cpu/ctrl/o_ibus_adr[25]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]} .original_name {{cpu/ctrl/o_ibus_adr[27]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[27]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]/Q} .original_name {cpu/ctrl/o_ibus_adr[27]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[27]/QN} .original_name {cpu/ctrl/o_ibus_adr[27]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]} .original_name {{cpu/ctrl/o_ibus_adr[28]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[28]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]/Q} .original_name {cpu/ctrl/o_ibus_adr[28]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[28]/QN} .original_name {cpu/ctrl/o_ibus_adr[28]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]} .original_name {{cpu/ctrl/o_ibus_adr[20]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[20]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]/Q} .original_name {cpu/ctrl/o_ibus_adr[20]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[20]/QN} .original_name {cpu/ctrl/o_ibus_adr[20]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]} .original_name {{cpu/ctrl/o_ibus_adr[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]/Q} .original_name {cpu/ctrl/o_ibus_adr[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[3]/QN} .original_name {cpu/ctrl/o_ibus_adr[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]} .original_name {{cpu/ctrl/o_ibus_adr[30]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[30]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]/Q} .original_name {cpu/ctrl/o_ibus_adr[30]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[30]/QN} .original_name {cpu/ctrl/o_ibus_adr[30]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]} .original_name {{cpu/ctrl/o_ibus_adr[5]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[5]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]/Q} .original_name {cpu/ctrl/o_ibus_adr[5]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[5]/QN} .original_name {cpu/ctrl/o_ibus_adr[5]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]} .original_name {{cpu/immdec/imm24_20[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]} .single_bit_orig_name {cpu/immdec/imm24_20[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]/Q} .original_name {cpu/immdec/imm24_20[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[3]/QN} .original_name {cpu/immdec/imm24_20[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]} .original_name {{cpu/immdec/imm24_20[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]} .single_bit_orig_name {cpu/immdec/imm24_20[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]/Q} .original_name {cpu/immdec/imm24_20[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[4]/QN} .original_name {cpu/immdec/imm24_20[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]} .original_name {{cpu/ctrl/o_ibus_adr[8]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]} .single_bit_orig_name {cpu/ctrl/o_ibus_adr[8]}
set_db -quiet {inst:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]/Q} .original_name {cpu/ctrl/o_ibus_adr[8]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_ctrl_o_ibus_adr_reg[8]/QN} .original_name {cpu/ctrl/o_ibus_adr[8]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]} .original_name {{cpu/immdec/imm19_12_20[8]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]} .single_bit_orig_name {cpu/immdec/imm19_12_20[8]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]/Q} .original_name {cpu/immdec/imm19_12_20[8]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[8]/QN} .original_name {cpu/immdec/imm19_12_20[8]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]} .original_name {{cpu/immdec/imm19_12_20[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]} .single_bit_orig_name {cpu/immdec/imm19_12_20[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]/Q} .original_name {cpu/immdec/imm19_12_20[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[2]/QN} .original_name {cpu/immdec/imm19_12_20[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]} .original_name {{cpu/immdec/imm30_25[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]} .single_bit_orig_name {cpu/immdec/imm30_25[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]/Q} .original_name {cpu/immdec/imm30_25[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[1]/QN} .original_name {cpu/immdec/imm30_25[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]} .original_name {{cpu/immdec/imm19_12_20[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]} .single_bit_orig_name {cpu/immdec/imm19_12_20[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]/Q} .original_name {cpu/immdec/imm19_12_20[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[1]/QN} .original_name {cpu/immdec/imm19_12_20[1]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg .original_name cpu/gen_csr.csr/mstatus_mpie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg .single_bit_orig_name cpu/gen_csr.csr/mstatus_mpie
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg/Q .original_name cpu/gen_csr.csr/mstatus_mpie/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_mstatus_mpie_reg/QN .original_name cpu/gen_csr.csr/mstatus_mpie/q
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]} .original_name {{cpu/immdec/imm19_12_20[7]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]} .single_bit_orig_name {cpu/immdec/imm19_12_20[7]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]/Q} .original_name {cpu/immdec/imm19_12_20[7]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[7]/QN} .original_name {cpu/immdec/imm19_12_20[7]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_state_init_done_reg .original_name cpu/state/init_done
set_db -quiet inst:serv_synth_wrapper/cpu_state_init_done_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_state_init_done_reg .single_bit_orig_name cpu/state/init_done
set_db -quiet inst:serv_synth_wrapper/cpu_state_init_done_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_state_init_done_reg/Q .original_name cpu/state/init_done/q
set_db -quiet pin:serv_synth_wrapper/cpu_state_init_done_reg/QN .original_name cpu/state/init_done/q
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]} .original_name {{cpu/immdec/imm11_7[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]} .single_bit_orig_name {cpu/immdec/imm11_7[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]/Q} .original_name {cpu/immdec/imm11_7[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[3]/QN} .original_name {cpu/immdec/imm11_7[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]} .original_name {{cpu/immdec/imm30_25[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]} .single_bit_orig_name {cpu/immdec/imm30_25[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]/Q} .original_name {cpu/immdec/imm30_25[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[3]/QN} .original_name {cpu/immdec/imm30_25[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]} .original_name {{cpu/immdec/imm19_12_20[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]} .single_bit_orig_name {cpu/immdec/imm19_12_20[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]/Q} .original_name {cpu/immdec/imm19_12_20[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[3]/QN} .original_name {cpu/immdec/imm19_12_20[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]} .original_name {{cpu/immdec/imm19_12_20[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]} .single_bit_orig_name {cpu/immdec/imm19_12_20[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]/Q} .original_name {cpu/immdec/imm19_12_20[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[0]/QN} .original_name {cpu/immdec/imm19_12_20[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]} .original_name {{cpu/immdec/imm30_25[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]} .single_bit_orig_name {cpu/immdec/imm30_25[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]/Q} .original_name {cpu/immdec/imm30_25[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[2]/QN} .original_name {cpu/immdec/imm30_25[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]} .original_name {{cpu/immdec/imm30_25[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]} .single_bit_orig_name {cpu/immdec/imm30_25[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]/Q} .original_name {cpu/immdec/imm30_25[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[4]/QN} .original_name {cpu/immdec/imm30_25[4]/q}
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen1_r_reg .original_name rf_ram_if/wen1_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen1_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen1_r_reg .single_bit_orig_name rf_ram_if/wen1_r
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_wen1_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_wen1_r_reg/Q .original_name rf_ram_if/wen1_r/q
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_wen1_r_reg/QN .original_name rf_ram_if/wen1_r/q
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm7_reg .original_name cpu/immdec/imm7
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm7_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm7_reg .single_bit_orig_name cpu/immdec/imm7
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm7_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_immdec_imm7_reg/Q .original_name cpu/immdec/imm7/q
set_db -quiet pin:serv_synth_wrapper/cpu_immdec_imm7_reg/QN .original_name cpu/immdec/imm7/q
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]} .original_name {{cpu/immdec/imm24_20[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]} .single_bit_orig_name {cpu/immdec/imm24_20[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]/Q} .original_name {cpu/immdec/imm24_20[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[2]/QN} .original_name {cpu/immdec/imm24_20[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]} .original_name {{cpu/immdec/imm24_20[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]} .single_bit_orig_name {cpu/immdec/imm24_20[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]/Q} .original_name {cpu/immdec/imm24_20[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[1]/QN} .original_name {cpu/immdec/imm24_20[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]} .original_name {{cpu/immdec/imm19_12_20[5]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]} .single_bit_orig_name {cpu/immdec/imm19_12_20[5]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]/Q} .original_name {cpu/immdec/imm19_12_20[5]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[5]/QN} .original_name {cpu/immdec/imm19_12_20[5]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]} .original_name {{cpu/immdec/imm30_25[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]} .single_bit_orig_name {cpu/immdec/imm30_25[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]/Q} .original_name {cpu/immdec/imm30_25[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm30_25_reg[0]/QN} .original_name {cpu/immdec/imm30_25[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]} .original_name {{cpu/immdec/imm19_12_20[6]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]} .single_bit_orig_name {cpu/immdec/imm19_12_20[6]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]/Q} .original_name {cpu/immdec/imm19_12_20[6]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[6]/QN} .original_name {cpu/immdec/imm19_12_20[6]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]} .original_name {{cpu/immdec/imm11_7[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]} .single_bit_orig_name {cpu/immdec/imm11_7[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]/Q} .original_name {cpu/immdec/imm11_7[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[2]/QN} .original_name {cpu/immdec/imm11_7[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]} .original_name {{cpu/immdec/imm11_7[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]} .single_bit_orig_name {cpu/immdec/imm11_7[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]/Q} .original_name {cpu/immdec/imm11_7[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[0]/QN} .original_name {cpu/immdec/imm11_7[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]} .original_name {{cpu/immdec/imm11_7[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]} .single_bit_orig_name {cpu/immdec/imm11_7[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]/Q} .original_name {cpu/immdec/imm11_7[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[1]/QN} .original_name {cpu/immdec/imm11_7[1]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]} .original_name {{cpu/immdec/imm24_20[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]} .single_bit_orig_name {cpu/immdec/imm24_20[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]/Q} .original_name {cpu/immdec/imm24_20[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm24_20_reg[0]/QN} .original_name {cpu/immdec/imm24_20[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]} .original_name {{cpu/immdec/imm19_12_20[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]} .single_bit_orig_name {cpu/immdec/imm19_12_20[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]/Q} .original_name {cpu/immdec/imm19_12_20[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm19_12_20_reg[4]/QN} .original_name {cpu/immdec/imm19_12_20[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]} .original_name {{cpu/immdec/imm11_7[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]} .single_bit_orig_name {cpu/immdec/imm11_7[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]/Q} .original_name {cpu/immdec/imm11_7[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_immdec_imm11_7_reg[4]/QN} .original_name {cpu/immdec/imm11_7[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[4]} .original_name {{cpu/state/o_cnt[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[4]} .single_bit_orig_name {cpu/state/o_cnt[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[4]/Q} .original_name {cpu/state/o_cnt[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[4]/QN} .original_name {cpu/state/o_cnt[4]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_state_stage_two_req_reg .original_name cpu/state/stage_two_req
set_db -quiet inst:serv_synth_wrapper/cpu_state_stage_two_req_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_state_stage_two_req_reg .single_bit_orig_name cpu/state/stage_two_req
set_db -quiet inst:serv_synth_wrapper/cpu_state_stage_two_req_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_state_stage_two_req_reg/Q .original_name cpu/state/stage_two_req/q
set_db -quiet pin:serv_synth_wrapper/cpu_state_stage_two_req_reg/QN .original_name cpu/state/stage_two_req/q
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg .original_name cpu/ctrl/pc_plus_4_cy_r
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg .single_bit_orig_name cpu/ctrl/pc_plus_4_cy_r
set_db -quiet inst:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg/Q .original_name cpu/ctrl/pc_plus_4_cy_r/q
set_db -quiet pin:serv_synth_wrapper/cpu_ctrl_pc_plus_4_cy_r_reg/QN .original_name cpu/ctrl/pc_plus_4_cy_r/q
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[3]} .original_name {{cpu/state/o_cnt[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[3]} .single_bit_orig_name {cpu/state/o_cnt[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[3]/Q} .original_name {cpu/state/o_cnt[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[3]/QN} .original_name {cpu/state/o_cnt[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[2]} .original_name {{cpu/state/o_cnt[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[2]} .single_bit_orig_name {cpu/state/o_cnt[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_o_cnt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[2]/Q} .original_name {cpu/state/o_cnt[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_o_cnt_reg[2]/QN} .original_name {cpu/state/o_cnt[2]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_mem_if_signbit_reg .original_name cpu/mem_if/signbit
set_db -quiet inst:serv_synth_wrapper/cpu_mem_if_signbit_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_mem_if_signbit_reg .single_bit_orig_name cpu/mem_if/signbit
set_db -quiet inst:serv_synth_wrapper/cpu_mem_if_signbit_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_mem_if_signbit_reg/Q .original_name cpu/mem_if/signbit/q
set_db -quiet pin:serv_synth_wrapper/cpu_mem_if_signbit_reg/QN .original_name cpu/mem_if/signbit/q
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg .original_name cpu/gen_csr.csr/timer_irq_r
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg .single_bit_orig_name cpu/gen_csr.csr/timer_irq_r
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg/Q .original_name cpu/gen_csr.csr/timer_irq_r/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_timer_irq_r_reg/QN .original_name cpu/gen_csr.csr/timer_irq_r/q
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg .original_name cpu/gen_csr.csr/o_new_irq
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg .single_bit_orig_name cpu/gen_csr.csr/o_new_irq
set_db -quiet inst:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg/Q .original_name cpu/gen_csr.csr/o_new_irq/q
set_db -quiet pin:serv_synth_wrapper/cpu_gen_csr.csr_o_new_irq_reg/QN .original_name cpu/gen_csr.csr/o_new_irq/q
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op26_reg .original_name cpu/decode/op26
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op26_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op26_reg .single_bit_orig_name cpu/decode/op26
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op26_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op26_reg/Q .original_name cpu/decode/op26/q
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op26_reg/QN .original_name cpu/decode/op26/q
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[3]} .original_name {{cpu/decode/opcode[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[3]} .single_bit_orig_name {cpu/decode/opcode[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[3]/Q} .original_name {cpu/decode/opcode[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[3]/QN} .original_name {cpu/decode/opcode[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[4]} .original_name {{cpu/decode/opcode[4]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[4]} .single_bit_orig_name {cpu/decode/opcode[4]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[4]/Q} .original_name {cpu/decode/opcode[4]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[4]/QN} .original_name {cpu/decode/opcode[4]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[0]} .original_name {{cpu/decode/opcode[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[0]} .single_bit_orig_name {cpu/decode/opcode[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[0]/Q} .original_name {cpu/decode/opcode[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[0]/QN} .original_name {cpu/decode/opcode[0]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op20_reg .original_name cpu/decode/op20
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op20_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op20_reg .single_bit_orig_name cpu/decode/op20
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op20_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op20_reg/Q .original_name cpu/decode/op20/q
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op20_reg/QN .original_name cpu/decode/op20/q
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op21_reg .original_name cpu/decode/op21
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op21_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op21_reg .single_bit_orig_name cpu/decode/op21
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op21_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op21_reg/Q .original_name cpu/decode/op21/q
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op21_reg/QN .original_name cpu/decode/op21/q
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[2]} .original_name {{cpu/decode/funct3[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[2]} .single_bit_orig_name {cpu/decode/funct3[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[2]/Q} .original_name {cpu/decode/funct3[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[2]/QN} .original_name {cpu/decode/funct3[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[2]} .original_name {{cpu/decode/opcode[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[2]} .single_bit_orig_name {cpu/decode/opcode[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[2]/Q} .original_name {cpu/decode/opcode[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[2]/QN} .original_name {cpu/decode/opcode[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[0]} .original_name {{cpu/decode/funct3[0]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[0]} .single_bit_orig_name {cpu/decode/funct3[0]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[0]/Q} .original_name {cpu/decode/funct3[0]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[0]/QN} .original_name {cpu/decode/funct3[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[1]} .original_name {{cpu/decode/funct3[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[1]} .single_bit_orig_name {cpu/decode/funct3[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_funct3_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[1]/Q} .original_name {cpu/decode/funct3[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_funct3_reg[1]/QN} .original_name {cpu/decode/funct3[1]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm31_reg .original_name cpu/immdec/imm31
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm31_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm31_reg .single_bit_orig_name cpu/immdec/imm31
set_db -quiet inst:serv_synth_wrapper/cpu_immdec_imm31_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_immdec_imm31_reg/Q .original_name cpu/immdec/imm31/q
set_db -quiet pin:serv_synth_wrapper/cpu_immdec_imm31_reg/QN .original_name cpu/immdec/imm31/q
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[1]} .original_name {{cpu/decode/opcode[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[1]} .single_bit_orig_name {cpu/decode/opcode[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_decode_opcode_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[1]/Q} .original_name {cpu/decode/opcode[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_decode_opcode_reg[1]/QN} .original_name {cpu/decode/opcode[1]/q}
set_db -quiet inst:serv_synth_wrapper/cpu_decode_imm30_reg .original_name cpu/decode/imm30
set_db -quiet inst:serv_synth_wrapper/cpu_decode_imm30_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_decode_imm30_reg .single_bit_orig_name cpu/decode/imm30
set_db -quiet inst:serv_synth_wrapper/cpu_decode_imm30_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_decode_imm30_reg/Q .original_name cpu/decode/imm30/q
set_db -quiet pin:serv_synth_wrapper/cpu_decode_imm30_reg/QN .original_name cpu/decode/imm30/q
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op22_reg .original_name cpu/decode/op22
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op22_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op22_reg .single_bit_orig_name cpu/decode/op22
set_db -quiet inst:serv_synth_wrapper/cpu_decode_op22_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op22_reg/Q .original_name cpu/decode/op22/q
set_db -quiet pin:serv_synth_wrapper/cpu_decode_op22_reg/QN .original_name cpu/decode/op22/q
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]} .original_name {{rf_ram_if/rdata0[0]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]} .single_bit_orig_name {rf_ram_if/rdata0[0]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]/Q} .original_name {rf_ram_if/rdata0[0]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata0_reg[0]/QN} .original_name {rf_ram_if/rdata0[0]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]} .original_name {{rf_ram_if/rdata1[0]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]} .single_bit_orig_name {rf_ram_if/rdata1[0]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]/Q} .original_name {rf_ram_if/rdata1[0]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata1_reg[0]/QN} .original_name {rf_ram_if/rdata1[0]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]} .original_name {{cpu/state/gen_cnt_w_eq_1.cnt_lsb[3]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]} .single_bit_orig_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[3]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]/Q} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[3]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[3]/QN} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[3]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]} .original_name {{cpu/state/gen_cnt_w_eq_1.cnt_lsb[2]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]} .single_bit_orig_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[2]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]/Q} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[2]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[2]/QN} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[2]/q}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]} .original_name {{cpu/state/gen_cnt_w_eq_1.cnt_lsb[1]}}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]} .single_bit_orig_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[1]}
set_db -quiet {inst:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]/Q} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[1]/q}
set_db -quiet {pin:serv_synth_wrapper/cpu_state_gen_cnt_w_eq_1.cnt_lsb_reg[1]/QN} .original_name {cpu/state/gen_cnt_w_eq_1.cnt_lsb[1]/q}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]} .original_name {{rf_ram_if/rdata0[1]}}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]} .single_bit_orig_name {rf_ram_if/rdata0[1]}
set_db -quiet {inst:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]/Q} .original_name {rf_ram_if/rdata0[1]/q}
set_db -quiet {pin:serv_synth_wrapper/rf_ram_if_rdata0_reg[1]/QN} .original_name {rf_ram_if/rdata0[1]/q}
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rtrig1_reg .original_name rf_ram_if/rtrig1
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rtrig1_reg .orig_hdl_instantiated false
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rtrig1_reg .single_bit_orig_name rf_ram_if/rtrig1
set_db -quiet inst:serv_synth_wrapper/rf_ram_if_rtrig1_reg .gint_phase_inversion false
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rtrig1_reg/Q .original_name rf_ram_if/rtrig1/q
set_db -quiet pin:serv_synth_wrapper/rf_ram_if_rtrig1_reg/QN .original_name rf_ram_if/rtrig1/q
# BEGIN PMBIST SECTION
# END PMBIST SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 21.19-s055_1
## flowkit v21.12-s019_1
## Written on 21:48:28 28-Dec 2024
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid dd328736-92e3-465a-8b6f-018c1b4d0f31}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

