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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/10/2019 15:34:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	M : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	Cin : INOUT std_logic;
	Cout : OUT std_logic;
	SAIDA : OUT std_logic_vector(15 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- A[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[8]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[12]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[13]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_SAIDA : std_logic_vector(15 DOWNTO 0);
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Cin~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \SAIDA[8]~output_o\ : std_logic;
SIGNAL \SAIDA[9]~output_o\ : std_logic;
SIGNAL \SAIDA[10]~output_o\ : std_logic;
SIGNAL \SAIDA[11]~output_o\ : std_logic;
SIGNAL \SAIDA[12]~output_o\ : std_logic;
SIGNAL \SAIDA[13]~output_o\ : std_logic;
SIGNAL \SAIDA[14]~output_o\ : std_logic;
SIGNAL \SAIDA[15]~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Cin~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \l15|Xi~3_combout\ : std_logic;
SIGNAL \l15|Xi~4_combout\ : std_logic;
SIGNAL \l15|Yi~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \l14|Yi~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \l13|Xi~3_combout\ : std_logic;
SIGNAL \l13|Xi~4_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \l11|Yi~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \l10|Xi~3_combout\ : std_logic;
SIGNAL \l10|Xi~4_combout\ : std_logic;
SIGNAL \l10|Yi~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \l7|Xi~3_combout\ : std_logic;
SIGNAL \l7|Xi~4_combout\ : std_logic;
SIGNAL \l7|Yi~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \l5|Xi~3_combout\ : std_logic;
SIGNAL \l5|Xi~4_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \l4|Yi~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \l0|Xi~4_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \l0|Xi~5_combout\ : std_logic;
SIGNAL \l0|Yi~0_combout\ : std_logic;
SIGNAL \o0|cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \l1|Yi~0_combout\ : std_logic;
SIGNAL \l1|Xi~4_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \l1|Xi~5_combout\ : std_logic;
SIGNAL \o1|cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \l2|Yi~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \l2|Xi~3_combout\ : std_logic;
SIGNAL \l2|Xi~4_combout\ : std_logic;
SIGNAL \o2|cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \l3|Xi~3_combout\ : std_logic;
SIGNAL \l3|Xi~4_combout\ : std_logic;
SIGNAL \l3|Yi~0_combout\ : std_logic;
SIGNAL \o3|cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \l4|Xi~3_combout\ : std_logic;
SIGNAL \l4|Xi~4_combout\ : std_logic;
SIGNAL \o4|cout~0_combout\ : std_logic;
SIGNAL \l5|Yi~0_combout\ : std_logic;
SIGNAL \o5|cout~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \l6|Yi~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \l6|Xi~3_combout\ : std_logic;
SIGNAL \l6|Xi~4_combout\ : std_logic;
SIGNAL \o6|cout~0_combout\ : std_logic;
SIGNAL \o7|cout~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \l9|Xi~1_combout\ : std_logic;
SIGNAL \l9|Xi~2_combout\ : std_logic;
SIGNAL \l9|Xi~0_combout\ : std_logic;
SIGNAL \l9|Xi~combout\ : std_logic;
SIGNAL \l9|Yi~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \l8|Yi~combout\ : std_logic;
SIGNAL \o9|cout~0_combout\ : std_logic;
SIGNAL \o10|cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \l11|Xi~3_combout\ : std_logic;
SIGNAL \l11|Xi~4_combout\ : std_logic;
SIGNAL \o11|cout~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \l12|Xi~3_combout\ : std_logic;
SIGNAL \l12|Xi~4_combout\ : std_logic;
SIGNAL \l12|Yi~0_combout\ : std_logic;
SIGNAL \o12|cout~0_combout\ : std_logic;
SIGNAL \l13|Yi~0_combout\ : std_logic;
SIGNAL \o13|cout~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \l14|Xi~3_combout\ : std_logic;
SIGNAL \l14|Xi~4_combout\ : std_logic;
SIGNAL \o14|cout~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \o1|s~combout\ : std_logic;
SIGNAL \o0|s~combout\ : std_logic;
SIGNAL \des~0_combout\ : std_logic;
SIGNAL \shift|Mux15~0_combout\ : std_logic;
SIGNAL \o2|s~combout\ : std_logic;
SIGNAL \shift|Mux14~2_combout\ : std_logic;
SIGNAL \shift|Mux14~3_combout\ : std_logic;
SIGNAL \o3|s~combout\ : std_logic;
SIGNAL \shift|Mux13~2_combout\ : std_logic;
SIGNAL \shift|Mux13~3_combout\ : std_logic;
SIGNAL \o4|s~combout\ : std_logic;
SIGNAL \shift|Mux12~2_combout\ : std_logic;
SIGNAL \shift|Mux12~3_combout\ : std_logic;
SIGNAL \o5|s~combout\ : std_logic;
SIGNAL \shift|Mux11~2_combout\ : std_logic;
SIGNAL \shift|Mux11~3_combout\ : std_logic;
SIGNAL \o6|s~combout\ : std_logic;
SIGNAL \shift|Mux10~2_combout\ : std_logic;
SIGNAL \shift|Mux10~3_combout\ : std_logic;
SIGNAL \o7|s~combout\ : std_logic;
SIGNAL \shift|Mux9~2_combout\ : std_logic;
SIGNAL \shift|Mux9~3_combout\ : std_logic;
SIGNAL \o8|s~combout\ : std_logic;
SIGNAL \shift|Mux8~2_combout\ : std_logic;
SIGNAL \shift|Mux8~3_combout\ : std_logic;
SIGNAL \l9|Xi~3_combout\ : std_logic;
SIGNAL \o8|cout~0_combout\ : std_logic;
SIGNAL \o9|s~combout\ : std_logic;
SIGNAL \shift|Mux7~2_combout\ : std_logic;
SIGNAL \shift|Mux7~3_combout\ : std_logic;
SIGNAL \o10|s~combout\ : std_logic;
SIGNAL \shift|Mux6~2_combout\ : std_logic;
SIGNAL \shift|Mux6~3_combout\ : std_logic;
SIGNAL \o11|s~combout\ : std_logic;
SIGNAL \shift|Mux5~2_combout\ : std_logic;
SIGNAL \shift|Mux5~3_combout\ : std_logic;
SIGNAL \o12|s~combout\ : std_logic;
SIGNAL \shift|Mux4~2_combout\ : std_logic;
SIGNAL \shift|Mux4~3_combout\ : std_logic;
SIGNAL \o13|s~combout\ : std_logic;
SIGNAL \shift|Mux3~2_combout\ : std_logic;
SIGNAL \shift|Mux3~3_combout\ : std_logic;
SIGNAL \o14|s~combout\ : std_logic;
SIGNAL \shift|Mux2~2_combout\ : std_logic;
SIGNAL \shift|Mux2~3_combout\ : std_logic;
SIGNAL \o15|s~combout\ : std_logic;
SIGNAL \shift|Mux1~2_combout\ : std_logic;
SIGNAL \shift|Mux1~3_combout\ : std_logic;
SIGNAL \shift|Mux0~0_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \shift|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_M <= M;
ww_S1 <= S1;
ww_S0 <= S0;
Cout <= ww_Cout;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\shift|ALT_INV_Mux1~3_combout\ <= NOT \shift|Mux1~3_combout\;
\shift|ALT_INV_Mux2~3_combout\ <= NOT \shift|Mux2~3_combout\;
\shift|ALT_INV_Mux3~3_combout\ <= NOT \shift|Mux3~3_combout\;
\shift|ALT_INV_Mux4~3_combout\ <= NOT \shift|Mux4~3_combout\;
\shift|ALT_INV_Mux5~3_combout\ <= NOT \shift|Mux5~3_combout\;
\shift|ALT_INV_Mux6~3_combout\ <= NOT \shift|Mux6~3_combout\;
\shift|ALT_INV_Mux7~3_combout\ <= NOT \shift|Mux7~3_combout\;
\shift|ALT_INV_Mux8~3_combout\ <= NOT \shift|Mux8~3_combout\;
\shift|ALT_INV_Mux9~3_combout\ <= NOT \shift|Mux9~3_combout\;
\shift|ALT_INV_Mux10~3_combout\ <= NOT \shift|Mux10~3_combout\;
\shift|ALT_INV_Mux11~3_combout\ <= NOT \shift|Mux11~3_combout\;
\shift|ALT_INV_Mux12~3_combout\ <= NOT \shift|Mux12~3_combout\;
\shift|ALT_INV_Mux13~3_combout\ <= NOT \shift|Mux13~3_combout\;
\shift|ALT_INV_Mux14~3_combout\ <= NOT \shift|Mux14~3_combout\;
\shift|ALT_INV_Mux0~0_combout\ <= NOT \shift|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N9
\Cin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cin~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Cin~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux14~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\SAIDA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux13~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\SAIDA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux12~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\SAIDA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux11~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\SAIDA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux10~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\SAIDA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux9~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\SAIDA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux8~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\SAIDA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux7~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\SAIDA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\SAIDA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux5~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\SAIDA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux4~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[11]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\SAIDA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux3~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[12]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\SAIDA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux2~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[13]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\SAIDA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux1~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA[14]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\SAIDA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[15]~output_o\);

-- Location: IOIBUF_X85_Y73_N22
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X68_Y71_N20
\Cin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cin~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & \S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datad => \S0~input_o\,
	combout => \Cin~0_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X85_Y71_N12
\l15|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Xi~3_combout\ = (\A[15]~input_o\ & (\S1~input_o\ $ (((\B[15]~input_o\) # (\S0~input_o\))))) # (!\A[15]~input_o\ & ((\S1~input_o\ & ((\B[15]~input_o\) # (\S0~input_o\))) # (!\S1~input_o\ & (\B[15]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \S1~input_o\,
	datac => \B[15]~input_o\,
	datad => \S0~input_o\,
	combout => \l15|Xi~3_combout\);

-- Location: LCCOMB_X85_Y71_N30
\l15|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Xi~4_combout\ = (\M~input_o\ & ((\l15|Xi~3_combout\))) # (!\M~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \M~input_o\,
	datad => \l15|Xi~3_combout\,
	combout => \l15|Xi~4_combout\);

-- Location: LCCOMB_X85_Y71_N16
\l15|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l15|Yi~0_combout\ = (\S1~input_o\) # (\B[15]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \B[15]~input_o\,
	datad => \S0~input_o\,
	combout => \l15|Yi~0_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X84_Y71_N8
\l14|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Yi~0_combout\ = (\S1~input_o\) # (\B[14]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \B[14]~input_o\,
	datad => \S0~input_o\,
	combout => \l14|Yi~0_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X86_Y71_N2
\l13|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Xi~3_combout\ = (\S1~input_o\ & (\A[13]~input_o\ $ (((\S0~input_o\) # (\B[13]~input_o\))))) # (!\S1~input_o\ & ((\A[13]~input_o\ & ((\S0~input_o\) # (\B[13]~input_o\))) # (!\A[13]~input_o\ & (\S0~input_o\ & \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[13]~input_o\,
	datac => \S0~input_o\,
	datad => \B[13]~input_o\,
	combout => \l13|Xi~3_combout\);

-- Location: LCCOMB_X86_Y71_N28
\l13|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Xi~4_combout\ = (\M~input_o\ & (\l13|Xi~3_combout\)) # (!\M~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l13|Xi~3_combout\,
	datac => \M~input_o\,
	datad => \A[13]~input_o\,
	combout => \l13|Xi~4_combout\);

-- Location: IOIBUF_X94_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X86_Y71_N12
\l11|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Yi~0_combout\ = (\S1~input_o\) # (\B[11]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[11]~input_o\,
	datac => \S0~input_o\,
	combout => \l11|Yi~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X83_Y71_N0
\l10|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Xi~3_combout\ = (\S1~input_o\ & (\A[10]~input_o\ $ (((\B[10]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[10]~input_o\ & ((\A[10]~input_o\) # (\S0~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \S0~input_o\,
	combout => \l10|Xi~3_combout\);

-- Location: LCCOMB_X83_Y71_N10
\l10|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Xi~4_combout\ = (\M~input_o\ & (\l10|Xi~3_combout\)) # (!\M~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l10|Xi~3_combout\,
	datac => \A[10]~input_o\,
	combout => \l10|Xi~4_combout\);

-- Location: LCCOMB_X83_Y71_N24
\l10|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l10|Yi~0_combout\ = (\S1~input_o\) # (\B[10]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[10]~input_o\,
	datad => \S0~input_o\,
	combout => \l10|Yi~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X75_Y71_N8
\l7|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~3_combout\ = (\A[7]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[7]~input_o\))))) # (!\A[7]~input_o\ & ((\S1~input_o\ & ((\S0~input_o\) # (\B[7]~input_o\))) # (!\S1~input_o\ & (\S0~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[7]~input_o\,
	combout => \l7|Xi~3_combout\);

-- Location: LCCOMB_X75_Y71_N10
\l7|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~4_combout\ = (\M~input_o\ & ((\l7|Xi~3_combout\))) # (!\M~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \l7|Xi~3_combout\,
	datad => \M~input_o\,
	combout => \l7|Xi~4_combout\);

-- Location: LCCOMB_X75_Y71_N16
\l7|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[7]~input_o\,
	combout => \l7|Yi~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X74_Y71_N24
\l5|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~3_combout\ = (\S1~input_o\ & (\A[5]~input_o\ $ (((\B[5]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[5]~input_o\ & ((\S0~input_o\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & (\S0~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[5]~input_o\,
	datac => \S0~input_o\,
	datad => \A[5]~input_o\,
	combout => \l5|Xi~3_combout\);

-- Location: LCCOMB_X74_Y71_N10
\l5|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~4_combout\ = (\M~input_o\ & (\l5|Xi~3_combout\)) # (!\M~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l5|Xi~3_combout\,
	datac => \A[5]~input_o\,
	datad => \M~input_o\,
	combout => \l5|Xi~4_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X69_Y71_N0
\l4|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Yi~0_combout\ = (\S1~input_o\) # (\B[4]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \B[4]~input_o\,
	datad => \S0~input_o\,
	combout => \l4|Yi~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X68_Y71_N12
\l0|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~4_combout\ = (\M~input_o\ & ((\B[0]~input_o\) # ((\S1~input_o\ & \S0~input_o\)))) # (!\M~input_o\ & (!\S1~input_o\ & ((!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \B[0]~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~4_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X68_Y71_N6
\l0|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~5_combout\ = (\l0|Xi~4_combout\ & ((\A[0]~input_o\ & (!\S1~input_o\)) # (!\A[0]~input_o\ & ((\S1~input_o\) # (\S0~input_o\))))) # (!\l0|Xi~4_combout\ & (\A[0]~input_o\ & ((\S1~input_o\) # (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Xi~4_combout\,
	datab => \A[0]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~5_combout\);

-- Location: LCCOMB_X68_Y71_N18
\l0|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Yi~0_combout\ = (\S1~input_o\) # (\B[0]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Yi~0_combout\);

-- Location: LCCOMB_X68_Y71_N30
\o0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|cout~0_combout\ = (\l0|Xi~5_combout\ & ((\Cin~0_combout\) # ((!\l0|Yi~0_combout\ & !\M~input_o\)))) # (!\l0|Xi~5_combout\ & (!\l0|Yi~0_combout\ & (\Cin~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Xi~5_combout\,
	datab => \l0|Yi~0_combout\,
	datac => \Cin~0_combout\,
	datad => \M~input_o\,
	combout => \o0|cout~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X68_Y71_N0
\l1|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Yi~0_combout\ = (\S1~input_o\) # (\B[1]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Yi~0_combout\);

-- Location: LCCOMB_X68_Y71_N24
\l1|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~4_combout\ = (\M~input_o\ & ((\B[1]~input_o\) # ((\S1~input_o\ & \S0~input_o\)))) # (!\M~input_o\ & (((!\S1~input_o\ & !\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Xi~4_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X68_Y71_N26
\l1|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~5_combout\ = (\S1~input_o\ & (\l1|Xi~4_combout\ $ ((\A[1]~input_o\)))) # (!\S1~input_o\ & ((\l1|Xi~4_combout\ & ((\A[1]~input_o\) # (\S0~input_o\))) # (!\l1|Xi~4_combout\ & (\A[1]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \l1|Xi~4_combout\,
	datac => \A[1]~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Xi~5_combout\);

-- Location: LCCOMB_X68_Y71_N8
\o1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|cout~0_combout\ = (\o0|cout~0_combout\ & ((\l1|Xi~5_combout\) # ((!\l1|Yi~0_combout\ & !\M~input_o\)))) # (!\o0|cout~0_combout\ & (!\l1|Yi~0_combout\ & (\l1|Xi~5_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o0|cout~0_combout\,
	datab => \l1|Yi~0_combout\,
	datac => \l1|Xi~5_combout\,
	datad => \M~input_o\,
	combout => \o1|cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X69_Y71_N20
\l2|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[2]~input_o\,
	datad => \S1~input_o\,
	combout => \l2|Yi~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X69_Y72_N24
\l2|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~3_combout\ = (\A[2]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\S0~input_o\ & ((\S1~input_o\) # (\B[2]~input_o\))) # (!\S0~input_o\ & (\S1~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[2]~input_o\,
	datac => \S1~input_o\,
	datad => \B[2]~input_o\,
	combout => \l2|Xi~3_combout\);

-- Location: LCCOMB_X69_Y72_N2
\l2|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~4_combout\ = (\M~input_o\ & ((\l2|Xi~3_combout\))) # (!\M~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \M~input_o\,
	datad => \l2|Xi~3_combout\,
	combout => \l2|Xi~4_combout\);

-- Location: LCCOMB_X69_Y71_N22
\o2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|cout~0_combout\ = (\o1|cout~0_combout\ & ((\l2|Xi~4_combout\) # ((!\l2|Yi~0_combout\ & !\M~input_o\)))) # (!\o1|cout~0_combout\ & (!\l2|Yi~0_combout\ & (\l2|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o1|cout~0_combout\,
	datab => \l2|Yi~0_combout\,
	datac => \l2|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o2|cout~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X69_Y71_N8
\l3|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~3_combout\ = (\A[3]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[3]~input_o\))))) # (!\A[3]~input_o\ & ((\S0~input_o\ & ((\B[3]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[3]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \S1~input_o\,
	combout => \l3|Xi~3_combout\);

-- Location: LCCOMB_X69_Y71_N2
\l3|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~4_combout\ = (\M~input_o\ & ((\l3|Xi~3_combout\))) # (!\M~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \l3|Xi~3_combout\,
	datad => \M~input_o\,
	combout => \l3|Xi~4_combout\);

-- Location: LCCOMB_X69_Y71_N26
\l3|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Yi~0_combout\ = (\S1~input_o\) # (\B[3]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \B[3]~input_o\,
	datad => \S0~input_o\,
	combout => \l3|Yi~0_combout\);

-- Location: LCCOMB_X69_Y71_N16
\o3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|cout~0_combout\ = (\o2|cout~0_combout\ & ((\l3|Xi~4_combout\) # ((!\l3|Yi~0_combout\ & !\M~input_o\)))) # (!\o2|cout~0_combout\ & (\l3|Xi~4_combout\ & (!\l3|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o2|cout~0_combout\,
	datab => \l3|Xi~4_combout\,
	datac => \l3|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o3|cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X69_Y71_N28
\l4|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~3_combout\ = (\A[4]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[4]~input_o\))))) # (!\A[4]~input_o\ & ((\S0~input_o\ & ((\B[4]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[4]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \S1~input_o\,
	combout => \l4|Xi~3_combout\);

-- Location: LCCOMB_X69_Y71_N30
\l4|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~4_combout\ = (\M~input_o\ & (\l4|Xi~3_combout\)) # (!\M~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l4|Xi~3_combout\,
	datac => \A[4]~input_o\,
	datad => \M~input_o\,
	combout => \l4|Xi~4_combout\);

-- Location: LCCOMB_X69_Y71_N18
\o4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|cout~0_combout\ = (\o3|cout~0_combout\ & ((\l4|Xi~4_combout\) # ((!\l4|Yi~0_combout\ & !\M~input_o\)))) # (!\o3|cout~0_combout\ & (!\l4|Yi~0_combout\ & (\l4|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|Yi~0_combout\,
	datab => \o3|cout~0_combout\,
	datac => \l4|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o4|cout~0_combout\);

-- Location: LCCOMB_X74_Y71_N8
\l5|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Yi~0_combout\ = (\S1~input_o\) # (\B[5]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[5]~input_o\,
	datac => \S0~input_o\,
	combout => \l5|Yi~0_combout\);

-- Location: LCCOMB_X74_Y71_N2
\o5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|cout~0_combout\ = (\l5|Xi~4_combout\ & ((\o4|cout~0_combout\) # ((!\l5|Yi~0_combout\ & !\M~input_o\)))) # (!\l5|Xi~4_combout\ & (\o4|cout~0_combout\ & (!\l5|Yi~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l5|Xi~4_combout\,
	datab => \o4|cout~0_combout\,
	datac => \l5|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o5|cout~0_combout\);

-- Location: IOIBUF_X79_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X79_Y72_N0
\l6|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Yi~0_combout\ = (\S1~input_o\) # (\B[6]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[6]~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Yi~0_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X79_Y72_N10
\l6|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~3_combout\ = (\S1~input_o\ & (\A[6]~input_o\ $ (((\B[6]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[6]~input_o\ & ((\B[6]~input_o\) # (\S0~input_o\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Xi~3_combout\);

-- Location: LCCOMB_X79_Y72_N20
\l6|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~4_combout\ = (\M~input_o\ & (\l6|Xi~3_combout\)) # (!\M~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l6|Xi~3_combout\,
	datac => \M~input_o\,
	datad => \A[6]~input_o\,
	combout => \l6|Xi~4_combout\);

-- Location: LCCOMB_X75_Y71_N18
\o6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|cout~0_combout\ = (\o5|cout~0_combout\ & ((\l6|Xi~4_combout\) # ((!\l6|Yi~0_combout\ & !\M~input_o\)))) # (!\o5|cout~0_combout\ & (!\l6|Yi~0_combout\ & (\l6|Xi~4_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o5|cout~0_combout\,
	datab => \l6|Yi~0_combout\,
	datac => \l6|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o6|cout~0_combout\);

-- Location: LCCOMB_X75_Y71_N12
\o7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o7|cout~0_combout\ = (\l7|Xi~4_combout\ & ((\o6|cout~0_combout\) # ((!\l7|Yi~0_combout\ & !\M~input_o\)))) # (!\l7|Xi~4_combout\ & (!\l7|Yi~0_combout\ & (\o6|cout~0_combout\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l7|Xi~4_combout\,
	datab => \l7|Yi~0_combout\,
	datac => \o6|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o7|cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X82_Y71_N20
\l9|Xi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~1_combout\ = (\B[9]~input_o\ & ((\S1~input_o\ & (!\A[9]~input_o\)) # (!\S1~input_o\ & ((\A[9]~input_o\) # (\S0~input_o\))))) # (!\B[9]~input_o\ & (\S0~input_o\ & (\S1~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \S0~input_o\,
	combout => \l9|Xi~1_combout\);

-- Location: LCCOMB_X82_Y71_N30
\l9|Xi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~2_combout\ = (\M~input_o\ & (\l9|Xi~1_combout\)) # (!\M~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l9|Xi~1_combout\,
	datac => \A[9]~input_o\,
	combout => \l9|Xi~2_combout\);

-- Location: LCCOMB_X82_Y71_N24
\l9|Xi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~0_combout\ = (\S1~input_o\ & !\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l9|Xi~0_combout\);

-- Location: LCCOMB_X82_Y71_N16
\l9|Xi\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~combout\ = (\l9|Xi~2_combout\) # ((\l9|Xi~0_combout\ & (\A[9]~input_o\ & !\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l9|Xi~2_combout\,
	datab => \l9|Xi~0_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \l9|Xi~combout\);

-- Location: LCCOMB_X82_Y71_N26
\l9|Yi\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Yi~combout\ = (\S1~input_o\) # ((\M~input_o\) # (\B[9]~input_o\ $ (!\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[9]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l9|Yi~combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X82_Y71_N18
\l8|Yi\ : cycloneive_lcell_comb
-- Equation(s):
-- \l8|Yi~combout\ = (\M~input_o\) # ((\S1~input_o\) # (\B[8]~input_o\ $ (!\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \B[8]~input_o\,
	datad => \S0~input_o\,
	combout => \l8|Yi~combout\);

-- Location: LCCOMB_X82_Y71_N12
\o9|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o9|cout~0_combout\ = (\o7|cout~0_combout\ & ((\l9|Xi~combout\) # ((!\l9|Yi~combout\ & !\l8|Yi~combout\)))) # (!\o7|cout~0_combout\ & (\l9|Xi~combout\ & ((!\l8|Yi~combout\) # (!\l9|Yi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|cout~0_combout\,
	datab => \l9|Xi~combout\,
	datac => \l9|Yi~combout\,
	datad => \l8|Yi~combout\,
	combout => \o9|cout~0_combout\);

-- Location: LCCOMB_X83_Y71_N26
\o10|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o10|cout~0_combout\ = (\l10|Xi~4_combout\ & ((\o9|cout~0_combout\) # ((!\l10|Yi~0_combout\ & !\M~input_o\)))) # (!\l10|Xi~4_combout\ & (!\l10|Yi~0_combout\ & (!\M~input_o\ & \o9|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l10|Xi~4_combout\,
	datab => \l10|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o9|cout~0_combout\,
	combout => \o10|cout~0_combout\);

-- Location: IOIBUF_X94_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X86_Y71_N26
\l11|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Xi~3_combout\ = (\A[11]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[11]~input_o\))))) # (!\A[11]~input_o\ & ((\S0~input_o\ & ((\B[11]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[11]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \S1~input_o\,
	combout => \l11|Xi~3_combout\);

-- Location: LCCOMB_X86_Y71_N20
\l11|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l11|Xi~4_combout\ = (\M~input_o\ & (\l11|Xi~3_combout\)) # (!\M~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l11|Xi~3_combout\,
	datab => \A[11]~input_o\,
	datac => \M~input_o\,
	combout => \l11|Xi~4_combout\);

-- Location: LCCOMB_X86_Y71_N6
\o11|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o11|cout~0_combout\ = (\o10|cout~0_combout\ & ((\l11|Xi~4_combout\) # ((!\l11|Yi~0_combout\ & !\M~input_o\)))) # (!\o10|cout~0_combout\ & (!\l11|Yi~0_combout\ & (!\M~input_o\ & \l11|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l11|Yi~0_combout\,
	datab => \o10|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l11|Xi~4_combout\,
	combout => \o11|cout~0_combout\);

-- Location: IOIBUF_X98_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X86_Y71_N30
\l12|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Xi~3_combout\ = (\A[12]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\B[12]~input_o\))))) # (!\A[12]~input_o\ & ((\S0~input_o\ & ((\B[12]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\B[12]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \S1~input_o\,
	combout => \l12|Xi~3_combout\);

-- Location: LCCOMB_X86_Y71_N16
\l12|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Xi~4_combout\ = (\M~input_o\ & (\l12|Xi~3_combout\)) # (!\M~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l12|Xi~3_combout\,
	datab => \M~input_o\,
	datac => \A[12]~input_o\,
	combout => \l12|Xi~4_combout\);

-- Location: LCCOMB_X86_Y71_N10
\l12|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l12|Yi~0_combout\ = (\S1~input_o\) # (\B[12]~input_o\ $ (!\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[12]~input_o\,
	datac => \S0~input_o\,
	combout => \l12|Yi~0_combout\);

-- Location: LCCOMB_X86_Y71_N8
\o12|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o12|cout~0_combout\ = (\o11|cout~0_combout\ & ((\l12|Xi~4_combout\) # ((!\M~input_o\ & !\l12|Yi~0_combout\)))) # (!\o11|cout~0_combout\ & (\l12|Xi~4_combout\ & (!\M~input_o\ & !\l12|Yi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o11|cout~0_combout\,
	datab => \l12|Xi~4_combout\,
	datac => \M~input_o\,
	datad => \l12|Yi~0_combout\,
	combout => \o12|cout~0_combout\);

-- Location: LCCOMB_X86_Y71_N0
\l13|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l13|Yi~0_combout\ = (\S1~input_o\) # (\S0~input_o\ $ (!\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \B[13]~input_o\,
	combout => \l13|Yi~0_combout\);

-- Location: LCCOMB_X86_Y71_N18
\o13|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o13|cout~0_combout\ = (\l13|Xi~4_combout\ & ((\o12|cout~0_combout\) # ((!\M~input_o\ & !\l13|Yi~0_combout\)))) # (!\l13|Xi~4_combout\ & (!\M~input_o\ & (\o12|cout~0_combout\ & !\l13|Yi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l13|Xi~4_combout\,
	datac => \o12|cout~0_combout\,
	datad => \l13|Yi~0_combout\,
	combout => \o13|cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X84_Y71_N10
\l14|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Xi~3_combout\ = (\S1~input_o\ & (\A[14]~input_o\ $ (((\B[14]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\B[14]~input_o\ & ((\A[14]~input_o\) # (\S0~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \S0~input_o\,
	combout => \l14|Xi~3_combout\);

-- Location: LCCOMB_X84_Y71_N12
\l14|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l14|Xi~4_combout\ = (\M~input_o\ & (\l14|Xi~3_combout\)) # (!\M~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l14|Xi~3_combout\,
	datab => \M~input_o\,
	datac => \A[14]~input_o\,
	combout => \l14|Xi~4_combout\);

-- Location: LCCOMB_X85_Y71_N10
\o14|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o14|cout~0_combout\ = (\o13|cout~0_combout\ & ((\l14|Xi~4_combout\) # ((!\l14|Yi~0_combout\ & !\M~input_o\)))) # (!\o13|cout~0_combout\ & (!\l14|Yi~0_combout\ & (!\M~input_o\ & \l14|Xi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l14|Yi~0_combout\,
	datab => \o13|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l14|Xi~4_combout\,
	combout => \o14|cout~0_combout\);

-- Location: LCCOMB_X85_Y71_N20
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\l15|Xi~4_combout\ & (!\l15|Yi~0_combout\ & (!\M~input_o\ & !\o14|cout~0_combout\))) # (!\l15|Xi~4_combout\ & (\o14|cout~0_combout\ & ((\l15|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l15|Xi~4_combout\,
	datab => \l15|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o14|cout~0_combout\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X68_Y71_N28
\o1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|s~combout\ = \o0|cout~0_combout\ $ (\l1|Xi~5_combout\ $ (((\l1|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o0|cout~0_combout\,
	datab => \l1|Yi~0_combout\,
	datac => \l1|Xi~5_combout\,
	datad => \M~input_o\,
	combout => \o1|s~combout\);

-- Location: LCCOMB_X68_Y71_N2
\o0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|s~combout\ = \l0|Xi~5_combout\ $ (\Cin~0_combout\ $ (((\l0|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Xi~5_combout\,
	datab => \l0|Yi~0_combout\,
	datac => \Cin~0_combout\,
	datad => \M~input_o\,
	combout => \o0|s~combout\);

-- Location: LCCOMB_X82_Y71_N6
\des~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \des~0_combout\ = (!\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \des~0_combout\);

-- Location: LCCOMB_X68_Y71_N22
\shift|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux15~0_combout\ = (\des~0_combout\ & (\S0~input_o\ & (!\o1|s~combout\))) # (!\des~0_combout\ & (((!\o0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o1|s~combout\,
	datac => \o0|s~combout\,
	datad => \des~0_combout\,
	combout => \shift|Mux15~0_combout\);

-- Location: LCCOMB_X69_Y71_N12
\o2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|s~combout\ = \o1|cout~0_combout\ $ (\l2|Xi~4_combout\ $ (((\l2|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o1|cout~0_combout\,
	datab => \l2|Yi~0_combout\,
	datac => \l2|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o2|s~combout\);

-- Location: LCCOMB_X68_Y71_N16
\shift|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux14~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o2|s~combout\))) # (!\S0~input_o\ & (\o0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o0|s~combout\,
	datac => \o2|s~combout\,
	datad => \des~0_combout\,
	combout => \shift|Mux14~2_combout\);

-- Location: LCCOMB_X68_Y71_N4
\shift|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux14~3_combout\ = (\shift|Mux14~2_combout\) # ((\o1|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux14~2_combout\,
	datab => \o1|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux14~3_combout\);

-- Location: LCCOMB_X69_Y71_N14
\o3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|s~combout\ = \o2|cout~0_combout\ $ (\l3|Xi~4_combout\ $ (((\l3|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o2|cout~0_combout\,
	datab => \l3|Xi~4_combout\,
	datac => \l3|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o3|s~combout\);

-- Location: LCCOMB_X68_Y71_N10
\shift|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux13~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o3|s~combout\))) # (!\S0~input_o\ & (\o1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o1|s~combout\,
	datac => \o3|s~combout\,
	datad => \des~0_combout\,
	combout => \shift|Mux13~2_combout\);

-- Location: LCCOMB_X68_Y71_N14
\shift|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux13~3_combout\ = (\shift|Mux13~2_combout\) # ((\o2|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux13~2_combout\,
	datab => \o2|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux13~3_combout\);

-- Location: LCCOMB_X69_Y71_N24
\o4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|s~combout\ = \o3|cout~0_combout\ $ (\l4|Xi~4_combout\ $ (((\l4|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|Yi~0_combout\,
	datab => \o3|cout~0_combout\,
	datac => \l4|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o4|s~combout\);

-- Location: LCCOMB_X69_Y71_N10
\shift|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux12~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o4|s~combout\))) # (!\S0~input_o\ & (\o2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o2|s~combout\,
	datab => \o4|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux12~2_combout\);

-- Location: LCCOMB_X69_Y71_N4
\shift|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux12~3_combout\ = (\shift|Mux12~2_combout\) # ((\o3|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux12~2_combout\,
	datab => \M~input_o\,
	datac => \o3|s~combout\,
	datad => \S1~input_o\,
	combout => \shift|Mux12~3_combout\);

-- Location: LCCOMB_X74_Y71_N4
\o5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|s~combout\ = \l5|Xi~4_combout\ $ (\o4|cout~0_combout\ $ (((\l5|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l5|Xi~4_combout\,
	datab => \o4|cout~0_combout\,
	datac => \l5|Yi~0_combout\,
	datad => \M~input_o\,
	combout => \o5|s~combout\);

-- Location: LCCOMB_X70_Y71_N24
\shift|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux11~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o5|s~combout\))) # (!\S0~input_o\ & (\o3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|s~combout\,
	datab => \S0~input_o\,
	datac => \des~0_combout\,
	datad => \o5|s~combout\,
	combout => \shift|Mux11~2_combout\);

-- Location: LCCOMB_X69_Y71_N6
\shift|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux11~3_combout\ = (\shift|Mux11~2_combout\) # ((\o4|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux11~2_combout\,
	datab => \M~input_o\,
	datac => \o4|s~combout\,
	datad => \S1~input_o\,
	combout => \shift|Mux11~3_combout\);

-- Location: LCCOMB_X75_Y71_N22
\o6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|s~combout\ = \o5|cout~0_combout\ $ (\l6|Xi~4_combout\ $ (((\l6|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o5|cout~0_combout\,
	datab => \l6|Yi~0_combout\,
	datac => \l6|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \o6|s~combout\);

-- Location: LCCOMB_X75_Y71_N24
\shift|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux10~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o6|s~combout\)) # (!\S0~input_o\ & ((\o4|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o6|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o4|s~combout\,
	combout => \shift|Mux10~2_combout\);

-- Location: LCCOMB_X75_Y71_N2
\shift|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux10~3_combout\ = (\shift|Mux10~2_combout\) # ((\o5|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux10~2_combout\,
	datab => \M~input_o\,
	datac => \o5|s~combout\,
	datad => \S1~input_o\,
	combout => \shift|Mux10~3_combout\);

-- Location: LCCOMB_X75_Y71_N26
\o7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o7|s~combout\ = \l7|Xi~4_combout\ $ (\o6|cout~0_combout\ $ (((\l7|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l7|Xi~4_combout\,
	datab => \l7|Yi~0_combout\,
	datac => \o6|cout~0_combout\,
	datad => \M~input_o\,
	combout => \o7|s~combout\);

-- Location: LCCOMB_X75_Y71_N4
\shift|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux9~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o7|s~combout\)) # (!\S0~input_o\ & ((\o5|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|s~combout\,
	datab => \o5|s~combout\,
	datac => \S0~input_o\,
	datad => \des~0_combout\,
	combout => \shift|Mux9~2_combout\);

-- Location: LCCOMB_X74_Y71_N6
\shift|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux9~3_combout\ = (\shift|Mux9~2_combout\) # ((\o6|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux9~2_combout\,
	datab => \o6|s~combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \shift|Mux9~3_combout\);

-- Location: LCCOMB_X82_Y71_N0
\o8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o8|s~combout\ = \o7|cout~0_combout\ $ (\l9|Xi~combout\ $ (\l8|Yi~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|cout~0_combout\,
	datab => \l9|Xi~combout\,
	datad => \l8|Yi~combout\,
	combout => \o8|s~combout\);

-- Location: LCCOMB_X75_Y71_N30
\shift|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux8~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o8|s~combout\)) # (!\S0~input_o\ & ((\o6|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o8|s~combout\,
	datab => \des~0_combout\,
	datac => \S0~input_o\,
	datad => \o6|s~combout\,
	combout => \shift|Mux8~2_combout\);

-- Location: LCCOMB_X75_Y71_N20
\shift|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux8~3_combout\ = (\shift|Mux8~2_combout\) # ((\o7|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux8~2_combout\,
	datab => \M~input_o\,
	datac => \o7|s~combout\,
	datad => \S1~input_o\,
	combout => \shift|Mux8~3_combout\);

-- Location: LCCOMB_X82_Y71_N10
\l9|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l9|Xi~3_combout\ = (\S1~input_o\ & (!\B[9]~input_o\ & (\A[9]~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \S0~input_o\,
	combout => \l9|Xi~3_combout\);

-- Location: LCCOMB_X82_Y71_N28
\o8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o8|cout~0_combout\ = (\o7|cout~0_combout\ & (((\l9|Xi~2_combout\) # (\l9|Xi~3_combout\)) # (!\l8|Yi~combout\))) # (!\o7|cout~0_combout\ & (!\l8|Yi~combout\ & ((\l9|Xi~2_combout\) # (\l9|Xi~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|cout~0_combout\,
	datab => \l8|Yi~combout\,
	datac => \l9|Xi~2_combout\,
	datad => \l9|Xi~3_combout\,
	combout => \o8|cout~0_combout\);

-- Location: LCCOMB_X82_Y71_N22
\o9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o9|s~combout\ = \l9|Xi~combout\ $ (\l9|Yi~combout\ $ (\o8|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l9|Xi~combout\,
	datac => \l9|Yi~combout\,
	datad => \o8|cout~0_combout\,
	combout => \o9|s~combout\);

-- Location: LCCOMB_X75_Y71_N0
\shift|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux7~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o9|s~combout\))) # (!\S0~input_o\ & (\o7|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o7|s~combout\,
	datab => \o9|s~combout\,
	datac => \S0~input_o\,
	datad => \des~0_combout\,
	combout => \shift|Mux7~2_combout\);

-- Location: LCCOMB_X75_Y71_N14
\shift|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux7~3_combout\ = (\shift|Mux7~2_combout\) # ((\o8|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \o8|s~combout\,
	datad => \shift|Mux7~2_combout\,
	combout => \shift|Mux7~3_combout\);

-- Location: LCCOMB_X83_Y71_N12
\o10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o10|s~combout\ = \l10|Xi~4_combout\ $ (\o9|cout~0_combout\ $ (((\l10|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l10|Xi~4_combout\,
	datab => \l10|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o9|cout~0_combout\,
	combout => \o10|s~combout\);

-- Location: LCCOMB_X82_Y71_N8
\shift|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux6~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o10|s~combout\))) # (!\S0~input_o\ & (\o8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des~0_combout\,
	datab => \o8|s~combout\,
	datac => \o10|s~combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux6~2_combout\);

-- Location: LCCOMB_X82_Y71_N4
\shift|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux6~3_combout\ = (\shift|Mux6~2_combout\) # ((\o9|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o9|s~combout\,
	datab => \shift|Mux6~2_combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \shift|Mux6~3_combout\);

-- Location: LCCOMB_X86_Y71_N4
\o11|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o11|s~combout\ = \o10|cout~0_combout\ $ (\l11|Xi~4_combout\ $ (((\l11|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l11|Yi~0_combout\,
	datab => \o10|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l11|Xi~4_combout\,
	combout => \o11|s~combout\);

-- Location: LCCOMB_X82_Y71_N2
\shift|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux5~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o11|s~combout\)) # (!\S0~input_o\ & ((\o9|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des~0_combout\,
	datab => \o11|s~combout\,
	datac => \o9|s~combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux5~2_combout\);

-- Location: LCCOMB_X83_Y71_N14
\shift|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux5~3_combout\ = (\shift|Mux5~2_combout\) # ((\o10|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux5~2_combout\,
	datab => \o10|s~combout\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \shift|Mux5~3_combout\);

-- Location: LCCOMB_X86_Y71_N22
\o12|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o12|s~combout\ = \o11|cout~0_combout\ $ (\l12|Xi~4_combout\ $ (((\M~input_o\) # (\l12|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o11|cout~0_combout\,
	datab => \l12|Xi~4_combout\,
	datac => \M~input_o\,
	datad => \l12|Yi~0_combout\,
	combout => \o12|s~combout\);

-- Location: LCCOMB_X85_Y71_N6
\shift|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux4~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o12|s~combout\))) # (!\S0~input_o\ & (\o10|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o10|s~combout\,
	datab => \o12|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux4~2_combout\);

-- Location: LCCOMB_X85_Y71_N4
\shift|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux4~3_combout\ = (\shift|Mux4~2_combout\) # ((\o11|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift|Mux4~2_combout\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \o11|s~combout\,
	combout => \shift|Mux4~3_combout\);

-- Location: LCCOMB_X86_Y71_N24
\o13|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o13|s~combout\ = \l13|Xi~4_combout\ $ (\o12|cout~0_combout\ $ (((\M~input_o\) # (\l13|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \l13|Xi~4_combout\,
	datac => \o12|cout~0_combout\,
	datad => \l13|Yi~0_combout\,
	combout => \o13|s~combout\);

-- Location: LCCOMB_X85_Y71_N0
\shift|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux3~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o13|s~combout\))) # (!\S0~input_o\ & (\o11|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o11|s~combout\,
	datab => \o13|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux3~2_combout\);

-- Location: LCCOMB_X85_Y71_N14
\shift|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux3~3_combout\ = (\shift|Mux3~2_combout\) # ((\o12|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \shift|Mux3~2_combout\,
	datac => \S1~input_o\,
	datad => \o12|s~combout\,
	combout => \shift|Mux3~3_combout\);

-- Location: LCCOMB_X85_Y71_N18
\o14|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o14|s~combout\ = \o13|cout~0_combout\ $ (\l14|Xi~4_combout\ $ (((\l14|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l14|Yi~0_combout\,
	datab => \o13|cout~0_combout\,
	datac => \M~input_o\,
	datad => \l14|Xi~4_combout\,
	combout => \o14|s~combout\);

-- Location: LCCOMB_X85_Y71_N28
\shift|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux2~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & ((\o14|s~combout\))) # (!\S0~input_o\ & (\o12|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \o12|s~combout\,
	datac => \des~0_combout\,
	datad => \o14|s~combout\,
	combout => \shift|Mux2~2_combout\);

-- Location: LCCOMB_X85_Y71_N24
\shift|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux2~3_combout\ = (\shift|Mux2~2_combout\) # ((\o13|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \shift|Mux2~2_combout\,
	datac => \S1~input_o\,
	datad => \o13|s~combout\,
	combout => \shift|Mux2~3_combout\);

-- Location: LCCOMB_X85_Y71_N22
\o15|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o15|s~combout\ = \l15|Xi~4_combout\ $ (\o14|cout~0_combout\ $ (((\l15|Yi~0_combout\) # (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l15|Xi~4_combout\,
	datab => \l15|Yi~0_combout\,
	datac => \M~input_o\,
	datad => \o14|cout~0_combout\,
	combout => \o15|s~combout\);

-- Location: LCCOMB_X85_Y71_N8
\shift|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux1~2_combout\ = (\des~0_combout\ & ((\S0~input_o\ & (\o15|s~combout\)) # (!\S0~input_o\ & ((\o13|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o15|s~combout\,
	datab => \o13|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux1~2_combout\);

-- Location: LCCOMB_X85_Y71_N26
\shift|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux1~3_combout\ = (\shift|Mux1~2_combout\) # ((\o14|s~combout\ & ((\M~input_o\) # (!\S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \shift|Mux1~2_combout\,
	datac => \S1~input_o\,
	datad => \o14|s~combout\,
	combout => \shift|Mux1~3_combout\);

-- Location: LCCOMB_X85_Y71_N2
\shift|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|Mux0~0_combout\ = (\des~0_combout\ & (((\o14|s~combout\) # (\S0~input_o\)))) # (!\des~0_combout\ & (\o15|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o15|s~combout\,
	datab => \o14|s~combout\,
	datac => \des~0_combout\,
	datad => \S0~input_o\,
	combout => \shift|Mux0~0_combout\);

-- Location: IOIBUF_X29_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Cin,
	o => \Cin~input_o\);

ww_Cout <= \Cout~output_o\;

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;

ww_SAIDA(8) <= \SAIDA[8]~output_o\;

ww_SAIDA(9) <= \SAIDA[9]~output_o\;

ww_SAIDA(10) <= \SAIDA[10]~output_o\;

ww_SAIDA(11) <= \SAIDA[11]~output_o\;

ww_SAIDA(12) <= \SAIDA[12]~output_o\;

ww_SAIDA(13) <= \SAIDA[13]~output_o\;

ww_SAIDA(14) <= \SAIDA[14]~output_o\;

ww_SAIDA(15) <= \SAIDA[15]~output_o\;

Cin <= \Cin~output_o\;
END structure;


