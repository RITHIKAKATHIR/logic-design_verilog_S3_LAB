module rca_32bit(input_a,input_b,carryin,sum,carryout);
parameter n=32;
input carryin;
input[n-1:0] input_a,input_b;
output reg[n-1:0] sum;
output reg carryout;
reg [n:0] C;
integer k;

always@(input_a,input_b,carryin)
 begin
   C[0]=carryin;
	for(k=0;k<n;k=k+1)
	begin 
	  sum[k]=input_a[k]^input_b[k]^C[k];
	  C[k+1]=(input_a[k]&input_b[k])|(input_a[k]&C[k])|(input_b[k]&C[k]);
	end
   carryout=C[n];
 end
 endmodule
 
