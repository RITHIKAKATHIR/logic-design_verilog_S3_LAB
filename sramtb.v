module sramtb;
reg Address,write_enable,d_in;
wire d_out_1;
sram ohhe(Address,write_enable,d_in,d_out_1);
initial
begin
#10 Address=2'b00;write_enable=1;d_in=1;
#10 Address=2'b01;write_enable=1;d_in=1;
#10 Address=2'b10;write_enable=1;d_in=1;
#10 Address=2'b11;write_enable=1;d_in=1;
#10 Address=2'b00;write_enable=0;d_in=1;
#10 Address=2'b01;write_enable=0;d_in=1;
#10 Address=2'b10;write_enable=0;d_in=1;
#10 Address=2'b11;write_enable=0;d_in=1;
#10 Address=2'b00;write_enable=1;d_in=0;
#10 Address=2'b01;write_enable=1;d_in=0;
#10 Address=2'b10;write_enable=1;d_in=0;
#10 Address=2'b11;write_enable=1;d_in=0;
#10 Address=2'b00;write_enable=0;d_in=1;
#10 Address=2'b01;write_enable=0;d_in=1;
#10 Address=2'b10;write_enable=0;d_in=1;
#10 Address=2'b11;write_enable=0;d_in=1;
end
endmodule

