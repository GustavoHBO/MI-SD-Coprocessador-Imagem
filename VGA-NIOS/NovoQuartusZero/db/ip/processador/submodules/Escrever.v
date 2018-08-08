module Escrever(
    input clock,
    input start, 
    input [31: 0] dados_in,
    input [31: 0] endereco_base,
    output reg data,
    output reg [11:0] wraddress,
    output reg wren,
    output reg done,
    output reg [31:0] testeapagar
);
   
   

    //reg [4:0] contador_iteracoes;
    reg [1:0] state = idle;
    
    //initial done = 0;
	 


    parameter [1:0] idle = 2'h0, enviar_dado = 2'h1, termina = 2'h2;

    always @(posedge clock) begin
        case(state)
            idle:
            begin 
                if (start) state <= enviar_dado;
                else state <= idle;
            end 
            enviar_dado: 
                begin
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
            idle:
            begin 
                testeapagar <= 32'b1110;
                done <= 0;
            end 
            enviar_dado:
                begin
                     testeapagar <= 32'b1010;
                     wren <= 1;
                     data <= dados_in;
                     wraddress <= endereco_base;
                end
            termina: 
                begin
                    testeapagar <= 32'b1111;
                    done <= 1;
                    data<=0;
                    wren <= 0;  
                end
        endcase
    end

endmodule