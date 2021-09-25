module mux4X1_data(out,i0,i1,i2,i3,s1,s0);
input[15:0] i0,i1,i2,i3;
input s1,s0;
output[15:0]out;
wire[15:0] mux1,mux2;
sixteenbit_data_MUX test_mux_1(.y_out(mux1),.in_y(i0),.in_y_(i1),.in_selec(s1));
sixteenbit_data_MUX test_mux_2(.y_out(mux2),.in_y(i2),.in_y_(i3),.in_selec(s1));
sixteenbit_data_MUX test_mux_3(.y_out(out),.in_y(mux1),.in_y_(mux2),.in_selec(s0));

endmodule
