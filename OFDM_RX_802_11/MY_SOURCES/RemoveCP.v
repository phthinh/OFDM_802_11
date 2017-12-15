`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:19 03/29/2012 
// Design Name: 
// Module Name:    RemoveCP 
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
module RemoveCP(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,
	input 			WE_I, STB_I, CYC_I,
	output 			ACK_O,
	
	output reg [31:0]	DAT_O,
	output reg		CYC_O, STB_O,
	output			WE_O,
	input				ACK_I	
    );

parameter LCP  = 16;
parameter NFFT = 64;

reg [9:0] dat_cnt;
reg		 CYC_I_pp;
always @(posedge CLK_I or negedge RST_I)
begin
	if (RST_I) 	CYC_I_pp <= 1'b1;
	else 			CYC_I_pp <= CYC_I;
end

wire	inCP  = dat_cnt < LCP;
wire  infrm = dat_cnt < NFFT+LCP;
always @(posedge CLK_I or negedge RST_I)
begin
	if (RST_I) 	begin
		dat_cnt	<= 10'd0;	
		DAT_O		<= 32'd0;
		STB_O		<= 1'b0;
		end
	else if(CYC_I& (~CYC_I_pp)) dat_cnt <= (STB_I)?10'd1:10'd0;
	else if (CYC_I & STB_I & WE_I) begin	
		if (inCP) begin
			STB_O 	<= 1'b0;
			dat_cnt	<= dat_cnt + 1'b1;
			end
		else if (dat_cnt == LCP) begin
			STB_O		<= 1'b1;
			DAT_O		<= DAT_I;
			dat_cnt	<= dat_cnt + 1'b1;
			end
		else if (infrm) begin	
			STB_O		<= STB_I;
			DAT_O		<= (ACK_I)? DAT_I: DAT_O;
			dat_cnt	<= (ACK_I)? (dat_cnt == NFFT+LCP-1)? 10'd0: (dat_cnt + 1'b1): dat_cnt;	
			end		
		end
	else begin
		dat_cnt	<= 10'd0;	
		DAT_O		<= 32'd0;
		STB_O		<= 1'b0;
	end
end

always @(posedge CLK_I or negedge RST_I)
begin
	if (RST_I) 							CYC_O <= 1'b0;
	else if(dat_cnt == LCP)			CYC_O <= 1'b1;
	else if((~CYC_I) & (~STB_O))	CYC_O <= 1'b0;
end

assign ACK_O = STB_I & (ACK_I|(~STB_O));
assign WE_O = STB_O;
endmodule
