`timescale 1ns / 1ps

module simulanta(

    );
    reg [5:0] num_bin;
    reg rst;
    reg load;
    wire out;
    wire[7:0] num_bcd;
    reg clk;
    
    input_fmt in(num_bin, clk, rst, load, out);
    bin2bcd b2b(out, clk, rst, load, num_bcd);
    
    always #5 clk = ~ clk;
    
    initial begin
        clk = 0;
        num_bin = 25;
        rst = 1;
        load = 0;
        
        #10 rst = 0;
        
        #5 load = 1;
        #5 load = 0;
        #100 $finish;
    end
endmodule
