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

-- DATE "10/01/2019 18:43:40"

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

ENTITY 	latch_rs IS
    PORT (
	r : IN std_logic;
	s : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic;
	n_q : OUT std_logic
	);
END latch_rs;

-- Design Ports Information
-- q	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_q	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF latch_rs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_n_q : std_logic;
SIGNAL \q~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q~output_o\ : std_logic;
SIGNAL \n_q~output_o\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~0clkctrl_outclk\ : std_logic;
SIGNAL \q$latch~combout\ : std_logic;
SIGNAL \n_q$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_r <= r;
ww_s <= s;
ww_clk <= clk;
q <= ww_q;
n_q <= ww_n_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\q~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \q~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y35_N16
\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q$latch~combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\n_q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_q$latch~combout\,
	devoe => ww_devoe,
	o => \n_q~output_o\);

-- Location: IOIBUF_X0_Y33_N22
\r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\r~input_o\ & \s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \s~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y36_N14
\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\clk~input_o\ & (\r~input_o\ $ (\s~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datac => \s~input_o\,
	datad => \clk~input_o\,
	combout => \q~0_combout\);

-- Location: CLKCTRL_G1
\q~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \q~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \q~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N20
\q$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q$latch~combout\ = (GLOBAL(\q~0clkctrl_outclk\) & (\process_0~0_combout\)) # (!GLOBAL(\q~0clkctrl_outclk\) & ((\q$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \q~0clkctrl_outclk\,
	datad => \q$latch~combout\,
	combout => \q$latch~combout\);

-- Location: LCCOMB_X1_Y36_N24
\n_q$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_q$latch~combout\ = (GLOBAL(\q~0clkctrl_outclk\) & (!\process_0~0_combout\)) # (!GLOBAL(\q~0clkctrl_outclk\) & ((\n_q$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \q~0clkctrl_outclk\,
	datad => \n_q$latch~combout\,
	combout => \n_q$latch~combout\);

ww_q <= \q~output_o\;

ww_n_q <= \n_q~output_o\;
END structure;


