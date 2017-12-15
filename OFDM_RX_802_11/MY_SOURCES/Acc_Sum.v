`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:36 04/15/2012 
// Design Name: 
// Module Name:    Acc_Sum 
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
module Acc_Sum(
   input 			clk,rst,
	input 			ena,
	input 			[16:0] a,
	input				[16:0] a_d, 
	output signed  [23:0] sum_out
   );

reg [16:0] ia, ia_d;
always @(posedge clk)
begin
	if (rst)			begin
		ia 	<= 17'd0;
		ia_d	<= 17'd0;		
		end
	else if(ena)	begin
		ia		<= a;
		ia_d 	<= a_d;
		end
end

reg [23:0] sum_reg;
always @(posedge clk)
begin
	if (rst)			sum_reg <= 24'd0;
	else if(ena)	sum_reg <= mov_sum;
end

wire signed [17:0] delay_sub	= $signed({1'b0,ia}) - $signed({1'b0,ia_d});
wire signed [23:0] mov_sum = $signed(sum_reg) + $signed({{6{delay_sub[17]}},delay_sub});

assign	sum_out = mov_sum;	
endmodule
