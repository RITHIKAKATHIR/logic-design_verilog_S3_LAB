module Eight_bit_register(Q_oo,clk,q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7);
input[0:7] Q_oo;
input clk;
output wire q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7;
wire qb0,qb1,qb2,qb3,qb4,qb5,qb6,qb7;
reg d0,d1,d2,d3,d4,d5,d6,d7;
dflipflop_reg obj0(d0,clk,q_0,qb0);
dflipflop_reg obj1(d1,clk,q_1,qb1);
dflipflop_reg obj2(d2,clk,q_2,qb2);
dflipflop_reg obj3(d3,clk,q_3,qb3);
dflipflop_reg obj4(d4,clk,q_4,qb4);
dflipflop_reg obj5(d5,clk,q_5,qb5);
dflipflop_reg obj6(d6,clk,q_6,qb6);
dflipflop_reg obj7(d7,clk,q_7,qb7);
always@(posedge clk)
 if(clk)
  begin
   d0=Q_oo[0];
	d1=Q_oo[1];
   d2=Q_oo[2];
	d3=Q_oo[3];
	d4=Q_oo[4];
	d5=Q_oo[5];
	d6=Q_oo[6];
	d7=Q_oo[7];
	end
 endmodule
 
	
