module tb
  
  (
  
  );
  
 	   reg[31:0] instruction;
	  
	   wire[63:0] im_data;
	   
	  
	   
	   Instruction_data_extractor r1
    (
	  .instruction(instruction),
	  .im_data(im_data)
	  
	  
	
     );
  
	   
	   
	 
	  
	   initial 
	   
	   begin
	   
	 
	   
	   instruction= 32'b11111111111000011111111100000000;
	   
	    instruction= 32'b11111111111000011111111100000000;
	  
	   
	   end
	   
	   endmodule