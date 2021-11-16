`timescale 1ns/1ps
module dflipfloptb;

wire q_out,q_bar_out;
reg d_in,clr,clk,present;
dflipflopp_iv a1(d_in,clr,clk,present,q_out, q_bar);

initial
 begin 
#10 d_in= 'bx;clr= 'bx;clk=1'b0;present='bx;
#10 d_in= 'bx;clr=1'b0;clk=1'b1;present=1'b0;
#10 d_in= 'bx;clr=1'b1;clk=1'b1;present=1'b0;
#10 d_in= 'bx;clr=1'b0;clk=1'b1;present=1'b1;
#10 d_in= 1'b0;clr=1'b1;clk=1'b1;present=1'b1;
#10 d_in=1'b1;clr=1'b1;clk=1'b1;present=1'b1;
#10
#10 d_in= 'bx;clr= 'bx;clk=1'b0;present='bx;
#10 d_in= 'bx;clr=1'b0;clk=1'b1;present=1'b0;
#10 d_in= 'bx;clr=1'b1;clk=1'b1;present=1'b0;
#10 d_in= 'bx;clr=1'b0;clk=1'b1;present=1'b1;
#10 d_in= 1'b0;clr=1'b1;clk=1'b1;present=1'b1;
#10 d_in=1'b1;clr=1'b1;clk=1'b1;present=1'b1;


 end

endmodule 