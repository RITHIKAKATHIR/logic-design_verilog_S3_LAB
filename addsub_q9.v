module addsub_q9(a_input,b_input,c_in,sum,carry_out);
input a_input,b_input,c_in;
output sum,carry_out;
wire a1;

xor obj0(a1,a_input,1);
m41 obj1(sum,a_input,a1,a1,a_input,b_input,c_in);
m41 obj2(carry_out,0,a_input,a_input,1,b_input,c_in); 

endmodule
