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
-- Generated on "09/05/2019 18:13:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Comp_5bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Comp_5bits_vhd_vec_tst IS
END Comp_5bits_vhd_vec_tst;
ARCHITECTURE Comp_5bits_arch OF Comp_5bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT Comp_5bits
	PORT (
	a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	x : OUT STD_LOGIC;
	y : OUT STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Comp_5bits
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	x => x,
	y => y,
	z => z
	);
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 240000 ps;
	a(4) <= '1';
	WAIT FOR 240000 ps;
	a(4) <= '0';
	WAIT FOR 160000 ps;
	a(4) <= '1';
	WAIT FOR 240000 ps;
	a(4) <= '0';
	WAIT FOR 80000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 160000 ps;
	a(3) <= '1';
	WAIT FOR 160000 ps;
	a(3) <= '0';
	WAIT FOR 400000 ps;
	a(3) <= '1';
	WAIT FOR 160000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
	WAIT FOR 160000 ps;
	a(2) <= '0';
	WAIT FOR 80000 ps;
	a(2) <= '1';
	WAIT FOR 80000 ps;
	a(2) <= '0';
	WAIT FOR 80000 ps;
	a(2) <= '1';
	WAIT FOR 80000 ps;
	a(2) <= '0';
	WAIT FOR 160000 ps;
	a(2) <= '1';
	WAIT FOR 80000 ps;
	a(2) <= '0';
	WAIT FOR 80000 ps;
	a(2) <= '1';
	WAIT FOR 80000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '1';
	WAIT FOR 80000 ps;
	a(1) <= '0';
	WAIT FOR 160000 ps;
	a(1) <= '1';
	WAIT FOR 160000 ps;
	a(1) <= '0';
	WAIT FOR 80000 ps;
	a(1) <= '1';
	WAIT FOR 80000 ps;
	a(1) <= '0';
	WAIT FOR 80000 ps;
	a(1) <= '1';
	WAIT FOR 320000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '1';
	WAIT FOR 80000 ps;
	a(0) <= '0';
	WAIT FOR 80000 ps;
	a(0) <= '1';
	WAIT FOR 80000 ps;
	a(0) <= '0';
	WAIT FOR 80000 ps;
	a(0) <= '1';
	WAIT FOR 80000 ps;
	a(0) <= '0';
	WAIT FOR 240000 ps;
	a(0) <= '1';
	WAIT FOR 240000 ps;
	a(0) <= '0';
	WAIT FOR 80000 ps;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
	WAIT FOR 240000 ps;
	b(4) <= '1';
	WAIT FOR 320000 ps;
	b(4) <= '0';
	WAIT FOR 80000 ps;
	b(4) <= '1';
	WAIT FOR 80000 ps;
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '1';
	WAIT FOR 400000 ps;
	b(3) <= '0';
	WAIT FOR 160000 ps;
	b(3) <= '1';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 80000 ps;
	b(2) <= '1';
	WAIT FOR 80000 ps;
	b(2) <= '0';
	WAIT FOR 80000 ps;
	b(2) <= '1';
	WAIT FOR 320000 ps;
	b(2) <= '0';
	WAIT FOR 80000 ps;
	b(2) <= '1';
	WAIT FOR 80000 ps;
	b(2) <= '0';
	WAIT FOR 80000 ps;
	b(2) <= '1';
	WAIT FOR 80000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 160000 ps;
	b(1) <= '1';
	WAIT FOR 240000 ps;
	b(1) <= '0';
	WAIT FOR 400000 ps;
	b(1) <= '1';
	WAIT FOR 80000 ps;
	b(1) <= '0';
	WAIT FOR 80000 ps;
	b(1) <= '1';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '1';
	WAIT FOR 160000 ps;
	b(0) <= '0';
	WAIT FOR 160000 ps;
	b(0) <= '1';
	WAIT FOR 160000 ps;
	b(0) <= '0';
	WAIT FOR 80000 ps;
	b(0) <= '1';
	WAIT FOR 400000 ps;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;
END Comp_5bits_arch;
