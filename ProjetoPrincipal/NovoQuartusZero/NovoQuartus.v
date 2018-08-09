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
	 

endmodule 

 