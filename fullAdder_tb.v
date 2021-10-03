module fullAdder_tb;


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

 initial begin

  // Initialize Inputs

  input_1=1'b0;

  input_2=1'b0;

  carry_in=1'b0;

  for(i= 0; i < 8; i = i + 1'b1)
   begin

   {input_1,input_2,carry_in} = {input_1,input_2,carry_in} + 1'b1;

   #20;

  end

 end      

endmodule
