module unsigned_multi(A_in,B_in,result_out);
input[3:0] A_in,B_in;
output[7:0] result_out;
assign result_out[0]=A_in[0]&B_in[0];
wire t1,t2;
assign t1=B_in[1]&A_in[0];
assign t2=B_in[0]&A_in[1];
wire o_carry;
half_adder_data obj1(t1,t2,result_out[1],o_carry);

wire t_1,t_2;
assign t_1=B_in[2]&A_in[0];
assign t_2=B_in[1]&A_in[1];
wire o_carry1,r1;
full_adder_data obj2(t_1,t_2,o_carry,r1,o_carry1);
wire ww;
assign ww=A_in[2]&B_in[0];
wire o_carry12;
half_adder_data obj4(r1,ww,result_out[2],o_carry12);


wire t__1,t__2;
assign t__1=B_in[3]&A_in[0];
assign t__2=A_in[1]&B_in[2];
wire carry_11,r11;
full_adder_data obj3(t__1,t__2,o_carry1,r11,o_carry11);
wire ww1;
assign ww1=B_in[1]&&A_in[2];
wire r113,o_carry113;
full_adder_data obj3gg(r11,ww1,o_carry12,r113,o_carry113);
wire ww56;
assign ww56=B_in[0]&A_in[3];
wire o_carry132;
half_adder_data obj4hhh(r113,ww56,result_out[3],o_carry132);

wire rr;
assign rr=B_in[3]&A_in[1];
wire ha_o,o_carryha;
half_adder_data obj4fff(rr,o_carry11,ha_o,o_carryha);
wire ww1j;
assign ww1j=B_in[2]&A_in[2];
wire o_carryp;
full_adder_data obj3ew(ha_o,ww1j,o_carry113,final_1,o_carryp);
wire ww1j1;
assign ww1j1=B_in[1]&A_in[3]; 
wire o_carrypp;
full_adder_data obj3t(final_1,ww1j1,o_carry132,result_out[4],o_carrypp);

wire ww1j12;
assign ww1j12=B_in[3]&A_in[2];
wire o_carryk;
full_adder_data obj3r(o_carryha,ww1j12,o_carryp,final_1_5,o_carryk);
wire ww1k1;
assign ww1k1=A_in[3]&B_in[2];
wire o_carrypl;
wire kko;
full_adder_data obj3h(final_1_5,ww1k1,o_carrypp,kko,o_carrypl);
assign result_out[5]=kko;

wire d;
assign d=A_in[3]&B_in[3];
wire j_op;
full_adder_data object_2(o_carryk,d,o_carrypl,result_out[6],j_op);
assign result_out[7]=j_op;

endmodule

















