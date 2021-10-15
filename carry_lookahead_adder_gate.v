module carry_lookahead_adder_gate(input [3:0] i_add_1,input [3:0] i_add_2,output [4:0] op_result);
wire [4:0] w_C;
wire [3:0] w_G, w_P, w_SUM;
   
full_adder full_adder_bit_0(.i_bit1(i_add_1[0]),.i_bit2(i_add_2[0]),.i_carry(w_C[0]),.o_sum(w_SUM[0]),.o_carry());
 
full_adder full_adder_bit_1
    ( 
      .i_bit1(i_add_1[1]),
      .i_bit2(i_add_2[1]),
      .i_carry(w_C[1]),
      .o_sum(w_SUM[1]),
      .o_carry()
      );
 
  full_adder full_adder_bit_2
    ( 
      .i_bit1(i_add_1[2]),
      .i_bit2(i_add_2[2]),
      .i_carry(w_C[2]),
      .o_sum(w_SUM[2]),
      .o_carry()
      );
   
  full_adder full_adder_bit_3
    ( 
      .i_bit1(i_add_1[3]),
      .i_bit2(i_add_2[3]),
      .i_carry(w_C[3]),
      .o_sum(w_SUM[3]),
      .o_carry()
      );
   
  
  and(w_G[0],i_add_1[0],i_add_2[0]);
  and(w_G[1],i_add_1[1],i_add_2[1]);
  and(w_G[2],i_add_1[2],i_add_2[2]);
  and(w_G[3],i_add_1[3],i_add_2[3]);
 
  
  or( w_P[0],i_add_1[0],i_add_2[0]);
  or(w_P[1],i_add_1[1],i_add_2[1]);
  or(w_P[2],i_add_1[2],i_add_2[2]);
  or(w_P[3],i_add_1[3],i_add_2[3]);
 
 wire t2;
 
  
  
	and ob(t2,w_P[0],0);
   or obj(w_C[1],w_G[0],t2);
	wire t3;
	and ob1(t3,w_P[1],w_C[1]);
   or obj1(w_C[2],w_G[1],t3);
	
	wire t4;
	and ob2(t4,w_P[2],w_C[2]);
   or obj2(w_C[3],w_G[2],t4);
	
	wire t5;
	and ob3(t5,w_P[3],w_C[3]);
   or obj3(w_C[4],w_G[3],t5);

   
  assign op_result = {w_C[4], w_SUM};   
 
endmodule
