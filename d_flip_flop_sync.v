module d_flip_flop_sync(d_in,clk,clear,q,qbar); 
input d_in, clk, clear; 
output reg q, qbar; 
always@(posedge clk) 
begin
if(clear== 1)
begin
q<=0;
qbar <= 1;
end
else 
begin
q<=d_in; 
qbar=!d_in;
end 
end 
endmodule
