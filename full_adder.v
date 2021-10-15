module full_adder (input i_bit1,i_bit2,i_carry,output o_sum, o_carry);  
 wire a1, a2, a3;    
 xor obju1(a1,i_bit1,i_bit2);
 and obju2(a2,i_bit1,i_bit2);
 and obju3(a3,a1,i_carry);
 or obju4(o_carry,a2,a3);
 xor obju5(o_sum,a1,i_carry); 
endmodule  