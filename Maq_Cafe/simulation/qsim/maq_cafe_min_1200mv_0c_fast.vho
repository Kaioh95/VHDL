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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "08/25/2019 20:29:27"

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

ENTITY 	maq_cafe IS
    PORT (
	b1 : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	b4 : IN std_logic;
	b5 : IN std_logic;
	b6 : IN std_logic;
	b7 : IN std_logic;
	b8 : IN std_logic;
	k : INOUT std_logic_vector(2 DOWNTO 0);
	A : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	H : OUT std_logic
	);
END maq_cafe;

-- Design Ports Information
-- A	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b6	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b7	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maq_cafe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b6 : std_logic;
SIGNAL ww_b7 : std_logic;
SIGNAL ww_b8 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \k[0]~output_o\ : std_logic;
SIGNAL \k[1]~output_o\ : std_logic;
SIGNAL \k[2]~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \H~output_o\ : std_logic;
SIGNAL \b5~input_o\ : std_logic;
SIGNAL \b7~input_o\ : std_logic;
SIGNAL \b6~input_o\ : std_logic;
SIGNAL \b4~input_o\ : std_logic;
SIGNAL \k[0]~3_combout\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \k[2]~4_combout\ : std_logic;
SIGNAL \b8~input_o\ : std_logic;
SIGNAL \k[0]~5_combout\ : std_logic;
SIGNAL \k[0]~6_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \k[0]$latch~combout\ : std_logic;
SIGNAL \k[1]~7_combout\ : std_logic;
SIGNAL \k[1]~8_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \k[1]$latch~combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \k[2]$latch~combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
ww_b5 <= b5;
ww_b6 <= b6;
ww_b7 <= b7;
ww_b8 <= b8;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
H <= ww_H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N9
\k[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \k[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \k[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\k[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \k[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \k[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\k[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \k[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \k[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\A~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~1_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~2_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~3_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~4_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~5_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~6_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\H~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~7_combout\,
	devoe => ww_devoe,
	o => \H~output_o\);

-- Location: IOIBUF_X11_Y73_N15
\b5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5,
	o => \b5~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\b7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b7,
	o => \b7~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\b6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b6,
	o => \b6~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\b4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4,
	o => \b4~input_o\);

-- Location: LCCOMB_X17_Y72_N10
\k[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[0]~3_combout\ = (!\b5~input_o\ & (!\b7~input_o\ & (!\b6~input_o\ & !\b4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~input_o\,
	datab => \b7~input_o\,
	datac => \b6~input_o\,
	datad => \b4~input_o\,
	combout => \k[0]~3_combout\);

-- Location: IOIBUF_X13_Y73_N15
\b3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\b2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X17_Y72_N20
\k[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[2]~4_combout\ = (!\b3~input_o\ & (!\b1~input_o\ & !\b2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b3~input_o\,
	datac => \b1~input_o\,
	datad => \b2~input_o\,
	combout => \k[2]~4_combout\);

-- Location: IOIBUF_X13_Y73_N1
\b8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8,
	o => \b8~input_o\);

-- Location: LCCOMB_X17_Y72_N22
\k[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[0]~5_combout\ = (!\b4~input_o\ & ((\b5~input_o\) # ((\b7~input_o\ & !\b6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~input_o\,
	datab => \b7~input_o\,
	datac => \b6~input_o\,
	datad => \b4~input_o\,
	combout => \k[0]~5_combout\);

-- Location: LCCOMB_X17_Y72_N24
\k[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[0]~6_combout\ = (\b1~input_o\) # ((!\b2~input_o\ & ((\k[0]~5_combout\) # (\b3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~5_combout\,
	datab => \b3~input_o\,
	datac => \b1~input_o\,
	datad => \b2~input_o\,
	combout => \k[0]~6_combout\);

-- Location: LCCOMB_X17_Y72_N2
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\k[0]~6_combout\ & (((\b8~input_o\) # (!\k[2]~4_combout\)) # (!\k[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \k[2]~4_combout\,
	datac => \b8~input_o\,
	datad => \k[0]~6_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X17_Y72_N4
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\k[0]~6_combout\ & (((\b8~input_o\) # (!\k[2]~4_combout\)) # (!\k[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \k[2]~4_combout\,
	datac => \b8~input_o\,
	datad => \k[0]~6_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X17_Y72_N18
\k[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[0]$latch~combout\ = (!\comb~2_combout\ & ((\comb~3_combout\) # (\k[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \comb~3_combout\,
	datad => \k[0]$latch~combout\,
	combout => \k[0]$latch~combout\);

-- Location: LCCOMB_X17_Y72_N8
\k[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[1]~7_combout\ = (!\b5~input_o\ & (!\b4~input_o\ & ((\b7~input_o\) # (\b6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~input_o\,
	datab => \b7~input_o\,
	datac => \b6~input_o\,
	datad => \b4~input_o\,
	combout => \k[1]~7_combout\);

-- Location: LCCOMB_X17_Y72_N26
\k[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[1]~8_combout\ = (!\b1~input_o\ & ((\b3~input_o\) # ((\k[1]~7_combout\) # (\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \b3~input_o\,
	datac => \k[1]~7_combout\,
	datad => \b2~input_o\,
	combout => \k[1]~8_combout\);

-- Location: LCCOMB_X17_Y72_N14
\comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\k[1]~8_combout\ & (((\b8~input_o\) # (!\k[2]~4_combout\)) # (!\k[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \k[2]~4_combout\,
	datac => \k[1]~8_combout\,
	datad => \b8~input_o\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X17_Y72_N12
\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\k[1]~8_combout\ & (((\b8~input_o\) # (!\k[2]~4_combout\)) # (!\k[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \k[2]~4_combout\,
	datac => \k[1]~8_combout\,
	datad => \b8~input_o\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X17_Y72_N30
\k[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[1]$latch~combout\ = (!\comb~5_combout\ & ((\comb~6_combout\) # (\k[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datac => \k[1]$latch~combout\,
	datad => \comb~5_combout\,
	combout => \k[1]$latch~combout\);

-- Location: LCCOMB_X17_Y72_N6
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ((\k[0]~3_combout\ & \b8~input_o\)) # (!\k[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \b8~input_o\,
	datad => \k[2]~4_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X17_Y72_N16
\comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\k[0]~3_combout\ & (!\b3~input_o\ & (!\b1~input_o\ & !\b2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~3_combout\,
	datab => \b3~input_o\,
	datac => \b1~input_o\,
	datad => \b2~input_o\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X17_Y72_N28
\k[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \k[2]$latch~combout\ = (!\comb~4_combout\ & ((\comb~7_combout\) # (\k[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datab => \comb~7_combout\,
	datad => \k[2]$latch~combout\,
	combout => \k[2]$latch~combout\);

-- Location: LCCOMB_X19_Y72_N16
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\k[0]$latch~combout\ & (!\k[2]$latch~combout\ & !\k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X19_Y72_N10
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\k[0]$latch~combout\ & (!\k[2]$latch~combout\ & \k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X19_Y72_N12
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\k[0]$latch~combout\ & (!\k[2]$latch~combout\ & \k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X19_Y72_N6
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\k[0]$latch~combout\ & (\k[2]$latch~combout\ & !\k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X17_Y72_N0
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\k[0]$latch~combout\ & (!\k[1]$latch~combout\ & \k[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k[0]$latch~combout\,
	datac => \k[1]$latch~combout\,
	datad => \k[2]$latch~combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X19_Y72_N0
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!\k[0]$latch~combout\ & (\k[2]$latch~combout\ & \k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X19_Y72_N2
\Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (\k[0]$latch~combout\ & (\k[2]$latch~combout\ & \k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X19_Y72_N28
\Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (!\k[0]$latch~combout\ & (!\k[2]$latch~combout\ & !\k[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]$latch~combout\,
	datac => \k[2]$latch~combout\,
	datad => \k[1]$latch~combout\,
	combout => \Equal7~7_combout\);

-- Location: IOIBUF_X13_Y73_N8
\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => k(0),
	o => \k[0]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => k(1),
	o => \k[1]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => k(2),
	o => \k[2]~input_o\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_H <= \H~output_o\;

k(0) <= \k[0]~output_o\;

k(1) <= \k[1]~output_o\;

k(2) <= \k[2]~output_o\;
END structure;


