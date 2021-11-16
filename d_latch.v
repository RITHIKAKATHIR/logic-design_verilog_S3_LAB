module d_latch(input d,input en,input rst,output reg q);
always@(en or rst or d)
 if(!rst)
 q<=0;
 else
  if(en)
  q<=d;
  endmodule
  