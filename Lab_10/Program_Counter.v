module Program_Counter
(
 input [63:0] PC_In,
 output reg [63:0] PC_Out,
 input clk,reset
);

always@(posedge clk or reset)
begin
	if (reset==1'b1)
		PC_Out<=64'b0;
	else
		PC_Out<=PC_In;
end

endmodule
