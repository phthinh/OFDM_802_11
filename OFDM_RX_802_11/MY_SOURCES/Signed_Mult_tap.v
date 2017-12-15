`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:39 04/18/2012 
// Design Name: 
// Module Name:    ML_tap 
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
module Signed_Mult_tap(
   input 	 	[1:0] rxin,		//[1] :signed bit of imaginary part, [0] :signed bit of real part,
	input			[1:0] preamble,	//[1] :signed bit of imaginary part, [0] :signed bit of real part,
	output 	 	[1:0] mult_out_Re, mult_out_Im
    );
	 
wire cmp1_Re = (rxin[0] == preamble[0]);
wire cmp2_Re = (rxin[1] == preamble[1]);

assign mult_out_Re[0] =  (cmp1_Re == cmp2_Re);
assign mult_out_Re[1] = ~(cmp1_Re |  cmp2_Re);

wire cmp1_Im = (rxin[1] == preamble[0]);
wire cmp2_Im = (rxin[0] == preamble[1]);

assign mult_out_Im[0] = ~(  cmp1_Im == cmp2_Im);
assign mult_out_Im[1] =  ((~cmp1_Im) & cmp2_Im);

endmodule
