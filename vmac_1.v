module vmac_1(clk,rst, a,b, z);    
input clk,rst;    
input [3:0] a,b;    
output [:0] z;    
wire [5:0] w; 
mo U1(.a(a),.b(b),.p(w));  
wire [7
pipo U2(.RIN(w), .clk(clk),.rst(rst),.ROUT(z));
endmodule
