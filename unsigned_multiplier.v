module unsigned_multiplier(clk,reset,start,finish,A_in,B_in,result_out);
parameter N=4;
input clk;
input reset;
input start;
input [N-1:0] A_in;
input [N-1:0] B_in;
output reg[2*N-1:0] result_out;
output finish;

reg[2*N-1:0] A;
reg [N-1:0] B;
reg finish;

always@(clk)
begin
 if(~reset)
   begin
	  A<=0;
	  B<=0;
	  result_out<=0;
	  finish<=1'b1;
	  end
 else
  begin
    if(start)
	    begin
	       A<=A_in;
		    B<=B_in;
	       result_out<=0;
	       finish<=0;
		 end
	else
	   begin
		   if(finish)
			 begin
			  if(B!=0)
			    begin
				   if(B[0])
					  begin
					    result_out<=result_out+A;
						end
					 B<=B>>1;
					 A<=A<<1;
					 end
					 else
					 begin
					 finish<=1'b1;
					 end
				end
		  end
	 end
end
endmodule
	  
 