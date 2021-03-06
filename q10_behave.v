module q10_behave(A, B, In, Res, Out);
    input A, B;
    input In;
    output reg Res;
    output reg Out;
    reg t3;

always@(t3)
 begin	 
   t3=B^In;
 end
         
 reg t1,t2,t_3,t4;

always@(t1,t2,t_3,t4)
begin
  t1=A^t3;
  Res=t1^In;
  t2=A&t3;
  t_3=t3&In;
  t4=In&A;
  Out=t2|t_3|t4;  
 end

 endmodule
