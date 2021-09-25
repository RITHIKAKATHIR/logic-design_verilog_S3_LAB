module INVERTER_B_MOD(out,in);
output out;
input in;
reg out; 
always@(in)
 begin 
  out=~in;
 end
 
 
endmodule 