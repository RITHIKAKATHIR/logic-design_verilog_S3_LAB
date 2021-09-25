module norarray_dataflow(y,a,b);
output[17:2] y;
input[17:2] a,b;
assign y=~(a|b);
endmodule
