module tb

(

);



	reg clk, reset, Reg_Write;

	reg [4:0] rs1,rs2,rd;

	reg [63:0] Write_Data;

	wire [63:0] Read_Data1, Read_Data2;



	registerFile regFile

	(

		.clk(clk),

		.reset(reset),

		.rs1(rs1),

		.rs2(rs2),

		.rd(rd),

		.Reg_Write(Reg_Write),

		.Write_Data(Write_Data),

		.Read_Data1(Read_Data1),

		.Read_Data2(Read_Data2)

	);



	

                 
                 

		



	


	initial

        begin
                reset = 1'b0;
                clk = 1'b0;
                rd = 5'b0;
                Write_Data = 64'd1;
                Reg_Write = 1'b1;
                rs1 = 5'b 00011;
                rs2 = 5'b 01001;
                
                #10 
                
                rs1 = 5'b 00010;
                rs2 = 5'b 00011;
                
                #5 
                rd = rs1;
                
                #10 
                reset = 1'b1;
                
                #10 
                reset = 1'b0;
                #20 rd = 5'b0;
                rs1 = 5'b 00110;
                rs2 = 5'b 00001;
                 Write_Data = 64'd0;
                 # 25Reg_Write = 1'b0;

                #20 rd = 5'b1;
                 Write_Data = 64'd1;

                  

                 
                
                
                
                                
        end
        always
          #5 clk = ~clk;
	

endmodule