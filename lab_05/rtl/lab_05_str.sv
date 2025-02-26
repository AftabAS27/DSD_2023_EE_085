`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELECTRICAL ENGINEERING DEPARTMENT
// Engineer: AFTAB SADIQ
// 
// Create Date: 02/26/2025 09:16:01 PM
// Design Name: SEVEN SEGMENT 
// Module Name: lab_05
// Project Name: 
// Target Devices: FPGA
// Tool Versions: UPDATEED
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab_05(
        input [3:0] num,[2:0] sel,
        output logic An_0, An_1, An_2, An_3, An_4, An_5, An_6, An_7,
        output logic seg_A, seg_B, seg_C, seg_D, seg_E, seg_F, seg_G,dp
     );
logic a, b, c;
logic A, B, C, D;
always_comb
begin
    a = sel[0];
    b = sel[1];
    c = sel[2];
end
always_comb
begin
        A = num[0];
        B = num[1];
        C = num[2];
        D = num[3];
end

assign An_0 = a | b | c;
assign An_1 = a | b | ~c;
assign An_2 = a | ~b | c;
assign An_3 = a | ~b | ~c;
assign An_4 = ~a | b | c;
assign An_5 = ~a | b | ~c;
assign An_6 = ~a | ~b| c;
assign An_7 = ~a |~b |~c;

assign seg_A = (~(A & B & C)& D )| (~(A & D & C)& B)|((A & B & D)& ~ C)|((A & D & C)& ~B);
assign seg_B = ((~A) & (~C) &B &D) |( A & B & ~D )| (A & D & C)|((~D) & B & C);
assign seg_C = (A & B & C)| (~(A & B & D) & C)| (~D & (A & B));
assign seg_D = (~(A & B & C)& D) | (~(A & D & C) & B )| (B & C & D) | (A & ~B & C & ~D ); 
assign seg_E = (~(A) & D )| (~(A & C)& B) | (~(B & C) & D ); 
assign seg_F = (~(A & B)& D) |(~(A & B)& C) | (~(A) & C & D) | (A & B & D & (~C));   
assign seg_G =  (~(A & B & C))| ((D & C & B)& ~A) | A & B & (~ C) & (~D);
assign dp = 1;
endmodule

