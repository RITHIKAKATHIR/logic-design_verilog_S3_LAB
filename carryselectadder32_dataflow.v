module carryselectadder32_dataflow(sum,carryout,in1,in2);
output[31:0] sum;
output carryout;
input[31:0] in1,in2;
wire carry_0,carry_1,carry_2,carry_3,carry_4,carry_5,carry_6;
wire[3:0] s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
wire[3:0] c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14;
assign sum[0]=in1[0] ^ in2[0] ^ 1'b0;
assign c0[0]=(in1[0] & in2[0])|(in1[0] & 1'b0)|(in2[0] & 1'b0);
assign sum[1]=in1[1] ^ in2[1] ^ c0[0];
assign c0[1]=(in1[1] & in2[1])|(in1[1] & c0[0])|(in2[1] & c0[0]);
assign sum[2]=in1[2] ^ in2[2] ^ c0[1];
assign c0[2]=(in1[2] & in2[2])|(in1[2] & c0[1])|(in2[2] & c0[1]);
assign sum[3]=in1[3] ^ in2[3] ^ c0[2];
assign c0[3]=(in1[3] & in2[3])|(in1[3] & c0[2])|(in2[3] & c0[2]);

assign s1[0]=in1[4] ^ in2[4] ^ 1'b0;
assign c1[0]=(in1[4] & in2[4])|(in1[4] & 1'b0)|(in2[4] & 1'b0);
assign s1[1]=in1[5] ^ in2[5] ^ c1[0];
assign c1[1]=(in1[5] & in2[5])|(in1[5] & c1[0])|(in2[5] & c1[0]);
assign s1[2]=in1[6] ^ in2[6] ^ c1[1];
assign c1[2]=(in1[6] & in2[6])|(in1[6] & c1[1])|(in2[6] & c1[1]);
assign s1[3]=in1[7] ^ in2[7] ^ c1[2];
assign c1[3]=(in1[7] & in2[7])|(in1[7] & c1[2])|(in2[7] & c1[2]);

assign s2[0]=in1[4] ^ in2[4] ^ 1'b1;
assign c2[0]=(in1[4] & in2[4])|(in1[4] & 1'b1)|(in2[4] & 1'b1);
assign s2[1]=in1[5] ^ in2[5] ^ c2[0];
assign c2[1]=(in1[5] & in2[5])|(in1[5] & c2[0])|(in2[5] & c2[0]);
assign s2[2]=in1[6] ^ in2[6] ^ c2[1];
assign c2[2]=(in1[6] & in2[6])|(in1[6] & c2[1])|(in2[6] & c2[1]);
assign s2[3]=in1[7] ^ in2[7] ^ c2[2];
assign c2[3]=(in1[7] & in2[7])|(in1[7] & c2[2])|(in2[7] & c2[2]);

assign s3[0]=in1[8] ^ in2[8] ^ 1'b0;
assign c3[0]=(in1[8] & in2[8])|(in1[8] & 1'b0)|(in2[8] & 1'b0);
assign s3[1]=in1[9] ^ in2[9] ^ c3[0];
assign c3[1]=(in1[9] & in2[9])|(in1[9] & c3[0])|(in2[9] & c3[0]);
assign s3[2]=in1[10] ^ in2[10] ^ c3[1];
assign c3[2]=(in1[10] & in2[10])|(in1[10] & c3[1])|(in2[10] & c3[1]);
assign s3[3]=in1[11] ^ in2[11] ^ c3[2];
assign c3[3]=(in1[11] & in2[11])|(in1[11] & c3[2])|(in2[11] & c3[2]);

assign s4[0]=in1[8] ^ in2[8] ^ 1'b1;
assign c4[0]=(in1[8] & in2[8])|(in1[8] & 1'b1)|(in2[8] & 1'b1);
assign s4[1]=in1[9] ^ in2[9] ^ c4[0];
assign c4[1]=(in1[9] & in2[9])|(in1[9] & c4[0])|(in2[9] & c4[0]);
assign s4[2]=in1[10] ^ in2[10] ^ c4[1];
assign c4[2]=(in1[10] & in2[10])|(in1[10] & c4[1])|(in2[10] & c4[1]);
assign s4[3]=in1[11] ^ in2[11] ^ c4[2];
assign c4[3]=(in1[11] & in2[11])|(in1[11] & c4[2])|(in2[11] & c4[2]);

assign s5[0]=in1[12] ^ in2[12] ^ 1'b0;
assign c5[0]=(in1[12] & in2[12])|(in1[12] & 1'b0)|(in2[12] & 1'b0);
assign s5[1]=in1[13] ^ in2[13] ^ c5[0];
assign c5[1]=(in1[13] & in2[13])|(in1[13] & c5[0])|(in2[13] & c5[0]);
assign s5[2]=in1[14] ^ in2[14] ^ c5[1];
assign c5[2]=(in1[14] & in2[14])|(in1[14] & c5[1])|(in2[14] & c5[1]);
assign s5[3]=in1[15] ^ in2[15] ^ c5[2];
assign c5[3]=(in1[15] & in2[15])|(in1[15] & c5[2])|(in2[15] & c5[2]);

assign s6[0]=in1[12] ^ in2[12] ^ 1'b1;
assign c6[0]=(in1[12] & in2[12])|(in1[12] & 1'b1)|(in2[12] & 1'b1);
assign s6[1]=in1[13] ^ in2[13] ^ c6[0];
assign c6[1]=(in1[13] & in2[13])|(in1[13] & c6[0])|(in2[13] & c6[0]);
assign s6[2]=in1[14] ^ in2[14] ^ c6[1];
assign c6[2]=(in1[14] & in2[14])|(in1[14] & c6[1])|(in2[14] & c6[1]);
assign s6[3]=in1[15] ^ in2[15] ^ c6[2];
assign c6[3]=(in1[15] & in2[15])|(in1[15] & c6[2])|(in2[15] & c6[2]);

assign s7[0]=in1[16] ^ in2[16] ^ 1'b0;
assign c7[0]=(in1[16] & in2[16])|(in1[16] & 1'b0)|(in2[16] & 1'b0);
assign s7[1]=in1[17] ^ in2[17] ^ c7[0];
assign c7[1]=(in1[17] & in2[17])|(in1[17] & c7[0])|(in2[17] & c7[0]);
assign s7[2]=in1[18] ^ in2[18] ^ c7[1];
assign c7[2]=(in1[18] & in2[18])|(in1[18] & c7[1])|(in2[18] & c7[1]);
assign s7[3]=in1[19] ^ in2[19] ^ c7[2];
assign c7[3]=(in1[19] & in2[19])|(in1[19] & c7[2])|(in2[19] & c7[2]);

assign s8[0]=in1[16] ^ in2[16] ^ 1'b1;
assign c8[0]=(in1[16] & in2[16])|(in1[16] & 1'b1)|(in2[16] & 1'b1);
assign s8[1]=in1[17] ^ in2[17] ^ c8[0];
assign c8[1]=(in1[17] & in2[17])|(in1[17] & c8[0])|(in2[17] & c8[0]);
assign s8[2]=in1[18] ^ in2[18] ^ c8[1];
assign c8[2]=(in1[18] & in2[18])|(in1[18] & c8[1])|(in2[18] & c8[1]);
assign s8[3]=in1[19] ^ in2[19] ^ c8[2];
assign c8[3]=(in1[19] & in2[19])|(in1[19] & c8[2])|(in2[19] & c8[2]);

assign s9[0]=in1[20] ^ in2[20] ^ 1'b0;
assign c9[0]=(in1[20] & in2[20])|(in1[20] & 1'b0)|(in2[20] & 1'b0);
assign s9[1]=in1[21] ^ in2[21] ^ c9[0];
assign c9[1]=(in1[21] & in2[21])|(in1[21] & c9[0])|(in2[21] & c9[0]);
assign s9[2]=in1[22] ^ in2[22] ^ c9[1];
assign c9[2]=(in1[22] & in2[22])|(in1[22] & c9[1])|(in2[22] & c9[1]);
assign s9[3]=in1[23] ^ in2[23] ^ c9[2];
assign c9[3]=(in1[23] & in2[23])|(in1[23] & c9[2])|(in2[23] & c9[2]);

assign s10[0]=in1[20] ^ in2[20] ^ 1'b1;
assign c10[0]=(in1[20] & in2[20])|(in1[20] & 1'b1)|(in2[20] & 1'b1);
assign s10[1]=in1[21] ^ in2[21] ^ c10[0];
assign c10[1]=(in1[21] & in2[21])|(in1[21] & c10[0])|(in2[21] & c10[0]);
assign s10[2]=in1[22] ^ in2[22] ^ c10[1];
assign c10[2]=(in1[22] & in2[22])|(in1[22] & c10[1])|(in2[22] & c10[1]);
assign s10[3]=in1[23] ^ in2[23] ^ c10[2];
assign c10[3]=(in1[23] & in2[23])|(in1[23] & c10[2])|(in2[23] & c10[2]);

assign s11[0]=in1[24] ^ in2[24] ^ 1'b0;
assign c11[0]=(in1[24] & in2[24])|(in1[24] & 1'b0)|(in2[24] & 1'b0);
assign s11[1]=in1[25] ^ in2[25] ^ c11[0];
assign c11[1]=(in1[25] & in2[25])|(in1[25] & c11[0])|(in2[25] & c11[0]);
assign s11[2]=in1[26] ^ in2[26] ^ c11[1];
assign c11[2]=(in1[26] & in2[26])|(in1[26] & c11[1])|(in2[26] & c11[1]);
assign s11[3]=in1[27] ^ in2[27] ^ c11[2];
assign c11[3]=(in1[27] & in2[27])|(in1[27] & c11[2])|(in2[27] & c11[2]);

assign s12[0]=in1[24] ^ in2[24] ^ 1'b1;
assign c12[0]=(in1[24] & in2[24])|(in1[24] & 1'b1)|(in2[24] & 1'b1);
assign s12[1]=in1[25] ^ in2[25] ^ c12[0];
assign c12[1]=(in1[25] & in2[25])|(in1[25] & c12[0])|(in2[25] & c12[0]);
assign s12[2]=in1[26] ^ in2[26] ^ c12[1];
assign c12[2]=(in1[26] & in2[26])|(in1[26] & c12[1])|(in2[26] & c12[1]);
assign s12[3]=in1[27] ^ in2[27] ^ c12[2];
assign c12[3]=(in1[27] & in2[27])|(in1[27] & c12[2])|(in2[27] & c12[2]);

assign s13[0]=in1[28] ^ in2[28] ^ 1'b0;
assign c13[0]=(in1[28] & in2[28])|(in1[28] & 1'b0)|(in2[28] & 1'b0);
assign s13[1]=in1[29] ^ in2[29] ^ c13[0];
assign c13[1]=(in1[29] & in2[29])|(in1[29] & c13[0])|(in2[29] & c13[0]);
assign s13[2]=in1[30] ^ in2[30] ^ c13[1];
assign c13[2]=(in1[30] & in2[30])|(in1[30] & c13[1])|(in2[30] & c13[1]);
assign s13[3]=in1[31] ^ in2[31] ^ c13[2];
assign c13[3]=(in1[31] & in2[31])|(in1[31] & c13[2])|(in2[31] & c13[2]);

assign s14[0]=in1[28] ^ in2[28] ^ 1'b1;
assign c14[0]=(in1[28] & in2[28])|(in1[28] & 1'b1)|(in2[28] & 1'b1);
assign s14[1]=in1[29] ^ in2[29] ^ c14[0];
assign c14[1]=(in1[29] & in2[29])|(in1[29] & c14[0])|(in2[29] & c14[0]);
assign s14[2]=in1[30] ^ in2[30] ^ c14[1];
assign c14[2]=(in1[30] & in2[30])|(in1[30] & c14[1])|(in2[30] & c14[1]);
assign s14[3]=in1[31] ^ in2[31] ^ c14[2];
assign c14[3]=(in1[31] & in2[31])|(in1[31] & c14[2])|(in2[31] & c14[2]);

assign carry_0=c0[3];

assign sum[7:4]=(~(carry_0) & s1) | (carry_0 & s2);
assign carry1=(~(carry_0) & c1[3]) | (carry_0 & c2[3]);

assign sum[11:8]=(~(carry_1) & s3) | (carry_1 & s4);
assign carrry2=(~(carry_1) & c3[3]) | (carry_1 & c4[3]);

assign sum[15:12]=(~(carry_2) & s5) | (carry_2 & s6);
assign car3=(~(carry_2) & c5[3]) | (carry_2 & c6[3]);

assign sum[19:16]=(~(carry_3) & s7) | (carry_3 & s8);
assign car4=(~(carry_3) & c7[3]) | (carry_3 & c8[3]);

assign sum[23:20]=(~(carry_4) & s9) | (carry_4 & s10);
assign car5=(~(carry_4) & c9[3]) | (carry_4 & c10[3]);

assign sum[27:24]=(~(carry_5) & s11) | (carry_5 & s12);
assign car6=(~(carry_5) & c11[3]) | (carry_5 & c12[3]);

assign sum[31:28]=(~(carry_6) & s13) | (carry_6 & s14);
assign carryout=(~(carry_6) & c13[3]) | (carry_6 & c14[3]);
endmodule
