module tristate(in_kk,enable,out_kk);
input in_kk;
input enable;
output out_kk;
assign out_kk = enable? in_kk:1'bz;

endmodule
