module inverterarray_gatelevel(y,a);
output[16:1] y;
input[16:1] a;

not array_of_inverter[16:1](y,a);

endmodule
