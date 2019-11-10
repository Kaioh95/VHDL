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
-- Generated on "08/25/2019 20:21:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_1x4_c
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_1x4_c_vhd_vec_tst IS
END demux_1x4_c_vhd_vec_tst;
ARCHITECTURE demux_1x4_c_arch OF demux_1x4_c_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL o : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT demux_1x4_c
	PORT (
	a : IN STD_LOGIC;
	o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : demux_1x4_c
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	o => o,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
WAIT;
END PROCESS t_prcs_a;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 100000 ps;
	s(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 50000 ps;
	s(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
END demux_1x4_c_arch;
