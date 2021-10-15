module carry_select_adder_4bit_slice(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
 
wire [3:0] s0,s1,c0,c1;
 
full_adder rca1(a[0],b[0],1'b0,s0[0],c0[0]);
full_adder ca1(a[1],b[1],c0[0],s0[1],c0[1]);
full_adder rca12(a[2],b[2],c0[1],s0[2],c0[2]);
full_adder rca13(a[3],b[3],c0[2],s0[3],c0[3]);

full_adder rca14(a[0],b[0],1'b1,s1[0],c1[0]);
full_adder rca15(a[1],b[1],c1[0],s1[1],c1[1]);
full_adder rca16(a[2],b[2],c1[1],s1[2],c1[2]);
full_adder rca17(a[3],b[3],c1[2],s1[3],c1[3]);
 

 
mux2X1 mux_01(sum[0],s0[0],s1[0],cin);
mux2X1 mux_02(sum[1],s0[1],s1[1],cin);
mux2X1 mux_03(sum[2],s0[2],s1[2],cin);
mux2X1 mux_04(sum[3],s0[3],s1[3],cin);

mux2X1 mux_last(cout,c0[3],c1[3],cin);

endmodule
