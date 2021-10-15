module half_sub_data(output difference,barrow,input X_in, Y_in);
assign difference = X_in ^ Y_in;
assign barrow = ~X_in & Y_in;
endmodule
