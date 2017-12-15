`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:43 04/23/2012 
// Design Name: 
// Module Name:    Synch_out 
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
module Fine_Time_Synch(
	input clk, rst,
	input 				cyc_i, 
	input					stb_i,
	output 				ack_o,
	output reg [31:0]	dat_out,
	output reg			cyc_o, stb_o, 
	output				we_o,
	input					ack_i,
	
	input [31:0] 		dat_in,
	input 				dat_in_val,
	//input					CR_ena,
//	input	[6:0]			CR_out_Re, CR_out_Im,
	
	output reg			time_syn_run,	
	output 				out_halt
	);


reg	time_syn_done;	

wire 	fine_Time_ena = dat_in_val & time_syn_run;

reg 	cyc_i_pp;
always @(posedge clk)begin 
	if(rst) cyc_i_pp <= 1'b0;
	else    cyc_i_pp <= cyc_i;
end

always @(posedge clk)begin 
	if(rst) 									time_syn_run <= 1'b0;
	else if (cyc_i & (~cyc_i_pp)) 	time_syn_run <= 1'b1;
	else if (time_syn_done) 			time_syn_run <= 1'b0;
end

wire [1:0]	CR_in  = {dat_in[31], dat_in[15]};
wire [6:0] 	CR_out_Re, CR_out_Im;

Signed_Correlator Signed_Correlator_ins(
	.clk(clk), .rst(rst),
	.ena(fine_Time_ena),
	.CR_in(CR_in),				//[1] :signed bit of imaginary part, [0] :signed bit of real part,
	.CR_out_Re(CR_out_Re), 
	.CR_out_Im(CR_out_Im)
   );
	

reg CR_mag_run;
always @(posedge clk)begin 
	if(rst) 										CR_mag_run <= 1'b0;
	else if (fine_Time_ena) 				CR_mag_run <= 1'b1;
	else  										CR_mag_run <= 1'b0;
end

wire [7:0] CR_out_mag;
Appr_Mag #(.WIDTH(7)) CR_out_mag_ins(
	.clk(clk),  .rst(rst), .ena(CR_mag_run),
	.real_in(CR_out_Re), 
	.imag_in(CR_out_Im),
	.mag(CR_out_mag),		
	.val(CR_out_mag_val)	 
    );
	 
	 

reg [6:0] CR_peak_dec_cnt; // counter for cross-corelation peak detect in 128 sample 
always @(posedge clk)begin 
	if(rst) 										CR_peak_dec_cnt <= 7'b0;
	else if (cyc_i & (~cyc_i_pp)) 		CR_peak_dec_cnt <= 7'b0;
	else if (fine_Time_ena) 				CR_peak_dec_cnt <= CR_peak_dec_cnt + 1'b1;
end
reg CR_peak_dec_ena;
always @(posedge clk)begin 
	if(rst) 										CR_peak_dec_ena <= 1'b0;
	else if (CR_peak_dec_cnt == 7'd63) 	CR_peak_dec_ena <= 1'b1;
	else if (CR_peak_dec_cnt == 7'd95) 	CR_peak_dec_ena <= 1'b0;
end

reg [7:0] CR_max;
wire 		 CR_cmp = (CR_max < CR_out_mag);
always @(posedge clk)begin 
	if(rst)										CR_max	<= 8'd0;
	else if (cyc_i & (~cyc_i_pp)) 		CR_max	<= 8'b0;
	else if (CR_peak_dec_ena & CR_cmp) 	CR_max	<= CR_out_mag;
end

reg [4:0] syn_cnt;	// counter for delay 15 samples after the peak of CR to determine the first point of last long preabmble 
always @(posedge clk)begin 
	if(rst)												syn_cnt	<= 5'b01111;
	else if (CR_peak_dec_cnt == 7'd63) 			syn_cnt	<= 5'b10000;
	else if (CR_peak_dec_ena & CR_cmp) 			syn_cnt	<= 5'b10000;
	else if (CR_out_mag_val & (syn_cnt[4])) 	syn_cnt	<= syn_cnt + 1'b1;
	else if (~cyc_i) 									syn_cnt	<= 5'b01111;
end

wire syn_dec = (syn_cnt == 5'b11110);
always @(posedge clk)begin 
	if(rst) 										time_syn_done <= 1'b0;
	else if (cyc_i & (~cyc_i_pp))			time_syn_done <= 1'b0;
	else if (syn_dec) 						time_syn_done <= 1'b1;
	else if (~cyc_i & (~dat_in_val) ) 	time_syn_done <= 1'b0;
end

always @(posedge clk)begin 
	if(rst) 	begin
			dat_out <= 32'b0;
			cyc_o	  <= 1'b0;
			stb_o	  <= 1'b0;
			end
	else if ((~out_halt) & time_syn_done) begin
			cyc_o	  <= 1'b1;
			dat_out <= dat_in;
			stb_o	  <= dat_in_val;
			end
	else if (~cyc_i & (~dat_in_val)) 	begin			
			cyc_o	  <= 1'b0;
			stb_o	  <= 1'b0;
			end
end
assign  out_halt 	= stb_o & (~ack_i);
assign  ack_o 		= (cyc_i & stb_i & (~out_halt));
assign  we_o 		= stb_o;
endmodule
