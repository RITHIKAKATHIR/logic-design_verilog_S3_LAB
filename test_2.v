module test_2(w7,w6,w5,w4,w3,w2,w1,w0,y2,y1,y0,z);

input w7,w6,w5,w4,w3,w2,w1,w0;

output y2,y1,y0,z;

or(y2,w7,w6,w5,w4);

or(y1,w7,w6,w2,w3);

or(y0,w7,w5,w3,w1);

or(z,w7,w6,w5,w4,w3,w2,w1,w0);

endmodule
