`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:14 04/09/2013 
// Design Name: 
// Module Name:    QAM64_Mod 
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
`define Qn7 16'h8001
`define Qn5 16'h9D3F
`define Qn3 16'hC2BF
`define Qn1 16'hEC40
`define Qp1 16'h13C0
`define Qp3 16'h3B41
`define Qp5 16'h62C1
`define Qp7 16'h7FFF

module QAM64_Mod(
	input 			CLK_I, RST_I,
	input [5:0] 	DAT_I,
	input 			CYC_I, WE_I, STB_I, 
	output			ACK_O,
	
	output reg [31:0]	DAT_O,
	output reg			CYC_O, STB_O,
	output				WE_O,
	input					ACK_I	
    );

reg [5:0]	idat;
reg			ival;	
wire 			out_halt, ena;

reg [15:0] 	datout_Re, datout_Im;

assign 	out_halt = STB_O & (~ACK_I);
assign 	ena 		= CYC_I & STB_I & WE_I;
assign 	ACK_O 	= ena &(~out_halt);


	
always @(posedge CLK_I) begin
	if(RST_I) 			idat<= 6'b000000;
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

always @(*) begin
	case (idat[5:3])
      3'b000 :	datout_Im = `Qn7;
		3'b100 : datout_Im = `Qn5;
		3'b110 :	datout_Im = `Qn3;
		3'b010 : datout_Im = `Qn1;
		3'b011 : datout_Im = `Qp1;
		3'b111 : datout_Im = `Qp3;
		3'b101 : datout_Im = `Qp5;
		3'b001 : datout_Im = `Qp7;
		default: datout_Im = 16'd0;
	endcase
end

always @(*) begin
	case (idat[2:0])
      3'b000 :	datout_Re = `Qn7;
		3'b100 : datout_Re = `Qn5;
		3'b110 :	datout_Re = `Qn3;
		3'b010 : datout_Re = `Qn1;
		3'b011 : datout_Re = `Qp1;
		3'b111 : datout_Re = `Qp3;
		3'b101 : datout_Re = `Qp5;
		3'b001 : datout_Re = `Qp7;
		default: datout_Re = 16'd0;
	endcase
end

endmodule
