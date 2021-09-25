module inverterarray_behave(y,a);
output reg[15:0] y;
input[15:0] a;

always@(a)
begin
 y=~a;
end

endmodule
