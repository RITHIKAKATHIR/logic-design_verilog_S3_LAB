module fullAdder_tb;
reg A_input;
reg B_input;
reg Cin_input;
wire S_output;
wire Cout_output;
fuller_adder_behave obj(.A_input(A_input),.B_input(B_input),.Cin_input(Cin_input),.S_output(S_output),.Cout_output(Cout_output));

 initial 
  begin
    A_input=1'b0;B_input=1'b0;Cin_input=1'b0;
    #10
	 A_input=1'b0;B_input=1'b0;Cin_input=1'b1;
	 #10
	 A_input=1'b0;B_input=1'b1;Cin_input=1'b0;
	 #10
	 A_input=1'b0;B_input=1'b1;Cin_input=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b0;Cin_input=1'b0;
	 #10
	 A_input=1'b1;B_input=1'b1;Cin_input=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b0;Cin_input=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b1;Cin_input=1'b0;
  end
     
endmodule
