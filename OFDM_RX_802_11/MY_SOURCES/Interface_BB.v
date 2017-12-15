`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:13 06/21/2013 
// Design Name: 
// Module Name:    Interface_BB 
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
module Interface_BB(
   input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,					// DAT_I_Im[31:16] DAT_I_Re[15:0] in format 5.11
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,
	
	output [31:0]	DAT_O,				// DAT_O_Im[31:16] DAT_O_Re[15:0] in format 5.11
	output			CYC_O, STB_O,
	output 			WE_O,
	input				ACK_I	
    );

assign DAT_O = DAT_I;
assign WE_O  = WE_I;
assign STB_O = STB_I;
assign CYC_O = CYC_I;
assign ACK_O = ACK_I;
endmodule
