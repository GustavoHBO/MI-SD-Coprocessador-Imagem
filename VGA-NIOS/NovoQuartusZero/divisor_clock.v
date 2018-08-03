module divisor_clock(
    clk, 
    clk_out
);

input clk;
reg clk_in;
reg contador = 0;
output reg clk_out;



always @ (posedge clk) begin 
    clk_out <= ~clk_out;
end 

endmodule 