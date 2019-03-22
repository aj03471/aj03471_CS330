module toptb();


reg [6:0] Opcode;
reg [3:0] Funct;
wire [3:0] Operation;
wire Branch,MemRead,MemtoReg,MemWrite,ALUSrc,Regwrite;
wire [1:0] aluwire;




ALU_Control au( 
  .ALUOp(aluwire),
  .Funct( Funct),
  .Operation(Operation)
);

Control_Unit cmu( 
  .Opcode(Opcode),
  .Branch(Branch),
  .MemRead(MemRead),
  .MemtoReg(MemtoReg),
  
  .MemWrite(MemWrite),
  .ALUSrc(ALUSrc),
  .Regwrite(Regwrite),
  .ALUOp(aluwire)
);



initial
begin

Opcode =7'b1100011;


 Funct =4'b0000;

# 5 Funct =7'b1000;

# 5 Funct =7'b0111;
# 5 Funct =7'b0111;
# 5 Funct =7'b0110;






# 15 Opcode =7'b0110011;

 Funct =7'b1000;


# 15 Funct =7'b0111;
# 15 Funct =7'b0111;
# 15 Funct =7'b0110;


# 25 Opcode =7'b0000011;

 Funct =7'b1000;

# 25 Funct =7'b0111;
# 25 Funct =7'b0111;
# 25 Funct =7'b0110;



# 50 Opcode =7'b0100011;


Funct =7'b1000;

# 50 Funct =7'b0111;
# 50 Funct =7'b0111;
# 50 Funct =7'b0110;

# 75 Opcode =7'b1100011;

 Funct =7'b1000;

# 75 Funct =7'b0111;
# 75 Funct =7'b0111;
# 75 Funct =7'b0110;








end

endmodule
