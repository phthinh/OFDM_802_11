`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:32 11/10/2012 
// Design Name: 
// Module Name:    Ph_Est 
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
module PhTrack_Est(
	input 		 clk, rst, start, datin_val,
	input [15:0] datin_Re,		//Q 3.13		(Q10.6)
	input [15:0] datin_Im,		//Q 3.13		(Q10.6)
	input	[1:0]	 alloc_vec,
	output[15:0] ph_Re,		 
	output[15:0] ph_Im,
	output reg	 ph_oval
    );
wire P_pos = (alloc_vec == 2'b01);		// positve pilot
wire P_neg = (alloc_vec == 2'b10);		// negative pilot
wire [15:0] Pdiff_Re = (P_pos)? datin_Re :(P_neg)? (~datin_Re +1'b1): 16'd0; //different phase between transmitted and received pilots
wire [15:0] Pdiff_Im = (P_pos)? datin_Im :(P_neg)? (~datin_Im +1'b1): 16'd0;

reg [17:0] Pacc_Re, Pacc_Im;

always @(posedge clk) begin
	if (rst)					begin	Pacc_Re <= 18'd0;
										Pacc_Im <= 18'd0;
								end
	else if (start)		begin	Pacc_Re <= 18'd0;
										Pacc_Im <= 18'd0;
								end
	else if (datin_val &(P_pos|P_neg))	begin	Pacc_Re <= Pacc_Re + {{2{Pdiff_Re[15]}},Pdiff_Re};
															Pacc_Im <= Pacc_Im + {{2{Pdiff_Im[15]}},Pdiff_Im};
								end
end

reg [1:0] P_cnt;
always @(posedge clk) begin
	if (rst)	 									P_cnt <= 2'b0;
	else if (start)							P_cnt <= 2'b0;
	else if (datin_val &(P_pos|P_neg))	P_cnt <= P_cnt + 1'b1;
end

always @(posedge clk) begin
	if (rst)	 															ph_oval <= 1'b0;
	else if ((P_cnt == 2'b11)& datin_val &(P_pos|P_neg))	ph_oval <= 1'b1;
	else																	ph_oval <= 1'b0;
end

assign ph_Re		= Pacc_Re[17:2];		//Q3.13; (Q10.6)
assign ph_Im		= Pacc_Im[17:2];		//Q3.13; (Q10.6)

endmodule
