module DEMUX_GATE(y_out,y_out_1,in_y_,in_selec);
output y_out,y_out_1;
input in_y_;
input in_selec;
wire inter_t1, inter_t2, inv_selec;
nand(inv_selec,in_selec,in_selec);
nand(inter_t1,in_y_,inv_selec);
nand(inter_t2,in_y_,in_selec);
nand(y_out,inter_t1,inter_t1);
nand(y_out_1,inter_t2,inter_t2);

endmodule

