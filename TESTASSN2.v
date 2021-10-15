module TESTASSN2(a_input,b_input,c_input,carryout, s_sumop);
input [3:0] a_input,b_input;
input c_input;
output reg[4:0] s_sumop;
output reg carryout;
   
      always@(a_input,b_input,c_input)
             begin 
                 if(c_input)
                  {carryout,s_sumop}=a_input-b_input;
                 else
                   {carryout,s_sumop}=a_input+b_input;
            end
				
endmodule
