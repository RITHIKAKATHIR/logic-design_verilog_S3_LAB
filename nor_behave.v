module nor_behave(y,a,b);
input a,b;
output reg y;

always@(a,b)
begin 
 y=~(a|b);
end

 endmodule 
 