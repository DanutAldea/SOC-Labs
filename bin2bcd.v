`timescale 1ns / 1ps


module bin2bcd(
    input bin, clk, rst, load,
    output reg [7:0] bcd   
    ); // bcd {...,thousands,hundreds,tens,ones}

    integer i;
    reg ci = 0;
    wire P1, P2, G1, G2, C_out1, C_out2;
    reg [3:0] trei = 3;
    wire [7:0] bcd2;
    
    sum4b s1({bcd[2:0], bin}, trei, ci, bcd2[3:0], P1, G1, C_out1);
    sum4b s2(bcd[6:3], trei, ci, bcd2[7:4], P2, G2, C_out2);
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bcd = 0;
            i = 0;
        end else begin
            if (load) begin
                bcd = 0;
                i = 0;
            end
            
            if (i < 7) begin
                bcd = {bcd[6:0], bin};
                if(i < 6 && bcd[3:0] > 4)
                    bcd[3:0] = bcd2[3:0];;
                if(i < 6 && bcd[7:4] > 4)
                    bcd[7:4] = bcd2[7:4];
                i = i + 1;
            end
        end
    end

endmodule
