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
-- Generated on "10/13/2019 11:56:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cont_a_dc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cont_a_dc_vhd_vec_tst IS
END cont_a_dc_vhd_vec_tst;
ARCHITECTURE cont_a_dc_arch OF cont_a_dc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dc : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT cont_a_dc
	PORT (
	clk : IN STD_LOGIC;
	dc : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cont_a_dc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dc => dc,
	q => q
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

-- dc
t_prcs_dc: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		dc <= '0';
		WAIT FOR 160000 ps;
		dc <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	dc <= '0';
WAIT;
END PROCESS t_prcs_dc;
END cont_a_dc_arch;
