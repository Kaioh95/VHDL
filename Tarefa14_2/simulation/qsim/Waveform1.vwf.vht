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
-- Generated on "09/06/2019 20:47:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ComponenteLogico
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ComponenteLogico_vhd_vec_tst IS
END ComponenteLogico_vhd_vec_tst;
ARCHITECTURE ComponenteLogico_arch OF ComponenteLogico_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ai : STD_LOGIC;
SIGNAL Bi : STD_LOGIC;
SIGNAL Mi : STD_LOGIC;
SIGNAL S0i : STD_LOGIC;
SIGNAL S1i : STD_LOGIC;
SIGNAL Xi : STD_LOGIC;
SIGNAL Yi : STD_LOGIC;
COMPONENT ComponenteLogico
	PORT (
	Ai : IN STD_LOGIC;
	Bi : IN STD_LOGIC;
	Mi : IN STD_LOGIC;
	S0i : IN STD_LOGIC;
	S1i : IN STD_LOGIC;
	Xi : OUT STD_LOGIC;
	Yi : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ComponenteLogico
	PORT MAP (
-- list connections between master ports and signals
	Ai => Ai,
	Bi => Bi,
	Mi => Mi,
	S0i => S0i,
	S1i => S1i,
	Xi => Xi,
	Yi => Yi
	);

-- Ai
t_prcs_Ai: PROCESS
BEGIN
	Ai <= '0';
	WAIT FOR 400000 ps;
	Ai <= '1';
	WAIT FOR 400000 ps;
	Ai <= '0';
WAIT;
END PROCESS t_prcs_Ai;

-- Bi
t_prcs_Bi: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Bi <= '0';
		WAIT FOR 200000 ps;
		Bi <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	Bi <= '0';
WAIT;
END PROCESS t_prcs_Bi;

-- Mi
t_prcs_Mi: PROCESS
BEGIN
LOOP
	Mi <= '0';
	WAIT FOR 100000 ps;
	Mi <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Mi;

-- S1i
t_prcs_S1i: PROCESS
BEGIN
LOOP
	S1i <= '0';
	WAIT FOR 50000 ps;
	S1i <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S1i;

-- S0i
t_prcs_S0i: PROCESS
BEGIN
LOOP
	S0i <= '0';
	WAIT FOR 25000 ps;
	S0i <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S0i;
END ComponenteLogico_arch;
