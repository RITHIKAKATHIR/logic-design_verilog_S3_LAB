module top;

 reg a_1,b_1;

 wire diff,borrow; 

  half_sub onj(.a_1(a_1), .b_1(b_1), .diff(diff), .borrow(borrow));

  initial

    begin
       a_1 = 1'b0;
      b_1 = 1'b0;
      #10;
      a_1 = 1'b0;
      b_1 = 1'b1;
      #10;
      a_1 = 1'b1;
      b_1 = 1'b0;
      #10;
      a_1 = 1'b1;
      b_1 = 1'b1;
      #10;
    end



endmodule
