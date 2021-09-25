module xor_behave(a,b,y);
output reg y;
input a,b;
always@(a,b)
begin 
  y=(a^b);
end

endmodule
