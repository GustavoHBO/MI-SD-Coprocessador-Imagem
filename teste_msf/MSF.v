// Quartus II Verilog Template
// 4-State Mealy state machine

// A Mealy machine has outputs that depend on both the state and 
// the inputs.  When the inputs change, the outputs are updated
// immediately, without waiting for a clock edge.  The outputs
// can be written more than once per state or per clock cycle.

module MSF
(
	input	clk, reset, start,
	output reg done
);
   
	wire 	fio_reset;
	assign fio_reset = ~reset;
    wire	n_start;
	assign n_start = ~start;
	// Declare state register
	reg		[1:0]state;

	// Declare states
	parameter idle = 0, faz = 1, feito = 2, S3 = 3;

	// Determine the next state synchronously, based on the
	// current state and the input
	always @ (posedge clk or posedge fio_reset) begin
		if (fio_reset)
			state <= idle;
		else begin
			case (state)
				idle:
					if (n_start)
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

	// Determine the output based only on the current state
	// and the input (do not wait for a clock edge).
	always @ (state)
	begin
			case (state)
				idle:
				begin
					done <= 1;
				end
				faz:
					done <= 0;
			endcase
	end

endmodule
