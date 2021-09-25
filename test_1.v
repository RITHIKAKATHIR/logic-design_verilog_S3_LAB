module test_1(in_x,in_y,in_z,out_f);
output out_f;
input in_x,in_y,in_z;
wire invert_x,invert_z,invert_y;
wire t1, t2, t3;

not(invert_x,in_x);
not(invert_y,in_y);
not(invert_z,in_z);

and(t1, invert_x,invert_y);
and(t2,t1,invert_z);
and(t3,in_x,in_y);

or(out_f,t2,t3);

endmodule 
