`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:15 12/04/2012 
// Design Name: 
// Module Name:    QPSK_Mod 
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
module QPSK_Mod(
	input 			CLK_I, RST_I,
	input [1:0] 	DAT_I,
	input 			CYC_I, WE_I, STB_I, 
	output			ACK_O,
	
	output reg [31:0]	DAT_O,
	output reg			CYC_O, STB_O,
	output				WE_O,
	input					ACK_I	
    );

reg [1:0]	idat;
reg			ival;	
wire 			out_halt, ena;

wire [15:0] 	datout_Re, datout_Im;

assign 	out_halt = STB_O & (~ACK_I);
assign 	ena 		= CYC_I & STB_I & WE_I;
assign 	ACK_O 	= ena &(~out_halt);


	
always @(posedge CLK_I) begin
	if(RST_I) 			idat<= 2'b00;
	else if(ACK_O) 	idat <= DAT_I;
end

always @(posedge CLK_I) begin
	if(RST_I) 			ival <= 1'b0;
	else if(ena)		ival <= 1'b1;
	else					ival <= 1'b0;
end

always @(posedge CLK_I)
begin
	if(RST_I)	begin
		STB_O <= 1'b0;
		DAT_O <= 32'b0;
		end
	else if(ival & (~out_halt)) begin	
		DAT_O <= {datout_Im, datout_Re};	
		STB_O <= 1'b1;
		end	
	else if(~ival) begin	
		STB_O <= 1'b0;
		end
end

reg icyc;
always @(posedge CLK_I)
begin
	if(RST_I)		icyc <= 1'b0;		
	else				icyc <= CYC_I;	
end
always @(posedge CLK_I)
begin
	if(RST_I)		CYC_O	<= icyc;			
	else 				CYC_O	<= icyc;
end

assign WE_O = STB_O;

/*
always @* begin	
	case(idat)
		2'b11: begin
				datout_Re  <= 16'h7FFF;
				datout_Im  <= 16'h7FFF;
				 end
		2'b10: begin
				datout_Re  <= 16'h8001;
				datout_Im  <= 16'h7FFF;
				 end
		2'b01: begin
				datout_Re  <= 16'h7FFF;
				datout_Im  <= 16'h8001;
				 end
		2'b00: begin
				datout_Re  <= 16'h8001;
				datout_Im  <= 16'h8001;
				 end
		default: begin
				datout_Re  <= 16'hxxxx;
				datout_Im  <= 16'hxxxx;
				 end
		endcase
end
*/
assign datout_Im = (idat[1])?16'h8001:16'h7FFF;
assign datout_Re = (idat[0])?16'h8001:16'h7FFF;
endmodule
