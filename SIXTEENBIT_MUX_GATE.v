module SIXTEENBIT_MUX_GATE(y_out,in_y,in_y_,in_selec);
output [15:0]y_out;
input [15:0] in_y, in_y_;
input in_selec;
wire inv_s;
wire[15:0]inter_t;
wire[15:0]inter_t2;
nand nand_1__(inv_s,in_selec,in_selec);
nand nand_2__[15:0](inter_t,in_y,inv_s);
nand nand_3__[15:0](inter_t2,in_y_,in_selec);
nand nand_op[15:0](y_out,inter_t,inter_t2);
endmodule
