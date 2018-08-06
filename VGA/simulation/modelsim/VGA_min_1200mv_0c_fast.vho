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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/06/2018 08:34:48"

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
	reset : IN std_logic;
	pixel : OUT std_logic_vector(2 DOWNTO 0);
	hsync_out : OUT std_logic;
	vsync_out : OUT std_logic;
	leds : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGADemo;

-- Design Ports Information
-- pixel[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync_out	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync_out	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_pixel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_hsync_out : std_logic;
SIGNAL ww_vsync_out : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \divisor_clock|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|clk_line~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pixel[0]~output_o\ : std_logic;
SIGNAL \pixel[1]~output_o\ : std_logic;
SIGNAL \pixel[2]~output_o\ : std_logic;
SIGNAL \hsync_out~output_o\ : std_logic;
SIGNAL \vsync_out~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_clock|clk_out~0_combout\ : std_logic;
SIGNAL \divisor_clock|clk_out~feeder_combout\ : std_logic;
SIGNAL \divisor_clock|clk_out~q\ : std_logic;
SIGNAL \divisor_clock|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[0]~14_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[0]~15\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[1]~17_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Equal0~1_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Equal0~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Equal0~3_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~13_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state.start~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|count_line[1]~3_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|count_line[1]~4_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|count_line[2]~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|count_line[2]~1_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|count_line[2]~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Selector14~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Selector14~1_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Selector14~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|LessThan0~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~11_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state.getRow~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state.calculate~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[11]~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[1]~18\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[2]~19_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[2]~20\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[3]~21_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[3]~22\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[4]~23_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[4]~24\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[5]~25_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[5]~26\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[6]~27_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[6]~28\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[7]~29_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[7]~30\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[8]~31_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[8]~32\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[9]~33_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[9]~34\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[10]~35_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[10]~36\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base[11]~37_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Equal0~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~9_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~14_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state.finish~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|clk_done~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|clk_done~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state~15_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|state.000~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base~16_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[61]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[32]~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[53]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[45]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[60]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[52]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[59]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[51]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[43]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[58]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[50]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[42]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[57]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[49]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[41]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[56]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[48]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[40]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[32]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_2[32]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~1\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~3\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~5\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~7\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~9\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~8_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~6_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~4_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~1_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~3\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~5\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~7\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~9\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~8_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~6_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~4_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~1\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~3\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~5\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~7\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~9\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~8_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~6_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~4_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~1\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~3\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~5\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~7\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~9\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~8_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~6_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~4_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~2_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~1_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~3_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~5_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~7_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~9_cout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~10_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[62]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|row_3[54]~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~11\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add13~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~11\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add14~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~11\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add15~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~11\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add16~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~11\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Add17~12_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|LessThan3~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|Selector27~0_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|clk_line~feeder_combout\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|clk_line~q\ : std_logic;
SIGNAL \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\ : std_logic;
SIGNAL \img_base_out[0]~18_combout\ : std_logic;
SIGNAL \img_base_out[1]~6_combout\ : std_logic;
SIGNAL \img_base_out[1]~7\ : std_logic;
SIGNAL \img_base_out[2]~8_combout\ : std_logic;
SIGNAL \img_base_out[2]~9\ : std_logic;
SIGNAL \img_base_out[3]~10_combout\ : std_logic;
SIGNAL \img_base_out[3]~11\ : std_logic;
SIGNAL \img_base_out[4]~12_combout\ : std_logic;
SIGNAL \img_base_out[4]~13\ : std_logic;
SIGNAL \img_base_out[5]~14_combout\ : std_logic;
SIGNAL \img_base_out[5]~15\ : std_logic;
SIGNAL \img_base_out[6]~16_combout\ : std_logic;
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
SIGNAL \hvsync|Equal0~1_combout\ : std_logic;
SIGNAL \hvsync|Add0~17\ : std_logic;
SIGNAL \hvsync|Add0~18_combout\ : std_logic;
SIGNAL \hvsync|CounterX~1_combout\ : std_logic;
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
SIGNAL \hvsync|CounterY\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \hvsync|CounterX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|row_1\ : std_logic_vector(511 DOWNTO 0);
SIGNAL contador_end : std_logic_vector(11 DOWNTO 0);
SIGNAL img_base_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|row_2\ : std_logic_vector(511 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|row_out\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|row_3\ : std_logic_vector(511 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|pixel\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|count_line\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Coprocessor_Edge_Detection|address_pixel_base\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \hvsync|ALT_INV_vga_VS~q\ : std_logic;
SIGNAL \hvsync|ALT_INV_vga_HS~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
pixel <= ww_pixel;
hsync_out <= ww_hsync_out;
vsync_out <= ww_vsync_out;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \Coprocessor_Edge_Detection|pixel\(0));

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (img_base_out(6) & img_base_out(5) & img_base_out(4) & img_base_out(3) & img_base_out(2) & img_base_out(1) & img_base_out(0));

\controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (contador_end(11) & contador_end(10) & contador_end(9) & contador_end(8) & contador_end(7) & contador_end(6) & contador_end(5) & contador_end(4) & 
contador_end(3) & contador_end(2) & contador_end(1) & contador_end(0));

\controlador_ram|altsyncram_component|auto_generated|q_b\(0) <= \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\Coprocessor_Edge_Detection|address_pixel_base\(11) & \Coprocessor_Edge_Detection|address_pixel_base\(10) & 
\Coprocessor_Edge_Detection|address_pixel_base\(9) & \Coprocessor_Edge_Detection|address_pixel_base\(8) & \Coprocessor_Edge_Detection|address_pixel_base\(7) & \Coprocessor_Edge_Detection|address_pixel_base\(6) & 
\Coprocessor_Edge_Detection|address_pixel_base\(5) & \Coprocessor_Edge_Detection|address_pixel_base\(4) & \Coprocessor_Edge_Detection|address_pixel_base\(3) & \Coprocessor_Edge_Detection|address_pixel_base\(2) & 
\Coprocessor_Edge_Detection|address_pixel_base\(1) & \Coprocessor_Edge_Detection|address_pixel_base\(0));

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(3) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(5) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(1);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\Coprocessor_Edge_Detection|address_pixel_base\(11) & \Coprocessor_Edge_Detection|address_pixel_base\(10) & 
\Coprocessor_Edge_Detection|address_pixel_base\(9) & \Coprocessor_Edge_Detection|address_pixel_base\(8) & \Coprocessor_Edge_Detection|address_pixel_base\(7) & \Coprocessor_Edge_Detection|address_pixel_base\(6) & 
\Coprocessor_Edge_Detection|address_pixel_base\(5) & \Coprocessor_Edge_Detection|address_pixel_base\(4) & \Coprocessor_Edge_Detection|address_pixel_base\(3) & \Coprocessor_Edge_Detection|address_pixel_base\(2) & 
\Coprocessor_Edge_Detection|address_pixel_base\(1) & \Coprocessor_Edge_Detection|address_pixel_base\(0));

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(2) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(4) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Coprocessor_Edge_Detection|address_pixel_base\(11) & \Coprocessor_Edge_Detection|address_pixel_base\(10) & 
\Coprocessor_Edge_Detection|address_pixel_base\(9) & \Coprocessor_Edge_Detection|address_pixel_base\(8) & \Coprocessor_Edge_Detection|address_pixel_base\(7) & \Coprocessor_Edge_Detection|address_pixel_base\(6) & 
\Coprocessor_Edge_Detection|address_pixel_base\(5) & \Coprocessor_Edge_Detection|address_pixel_base\(4) & \Coprocessor_Edge_Detection|address_pixel_base\(3) & \Coprocessor_Edge_Detection|address_pixel_base\(2) & 
\Coprocessor_Edge_Detection|address_pixel_base\(1) & \Coprocessor_Edge_Detection|address_pixel_base\(0));

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(0) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(1) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (gnd & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\Coprocessor_Edge_Detection|address_pixel_base\(11) & \Coprocessor_Edge_Detection|address_pixel_base\(10) & 
\Coprocessor_Edge_Detection|address_pixel_base\(9) & \Coprocessor_Edge_Detection|address_pixel_base\(8) & \Coprocessor_Edge_Detection|address_pixel_base\(7) & \Coprocessor_Edge_Detection|address_pixel_base\(6) & 
\Coprocessor_Edge_Detection|address_pixel_base\(5) & \Coprocessor_Edge_Detection|address_pixel_base\(4) & \Coprocessor_Edge_Detection|address_pixel_base\(3) & \Coprocessor_Edge_Detection|address_pixel_base\(2) & 
\Coprocessor_Edge_Detection|address_pixel_base\(1) & \Coprocessor_Edge_Detection|address_pixel_base\(0));

\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(6) <= \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\divisor_clock|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_clock|clk_out~q\);

\Coprocessor_Edge_Detection|clk_line~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Coprocessor_Edge_Detection|clk_line~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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

-- Location: IOOBUF_X21_Y24_N2
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

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

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N30
\divisor_clock|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_clock|clk_out~0_combout\ = !\divisor_clock|clk_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clock|clk_out~q\,
	combout => \divisor_clock|clk_out~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\divisor_clock|clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_clock|clk_out~feeder_combout\ = \divisor_clock|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clock|clk_out~0_combout\,
	combout => \divisor_clock|clk_out~feeder_combout\);

-- Location: FF_X1_Y11_N29
\divisor_clock|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor_clock|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_clock|clk_out~q\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X16_Y13_N14
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

-- Location: LCCOMB_X16_Y19_N6
\Coprocessor_Edge_Detection|address_pixel_base[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[0]~14_combout\ = \Coprocessor_Edge_Detection|address_pixel_base\(0) $ (VCC)
-- \Coprocessor_Edge_Detection|address_pixel_base[0]~15\ = CARRY(\Coprocessor_Edge_Detection|address_pixel_base\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(0),
	datad => VCC,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[0]~14_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[0]~15\);

-- Location: LCCOMB_X16_Y19_N8
\Coprocessor_Edge_Detection|address_pixel_base[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[1]~17_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(1) & (!\Coprocessor_Edge_Detection|address_pixel_base[0]~15\)) # (!\Coprocessor_Edge_Detection|address_pixel_base\(1) & 
-- ((\Coprocessor_Edge_Detection|address_pixel_base[0]~15\) # (GND)))
-- \Coprocessor_Edge_Detection|address_pixel_base[1]~18\ = CARRY((!\Coprocessor_Edge_Detection|address_pixel_base[0]~15\) # (!\Coprocessor_Edge_Detection|address_pixel_base\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(1),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[0]~15\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[1]~17_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[1]~18\);

-- Location: IOIBUF_X25_Y24_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X16_Y19_N2
\Coprocessor_Edge_Detection|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Equal0~1_combout\ = (!\Coprocessor_Edge_Detection|address_pixel_base\(5) & (!\Coprocessor_Edge_Detection|address_pixel_base\(7) & (!\Coprocessor_Edge_Detection|address_pixel_base\(4) & 
-- !\Coprocessor_Edge_Detection|address_pixel_base\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(5),
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(7),
	datac => \Coprocessor_Edge_Detection|address_pixel_base\(4),
	datad => \Coprocessor_Edge_Detection|address_pixel_base\(6),
	combout => \Coprocessor_Edge_Detection|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y19_N4
\Coprocessor_Edge_Detection|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Equal0~0_combout\ = (!\Coprocessor_Edge_Detection|address_pixel_base\(2) & (!\Coprocessor_Edge_Detection|address_pixel_base\(3) & (!\Coprocessor_Edge_Detection|address_pixel_base\(1) & 
-- !\Coprocessor_Edge_Detection|address_pixel_base\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(2),
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(3),
	datac => \Coprocessor_Edge_Detection|address_pixel_base\(1),
	datad => \Coprocessor_Edge_Detection|address_pixel_base\(0),
	combout => \Coprocessor_Edge_Detection|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Coprocessor_Edge_Detection|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Equal0~3_combout\ = (\Coprocessor_Edge_Detection|Equal0~2_combout\ & (\Coprocessor_Edge_Detection|Equal0~1_combout\ & \Coprocessor_Edge_Detection|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Equal0~2_combout\,
	datac => \Coprocessor_Edge_Detection|Equal0~1_combout\,
	datad => \Coprocessor_Edge_Detection|Equal0~0_combout\,
	combout => \Coprocessor_Edge_Detection|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Coprocessor_Edge_Detection|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~13_combout\ = (!\Coprocessor_Edge_Detection|state.000~q\ & (!\Coprocessor_Edge_Detection|clk_done~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.000~q\,
	datac => \Coprocessor_Edge_Detection|clk_done~q\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|state~13_combout\);

-- Location: FF_X25_Y19_N5
\Coprocessor_Edge_Detection|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|state.start~q\);

-- Location: LCCOMB_X25_Y19_N16
\Coprocessor_Edge_Detection|count_line[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|count_line[1]~3_combout\ = (\Coprocessor_Edge_Detection|state.calculate~q\ & ((\Coprocessor_Edge_Detection|count_line\(1) $ (!\Coprocessor_Edge_Detection|count_line\(0))))) # (!\Coprocessor_Edge_Detection|state.calculate~q\ & 
-- (\Coprocessor_Edge_Detection|state.getRow~q\ & (\Coprocessor_Edge_Detection|count_line\(1) $ (\Coprocessor_Edge_Detection|count_line\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.calculate~q\,
	datab => \Coprocessor_Edge_Detection|state.getRow~q\,
	datac => \Coprocessor_Edge_Detection|count_line\(1),
	datad => \Coprocessor_Edge_Detection|count_line\(0),
	combout => \Coprocessor_Edge_Detection|count_line[1]~3_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Coprocessor_Edge_Detection|count_line[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|count_line[1]~4_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ & ((\Coprocessor_Edge_Detection|state.start~q\ & (\Coprocessor_Edge_Detection|count_line\(1))) # 
-- (!\Coprocessor_Edge_Detection|state.start~q\ & ((\Coprocessor_Edge_Detection|count_line[1]~3_combout\))))) # (!\Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ & (((\Coprocessor_Edge_Detection|count_line\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	datab => \Coprocessor_Edge_Detection|state.start~q\,
	datac => \Coprocessor_Edge_Detection|count_line\(1),
	datad => \Coprocessor_Edge_Detection|count_line[1]~3_combout\,
	combout => \Coprocessor_Edge_Detection|count_line[1]~4_combout\);

-- Location: FF_X25_Y19_N27
\Coprocessor_Edge_Detection|count_line[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|count_line[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|count_line\(1));

-- Location: LCCOMB_X25_Y19_N12
\Coprocessor_Edge_Detection|count_line[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|count_line[2]~0_combout\ = (\Coprocessor_Edge_Detection|count_line\(0) & ((\Coprocessor_Edge_Detection|count_line\(1)) # (\Coprocessor_Edge_Detection|state.calculate~q\))) # (!\Coprocessor_Edge_Detection|count_line\(0) & 
-- (\Coprocessor_Edge_Detection|count_line\(1) & \Coprocessor_Edge_Detection|state.calculate~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|count_line\(0),
	datac => \Coprocessor_Edge_Detection|count_line\(1),
	datad => \Coprocessor_Edge_Detection|state.calculate~q\,
	combout => \Coprocessor_Edge_Detection|count_line[2]~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\Coprocessor_Edge_Detection|count_line[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|count_line[2]~1_combout\ = (\Coprocessor_Edge_Detection|state.calculate~q\ & (\Coprocessor_Edge_Detection|count_line\(2) $ (((!\Coprocessor_Edge_Detection|count_line[2]~0_combout\))))) # 
-- (!\Coprocessor_Edge_Detection|state.calculate~q\ & (\Coprocessor_Edge_Detection|state.getRow~q\ & (\Coprocessor_Edge_Detection|count_line\(2) $ (\Coprocessor_Edge_Detection|count_line[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.calculate~q\,
	datab => \Coprocessor_Edge_Detection|count_line\(2),
	datac => \Coprocessor_Edge_Detection|state.getRow~q\,
	datad => \Coprocessor_Edge_Detection|count_line[2]~0_combout\,
	combout => \Coprocessor_Edge_Detection|count_line[2]~1_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Coprocessor_Edge_Detection|count_line[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|count_line[2]~2_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ & ((\Coprocessor_Edge_Detection|state.start~q\ & (\Coprocessor_Edge_Detection|count_line\(2))) # 
-- (!\Coprocessor_Edge_Detection|state.start~q\ & ((\Coprocessor_Edge_Detection|count_line[2]~1_combout\))))) # (!\Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ & (((\Coprocessor_Edge_Detection|count_line\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	datab => \Coprocessor_Edge_Detection|state.start~q\,
	datac => \Coprocessor_Edge_Detection|count_line\(2),
	datad => \Coprocessor_Edge_Detection|count_line[2]~1_combout\,
	combout => \Coprocessor_Edge_Detection|count_line[2]~2_combout\);

-- Location: FF_X25_Y19_N25
\Coprocessor_Edge_Detection|count_line[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|count_line[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|count_line\(2));

-- Location: LCCOMB_X25_Y19_N18
\Coprocessor_Edge_Detection|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Selector14~0_combout\ = (\Coprocessor_Edge_Detection|state.getRow~q\ & ((\Coprocessor_Edge_Detection|count_line\(0) & ((\Coprocessor_Edge_Detection|count_line\(1)) # (\Coprocessor_Edge_Detection|count_line\(2)))) # 
-- (!\Coprocessor_Edge_Detection|count_line\(0) & ((!\Coprocessor_Edge_Detection|count_line\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|count_line\(1),
	datab => \Coprocessor_Edge_Detection|count_line\(0),
	datac => \Coprocessor_Edge_Detection|state.getRow~q\,
	datad => \Coprocessor_Edge_Detection|count_line\(2),
	combout => \Coprocessor_Edge_Detection|Selector14~0_combout\);

-- Location: LCCOMB_X25_Y19_N8
\Coprocessor_Edge_Detection|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Selector14~1_combout\ = (\Coprocessor_Edge_Detection|Selector14~0_combout\) # ((\Coprocessor_Edge_Detection|count_line\(0) & ((\Coprocessor_Edge_Detection|state.finish~q\) # (\Coprocessor_Edge_Detection|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.finish~q\,
	datab => \Coprocessor_Edge_Detection|count_line\(0),
	datac => \Coprocessor_Edge_Detection|state.start~q\,
	datad => \Coprocessor_Edge_Detection|Selector14~0_combout\,
	combout => \Coprocessor_Edge_Detection|Selector14~1_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Coprocessor_Edge_Detection|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Selector14~2_combout\ = (\Coprocessor_Edge_Detection|Selector14~1_combout\) # ((\Coprocessor_Edge_Detection|state.calculate~q\ & (\Coprocessor_Edge_Detection|Equal0~3_combout\ $ (!\Coprocessor_Edge_Detection|count_line\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Equal0~3_combout\,
	datab => \Coprocessor_Edge_Detection|Selector14~1_combout\,
	datac => \Coprocessor_Edge_Detection|count_line\(0),
	datad => \Coprocessor_Edge_Detection|state.calculate~q\,
	combout => \Coprocessor_Edge_Detection|Selector14~2_combout\);

-- Location: FF_X25_Y19_N29
\Coprocessor_Edge_Detection|count_line[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|Selector14~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|count_line\(0));

-- Location: LCCOMB_X25_Y19_N14
\Coprocessor_Edge_Detection|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|LessThan0~0_combout\ = (\Coprocessor_Edge_Detection|count_line\(2)) # ((\Coprocessor_Edge_Detection|count_line\(0) & \Coprocessor_Edge_Detection|count_line\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|count_line\(0),
	datac => \Coprocessor_Edge_Detection|count_line\(1),
	datad => \Coprocessor_Edge_Detection|count_line\(2),
	combout => \Coprocessor_Edge_Detection|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Coprocessor_Edge_Detection|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~11_combout\ = (\Coprocessor_Edge_Detection|state.start~q\) # ((\Coprocessor_Edge_Detection|state.getRow~q\ & !\Coprocessor_Edge_Detection|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.getRow~q\,
	datac => \Coprocessor_Edge_Detection|LessThan0~0_combout\,
	datad => \Coprocessor_Edge_Detection|state.start~q\,
	combout => \Coprocessor_Edge_Detection|state~11_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Coprocessor_Edge_Detection|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~12_combout\ = (!\reset~input_o\ & ((\Coprocessor_Edge_Detection|state~11_combout\) # ((!\Coprocessor_Edge_Detection|Equal0~3_combout\ & \Coprocessor_Edge_Detection|state.calculate~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Coprocessor_Edge_Detection|Equal0~3_combout\,
	datac => \Coprocessor_Edge_Detection|state.calculate~q\,
	datad => \Coprocessor_Edge_Detection|state~11_combout\,
	combout => \Coprocessor_Edge_Detection|state~12_combout\);

-- Location: FF_X24_Y19_N7
\Coprocessor_Edge_Detection|state.getRow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|state.getRow~q\);

-- Location: LCCOMB_X24_Y19_N12
\Coprocessor_Edge_Detection|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~10_combout\ = (\Coprocessor_Edge_Detection|state.getRow~q\ & (\Coprocessor_Edge_Detection|LessThan0~0_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.getRow~q\,
	datac => \Coprocessor_Edge_Detection|LessThan0~0_combout\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|state~10_combout\);

-- Location: FF_X24_Y19_N13
\Coprocessor_Edge_Detection|state.calculate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|state.calculate~q\);

-- Location: LCCOMB_X25_Y19_N0
\Coprocessor_Edge_Detection|address_pixel_base[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[11]~12_combout\ = (!\Coprocessor_Edge_Detection|state.finish~q\ & (!\reset~input_o\ & ((!\Coprocessor_Edge_Detection|state.getRow~q\) # (!\Coprocessor_Edge_Detection|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.finish~q\,
	datab => \Coprocessor_Edge_Detection|LessThan0~0_combout\,
	datac => \Coprocessor_Edge_Detection|state.getRow~q\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[11]~12_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Coprocessor_Edge_Detection|address_pixel_base[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base[11]~12_combout\ & ((!\Coprocessor_Edge_Detection|Equal0~3_combout\) # (!\Coprocessor_Edge_Detection|state.calculate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.calculate~q\,
	datac => \Coprocessor_Edge_Detection|Equal0~3_combout\,
	datad => \Coprocessor_Edge_Detection|address_pixel_base[11]~12_combout\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\);

-- Location: FF_X16_Y19_N9
\Coprocessor_Edge_Detection|address_pixel_base[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[1]~17_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(1));

-- Location: LCCOMB_X16_Y19_N10
\Coprocessor_Edge_Detection|address_pixel_base[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[2]~19_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(2) & (\Coprocessor_Edge_Detection|address_pixel_base[1]~18\ $ (GND))) # (!\Coprocessor_Edge_Detection|address_pixel_base\(2) & 
-- (!\Coprocessor_Edge_Detection|address_pixel_base[1]~18\ & VCC))
-- \Coprocessor_Edge_Detection|address_pixel_base[2]~20\ = CARRY((\Coprocessor_Edge_Detection|address_pixel_base\(2) & !\Coprocessor_Edge_Detection|address_pixel_base[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(2),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[1]~18\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[2]~19_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[2]~20\);

-- Location: FF_X16_Y19_N11
\Coprocessor_Edge_Detection|address_pixel_base[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[2]~19_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(2));

-- Location: LCCOMB_X16_Y19_N12
\Coprocessor_Edge_Detection|address_pixel_base[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[3]~21_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(3) & (!\Coprocessor_Edge_Detection|address_pixel_base[2]~20\)) # (!\Coprocessor_Edge_Detection|address_pixel_base\(3) & 
-- ((\Coprocessor_Edge_Detection|address_pixel_base[2]~20\) # (GND)))
-- \Coprocessor_Edge_Detection|address_pixel_base[3]~22\ = CARRY((!\Coprocessor_Edge_Detection|address_pixel_base[2]~20\) # (!\Coprocessor_Edge_Detection|address_pixel_base\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(3),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[2]~20\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[3]~21_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[3]~22\);

-- Location: FF_X16_Y19_N13
\Coprocessor_Edge_Detection|address_pixel_base[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[3]~21_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(3));

-- Location: LCCOMB_X16_Y19_N14
\Coprocessor_Edge_Detection|address_pixel_base[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[4]~23_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(4) & (\Coprocessor_Edge_Detection|address_pixel_base[3]~22\ $ (GND))) # (!\Coprocessor_Edge_Detection|address_pixel_base\(4) & 
-- (!\Coprocessor_Edge_Detection|address_pixel_base[3]~22\ & VCC))
-- \Coprocessor_Edge_Detection|address_pixel_base[4]~24\ = CARRY((\Coprocessor_Edge_Detection|address_pixel_base\(4) & !\Coprocessor_Edge_Detection|address_pixel_base[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(4),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[3]~22\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[4]~23_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[4]~24\);

-- Location: FF_X16_Y19_N15
\Coprocessor_Edge_Detection|address_pixel_base[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[4]~23_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(4));

-- Location: LCCOMB_X16_Y19_N16
\Coprocessor_Edge_Detection|address_pixel_base[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[5]~25_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(5) & (!\Coprocessor_Edge_Detection|address_pixel_base[4]~24\)) # (!\Coprocessor_Edge_Detection|address_pixel_base\(5) & 
-- ((\Coprocessor_Edge_Detection|address_pixel_base[4]~24\) # (GND)))
-- \Coprocessor_Edge_Detection|address_pixel_base[5]~26\ = CARRY((!\Coprocessor_Edge_Detection|address_pixel_base[4]~24\) # (!\Coprocessor_Edge_Detection|address_pixel_base\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(5),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[4]~24\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[5]~25_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[5]~26\);

-- Location: FF_X16_Y19_N17
\Coprocessor_Edge_Detection|address_pixel_base[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[5]~25_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(5));

-- Location: LCCOMB_X16_Y19_N18
\Coprocessor_Edge_Detection|address_pixel_base[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[6]~27_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(6) & (\Coprocessor_Edge_Detection|address_pixel_base[5]~26\ $ (GND))) # (!\Coprocessor_Edge_Detection|address_pixel_base\(6) & 
-- (!\Coprocessor_Edge_Detection|address_pixel_base[5]~26\ & VCC))
-- \Coprocessor_Edge_Detection|address_pixel_base[6]~28\ = CARRY((\Coprocessor_Edge_Detection|address_pixel_base\(6) & !\Coprocessor_Edge_Detection|address_pixel_base[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(6),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[5]~26\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[6]~27_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[6]~28\);

-- Location: FF_X16_Y19_N19
\Coprocessor_Edge_Detection|address_pixel_base[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[6]~27_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(6));

-- Location: LCCOMB_X16_Y19_N20
\Coprocessor_Edge_Detection|address_pixel_base[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[7]~29_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(7) & (!\Coprocessor_Edge_Detection|address_pixel_base[6]~28\)) # (!\Coprocessor_Edge_Detection|address_pixel_base\(7) & 
-- ((\Coprocessor_Edge_Detection|address_pixel_base[6]~28\) # (GND)))
-- \Coprocessor_Edge_Detection|address_pixel_base[7]~30\ = CARRY((!\Coprocessor_Edge_Detection|address_pixel_base[6]~28\) # (!\Coprocessor_Edge_Detection|address_pixel_base\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(7),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[6]~28\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[7]~29_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[7]~30\);

-- Location: FF_X16_Y19_N21
\Coprocessor_Edge_Detection|address_pixel_base[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[7]~29_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(7));

-- Location: LCCOMB_X16_Y19_N22
\Coprocessor_Edge_Detection|address_pixel_base[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[8]~31_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(8) & (\Coprocessor_Edge_Detection|address_pixel_base[7]~30\ $ (GND))) # (!\Coprocessor_Edge_Detection|address_pixel_base\(8) & 
-- (!\Coprocessor_Edge_Detection|address_pixel_base[7]~30\ & VCC))
-- \Coprocessor_Edge_Detection|address_pixel_base[8]~32\ = CARRY((\Coprocessor_Edge_Detection|address_pixel_base\(8) & !\Coprocessor_Edge_Detection|address_pixel_base[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(8),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[7]~30\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[8]~31_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[8]~32\);

-- Location: FF_X16_Y19_N23
\Coprocessor_Edge_Detection|address_pixel_base[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[8]~31_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(8));

-- Location: LCCOMB_X16_Y19_N24
\Coprocessor_Edge_Detection|address_pixel_base[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[9]~33_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(9) & (!\Coprocessor_Edge_Detection|address_pixel_base[8]~32\)) # (!\Coprocessor_Edge_Detection|address_pixel_base\(9) & 
-- ((\Coprocessor_Edge_Detection|address_pixel_base[8]~32\) # (GND)))
-- \Coprocessor_Edge_Detection|address_pixel_base[9]~34\ = CARRY((!\Coprocessor_Edge_Detection|address_pixel_base[8]~32\) # (!\Coprocessor_Edge_Detection|address_pixel_base\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(9),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[8]~32\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[9]~33_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[9]~34\);

-- Location: FF_X16_Y19_N25
\Coprocessor_Edge_Detection|address_pixel_base[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[9]~33_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(9));

-- Location: LCCOMB_X16_Y19_N26
\Coprocessor_Edge_Detection|address_pixel_base[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[10]~35_combout\ = (\Coprocessor_Edge_Detection|address_pixel_base\(10) & (\Coprocessor_Edge_Detection|address_pixel_base[9]~34\ $ (GND))) # (!\Coprocessor_Edge_Detection|address_pixel_base\(10) & 
-- (!\Coprocessor_Edge_Detection|address_pixel_base[9]~34\ & VCC))
-- \Coprocessor_Edge_Detection|address_pixel_base[10]~36\ = CARRY((\Coprocessor_Edge_Detection|address_pixel_base\(10) & !\Coprocessor_Edge_Detection|address_pixel_base[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(10),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|address_pixel_base[9]~34\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[10]~35_combout\,
	cout => \Coprocessor_Edge_Detection|address_pixel_base[10]~36\);

-- Location: FF_X16_Y19_N27
\Coprocessor_Edge_Detection|address_pixel_base[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[10]~35_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(10));

-- Location: LCCOMB_X16_Y19_N28
\Coprocessor_Edge_Detection|address_pixel_base[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base[11]~37_combout\ = \Coprocessor_Edge_Detection|address_pixel_base\(11) $ (\Coprocessor_Edge_Detection|address_pixel_base[10]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(11),
	cin => \Coprocessor_Edge_Detection|address_pixel_base[10]~36\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base[11]~37_combout\);

-- Location: FF_X16_Y19_N29
\Coprocessor_Edge_Detection|address_pixel_base[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[11]~37_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(11));

-- Location: LCCOMB_X16_Y19_N0
\Coprocessor_Edge_Detection|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Equal0~2_combout\ = (!\Coprocessor_Edge_Detection|address_pixel_base\(10) & (!\Coprocessor_Edge_Detection|address_pixel_base\(9) & (!\Coprocessor_Edge_Detection|address_pixel_base\(8) & 
-- !\Coprocessor_Edge_Detection|address_pixel_base\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|address_pixel_base\(10),
	datab => \Coprocessor_Edge_Detection|address_pixel_base\(9),
	datac => \Coprocessor_Edge_Detection|address_pixel_base\(8),
	datad => \Coprocessor_Edge_Detection|address_pixel_base\(11),
	combout => \Coprocessor_Edge_Detection|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Coprocessor_Edge_Detection|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~9_combout\ = (\Coprocessor_Edge_Detection|state.calculate~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Coprocessor_Edge_Detection|state.calculate~q\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|state~9_combout\);

-- Location: LCCOMB_X24_Y19_N8
\Coprocessor_Edge_Detection|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~14_combout\ = (\Coprocessor_Edge_Detection|Equal0~2_combout\ & (\Coprocessor_Edge_Detection|Equal0~0_combout\ & (\Coprocessor_Edge_Detection|state~9_combout\ & \Coprocessor_Edge_Detection|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Equal0~2_combout\,
	datab => \Coprocessor_Edge_Detection|Equal0~0_combout\,
	datac => \Coprocessor_Edge_Detection|state~9_combout\,
	datad => \Coprocessor_Edge_Detection|Equal0~1_combout\,
	combout => \Coprocessor_Edge_Detection|state~14_combout\);

-- Location: FF_X24_Y19_N9
\Coprocessor_Edge_Detection|state.finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|state.finish~q\);

-- Location: LCCOMB_X25_Y19_N22
\Coprocessor_Edge_Detection|clk_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|clk_done~0_combout\ = (\Coprocessor_Edge_Detection|state.finish~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.finish~q\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|clk_done~0_combout\);

-- Location: FF_X25_Y19_N23
\Coprocessor_Edge_Detection|clk_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|clk_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|clk_done~q\);

-- Location: LCCOMB_X25_Y19_N20
\Coprocessor_Edge_Detection|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|state~15_combout\ = (!\reset~input_o\ & (!\Coprocessor_Edge_Detection|state.finish~q\ & ((\Coprocessor_Edge_Detection|state.000~q\) # (!\Coprocessor_Edge_Detection|clk_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|clk_done~q\,
	datab => \reset~input_o\,
	datac => \Coprocessor_Edge_Detection|state.000~q\,
	datad => \Coprocessor_Edge_Detection|state.finish~q\,
	combout => \Coprocessor_Edge_Detection|state~15_combout\);

-- Location: FF_X25_Y19_N21
\Coprocessor_Edge_Detection|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|state.000~q\);

-- Location: LCCOMB_X24_Y19_N30
\Coprocessor_Edge_Detection|address_pixel_base~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|address_pixel_base~16_combout\ = (\Coprocessor_Edge_Detection|state.start~q\) # (!\Coprocessor_Edge_Detection|state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.000~q\,
	datad => \Coprocessor_Edge_Detection|state.start~q\,
	combout => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\);

-- Location: FF_X16_Y19_N7
\Coprocessor_Edge_Detection|address_pixel_base[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|address_pixel_base[0]~14_combout\,
	sclr => \Coprocessor_Edge_Detection|address_pixel_base~16_combout\,
	ena => \Coprocessor_Edge_Detection|address_pixel_base[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|address_pixel_base\(0));

-- Location: M9K_X15_Y18_N0
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Coprocessor_Edge_Detection.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Coprocessor_Edge_Detection:Coprocessor_Edge_Detection|ccpu_ram:ccpu_ram|altsyncram:altsyncram_component|altsyncram_bqr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	portadatain => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N18
\Coprocessor_Edge_Detection|row_3[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[61]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(5),
	combout => \Coprocessor_Edge_Detection|row_3[61]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N2
\Coprocessor_Edge_Detection|row_3[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[32]~0_combout\ = (\Coprocessor_Edge_Detection|state.getRow~q\ & (!\Coprocessor_Edge_Detection|LessThan0~0_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|state.getRow~q\,
	datac => \Coprocessor_Edge_Detection|LessThan0~0_combout\,
	datad => \reset~input_o\,
	combout => \Coprocessor_Edge_Detection|row_3[32]~0_combout\);

-- Location: FF_X21_Y19_N19
\Coprocessor_Edge_Detection|row_3[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[61]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(61));

-- Location: LCCOMB_X21_Y19_N6
\Coprocessor_Edge_Detection|row_3[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[53]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(61),
	combout => \Coprocessor_Edge_Detection|row_3[53]~feeder_combout\);

-- Location: FF_X21_Y19_N7
\Coprocessor_Edge_Detection|row_3[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[53]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(53));

-- Location: LCCOMB_X21_Y19_N0
\Coprocessor_Edge_Detection|row_3[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[45]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(53),
	combout => \Coprocessor_Edge_Detection|row_3[45]~feeder_combout\);

-- Location: FF_X21_Y19_N1
\Coprocessor_Edge_Detection|row_3[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[45]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(45));

-- Location: FF_X22_Y19_N21
\Coprocessor_Edge_Detection|row_3[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(45),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(37));

-- Location: FF_X22_Y19_N13
\Coprocessor_Edge_Detection|row_2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(37),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(37));

-- Location: FF_X21_Y19_N31
\Coprocessor_Edge_Detection|row_2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(37),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(29));

-- Location: FF_X21_Y19_N25
\Coprocessor_Edge_Detection|row_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(29),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(29));

-- Location: FF_X23_Y19_N11
\Coprocessor_Edge_Detection|row_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(29),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(21));

-- Location: M9K_X15_Y17_N0
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Coprocessor_Edge_Detection.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Coprocessor_Edge_Detection:Coprocessor_Edge_Detection|ccpu_ram:ccpu_ram|altsyncram:altsyncram_component|altsyncram_bqr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	portadatain => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y19_N20
\Coprocessor_Edge_Detection|row_3[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[60]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(4),
	combout => \Coprocessor_Edge_Detection|row_3[60]~feeder_combout\);

-- Location: FF_X19_Y19_N21
\Coprocessor_Edge_Detection|row_3[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[60]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(60));

-- Location: LCCOMB_X19_Y19_N22
\Coprocessor_Edge_Detection|row_3[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[52]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(60),
	combout => \Coprocessor_Edge_Detection|row_3[52]~feeder_combout\);

-- Location: FF_X19_Y19_N23
\Coprocessor_Edge_Detection|row_3[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[52]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(52));

-- Location: FF_X19_Y19_N25
\Coprocessor_Edge_Detection|row_3[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(52),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(44));

-- Location: FF_X22_Y19_N23
\Coprocessor_Edge_Detection|row_3[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(44),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(36));

-- Location: FF_X22_Y19_N11
\Coprocessor_Edge_Detection|row_2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(36),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(36));

-- Location: LCCOMB_X21_Y19_N20
\Coprocessor_Edge_Detection|row_3[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[59]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(3),
	combout => \Coprocessor_Edge_Detection|row_3[59]~feeder_combout\);

-- Location: FF_X21_Y19_N21
\Coprocessor_Edge_Detection|row_3[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[59]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(59));

-- Location: LCCOMB_X21_Y19_N28
\Coprocessor_Edge_Detection|row_3[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[51]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(59),
	combout => \Coprocessor_Edge_Detection|row_3[51]~feeder_combout\);

-- Location: FF_X21_Y19_N29
\Coprocessor_Edge_Detection|row_3[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[51]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(51));

-- Location: LCCOMB_X21_Y19_N26
\Coprocessor_Edge_Detection|row_3[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[43]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(51),
	combout => \Coprocessor_Edge_Detection|row_3[43]~feeder_combout\);

-- Location: FF_X21_Y19_N27
\Coprocessor_Edge_Detection|row_3[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[43]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(43));

-- Location: FF_X22_Y19_N27
\Coprocessor_Edge_Detection|row_3[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(43),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(35));

-- Location: FF_X22_Y19_N9
\Coprocessor_Edge_Detection|row_2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(35),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(35));

-- Location: LCCOMB_X21_Y19_N2
\Coprocessor_Edge_Detection|row_3[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[58]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(2),
	combout => \Coprocessor_Edge_Detection|row_3[58]~feeder_combout\);

-- Location: FF_X21_Y19_N3
\Coprocessor_Edge_Detection|row_3[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[58]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(58));

-- Location: LCCOMB_X21_Y19_N10
\Coprocessor_Edge_Detection|row_3[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[50]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(58),
	combout => \Coprocessor_Edge_Detection|row_3[50]~feeder_combout\);

-- Location: FF_X21_Y19_N11
\Coprocessor_Edge_Detection|row_3[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[50]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(50));

-- Location: LCCOMB_X21_Y19_N16
\Coprocessor_Edge_Detection|row_3[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[42]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(50),
	combout => \Coprocessor_Edge_Detection|row_3[42]~feeder_combout\);

-- Location: FF_X21_Y19_N17
\Coprocessor_Edge_Detection|row_3[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[42]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(42));

-- Location: FF_X22_Y19_N17
\Coprocessor_Edge_Detection|row_3[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(42),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(34));

-- Location: FF_X22_Y19_N7
\Coprocessor_Edge_Detection|row_2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(34),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(34));

-- Location: M9K_X15_Y19_N0
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"BF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Coprocessor_Edge_Detection.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Coprocessor_Edge_Detection:Coprocessor_Edge_Detection|ccpu_ram:ccpu_ram|altsyncram:altsyncram_component|altsyncram_bqr1:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	portadatain => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y19_N2
\Coprocessor_Edge_Detection|row_3[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[57]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(1),
	combout => \Coprocessor_Edge_Detection|row_3[57]~feeder_combout\);

-- Location: FF_X19_Y19_N3
\Coprocessor_Edge_Detection|row_3[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[57]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(57));

-- Location: LCCOMB_X19_Y19_N0
\Coprocessor_Edge_Detection|row_3[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[49]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(57),
	combout => \Coprocessor_Edge_Detection|row_3[49]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\Coprocessor_Edge_Detection|row_3[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[49]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(49));

-- Location: LCCOMB_X19_Y19_N6
\Coprocessor_Edge_Detection|row_3[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[41]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(49),
	combout => \Coprocessor_Edge_Detection|row_3[41]~feeder_combout\);

-- Location: FF_X19_Y19_N7
\Coprocessor_Edge_Detection|row_3[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[41]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(41));

-- Location: FF_X22_Y19_N15
\Coprocessor_Edge_Detection|row_3[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(41),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(33));

-- Location: FF_X22_Y19_N5
\Coprocessor_Edge_Detection|row_2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(33),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(33));

-- Location: LCCOMB_X19_Y19_N12
\Coprocessor_Edge_Detection|row_3[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[56]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(0),
	combout => \Coprocessor_Edge_Detection|row_3[56]~feeder_combout\);

-- Location: FF_X19_Y19_N13
\Coprocessor_Edge_Detection|row_3[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[56]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(56));

-- Location: LCCOMB_X19_Y19_N10
\Coprocessor_Edge_Detection|row_3[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[48]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(56),
	combout => \Coprocessor_Edge_Detection|row_3[48]~feeder_combout\);

-- Location: FF_X19_Y19_N11
\Coprocessor_Edge_Detection|row_3[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[48]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(48));

-- Location: LCCOMB_X19_Y19_N8
\Coprocessor_Edge_Detection|row_3[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[40]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(48),
	combout => \Coprocessor_Edge_Detection|row_3[40]~feeder_combout\);

-- Location: FF_X19_Y19_N9
\Coprocessor_Edge_Detection|row_3[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[40]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(40));

-- Location: LCCOMB_X22_Y19_N0
\Coprocessor_Edge_Detection|row_3[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[32]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Coprocessor_Edge_Detection|row_3\(40),
	combout => \Coprocessor_Edge_Detection|row_3[32]~feeder_combout\);

-- Location: FF_X22_Y19_N1
\Coprocessor_Edge_Detection|row_3[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[32]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(32));

-- Location: LCCOMB_X22_Y19_N30
\Coprocessor_Edge_Detection|row_2[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_2[32]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(32),
	combout => \Coprocessor_Edge_Detection|row_2[32]~feeder_combout\);

-- Location: FF_X22_Y19_N31
\Coprocessor_Edge_Detection|row_2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_2[32]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(32));

-- Location: LCCOMB_X22_Y19_N2
\Coprocessor_Edge_Detection|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~0_combout\ = (\Coprocessor_Edge_Detection|row_2\(32) & (\Coprocessor_Edge_Detection|row_3\(32) $ (VCC))) # (!\Coprocessor_Edge_Detection|row_2\(32) & (\Coprocessor_Edge_Detection|row_3\(32) & VCC))
-- \Coprocessor_Edge_Detection|Add13~1\ = CARRY((\Coprocessor_Edge_Detection|row_2\(32) & \Coprocessor_Edge_Detection|row_3\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(32),
	datab => \Coprocessor_Edge_Detection|row_3\(32),
	datad => VCC,
	combout => \Coprocessor_Edge_Detection|Add13~0_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~1\);

-- Location: LCCOMB_X22_Y19_N4
\Coprocessor_Edge_Detection|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~2_combout\ = (\Coprocessor_Edge_Detection|row_2\(33) & ((\Coprocessor_Edge_Detection|row_3\(33) & (\Coprocessor_Edge_Detection|Add13~1\ & VCC)) # (!\Coprocessor_Edge_Detection|row_3\(33) & 
-- (!\Coprocessor_Edge_Detection|Add13~1\)))) # (!\Coprocessor_Edge_Detection|row_2\(33) & ((\Coprocessor_Edge_Detection|row_3\(33) & (!\Coprocessor_Edge_Detection|Add13~1\)) # (!\Coprocessor_Edge_Detection|row_3\(33) & 
-- ((\Coprocessor_Edge_Detection|Add13~1\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add13~3\ = CARRY((\Coprocessor_Edge_Detection|row_2\(33) & (!\Coprocessor_Edge_Detection|row_3\(33) & !\Coprocessor_Edge_Detection|Add13~1\)) # (!\Coprocessor_Edge_Detection|row_2\(33) & ((!\Coprocessor_Edge_Detection|Add13~1\) 
-- # (!\Coprocessor_Edge_Detection|row_3\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(33),
	datab => \Coprocessor_Edge_Detection|row_3\(33),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add13~1\,
	combout => \Coprocessor_Edge_Detection|Add13~2_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~3\);

-- Location: LCCOMB_X22_Y19_N6
\Coprocessor_Edge_Detection|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~4_combout\ = ((\Coprocessor_Edge_Detection|row_3\(34) $ (\Coprocessor_Edge_Detection|row_2\(34) $ (!\Coprocessor_Edge_Detection|Add13~3\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add13~5\ = CARRY((\Coprocessor_Edge_Detection|row_3\(34) & ((\Coprocessor_Edge_Detection|row_2\(34)) # (!\Coprocessor_Edge_Detection|Add13~3\))) # (!\Coprocessor_Edge_Detection|row_3\(34) & 
-- (\Coprocessor_Edge_Detection|row_2\(34) & !\Coprocessor_Edge_Detection|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_3\(34),
	datab => \Coprocessor_Edge_Detection|row_2\(34),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add13~3\,
	combout => \Coprocessor_Edge_Detection|Add13~4_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~5\);

-- Location: LCCOMB_X22_Y19_N8
\Coprocessor_Edge_Detection|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~6_combout\ = (\Coprocessor_Edge_Detection|row_3\(35) & ((\Coprocessor_Edge_Detection|row_2\(35) & (\Coprocessor_Edge_Detection|Add13~5\ & VCC)) # (!\Coprocessor_Edge_Detection|row_2\(35) & 
-- (!\Coprocessor_Edge_Detection|Add13~5\)))) # (!\Coprocessor_Edge_Detection|row_3\(35) & ((\Coprocessor_Edge_Detection|row_2\(35) & (!\Coprocessor_Edge_Detection|Add13~5\)) # (!\Coprocessor_Edge_Detection|row_2\(35) & 
-- ((\Coprocessor_Edge_Detection|Add13~5\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add13~7\ = CARRY((\Coprocessor_Edge_Detection|row_3\(35) & (!\Coprocessor_Edge_Detection|row_2\(35) & !\Coprocessor_Edge_Detection|Add13~5\)) # (!\Coprocessor_Edge_Detection|row_3\(35) & ((!\Coprocessor_Edge_Detection|Add13~5\) 
-- # (!\Coprocessor_Edge_Detection|row_2\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_3\(35),
	datab => \Coprocessor_Edge_Detection|row_2\(35),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add13~5\,
	combout => \Coprocessor_Edge_Detection|Add13~6_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~7\);

-- Location: LCCOMB_X22_Y19_N10
\Coprocessor_Edge_Detection|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~8_combout\ = ((\Coprocessor_Edge_Detection|row_3\(36) $ (\Coprocessor_Edge_Detection|row_2\(36) $ (!\Coprocessor_Edge_Detection|Add13~7\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add13~9\ = CARRY((\Coprocessor_Edge_Detection|row_3\(36) & ((\Coprocessor_Edge_Detection|row_2\(36)) # (!\Coprocessor_Edge_Detection|Add13~7\))) # (!\Coprocessor_Edge_Detection|row_3\(36) & 
-- (\Coprocessor_Edge_Detection|row_2\(36) & !\Coprocessor_Edge_Detection|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_3\(36),
	datab => \Coprocessor_Edge_Detection|row_2\(36),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add13~7\,
	combout => \Coprocessor_Edge_Detection|Add13~8_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~9\);

-- Location: LCCOMB_X22_Y19_N12
\Coprocessor_Edge_Detection|Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~10_combout\ = (\Coprocessor_Edge_Detection|row_2\(37) & ((\Coprocessor_Edge_Detection|row_3\(37) & (\Coprocessor_Edge_Detection|Add13~9\ & VCC)) # (!\Coprocessor_Edge_Detection|row_3\(37) & 
-- (!\Coprocessor_Edge_Detection|Add13~9\)))) # (!\Coprocessor_Edge_Detection|row_2\(37) & ((\Coprocessor_Edge_Detection|row_3\(37) & (!\Coprocessor_Edge_Detection|Add13~9\)) # (!\Coprocessor_Edge_Detection|row_3\(37) & 
-- ((\Coprocessor_Edge_Detection|Add13~9\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add13~11\ = CARRY((\Coprocessor_Edge_Detection|row_2\(37) & (!\Coprocessor_Edge_Detection|row_3\(37) & !\Coprocessor_Edge_Detection|Add13~9\)) # (!\Coprocessor_Edge_Detection|row_2\(37) & 
-- ((!\Coprocessor_Edge_Detection|Add13~9\) # (!\Coprocessor_Edge_Detection|row_3\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(37),
	datab => \Coprocessor_Edge_Detection|row_3\(37),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add13~9\,
	combout => \Coprocessor_Edge_Detection|Add13~10_combout\,
	cout => \Coprocessor_Edge_Detection|Add13~11\);

-- Location: LCCOMB_X22_Y19_N16
\Coprocessor_Edge_Detection|Add14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~1_cout\ = CARRY((\Coprocessor_Edge_Detection|row_2\(32) & \Coprocessor_Edge_Detection|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(32),
	datab => \Coprocessor_Edge_Detection|Add13~0_combout\,
	datad => VCC,
	cout => \Coprocessor_Edge_Detection|Add14~1_cout\);

-- Location: LCCOMB_X22_Y19_N18
\Coprocessor_Edge_Detection|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~2_combout\ = (\Coprocessor_Edge_Detection|row_2\(33) & ((\Coprocessor_Edge_Detection|Add13~2_combout\ & (\Coprocessor_Edge_Detection|Add14~1_cout\ & VCC)) # (!\Coprocessor_Edge_Detection|Add13~2_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add14~1_cout\)))) # (!\Coprocessor_Edge_Detection|row_2\(33) & ((\Coprocessor_Edge_Detection|Add13~2_combout\ & (!\Coprocessor_Edge_Detection|Add14~1_cout\)) # (!\Coprocessor_Edge_Detection|Add13~2_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add14~1_cout\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add14~3\ = CARRY((\Coprocessor_Edge_Detection|row_2\(33) & (!\Coprocessor_Edge_Detection|Add13~2_combout\ & !\Coprocessor_Edge_Detection|Add14~1_cout\)) # (!\Coprocessor_Edge_Detection|row_2\(33) & 
-- ((!\Coprocessor_Edge_Detection|Add14~1_cout\) # (!\Coprocessor_Edge_Detection|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(33),
	datab => \Coprocessor_Edge_Detection|Add13~2_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add14~1_cout\,
	combout => \Coprocessor_Edge_Detection|Add14~2_combout\,
	cout => \Coprocessor_Edge_Detection|Add14~3\);

-- Location: LCCOMB_X22_Y19_N20
\Coprocessor_Edge_Detection|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~4_combout\ = ((\Coprocessor_Edge_Detection|Add13~4_combout\ $ (\Coprocessor_Edge_Detection|row_2\(34) $ (!\Coprocessor_Edge_Detection|Add14~3\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add14~5\ = CARRY((\Coprocessor_Edge_Detection|Add13~4_combout\ & ((\Coprocessor_Edge_Detection|row_2\(34)) # (!\Coprocessor_Edge_Detection|Add14~3\))) # (!\Coprocessor_Edge_Detection|Add13~4_combout\ & 
-- (\Coprocessor_Edge_Detection|row_2\(34) & !\Coprocessor_Edge_Detection|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add13~4_combout\,
	datab => \Coprocessor_Edge_Detection|row_2\(34),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add14~3\,
	combout => \Coprocessor_Edge_Detection|Add14~4_combout\,
	cout => \Coprocessor_Edge_Detection|Add14~5\);

-- Location: LCCOMB_X22_Y19_N22
\Coprocessor_Edge_Detection|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~6_combout\ = (\Coprocessor_Edge_Detection|Add13~6_combout\ & ((\Coprocessor_Edge_Detection|row_2\(35) & (\Coprocessor_Edge_Detection|Add14~5\ & VCC)) # (!\Coprocessor_Edge_Detection|row_2\(35) & 
-- (!\Coprocessor_Edge_Detection|Add14~5\)))) # (!\Coprocessor_Edge_Detection|Add13~6_combout\ & ((\Coprocessor_Edge_Detection|row_2\(35) & (!\Coprocessor_Edge_Detection|Add14~5\)) # (!\Coprocessor_Edge_Detection|row_2\(35) & 
-- ((\Coprocessor_Edge_Detection|Add14~5\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add14~7\ = CARRY((\Coprocessor_Edge_Detection|Add13~6_combout\ & (!\Coprocessor_Edge_Detection|row_2\(35) & !\Coprocessor_Edge_Detection|Add14~5\)) # (!\Coprocessor_Edge_Detection|Add13~6_combout\ & 
-- ((!\Coprocessor_Edge_Detection|Add14~5\) # (!\Coprocessor_Edge_Detection|row_2\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add13~6_combout\,
	datab => \Coprocessor_Edge_Detection|row_2\(35),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add14~5\,
	combout => \Coprocessor_Edge_Detection|Add14~6_combout\,
	cout => \Coprocessor_Edge_Detection|Add14~7\);

-- Location: LCCOMB_X22_Y19_N24
\Coprocessor_Edge_Detection|Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~8_combout\ = ((\Coprocessor_Edge_Detection|Add13~8_combout\ $ (\Coprocessor_Edge_Detection|row_2\(36) $ (!\Coprocessor_Edge_Detection|Add14~7\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add14~9\ = CARRY((\Coprocessor_Edge_Detection|Add13~8_combout\ & ((\Coprocessor_Edge_Detection|row_2\(36)) # (!\Coprocessor_Edge_Detection|Add14~7\))) # (!\Coprocessor_Edge_Detection|Add13~8_combout\ & 
-- (\Coprocessor_Edge_Detection|row_2\(36) & !\Coprocessor_Edge_Detection|Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add13~8_combout\,
	datab => \Coprocessor_Edge_Detection|row_2\(36),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add14~7\,
	combout => \Coprocessor_Edge_Detection|Add14~8_combout\,
	cout => \Coprocessor_Edge_Detection|Add14~9\);

-- Location: LCCOMB_X22_Y19_N26
\Coprocessor_Edge_Detection|Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~10_combout\ = (\Coprocessor_Edge_Detection|row_2\(37) & ((\Coprocessor_Edge_Detection|Add13~10_combout\ & (\Coprocessor_Edge_Detection|Add14~9\ & VCC)) # (!\Coprocessor_Edge_Detection|Add13~10_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add14~9\)))) # (!\Coprocessor_Edge_Detection|row_2\(37) & ((\Coprocessor_Edge_Detection|Add13~10_combout\ & (!\Coprocessor_Edge_Detection|Add14~9\)) # (!\Coprocessor_Edge_Detection|Add13~10_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add14~9\) # (GND)))))
-- \Coprocessor_Edge_Detection|Add14~11\ = CARRY((\Coprocessor_Edge_Detection|row_2\(37) & (!\Coprocessor_Edge_Detection|Add13~10_combout\ & !\Coprocessor_Edge_Detection|Add14~9\)) # (!\Coprocessor_Edge_Detection|row_2\(37) & 
-- ((!\Coprocessor_Edge_Detection|Add14~9\) # (!\Coprocessor_Edge_Detection|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_2\(37),
	datab => \Coprocessor_Edge_Detection|Add13~10_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add14~9\,
	combout => \Coprocessor_Edge_Detection|Add14~10_combout\,
	cout => \Coprocessor_Edge_Detection|Add14~11\);

-- Location: FF_X22_Y19_N29
\Coprocessor_Edge_Detection|row_2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(36),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(28));

-- Location: FF_X23_Y19_N23
\Coprocessor_Edge_Detection|row_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(28),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(28));

-- Location: FF_X22_Y19_N25
\Coprocessor_Edge_Detection|row_2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(35),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(27));

-- Location: FF_X23_Y19_N21
\Coprocessor_Edge_Detection|row_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(27),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(27));

-- Location: FF_X23_Y19_N27
\Coprocessor_Edge_Detection|row_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(34),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(26));

-- Location: FF_X23_Y19_N19
\Coprocessor_Edge_Detection|row_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(26),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(26));

-- Location: FF_X23_Y19_N25
\Coprocessor_Edge_Detection|row_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(33),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(25));

-- Location: FF_X23_Y19_N31
\Coprocessor_Edge_Detection|row_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(25),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(25));

-- Location: FF_X22_Y19_N19
\Coprocessor_Edge_Detection|row_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(32),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(24));

-- Location: FF_X23_Y19_N29
\Coprocessor_Edge_Detection|row_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(24),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(24));

-- Location: LCCOMB_X23_Y19_N14
\Coprocessor_Edge_Detection|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~0_combout\ = (\Coprocessor_Edge_Detection|row_3\(32) & ((GND) # (!\Coprocessor_Edge_Detection|row_1\(24)))) # (!\Coprocessor_Edge_Detection|row_3\(32) & (\Coprocessor_Edge_Detection|row_1\(24) $ (GND)))
-- \Coprocessor_Edge_Detection|Add15~1\ = CARRY((\Coprocessor_Edge_Detection|row_3\(32)) # (!\Coprocessor_Edge_Detection|row_1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_3\(32),
	datab => \Coprocessor_Edge_Detection|row_1\(24),
	datad => VCC,
	combout => \Coprocessor_Edge_Detection|Add15~0_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~1\);

-- Location: LCCOMB_X23_Y19_N16
\Coprocessor_Edge_Detection|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~2_combout\ = (\Coprocessor_Edge_Detection|row_1\(25) & ((\Coprocessor_Edge_Detection|Add14~2_combout\ & (!\Coprocessor_Edge_Detection|Add15~1\)) # (!\Coprocessor_Edge_Detection|Add14~2_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add15~1\) # (GND))))) # (!\Coprocessor_Edge_Detection|row_1\(25) & ((\Coprocessor_Edge_Detection|Add14~2_combout\ & (\Coprocessor_Edge_Detection|Add15~1\ & VCC)) # (!\Coprocessor_Edge_Detection|Add14~2_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add15~1\))))
-- \Coprocessor_Edge_Detection|Add15~3\ = CARRY((\Coprocessor_Edge_Detection|row_1\(25) & ((!\Coprocessor_Edge_Detection|Add15~1\) # (!\Coprocessor_Edge_Detection|Add14~2_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(25) & 
-- (!\Coprocessor_Edge_Detection|Add14~2_combout\ & !\Coprocessor_Edge_Detection|Add15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(25),
	datab => \Coprocessor_Edge_Detection|Add14~2_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add15~1\,
	combout => \Coprocessor_Edge_Detection|Add15~2_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~3\);

-- Location: LCCOMB_X23_Y19_N18
\Coprocessor_Edge_Detection|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~4_combout\ = ((\Coprocessor_Edge_Detection|row_1\(26) $ (\Coprocessor_Edge_Detection|Add14~4_combout\ $ (\Coprocessor_Edge_Detection|Add15~3\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add15~5\ = CARRY((\Coprocessor_Edge_Detection|row_1\(26) & (\Coprocessor_Edge_Detection|Add14~4_combout\ & !\Coprocessor_Edge_Detection|Add15~3\)) # (!\Coprocessor_Edge_Detection|row_1\(26) & 
-- ((\Coprocessor_Edge_Detection|Add14~4_combout\) # (!\Coprocessor_Edge_Detection|Add15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(26),
	datab => \Coprocessor_Edge_Detection|Add14~4_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add15~3\,
	combout => \Coprocessor_Edge_Detection|Add15~4_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~5\);

-- Location: LCCOMB_X23_Y19_N20
\Coprocessor_Edge_Detection|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~6_combout\ = (\Coprocessor_Edge_Detection|row_1\(27) & ((\Coprocessor_Edge_Detection|Add14~6_combout\ & (!\Coprocessor_Edge_Detection|Add15~5\)) # (!\Coprocessor_Edge_Detection|Add14~6_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add15~5\) # (GND))))) # (!\Coprocessor_Edge_Detection|row_1\(27) & ((\Coprocessor_Edge_Detection|Add14~6_combout\ & (\Coprocessor_Edge_Detection|Add15~5\ & VCC)) # (!\Coprocessor_Edge_Detection|Add14~6_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add15~5\))))
-- \Coprocessor_Edge_Detection|Add15~7\ = CARRY((\Coprocessor_Edge_Detection|row_1\(27) & ((!\Coprocessor_Edge_Detection|Add15~5\) # (!\Coprocessor_Edge_Detection|Add14~6_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(27) & 
-- (!\Coprocessor_Edge_Detection|Add14~6_combout\ & !\Coprocessor_Edge_Detection|Add15~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(27),
	datab => \Coprocessor_Edge_Detection|Add14~6_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add15~5\,
	combout => \Coprocessor_Edge_Detection|Add15~6_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~7\);

-- Location: LCCOMB_X23_Y19_N22
\Coprocessor_Edge_Detection|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~8_combout\ = ((\Coprocessor_Edge_Detection|row_1\(28) $ (\Coprocessor_Edge_Detection|Add14~8_combout\ $ (\Coprocessor_Edge_Detection|Add15~7\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add15~9\ = CARRY((\Coprocessor_Edge_Detection|row_1\(28) & (\Coprocessor_Edge_Detection|Add14~8_combout\ & !\Coprocessor_Edge_Detection|Add15~7\)) # (!\Coprocessor_Edge_Detection|row_1\(28) & 
-- ((\Coprocessor_Edge_Detection|Add14~8_combout\) # (!\Coprocessor_Edge_Detection|Add15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(28),
	datab => \Coprocessor_Edge_Detection|Add14~8_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add15~7\,
	combout => \Coprocessor_Edge_Detection|Add15~8_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~9\);

-- Location: LCCOMB_X23_Y19_N24
\Coprocessor_Edge_Detection|Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~10_combout\ = (\Coprocessor_Edge_Detection|Add14~10_combout\ & ((\Coprocessor_Edge_Detection|row_1\(29) & (!\Coprocessor_Edge_Detection|Add15~9\)) # (!\Coprocessor_Edge_Detection|row_1\(29) & 
-- (\Coprocessor_Edge_Detection|Add15~9\ & VCC)))) # (!\Coprocessor_Edge_Detection|Add14~10_combout\ & ((\Coprocessor_Edge_Detection|row_1\(29) & ((\Coprocessor_Edge_Detection|Add15~9\) # (GND))) # (!\Coprocessor_Edge_Detection|row_1\(29) & 
-- (!\Coprocessor_Edge_Detection|Add15~9\))))
-- \Coprocessor_Edge_Detection|Add15~11\ = CARRY((\Coprocessor_Edge_Detection|Add14~10_combout\ & (\Coprocessor_Edge_Detection|row_1\(29) & !\Coprocessor_Edge_Detection|Add15~9\)) # (!\Coprocessor_Edge_Detection|Add14~10_combout\ & 
-- ((\Coprocessor_Edge_Detection|row_1\(29)) # (!\Coprocessor_Edge_Detection|Add15~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add14~10_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(29),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add15~9\,
	combout => \Coprocessor_Edge_Detection|Add15~10_combout\,
	cout => \Coprocessor_Edge_Detection|Add15~11\);

-- Location: FF_X23_Y19_N9
\Coprocessor_Edge_Detection|row_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(28),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(20));

-- Location: FF_X23_Y19_N7
\Coprocessor_Edge_Detection|row_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(27),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(19));

-- Location: FF_X23_Y19_N5
\Coprocessor_Edge_Detection|row_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(26),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(18));

-- Location: FF_X23_Y19_N3
\Coprocessor_Edge_Detection|row_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(25),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(17));

-- Location: FF_X23_Y19_N1
\Coprocessor_Edge_Detection|row_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(24),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(16));

-- Location: LCCOMB_X23_Y19_N0
\Coprocessor_Edge_Detection|Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~0_combout\ = (\Coprocessor_Edge_Detection|Add15~0_combout\ & ((GND) # (!\Coprocessor_Edge_Detection|row_1\(16)))) # (!\Coprocessor_Edge_Detection|Add15~0_combout\ & (\Coprocessor_Edge_Detection|row_1\(16) $ (GND)))
-- \Coprocessor_Edge_Detection|Add16~1\ = CARRY((\Coprocessor_Edge_Detection|Add15~0_combout\) # (!\Coprocessor_Edge_Detection|row_1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add15~0_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(16),
	datad => VCC,
	combout => \Coprocessor_Edge_Detection|Add16~0_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~1\);

-- Location: LCCOMB_X23_Y19_N2
\Coprocessor_Edge_Detection|Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~2_combout\ = (\Coprocessor_Edge_Detection|row_1\(17) & ((\Coprocessor_Edge_Detection|Add15~2_combout\ & (!\Coprocessor_Edge_Detection|Add16~1\)) # (!\Coprocessor_Edge_Detection|Add15~2_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add16~1\) # (GND))))) # (!\Coprocessor_Edge_Detection|row_1\(17) & ((\Coprocessor_Edge_Detection|Add15~2_combout\ & (\Coprocessor_Edge_Detection|Add16~1\ & VCC)) # (!\Coprocessor_Edge_Detection|Add15~2_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add16~1\))))
-- \Coprocessor_Edge_Detection|Add16~3\ = CARRY((\Coprocessor_Edge_Detection|row_1\(17) & ((!\Coprocessor_Edge_Detection|Add16~1\) # (!\Coprocessor_Edge_Detection|Add15~2_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(17) & 
-- (!\Coprocessor_Edge_Detection|Add15~2_combout\ & !\Coprocessor_Edge_Detection|Add16~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(17),
	datab => \Coprocessor_Edge_Detection|Add15~2_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add16~1\,
	combout => \Coprocessor_Edge_Detection|Add16~2_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~3\);

-- Location: LCCOMB_X23_Y19_N4
\Coprocessor_Edge_Detection|Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~4_combout\ = ((\Coprocessor_Edge_Detection|row_1\(18) $ (\Coprocessor_Edge_Detection|Add15~4_combout\ $ (\Coprocessor_Edge_Detection|Add16~3\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add16~5\ = CARRY((\Coprocessor_Edge_Detection|row_1\(18) & (\Coprocessor_Edge_Detection|Add15~4_combout\ & !\Coprocessor_Edge_Detection|Add16~3\)) # (!\Coprocessor_Edge_Detection|row_1\(18) & 
-- ((\Coprocessor_Edge_Detection|Add15~4_combout\) # (!\Coprocessor_Edge_Detection|Add16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(18),
	datab => \Coprocessor_Edge_Detection|Add15~4_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add16~3\,
	combout => \Coprocessor_Edge_Detection|Add16~4_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~5\);

-- Location: LCCOMB_X23_Y19_N6
\Coprocessor_Edge_Detection|Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~6_combout\ = (\Coprocessor_Edge_Detection|row_1\(19) & ((\Coprocessor_Edge_Detection|Add15~6_combout\ & (!\Coprocessor_Edge_Detection|Add16~5\)) # (!\Coprocessor_Edge_Detection|Add15~6_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add16~5\) # (GND))))) # (!\Coprocessor_Edge_Detection|row_1\(19) & ((\Coprocessor_Edge_Detection|Add15~6_combout\ & (\Coprocessor_Edge_Detection|Add16~5\ & VCC)) # (!\Coprocessor_Edge_Detection|Add15~6_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add16~5\))))
-- \Coprocessor_Edge_Detection|Add16~7\ = CARRY((\Coprocessor_Edge_Detection|row_1\(19) & ((!\Coprocessor_Edge_Detection|Add16~5\) # (!\Coprocessor_Edge_Detection|Add15~6_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(19) & 
-- (!\Coprocessor_Edge_Detection|Add15~6_combout\ & !\Coprocessor_Edge_Detection|Add16~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(19),
	datab => \Coprocessor_Edge_Detection|Add15~6_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add16~5\,
	combout => \Coprocessor_Edge_Detection|Add16~6_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~7\);

-- Location: LCCOMB_X23_Y19_N8
\Coprocessor_Edge_Detection|Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~8_combout\ = ((\Coprocessor_Edge_Detection|Add15~8_combout\ $ (\Coprocessor_Edge_Detection|row_1\(20) $ (\Coprocessor_Edge_Detection|Add16~7\)))) # (GND)
-- \Coprocessor_Edge_Detection|Add16~9\ = CARRY((\Coprocessor_Edge_Detection|Add15~8_combout\ & ((!\Coprocessor_Edge_Detection|Add16~7\) # (!\Coprocessor_Edge_Detection|row_1\(20)))) # (!\Coprocessor_Edge_Detection|Add15~8_combout\ & 
-- (!\Coprocessor_Edge_Detection|row_1\(20) & !\Coprocessor_Edge_Detection|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add15~8_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(20),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add16~7\,
	combout => \Coprocessor_Edge_Detection|Add16~8_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~9\);

-- Location: LCCOMB_X23_Y19_N10
\Coprocessor_Edge_Detection|Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~10_combout\ = (\Coprocessor_Edge_Detection|row_1\(21) & ((\Coprocessor_Edge_Detection|Add15~10_combout\ & (!\Coprocessor_Edge_Detection|Add16~9\)) # (!\Coprocessor_Edge_Detection|Add15~10_combout\ & 
-- ((\Coprocessor_Edge_Detection|Add16~9\) # (GND))))) # (!\Coprocessor_Edge_Detection|row_1\(21) & ((\Coprocessor_Edge_Detection|Add15~10_combout\ & (\Coprocessor_Edge_Detection|Add16~9\ & VCC)) # (!\Coprocessor_Edge_Detection|Add15~10_combout\ & 
-- (!\Coprocessor_Edge_Detection|Add16~9\))))
-- \Coprocessor_Edge_Detection|Add16~11\ = CARRY((\Coprocessor_Edge_Detection|row_1\(21) & ((!\Coprocessor_Edge_Detection|Add16~9\) # (!\Coprocessor_Edge_Detection|Add15~10_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(21) & 
-- (!\Coprocessor_Edge_Detection|Add15~10_combout\ & !\Coprocessor_Edge_Detection|Add16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(21),
	datab => \Coprocessor_Edge_Detection|Add15~10_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add16~9\,
	combout => \Coprocessor_Edge_Detection|Add16~10_combout\,
	cout => \Coprocessor_Edge_Detection|Add16~11\);

-- Location: LCCOMB_X24_Y19_N16
\Coprocessor_Edge_Detection|Add17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~1_cout\ = CARRY((\Coprocessor_Edge_Detection|Add16~0_combout\) # (!\Coprocessor_Edge_Detection|row_1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add16~0_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(24),
	datad => VCC,
	cout => \Coprocessor_Edge_Detection|Add17~1_cout\);

-- Location: LCCOMB_X24_Y19_N18
\Coprocessor_Edge_Detection|Add17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~3_cout\ = CARRY((\Coprocessor_Edge_Detection|Add16~2_combout\ & (\Coprocessor_Edge_Detection|row_1\(25) & !\Coprocessor_Edge_Detection|Add17~1_cout\)) # (!\Coprocessor_Edge_Detection|Add16~2_combout\ & 
-- ((\Coprocessor_Edge_Detection|row_1\(25)) # (!\Coprocessor_Edge_Detection|Add17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add16~2_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(25),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add17~1_cout\,
	cout => \Coprocessor_Edge_Detection|Add17~3_cout\);

-- Location: LCCOMB_X24_Y19_N20
\Coprocessor_Edge_Detection|Add17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~5_cout\ = CARRY((\Coprocessor_Edge_Detection|row_1\(26) & (\Coprocessor_Edge_Detection|Add16~4_combout\ & !\Coprocessor_Edge_Detection|Add17~3_cout\)) # (!\Coprocessor_Edge_Detection|row_1\(26) & 
-- ((\Coprocessor_Edge_Detection|Add16~4_combout\) # (!\Coprocessor_Edge_Detection|Add17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(26),
	datab => \Coprocessor_Edge_Detection|Add16~4_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add17~3_cout\,
	cout => \Coprocessor_Edge_Detection|Add17~5_cout\);

-- Location: LCCOMB_X24_Y19_N22
\Coprocessor_Edge_Detection|Add17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~7_cout\ = CARRY((\Coprocessor_Edge_Detection|row_1\(27) & ((!\Coprocessor_Edge_Detection|Add17~5_cout\) # (!\Coprocessor_Edge_Detection|Add16~6_combout\))) # (!\Coprocessor_Edge_Detection|row_1\(27) & 
-- (!\Coprocessor_Edge_Detection|Add16~6_combout\ & !\Coprocessor_Edge_Detection|Add17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(27),
	datab => \Coprocessor_Edge_Detection|Add16~6_combout\,
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add17~5_cout\,
	cout => \Coprocessor_Edge_Detection|Add17~7_cout\);

-- Location: LCCOMB_X24_Y19_N24
\Coprocessor_Edge_Detection|Add17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~9_cout\ = CARRY((\Coprocessor_Edge_Detection|Add16~8_combout\ & ((!\Coprocessor_Edge_Detection|Add17~7_cout\) # (!\Coprocessor_Edge_Detection|row_1\(28)))) # (!\Coprocessor_Edge_Detection|Add16~8_combout\ & 
-- (!\Coprocessor_Edge_Detection|row_1\(28) & !\Coprocessor_Edge_Detection|Add17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add16~8_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(28),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add17~7_cout\,
	cout => \Coprocessor_Edge_Detection|Add17~9_cout\);

-- Location: LCCOMB_X24_Y19_N26
\Coprocessor_Edge_Detection|Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~10_combout\ = (\Coprocessor_Edge_Detection|Add16~10_combout\ & ((\Coprocessor_Edge_Detection|row_1\(29) & (!\Coprocessor_Edge_Detection|Add17~9_cout\)) # (!\Coprocessor_Edge_Detection|row_1\(29) & 
-- (\Coprocessor_Edge_Detection|Add17~9_cout\ & VCC)))) # (!\Coprocessor_Edge_Detection|Add16~10_combout\ & ((\Coprocessor_Edge_Detection|row_1\(29) & ((\Coprocessor_Edge_Detection|Add17~9_cout\) # (GND))) # (!\Coprocessor_Edge_Detection|row_1\(29) & 
-- (!\Coprocessor_Edge_Detection|Add17~9_cout\))))
-- \Coprocessor_Edge_Detection|Add17~11\ = CARRY((\Coprocessor_Edge_Detection|Add16~10_combout\ & (\Coprocessor_Edge_Detection|row_1\(29) & !\Coprocessor_Edge_Detection|Add17~9_cout\)) # (!\Coprocessor_Edge_Detection|Add16~10_combout\ & 
-- ((\Coprocessor_Edge_Detection|row_1\(29)) # (!\Coprocessor_Edge_Detection|Add17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|Add16~10_combout\,
	datab => \Coprocessor_Edge_Detection|row_1\(29),
	datad => VCC,
	cin => \Coprocessor_Edge_Detection|Add17~9_cout\,
	combout => \Coprocessor_Edge_Detection|Add17~10_combout\,
	cout => \Coprocessor_Edge_Detection|Add17~11\);

-- Location: M9K_X15_Y16_N0
\Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"15000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Coprocessor_Edge_Detection.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Coprocessor_Edge_Detection:Coprocessor_Edge_Detection|ccpu_ram:ccpu_ram|altsyncram:altsyncram_component|altsyncram_bqr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	portadatain => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y19_N12
\Coprocessor_Edge_Detection|row_3[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[62]~feeder_combout\ = \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|ccpu_ram|altsyncram_component|auto_generated|q_b\(6),
	combout => \Coprocessor_Edge_Detection|row_3[62]~feeder_combout\);

-- Location: FF_X21_Y19_N13
\Coprocessor_Edge_Detection|row_3[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[62]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(62));

-- Location: LCCOMB_X21_Y19_N8
\Coprocessor_Edge_Detection|row_3[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|row_3[54]~feeder_combout\ = \Coprocessor_Edge_Detection|row_3\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Coprocessor_Edge_Detection|row_3\(62),
	combout => \Coprocessor_Edge_Detection|row_3[54]~feeder_combout\);

-- Location: FF_X21_Y19_N9
\Coprocessor_Edge_Detection|row_3[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|row_3[54]~feeder_combout\,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(54));

-- Location: FF_X21_Y19_N5
\Coprocessor_Edge_Detection|row_3[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(54),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(46));

-- Location: FF_X21_Y19_N15
\Coprocessor_Edge_Detection|row_3[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(46),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_3\(38));

-- Location: FF_X22_Y19_N3
\Coprocessor_Edge_Detection|row_2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_3\(38),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(38));

-- Location: FF_X23_Y19_N17
\Coprocessor_Edge_Detection|row_2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(38),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_2\(30));

-- Location: FF_X23_Y19_N15
\Coprocessor_Edge_Detection|row_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_2\(30),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(30));

-- Location: FF_X23_Y19_N13
\Coprocessor_Edge_Detection|row_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_1\(30),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|row_3[32]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_1\(22));

-- Location: LCCOMB_X22_Y19_N14
\Coprocessor_Edge_Detection|Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add13~12_combout\ = \Coprocessor_Edge_Detection|row_2\(38) $ (\Coprocessor_Edge_Detection|Add13~11\ $ (!\Coprocessor_Edge_Detection|row_3\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|row_2\(38),
	datad => \Coprocessor_Edge_Detection|row_3\(38),
	cin => \Coprocessor_Edge_Detection|Add13~11\,
	combout => \Coprocessor_Edge_Detection|Add13~12_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Coprocessor_Edge_Detection|Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add14~12_combout\ = \Coprocessor_Edge_Detection|row_2\(38) $ (\Coprocessor_Edge_Detection|Add14~11\ $ (!\Coprocessor_Edge_Detection|Add13~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|row_2\(38),
	datad => \Coprocessor_Edge_Detection|Add13~12_combout\,
	cin => \Coprocessor_Edge_Detection|Add14~11\,
	combout => \Coprocessor_Edge_Detection|Add14~12_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Coprocessor_Edge_Detection|Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add15~12_combout\ = \Coprocessor_Edge_Detection|row_1\(30) $ (\Coprocessor_Edge_Detection|Add15~11\ $ (\Coprocessor_Edge_Detection|Add14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Coprocessor_Edge_Detection|row_1\(30),
	datad => \Coprocessor_Edge_Detection|Add14~12_combout\,
	cin => \Coprocessor_Edge_Detection|Add15~11\,
	combout => \Coprocessor_Edge_Detection|Add15~12_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Coprocessor_Edge_Detection|Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add16~12_combout\ = \Coprocessor_Edge_Detection|row_1\(22) $ (\Coprocessor_Edge_Detection|Add16~11\ $ (\Coprocessor_Edge_Detection|Add15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(22),
	datad => \Coprocessor_Edge_Detection|Add15~12_combout\,
	cin => \Coprocessor_Edge_Detection|Add16~11\,
	combout => \Coprocessor_Edge_Detection|Add16~12_combout\);

-- Location: LCCOMB_X24_Y19_N28
\Coprocessor_Edge_Detection|Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Add17~12_combout\ = \Coprocessor_Edge_Detection|row_1\(30) $ (\Coprocessor_Edge_Detection|Add17~11\ $ (\Coprocessor_Edge_Detection|Add16~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|row_1\(30),
	datad => \Coprocessor_Edge_Detection|Add16~12_combout\,
	cin => \Coprocessor_Edge_Detection|Add17~11\,
	combout => \Coprocessor_Edge_Detection|Add17~12_combout\);

-- Location: LCCOMB_X24_Y19_N4
\Coprocessor_Edge_Detection|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|LessThan3~0_combout\ = (\Coprocessor_Edge_Detection|Add17~10_combout\) # (\Coprocessor_Edge_Detection|Add17~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Coprocessor_Edge_Detection|Add17~10_combout\,
	datad => \Coprocessor_Edge_Detection|Add17~12_combout\,
	combout => \Coprocessor_Edge_Detection|LessThan3~0_combout\);

-- Location: FF_X24_Y19_N5
\Coprocessor_Edge_Detection|row_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|LessThan3~0_combout\,
	ena => \Coprocessor_Edge_Detection|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|row_out\(0));

-- Location: FF_X24_Y19_N31
\Coprocessor_Edge_Detection|pixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Coprocessor_Edge_Detection|row_out\(0),
	sload => VCC,
	ena => \Coprocessor_Edge_Detection|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|pixel\(0));

-- Location: LCCOMB_X25_Y19_N2
\Coprocessor_Edge_Detection|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|Selector27~0_combout\ = (\Coprocessor_Edge_Detection|state.calculate~q\) # ((\Coprocessor_Edge_Detection|clk_line~q\ & ((\Coprocessor_Edge_Detection|state.getRow~q\) # (\Coprocessor_Edge_Detection|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Coprocessor_Edge_Detection|clk_line~q\,
	datab => \Coprocessor_Edge_Detection|state.getRow~q\,
	datac => \Coprocessor_Edge_Detection|state.start~q\,
	datad => \Coprocessor_Edge_Detection|state.calculate~q\,
	combout => \Coprocessor_Edge_Detection|Selector27~0_combout\);

-- Location: LCCOMB_X25_Y18_N18
\Coprocessor_Edge_Detection|clk_line~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Coprocessor_Edge_Detection|clk_line~feeder_combout\ = \Coprocessor_Edge_Detection|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Coprocessor_Edge_Detection|Selector27~0_combout\,
	combout => \Coprocessor_Edge_Detection|clk_line~feeder_combout\);

-- Location: FF_X25_Y18_N19
\Coprocessor_Edge_Detection|clk_line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Coprocessor_Edge_Detection|clk_line~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Coprocessor_Edge_Detection|clk_line~q\);

-- Location: CLKCTRL_G5
\Coprocessor_Edge_Detection|clk_line~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Coprocessor_Edge_Detection|clk_line~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y13_N4
\img_base_out[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[0]~18_combout\ = !img_base_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => img_base_out(0),
	combout => \img_base_out[0]~18_combout\);

-- Location: FF_X16_Y13_N5
\img_base_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(0));

-- Location: LCCOMB_X16_Y13_N18
\img_base_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[1]~6_combout\ = (img_base_out(1) & (img_base_out(0) $ (VCC))) # (!img_base_out(1) & (img_base_out(0) & VCC))
-- \img_base_out[1]~7\ = CARRY((img_base_out(1) & img_base_out(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => img_base_out(1),
	datab => img_base_out(0),
	datad => VCC,
	combout => \img_base_out[1]~6_combout\,
	cout => \img_base_out[1]~7\);

-- Location: FF_X16_Y13_N19
\img_base_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(1));

-- Location: LCCOMB_X16_Y13_N20
\img_base_out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[2]~8_combout\ = (img_base_out(2) & (!\img_base_out[1]~7\)) # (!img_base_out(2) & ((\img_base_out[1]~7\) # (GND)))
-- \img_base_out[2]~9\ = CARRY((!\img_base_out[1]~7\) # (!img_base_out(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => img_base_out(2),
	datad => VCC,
	cin => \img_base_out[1]~7\,
	combout => \img_base_out[2]~8_combout\,
	cout => \img_base_out[2]~9\);

-- Location: FF_X16_Y13_N21
\img_base_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(2));

-- Location: LCCOMB_X16_Y13_N22
\img_base_out[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[3]~10_combout\ = (img_base_out(3) & (\img_base_out[2]~9\ $ (GND))) # (!img_base_out(3) & (!\img_base_out[2]~9\ & VCC))
-- \img_base_out[3]~11\ = CARRY((img_base_out(3) & !\img_base_out[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => img_base_out(3),
	datad => VCC,
	cin => \img_base_out[2]~9\,
	combout => \img_base_out[3]~10_combout\,
	cout => \img_base_out[3]~11\);

-- Location: FF_X16_Y13_N23
\img_base_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(3));

-- Location: LCCOMB_X16_Y13_N24
\img_base_out[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[4]~12_combout\ = (img_base_out(4) & (!\img_base_out[3]~11\)) # (!img_base_out(4) & ((\img_base_out[3]~11\) # (GND)))
-- \img_base_out[4]~13\ = CARRY((!\img_base_out[3]~11\) # (!img_base_out(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => img_base_out(4),
	datad => VCC,
	cin => \img_base_out[3]~11\,
	combout => \img_base_out[4]~12_combout\,
	cout => \img_base_out[4]~13\);

-- Location: FF_X16_Y13_N25
\img_base_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(4));

-- Location: LCCOMB_X16_Y13_N26
\img_base_out[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[5]~14_combout\ = (img_base_out(5) & (\img_base_out[4]~13\ $ (GND))) # (!img_base_out(5) & (!\img_base_out[4]~13\ & VCC))
-- \img_base_out[5]~15\ = CARRY((img_base_out(5) & !\img_base_out[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => img_base_out(5),
	datad => VCC,
	cin => \img_base_out[4]~13\,
	combout => \img_base_out[5]~14_combout\,
	cout => \img_base_out[5]~15\);

-- Location: FF_X16_Y13_N27
\img_base_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(5));

-- Location: LCCOMB_X16_Y13_N28
\img_base_out[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \img_base_out[6]~16_combout\ = \img_base_out[5]~15\ $ (img_base_out(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => img_base_out(6),
	cin => \img_base_out[5]~15\,
	combout => \img_base_out[6]~16_combout\);

-- Location: FF_X16_Y13_N29
\img_base_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Coprocessor_Edge_Detection|clk_line~clkctrl_outclk\,
	d => \img_base_out[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => img_base_out(6));

-- Location: LCCOMB_X16_Y15_N4
\contador_end[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[0]~12_combout\ = contador_end(0) $ (VCC)
-- \contador_end[0]~13\ = CARRY(contador_end(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_end(0),
	datad => VCC,
	combout => \contador_end[0]~12_combout\,
	cout => \contador_end[0]~13\);

-- Location: LCCOMB_X19_Y15_N0
\hvsync|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~0_combout\ = \hvsync|CounterX\(0) $ (VCC)
-- \hvsync|Add0~1\ = CARRY(\hvsync|CounterX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(0),
	datad => VCC,
	combout => \hvsync|Add0~0_combout\,
	cout => \hvsync|Add0~1\);

-- Location: LCCOMB_X19_Y15_N26
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

-- Location: FF_X19_Y15_N27
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

-- Location: LCCOMB_X19_Y15_N2
\hvsync|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~2_combout\ = (\hvsync|CounterX\(1) & (!\hvsync|Add0~1\)) # (!\hvsync|CounterX\(1) & ((\hvsync|Add0~1\) # (GND)))
-- \hvsync|Add0~3\ = CARRY((!\hvsync|Add0~1\) # (!\hvsync|CounterX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvsync|CounterX\(1),
	datad => VCC,
	cin => \hvsync|Add0~1\,
	combout => \hvsync|Add0~2_combout\,
	cout => \hvsync|Add0~3\);

-- Location: FF_X19_Y15_N3
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

-- Location: LCCOMB_X19_Y15_N4
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

-- Location: FF_X19_Y15_N5
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

-- Location: LCCOMB_X19_Y15_N6
\hvsync|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~6_combout\ = (\hvsync|CounterX\(3) & (!\hvsync|Add0~5\)) # (!\hvsync|CounterX\(3) & ((\hvsync|Add0~5\) # (GND)))
-- \hvsync|Add0~7\ = CARRY((!\hvsync|Add0~5\) # (!\hvsync|CounterX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(3),
	datad => VCC,
	cin => \hvsync|Add0~5\,
	combout => \hvsync|Add0~6_combout\,
	cout => \hvsync|Add0~7\);

-- Location: FF_X19_Y15_N7
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

-- Location: LCCOMB_X19_Y15_N8
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

-- Location: FF_X19_Y15_N9
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

-- Location: LCCOMB_X19_Y15_N10
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

-- Location: LCCOMB_X18_Y15_N28
\hvsync|CounterX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterX~3_combout\ = (!\hvsync|Equal0~2_combout\ & \hvsync|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|Equal0~2_combout\,
	datac => \hvsync|Add0~10_combout\,
	combout => \hvsync|CounterX~3_combout\);

-- Location: FF_X18_Y15_N29
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

-- Location: LCCOMB_X19_Y15_N12
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

-- Location: FF_X19_Y15_N13
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

-- Location: LCCOMB_X19_Y15_N14
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

-- Location: FF_X19_Y15_N15
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

-- Location: LCCOMB_X19_Y15_N16
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

-- Location: LCCOMB_X19_Y15_N20
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

-- Location: FF_X19_Y15_N21
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

-- Location: LCCOMB_X18_Y15_N4
\hvsync|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~1_combout\ = (\hvsync|CounterX\(5) & (!\hvsync|CounterX\(4) & (!\hvsync|CounterX\(7) & !\hvsync|CounterX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(5),
	datab => \hvsync|CounterX\(4),
	datac => \hvsync|CounterX\(7),
	datad => \hvsync|CounterX\(6),
	combout => \hvsync|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y15_N18
\hvsync|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Add0~18_combout\ = \hvsync|CounterX\(9) $ (\hvsync|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(9),
	cin => \hvsync|Add0~17\,
	combout => \hvsync|Add0~18_combout\);

-- Location: LCCOMB_X19_Y15_N30
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

-- Location: FF_X19_Y15_N31
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

-- Location: LCCOMB_X19_Y15_N28
\hvsync|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~0_combout\ = (!\hvsync|CounterX\(0) & (!\hvsync|CounterX\(1) & (!\hvsync|CounterX\(2) & !\hvsync|CounterX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(0),
	datab => \hvsync|CounterX\(1),
	datac => \hvsync|CounterX\(2),
	datad => \hvsync|CounterX\(3),
	combout => \hvsync|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y15_N26
\hvsync|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|Equal0~2_combout\ = (\hvsync|CounterX\(8) & (\hvsync|Equal0~1_combout\ & (\hvsync|CounterX\(9) & \hvsync|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(8),
	datab => \hvsync|Equal0~1_combout\,
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|Equal0~0_combout\,
	combout => \hvsync|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y15_N30
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

-- Location: FF_X18_Y15_N31
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

-- Location: LCCOMB_X18_Y15_N10
\hvsync|CounterY[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[1]~8_combout\ = (\hvsync|CounterY\(0) & (\hvsync|CounterY\(1) $ (VCC))) # (!\hvsync|CounterY\(0) & (\hvsync|CounterY\(1) & VCC))
-- \hvsync|CounterY[1]~9\ = CARRY((\hvsync|CounterY\(0) & \hvsync|CounterY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(0),
	datab => \hvsync|CounterY\(1),
	datad => VCC,
	combout => \hvsync|CounterY[1]~8_combout\,
	cout => \hvsync|CounterY[1]~9\);

-- Location: FF_X18_Y15_N11
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

-- Location: LCCOMB_X18_Y15_N12
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

-- Location: FF_X18_Y15_N13
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

-- Location: LCCOMB_X18_Y15_N14
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

-- Location: FF_X18_Y15_N15
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

-- Location: LCCOMB_X18_Y15_N16
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

-- Location: FF_X18_Y15_N17
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

-- Location: LCCOMB_X18_Y15_N18
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

-- Location: FF_X18_Y15_N19
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

-- Location: LCCOMB_X18_Y15_N20
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

-- Location: FF_X18_Y15_N21
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

-- Location: LCCOMB_X18_Y15_N22
\hvsync|CounterY[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|CounterY[7]~20_combout\ = (\hvsync|CounterY\(7) & (\hvsync|CounterY[6]~19\ $ (GND))) # (!\hvsync|CounterY\(7) & (!\hvsync|CounterY[6]~19\ & VCC))
-- \hvsync|CounterY[7]~21\ = CARRY((\hvsync|CounterY\(7) & !\hvsync|CounterY[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(7),
	datad => VCC,
	cin => \hvsync|CounterY[6]~19\,
	combout => \hvsync|CounterY[7]~20_combout\,
	cout => \hvsync|CounterY[7]~21\);

-- Location: FF_X18_Y15_N23
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

-- Location: LCCOMB_X18_Y15_N24
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

-- Location: FF_X18_Y15_N25
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

-- Location: LCCOMB_X19_Y15_N24
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\hvsync|CounterX\(6)) # ((\hvsync|CounterX\(7)) # ((\hvsync|CounterX\(9)) # (\hvsync|CounterX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(6),
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|CounterX\(9),
	datad => \hvsync|CounterX\(8),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X16_Y15_N2
\always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (\hvsync|CounterY\(6)) # ((\hvsync|CounterY\(8)) # ((\always1~0_combout\) # (\hvsync|CounterY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(6),
	datab => \hvsync|CounterY\(8),
	datac => \always1~0_combout\,
	datad => \hvsync|CounterY\(7),
	combout => \always1~1_combout\);

-- Location: FF_X16_Y15_N5
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

-- Location: LCCOMB_X16_Y15_N6
\contador_end[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[1]~14_combout\ = (contador_end(1) & (!\contador_end[0]~13\)) # (!contador_end(1) & ((\contador_end[0]~13\) # (GND)))
-- \contador_end[1]~15\ = CARRY((!\contador_end[0]~13\) # (!contador_end(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(1),
	datad => VCC,
	cin => \contador_end[0]~13\,
	combout => \contador_end[1]~14_combout\,
	cout => \contador_end[1]~15\);

-- Location: FF_X16_Y15_N7
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

-- Location: LCCOMB_X16_Y15_N8
\contador_end[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[2]~16_combout\ = (contador_end(2) & (\contador_end[1]~15\ $ (GND))) # (!contador_end(2) & (!\contador_end[1]~15\ & VCC))
-- \contador_end[2]~17\ = CARRY((contador_end(2) & !\contador_end[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(2),
	datad => VCC,
	cin => \contador_end[1]~15\,
	combout => \contador_end[2]~16_combout\,
	cout => \contador_end[2]~17\);

-- Location: FF_X16_Y15_N9
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

-- Location: LCCOMB_X16_Y15_N10
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

-- Location: FF_X16_Y15_N11
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

-- Location: LCCOMB_X16_Y15_N12
\contador_end[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[4]~20_combout\ = (contador_end(4) & (\contador_end[3]~19\ $ (GND))) # (!contador_end(4) & (!\contador_end[3]~19\ & VCC))
-- \contador_end[4]~21\ = CARRY((contador_end(4) & !\contador_end[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(4),
	datad => VCC,
	cin => \contador_end[3]~19\,
	combout => \contador_end[4]~20_combout\,
	cout => \contador_end[4]~21\);

-- Location: FF_X16_Y15_N13
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

-- Location: LCCOMB_X16_Y15_N14
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

-- Location: FF_X16_Y15_N15
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

-- Location: LCCOMB_X16_Y15_N16
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

-- Location: FF_X16_Y15_N17
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

-- Location: LCCOMB_X16_Y15_N18
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

-- Location: FF_X16_Y15_N19
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

-- Location: LCCOMB_X16_Y15_N20
\contador_end[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[8]~28_combout\ = (contador_end(8) & (\contador_end[7]~27\ $ (GND))) # (!contador_end(8) & (!\contador_end[7]~27\ & VCC))
-- \contador_end[8]~29\ = CARRY((contador_end(8) & !\contador_end[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(8),
	datad => VCC,
	cin => \contador_end[7]~27\,
	combout => \contador_end[8]~28_combout\,
	cout => \contador_end[8]~29\);

-- Location: FF_X16_Y15_N21
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

-- Location: LCCOMB_X16_Y15_N22
\contador_end[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[9]~30_combout\ = (contador_end(9) & (!\contador_end[8]~29\)) # (!contador_end(9) & ((\contador_end[8]~29\) # (GND)))
-- \contador_end[9]~31\ = CARRY((!\contador_end[8]~29\) # (!contador_end(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(9),
	datad => VCC,
	cin => \contador_end[8]~29\,
	combout => \contador_end[9]~30_combout\,
	cout => \contador_end[9]~31\);

-- Location: FF_X16_Y15_N23
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

-- Location: LCCOMB_X16_Y15_N24
\contador_end[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[10]~32_combout\ = (contador_end(10) & (\contador_end[9]~31\ $ (GND))) # (!contador_end(10) & (!\contador_end[9]~31\ & VCC))
-- \contador_end[10]~33\ = CARRY((contador_end(10) & !\contador_end[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_end(10),
	datad => VCC,
	cin => \contador_end[9]~31\,
	combout => \contador_end[10]~32_combout\,
	cout => \contador_end[10]~33\);

-- Location: FF_X16_Y15_N25
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

-- Location: LCCOMB_X16_Y15_N26
\contador_end[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_end[11]~34_combout\ = contador_end(11) $ (\contador_end[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_end(11),
	cin => \contador_end[10]~33\,
	combout => \contador_end[11]~34_combout\);

-- Location: FF_X16_Y15_N27
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
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "controlador_ram:controlador_ram|altsyncram:altsyncram_component|altsyncram_ijj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
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
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \divisor_clock|clk_out~clkctrl_outclk\,
	ena0 => GND,
	portadatain => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \controlador_ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X18_Y15_N2
\hvsync|vga_VS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~1_combout\ = (\hvsync|CounterY\(8) & (\hvsync|CounterY\(6) & (\hvsync|CounterY\(7) & \hvsync|CounterY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(8),
	datab => \hvsync|CounterY\(6),
	datac => \hvsync|CounterY\(7),
	datad => \hvsync|CounterY\(5),
	combout => \hvsync|vga_VS~1_combout\);

-- Location: LCCOMB_X18_Y15_N6
\hvsync|inDisplayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|inDisplayArea~0_combout\ = (!\hvsync|vga_VS~1_combout\ & (((!\hvsync|CounterX\(7) & !\hvsync|CounterX\(8))) # (!\hvsync|CounterX\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(9),
	datab => \hvsync|CounterX\(7),
	datac => \hvsync|CounterX\(8),
	datad => \hvsync|vga_VS~1_combout\,
	combout => \hvsync|inDisplayArea~0_combout\);

-- Location: FF_X18_Y15_N7
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

-- Location: LCCOMB_X16_Y15_N28
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

-- Location: LCCOMB_X16_Y15_N0
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

-- Location: FF_X16_Y15_N1
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

-- Location: LCCOMB_X16_Y15_N30
\pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel~1_combout\ = (\hvsync|inDisplayArea~q\ & ((\controlador_ram|altsyncram_component|auto_generated|q_b\(0)) # (\always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_ram|altsyncram_component|auto_generated|q_b\(0),
	datac => \hvsync|inDisplayArea~q\,
	datad => \always1~1_combout\,
	combout => \pixel~1_combout\);

-- Location: FF_X16_Y15_N31
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

-- Location: FF_X16_Y15_N29
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

-- Location: LCCOMB_X19_Y15_N22
\hvsync|vga_HS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_HS~0_combout\ = (\hvsync|CounterX\(6) & (((!\hvsync|CounterX\(4))) # (!\hvsync|CounterX\(5)))) # (!\hvsync|CounterX\(6) & ((\hvsync|CounterX\(5)) # ((\hvsync|CounterX\(4) & !\hvsync|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterX\(6),
	datab => \hvsync|CounterX\(5),
	datac => \hvsync|CounterX\(4),
	datad => \hvsync|Equal0~0_combout\,
	combout => \hvsync|vga_HS~0_combout\);

-- Location: LCCOMB_X18_Y15_N0
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

-- Location: FF_X18_Y15_N1
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

-- Location: LCCOMB_X18_Y15_N8
\hvsync|vga_VS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hvsync|vga_VS~0_combout\ = (((\hvsync|CounterY\(2)) # (!\hvsync|CounterY\(0))) # (!\hvsync|CounterY\(3))) # (!\hvsync|CounterY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvsync|CounterY\(1),
	datab => \hvsync|CounterY\(3),
	datac => \hvsync|CounterY\(0),
	datad => \hvsync|CounterY\(2),
	combout => \hvsync|vga_VS~0_combout\);

-- Location: LCCOMB_X17_Y15_N4
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

-- Location: FF_X17_Y15_N5
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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;
END structure;


