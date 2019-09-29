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

-- DATE "09/05/2019 18:13:17"

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

ENTITY 	Comp_5bits IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	x : OUT std_logic;
	y : OUT std_logic;
	z : OUT std_logic
	);
END Comp_5bits;

-- Design Ports Information
-- x	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Comp_5bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \x~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \c5|o~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \c3|ob~0_combout\ : std_logic;
SIGNAL \c5|o~combout\ : std_logic;
SIGNAL \c5|oa~1_combout\ : std_logic;
SIGNAL \c5|oa~2_combout\ : std_logic;
SIGNAL \c5|oa~0_combout\ : std_logic;
SIGNAL \c5|oa~3_combout\ : std_logic;
SIGNAL \c5|ob~0_combout\ : std_logic;
SIGNAL \c5|ob~1_combout\ : std_logic;
SIGNAL \c5|ob~2_combout\ : std_logic;
SIGNAL \c5|ob~3_combout\ : std_logic;
SIGNAL \c5|ALT_INV_o~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\c5|ALT_INV_o~combout\ <= NOT \c5|o~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y42_N9
\x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c5|ALT_INV_o~combout\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c5|oa~3_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c5|ob~3_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X0_Y44_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N8
\c5|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|o~0_combout\ = (\a[0]~input_o\ & ((\b[1]~input_o\ $ (\a[1]~input_o\)) # (!\b[0]~input_o\))) # (!\a[0]~input_o\ & ((\b[0]~input_o\) # (\b[1]~input_o\ $ (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \c5|o~0_combout\);

-- Location: IOIBUF_X0_Y44_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\c3|ob~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3|ob~0_combout\ = (\b[4]~input_o\ & (\a[4]~input_o\ & (\a[3]~input_o\ $ (!\b[3]~input_o\)))) # (!\b[4]~input_o\ & (!\a[4]~input_o\ & (\a[3]~input_o\ $ (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \c3|ob~0_combout\);

-- Location: LCCOMB_X1_Y44_N28
\c5|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|o~combout\ = (\c5|o~0_combout\) # ((\a[2]~input_o\ $ (\b[2]~input_o\)) # (!\c3|ob~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datac => \c5|o~0_combout\,
	datad => \c3|ob~0_combout\,
	combout => \c5|o~combout\);

-- Location: LCCOMB_X1_Y44_N24
\c5|oa~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|oa~1_combout\ = (\b[1]~input_o\ & (\a[0]~input_o\ & (\a[1]~input_o\ & !\b[0]~input_o\))) # (!\b[1]~input_o\ & ((\a[1]~input_o\) # ((\a[0]~input_o\ & !\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \c5|oa~1_combout\);

-- Location: LCCOMB_X1_Y44_N18
\c5|oa~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|oa~2_combout\ = (\c3|ob~0_combout\ & ((\a[2]~input_o\ & ((\c5|oa~1_combout\) # (!\b[2]~input_o\))) # (!\a[2]~input_o\ & (\c5|oa~1_combout\ & !\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \c5|oa~1_combout\,
	datac => \b[2]~input_o\,
	datad => \c3|ob~0_combout\,
	combout => \c5|oa~2_combout\);

-- Location: LCCOMB_X1_Y44_N22
\c5|oa~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|oa~0_combout\ = (\b[4]~input_o\ & (\a[4]~input_o\ & (\a[3]~input_o\ & !\b[3]~input_o\))) # (!\b[4]~input_o\ & ((\a[4]~input_o\) # ((\a[3]~input_o\ & !\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \c5|oa~0_combout\);

-- Location: LCCOMB_X1_Y44_N4
\c5|oa~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|oa~3_combout\ = (\c5|oa~2_combout\) # (\c5|oa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c5|oa~2_combout\,
	datac => \c5|oa~0_combout\,
	combout => \c5|oa~3_combout\);

-- Location: LCCOMB_X1_Y44_N6
\c5|ob~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|ob~0_combout\ = (\b[4]~input_o\ & (((!\a[3]~input_o\ & \b[3]~input_o\)) # (!\a[4]~input_o\))) # (!\b[4]~input_o\ & (!\a[4]~input_o\ & (!\a[3]~input_o\ & \b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \c5|ob~0_combout\);

-- Location: LCCOMB_X1_Y44_N0
\c5|ob~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|ob~1_combout\ = (\b[1]~input_o\ & (((!\a[0]~input_o\ & \b[0]~input_o\)) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (!\a[0]~input_o\ & (!\a[1]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \c5|ob~1_combout\);

-- Location: LCCOMB_X1_Y44_N26
\c5|ob~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|ob~2_combout\ = (\c3|ob~0_combout\ & ((\a[2]~input_o\ & (\c5|ob~1_combout\ & \b[2]~input_o\)) # (!\a[2]~input_o\ & ((\c5|ob~1_combout\) # (\b[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \c5|ob~1_combout\,
	datac => \b[2]~input_o\,
	datad => \c3|ob~0_combout\,
	combout => \c5|ob~2_combout\);

-- Location: LCCOMB_X1_Y44_N20
\c5|ob~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5|ob~3_combout\ = (\c5|ob~0_combout\) # (\c5|ob~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c5|ob~0_combout\,
	datac => \c5|ob~2_combout\,
	combout => \c5|ob~3_combout\);

ww_x <= \x~output_o\;

ww_y <= \y~output_o\;

ww_z <= \z~output_o\;
END structure;


