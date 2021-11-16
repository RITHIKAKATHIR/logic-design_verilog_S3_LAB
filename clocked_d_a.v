module clocked_d_a(input d_in,  
              input rstn,  
              input clk,  
              output reg q,q_bar);  
  
    always @ (posedge clk or negedge rstn)  
       if (!rstn)  
          q <= 0;
			 
       else  
          q <= d;  

endmodule  