`timescale 1ns/1ps
module or_gate_gateleveltb;

wire y;
reg a,b;

or_gate_gatelevel a1(y,a,b);

initial
 begin 
#10 a=0;b=0;
#10 a=1;b=0;
#10 a=0;b=1;
#10 a=1;b=1;
end

endmodule 