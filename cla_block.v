module cla_block
        (   input [3:0] P,G,
            input cin,
            output [4:0] C
            );
wire t1,t2,t3;            
C[0] = cin;

and (t1,P[0],cin);
or(C[1],G[0],t1);
and(t2,P[1],P[0],cin);
and(t3,P[1],G[0]);
or(C[2],G[1],t2,t3);

wire t4,t5,t6;
and(t4,P[2],P[1],P[0],cin);
and(t5,P[2],P[1],G[0]);
and(t6,P[2],G[1]);
or(C[3],G[2],t4,t5,t6);


wire t7,t8,t9,t10;
and(t7,P[3],P[2],P[1],P[0],cin);
and(t8,P[3],P[2],P[1],G[0]);
and(t9,P[3],P[2],G[1]);
and(t10,P[3],G[2]);
or(C[4],G[3],t7,t8,t9,t10); 

endmodule

