module ripple_Carry_tb;
reg[31:0] X,Y;
wire[31:0] S;
reg Ci;
wire Co;

ripple_carry_adder(.X(X),.Y(Y),.Ci(Ci),.Co(Co));

initial 
 begin
   X[0]=0; X[1]=0; X[2]=0; X[3]=0; X[4]=0; X[5]=0; X[6]=0; X[7]=0; X[8]=0; X[9]=0; X[10]=0; X[11]=0; X[12]=0; X[13]=0; X[14]=0; X[15]=0; X[16]=0; X[17]=0; X[18]=0; X[19]=0; X[20]=0; X[21]=0; X[22]=0; X[23]=0; X[24]=0; X[25]=0; X[26]=0; X[27]=0; X[28]=0; X[29]=0; X[30]=0; X[31]=0; 
	Y[0]=0; Y[1]=0; Y[2]=0; Y[3]=0; Y[4]=0; Y[5]=0; Y[6]=0; Y[7]=0; Y[8]=0; Y[9]=0; Y[10]=0; Y[11]=0; Y[12]=0; Y[13]=0; Y[14]=0; Y[15]=0; Y[16]=0; Y[17]=0; Y[18]=0; Y[19]=0; Y[20]=0; Y[21]=0; Y[22]=0; Y[23]=0; Y[24]=0; Y[25]=0; Y[26]=0; Y[27]=0; Y[28]=0; Y[29]=0; Y[30]=0; Y[31]=0;
	Ci=0;
	#20
	X[0]=0; X[1]=0; X[2]=0; X[3]=0; X[4]=0; X[5]=0; X[6]=0; X[7]=0; X[8]=0; X[9]=0; X[10]=0; X[11]=0; X[12]=0; X[13]=0; X[14]=0; X[15]=0; X[16]=0; X[17]=0; X[18]=0; X[19]=0; X[20]=0; X[21]=0; X[22]=0; X[23]=0; X[24]=0; X[25]=0; X[26]=0; X[27]=0; X[28]=0; X[29]=0; X[30]=0; X[31]=0; 
	Y[0]=0; Y[1]=0; Y[2]=0; Y[3]=0; Y[4]=0; Y[5]=0; Y[6]=0; Y[7]=0; Y[8]=0; Y[9]=0; Y[10]=0; Y[11]=0; Y[12]=0; Y[13]=0; Y[14]=0; Y[15]=0; Y[16]=0; Y[17]=0; Y[18]=0; Y[19]=0; Y[20]=0; Y[21]=0; Y[22]=0; Y[23]=0; Y[24]=0; Y[25]=0; Y[26]=0; Y[27]=0; Y[28]=0; Y[29]=0; Y[30]=0; Y[31]=0;
	Ci=1;
	#20
	X[0]=1; X[1]=1; X[2]=1; X[3]=1; X[4]=1; X[5]=1; X[6]=1; X[7]=1; X[8]=1; X[9]=1; X[10]=1; X[11]=1; X[12]=1; X[13]=1; X[14]=1; X[15]=1; X[16]=1; X[17]=1; X[18]=1; X[19]=1; X[20]=1; X[21]=1; X[22]=1; X[23]=1; X[24]=1; X[25]=1; X[26]=1; X[27]=1; X[28]=1; X[29]=1; X[30]=1; X[31]=1; 
	Y[0]=1; Y[1]=1; Y[2]=1; Y[3]=1; Y[4]=1; Y[5]=1; Y[6]=1; Y[7]=1; Y[8]=1; Y[9]=1; Y[10]=1; Y[11]=1; Y[12]=1; Y[13]=1; Y[14]=1; Y[15]=1; Y[16]=1; Y[17]=1; Y[18]=1; Y[19]=1; Y[20]=1; Y[21]=1; Y[22]=1; Y[23]=1; Y[24]=1; Y[25]=1; Y[26]=1; Y[27]=1; Y[28]=1; Y[29]=1; Y[30]=1; Y[31]=1; 
   Ci=0;
	#20
	X[0]=1; X[1]=1; X[2]=1; X[3]=1; X[4]=1; X[5]=1; X[6]=1; X[7]=1; X[8]=1; X[9]=1; X[10]=1; X[11]=1; X[12]=1; X[13]=1; X[14]=1; X[15]=1; X[16]=1; X[17]=1; X[18]=1; X[19]=1; X[20]=1; X[21]=1; X[22]=1; X[23]=1; X[24]=1; X[25]=1; X[26]=1; X[27]=1; X[28]=1; X[29]=1; X[30]=1; X[31]=1; 
	Y[0]=1; Y[1]=1; Y[2]=1; Y[3]=1; Y[4]=1; Y[5]=1; Y[6]=1; Y[7]=1; Y[8]=1; Y[9]=1; Y[10]=1; Y[11]=1; Y[12]=1; Y[13]=1; Y[14]=1; Y[15]=1; Y[16]=1; Y[17]=1; Y[18]=1; Y[19]=1; Y[20]=1; Y[21]=1; Y[22]=1; Y[23]=1; Y[24]=1; Y[25]=1; Y[26]=1; Y[27]=1; Y[28]=1; Y[29]=1; Y[30]=1; Y[31]=1; 
   Ci=1;
	 
	end
	
	endmodule
	