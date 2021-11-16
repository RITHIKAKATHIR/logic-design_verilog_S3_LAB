module dlatchsync(d_in,clr,clk,present,q_out,q_bar);
input d_in,clr,clk,present;
output reg q_out;
output q_bar;
always@(d_in or clr or clk or present)
begin 
  if(present== 'bx & clr== 'bx & clk==1'b0 & d_in== 'bx)
   q_out= 'bz;
  else if(present==1'b0 & clr==1'b1 & clk==1'b1)
  q_out=1;
  else if(present==1'b1 & clr==1'b0 &clk==1'b1)
  q_out=0;
  else if(present==1'b1 & clr==1'b1 & clk==1'b1 & d_in==1'b1)
  q_out=1;
  else if(present==1'b1 & clr==1'b1 & clk==1'b1 & d_in==1'b0)
   q_out=0;
  else if(present== 'bx & clr== 'bx & clk==1'b0)
   q_out=q_out;
end

assign q_bar=~q_out;
endmodule

