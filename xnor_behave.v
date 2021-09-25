module xnor_behave(a,b,y);
input a,b;
output reg y;

always@(a,b)
 begin 
 y=~(a^b);
 end
 
endmodule 