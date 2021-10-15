module half_sub_behave(output reg difference,borrow, input a,b);
always@(borrow,a,b)
begin 
  difference=a^b;
  borrow=~(a)&b;
end
endmodule

  