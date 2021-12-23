module multipliertb;
reg clk;
reg start;
reg reset;
reg[3:0] a;
reg[3:0] b;
wire[7:0] result_out;
wire finish;
unsigned_multiplier obj_1(clk,reset,start,finish,a,b,result_out);

initial
 begin

#10 clk=1;reset=0;start=1 ;a=0001 ;b=0001 ;
#10 clk=1 ;reset=1 ;start=1 ;a=0001 ;b=0001 ;  
#10 clk=1 ;reset=1;start=1 ;a=0011 ;b=0110 ;
#10 clk=1 ;reset=1 ;start=1 ;a=1001 ;b=1110 ;
#10 clk=1 ;reset=1 ;start=1 ;a=0111 ;b=0101 ;
#10 clk=1 ;reset=1 ;start=1 ;a=0011 ;b=0111 ;
#10 clk=1 ;reset=1 ;start=1 ;a=1110 ;b=1101 ;
#10 clk=1 ;reset=1 ;start=1 ;a=0111 ;b=1111 ;
#10 clk=1 ;reset=1 ;start=1 ;a=1111 ;b=1111 ;
end

endmodule
