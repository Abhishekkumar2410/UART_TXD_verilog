`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2022 12:54:52
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input clk,
    input reset,
    input transmit,
    input [7:0] sw,
    output TxD,
    output TxD_debug,
    output transmit_debug,
    output btn_debug,
    output clk_debug
    );
    
    
    wire transmit_out;
    
     Debounce_Signals D2(clk, transmit, transmit_out);
    Transmitter T1(clk, reset,transmit_out, sw, TxD);
   
    
    assign TxD_debug = TxD;
   // assign transmit_debug = transmit_out;
    assign btn_debug = reset;
    assign clk_debug = clk;
    
    
endmodule
