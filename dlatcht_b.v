module dlatcht_b;
reg e;
reg d;
wire q;
dlatch_tri objectt(e,d,q);
initial 
begin
d = 0;
e = 0;
end
always #3 e=~e;
always #5 d=~d;

initial                     
#1000 $stop;

endmodule
