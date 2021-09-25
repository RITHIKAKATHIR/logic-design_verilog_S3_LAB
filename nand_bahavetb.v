module nand_bahavetb;
reg a,b;
wire y;
nand_bahave  nand_test(a,b,y);

always
begin
#00 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end

endmodule
