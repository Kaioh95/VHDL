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
-- Generated on "08/25/2019 20:12:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_1x4_we
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_1x4_we_vhd_vec_tst IS
END demux_1x4_we_vhd_vec_tst;
ARCHITECTURE demux_1x4_we_arch OF demux_1x4_we_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL o0 : STD_LOGIC;
SIGNAL o1 : STD_LOGIC;
SIGNAL o2 : STD_LOGIC;
SIGNAL o3 : STD_LOGIC;
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
COMPONENT demux_1x4_we
	PORT (
	a : IN STD_LOGIC;
	o0 : OUT STD_LOGIC;
	o1 : OUT STD_LOGIC;
	o2 : OUT STD_LOGIC;
	o3 : OUT STD_LOGIC;
	s0 : IN STD_LOGIC;
	s1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demux_1x4_we
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	o0 => o0,
	o1 => o1,
	o2 => o2,
	o3 => o3,
	s0 => s0,
	s1 => s1
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- s0
t_prcs_s0: PROCESS
BEGIN
LOOP
	s0 <= '0';
	WAIT FOR 50000 ps;
	s0 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s0;

-- s1
t_prcs_s1: PROCESS
BEGIN
LOOP
	s1 <= '0';
	WAIT FOR 100000 ps;
	s1 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s1;
END demux_1x4_we_arch;
