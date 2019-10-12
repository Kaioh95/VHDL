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
-- Generated on "10/01/2019 18:43:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          latch_rs
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY latch_rs_vhd_vec_tst IS
END latch_rs_vhd_vec_tst;
ARCHITECTURE latch_rs_arch OF latch_rs_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL n_q : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL r : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT latch_rs
	PORT (
	clk : IN STD_LOGIC;
	n_q : OUT STD_LOGIC;
	q : OUT STD_LOGIC;
	r : IN STD_LOGIC;
	s : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : latch_rs
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	n_q => n_q,
	q => q,
	r => r,
	s => s
	);

-- s
t_prcs_s: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		s <= '0';
		WAIT FOR 80000 ps;
		s <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	s <= '0';
WAIT;
END PROCESS t_prcs_s;

-- r
t_prcs_r: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		r <= '0';
		WAIT FOR 40000 ps;
		r <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	r <= '0';
WAIT;
END PROCESS t_prcs_r;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clk <= '0';
		WAIT FOR 160000 ps;
		clk <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END latch_rs_arch;
