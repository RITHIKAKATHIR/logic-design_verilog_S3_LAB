module sixteenbit_data_MUX(y_out,in_y,in_y_,in_selec);
output[15:0]y_out;
input[15:0]in_y;
input[15:0]in_y_;
input in_selec;

MUX2X1_DATAFLOW test[15:0](.y_out(y_out),.in_y(in_y),.in_y_(in_y_),.in_selec(in_selec));
					  
endmodule
