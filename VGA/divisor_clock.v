module divisor_clock(
    clk, 
    clk_out
);

input clk;
reg clk_in;
reg contador = 0;
output reg clk_out;
<<<<<<< HEAD


always @ (posedge clk) begin 
    if (contador == 1'b1) begin 
        clk_out <= ~clk_out;
        contador <= 1'd0;
    end 
    else begin 
        contador <= contador + 1;
    end
=======



always @ (posedge clk) begin 
    clk_out <= ~clk_out;
>>>>>>> ac1a6383334e61969ddfbc91bd057c6723e877ec
end 

endmodule 