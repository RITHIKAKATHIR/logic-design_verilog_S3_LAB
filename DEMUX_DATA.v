module DEMUX_DATA(y_out,y_out_1,in_y_,in_selec);

output y_out,y_out_1;
input in_y_;
input in_selec;
assign y_out=~((~(in_y_&(~(in_selec&in_selec))))&(~(in_y_&(~(in_selec&in_selec)))));
assign y_out_1=~((~(in_y_&in_selec))&(~(in_y_&in_selec)));
endmodule
