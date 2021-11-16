module dflipflopp_iv(d_in,clr,clk,present,q_out, q_bar);
input d_in,present,clr,clk;
output q_out,q_bar;
wire term, term1,term2;
dlatchsync onbbjj(d_in,clr,clk,present,term,term1);
dlatchsync onngll(term,clr,clk,present,q_out);
assign term2=~q_out;
assign q_bar=term2;
endmodule

