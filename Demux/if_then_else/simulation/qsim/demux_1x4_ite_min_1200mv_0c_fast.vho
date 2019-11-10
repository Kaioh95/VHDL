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

-- DATE "08/25/2019 20:19:14"

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

ENTITY 	demux_1x4_ite IS
    PORT (
	a : IN std_logic;
	s0 : IN std_logic;
	s1 : IN std_logic;
	o0 : OUT std_logic;
	o1 : OUT std_logic;
	o2 : OUT std_logic;
	o3 : OUT std_logic
	);
END demux_1x4_ite;

-- Design Ports Information
-- a	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o0	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o1	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o2	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o3	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demux_1x4_ite IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_o0 : std_logic;
SIGNAL ww_o1 : std_logic;
SIGNAL ww_o2 : std_logic;
SIGNAL ww_o3 : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \o0~output_o\ : std_logic;
SIGNAL \o1~output_o\ : std_logic;
SIGNAL \o2~output_o\ : std_logic;
SIGNAL \o3~output_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \o3~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_s0 <= s0;
ww_s1 <= s1;
o0 <= ww_o0;
o1 <= ww_o1;
o2 <= ww_o2;
o3 <= ww_o3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N2
\o0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~0_combout\,
	devoe => ww_devoe,
	o => \o0~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\o1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~1_combout\,
	devoe => ww_devoe,
	o => \o1~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\o2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~2_combout\,
	devoe => ww_devoe,
	o => \o2~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\o3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o3~0_combout\,
	devoe => ww_devoe,
	o => \o3~output_o\);

-- Location: IOIBUF_X23_Y73_N22
\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\s0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: LCCOMB_X25_Y72_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\s1~input_o\) # (\s0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \s0~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X25_Y72_N2
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\s1~input_o\ & \s0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \s0~input_o\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X25_Y72_N4
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\s1~input_o\ & !\s0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \s0~input_o\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X25_Y72_N6
\o3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o3~0_combout\ = (\s1~input_o\ & \s0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \s0~input_o\,
	combout => \o3~0_combout\);

-- Location: IOIBUF_X102_Y73_N1
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

ww_o0 <= \o0~output_o\;

ww_o1 <= \o1~output_o\;

ww_o2 <= \o2~output_o\;

ww_o3 <= \o3~output_o\;
END structure;


