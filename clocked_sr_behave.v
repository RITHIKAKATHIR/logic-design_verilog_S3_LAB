module clocked_sr_behave(enable, set, reset, q_out,q_bar);
input enable, set, reset;
output reg q_out, q_bar;
reg i, j;

always@(enable, set, reset)
 begin
   i=~(enable&set);
   j=~(enable&reset);
   q_bar=~(j&q_out);
   q_out=~(i&q_bar);
 end
endmodule
