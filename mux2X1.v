module mux2X1( in0,in1,sel,out);
parameter width=1; 
input [width-1:0] in0,in1;
input sel;
wire t1,t2,s0;
output [width-1:0] out;
not (s0,sel);
and (t1,in0, s0), (t0,in1,sel);
or (out,t1,t2);
endmodule
