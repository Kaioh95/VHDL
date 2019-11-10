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

-- DATE "11/02/2019 19:30:48"

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

ENTITY 	car_dashboard IS
    PORT (
	clk : IN std_logic;
	bt : IN std_logic;
	data : OUT std_logic_vector(2 DOWNTO 0)
	);
END car_dashboard;

ARCHITECTURE structure OF car_dashboard IS
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
SIGNAL ww_bt : std_logic;
SIGNAL ww_data : std_logic_vector(2 DOWNTO 0);
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bt~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \data[0]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \data[1]~reg0_q\ : std_logic;
SIGNAL sig : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_sig : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_bt <= bt;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_sig(2) <= NOT sig(2);

\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\bt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt,
	o => \bt~input_o\);

\sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bt~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(2));

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = sig(0) $ (((\bt~input_o\ & !sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt~input_o\,
	datac => sig(2),
	datad => sig(0),
	combout => \Mux2~0_combout\);

\sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(0));

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = sig(1) $ (((\bt~input_o\ & (!sig(2) & sig(0))) # (!\bt~input_o\ & (sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig(1),
	datab => \bt~input_o\,
	datac => sig(2),
	datad => sig(0),
	combout => \Mux1~0_combout\);

\sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig(1));

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\bt~input_o\ & (sig(0))) # (!\bt~input_o\ & ((\data[0]~reg0_q\) # ((!sig(0) & !sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig(0),
	datab => \data[0]~reg0_q\,
	datac => sig(1),
	datad => \bt~input_o\,
	combout => \Mux5~0_combout\);

\data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux5~0_combout\,
	ena => ALT_INV_sig(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[0]~reg0_q\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bt~input_o\ & (sig(0) $ ((!sig(1))))) # (!\bt~input_o\ & (\data[1]~reg0_q\ & ((sig(0)) # (sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig(0),
	datab => sig(1),
	datac => \data[1]~reg0_q\,
	datad => \bt~input_o\,
	combout => \Mux4~0_combout\);

\data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux4~0_combout\,
	ena => ALT_INV_sig(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[1]~reg0_q\);

ww_data(0) <= \data[0]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(2) <= \data[2]~output_o\;
END structure;


