module nand_gateleveltb;

reg a,b;
wire y;

nand_gatelevel obj(y,a,b);

initial 
 begin 
a=0;b=0;
#10 a=1;b=0;
#10 a=0;b=1;
#10 a=1;b=1;
 end

endmodule
