module orarray_behave(y,a,b);
output reg[16:1] y;
input[16:1] a,b;

always@(a,b)
begin
 y=a|b;
end

endmodule
