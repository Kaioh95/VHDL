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

-- DATE "09/07/2019 10:26:46"

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

ENTITY 	Deslocador IS
    PORT (
	ENTRA : IN std_logic_vector(7 DOWNTO 0);
	DESLOCA : IN std_logic_vector(1 DOWNTO 0);
	SAIDA : OUT std_logic_vector(7 DOWNTO 0)
	);
END Deslocador;

-- Design Ports Information
-- SAIDA[0]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[5]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[6]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[7]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DESLOCA[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DESLOCA[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRA[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Deslocador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ENTRA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DESLOCA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \DESLOCA[0]~input_o\ : std_logic;
SIGNAL \ENTRA[0]~input_o\ : std_logic;
SIGNAL \ENTRA[1]~input_o\ : std_logic;
SIGNAL \DESLOCA[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ENTRA[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \ENTRA[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ENTRA[4]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \ENTRA[5]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ENTRA[6]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ENTRA[7]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ENTRA <= ENTRA;
ww_DESLOCA <= DESLOCA;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N16
\SAIDA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\SAIDA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SAIDA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\SAIDA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\SAIDA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SAIDA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SAIDA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SAIDA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\DESLOCA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DESLOCA(0),
	o => \DESLOCA[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\ENTRA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(0),
	o => \ENTRA[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\ENTRA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(1),
	o => \ENTRA[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\DESLOCA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DESLOCA(1),
	o => \DESLOCA[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\DESLOCA[0]~input_o\ & (\ENTRA[0]~input_o\ & ((\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & ((\DESLOCA[1]~input_o\ & ((\ENTRA[1]~input_o\))) # (!\DESLOCA[1]~input_o\ & (\ENTRA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[0]~input_o\,
	datac => \ENTRA[1]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X0_Y27_N15
\ENTRA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(2),
	o => \ENTRA[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\DESLOCA[0]~input_o\ & (((\ENTRA[0]~input_o\ & !\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & (\ENTRA[2]~input_o\ & ((\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[2]~input_o\,
	datac => \ENTRA[0]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((\ENTRA[1]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[1]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X0_Y24_N15
\ENTRA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(3),
	o => \ENTRA[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\DESLOCA[0]~input_o\ & (((\ENTRA[1]~input_o\ & !\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & (\ENTRA[3]~input_o\ & ((\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[3]~input_o\,
	datac => \ENTRA[1]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\ENTRA[2]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[2]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X0_Y28_N22
\ENTRA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(4),
	o => \ENTRA[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\DESLOCA[0]~input_o\ & (\ENTRA[2]~input_o\ & ((!\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & (((\ENTRA[4]~input_o\ & \DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[2]~input_o\,
	datac => \ENTRA[4]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\ENTRA[3]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[3]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X0_Y24_N8
\ENTRA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(5),
	o => \ENTRA[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\DESLOCA[0]~input_o\ & (\ENTRA[3]~input_o\ & ((!\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & (((\ENTRA[5]~input_o\ & \DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[3]~input_o\,
	datac => \ENTRA[5]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\ENTRA[4]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X0_Y28_N15
\ENTRA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(6),
	o => \ENTRA[6]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\DESLOCA[0]~input_o\ & (!\DESLOCA[1]~input_o\ & (\ENTRA[4]~input_o\))) # (!\DESLOCA[0]~input_o\ & (\DESLOCA[1]~input_o\ & ((\ENTRA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[4]~input_o\,
	datad => \ENTRA[6]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((\ENTRA[5]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[5]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\ENTRA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENTRA(7),
	o => \ENTRA[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\DESLOCA[0]~input_o\ & (((\ENTRA[5]~input_o\ & !\DESLOCA[1]~input_o\)))) # (!\DESLOCA[0]~input_o\ & (\ENTRA[7]~input_o\ & ((\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \ENTRA[7]~input_o\,
	datac => \ENTRA[5]~input_o\,
	datad => \DESLOCA[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((\ENTRA[6]~input_o\ & (\DESLOCA[0]~input_o\ $ (!\DESLOCA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \ENTRA[6]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X1_Y24_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\DESLOCA[0]~input_o\ & ((\DESLOCA[1]~input_o\ & (\ENTRA[7]~input_o\)) # (!\DESLOCA[1]~input_o\ & ((\ENTRA[6]~input_o\))))) # (!\DESLOCA[0]~input_o\ & (!\DESLOCA[1]~input_o\ & (\ENTRA[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DESLOCA[0]~input_o\,
	datab => \DESLOCA[1]~input_o\,
	datac => \ENTRA[7]~input_o\,
	datad => \ENTRA[6]~input_o\,
	combout => \Mux0~0_combout\);

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;
END structure;


