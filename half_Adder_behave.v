module half_Adder_behave(sum,carry,input_A,input_B);
input input_A;
input input_B;
output reg sum,carry;
always@(input_A,input_B)
 begin
   sum=input_A^input_B;
	carry=input_A&input_B;
 end
 
 endmodule
 