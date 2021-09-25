module interarray_testbench;

reg [15:0]I;
wire [15:0]O;
inverterarray_dataflow n(O,I);
 integer i;
initial
begin
i=0;
while(i<=65535)
begin
I=i;
#10 i=i+1;
end
end


endmodule
