`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2019 11:29:30 AM
// Design Name: 
// Module Name: display
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


// define segment codes
`define SS_0 8'b00000011
`define SS_1 8'b10011111
`define SS_2 8'b00100101
`define SS_3 8'b00001101
`define SS_4 8'b10011001
`define SS_5 8'b01001001
`define SS_6 8'b11000001
`define SS_7 8'b00011011
`define SS_8 8'b00000001
`define SS_9 8'b00011001
`define SS_F 8'b01110001
module display(
    input [3:0]i,
    output reg [7:0]D_ssd
    );
    always @* 
      begin
        
        case(i)
            4'd0: D_ssd = `SS_0;
            4'd1: D_ssd = `SS_1;
            4'd2: D_ssd = `SS_2;
            4'd3: D_ssd = `SS_3;
            4'd4: D_ssd = `SS_4;
            4'd5: D_ssd = `SS_5;
            4'd6: D_ssd = `SS_6;
            4'd7: D_ssd = `SS_7;
            4'd8: D_ssd = `SS_8;
            4'd9: D_ssd = `SS_9;
            default: D_ssd = `SS_F;
      
        endcase
      end
        
endmodule
