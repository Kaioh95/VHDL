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
-- Generated on "10/01/2019 18:55:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflop_jk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflop_jk_vhd_vec_tst IS
END flipflop_jk_vhd_vec_tst;
ARCHITECTURE flipflop_jk_arch OF flipflop_jk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL n_q : STD_LOGIC;
SIGNAL q : STD_LOGIC;
COMPONENT flipflop_jk
	PORT (
	clk : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	n_q : OUT STD_LOGIC;
	q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflop_jk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	j => j,
	k => k,
	n_q => n_q,
	q => q
	);

-- j
t_prcs_j: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		j <= '0';
		WAIT FOR 40000 ps;
		j <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	j <= '0';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		k <= '0';
		WAIT FOR 80000 ps;
		k <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	k <= '0';
WAIT;
END PROCESS t_prcs_k;

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
END flipflop_jk_arch;
