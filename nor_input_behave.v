module nor_input_behave(y,a,b,c,d,e,f,g,h);
input a,b,c,d,e,f,g,h;
output reg y;
always@(a,b,c,d,e,f,g,h)
 begin
 y=~(a|b|c|d|e|f|g|h);
 end
 
 endmodule 