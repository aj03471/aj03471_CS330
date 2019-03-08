vlog tb.v adder.v instructionMemory.v Instruction_Fetch.v
 

vsim -novopt work.tb


view wave


add wave sim:/tb/*


run 1000ns