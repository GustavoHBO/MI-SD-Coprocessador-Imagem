module Coprocessor(clk_50M, reset);
	
	input clk_50M, reset;

	ProjectNiosII processor (
			  .clk_clk       (clk_50M),       //   clk.clk
			  .reset_reset_n (reset)  // reset.reset_n
		 );
endmodule