module inverter_gate_level_testbench;

wire out;
reg in;
inverter_gate_level inverter_gate_level1 (.out(out),.in(in));

initial
begin
  in=1'b0;
  #10 in=1'b1;
end 
  
 endmodule 