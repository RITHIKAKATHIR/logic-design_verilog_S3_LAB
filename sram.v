module sram(Address,write_enable,d_in,d_out_1);
input write_enable;
wire[7:0] d_out;
output[1:0] d_out_1;
input[1:0] d_in;
input[1:0] Address;
wire[3:0] hee;
decoder decoder2x4(Address,hee);
wire term1,term2,term3,term4;
and objecte_1(term1,hee[0],write_enable);
and objecter_1(term2,hee[1],write_enable);
and objectek_1(term3,hee[2],write_enable);
and objecteo_1(term4,hee[3],write_enable);
d_latch lo(d_in[1],hee[0],term1,d_out[0]);
d_latch ko(d_in[1],hee[1],term2,d_out[1]);
d_latch jo(d_in[1],hee[2],term3,d_out[2]);
d_latch po(d_in[1],hee[3],term4,d_out[3]);
d_latch uo(d_in[0],hee[0],term1,d_out[4]);
d_latch fo(d_in[0],hee[1],term2,d_out[5]);
d_latch eo(d_in[0],hee[2],term3,d_out[6]);
d_latch co(d_in[0],hee[3],term4,d_out[7]);
assign d_out_1[1]=d_out[0]+d_out[1]+d_out[2]+d_out[3];
assign d_out_1[0]=d_out[4]+d_out[5]+d_out[6]+d_out[7];

endmodule
