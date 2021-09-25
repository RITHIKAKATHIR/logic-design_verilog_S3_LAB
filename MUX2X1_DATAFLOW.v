module MUX2X1_DATAFLOW(y_out,in_y,in_y_,in_s);
output y_out;
input in_y,in_y_,in_s;
assign y_out=~(~(in_y&~(in_s&in_s))&~(in_y_&in_s));

endmodule

