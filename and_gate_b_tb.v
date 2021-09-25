
`timescale 1ns/1ps
module and_gate_b_tb;

wire y;
reg a,b;

and_get_b_mod a1(.y(y),.a(a),.b(b));




initial 
 begin
 #10 a=0;b=0;
 #10 a=1;b=0;
 #10 a=0;b=1;
 #10 a=1;b=1;
 end
 
 
endmodule 
