module divisor_clock(
    clk, 
    clk_out
);

input clk;
reg clk_in;
reg contador = 0;
output reg clk_out;


always @ (posedge clk) begin 
    if (contador == 1'b1) begin 
        clk_out <= ~clk_out;
        contador <= 1'd0;
    end 
    else begin 
        contador <= contador + 1;
    end
end 

endmodule 