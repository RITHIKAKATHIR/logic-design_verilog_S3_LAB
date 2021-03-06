module dflipflop_test(input d_in,clk_in,output q_out,q_bar_out);
wire d_bar,d_b;
wire clk_b;
not not_gate(clk_b,clk_in);
dlatch_test obj_1(d_in,clk_in,d_bar,d_b);
dlatch_test obj_2(d_bar,clk_b,q_out,q_bar_out);
endmodule
