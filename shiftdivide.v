module shiftdivide(data_a,start,clk,quoitent);
input[3:0] data_a;
output[3:0] quoitent;
input clk;
reg[3:0] quoitent;
input start;


if(start)
 begin
  always@(posedge clk) 
     begin
     assign quoitent=data_a>>>1;
	  end
 end
else
  begin
  assign quoitent=0;
  end
	  
endmodule 