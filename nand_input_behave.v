module nand_input_behave(y,a,b,c,d,e,f,g,h);

output reg y;
input a,b,c,d,e,f,g,h;

always@(a,b,c,d,e,f,g,h)
 begin
  y=~(a&b&c&d&e&f&g&h);
 end
 
endmodule
