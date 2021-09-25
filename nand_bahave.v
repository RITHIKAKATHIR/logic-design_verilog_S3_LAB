module nand_bahave(y,a,b);
input a,b;
output y;
reg y;

always@(a,b)

begin
  y=~(a&b);
end

endmodule
