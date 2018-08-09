// Quartus II Verilog Template
// 4-State Mealy state machine

// A Mealy machine has outputs that depend on both the state and 
// the inputs.  When the inputs change, the outputs are updated
// immediately, without waiting for a clock edge.  The outputs
// can be written more than once per state or per clock cycle.

module MSF
(
	input	clk, reset,  
    input   [31:0] dataa, 
    input   [31:0] datab,
	output 	[31:0] result, 
    input   clken, start,
    output  reg done,
	output reg  wren, data,
	output reg [31: 0] wraddress
);

	
	// Declare state register
	reg		[1:0]state;
	reg [11:0] contador;

	// Declare states
	parameter idle = 0, faz = 1, feito = 2;

	// Determine the next state synchronously, based on the
	// current state and the input
	always @ (posedge clk or posedge reset) begin
		if (reset)
			state <= idle;
		else begin
            if (clken) begin
                case (state)
                    idle:
                        if (start)
                        begin
                            state <= faz;
                        end
                        else
                        begin
                            state <= idle;
                        end
                    faz:
                    begin
                        state <= feito;
                    end
                    feito:
                    begin
                        state <= idle;
                    end 
                endcase
            end 
		end
	end

	// Determine the output based only on the current state
	// and the input (do not wait for a clock edge).
	always @ (state)
	begin
			case (state)
				idle:
				begin
					done <= 0;
					wren <= 0;
				end
				faz:
				begin 
					wren <= 1;
					data <= datab;
					wraddress <= dataa;
				end
				feito:
				begin
					wren <=0;
					done <= 1;
				end
			endcase
	end

endmodule
