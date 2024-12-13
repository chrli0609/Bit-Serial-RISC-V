-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/12/2024 20:59:09"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	io_controller IS
    PORT (
	we : IN std_logic;
	data_in : IN std_logic_vector(31 DOWNTO 0);
	data_out : OUT std_logic_vector(31 DOWNTO 0);
	ports : INOUT std_logic_vector(9 DOWNTO 0)
	);
END io_controller;

-- Design Ports Information
-- data_in[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[24]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[26]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[27]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[28]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[30]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[31]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[16]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[17]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[18]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[19]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[20]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[21]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[22]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[23]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[24]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[25]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[26]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[27]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[28]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[29]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[30]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[31]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[2]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[7]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[8]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ports[9]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF io_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \data_in[16]~input_o\ : std_logic;
SIGNAL \data_in[17]~input_o\ : std_logic;
SIGNAL \data_in[18]~input_o\ : std_logic;
SIGNAL \data_in[19]~input_o\ : std_logic;
SIGNAL \data_in[20]~input_o\ : std_logic;
SIGNAL \data_in[21]~input_o\ : std_logic;
SIGNAL \data_in[22]~input_o\ : std_logic;
SIGNAL \data_in[23]~input_o\ : std_logic;
SIGNAL \data_in[24]~input_o\ : std_logic;
SIGNAL \data_in[25]~input_o\ : std_logic;
SIGNAL \data_in[26]~input_o\ : std_logic;
SIGNAL \data_in[27]~input_o\ : std_logic;
SIGNAL \data_in[28]~input_o\ : std_logic;
SIGNAL \data_in[29]~input_o\ : std_logic;
SIGNAL \data_in[30]~input_o\ : std_logic;
SIGNAL \data_in[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \ports[0]~input_o\ : std_logic;
SIGNAL \ports[1]~input_o\ : std_logic;
SIGNAL \ports[2]~input_o\ : std_logic;
SIGNAL \ports[3]~input_o\ : std_logic;
SIGNAL \ports[4]~input_o\ : std_logic;
SIGNAL \ports[5]~input_o\ : std_logic;
SIGNAL \ports[6]~input_o\ : std_logic;
SIGNAL \ports[7]~input_o\ : std_logic;
SIGNAL \ports[8]~input_o\ : std_logic;
SIGNAL \ports[9]~input_o\ : std_logic;

BEGIN

ww_we <= we;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X15_Y0_N2
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[0]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X48_Y0_N42
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[1]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X19_Y0_N19
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[2]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X57_Y0_N2
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[3]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X55_Y0_N76
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[4]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X18_Y0_N2
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[5]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X12_Y0_N2
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[6]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X14_Y0_N2
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[7]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X21_Y0_N2
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[8]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X17_Y0_N76
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ports[9]~input_o\,
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X4_Y61_N2
\data_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(10));

-- Location: IOOBUF_X50_Y0_N2
\data_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(11));

-- Location: IOOBUF_X36_Y0_N2
\data_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(12));

-- Location: IOOBUF_X19_Y61_N53
\data_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(13));

-- Location: IOOBUF_X18_Y0_N19
\data_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(14));

-- Location: IOOBUF_X4_Y0_N2
\data_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(15));

-- Location: IOOBUF_X2_Y61_N59
\data_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(16));

-- Location: IOOBUF_X32_Y0_N76
\data_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(17));

-- Location: IOOBUF_X4_Y61_N53
\data_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(18));

-- Location: IOOBUF_X2_Y61_N93
\data_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(19));

-- Location: IOOBUF_X32_Y0_N42
\data_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(20));

-- Location: IOOBUF_X19_Y61_N36
\data_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(21));

-- Location: IOOBUF_X42_Y0_N36
\data_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(22));

-- Location: IOOBUF_X40_Y0_N42
\data_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(23));

-- Location: IOOBUF_X53_Y0_N53
\data_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(24));

-- Location: IOOBUF_X38_Y0_N36
\data_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(25));

-- Location: IOOBUF_X36_Y0_N19
\data_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(26));

-- Location: IOOBUF_X40_Y0_N59
\data_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(27));

-- Location: IOOBUF_X7_Y0_N2
\data_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(28));

-- Location: IOOBUF_X68_Y12_N39
\data_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(29));

-- Location: IOOBUF_X32_Y0_N93
\data_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(30));

-- Location: IOOBUF_X6_Y0_N53
\data_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_out(31));

-- Location: IOOBUF_X15_Y0_N19
\ports[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[0]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(0));

-- Location: IOOBUF_X48_Y0_N76
\ports[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[1]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(1));

-- Location: IOOBUF_X19_Y0_N36
\ports[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[2]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(2));

-- Location: IOOBUF_X57_Y0_N53
\ports[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[3]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(3));

-- Location: IOOBUF_X55_Y0_N59
\ports[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[4]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(4));

-- Location: IOOBUF_X19_Y0_N2
\ports[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[5]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(5));

-- Location: IOOBUF_X12_Y0_N36
\ports[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[6]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(6));

-- Location: IOOBUF_X14_Y0_N36
\ports[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[7]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(7));

-- Location: IOOBUF_X21_Y0_N36
\ports[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[8]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(8));

-- Location: IOOBUF_X17_Y0_N93
\ports[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[9]~input_o\,
	oe => \we~input_o\,
	devoe => ww_devoe,
	o => ports(9));

-- Location: IOIBUF_X15_Y0_N52
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X57_Y0_N18
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X55_Y0_N41
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N52
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\ports[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(0),
	o => \ports[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\ports[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(1),
	o => \ports[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\ports[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(2),
	o => \ports[2]~input_o\);

-- Location: IOIBUF_X57_Y0_N52
\ports[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(3),
	o => \ports[3]~input_o\);

-- Location: IOIBUF_X55_Y0_N58
\ports[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(4),
	o => \ports[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\ports[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(5),
	o => \ports[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\ports[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(6),
	o => \ports[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\ports[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(7),
	o => \ports[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N35
\ports[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(8),
	o => \ports[8]~input_o\);

-- Location: IOIBUF_X17_Y0_N92
\ports[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ports(9),
	o => \ports[9]~input_o\);

-- Location: IOIBUF_X2_Y61_N41
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X61_Y0_N35
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X68_Y12_N21
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X68_Y11_N38
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X68_Y13_N55
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X68_Y10_N95
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: IOIBUF_X68_Y12_N4
\data_in[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(16),
	o => \data_in[16]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\data_in[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(17),
	o => \data_in[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\data_in[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(18),
	o => \data_in[18]~input_o\);

-- Location: IOIBUF_X68_Y13_N38
\data_in[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(19),
	o => \data_in[19]~input_o\);

-- Location: IOIBUF_X68_Y11_N21
\data_in[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(20),
	o => \data_in[20]~input_o\);

-- Location: IOIBUF_X59_Y0_N52
\data_in[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(21),
	o => \data_in[21]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\data_in[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(22),
	o => \data_in[22]~input_o\);

-- Location: IOIBUF_X32_Y0_N58
\data_in[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(23),
	o => \data_in[23]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\data_in[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(24),
	o => \data_in[24]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\data_in[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(25),
	o => \data_in[25]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\data_in[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(26),
	o => \data_in[26]~input_o\);

-- Location: IOIBUF_X50_Y0_N52
\data_in[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(27),
	o => \data_in[27]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\data_in[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(28),
	o => \data_in[28]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\data_in[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(29),
	o => \data_in[29]~input_o\);

-- Location: IOIBUF_X68_Y10_N78
\data_in[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(30),
	o => \data_in[30]~input_o\);

-- Location: IOIBUF_X66_Y0_N35
\data_in[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(31),
	o => \data_in[31]~input_o\);

-- Location: LABCELL_X13_Y56_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


