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
-- Generated on "11/02/2019 20:09:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fsm_mealy
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_mealy_vhd_vec_tst IS
END fsm_mealy_vhd_vec_tst;
ARCHITECTURE fsm_mealy_arch OF fsm_mealy_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT fsm_mealy
	PORT (
	a : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	x : OUT STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm_mealy
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	clk => clk,
	x => x,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 80000 ps;
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		a <= '0';
		WAIT FOR 40000 ps;
		a <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 80000 ps;
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		a <= '0';
		WAIT FOR 40000 ps;
		a <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 90000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

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
END fsm_mealy_arch;
