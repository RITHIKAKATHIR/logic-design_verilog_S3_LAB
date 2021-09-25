module nor_behavetb;
reg a,b;
wire y;
nor_behave nor_test(a,b,y);

always
begin
#000 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end

endmodule 