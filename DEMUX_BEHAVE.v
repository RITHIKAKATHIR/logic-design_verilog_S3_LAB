module DEMUX_BEHAVE(y_out,y_out_1,in_y_,in_selec);


output reg y_out,y_out_1;
input in_y_;
input in_selec;
always@(in_y_ or in_selec)
begin
  y_out=~((~(in_y_&(~(in_selec&in_selec))))&(~(in_y_&(~(in_selec&in_selec)))));
  y_out_1=~((~(in_y_&in_selec))&(~(in_y_&in_selec)));
end

endmodule
