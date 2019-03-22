vlog Control_Unit.v  ALU_Control.v toptb.v top_control.v 

vsim -novopt work.toptb


view wave


add wave sim:/toptb/*


run 1000ns