module half_sub_tb;
 
  reg X_in;
  reg Y_in;
  wire difference;
  wire barrow;
   
  half_sub_data object(.X_in(X_in),.Y_in(Y_in),.difference(difference),.barrow(barrow));
  initial
    begin
      X_in = 1'b0;
      Y_in = 1'b0;
      #10;
      X_in = 1'b0;
      Y_in = 1'b1;
      #10;
      X_in= 1'b1;
      Y_in = 1'b0;
      #10;
      X_in = 1'b1;
      Y_in = 1'b1;
      #10;
    end 
 
endmodule
