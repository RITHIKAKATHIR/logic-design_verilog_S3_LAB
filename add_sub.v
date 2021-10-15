module add_sub(A, B, In, Res, Out);
    input A, B;
    input In;
    output Res;
    output Out;
    wire t1;
    xor x3(t1,B,In);
	 fadder f8(A,t1,In,Res,Out);  
    endmodule
