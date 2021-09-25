module andarray_gatelvl(y,a,b);
output[15:0] y;
input[15:0] a;
input[15:0] b;

and array_of_nand[15:0](y,a,b);


endmodule
