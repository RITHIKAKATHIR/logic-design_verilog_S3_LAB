module DEMUX_1X4_BEHAVE(out_y1,out_y2,out_y3,out_y4,in_1,in_selec0,in_selec1);
output out_y1,out_y2,out_y3,out_y4;
input in_1,in_selec0,in_selec1;
wire t0,t1;

DEMUX_BEHAVE MUX1(.y_out(t0),.y_out_1(t1),.in_y_(in_1),.in_selec(in_selec0));
DEMUX_BEHAVE MUX2(.y_out(out_y1),.y_out_1(out_y2),.in_y_(t0),.in_selec(in_selec1));
DEMUX_BEHAVE MUX3(.y_out(out_y3),.y_out_1(out_y4),.in_y_(t1),.in_selec(in_selec1));

endmodule 