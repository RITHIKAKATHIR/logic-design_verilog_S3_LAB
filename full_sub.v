module full_sub(A, B, Bin, D, Bout);

input A, B, Bin;

output D, Bout;

wire p, q, r;

half_sub u4(A, B, p, q);

half_sub u5(p, Bin, D, r);

or u6(Bout,q,r);

endmodule
