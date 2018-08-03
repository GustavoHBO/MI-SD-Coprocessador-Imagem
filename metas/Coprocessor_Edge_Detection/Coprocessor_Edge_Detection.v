module Coprocessor_Edge_Detection(
	input clk_50M, // Clock da placa.
	input reset, // Reseta o sistema.
	input [11:0] address_base, // Endereço base da imagem original.
	input clk_start, // Espera o pulso para poder começar.
	input address_out, // Endereço de destino da imagem processada.
	output pixel,
	output [11:0]address_pixel_out,
	output [11:0]address_pixel_in
);


ccpu_ram ccpu_ram (
	.clock(),
	.data(),
	.rdaddress(),
	.wraddress(),
	.wren(),
	.q()
	);

//Máquina de estados que executa o calculo da covolução dos pixels.
reg [1:0] state = 2'b00;
reg [11:0] addres_pixel_base = 12'b000000000000;
reg [11:0] addres_pixel_base_out = 12'b000000000000;
reg [11:0] addres_pixel = 12'b000000000000;
reg [512:0] row_1 = 512'b0;
reg [512:0] row_2 = 512'b0;
reg [512:0] row_3 = 512'b0;
reg [7:0] byte_r = 8'b00000000;
reg [7:0] byte_g = 8'b00000000;
reg [7:0] byte_b = 8'b00000000;
parameter idle = 2'b00, start = 2'b01, getRow = 2'b11;

reg [11:0] address = 12'b000000000000;
always @(posedge clk_50M) begin
  if(~reset) begin
	state <= idle;
	address = 12'b000000000000;
  end else begin
	case(state)
		idle:begin
			if(clk_start) begin
				state <= start;
			end else begin
				state <= idle;
			end
		end
		start:begin
			addres_pixel_base <= address_base; // Salva o endereço base da imagem a ser calculada.
			addres_pixel_base_out <= address_out; // Salva o endereço basa da imagem resultado.
			state <= getRow;
		end
		getRow:begin

		end
	endcase
  end
end

endmodule 