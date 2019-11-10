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

-- DATE "10/13/2019 11:56:22"

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

ENTITY 	cont_a_dc IS
    PORT (
	clk : IN std_logic;
	dc : IN std_logic;
	q : OUT std_logic_vector(1 DOWNTO 0)
	);
END cont_a_dc;

ARCHITECTURE structure OF cont_a_dc IS
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
SIGNAL ww_dc : std_logic;
SIGNAL ww_q : std_logic_vector(1 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \cc|s0~0_combout\ : std_logic;
SIGNAL \cc|s0~q\ : std_logic;
SIGNAL \cd|s0~0_combout\ : std_logic;
SIGNAL \cd|s0~q\ : std_logic;
SIGNAL \dc~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \cc|s1~0_combout\ : std_logic;
SIGNAL \cc|s1~q\ : std_logic;
SIGNAL \cd|s1~0_combout\ : std_logic;
SIGNAL \cd|s1~q\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \cc|ALT_INV_s0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dc <= dc;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cc|ALT_INV_s0~q\ <= NOT \cc|s0~q\;

\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~0_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~1_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\cc|s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc|s0~0_combout\ = !\cc|s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc|s0~q\,
	combout => \cc|s0~0_combout\);

\cc|s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cc|s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cc|s0~q\);

\cd|s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|s0~0_combout\ = !\cd|s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|s0~q\,
	combout => \cd|s0~0_combout\);

\cd|s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cd|s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|s0~q\);

\dc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dc,
	o => \dc~input_o\);

\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\dc~input_o\ & (\cc|s0~q\)) # (!\dc~input_o\ & ((\cd|s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc|s0~q\,
	datab => \cd|s0~q\,
	datad => \dc~input_o\,
	combout => \q~0_combout\);

\cc|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cc|s1~0_combout\ = !\cc|s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc|s1~q\,
	combout => \cc|s1~0_combout\);

\cc|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cc|ALT_INV_s0~q\,
	d => \cc|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cc|s1~q\);

\cd|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|s1~0_combout\ = !\cd|s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|s1~q\,
	combout => \cd|s1~0_combout\);

\cd|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|s0~q\,
	d => \cd|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|s1~q\);

\q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~1_combout\ = (\dc~input_o\ & (\cc|s1~q\)) # (!\dc~input_o\ & ((\cd|s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cc|s1~q\,
	datab => \cd|s1~q\,
	datad => \dc~input_o\,
	combout => \q~1_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;
END structure;


