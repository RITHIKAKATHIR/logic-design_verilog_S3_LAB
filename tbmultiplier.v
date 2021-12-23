module tbmultiplier;
reg[3:0] A_in;
reg [3:0] B_in;
wire[7:0] result_out;

unsigned_multiplier obj_1(.A_in(A_in),.B_in(B_in),.result_out(result_out));

initial
  begin
    A_in=4'b0011; B_in=4'b0011;

#10 A_in=4'b0001; B_in=4'b0110;
	
#10 A_in=4'b0000; B_in=4'b0010;
	
#10 A_in=4'b0101; B_in=4'b0110;
	
#10 A_in=4'b0111; B_in=4'b0110;

#10 A_in=4'b0101; B_in=4'b0001;
	
#10 A_in=4'b0011; B_in=4'b0000;
	
#10 A_in=4'b0001; B_in=4'b0010;

#10 A_in=4'b0101; B_in=4'b0010;
	
#10 A_in=4'b1001; B_in=4'b0010;
  end

endmodule
	