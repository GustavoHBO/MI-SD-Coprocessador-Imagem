//------------------------------------------------------------------------------
//	Module:		LevelToPulse
//	Desc:		This module provides a 1-cycle output based on a push button
//				raw input source.
//	Params:		This module is not parameterized.
//	Inputs:		See Lab2 document
//	Outputs:	See Lab2 document
//
//	Author:     Gustavo Henrique, Matheus Teixeira e Victor Munduruca.
//------------------------------------------------------------------------------
module	LevelToPulse(
			//------------------------------------------------------------------
			//	Clock & Reset Inputs
			//------------------------------------------------------------------
			Clock, 
			Reset,
			//------------------------------------------------------------------
			
			//------------------------------------------------------------------
			//	Inputs
			//------------------------------------------------------------------
			Level,
			//------------------------------------------------------------------
			
			//------------------------------------------------------------------
			//	Outputs
			//------------------------------------------------------------------
			Pulse
			//------------------------------------------------------------------
	);
	//--------------------------------------------------------------------------
	//	Clock & Reset Inputs
	//--------------------------------------------------------------------------
	input					Clock;	// System clock
	input					Reset;	// System reset
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	Inputs
	//--------------------------------------------------------------------------
	input					Level;
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	//	Outputs
	//--------------------------------------------------------------------------
	output		reg			Pulse;
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	//	State Encoding
	//--------------------------------------------------------------------------
	
	// place state encoding here

	parameter [1:0] 	IDLE = 2'b00,
							SOLTO = 2'b01,
							PRESSIONADO = 2'b11;

	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	Wire Declarations
	//--------------------------------------------------------------------------
	
	// place wire declarations here	
	
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//	Logic
	//--------------------------------------------------------------------------
	
	// Place you *behavioral* Verilog here
	// You may find it useful to use a case statement to describe your FSM.

	reg [1:0] state, next;

	always @(posedge Clock) begin
		if (Reset) state <= IDLE;
		else state <= next;
	end

	always @(Level) begin
		next = 2'b00;
		Pulse = 1'b0;
		case (state)
			IDLE : 
					if (Level) next = SOLTO;
					else next = IDLE;
			SOLTO: begin
					Pulse = 1'b1;
					next = PRESSIONADO;
				end
			PRESSIONADO: begin
				Pulse = 1'b0;
				if (Level) begin
					next = PRESSIONADO;
				end 
				else next = IDLE;
			end
		endcase
	end

	//--------------------------------------------------------------------------
endmodule // LevelToPulse