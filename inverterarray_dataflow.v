
module inverterarray_dataflow(y,a);
output[15:0] y;
input[15:0] a;
assign 
  y=~a;
endmodule
