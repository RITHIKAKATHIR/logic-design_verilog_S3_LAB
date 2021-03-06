module full_adder_behave( A_input,B_input,Cin_input,S_output,Cout_output);

 input wire A_input,B_input,Cin_input;
 output reg S_output,Cout_output;

 always @(A_input or B_input or Cin_input)
  begin 
   S_output = A_input ^ B_input ^ Cin_input; 
   Cout_output = ((A_input&B_input) | ((A_input^B_input) & Cin_input)); 
  end
endmodule
