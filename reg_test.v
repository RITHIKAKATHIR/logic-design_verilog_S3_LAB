module reg_test(reset,write,A,q);
input reset,data,write;
input[2:0] A;
output reg[7:0] q;
if(reset=0 & write=0)
 begin
  q[0]=0;
  q[1]=0;
  q[2]=0;
  q[3]=0;
  q[4]=0;
  q[5]=0;
  q[6]=0;
  q[7]=0;
 end
/*else if(reset==1 & write==0)
 begin
  decoder obj1(A,reset,q);
  end
else if(reset==0 & write==1)
  begin
  q[0]=q[0];
  q[1]=q[1];
  q[2]=q[2];
  q[3]=q[3];
  q[4]=q[4];
  q[5]=q[5];
  q[6]=q[6];
  q[7]=q[7];
  end*/
 endmodule
 