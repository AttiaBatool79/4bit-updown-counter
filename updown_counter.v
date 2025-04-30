`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 09:16:53 AM
// Design Name: 
// Module Name: updown_counter
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


module updown_counter(
    input clk,           
    input x,              
    output reg [3:0] leds, 
    output reg [6:0] ssd   
);














reg [26:0] count_1hz;
reg clk_1hz;

always @(posedge clk) 
begin
    if (count_1hz >= 100_000_000)
     begin
        count_1hz <= 0;
        clk_1hz <= ~clk_1hz;
    end 
    else 
    begin
        count_1hz <= count_1hz + 1;
    end
end


always @(posedge clk_1hz) 
begin
    if (x == 1'b0)
        leds <= leds + 1;
    else
        leds <= leds - 1;
end


always @(*) 
begin
    case (leds)
        4'b0000: ssd = 7'b1000000; 
        4'b0001: ssd = 7'b1111001; 
        4'b0010: ssd = 7'b0100100; 
        4'b0011: ssd = 7'b0110000; 
        4'b0100: ssd = 7'b0011001; 
        4'b0101: ssd = 7'b0010010; 
        4'b0110: ssd = 7'b0000010; 
        4'b0111: ssd = 7'b1111000;
        4'b1000: ssd = 7'b0000000; 
        4'b1001: ssd = 7'b0010000; 
        4'b1010: ssd = 7'b0001000; 
        4'b1011: ssd = 7'b0000011; 
        4'b1100: ssd = 7'b1000110; 
        4'b1101: ssd = 7'b0100001;
        4'b1110: ssd = 7'b0000110; 
        4'b1111: ssd = 7'b0001110; 
        default: ssd = 7'b1111111;  
    endcase
end

endmodule

