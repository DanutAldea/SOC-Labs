`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 10:37:56 PM
// Design Name: 
// Module Name: UAT
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


module UAT(
    input c_in,
    input [1:0] p,
    input [1:0] g,
    output P, G,
    output [1:0] c_out
    );
    
    assign c_out[0] = g[0] | (p[0] & c_in);
    assign c_out[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
    
    assign P = p[1] & p[0];
//    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    assign G = g[1] | (p[1] & g[0]);
endmodule
