/*module add_sub_data(a_input,b_input,c_in,sum,carry_out);
input a_input,b_input,c_in;
output reg sum,carry_out;
output reg a1;
integer i;

 a1=a_input^1;
output reg s0bar, s1bar, T1, T2, T3, T4;
always@(a_input,b_input,c_in)
begin
  for(i=0;i<1;i=i+1)
    begin
        s0bar= b_input^1;
        s1bar= c_in^1;
        T1=a_input&s0bar&s1bar;
        T2= a1&s0bar&c_in;
        T3= a1&b_input&s1bar;
        T4= a_input&b_input&c_in;
        
	 end
	 sum=T1|T2|T3|T4;
end
	


output reg p,q,r,s,t,u;
always@(a_input,b_input,c_in)
 begin
  for(i=1;i<=1;i=i+1)
   begin

   p=b_input^1;
   q=c_in^1;
   r=0&p&q;
   s=a_input&p&c_in;
   t=a_input&b_input&q;
   u=1&b_input&c_in;
	end
 carry_out=r|s|t|u;
 end

endmodule*/

module add_sub_behave(a_input,b_input,sel,c_in,sum,carry_out);
input a_input,b_input,sel,c_in;
output reg sum,carry_out;
always@(a_input,b_input,sel)
 begin 
   if(sel==1)
	  
	 	   begin
			 
			  sum=a_input^b_input^c_in;
           carry_out=((~a_input)&b_input)|(~(a_input^b_input)&c_in);
 
         end
	if(sel==0)
	      
			begin
			      
         sum = a_input ^ b_input ^ c_in; 
         carry_out=((a_input&b_input) | ((a_input^b_input) & c_in)); 


          end
			 
 end
 endmodule
 
			   
			 

 
