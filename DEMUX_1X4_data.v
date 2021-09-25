module DEMUX_1X4_data(out_y_1,out_y_2,out_y_3,out_y_4,in_1,in_s1,in_s2);
output out_y_1,out_y_2,out_y_3,out_y_4;
input in_1,in_s1,in_s2;
wire t0,t1;

DEMUX_DATA test_1(.y_out(t0),.y_out_1(t1),.in_y_(in_1),.in_selec(in_s1));
DEMUX_DATA test_2(.y_out(out_y_1),.y_out_1(out_y_2),.in_y_(t0),.in_selec(in_s2));
DEMUX_DATA test_3(.y_out(out_y_3),.y_out_1(out_y_4),.in_y_(t1),.in_selec(in_s2));

endmodule 