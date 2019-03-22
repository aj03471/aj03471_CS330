vlog ALU_Control.v alutb.v
 

vsim -novopt work.alutb


view wave


add wave sim:/alutb/*


run 1000ns