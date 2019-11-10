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

-- DATE "09/06/2019 20:47:03"

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

ENTITY 	ComponenteLogico IS
    PORT (
	Ai : IN std_logic;
	Bi : IN std_logic;
	Mi : IN std_logic;
	S1i : IN std_logic;
	S0i : IN std_logic;
	Xi : OUT std_logic;
	Yi : OUT std_logic
	);
END ComponenteLogico;

-- Design Ports Information
-- Xi	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yi	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mi	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0i	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1i	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ComponenteLogico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic;
SIGNAL ww_Bi : std_logic;
SIGNAL ww_Mi : std_logic;
SIGNAL ww_S1i : std_logic;
SIGNAL ww_S0i : std_logic;
SIGNAL ww_Xi : std_logic;
SIGNAL ww_Yi : std_logic;
SIGNAL \Xi~output_o\ : std_logic;
SIGNAL \Yi~output_o\ : std_logic;
SIGNAL \Mi~input_o\ : std_logic;
SIGNAL \Ai~input_o\ : std_logic;
SIGNAL \S0i~input_o\ : std_logic;
SIGNAL \S1i~input_o\ : std_logic;
SIGNAL \Bi~input_o\ : std_logic;
SIGNAL \Xi~0_combout\ : std_logic;
SIGNAL \Xi~1_combout\ : std_logic;
SIGNAL \Yi~0_combout\ : std_logic;
SIGNAL \ALT_INV_Xi~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_Mi <= Mi;
ww_S1i <= S1i;
ww_S0i <= S0i;
Xi <= ww_Xi;
Yi <= ww_Yi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Xi~1_combout\ <= NOT \Xi~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y66_N23
\Xi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Xi~1_combout\,
	devoe => ww_devoe,
	o => \Xi~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Yi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yi~0_combout\,
	devoe => ww_devoe,
	o => \Yi~output_o\);

-- Location: IOIBUF_X0_Y68_N15
\Mi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mi,
	o => \Mi~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\Ai~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai,
	o => \Ai~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\S0i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0i,
	o => \S0i~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\S1i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1i,
	o => \S1i~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\Bi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi,
	o => \Bi~input_o\);

-- Location: LCCOMB_X1_Y68_N24
\Xi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Xi~0_combout\ = (\S1i~input_o\ & (\Bi~input_o\ $ (((\S0i~input_o\) # (\Ai~input_o\))))) # (!\S1i~input_o\ & ((\S0i~input_o\ & ((\Ai~input_o\) # (\Bi~input_o\))) # (!\S0i~input_o\ & (\Ai~input_o\ & \Bi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0i~input_o\,
	datab => \S1i~input_o\,
	datac => \Ai~input_o\,
	datad => \Bi~input_o\,
	combout => \Xi~0_combout\);

-- Location: LCCOMB_X1_Y68_N26
\Xi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Xi~1_combout\ = (\Mi~input_o\ & ((!\Xi~0_combout\))) # (!\Mi~input_o\ & (!\Ai~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mi~input_o\,
	datac => \Ai~input_o\,
	datad => \Xi~0_combout\,
	combout => \Xi~1_combout\);

-- Location: LCCOMB_X1_Y68_N28
\Yi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yi~0_combout\ = (!\S1i~input_o\ & (!\Mi~input_o\ & (\Bi~input_o\ $ (\S0i~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi~input_o\,
	datab => \S1i~input_o\,
	datac => \S0i~input_o\,
	datad => \Mi~input_o\,
	combout => \Yi~0_combout\);

ww_Xi <= \Xi~output_o\;

ww_Yi <= \Yi~output_o\;
END structure;


