module nand_dataflowtb;
reg a,b;
wire y;
nand_dataflow nand_test(a,b,y);

initial
begin
 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end

endmodule 