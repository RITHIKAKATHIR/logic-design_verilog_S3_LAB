module ASSIGNMENT_12X1MUX(out_y,in_A,in_B,selec_S);
input in_A, in_B, selec_S;
output out_y;
wire intermid_S_in, intermid_t1, intermid_t2;

nand nand_1_in(intermid_S_in,selec_S,selec_S);
nand nand_2_in1(intermid_t1,in_A,intermid_S_in);
nand nand_3_in2(intermid_t2,in_B,selec_S);
nand nand_4_final(out_y,intermid_t1,intermid_t2);

endmodule 