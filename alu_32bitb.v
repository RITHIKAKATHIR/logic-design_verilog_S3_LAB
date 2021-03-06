module alu_32bitb;
reg [2:0] Opcode;
reg [31:0] Operand1, Operand2;
reg [31:0] Result;
reg  flagC = 1'b0,flagZ = 1'b0;
reg check=1'b0;  
reg overflow,zero;
alu_32bit obj(.Opcode(Opcode),.Operand1(Operand1),.Operand2(Operand2),.Result(Result),.flagC(flagC),.flagZ(flagZ),.overflow(overflow),.zero(zero));
initial
  begin
   Opcode=1;
   Operand1[0]=0;Operand1[1]=0; Operand1[2]=0; Operand1[3]=0; Operand1[4]=0; Operand1[5]=0; Operand1[6]=0; Operand1[7]=0; Operand1[8]=0; Operand1[9]=0; Operand1[10]=0; Operand1[11]=0; Operand1[12]=0; Operand1[13]=0; Operand1[14]=0; Operand1[15]=0; Operand1[16]=0; Operand1[17]=0; Operand1[18]=0; Operand1[19]=0; Operand1[20]=0; Operand1[21]=0; Operand1[22]=0; Operand1[23]=0; Operand1[24]=0; Operand1[25]=0; Operand1[26]=0; Operand1[27]=0; Operand1[28]=0; Operand1[29]=0; Operand1[30]=0; Operand1[31]=0;
   Operand2[0]=0; Operand2[1]=0; Operand2[2]=0; Operand2[3]=0; Operand2[4]=0; Operand2[5]=0; Operand2[6]=0; Operand2[7]=0; Operand2[8]=0; Operand2[9]=0; Operand2[10]=0; Operand2[11]=0; Operand2[12]=0; Operand2[13]=0; Operand2[14]=0; Operand2[15]=0; Operand2[16]=0; Operand2[17]=0; Operand2[18]=0; Operand2[19]=0; Operand2[20]=0; Operand2[21]=0; Operand2[22]=0; Operand2[23]=0; Operand2[24]=0; Operand2[25]=0; Operand2[26]=0; Operand2[27]=0; Operand2[28]=0; Operand2[29]=0; Operand2[30]=0; Operand2[31]=0;
   overflow=0;
	zero=0;
 end
 endmodule
 