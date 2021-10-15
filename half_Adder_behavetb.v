module half_Adder_behavetb;
reg input_A;
reg input_B;
wire sum,carry;  

half_Adder_behave obj(.input_A(input_A),.input_B(input_B),.sum(sum),.carry(carry));
  
initial
    begin
      input_A = 1'b0;
      input_B= 1'b0;
      #10;
      input_A = 1'b0;
      input_B = 1'b1;
      #10;
      input_A = 1'b1;
      input_B = 1'b0;
      #10;
      input_A = 1'b1;
      input_B= 1'b1;
      #10;
    end 
	 
	endmodule
	
