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

-- DATE "08/03/2018 15:46:23"

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
SIGNAL \Escrever|state.FIM~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pixel[0]~output_o\ : std_logic;
SIGNAL \pixel[1]~output_o\ : std_logic;
SIGNAL \pixel[2]~output_o\ : std_logic;
SIGNAL \hsync_out~output_o\ : std_logic;
SIGNAL \vsync_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \divisor_clock|clk_out~0_combout\ : std_logic;
SIGNAL \divisor_clock|clk_out~q\ : std_logic;
SIGNAL \divisor_clock|clk_out~clkctrl_outclk\ : std_logic;
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
SIGNAL \hvsync|Equal0~1_combout\ : std_logic;
SIGNAL \hvsync|Equal0~0_combout\ : std_logic;
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
SIGNAL \hvsync|vga_VS~1_combout\ : std_logic;
SIGNAL \hvsync|inDisplayArea~0_combout\ : std_logic;
SIGNAL \hvsync|inDisplayArea~q\ : std_logic;
SIGNAL \Escrever|Add0~0_combout\ : std_logic;
SIGNAL \Escrever|Add0~11_combout\ : std_logic;
SIGNAL \Escrever|Add0~1\ : std_logic;
SIGNAL \Escrever|Add0~2_combout\ : std_logic;
SIGNAL \Escrever|Add0~4_combout\ : std_logic;
SIGNAL \Escrever|Add0~3\ : std_logic;
SIGNAL \Escrever|Add0~5_combout\ : std_logic;
SIGNAL \Escrever|Add0~7_combout\ : std_logic;
SIGNAL \Escrever|Add0~6\ : std_logic;
SIGNAL \Escrever|Add0~8_combout\ : std_logic;
SIGNAL \Escrever|Add0~10_combout\ : std_logic;
SIGNAL \Escrever|LessThan0~0_combout\ : std_logic;
SIGNAL \Escrever|Add0~9\ : std_logic;
SIGNAL \Escrever|Add0~13\ : std_logic;
SIGNAL \Escrever|Add0~15_combout\ : std_logic;
SIGNAL \Escrever|Add0~17_combout\ : std_logic;
SIGNAL \Escrever|Add0~16\ : std_logic;
SIGNAL \Escrever|Add0~18_combout\ : std_logic;
SIGNAL \Escrever|Add0~23_combout\ : std_logic;
SIGNAL \Escrever|Add0~19\ : std_logic;
SIGNAL \Escrever|Add0~20_combout\ : std_logic;
SIGNAL \Escrever|Add0~22_combout\ : std_logic;
SIGNAL \Escrever|Add0~21\ : std_logic;
SIGNAL \Escrever|Add0~24_combout\ : std_logic;
SIGNAL \Escrever|Add0~26_combout\ : std_logic;
SIGNAL \Escrever|Add0~25\ : std_logic;
SIGNAL \Escrever|Add0~27_combout\ : std_logic;
SIGNAL \Escrever|Add0~29_combout\ : std_logic;
SIGNAL \Escrever|Add0~28\ : std_logic;
SIGNAL \Escrever|Add0~30_combout\ : std_logic;
SIGNAL \Escrever|Add0~32_combout\ : std_logic;
SIGNAL \Escrever|Add0~31\ : std_logic;
SIGNAL \Escrever|Add0~33_combout\ : std_logic;
SIGNAL \Escrever|Add0~35_combout\ : std_logic;
SIGNAL \Escrever|LessThan0~2_combout\ : std_logic;
SIGNAL \Escrever|Add0~12_combout\ : std_logic;
SIGNAL \Escrever|Add0~14_combout\ : std_logic;
SIGNAL \Escrever|LessThan0~1_combout\ : std_logic;
SIGNAL \Escrever|state.FIM~0_combout\ : std_logic;
SIGNAL \Escrever|state.FIM~feeder_combout\ : std_logic;
SIGNAL \Escrever|state.FIM~q\ : std_logic;
SIGNAL \Escrever|state.FIM~_wirecell_combout\ : std_logic;
SIGNAL \Escrever|state.FIM~clkctrl_outclk\ : std_logic;
SIGNAL \contador_end[0]~12_combout\ : std_logic;
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
SIGNAL \hvsync|CounterX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \hvsync|CounterY\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Escrever|contador\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Escrever|wraddress\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Escrever|ALT_INV_state.FIM~q\ : std_logic;
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

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \Escrever|state.FIM~_wirecell_combout\);

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Escrever|wraddress\(11) & \Escrever|wraddress\(10) & \Escrever|wraddress\(9) & \Escrever|wraddress\(8) & \Escrever|wraddress\(7) & \Escrever|wraddress\(6) & 
\Escrever|wraddress\(5) & \Escrever|wraddress\(4) & \Escrever|wraddress\(3) & \Escrever|wraddress\(2) & \Escrever|wraddress\(1) & \Escrever|wraddress\(0));

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (contador_end(11) & contador_end(10) & contador_end(9) & contador_end(8) & contador_end(7) & contador_end(6) & contador_end(5) & contador_end(4) & 
contador_end(3) & contador_end(2) & contador_end(1) & contador_end(0));

\controlador_ram|altsyncram_component|auto_generated|q_b\(0) <= \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\divisor_clock|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_clock|clk_out~q\);

\Escrever|state.FIM~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Escrever|state.FIM~q\);
\Escrever|ALT_INV_state.FIM~q\ <= NOT \Escrever|state.FIM~q\;
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X24_Y19_N10
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

-- Location: LCCOMB_X24_Y19_N0
\hvsync|CounterX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~2_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|Equal0~2_combout\,
	datad => \hvsync|Add0~0_combout\,
	combout => \hvsync|CounterX~2_combout\);

-- Location: FF_X24_Y19_N1
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

-- Location: LCCOMB_X24_Y19_N12
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

-- Location: FF_X24_Y19_N13
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

-- Location: LCCOMB_X24_Y19_N14
\hvsync|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~4_combout\ = (\hvsync|CounterX\(2) & (\hvsync|Add0~3\ $ (GND))) # (!\hvsync|CounterX\(2) & (!\hvsync|Add0~3\ & VCC))
-- \hvsync|Add0~5\ = CARRY((\hvsync|CounterX\(2) & !\hvsync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(2),
	datad => VCC,
	cin => \hvsync|Add0~3\,
	combout => \hvsync|Add0~4_combout\,
	cout => \hvsync|Add0~5\);

-- Location: FF_X24_Y19_N15
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

-- Location: LCCOMB_X24_Y19_N16
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

-- Location: FF_X24_Y19_N17
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

-- Location: LCCOMB_X24_Y19_N18
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

-- Location: FF_X24_Y19_N19
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

-- Location: LCCOMB_X24_Y19_N20
\hvsync|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~10_combout\ = (\hvsync|CounterX\(5) & (!\hvsync|Add0~9\)) # (!\hvsync|CounterX\(5) & ((\hvsync|Add0~9\) # (GND)))
-- \hvsync|Add0~11\ = CARRY((!\hvsync|Add0~9\) # (!\hvsync|CounterX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(5),
	datad => VCC,
	cin => \hvsync|Add0~9\,
	combout => \hvsync|Add0~10_combout\,
	cout => \hvsync|Add0~11\);

-- Location: LCCOMB_X23_Y19_N28
\hvsync|CounterX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~3_combout\ = (\hvsync|Add0~10_combout\ & !\hvsync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|Add0~10_combout\,
	datad => \hvsync|Equal0~2_combout\,
	combout => \hvsync|CounterX~3_combout\);

-- Location: FF_X23_Y19_N29
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

-- Location: LCCOMB_X24_Y19_N22
\hvsync|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~12_combout\ = (\hvsync|CounterX\(6) & (\hvsync|Add0~11\ $ (GND))) # (!\hvsync|CounterX\(6) & (!\hvsync|Add0~11\ & VCC))
-- \hvsync|Add0~13\ = CARRY((\hvsync|CounterX\(6) & !\hvsync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(6),
	datad => VCC,
	cin => \hvsync|Add0~11\,
	combout => \hvsync|Add0~12_combout\,
	cout => \hvsync|Add0~13\);

-- Location: FF_X24_Y19_N23
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

-- Location: LCCOMB_X24_Y19_N24
\hvsync|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~14_combout\ = (\hvsync|CounterX\(7) & (!\hvsync|Add0~13\)) # (!\hvsync|CounterX\(7) & ((\hvsync|Add0~13\) # (GND)))
-- \hvsync|Add0~15\ = CARRY((!\hvsync|Add0~13\) # (!\hvsync|CounterX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(7),
	datad => VCC,
	cin => \hvsync|Add0~13\,
	combout => \hvsync|Add0~14_combout\,
	cout => \hvsync|Add0~15\);

-- Location: FF_X24_Y19_N25
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

-- Location: LCCOMB_X24_Y19_N26
\hvsync|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~16_combout\ = (\hvsync|CounterX\(8) & (\hvsync|Add0~15\ $ (GND))) # (!\hvsync|CounterX\(8) & (!\hvsync|Add0~15\ & VCC))
-- \hvsync|Add0~17\ = CARRY((\hvsync|CounterX\(8) & !\hvsync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(8),
	datad => VCC,
	cin => \hvsync|Add0~15\,
	combout => \hvsync|Add0~16_combout\,
	cout => \hvsync|Add0~17\);

-- Location: LCCOMB_X24_Y19_N6
\hvsync|CounterX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~0_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|Equal0~2_combout\,
	datac => \hvsync|Add0~16_combout\,
	combout => \hvsync|CounterX~0_combout\);

-- Location: FF_X24_Y19_N7
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

-- Location: LCCOMB_X24_Y19_N28
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

-- Location: LCCOMB_X24_Y19_N4
\hvsync|CounterX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~1_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|Equal0~2_combout\,
	datad => \hvsync|Add0~18_combout\,
	combout => \hvsync|CounterX~1_combout\);

-- Location: FF_X24_Y19_N5
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

-- Location: LCCOMB_X23_Y19_N8
\hvsync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~1_combout\ = (\hvsync|CounterX\(5) & (!\hvsync|CounterX\(7) & (!\hvsync|CounterX\(6) & !\hvsync|CounterX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(5),
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|CounterX\(6),
	datad => \hvsync|CounterX\(4),
	combout => \hvsync|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N30
\hvsync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~0_combout\ = (!\hvsync|CounterX\(1) & (!\hvsync|CounterX\(0) & (!\hvsync|CounterX\(2) & !\hvsync|CounterX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(1),
	datab => \hvsync|CounterX\(0),
	datac => \hvsync|CounterX\(2),
	datad => \hvsync|CounterX\(3),
	combout => \hvsync|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\hvsync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~2_combout\ = (\hvsync|CounterX\(9) & (\hvsync|Equal0~1_combout\ & (\hvsync|Equal0~0_combout\ & \hvsync|CounterX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(9),
	datab => \hvsync|Equal0~1_combout\,
	datac => \hvsync|Equal0~0_combout\,
	datad => \hvsync|CounterX\(8),
	combout => \hvsync|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y19_N4
\hvsync|CounterY[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[0]~24_combout\ = \hvsync|CounterY\(0) $ (\hvsync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hvsync|CounterY\(0),
	datad => \hvsync|Equal0~2_combout\,
	combout => \hvsync|CounterY[0]~24_combout\);

-- Location: FF_X23_Y19_N5
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

-- Location: LCCOMB_X23_Y19_N12
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

-- Location: FF_X23_Y19_N13
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

-- Location: LCCOMB_X23_Y19_N14
\hvsync|CounterY[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[2]~10_combout\ = (\hvsync|CounterY\(2) & (!\hvsync|CounterY[1]~9\)) # (!\hvsync|CounterY\(2) & ((\hvsync|CounterY[1]~9\) # (GND)))
-- \hvsync|CounterY[2]~11\ = CARRY((!\hvsync|CounterY[1]~9\) # (!\hvsync|CounterY\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(2),
	datad => VCC,
	cin => \hvsync|CounterY[1]~9\,
	combout => \hvsync|CounterY[2]~10_combout\,
	cout => \hvsync|CounterY[2]~11\);

-- Location: FF_X23_Y19_N15
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

-- Location: LCCOMB_X23_Y19_N16
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

-- Location: FF_X23_Y19_N17
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

-- Location: LCCOMB_X23_Y19_N18
\hvsync|CounterY[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[4]~14_combout\ = (\hvsync|CounterY\(4) & (!\hvsync|CounterY[3]~13\)) # (!\hvsync|CounterY\(4) & ((\hvsync|CounterY[3]~13\) # (GND)))
-- \hvsync|CounterY[4]~15\ = CARRY((!\hvsync|CounterY[3]~13\) # (!\hvsync|CounterY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(4),
	datad => VCC,
	cin => \hvsync|CounterY[3]~13\,
	combout => \hvsync|CounterY[4]~14_combout\,
	cout => \hvsync|CounterY[4]~15\);

-- Location: FF_X23_Y19_N19
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

-- Location: LCCOMB_X23_Y19_N20
\hvsync|CounterY[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[5]~16_combout\ = (\hvsync|CounterY\(5) & (\hvsync|CounterY[4]~15\ $ (GND))) # (!\hvsync|CounterY\(5) & (!\hvsync|CounterY[4]~15\ & VCC))
-- \hvsync|CounterY[5]~17\ = CARRY((\hvsync|CounterY\(5) & !\hvsync|CounterY[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(5),
	datad => VCC,
	cin => \hvsync|CounterY[4]~15\,
	combout => \hvsync|CounterY[5]~16_combout\,
	cout => \hvsync|CounterY[5]~17\);

-- Location: FF_X23_Y19_N21
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

-- Location: LCCOMB_X23_Y19_N22
\hvsync|CounterY[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[6]~18_combout\ = (\hvsync|CounterY\(6) & (!\hvsync|CounterY[5]~17\)) # (!\hvsync|CounterY\(6) & ((\hvsync|CounterY[5]~17\) # (GND)))
-- \hvsync|CounterY[6]~19\ = CARRY((!\hvsync|CounterY[5]~17\) # (!\hvsync|CounterY\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(6),
	datad => VCC,
	cin => \hvsync|CounterY[5]~17\,
	combout => \hvsync|CounterY[6]~18_combout\,
	cout => \hvsync|CounterY[6]~19\);

-- Location: FF_X23_Y19_N23
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

-- Location: LCCOMB_X23_Y19_N24
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

-- Location: FF_X23_Y19_N25
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

-- Location: LCCOMB_X23_Y19_N26
\hvsync|CounterY[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[8]~22_combout\ = \hvsync|CounterY\(8) $ (\hvsync|CounterY[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(8),
	cin => \hvsync|CounterY[7]~21\,
	combout => \hvsync|CounterY[8]~22_combout\);

-- Location: FF_X23_Y19_N27
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

-- Location: LCCOMB_X23_Y19_N2
\hvsync|vga_VS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~1_combout\ = (\hvsync|CounterY\(6) & (\hvsync|CounterY\(5) & (\hvsync|CounterY\(8) & \hvsync|CounterY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(6),
	datab => \hvsync|CounterY\(5),
	datac => \hvsync|CounterY\(8),
	datad => \hvsync|CounterY\(7),
	combout => \hvsync|vga_VS~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\hvsync|inDisplayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|inDisplayArea~0_combout\ = (!\hvsync|vga_VS~1_combout\ & (((!\hvsync|CounterX\(7) & !\hvsync|CounterX\(8))) # (!\hvsync|CounterX\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|vga_VS~1_combout\,
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|CounterX\(8),
	combout => \hvsync|inDisplayArea~0_combout\);

-- Location: FF_X24_Y19_N9
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

-- Location: LCCOMB_X29_Y19_N4
\Escrever|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~0_combout\ = \Escrever|contador\(0) $ (GND)
-- \Escrever|Add0~1\ = CARRY(!\Escrever|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(0),
	datad => VCC,
	combout => \Escrever|Add0~0_combout\,
	cout => \Escrever|Add0~1\);

-- Location: LCCOMB_X30_Y19_N20
\Escrever|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~11_combout\ = ((\Escrever|LessThan0~1_combout\ & (\Escrever|LessThan0~0_combout\ & \Escrever|LessThan0~2_combout\))) # (!\Escrever|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|Add0~0_combout\,
	datad => \Escrever|LessThan0~2_combout\,
	combout => \Escrever|Add0~11_combout\);

-- Location: FF_X30_Y19_N21
\Escrever|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~11_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(0));

-- Location: LCCOMB_X29_Y19_N6
\Escrever|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~2_combout\ = (\Escrever|contador\(1) & (!\Escrever|Add0~1\)) # (!\Escrever|contador\(1) & ((\Escrever|Add0~1\) # (GND)))
-- \Escrever|Add0~3\ = CARRY((!\Escrever|Add0~1\) # (!\Escrever|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(1),
	datad => VCC,
	cin => \Escrever|Add0~1\,
	combout => \Escrever|Add0~2_combout\,
	cout => \Escrever|Add0~3\);

-- Location: LCCOMB_X28_Y19_N16
\Escrever|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~4_combout\ = (\Escrever|Add0~2_combout\ & (((!\Escrever|LessThan0~0_combout\) # (!\Escrever|LessThan0~1_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~1_combout\,
	datac => \Escrever|LessThan0~0_combout\,
	datad => \Escrever|Add0~2_combout\,
	combout => \Escrever|Add0~4_combout\);

-- Location: FF_X28_Y19_N17
\Escrever|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~4_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(1));

-- Location: LCCOMB_X29_Y19_N8
\Escrever|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~5_combout\ = (\Escrever|contador\(2) & (\Escrever|Add0~3\ $ (GND))) # (!\Escrever|contador\(2) & (!\Escrever|Add0~3\ & VCC))
-- \Escrever|Add0~6\ = CARRY((\Escrever|contador\(2) & !\Escrever|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(2),
	datad => VCC,
	cin => \Escrever|Add0~3\,
	combout => \Escrever|Add0~5_combout\,
	cout => \Escrever|Add0~6\);

-- Location: LCCOMB_X28_Y19_N14
\Escrever|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~7_combout\ = (\Escrever|Add0~5_combout\ & (((!\Escrever|LessThan0~1_combout\) # (!\Escrever|LessThan0~0_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|LessThan0~1_combout\,
	datad => \Escrever|Add0~5_combout\,
	combout => \Escrever|Add0~7_combout\);

-- Location: FF_X28_Y19_N15
\Escrever|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~7_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(2));

-- Location: LCCOMB_X29_Y19_N10
\Escrever|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~8_combout\ = (\Escrever|contador\(3) & (!\Escrever|Add0~6\)) # (!\Escrever|contador\(3) & ((\Escrever|Add0~6\) # (GND)))
-- \Escrever|Add0~9\ = CARRY((!\Escrever|Add0~6\) # (!\Escrever|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(3),
	datad => VCC,
	cin => \Escrever|Add0~6\,
	combout => \Escrever|Add0~8_combout\,
	cout => \Escrever|Add0~9\);

-- Location: LCCOMB_X28_Y19_N2
\Escrever|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~10_combout\ = (\Escrever|Add0~8_combout\ & (((!\Escrever|LessThan0~1_combout\) # (!\Escrever|LessThan0~0_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|Add0~8_combout\,
	datad => \Escrever|LessThan0~1_combout\,
	combout => \Escrever|Add0~10_combout\);

-- Location: FF_X28_Y19_N3
\Escrever|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~10_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(3));

-- Location: LCCOMB_X28_Y19_N8
\Escrever|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|LessThan0~0_combout\ = (\Escrever|contador\(3) & (\Escrever|contador\(1) & (\Escrever|contador\(2) & !\Escrever|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(3),
	datab => \Escrever|contador\(1),
	datac => \Escrever|contador\(2),
	datad => \Escrever|contador\(0),
	combout => \Escrever|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\Escrever|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~12_combout\ = (\Escrever|contador\(4) & (\Escrever|Add0~9\ $ (GND))) # (!\Escrever|contador\(4) & (!\Escrever|Add0~9\ & VCC))
-- \Escrever|Add0~13\ = CARRY((\Escrever|contador\(4) & !\Escrever|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(4),
	datad => VCC,
	cin => \Escrever|Add0~9\,
	combout => \Escrever|Add0~12_combout\,
	cout => \Escrever|Add0~13\);

-- Location: LCCOMB_X29_Y19_N14
\Escrever|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~15_combout\ = (\Escrever|contador\(5) & (!\Escrever|Add0~13\)) # (!\Escrever|contador\(5) & ((\Escrever|Add0~13\) # (GND)))
-- \Escrever|Add0~16\ = CARRY((!\Escrever|Add0~13\) # (!\Escrever|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(5),
	datad => VCC,
	cin => \Escrever|Add0~13\,
	combout => \Escrever|Add0~15_combout\,
	cout => \Escrever|Add0~16\);

-- Location: LCCOMB_X28_Y19_N0
\Escrever|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~17_combout\ = (\Escrever|Add0~15_combout\ & (((!\Escrever|LessThan0~1_combout\) # (!\Escrever|LessThan0~0_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|Add0~15_combout\,
	datad => \Escrever|LessThan0~1_combout\,
	combout => \Escrever|Add0~17_combout\);

-- Location: FF_X28_Y19_N1
\Escrever|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~17_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(5));

-- Location: LCCOMB_X29_Y19_N16
\Escrever|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~18_combout\ = (\Escrever|contador\(6) & (!\Escrever|Add0~16\ & VCC)) # (!\Escrever|contador\(6) & (\Escrever|Add0~16\ $ (GND)))
-- \Escrever|Add0~19\ = CARRY((!\Escrever|contador\(6) & !\Escrever|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(6),
	datad => VCC,
	cin => \Escrever|Add0~16\,
	combout => \Escrever|Add0~18_combout\,
	cout => \Escrever|Add0~19\);

-- Location: LCCOMB_X29_Y19_N0
\Escrever|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~23_combout\ = ((\Escrever|LessThan0~0_combout\ & (\Escrever|LessThan0~2_combout\ & \Escrever|LessThan0~1_combout\))) # (!\Escrever|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~0_combout\,
	datab => \Escrever|LessThan0~2_combout\,
	datac => \Escrever|LessThan0~1_combout\,
	datad => \Escrever|Add0~18_combout\,
	combout => \Escrever|Add0~23_combout\);

-- Location: FF_X29_Y19_N1
\Escrever|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~23_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(6));

-- Location: LCCOMB_X29_Y19_N18
\Escrever|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~20_combout\ = (\Escrever|contador\(7) & (!\Escrever|Add0~19\)) # (!\Escrever|contador\(7) & ((\Escrever|Add0~19\) # (GND)))
-- \Escrever|Add0~21\ = CARRY((!\Escrever|Add0~19\) # (!\Escrever|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(7),
	datad => VCC,
	cin => \Escrever|Add0~19\,
	combout => \Escrever|Add0~20_combout\,
	cout => \Escrever|Add0~21\);

-- Location: LCCOMB_X28_Y19_N20
\Escrever|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~22_combout\ = (\Escrever|Add0~20_combout\ & (((!\Escrever|LessThan0~0_combout\) # (!\Escrever|LessThan0~1_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~1_combout\,
	datac => \Escrever|LessThan0~0_combout\,
	datad => \Escrever|Add0~20_combout\,
	combout => \Escrever|Add0~22_combout\);

-- Location: FF_X28_Y19_N21
\Escrever|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~22_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(7));

-- Location: LCCOMB_X29_Y19_N20
\Escrever|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~24_combout\ = (\Escrever|contador\(8) & (\Escrever|Add0~21\ $ (GND))) # (!\Escrever|contador\(8) & (!\Escrever|Add0~21\ & VCC))
-- \Escrever|Add0~25\ = CARRY((\Escrever|contador\(8) & !\Escrever|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(8),
	datad => VCC,
	cin => \Escrever|Add0~21\,
	combout => \Escrever|Add0~24_combout\,
	cout => \Escrever|Add0~25\);

-- Location: LCCOMB_X30_Y19_N18
\Escrever|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~26_combout\ = (\Escrever|Add0~24_combout\ & (((!\Escrever|LessThan0~0_combout\) # (!\Escrever|LessThan0~2_combout\)) # (!\Escrever|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|LessThan0~2_combout\,
	datac => \Escrever|LessThan0~0_combout\,
	datad => \Escrever|Add0~24_combout\,
	combout => \Escrever|Add0~26_combout\);

-- Location: FF_X30_Y19_N19
\Escrever|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~26_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(8));

-- Location: LCCOMB_X29_Y19_N22
\Escrever|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~27_combout\ = (\Escrever|contador\(9) & (!\Escrever|Add0~25\)) # (!\Escrever|contador\(9) & ((\Escrever|Add0~25\) # (GND)))
-- \Escrever|Add0~28\ = CARRY((!\Escrever|Add0~25\) # (!\Escrever|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(9),
	datad => VCC,
	cin => \Escrever|Add0~25\,
	combout => \Escrever|Add0~27_combout\,
	cout => \Escrever|Add0~28\);

-- Location: LCCOMB_X29_Y19_N30
\Escrever|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~29_combout\ = (\Escrever|Add0~27_combout\ & (((!\Escrever|LessThan0~0_combout\) # (!\Escrever|LessThan0~2_combout\)) # (!\Escrever|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|LessThan0~2_combout\,
	datac => \Escrever|Add0~27_combout\,
	datad => \Escrever|LessThan0~0_combout\,
	combout => \Escrever|Add0~29_combout\);

-- Location: FF_X29_Y19_N31
\Escrever|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~29_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(9));

-- Location: LCCOMB_X29_Y19_N24
\Escrever|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~30_combout\ = (\Escrever|contador\(10) & (\Escrever|Add0~28\ $ (GND))) # (!\Escrever|contador\(10) & (!\Escrever|Add0~28\ & VCC))
-- \Escrever|Add0~31\ = CARRY((\Escrever|contador\(10) & !\Escrever|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(10),
	datad => VCC,
	cin => \Escrever|Add0~28\,
	combout => \Escrever|Add0~30_combout\,
	cout => \Escrever|Add0~31\);

-- Location: LCCOMB_X30_Y19_N12
\Escrever|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~32_combout\ = (\Escrever|Add0~30_combout\ & (((!\Escrever|LessThan0~0_combout\) # (!\Escrever|LessThan0~2_combout\)) # (!\Escrever|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|LessThan0~2_combout\,
	datac => \Escrever|LessThan0~0_combout\,
	datad => \Escrever|Add0~30_combout\,
	combout => \Escrever|Add0~32_combout\);

-- Location: FF_X30_Y19_N13
\Escrever|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~32_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(10));

-- Location: LCCOMB_X29_Y19_N26
\Escrever|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~33_combout\ = \Escrever|Add0~31\ $ (\Escrever|contador\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Escrever|contador\(11),
	cin => \Escrever|Add0~31\,
	combout => \Escrever|Add0~33_combout\);

-- Location: LCCOMB_X30_Y19_N26
\Escrever|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~35_combout\ = (\Escrever|Add0~33_combout\ & (((!\Escrever|LessThan0~2_combout\) # (!\Escrever|LessThan0~0_combout\)) # (!\Escrever|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|Add0~33_combout\,
	datad => \Escrever|LessThan0~2_combout\,
	combout => \Escrever|Add0~35_combout\);

-- Location: FF_X30_Y19_N27
\Escrever|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~35_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(11));

-- Location: LCCOMB_X30_Y19_N16
\Escrever|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|LessThan0~2_combout\ = (\Escrever|contador\(10) & (\Escrever|contador\(8) & (\Escrever|contador\(11) & \Escrever|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(10),
	datab => \Escrever|contador\(8),
	datac => \Escrever|contador\(11),
	datad => \Escrever|contador\(9),
	combout => \Escrever|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y19_N18
\Escrever|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|Add0~14_combout\ = (\Escrever|Add0~12_combout\ & (((!\Escrever|LessThan0~1_combout\) # (!\Escrever|LessThan0~0_combout\)) # (!\Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~2_combout\,
	datab => \Escrever|LessThan0~0_combout\,
	datac => \Escrever|Add0~12_combout\,
	datad => \Escrever|LessThan0~1_combout\,
	combout => \Escrever|Add0~14_combout\);

-- Location: FF_X28_Y19_N19
\Escrever|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|Add0~14_combout\,
	ena => \Escrever|ALT_INV_state.FIM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|contador\(4));

-- Location: LCCOMB_X28_Y19_N30
\Escrever|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|LessThan0~1_combout\ = (\Escrever|contador\(4) & (\Escrever|contador\(5) & (!\Escrever|contador\(6) & \Escrever|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(4),
	datab => \Escrever|contador\(5),
	datac => \Escrever|contador\(6),
	datad => \Escrever|contador\(7),
	combout => \Escrever|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y19_N12
\Escrever|state.FIM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|state.FIM~0_combout\ = (\Escrever|state.FIM~q\) # ((\Escrever|LessThan0~1_combout\ & (\Escrever|LessThan0~0_combout\ & \Escrever|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|LessThan0~1_combout\,
	datab => \Escrever|state.FIM~q\,
	datac => \Escrever|LessThan0~0_combout\,
	datad => \Escrever|LessThan0~2_combout\,
	combout => \Escrever|state.FIM~0_combout\);

-- Location: LCCOMB_X28_Y19_N10
\Escrever|state.FIM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|state.FIM~feeder_combout\ = \Escrever|state.FIM~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|state.FIM~0_combout\,
	combout => \Escrever|state.FIM~feeder_combout\);

-- Location: FF_X28_Y19_N11
\Escrever|state.FIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_clock|clk_out~clkctrl_outclk\,
	d => \Escrever|state.FIM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escrever|state.FIM~q\);

-- Location: LCCOMB_X30_Y19_N30
\Escrever|state.FIM~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|state.FIM~_wirecell_combout\ = !\Escrever|state.FIM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Escrever|state.FIM~q\,
	combout => \Escrever|state.FIM~_wirecell_combout\);

-- Location: CLKCTRL_G8
\Escrever|state.FIM~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Escrever|state.FIM~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Escrever|state.FIM~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y19_N14
\Escrever|wraddress[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(0) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(0)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (!\Escrever|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(0),
	datac => \Escrever|wraddress\(0),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(0));

-- Location: LCCOMB_X28_Y19_N28
\Escrever|wraddress[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(1) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|wraddress\(1))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|wraddress\(1),
	datac => \Escrever|contador\(1),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(1));

-- Location: LCCOMB_X28_Y19_N4
\Escrever|wraddress[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(2) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|wraddress\(2))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|wraddress\(2),
	datac => \Escrever|contador\(2),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(2));

-- Location: LCCOMB_X28_Y19_N24
\Escrever|wraddress[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(3) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(3)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(3),
	datac => \Escrever|wraddress\(3),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(3));

-- Location: LCCOMB_X28_Y19_N26
\Escrever|wraddress[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(4) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(4)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(4),
	datac => \Escrever|wraddress\(4),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(4));

-- Location: LCCOMB_X28_Y19_N6
\Escrever|wraddress[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(5) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|wraddress\(5))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|wraddress\(5),
	datac => \Escrever|contador\(5),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(5));

-- Location: LCCOMB_X29_Y19_N28
\Escrever|wraddress[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(6) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(6)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (!\Escrever|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(6),
	datab => \Escrever|wraddress\(6),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(6));

-- Location: LCCOMB_X28_Y19_N22
\Escrever|wraddress[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(7) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(7)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(7),
	datac => \Escrever|wraddress\(7),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(7));

-- Location: LCCOMB_X30_Y19_N4
\Escrever|wraddress[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(8) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(8)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(8),
	datac => \Escrever|wraddress\(8),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(8));

-- Location: LCCOMB_X29_Y19_N2
\Escrever|wraddress[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(9) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(9)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(9),
	datac => \Escrever|wraddress\(9),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(9));

-- Location: LCCOMB_X30_Y19_N22
\Escrever|wraddress[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(10) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(10)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escrever|contador\(10),
	datac => \Escrever|wraddress\(10),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(10));

-- Location: LCCOMB_X30_Y19_N28
\Escrever|wraddress[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escrever|wraddress\(11) = (GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & ((\Escrever|wraddress\(11)))) # (!GLOBAL(\Escrever|state.FIM~clkctrl_outclk\) & (\Escrever|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escrever|contador\(11),
	datab => \Escrever|wraddress\(11),
	datad => \Escrever|state.FIM~clkctrl_outclk\,
	combout => \Escrever|wraddress\(11));

-- Location: LCCOMB_X25_Y19_N6
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

-- Location: LCCOMB_X24_Y19_N2
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\hvsync|CounterX\(8)) # ((\hvsync|CounterX\(9)) # ((\hvsync|CounterX\(6)) # (\hvsync|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(8),
	datab => \hvsync|CounterX\(9),
	datac => \hvsync|CounterX\(6),
	datad => \hvsync|CounterX\(7),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (\hvsync|CounterY\(7)) # ((\hvsync|CounterY\(6)) # ((\hvsync|CounterY\(8)) # (\always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(7),
	datab => \hvsync|CounterY\(6),
	datac => \hvsync|CounterY\(8),
	datad => \always1~0_combout\,
	combout => \always1~1_combout\);

-- Location: FF_X25_Y19_N7
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

-- Location: LCCOMB_X25_Y19_N8
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

-- Location: FF_X25_Y19_N9
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

-- Location: LCCOMB_X25_Y19_N10
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

-- Location: FF_X25_Y19_N11
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

-- Location: LCCOMB_X25_Y19_N12
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

-- Location: FF_X25_Y19_N13
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

-- Location: LCCOMB_X25_Y19_N14
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

-- Location: FF_X25_Y19_N15
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

-- Location: LCCOMB_X25_Y19_N16
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

-- Location: FF_X25_Y19_N17
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

-- Location: LCCOMB_X25_Y19_N18
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

-- Location: FF_X25_Y19_N19
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

-- Location: LCCOMB_X25_Y19_N20
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

-- Location: FF_X25_Y19_N21
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

-- Location: LCCOMB_X25_Y19_N22
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

-- Location: FF_X25_Y19_N23
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

-- Location: LCCOMB_X25_Y19_N24
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

-- Location: FF_X25_Y19_N25
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

-- Location: LCCOMB_X25_Y19_N26
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

-- Location: FF_X25_Y19_N27
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

-- Location: LCCOMB_X25_Y19_N28
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

-- Location: FF_X25_Y19_N29
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

-- Location: M9K_X27_Y19_N0
\controlador_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "controlador_ram:controlador_ram|altsyncram:altsyncram_component|altsyncram_iln1:auto_generated|ALTSYNCRAM",
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
	portawe => \Escrever|ALT_INV_state.FIM~q\,
	portbre => VCC,
	clk0 => \divisor_clock|clk_out~clkctrl_outclk\,
	clk1 => \divisor_clock|clk_out~clkctrl_outclk\,
	ena0 => \Escrever|ALT_INV_state.FIM~q\,
	portadatain => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y19_N4
\pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel~0_combout\ = (\hvsync|inDisplayArea~q\ & (\controlador_ram|altsyncram_component|auto_generated|q_b\(0) & !\always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|inDisplayArea~q\,
	datab => \controlador_ram|altsyncram_component|auto_generated|q_b\(0),
	datad => \always1~1_combout\,
	combout => \pixel~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\pixel[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel[0]~reg0feeder_combout\ = \pixel~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel~0_combout\,
	combout => \pixel[0]~reg0feeder_combout\);

-- Location: FF_X25_Y19_N1
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

-- Location: LCCOMB_X25_Y19_N30
\pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel~1_combout\ = (\hvsync|inDisplayArea~q\ & ((\always1~1_combout\) # (\controlador_ram|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|inDisplayArea~q\,
	datab => \always1~1_combout\,
	datad => \controlador_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \pixel~1_combout\);

-- Location: FF_X25_Y19_N31
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

-- Location: FF_X25_Y19_N5
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

-- Location: LCCOMB_X23_Y19_N30
\hvsync|vga_HS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_HS~0_combout\ = (\hvsync|CounterX\(6) & (((!\hvsync|CounterX\(5))) # (!\hvsync|CounterX\(4)))) # (!\hvsync|CounterX\(6) & ((\hvsync|CounterX\(5)) # ((\hvsync|CounterX\(4) & !\hvsync|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(6),
	datab => \hvsync|CounterX\(4),
	datac => \hvsync|Equal0~0_combout\,
	datad => \hvsync|CounterX\(5),
	combout => \hvsync|vga_HS~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\hvsync|vga_HS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_HS~1_combout\ = (\hvsync|CounterX\(9) & (\hvsync|CounterX\(7) & (\hvsync|vga_HS~0_combout\ & !\hvsync|CounterX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(9),
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|vga_HS~0_combout\,
	datad => \hvsync|CounterX\(8),
	combout => \hvsync|vga_HS~1_combout\);

-- Location: FF_X23_Y19_N1
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

-- Location: LCCOMB_X22_Y19_N16
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

-- Location: LCCOMB_X23_Y19_N10
\hvsync|vga_VS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~2_combout\ = (!\hvsync|CounterY\(4) & (!\hvsync|vga_VS~0_combout\ & \hvsync|vga_VS~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterY\(4),
	datac => \hvsync|vga_VS~0_combout\,
	datad => \hvsync|vga_VS~1_combout\,
	combout => \hvsync|vga_VS~2_combout\);

-- Location: FF_X23_Y19_N11
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


