module norarray_gatelevel(y,a,b);
output[15:0] y;
input[15:0] a;
input[15:0] b;

nor array_of_nor[15:0](y,a,b);


endmodule
