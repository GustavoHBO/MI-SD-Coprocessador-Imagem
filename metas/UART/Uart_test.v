module Uart_test(
	input clk_50M,
	input reset,
	input button,
	input  wire        uart_ei_RXD,         //  uart_ei.RXD
	output wire        uart_ei_TXD,         //         .TXD
	input  wire        uart_ars_address,    // uart_ars.address
	input  wire        uart_ars_chipselect, //         .chipselect
	input  wire [3:0]  uart_ars_byteenable, //         .byteenable
	input  wire        uart_ars_read,       //         .read
	input  wire        uart_ars_write,      //         .write
	input  wire [31:0] uart_ars_writedata,  //         .writedata
	output wire [31:0] uart_ars_readdata,   //         .readdata
	output wire [3:0] led
);

	reg [31:0] data = 32'd4294967295;
	reg [31:0] dataReceive;
	reg [3:0] byteenable = 4'b1111;
	reg address = 1'b0;
	assign led[0] = button;
	assign led[1] = uart_ei_RXD;
	assign led[2] = uart_ei_TXD;
	 
    Project_uart u0 (
        .clk_clk             (clk_50M),             //      clk.clk
        .reset_reset_n       (reset),       			 //    reset.reset_n
        .uart_ei_RXD         (uart_ei_RXD),         //  uart_ei.RXD
        .uart_ei_TXD         (uart_ei_TXD),         //         .TXD
        .uart_ars_address    (address),    // uart_ars.address
        .uart_ars_chipselect (button), //         .chipselect
        .uart_ars_byteenable (byteenable), //         .byteenable
        .uart_ars_read       (uart_ars_read),       //         .read
        .uart_ars_write      (button),    		    //         .write
        .uart_ars_writedata  (data),				    //         .writedata
        .uart_ars_readdata   (uart_ars_readdata)    //         .readdata
    );
	 
	endmodule 