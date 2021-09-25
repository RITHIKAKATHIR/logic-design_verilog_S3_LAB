module xor_behavetb;
reg a,b;
wire y;
xor_behave test(a,b,y);
initial
begin
#000 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end
endmodule 