module half_adder_tb;
 
  reg in_1;
  reg in_2;
  wire w_SUM;
  wire w_CARRY;
   
  half_adder_q1 object(.A(in_1),.B(in_2),.sum(w_SUM),.carry(w_CARRY));
  initial
    begin
      in_1 = 1'b0;
      in_2 = 1'b0;
      #10;
      in_1 = 1'b0;
      in_2 = 1'b1;
      #10;
      in_1 = 1'b1;
      in_2 = 1'b0;
      #10;
      in_1 = 1'b1;
      in_1 = 1'b1;
      #10;
    end 
 
endmodule 