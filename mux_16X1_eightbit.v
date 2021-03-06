module mux_16X1_eightbit(out_p_,in1,in2,in3,in4,in5,in6,in7,in8,s0,s1,s2);
output[15:0] out_p_;
input s0,s1,s2;
input[15:0] in1,in2,in3,in4,in5,in6,in7,in8;
wire[15:0] t1,t2;
mux4x1_sixteenbitmux test_1(.out(t1),.i0(in1),.i1(in2),.i2(in3),.i3(in4),.s1(s0),.s0(s1));
mux4x1_sixteenbitmux test_2(.out(t2),.i0(in5),.i1(in6),.i2(in7),.i3(in8),.s1(s0),.s0(s1));
ASSIGNMENT_12X1MUX test_3(.out_y(out_p_),.in_A(t1),.in_B(t2),.selec_S(s2));

endmodule
