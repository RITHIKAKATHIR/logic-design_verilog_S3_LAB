module test__2;

reg a,b,c,d,e,f,g,h;
wire y,w,x,l;

test_2 obj(a,b,c,d,e,f,g,h,y,w,x,l);

initial 
 begin 
 

 #10 a=1;b=x;c=x;d=x;e=x;f=x;g=x;h=x;
 #10 a=0;b=1;c=x;d=x;e=x;f=x;g=x;h=x;
 #10 a=0;b=0;c=1;d=x;e=x;f=x;g=x;h=x;
 #10 a=0;b=0;c=0;d=1;e=x;f=x;g=x;h=x;
 #10 a=0;b=0;c=0;d=0;e=1;f=x;g=x;h=x;
 #10 a=0;b=0;c=0;d=0;e=0;f=1;g=x;h=x;
 #10 a=0;b=0;c=0;d=0;e=0;f=0;g=1;h=x;
 #10 a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;
 #10 a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;
  
  end

endmodule
