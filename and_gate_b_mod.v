module and_gate_b_mod(y,a,b);
output reg y;
input a,b;
always@(a,b)
 begin
 y=a&b;
 end
 
endmodule 
