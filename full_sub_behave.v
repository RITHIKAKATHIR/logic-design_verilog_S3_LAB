module full_sub_behave(output reg differ, borrow, input a,b,b_in);
always@(a,b,b_in)
begin
  differ=a^b^b_in;
  borrow=(~a&b)|(~(a^b)&b_in);
 end 
 endmodule
 