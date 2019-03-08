module Program_Counter
(
 input [63:0] PC_in,
 output reg [63:0] PC_out,
 input clk,reset
);

always@(posedge clk or reset)
begin
	if (reset==1'b1)
		PC_out<=64'b0;
	else
		PC_out<=PC_in;
end

endmodule
