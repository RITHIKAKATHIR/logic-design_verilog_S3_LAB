module unclocked_sr_gate(set_s,reset_r,q_out,q_bar_out);
input set_s;
input reset_r;
output q_out, q_bar_out;
nand obj(q_out,set_s,q_bar_out);
nand obj1(q_bar_out,reset_r,q_out);
endmodule

