module LEDdecoder (
    char, LED, CA, CB, CC, CD, CE, CF, CG
);
    input  [3:0] char;
    output [6:0] LED;
    output  CA, CB, CC, CD, CE, CF, CG;
    
    reg [6:0] LED;

    always @(char) begin
        case (char)
            4'h0: LED = 7'b1111110;  // or 4'h0 == 4'b0000 etc
            4'h1: LED = 7'b0110000;  
            4'h2: LED = 7'b1101101; 
            4'h3: LED = 7'b1111001;  
            4'h4: LED = 7'b0110011;  
            4'h5: LED = 7'b1011011;  
            4'h6: LED = 7'b1011111;  
            4'h7: LED = 7'b1110000;  
            4'h8: LED = 7'b1111111;  
            4'h9: LED = 7'b1111011;  
            4'hA: LED = 7'b1110111;  
            4'hB: LED = 7'b0011111;  
            4'hC: LED = 7'b1001110;  
            4'hD: LED = 7'b0111101;  
            4'hE: LED = 7'b1001111;  
            4'hF: LED = 7'b1000111;  
            default: LED= 7'b0000001;
        endcase
    end

    assign CA = LED[6];
    assign CB = LED[5];
    assign CC = LED[4];
    assign CD = LED[3];
    assign CE = LED[2];
    assign CF = LED[1];
    assign CG = LED[0];

endmodule
