`timescale 1ns / 1ps

module LEDdecoder_tb;

    reg  [3:0] char;

    wire [6:0] LED;
    wire       CA, CB, CC, CD, CE, CF, CG;

    integer i;

    LEDdecoder uut (
        .char(char),
        .LED(LED),
        .CA(CA), .CB(CB), .CC(CC), .CD(CD),
        .CE(CE), .CF(CF), .CG(CG)
    );

    initial begin
        $monitor("t=%0t char=%b  LED=%b  CA..CG=%b%b%b%b%b%b%b",
                 $time, char, LED, CA, CB, CC, CD, CE, CF, CG);

        char = 4'h0;
        #10;

        for (i = 0; i < 16; i = i + 1) begin
            char = i;    
            #10;
        end

        $finish;
    end

endmodule
