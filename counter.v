`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2023 03:13:56 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk, rst, load,
    input [5:0]load_reg,
    output reg [5:0]cnt
    );
    
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt = 0;
        end else begin
            if (load) begin
                cnt = load_reg;
            end else begin
                if (cnt == 59) cnt = 0;
                else cnt = cnt + 1;
            end
        end
    end
endmodule
