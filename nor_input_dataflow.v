module nor_input_dataflow(y,a,b,c,d,e,f,g,h);
input a,b,c,d,e,f,g,h;
output y;
assign y=~(a|b|c|d|e|f|g|h);
endmodule
