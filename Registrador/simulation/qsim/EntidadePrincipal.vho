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

-- DATE "10/12/2019 23:13:13"

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

ENTITY 	EntidadePrincipal IS
    PORT (
	c : IN std_logic_vector(2 DOWNTO 0);
	entrada : IN std_logic_vector(15 DOWNTO 0);
	rw : IN std_logic;
	clk : IN std_logic;
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END EntidadePrincipal;

ARCHITECTURE structure OF EntidadePrincipal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rw : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \saida[5]~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \saida[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_saida[7]~1_combout\ : std_logic;

BEGIN

ww_c <= c;
ww_entrada <= entrada;
ww_rw <= rw;
ww_clk <= clk;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_saida[7]~1_combout\ <= NOT \saida[7]~1_combout\;

\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]~0_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_saida[7]~1_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\c[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

\c[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

\c[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\c[2]~input_o\ & (!\c[0]~input_o\ & !\c[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[2]~input_o\,
	datac => \c[0]~input_o\,
	datad => \c[1]~input_o\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\c[0]~input_o\ & (!\c[2]~input_o\ & !\c[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~input_o\,
	datac => \c[2]~input_o\,
	datad => \c[1]~input_o\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\c[1]~input_o\ & (!\c[2]~input_o\ & !\c[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datac => \c[2]~input_o\,
	datad => \c[0]~input_o\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\c[0]~input_o\ & (\c[1]~input_o\ & !\c[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[0]~input_o\,
	datab => \c[1]~input_o\,
	datad => \c[2]~input_o\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\c[2]~input_o\ & (!\c[0]~input_o\ & !\c[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datac => \c[0]~input_o\,
	datad => \c[1]~input_o\,
	combout => \Equal0~4_combout\);

\saida[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida[5]~0_combout\ = (\c[2]~input_o\ & (\c[0]~input_o\ & !\c[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datab => \c[0]~input_o\,
	datad => \c[1]~input_o\,
	combout => \saida[5]~0_combout\);

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\c[2]~input_o\ & (\c[1]~input_o\ & !\c[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[2]~input_o\,
	datab => \c[1]~input_o\,
	datad => \c[0]~input_o\,
	combout => \Equal0~5_combout\);

\saida[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida[7]~1_combout\ = ((!\c[1]~input_o\) # (!\c[0]~input_o\)) # (!\c[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[2]~input_o\,
	datac => \c[0]~input_o\,
	datad => \c[1]~input_o\,
	combout => \saida[7]~1_combout\);

\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

\entrada[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

\entrada[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

\entrada[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

\entrada[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

\entrada[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

\entrada[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

\entrada[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

\entrada[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;
END structure;


