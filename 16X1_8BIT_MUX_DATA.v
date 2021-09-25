module 16X1_8BIT_MUX_DATA(out_data_y,inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,s0,s1,s2);
output[15:0]out_data_y;
input[15:0]inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8;
input s0,s1;
wire[15:0] t1,t2;

assign
mux4X1_data test_1(.out(t1),.i0(inp1),.i1(inp2),.i2(inp3),.i3(inp4),.s1(s0),.s0(s1));
mux4X1_data test_2(.out(t2),.i0(inp5),.i1(inp6),.i2(inp7),.i3(inp8),.s1(s0),.s0(s1));
MUX2X1_DATAFLOW test_3(.y_out(out_data_y),.in_y(t1),.in_y_(t2),.in_s(s2));


endmodule 

 