module orarray_dataflow(y,a,b);
output[15:0] y;
input[15:0] a,b;



assign y=a|b;

endmodule
