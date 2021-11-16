module tb;
reg [3:0] a_input,b_input;
reg c_input;
wire [4:0] s_sumop;
wire carryout;

  TESTASSN2 obj(a_input,b_input,c_input,carryout, s_sumop);
  initial  
   begin
    a_input=4'b0111; b_input=4'b0010;c_input=1'b0;
    #10;
    a_input=4'b0100; b_input=4'b0011;c_input=1'b1;
    #10;
    a_input=4'b0000; b_input=4'b0010;c_input=1'b0;
    #10;
    a_input=4'b1000; b_input=4'b0001;c_input=1'b1;
   end

endmodule
    
    