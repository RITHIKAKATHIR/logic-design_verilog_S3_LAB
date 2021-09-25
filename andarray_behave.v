module andarray_behave(y,a,b);
output reg[15:0] y;
input[15:0] a,b;

always@(a,b)
begin
 y=(a&b);
end

endmodule
