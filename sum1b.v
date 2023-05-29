`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 10:16:06 PM
// Design Name: 
// Module Name: sum1b
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


module sum1b(
    input a, b,
    input c_in,
    output sum,
    output P, G,
    output c_out
    );
    
    wire p, g;
    
    assign p = a ^ b;
    assign g = a & b;
    
    assign c_out = g | (p & c_in);
    
    assign P = p;
    assign G = g;
    
    assign sum = c_in ^ p;
        
endmodule
