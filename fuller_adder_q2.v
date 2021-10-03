module fuller_adder_q2;


 // Inputs

 reg input_1;

 reg input_2;

 reg carry_in;


 // Outputs

 wire sum;

 wire carry_out;

 

 //Temporary looping variable

 reg [2:0] i = 3'd0;

 

 // Instantiate the Unit Under Test (UUT)

 fuller_adder_q2 obj(.input_1(input_1),.input_2(input_2),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));

 initial 
 begin
  input_1=1'b0;

  input_2=1'b0;

  carry_in=1'b0;

#100;
  for(i=0;i<8;i=i+1'b1)
   begin
   {In1,In2,Cin} = {In1,In2,Cin} + 1'b1;
   #20;
   end
end      
 
 endmodule 