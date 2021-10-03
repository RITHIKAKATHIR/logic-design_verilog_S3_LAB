 module half_adder_q1(A,B,sum,carry);
 input A , B; 
 output sum,carry;
 xor(sum,A,B);
 and(carry,A,B);
 endmodule 