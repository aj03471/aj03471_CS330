
module Instruction_Fetch
(
	input clk,reset,
	output [31:0] Instruction
);
	wire [63:0] PC_In;
	wire [63:0] PC_Out;
	adder a1
	(
		.a(PC_Out),
		.b(64'd4),
		.out(PC_In)
	);
	Program_Counter counter
	(
		.PC_in(PC_In),
		.clk(clk),
		.reset(reset),
		.PC_out(PC_Out)
	);
	instruction_Memory im
	(
		.Inst_Addr(PC_Out),
		.Instruction(Instruction)
	);

endmodule
