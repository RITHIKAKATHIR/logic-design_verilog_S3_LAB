module unclocked_sr_behave(set_s,reset_r,q_out,q_bar_out);
input set_s;
input reset_r;
output reg q_out, q_bar_out;
always@(set_s,reset_r)
 begin
    q_out=~(set_s&q_bar_out);
    q_bar_out=~(reset_r&q_out);
 end
 
 endmodule
 
