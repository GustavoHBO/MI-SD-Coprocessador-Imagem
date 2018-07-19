// Universidade Estadual de Feira de Santana 
// TEC499 - MI - Sistemas Digitais
// Lab 3, 2016.1
//
// Module: ALU.v
// Desc:   32-bit ALU for the MIPS150 Processor
// Inputs: 
// 	A: 32-bit value
// 	B: 32-bit value
// 	ALUop: Selects the ALU's operation 
// 						
// Outputs:
// 	Out: The chosen function mapped to A and B.

`include "Opcode.vh"
`include "ALUop.vh"

module ALU(
    input [31:0] A,B,
    input [3:0] ALUop,
    output reg [31:0] Out
);

    // Implement your ALU here, then delete this comment
	 always@(*) begin
		case(ALUop)
			`ALU_ADDU: assign Out = A + B;
			`ALU_SUBU: assign Out = A - B;
			`ALU_SLT: begin
				if ($signed(A) < $signed(B)) begin
					assign Out = 32'b1;
				end
				else begin
					assign Out = 32'b0;
				end
			end
			`ALU_SLTU: begin
				if (A < B) begin
					assign Out = 32'b1;
				end
				else begin
					assign Out = 32'b0;
				end
			end
			`ALU_AND: assign Out = A & B;
			`ALU_OR: assign Out = A | B;
			`ALU_XOR: assign Out = A ^ B;
			`ALU_LUI: assign Out = A << 16'b0;
			`ALU_SLL: assign Out = A << B;
			`ALU_SRA: assign Out = A >>> B;
			`ALU_SRL: assign Out = A >> B;
			`ALU_NOR: assign Out = ~(A|B);
		endcase
	end

//always@* Out <= A + B;
endmodule
