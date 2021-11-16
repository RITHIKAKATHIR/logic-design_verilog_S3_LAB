module decoder(data_in,y_out);
input [1:0]data_in;
output reg[3:0] y_out;
always@(data_in)
 begin
  case(data_in)
  2'b00: y_out=4'b0001;
  2'b01: y_out=4'b0010;
  2'b10: y_out=4'b0100;
  2'b11: y_out=4'b1000;
  default: y_out= 4'b0000;
  endcase
 end
 endmodule
 
  