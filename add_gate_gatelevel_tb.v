`timescale 1ns/1ps

module add_gate_gatelevel_tb;
reg a,b;
wire y;


add_gate_gatelevel gateand(.a(a),.b(b),.y(y));
initial
begin 
a=0; b=0;
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
end

endmodule 