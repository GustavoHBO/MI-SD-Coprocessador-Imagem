module NovoQuartus (clk, botao, led, pixel, hsync, vsync);
input clk, botao;
output [2:0] pixel;
output hsync, vsync;
output [3:0] led;
wire [3:0] out;
assign led = ~out;



 processador u0 (
        .clk_clk         (clk),         //      clk.clk
        .reset_reset_n   (1'b1),   //    reset.reset_n
        .ledout_export   (out),   //   ledout.export
		  .pixel_pixel     (pixel),     //    pixel.pixel
        .hsync_hsync     (hsync),     //    hsync.hsync
        .vsync_vsync     (vsync)      //    vsync.vsync
    );
	 
	 

endmodule 

 