module DMA_Project(
	input clk_50M,
	input reset,
	input button,
	input button2,
	output [3:0]led
);
	 dma_controller dma_0 (
		.clk_clk                (clk_50M),                //         clk.clk
		.reset_reset_n          (~reset),          //       reset.reset_n
		.control_dma_address    (address),    // control_dma.address
		.control_dma_chipselect (chipselect), //            .chipselect
		.control_dma_readdata   (dma_readdata),   //            .readdata
		.control_dma_write_n    (dma_write_n),    //            .write_n
		.control_dma_writedata  (dma_writedata)   //            .writedata
	 );
	 
	reg [3:0] leds =4'b0;
	reg [1:0] count = 2'b0;
	reg [2:0] address = 3'b000;
	reg [10:0] addressMemory = 11'b0;
	reg [2:0] byteEnable = 3'b0;
	
	reg dma_chipselect;			//.chipselect
	reg [31:0] dma_readdata;   	//.readdata
	reg dma_write_n;    		//.write_n
	reg [31:0] dma_writedata;  	//.writedata
	
	assign led[2:0] = leds[2:0];
	assign led[3] = button;
	reg chipselect = 1'b0;
	
	parameter idle = 2'b01, state1 = 2'b11, state2 = 2'b10;
	reg [1:0]state = 2'b00;
	always@(clk_50M)
		if(~reset)
			state <= idle;
		else begin
			case(state)
				idle: begin
					leds[0] <= 1'b1;
					state <= state1;
				end
				state1:begin
					leds[0] <= 1'b0;
					if(button)
						state <= idle;
					else 
						state <= state1;
				end
			endcase
		end
endmodule 