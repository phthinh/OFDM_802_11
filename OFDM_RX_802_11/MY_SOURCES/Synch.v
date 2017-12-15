`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:15 03/29/2012 
// Design Name: 
// Module Name:    Synch 
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
module Synch(	
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,
	input 			CYC_I, 
	input				STB_I,
	output			ACK_O,
	
	output [31:0]	DAT_O,
	output 			WE_O, STB_O, CYC_O,
	input				ACK_I
   );
	
reg [2:0] cyc_i_pp;
always @(posedge CLK_I) begin
	if(RST_I)	cyc_i_pp <= 3'b00;		
	else 			cyc_i_pp <= {cyc_i_pp[1:0], CYC_I};	
end
wire nfrm_rst = ({cyc_i_pp, CYC_I} == 4'b0001)|(({cyc_i_pp, CYC_I} == 4'b0011));

//wire [15:0] thres;					//timing metric threshold	
wire out_halt;
reg [15:0] 	rx_Re, rx_Im;
reg 			iena;

always @(posedge CLK_I) begin
	if(RST_I | nfrm_rst) begin
		rx_Re <= 16'd0;
		rx_Im <= 16'd0; 
		iena  <= 1'b0;
		end
	else if (CYC_I & STB_I & (~out_halt)) begin
			rx_Re <= DAT_I[15:0];
			rx_Im <= DAT_I[31:16];
			iena  <= 1'b1;
		end
	else 	iena  <= 1'b0;
end


wire time_syn_run;
wire [31:0] syn_dat;						//[31:16]: imaginary part; [15:0]: real part in format 2.14	

//================================ Calculate P metric ==============================//
wire [15:0] rx_Im_d16,rx_Re_d16;
Delay2n #(.WIDTH(32), .D(16), .B(4)) RX_delay64(
	.clk(CLK_I), 
	.rst(RST_I | nfrm_rst), 
	.ena(iena),
	.dat_in({rx_Im,rx_Re}),	
	.dat_out({rx_Im_d16,rx_Re_d16})
);

wire [15:0] rx_Im_conj;
assign rx_Im_conj = (~rx_Im) + 1'b1;

wire [15:0] ACRMult_Re, ACRMult_Im;
wire [79:0] CM_out;
wire 			CM_val;

Complex_Multiplier ACR_Mult_ins (
	.aclk(CLK_I), 										// input aclk
	.aresetn(~(RST_I | nfrm_rst)), 				// input aresetn
	.s_axis_a_tvalid(iena), 						// input s_axis_a_tvalid
	.s_axis_a_tdata({rx_Im_conj, rx_Re}), 		// input [31 : 0] s_axis_a_tdata
	.s_axis_b_tvalid(iena),							// input s_axis_b_tvalid
	.s_axis_b_tdata({rx_Im_d16,  rx_Re_d16}), // input [31 : 0] s_axis_b_tdata
	.m_axis_dout_tvalid(CM_val), 					// ouput m_axis_dout_tvalid
	.m_axis_dout_tdata(CM_out[79:0])				// ouput [79 : 0] m_axis_dout_tdata: real = [32:0]; image = [79:40];
	); 			
assign ACRMult_Re = CM_out[30:15];				// rounding output in format 1.15
assign ACRMult_Im = CM_out[70:55];

wire [15:0] ACRMult_Re_d64, ACRMult_Im_d64;
Delay2n #(.WIDTH(32), .D(64), .B(6)) ACR_delay64(
	.clk(CLK_I), 
	.rst(RST_I | nfrm_rst), 
	.ena(CM_val),
	.dat_in({ACRMult_Im, ACRMult_Re}),	
	.dat_out({ACRMult_Im_d64,ACRMult_Re_d64})
	);
	
wire [15:0] ACRMult_Re_d96, ACRMult_Im_d96;
Delay2n #(.WIDTH(32), .D(32), .B(5)) ACR_delay32(
	.clk(CLK_I), 
	.rst(RST_I | nfrm_rst), 
	.ena(CM_val),
	.dat_in({ACRMult_Im_d64, ACRMult_Re_d64}),	
	.dat_out({ACRMult_Im_d96,ACRMult_Re_d96})
	);
	
	
wire [22:0] P_Re, P_Im;		// rounding P_Metric in format 8.15
Comp_Acc_Sum #(.WIDTH(23)) P_Acc_Sum_ins(
   .clk(CLK_I),
	.rst(RST_I | nfrm_rst),
	.ena(CM_val),
	.a_Re(ACRMult_Re), 
	.a_Im(ACRMult_Im),
	.a_d_Re(ACRMult_Re_d96),
	.a_d_Im(ACRMult_Im_d96),
	.sum_out_Re(P_Re), 
	.sum_out_Im(P_Im)
   );
	
assign P_Metric = {P_Im, P_Re};
//================================ End P metric ===================================//

//================================ Calculate R metric ==============================//
wire [79:0] ABSrx_out;
wire [16:0] rx_abs;									// rounding output of ABS in format 2.15
wire 			ABSrx_val;
wire [23:0] R_Metric;								// rounding R Metric in format 9.15

Complex_Multiplier ABSrx_ins (
	.aclk(CLK_I), 										// input aclk
	.aresetn(~(RST_I | nfrm_rst)), 				// input aresetn
	.s_axis_a_tvalid(iena), 						// input s_axis_a_tvalid
	.s_axis_a_tdata({rx_Im_conj, rx_Re}), 		// input [31 : 0] s_axis_a_tdata
	.s_axis_b_tvalid(iena),							// input s_axis_b_tvalid
	.s_axis_b_tdata({rx_Im,  	  rx_Re}), 		// input [31 : 0] s_axis_b_tdata
	.m_axis_dout_tvalid(ABSrx_val), 				// ouput m_axis_dout_tvalid
	.m_axis_dout_tdata(ABSrx_out)					// ouput [79 : 0] m_axis_dout_tdata
	); 				
assign rx_abs = ABSrx_out[31:15];				// rounding output of ABS in format 2.15

wire [16:0] rx_abs_d64;
Delay2n #(.WIDTH(17), .D(64), .B(6)) rx_abs_delay128(
	.clk(CLK_I), 
	.rst(RST_I | nfrm_rst), 
	.ena(ABSrx_val),
	.dat_in(rx_abs),	
	.dat_out(rx_abs_d64)
	);
	
wire [16:0] rx_abs_d96;
Delay2n #(.WIDTH(17), .D(32), .B(5)) rx_abs_delay32(
	.clk(CLK_I), 
	.rst(RST_I | nfrm_rst), 
	.ena(ABSrx_val),
	.dat_in(rx_abs_d64),	
	.dat_out(rx_abs_d96)
	);

Acc_Sum R_Acc_Sum_ins(
   .clk(CLK_I),
	.rst(RST_I | nfrm_rst),
	.ena(ABSrx_val),
	.a(rx_abs), 
	.a_d(rx_abs_d96),
	.sum_out(R_Metric)								// rounding R Metric in format 9.15
   );
//================================== End R metric ==================================//


wire [23:0] P_Metric_mag;
wire 			P_Metric_mag_val;
Appr_Mag #(.WIDTH(23))P_Metic_mag_ins(
	.clk(CLK_I),  .rst(RST_I | nfrm_rst), .ena(CM_val),
	.real_in(P_Re), 
	.imag_in(P_Im),
	.mag(P_Metric_mag),		// magnitute of P metric in format 9.15
	.val(P_Metric_mag_val)	
    );

wire Freoff_Est_Comp_ena;
Coarse_Time_Synch Coarse_Time_Synch_ins(
	.clk(CLK_I), .rst(RST_I | nfrm_rst), .cyc_i(CYC_I),
	.ena((time_syn_run & P_Metric_mag_val)),
	.P_Metric_mag(P_Metric_mag),
	.R_Metric(R_Metric),
	.Freoff_Est_Comp_ena(Freoff_Est_Comp_ena)
    );
	 
wire Freoff_Est_Comp_val;
Freoff_Est_Comp Freoff_Est_Comp_ins(
    .clk(CLK_I),  .rst(RST_I | nfrm_rst), 
	 .ena(Freoff_Est_Comp_ena),
	 .ce(~out_halt),
	 .dat_in({rx_Im,rx_Re}),					//[31:16]: imaginary part; [15:0]: real part in format 1.15
	 .stb_in(iena),
	 .P_Re(P_Re), 
	 .P_Im(P_Im),
	 .dat_out(syn_dat),				//[31:16]: imaginary part; [15:0]: real part in format 2.14
	 .out_val(Freoff_Est_Comp_val)
	 );

//wire 			Fine_Time_ena = Freoff_Est_Comp_val & time_syn_run;
Fine_Time_Synch Fine_Time_Synch_ins(
	.clk(CLK_I), .rst(RST_I | nfrm_rst),	
	.cyc_i(CYC_I), 
	.stb_i(STB_I),
	.ack_o(ACK_O),	
	.dat_out(DAT_O),							//[31:16]: imaginary part; [15:0]: real part in format 2.14
	.we_o(WE_O), 
	.stb_o(STB_O), 
	.cyc_o(CYC_O),
	.ack_i(ACK_I),
	
	.dat_in(syn_dat),							//[31:16]: imaginary part; [15:0]: real part in format 2.14
	.dat_in_val(Freoff_Est_Comp_val),
	
	.time_syn_run(time_syn_run),	
	.out_halt(out_halt)
	);

endmodule
