module signed_multiplier(A_in,B_in,result_out);
input[3:0] A_in;
input[3:0] B_in;
output[7:0] result_out;

assign result_out[0]=A_in[0]&B_in[0];
wire w1,w2;
assign w1=B_in[1]&A_in[0];
assign w2=B_in[0]&A_in[1];
half_adder_data obj1(w1,w2,result_out[1],carry_1);

wire w3,w41;
assign w3=B_in[2]&A_in[0];
assign w41=B_in[1]&A_in[1];
wire result_1,carry_op;
full_adder_data obj2(w3,w41,carry_1,result_1,carry_op);
wire w4;
assign w4=B_in[0]&A_in[2];
half_adder_data obj3(w4,result_1,result_out[2],carry_op1);

wire w5,w6;
assign w5=B_in[2]&A_in[1];
assign w6=~(B_in[3]&A_in[0]);
full_adder_data obj4(w5,w6,carry_op,result_2,to_fa_1);
wire w7;
assign w7=B_in[1]&A_in[2];
wire final_1,carry_1_Fa_down;
full_adder_data obj5(w7,result_2,carry_op1,final_1,carry_1_Fa_down);
wire w72;
assign w72=~(A_in[3]&B_in[0]);
wire carry_d;
half_adder_data obj6(w72,final_1,result_out[3],carry_d);

wire w8;
assign w8=B_in[3]&A_in[1];
wire red_result,red_carry;
full_adder_data obj7(w8,1,to_fa_1,red_result,red_carry);

wire w9;
assign w9=A_in[2]&B_in[2];
wire carry_final_4,final_4;
full_adder_data obj8(w9,red_result,carry_1_Fa_down,final_4,carry_final_4);
wire w10;
assign w10=~(A_in[3]&B_in[1]);
wire to_result_5;
full_adder_data obj9(final_4,w10,carry_d,result_out[4],to_result_5);

wire w11;
assign w11=~(B_in[3]&A_in[2]);
wire final_5,final_5_carry;
full_adder_data obj10(w11,red_carry,final_5,final_5_carry);
wire w12;
assign w12=~(B_in[2]&A_in[3]);
wire to_result_6;
full_adder_data obj11(w12,final_5,to_result_5,result_out[5],to_result_6);

wire w13;
assign w13=B_in[3]&A_in[3];
wire to_result_7;
full_adder_data obj12(w13,final_5_carry,to_result_6,result_out[6],to_result_7);
wire kko,kko_carry;
half_adder_data obj13(1,to_result_7,kko,kko_carry);
assign result_out[7]=kko;

endmodule





