module or_bmod_tb;
wire y;
reg a,b;

or_bmod a1(a,b,y);

always
 begin 
 #10 a=0;b=0;
 #10 a=1;b=0;
 #10 a=0;b=1;
 #10 a=1;b=1;
 end

endmodule
