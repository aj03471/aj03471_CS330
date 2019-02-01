module Mux


(
input [63:0] in_a, in_b,

input sel,

output reg [63:0] m_out

);


always @ (sel or in_a or in_b)

 begin
    if (sel == 1'b0) 
      
      m_out = in_a;
      
    else   
                                               
      m_out = in_b;
      
 end
 
 endmodule
 
