vlog tb.v registerFile.v 


vsim -novopt work.tb


view wave


add wave sim:/tb/*


run 1000ns