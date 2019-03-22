module top_control
(
input [6:0] Opcode,
input [3:0] Funct,
output [3:0] Operation,
output reg Branch,MemRead,MemtoReg,MemWrite,ALUSrc,Regwrite

);

wire [1:0] rf;

Control_Unit cmu( 
  .Opcode(Opcode),
  .Branch(Branch),
  .MemRead(MemRead),
  .MemtoReg(MemtoReg),
  
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .Regwrite(Regwrite),
  .ALUOp(rf)
);


ALU_Control au( 
  .ALUOp(rf),
  . Funct( Funct),
  .Operation(Operation)
);





	


endmodule
