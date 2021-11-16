module reg_filetb;
reg rnnn,wrdddd,write_enable,clk;
wire[7:0] R_Data;
reg_file onnhjet(rnnn,wrdddd,write_enable,clk,R_Data);
initial 
 begin
 #10 rnnn=0;wrdddd=1;write_enable=0;clk=1;
 #10 rnnn=1;wrdddd=0;write_enable=1;clk=1;
 #10 rnnn=1;wrdddd=0;write_enable=1;clk=1;
 #10 rnnn=1;wrdddd=0;write_enable=1;clk=1;
 #10 rnnn=0;wrdddd=1;write_enable=0;clk=1;
 #10 rnnn=0;wrdddd=1;write_enable=0;clk=1;
 #10 rnnn=0;wrdddd=1;write_enable=0;clk=1;
end 
endmodule
