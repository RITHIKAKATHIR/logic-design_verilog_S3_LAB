module mux4x1_sixteenbitmux(out,i0,i1,i2,i3,s1,s0);
input[15:0] i0,i1,i2,i3;
input s1;
input s0;
output[15:0] out;
wire[15:0] mux1,mux2;
SIXTEENBIT_MUX_GATE mux_1(mux1,i0,i1,s1);
SIXTEENBIT_MUX_GATE mux_2(mux2,i2,i3,s1);
SIXTEENBIT_MUX_GATE mux_3(out,mux1,mux2,s0);

endmodule
