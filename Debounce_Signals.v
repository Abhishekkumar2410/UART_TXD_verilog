`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2022 20:02:15
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
    
  //  reg [30:0] count =0; //20 bits count for increment add decremnt wgen buttuon is pressed or released
    
     
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

    //when push button is pressed or released, we increamnt or decrement the counter
    
    
//    always @(posedge clk)
//    begin
//    if(button_ff2) // if button_ff2 is high
//    begin
//    if(~&count) // if it isn't at the count limit, make sure you won't up at the limit. First AND all count and than not AND
//    count <= count+1;
//    end
//    else begin
//    if(|count) // if count has at least 1 in it, making sure subtarct when count is 0
//    count <= count -1; // when btn released, count down
//    end
//    if (count > threshold) // if the count is than than the threshould
//    transmit <= 1; // debounce signal is 1
//    else
//    transmit <= 0; // debonce signal is 0
//    end
 
endmodule
