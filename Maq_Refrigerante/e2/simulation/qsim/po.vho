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

-- DATE "11/03/2019 16:15:05"

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

ENTITY 	po IS
    PORT (
	clk : IN std_logic;
	tot_ld : IN std_logic;
	tot_clr : IN std_logic;
	s : IN std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	tot_lt_s : OUT std_logic;
	n_troco : OUT std_logic
	);
END po;

ARCHITECTURE structure OF po IS
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
SIGNAL ww_tot_ld : std_logic;
SIGNAL ww_tot_clr : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tot_lt_s : std_logic;
SIGNAL ww_n_troco : std_logic;
SIGNAL \tot_lt_s~output_o\ : std_logic;
SIGNAL \n_troco~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \tot_saida[0]~8_combout\ : std_logic;
SIGNAL \tot_clr~input_o\ : std_logic;
SIGNAL \tot_ld~input_o\ : std_logic;
SIGNAL \tot_saida[7]~24_combout\ : std_logic;
SIGNAL \tot_saida[0]~9\ : std_logic;
SIGNAL \tot_saida[1]~10_combout\ : std_logic;
SIGNAL \tot_saida[1]~11\ : std_logic;
SIGNAL \tot_saida[2]~12_combout\ : std_logic;
SIGNAL \tot_saida[2]~13\ : std_logic;
SIGNAL \tot_saida[3]~14_combout\ : std_logic;
SIGNAL \tot_saida[3]~15\ : std_logic;
SIGNAL \tot_saida[4]~16_combout\ : std_logic;
SIGNAL \tot_saida[4]~17\ : std_logic;
SIGNAL \tot_saida[5]~18_combout\ : std_logic;
SIGNAL \tot_saida[5]~19\ : std_logic;
SIGNAL \tot_saida[6]~20_combout\ : std_logic;
SIGNAL \tot_saida[6]~21\ : std_logic;
SIGNAL \tot_saida[7]~22_combout\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \tot_lt_s~0_combout\ : std_logic;
SIGNAL tot_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_tot_ld <= tot_ld;
ww_tot_clr <= tot_clr;
ww_s <= s;
ww_a <= a;
tot_lt_s <= ww_tot_lt_s;
n_troco <= ww_n_troco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;

\tot_lt_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tot_lt_s~0_combout\,
	devoe => ww_devoe,
	o => \tot_lt_s~output_o\);

\n_troco~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \n_troco~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

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

\tot_saida[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[0]~8_combout\ = (\a[0]~input_o\ & (tot_saida(0) $ (VCC))) # (!\a[0]~input_o\ & (tot_saida(0) & VCC))
-- \tot_saida[0]~9\ = CARRY((\a[0]~input_o\ & tot_saida(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => tot_saida(0),
	datad => VCC,
	combout => \tot_saida[0]~8_combout\,
	cout => \tot_saida[0]~9\);

\tot_clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tot_clr,
	o => \tot_clr~input_o\);

\tot_ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tot_ld,
	o => \tot_ld~input_o\);

\tot_saida[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[7]~24_combout\ = (\tot_clr~input_o\) # (\tot_ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_clr~input_o\,
	datab => \tot_ld~input_o\,
	combout => \tot_saida[7]~24_combout\);

\tot_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[0]~8_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(0));

\tot_saida[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[1]~10_combout\ = (\a[1]~input_o\ & ((tot_saida(1) & (\tot_saida[0]~9\ & VCC)) # (!tot_saida(1) & (!\tot_saida[0]~9\)))) # (!\a[1]~input_o\ & ((tot_saida(1) & (!\tot_saida[0]~9\)) # (!tot_saida(1) & ((\tot_saida[0]~9\) # (GND)))))
-- \tot_saida[1]~11\ = CARRY((\a[1]~input_o\ & (!tot_saida(1) & !\tot_saida[0]~9\)) # (!\a[1]~input_o\ & ((!\tot_saida[0]~9\) # (!tot_saida(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => tot_saida(1),
	datad => VCC,
	cin => \tot_saida[0]~9\,
	combout => \tot_saida[1]~10_combout\,
	cout => \tot_saida[1]~11\);

\tot_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[1]~10_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(1));

\tot_saida[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[2]~12_combout\ = ((\a[2]~input_o\ $ (tot_saida(2) $ (!\tot_saida[1]~11\)))) # (GND)
-- \tot_saida[2]~13\ = CARRY((\a[2]~input_o\ & ((tot_saida(2)) # (!\tot_saida[1]~11\))) # (!\a[2]~input_o\ & (tot_saida(2) & !\tot_saida[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => tot_saida(2),
	datad => VCC,
	cin => \tot_saida[1]~11\,
	combout => \tot_saida[2]~12_combout\,
	cout => \tot_saida[2]~13\);

\tot_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[2]~12_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(2));

\tot_saida[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[3]~14_combout\ = (\a[3]~input_o\ & ((tot_saida(3) & (\tot_saida[2]~13\ & VCC)) # (!tot_saida(3) & (!\tot_saida[2]~13\)))) # (!\a[3]~input_o\ & ((tot_saida(3) & (!\tot_saida[2]~13\)) # (!tot_saida(3) & ((\tot_saida[2]~13\) # (GND)))))
-- \tot_saida[3]~15\ = CARRY((\a[3]~input_o\ & (!tot_saida(3) & !\tot_saida[2]~13\)) # (!\a[3]~input_o\ & ((!\tot_saida[2]~13\) # (!tot_saida(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => tot_saida(3),
	datad => VCC,
	cin => \tot_saida[2]~13\,
	combout => \tot_saida[3]~14_combout\,
	cout => \tot_saida[3]~15\);

\tot_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[3]~14_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(3));

\tot_saida[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[4]~16_combout\ = ((\a[4]~input_o\ $ (tot_saida(4) $ (!\tot_saida[3]~15\)))) # (GND)
-- \tot_saida[4]~17\ = CARRY((\a[4]~input_o\ & ((tot_saida(4)) # (!\tot_saida[3]~15\))) # (!\a[4]~input_o\ & (tot_saida(4) & !\tot_saida[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => tot_saida(4),
	datad => VCC,
	cin => \tot_saida[3]~15\,
	combout => \tot_saida[4]~16_combout\,
	cout => \tot_saida[4]~17\);

\tot_saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[4]~16_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(4));

\tot_saida[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[5]~18_combout\ = (\a[5]~input_o\ & ((tot_saida(5) & (\tot_saida[4]~17\ & VCC)) # (!tot_saida(5) & (!\tot_saida[4]~17\)))) # (!\a[5]~input_o\ & ((tot_saida(5) & (!\tot_saida[4]~17\)) # (!tot_saida(5) & ((\tot_saida[4]~17\) # (GND)))))
-- \tot_saida[5]~19\ = CARRY((\a[5]~input_o\ & (!tot_saida(5) & !\tot_saida[4]~17\)) # (!\a[5]~input_o\ & ((!\tot_saida[4]~17\) # (!tot_saida(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => tot_saida(5),
	datad => VCC,
	cin => \tot_saida[4]~17\,
	combout => \tot_saida[5]~18_combout\,
	cout => \tot_saida[5]~19\);

\tot_saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[5]~18_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(5));

\tot_saida[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[6]~20_combout\ = ((\a[6]~input_o\ $ (tot_saida(6) $ (!\tot_saida[5]~19\)))) # (GND)
-- \tot_saida[6]~21\ = CARRY((\a[6]~input_o\ & ((tot_saida(6)) # (!\tot_saida[5]~19\))) # (!\a[6]~input_o\ & (tot_saida(6) & !\tot_saida[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => tot_saida(6),
	datad => VCC,
	cin => \tot_saida[5]~19\,
	combout => \tot_saida[6]~20_combout\,
	cout => \tot_saida[6]~21\);

\tot_saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[6]~20_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(6));

\tot_saida[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_saida[7]~22_combout\ = \a[7]~input_o\ $ (tot_saida(7) $ (\tot_saida[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => tot_saida(7),
	cin => \tot_saida[6]~21\,
	combout => \tot_saida[7]~22_combout\);

\tot_saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tot_saida[7]~22_combout\,
	sclr => \tot_clr~input_o\,
	ena => \tot_saida[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_saida(7));

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

\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!tot_saida(0) & \s[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(0),
	datab => \s[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((tot_saida(1) & ((!\LessThan1~1_cout\) # (!\s[1]~input_o\))) # (!tot_saida(1) & (!\s[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(1),
	datab => \s[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((tot_saida(2) & (\s[2]~input_o\ & !\LessThan1~3_cout\)) # (!tot_saida(2) & ((\s[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(2),
	datab => \s[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((tot_saida(3) & ((!\LessThan1~5_cout\) # (!\s[3]~input_o\))) # (!tot_saida(3) & (!\s[3]~input_o\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(3),
	datab => \s[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((tot_saida(4) & (\s[4]~input_o\ & !\LessThan1~7_cout\)) # (!tot_saida(4) & ((\s[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(4),
	datab => \s[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((tot_saida(5) & ((!\LessThan1~9_cout\) # (!\s[5]~input_o\))) # (!tot_saida(5) & (!\s[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(5),
	datab => \s[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((tot_saida(6) & (\s[6]~input_o\ & !\LessThan1~11_cout\)) # (!tot_saida(6) & ((\s[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(6),
	datab => \s[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

\LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (tot_saida(7) & (\s[7]~input_o\ & \LessThan1~13_cout\)) # (!tot_saida(7) & ((\s[7]~input_o\) # (\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tot_saida(7),
	datab => \s[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\s[0]~input_o\ & tot_saida(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => tot_saida(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\s[1]~input_o\ & ((!\LessThan0~1_cout\) # (!tot_saida(1)))) # (!\s[1]~input_o\ & (!tot_saida(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => tot_saida(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\s[2]~input_o\ & (tot_saida(2) & !\LessThan0~3_cout\)) # (!\s[2]~input_o\ & ((tot_saida(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => tot_saida(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\s[3]~input_o\ & ((!\LessThan0~5_cout\) # (!tot_saida(3)))) # (!\s[3]~input_o\ & (!tot_saida(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[3]~input_o\,
	datab => tot_saida(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\s[4]~input_o\ & (tot_saida(4) & !\LessThan0~7_cout\)) # (!\s[4]~input_o\ & ((tot_saida(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[4]~input_o\,
	datab => tot_saida(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\s[5]~input_o\ & ((!\LessThan0~9_cout\) # (!tot_saida(5)))) # (!\s[5]~input_o\ & (!tot_saida(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[5]~input_o\,
	datab => tot_saida(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\s[6]~input_o\ & (tot_saida(6) & !\LessThan0~11_cout\)) # (!\s[6]~input_o\ & ((tot_saida(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[6]~input_o\,
	datab => tot_saida(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\s[7]~input_o\ & (tot_saida(7) & \LessThan0~13_cout\)) # (!\s[7]~input_o\ & ((tot_saida(7)) # (\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[7]~input_o\,
	datab => tot_saida(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

\tot_lt_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_lt_s~0_combout\ = (\LessThan1~14_combout\ & !\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datad => \LessThan0~14_combout\,
	combout => \tot_lt_s~0_combout\);

ww_tot_lt_s <= \tot_lt_s~output_o\;

ww_n_troco <= \n_troco~output_o\;
END structure;


