module full_sub_behavetb;
wire differ, borrow;
reg a,b,b_in;
full_sub_behave obyj(.a(a),.b(b),.differ(differ),.borrow(borrow));
 initial  
  begin
   a=1'b0;b=1'b0;b_in=1'b0;
    #10
	 a=1'b0;b=1'b0;b_in=1'b1;
	 #10
	 a=1'b0;b=1'b1;b_in=1'b0;
	 #10
	 a=1'b0;b=1'b1;b_in=1'b1;
	 #10
	 a=1'b1;b=1'b0;b_in=1'b0;
	 #10
	 a=1'b1;b=1'b1;b_in=1'b1;
	 #10
	 a=1'b1;b=1'b0;b_in=1'b1;
	 #10
	 a=1'b1;b=1'b1;b_in=1'b0;
  end
     
endmodule
