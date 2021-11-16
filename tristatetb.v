module tristatetb;
reg in_kk;
reg enable;
wire out_kk;
tristate objj(in_kk,enable,out_kk);

initial
begin
in_kk= 0;enable = 0;
#10
in_kk= 1;enable = 0;
#10
in_kk= 1;enable = 1;
#10
in_kk= 0;enable = 1;
end
endmodule
