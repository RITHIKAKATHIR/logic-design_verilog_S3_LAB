module inverter_dataflow_tb;

wire out;
reg in;
inverter_dataflow inverter_gate_level1 (.out(out),.in(in));

initial
begin
  in=1'b0;
  #10 in=1'b1;
  
  $monitor($time,"input=%b,output=%b",in,out);
end 


  
 endmodule 
