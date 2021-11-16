module testq2(carry_in,x,y,sum,cout);
input carry_in;
input[3:0] x,y;
output reg[4:0] s;
output reg eout;
reg[4:0] inte;
output reg cout;

always@(carry_in,x,y)
 begin 
  TESTASSN2 obj(x,y,carry_in,cout,sum);
  if(inte>19|(x|y|carry_in>9))
   begin
     eout=1; 
   end
 else 
  s=inte;
 end
endmodule
