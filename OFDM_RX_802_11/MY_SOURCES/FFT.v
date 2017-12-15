`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:50 03/29/2012 
// Design Name: 
// Module Name:    FFT 
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
module FFT(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,					// DAT_I_Im[31:16] DAT_I_Re[15:0] in format 2.14
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,				
	
	output reg [31:0]	DAT_O,				// DAT_O_Im[31:16] DAT_O_Re[15:0] in format 5.11
	output reg		CYC_O, STB_O,
	output			WE_O,
	input				ACK_I	
    );

wire  		s_dat_val, s_dat_rdy;
wire			m_dat_val, m_dat_rdy, m_dat_tlast;
wire 	[7:0]	m_index;
wire 			event_status_channel_halt, event_data_in_channel_halt,event_data_out_channel_halt;
wire			aresetn;
wire			frame_start;
wire	[31:0] fft_datout;
assign		aresetn = ~RST_I;
FFT_ipcore FFT_ins (
	.aclk(CLK_I), 						// input aclk
	.aresetn(aresetn), 					// input aresetn
	//.s_axis_config_tdata(16'h0157), // input [15 : 0] s_axis_config_tdata; scale: shift right 9 bits : 2, 2, 2, 3
	.s_axis_config_tdata(8'h2B), // input [15 : 0] s_axis_config_tdata; scale: shift right 3 bits : 0, 1, 1, 1
	.s_axis_config_tvalid(1'b1), // input s_axis_config_tvalid
	.s_axis_config_tready(), // ouput s_axis_config_tready
	.s_axis_data_tdata(DAT_I[31:0]), // input [31 : 0] s_axis_data_tdata
	.s_axis_data_tvalid(s_dat_val), // input s_axis_data_tvalid
	.s_axis_data_tready(s_dat_rdy), // ouput s_axis_data_tready
	.s_axis_data_tlast(1'b0), // input s_axis_data_tlast
	.m_axis_data_tdata(fft_datout), // ouput [31 : 0] m_axis_data_tdata		in format 5.11
	.m_axis_data_tuser(m_index[7:0]), // ouput [7 : 0] m_axis_data_tuser
	.m_axis_data_tvalid(m_dat_val), // ouput m_axis_data_tvalid
	.m_axis_data_tready(m_dat_rdy), // input m_axis_data_tready
	.m_axis_data_tlast(m_dat_tlast), // ouput m_axis_data_tlast
	.event_frame_started(frame_start), // ouput event_frame_started
	.event_tlast_unexpected(), // ouput event_tlast_unexpected
	.event_tlast_missing(), // ouput event_tlast_missing
	.event_status_channel_halt(event_status_channel_halt), // ouput event_status_channel_halt
	.event_data_in_channel_halt(event_data_in_channel_halt), // ouput event_data_in_channel_halt
	.event_data_out_channel_halt(event_data_out_channel_halt)); // ouput event_data_out_channel_halt

assign	s_dat_val 	= (CYC_I)&&(STB_I)&&(WE_I);
assign	ACK_O		 	= s_dat_rdy;
assign	m_dat_rdy 	= ~(STB_O & (~ACK_I));
 
reg data_tlast_pp;
always @(posedge CLK_I)
begin
	if(RST_I)		data_tlast_pp <= 1'b0; 
	else 				data_tlast_pp <= m_dat_tlast;
end

reg [3:0] frm_cnt;
always @(posedge CLK_I)
begin
	if(RST_I)										frm_cnt <= 1'b0; 
	else if(frame_start &(~m_dat_tlast))	frm_cnt <= frm_cnt + 1'b1;
	else if((~frame_start)& m_dat_tlast)	frm_cnt <= frm_cnt - 1'b1;
end

always @(posedge CLK_I)
begin
	if(RST_I)																					CYC_O <= 1'b0; 
	else if (m_dat_val)																		CYC_O <= 1'b1;
	else if (data_tlast_pp & (~m_dat_val) & (~CYC_I) & (frm_cnt == 4'd0)) 	CYC_O <= 1'b0; 
end

always @(posedge CLK_I)
begin
	if(RST_I)							DAT_O <= 32'd0; 	
	else if (m_dat_rdy)				DAT_O <= {fft_datout[31:16], fft_datout[15:0]};		
end

always @(posedge CLK_I)
begin
	if(RST_I)				STB_O <= 1'b0; 	
	else if (m_dat_rdy)	STB_O <= m_dat_val;	
end
assign	WE_O			= STB_O;

endmodule
