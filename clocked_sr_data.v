module clocked_sr_data(enable,set, reset, q_out,q_bar);
input enable, set, reset;
output q_out,q_bar;
 wire i, j;
  assign i=~(enable&set);
  assign j=~(enable&reset);
  assign q_bar=~(j&q_out);
  assign q_out=~(i&q_bar);
endmodule
