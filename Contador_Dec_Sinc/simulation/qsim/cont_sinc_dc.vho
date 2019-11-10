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

-- DATE "10/13/2019 13:18:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont_sinc_dc IS
    PORT (
	ud : IN std_logic;
	clear : IN std_logic;
	cnt : IN std_logic;
	clk : IN std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0);
	fc : OUT std_logic
	);
END cont_sinc_dc;

ARCHITECTURE structure OF cont_sinc_dc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ud : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_cnt : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fc : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \fc~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \cnt~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \valor[0]~3_combout\ : std_logic;
SIGNAL \ud~input_o\ : std_logic;
SIGNAL \valor[1]~5_cout\ : std_logic;
SIGNAL \valor[1]~6_combout\ : std_logic;
SIGNAL \valor[0]~8_combout\ : std_logic;
SIGNAL \valor[1]~7\ : std_logic;
SIGNAL \valor[2]~9_combout\ : std_logic;
SIGNAL \valor[2]~10\ : std_logic;
SIGNAL \valor[3]~11_combout\ : std_logic;
SIGNAL \fc~0_combout\ : std_logic;
SIGNAL \fc~1_combout\ : std_logic;
SIGNAL \fc~2_combout\ : std_logic;
SIGNAL \fc~reg0_q\ : std_logic;
SIGNAL valor : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cnt~input_o\ : std_logic;

BEGIN

ww_ud <= ud;
ww_clear <= clear;
ww_cnt <= cnt;
ww_clk <= clk;
s <= ww_s;
fc <= ww_fc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt~input_o\ <= NOT \cnt~input_o\;

\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(0),
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(1),
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(2),
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor(3),
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\fc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fc~reg0_q\,
	devoe => ww_devoe,
	o => \fc~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\cnt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt,
	o => \cnt~input_o\);

\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

\valor[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[0]~3_combout\ = (\cnt~input_o\ & ((!valor(0)))) # (!\cnt~input_o\ & (!\clear~input_o\ & valor(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt~input_o\,
	datac => \clear~input_o\,
	datad => valor(0),
	combout => \valor[0]~3_combout\);

\valor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \valor[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(0));

\ud~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ud,
	o => \ud~input_o\);

\valor[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[1]~5_cout\ = CARRY(valor(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor(0),
	datad => VCC,
	cout => \valor[1]~5_cout\);

\valor[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[1]~6_combout\ = (\ud~input_o\ & ((valor(1) & (\valor[1]~5_cout\ & VCC)) # (!valor(1) & (!\valor[1]~5_cout\)))) # (!\ud~input_o\ & ((valor(1) & (!\valor[1]~5_cout\)) # (!valor(1) & ((\valor[1]~5_cout\) # (GND)))))
-- \valor[1]~7\ = CARRY((\ud~input_o\ & (!valor(1) & !\valor[1]~5_cout\)) # (!\ud~input_o\ & ((!\valor[1]~5_cout\) # (!valor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ud~input_o\,
	datab => valor(1),
	datad => VCC,
	cin => \valor[1]~5_cout\,
	combout => \valor[1]~6_combout\,
	cout => \valor[1]~7\);

\valor[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[0]~8_combout\ = (\clear~input_o\) # (\cnt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \cnt~input_o\,
	combout => \valor[0]~8_combout\);

\valor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \valor[1]~6_combout\,
	sclr => \ALT_INV_cnt~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(1));

\valor[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[2]~9_combout\ = ((\ud~input_o\ $ (valor(2) $ (!\valor[1]~7\)))) # (GND)
-- \valor[2]~10\ = CARRY((\ud~input_o\ & ((valor(2)) # (!\valor[1]~7\))) # (!\ud~input_o\ & (valor(2) & !\valor[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ud~input_o\,
	datab => valor(2),
	datad => VCC,
	cin => \valor[1]~7\,
	combout => \valor[2]~9_combout\,
	cout => \valor[2]~10\);

\valor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \valor[2]~9_combout\,
	sclr => \ALT_INV_cnt~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(2));

\valor[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor[3]~11_combout\ = \ud~input_o\ $ (valor(3) $ (\valor[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ud~input_o\,
	datab => valor(3),
	cin => \valor[2]~10\,
	combout => \valor[3]~11_combout\);

\valor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \valor[3]~11_combout\,
	sclr => \ALT_INV_cnt~input_o\,
	ena => \valor[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor(3));

\fc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fc~0_combout\ = (valor(0) & ((valor(1)) # (\ud~input_o\))) # (!valor(0) & (valor(1) & \ud~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor(0),
	datab => valor(1),
	datac => \ud~input_o\,
	combout => \fc~0_combout\);

\fc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fc~1_combout\ = (valor(2) & ((valor(3)) # (\ud~input_o\))) # (!valor(2) & (valor(3) & \ud~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor(2),
	datab => valor(3),
	datac => \ud~input_o\,
	combout => \fc~1_combout\);

\fc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fc~2_combout\ = (\cnt~input_o\ & (((\fc~0_combout\ & \fc~1_combout\)))) # (!\cnt~input_o\ & (\fc~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fc~reg0_q\,
	datab => \cnt~input_o\,
	datac => \fc~0_combout\,
	datad => \fc~1_combout\,
	combout => \fc~2_combout\);

\fc~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fc~reg0_q\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_fc <= \fc~output_o\;
END structure;


