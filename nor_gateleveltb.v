module nor_gateleveltb;
reg a,b;
wire y;
nor_gatelevel nor_test(y,a,b);

initial
begin
#000 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end

endmodule 