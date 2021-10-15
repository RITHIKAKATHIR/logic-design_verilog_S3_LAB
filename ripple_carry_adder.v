module ripple_carry_adder(X,Y,Ci,S,Co);
 input [31:0] X,Y;
 output [31:0] S;
 input Ci;
 output Co;
 wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w23,w24,w25,w26,w27,w28,w29,w30,w31;

 
 wire a1,a2,a3;
 assign a1=X[0]^Y[0];
  assign a2=X[0]&Y[0];
  assign a3=a1&Ci;
  assign w1=a2|a3;
  assign S[0]=a1^Ci;
 
 wire a4,a5,a6;
 assign a4=X[1]^Y[1];
  assign a5=X[1]&Y[1];
 assign a6=a4&w1;
 assign w2=a5|a6;
 assign S[1]=a4^w1;
 
 
 wire a7,a8,a9;
 assign a7=X[2]^Y[2];
  assign a8=X[2]&Y[2];
 assign a9=a7&w2;
  assign w3=a8|a9;
  assign S[2]=a7^w2;
 
 wire a10,a11,a12;
  assign a10=X[3]^Y[3];
 assign a11=X[3]&Y[3];
  assign a12=a10&w3;
  assign w4=a11|a12;
 assign S[3]=a10^w3;
 
  wire a13,a14,a15;
 assign a13=X[4]^Y[4];
 assign a14=X[4]&Y[4];
 assign a15=a13&w4;
  assign w5=a14|a15;
 assign S[4]=a13^w4;

 wire a16,a17,a18;
 assign a16=X[5]^Y[5];
  assign a17=X[5]&Y[5];
  assign a18=a16&w5;
  assign w6=a17|a18;
 assign S[5]=a16^w5;
 
 
 wire a19,a20,a21;
 assign a19=X[6]^Y[6];
 assign a20=X[6]&Y[6];
 assign a21=a19&w6;
 assign w7=a20|a21;
 assign S[6]=a19^w6;
 
 wire a22,a23,a24;
 assign a22=X[7]^Y[7];
 assign a23=X[7]&Y[7];
 assign a24=a22&w7;
 assign w8=a23|a24;
 assign S[7]=a22^w7;
 
 wire a25,a26,a27;
 assign a25=X[8]^Y[8];
 assign a26=X[8]&Y[8];
 assign a27=a26&w8;
 assign w9=a27|a26;
 assign S[8]=a25^w6;
 
 wire a28,a29,a30;
 assign a28=X[9]^Y[9];
 assign a29=X[9]&Y[9];
 assign a30=a19&w9;
 assign w10=a20|a21;
 assign S[9]=a28^w9;
 
 wire a31,a32,a33;
 assign a31=X[10]^Y[10];
 assign a32=X[10]&Y[10];
 assign a33=a31&w10;
  assign w11=a32|a33;
 assign S[10]=a31^w10;
 
 
  wire a34,a35,a36;
 assign a34=X[11]^Y[11];
 assign a35=X[11]&Y[11];
 assign a36=a34&w11;
 assign w12=a35|a36;
 assign S[11]=a34^w11;
 
  wire a37,a38,a39;
  assign a37=X[12]^Y[12];
 assign a38=X[12]&Y[12];
 assign a39=a37&w12;
 assign w13=a38|a39;
 assign S[12]=a37^w12;
 
  wire a40,a41,a42;
 assign a40=X[13]^Y[13];
  assign a41=X[13]&Y[13];
 assign a42=a40&w13;
 assign w14=a41|a42;
  assign S[13]=a40^w13;
 
  wire a43,a44,a45;
 assign a43=X[14]^Y[14];
  assign a44=X[14]&Y[14];
 assign a45=a43&w14;
 assign w15=a45|a44;
 assign S[14]=a43^w14;
 
 wire a46,a47,a48;
 assign a46=X[15]^Y[15];
  assign a47=X[15]&Y[15];
  assign a48=a46&w15;
 assign w16=a47|a48;
  assign S[15]=a46^w15;

 
 wire a49,a50,a51;
 assign a49=X[16]^Y[16];
  assign a50=X[16]&Y[16];
  assign a51=a49&w16;
 assign w17=a50|a51;
 assign S[16]=a49^w16;
 
 
wire a52,a53,a54;
 assign a52=X[17]^Y[17];
 assign a53=X[17]&Y[17];
 assign a54=a52&w17;
 assign w18=a53|a54;
 assign S[17]=a52^w17;
 
wire a55,a56,a57;
 assign a55=X[18]^Y[18];
 assign a56=X[18]&Y[18];
 assign a57=a55&w18;
 assign w19=a56|a57;
 assign S[18]=a55^w18;
 
wire a58,a59,a60;
 assign a58=X[19]^Y[19];
 assign a59=X[19]&Y[19];
 assign a60=a58&w19;
 assign w20=a59|a60;
 assign S[19]=a58^w19;
 
wire a61,a62,a63;
 assign a61=X[20]^Y[20];
  assign a62=X[20]&Y[20];
  assign a63=a61&w20;
 assign w21=a62|a63;
 assign S[20]=a61^w20;
 
 
 wire a64,a65,a66;
  assign a64=X[21]^Y[21];
 assign a65=X[21]&Y[21];
 assign a66=a64&w21;
 assign w22=a65|a66;
 assign S[21]=a64^w21;
 
 wire a67,a68,a69;
  assign a67=X[22]^Y[22];
 assign a68=X[22]&Y[22];
 assign a69=a67&w22;
 assign w23=a68|a69;
  assign S[22]=a67^w22;
 
 
 wire a70,a71,a72;
 assign a70=X[23]^Y[23];
  assign a71=X[23]&Y[23];
  assign a72=a70&w23;
 assign w24=a71|a72;
 assign S[23]=a70^w23;
 
 wire a73,a74,a75;
 assign a73=X[24]^Y[24];
 assign a74=X[24]&Y[24];
 assign a75=a73&w24;
 assign w25=a74|a75;
 assign S[24]=a73^w24;
 
 wire a76,a77,a78;
 assign a76=X[25]^Y[25];
 assign a77=X[25]&Y[25];
  assign a78=a76&w25;
 assign w26=a77|a78;
 assign S[25]=a76^w25;
 
 wire a79,a80,a81;
 assign a79=X[26]^Y[26];
  assign a80=X[26]&Y[26];
 assign  a81=a79&w26;
 assign w27=a80|a81;
 assign S[26]=a79^w26;
 
 wire a82,a83,a84;
  assign a82=X[27]^Y[27];
  assign a83=X[27]&Y[27];
  assign a84=a82&w27;
 assign w28=a82|a83;
 assign S[27]=a82^w27;
 
 wire a85,a86,a87;
 assign a85=X[28]^Y[28];
 assign a86=X[28]&Y[28];
 assign a87=a85&w28;
  assign w29=a87|a87;
  assign S[28]=a85^w28;
 
 wire a88,a89,a90;
 assign a88=X[29]^Y[29];
 assign a89=X[29]&Y[29];
 assign a90=a88&w29;
 assign w30=a88|a90;
 assign S[29]=a88^w29;
 
 
 wire a91,a92,a93;
 assign a91=X[30]^Y[30];
 assign a92=X[30]&Y[30];
 assign a93=a91&w30;
 assign w31=a92|a93;
 assign S[30]=a91^w30;
 
  
 wire a94,a95,a96;
 assign a94=X[31]^Y[31];
 assign a95=X[31]&Y[31];
 assign a96=a94&w31;
 assign Co=a95|a96;
 assign S[31]=a94^w31;
 
 
 endmodule
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

 
  