`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:30 12/04/2012 
// Design Name: 
// Module Name:    Tx_Out 
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
module Tx_Out(

	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,
	input 			CYC_I, WE_I, STB_I, 
	output			ACK_O,
	
	output reg [31:0]	DAT_O,
	output reg			CYC_O, STB_O,
	output				WE_O,
	input					ACK_I	
    );
	 
reg [31:0] Pre[0:319]; 
initial $readmemh("./MY_SOURCES/Pre.txt", Pre); 

reg [31:0]	idat;
reg			ival;	
wire 			out_halt, ena;

reg [8:0] 	pre_cnt;
reg			pre_ena;
reg			dat_sym_ena;

assign 	out_halt = STB_O & (~ACK_I);
assign 	ena 		= CYC_I & STB_I & WE_I;
assign 	ACK_O 	= ena & (~out_halt) & (dat_sym_ena);

	
always @(posedge CLK_I) begin
	if(RST_I) 			idat <= 32'd0;
	else if(ACK_O) 	idat <= DAT_I;
end

always @(posedge CLK_I) begin
	if(RST_I) 			ival <= 1'b0;
	else if(ena)		ival <= 1'b1;
	else					ival <= 1'b0;
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

always @(posedge CLK_I)
begin
	if(RST_I)																pre_cnt <= 9'd0;
	else if (CYC_I & (~icyc)) 											pre_cnt <= 9'd0;	
	else if (icyc & (~out_halt) & (~(pre_cnt == 9'd320)))	pre_cnt <= pre_cnt + 1'b1;
end

always @(posedge CLK_I)
begin
	if(RST_I)										pre_ena <= 1'b0;
	else if (CYC_I & (~icyc)) 					pre_ena <= 1'b1;	
	else if (CYC_O & (pre_cnt == 9'd319))	pre_ena <= 1'b0;
end

always @(posedge CLK_I)
begin
	if(RST_I)										dat_sym_ena <= 1'b0;
	else if (CYC_I & (~icyc)) 					dat_sym_ena <= 1'b0;	
	else if (CYC_O & (pre_cnt == 9'd318))	dat_sym_ena <= 1'b1;
	else if (~CYC_O)								dat_sym_ena <= 1'b0;
end 

always @(posedge CLK_I)
begin
	if(RST_I)	begin
		STB_O <= 1'b0;
		DAT_O <= 32'b0;
		end
	else if(pre_ena & (~out_halt)) begin	
		DAT_O <= Pre[pre_cnt];	
		STB_O <= 1'b1;
		end	
	else if(ival & (~out_halt)) begin	
		DAT_O <= idat;	
		STB_O <= 1'b1;
		end
	else if(~ival) begin	
		STB_O <= 1'b0;
		end
end

assign WE_O = STB_O;
endmodule
