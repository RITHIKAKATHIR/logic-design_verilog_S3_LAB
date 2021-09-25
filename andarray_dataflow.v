module andarray_dataflow(y,a,b);
output[16:1] y;
input[16:1] a,b;
assign 
  y=a&b;
endmodule
