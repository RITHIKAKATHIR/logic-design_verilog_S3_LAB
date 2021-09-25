module or_bmod(y,a,b);
output reg y;
input a,b;
always@(a,b)
 begin
 y=a|b;
 end
 
endmodule 
