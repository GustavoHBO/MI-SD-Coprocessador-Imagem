module VGADemo(
  input clk,
  input reset,
  output reg [2:0] pixel,
  output hsync_out,
  output vsync_out,
  output [3:0]leds
);
	wire clk_25;
  wire clk_on = clk;

  wire dado_memoria;
  wire inDisplayArea;
  wire inImageArea;
  wire [9:0] CounterX;
  wire [9:0] CounterY;
  

  reg [11:0] contador_end;
	


  divisor_clock divisor_clock(
	  .clk(clk),
		.clk_out(clk_25)
	 );	
	 
  hvsync_generator hvsync(
    .clk(clk_25),
    .vga_h_sync(hsync_out),
    .vga_v_sync(vsync_out),
    .CounterX(CounterX),
    .CounterY(CounterY),
    .inDisplayArea(inDisplayArea)
	 //.inImageArea(inImageArea)
  );

  	controlador_ram controlador_ram (
	  .data(out_pixel),
	  .rdaddress(contador_end),
	  .clock(clk_25),
	  .wraddress(wraddress),
	  .wren(wren),
	  //.wrclock(clk),
	  .q(dado_memoria)
	);
   
	wire [31:0]dat;
	wire wren;
	wire [11:0] wraddress;
	  

  always @(posedge clk_25) 
  begin 
    if (contador_end > 4095) begin
      contador_end <= 0;
    end else begin
      if (CounterX < 64 && CounterY < 64)
        contador_end <= contador_end + 1;
    end
  end


  always @(posedge clk_25)
  begin
		if(inDisplayArea) begin
			if(CounterX < 64 && CounterY < 64) begin
				if (dado_memoria == 0) begin
					pixel <= 3'b000;
				end else begin
					pixel <= 3'b111;
				end
			end
			else 
				pixel <= 3'b010;
		end else begin
			pixel <= 3'b000;
		end
  end
	 
  Escrever Escrever(
    .clock_50MHz(clk),
    .pixel(out_pixel),
    .wraddress(wraddress),
    .enable(wren),
    //.ACABOU()
    );

  // reg [11:0] img_base = 12'b0;
  // reg [11:0] img_base_out = 12'b0;
  // reg [3:0] led = 4'b1;
  // reg img_ready = 1'b0;
  // reg [63:0] pixel_row = 64'b0;
  // reg [6:0] address_out = 7'b0;
  // reg wre =1'b0;
  // assign leds = led;

  // wire clk_done;
  // wire clk_line;
  // wire [63:0]pixell;
  // wire [31:0]out_pixel;
  
  // assign out_pixel = pixell[31:0];
  // assign wraddress = img_base_out;
  // assign wren = wre;

	// Coprocessor_Edge_Detection Coprocessor_Edge_Detection(
  //   .clk_50M(clk), // Clock da placa.
  //   .reset(~reset), // Reseta o sistema.
  //   .address_base(img_base), // Endereo base da imagem original.
  //   //.clk_start(), // Espera o pulso para poder comear.
  //   .address_out(img_base), // Endereo de destino da imagem processada.
  //   .clk_done(clk_done),
  //   .clk_line(clk_line),
  //   .pixel(pixell),
  //   //.address_pixel_out(address_out),
  //   //.led()
  // );
	 
  // parameter idle = 1'b0, enviar = 1'b1;

  // always @(posedge clk_line)begin
  //   pixel_row <= pixell;
  //   wre <= 1'b1;
  //   img_base_out <= img_base_out + 1;
  //   pixel_row <= pixel_row >> 32;
  //   wre <= 1'b0;
  // end

endmodule