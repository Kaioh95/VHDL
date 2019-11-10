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

-- DATE "08/28/2019 21:19:43"

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

ENTITY 	calc_8bits IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	op : IN std_logic;
	s : BUFFER std_logic_vector(7 DOWNTO 0);
	luz1 : BUFFER std_logic;
	luz2 : BUFFER std_logic;
	cout : BUFFER std_logic
	);
END calc_8bits;

-- Design Ports Information
-- s[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz1	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz2	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calc_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_luz1 : std_logic;
SIGNAL ww_luz2 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \luz1~output_o\ : std_logic;
SIGNAL \luz2~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \i0|s~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \op~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \i0|cout~0_combout\ : std_logic;
SIGNAL \i1|s~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \i1|cout~0_combout\ : std_logic;
SIGNAL \i2|s~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \i2|cout~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \i3|s~0_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \i3|cout~0_combout\ : std_logic;
SIGNAL \i4|s~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \i4|cout~0_combout\ : std_logic;
SIGNAL \i5|s~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \i5|cout~0_combout\ : std_logic;
SIGNAL \i6|s~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \i6|cout~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \i7|s~0_combout\ : std_logic;
SIGNAL \i7|cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_op~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
s <= ww_s;
luz1 <= ww_luz1;
luz2 <= ww_luz2;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_op~input_o\ <= NOT \op~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N9
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|s~combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|s~combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|s~0_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|s~0_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i4|s~0_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i5|s~0_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i6|s~0_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i7|s~0_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\luz1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_op~input_o\,
	devoe => ww_devoe,
	o => \luz1~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\luz2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op~input_o\,
	devoe => ww_devoe,
	o => \luz2~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i7|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X13_Y73_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X13_Y72_N0
\i0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|s~combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \i0|s~combout\);

-- Location: IOIBUF_X11_Y73_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op,
	o => \op~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X6_Y72_N24
\i0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \op~input_o\,
	datad => \b[0]~input_o\,
	combout => \i0|cout~0_combout\);

-- Location: LCCOMB_X6_Y72_N26
\i1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|s~combout\ = \a[1]~input_o\ $ (\op~input_o\ $ (\b[1]~input_o\ $ (\i0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \op~input_o\,
	datac => \b[1]~input_o\,
	datad => \i0|cout~0_combout\,
	combout => \i1|s~combout\);

-- Location: IOIBUF_X1_Y73_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X6_Y72_N12
\i1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|cout~0_combout\ = (\a[1]~input_o\ & ((\i0|cout~0_combout\) # (\op~input_o\ $ (\b[1]~input_o\)))) # (!\a[1]~input_o\ & (\i0|cout~0_combout\ & (\op~input_o\ $ (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \op~input_o\,
	datac => \b[1]~input_o\,
	datad => \i0|cout~0_combout\,
	combout => \i1|cout~0_combout\);

-- Location: LCCOMB_X6_Y72_N22
\i2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|s~0_combout\ = \b[2]~input_o\ $ (\a[2]~input_o\ $ (\op~input_o\ $ (\i1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \op~input_o\,
	datad => \i1|cout~0_combout\,
	combout => \i2|s~0_combout\);

-- Location: IOIBUF_X9_Y73_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X6_Y72_N8
\i2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|cout~0_combout\ = (\a[2]~input_o\ & ((\i1|cout~0_combout\) # (\b[2]~input_o\ $ (\op~input_o\)))) # (!\a[2]~input_o\ & (\i1|cout~0_combout\ & (\b[2]~input_o\ $ (\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \op~input_o\,
	datad => \i1|cout~0_combout\,
	combout => \i2|cout~0_combout\);

-- Location: IOIBUF_X11_Y73_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X6_Y72_N18
\i3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|s~0_combout\ = \b[3]~input_o\ $ (\i2|cout~0_combout\ $ (\op~input_o\ $ (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \i2|cout~0_combout\,
	datac => \op~input_o\,
	datad => \a[3]~input_o\,
	combout => \i3|s~0_combout\);

-- Location: IOIBUF_X3_Y73_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X6_Y72_N20
\i3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|cout~0_combout\ = (\i2|cout~0_combout\ & ((\a[3]~input_o\) # (\b[3]~input_o\ $ (\op~input_o\)))) # (!\i2|cout~0_combout\ & (\a[3]~input_o\ & (\b[3]~input_o\ $ (\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \i2|cout~0_combout\,
	datac => \op~input_o\,
	datad => \a[3]~input_o\,
	combout => \i3|cout~0_combout\);

-- Location: LCCOMB_X6_Y72_N14
\i4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|s~0_combout\ = \b[4]~input_o\ $ (\a[4]~input_o\ $ (\op~input_o\ $ (\i3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \op~input_o\,
	datad => \i3|cout~0_combout\,
	combout => \i4|s~0_combout\);

-- Location: IOIBUF_X3_Y73_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X6_Y72_N0
\i4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i4|cout~0_combout\ = (\a[4]~input_o\ & ((\i3|cout~0_combout\) # (\b[4]~input_o\ $ (\op~input_o\)))) # (!\a[4]~input_o\ & (\i3|cout~0_combout\ & (\b[4]~input_o\ $ (\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \op~input_o\,
	datad => \i3|cout~0_combout\,
	combout => \i4|cout~0_combout\);

-- Location: LCCOMB_X6_Y72_N10
\i5|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i5|s~0_combout\ = \b[5]~input_o\ $ (\op~input_o\ $ (\a[5]~input_o\ $ (\i4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \op~input_o\,
	datac => \a[5]~input_o\,
	datad => \i4|cout~0_combout\,
	combout => \i5|s~0_combout\);

-- Location: IOIBUF_X1_Y73_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X6_Y72_N28
\i5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i5|cout~0_combout\ = (\a[5]~input_o\ & ((\i4|cout~0_combout\) # (\b[5]~input_o\ $ (\op~input_o\)))) # (!\a[5]~input_o\ & (\i4|cout~0_combout\ & (\b[5]~input_o\ $ (\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \op~input_o\,
	datac => \a[5]~input_o\,
	datad => \i4|cout~0_combout\,
	combout => \i5|cout~0_combout\);

-- Location: LCCOMB_X6_Y72_N6
\i6|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i6|s~0_combout\ = \b[6]~input_o\ $ (\op~input_o\ $ (\a[6]~input_o\ $ (\i5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \op~input_o\,
	datac => \a[6]~input_o\,
	datad => \i5|cout~0_combout\,
	combout => \i6|s~0_combout\);

-- Location: IOIBUF_X11_Y73_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X6_Y72_N16
\i6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i6|cout~0_combout\ = (\a[6]~input_o\ & ((\i5|cout~0_combout\) # (\b[6]~input_o\ $ (\op~input_o\)))) # (!\a[6]~input_o\ & (\i5|cout~0_combout\ & (\b[6]~input_o\ $ (\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \op~input_o\,
	datac => \a[6]~input_o\,
	datad => \i5|cout~0_combout\,
	combout => \i6|cout~0_combout\);

-- Location: IOIBUF_X7_Y73_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X6_Y72_N2
\i7|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i7|s~0_combout\ = \a[7]~input_o\ $ (\i6|cout~0_combout\ $ (\op~input_o\ $ (\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \i6|cout~0_combout\,
	datac => \op~input_o\,
	datad => \b[7]~input_o\,
	combout => \i7|s~0_combout\);

-- Location: LCCOMB_X6_Y72_N4
\i7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i7|cout~0_combout\ = (\a[7]~input_o\ & ((\i6|cout~0_combout\) # (\op~input_o\ $ (\b[7]~input_o\)))) # (!\a[7]~input_o\ & (\i6|cout~0_combout\ & (\op~input_o\ $ (\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \i6|cout~0_combout\,
	datac => \op~input_o\,
	datad => \b[7]~input_o\,
	combout => \i7|cout~0_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_luz1 <= \luz1~output_o\;

ww_luz2 <= \luz2~output_o\;

ww_cout <= \cout~output_o\;
END structure;


