module carry_lookahead_adder_gate(a,b, cin, sum,cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
 
wire [3:0] p,g,c;
 
xor(p,a,b);
xor(g,a,b); 
 
 
or(c[0],cin,cin);
wire t1;
and(t1,p[0],c[0]);
or(c[1],g[0],t1);

wire t2,t3;
and(t2,p[1],p[0],c[0]);
and(t3,p[1],g[0]);
or(c[2],g[1],t2,t3);

wire t4,t5,t6;
and(t4,p[2],p[1],p[0],c[0]);
and(t5,p[2],p[1],g[0]);
and(t6,p[2],g[1]);
or(c[3],g[2],t6,t5,t4);

wire t7,t8,t9,t10;
and(t7,p[3],p[2],p[1],p[0],c[0]);
and(t8,p[3],p[2],p[1],g[0]);
and(t9,p[3],p[2],g[1]);
and(t10,p[3],g[2]);
or(cout,g[3],t7,t8,t9,t10);
xor(sum,p,c); 
endmodule
