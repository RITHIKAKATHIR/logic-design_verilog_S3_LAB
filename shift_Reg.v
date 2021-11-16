module shift_Reg(input shift_4,input clk,output shift_out);
reg [3:0] bits;
assign shift_out = bits[3];
always @(posedge clk) 
  begin
  bits <= bits << 1;
  bits[0] <= shift_4;
  end
 endmodule
 