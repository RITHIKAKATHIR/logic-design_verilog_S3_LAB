module add_sub_datatb;
reg A,B,In;
wire Res,Out;
q10_behave obj(.A(A),.B(B),.In(In),.Res(Res),.Out(Out));
 initial 
  begin
    A=1'b0;B=1'b0;In=1'b0;
    #10
	 A=1'b0;B=1'b0;In=1'b1;
	 #10
	 A=1'b0;B=1'b1;In=1'b0;
	 #10
	 A=1'b1;B=1'b0;In=1'b0;
	 #10
	 A=1'b1;B=1'b1;In=1'b1;
	 #10
	 A=1'b1;B=1'b0;In=1'b1;
	 #10
	 A=1'b1;B=1'b1;In=1'b0;
  end
     

     
endmodule
