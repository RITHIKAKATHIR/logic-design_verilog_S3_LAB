module clocked_Sr_latch(enable, set, reset, q_out,q_bar);
input enable, set, reset;
output q_out, q_bar;
 wire i, j;
  nand obj(i,enable,set);
  nand obj1(j,enable,reset);
  nand obj2(q_bar,j,q_out);
  nand obj3(q_out,i,q_bar);
endmodule
