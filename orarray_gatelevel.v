module orarray_gatelevel(y,a,b);
output[18:3] y;
input[18:3] a;
input[18:3] b;

or array_of_or[18:3](y,a,b);


endmodule
