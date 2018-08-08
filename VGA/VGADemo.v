module VGADemo(
  input clk,
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
  

  //reg [11:0] contador_end;
	


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
	  .data(dat),
	  .rdaddress(contador_end),
	  .clock(clk_25),
	  .wraddress(wraddress),
	  .wren(wren),
	  .q(dado_memoria)
	);
   
	wire dat;
	wire wren;
	wire [11:0] wraddress;


	reg [32:0] endereco_base;
	reg [32: 0] dados_in;

	
	 
	Escrever Escrever(
    .clock(clk_25),
    .data(dat),
    .wraddress(wraddress),
	  .wren(wren),
	  .start(fio_start),
	  .done(done),
    .dados_in(32'b11111111111111111111111111111111),
    .endereco_base(endereco_base)
	);
  
  

  //testador de máquina de estados
 
  parameter [1:0] escreve = 2'b0, feito = 2'b1, terminou = 2'b10, estado_start = 2'b11;
  reg [1:0] estado_apagar = estado_start;
  reg fio_start;

  always @ (posedge clk_25) begin
    case (estado_apagar) 
      estado_start: 
      begin
        fio_start = 0;
        estado_apagar <= escreve;
      end
      escreve: 
      begin 
        fio_start <= 1;
        endereco_base <= endereco_base + 1;
        if (endereco_base > 4095) begin 
            estado_apagar <=terminou;
        end else begin
            if(done) estado_apagar <= feito;
            else estado_apagar <= escreve;
        end
      feito:
      begin
        done <= 0;
        estado_apagar <= estado_start;
      end
      terminou:
      begin

      end
    endcase
  end 
 /* //parameter [1:0] 
  always @(posedge clk_25) begin
    if (endereco_base < 4096) begin
      endereco_base = endereco_base + 1;
      if(endereco_base<1024) dados_in <= 32'b00000000000000000000000000000001;
      else dados_in <= 32'b00000000000000000000000000000000;
    end  else begin 
		endereco_base = 0
	 end
  end 
	*/



  always @(posedge clk_25 && start) 
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