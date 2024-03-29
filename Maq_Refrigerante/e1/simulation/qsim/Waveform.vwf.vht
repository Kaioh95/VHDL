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
-- Generated on "11/03/2019 20:02:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          rtl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rtl_vhd_vec_tst IS
END rtl_vhd_vec_tst;
ARCHITECTURE rtl_arch OF rtl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL c : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT rtl
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	c : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d : BUFFER STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : rtl
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	c => c,
	clk => clk,
	d => d,
	s => s
	);
-- s[7]
t_prcs_s_7: PROCESS
BEGIN
	s(7) <= '0';
WAIT;
END PROCESS t_prcs_s_7;
-- s[6]
t_prcs_s_6: PROCESS
BEGIN
	s(6) <= '0';
WAIT;
END PROCESS t_prcs_s_6;
-- s[5]
t_prcs_s_5: PROCESS
BEGIN
	s(5) <= '0';
WAIT;
END PROCESS t_prcs_s_5;
-- s[4]
t_prcs_s_4: PROCESS
BEGIN
	s(4) <= '0';
WAIT;
END PROCESS t_prcs_s_4;
-- s[3]
t_prcs_s_3: PROCESS
BEGIN
	s(3) <= '0';
WAIT;
END PROCESS t_prcs_s_3;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	s(2) <= '1';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '1';
	WAIT FOR 160000 ps;
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 160000 ps;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;

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

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '0';
	WAIT FOR 40000 ps;
	c <= '1';
	WAIT FOR 40000 ps;
	c <= '0';
	WAIT FOR 240000 ps;
	c <= '1';
	WAIT FOR 40000 ps;
	c <= '0';
	WAIT FOR 40000 ps;
	c <= '1';
	WAIT FOR 40000 ps;
	c <= '0';
	WAIT FOR 40000 ps;
	c <= '1';
	WAIT FOR 40000 ps;
	c <= '0';
	WAIT FOR 40000 ps;
	c <= '1';
	WAIT FOR 40000 ps;
	c <= '0';
WAIT;
END PROCESS t_prcs_c;
END rtl_arch;
