`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 10:01:53 PM
// Design Name: 
// Module Name: Labtask
// Project Name: 
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


module Labtask(output x,y, 
                input a,b,c
    );
       assign x = (~c ^ (a | b));
       assign y = ((a|b)&(~(a&b)^(a|b)) );
       
endmodule
