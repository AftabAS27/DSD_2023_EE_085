`timescale 1ns / 10ps

module tb_RGB();
    
    reg [1:0] a;
    reg [1:0] b;
   
    wire red;
    wire green;
    wire blue;

  
    RGB uut (
        .a(a), 
        .b(b), 
        .red(red), 
        .green(green), 
        .blue(blue)
    );

    initial begin
   
        a = 2'b00; b = 2'b00;
        #10;
        a = 2'b01; b = 2'b00;
        #10;
        a = 2'b10; b = 2'b00;
        #10;
        a = 2'b11; b = 2'b00;
        #10;
        a = 2'b00; b = 2'b01;
        #10;
        a = 2'b00; b = 2'b10;
        #10;
        a = 2'b00; b = 2'b11;
        #10;
        a = 2'b11; b = 2'b11;
        #10;
       
        $stop;
    end
      
endmodule
