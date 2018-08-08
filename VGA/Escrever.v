module Escrever(
    input clock,
    input start, 
    input [31: 0] dados_in,
    input [31: 0] endereco_base,
    output reg data,
    output reg [11:0] wraddress,
    output reg wren,
    output reg done
);
    //reg [11:0] contador_endereco;
    //reg [31: 0] buffer_dados;

	//initial contador_endereco = endereco_base[11:0]; 
   // initial buffer_dados = dados_in[31:0];


    reg [4:0] contador_iteracoes;
    reg [1:0] state = enviar_dado;
    
    initial done = 0;
	 
	 
	
    

    parameter [1:0] idle = 2'h0, enviar_dado = 2'h1, termina = 2'h2;

    always @(posedge clock) begin
        case(state)
            idle:
            begin 
                if (start) state <= enviar_dado;
                else state <= idle;
            end 
            enviar_dado: //envia 32 pixels de dado para a memoria 
                begin
                   /* if(contador_endereco<4095 && contador_iteracoes<32) begin
                        contador_endereco <= contador_endereco + 1;
                        state <= enviar_dado;
                    end else begin
                        contador_endereco <= 0;
                        state <= termina;
                    end */
                    state <= termina;
                end
            termina:
                begin
                    state <= idle;
                end
        endcase
    end

    always @(state) begin
        case(state)
            enviar_dado:
                begin
                    // contador_iteracoes <= contador_iteracoes + 1;
                     wren <= 1;
                     data <= 1;
                     wraddress <= endereco_base;
                end
            termina: 
                begin
                   // contador_iteracoes <= 0;
                    done <= 1;
                    data<=0;
                    wren <= 0;
                end
        endcase
    end

endmodule