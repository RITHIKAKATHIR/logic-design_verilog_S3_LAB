module fullSub_tb;
reg A;
reg B;
reg Bin;
wire D;
wire Bout;
fuller_adder_q2 obj(.A(A),.B(B),.Bin(Bin),.D(D),.Bout(Bout));

 initial 
  begin
    A=1'b0;B=1'b0;Bin=1'b0;
    #10
	 A=1'b0;B=1'b0;Bin=1'b1;
	 #10
	 A=1'b0;B=1'b1;Bin=1'b0;
	 #10
	 A=1'b0;B=1'b1;Bin=1'b1;
	 #10
	 A=1'b1;B=1'b0;Bin=1'b0;
	 #10
	 A=1'b1;B=1'b1;Bin=1'b1;
	 #10
	 A=1'b1;B=1'b0;Bin=1'b1;
	 #10
	 A=1'b1;B=1'b1;Bin=1'b0;
  end
     
endmodule
