module dflipfloptb;
reg d_in,clk_in;
wire q_out,q_bar_out;
dflipflop_test objj(d_in,clk_in,q_out,q_bar_out);
initial 
begin
#10 d_in= 'bx; clk_in=1'b0;
#10 d_in=1'b0; clk_in=1'b1;
#10 d_in=1'b1; clk_in=1'b1;
end

endmodule
