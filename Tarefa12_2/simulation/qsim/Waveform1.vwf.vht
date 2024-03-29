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
-- Generated on "09/05/2019 18:43:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MaiorDe3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MaiorDe3_vhd_vec_tst IS
END MaiorDe3_vhd_vec_tst;
ARCHITECTURE MaiorDe3_arch OF MaiorDe3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Amaior : STD_LOGIC;
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bmaior : STD_LOGIC;
SIGNAL c : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cmaior : STD_LOGIC;
COMPONENT MaiorDe3
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Amaior : OUT STD_LOGIC;
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bmaior : OUT STD_LOGIC;
	c : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cmaior : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MaiorDe3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	Amaior => Amaior,
	b => b,
	Bmaior => Bmaior,
	c => c,
	Cmaior => Cmaior
	);
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
	WAIT FOR 320000 ps;
	a(7) <= '1';
	WAIT FOR 320000 ps;
	a(7) <= '0';
	WAIT FOR 320000 ps;
	a(7) <= '1';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
	WAIT FOR 320000 ps;
	a(6) <= '1';
	WAIT FOR 320000 ps;
	a(6) <= '0';
	WAIT FOR 320000 ps;
	a(6) <= '1';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
	WAIT FOR 320000 ps;
	a(5) <= '1';
	WAIT FOR 320000 ps;
	a(5) <= '0';
	WAIT FOR 320000 ps;
	a(5) <= '1';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 320000 ps;
	a(4) <= '1';
	WAIT FOR 320000 ps;
	a(4) <= '0';
	WAIT FOR 320000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 320000 ps;
	a(3) <= '1';
	WAIT FOR 320000 ps;
	a(3) <= '0';
	WAIT FOR 320000 ps;
	a(3) <= '1';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 320000 ps;
	a(2) <= '1';
	WAIT FOR 320000 ps;
	a(2) <= '0';
	WAIT FOR 320000 ps;
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 320000 ps;
	a(1) <= '1';
	WAIT FOR 320000 ps;
	a(1) <= '0';
	WAIT FOR 320000 ps;
	a(1) <= '1';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 320000 ps;
	a(0) <= '1';
	WAIT FOR 320000 ps;
	a(0) <= '0';
	WAIT FOR 320000 ps;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(7) <= '0';
		WAIT FOR 160000 ps;
		b(7) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(6) <= '0';
		WAIT FOR 160000 ps;
		b(6) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(5) <= '0';
		WAIT FOR 160000 ps;
		b(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(4) <= '0';
		WAIT FOR 160000 ps;
		b(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(3) <= '0';
		WAIT FOR 160000 ps;
		b(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(2) <= '0';
		WAIT FOR 160000 ps;
		b(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(1) <= '0';
		WAIT FOR 160000 ps;
		b(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(0) <= '0';
		WAIT FOR 160000 ps;
		b(0) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;
-- c[7]
t_prcs_c_7: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(7) <= '0';
		WAIT FOR 80000 ps;
		c(7) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(7) <= '0';
WAIT;
END PROCESS t_prcs_c_7;
-- c[6]
t_prcs_c_6: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(6) <= '0';
		WAIT FOR 80000 ps;
		c(6) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(6) <= '0';
WAIT;
END PROCESS t_prcs_c_6;
-- c[5]
t_prcs_c_5: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(5) <= '0';
		WAIT FOR 80000 ps;
		c(5) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(5) <= '0';
WAIT;
END PROCESS t_prcs_c_5;
-- c[4]
t_prcs_c_4: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(4) <= '0';
		WAIT FOR 80000 ps;
		c(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(4) <= '0';
WAIT;
END PROCESS t_prcs_c_4;
-- c[3]
t_prcs_c_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(3) <= '0';
		WAIT FOR 80000 ps;
		c(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(3) <= '0';
WAIT;
END PROCESS t_prcs_c_3;
-- c[2]
t_prcs_c_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(2) <= '0';
		WAIT FOR 80000 ps;
		c(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(2) <= '0';
WAIT;
END PROCESS t_prcs_c_2;
-- c[1]
t_prcs_c_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(1) <= '0';
		WAIT FOR 80000 ps;
		c(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(1) <= '0';
WAIT;
END PROCESS t_prcs_c_1;
-- c[0]
t_prcs_c_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c(0) <= '0';
		WAIT FOR 80000 ps;
		c(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c(0) <= '0';
WAIT;
END PROCESS t_prcs_c_0;
END MaiorDe3_arch;
