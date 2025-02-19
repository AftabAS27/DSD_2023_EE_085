`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELECTRICAL ENGINEERING DEPARTMENT
// Engineer: AFTAB SADIQ
// 
// Create Date: 02/19/2025 05:24:31 PM
// Design Name: FPGA
// Module Name: lab_04
// Project Name: RGB
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rtl(
    input logic [1:0] a,
    input logic [1:0] b,
    output logic red,
    output logic green,
    output logic blue
);

always_comb
    begin
        red = ((~b[0]) & (~b[1])) | ((a[0]) & (a[1])) | ((a[1]) & (~b[0])) | ((a[0]) & (~b[0])) | ((a[0]) & (~b[1]));
        green = ((~a[0]) & (~a[1])) | ((b[0]) & (b[1])) | ((~a[0]) & (b[1])) | ((~a[0]) & (b[0])) | ((b[0]) & (~a[1]));
        blue = (a[0] ^ b[0]) | (a[1] ^ b[1]);
    end
endmodule

 