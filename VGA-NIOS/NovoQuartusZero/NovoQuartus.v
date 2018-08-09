module NovoQuartus (
    input clk, 
    input reset, 
    output [2:0] pixel, 
    output hsync, 
    output vsync
);

    wire wren, data;
    wire [11:0] wraddress;


    processador u0 (
        .clk_clk         (clk),         //      clk.clk
        .reset_reset_n   (1'b1),   //    reset.reset_n
        .wren_wren           (wren),           //      wren.wren
        .data_data           (data),           //      data.data
        .wraddress_wraddress (wraddress)  // wraddress.wraddress
    );


    VGADemo VGADemo(
        .clk(clk),
        .reset(reset),
        .wren(wren),
        .data(data), 
        .wraddress(wraddress),
        .pixel(pixel),
        .hsync_out(hsync),
        .vsync_out(vsync),
    );
	 
	/* wire clk_done, pixell, img_base, address_out, clk_line;
	 
	 Coprocessor_Edge_Detection Coprocessor_Edge_Detection(
     .clk_50M(clk), // Clock da placa.
     .reset(~reset), // Reseta o sistema.
     .address_base(img_base), // Endereo base da imagem original.
     //.clk_start(), // Espera o pulso para poder comear.
     .address_out(img_base), // Endereo de destino da imagem processada.
     .clk_done(clk_done),
     .clk_line(clk_line),
     .pixel(pixell),
    .address_pixel_out(address_out),
     //.led()
   );
	 */

endmodule 

 