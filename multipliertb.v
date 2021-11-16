module multipliertb;
reg [3:0]A_in,B_in;
wire[7:0] result_out;
signed_multiplier obj(.A_in(A_in),.B_in(B_in),.result_out(result_out));
initial 
 begin
    A_in=4'b0000;B_in=4'b0001;
#10 A_in=4'b0001;B_in=4'b0011;
#10 A_in=4'b0010;B_in=4'b0101;
#10 A_in=4'b0100;B_in=4'b1001;
#10 A_in=4'b1000;B_in=4'b0111;
#10 A_in=4'b1100;B_in=4'b1101;
#10 A_in=4'b0011;B_in=4'b1111;
#10 A_in=4'b0110;B_in=4'b1111;
#10 A_in=4'b0101;B_in=4'b0111;
#10 A_in=4'b1010;B_in=4'b0111;
#10 A_in=4'b0111;B_in=4'b1101;
#10 A_in=4'b1110;B_in=4'b0001;
#10 A_in=4'b1011;B_in=4'b1001;
#10 A_in=4'b1101;B_in=4'b0000;
#10 A_in=4'b1111;B_in=4'b0101;
#10 A_in=4'b0100;B_in=4'b0111;
#10 A_in=4'b0001;B_in=4'b0101;
#10 A_in=4'b1000;B_in=4'b1011;
#10 A_in=4'b0110;B_in=4'b1101;
#10 A_in=4'b1100;B_in=4'b0011;
#10 A_in=4'b0001;B_in=4'b1001;
#10 A_in=4'b0110;B_in=4'b0101;
#10 A_in=4'b1111;B_in=4'b1111;
 end
 
 endmodule
 