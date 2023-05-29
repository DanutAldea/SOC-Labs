`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 10:43:33 PM
// Design Name: 
// Module Name: sum2b
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


module sum2b(
    input[1:0] A, B,
    input c_in,
    output[1:0] sum,
    output P, G,
    output c_out
    );
    
    wire [1:0] p, g, c;
    
    sum1b s1(A[0], B[0], c_in, sum[0], p[0], g[0]);
    sum1b s2(A[1], B[1], c[0], sum[1], p[1], g[1]);
    
    UAT uat(c_in, p, g, P, G, c);
    assign c_out = c[1];
endmodule
