module xnor_behavetb;
reg a,b;
wire y;
xnor_behave test(a,b,y);
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule 