module sub_seq(input shift_control,input clk,input[3:0] serial_input,input clear,inout[3:0] s);
wire shift_reg_A;
wire shift_reg_B;
shift_Reg obj_A(shift_control,clk,shift_reg_A);
shift_Reg obj_B(shift_control,serial_input,shift_reg_B);
wire neg_b;
assign neg_b=~shift_reg_B;
wire q,d;
wire f1;
assign f1=serial_input&shift_control;
dflipflop_test obj_1(clear,f1,d,q);
wire c;
full_adder_data objj(neg_b,q,shift_reg_A,s,d);

endmodule
