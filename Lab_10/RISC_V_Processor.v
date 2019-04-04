module RISC_V_Processor
(
	input clk,reset
);
	wire [63:0] PC_In;
	wire [63:0] PC_Out;
	wire [63:0] out;
	wire [63:0] out2;
	wire [31:0]instruction1; 
	wire [6:0] opcode; 
	wire [4:0] rd;
	wire [4:0]rs1;
	wire [4:0]rs2;
	wire [63:0] Read_Data1;
	wire [63:0] Read_Data2;
	wire [63:0]imm_data;
	wire [63:0] data_out;
	wire [63:0] data_out2;
	wire[3:0] operation;
	wire [63:0] result;
	wire [63:0] Read_Data;
        wire[2:0] funct3;
        wire[6:0] funct7;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire [1:0] ALUOp;
	wire MemWrite;
	wire ALUSrc;
	wire Regwrite;
	wire Zero;
	
	Adder adder1
	(
		.a(PC_Out),
		.b(64'd4),
		.out(out)
	);
	
	Adder adder2
	(
		.a(PC_Out),
		.b(imm_data>>1),
		.out(out2)
	);
	
	Program_Counter pc
	(
		.PC_In(PC_In),
		.PC_Out(PC_Out),
		.clk(clk),
		.reset(reset)
		
	);
	
	Instruction_Memory im
	(
		.Inst_Addr(PC_Out),
		.Instruction(instruction1)
	);
	
	instruction inst 
	(
		.instruction(instruction1),
		.opcode(opcode),
		.funct7(funct7),
		.rd(rd),
		.rs1(rs1),
		.rs2(rs2),
		.funct3(funct3)
	);
	
	registerFile rf
	(
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.Write_Data(data_out2),
		.clk(clk),
		.reset(reset),
		.Reg_Write(Regwrite),
		.Read_Data1(Read_Data1),
		.Read_Data2(Read_Data2)
	);
	
	imm_gen ig
	(
		.instruction(instruction1),
		.imm_data(imm_data)
	);
	
	ALU_Control ac
	(
		.ALUOp(ALUOp),
		.Funct(funct7),
		.Operation(operation)
	);
	
	ALU_64_bit ab
	(
		.a(Read_Data1),
		.b(data_out),
		.ALUop(operation),
		.Result(result),
		.CarryOut(CarryOut)
	);
	
	Data_Memory dm
	
	(
		.Mem_Addr(result),
		.Write_Data(Read_Data2),
		.clk(clk),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Read_Data(Read_Data)
	);
	
	Control_Unit cu
	(
		.Opcode(opcode),
		.ALUOp(ALUOp),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.Regwrite(Regwrite)
	);
	
	mux branch_mux
	(
		.in_a(out),
		.in_b(out2),
		.sel(Branch&CarryOut),
		.m_out(PC_In)
	);
	
	mux ALUSrc_mux
	(
		.in_a(Read_Data2),
		.in_b(imm_data),
		.sel(ALUSrc),
		.m_out(data_out)
	);	
	
	mux mux3
	(
		.in_a(Read_Data),
		.in_b(result),
		.sel(MemtoReg),
		.m_out(data_out2)
	);	
	
endmodule
	