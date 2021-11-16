module reg_file(rnnn,wrdddd,write_enable,clk,R_Data);
input [1:0] rnnn;
input [7:0] wrdddd;
input write_enable,clk;
wire[3:0] out;
output reg[7:0] R_Data;
reg[8:0] Regfile[0:3];
decoder object_decoder(rnnn,out);
wire term1,term2,term3,term4;
and gate_1(term1,out[0],write_enable);
and gate_2(term2,out[1],write_enable);
and gate_3(term3,out[2],write_enable);
and gate_4(term4,out[3],write_enable);
wire q1,q2,q3,q4,q5,q6,q7,q8;
Eight_bit_register gate1(wrdddd,term1,q1,q2,q3,q4,q5,q6,q7,q8);
wire q11,q21,q31,q41,q51,q61,q71,q81;
Eight_bit_register gate2(wrdddd,term2,q11,q21,q31,q41,q51,q61,q71,q81);
wire q12,q22,q32,q42,q52,q62,q72,q82;
Eight_bit_register gate3(wrdddd,term3,q12,q22,q32,q42,q52,q62,q72,q82);
wire q13,q23,q33,q43,q53,q63,q73,q83;
wire sel;
Eight_bit_register gate4(wrdddd,term4,q13,q23,q33,q43,q53,q63,q73,q83);


always@(posedge clk)
 begin
 if(write_enable==1)
  begin
   Regfile[0]<=32'd0;
	Regfile[1]<=32'd0;
	Regfile[2]<=32'd0;
	Regfile[3]<=32'd0;
  end
 end
 
wire[7:0] q,q_,q1_;
assign q[0]=q1;
assign q[1]=q2;
assign q[2]=q3;
assign q[3]=q4;
assign q[4]=q5;
assign q[5]=q6;
assign q[6]=q7;
assign q[7]=q8;

assign q_[0]=q12;
assign q_[1]=q22;
assign q_[2]=q32;
assign q_[3]=q42;
assign q_[4]=q52;
assign q_[5]=q62;
assign q_[6]=q72;
assign q_[7]=q82;

assign q1_[0]=q13;
assign q1_[1]=q23;
assign q1_[2]=q33;
assign q1_[3]=q43;
assign q1_[4]=q53;
assign q1_[5]=q63;
assign q1_[6]=q73;
assign q1_[7]=q83;

mux_reg_file obectt(R_Data[0],q[0],q_[0],write_enable);

mux_reg_file obectt1(R_Data[1],q[1],q_[1],write_enable);


mux_reg_file obectt2(R_Data[2],q[2],q_[2],write_enable);


mux_reg_file obectt3(R_Data[3],q[3],q_[3],write_enable);


mux_reg_file obectt4(R_Data[4],q[4],q_[4],write_enable);


mux_reg_file obectt5(R_Data[5],q[5],q_[5],write_enable);

mux_reg_file obectt6(R_Data[6],q[6],q_[6],write_enable);

mux_reg_file obectt7(R_Data[7],q[7],q_[7],write_enable);



endmodule







 


