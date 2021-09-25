module INVERTER_B_MOD_tb;

wire out;
reg in;

INVERTER_B_MOD a(out,in);

initial

begin
 in=0;
 
#10 in=1;
end

endmodule
 