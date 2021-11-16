module tb;
  reg [3:0] data_a1, data_b1;
  wire [3:0] out1;
 sub_assn obj(data_a1,data_b1,out1);
initial 
  begin
    $monitor("data_a = %4b, data_b = %4b, out1=%4b", data_a1, data_b1, out1);
 
    data_a1 = 4'b1010; data_b1 = 4'b0010; #20;
	 data_a1=  4'b0011; data_b1= 4'b0010;  #20;
    $finish;
  end

endmodule 
