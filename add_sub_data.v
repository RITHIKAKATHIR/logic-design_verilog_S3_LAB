module add_sub_data(a_input,b_input,c_in,sum,carry_out);
input a_input,b_input,c_in;
output sum,carry_out;
wire a1;

assign a1=a_input^1;
wire s0bar, s1bar, T1, T2, T3, T4;

assign  s0bar= b_input^1;
assign  s1bar= c_in^1;
assign T1=a_input&s0bar&s1bar;
assign T2= a1&s0bar&c_in;
assign T3= a1&b_input&s1bar;
assign T4= a_input&b_input&c_in;

assign sum=T1|T2|T3|T4;

wire p,q,r,s,t,u;

assign p=b_input^1;
assign q=c_in^1;
assign r=0&p&q;
assign s=a_input&p&c_in;
assign t=a_input&b_input&q;
assign u=1&b_input&c_in;

assign carry_out=r|s|t|u;

endmodule



