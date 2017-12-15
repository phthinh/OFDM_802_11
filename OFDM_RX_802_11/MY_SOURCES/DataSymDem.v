`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:23 03/29/2012 
// Design Name: 
// Module Name:    DataSymDem 
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
module DataSymDem(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,
	
	output reg [7:0]	DAT_O,
	output reg			CYC_O, STB_O,
	output				WE_O,
	input				ACK_I	
    );
	 
wire out_halt = STB_O & (~ACK_I);
wire ena = (CYC_I) & STB_I & WE_I;
assign ACK_O = ena &(~out_halt);

reg		 CYC_I_pp;
always @(posedge CLK_I or negedge RST_I)
begin
	if (RST_I) 	CYC_I_pp <= 1'b0;
	else 			CYC_I_pp <= CYC_I;
end


wire [15:0] QPSK_Im = DAT_I[31:16];
wire [15:0] QPSK_Re = DAT_I[15:0];
reg [1:0] bits_dem;
reg 		 bits_dem_val;
always @(posedge CLK_I)
begin
	if(RST_I) begin 
		bits_dem 		<= 2'b0;
		bits_dem_val 	<= 1'b0;
		end
	else if (~out_halt)	begin			
		if(ena) begin
			bits_dem[1] 	<= ~QPSK_Im[15];
			bits_dem[0] 	<= ~QPSK_Re[15];
			bits_dem_val	<= 1'b1;
			end
		else	bits_dem_val 		<= 1'b0;	
		end
end


always @(posedge CLK_I)
begin
	if(RST_I)	begin
		STB_O <= 1'b0;
		DAT_O <= 32'b0;
		end
	else if(~out_halt) begin	
		DAT_O <= {6'd0, bits_dem};	
		STB_O <= bits_dem_val;
		end	
end

always @(posedge CLK_I)
begin
	if(RST_I)								CYC_O	<= 1'b0;		
	else if ((CYC_I) & bits_dem_val)	CYC_O	<= 1'b1;
	else if ((~CYC_I) & (~STB_O)) 	CYC_O	<= 1'b0;
end

assign WE_O = STB_O;

endmodule
