module altb
(
	
);
	reg clk;
	reg reset;

	RISC_V_Processor rp
	(
		.clk(clk),
		.reset(reset)
	);
	
	initial
	begin
		clk = 1'd0;
		reset = 1'd0;
		#100 reset = ~ reset;
	end
	
	always
	begin
		#20 clk = ~ clk;
		
	end
	
	endmodule
