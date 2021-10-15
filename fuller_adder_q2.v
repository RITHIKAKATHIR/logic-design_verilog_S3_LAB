module full_adder (input input_X1, input_X2, carry_Cin,output sum_S, carry_Cout);  
 wire a1, a2, a3;    
 xor obju1(a1,input_X1,input_X2);
 and obju2(a2,input_X1,input_X2);
 and obju3(a3,a1,carry_Cin);
 or obju4(carry_Cout,a2,a3);
 xor obju5(sum_S,a1,carry_Cin); 
endmodule  