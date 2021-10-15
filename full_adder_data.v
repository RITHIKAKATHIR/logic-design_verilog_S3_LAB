module full_adder_data(input a,input b,input carry_in,output s, output carry_out);
assign s=a^b^carry_in;
assign carry_out=(a&b)|carry_in&(a^b);
endmodule
