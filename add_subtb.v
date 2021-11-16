module add_subtb;
reg a_input,b_input,sel,c_in;
wire sum,carry_out;

initial
  begin
   a_input=0;b_input=0;sel=0;c_in=0;
	#10
	a_input=1;b_input=1;sel=0;c_in=0;
	#10
	a_input=0;b_input=1;sel=0;c_in=0;
	#10
	a_input=1;b_input=0;sel=0;c_in=0;
	#10
	 a_input=0;b_input=0;sel=1;c_in=0;
	#10
	a_input=1;b_input=1;sel=1;c_in=0;
	#10
	a_input=0;b_input=1;sel=1;c_in=0;
	#10
	a_input=1;b_input=0;sel=1;c_in=0;
	#10
	a_input=0;b_input=0;sel=0;c_in=1;
	#10
	a_input=1;b_input=1;sel=0;c_in=1;
	#10
	a_input=0;b_input=1;sel=0;c_in=1;
	#10
	a_input=1;b_input=0;sel=0;c_in=1;
	#10
	a_input=0;b_input=0;sel=1;c_in=1;
	#10
	a_input=1;b_input=1;sel=1;c_in=1;
	#10
	a_input=0;b_input=1;sel=1;c_in=1;
	#10
	a_input=1;b_input=0;sel=1;c_in=1;
	
	end
	endmodule
	
	