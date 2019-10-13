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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/13/2019 13:18:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cont_sinc_dc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cont_sinc_dc_vhd_vec_tst IS
END cont_sinc_dc_vhd_vec_tst;
ARCHITECTURE cont_sinc_dc_arch OF cont_sinc_dc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cnt : STD_LOGIC;
SIGNAL fc : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ud : STD_LOGIC;
COMPONENT cont_sinc_dc
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cnt : IN STD_LOGIC;
	fc : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ud : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cont_sinc_dc
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	cnt => cnt,
	fc => fc,
	s => s,
	ud => ud
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- ud
t_prcs_ud: PROCESS
BEGIN
	ud <= '0';
	WAIT FOR 120000 ps;
	ud <= '1';
	WAIT FOR 40000 ps;
	ud <= '0';
	WAIT FOR 160000 ps;
	ud <= '1';
WAIT;
END PROCESS t_prcs_ud;

-- cnt
t_prcs_cnt: PROCESS
BEGIN
	cnt <= '1';
	WAIT FOR 160000 ps;
	cnt <= '0';
	WAIT FOR 80000 ps;
	cnt <= '1';
WAIT;
END PROCESS t_prcs_cnt;

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;
END cont_sinc_dc_arch;
