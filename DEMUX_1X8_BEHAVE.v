module DEMUX_1X8_BEHAVE(out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,in_1,ins_1,ins_2,ins_3);
output out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8;
input in_1,ins_1,ins_2,ins_3;
wire t0,t1,t2,t3,t4,t5;

DEMUX_BEHAVE test_1(.y_out(t0),.y_out_1(t1),.in_y_(in_1),.in_selec(ins_1));
DEMUX_BEHAVE test_2(.y_out(t2),.y_out_1(t3),.in_y_(t0),.in_selec(ins_2));
DEMUX_BEHAVE test_3(.y_out(t4),.y_out_1(t5),.in_y_(t1),.in_selec(ins_2));

DEMUX_BEHAVE test_4(.y_out(out_1),.y_out_1(out_2),.in_y_(t2),.in_selec(ins_3));
DEMUX_BEHAVE test_5(.y_out(out_3),.y_out_1(out_4),.in_y_(t3),.in_selec(ins_3));
DEMUX_BEHAVE test_6(.y_out(out_5),.y_out_1(out_6),.in_y_(t4),.in_selec(ins_3));
DEMUX_BEHAVE test_7(.y_out(out_7),.y_out_1(out_8),.in_y_(t5),.in_selec(ins_3));

endmodule  


