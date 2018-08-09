module Escrever(
    input clock,
	 input reset,
    input start, 
    input [31: 0] dados_in,
    input [31: 0] endereco_base,
    output reg data,
    output reg [11:0] wraddress,
    output reg wren,
    output reg done
);

    //reg [4:0] contador_iteracoes;
    reg [1:0] state;
    
    
	 
	 
	
    

    parameter [1:0] idle = 2'h0, enviar_dado = 2'h1, termina = 2'h2;

    always @(posedge clock) begin
        if (reset) 
            state <= idle;
        else begin
            case(state)
                idle:
                begin 
                    if (start) state <= enviar_dado;
                    else state <= idle;
                end 
                enviar_dado: //envia 32 pixels de dado para a memoria 
                    begin
                        state <= termina;
                    end
                termina:
                    begin
                        state <= idle;
                    end
            endcase
        end
    end

    always @(state) begin
        case(state)
            idle:
            begin
                done <= 1;
            end
            enviar_dado:
                begin
                    // contador_iteracoes <= contador_iteracoes + 1;
                   /*  wren <= 1;
                     data <= 1;
                     wraddress <= endereco_base; */
                     done <=0;
                end
            termina: 
                begin
                   // contador_iteracoes <= 0;
                   /* done <= 1;
                    data<=0;
                    wren <= 0; */
                end
        endcase
    end

endmodule