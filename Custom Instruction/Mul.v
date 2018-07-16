module Mul(
    data_a,
    data_b, 
    result
);

input [31:0] data_a, data_b;
output [31:0] result;


wire [31:0] result = data_a * data_b; 

endmodule 