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

-- DATE "07/28/2018 23:59:23"

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

ENTITY 	Uart_test IS
    PORT (
	clk_50M : IN std_logic;
	reset : IN std_logic;
	button : IN std_logic;
	uart_ei_RXD : IN std_logic;
	uart_ei_TXD : OUT std_logic;
	uart_ars_address : IN std_logic;
	uart_ars_chipselect : IN std_logic;
	uart_ars_byteenable : IN std_logic_vector(3 DOWNTO 0);
	uart_ars_read : IN std_logic;
	uart_ars_write : IN std_logic;
	uart_ars_writedata : IN std_logic_vector(31 DOWNTO 0);
	uart_ars_readdata : OUT std_logic_vector(31 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END Uart_test;

-- Design Ports Information
-- uart_ei_TXD	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_address	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_chipselect	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_byteenable[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_byteenable[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_byteenable[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_byteenable[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_read	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_write	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[12]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[13]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[18]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[19]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[20]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[21]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[23]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[24]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[25]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[26]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[27]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[28]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[29]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[30]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_writedata[31]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[13]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[14]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[16]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[17]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[18]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[20]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[21]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[24]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[25]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[26]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[27]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[28]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[29]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[30]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ars_readdata[31]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_ei_RXD	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uart_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_uart_ei_RXD : std_logic;
SIGNAL ww_uart_ei_TXD : std_logic;
SIGNAL ww_uart_ars_address : std_logic;
SIGNAL ww_uart_ars_chipselect : std_logic;
SIGNAL ww_uart_ars_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_uart_ars_read : std_logic;
SIGNAL ww_uart_ars_write : std_logic;
SIGNAL ww_uart_ars_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_uart_ars_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_ars_address~input_o\ : std_logic;
SIGNAL \uart_ars_chipselect~input_o\ : std_logic;
SIGNAL \uart_ars_byteenable[0]~input_o\ : std_logic;
SIGNAL \uart_ars_byteenable[1]~input_o\ : std_logic;
SIGNAL \uart_ars_byteenable[2]~input_o\ : std_logic;
SIGNAL \uart_ars_byteenable[3]~input_o\ : std_logic;
SIGNAL \uart_ars_read~input_o\ : std_logic;
SIGNAL \uart_ars_write~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[0]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[1]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[2]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[3]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[4]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[5]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[6]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[7]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[8]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[9]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[10]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[11]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[12]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[13]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[14]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[15]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[16]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[17]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[18]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[19]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[20]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[21]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[22]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[23]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[24]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[25]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[26]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[27]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[28]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[29]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[30]~input_o\ : std_logic;
SIGNAL \uart_ars_writedata[31]~input_o\ : std_logic;
SIGNAL \uart_ei_TXD~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[0]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[1]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[2]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[3]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[4]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[5]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[6]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[7]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[8]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[9]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[10]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[11]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[12]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[13]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[14]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[15]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[16]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[17]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[18]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[19]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[20]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[21]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[22]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[23]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[24]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[25]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[26]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[27]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[28]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[29]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[30]~output_o\ : std_logic;
SIGNAL \uart_ars_readdata[31]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|serial_data_out~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \uart_ei_RXD~input_o\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~0_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \u0|rs232_0|readdata[0]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~feeder_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|readdata~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~10_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~11_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~12_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~13_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~14_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~15_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~16_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~17_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;

BEGIN

ww_clk_50M <= clk_50M;
ww_reset <= reset;
ww_button <= button;
ww_uart_ei_RXD <= uart_ei_RXD;
uart_ei_TXD <= ww_uart_ei_TXD;
ww_uart_ars_address <= uart_ars_address;
ww_uart_ars_chipselect <= uart_ars_chipselect;
ww_uart_ars_byteenable <= uart_ars_byteenable;
ww_uart_ars_read <= uart_ars_read;
ww_uart_ars_write <= uart_ars_write;
ww_uart_ars_writedata <= uart_ars_writedata;
uart_ars_readdata <= ww_uart_ars_readdata;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8) & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7) & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6) & 
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5) & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4) & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3) & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2) & 
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(1));

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(5);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(6);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(7);

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(5);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(6);
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7) <= \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\ <= NOT \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\;
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\ <= NOT \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\;
\u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;

-- Location: IOOBUF_X23_Y24_N23
\uart_ei_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\,
	devoe => ww_devoe,
	o => \uart_ei_TXD~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\uart_ars_readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(0),
	devoe => ww_devoe,
	o => \uart_ars_readdata[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\uart_ars_readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(1),
	devoe => ww_devoe,
	o => \uart_ars_readdata[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\uart_ars_readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(2),
	devoe => ww_devoe,
	o => \uart_ars_readdata[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\uart_ars_readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(3),
	devoe => ww_devoe,
	o => \uart_ars_readdata[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\uart_ars_readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(4),
	devoe => ww_devoe,
	o => \uart_ars_readdata[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\uart_ars_readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(5),
	devoe => ww_devoe,
	o => \uart_ars_readdata[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\uart_ars_readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(6),
	devoe => ww_devoe,
	o => \uart_ars_readdata[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\uart_ars_readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(7),
	devoe => ww_devoe,
	o => \uart_ars_readdata[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\uart_ars_readdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\uart_ars_readdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[9]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\uart_ars_readdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\uart_ars_readdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\uart_ars_readdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[12]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\uart_ars_readdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[13]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\uart_ars_readdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[14]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\uart_ars_readdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(15),
	devoe => ww_devoe,
	o => \uart_ars_readdata[15]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\uart_ars_readdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(16),
	devoe => ww_devoe,
	o => \uart_ars_readdata[16]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\uart_ars_readdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(17),
	devoe => ww_devoe,
	o => \uart_ars_readdata[17]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\uart_ars_readdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(18),
	devoe => ww_devoe,
	o => \uart_ars_readdata[18]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\uart_ars_readdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(19),
	devoe => ww_devoe,
	o => \uart_ars_readdata[19]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\uart_ars_readdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(20),
	devoe => ww_devoe,
	o => \uart_ars_readdata[20]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\uart_ars_readdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(21),
	devoe => ww_devoe,
	o => \uart_ars_readdata[21]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\uart_ars_readdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(22),
	devoe => ww_devoe,
	o => \uart_ars_readdata[22]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\uart_ars_readdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(23),
	devoe => ww_devoe,
	o => \uart_ars_readdata[23]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\uart_ars_readdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\uart_ars_readdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[25]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\uart_ars_readdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[26]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\uart_ars_readdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[27]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\uart_ars_readdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\uart_ars_readdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[29]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\uart_ars_readdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[30]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\uart_ars_readdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uart_ars_readdata[31]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button~input_o\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_ei_RXD~input_o\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G7
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y20_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0) $ (VCC)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\);

-- Location: LCCOMB_X16_Y21_N22
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: IOIBUF_X34_Y18_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G5
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X16_Y21_N23
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X16_Y21_N20
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X16_Y21_N21
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X16_Y21_N30
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X16_Y21_N31
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: LCCOMB_X11_Y20_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ = (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y20_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3)) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0)) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y20_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ = ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\) # (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y20_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\);

-- Location: LCCOMB_X12_Y20_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ $ 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\);

-- Location: FF_X12_Y20_N9
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0));

-- Location: LCCOMB_X12_Y20_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1) $ 
-- (((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\);

-- Location: FF_X12_Y20_N11
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1));

-- Location: LCCOMB_X12_Y20_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\);

-- Location: LCCOMB_X12_Y20_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\);

-- Location: FF_X12_Y20_N19
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2));

-- Location: LCCOMB_X12_Y20_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3) $ (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\);

-- Location: LCCOMB_X12_Y20_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\);

-- Location: FF_X12_Y20_N21
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3));

-- Location: LCCOMB_X12_Y20_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ = ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2)) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y19_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\);

-- Location: FF_X12_Y19_N7
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\);

-- Location: LCCOMB_X14_Y19_N14
\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ & 
-- !\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\);

-- Location: LCCOMB_X16_Y19_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = CARRY(!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X13_Y19_N30
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

-- Location: LCCOMB_X16_Y19_N0
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\ = ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & 
-- !\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\))) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\);

-- Location: FF_X16_Y19_N15
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: LCCOMB_X16_Y19_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & ((GND) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: FF_X16_Y19_N17
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: LCCOMB_X16_Y19_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & VCC)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: FF_X16_Y19_N19
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X16_Y19_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & ((GND) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: FF_X16_Y19_N21
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: LCCOMB_X16_Y19_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & VCC)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: FF_X16_Y19_N23
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: LCCOMB_X16_Y19_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & ((GND) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: FF_X16_Y19_N25
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X16_Y19_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) $ 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\);

-- Location: FF_X16_Y19_N27
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: LCCOMB_X16_Y19_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6)) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4)) # 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire\(0) = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire[0]~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire\(0));

-- Location: FF_X17_Y19_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|three_comparison|aneb_result_wire\(0),
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\);

-- Location: LCCOMB_X17_Y19_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\);

-- Location: FF_X17_Y19_N15
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\);

-- Location: LCCOMB_X14_Y19_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\);

-- Location: FF_X14_Y19_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\);

-- Location: LCCOMB_X12_Y19_N0
\u0|rs232_0|RS232_Out_Serializer|transmitting_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\) # 
-- (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\);

-- Location: FF_X12_Y19_N1
\u0|rs232_0|RS232_Out_Serializer|transmitting_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\);

-- Location: LCCOMB_X12_Y20_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\);

-- Location: LCCOMB_X12_Y20_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\) # (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\);

-- Location: FF_X11_Y20_N1
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0));

-- Location: LCCOMB_X11_Y20_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\);

-- Location: FF_X11_Y20_N3
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1));

-- Location: LCCOMB_X11_Y20_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\);

-- Location: FF_X11_Y20_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2));

-- Location: LCCOMB_X11_Y20_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\);

-- Location: FF_X11_Y20_N7
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3));

-- Location: LCCOMB_X11_Y20_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~16\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\);

-- Location: FF_X11_Y20_N9
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4));

-- Location: LCCOMB_X11_Y20_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\);

-- Location: FF_X11_Y20_N11
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5));

-- Location: LCCOMB_X11_Y20_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\);

-- Location: FF_X11_Y20_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6));

-- Location: LCCOMB_X11_Y20_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\);

-- Location: FF_X11_Y20_N15
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7));

-- Location: LCCOMB_X11_Y20_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8) $ (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\);

-- Location: FF_X11_Y20_N17
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\,
	sclr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8));

-- Location: LCCOMB_X11_Y20_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\);

-- Location: FF_X11_Y20_N31
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\);

-- Location: LCCOMB_X16_Y19_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\);

-- Location: FF_X16_Y19_N11
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\);

-- Location: LCCOMB_X16_Y19_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\);

-- Location: FF_X16_Y19_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0));

-- Location: LCCOMB_X16_Y19_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

-- Location: LCCOMB_X13_Y19_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0) $ (VCC)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X13_Y19_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ = ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ & 
-- \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\);

-- Location: FF_X13_Y19_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0));

-- Location: LCCOMB_X16_Y19_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\);

-- Location: FF_X16_Y19_N31
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1));

-- Location: LCCOMB_X14_Y19_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\);

-- Location: LCCOMB_X13_Y19_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\);

-- Location: FF_X13_Y19_N15
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1));

-- Location: LCCOMB_X13_Y19_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\);

-- Location: FF_X13_Y19_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2));

-- Location: LCCOMB_X13_Y19_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\);

-- Location: LCCOMB_X13_Y19_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\);

-- Location: FF_X13_Y19_N17
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2));

-- Location: LCCOMB_X16_Y19_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\);

-- Location: FF_X16_Y19_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3));

-- Location: LCCOMB_X16_Y19_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\);

-- Location: LCCOMB_X13_Y19_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\);

-- Location: FF_X13_Y19_N19
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3));

-- Location: LCCOMB_X14_Y19_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\);

-- Location: FF_X14_Y19_N17
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4));

-- Location: LCCOMB_X14_Y19_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\);

-- Location: LCCOMB_X13_Y19_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\);

-- Location: FF_X13_Y19_N21
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4));

-- Location: LCCOMB_X13_Y19_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\);

-- Location: FF_X13_Y19_N25
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5));

-- Location: LCCOMB_X13_Y19_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\);

-- Location: LCCOMB_X13_Y19_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5) $ 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\);

-- Location: FF_X13_Y19_N23
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5));

-- Location: LCCOMB_X13_Y19_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\);

-- Location: FF_X13_Y19_N9
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6));

-- Location: LCCOMB_X13_Y19_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\);

-- Location: M9K_X15_Y19_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Project_uart:u0|Project_uart_rs232_0:rs232_0|altera_up_rs232_out_serializer:RS232_Out_Serializer|altera_up_sync_fifo:RS232_Out_FIFO|scfifo:Sync_FIFO|scfifo_a341:auto_generated|a_dpfifo_tq31:dpfifo|altsyncram_je81:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk_50M~inputclkctrl_outclk\,
	clk1 => \clk_50M~inputclkctrl_outclk\,
	ena0 => GND,
	portadatain => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y19_N28
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\) # ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\);

-- Location: FF_X14_Y19_N29
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8));

-- Location: LCCOMB_X14_Y19_N10
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9_combout\);

-- Location: LCCOMB_X14_Y19_N20
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\) # 
-- (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\);

-- Location: FF_X14_Y19_N11
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7));

-- Location: LCCOMB_X14_Y19_N24
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\);

-- Location: FF_X14_Y19_N25
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6));

-- Location: LCCOMB_X14_Y19_N22
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\);

-- Location: FF_X14_Y19_N23
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5));

-- Location: LCCOMB_X14_Y19_N8
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\);

-- Location: FF_X14_Y19_N9
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4));

-- Location: LCCOMB_X14_Y19_N26
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\);

-- Location: FF_X14_Y19_N27
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3));

-- Location: LCCOMB_X14_Y19_N12
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\);

-- Location: FF_X14_Y19_N13
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2));

-- Location: LCCOMB_X14_Y19_N18
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\);

-- Location: FF_X14_Y19_N19
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1));

-- Location: LCCOMB_X14_Y19_N0
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\);

-- Location: FF_X14_Y19_N1
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\,
	asdata => VCC,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0));

-- Location: LCCOMB_X14_Y19_N30
\u0|rs232_0|RS232_Out_Serializer|serial_data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|serial_data_out~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~0_combout\);

-- Location: FF_X14_Y19_N31
\u0|rs232_0|RS232_Out_Serializer|serial_data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\);

-- Location: LCCOMB_X14_Y20_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (((VCC) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => VCC,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X25_Y0_N15
\uart_ei_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ei_RXD,
	o => \uart_ei_RXD~input_o\);

-- Location: LCCOMB_X14_Y21_N4
\u0|rs232_0|RS232_In_Deserializer|receiving_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ & ((\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\) # (!\uart_ei_RXD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_ei_RXD~input_o\,
	datac => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\);

-- Location: FF_X14_Y21_N5
\u0|rs232_0|RS232_In_Deserializer|receiving_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\);

-- Location: LCCOMB_X16_Y21_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\);

-- Location: LCCOMB_X17_Y21_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9_combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0) $ (VCC)
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\ = CARRY(\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\);

-- Location: LCCOMB_X16_Y21_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\);

-- Location: FF_X17_Y21_N7
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0));

-- Location: LCCOMB_X17_Y21_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\);

-- Location: FF_X17_Y21_N9
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1));

-- Location: LCCOMB_X17_Y21_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\);

-- Location: FF_X17_Y21_N11
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2));

-- Location: LCCOMB_X17_Y21_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\);

-- Location: FF_X17_Y21_N13
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3));

-- Location: LCCOMB_X17_Y21_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\);

-- Location: FF_X17_Y21_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4));

-- Location: LCCOMB_X17_Y21_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~18\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\);

-- Location: FF_X17_Y21_N17
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5));

-- Location: LCCOMB_X17_Y21_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\);

-- Location: FF_X17_Y21_N19
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6));

-- Location: LCCOMB_X17_Y21_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\);

-- Location: FF_X17_Y21_N21
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7));

-- Location: LCCOMB_X17_Y21_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25_combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8) $ (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25_combout\);

-- Location: FF_X17_Y21_N23
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25_combout\,
	sclr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8));

-- Location: LCCOMB_X17_Y21_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3)) # (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y21_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ = ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\) # ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y21_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\);

-- Location: FF_X16_Y21_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0));

-- Location: LCCOMB_X16_Y21_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) $ 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\);

-- Location: FF_X16_Y21_N25
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1));

-- Location: LCCOMB_X16_Y21_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\);

-- Location: LCCOMB_X16_Y21_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\) # 
-- ((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\);

-- Location: FF_X16_Y21_N1
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2));

-- Location: LCCOMB_X16_Y21_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3) $ (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\);

-- Location: FF_X16_Y21_N7
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3));

-- Location: LCCOMB_X16_Y21_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\ = (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0)) # (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y20_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\);

-- Location: FF_X13_Y20_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\);

-- Location: LCCOMB_X13_Y20_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\ = ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\);

-- Location: FF_X14_Y20_N19
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: LCCOMB_X14_Y20_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # ((GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ 
-- (\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: FF_X14_Y20_N21
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: LCCOMB_X14_Y20_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & ((VCC)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (((VCC) # (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\)))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: FF_X14_Y20_N23
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X14_Y20_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # (GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ $ 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: FF_X14_Y20_N25
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: LCCOMB_X14_Y20_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & ((VCC)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (((VCC) # (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\)))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (!\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: FF_X14_Y20_N27
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: LCCOMB_X14_Y20_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # ((GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ 
-- (\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: FF_X14_Y20_N29
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X14_Y20_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\);

-- Location: FF_X14_Y20_N31
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: LCCOMB_X14_Y20_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X13_Y20_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire\(0) = 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire[0]~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire\(0));

-- Location: FF_X13_Y20_N17
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|almost_full_comparer|aneb_result_wire\(0),
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\);

-- Location: LCCOMB_X14_Y20_N0
\u0|rs232_0|RS232_In_Deserializer|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\);

-- Location: LCCOMB_X14_Y21_N12
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \uart_ei_RXD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \uart_ei_RXD~input_o\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\);

-- Location: LCCOMB_X17_Y21_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y21_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\);

-- Location: FF_X16_Y21_N9
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\);

-- Location: LCCOMB_X14_Y21_N22
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\);

-- Location: FF_X14_Y21_N13
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9));

-- Location: LCCOMB_X14_Y21_N20
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\);

-- Location: FF_X14_Y21_N21
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8));

-- Location: LCCOMB_X14_Y21_N26
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\);

-- Location: FF_X14_Y21_N27
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7));

-- Location: LCCOMB_X14_Y21_N28
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\);

-- Location: FF_X14_Y21_N29
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6));

-- Location: LCCOMB_X14_Y21_N6
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\);

-- Location: FF_X14_Y21_N7
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5));

-- Location: LCCOMB_X14_Y21_N0
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\);

-- Location: FF_X14_Y21_N1
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4));

-- Location: LCCOMB_X14_Y21_N10
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\);

-- Location: FF_X14_Y21_N11
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3));

-- Location: LCCOMB_X14_Y21_N16
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\);

-- Location: FF_X14_Y21_N17
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2));

-- Location: LCCOMB_X14_Y21_N14
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\);

-- Location: FF_X14_Y21_N15
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(1));

-- Location: LCCOMB_X14_Y20_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) $ (VCC)
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: FF_X14_Y20_N5
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X14_Y20_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X14_Y20_N7
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X14_Y20_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X14_Y20_N9
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X14_Y20_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X14_Y20_N11
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X14_Y20_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X14_Y20_N13
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X14_Y20_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X14_Y20_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X14_Y20_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\);

-- Location: FF_X14_Y20_N17
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: M9K_X15_Y20_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Project_uart:u0|Project_uart_rs232_0:rs232_0|altera_up_rs232_in_deserializer:RS232_In_Deserializer|altera_up_sync_fifo:RS232_In_FIFO|scfifo:Sync_FIFO|scfifo_a341:auto_generated|a_dpfifo_tq31:dpfifo|altsyncram_je81:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	portbre => VCC,
	clk0 => \clk_50M~inputclkctrl_outclk\,
	clk1 => \clk_50M~inputclkctrl_outclk\,
	ena0 => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	portadatain => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y20_N4
\u0|rs232_0|readdata~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	combout => \u0|rs232_0|readdata~0_combout\);

-- Location: IOIBUF_X0_Y21_N22
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X16_Y20_N0
\u0|rs232_0|readdata[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata[0]~1_combout\ = (\button~input_o\) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button~input_o\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata[0]~1_combout\);

-- Location: FF_X16_Y20_N5
\u0|rs232_0|readdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~0_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(0));

-- Location: LCCOMB_X16_Y20_N2
\u0|rs232_0|readdata~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	combout => \u0|rs232_0|readdata~2_combout\);

-- Location: FF_X16_Y20_N3
\u0|rs232_0|readdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~2_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(1));

-- Location: LCCOMB_X16_Y20_N20
\u0|rs232_0|readdata~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	combout => \u0|rs232_0|readdata~3_combout\);

-- Location: FF_X16_Y20_N21
\u0|rs232_0|readdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~3_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(2));

-- Location: LCCOMB_X16_Y20_N14
\u0|rs232_0|readdata~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	combout => \u0|rs232_0|readdata~4_combout\);

-- Location: FF_X16_Y20_N15
\u0|rs232_0|readdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~4_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(3));

-- Location: LCCOMB_X16_Y20_N24
\u0|rs232_0|readdata~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~5_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	combout => \u0|rs232_0|readdata~5_combout\);

-- Location: FF_X16_Y20_N25
\u0|rs232_0|readdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~5_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(4));

-- Location: LCCOMB_X16_Y20_N18
\u0|rs232_0|readdata~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~6_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	combout => \u0|rs232_0|readdata~6_combout\);

-- Location: FF_X16_Y20_N19
\u0|rs232_0|readdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~6_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(5));

-- Location: LCCOMB_X16_Y20_N28
\u0|rs232_0|readdata~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~7_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6),
	combout => \u0|rs232_0|readdata~7_combout\);

-- Location: FF_X16_Y20_N29
\u0|rs232_0|readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~7_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(6));

-- Location: LCCOMB_X16_Y20_N6
\u0|rs232_0|readdata~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~8_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	combout => \u0|rs232_0|readdata~8_combout\);

-- Location: FF_X16_Y20_N7
\u0|rs232_0|readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~8_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(7));

-- Location: LCCOMB_X13_Y20_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~feeder_combout\);

-- Location: FF_X13_Y20_N25
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~feeder_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\);

-- Location: LCCOMB_X13_Y20_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\);

-- Location: FF_X13_Y20_N27
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\);

-- Location: LCCOMB_X12_Y20_N24
\u0|rs232_0|readdata~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~9_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~9_combout\);

-- Location: FF_X12_Y20_N25
\u0|rs232_0|readdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~9_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(15));

-- Location: LCCOMB_X13_Y20_N8
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\);

-- Location: FF_X13_Y20_N9
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(0));

-- Location: LCCOMB_X12_Y20_N26
\u0|rs232_0|readdata~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~10_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(0) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(0),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~10_combout\);

-- Location: FF_X12_Y20_N27
\u0|rs232_0|readdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~10_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(16));

-- Location: LCCOMB_X13_Y20_N22
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\);

-- Location: FF_X13_Y20_N23
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(1));

-- Location: LCCOMB_X12_Y20_N16
\u0|rs232_0|readdata~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~11_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(1) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(1),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~11_combout\);

-- Location: FF_X12_Y20_N17
\u0|rs232_0|readdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~11_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(17));

-- Location: LCCOMB_X13_Y20_N12
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\);

-- Location: FF_X13_Y20_N13
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(2));

-- Location: LCCOMB_X12_Y20_N2
\u0|rs232_0|readdata~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~12_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(2) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(2),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~12_combout\);

-- Location: FF_X12_Y20_N3
\u0|rs232_0|readdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~12_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(18));

-- Location: LCCOMB_X16_Y20_N26
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\);

-- Location: FF_X16_Y20_N27
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(3));

-- Location: LCCOMB_X16_Y20_N12
\u0|rs232_0|readdata~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~13_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(3),
	combout => \u0|rs232_0|readdata~13_combout\);

-- Location: FF_X16_Y20_N13
\u0|rs232_0|readdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~13_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(19));

-- Location: LCCOMB_X11_Y20_N22
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\);

-- Location: FF_X11_Y20_N23
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(4));

-- Location: LCCOMB_X11_Y20_N18
\u0|rs232_0|readdata~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~14_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(4) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(4),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~14_combout\);

-- Location: FF_X11_Y20_N19
\u0|rs232_0|readdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~14_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(20));

-- Location: LCCOMB_X11_Y20_N28
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5_combout\);

-- Location: FF_X11_Y20_N29
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5));

-- Location: LCCOMB_X11_Y20_N24
\u0|rs232_0|readdata~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~15_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~15_combout\);

-- Location: FF_X11_Y20_N25
\u0|rs232_0|readdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~15_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(21));

-- Location: LCCOMB_X13_Y20_N10
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\);

-- Location: FF_X13_Y20_N11
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6));

-- Location: LCCOMB_X12_Y20_N4
\u0|rs232_0|readdata~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~16_combout\ = (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|readdata~16_combout\);

-- Location: FF_X12_Y20_N5
\u0|rs232_0|readdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~16_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(22));

-- Location: LCCOMB_X13_Y20_N0
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\);

-- Location: FF_X13_Y20_N1
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7));

-- Location: LCCOMB_X16_Y20_N22
\u0|rs232_0|readdata~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~17_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7),
	combout => \u0|rs232_0|readdata~17_combout\);

-- Location: FF_X16_Y20_N23
\u0|rs232_0|readdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~17_combout\,
	ena => \u0|rs232_0|readdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(23));

-- Location: IOIBUF_X32_Y24_N8
\uart_ars_address~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_address,
	o => \uart_ars_address~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\uart_ars_chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_chipselect,
	o => \uart_ars_chipselect~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\uart_ars_byteenable[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_byteenable(0),
	o => \uart_ars_byteenable[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\uart_ars_byteenable[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_byteenable(1),
	o => \uart_ars_byteenable[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\uart_ars_byteenable[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_byteenable(2),
	o => \uart_ars_byteenable[2]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\uart_ars_byteenable[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_byteenable(3),
	o => \uart_ars_byteenable[3]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\uart_ars_read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_read,
	o => \uart_ars_read~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\uart_ars_write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_write,
	o => \uart_ars_write~input_o\);

-- Location: IOIBUF_X30_Y24_N8
\uart_ars_writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(0),
	o => \uart_ars_writedata[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\uart_ars_writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(1),
	o => \uart_ars_writedata[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\uart_ars_writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(2),
	o => \uart_ars_writedata[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\uart_ars_writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(3),
	o => \uart_ars_writedata[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\uart_ars_writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(4),
	o => \uart_ars_writedata[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\uart_ars_writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(5),
	o => \uart_ars_writedata[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\uart_ars_writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(6),
	o => \uart_ars_writedata[6]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\uart_ars_writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(7),
	o => \uart_ars_writedata[7]~input_o\);

-- Location: IOIBUF_X32_Y24_N15
\uart_ars_writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(8),
	o => \uart_ars_writedata[8]~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\uart_ars_writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(9),
	o => \uart_ars_writedata[9]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\uart_ars_writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(10),
	o => \uart_ars_writedata[10]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\uart_ars_writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(11),
	o => \uart_ars_writedata[11]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\uart_ars_writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(12),
	o => \uart_ars_writedata[12]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\uart_ars_writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(13),
	o => \uart_ars_writedata[13]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\uart_ars_writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(14),
	o => \uart_ars_writedata[14]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\uart_ars_writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(15),
	o => \uart_ars_writedata[15]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\uart_ars_writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(16),
	o => \uart_ars_writedata[16]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\uart_ars_writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(17),
	o => \uart_ars_writedata[17]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\uart_ars_writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(18),
	o => \uart_ars_writedata[18]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\uart_ars_writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(19),
	o => \uart_ars_writedata[19]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\uart_ars_writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(20),
	o => \uart_ars_writedata[20]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\uart_ars_writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(21),
	o => \uart_ars_writedata[21]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\uart_ars_writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(22),
	o => \uart_ars_writedata[22]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\uart_ars_writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(23),
	o => \uart_ars_writedata[23]~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\uart_ars_writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(24),
	o => \uart_ars_writedata[24]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\uart_ars_writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(25),
	o => \uart_ars_writedata[25]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\uart_ars_writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(26),
	o => \uart_ars_writedata[26]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\uart_ars_writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(27),
	o => \uart_ars_writedata[27]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\uart_ars_writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(28),
	o => \uart_ars_writedata[28]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\uart_ars_writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(29),
	o => \uart_ars_writedata[29]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\uart_ars_writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(30),
	o => \uart_ars_writedata[30]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\uart_ars_writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_ars_writedata(31),
	o => \uart_ars_writedata[31]~input_o\);

ww_uart_ei_TXD <= \uart_ei_TXD~output_o\;

ww_uart_ars_readdata(0) <= \uart_ars_readdata[0]~output_o\;

ww_uart_ars_readdata(1) <= \uart_ars_readdata[1]~output_o\;

ww_uart_ars_readdata(2) <= \uart_ars_readdata[2]~output_o\;

ww_uart_ars_readdata(3) <= \uart_ars_readdata[3]~output_o\;

ww_uart_ars_readdata(4) <= \uart_ars_readdata[4]~output_o\;

ww_uart_ars_readdata(5) <= \uart_ars_readdata[5]~output_o\;

ww_uart_ars_readdata(6) <= \uart_ars_readdata[6]~output_o\;

ww_uart_ars_readdata(7) <= \uart_ars_readdata[7]~output_o\;

ww_uart_ars_readdata(8) <= \uart_ars_readdata[8]~output_o\;

ww_uart_ars_readdata(9) <= \uart_ars_readdata[9]~output_o\;

ww_uart_ars_readdata(10) <= \uart_ars_readdata[10]~output_o\;

ww_uart_ars_readdata(11) <= \uart_ars_readdata[11]~output_o\;

ww_uart_ars_readdata(12) <= \uart_ars_readdata[12]~output_o\;

ww_uart_ars_readdata(13) <= \uart_ars_readdata[13]~output_o\;

ww_uart_ars_readdata(14) <= \uart_ars_readdata[14]~output_o\;

ww_uart_ars_readdata(15) <= \uart_ars_readdata[15]~output_o\;

ww_uart_ars_readdata(16) <= \uart_ars_readdata[16]~output_o\;

ww_uart_ars_readdata(17) <= \uart_ars_readdata[17]~output_o\;

ww_uart_ars_readdata(18) <= \uart_ars_readdata[18]~output_o\;

ww_uart_ars_readdata(19) <= \uart_ars_readdata[19]~output_o\;

ww_uart_ars_readdata(20) <= \uart_ars_readdata[20]~output_o\;

ww_uart_ars_readdata(21) <= \uart_ars_readdata[21]~output_o\;

ww_uart_ars_readdata(22) <= \uart_ars_readdata[22]~output_o\;

ww_uart_ars_readdata(23) <= \uart_ars_readdata[23]~output_o\;

ww_uart_ars_readdata(24) <= \uart_ars_readdata[24]~output_o\;

ww_uart_ars_readdata(25) <= \uart_ars_readdata[25]~output_o\;

ww_uart_ars_readdata(26) <= \uart_ars_readdata[26]~output_o\;

ww_uart_ars_readdata(27) <= \uart_ars_readdata[27]~output_o\;

ww_uart_ars_readdata(28) <= \uart_ars_readdata[28]~output_o\;

ww_uart_ars_readdata(29) <= \uart_ars_readdata[29]~output_o\;

ww_uart_ars_readdata(30) <= \uart_ars_readdata[30]~output_o\;

ww_uart_ars_readdata(31) <= \uart_ars_readdata[31]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


