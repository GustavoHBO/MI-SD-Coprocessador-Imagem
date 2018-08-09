module VGADemo(
  input clk,
  input reset,
  input dataa,
  input datab, 
  input start, 
  output reg [2:0] pixel,
  output hsync_out,
  output vsync_out,
  output result, 
  output done
);

  wire clk_25;
  wire dado_memoria;
  wire inDisplayArea;
  wire inImageArea;
  wire [9:0] CounterX;
  wire [9:0] CounterY;
  

  reg [11:0] contador_end;
// TA SEEEEEM O PINO DO PIXEL 2 -------------------------------------


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
    .inDisplayArea(inDisplayArea),
  );

  	controlador_ram controlador_ram (
	  .data(data),
	  .rdaddress(contador_end),
	  .clock(clk_25),
	  .wraddress(wraddress),
	  .wren(wren),
	  .q(dado_memoria)
	);
   	 

  wire data, wren;
  wire [11:0] wraddress; 

  MSF MSF (
	.clk(clk), 
  .reset(reset), 
  .start(start),
	.done(done),
  .wren(wren), 
  .data(data),
  .wraddress(wraddress)
);
  



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
	 
  
	 
	 

endmodule