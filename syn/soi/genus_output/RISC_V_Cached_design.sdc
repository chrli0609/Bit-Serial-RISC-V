# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.19-s055_1 on Wed Dec 25 12:17:48 CET 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design RISC_V_Cached

create_clock -name "CLK" -period 100.0 -waveform {0.0 50.0} [get_ports clk]
set_load -pin_load -min 0.01 [get_ports s_clk]
set_load -pin_load -max 0.1 [get_ports s_clk]
set_load -pin_load -min 0.01 [get_ports s_com_enabled]
set_load -pin_load -max 0.1 [get_ports s_com_enabled]
set_load -pin_load -min 0.01 [get_ports s_m_active]
set_load -pin_load -max 0.1 [get_ports s_m_active]
set_load -pin_load -min 0.01 [get_ports {s_m_data[1]}]
set_load -pin_load -max 0.1 [get_ports {s_m_data[1]}]
set_load -pin_load -min 0.01 [get_ports {s_m_data[0]}]
set_load -pin_load -max 0.1 [get_ports {s_m_data[0]}]
set_load -pin_load -min 0.01 [get_ports {s_addr[1]}]
set_load -pin_load -max 0.1 [get_ports {s_addr[1]}]
set_load -pin_load -min 0.01 [get_ports {s_addr[0]}]
set_load -pin_load -max 0.1 [get_ports {s_addr[0]}]
set_false_path -from [get_ports reset]
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports s_clk]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports s_com_enabled]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports s_m_active]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_m_data[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_m_data[0]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_addr[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_addr[0]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports s_clk]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports s_com_enabled]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports s_m_active]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_m_data[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_m_data[0]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_addr[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_addr[0]}]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports reset]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports s_s_active]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_s_data[1]}]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 0.2 [get_ports {s_s_data[0]}]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports reset]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports s_s_active]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_s_data[1]}]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {s_s_data[0]}]
set_operating_conditions PVT_1P8V_25C
set_driving_cell -lib_cell BUFX2 -library KISTA_SOI_STDLIB2_CCS_TT -pin "Y" [get_ports clk]
set_driving_cell -lib_cell BUFX2 -library KISTA_SOI_STDLIB2_CCS_TT -pin "Y" [get_ports reset]
set_driving_cell -lib_cell BUFX2 -library KISTA_SOI_STDLIB2_CCS_TT -pin "Y" [get_ports s_s_active]
set_driving_cell -lib_cell BUFX2 -library KISTA_SOI_STDLIB2_CCS_TT -pin "Y" [get_ports {s_s_data[1]}]
set_driving_cell -lib_cell BUFX2 -library KISTA_SOI_STDLIB2_CCS_TT -pin "Y" [get_ports {s_s_data[0]}]
set_wire_load_mode "enclosed"
set_clock_latency  0.2 [get_clocks CLK]
set_clock_uncertainty -setup 0.3 [get_clocks CLK]
set_clock_uncertainty -hold 0.2 [get_clocks CLK]
