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

-- DATE "10/12/2019 21:56:44"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Registrador IS
    PORT (
	i : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	clr : IN std_logic;
	lr : IN std_logic;
	q : OUT std_logic_vector(15 DOWNTO 0)
	);
END Registrador;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lr	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[5]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[9]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[10]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[11]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[13]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[14]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[15]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registrador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_lr : std_logic;
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \lr~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \q[0]~1_combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \i[2]~input_o\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \i[3]~input_o\ : std_logic;
SIGNAL \q~4_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \i[4]~input_o\ : std_logic;
SIGNAL \q~5_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \i[5]~input_o\ : std_logic;
SIGNAL \q~6_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \i[6]~input_o\ : std_logic;
SIGNAL \q~7_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \i[7]~input_o\ : std_logic;
SIGNAL \q~8_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \i[8]~input_o\ : std_logic;
SIGNAL \q~9_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \i[9]~input_o\ : std_logic;
SIGNAL \q~10_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \i[10]~input_o\ : std_logic;
SIGNAL \q~11_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \i[11]~input_o\ : std_logic;
SIGNAL \q~12_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \i[12]~input_o\ : std_logic;
SIGNAL \q~13_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \i[13]~input_o\ : std_logic;
SIGNAL \q~14_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \i[14]~input_o\ : std_logic;
SIGNAL \q~15_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \i[15]~input_o\ : std_logic;
SIGNAL \q~16_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i <= i;
ww_clk <= clk;
ww_clr <= clr;
ww_lr <= lr;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N1
\i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\lr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lr,
	o => \lr~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\i[0]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i[0]~input_o\,
	datad => \lr~input_o\,
	combout => \q~0_combout\);

-- Location: IOIBUF_X18_Y0_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X17_Y1_N30
\q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~1_combout\ = (\lr~input_o\) # (\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \clr~input_o\,
	combout => \q[0]~1_combout\);

-- Location: FF_X17_Y1_N25
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~0_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N15
\i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: LCCOMB_X11_Y1_N24
\q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~2_combout\ = (\lr~input_o\ & \i[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[1]~input_o\,
	combout => \q~2_combout\);

-- Location: FF_X11_Y1_N25
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~2_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N15
\i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(2),
	o => \i[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N18
\q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~3_combout\ = (\i[2]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i[2]~input_o\,
	datad => \lr~input_o\,
	combout => \q~3_combout\);

-- Location: FF_X17_Y1_N19
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~3_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N8
\i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(3),
	o => \i[3]~input_o\);

-- Location: LCCOMB_X11_Y1_N26
\q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~4_combout\ = (\lr~input_o\ & \i[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[3]~input_o\,
	combout => \q~4_combout\);

-- Location: FF_X11_Y1_N27
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~4_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(4),
	o => \i[4]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~5_combout\ = (\lr~input_o\ & \i[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[4]~input_o\,
	combout => \q~5_combout\);

-- Location: FF_X8_Y1_N25
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~5_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N1
\i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(5),
	o => \i[5]~input_o\);

-- Location: LCCOMB_X8_Y1_N10
\q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~6_combout\ = (\i[5]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[5]~input_o\,
	datad => \lr~input_o\,
	combout => \q~6_combout\);

-- Location: FF_X8_Y1_N11
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~6_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N1
\i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(6),
	o => \i[6]~input_o\);

-- Location: LCCOMB_X11_Y1_N28
\q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~7_combout\ = (\i[6]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[6]~input_o\,
	datad => \lr~input_o\,
	combout => \q~7_combout\);

-- Location: FF_X11_Y1_N29
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~7_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N1
\i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(7),
	o => \i[7]~input_o\);

-- Location: LCCOMB_X8_Y1_N4
\q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~8_combout\ = (\lr~input_o\ & \i[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[7]~input_o\,
	combout => \q~8_combout\);

-- Location: FF_X8_Y1_N5
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~8_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N8
\i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(8),
	o => \i[8]~input_o\);

-- Location: LCCOMB_X8_Y1_N22
\q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~9_combout\ = (\i[8]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[8]~input_o\,
	datad => \lr~input_o\,
	combout => \q~9_combout\);

-- Location: FF_X8_Y1_N23
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~9_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N15
\i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(9),
	o => \i[9]~input_o\);

-- Location: LCCOMB_X8_Y1_N8
\q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~10_combout\ = (\i[9]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[9]~input_o\,
	datad => \lr~input_o\,
	combout => \q~10_combout\);

-- Location: FF_X8_Y1_N9
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~10_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N8
\i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(10),
	o => \i[10]~input_o\);

-- Location: LCCOMB_X8_Y1_N26
\q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~11_combout\ = (\lr~input_o\ & \i[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[10]~input_o\,
	combout => \q~11_combout\);

-- Location: FF_X8_Y1_N27
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~11_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N22
\i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(11),
	o => \i[11]~input_o\);

-- Location: LCCOMB_X8_Y1_N28
\q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~12_combout\ = (\lr~input_o\ & \i[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[11]~input_o\,
	combout => \q~12_combout\);

-- Location: FF_X8_Y1_N29
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~12_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(12),
	o => \i[12]~input_o\);

-- Location: LCCOMB_X8_Y1_N30
\q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~13_combout\ = (\i[12]~input_o\ & \lr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[12]~input_o\,
	datad => \lr~input_o\,
	combout => \q~13_combout\);

-- Location: FF_X8_Y1_N31
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~13_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N15
\i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(13),
	o => \i[13]~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~14_combout\ = (\lr~input_o\ & \i[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[13]~input_o\,
	combout => \q~14_combout\);

-- Location: FF_X8_Y1_N17
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~14_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N1
\i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(14),
	o => \i[14]~input_o\);

-- Location: LCCOMB_X17_Y1_N28
\q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~15_combout\ = (\lr~input_o\ & \i[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[14]~input_o\,
	combout => \q~15_combout\);

-- Location: FF_X17_Y1_N29
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~15_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N15
\i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(15),
	o => \i[15]~input_o\);

-- Location: LCCOMB_X8_Y1_N2
\q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~16_combout\ = (\lr~input_o\ & \i[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr~input_o\,
	datad => \i[15]~input_o\,
	combout => \q~16_combout\);

-- Location: FF_X8_Y1_N3
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~16_combout\,
	ena => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;
END structure;


