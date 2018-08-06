module Coprocessor_Edge_Detection(
	input clk_50M, // Clock da placa.
	input reset, // Reseta o sistema.
	input [11:0] address_base, // Endereço base da imagem original.
	input clk_start, // Espera o pulso para poder começar.
	input [11:0]address_out, // Endereço de destino da imagem processada.
	output reg clk_done,
	output reg clk_line,
	output reg [63:0]pixel,
	output reg [11:0]address_pixel_out,
	output [3:0]led
);


	ccpu_ram ccpu_ram (
		.clock(clk_50M),
		//.data(),
		.rdaddress(address_pixel_base),
		//.wraddress(),
		//.wren(),
		.q(q)
		);

	//Mquina de estados que executa o calculo da covoluo dos pixels.
	reg [2:0] state = 3'b000;
	reg [11:0] address_pixel_base = 12'b000000000000;// Salva o endereo base da imagem a ser calculada.
	reg [11:0] address_pixel_base_out = 12'b000000000000;// Salva o endereo base da imagem resultado.
	reg [11:0] address_pixel = 12'b000000000000;
	reg [511:0] row_1 = 512'b0;
	reg [511:0] row_2 = 512'b0;
	reg [511:0] row_3 = 512'b0;
	reg [63:0] row_out = 64'b0;
	reg [7:0] byte_r = 8'b00000000;
	reg [7:0] byte_g = 8'b00000000;
	reg [7:0] byte_b = 8'b00000000;
	reg [15:0] line_buffer = 16'b0;

	wire [31:0]q;

	parameter idle = 3'b000, start = 3'b001, getRow = 3'b011, calculate = 3'b010, finish = 3'b110, clkline = 3'b111;

	assign address_pixel_in = address_pixel_base;
	assign led[3] = clk_done;
	assign led[2:0] = q[2:0];

	reg [2:0] count_line = 3'b0;
	reg [5:0] count_position_line = 6'b000000; // Identifica a posio no registrador no qual os dados lidos sero gravados
	reg [11:0] address = 12'b000000000000;
	always @(posedge clk_50M) begin
		if(~reset) begin
			clk_done <= 1'b0;
			state <= idle;
		end else begin
			case(state)
				idle:begin
					address <= 12'b000000000000;
					count_position_line <= 6'b000000;
					count_line <= 3'b0;
					address_pixel_base <= 12'b0; // Teste
					address_pixel_out <= 12'b0;
					clk_done <= 1'b0;
					clk_line <= 1'b0;
					if(clk_start) begin //Teste colocar clk_start no lugar
						state <= start;
					end else begin
						state <= idle;
					end
				end
				start:begin
					//address_pixel_base <= address_base; // Salva o endereo base da imagem a ser calculada.
					address_pixel_base <= 12'b0; // Teste
					address_pixel_base_out <= address_out; // Salva o endereo base da imagem resultado.
					state <= getRow;
				end
				getRow:begin
					clk_line <= 1'b0;
					if(count_line < 3'b011)begin
						integer i;
						count_line <= count_line + 1;// Incrementa o contador para identificar a quantidade de linhas carregadas.
						row_1 <= row_2;
						row_2 <= row_3;
						for (i = 0; i <= 6'd63; i=i+1) begin
							row_3 <= row_3 >> 4'b1000;
							row_3[63:56] <= q;
							address_pixel_base <= address_pixel_base + 1'b1;
						end
						state <= getRow;
					end else begin
						address_pixel_out <= address_pixel_out + 1'b1;
						state <= calculate;
					end
				end
				calculate:begin
					integer i;
					clk_line <= 1'b0;
					for (i = 8; i<6'd512; i = i+8) begin
						count_position_line <= count_position_line + 1'b1;
						if((row_3[i+15-:8] + row_3[i+7-:8] + row_2[i+15-:8] - row_1[i+7-:8] - row_1[i-1-:8] - row_2[i-1-:8])<<1'b1 > 6'b111111)// Faz a convolução.
							row_out[count_position_line] <= 1'b1;
						else 
							row_out[count_position_line] <= 1'b0;
					end
					address_pixel_base_out <= address_pixel_base_out+1;// Endereco de destino da linha, escrevendo 32 bites
					count_position_line <= 1'b0;
					pixel <= row_out;
					state <= clkline;
				end
				clkline:begin
					clk_line <= 1'b1;
					if (address_pixel_base == 12'b0) begin
						state <= finish;
					end else begin
						count_line = count_line - 1'b1;
						address_pixel_base <= address_pixel_base + 1'b1;
						state <= getRow;
					end
				end
				finish:begin
					clk_line <= 1'b0;
					clk_done <= 1'b1;
					state <= idle;
				end
			endcase
		end
	end
endmodule 