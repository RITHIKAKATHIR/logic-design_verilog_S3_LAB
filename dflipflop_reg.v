module dflipflop_reg(d_in,clk,q_out,q_bar_out);
input d_in, clk;
output q_out,q_bar_out;
reg q_out,q_bar_out;
 initial 
  begin
    q_out=1'b0;
	 q_bar_out=1'b1;
  end
  
 always@(posedge clk)
   begin
	 q_out=d_in;
	 q_bar_out=~q_out;
	 end
	 
endmodule
