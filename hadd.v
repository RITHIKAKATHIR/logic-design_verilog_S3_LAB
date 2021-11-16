module hadd(sum,cry,l,m); 
 input l,m;  
 output sum,cry;  
 wire sum,cry;  assign sum = (l^m);  assign cry = (l&m);
 endmodule
