module nand_dataflow(y,a,b);
output y;
input a,b;

assign y=~(a&b);

endmodule
