module dlatch_test(input D_in,clk_in,output q_out,q_bar_out);
wire term1;
nand obj1(term1,D_in,clk_in);
wire term2;
nand obj2(term2,term1,clk_in);
nand obj3(q_out,term1,q_bar_out);
nand obj4(q_bar_out,term2,q_out);
endmodule

