module d_flip_flop(d_in,prst,clr,clk,q_1,q_bar_1);
input d_in,prst,clr,clk;
output q_1,q_bar_1;
wire q,q_bar;
wire neg_prst,term;
not(neg_prst,prst);
and(term,clr,clk,d_in);
or(q,neg_prst,term);
wire neg_clr,neg_d;
not(neg_clr,clr);
not(neg_d,d_in);
wire term1;
and(term1,prst,clk,neg_d);
or(q_bar,neg_clr,term1);
wire ee;
nand obj(ee,q,prst,q_bar);

dlatch_async obbhjjj(ee,clr,clk,prst,q_1,q_bar_1);

endmodule

