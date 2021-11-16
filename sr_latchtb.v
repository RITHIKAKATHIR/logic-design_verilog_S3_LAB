`timescale 1ns/1ps
module sr_latchtb;
wire q_out,q_bar_out;
reg set_s,reset_r;
unclocked_Sr_data a1(set_s,reset_r,q_out,q_bar_out);
initial
 begin 
#10 set_s=0;reset_r=1;
#10 set_s=1;reset_r=0;
#10 set_s=0;reset_r=0;
 end
endmodule
