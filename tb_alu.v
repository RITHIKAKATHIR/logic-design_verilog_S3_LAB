module tb_alu;
reg A_input,B_input;
reg[3:0]alu_Sel_line;
wire lu_resu;
reg carry_in;
wire Carryout;
alu_add(.A_input(A_input), .B_input(B_input),.carry_in(carry_in),.alu_Sel_line(alu_Sel_line), .alu_resu(alu_resu),.carryout(carryout));

initial 
 begin
    alu_Sel_line=4'b0000;carry_in=1'b0;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b0;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b0;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b0;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b0;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b0;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b0;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b0;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b0;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b0;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b0;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b0;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b0;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b0;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b0;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b0;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b0;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b0;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b0;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b0;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b1;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b1;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b1;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0000;carry_in=1'b1;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b1;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b1;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b1;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0001;carry_in=1'b1;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b1;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b1;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b1;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0010;carry_in=1'b1;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b1;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b1;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b1;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0110;carry_in=1'b1;A_input=1'b1;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b1;A_input=1'b0;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b1;A_input=1'b1;B_input=1'b0; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b1;A_input=1'b0;B_input=1'b1; 
	 #10;
	 alu_Sel_line=4'b0100;carry_in=1'b1;A_input=1'b1;B_input=1'b1; 
	
      
  end
endmodule
