module divisor_clock(
    clk, 
    clk_out
);

input clk;
reg clk_in;
reg [0: 1] contador = 0;
output clk_out;


always @ (posedge clk) begin 
    if (contador == 2'd2) begin 
        clk_out <= ~clk_out;
        contador <= 2'd0;
    end 
    else begin 
        contador <= contador + 1;
    end
end 

endmodule 