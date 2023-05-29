`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 10:48:33 PM
// Design Name: 
// Module Name: sum4b
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


module sum4b(
    input[3:0] A, B,
    input c_in,
    output[3:0] sum,
    output P, G,
    output c_out
    );
    
    wire [1:0] p, g, c;
    
    sum2b s1(A[1:0], B[1:0], c_in, sum[1:0], p[0], g[0]);
    sum2b s2(A[3:2], B[3:2], c[0], sum[3:2], p[1], g[1]);
    
    UAT uat(c_in, p, g, P, G, c);
    assign c_out = c[1];
endmodule
