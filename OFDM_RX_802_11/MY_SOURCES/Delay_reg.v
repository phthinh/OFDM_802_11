`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:38 04/18/2012 
// Design Name: 
// Module Name:    Delay_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Delay_reg #(parameter WIDTH = 32)(
	input 	clk,rst,
	input 	ena,
	input 	  [WIDTH - 1:0] dat_in,
	output reg [WIDTH - 1:0] dat_out
    );

always @(posedge clk) begin
	if(rst) 			dat_out <= {WIDTH{1'b0}};
	else if (ena) 	dat_out <= dat_in;	
end

endmodule
