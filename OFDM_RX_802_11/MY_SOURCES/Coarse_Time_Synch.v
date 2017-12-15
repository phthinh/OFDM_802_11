`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:17 05/14/2012 
// Design Name: 
// Module Name:    Coast_Time_Synch 
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
module Coarse_Time_Synch(
	input clk, rst, cyc_i,
	input ena,
	input [23:0] P_Metric_mag,
	input [23:0] R_Metric,
	output reg	 Freoff_Est_Comp_ena
    );
reg frm_dec;
wire [23:0] R_Metric_thr = R_Metric >>1;

reg [3:0] smooth_cnt;
wire frm_dec_cmp = (P_Metric_mag > R_Metric_thr) & (|R_Metric_thr[23:8]);
always @(posedge clk) begin
	if(rst)	smooth_cnt <= 4'd0;
	else if (ena) begin
		if (frm_dec_cmp & (~(smooth_cnt == 4'b1111))) smooth_cnt <= smooth_cnt + 1'b1;
		end
	else 		smooth_cnt <= 4'd0;
end

always @(posedge clk) begin
	if(rst)									frm_dec <= 1'b0;
	else if (smooth_cnt == 4'b1111)	frm_dec <= 1'b1;
	else if (~cyc_i) 						frm_dec <= 1'b0;
end

wire plat_dec;
wire signed [16:0] P_diff;
wire 			[15:0] P_in;		// 16 higher bits from P_Metric_mag
wire 			[15:0] P_d64,P_d96;

assign	P_in = P_Metric_mag[23:8];
Delay2n #(.WIDTH(16), .D(64), .B(6)) P_delay64(
	.clk(clk), 
	.rst(rst), 
	.ena(frm_dec),
	.dat_in(P_in),	
	.dat_out(P_d64)
	);
	
Delay2n #(.WIDTH(16), .D(32), .B(5)) P_delay32(
	.clk(clk), 
	.rst(rst), 
	.ena(frm_dec),
	.dat_in(P_d64),	
	.dat_out(P_d96)
	);
	
assign P_diff = $signed({1'b0,P_in}) - $signed({1'b0,P_d96});

reg signed [16:0] ins_max; 					// instantaneous maxima
reg signed [18:0] grp_max, P_diff_acc; 	// group maxima

reg [1:0] grp_cnt;
reg [2:0] ins_cnt;

always@ (posedge clk)begin
	if(rst) 		  		grp_cnt <= 3'b000;
	else if (~cyc_i) 	grp_cnt <= 3'b000;
	else if (frm_dec) 		grp_cnt <= grp_cnt + 1'b1;
end

always@ (posedge clk)begin
	if(rst) 		  						P_diff_acc <= 19'd0;
	else if (grp_cnt == 2'b00) 	P_diff_acc <= {{2{P_diff[16]}},P_diff};
	else if (frm_dec) 				P_diff_acc <= P_diff_acc + {{2{P_diff[16]}},P_diff};
end

wire grp_cmp = (grp_max < P_diff_acc) & (grp_cnt == 2'b00);
always@ (posedge clk)begin
	if(rst) 		  			grp_max <= 19'd0;
	else if (~cyc_i) 		grp_max <= 19'd0;
	else if (grp_cmp) 	grp_max <= P_diff_acc;
end

reg grp_cmp_lat;
always@ (posedge clk)begin
	if(rst) 		  						grp_cmp_lat <= 1'b0;
	else if (grp_cnt == 2'b00) 	grp_cmp_lat <= (grp_max < P_diff_acc);
end

wire ins_cmp = (ins_max < P_diff);
always@ (posedge clk)begin
	if(rst) 		  			ins_max <= 20'd0;
	else if (~cyc_i) 		ins_max <= 20'd0;
	else if (ins_cmp) 	ins_max <= P_diff;
end

always@ (posedge clk)begin
	if(rst) 		  		ins_cnt <= 3'b000;
	else if (~cyc_i) 	ins_cnt <= 3'b000;
	else if (ins_cmp) ins_cnt <= 3'b000;
	else if (frm_dec) ins_cnt <= ins_cnt + 1'b1;
end

assign plat_dec = (~grp_cmp_lat)	& (ins_cnt == 3'b111);

always@ (posedge clk)begin
	if(rst) 		  			Freoff_Est_Comp_ena <= 1'b0;
	else if (~cyc_i) 		Freoff_Est_Comp_ena <= 1'b0;
	else if (plat_dec) 	Freoff_Est_Comp_ena <= 1'b1;
end
endmodule
