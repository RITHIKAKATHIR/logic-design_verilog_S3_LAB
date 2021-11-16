module dlatch_tri(enable,d_in,q_oo);
input enable;
input d_in;
output q_oo;
reg q_oo1;
always @(enable or d_in)
begin
if (enable)
q_oo1<=d_in;
end

tristate object_1(q_oo1,enable,q_oo);

endmodule
