module pipo(RIN, clk,rst, ROUT);    
input [5:0] RIN;    

input clk,rst;    
output [5:0] ROUT;    
reg [5:0] ROUT;
always @(posedge clk or negedge rst) 
begin  
if(!rst)    
 begin       
 ROUT <= 6'b000000;     
 end  
 else     
 begin        
 ROUT <= RIN;      
 end   
 end
 endmodule 