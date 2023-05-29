`timescale 1ns / 1ps

module input_fmt(
        input [5:0] num,
        input clk, rst, load,
        output out
    );
    
    reg [6:0] x;
    
    assign out = x[6];
    
    always @(posedge clk or posedge rst) begin 
        if (rst) begin
            x = 7'b0000000;
        end else begin
            if (load) begin
                x[5:0] = num;
                x[6] = 0;
            end 
            x = (x << 1);
        end
    end
endmodule
