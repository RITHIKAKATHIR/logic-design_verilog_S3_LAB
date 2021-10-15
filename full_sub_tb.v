module full_sub_tb;
reg A_input,B_input,Bow_in;

wire D_f,Bow_out;
 initial 
  begin
    A_input=1'b0;B_input=1'b0;Bow_in=1'b0;
    #10
	 A_input=1'b0;B_input=1'b0;Bow_in=1'b1;
	 #10
	 A_input=1'b0;B_input=1'b1;Bow_in=1'b0;
	 #10
	 A_input=1'b0;B_input=1'b1;Bow_in=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b0;Bow_in=1'b0;
	 #10
	 A_input=1'b1;B_input=1'b1;Bow_in=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b0;Bow_in=1'b1;
	 #10
	 A_input=1'b1;B_input=1'b1;Bow_in=1'b0;
  end
     
endmodule
