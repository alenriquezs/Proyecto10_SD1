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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/21/2021 00:45:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Proyecto10
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proyecto10_vhd_vec_tst IS
END Proyecto10_vhd_vec_tst;
ARCHITECTURE Proyecto10_arch OF Proyecto10_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Digito : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL e0 : STD_LOGIC;
SIGNAL e1 : STD_LOGIC;
SIGNAL e2 : STD_LOGIC;
SIGNAL enter : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q1Desp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2Desp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL V1 : STD_LOGIC;
SIGNAL V2 : STD_LOGIC;
SIGNAL Valido : STD_LOGIC;
COMPONENT Proyecto10
	PORT (
	clk : IN STD_LOGIC;
	Digito : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	e0 : OUT STD_LOGIC;
	e1 : OUT STD_LOGIC;
	e2 : OUT STD_LOGIC;
	enter : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fin : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q1Desp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2Desp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC;
	start : IN STD_LOGIC;
	V1 : OUT STD_LOGIC;
	V2 : OUT STD_LOGIC;
	Valido : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Proyecto10
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Digito => Digito,
	e0 => e0,
	e1 => e1,
	e2 => e2,
	enter => enter,
	est => est,
	fin => fin,
	Q0 => Q0,
	Q1 => Q1,
	Q1Desp => Q1Desp,
	Q2 => Q2,
	Q2Desp => Q2Desp,
	resetn => resetn,
	start => start,
	V1 => V1,
	V2 => V2,
	Valido => Valido
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 350000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 100000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 70000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 80000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;
-- Digito[3]
t_prcs_Digito_3: PROCESS
BEGIN
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 60000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
	WAIT FOR 40000 ps;
	Digito(3) <= '0';
	WAIT FOR 40000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 85000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
	WAIT FOR 45000 ps;
	Digito(3) <= '0';
	WAIT FOR 45000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 105000 ps;
	Digito(3) <= '1';
	WAIT FOR 45000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 60000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
WAIT;
END PROCESS t_prcs_Digito_3;
-- Digito[2]
t_prcs_Digito_2: PROCESS
BEGIN
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 40000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 90000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 70000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 60000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 45000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 45000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 135000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 60000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
WAIT;
END PROCESS t_prcs_Digito_2;
-- Digito[1]
t_prcs_Digito_1: PROCESS
BEGIN
	Digito(1) <= '0';
	WAIT FOR 45000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 15000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 75000 ps;
	Digito(1) <= '0';
	WAIT FOR 175000 ps;
	Digito(1) <= '1';
	WAIT FOR 50000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 75000 ps;
	Digito(1) <= '0';
	WAIT FOR 120000 ps;
	Digito(1) <= '1';
	WAIT FOR 30000 ps;
	Digito(1) <= '0';
	WAIT FOR 60000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 45000 ps;
	Digito(1) <= '1';
	WAIT FOR 30000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
WAIT;
END PROCESS t_prcs_Digito_1;
-- Digito[0]
t_prcs_Digito_0: PROCESS
BEGIN
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 75000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 75000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 75000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 70000 ps;
	Digito(0) <= '1';
	WAIT FOR 5000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 45000 ps;
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 45000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 45000 ps;
	Digito(0) <= '1';
	WAIT FOR 75000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 45000 ps;
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 45000 ps;
	Digito(0) <= '0';
WAIT;
END PROCESS t_prcs_Digito_0;
END Proyecto10_arch;
