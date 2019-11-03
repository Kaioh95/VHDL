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

-- DATE "11/03/2019 20:02:45"

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

ENTITY 	rtl IS
    PORT (
	clk : IN std_logic;
	c : IN std_logic;
	s : IN std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	d : BUFFER std_logic
	);
END rtl;

ARCHITECTURE structure OF rtl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \i1|tot_saida[0]~8_combout\ : std_logic;
SIGNAL \i2|d~1_combout\ : std_logic;
SIGNAL \i1|tot_saida[0]~9\ : std_logic;
SIGNAL \i1|tot_saida[1]~10_combout\ : std_logic;
SIGNAL \i1|tot_saida[1]~11\ : std_logic;
SIGNAL \i1|tot_saida[2]~12_combout\ : std_logic;
SIGNAL \i1|tot_saida[2]~13\ : std_logic;
SIGNAL \i1|tot_saida[3]~14_combout\ : std_logic;
SIGNAL \i1|tot_saida[3]~15\ : std_logic;
SIGNAL \i1|tot_saida[4]~16_combout\ : std_logic;
SIGNAL \i1|tot_saida[4]~17\ : std_logic;
SIGNAL \i1|tot_saida[5]~18_combout\ : std_logic;
SIGNAL \i1|tot_saida[5]~19\ : std_logic;
SIGNAL \i1|tot_saida[6]~20_combout\ : std_logic;
SIGNAL \i1|tot_saida[6]~21\ : std_logic;
SIGNAL \i1|tot_saida[7]~22_combout\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \i1|LessThan0~1_cout\ : std_logic;
SIGNAL \i1|LessThan0~3_cout\ : std_logic;
SIGNAL \i1|LessThan0~5_cout\ : std_logic;
SIGNAL \i1|LessThan0~7_cout\ : std_logic;
SIGNAL \i1|LessThan0~9_cout\ : std_logic;
SIGNAL \i1|LessThan0~11_cout\ : std_logic;
SIGNAL \i1|LessThan0~13_cout\ : std_logic;
SIGNAL \i1|LessThan0~14_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|d~0_combout\ : std_logic;
SIGNAL \i1|tot_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2|y\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i2|ALT_INV_y\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_c <= c;
ww_s <= s;
ww_a <= a;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i2|ALT_INV_y\(0) <= NOT \i2|y\(0);

\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\i1|tot_saida[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[0]~8_combout\ = (\i1|tot_saida\(0) & (\a[0]~input_o\ $ (VCC))) # (!\i1|tot_saida\(0) & (\a[0]~input_o\ & VCC))
-- \i1|tot_saida[0]~9\ = CARRY((\i1|tot_saida\(0) & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(0),
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \i1|tot_saida[0]~8_combout\,
	cout => \i1|tot_saida[0]~9\);

\i2|d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|d~1_combout\ = (!\i2|y\(0) & !\i2|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|y\(0),
	datab => \i2|y\(1),
	combout => \i2|d~1_combout\);

\i1|tot_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[0]~8_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(0));

\i1|tot_saida[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[1]~10_combout\ = (\i1|tot_saida\(1) & ((\a[1]~input_o\ & (\i1|tot_saida[0]~9\ & VCC)) # (!\a[1]~input_o\ & (!\i1|tot_saida[0]~9\)))) # (!\i1|tot_saida\(1) & ((\a[1]~input_o\ & (!\i1|tot_saida[0]~9\)) # (!\a[1]~input_o\ & 
-- ((\i1|tot_saida[0]~9\) # (GND)))))
-- \i1|tot_saida[1]~11\ = CARRY((\i1|tot_saida\(1) & (!\a[1]~input_o\ & !\i1|tot_saida[0]~9\)) # (!\i1|tot_saida\(1) & ((!\i1|tot_saida[0]~9\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(1),
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[0]~9\,
	combout => \i1|tot_saida[1]~10_combout\,
	cout => \i1|tot_saida[1]~11\);

\i1|tot_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[1]~10_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(1));

\i1|tot_saida[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[2]~12_combout\ = ((\i1|tot_saida\(2) $ (\a[2]~input_o\ $ (!\i1|tot_saida[1]~11\)))) # (GND)
-- \i1|tot_saida[2]~13\ = CARRY((\i1|tot_saida\(2) & ((\a[2]~input_o\) # (!\i1|tot_saida[1]~11\))) # (!\i1|tot_saida\(2) & (\a[2]~input_o\ & !\i1|tot_saida[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(2),
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[1]~11\,
	combout => \i1|tot_saida[2]~12_combout\,
	cout => \i1|tot_saida[2]~13\);

\i1|tot_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[2]~12_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(2));

\i1|tot_saida[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[3]~14_combout\ = (\i1|tot_saida\(3) & ((\a[3]~input_o\ & (\i1|tot_saida[2]~13\ & VCC)) # (!\a[3]~input_o\ & (!\i1|tot_saida[2]~13\)))) # (!\i1|tot_saida\(3) & ((\a[3]~input_o\ & (!\i1|tot_saida[2]~13\)) # (!\a[3]~input_o\ & 
-- ((\i1|tot_saida[2]~13\) # (GND)))))
-- \i1|tot_saida[3]~15\ = CARRY((\i1|tot_saida\(3) & (!\a[3]~input_o\ & !\i1|tot_saida[2]~13\)) # (!\i1|tot_saida\(3) & ((!\i1|tot_saida[2]~13\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(3),
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[2]~13\,
	combout => \i1|tot_saida[3]~14_combout\,
	cout => \i1|tot_saida[3]~15\);

\i1|tot_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[3]~14_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(3));

\i1|tot_saida[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[4]~16_combout\ = ((\i1|tot_saida\(4) $ (\a[4]~input_o\ $ (!\i1|tot_saida[3]~15\)))) # (GND)
-- \i1|tot_saida[4]~17\ = CARRY((\i1|tot_saida\(4) & ((\a[4]~input_o\) # (!\i1|tot_saida[3]~15\))) # (!\i1|tot_saida\(4) & (\a[4]~input_o\ & !\i1|tot_saida[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(4),
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[3]~15\,
	combout => \i1|tot_saida[4]~16_combout\,
	cout => \i1|tot_saida[4]~17\);

\i1|tot_saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[4]~16_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(4));

\i1|tot_saida[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[5]~18_combout\ = (\i1|tot_saida\(5) & ((\a[5]~input_o\ & (\i1|tot_saida[4]~17\ & VCC)) # (!\a[5]~input_o\ & (!\i1|tot_saida[4]~17\)))) # (!\i1|tot_saida\(5) & ((\a[5]~input_o\ & (!\i1|tot_saida[4]~17\)) # (!\a[5]~input_o\ & 
-- ((\i1|tot_saida[4]~17\) # (GND)))))
-- \i1|tot_saida[5]~19\ = CARRY((\i1|tot_saida\(5) & (!\a[5]~input_o\ & !\i1|tot_saida[4]~17\)) # (!\i1|tot_saida\(5) & ((!\i1|tot_saida[4]~17\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(5),
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[4]~17\,
	combout => \i1|tot_saida[5]~18_combout\,
	cout => \i1|tot_saida[5]~19\);

\i1|tot_saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[5]~18_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(5));

\i1|tot_saida[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[6]~20_combout\ = ((\i1|tot_saida\(6) $ (\a[6]~input_o\ $ (!\i1|tot_saida[5]~19\)))) # (GND)
-- \i1|tot_saida[6]~21\ = CARRY((\i1|tot_saida\(6) & ((\a[6]~input_o\) # (!\i1|tot_saida[5]~19\))) # (!\i1|tot_saida\(6) & (\a[6]~input_o\ & !\i1|tot_saida[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(6),
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \i1|tot_saida[5]~19\,
	combout => \i1|tot_saida[6]~20_combout\,
	cout => \i1|tot_saida[6]~21\);

\i1|tot_saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[6]~20_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(6));

\i1|tot_saida[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|tot_saida[7]~22_combout\ = \i1|tot_saida\(7) $ (\a[7]~input_o\ $ (\i1|tot_saida[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(7),
	datab => \a[7]~input_o\,
	cin => \i1|tot_saida[6]~21\,
	combout => \i1|tot_saida[7]~22_combout\);

\i1|tot_saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i1|tot_saida[7]~22_combout\,
	sclr => \i2|d~1_combout\,
	ena => \i2|ALT_INV_y\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|tot_saida\(7));

\s[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(7),
	o => \s[7]~input_o\);

\s[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(6),
	o => \s[6]~input_o\);

\s[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(5),
	o => \s[5]~input_o\);

\s[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(4),
	o => \s[4]~input_o\);

\s[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(3),
	o => \s[3]~input_o\);

\s[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

\i1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~1_cout\ = CARRY((!\i1|tot_saida\(0) & \s[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(0),
	datab => \s[0]~input_o\,
	datad => VCC,
	cout => \i1|LessThan0~1_cout\);

\i1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~3_cout\ = CARRY((\i1|tot_saida\(1) & ((!\i1|LessThan0~1_cout\) # (!\s[1]~input_o\))) # (!\i1|tot_saida\(1) & (!\s[1]~input_o\ & !\i1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(1),
	datab => \s[1]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~1_cout\,
	cout => \i1|LessThan0~3_cout\);

\i1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~5_cout\ = CARRY((\i1|tot_saida\(2) & (\s[2]~input_o\ & !\i1|LessThan0~3_cout\)) # (!\i1|tot_saida\(2) & ((\s[2]~input_o\) # (!\i1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(2),
	datab => \s[2]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~3_cout\,
	cout => \i1|LessThan0~5_cout\);

\i1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~7_cout\ = CARRY((\i1|tot_saida\(3) & ((!\i1|LessThan0~5_cout\) # (!\s[3]~input_o\))) # (!\i1|tot_saida\(3) & (!\s[3]~input_o\ & !\i1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(3),
	datab => \s[3]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~5_cout\,
	cout => \i1|LessThan0~7_cout\);

\i1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~9_cout\ = CARRY((\i1|tot_saida\(4) & (\s[4]~input_o\ & !\i1|LessThan0~7_cout\)) # (!\i1|tot_saida\(4) & ((\s[4]~input_o\) # (!\i1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(4),
	datab => \s[4]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~7_cout\,
	cout => \i1|LessThan0~9_cout\);

\i1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~11_cout\ = CARRY((\i1|tot_saida\(5) & ((!\i1|LessThan0~9_cout\) # (!\s[5]~input_o\))) # (!\i1|tot_saida\(5) & (!\s[5]~input_o\ & !\i1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(5),
	datab => \s[5]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~9_cout\,
	cout => \i1|LessThan0~11_cout\);

\i1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~13_cout\ = CARRY((\i1|tot_saida\(6) & (\s[6]~input_o\ & !\i1|LessThan0~11_cout\)) # (!\i1|tot_saida\(6) & ((\s[6]~input_o\) # (!\i1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(6),
	datab => \s[6]~input_o\,
	datad => VCC,
	cin => \i1|LessThan0~11_cout\,
	cout => \i1|LessThan0~13_cout\);

\i1|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|LessThan0~14_combout\ = (\i1|tot_saida\(7) & (\s[7]~input_o\ & \i1|LessThan0~13_cout\)) # (!\i1|tot_saida\(7) & ((\s[7]~input_o\) # (\i1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|tot_saida\(7),
	datab => \s[7]~input_o\,
	cin => \i1|LessThan0~13_cout\,
	combout => \i1|LessThan0~14_combout\);

\i2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\i2|y\(0) & (!\i2|y\(1) & ((\c~input_o\) # (!\i1|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|y\(0),
	datab => \c~input_o\,
	datac => \i1|LessThan0~14_combout\,
	datad => \i2|y\(1),
	combout => \i2|Mux0~0_combout\);

\i2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(1));

\i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = ((!\i2|y\(1) & !\c~input_o\)) # (!\i2|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|y\(1),
	datac => \c~input_o\,
	datad => \i2|y\(0),
	combout => \i2|Mux1~0_combout\);

\i2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \i2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|y\(0));

\i2|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|d~0_combout\ = (\i2|y\(0) & \i2|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|y\(0),
	datab => \i2|y\(1),
	combout => \i2|d~0_combout\);

ww_d <= \d~output_o\;
END structure;


