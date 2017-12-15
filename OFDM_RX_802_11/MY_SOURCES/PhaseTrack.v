`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:32 11/10/2012 
// Design Name: 
// Module Name:    Ch_PhaseTrack 
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
module PhaseTrack(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,						// DAT_I_Im[31:16] DAT_I_Re[15:0] in Q3.13 (Q10.6)
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,
	
	output reg [31:0]	DAT_O,					// DAT_I_Im[31:16] DAT_I_Re[15:0] in Q3.13 (Q10.6)
	output reg		CYC_O,STB_O,
	output 			WE_O, 
	input				ACK_I,
	
//	input [127:0] ALLOC_VEC,
	input [103:0] ALLOC_VEC,
	output			VEC_LD	
    );

reg [31:0]  idat;
reg 			iena;
wire 			istart, out_halt, datin_val;

assign 		datin_val = (WE_I) & STB_I & CYC_I;
assign 		out_halt  =  STB_O  & (~ACK_I);
assign 		ACK_O     =  datin_val &(~out_halt);
assign		istart	 =  CYC_I  & (~CYC_I_pp);

reg 	CYC_I_pp;
always @(posedge CLK_I) begin
	if(RST_I)	CYC_I_pp <= 1'b1;
	else  		CYC_I_pp <= CYC_I;
end
always @(posedge CLK_I) begin
	if(RST_I) 				idat <= 32'd0;
	else if ( ACK_O ) 	idat <= DAT_I;
end
always @(posedge CLK_I) begin
	if(RST_I)  				iena <= 1'b0;
	else if (datin_val)	iena <= 1'b1;
	else 						iena <= 1'b0;
end


wire [15:0] Ph_Re;
wire [15:0] Ph_Im;
wire			Ph_est_val;


wire [31:0] Ph_CmxMul_A; 			//[31:16]: imaginary part, [15:0]: real part
wire [31:0] Ph_CmxMul_B; 			//[31:16]: imaginary part, [15:0]: real part
wire [79:0] Ph_CmxMul_dout;		//[72:40]: imaginary part, [32:0]: real part
wire  		Ph_CmxMul_ival;
wire 			Ph_CmxMul_oval;

reg  [5:0]	dat_cnt;
always@(posedge CLK_I) begin
	if (RST_I)	 		  			dat_cnt <= 6'd0;
	else if (istart) 				dat_cnt <= 6'd0;
	else if (dat_cnt == 6'd51)	dat_cnt <= 6'd0;
	else if (iena) 				dat_cnt <= dat_cnt + 1'b1;
end	

//reg [127:0] alloc_reg;
reg [103:0] alloc_reg;

always@(posedge CLK_I)
begin
	if(RST_I)								alloc_reg	<= 103'd0;		
	else if(CYC_I & (~CYC_I_pp))		alloc_reg	<= ALLOC_VEC;
//	else if(dat_cnt == 6'd63)			alloc_reg	<= ALLOC_VEC;
	else if(dat_cnt == 6'd51)			alloc_reg	<= ALLOC_VEC;
end 

wire car_act  = alloc_reg[{dat_cnt,1'b1}] | alloc_reg[{dat_cnt,1'b0}];		// carrier is active

reg [5:0] 	buf_rdcnt;
//reg [32:0]	dat_buf [0:63];						//[32]: allocation bit; [31:16]: imaginary part; [15:0]: real part
reg [32:0]	dat_buf [0:51];						//[32]: allocation bit; [31:16]: imaginary part; [15:0]: real part

always@(posedge CLK_I) begin
	if (RST_I)	 		  			dat_buf[dat_cnt] <= 33'd0;
	else if (iena) 				dat_buf[dat_cnt] <= {car_act, idat};
end	


assign	Ph_start 		= iena & (dat_cnt == 6'd0);
PhTrack_Est Ph_Est_ins(
	.clk(CLK_I), .rst(RST_I), .start(Ph_start), .datin_val(iena),
	.datin_Re(idat[15:0]),
	.datin_Im(idat[31:16]),
	.alloc_vec({alloc_reg[{dat_cnt,1'b1}], alloc_reg[{dat_cnt,1'b0}]}),
	.ph_Re(Ph_Re),
	.ph_Im(Ph_Im),
	.ph_oval(Ph_est_val)
);


reg 			Ph_comp_ena;
reg [15:0] 	Ph_comp_Re, Ph_comp_Im;

always@(posedge CLK_I) begin
	if (RST_I)	 		  		begin						
											Ph_comp_ena <= 1'b0;
											Ph_comp_Re	<= 16'd0;
											Ph_comp_Im	<= 16'd0;
									end
	else if (Ph_est_val) 	begin						
											Ph_comp_ena <= 1'b1;
											Ph_comp_Re	<= Ph_Re;
											Ph_comp_Im	<= Ph_Im;
									end
//	else if (buf_rdcnt == 6'd63) 	Ph_comp_ena <= 1'b0;
	else if (buf_rdcnt == 6'd51) 	Ph_comp_ena <= 1'b0;
end	

always@(posedge CLK_I) begin
	if (RST_I)	 		  									buf_rdcnt <= 6'd0;
	else if ((buf_rdcnt == 6'd51) &(~out_halt)) 	buf_rdcnt <= 6'd0;
	else if (Ph_comp_ena &(~out_halt)) 				buf_rdcnt <= buf_rdcnt + 1'b1;
end	
 
assign   Ph_CmxMul_A 		 = dat_buf[buf_rdcnt][31:0];					// Q3.13 (Q10.6)
assign	Ph_CmxMul_B[15:0]  = Ph_comp_Re;				// Q1.15 : Q3.13 (Q10.6)
assign	Ph_CmxMul_B[31:16] = (~Ph_comp_Im + 1'b1); 	//imaginary part of pilot is zero.

assign	Ph_CmxMul_ival 	 = Ph_comp_ena & dat_buf[buf_rdcnt][32];

Ch_CmxMul Ph_CmxMul_ins(
	.aclk(CLK_I), // input aclk	
	.aresetn(~RST_I), // input aresetn
	.aclken(1'b1), // input aclken
	.s_axis_a_tvalid(Ph_CmxMul_ival), // input s_axis_a_tvalid
	.s_axis_a_tdata(Ph_CmxMul_A), // input [31 : 0] s_axis_a_tdata
	.s_axis_b_tvalid(Ph_CmxMul_ival), // input s_axis_b_tvalid
	.s_axis_b_tdata(Ph_CmxMul_B), // input [31 : 0] s_axis_b_tdata
	.m_axis_dout_tvalid(Ph_CmxMul_oval), // ouput m_axis_dout_tvalid
	.m_axis_dout_tdata(Ph_CmxMul_dout)); // ouput [79 : 0] m_axis_dout_tdata [32:0]:real part; [72:40]:imaginary part.



reg [5:0] ph_track_delay; // because of multiplier latency.
always @(posedge CLK_I) begin
	if(RST_I) 							ph_track_delay <= 6'd0;
	else if (CYC_O)					ph_track_delay <= {Ph_CmxMul_ival, ph_track_delay[5:1]};
end
wire 		ph_track_oval = ph_track_delay[0];

always @(posedge CLK_I) begin
	if(RST_I) 																CYC_O <= 1'b0;
	else if (Ph_CmxMul_ival)											CYC_O <= 1'b1;
	else if((~(ph_track_oval|CYC_I)) &(buf_rdcnt == 6'd0))	CYC_O <= 1'b0;
end
assign WE_O = CYC_O;

always @(posedge CLK_I) begin
	if(RST_I) 	begin
		DAT_O <= 32'd0;
		STB_O <= 1'b0;
		end
	else if (~out_halt) begin
		if(Ph_CmxMul_oval) 	begin	
			STB_O <= 1'b1;
//			DAT_O <= {Ph_CmxMul_dout[70:55], Ph_CmxMul_dout[30:15]};		//Q3.13 (Q10.6)
//			DAT_O <= {Ph_CmxMul_dout[61:46], Ph_CmxMul_dout[21:6]};		//Q3.13 (Q10.6)
			DAT_O <= {Ph_CmxMul_dout[67:52], Ph_CmxMul_dout[27:12]};		//Q3.13 (Q16.0)
			end		
		else STB_O <= 1'b0;
	end
end

endmodule
