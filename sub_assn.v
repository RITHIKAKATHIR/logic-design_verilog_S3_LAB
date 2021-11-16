module sub_assn(data_a1, data_b1,out1);
input[3:0] data_a1;
input[3:0] data_b1;
output[3:0] out1;
reg[3:0] out1=0;
reg[3:0] a1,b1;
reg[3:0] p1;
integer i;
always@(data_a1 or data_b1)
 begin
 a1=data_a1;
 b1=data_b1;
 p1=0;
   for(i=0;i<4;i=i+1)
	begin
	p1={p1[2:0],a1[3]};
	a1[3:1]=a1[2:0];
	p1=p1-b1;
	if(p1[3]==1)
	begin
	 a1[0]=0;
	 p1=p1+b1;
	 end
	else a1[0]=1;
	  
 end
 out1=a1;
end

 
endmodule
