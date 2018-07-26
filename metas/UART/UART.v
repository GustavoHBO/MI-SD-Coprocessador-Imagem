module UART(
	input clk,
	input rx,
	input reset,
	output tx);

	uart u0 (
        .clk_clk                        (clk),                        //                        clk.clk
        .reset_reset_n                  (~reset),                  //                      reset.reset_n
        .rs232_0_external_interface_RXD (rx), // rs232_0_external_interface.RXD
        .rs232_0_external_interface_TXD (tx)  //                           .TXD
    );

endmodule 