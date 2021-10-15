module alu_and( A_input, B_input, carry_in, alu_Sel_line,alu_resu,carryout);
output reg carryout;
input A_input, B_input, carry_in;
input[3:0] alu_Sel_line;
output reg alu_resu;

always@(A_input, B_input,carry_in,alu_Sel_line)
  begin 
     case(alu_Sel_line)
	   4'b0000: begin
		         //{alu_resu,carryout}={A_input&B_input,1'b0};
	           	alu_resu= A_input&B_input;
					carryout=1'b0;
					end
					
		4'b0001: begin
		         //{alu_resu,carryout}={A_input|B_input,1'b0};
		         alu_resu= A_input|B_input;
					carryout=1'b0;
					end
		
		4'b0010: begin
		         //{alu_resu,carryout}={A_input ^ B_input ^ carry_in,(A_input & B_input) | (B_input & carry_in) | (carry_in & A_input)};
		         alu_resu= (A_input ^ B_input) ^ carry_in;
               carryout=(A_input & B_input) | (B_input & carry_in) | (carry_in & A_input);
					end
					//{alu_resu,carryout}=A_input+B_input+carry_in;
		4'b0011: 
               begin		
		         alu_resu = A_input ^ B_input ^ carry_in;
					//{alu_resu,carryout}={(A_input ^ B_input) ^ carry_in,~A_input & ( B_input^carry_in) | (carry_in & B_input)};
               carryout = (~A_input) & (B_input^carry_in)|(B_input & carry_in);
					end
					//{alu_resu,carryout}=A_input-B_input-carry_in;
					
		4'b0100: 
		        {carryout,alu_resu}={1'b0,(A_input<B_input)?1'b1:1'b0};
				  
		default: 
		        {carryout,alu_resu}={1'b0,1'b0};
		endcase
	end
endmodule
