#Compiling design modules
vlog tb.v mux.v

#no optimization

vsim -novopt work.tb

#view waves

view wave

#Adding waves

add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/q

run 250ns
