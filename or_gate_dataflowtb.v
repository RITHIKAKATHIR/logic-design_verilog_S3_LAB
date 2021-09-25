module or_gate_dataflowtb;
wire y;
reg a,b;

or_gate_dataflow a1(a,b,y); 
initial 
 begin 
#10 a=0; b=0;
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
 end 

endmodule 
