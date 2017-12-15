`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:21 04/20/2012 
// Design Name: 
// Module Name:    Time_Synch 
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
module Time_Synch(
	input 			clk, rst, syn_run,
	input				metric_val,
	input  [21:0]	P_Metric_Re,P_Metric_Im,
	input  [21:0]	R_Metric,
	input  [3:0]	SNR,
	
	output 				syn_done,
	output reg [31:0]	FRE_O
   );
parameter	SYN_VAL = 6'd56;


reg [16:0] Synch_thres_coeff 	 [15:0];			// threshold in format 2.15
initial $readmemh("./MY_SOURCES/RTL_Synch_thres_coeff_q05.txt", Synch_thres_coeff);

wire ena = metric_val & syn_run;

wire [16:0] thres_coeff = Synch_thres_coeff[SNR];
wire [33:0] mult_thres_out;  // output of multiplying to threshold in format 9.25
mult thres_mult_ins (
   .clk(clk), 					// input clk 
	.sclr(rst), 				// input sclr
	.ce(ena), 					// input ce  	
   .a(R_Metric[21:5]), 		// input [16 : 0] a in format 7.10
   .b(thres_coeff), 			// input [16 : 0] b
   .p(mult_thres_out) 		// output [33 : 0] p
);
wire [22:0] R_Metric_thr = mult_thres_out[32:10];	// R metric multipies threshold in format 8.15

wire [22:0] P_Metric_mag;
wire appr_mag_val;
Appr_Mag P_Metic_mag_ins(
	.clk(clk),  .rst(rst), .ena(ena),
	.real_in(P_Metric_Re), 
	.imag_in(P_Metric_Im),
	.mag(P_Metric_mag),		// magnitute of P metric in format 8.15
	.val(appr_mag_val)	
    );
	 
wire [7:0] R_Metric_d64;	//reduced bit R_metric delay 64 in format 7.1
Delay2n #(.WIDTH(8), .D(64), .B(6)) RX_delay64(
	.clk(clk), 	.rst(rst), .ena(ena),
	.dat_in(R_Metric[21:14]),	
	.dat_out(R_Metric_d64)
	); 
	
reg cmp_metric;
always@(posedge clk) 
begin
	if (rst)	cmp_metric = 1'b0;
	else if (appr_mag_val & (P_Metric_mag > R_Metric_thr)) cmp_metric = 1'b1;
	else if (~syn_run) cmp_metric = 1'b0;
end

reg [6:0] find_peak_cnt;
wire 		 find_peak_ena = (~find_peak_cnt[6]) & cmp_metric & syn_run;
always@(posedge clk) 
begin
	if (rst)	find_peak_cnt = 7'b1;
	else if (~syn_run) find_peak_cnt = 7'b1;
	else if (find_peak_ena) find_peak_cnt = find_peak_cnt + 1'b1;
	
end

wire [22:0] add_metric = R_Metric[21:0] + {R_Metric_d64,14'd0};	
reg 			peak_dec;
reg  [22:0] peak_add_metric;
always@(posedge clk) 
begin
	if (rst)	begin
			FRE_O 	<= 32'd0;
			peak_dec <= 1'b0;
			peak_add_metric <= 23'd0;
		end
	else if (find_peak_ena) begin	
		if (peak_add_metric < add_metric) begin 
				FRE_O 	= {P_Metric_Im[21:6],P_Metric_Re[21:6]};
				peak_add_metric <= add_metric;
				peak_dec <= 1'b1;
				end
		else	peak_dec <= 1'b0;
		end
	else begin
		peak_dec <= 1'b0;
		peak_add_metric <= 23'd0;
	end		
end 
	

reg [5:0] syn_cnt;
wire 		 syn_cnt_run = ~(syn_cnt == 6'd0);
always@(posedge clk) 
begin
	if (rst)												syn_cnt <= 6'd0;	
	if (~ syn_run) 									syn_cnt <= 6'd0;	
	else if (find_peak_ena & (~syn_cnt_run)) 	syn_cnt <= 6'b1;
	else if (syn_cnt == SYN_VAL) 					syn_cnt <= 6'b0;
	else if (syn_cnt_run & peak_dec) 			syn_cnt <= 6'b1;
	else if (syn_cnt_run) 							syn_cnt <= syn_cnt + 1'b1;
	
end 

assign syn_done = (syn_cnt == SYN_VAL) & (~find_peak_ena);
endmodule
