module half_adder_data(i_bit_1,i_bit_2,o_sum,o_carry);
 input  i_bit_1;
 input  i_bit_2;
 output o_sum;
 output o_carry;
 
 assign o_sum   = i_bit_1 ^ i_bit_2;  
 assign o_carry = i_bit_1 & i_bit_2;  
 
endmodule
