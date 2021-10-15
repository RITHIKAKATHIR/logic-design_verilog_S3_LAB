module fullAdder_tb;
reg input_X1;
reg input_X2;
reg carry_Cin;
wire sum_S;
wire carry_Cout;
fuller_adder_q2 obj(.input_X1(input_X1),.input_X2(input_X2),.carry_Cin(carry_Cin),.sum_S(sum_S),.carry_Cout(carry_Cout));

 initial 
  begin
    input_X1=1'b0;input_X2=1'b0;carry_Cin=1'b0;
    #10
	 input_X1=1'b0;input_X2=1'b0;carry_Cin=1'b1;
	 #10
	 input_X1=1'b0;input_X2=1'b1;carry_Cin=1'b0;
	 #10
	 input_X1=1'b0;input_X2=1'b1;carry_Cin=1'b1;
	 #10
	 input_X1=1'b1;input_X2=1'b0;carry_Cin=1'b0;
	 #10
	 input_X1=1'b1;input_X2=1'b1;carry_Cin=1'b1;
	 #10
	 input_X1=1'b1;input_X2=1'b0;carry_Cin=1'b1;
	 #10
	 input_X1=1'b1;input_X2=1'b1;carry_Cin=1'b0;
  end
     
endmodule
