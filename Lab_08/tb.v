module tb
(
	
);
	reg clk;
	reg reset;
	wire [31:0] Instruction;

	
        Instruction_Fetch fet
	(
		.clk(clk),
		.reset(reset),
                .Instruction(Instruction)
	);
	
        
	initial

		clk = 1'd0;

         always
         #5 clk=~clk;
         initial
                 begin
		reset = 1'd1;
	   #10 reset=1'b0;

        #20 reset=1'b1;

          


		
	end
           
          
	
	endmodule
