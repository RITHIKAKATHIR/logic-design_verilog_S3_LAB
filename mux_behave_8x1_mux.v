module mux_behave_8x1_mux(out_y_,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_selec1,in_selec2,in_selec3);
output[15:0] out_y_;
input[15:0]in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8;
input in_selec1,in_selec2,in_selec3;
wire[15:0] t1_in_out,t2_in_out;
mux_behave_16bit_4X1MUX test_1(.out_y(t1_in_out),.inp_1(in_1),.inp_2(in_2),.inp_3(in_3),.inp_4(in_4),.selec_1(in_selec1),.selec_2(in_selec2));
mux_behave_16bit_4X1MUX test_2(.out_y(t2_in_out),.inp_1(in_5),.inp_2(in_6),.inp_3(in_7),.inp_4(in_8),.selec_1(in_selec1),.selec_2(in_selec2));
MUX2X1_BEHAVE test_3(.y_out(out_y_),.in_y(t1_in_out),.in_y_(t2_in_out),.in_s(in_selec3));

endmodule


