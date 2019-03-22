module alutb();


reg [1:0] ALUOp;
reg [3:0] Funct;
wire  [3:0] Operation;


ALU_Control au( 
  .ALUOp(ALUOp),
  . Funct( Funct),
  .Operation(Operation)
);

initial
begin

ALUOp =2'b00;

# 10 ALUOp =2'b00;

# 25 ALUOp =2'b01;


 # 26 Funct =4'b0000;
# 30 ALUOp =2'b10;

 # 35 Funct =4'b0000;
# 45 ALUOp =2'b10;

# 65 Funct =4'b0000;
# 75 ALUOp =2'b10;






end


endmodule
