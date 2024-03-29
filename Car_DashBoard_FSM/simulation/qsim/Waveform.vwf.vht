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
-- Generated on "11/02/2019 19:30:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          car_dashboard
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY car_dashboard_vhd_vec_tst IS
END car_dashboard_vhd_vec_tst;
ARCHITECTURE car_dashboard_arch OF car_dashboard_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT car_dashboard
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	data : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : car_dashboard
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	data => data
	);

-- bt
t_prcs_bt: PROCESS
BEGIN
	bt <= '0';
	WAIT FOR 80000 ps;
	bt <= '1';
	WAIT FOR 120000 ps;
	bt <= '0';
	WAIT FOR 80000 ps;
	bt <= '1';
	WAIT FOR 120000 ps;
	bt <= '0';
	WAIT FOR 80000 ps;
	bt <= '1';
	WAIT FOR 120000 ps;
	bt <= '0';
	WAIT FOR 80000 ps;
	bt <= '1';
	WAIT FOR 120000 ps;
	bt <= '0';
	WAIT FOR 40000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
	WAIT FOR 40000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;

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
END car_dashboard_arch;
