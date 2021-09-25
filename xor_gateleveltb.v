module xor_gateleveltb;
reg a,b;
wire y;
xor_gatelevel xor_test(y,a,b);

initial
begin
 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end

endmodule
