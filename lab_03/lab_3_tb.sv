`timescale 1ns / 10ps

 module lab_3_tb();
 
 logic a_1;
 logic b_1;
 logic c_1;
 logic sum1;
 logic carry1;
 
 
 lab_3 lab_3_inst(
 .a(a_1),
 .b(b_1),
 .c(c_1),
 .sum(sum1),
 .carry(carry1)
 
 );
 
 initial begin
 // INPUT BLOCKS PROVIDER WITH PERIOD.
 a_1 = 0; b_1 = 0; c_1 = 0;
 #10;
 a_1 = 0; b_1 = 0; c_1= 1;
 #10;
 a_1 = 0; b_1 = 1; c_1= 0;
 #10;
 a_1 = 0; b_1 = 1; c_1= 1;
 #10;
 a_1 = 1; b_1 = 0; c_1= 0;
 #10;
 a_1 = 1; b_1 = 0; c_1= 1;
 #10;
 a_1 = 1; b_1 = 1; c_1= 0;
 #10
 a_1 = 1; b_1 = 1; c_1= 1;
 #10;
 $stop;
 
 end
 
 initial begin
 
   $monitor("a=%b, b=%b ,c=%b ,sum=%b,carry=%b", a_1,b_1,c_1,sum1,carry1);
  end
 endmodule