module and_gate_dataflow_tb;

wire y;
reg a,b;

and_gate_dataflow obj_1(a,b,y);

initial
 begin
     a=0;b=0;
 #10 a=0;b=1;
 #10 a=1;b=0;
 #10 a=1;b=1;
 end
 
 endmodule 