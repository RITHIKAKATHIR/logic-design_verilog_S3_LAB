module alu_32bit(Opcode,Operand1,Operand2,Result,flagC,flagZ,overflow,zero);    
input [2:0]  Opcode;
input [31:0]  Operand1, Operand2;
output reg [31:0] Result;
output reg  flagC = 1'b0,flagZ = 1'b0;
reg check=1'b0;  
output reg overflow,zero; 
integer i;
parameter  [2:0] AND = 3'b000,

                 OR = 3'b001,

                 ADD = 3'b010,

                 SUB = 3'b011,

                 COMP = 3'b100;
		
			
always@(Operand1,Operand2)
begin 
  zero=(Result==31'b0)?1'b1:1'b0;
   overflow=(Result[0]==31'b0)?1'b1:1'b0;
end
	 

 
 
 
 
   always @ (Opcode or Operand1 or Operand2)

   begin
	 if(check!=1'b1)

   case (Opcode)

 AND: 
   begin

   Result = Operand1&Operand2;
                  flagZ  = (Result == 31'b0);

  end

 OR: 
  begin

   Result = Operand1|Operand2;
   flagZ  = (Result == 31'b0);

  end



 ADD: begin

   Result = Operand1+Operand2;
	flagC= Result[8];
   flagZ  = (Result ==31'b0);

  end

 SUB: begin

   Result = Operand1-Operand2;
	flagC= Result[8];
   flagZ  = (Result ==31'b0);

  end
  
 COMP: 
 begin
  
    Result=(Operand1<Operand2)?1'b1:1'b0;
	 flagZ  = (Result ==31'b0);
	end
   default: begin

   Result = 31'b0;

   flagC  = 1'b0;

   flagZ  = 1'b0;
	
  end

 endcase
 end

endmodule
