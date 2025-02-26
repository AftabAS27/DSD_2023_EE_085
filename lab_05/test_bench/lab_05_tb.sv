`timescale 1ns / 1ps

module lab_05_tb;

    reg [3:0] num;
    reg [2:0] sel;
    wire An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7;
    wire seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G;
    wire dp;

    lab_05 uut (
        .num(num),
        .sel(sel),
        .An_0(An_0), .An_1(An_1), .An_2(An_2), .An_3(An_3),
        .An_4(An_4), .An_5(An_5), .An_6(An_6), .An_7(An_7),
        .seg_A(seg_A), .seg_B(seg_B), .seg_C(seg_C), .seg_D(seg_D),
        .seg_E(seg_E), .seg_F(seg_F), .seg_G(seg_G), .dp(dp)
    );

    initial begin
        $display("Starting testbench...");
        
     
        num = 4'b0000; 
        sel = 3'b000;

  
        #10 num = 4'b0001; sel = 3'b001;
        #10 num = 4'b0010; sel = 3'b010;
        #10 num = 4'b0011; sel = 3'b011;
        #10 num = 4'b0100; sel = 3'b100;
        #10 num = 4'b0101; sel = 3'b101;
        #10 num = 4'b0110; sel = 3'b110;
        #10 num = 4'b0111; sel = 3'b111;
        #10 num = 4'b1000; sel = 3'b000;
        #10 num = 4'b1001; sel = 3'b001;
        
        #10;
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin
        $monitor("At time %t, num = %b, sel = %b, An_0 = %b, An_1 = %b, An_2 = %b, An_3 = %b, An_4 = %b, An_5 = %b, An_6 = %b, An_7 = %b, seg_A = %b, seg_B = %b, seg_C = %b, seg_D = %b, seg_E = %b, seg_F = %b, seg_G = %b, dp = %b",
                 $time, num, sel, An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7, seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G, dp);
    end

endmodule
