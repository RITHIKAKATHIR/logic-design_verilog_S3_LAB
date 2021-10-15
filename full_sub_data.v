
module full_sub_data(A_input,B_input,Bow_in,D_f,Bow_out);

input A_input,B_input,Bow_in;

output D_f,Bow_out;

wire p,q,r;
assign p = A_input ^ B_input;
assign q = ~A_input & B_input;



assign D_f= p^Bow_in;
assign r=~p&Bow_in;

assign Bow_out=r|q;
 
endmodule
