module ctb();


 reg [6:0] Opcode; 

wire Branch,MemRead,MemtoReg,MemWrite,ALUSrc,Regwrite;

wire [1:0] ALUOp;



Control_Unit cmu( 
  .Opcode(Opcode),
  .Branch(Branch),
  .MemRead(MemRead),
  .MemtoReg(MemtoReg),
  
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .Regwrite(Regwrite),
  .ALUOp(ALUOp)
);

initial
begin

Opcode =7'b1100011;




# 10 Opcode =7'b0110011;
# 25 Opcode =7'b0000011;

# 50 Opcode =7'b0100011;

# 75 Opcode =7'b1100011;

end


endmodule
