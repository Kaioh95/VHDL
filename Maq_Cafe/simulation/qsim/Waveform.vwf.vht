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
-- Generated on "08/25/2019 20:29:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maq_cafe
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maq_cafe_vhd_vec_tst IS
END maq_cafe_vhd_vec_tst;
ARCHITECTURE maq_cafe_arch OF maq_cafe_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL b4 : STD_LOGIC;
SIGNAL b5 : STD_LOGIC;
SIGNAL b6 : STD_LOGIC;
SIGNAL b7 : STD_LOGIC;
SIGNAL b8 : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL H : STD_LOGIC;
SIGNAL k : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT maq_cafe
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	b3 : IN STD_LOGIC;
	b4 : IN STD_LOGIC;
	b5 : IN STD_LOGIC;
	b6 : IN STD_LOGIC;
	b7 : IN STD_LOGIC;
	b8 : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	D : OUT STD_LOGIC;
	E : OUT STD_LOGIC;
	F : OUT STD_LOGIC;
	G : OUT STD_LOGIC;
	H : OUT STD_LOGIC;
	k : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : maq_cafe
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	b1 => b1,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b5 => b5,
	b6 => b6,
	b7 => b7,
	b8 => b8,
	C => C,
	D => D,
	E => E,
	F => F,
	G => G,
	H => H,
	k => k
	);

-- b1
t_prcs_b1: PROCESS
BEGIN
	b1 <= '0';
WAIT;
END PROCESS t_prcs_b1;

-- b2
t_prcs_b2: PROCESS
BEGIN
	b2 <= '0';
WAIT;
END PROCESS t_prcs_b2;

-- b3
t_prcs_b3: PROCESS
BEGIN
	b3 <= '0';
WAIT;
END PROCESS t_prcs_b3;

-- b4
t_prcs_b4: PROCESS
BEGIN
	b4 <= '1';
	WAIT FOR 50000 ps;
	b4 <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 8
	LOOP
		b4 <= '1';
		WAIT FOR 50000 ps;
		b4 <= '0';
		WAIT FOR 50000 ps;
	END LOOP;
	b4 <= '1';
	WAIT FOR 50000 ps;
	b4 <= '0';
WAIT;
END PROCESS t_prcs_b4;

-- b5
t_prcs_b5: PROCESS
BEGIN
	b5 <= '0';
WAIT;
END PROCESS t_prcs_b5;

-- b6
t_prcs_b6: PROCESS
BEGIN
	b6 <= '0';
WAIT;
END PROCESS t_prcs_b6;

-- b7
t_prcs_b7: PROCESS
BEGIN
LOOP
	b7 <= '0';
	WAIT FOR 50000 ps;
	b7 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b7;

-- b8
t_prcs_b8: PROCESS
BEGIN
	b8 <= '0';
WAIT;
END PROCESS t_prcs_b8;
-- k[2]
t_prcs_k_2: PROCESS
BEGIN
	k(2) <= 'Z';
WAIT;
END PROCESS t_prcs_k_2;
-- k[1]
t_prcs_k_1: PROCESS
BEGIN
	k(1) <= 'Z';
WAIT;
END PROCESS t_prcs_k_1;
-- k[0]
t_prcs_k_0: PROCESS
BEGIN
	k(0) <= 'Z';
WAIT;
END PROCESS t_prcs_k_0;
END maq_cafe_arch;
