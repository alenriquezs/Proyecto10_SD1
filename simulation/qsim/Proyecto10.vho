-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/23/2021 09:24:09"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Proyecto10 IS
    PORT (
	fin : OUT std_logic;
	resetn : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	enter : IN std_logic;
	Valido : OUT std_logic;
	Q0 : OUT std_logic_vector(3 DOWNTO 0);
	Digito : IN std_logic_vector(3 DOWNTO 0);
	Q1 : OUT std_logic_vector(3 DOWNTO 0);
	Q2 : OUT std_logic_vector(3 DOWNTO 0);
	est : OUT std_logic_vector(3 DOWNTO 0)
	);
END Proyecto10;

-- Design Ports Information
-- fin	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Valido	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[1]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[1]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[0]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Proyecto10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_Valido : std_logic;
SIGNAL ww_Q0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Digito : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_est : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \inst|y.s0~q\ : std_logic;
SIGNAL \inst|y~25_combout\ : std_logic;
SIGNAL \inst|y.s1~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|y.s2~q\ : std_logic;
SIGNAL \inst|y~24_combout\ : std_logic;
SIGNAL \inst|y.s3~q\ : std_logic;
SIGNAL \inst|y~21_combout\ : std_logic;
SIGNAL \inst|y.s4~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|y.s5~q\ : std_logic;
SIGNAL \inst|y~23_combout\ : std_logic;
SIGNAL \inst|y.s6~q\ : std_logic;
SIGNAL \inst|y~22_combout\ : std_logic;
SIGNAL \inst|y.s7~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|y.s8~q\ : std_logic;
SIGNAL \inst|y~19_combout\ : std_logic;
SIGNAL \inst|y.s9~q\ : std_logic;
SIGNAL \inst|y~20_combout\ : std_logic;
SIGNAL \inst|y.s10~q\ : std_logic;
SIGNAL \inst|y.s11~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|y.s12~q\ : std_logic;
SIGNAL \inst|y~18_combout\ : std_logic;
SIGNAL \inst|y.s13~q\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \Digito[1]~input_o\ : std_logic;
SIGNAL \Digito[2]~input_o\ : std_logic;
SIGNAL \inst3|q[2]~feeder_combout\ : std_logic;
SIGNAL \Digito[0]~input_o\ : std_logic;
SIGNAL \Digito[3]~input_o\ : std_logic;
SIGNAL \inst10|Despl~0_combout\ : std_logic;
SIGNAL \inst1|q[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|q[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|Despl~2_combout\ : std_logic;
SIGNAL \inst8|Despl~1_combout\ : std_logic;
SIGNAL \inst8|Despl~0_combout\ : std_logic;
SIGNAL \inst18|S[0]~0_combout\ : std_logic;
SIGNAL \inst10|Despl~1_combout\ : std_logic;
SIGNAL \inst8|Despl~3_combout\ : std_logic;
SIGNAL \inst18|S[0]~1_combout\ : std_logic;
SIGNAL \inst10|Despl~3_combout\ : std_logic;
SIGNAL \inst10|Despl~2_combout\ : std_logic;
SIGNAL \inst18|S[0]~2_combout\ : std_logic;
SIGNAL \inst|WideOr5~combout\ : std_logic;
SIGNAL \inst|WideOr6~combout\ : std_logic;
SIGNAL \inst|WideOr7~combout\ : std_logic;
SIGNAL \inst|WideOr8~0_combout\ : std_logic;
SIGNAL \inst|WideOr8~combout\ : std_logic;
SIGNAL \inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|Despl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|Despl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|S\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y.s0~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s2~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s3~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s6~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s5~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s7~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s4~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s10~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s8~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s11~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s9~q\ : std_logic;
SIGNAL \inst3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|ALT_INV_S[0]~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Despl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Despl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|ALT_INV_S[0]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y.s13~q\ : std_logic;
SIGNAL \inst|ALT_INV_y.s12~q\ : std_logic;
SIGNAL \ALT_INV_enter~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_y.s1~q\ : std_logic;

BEGIN

fin <= ww_fin;
ww_resetn <= resetn;
ww_clk <= clk;
ww_start <= start;
ww_enter <= enter;
Valido <= ww_Valido;
Q0 <= ww_Q0;
ww_Digito <= Digito;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
est <= ww_est;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_WideOr8~combout\ <= NOT \inst|WideOr8~combout\;
\inst|ALT_INV_WideOr8~0_combout\ <= NOT \inst|WideOr8~0_combout\;
\inst|ALT_INV_y.s0~q\ <= NOT \inst|y.s0~q\;
\inst|ALT_INV_y.s2~q\ <= NOT \inst|y.s2~q\;
\inst|ALT_INV_y.s3~q\ <= NOT \inst|y.s3~q\;
\inst|ALT_INV_y.s6~q\ <= NOT \inst|y.s6~q\;
\inst|ALT_INV_y.s5~q\ <= NOT \inst|y.s5~q\;
\inst|ALT_INV_y.s7~q\ <= NOT \inst|y.s7~q\;
\inst|ALT_INV_y.s4~q\ <= NOT \inst|y.s4~q\;
\inst|ALT_INV_y.s10~q\ <= NOT \inst|y.s10~q\;
\inst|ALT_INV_y.s8~q\ <= NOT \inst|y.s8~q\;
\inst|ALT_INV_y.s11~q\ <= NOT \inst|y.s11~q\;
\inst|ALT_INV_y.s9~q\ <= NOT \inst|y.s9~q\;
\inst3|ALT_INV_q\(0) <= NOT \inst3|q\(0);
\inst3|ALT_INV_q\(1) <= NOT \inst3|q\(1);
\inst3|ALT_INV_q\(2) <= NOT \inst3|q\(2);
\inst3|ALT_INV_q\(3) <= NOT \inst3|q\(3);
\inst18|ALT_INV_S[0]~2_combout\ <= NOT \inst18|S[0]~2_combout\;
\inst10|ALT_INV_Despl\(3) <= NOT \inst10|Despl\(3);
\inst2|ALT_INV_q\(3) <= NOT \inst2|q\(3);
\inst10|ALT_INV_Despl\(2) <= NOT \inst10|Despl\(2);
\inst2|ALT_INV_q\(2) <= NOT \inst2|q\(2);
\inst18|ALT_INV_S[0]~1_combout\ <= NOT \inst18|S[0]~1_combout\;
\inst10|ALT_INV_Despl\(0) <= NOT \inst10|Despl\(0);
\inst2|ALT_INV_q\(0) <= NOT \inst2|q\(0);
\inst8|ALT_INV_Despl\(3) <= NOT \inst8|Despl\(3);
\inst1|ALT_INV_q\(3) <= NOT \inst1|q\(3);
\inst18|ALT_INV_S[0]~0_combout\ <= NOT \inst18|S[0]~0_combout\;
\inst8|ALT_INV_Despl\(2) <= NOT \inst8|Despl\(2);
\inst1|ALT_INV_q\(2) <= NOT \inst1|q\(2);
\inst8|ALT_INV_Despl\(1) <= NOT \inst8|Despl\(1);
\inst1|ALT_INV_q\(1) <= NOT \inst1|q\(1);
\inst8|ALT_INV_Despl\(0) <= NOT \inst8|Despl\(0);
\inst1|ALT_INV_q\(0) <= NOT \inst1|q\(0);
\inst10|ALT_INV_Despl\(1) <= NOT \inst10|Despl\(1);
\inst2|ALT_INV_q\(1) <= NOT \inst2|q\(1);
\inst|ALT_INV_WideOr6~0_combout\ <= NOT \inst|WideOr6~0_combout\;
\inst|ALT_INV_y.s13~q\ <= NOT \inst|y.s13~q\;
\inst|ALT_INV_y.s12~q\ <= NOT \inst|y.s12~q\;
\ALT_INV_enter~input_o\ <= NOT \enter~input_o\;
\ALT_INV_Digito[2]~input_o\ <= NOT \Digito[2]~input_o\;
\ALT_INV_Digito[1]~input_o\ <= NOT \Digito[1]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\inst|ALT_INV_y.s1~q\ <= NOT \inst|y.s1~q\;

-- Location: IOOBUF_X68_Y0_N53
\fin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_fin);

-- Location: IOOBUF_X68_Y0_N36
\Valido~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|S\(0),
	devoe => ww_devoe,
	o => ww_Valido);

-- Location: IOOBUF_X70_Y0_N19
\Q0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|q\(3),
	devoe => ww_devoe,
	o => ww_Q0(3));

-- Location: IOOBUF_X68_Y0_N2
\Q0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|q\(2),
	devoe => ww_devoe,
	o => ww_Q0(2));

-- Location: IOOBUF_X70_Y0_N53
\Q0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|q\(1),
	devoe => ww_devoe,
	o => ww_Q0(1));

-- Location: IOOBUF_X68_Y0_N19
\Q0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|q\(0),
	devoe => ww_devoe,
	o => ww_Q0(0));

-- Location: IOOBUF_X78_Y0_N2
\Q1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(3),
	devoe => ww_devoe,
	o => ww_Q1(3));

-- Location: IOOBUF_X80_Y0_N53
\Q1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(2),
	devoe => ww_devoe,
	o => ww_Q1(2));

-- Location: IOOBUF_X78_Y0_N19
\Q1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(1),
	devoe => ww_devoe,
	o => ww_Q1(1));

-- Location: IOOBUF_X74_Y0_N76
\Q1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(0),
	devoe => ww_devoe,
	o => ww_Q1(0));

-- Location: IOOBUF_X78_Y0_N36
\Q2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(3),
	devoe => ww_devoe,
	o => ww_Q2(3));

-- Location: IOOBUF_X74_Y0_N59
\Q2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(2),
	devoe => ww_devoe,
	o => ww_Q2(2));

-- Location: IOOBUF_X76_Y0_N53
\Q2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(1),
	devoe => ww_devoe,
	o => ww_Q2(1));

-- Location: IOOBUF_X78_Y0_N53
\Q2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(0),
	devoe => ww_devoe,
	o => ww_Q2(0));

-- Location: IOOBUF_X82_Y0_N59
\est[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_est(3));

-- Location: IOOBUF_X66_Y0_N59
\est[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_est(2));

-- Location: IOOBUF_X80_Y0_N36
\est[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_est(1));

-- Location: IOOBUF_X82_Y0_N76
\est[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_est(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N35
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\enter~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LABCELL_X73_Y3_N45
\inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = ( \inst|y.s0~q\ & ( \inst|y.s13~q\ & ( \start~input_o\ ) ) ) # ( !\inst|y.s0~q\ & ( \inst|y.s13~q\ & ( \start~input_o\ ) ) ) # ( \inst|y.s0~q\ & ( !\inst|y.s13~q\ ) ) # ( !\inst|y.s0~q\ & ( !\inst|y.s13~q\ & ( \start~input_o\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datae => \inst|ALT_INV_y.s0~q\,
	dataf => \inst|ALT_INV_y.s13~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: IOIBUF_X76_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X73_Y3_N47
\inst|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s0~q\);

-- Location: LABCELL_X73_Y3_N51
\inst|y~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~25_combout\ = (\start~input_o\ & ((!\inst|y.s0~q\) # (\inst|y.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \inst|ALT_INV_y.s0~q\,
	datad => \inst|ALT_INV_y.s1~q\,
	combout => \inst|y~25_combout\);

-- Location: FF_X73_Y3_N53
\inst|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~25_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s1~q\);

-- Location: LABCELL_X73_Y3_N48
\inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = ( \inst|y.s1~q\ & ( (!\start~input_o\) # ((!\enter~input_o\ & \inst|y.s2~q\)) ) ) # ( !\inst|y.s1~q\ & ( (!\enter~input_o\ & \inst|y.s2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_enter~input_o\,
	datad => \inst|ALT_INV_y.s2~q\,
	dataf => \inst|ALT_INV_y.s1~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X73_Y3_N50
\inst|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s2~q\);

-- Location: LABCELL_X73_Y3_N18
\inst|y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~24_combout\ = ( \inst|y.s2~q\ & ( \enter~input_o\ ) ) # ( !\inst|y.s2~q\ & ( (\enter~input_o\ & \inst|y.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst|ALT_INV_y.s3~q\,
	dataf => \inst|ALT_INV_y.s2~q\,
	combout => \inst|y~24_combout\);

-- Location: FF_X73_Y3_N20
\inst|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s3~q\);

-- Location: LABCELL_X73_Y3_N36
\inst|y~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~21_combout\ = ( \inst|y.s3~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	dataf => \inst|ALT_INV_y.s3~q\,
	combout => \inst|y~21_combout\);

-- Location: FF_X73_Y3_N38
\inst|y.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~21_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s4~q\);

-- Location: LABCELL_X73_Y3_N33
\inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = ( \inst|y.s5~q\ & ( \inst|y.s4~q\ ) ) # ( !\inst|y.s5~q\ & ( \inst|y.s4~q\ ) ) # ( \inst|y.s5~q\ & ( !\inst|y.s4~q\ & ( !\enter~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enter~input_o\,
	datae => \inst|ALT_INV_y.s5~q\,
	dataf => \inst|ALT_INV_y.s4~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X73_Y3_N35
\inst|y.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s5~q\);

-- Location: LABCELL_X73_Y3_N54
\inst|y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~23_combout\ = ( \enter~input_o\ & ( (\inst|y.s6~q\) # (\inst|y.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_y.s5~q\,
	datad => \inst|ALT_INV_y.s6~q\,
	dataf => \ALT_INV_enter~input_o\,
	combout => \inst|y~23_combout\);

-- Location: FF_X73_Y3_N56
\inst|y.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s6~q\);

-- Location: LABCELL_X73_Y3_N24
\inst|y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~22_combout\ = ( \inst|y.s6~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	dataf => \inst|ALT_INV_y.s6~q\,
	combout => \inst|y~22_combout\);

-- Location: FF_X73_Y3_N26
\inst|y.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s7~q\);

-- Location: LABCELL_X73_Y3_N57
\inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = ( \enter~input_o\ & ( \inst|y.s7~q\ ) ) # ( !\enter~input_o\ & ( (\inst|y.s8~q\) # (\inst|y.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y.s7~q\,
	datad => \inst|ALT_INV_y.s8~q\,
	dataf => \ALT_INV_enter~input_o\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X73_Y3_N59
\inst|y.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s8~q\);

-- Location: LABCELL_X75_Y3_N24
\inst|y~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~19_combout\ = ( \inst|y.s9~q\ & ( \inst|y.s8~q\ & ( \enter~input_o\ ) ) ) # ( !\inst|y.s9~q\ & ( \inst|y.s8~q\ & ( \enter~input_o\ ) ) ) # ( \inst|y.s9~q\ & ( !\inst|y.s8~q\ & ( \enter~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datae => \inst|ALT_INV_y.s9~q\,
	dataf => \inst|ALT_INV_y.s8~q\,
	combout => \inst|y~19_combout\);

-- Location: FF_X75_Y3_N26
\inst|y.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~19_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s9~q\);

-- Location: LABCELL_X75_Y3_N21
\inst|y~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~20_combout\ = ( \inst|y.s9~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enter~input_o\,
	dataf => \inst|ALT_INV_y.s9~q\,
	combout => \inst|y~20_combout\);

-- Location: FF_X75_Y3_N23
\inst|y.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~20_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s10~q\);

-- Location: FF_X75_Y3_N59
\inst|y.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|y.s10~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s11~q\);

-- Location: LABCELL_X75_Y3_N12
\inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = ( \inst|y.s12~q\ & ( \inst|y.s11~q\ ) ) # ( !\inst|y.s12~q\ & ( \inst|y.s11~q\ ) ) # ( \inst|y.s12~q\ & ( !\inst|y.s11~q\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datae => \inst|ALT_INV_y.s12~q\,
	dataf => \inst|ALT_INV_y.s11~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X75_Y3_N14
\inst|y.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s12~q\);

-- Location: LABCELL_X73_Y3_N21
\inst|y~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y~18_combout\ = ( \inst|y.s12~q\ & ( \start~input_o\ ) ) # ( !\inst|y.s12~q\ & ( (\start~input_o\ & \inst|y.s13~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datad => \inst|ALT_INV_y.s13~q\,
	dataf => \inst|ALT_INV_y.s12~q\,
	combout => \inst|y~18_combout\);

-- Location: FF_X73_Y3_N23
\inst|y.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|y~18_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.s13~q\);

-- Location: LABCELL_X74_Y3_N39
\inst|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = ( !\inst|y.s13~q\ & ( !\inst|y.s12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_y.s13~q\,
	dataf => \inst|ALT_INV_y.s12~q\,
	combout => \inst|WideOr6~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\Digito[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(1),
	o => \Digito[1]~input_o\);

-- Location: FF_X74_Y3_N2
\inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(1));

-- Location: IOIBUF_X70_Y0_N35
\Digito[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(2),
	o => \Digito[2]~input_o\);

-- Location: LABCELL_X74_Y3_N12
\inst3|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|q[2]~feeder_combout\ = ( \Digito[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[2]~input_o\,
	combout => \inst3|q[2]~feeder_combout\);

-- Location: FF_X74_Y3_N14
\inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|q[2]~feeder_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(2));

-- Location: IOIBUF_X74_Y0_N41
\Digito[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(0),
	o => \Digito[0]~input_o\);

-- Location: FF_X74_Y3_N35
\inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[0]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(0));

-- Location: IOIBUF_X72_Y0_N52
\Digito[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(3),
	o => \Digito[3]~input_o\);

-- Location: FF_X74_Y3_N11
\inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(3));

-- Location: LABCELL_X75_Y3_N45
\inst10|Despl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Despl~0_combout\ = ( \inst3|q\(3) & ( !\inst3|q\(1) $ (!\inst3|q\(0)) ) ) # ( !\inst3|q\(3) & ( (\inst3|q\(2) & ((!\inst3|q\(1)) # (!\inst3|q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_q\(1),
	datac => \inst3|ALT_INV_q\(2),
	datad => \inst3|ALT_INV_q\(0),
	dataf => \inst3|ALT_INV_q\(3),
	combout => \inst10|Despl~0_combout\);

-- Location: FF_X75_Y3_N47
\inst10|Despl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Despl~0_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Despl\(1));

-- Location: FF_X74_Y3_N26
\inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(1));

-- Location: LABCELL_X73_Y3_N0
\inst1|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|q[1]~feeder_combout\ = ( \Digito[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[1]~input_o\,
	combout => \inst1|q[1]~feeder_combout\);

-- Location: FF_X73_Y3_N2
\inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|q[1]~feeder_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|q\(1));

-- Location: FF_X74_Y3_N38
\inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[0]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(0));

-- Location: LABCELL_X74_Y3_N42
\inst2|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|q[2]~feeder_combout\ = ( \Digito[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[2]~input_o\,
	combout => \inst2|q[2]~feeder_combout\);

-- Location: FF_X74_Y3_N44
\inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|q[2]~feeder_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(2));

-- Location: FF_X74_Y3_N53
\inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(3));

-- Location: LABCELL_X75_Y3_N30
\inst8|Despl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Despl~2_combout\ = ( \inst2|q\(3) & ( (!\inst2|q\(0) & ((!\inst2|q\(1)) # (\inst2|q\(2)))) # (\inst2|q\(0) & (!\inst2|q\(1) $ (!\inst2|q\(2)))) ) ) # ( !\inst2|q\(3) & ( (!\inst2|q\(0) & (\inst2|q\(1) & \inst2|q\(2))) # (\inst2|q\(0) & 
-- (!\inst2|q\(1) $ (!\inst2|q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111100000000110011110011000011111111001100001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_q\(0),
	datac => \inst2|ALT_INV_q\(1),
	datad => \inst2|ALT_INV_q\(2),
	dataf => \inst2|ALT_INV_q\(3),
	combout => \inst8|Despl~2_combout\);

-- Location: FF_X75_Y3_N31
\inst8|Despl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst8|Despl~2_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Despl\(2));

-- Location: FF_X73_Y3_N5
\inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[0]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|q\(0));

-- Location: LABCELL_X75_Y3_N3
\inst8|Despl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Despl~1_combout\ = ( \inst2|q\(3) & ( !\inst2|q\(0) $ (!\inst2|q\(1)) ) ) # ( !\inst2|q\(3) & ( (\inst2|q\(2) & ((!\inst2|q\(0)) # (!\inst2|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_q\(0),
	datac => \inst2|ALT_INV_q\(2),
	datad => \inst2|ALT_INV_q\(1),
	dataf => \inst2|ALT_INV_q\(3),
	combout => \inst8|Despl~1_combout\);

-- Location: FF_X75_Y3_N4
\inst8|Despl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst8|Despl~1_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Despl\(1));

-- Location: FF_X73_Y3_N13
\inst1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[2]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|q\(2));

-- Location: LABCELL_X75_Y3_N0
\inst8|Despl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Despl~0_combout\ = ( \inst2|q\(3) & ( (!\inst2|q\(0) & ((\inst2|q\(2)) # (\inst2|q\(1)))) ) ) # ( !\inst2|q\(3) & ( (!\inst2|q\(0) & ((!\inst2|q\(2)) # (\inst2|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_q\(0),
	datac => \inst2|ALT_INV_q\(1),
	datad => \inst2|ALT_INV_q\(2),
	dataf => \inst2|ALT_INV_q\(3),
	combout => \inst8|Despl~0_combout\);

-- Location: FF_X75_Y3_N1
\inst8|Despl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst8|Despl~0_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Despl\(0));

-- Location: LABCELL_X73_Y3_N12
\inst18|S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|S[0]~0_combout\ = ( \inst1|q\(2) & ( \inst8|Despl\(0) & ( (\inst8|Despl\(2) & (\inst1|q\(0) & (!\inst1|q\(1) $ (\inst8|Despl\(1))))) ) ) ) # ( !\inst1|q\(2) & ( \inst8|Despl\(0) & ( (!\inst8|Despl\(2) & (\inst1|q\(0) & (!\inst1|q\(1) $ 
-- (\inst8|Despl\(1))))) ) ) ) # ( \inst1|q\(2) & ( !\inst8|Despl\(0) & ( (\inst8|Despl\(2) & (!\inst1|q\(0) & (!\inst1|q\(1) $ (\inst8|Despl\(1))))) ) ) ) # ( !\inst1|q\(2) & ( !\inst8|Despl\(0) & ( (!\inst8|Despl\(2) & (!\inst1|q\(0) & (!\inst1|q\(1) $ 
-- (\inst8|Despl\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_q\(1),
	datab => \inst8|ALT_INV_Despl\(2),
	datac => \inst1|ALT_INV_q\(0),
	datad => \inst8|ALT_INV_Despl\(1),
	datae => \inst1|ALT_INV_q\(2),
	dataf => \inst8|ALT_INV_Despl\(0),
	combout => \inst18|S[0]~0_combout\);

-- Location: FF_X73_Y3_N17
\inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst|y.s0~q\,
	sload => VCC,
	ena => \inst|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|q\(3));

-- Location: LABCELL_X75_Y3_N42
\inst10|Despl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Despl~1_combout\ = ( \inst3|q\(3) & ( (!\inst3|q\(0) & ((\inst3|q\(2)) # (\inst3|q\(1)))) ) ) # ( !\inst3|q\(3) & ( (!\inst3|q\(0) & ((!\inst3|q\(2)) # (\inst3|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_q\(1),
	datab => \inst3|ALT_INV_q\(0),
	datad => \inst3|ALT_INV_q\(2),
	dataf => \inst3|ALT_INV_q\(3),
	combout => \inst10|Despl~1_combout\);

-- Location: FF_X75_Y3_N43
\inst10|Despl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Despl~1_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Despl\(0));

-- Location: LABCELL_X75_Y3_N33
\inst8|Despl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Despl~3_combout\ = ( \inst2|q\(3) & ( (!\inst2|q\(0) & ((\inst2|q\(1)) # (\inst2|q\(2)))) # (\inst2|q\(0) & ((!\inst2|q\(2)) # (!\inst2|q\(1)))) ) ) # ( !\inst2|q\(3) & ( (\inst2|q\(0) & (\inst2|q\(2) & \inst2|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111111111000011111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_q\(0),
	datac => \inst2|ALT_INV_q\(2),
	datad => \inst2|ALT_INV_q\(1),
	dataf => \inst2|ALT_INV_q\(3),
	combout => \inst8|Despl~3_combout\);

-- Location: FF_X75_Y3_N35
\inst8|Despl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst8|Despl~3_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|Despl\(3));

-- Location: LABCELL_X74_Y3_N21
\inst18|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|S[0]~1_combout\ = ( \inst8|Despl\(3) & ( (\inst1|q\(3) & (!\inst10|Despl\(0) $ (\inst2|q\(0)))) ) ) # ( !\inst8|Despl\(3) & ( (!\inst1|q\(3) & (!\inst10|Despl\(0) $ (\inst2|q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_q\(3),
	datac => \inst10|ALT_INV_Despl\(0),
	datad => \inst2|ALT_INV_q\(0),
	dataf => \inst8|ALT_INV_Despl\(3),
	combout => \inst18|S[0]~1_combout\);

-- Location: LABCELL_X75_Y3_N39
\inst10|Despl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Despl~3_combout\ = ( \inst3|q\(3) & ( (!\inst3|q\(1) & ((\inst3|q\(0)) # (\inst3|q\(2)))) # (\inst3|q\(1) & ((!\inst3|q\(2)) # (!\inst3|q\(0)))) ) ) # ( !\inst3|q\(3) & ( (\inst3|q\(1) & (\inst3|q\(2) & \inst3|q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111111110100101111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_q\(1),
	datac => \inst3|ALT_INV_q\(2),
	datad => \inst3|ALT_INV_q\(0),
	dataf => \inst3|ALT_INV_q\(3),
	combout => \inst10|Despl~3_combout\);

-- Location: FF_X75_Y3_N41
\inst10|Despl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Despl~3_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Despl\(3));

-- Location: LABCELL_X75_Y3_N36
\inst10|Despl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Despl~2_combout\ = ( \inst3|q\(3) & ( (!\inst3|q\(1) & ((!\inst3|q\(0)) # (\inst3|q\(2)))) # (\inst3|q\(1) & (!\inst3|q\(0) $ (!\inst3|q\(2)))) ) ) # ( !\inst3|q\(3) & ( (!\inst3|q\(1) & (\inst3|q\(0) & \inst3|q\(2))) # (\inst3|q\(1) & 
-- (!\inst3|q\(0) $ (!\inst3|q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000100010110011010011001111011101001100111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_q\(1),
	datab => \inst3|ALT_INV_q\(0),
	datad => \inst3|ALT_INV_q\(2),
	dataf => \inst3|ALT_INV_q\(3),
	combout => \inst10|Despl~2_combout\);

-- Location: FF_X75_Y3_N38
\inst10|Despl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Despl~2_combout\,
	clrn => \inst|y.s0~q\,
	ena => \inst|y.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Despl\(2));

-- Location: LABCELL_X75_Y3_N18
\inst18|S[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|S[0]~2_combout\ = ( \inst2|q\(3) & ( (\inst10|Despl\(3) & (!\inst2|q\(2) $ (\inst10|Despl\(2)))) ) ) # ( !\inst2|q\(3) & ( (!\inst10|Despl\(3) & (!\inst2|q\(2) $ (\inst10|Despl\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Despl\(3),
	datac => \inst2|ALT_INV_q\(2),
	datad => \inst10|ALT_INV_Despl\(2),
	dataf => \inst2|ALT_INV_q\(3),
	combout => \inst18|S[0]~2_combout\);

-- Location: LABCELL_X74_Y3_N57
\inst18|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|S\(0) = ( \inst18|S[0]~1_combout\ & ( \inst18|S[0]~2_combout\ & ( (!\inst|WideOr6~0_combout\ & (\inst18|S[0]~0_combout\ & (!\inst10|Despl\(1) $ (\inst2|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Despl\(1),
	datab => \inst2|ALT_INV_q\(1),
	datac => \inst|ALT_INV_WideOr6~0_combout\,
	datad => \inst18|ALT_INV_S[0]~0_combout\,
	datae => \inst18|ALT_INV_S[0]~1_combout\,
	dataf => \inst18|ALT_INV_S[0]~2_combout\,
	combout => \inst18|S\(0));

-- Location: LABCELL_X75_Y3_N48
\inst|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr5~combout\ = ( \inst|y.s10~q\ & ( \inst|y.s12~q\ ) ) # ( !\inst|y.s10~q\ & ( \inst|y.s12~q\ ) ) # ( \inst|y.s10~q\ & ( !\inst|y.s12~q\ ) ) # ( !\inst|y.s10~q\ & ( !\inst|y.s12~q\ & ( (((\inst|y.s11~q\) # (\inst|y.s9~q\)) # (\inst|y.s13~q\)) # 
-- (\inst|y.s8~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y.s8~q\,
	datab => \inst|ALT_INV_y.s13~q\,
	datac => \inst|ALT_INV_y.s9~q\,
	datad => \inst|ALT_INV_y.s11~q\,
	datae => \inst|ALT_INV_y.s10~q\,
	dataf => \inst|ALT_INV_y.s12~q\,
	combout => \inst|WideOr5~combout\);

-- Location: LABCELL_X73_Y3_N6
\inst|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr6~combout\ = ( \inst|y.s4~q\ & ( \inst|y.s5~q\ ) ) # ( !\inst|y.s4~q\ & ( \inst|y.s5~q\ ) ) # ( \inst|y.s4~q\ & ( !\inst|y.s5~q\ ) ) # ( !\inst|y.s4~q\ & ( !\inst|y.s5~q\ & ( (((\inst|y.s12~q\) # (\inst|y.s7~q\)) # (\inst|y.s6~q\)) # 
-- (\inst|y.s13~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y.s13~q\,
	datab => \inst|ALT_INV_y.s6~q\,
	datac => \inst|ALT_INV_y.s7~q\,
	datad => \inst|ALT_INV_y.s12~q\,
	datae => \inst|ALT_INV_y.s4~q\,
	dataf => \inst|ALT_INV_y.s5~q\,
	combout => \inst|WideOr6~combout\);

-- Location: LABCELL_X74_Y3_N3
\inst|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = ( \inst|y.s7~q\ & ( \inst|y.s6~q\ ) ) # ( !\inst|y.s7~q\ & ( \inst|y.s6~q\ ) ) # ( \inst|y.s7~q\ & ( !\inst|y.s6~q\ ) ) # ( !\inst|y.s7~q\ & ( !\inst|y.s6~q\ & ( (((\inst|y.s10~q\) # (\inst|y.s11~q\)) # (\inst|y.s2~q\)) # 
-- (\inst|y.s3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y.s3~q\,
	datab => \inst|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_y.s11~q\,
	datad => \inst|ALT_INV_y.s10~q\,
	datae => \inst|ALT_INV_y.s7~q\,
	dataf => \inst|ALT_INV_y.s6~q\,
	combout => \inst|WideOr7~combout\);

-- Location: LABCELL_X74_Y3_N18
\inst|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr8~0_combout\ = ( !\inst|y.s6~q\ & ( (!\inst|y.s2~q\ & (!\inst|y.s4~q\ & \inst|y.s0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_y.s2~q\,
	datac => \inst|ALT_INV_y.s4~q\,
	datad => \inst|ALT_INV_y.s0~q\,
	dataf => \inst|ALT_INV_y.s6~q\,
	combout => \inst|WideOr8~0_combout\);

-- Location: LABCELL_X75_Y3_N9
\inst|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WideOr8~combout\ = ( \inst|y.s10~q\ & ( \inst|y.s12~q\ ) ) # ( !\inst|y.s10~q\ & ( \inst|y.s12~q\ ) ) # ( \inst|y.s10~q\ & ( !\inst|y.s12~q\ ) ) # ( !\inst|y.s10~q\ & ( !\inst|y.s12~q\ & ( (!\inst|WideOr8~0_combout\) # (\inst|y.s8~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y.s8~q\,
	datac => \inst|ALT_INV_WideOr8~0_combout\,
	datae => \inst|ALT_INV_y.s10~q\,
	dataf => \inst|ALT_INV_y.s12~q\,
	combout => \inst|WideOr8~combout\);

-- Location: LABCELL_X85_Y29_N3
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


