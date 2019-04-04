module imm_gen
  
  (
  
  input [31:0] instruction,
  output reg[63:0] imm_data

  );
  
  always @  (instruction)
  
  begin
    if (instruction[6]==1'b0) //if data trans intr
      begin
         if (instruction[5]==1'b0) //if load in
          begin
         imm_data[11:0]=instruction[31:20];
          imm_data[63:12]={52{instruction[31]}};
         end
           
         else //if store instr
           begin
            imm_data[4:0]=instruction[11:7];
            imm_data[11:5]=instruction[31:25];
            imm_data[63:12]={52{instruction[31]}};
           end

        
      end
      
    
    
  end
  
  endmodule
