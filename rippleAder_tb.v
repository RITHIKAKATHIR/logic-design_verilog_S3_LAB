module rippleAdder_tb;
reg X;
reg Y;
reg carry_Cin;
wire S;
wire Co;
ripple_carry_q3 obj(.X(X),.Y(Y),.S(S),.Co(Co));

 initial 
  begin
    X=1'b0;Y=1'b0;
    #10
	 X=1'b0;Y=1'b0;
	 #10
	 X=1'b0;Y=1'b1;
	 #10
	 X=1'b0;Y=1'b1;
	 #10
	 X=1'b1;Y=1'b0;
	 #10
	 X=1'b1;Y=1'b1;
	 #10
	 X=1'b1;Y=1'b0;
	 #10
	 X=1'b1;Y=1'b1;
  end
     
endmodule
