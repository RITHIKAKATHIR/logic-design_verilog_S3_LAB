module unclocked_Sr_data(set_s,reset_r,q_out,q_bar_out);
input set_s;
input reset_r;
output q_out, q_bar_out;
assign q_out=~(set_s&q_bar_out);
assign q_bar_out=~(reset_r&q_out);
endmodule
