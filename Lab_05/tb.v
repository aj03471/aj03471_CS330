module tb
  
  (
  
  );
  
 	   reg[31:0] instruction;
	  
	   wire[4:0] rd;
	   
	   wire[2:0] funct3;
	   
	   wire[4:0] rs1;
	   
	   wire[4:0] rs2;
	   
	   wire[6:0] funct7;
	   
	   wire[6:0] opcode;
	   
	   Instruction_parser r1
    (
	  .instruction(instruction),
	  .rd(rd),
	  .funct3(funct3),
	  .rs1(rs1),
	  .rs2
	  (rs2),
	  .funct7(funct7),
	  .opcode(opcode)
	  
	
     );
  
	   
	   
	 
	  initial 
	  begin
	   instruction= 32'b11111111111100011111111110000000; //
	   
	   instruction= 32'b11111111111000011111111000000000; //
	   
	 end
	  
	 
	   
   


	  
	  
  
  
endmodule