module mux_behave_16bit_4X1MUX(out_y,inp_1,inp_2,inp_3,inp_4,selec_1,selec_2);
output out_y;
input[15:0] inp_1,inp_2,inp_3,inp_4;
input selec_1,selec_2;

wire[15:0] t1,t2;

sixteenbit_behave_mux test_1(.y_out_(t1),.in_y1(inp_1),.in_y_1(inp_2),.in_selec(selec_1));
sixteenbit_behave_mux test_2(.y_out_(t2),.in_y1(inp_3),.in_y_1(inp_4),.in_selec(selec_1));
sixteenbit_behave_mux test_3(.y_out_(out_y),.in_y1(t1),.in_y_1(t2),.in_selec(selec_2));

endmodule
