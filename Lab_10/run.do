vlog adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v imm_gen.v instruction.v Instruction_Memory.v mux.v Program_Counter.v registerfile.v RISC_V_Processor.v tb.v
 

vsim -novopt work.tb


view wave


add wave sim:/tb/*



