module tb_half_adder();
reg a,b ;
wire sum,carry;


half_adder_q1 object(a,b,sum,carry);


initial 
begin
	a = 1'b0;
	b = 1'b0;
	#100
	a = 1'b1; 
	b = 1'b0;
	#100
	a = 1'b0; 
	b = 1'b1;
	#100
	a = 1'b1; 
	b = 1'b1;


end 
endmodule 