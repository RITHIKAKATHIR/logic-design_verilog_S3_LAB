module sixteenbit_behave_mux(y_out_,in_y1,in_y_1,in_selec);
output[15:0]y_out_;
input[15:0] in_y1, in_y_1;
input in_selec;


MUX2X1_BEHAVE test_1[15:0](.y_out(y_out_),.in_y(in_y1),.in_y_(in_y_1),.in_s(in_selec));

endmodule
