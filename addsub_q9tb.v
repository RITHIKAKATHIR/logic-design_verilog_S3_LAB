module addsub_q9tb;
reg a_input,b_input,c_in;
wire sum,carry_out;
addsub_q9 obj(.a_input(a_input),.b_input(b_input),.c_in(c_in),.sum(sum),.carry_out(carry_out));
 initial 
  begin
    a_input=1'b0;b_input=1'b0;c_in=1'b0;
    #10
	 a_input=1'b0;b_input=1'b0;c_in=1'b1;
	 #10
	 a_input=1'b0;b_input=1'b1;c_in=1'b0;
	 #10
	 a_input=1'b0;b_input=1'b1;c_in=1'b1;
	 #10
	 a_input=1'b1;b_input=1'b0;c_in=1'b0;
	 #10
	 a_input=1'b1;b_input=1'b1;c_in=1'b1;
	 #10
	 a_input=1'b1;b_input=1'b0;c_in=1'b1;
	 #10
	 a_input=1'b1;b_input=1'b1;c_in=1'b0;
  end
     
endmodule
