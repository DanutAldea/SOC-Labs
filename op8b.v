`timescale 1ns / 1ps


module op8b(
    input[7:0] A, B,
    input c_in,
    input op,
    output[7:0] sum,
    output P, G,
    output c_out
    );
    
    reg [7:0] b;
    
    always @* begin
        if (op == 0)
            b = B;
        else
            b = -B;
    end
    
    sum8b s(A, b, c_in, sum, P, G, c_out);
endmodule
