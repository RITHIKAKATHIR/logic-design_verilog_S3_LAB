module Eightbittb;
wire q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7;
reg [0:7]Q_oo;
reg clk;
Eight_bit_register obbmemory(Q_oo,clk,q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7);
initial 
  begin
   //$monitor("%b %b %b %b %b %b %b %b %b",A,q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7);
   clk=1'b1;
   Q_oo=8'b00001101;
   #10
   clk=1'b0;
   Q_oo=8'b00001001;
	clk=1'b0;
	#10
	clk=1'b1;
   Q_oo=8'b00001001;
	#10
	clk=1'b0;
   Q_oo=8'b00001101;
	clk=1'b0;
	end
endmodule

