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

-- DATE "07/26/2018 11:42:32"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Uart_test IS
    PORT (
	clk_50M : IN std_logic;
	reset : IN std_logic;
	control_uart_address : IN std_logic;
	control_uart_chipselect : IN std_logic;
	control_uart_byteenable : IN std_logic_vector(3 DOWNTO 0);
	control_uart_read : IN std_logic;
	control_uart_write : IN std_logic;
	control_uart_writedata : IN std_logic_vector(31 DOWNTO 0);
	control_uart_readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	external_uart_RXD : IN std_logic;
	external_uart_TXD : BUFFER std_logic
	);
END Uart_test;

-- Design Ports Information
-- control_uart_byteenable[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_byteenable[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_byteenable[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[9]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[11]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[12]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[13]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[14]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[15]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[16]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[17]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[19]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[20]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[22]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[24]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[25]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[26]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[27]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[28]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[29]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[31]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[9]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[17]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[18]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[19]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[20]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[21]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[22]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[24]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[25]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[26]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[27]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[29]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[30]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_readdata[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- external_uart_TXD	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_address	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_chipselect	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_write	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_byteenable[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_read	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- external_uart_RXD	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_uart_writedata[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_control_uart_address : std_logic;
SIGNAL ww_control_uart_chipselect : std_logic;
SIGNAL ww_control_uart_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_control_uart_read : std_logic;
SIGNAL ww_control_uart_write : std_logic;
SIGNAL ww_control_uart_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_uart_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_external_uart_RXD : std_logic;
SIGNAL ww_external_uart_TXD : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_uart_byteenable[1]~input_o\ : std_logic;
SIGNAL \control_uart_byteenable[2]~input_o\ : std_logic;
SIGNAL \control_uart_byteenable[3]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[8]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[9]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[10]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[11]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[12]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[13]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[14]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[15]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[16]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[17]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[18]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[19]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[20]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[21]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[22]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[23]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[24]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[25]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[26]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[27]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[28]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[29]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[30]~input_o\ : std_logic;
SIGNAL \control_uart_writedata[31]~input_o\ : std_logic;
SIGNAL \control_uart_readdata[0]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[1]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[2]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[3]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[4]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[5]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[6]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[7]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[8]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[9]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[10]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[11]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[12]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[13]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[14]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[15]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[16]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[17]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[18]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[19]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[20]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[21]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[22]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[23]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[24]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[25]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[26]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[27]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[28]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[29]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[30]~output_o\ : std_logic;
SIGNAL \control_uart_readdata[31]~output_o\ : std_logic;
SIGNAL \external_uart_TXD~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \control_uart_address~input_o\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \control_uart_writedata[0]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt_en~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt_en~feeder_combout\ : std_logic;
SIGNAL \control_uart_write~input_o\ : std_logic;
SIGNAL \control_uart_chipselect~input_o\ : std_logic;
SIGNAL \control_uart_byteenable[0]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt_en~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt_en~q\ : std_logic;
SIGNAL \external_uart_RXD~input_o\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ : std_logic;
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
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~24\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \control_uart_read~input_o\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ : std_logic;
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
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata[18]~1_combout\ : std_logic;
SIGNAL \control_uart_writedata[1]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|write_interrupt_en~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|write_interrupt_en~q\ : std_logic;
SIGNAL \u0|rs232_0|readdata~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|read_interrupt~q\ : std_logic;
SIGNAL \u0|rs232_0|readdata~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|write_fifo_write_en~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|write_fifo_write_en~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ : std_logic;
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
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~18_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~20_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~21\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]~22_combout\ : std_logic;
SIGNAL \u0|rs232_0|write_interrupt~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|write_interrupt~q\ : std_logic;
SIGNAL \u0|rs232_0|readdata~10_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~11_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~12_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~10_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~13_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~12_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~14_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~14_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~15_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~16_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~16_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~17_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~18_combout\ : std_logic;
SIGNAL \u0|rs232_0|readdata~19_combout\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart[0]~feeder_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~4_combout\ : std_logic;
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
SIGNAL \u0|rs232_0|data_to_uart[1]~feeder_combout\ : std_logic;
SIGNAL \control_uart_writedata[2]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~0_combout\ : std_logic;
SIGNAL \control_uart_writedata[3]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~1_combout\ : std_logic;
SIGNAL \control_uart_writedata[4]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~2_combout\ : std_logic;
SIGNAL \control_uart_writedata[5]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~3_combout\ : std_logic;
SIGNAL \control_uart_writedata[6]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~4_combout\ : std_logic;
SIGNAL \control_uart_writedata[7]~input_o\ : std_logic;
SIGNAL \u0|rs232_0|data_to_uart~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|serial_data_out~0_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|rs232_0|data_to_uart\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;

BEGIN

ww_clk_50M <= clk_50M;
ww_reset <= reset;
ww_control_uart_address <= control_uart_address;
ww_control_uart_chipselect <= control_uart_chipselect;
ww_control_uart_byteenable <= control_uart_byteenable;
ww_control_uart_read <= control_uart_read;
ww_control_uart_write <= control_uart_write;
ww_control_uart_writedata <= control_uart_writedata;
control_uart_readdata <= ww_control_uart_readdata;
ww_external_uart_RXD <= external_uart_RXD;
external_uart_TXD <= ww_external_uart_TXD;
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

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ & 
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(5);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(6);
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7) <= \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(7);

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & \u0|rs232_0|data_to_uart\(7) & \u0|rs232_0|data_to_uart\(6) & \u0|rs232_0|data_to_uart\(5) & \u0|rs232_0|data_to_uart\(4) & \u0|rs232_0|data_to_uart\(3) & \u0|rs232_0|data_to_uart\(2) & 
\u0|rs232_0|data_to_uart\(1) & \u0|rs232_0|data_to_uart\(0));

\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

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

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\ <= NOT \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\;
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|ALT_INV_bit_counter[2]~1_combout\ <= NOT \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\;
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|ALT_INV_bit_counter[2]~1_combout\ <= NOT \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\;
\u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;

-- Location: IOOBUF_X25_Y41_N9
\control_uart_readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(0),
	devoe => ww_devoe,
	o => \control_uart_readdata[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\control_uart_readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(1),
	devoe => ww_devoe,
	o => \control_uart_readdata[1]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\control_uart_readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(2),
	devoe => ww_devoe,
	o => \control_uart_readdata[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\control_uart_readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(3),
	devoe => ww_devoe,
	o => \control_uart_readdata[3]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\control_uart_readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(4),
	devoe => ww_devoe,
	o => \control_uart_readdata[4]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\control_uart_readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(5),
	devoe => ww_devoe,
	o => \control_uart_readdata[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\control_uart_readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(6),
	devoe => ww_devoe,
	o => \control_uart_readdata[6]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\control_uart_readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(7),
	devoe => ww_devoe,
	o => \control_uart_readdata[7]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\control_uart_readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(8),
	devoe => ww_devoe,
	o => \control_uart_readdata[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\control_uart_readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(9),
	devoe => ww_devoe,
	o => \control_uart_readdata[9]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\control_uart_readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[10]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\control_uart_readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\control_uart_readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[12]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\control_uart_readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\control_uart_readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[14]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\control_uart_readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(15),
	devoe => ww_devoe,
	o => \control_uart_readdata[15]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\control_uart_readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(16),
	devoe => ww_devoe,
	o => \control_uart_readdata[16]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\control_uart_readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(17),
	devoe => ww_devoe,
	o => \control_uart_readdata[17]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\control_uart_readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(18),
	devoe => ww_devoe,
	o => \control_uart_readdata[18]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\control_uart_readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(19),
	devoe => ww_devoe,
	o => \control_uart_readdata[19]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\control_uart_readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(20),
	devoe => ww_devoe,
	o => \control_uart_readdata[20]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\control_uart_readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(21),
	devoe => ww_devoe,
	o => \control_uart_readdata[21]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\control_uart_readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(22),
	devoe => ww_devoe,
	o => \control_uart_readdata[22]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\control_uart_readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|readdata\(23),
	devoe => ww_devoe,
	o => \control_uart_readdata[23]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\control_uart_readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[24]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\control_uart_readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[25]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\control_uart_readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[26]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\control_uart_readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[27]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\control_uart_readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[28]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\control_uart_readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[29]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\control_uart_readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[30]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\control_uart_readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_uart_readdata[31]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\external_uart_TXD~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|rs232_0|RS232_Out_Serializer|serial_data_out~q\,
	devoe => ww_devoe,
	o => \external_uart_TXD~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk_50M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G17
\clk_50M~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X36_Y41_N8
\control_uart_address~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_address,
	o => \control_uart_address~input_o\);

-- Location: LCCOMB_X36_Y30_N20
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: FF_X36_Y30_N21
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X36_Y30_N6
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X36_Y30_N7
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X36_Y30_N10
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : cycloneiv_lcell_comb
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

-- Location: FF_X36_Y30_N11
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: IOIBUF_X43_Y41_N1
\control_uart_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(0),
	o => \control_uart_writedata[0]~input_o\);

-- Location: LCCOMB_X37_Y30_N4
\u0|rs232_0|read_interrupt_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|read_interrupt_en~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \control_uart_writedata[0]~input_o\,
	combout => \u0|rs232_0|read_interrupt_en~0_combout\);

-- Location: LCCOMB_X36_Y30_N12
\u0|rs232_0|read_interrupt_en~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|read_interrupt_en~feeder_combout\ = \u0|rs232_0|read_interrupt_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|rs232_0|read_interrupt_en~0_combout\,
	combout => \u0|rs232_0|read_interrupt_en~feeder_combout\);

-- Location: IOIBUF_X43_Y41_N8
\control_uart_write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_write,
	o => \control_uart_write~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\control_uart_chipselect~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_chipselect,
	o => \control_uart_chipselect~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\control_uart_byteenable[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_byteenable(0),
	o => \control_uart_byteenable[0]~input_o\);

-- Location: LCCOMB_X36_Y31_N12
\u0|rs232_0|RS232_In_Deserializer|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ = (\control_uart_chipselect~input_o\ & \control_uart_byteenable[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_uart_chipselect~input_o\,
	datad => \control_uart_byteenable[0]~input_o\,
	combout => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\);

-- Location: LCCOMB_X36_Y31_N30
\u0|rs232_0|read_interrupt_en~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|read_interrupt_en~1_combout\ = ((\control_uart_address~input_o\ & (\control_uart_write~input_o\ & \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\))) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datab => \control_uart_write~input_o\,
	datac => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|read_interrupt_en~1_combout\);

-- Location: FF_X36_Y30_N13
\u0|rs232_0|read_interrupt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|read_interrupt_en~feeder_combout\,
	ena => \u0|rs232_0|read_interrupt_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|read_interrupt_en~q\);

-- Location: IOIBUF_X52_Y28_N8
\external_uart_RXD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_external_uart_RXD,
	o => \external_uart_RXD~input_o\);

-- Location: LCCOMB_X36_Y31_N14
\u0|rs232_0|RS232_In_Deserializer|receiving_data~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ & ((\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\) # (!\external_uart_RXD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datad => \external_uart_RXD~input_o\,
	combout => \u0|rs232_0|RS232_In_Deserializer|receiving_data~0_combout\);

-- Location: FF_X36_Y31_N15
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

-- Location: LCCOMB_X37_Y31_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ = (\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\);

-- Location: LCCOMB_X38_Y31_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~9\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X37_Y31_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|receiving_data~q\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\);

-- Location: FF_X38_Y31_N11
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

-- Location: LCCOMB_X38_Y31_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[0]~10\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~11_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\);

-- Location: FF_X38_Y31_N13
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

-- Location: LCCOMB_X38_Y31_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[1]~12\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~13_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\);

-- Location: FF_X38_Y31_N15
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

-- Location: LCCOMB_X38_Y31_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3) & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[2]~14\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~15_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[3]~16\);

-- Location: FF_X38_Y31_N17
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

-- Location: LCCOMB_X38_Y31_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[4]~17\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y31_N19
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

-- Location: LCCOMB_X38_Y31_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~19\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y31_N21
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

-- Location: LCCOMB_X38_Y31_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[5]~20\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~21_combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[6]~22\);

-- Location: FF_X38_Y31_N23
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

-- Location: LCCOMB_X38_Y31_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\ = (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6)) # (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y31_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[7]~23\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y31_N25
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

-- Location: LCCOMB_X38_Y31_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter[8]~25\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y31_N27
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

-- Location: LCCOMB_X38_Y31_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2) & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(7),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(2),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(4),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y31_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0)) # ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\) # 
-- ((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y31_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[0]~4_combout\);

-- Location: FF_X37_Y31_N23
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

-- Location: LCCOMB_X37_Y31_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) $ 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[1]~5_combout\);

-- Location: FF_X37_Y31_N25
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

-- Location: LCCOMB_X37_Y31_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2) $ (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\);

-- Location: LCCOMB_X37_Y31_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\ & 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|receiving_data~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\);

-- Location: LCCOMB_X37_Y31_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\) # 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\ & 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~0_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\);

-- Location: FF_X37_Y31_N17
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2));

-- Location: LCCOMB_X37_Y31_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1_combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3) $ (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1_combout\);

-- Location: LCCOMB_X37_Y31_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Add1~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[2]~3_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter[3]~6_combout\);

-- Location: FF_X37_Y31_N15
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

-- Location: LCCOMB_X37_Y31_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0)) # (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2)) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y31_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~0_combout\);

-- Location: FF_X37_Y31_N31
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

-- Location: LCCOMB_X35_Y30_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (((VCC) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X32_Y32_N30
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X52_Y27_N8
\control_uart_read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_read,
	o => \control_uart_read~input_o\);

-- Location: LCCOMB_X35_Y30_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4)) # 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\);

-- Location: LCCOMB_X35_Y30_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & VCC)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (((VCC) # (!\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\)))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X35_Y30_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # (GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: FF_X35_Y30_N13
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X35_Y30_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\);

-- Location: FF_X35_Y30_N15
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: LCCOMB_X35_Y30_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\);

-- Location: LCCOMB_X36_Y30_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ & 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\);

-- Location: LCCOMB_X36_Y31_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\) # (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\)))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~2_combout\);

-- Location: FF_X36_Y31_N3
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~2_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\);

-- Location: FF_X36_Y30_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\);

-- Location: LCCOMB_X36_Y30_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ & ((!\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ & \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\);

-- Location: LCCOMB_X36_Y30_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\) # ((\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\ & 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\);

-- Location: FF_X36_Y30_N5
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\);

-- Location: LCCOMB_X36_Y30_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\);

-- Location: LCCOMB_X36_Y30_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\) # (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ $ (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\);

-- Location: LCCOMB_X36_Y30_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\) # ((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~3_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\);

-- Location: FF_X36_Y30_N19
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\);

-- Location: LCCOMB_X36_Y30_N0
\u0|rs232_0|RS232_In_Deserializer|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ = (!\control_uart_address~input_o\ & (\u0|rs232_0|RS232_In_Deserializer|comb~0_combout\ & (\control_uart_read~input_o\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~0_combout\,
	datac => \control_uart_read~input_o\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\);

-- Location: LCCOMB_X36_Y30_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ $ 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~4_combout\);

-- Location: FF_X35_Y30_N3
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: LCCOMB_X35_Y30_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # (GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: FF_X35_Y30_N5
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: LCCOMB_X35_Y30_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & VCC)))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (((VCC) # (!\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\)))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: FF_X35_Y30_N7
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X35_Y30_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ (((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & (((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # (GND))))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ $ 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: FF_X35_Y30_N9
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: FF_X35_Y30_N11
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ALT_INV_usedw_will_be_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: LCCOMB_X35_Y30_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\);

-- Location: LCCOMB_X35_Y31_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\);

-- Location: LCCOMB_X36_Y31_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\) # 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\);

-- Location: FF_X36_Y31_N9
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\);

-- Location: LCCOMB_X36_Y30_N2
\u0|rs232_0|RS232_In_Deserializer|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\ & !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\);

-- Location: LCCOMB_X32_Y30_N26
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \external_uart_RXD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \external_uart_RXD~input_o\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\);

-- Location: LCCOMB_X38_Y31_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1) & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(1),
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(5),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(6),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(3),
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y31_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\ & (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0) & \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~1_combout\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(8),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_counter\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~0_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|Equal1~2_combout\);

-- Location: FF_X37_Y31_N13
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

-- Location: LCCOMB_X32_Y30_N12
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|baud_clock_falling_edge~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\);

-- Location: FF_X32_Y30_N27
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~9_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9));

-- Location: LCCOMB_X32_Y30_N18
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(9),
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\);

-- Location: FF_X32_Y30_N19
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~8_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8));

-- Location: LCCOMB_X32_Y30_N0
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(8),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\);

-- Location: FF_X32_Y30_N1
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~7_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7));

-- Location: LCCOMB_X32_Y30_N6
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(7),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\);

-- Location: FF_X32_Y30_N7
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~6_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6));

-- Location: LCCOMB_X32_Y30_N28
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(6),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\);

-- Location: FF_X32_Y30_N29
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~5_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5));

-- Location: LCCOMB_X32_Y30_N22
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(5),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\);

-- Location: FF_X32_Y30_N23
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~4_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4));

-- Location: LCCOMB_X32_Y30_N24
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(4),
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\);

-- Location: FF_X32_Y30_N25
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~3_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3));

-- Location: LCCOMB_X32_Y30_N30
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3) & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(3),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\);

-- Location: FF_X32_Y30_N31
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~2_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2));

-- Location: LCCOMB_X32_Y30_N16
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(2),
	combout => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\);

-- Location: FF_X32_Y30_N17
\u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg~0_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|data_in_shift_reg\(1));

-- Location: LCCOMB_X37_Y30_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X37_Y30_N2
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ = ((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_Counters|all_bits_transmitted~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\);

-- Location: FF_X37_Y30_N19
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X37_Y30_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X37_Y30_N21
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X37_Y30_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X37_Y30_N23
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X37_Y30_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X37_Y30_N25
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X37_Y30_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y30_N27
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X37_Y30_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y30_N29
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X37_Y30_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) $ 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\);

-- Location: FF_X37_Y30_N31
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
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LCCOMB_X36_Y31_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ = (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\);

-- Location: LCCOMB_X36_Y31_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\);

-- Location: FF_X36_Y31_N25
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\);

-- Location: LCCOMB_X32_Y31_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\);

-- Location: FF_X32_Y31_N5
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0));

-- Location: LCCOMB_X32_Y31_N30
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

-- Location: LCCOMB_X32_Y31_N14
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0) $ (VCC)
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X32_Y31_N12
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ = ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\);

-- Location: FF_X32_Y31_N15
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0));

-- Location: LCCOMB_X36_Y31_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\);

-- Location: FF_X36_Y31_N23
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1));

-- Location: LCCOMB_X36_Y31_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\);

-- Location: LCCOMB_X32_Y31_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\);

-- Location: FF_X32_Y31_N17
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1));

-- Location: LCCOMB_X36_Y31_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\);

-- Location: FF_X36_Y31_N27
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2));

-- Location: LCCOMB_X36_Y31_N16
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\);

-- Location: LCCOMB_X32_Y31_N18
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\);

-- Location: FF_X32_Y31_N19
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2));

-- Location: LCCOMB_X32_Y31_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\);

-- Location: FF_X32_Y31_N1
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3));

-- Location: LCCOMB_X32_Y31_N26
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\);

-- Location: LCCOMB_X32_Y31_N20
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\);

-- Location: FF_X32_Y31_N21
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3));

-- Location: LCCOMB_X32_Y31_N8
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\);

-- Location: FF_X32_Y31_N9
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4));

-- Location: LCCOMB_X32_Y31_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\);

-- Location: LCCOMB_X32_Y31_N22
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ & VCC))
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ = CARRY((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\);

-- Location: FF_X32_Y31_N23
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4));

-- Location: LCCOMB_X32_Y31_N28
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\);

-- Location: FF_X32_Y31_N29
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5));

-- Location: LCCOMB_X32_Y31_N6
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\);

-- Location: LCCOMB_X32_Y31_N24
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ = \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ $ 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	cin => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\);

-- Location: FF_X32_Y31_N25
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5));

-- Location: LCCOMB_X36_Y31_N10
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\);

-- Location: FF_X36_Y31_N11
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6));

-- Location: LCCOMB_X36_Y31_N4
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ = (\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\u0|rs232_0|RS232_In_Deserializer|comb~2_combout\ & 
-- (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datad => \u0|rs232_0|RS232_In_Deserializer|comb~2_combout\,
	combout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\);

-- Location: M9K_X33_Y30_N0
\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Project_uart:u0|Project_uart_rs232_0:rs232_0|altera_up_rs232_in_deserializer:RS232_In_Deserializer|altera_up_sync_fifo:RS232_In_FIFO|scfifo:Sync_FIFO|scfifo_4741:auto_generated|a_dpfifo_nu31:dpfifo|altsyncram_di81:FIFOram|ALTSYNCRAM",
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
	portawe => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	portbre => VCC,
	clk0 => \clk_50M~inputclkctrl_outclk\,
	clk1 => \clk_50M~inputclkctrl_outclk\,
	ena0 => \u0|rs232_0|RS232_In_Deserializer|comb~1_combout\,
	portadatain => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y30_N12
\u0|rs232_0|readdata~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~0_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|read_interrupt_en~q\)) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datac => \u0|rs232_0|read_interrupt_en~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	combout => \u0|rs232_0|readdata~0_combout\);

-- Location: LCCOMB_X36_Y30_N8
\u0|rs232_0|readdata[18]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata[18]~1_combout\ = (\control_uart_chipselect~input_o\) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \control_uart_chipselect~input_o\,
	combout => \u0|rs232_0|readdata[18]~1_combout\);

-- Location: FF_X34_Y30_N13
\u0|rs232_0|readdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(0));

-- Location: IOIBUF_X52_Y32_N15
\control_uart_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(1),
	o => \control_uart_writedata[1]~input_o\);

-- Location: LCCOMB_X35_Y32_N20
\u0|rs232_0|write_interrupt_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|write_interrupt_en~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \control_uart_writedata[1]~input_o\,
	combout => \u0|rs232_0|write_interrupt_en~0_combout\);

-- Location: FF_X36_Y30_N9
\u0|rs232_0|write_interrupt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \u0|rs232_0|write_interrupt_en~0_combout\,
	sload => VCC,
	ena => \u0|rs232_0|read_interrupt_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|write_interrupt_en~q\);

-- Location: LCCOMB_X34_Y30_N2
\u0|rs232_0|readdata~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~2_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|write_interrupt_en~q\)) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|write_interrupt_en~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~2_combout\);

-- Location: FF_X34_Y30_N3
\u0|rs232_0|readdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~2_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(1));

-- Location: LCCOMB_X32_Y30_N8
\u0|rs232_0|readdata~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) & !\control_uart_address~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~3_combout\);

-- Location: FF_X32_Y30_N9
\u0|rs232_0|readdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~3_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(2));

-- Location: LCCOMB_X32_Y30_N10
\u0|rs232_0|readdata~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~4_combout\ = (!\control_uart_address~input_o\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	combout => \u0|rs232_0|readdata~4_combout\);

-- Location: FF_X32_Y30_N11
\u0|rs232_0|readdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~4_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(3));

-- Location: LCCOMB_X32_Y30_N4
\u0|rs232_0|readdata~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~5_combout\ = (!\control_uart_address~input_o\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	combout => \u0|rs232_0|readdata~5_combout\);

-- Location: FF_X32_Y30_N5
\u0|rs232_0|readdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~5_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(4));

-- Location: LCCOMB_X32_Y30_N14
\u0|rs232_0|readdata~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~6_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) & !\control_uart_address~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~6_combout\);

-- Location: FF_X32_Y30_N15
\u0|rs232_0|readdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~6_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(5));

-- Location: LCCOMB_X32_Y30_N20
\u0|rs232_0|readdata~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~7_combout\ = (!\control_uart_address~input_o\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6),
	combout => \u0|rs232_0|readdata~7_combout\);

-- Location: FF_X32_Y30_N21
\u0|rs232_0|readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~7_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(6));

-- Location: LCCOMB_X32_Y30_N2
\u0|rs232_0|readdata~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~8_combout\ = (!\control_uart_address~input_o\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	combout => \u0|rs232_0|readdata~8_combout\);

-- Location: FF_X32_Y30_N3
\u0|rs232_0|readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~8_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(7));

-- Location: LCCOMB_X34_Y30_N22
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~5\ : cycloneiv_lcell_comb
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

-- Location: FF_X34_Y30_N23
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

-- Location: LCCOMB_X35_Y30_N20
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~6_combout\);

-- Location: FF_X35_Y30_N21
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

-- Location: LCCOMB_X36_Y30_N24
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~7_combout\);

-- Location: FF_X36_Y30_N25
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

-- Location: LCCOMB_X34_Y30_N8
\u0|rs232_0|read_interrupt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|read_interrupt~0_combout\ = (\u0|rs232_0|read_interrupt_en~q\ & ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7)) # ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5) & 
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5),
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6),
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7),
	datad => \u0|rs232_0|read_interrupt_en~q\,
	combout => \u0|rs232_0|read_interrupt~0_combout\);

-- Location: FF_X34_Y30_N9
\u0|rs232_0|read_interrupt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|read_interrupt~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|read_interrupt~q\);

-- Location: LCCOMB_X34_Y30_N16
\u0|rs232_0|readdata~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~9_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|read_interrupt~q\ & \control_uart_address~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|read_interrupt~q\,
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~9_combout\);

-- Location: FF_X34_Y30_N17
\u0|rs232_0|readdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~9_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(8));

-- Location: LCCOMB_X35_Y31_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (((VCC) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ 
-- (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X37_Y32_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0) $ (VCC)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~9_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[0]~10\);

-- Location: FF_X35_Y31_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\);

-- Location: LCCOMB_X35_Y31_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ & 
-- ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\))))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\) # ((\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\);

-- Location: LCCOMB_X35_Y31_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\);

-- Location: FF_X35_Y31_N31
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\);

-- Location: LCCOMB_X34_Y31_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\);

-- Location: LCCOMB_X34_Y31_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5_combout\);

-- Location: LCCOMB_X34_Y31_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\))))) # (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ & (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\);

-- Location: LCCOMB_X34_Y31_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\) # 
-- ((!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~5_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\);

-- Location: FF_X34_Y31_N3
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\);

-- Location: LCCOMB_X35_Y31_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\) # (\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (((!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6_combout\);

-- Location: LCCOMB_X36_Y31_N28
\u0|rs232_0|write_fifo_write_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|write_fifo_write_en~0_combout\ = (!\control_uart_address~input_o\ & (\control_uart_write~input_o\ & (\control_uart_chipselect~input_o\ & \control_uart_byteenable[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_uart_address~input_o\,
	datab => \control_uart_write~input_o\,
	datac => \control_uart_chipselect~input_o\,
	datad => \control_uart_byteenable[0]~input_o\,
	combout => \u0|rs232_0|write_fifo_write_en~0_combout\);

-- Location: FF_X36_Y31_N29
\u0|rs232_0|write_fifo_write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|write_fifo_write_en~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|write_fifo_write_en~q\);

-- Location: LCCOMB_X35_Y31_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9_combout\ = \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ $ 
-- (((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rs232_0|write_fifo_write_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|write_fifo_write_en~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9_combout\);

-- Location: LCCOMB_X35_Y31_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6_combout\ & 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\) # 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~6_combout\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~9_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\);

-- Location: LCCOMB_X35_Y32_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\ & ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~7_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_0~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\);

-- Location: FF_X35_Y32_N23
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

-- Location: LCCOMB_X35_Y32_N16
\u0|rs232_0|RS232_Out_Serializer|transmitting_data~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\) # 
-- (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~0_combout\);

-- Location: FF_X35_Y32_N17
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

-- Location: LCCOMB_X37_Y32_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~12\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~13_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[2]~14\);

-- Location: LCCOMB_X37_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[3]~15\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y32_N13
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

-- Location: LCCOMB_X37_Y32_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~17\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y32_N15
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

-- Location: LCCOMB_X37_Y32_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5) & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[4]~18\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~19_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\);

-- Location: FF_X37_Y32_N17
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

-- Location: LCCOMB_X37_Y32_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ $ (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[5]~20\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~21_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[6]~22\);

-- Location: FF_X37_Y32_N19
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

-- Location: LCCOMB_X37_Y32_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~23\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y32_N21
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

-- Location: LCCOMB_X37_Y32_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ = (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(7),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(5),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(4),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(6),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y32_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8) $ (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[7]~24\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[8]~25_combout\);

-- Location: FF_X37_Y32_N23
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

-- Location: LCCOMB_X38_Y32_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\);

-- Location: LCCOMB_X38_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\) # (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\);

-- Location: FF_X37_Y32_N7
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

-- Location: LCCOMB_X37_Y32_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter[1]~11\ : cycloneiv_lcell_comb
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

-- Location: FF_X37_Y32_N9
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

-- Location: FF_X37_Y32_N11
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

-- Location: LCCOMB_X37_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2)) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3)) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(2),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y32_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y32_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\);

-- Location: LCCOMB_X38_Y32_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ $ 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[0]~5_combout\);

-- Location: FF_X38_Y32_N23
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

-- Location: LCCOMB_X38_Y32_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1) $ 
-- (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[1]~6_combout\);

-- Location: FF_X38_Y32_N9
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

-- Location: LCCOMB_X38_Y32_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ & 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\);

-- Location: LCCOMB_X38_Y32_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) $ (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0) & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\);

-- Location: LCCOMB_X38_Y32_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\ & 
-- (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~2_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~1_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\);

-- Location: FF_X38_Y32_N17
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2));

-- Location: LCCOMB_X38_Y32_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3) $ (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1) & \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1_combout\);

-- Location: LCCOMB_X38_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Add1~1_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~2_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[2]~4_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter[3]~7_combout\);

-- Location: FF_X38_Y32_N3
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

-- Location: LCCOMB_X38_Y32_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0)) # (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(0),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|bit_counter\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y32_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal2~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~0_combout\);

-- Location: FF_X35_Y32_N25
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

-- Location: LCCOMB_X35_Y32_N30
\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & 
-- !\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\);

-- Location: LCCOMB_X35_Y31_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ $ 
-- (((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rs232_0|write_fifo_write_en~q\)))) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|write_fifo_write_en~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\);

-- Location: FF_X35_Y31_N9
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: LCCOMB_X35_Y31_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ (((\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # ((GND))))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ 
-- (\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: FF_X35_Y31_N11
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: LCCOMB_X35_Y31_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & ((VCC)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (((VCC) # (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)))))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: FF_X35_Y31_N13
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X35_Y31_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ (((\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # ((GND))))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ 
-- (\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: FF_X35_Y31_N15
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: LCCOMB_X35_Y31_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & ((VCC)))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (((VCC) # (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)))))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (!\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: FF_X35_Y31_N17
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: LCCOMB_X35_Y31_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ (((\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\) # (VCC))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # ((GND))))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ 
-- (\u0|rs232_0|RS232_Out_Serializer|comb~0_combout\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X35_Y31_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneiv_lcell_comb
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

-- Location: FF_X35_Y31_N21
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: LCCOMB_X34_Y31_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\);

-- Location: LCCOMB_X34_Y31_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\);

-- Location: LCCOMB_X34_Y31_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~6_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\) # 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ & \u0|rs232_0|write_fifo_write_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\,
	datab => \u0|rs232_0|write_fifo_write_en~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~6_combout\);

-- Location: FF_X34_Y31_N9
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|_~6_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\);

-- Location: LCCOMB_X35_Y31_N2
\u0|rs232_0|RS232_Out_Serializer|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rs232_0|write_fifo_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \u0|rs232_0|write_fifo_write_en~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\);

-- Location: FF_X35_Y31_N19
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
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X34_Y31_N16
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~8_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (GND)
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\ = CARRY(!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~8_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\);

-- Location: LCCOMB_X34_Y31_N18
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~10_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\) # (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~9\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~10_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\);

-- Location: LCCOMB_X34_Y31_N20
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~12_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\ & VCC)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & !\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~11\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~12_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\);

-- Location: LCCOMB_X34_Y31_N22
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~14_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\) # (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~13\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~14_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\);

-- Location: LCCOMB_X34_Y31_N24
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~16_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\ & VCC)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & !\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~15\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~16_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\);

-- Location: LCCOMB_X34_Y31_N26
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~18_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\) # (GND))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~17\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~18_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\);

-- Location: FF_X34_Y31_N27
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~18_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(5));

-- Location: LCCOMB_X34_Y31_N28
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~20_combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & (!\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\ & VCC)) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\ $ (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~21\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & !\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[5]~19\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~20_combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~21\);

-- Location: FF_X34_Y31_N29
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~20_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(6));

-- Location: LCCOMB_X34_Y31_N30
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]~22_combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ $ (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	cin => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[6]~21\,
	combout => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]~22_combout\);

-- Location: FF_X34_Y31_N31
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[7]~22_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(7));

-- Location: LCCOMB_X34_Y30_N30
\u0|rs232_0|write_interrupt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|write_interrupt~0_combout\ = (\u0|rs232_0|write_interrupt_en~q\ & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(7)) # ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(5) & \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(5),
	datab => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(6),
	datac => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(7),
	datad => \u0|rs232_0|write_interrupt_en~q\,
	combout => \u0|rs232_0|write_interrupt~0_combout\);

-- Location: FF_X34_Y30_N31
\u0|rs232_0|write_interrupt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|write_interrupt~0_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|write_interrupt~q\);

-- Location: LCCOMB_X34_Y30_N10
\u0|rs232_0|readdata~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~10_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|write_interrupt~q\ & \control_uart_address~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|write_interrupt~q\,
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~10_combout\);

-- Location: FF_X34_Y30_N11
\u0|rs232_0|readdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~10_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(9));

-- Location: LCCOMB_X34_Y30_N4
\u0|rs232_0|readdata~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~11_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & !\control_uart_address~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~11_combout\);

-- Location: FF_X34_Y30_N5
\u0|rs232_0|readdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~11_combout\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(15));

-- Location: LCCOMB_X35_Y30_N24
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~0_combout\);

-- Location: FF_X35_Y30_N25
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

-- Location: FF_X34_Y31_N17
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[0]~8_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(0));

-- Location: LCCOMB_X34_Y30_N28
\u0|rs232_0|readdata~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~12_combout\ = (\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(0)))) # (!\control_uart_address~input_o\ & (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(0),
	datac => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(0),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~12_combout\);

-- Location: FF_X34_Y30_N29
\u0|rs232_0|readdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~12_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(16));

-- Location: FF_X34_Y31_N19
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[1]~10_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(1));

-- Location: LCCOMB_X35_Y30_N0
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~1_combout\);

-- Location: FF_X35_Y30_N1
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

-- Location: LCCOMB_X34_Y30_N6
\u0|rs232_0|readdata~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~13_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(1))) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(1),
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(1),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~13_combout\);

-- Location: FF_X34_Y30_N7
\u0|rs232_0|readdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~13_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(17));

-- Location: FF_X34_Y31_N21
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[2]~12_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(2));

-- Location: LCCOMB_X35_Y30_N22
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~2_combout\);

-- Location: FF_X35_Y30_N23
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

-- Location: LCCOMB_X34_Y30_N24
\u0|rs232_0|readdata~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~14_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(2))) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(2),
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(2),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~14_combout\);

-- Location: FF_X34_Y30_N25
\u0|rs232_0|readdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~14_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(18));

-- Location: LCCOMB_X35_Y30_N28
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~3_combout\);

-- Location: FF_X35_Y30_N29
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

-- Location: FF_X34_Y31_N23
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[3]~14_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(3));

-- Location: LCCOMB_X34_Y30_N14
\u0|rs232_0|readdata~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~15_combout\ = (\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(3)))) # (!\control_uart_address~input_o\ & (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(3),
	datac => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(3),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~15_combout\);

-- Location: FF_X34_Y30_N15
\u0|rs232_0|readdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~15_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(19));

-- Location: FF_X34_Y31_N25
\u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space[4]~16_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(4));

-- Location: LCCOMB_X35_Y30_N18
\u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\ = (\u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|RS232_In_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available~4_combout\);

-- Location: FF_X35_Y30_N19
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

-- Location: LCCOMB_X34_Y30_N0
\u0|rs232_0|readdata~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~16_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(4))) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(4),
	datab => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(4),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~16_combout\);

-- Location: FF_X34_Y30_N1
\u0|rs232_0|readdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~16_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(20));

-- Location: LCCOMB_X34_Y30_N26
\u0|rs232_0|readdata~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~17_combout\ = (\control_uart_address~input_o\ & (\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(5))) # (!\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(5),
	datac => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(5),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~17_combout\);

-- Location: FF_X34_Y30_N27
\u0|rs232_0|readdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~17_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(21));

-- Location: LCCOMB_X34_Y30_N20
\u0|rs232_0|readdata~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~18_combout\ = (\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(6)))) # (!\control_uart_address~input_o\ & (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(6),
	datac => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(6),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~18_combout\);

-- Location: FF_X34_Y30_N21
\u0|rs232_0|readdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~18_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(22));

-- Location: LCCOMB_X34_Y30_N18
\u0|rs232_0|readdata~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|readdata~19_combout\ = (\control_uart_address~input_o\ & ((\u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(7)))) # (!\control_uart_address~input_o\ & (\u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_In_Deserializer|fifo_read_available\(7),
	datac => \u0|rs232_0|RS232_Out_Serializer|fifo_write_space\(7),
	datad => \control_uart_address~input_o\,
	combout => \u0|rs232_0|readdata~19_combout\);

-- Location: FF_X34_Y30_N19
\u0|rs232_0|readdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|readdata~19_combout\,
	sclr => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|readdata[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|readdata\(23));

-- Location: LCCOMB_X36_Y30_N16
\u0|rs232_0|data_to_uart[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart[0]~feeder_combout\ = \u0|rs232_0|read_interrupt_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|rs232_0|read_interrupt_en~0_combout\,
	combout => \u0|rs232_0|data_to_uart[0]~feeder_combout\);

-- Location: FF_X36_Y30_N17
\u0|rs232_0|data_to_uart[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(0));

-- Location: LCCOMB_X32_Y32_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) $ (VCC)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X32_Y32_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ = ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \u0|rs232_0|write_fifo_write_en~q\)) # 
-- (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|write_fifo_write_en~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\);

-- Location: FF_X32_Y32_N1
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X32_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X32_Y32_N3
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X32_Y32_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X32_Y32_N5
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X32_Y32_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X32_Y32_N7
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X32_Y32_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X32_Y32_N9
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X32_Y32_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X32_Y32_N11
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X32_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ $ 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\);

-- Location: FF_X32_Y32_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LCCOMB_X35_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\);

-- Location: LCCOMB_X35_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~4_combout\ = ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & (!\u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\ & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\))) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|transmitting_data~q\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|all_bits_transmitted~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~4_combout\);

-- Location: FF_X35_Y32_N13
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\,
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\);

-- Location: LCCOMB_X34_Y32_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\);

-- Location: FF_X34_Y32_N5
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

-- Location: LCCOMB_X34_Y32_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

-- Location: LCCOMB_X36_Y32_N16
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ = \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0) $ (VCC)
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ = CARRY(\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => VCC,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X35_Y32_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ = ((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ & 
-- \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\)) # (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\);

-- Location: FF_X36_Y32_N17
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

-- Location: LCCOMB_X36_Y32_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\);

-- Location: FF_X36_Y32_N5
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

-- Location: LCCOMB_X36_Y32_N10
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\);

-- Location: LCCOMB_X36_Y32_N18
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1\ : cycloneiv_lcell_comb
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

-- Location: FF_X36_Y32_N19
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

-- Location: LCCOMB_X35_Y32_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\);

-- Location: FF_X35_Y32_N27
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

-- Location: LCCOMB_X35_Y32_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\);

-- Location: LCCOMB_X36_Y32_N20
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2\ : cycloneiv_lcell_comb
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

-- Location: FF_X36_Y32_N21
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

-- Location: LCCOMB_X36_Y32_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\);

-- Location: FF_X36_Y32_N1
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

-- Location: LCCOMB_X36_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\);

-- Location: LCCOMB_X36_Y32_N22
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\)) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # (GND)))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ = CARRY((!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\);

-- Location: FF_X36_Y32_N23
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

-- Location: LCCOMB_X36_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\);

-- Location: FF_X36_Y32_N13
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

-- Location: LCCOMB_X36_Y32_N6
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\);

-- Location: LCCOMB_X36_Y32_N24
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ = (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ $ (GND))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ & VCC))
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ = CARRY((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => VCC,
	cin => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	cout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\);

-- Location: FF_X36_Y32_N25
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

-- Location: LCCOMB_X36_Y32_N8
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\);

-- Location: FF_X36_Y32_N9
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

-- Location: LCCOMB_X36_Y32_N30
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\);

-- Location: LCCOMB_X36_Y32_N26
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5\ : cycloneiv_lcell_comb
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

-- Location: FF_X36_Y32_N27
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

-- Location: LCCOMB_X36_Y32_N28
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6\ : cycloneiv_lcell_comb
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

-- Location: FF_X36_Y32_N29
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

-- Location: LCCOMB_X36_Y32_N14
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datad => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\);

-- Location: LCCOMB_X35_Y32_N18
\u0|rs232_0|data_to_uart[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart[1]~feeder_combout\ = \u0|rs232_0|write_interrupt_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|rs232_0|write_interrupt_en~0_combout\,
	combout => \u0|rs232_0|data_to_uart[1]~feeder_combout\);

-- Location: FF_X35_Y32_N19
\u0|rs232_0|data_to_uart[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(1));

-- Location: IOIBUF_X38_Y41_N1
\control_uart_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(2),
	o => \control_uart_writedata[2]~input_o\);

-- Location: LCCOMB_X34_Y32_N8
\u0|rs232_0|data_to_uart~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \control_uart_writedata[2]~input_o\,
	combout => \u0|rs232_0|data_to_uart~0_combout\);

-- Location: FF_X34_Y32_N9
\u0|rs232_0|data_to_uart[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(2));

-- Location: IOIBUF_X52_Y32_N8
\control_uart_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(3),
	o => \control_uart_writedata[3]~input_o\);

-- Location: LCCOMB_X34_Y32_N6
\u0|rs232_0|data_to_uart~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~1_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \control_uart_writedata[3]~input_o\,
	combout => \u0|rs232_0|data_to_uart~1_combout\);

-- Location: FF_X34_Y32_N7
\u0|rs232_0|data_to_uart[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(3));

-- Location: IOIBUF_X52_Y32_N22
\control_uart_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(4),
	o => \control_uart_writedata[4]~input_o\);

-- Location: LCCOMB_X34_Y32_N20
\u0|rs232_0|data_to_uart~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~2_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \control_uart_writedata[4]~input_o\,
	combout => \u0|rs232_0|data_to_uart~2_combout\);

-- Location: FF_X34_Y32_N21
\u0|rs232_0|data_to_uart[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(4));

-- Location: IOIBUF_X38_Y41_N8
\control_uart_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(5),
	o => \control_uart_writedata[5]~input_o\);

-- Location: LCCOMB_X34_Y32_N26
\u0|rs232_0|data_to_uart~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~3_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \control_uart_writedata[5]~input_o\,
	combout => \u0|rs232_0|data_to_uart~3_combout\);

-- Location: FF_X34_Y32_N27
\u0|rs232_0|data_to_uart[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(5));

-- Location: IOIBUF_X31_Y41_N22
\control_uart_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(6),
	o => \control_uart_writedata[6]~input_o\);

-- Location: LCCOMB_X32_Y32_N24
\u0|rs232_0|data_to_uart~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~4_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \control_uart_writedata[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \control_uart_writedata[6]~input_o\,
	combout => \u0|rs232_0|data_to_uart~4_combout\);

-- Location: FF_X32_Y32_N25
\u0|rs232_0|data_to_uart[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(6));

-- Location: IOIBUF_X46_Y41_N8
\control_uart_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(7),
	o => \control_uart_writedata[7]~input_o\);

-- Location: LCCOMB_X37_Y32_N28
\u0|rs232_0|data_to_uart~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|data_to_uart~5_combout\ = (\control_uart_writedata[7]~input_o\ & \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_uart_writedata[7]~input_o\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \u0|rs232_0|data_to_uart~5_combout\);

-- Location: FF_X37_Y32_N29
\u0|rs232_0|data_to_uart[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \u0|rs232_0|data_to_uart~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|data_to_uart\(7));

-- Location: M9K_X33_Y32_N0
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Project_uart:u0|Project_uart_rs232_0:rs232_0|altera_up_rs232_out_serializer:RS232_Out_Serializer|altera_up_sync_fifo:RS232_Out_FIFO|scfifo:Sync_FIFO|scfifo_4741:auto_generated|a_dpfifo_nu31:dpfifo|altsyncram_di81:FIFOram|ALTSYNCRAM",
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
	portawe => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	portbre => VCC,
	clk0 => \clk_50M~inputclkctrl_outclk\,
	clk1 => \clk_50M~inputclkctrl_outclk\,
	ena0 => \u0|rs232_0|RS232_Out_Serializer|comb~0_combout\,
	portadatain => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X37_Y32_N4
\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\ = (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8) & !\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~1_combout\,
	datac => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_counter\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|Equal0~0_combout\,
	combout => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~0_combout\);

-- Location: FF_X37_Y32_N5
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

-- Location: LCCOMB_X34_Y32_N16
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7))))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\) # ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	datac => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(8),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~10_combout\);

-- Location: FF_X34_Y32_N17
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

-- Location: LCCOMB_X34_Y32_N18
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~9\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X34_Y32_N22
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\) # ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\) # 
-- (!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\);

-- Location: FF_X34_Y32_N19
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7));

-- Location: LCCOMB_X34_Y32_N0
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(7),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~8_combout\);

-- Location: FF_X34_Y32_N1
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6));

-- Location: LCCOMB_X34_Y32_N14
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(6),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~7_combout\);

-- Location: FF_X34_Y32_N15
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5));

-- Location: LCCOMB_X34_Y32_N12
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(5),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~6_combout\);

-- Location: FF_X34_Y32_N13
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4));

-- Location: LCCOMB_X34_Y32_N10
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	datab => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datad => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(4),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~5_combout\);

-- Location: FF_X34_Y32_N11
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3));

-- Location: LCCOMB_X34_Y32_N28
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	datad => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(3),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~3_combout\);

-- Location: FF_X34_Y32_N29
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2));

-- Location: LCCOMB_X34_Y32_N2
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\ = (\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0)))) # 
-- (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(2),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~1_combout\);

-- Location: FF_X34_Y32_N3
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
	ena => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1));

-- Location: LCCOMB_X34_Y32_N24
\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\ = (!\u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\ & ((\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ & 
-- (\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1))) # (!\u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\ & ((\u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rs232_0|RS232_Out_Serializer|read_fifo_en~0_combout\,
	datab => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(1),
	datac => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg\(0),
	datad => \u0|rs232_0|RS232_Out_Serializer|RS232_Out_Counters|baud_clock_rising_edge~q\,
	combout => \u0|rs232_0|RS232_Out_Serializer|data_out_shift_reg~0_combout\);

-- Location: FF_X34_Y32_N25
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

-- Location: LCCOMB_X35_Y32_N14
\u0|rs232_0|RS232_Out_Serializer|serial_data_out~0\ : cycloneiv_lcell_comb
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

-- Location: FF_X35_Y32_N15
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

-- Location: IOIBUF_X10_Y41_N1
\control_uart_byteenable[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_byteenable(1),
	o => \control_uart_byteenable[1]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\control_uart_byteenable[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_byteenable(2),
	o => \control_uart_byteenable[2]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\control_uart_byteenable[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_byteenable(3),
	o => \control_uart_byteenable[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\control_uart_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(8),
	o => \control_uart_writedata[8]~input_o\);

-- Location: IOIBUF_X52_Y11_N8
\control_uart_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(9),
	o => \control_uart_writedata[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\control_uart_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(10),
	o => \control_uart_writedata[10]~input_o\);

-- Location: IOIBUF_X5_Y41_N1
\control_uart_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(11),
	o => \control_uart_writedata[11]~input_o\);

-- Location: IOIBUF_X52_Y12_N1
\control_uart_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(12),
	o => \control_uart_writedata[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\control_uart_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(13),
	o => \control_uart_writedata[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\control_uart_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(14),
	o => \control_uart_writedata[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\control_uart_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(15),
	o => \control_uart_writedata[15]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\control_uart_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(16),
	o => \control_uart_writedata[16]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\control_uart_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(17),
	o => \control_uart_writedata[17]~input_o\);

-- Location: IOIBUF_X7_Y41_N15
\control_uart_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(18),
	o => \control_uart_writedata[18]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\control_uart_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(19),
	o => \control_uart_writedata[19]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\control_uart_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(20),
	o => \control_uart_writedata[20]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\control_uart_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(21),
	o => \control_uart_writedata[21]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\control_uart_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(22),
	o => \control_uart_writedata[22]~input_o\);

-- Location: IOIBUF_X48_Y41_N8
\control_uart_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(23),
	o => \control_uart_writedata[23]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\control_uart_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(24),
	o => \control_uart_writedata[24]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\control_uart_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(25),
	o => \control_uart_writedata[25]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\control_uart_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(26),
	o => \control_uart_writedata[26]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\control_uart_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(27),
	o => \control_uart_writedata[27]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\control_uart_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(28),
	o => \control_uart_writedata[28]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\control_uart_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(29),
	o => \control_uart_writedata[29]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\control_uart_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(30),
	o => \control_uart_writedata[30]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\control_uart_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_uart_writedata(31),
	o => \control_uart_writedata[31]~input_o\);

ww_control_uart_readdata(0) <= \control_uart_readdata[0]~output_o\;

ww_control_uart_readdata(1) <= \control_uart_readdata[1]~output_o\;

ww_control_uart_readdata(2) <= \control_uart_readdata[2]~output_o\;

ww_control_uart_readdata(3) <= \control_uart_readdata[3]~output_o\;

ww_control_uart_readdata(4) <= \control_uart_readdata[4]~output_o\;

ww_control_uart_readdata(5) <= \control_uart_readdata[5]~output_o\;

ww_control_uart_readdata(6) <= \control_uart_readdata[6]~output_o\;

ww_control_uart_readdata(7) <= \control_uart_readdata[7]~output_o\;

ww_control_uart_readdata(8) <= \control_uart_readdata[8]~output_o\;

ww_control_uart_readdata(9) <= \control_uart_readdata[9]~output_o\;

ww_control_uart_readdata(10) <= \control_uart_readdata[10]~output_o\;

ww_control_uart_readdata(11) <= \control_uart_readdata[11]~output_o\;

ww_control_uart_readdata(12) <= \control_uart_readdata[12]~output_o\;

ww_control_uart_readdata(13) <= \control_uart_readdata[13]~output_o\;

ww_control_uart_readdata(14) <= \control_uart_readdata[14]~output_o\;

ww_control_uart_readdata(15) <= \control_uart_readdata[15]~output_o\;

ww_control_uart_readdata(16) <= \control_uart_readdata[16]~output_o\;

ww_control_uart_readdata(17) <= \control_uart_readdata[17]~output_o\;

ww_control_uart_readdata(18) <= \control_uart_readdata[18]~output_o\;

ww_control_uart_readdata(19) <= \control_uart_readdata[19]~output_o\;

ww_control_uart_readdata(20) <= \control_uart_readdata[20]~output_o\;

ww_control_uart_readdata(21) <= \control_uart_readdata[21]~output_o\;

ww_control_uart_readdata(22) <= \control_uart_readdata[22]~output_o\;

ww_control_uart_readdata(23) <= \control_uart_readdata[23]~output_o\;

ww_control_uart_readdata(24) <= \control_uart_readdata[24]~output_o\;

ww_control_uart_readdata(25) <= \control_uart_readdata[25]~output_o\;

ww_control_uart_readdata(26) <= \control_uart_readdata[26]~output_o\;

ww_control_uart_readdata(27) <= \control_uart_readdata[27]~output_o\;

ww_control_uart_readdata(28) <= \control_uart_readdata[28]~output_o\;

ww_control_uart_readdata(29) <= \control_uart_readdata[29]~output_o\;

ww_control_uart_readdata(30) <= \control_uart_readdata[30]~output_o\;

ww_control_uart_readdata(31) <= \control_uart_readdata[31]~output_o\;

ww_external_uart_TXD <= \external_uart_TXD~output_o\;
END structure;


