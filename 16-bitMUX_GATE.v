module sixteen_bitMUX_GATE(y_out,in_y,in_y_,in_selec);
output [15:0]y_out;
input [15:0] in_y, in_y_;
input [2:0] in_selec;
wire[2:0]inv_S;
wire[15:0]inter_t;
wire[15:0]inter_t2;
nand bit_invs[2:0](inv_S,in_selec,in_selec);
nand nand_bit[15:0](inter_t,in_y,inv_S);
nand nand_bit_1[15:0](inter_t2,in_y_,in_selec);
endmodule 
