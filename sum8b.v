`timescale 1ns / 1ps


module sum8b(
    input[7:0] A, B,
    input c_in,
    output[7:0] sum,
    output P, G,
    output c_out
    );
    
    wire [1:0] p, g, c;
    
    sum4b s1(A[3:0], B[3:0], c_in, sum[3:0], p[0], g[0]);
    sum4b s2(A[7:4], B[7:4], c[0], sum[7:4], p[1], g[1]);
    
    UAT uat(c_in, p, g, P, G, c);
    assign c_out = c[1];
endmodule
