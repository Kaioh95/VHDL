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
-- Generated on "10/12/2019 23:13:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EntidadePrincipal
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EntidadePrincipal_vhd_vec_tst IS
END EntidadePrincipal_vhd_vec_tst;
ARCHITECTURE EntidadePrincipal_arch OF EntidadePrincipal_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rw : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT EntidadePrincipal
	PORT (
	c : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rw : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : EntidadePrincipal
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	clk => clk,
	entrada => entrada,
	rw => rw,
	saida => saida
	);
-- c[2]
t_prcs_c_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		c(2) <= '0';
		WAIT FOR 160000 ps;
		c(2) <= '1';
		WAIT FOR 160000 ps;
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
	FOR i IN 1 TO 12
	LOOP
		c(0) <= '0';
		WAIT FOR 40000 ps;
		c(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	c(0) <= '0';
WAIT;
END PROCESS t_prcs_c_0;

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

-- rw
t_prcs_rw: PROCESS
BEGIN
	rw <= '1';
WAIT;
END PROCESS t_prcs_rw;
END EntidadePrincipal_arch;
