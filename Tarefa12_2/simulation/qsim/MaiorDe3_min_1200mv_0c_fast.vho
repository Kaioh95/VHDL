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

-- DATE "09/05/2019 18:43:26"

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

ENTITY 	MaiorDe3 IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	c : IN std_logic_vector(7 DOWNTO 0);
	Amaior : OUT std_logic;
	Bmaior : OUT std_logic;
	Cmaior : OUT std_logic
	);
END MaiorDe3;

-- Design Ports Information
-- Amaior	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bmaior	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmaior	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaiorDe3 IS
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
SIGNAL ww_c : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Amaior : std_logic;
SIGNAL ww_Bmaior : std_logic;
SIGNAL ww_Cmaior : std_logic;
SIGNAL \Amaior~output_o\ : std_logic;
SIGNAL \Bmaior~output_o\ : std_logic;
SIGNAL \Cmaior~output_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Amaior~0_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Bmaior~0_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~14_combout\ : std_logic;
SIGNAL \Cmaior~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
Amaior <= ww_Amaior;
Bmaior <= ww_Bmaior;
Cmaior <= ww_Cmaior;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\Amaior~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Amaior~0_combout\,
	devoe => ww_devoe,
	o => \Amaior~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\Bmaior~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bmaior~0_combout\,
	devoe => ww_devoe,
	o => \Bmaior~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\Cmaior~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cmaior~0_combout\,
	devoe => ww_devoe,
	o => \Cmaior~output_o\);

-- Location: IOIBUF_X0_Y21_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\c[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\c[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: LCCOMB_X1_Y14_N10
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\a[3]~input_o\ & (\c[3]~input_o\ & (\a[2]~input_o\ $ (!\c[2]~input_o\)))) # (!\a[3]~input_o\ & (!\c[3]~input_o\ & (\a[2]~input_o\ $ (!\c[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \c[3]~input_o\,
	datad => \c[2]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\c[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\c[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: LCCOMB_X1_Y14_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\c[5]~input_o\ & (\a[5]~input_o\ & (\a[4]~input_o\ $ (!\c[4]~input_o\)))) # (!\c[5]~input_o\ & (!\a[5]~input_o\ & (\a[4]~input_o\ $ (!\c[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[4]~input_o\,
	datad => \c[4]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X0_Y15_N22
\c[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\c[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\c[0]~input_o\ & (\a[0]~input_o\ & (\c[1]~input_o\ $ (!\a[1]~input_o\)))) # (!\c[0]~input_o\ & (!\a[0]~input_o\ & (\c[1]~input_o\ $ (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~input_o\,
	datab => \c[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\c[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\c[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: LCCOMB_X1_Y14_N6
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\a[6]~input_o\ & (\c[6]~input_o\ & (\a[7]~input_o\ $ (!\c[7]~input_o\)))) # (!\a[6]~input_o\ & (!\c[6]~input_o\ & (\a[7]~input_o\ $ (!\c[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[7]~input_o\,
	datac => \c[6]~input_o\,
	datad => \c[7]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X1_Y14_N0
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~2_combout\ & (\Equal1~0_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: IOIBUF_X0_Y17_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X2_Y14_N14
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X2_Y14_N16
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\a[1]~input_o\ & (\b[1]~input_o\ & !\LessThan0~1_cout\)) # (!\a[1]~input_o\ & ((\b[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X2_Y14_N18
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\a[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\b[2]~input_o\))) # (!\a[2]~input_o\ & (!\b[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X2_Y14_N20
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\b[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\a[3]~input_o\))) # (!\b[3]~input_o\ & (!\a[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X2_Y14_N22
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\a[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\b[4]~input_o\))) # (!\a[4]~input_o\ & (!\b[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X2_Y14_N24
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\a[5]~input_o\ & (\b[5]~input_o\ & !\LessThan0~9_cout\)) # (!\a[5]~input_o\ & ((\b[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X2_Y14_N26
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\a[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\b[6]~input_o\))) # (!\a[6]~input_o\ & (!\b[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X2_Y14_N28
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\a[7]~input_o\ & ((\LessThan0~13_cout\) # (!\b[7]~input_o\))) # (!\a[7]~input_o\ & (\LessThan0~13_cout\ & !\b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datad => \b[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X2_Y13_N0
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\a[0]~input_o\ & !\c[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \c[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X2_Y13_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\c[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\a[1]~input_o\))) # (!\c[1]~input_o\ & (!\a[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X2_Y13_N4
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\c[2]~input_o\ & (\a[2]~input_o\ & !\LessThan1~3_cout\)) # (!\c[2]~input_o\ & ((\a[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X2_Y13_N6
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\a[3]~input_o\ & (\c[3]~input_o\ & !\LessThan1~5_cout\)) # (!\a[3]~input_o\ & ((\c[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \c[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X2_Y13_N8
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\a[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\c[4]~input_o\))) # (!\a[4]~input_o\ & (!\c[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \c[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X2_Y13_N10
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\c[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\a[5]~input_o\))) # (!\c[5]~input_o\ & (!\a[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X2_Y13_N12
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\c[6]~input_o\ & (\a[6]~input_o\ & !\LessThan1~11_cout\)) # (!\c[6]~input_o\ & ((\a[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X2_Y13_N14
\LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\c[7]~input_o\ & (\a[7]~input_o\ & \LessThan1~13_cout\)) # (!\c[7]~input_o\ & ((\a[7]~input_o\) # (\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[7]~input_o\,
	datab => \a[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X2_Y14_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\a[7]~input_o\ & (\b[7]~input_o\ & (\a[6]~input_o\ $ (!\b[6]~input_o\)))) # (!\a[7]~input_o\ & (!\b[7]~input_o\ & (\a[6]~input_o\ $ (!\b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y14_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & (\b[1]~input_o\ $ (!\a[1]~input_o\)))) # (!\b[0]~input_o\ & (!\a[0]~input_o\ & (\b[1]~input_o\ $ (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y14_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\a[5]~input_o\ & (\b[5]~input_o\ & (\a[4]~input_o\ $ (!\b[4]~input_o\)))) # (!\a[5]~input_o\ & (!\b[5]~input_o\ & (\a[4]~input_o\ $ (!\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datac => \a[4]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y14_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\b[3]~input_o\ & (\a[3]~input_o\ & (\b[2]~input_o\ $ (!\a[2]~input_o\)))) # (!\b[3]~input_o\ & (!\a[3]~input_o\ & (\b[2]~input_o\ $ (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y14_N0
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y14_N10
\Amaior~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Amaior~0_combout\ = (\Equal1~4_combout\ & ((\LessThan0~14_combout\) # ((\Equal0~4_combout\)))) # (!\Equal1~4_combout\ & (\LessThan1~14_combout\ & ((\LessThan0~14_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \LessThan0~14_combout\,
	datac => \LessThan1~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \Amaior~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\b[0]~input_o\ & !\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X1_Y14_N14
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\b[1]~input_o\ & (\a[1]~input_o\ & !\LessThan2~1_cout\)) # (!\b[1]~input_o\ & ((\a[1]~input_o\) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X1_Y14_N16
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\b[2]~input_o\ & ((!\LessThan2~3_cout\) # (!\a[2]~input_o\))) # (!\b[2]~input_o\ & (!\a[2]~input_o\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X1_Y14_N18
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\a[3]~input_o\ & ((!\LessThan2~5_cout\) # (!\b[3]~input_o\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X1_Y14_N20
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\b[4]~input_o\ & ((!\LessThan2~7_cout\) # (!\a[4]~input_o\))) # (!\b[4]~input_o\ & (!\a[4]~input_o\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X1_Y14_N22
\LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\b[5]~input_o\ & (\a[5]~input_o\ & !\LessThan2~9_cout\)) # (!\b[5]~input_o\ & ((\a[5]~input_o\) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X1_Y14_N24
\LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\a[6]~input_o\ & (\b[6]~input_o\ & !\LessThan2~11_cout\)) # (!\a[6]~input_o\ & ((\b[6]~input_o\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X1_Y14_N26
\LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\a[7]~input_o\ & (\LessThan2~13_cout\ & \b[7]~input_o\)) # (!\a[7]~input_o\ & ((\LessThan2~13_cout\) # (\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a[7]~input_o\,
	datad => \b[7]~input_o\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X1_Y15_N8
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\c[0]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X1_Y15_N10
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\c[1]~input_o\ & ((!\LessThan3~1_cout\) # (!\b[1]~input_o\))) # (!\c[1]~input_o\ & (!\b[1]~input_o\ & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X1_Y15_N12
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\b[2]~input_o\ & ((!\LessThan3~3_cout\) # (!\c[2]~input_o\))) # (!\b[2]~input_o\ & (!\c[2]~input_o\ & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \c[2]~input_o\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X1_Y15_N14
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\b[3]~input_o\ & (\c[3]~input_o\ & !\LessThan3~5_cout\)) # (!\b[3]~input_o\ & ((\c[3]~input_o\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \c[3]~input_o\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X1_Y15_N16
\LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\c[4]~input_o\ & (\b[4]~input_o\ & !\LessThan3~7_cout\)) # (!\c[4]~input_o\ & ((\b[4]~input_o\) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X1_Y15_N18
\LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\c[5]~input_o\ & ((!\LessThan3~9_cout\) # (!\b[5]~input_o\))) # (!\c[5]~input_o\ & (!\b[5]~input_o\ & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X1_Y15_N20
\LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\c[6]~input_o\ & (\b[6]~input_o\ & !\LessThan3~11_cout\)) # (!\c[6]~input_o\ & ((\b[6]~input_o\) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X1_Y15_N22
\LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\c[7]~input_o\ & (\LessThan3~13_cout\ & \b[7]~input_o\)) # (!\c[7]~input_o\ & ((\LessThan3~13_cout\) # (\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c[7]~input_o\,
	datad => \b[7]~input_o\,
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X1_Y15_N6
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\c[6]~input_o\ & (\b[6]~input_o\ & (\c[7]~input_o\ $ (!\b[7]~input_o\)))) # (!\c[6]~input_o\ & (!\b[6]~input_o\ & (\c[7]~input_o\ $ (!\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[6]~input_o\,
	datab => \c[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X1_Y15_N28
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\c[4]~input_o\ & (\b[4]~input_o\ & (\b[5]~input_o\ $ (!\c[5]~input_o\)))) # (!\c[4]~input_o\ & (!\b[4]~input_o\ & (\b[5]~input_o\ $ (!\c[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \b[4]~input_o\,
	datad => \c[5]~input_o\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X1_Y15_N26
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\b[2]~input_o\ & (\c[2]~input_o\ & (\c[3]~input_o\ $ (!\b[3]~input_o\)))) # (!\b[2]~input_o\ & (!\c[2]~input_o\ & (\c[3]~input_o\ $ (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \c[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \c[2]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X1_Y15_N24
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\c[1]~input_o\ & (\b[1]~input_o\ & (\b[0]~input_o\ $ (!\c[0]~input_o\)))) # (!\c[1]~input_o\ & (!\b[1]~input_o\ & (\b[0]~input_o\ $ (!\c[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \c[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~2_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X1_Y15_N2
\Bmaior~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bmaior~0_combout\ = (\Equal0~4_combout\ & (((\LessThan3~14_combout\) # (\Equal3~4_combout\)))) # (!\Equal0~4_combout\ & (\LessThan2~14_combout\ & ((\LessThan3~14_combout\) # (\Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \LessThan2~14_combout\,
	datac => \LessThan3~14_combout\,
	datad => \Equal3~4_combout\,
	combout => \Bmaior~0_combout\);

-- Location: LCCOMB_X2_Y13_N16
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!\a[0]~input_o\ & \c[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \c[0]~input_o\,
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X2_Y13_N18
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\c[1]~input_o\ & (\a[1]~input_o\ & !\LessThan4~1_cout\)) # (!\c[1]~input_o\ & ((\a[1]~input_o\) # (!\LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X2_Y13_N20
\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\c[2]~input_o\ & ((!\LessThan4~3_cout\) # (!\a[2]~input_o\))) # (!\c[2]~input_o\ & (!\a[2]~input_o\ & !\LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X2_Y13_N22
\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\a[3]~input_o\ & ((!\LessThan4~5_cout\) # (!\c[3]~input_o\))) # (!\a[3]~input_o\ & (!\c[3]~input_o\ & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \c[3]~input_o\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X2_Y13_N24
\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\a[4]~input_o\ & (\c[4]~input_o\ & !\LessThan4~7_cout\)) # (!\a[4]~input_o\ & ((\c[4]~input_o\) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \c[4]~input_o\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X2_Y13_N26
\LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\c[5]~input_o\ & (\a[5]~input_o\ & !\LessThan4~9_cout\)) # (!\c[5]~input_o\ & ((\a[5]~input_o\) # (!\LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X2_Y13_N28
\LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\c[6]~input_o\ & ((!\LessThan4~11_cout\) # (!\a[6]~input_o\))) # (!\c[6]~input_o\ & (!\a[6]~input_o\ & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X2_Y13_N30
\LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (\c[7]~input_o\ & ((\LessThan4~13_cout\) # (!\a[7]~input_o\))) # (!\c[7]~input_o\ & (!\a[7]~input_o\ & \LessThan4~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[7]~input_o\,
	datab => \a[7]~input_o\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X2_Y15_N8
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((\c[0]~input_o\ & !\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X2_Y15_N10
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((\b[1]~input_o\ & ((!\LessThan5~1_cout\) # (!\c[1]~input_o\))) # (!\b[1]~input_o\ & (!\c[1]~input_o\ & !\LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \c[1]~input_o\,
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X2_Y15_N12
\LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\c[2]~input_o\ & ((!\LessThan5~3_cout\) # (!\b[2]~input_o\))) # (!\c[2]~input_o\ & (!\b[2]~input_o\ & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X2_Y15_N14
\LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((\b[3]~input_o\ & ((!\LessThan5~5_cout\) # (!\c[3]~input_o\))) # (!\b[3]~input_o\ & (!\c[3]~input_o\ & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \c[3]~input_o\,
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X2_Y15_N16
\LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\c[4]~input_o\ & ((!\LessThan5~7_cout\) # (!\b[4]~input_o\))) # (!\c[4]~input_o\ & (!\b[4]~input_o\ & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X2_Y15_N18
\LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((\b[5]~input_o\ & ((!\LessThan5~9_cout\) # (!\c[5]~input_o\))) # (!\b[5]~input_o\ & (!\c[5]~input_o\ & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \c[5]~input_o\,
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X2_Y15_N20
\LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\b[6]~input_o\ & (\c[6]~input_o\ & !\LessThan5~11_cout\)) # (!\b[6]~input_o\ & ((\c[6]~input_o\) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \c[6]~input_o\,
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X2_Y15_N22
\LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~14_combout\ = (\b[7]~input_o\ & (\LessThan5~13_cout\ & \c[7]~input_o\)) # (!\b[7]~input_o\ & ((\LessThan5~13_cout\) # (\c[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datad => \c[7]~input_o\,
	cin => \LessThan5~13_cout\,
	combout => \LessThan5~14_combout\);

-- Location: LCCOMB_X1_Y15_N4
\Cmaior~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cmaior~0_combout\ = (\LessThan4~14_combout\ & ((\Equal3~4_combout\) # ((\LessThan5~14_combout\)))) # (!\LessThan4~14_combout\ & (\Equal1~4_combout\ & ((\Equal3~4_combout\) # (\LessThan5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~14_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal1~4_combout\,
	datad => \LessThan5~14_combout\,
	combout => \Cmaior~0_combout\);

ww_Amaior <= \Amaior~output_o\;

ww_Bmaior <= \Bmaior~output_o\;

ww_Cmaior <= \Cmaior~output_o\;
END structure;


