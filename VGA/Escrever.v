module Escrever(
    input clock,
    input start, 
    output reg data,
    output reg [11:0] wraddress,
    output reg wren,
    output reg done
);
    reg [11:0] contador = 0;
    reg [1:0] state = enviar_dado;
     
                               
    

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
                    if(contador<4095) begin
                        contador <= contador + 1;
                        state <= enviar_dado;
                    end else begin
                        contador <= 0;
                        state <= termina;
                    end
                end
            termina:
                begin

                end
        endcase
    end

    always @(state) begin
        case(state)
            enviar_dado:
                begin
                     data <= 1;
                     wren <= 1;
                     wraddress <= contador;
                end
            termina: 
                begin
                    done <= 1;
                    data<=0;
                    wren <= 0;
                end
        endcase
    end

endmodule