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
-- Generated on "09/07/2019 10:26:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Deslocador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Deslocador_vhd_vec_tst IS
END Deslocador_vhd_vec_tst;
ARCHITECTURE Deslocador_arch OF Deslocador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DESLOCA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ENTRA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Deslocador
	PORT (
	DESLOCA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ENTRA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Deslocador
	PORT MAP (
-- list connections between master ports and signals
	DESLOCA => DESLOCA,
	ENTRA => ENTRA,
	SAIDA => SAIDA
	);
-- ENTRA[7]
t_prcs_ENTRA_7: PROCESS
BEGIN
	ENTRA(7) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(7) <= '1';
	WAIT FOR 240000 ps;
	ENTRA(7) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(7) <= '1';
	WAIT FOR 240000 ps;
	ENTRA(7) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(7) <= '1';
WAIT;
END PROCESS t_prcs_ENTRA_7;
-- ENTRA[6]
t_prcs_ENTRA_6: PROCESS
BEGIN
	ENTRA(6) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(6) <= '1';
	WAIT FOR 160000 ps;
	ENTRA(6) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(6) <= '1';
	WAIT FOR 240000 ps;
	ENTRA(6) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(6) <= '1';
WAIT;
END PROCESS t_prcs_ENTRA_6;
-- ENTRA[5]
t_prcs_ENTRA_5: PROCESS
BEGIN
	ENTRA(5) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '0';
	WAIT FOR 240000 ps;
	ENTRA(5) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(5) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(5) <= '1';
WAIT;
END PROCESS t_prcs_ENTRA_5;
-- ENTRA[4]
t_prcs_ENTRA_4: PROCESS
BEGIN
	ENTRA(4) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(4) <= '1';
	WAIT FOR 160000 ps;
	ENTRA(4) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(4) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(4) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(4) <= '1';
	WAIT FOR 320000 ps;
	ENTRA(4) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(4) <= '1';
WAIT;
END PROCESS t_prcs_ENTRA_4;
-- ENTRA[3]
t_prcs_ENTRA_3: PROCESS
BEGIN
	ENTRA(3) <= '1';
	WAIT FOR 320000 ps;
	ENTRA(3) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(3) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(3) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(3) <= '1';
	WAIT FOR 160000 ps;
	ENTRA(3) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(3) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRA_3;
-- ENTRA[2]
t_prcs_ENTRA_2: PROCESS
BEGIN
	ENTRA(2) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(2) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(2) <= '0';
	WAIT FOR 400000 ps;
	ENTRA(2) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(2) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(2) <= '1';
	WAIT FOR 160000 ps;
	ENTRA(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRA_2;
-- ENTRA[1]
t_prcs_ENTRA_1: PROCESS
BEGIN
	ENTRA(1) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(1) <= '0';
	WAIT FOR 160000 ps;
	ENTRA(1) <= '1';
	WAIT FOR 240000 ps;
	ENTRA(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRA_1;
-- ENTRA[0]
t_prcs_ENTRA_0: PROCESS
BEGIN
	ENTRA(0) <= '0';
	WAIT FOR 400000 ps;
	ENTRA(0) <= '1';
	WAIT FOR 240000 ps;
	ENTRA(0) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(0) <= '1';
	WAIT FOR 80000 ps;
	ENTRA(0) <= '0';
	WAIT FOR 80000 ps;
	ENTRA(0) <= '1';
WAIT;
END PROCESS t_prcs_ENTRA_0;
-- DESLOCA[1]
t_prcs_DESLOCA_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		DESLOCA(1) <= '0';
		WAIT FOR 160000 ps;
		DESLOCA(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	DESLOCA(1) <= '0';
WAIT;
END PROCESS t_prcs_DESLOCA_1;
-- DESLOCA[0]
t_prcs_DESLOCA_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		DESLOCA(0) <= '0';
		WAIT FOR 80000 ps;
		DESLOCA(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	DESLOCA(0) <= '0';
WAIT;
END PROCESS t_prcs_DESLOCA_0;
END Deslocador_arch;
