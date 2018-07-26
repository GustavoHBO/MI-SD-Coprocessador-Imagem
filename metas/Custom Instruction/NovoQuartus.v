module NovoQuartus (clk, led);
input clk;
output [3:0] led;
wire [3:0] out;
assign led = ~out;
processador u0 (
        .clk_clk                          (clk),                          //                       clk.clk
        .reset_reset_n                    (1'b1),                    //                     reset.reset_n
        .pio_0_external_connection_export (out)  // pio_0_external_connection.export
    );
endmodule 