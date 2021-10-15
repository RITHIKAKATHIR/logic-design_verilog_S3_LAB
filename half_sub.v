module half_sub(a_1, b_1,diff,borrow);

input a_1, b_1;
output diff, borrow;

wire x;

xor u1(diff,a_1,b_1);
not u3(x,a_1);
and u2(borrow,x,b_1);


endmodule

