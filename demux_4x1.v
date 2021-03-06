module demux_4x1(out_1,out_2,out_3,out4,in_1,in_s1,in_s2);
output out_1,out_2,out_3,out4;
input in_1,in_s1,in_s2;
wire y0,y1;
DEMUX_GATE(.y_out(y0),.y_out_1(y1),.in_y_(in_1),.in_selec(in_s1));
DEMUX_GATE(.y_out(out_1),.y_out_1(out_2),.in_y_(y0),.in_selec(in_s2));
DEMUX_GATE(.y_out(out_3),.y_out_1(out4),.in_y_(y1),.in_selec(in_s2));

endmodule 
