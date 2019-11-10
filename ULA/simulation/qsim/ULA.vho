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

-- DATE "09/07/2019 13:22:30"

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

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	M : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	Cin : BUFFER std_logic;
	Cout : BUFFER std_logic;
	F : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- Cout	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Cin~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Cin~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \l7|Xi~4_combout\ : std_logic;
SIGNAL \l7|Xi~5_combout\ : std_logic;
SIGNAL \l7|Yi~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \l3|Yi~1_combout\ : std_logic;
SIGNAL \l3|Yi~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \l3|Xi~4_combout\ : std_logic;
SIGNAL \l3|Xi~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \l2|Yi~1_combout\ : std_logic;
SIGNAL \l2|Yi~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \l0|Yi~1_combout\ : std_logic;
SIGNAL \l0|Xi~2_combout\ : std_logic;
SIGNAL \l0|Xi~1_combout\ : std_logic;
SIGNAL \l0|Xi~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \l0|Xi~3_combout\ : std_logic;
SIGNAL \l0|Yi~0_combout\ : std_logic;
SIGNAL \o0|cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \l1|Yi~1_combout\ : std_logic;
SIGNAL \l1|Xi~3_combout\ : std_logic;
SIGNAL \l0|Xi~4_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \l1|Xi~1_combout\ : std_logic;
SIGNAL \l1|Xi~0_combout\ : std_logic;
SIGNAL \l1|Xi~2_combout\ : std_logic;
SIGNAL \l1|Yi~0_combout\ : std_logic;
SIGNAL \o1|cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \l2|Xi~4_combout\ : std_logic;
SIGNAL \l2|Xi~5_combout\ : std_logic;
SIGNAL \o2|cout~0_combout\ : std_logic;
SIGNAL \o3|cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \l4|Yi~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \l4|Xi~4_combout\ : std_logic;
SIGNAL \l4|Xi~5_combout\ : std_logic;
SIGNAL \l4|Yi~0_combout\ : std_logic;
SIGNAL \o4|cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \l5|Xi~4_combout\ : std_logic;
SIGNAL \l5|Xi~5_combout\ : std_logic;
SIGNAL \l5|Yi~1_combout\ : std_logic;
SIGNAL \l5|Yi~0_combout\ : std_logic;
SIGNAL \o5|cout~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \l6|Yi~0_combout\ : std_logic;
SIGNAL \l6|Yi~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \l6|Xi~4_combout\ : std_logic;
SIGNAL \l6|Xi~5_combout\ : std_logic;
SIGNAL \o6|cout~0_combout\ : std_logic;
SIGNAL \l7|Yi~1_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \o0|s~combout\ : std_logic;
SIGNAL \o1|s~combout\ : std_logic;
SIGNAL \o2|s~combout\ : std_logic;
SIGNAL \o3|s~combout\ : std_logic;
SIGNAL \o4|s~combout\ : std_logic;
SIGNAL \o5|s~combout\ : std_logic;
SIGNAL \o6|s~combout\ : std_logic;
SIGNAL \o7|s~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_M <= M;
ww_S1 <= S1;
ww_S0 <= S0;
Cin <= ww_Cin;
Cout <= ww_Cout;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y0_N16
\Cin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cin~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Cin~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o0|s~combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o1|s~combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o2|s~combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o3|s~combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o4|s~combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o5|s~combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o6|s~combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o7|s~combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOIBUF_X7_Y0_N15
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X10_Y1_N8
\Cin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cin~0_combout\ = (!\M~input_o\ & (\S1~input_o\ $ (\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \Cin~0_combout\);

-- Location: IOIBUF_X3_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X6_Y3_N16
\l7|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~4_combout\ = (\S1~input_o\ & (\B[7]~input_o\ $ (((\A[7]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[7]~input_o\ & ((\S0~input_o\) # (\B[7]~input_o\))) # (!\A[7]~input_o\ & (\S0~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \B[7]~input_o\,
	combout => \l7|Xi~4_combout\);

-- Location: LCCOMB_X6_Y3_N10
\l7|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Xi~5_combout\ = (\M~input_o\ & ((\l7|Xi~4_combout\))) # (!\M~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \l7|Xi~4_combout\,
	datad => \M~input_o\,
	combout => \l7|Xi~5_combout\);

-- Location: LCCOMB_X6_Y3_N8
\l7|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Yi~0_combout\ = (!\B[7]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l7|Yi~0_combout\);

-- Location: IOIBUF_X0_Y4_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N30
\l3|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Yi~1_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (\B[3]~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \B[3]~input_o\,
	datad => \S0~input_o\,
	combout => \l3|Yi~1_combout\);

-- Location: LCCOMB_X6_Y4_N20
\l3|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Yi~0_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (!\B[3]~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \B[3]~input_o\,
	datad => \S0~input_o\,
	combout => \l3|Yi~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N28
\l3|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~4_combout\ = (\S1~input_o\ & (\B[3]~input_o\ $ (((\A[3]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\S0~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S1~input_o\,
	datac => \B[3]~input_o\,
	datad => \S0~input_o\,
	combout => \l3|Xi~4_combout\);

-- Location: LCCOMB_X6_Y4_N14
\l3|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l3|Xi~5_combout\ = (\M~input_o\ & ((\l3|Xi~4_combout\))) # (!\M~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \l3|Xi~4_combout\,
	datac => \M~input_o\,
	combout => \l3|Xi~5_combout\);

-- Location: IOIBUF_X0_Y4_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N10
\l2|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Yi~1_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (\B[2]~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \B[2]~input_o\,
	datad => \S0~input_o\,
	combout => \l2|Yi~1_combout\);

-- Location: LCCOMB_X6_Y4_N16
\l2|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Yi~0_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (!\B[2]~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \S1~input_o\,
	datac => \B[2]~input_o\,
	datad => \S0~input_o\,
	combout => \l2|Yi~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X10_Y1_N22
\l0|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Yi~1_combout\ = (!\S1~input_o\ & (\B[0]~input_o\ & (!\M~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Yi~1_combout\);

-- Location: LCCOMB_X10_Y1_N6
\l0|Xi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~2_combout\ = (\M~input_o\ & ((\S1~input_o\ & (\B[0]~input_o\)) # (!\S1~input_o\ & (!\B[0]~input_o\ & !\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~2_combout\);

-- Location: LCCOMB_X10_Y1_N28
\l0|Xi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~1_combout\ = (\S1~input_o\ & (((\M~input_o\ & !\S0~input_o\)) # (!\B[0]~input_o\))) # (!\S1~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~1_combout\);

-- Location: LCCOMB_X10_Y1_N26
\l0|Xi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~0_combout\ = (\M~input_o\ & \S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X10_Y1_N16
\l0|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~3_combout\ = (\A[0]~input_o\ & (!\l0|Xi~2_combout\)) # (!\A[0]~input_o\ & (\l0|Xi~1_combout\ & ((\l0|Xi~2_combout\) # (\l0|Xi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Xi~2_combout\,
	datab => \l0|Xi~1_combout\,
	datac => \l0|Xi~0_combout\,
	datad => \A[0]~input_o\,
	combout => \l0|Xi~3_combout\);

-- Location: LCCOMB_X10_Y1_N12
\l0|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Yi~0_combout\ = (!\S1~input_o\ & (!\B[0]~input_o\ & (!\M~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Yi~0_combout\);

-- Location: LCCOMB_X10_Y1_N10
\o0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|cout~0_combout\ = (\l0|Xi~3_combout\ & ((\l0|Yi~1_combout\) # ((\Cin~0_combout\) # (\l0|Yi~0_combout\)))) # (!\l0|Xi~3_combout\ & (\Cin~0_combout\ & ((\l0|Yi~1_combout\) # (\l0|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Yi~1_combout\,
	datab => \l0|Xi~3_combout\,
	datac => \Cin~0_combout\,
	datad => \l0|Yi~0_combout\,
	combout => \o0|cout~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N18
\l1|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Yi~1_combout\ = (!\S1~input_o\ & (\B[1]~input_o\ & (!\M~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[1]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Yi~1_combout\);

-- Location: LCCOMB_X10_Y1_N30
\l1|Xi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~3_combout\ = ((!\S1~input_o\ & \S0~input_o\)) # (!\M~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Xi~3_combout\);

-- Location: LCCOMB_X10_Y1_N20
\l0|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l0|Xi~4_combout\ = (\S1~input_o\ & (\M~input_o\ & !\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l0|Xi~4_combout\);

-- Location: IOIBUF_X13_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N14
\l1|Xi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~1_combout\ = (\B[1]~input_o\ & (\l0|Xi~4_combout\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \l0|Xi~4_combout\,
	datad => \A[1]~input_o\,
	combout => \l1|Xi~1_combout\);

-- Location: LCCOMB_X10_Y1_N4
\l1|Xi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~0_combout\ = (\A[1]~input_o\ & (\S1~input_o\ $ (((\B[1]~input_o\))))) # (!\A[1]~input_o\ & (\l0|Xi~0_combout\ & (\S1~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[1]~input_o\,
	datac => \l0|Xi~0_combout\,
	datad => \B[1]~input_o\,
	combout => \l1|Xi~0_combout\);

-- Location: LCCOMB_X10_Y1_N0
\l1|Xi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Xi~2_combout\ = (\l1|Xi~1_combout\) # ((\l1|Xi~0_combout\) # ((\l1|Xi~3_combout\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|Xi~3_combout\,
	datab => \l1|Xi~1_combout\,
	datac => \l1|Xi~0_combout\,
	datad => \A[1]~input_o\,
	combout => \l1|Xi~2_combout\);

-- Location: LCCOMB_X10_Y1_N24
\l1|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l1|Yi~0_combout\ = (!\S1~input_o\ & (!\B[1]~input_o\ & (!\M~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[1]~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l1|Yi~0_combout\);

-- Location: LCCOMB_X9_Y1_N24
\o1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|cout~0_combout\ = (\o0|cout~0_combout\ & ((\l1|Yi~1_combout\) # ((\l1|Xi~2_combout\) # (\l1|Yi~0_combout\)))) # (!\o0|cout~0_combout\ & (\l1|Xi~2_combout\ & ((\l1|Yi~1_combout\) # (\l1|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o0|cout~0_combout\,
	datab => \l1|Yi~1_combout\,
	datac => \l1|Xi~2_combout\,
	datad => \l1|Yi~0_combout\,
	combout => \o1|cout~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\l2|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~4_combout\ = (\S1~input_o\ & (\B[2]~input_o\ $ (((\A[2]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[2]~input_o\ & ((\B[2]~input_o\) # (\S0~input_o\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \S0~input_o\,
	combout => \l2|Xi~4_combout\);

-- Location: LCCOMB_X7_Y4_N18
\l2|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l2|Xi~5_combout\ = (\M~input_o\ & ((\l2|Xi~4_combout\))) # (!\M~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \M~input_o\,
	datad => \l2|Xi~4_combout\,
	combout => \l2|Xi~5_combout\);

-- Location: LCCOMB_X6_Y4_N12
\o2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|cout~0_combout\ = (\o1|cout~0_combout\ & ((\l2|Yi~1_combout\) # ((\l2|Yi~0_combout\) # (\l2|Xi~5_combout\)))) # (!\o1|cout~0_combout\ & (\l2|Xi~5_combout\ & ((\l2|Yi~1_combout\) # (\l2|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Yi~1_combout\,
	datab => \l2|Yi~0_combout\,
	datac => \o1|cout~0_combout\,
	datad => \l2|Xi~5_combout\,
	combout => \o2|cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N6
\o3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|cout~0_combout\ = (\l3|Xi~5_combout\ & ((\l3|Yi~1_combout\) # ((\l3|Yi~0_combout\) # (\o2|cout~0_combout\)))) # (!\l3|Xi~5_combout\ & (\o2|cout~0_combout\ & ((\l3|Yi~1_combout\) # (\l3|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Yi~1_combout\,
	datab => \l3|Yi~0_combout\,
	datac => \l3|Xi~5_combout\,
	datad => \o2|cout~0_combout\,
	combout => \o3|cout~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X6_Y4_N18
\l4|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Yi~1_combout\ = (\B[4]~input_o\ & (!\S1~input_o\ & (!\M~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l4|Yi~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X6_Y4_N8
\l4|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~4_combout\ = (\S1~input_o\ & (\B[4]~input_o\ $ (((\A[4]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[4]~input_o\ & ((\B[4]~input_o\) # (\S0~input_o\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \S1~input_o\,
	datac => \B[4]~input_o\,
	datad => \S0~input_o\,
	combout => \l4|Xi~4_combout\);

-- Location: LCCOMB_X6_Y4_N2
\l4|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Xi~5_combout\ = (\M~input_o\ & ((\l4|Xi~4_combout\))) # (!\M~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \l4|Xi~4_combout\,
	datac => \M~input_o\,
	combout => \l4|Xi~5_combout\);

-- Location: LCCOMB_X6_Y4_N24
\l4|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l4|Yi~0_combout\ = (!\B[4]~input_o\ & (!\S1~input_o\ & (!\M~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \l4|Yi~0_combout\);

-- Location: LCCOMB_X6_Y4_N0
\o4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|cout~0_combout\ = (\o3|cout~0_combout\ & ((\l4|Yi~1_combout\) # ((\l4|Xi~5_combout\) # (\l4|Yi~0_combout\)))) # (!\o3|cout~0_combout\ & (\l4|Xi~5_combout\ & ((\l4|Yi~1_combout\) # (\l4|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|cout~0_combout\,
	datab => \l4|Yi~1_combout\,
	datac => \l4|Xi~5_combout\,
	datad => \l4|Yi~0_combout\,
	combout => \o4|cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X6_Y2_N24
\l5|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~4_combout\ = (\S1~input_o\ & (\B[5]~input_o\ $ (((\A[5]~input_o\) # (\S0~input_o\))))) # (!\S1~input_o\ & ((\A[5]~input_o\ & ((\B[5]~input_o\) # (\S0~input_o\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \S1~input_o\,
	datac => \B[5]~input_o\,
	datad => \S0~input_o\,
	combout => \l5|Xi~4_combout\);

-- Location: LCCOMB_X6_Y2_N2
\l5|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Xi~5_combout\ = (\M~input_o\ & ((\l5|Xi~4_combout\))) # (!\M~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \l5|Xi~4_combout\,
	datac => \M~input_o\,
	combout => \l5|Xi~5_combout\);

-- Location: LCCOMB_X6_Y3_N26
\l5|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Yi~1_combout\ = (\B[5]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l5|Yi~1_combout\);

-- Location: LCCOMB_X6_Y3_N0
\l5|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l5|Yi~0_combout\ = (!\B[5]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l5|Yi~0_combout\);

-- Location: LCCOMB_X6_Y3_N12
\o5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|cout~0_combout\ = (\o4|cout~0_combout\ & ((\l5|Xi~5_combout\) # ((\l5|Yi~1_combout\) # (\l5|Yi~0_combout\)))) # (!\o4|cout~0_combout\ & (\l5|Xi~5_combout\ & ((\l5|Yi~1_combout\) # (\l5|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o4|cout~0_combout\,
	datab => \l5|Xi~5_combout\,
	datac => \l5|Yi~1_combout\,
	datad => \l5|Yi~0_combout\,
	combout => \o5|cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X6_Y3_N20
\l6|Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Yi~0_combout\ = (!\B[6]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Yi~0_combout\);

-- Location: LCCOMB_X6_Y3_N30
\l6|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Yi~1_combout\ = (\B[6]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Yi~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X6_Y3_N28
\l6|Xi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~4_combout\ = (\B[6]~input_o\ & (\S1~input_o\ $ (((\A[6]~input_o\) # (\S0~input_o\))))) # (!\B[6]~input_o\ & ((\A[6]~input_o\ & ((\S1~input_o\) # (\S0~input_o\))) # (!\A[6]~input_o\ & (\S1~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l6|Xi~4_combout\);

-- Location: LCCOMB_X6_Y3_N6
\l6|Xi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \l6|Xi~5_combout\ = (\M~input_o\ & (\l6|Xi~4_combout\)) # (!\M~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l6|Xi~4_combout\,
	datac => \A[6]~input_o\,
	datad => \M~input_o\,
	combout => \l6|Xi~5_combout\);

-- Location: LCCOMB_X6_Y3_N14
\o6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|cout~0_combout\ = (\o5|cout~0_combout\ & ((\l6|Yi~0_combout\) # ((\l6|Yi~1_combout\) # (\l6|Xi~5_combout\)))) # (!\o5|cout~0_combout\ & (\l6|Xi~5_combout\ & ((\l6|Yi~0_combout\) # (\l6|Yi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o5|cout~0_combout\,
	datab => \l6|Yi~0_combout\,
	datac => \l6|Yi~1_combout\,
	datad => \l6|Xi~5_combout\,
	combout => \o6|cout~0_combout\);

-- Location: LCCOMB_X6_Y3_N2
\l7|Yi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \l7|Yi~1_combout\ = (\B[7]~input_o\ & (!\M~input_o\ & (!\S1~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \l7|Yi~1_combout\);

-- Location: LCCOMB_X6_Y3_N24
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\l7|Xi~5_combout\ & (!\o6|cout~0_combout\ & ((\l7|Yi~0_combout\) # (\l7|Yi~1_combout\)))) # (!\l7|Xi~5_combout\ & (!\l7|Yi~0_combout\ & (\o6|cout~0_combout\ & !\l7|Yi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l7|Xi~5_combout\,
	datab => \l7|Yi~0_combout\,
	datac => \o6|cout~0_combout\,
	datad => \l7|Yi~1_combout\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X10_Y1_N2
\o0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o0|s~combout\ = \l0|Xi~3_combout\ $ (\Cin~0_combout\ $ (((\l0|Yi~1_combout\) # (\l0|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l0|Yi~1_combout\,
	datab => \l0|Xi~3_combout\,
	datac => \Cin~0_combout\,
	datad => \l0|Yi~0_combout\,
	combout => \o0|s~combout\);

-- Location: LCCOMB_X9_Y1_N18
\o1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o1|s~combout\ = \o0|cout~0_combout\ $ (\l1|Xi~2_combout\ $ (((\l1|Yi~1_combout\) # (\l1|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o0|cout~0_combout\,
	datab => \l1|Yi~1_combout\,
	datac => \l1|Xi~2_combout\,
	datad => \l1|Yi~0_combout\,
	combout => \o1|s~combout\);

-- Location: LCCOMB_X6_Y4_N26
\o2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o2|s~combout\ = \o1|cout~0_combout\ $ (\l2|Xi~5_combout\ $ (((\l2|Yi~1_combout\) # (\l2|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Yi~1_combout\,
	datab => \l2|Yi~0_combout\,
	datac => \o1|cout~0_combout\,
	datad => \l2|Xi~5_combout\,
	combout => \o2|s~combout\);

-- Location: LCCOMB_X6_Y4_N4
\o3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3|s~combout\ = \l3|Xi~5_combout\ $ (\o2|cout~0_combout\ $ (((\l3|Yi~1_combout\) # (\l3|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Yi~1_combout\,
	datab => \l3|Yi~0_combout\,
	datac => \l3|Xi~5_combout\,
	datad => \o2|cout~0_combout\,
	combout => \o3|s~combout\);

-- Location: LCCOMB_X6_Y4_N22
\o4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o4|s~combout\ = \o3|cout~0_combout\ $ (\l4|Xi~5_combout\ $ (((\l4|Yi~1_combout\) # (\l4|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o3|cout~0_combout\,
	datab => \l4|Yi~1_combout\,
	datac => \l4|Xi~5_combout\,
	datad => \l4|Yi~0_combout\,
	combout => \o4|s~combout\);

-- Location: LCCOMB_X6_Y3_N18
\o5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o5|s~combout\ = \o4|cout~0_combout\ $ (\l5|Xi~5_combout\ $ (((\l5|Yi~1_combout\) # (\l5|Yi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o4|cout~0_combout\,
	datab => \l5|Xi~5_combout\,
	datac => \l5|Yi~1_combout\,
	datad => \l5|Yi~0_combout\,
	combout => \o5|s~combout\);

-- Location: LCCOMB_X6_Y3_N4
\o6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o6|s~combout\ = \o5|cout~0_combout\ $ (\l6|Xi~5_combout\ $ (((\l6|Yi~0_combout\) # (\l6|Yi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o5|cout~0_combout\,
	datab => \l6|Yi~0_combout\,
	datac => \l6|Yi~1_combout\,
	datad => \l6|Xi~5_combout\,
	combout => \o6|s~combout\);

-- Location: LCCOMB_X6_Y3_N22
\o7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \o7|s~combout\ = \l7|Xi~5_combout\ $ (\o6|cout~0_combout\ $ (((\l7|Yi~0_combout\) # (\l7|Yi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l7|Xi~5_combout\,
	datab => \l7|Yi~0_combout\,
	datac => \o6|cout~0_combout\,
	datad => \l7|Yi~1_combout\,
	combout => \o7|s~combout\);

-- Location: IOIBUF_X11_Y0_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

ww_Cout <= \Cout~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_Cin <= \Cin~output_o\;
END structure;


