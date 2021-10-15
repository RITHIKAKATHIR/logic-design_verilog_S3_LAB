module add_sub_f_data(A, B, In, Res, Out);
    input A, B;
    input In;
    output Res;
    output Out;
    wire t3;


assign t3=B^In;

         
 wire t1,t2,t_3,t4;
assign t1=A^t3;
assign Res=t1^In;
assign t2=A&t3;
assign t_3=t3&In;
assign t4=In&A;
assign Out=t2|t_3|t4;  

 endmodule
