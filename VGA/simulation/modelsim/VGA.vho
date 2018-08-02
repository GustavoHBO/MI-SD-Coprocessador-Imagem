-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/02/2018 16:15:07"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
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

ENTITY 	VGADemo IS
    PORT (
	clk : IN std_logic;
	pixel : OUT std_logic_vector(2 DOWNTO 0);
	hsync_out : OUT std_logic;
	vsync_out : OUT std_logic
	);
END VGADemo;

-- Design Ports Information
-- pixel[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync_out	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync_out	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGADemo IS
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
SIGNAL ww_pixel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_hsync_out : std_logic;
SIGNAL ww_vsync_out : std_logic;
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \divisor_clock|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pixel[0]~output_o\ : std_logic;
SIGNAL \pixel[1]~output_o\ : std_logic;
SIGNAL \pixel[2]~output_o\ : std_logic;
SIGNAL \hsync_out~output_o\ : std_logic;
SIGNAL \vsync_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \divisor_clock|clk_out~0_combout\ : std_logic;
SIGNAL \divisor_clock|clk_out~q\ : std_logic;
SIGNAL \divisor_clock|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \contador_end[0]~12_combout\ : std_logic;
SIGNAL \hvsync|Add0~0_combout\ : std_logic;
SIGNAL \hvsync|CounterX~2_combout\ : std_logic;
SIGNAL \hvsync|Add0~1\ : std_logic;
SIGNAL \hvsync|Add0~2_combout\ : std_logic;
SIGNAL \hvsync|Add0~3\ : std_logic;
SIGNAL \hvsync|Add0~4_combout\ : std_logic;
SIGNAL \hvsync|Add0~5\ : std_logic;
SIGNAL \hvsync|Add0~6_combout\ : std_logic;
SIGNAL \hvsync|Add0~7\ : std_logic;
SIGNAL \hvsync|Add0~8_combout\ : std_logic;
SIGNAL \hvsync|Add0~9\ : std_logic;
SIGNAL \hvsync|Add0~10_combout\ : std_logic;
SIGNAL \hvsync|CounterX~3_combout\ : std_logic;
SIGNAL \hvsync|Add0~11\ : std_logic;
SIGNAL \hvsync|Add0~12_combout\ : std_logic;
SIGNAL \hvsync|Add0~13\ : std_logic;
SIGNAL \hvsync|Add0~14_combout\ : std_logic;
SIGNAL \hvsync|Add0~15\ : std_logic;
SIGNAL \hvsync|Add0~16_combout\ : std_logic;
SIGNAL \hvsync|CounterX~0_combout\ : std_logic;
SIGNAL \hvsync|Add0~17\ : std_logic;
SIGNAL \hvsync|Add0~18_combout\ : std_logic;
SIGNAL \hvsync|CounterX~1_combout\ : std_logic;
SIGNAL \hvsync|Equal0~0_combout\ : std_logic;
SIGNAL \hvsync|Equal0~1_combout\ : std_logic;
SIGNAL \hvsync|Equal0~2_combout\ : std_logic;
SIGNAL \hvsync|CounterY[0]~24_combout\ : std_logic;
SIGNAL \hvsync|CounterY[1]~8_combout\ : std_logic;
SIGNAL \hvsync|CounterY[1]~9\ : std_logic;
SIGNAL \hvsync|CounterY[2]~10_combout\ : std_logic;
SIGNAL \hvsync|CounterY[2]~11\ : std_logic;
SIGNAL \hvsync|CounterY[3]~12_combout\ : std_logic;
SIGNAL \hvsync|CounterY[3]~13\ : std_logic;
SIGNAL \hvsync|CounterY[4]~14_combout\ : std_logic;
SIGNAL \hvsync|CounterY[4]~15\ : std_logic;
SIGNAL \hvsync|CounterY[5]~16_combout\ : std_logic;
SIGNAL \hvsync|CounterY[5]~17\ : std_logic;
SIGNAL \hvsync|CounterY[6]~18_combout\ : std_logic;
SIGNAL \hvsync|CounterY[6]~19\ : std_logic;
SIGNAL \hvsync|CounterY[7]~20_combout\ : std_logic;
SIGNAL \hvsync|CounterY[7]~21\ : std_logic;
SIGNAL \hvsync|CounterY[8]~22_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \contador_end[0]~13\ : std_logic;
SIGNAL \contador_end[1]~14_combout\ : std_logic;
SIGNAL \contador_end[1]~15\ : std_logic;
SIGNAL \contador_end[2]~16_combout\ : std_logic;
SIGNAL \contador_end[2]~17\ : std_logic;
SIGNAL \contador_end[3]~18_combout\ : std_logic;
SIGNAL \contador_end[3]~19\ : std_logic;
SIGNAL \contador_end[4]~20_combout\ : std_logic;
SIGNAL \contador_end[4]~21\ : std_logic;
SIGNAL \contador_end[5]~22_combout\ : std_logic;
SIGNAL \contador_end[5]~23\ : std_logic;
SIGNAL \contador_end[6]~24_combout\ : std_logic;
SIGNAL \contador_end[6]~25\ : std_logic;
SIGNAL \contador_end[7]~26_combout\ : std_logic;
SIGNAL \contador_end[7]~27\ : std_logic;
SIGNAL \contador_end[8]~28_combout\ : std_logic;
SIGNAL \contador_end[8]~29\ : std_logic;
SIGNAL \contador_end[9]~30_combout\ : std_logic;
SIGNAL \contador_end[9]~31\ : std_logic;
SIGNAL \contador_end[10]~32_combout\ : std_logic;
SIGNAL \contador_end[10]~33\ : std_logic;
SIGNAL \contador_end[11]~34_combout\ : std_logic;
SIGNAL \hvsync|vga_VS~1_combout\ : std_logic;
SIGNAL \hvsync|inDisplayArea~0_combout\ : std_logic;
SIGNAL \hvsync|inDisplayArea~q\ : std_logic;
SIGNAL \pixel~0_combout\ : std_logic;
SIGNAL \pixel[0]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel[0]~reg0_q\ : std_logic;
SIGNAL \pixel~1_combout\ : std_logic;
SIGNAL \pixel[1]~reg0_q\ : std_logic;
SIGNAL \pixel[2]~reg0_q\ : std_logic;
SIGNAL \hvsync|vga_HS~0_combout\ : std_logic;
SIGNAL \hvsync|vga_HS~1_combout\ : std_logic;
SIGNAL \hvsync|vga_HS~q\ : std_logic;
SIGNAL \hvsync|vga_VS~0_combout\ : std_logic;
SIGNAL \hvsync|vga_VS~2_combout\ : std_logic;
SIGNAL \hvsync|vga_VS~q\ : std_logic;
SIGNAL contador_end : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \hvsync|CounterY\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \hvsync|CounterX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \hvsync|ALT_INV_vga_VS~q\ : std_logic;
SIGNAL \hvsync|ALT_INV_vga_HS~q\ : std_logic;

BEGIN

ww_clk <= clk;
pixel <= ww_pixel;
hsync_out <= ww_hsync_out;
vsync_out <= ww_vsync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \~GND~combout\);

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (contador_end(11) & contador_end(10) & contador_end(9) & contador_end(8) & contador_end(7) & contador_end(6) & contador_end(5) & contador_end(4) & 
contador_end(3) & contador_end(2) & contador_end(1) & contador_end(0));

\controlador_ram|altsyncram_component|auto_generated|q_b\(0) <= \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\divisor_clock|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_clock|clk_out~q\);
\ALT_INV_always1~1_combout\ <= NOT \always1~1_combout\;
\hvsync|ALT_INV_vga_VS~q\ <= NOT \hvsync|vga_VS~q\;
\hvsync|ALT_INV_vga_HS~q\ <= NOT \hvsync|vga_HS~q\;

-- Location: IOOBUF_X3_Y24_N16
\pixel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\pixel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\pixel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\hsync_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvsync|ALT_INV_vga_HS~q\,
	devoe => ww_devoe,
	o => \hsync_out~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\vsync_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvsync|ALT_INV_vga_VS~q\,
	devoe => ww_devoe,
	o => \vsync_out~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X33_Y12_N20
\divisor_clock|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_clock|clk_out~0_combout\ = !\divisor_clock|clk_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clock|clk_out~q\,
	combout => \divisor_clock|clk_out~0_combout\);

-- Location: FF_X33_Y12_N25
\divisor_clock|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \divisor_clock|clk_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_clock|clk_out~q\);

-- Location: CLKCTRL_G8
\divisor_clock|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor_clock|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor_clock|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y13_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X11_Y13_N6
\contador_end[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[0]~12_combout\ = contador_end(0) $ (VCC)
-- \contador_end[0]~13\ = CARRY(contador_end(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(0),
	datad => VCC,
	combout => \contador_end[0]~12_combout\,
	cout => \contador_end[0]~13\);

-- Location: LCCOMB_X12_Y13_N8
\hvsync|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~0_combout\ = \hvsync|CounterX\(0) $ (VCC)
-- \hvsync|Add0~1\ = CARRY(\hvsync|CounterX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(0),
	datad => VCC,
	combout => \hvsync|Add0~0_combout\,
	cout => \hvsync|Add0~1\);

-- Location: LCCOMB_X12_Y13_N28
\hvsync|CounterX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~2_combout\ = (\hvsync|Add0~0_combout\ & !\hvsync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|Add0~0_combout\,
	datac => \hvsync|Equal0~2_combout\,
	combout => \hvsync|CounterX~2_combout\);

-- Location: FF_X12_Y13_N29
\hvsync|CounterX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(0));

-- Location: LCCOMB_X12_Y13_N10
\hvsync|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~2_combout\ = (\hvsync|CounterX\(1) & (!\hvsync|Add0~1\)) # (!\hvsync|CounterX\(1) & ((\hvsync|Add0~1\) # (GND)))
-- \hvsync|Add0~3\ = CARRY((!\hvsync|Add0~1\) # (!\hvsync|CounterX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(1),
	datad => VCC,
	cin => \hvsync|Add0~1\,
	combout => \hvsync|Add0~2_combout\,
	cout => \hvsync|Add0~3\);

-- Location: FF_X12_Y13_N11
\hvsync|CounterX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(1));

-- Location: LCCOMB_X12_Y13_N12
\hvsync|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~4_combout\ = (\hvsync|CounterX\(2) & (\hvsync|Add0~3\ $ (GND))) # (!\hvsync|CounterX\(2) & (!\hvsync|Add0~3\ & VCC))
-- \hvsync|Add0~5\ = CARRY((\hvsync|CounterX\(2) & !\hvsync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(2),
	datad => VCC,
	cin => \hvsync|Add0~3\,
	combout => \hvsync|Add0~4_combout\,
	cout => \hvsync|Add0~5\);

-- Location: FF_X12_Y13_N13
\hvsync|CounterX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(2));

-- Location: LCCOMB_X12_Y13_N14
\hvsync|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~6_combout\ = (\hvsync|CounterX\(3) & (!\hvsync|Add0~5\)) # (!\hvsync|CounterX\(3) & ((\hvsync|Add0~5\) # (GND)))
-- \hvsync|Add0~7\ = CARRY((!\hvsync|Add0~5\) # (!\hvsync|CounterX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(3),
	datad => VCC,
	cin => \hvsync|Add0~5\,
	combout => \hvsync|Add0~6_combout\,
	cout => \hvsync|Add0~7\);

-- Location: FF_X12_Y13_N15
\hvsync|CounterX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(3));

-- Location: LCCOMB_X12_Y13_N16
\hvsync|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~8_combout\ = (\hvsync|CounterX\(4) & (\hvsync|Add0~7\ $ (GND))) # (!\hvsync|CounterX\(4) & (!\hvsync|Add0~7\ & VCC))
-- \hvsync|Add0~9\ = CARRY((\hvsync|CounterX\(4) & !\hvsync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(4),
	datad => VCC,
	cin => \hvsync|Add0~7\,
	combout => \hvsync|Add0~8_combout\,
	cout => \hvsync|Add0~9\);

-- Location: FF_X12_Y13_N17
\hvsync|CounterX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(4));

-- Location: LCCOMB_X12_Y13_N18
\hvsync|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~10_combout\ = (\hvsync|CounterX\(5) & (!\hvsync|Add0~9\)) # (!\hvsync|CounterX\(5) & ((\hvsync|Add0~9\) # (GND)))
-- \hvsync|Add0~11\ = CARRY((!\hvsync|Add0~9\) # (!\hvsync|CounterX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(5),
	datad => VCC,
	cin => \hvsync|Add0~9\,
	combout => \hvsync|Add0~10_combout\,
	cout => \hvsync|Add0~11\);

-- Location: LCCOMB_X13_Y13_N20
\hvsync|CounterX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~3_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|Equal0~2_combout\,
	datad => \hvsync|Add0~10_combout\,
	combout => \hvsync|CounterX~3_combout\);

-- Location: FF_X13_Y13_N21
\hvsync|CounterX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(5));

-- Location: LCCOMB_X12_Y13_N20
\hvsync|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~12_combout\ = (\hvsync|CounterX\(6) & (\hvsync|Add0~11\ $ (GND))) # (!\hvsync|CounterX\(6) & (!\hvsync|Add0~11\ & VCC))
-- \hvsync|Add0~13\ = CARRY((\hvsync|CounterX\(6) & !\hvsync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(6),
	datad => VCC,
	cin => \hvsync|Add0~11\,
	combout => \hvsync|Add0~12_combout\,
	cout => \hvsync|Add0~13\);

-- Location: FF_X12_Y13_N21
\hvsync|CounterX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(6));

-- Location: LCCOMB_X12_Y13_N22
\hvsync|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~14_combout\ = (\hvsync|CounterX\(7) & (!\hvsync|Add0~13\)) # (!\hvsync|CounterX\(7) & ((\hvsync|Add0~13\) # (GND)))
-- \hvsync|Add0~15\ = CARRY((!\hvsync|Add0~13\) # (!\hvsync|CounterX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(7),
	datad => VCC,
	cin => \hvsync|Add0~13\,
	combout => \hvsync|Add0~14_combout\,
	cout => \hvsync|Add0~15\);

-- Location: FF_X12_Y13_N23
\hvsync|CounterX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(7));

-- Location: LCCOMB_X12_Y13_N24
\hvsync|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~16_combout\ = (\hvsync|CounterX\(8) & (\hvsync|Add0~15\ $ (GND))) # (!\hvsync|CounterX\(8) & (!\hvsync|Add0~15\ & VCC))
-- \hvsync|Add0~17\ = CARRY((\hvsync|CounterX\(8) & !\hvsync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(8),
	datad => VCC,
	cin => \hvsync|Add0~15\,
	combout => \hvsync|Add0~16_combout\,
	cout => \hvsync|Add0~17\);

-- Location: LCCOMB_X12_Y13_N2
\hvsync|CounterX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~0_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|Equal0~2_combout\,
	datad => \hvsync|Add0~16_combout\,
	combout => \hvsync|CounterX~0_combout\);

-- Location: FF_X12_Y13_N3
\hvsync|CounterX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(8));

-- Location: LCCOMB_X12_Y13_N26
\hvsync|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~18_combout\ = \hvsync|CounterX\(9) $ (\hvsync|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(9),
	cin => \hvsync|Add0~17\,
	combout => \hvsync|Add0~18_combout\);

-- Location: LCCOMB_X12_Y13_N4
\hvsync|CounterX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~1_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|Equal0~2_combout\,
	datac => \hvsync|Add0~18_combout\,
	combout => \hvsync|CounterX~1_combout\);

-- Location: FF_X12_Y13_N5
\hvsync|CounterX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterX\(9));

-- Location: LCCOMB_X12_Y13_N6
\hvsync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~0_combout\ = (!\hvsync|CounterX\(2) & (!\hvsync|CounterX\(0) & (!\hvsync|CounterX\(3) & !\hvsync|CounterX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(2),
	datab => \hvsync|CounterX\(0),
	datac => \hvsync|CounterX\(3),
	datad => \hvsync|CounterX\(1),
	combout => \hvsync|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y13_N28
\hvsync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~1_combout\ = (!\hvsync|CounterX\(4) & (!\hvsync|CounterX\(6) & (\hvsync|CounterX\(5) & !\hvsync|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(4),
	datab => \hvsync|CounterX\(6),
	datac => \hvsync|CounterX\(5),
	datad => \hvsync|CounterX\(7),
	combout => \hvsync|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y13_N30
\hvsync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~2_combout\ = (\hvsync|CounterX\(8) & (\hvsync|CounterX\(9) & (\hvsync|Equal0~0_combout\ & \hvsync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(8),
	datab => \hvsync|CounterX\(9),
	datac => \hvsync|Equal0~0_combout\,
	datad => \hvsync|Equal0~1_combout\,
	combout => \hvsync|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y13_N0
\hvsync|CounterY[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[0]~24_combout\ = \hvsync|Equal0~2_combout\ $ (\hvsync|CounterY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|Equal0~2_combout\,
	datac => \hvsync|CounterY\(0),
	combout => \hvsync|CounterY[0]~24_combout\);

-- Location: FF_X13_Y13_N1
\hvsync|CounterY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(0));

-- Location: LCCOMB_X13_Y13_N4
\hvsync|CounterY[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[1]~8_combout\ = (\hvsync|CounterY\(1) & (\hvsync|CounterY\(0) $ (VCC))) # (!\hvsync|CounterY\(1) & (\hvsync|CounterY\(0) & VCC))
-- \hvsync|CounterY[1]~9\ = CARRY((\hvsync|CounterY\(1) & \hvsync|CounterY\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(1),
	datab => \hvsync|CounterY\(0),
	datad => VCC,
	combout => \hvsync|CounterY[1]~8_combout\,
	cout => \hvsync|CounterY[1]~9\);

-- Location: FF_X13_Y13_N5
\hvsync|CounterY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[1]~8_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(1));

-- Location: LCCOMB_X13_Y13_N6
\hvsync|CounterY[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[2]~10_combout\ = (\hvsync|CounterY\(2) & (!\hvsync|CounterY[1]~9\)) # (!\hvsync|CounterY\(2) & ((\hvsync|CounterY[1]~9\) # (GND)))
-- \hvsync|CounterY[2]~11\ = CARRY((!\hvsync|CounterY[1]~9\) # (!\hvsync|CounterY\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(2),
	datad => VCC,
	cin => \hvsync|CounterY[1]~9\,
	combout => \hvsync|CounterY[2]~10_combout\,
	cout => \hvsync|CounterY[2]~11\);

-- Location: FF_X13_Y13_N7
\hvsync|CounterY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[2]~10_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(2));

-- Location: LCCOMB_X13_Y13_N8
\hvsync|CounterY[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[3]~12_combout\ = (\hvsync|CounterY\(3) & (\hvsync|CounterY[2]~11\ $ (GND))) # (!\hvsync|CounterY\(3) & (!\hvsync|CounterY[2]~11\ & VCC))
-- \hvsync|CounterY[3]~13\ = CARRY((\hvsync|CounterY\(3) & !\hvsync|CounterY[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(3),
	datad => VCC,
	cin => \hvsync|CounterY[2]~11\,
	combout => \hvsync|CounterY[3]~12_combout\,
	cout => \hvsync|CounterY[3]~13\);

-- Location: FF_X13_Y13_N9
\hvsync|CounterY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[3]~12_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(3));

-- Location: LCCOMB_X13_Y13_N10
\hvsync|CounterY[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[4]~14_combout\ = (\hvsync|CounterY\(4) & (!\hvsync|CounterY[3]~13\)) # (!\hvsync|CounterY\(4) & ((\hvsync|CounterY[3]~13\) # (GND)))
-- \hvsync|CounterY[4]~15\ = CARRY((!\hvsync|CounterY[3]~13\) # (!\hvsync|CounterY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(4),
	datad => VCC,
	cin => \hvsync|CounterY[3]~13\,
	combout => \hvsync|CounterY[4]~14_combout\,
	cout => \hvsync|CounterY[4]~15\);

-- Location: FF_X13_Y13_N11
\hvsync|CounterY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[4]~14_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(4));

-- Location: LCCOMB_X13_Y13_N12
\hvsync|CounterY[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[5]~16_combout\ = (\hvsync|CounterY\(5) & (\hvsync|CounterY[4]~15\ $ (GND))) # (!\hvsync|CounterY\(5) & (!\hvsync|CounterY[4]~15\ & VCC))
-- \hvsync|CounterY[5]~17\ = CARRY((\hvsync|CounterY\(5) & !\hvsync|CounterY[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(5),
	datad => VCC,
	cin => \hvsync|CounterY[4]~15\,
	combout => \hvsync|CounterY[5]~16_combout\,
	cout => \hvsync|CounterY[5]~17\);

-- Location: FF_X13_Y13_N13
\hvsync|CounterY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[5]~16_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(5));

-- Location: LCCOMB_X13_Y13_N14
\hvsync|CounterY[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[6]~18_combout\ = (\hvsync|CounterY\(6) & (!\hvsync|CounterY[5]~17\)) # (!\hvsync|CounterY\(6) & ((\hvsync|CounterY[5]~17\) # (GND)))
-- \hvsync|CounterY[6]~19\ = CARRY((!\hvsync|CounterY[5]~17\) # (!\hvsync|CounterY\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(6),
	datad => VCC,
	cin => \hvsync|CounterY[5]~17\,
	combout => \hvsync|CounterY[6]~18_combout\,
	cout => \hvsync|CounterY[6]~19\);

-- Location: FF_X13_Y13_N15
\hvsync|CounterY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[6]~18_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(6));

-- Location: LCCOMB_X13_Y13_N16
\hvsync|CounterY[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[7]~20_combout\ = (\hvsync|CounterY\(7) & (\hvsync|CounterY[6]~19\ $ (GND))) # (!\hvsync|CounterY\(7) & (!\hvsync|CounterY[6]~19\ & VCC))
-- \hvsync|CounterY[7]~21\ = CARRY((\hvsync|CounterY\(7) & !\hvsync|CounterY[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(7),
	datad => VCC,
	cin => \hvsync|CounterY[6]~19\,
	combout => \hvsync|CounterY[7]~20_combout\,
	cout => \hvsync|CounterY[7]~21\);

-- Location: FF_X13_Y13_N17
\hvsync|CounterY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[7]~20_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(7));

-- Location: LCCOMB_X13_Y13_N18
\hvsync|CounterY[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[8]~22_combout\ = \hvsync|CounterY[7]~21\ $ (\hvsync|CounterY\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hvsync|CounterY\(8),
	cin => \hvsync|CounterY[7]~21\,
	combout => \hvsync|CounterY[8]~22_combout\);

-- Location: FF_X13_Y13_N19
\hvsync|CounterY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|CounterY[8]~22_combout\,
	ena => \hvsync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|CounterY\(8));

-- Location: LCCOMB_X12_Y13_N30
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\hvsync|CounterX\(7)) # ((\hvsync|CounterX\(6)) # ((\hvsync|CounterX\(9)) # (\hvsync|CounterX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(7),
	datab => \hvsync|CounterX\(6),
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|CounterX\(8),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X11_Y13_N2
\always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (\hvsync|CounterY\(8)) # ((\hvsync|CounterY\(6)) # ((\always1~0_combout\) # (\hvsync|CounterY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(8),
	datab => \hvsync|CounterY\(6),
	datac => \always1~0_combout\,
	datad => \hvsync|CounterY\(7),
	combout => \always1~1_combout\);

-- Location: FF_X11_Y13_N7
\contador_end[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[0]~12_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(0));

-- Location: LCCOMB_X11_Y13_N8
\contador_end[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[1]~14_combout\ = (contador_end(1) & (!\contador_end[0]~13\)) # (!contador_end(1) & ((\contador_end[0]~13\) # (GND)))
-- \contador_end[1]~15\ = CARRY((!\contador_end[0]~13\) # (!contador_end(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(1),
	datad => VCC,
	cin => \contador_end[0]~13\,
	combout => \contador_end[1]~14_combout\,
	cout => \contador_end[1]~15\);

-- Location: FF_X11_Y13_N9
\contador_end[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[1]~14_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(1));

-- Location: LCCOMB_X11_Y13_N10
\contador_end[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[2]~16_combout\ = (contador_end(2) & (\contador_end[1]~15\ $ (GND))) # (!contador_end(2) & (!\contador_end[1]~15\ & VCC))
-- \contador_end[2]~17\ = CARRY((contador_end(2) & !\contador_end[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(2),
	datad => VCC,
	cin => \contador_end[1]~15\,
	combout => \contador_end[2]~16_combout\,
	cout => \contador_end[2]~17\);

-- Location: FF_X11_Y13_N11
\contador_end[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[2]~16_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(2));

-- Location: LCCOMB_X11_Y13_N12
\contador_end[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[3]~18_combout\ = (contador_end(3) & (!\contador_end[2]~17\)) # (!contador_end(3) & ((\contador_end[2]~17\) # (GND)))
-- \contador_end[3]~19\ = CARRY((!\contador_end[2]~17\) # (!contador_end(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(3),
	datad => VCC,
	cin => \contador_end[2]~17\,
	combout => \contador_end[3]~18_combout\,
	cout => \contador_end[3]~19\);

-- Location: FF_X11_Y13_N13
\contador_end[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[3]~18_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(3));

-- Location: LCCOMB_X11_Y13_N14
\contador_end[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[4]~20_combout\ = (contador_end(4) & (\contador_end[3]~19\ $ (GND))) # (!contador_end(4) & (!\contador_end[3]~19\ & VCC))
-- \contador_end[4]~21\ = CARRY((contador_end(4) & !\contador_end[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(4),
	datad => VCC,
	cin => \contador_end[3]~19\,
	combout => \contador_end[4]~20_combout\,
	cout => \contador_end[4]~21\);

-- Location: FF_X11_Y13_N15
\contador_end[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[4]~20_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(4));

-- Location: LCCOMB_X11_Y13_N16
\contador_end[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[5]~22_combout\ = (contador_end(5) & (!\contador_end[4]~21\)) # (!contador_end(5) & ((\contador_end[4]~21\) # (GND)))
-- \contador_end[5]~23\ = CARRY((!\contador_end[4]~21\) # (!contador_end(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(5),
	datad => VCC,
	cin => \contador_end[4]~21\,
	combout => \contador_end[5]~22_combout\,
	cout => \contador_end[5]~23\);

-- Location: FF_X11_Y13_N17
\contador_end[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[5]~22_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(5));

-- Location: LCCOMB_X11_Y13_N18
\contador_end[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[6]~24_combout\ = (contador_end(6) & (\contador_end[5]~23\ $ (GND))) # (!contador_end(6) & (!\contador_end[5]~23\ & VCC))
-- \contador_end[6]~25\ = CARRY((contador_end(6) & !\contador_end[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(6),
	datad => VCC,
	cin => \contador_end[5]~23\,
	combout => \contador_end[6]~24_combout\,
	cout => \contador_end[6]~25\);

-- Location: FF_X11_Y13_N19
\contador_end[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[6]~24_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(6));

-- Location: LCCOMB_X11_Y13_N20
\contador_end[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[7]~26_combout\ = (contador_end(7) & (!\contador_end[6]~25\)) # (!contador_end(7) & ((\contador_end[6]~25\) # (GND)))
-- \contador_end[7]~27\ = CARRY((!\contador_end[6]~25\) # (!contador_end(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(7),
	datad => VCC,
	cin => \contador_end[6]~25\,
	combout => \contador_end[7]~26_combout\,
	cout => \contador_end[7]~27\);

-- Location: FF_X11_Y13_N21
\contador_end[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[7]~26_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(7));

-- Location: LCCOMB_X11_Y13_N22
\contador_end[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[8]~28_combout\ = (contador_end(8) & (\contador_end[7]~27\ $ (GND))) # (!contador_end(8) & (!\contador_end[7]~27\ & VCC))
-- \contador_end[8]~29\ = CARRY((contador_end(8) & !\contador_end[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(8),
	datad => VCC,
	cin => \contador_end[7]~27\,
	combout => \contador_end[8]~28_combout\,
	cout => \contador_end[8]~29\);

-- Location: FF_X11_Y13_N23
\contador_end[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[8]~28_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(8));

-- Location: LCCOMB_X11_Y13_N24
\contador_end[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[9]~30_combout\ = (contador_end(9) & (!\contador_end[8]~29\)) # (!contador_end(9) & ((\contador_end[8]~29\) # (GND)))
-- \contador_end[9]~31\ = CARRY((!\contador_end[8]~29\) # (!contador_end(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(9),
	datad => VCC,
	cin => \contador_end[8]~29\,
	combout => \contador_end[9]~30_combout\,
	cout => \contador_end[9]~31\);

-- Location: FF_X11_Y13_N25
\contador_end[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[9]~30_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(9));

-- Location: LCCOMB_X11_Y13_N26
\contador_end[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[10]~32_combout\ = (contador_end(10) & (\contador_end[9]~31\ $ (GND))) # (!contador_end(10) & (!\contador_end[9]~31\ & VCC))
-- \contador_end[10]~33\ = CARRY((contador_end(10) & !\contador_end[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(10),
	datad => VCC,
	cin => \contador_end[9]~31\,
	combout => \contador_end[10]~32_combout\,
	cout => \contador_end[10]~33\);

-- Location: FF_X11_Y13_N27
\contador_end[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[10]~32_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(10));

-- Location: LCCOMB_X11_Y13_N28
\contador_end[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[11]~34_combout\ = \contador_end[10]~33\ $ (contador_end(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_end(11),
	cin => \contador_end[10]~33\,
	combout => \contador_end[11]~34_combout\);

-- Location: FF_X11_Y13_N29
\contador_end[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \contador_end[11]~34_combout\,
	ena => \ALT_INV_always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_end(11));

-- Location: M9K_X15_Y13_N0
\controlador_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555",
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555550000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "image.hex",
	init_file_layout => "port_a",
	logical_ram_name => "controlador_ram:controlador_ram|altsyncram:altsyncram_component|altsyncram_cjl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => VCC,
	clk1 => \divisor_clock|clk_out~clkctrl_outclk\,
	ena0 => GND,
	portadatain => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X13_Y13_N22
\hvsync|vga_VS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~1_combout\ = (\hvsync|CounterY\(5) & (\hvsync|CounterY\(8) & (\hvsync|CounterY\(6) & \hvsync|CounterY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(5),
	datab => \hvsync|CounterY\(8),
	datac => \hvsync|CounterY\(6),
	datad => \hvsync|CounterY\(7),
	combout => \hvsync|vga_VS~1_combout\);

-- Location: LCCOMB_X12_Y13_N0
\hvsync|inDisplayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|inDisplayArea~0_combout\ = (!\hvsync|vga_VS~1_combout\ & (((!\hvsync|CounterX\(7) & !\hvsync|CounterX\(8))) # (!\hvsync|CounterX\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(7),
	datab => \hvsync|CounterX\(8),
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|vga_VS~1_combout\,
	combout => \hvsync|inDisplayArea~0_combout\);

-- Location: FF_X12_Y13_N1
\hvsync|inDisplayArea\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|inDisplayArea~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|inDisplayArea~q\);

-- Location: LCCOMB_X11_Y13_N0
\pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel~0_combout\ = (\controlador_ram|altsyncram_component|auto_generated|q_b\(0) & (\hvsync|inDisplayArea~q\ & !\always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_ram|altsyncram_component|auto_generated|q_b\(0),
	datac => \hvsync|inDisplayArea~q\,
	datad => \always1~1_combout\,
	combout => \pixel~0_combout\);

-- Location: LCCOMB_X11_Y13_N4
\pixel[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel[0]~reg0feeder_combout\ = \pixel~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel~0_combout\,
	combout => \pixel[0]~reg0feeder_combout\);

-- Location: FF_X11_Y13_N5
\pixel[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \pixel[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel[0]~reg0_q\);

-- Location: LCCOMB_X11_Y13_N30
\pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel~1_combout\ = (\hvsync|inDisplayArea~q\ & ((\always1~1_combout\) # (\controlador_ram|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always1~1_combout\,
	datac => \hvsync|inDisplayArea~q\,
	datad => \controlador_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \pixel~1_combout\);

-- Location: FF_X11_Y13_N31
\pixel[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \pixel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel[1]~reg0_q\);

-- Location: FF_X11_Y13_N1
\pixel[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \pixel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel[2]~reg0_q\);

-- Location: LCCOMB_X13_Y13_N2
\hvsync|vga_HS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_HS~0_combout\ = (\hvsync|CounterX\(5) & (((!\hvsync|CounterX\(6))) # (!\hvsync|CounterX\(4)))) # (!\hvsync|CounterX\(5) & ((\hvsync|CounterX\(6)) # ((\hvsync|CounterX\(4) & !\hvsync|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(4),
	datab => \hvsync|CounterX\(5),
	datac => \hvsync|Equal0~0_combout\,
	datad => \hvsync|CounterX\(6),
	combout => \hvsync|vga_HS~0_combout\);

-- Location: LCCOMB_X13_Y13_N24
\hvsync|vga_HS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_HS~1_combout\ = (!\hvsync|CounterX\(8) & (\hvsync|CounterX\(7) & (\hvsync|CounterX\(9) & \hvsync|vga_HS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(8),
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|vga_HS~0_combout\,
	combout => \hvsync|vga_HS~1_combout\);

-- Location: FF_X13_Y13_N25
\hvsync|vga_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|vga_HS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|vga_HS~q\);

-- Location: LCCOMB_X14_Y13_N4
\hvsync|vga_VS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~0_combout\ = ((\hvsync|CounterY\(2)) # ((!\hvsync|CounterY\(3)) # (!\hvsync|CounterY\(1)))) # (!\hvsync|CounterY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(0),
	datab => \hvsync|CounterY\(2),
	datac => \hvsync|CounterY\(1),
	datad => \hvsync|CounterY\(3),
	combout => \hvsync|vga_VS~0_combout\);

-- Location: LCCOMB_X13_Y13_N26
\hvsync|vga_VS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~2_combout\ = (!\hvsync|CounterY\(4) & (\hvsync|vga_VS~1_combout\ & !\hvsync|vga_VS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(4),
	datac => \hvsync|vga_VS~1_combout\,
	datad => \hvsync|vga_VS~0_combout\,
	combout => \hvsync|vga_VS~2_combout\);

-- Location: FF_X13_Y13_N27
\hvsync|vga_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \hvsync|vga_VS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvsync|vga_VS~q\);

ww_pixel(0) <= \pixel[0]~output_o\;

ww_pixel(1) <= \pixel[1]~output_o\;

ww_pixel(2) <= \pixel[2]~output_o\;

ww_hsync_out <= \hsync_out~output_o\;

ww_vsync_out <= \vsync_out~output_o\;
END structure;


