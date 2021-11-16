module mac(clk,rst,data_a,data_b,out);
input clk;
input rst;
input [3:0] data_a,data_b;
output[7:0] out;
wire[7:0] w;
unsigned_multi obj(data_a,data_b,w);
wire[7:0] f;
initial assign f=0;
assign f=w+out;
shift_reg_assn onb2(clk,1,rst,f,out);
endmodule
