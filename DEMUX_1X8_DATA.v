module DEMUX_1X8_DATA(out1,out2,out3,out4,out5,out6,out7,out8,in1,ins1,ins2,ins3);
output out1,out2,out3,out4,out5,out6,out7,out8;
input in1,ins1,ins2,ins3;

wire t0,t1,t2,t3,t4,t5;
DEMUX_DATA test_1(.y_out(t0),.y_out_1(t1),.in_y_(in1),.in_selec(ins1));
DEMUX_DATA test_2(.y_out(t2),.y_out_1(t3),.in_y_(t0),.in_selec(ins2));
DEMUX_DATA test_3(.y_out(t4),.y_out_1(t5),.in_y_(t1),.in_selec(ins2));

DEMUX_DATA test_4(.y_out(out1),.y_out_1(out2),.in_y_(t2),.in_selec(ins3));
DEMUX_DATA test_5(.y_out(out3),.y_out_1(out4),.in_y_(t3),.in_selec(ins3));
DEMUX_DATA test_6(.y_out(out5),.y_out_1(out6),.in_y_(t4),.in_selec(ins3));
DEMUX_DATA test_7(.y_out(out7),.y_out_1(out8),.in_y_(t5),.in_selec(ins3));

endmodule 