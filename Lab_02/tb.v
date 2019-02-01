
module tb
(

); 
        reg[63:0] in_a;
        reg[63:0] in_b;
        wire[63:0] m_out;
        reg sel; 
  Mux m1
  (
     .in_a(in_a),
     .in_b(in_b),
     .m_out(m_out),
     .sel(sel)
  );
  
  initial 
  
  sel=1'b0;
  
  always
  
  #5 sel=~sel;

  
  initial 
  begin
  in_a = 64'b0;
  in_b = 64'b1;
  end
  
  
  initial 
  
        $monitor("Time = ",$time, "---> Output = %d", m_out);
        
 endmodule
 