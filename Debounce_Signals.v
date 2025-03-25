`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 23.03.2025 20:02:15
// Design Name: 
// Module Name: Debounce_Signals
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


module Debounce_Signals #(parameter threshold = 1000000)
(
    input clk,
    input btn,
    output transmit
    );
    
    reg button_ff1 =0; //button FF for synchroniration, initially set to 0
    reg button_ff2 =0;
    wire button_ff2_bar;
    reg [25:0] count = 0; // 2 power 25, grreater than 12.5 million
    reg slow_clk = 0;
    
     
    //First use two FF synihronize the button signal "clk", clock domain
     
     always @(posedge slow_clk)
    begin
    button_ff1 <= btn;
    button_ff2 <= button_ff1;
    end
    
    assign button_ff2_bar = ~button_ff2;
    assign transmit = button_ff2_bar & button_ff1;
    
    

    always @(posedge clk)
    begin
    count<=count+1; // counter goes up by 
    if (count== 50_000) // once the counter reachs the value of 12,500,000
  //  if(count == 500000) // for Simulation
    begin
    count <= 0; // counter should reset itself to zero
    slow_clk = ~slow_clk; // clock signal should invert
    end
    end


    
    

 
endmodule
