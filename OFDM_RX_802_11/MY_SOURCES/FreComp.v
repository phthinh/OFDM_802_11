`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:29 03/29/2012 
// Design Name: 
// Module Name:    FreComp 
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
module FreComp(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,					// DAT_I_Im[31:16] DAT_I_Re[15:0] in format 1.15
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,
	
	input	[31:0]	FRE_I,					// P[d] metric P_Im[31:16] P_Re[15:0] in format 2.14
	input				FRE_I_nd,
	
	output reg [31:0]	DAT_O,				// DAT_O_Im[31:16] DAT_O_Re[15:0] in format 2.14
	output reg		CYC_O, STB_O,			
	output			WE_O,
	input				ACK_I	
    );


wire  phase_trans_rdy, phase_trans_rfd;
wire	[15:0] phase_trans_out;

//wire  phase_offs_rdy;
//wire	[15:0] phase_offs_out;

wire [15:0] phase_rot;
wire 			phase_rot_nd;

wire [15:0] phase_rot_xout, phase_rot_yout;
wire			phase_rot_rdy;


wire out_halt = STB_O & (~ACK_I);
wire datin_ena = CYC_I & STB_I & WE_I;

assign ACK_O = datin_ena &(~out_halt);

reg CYC_I_pp;
always @(posedge CLK_I or posedge RST_I)
begin
	if(RST_I)	CYC_I_pp <= 1'b0; 
	else			CYC_I_pp <= CYC_I;
end


FreComp_PhaseTrans FreComp_PhaseTrans_ins (
  .x_in(FRE_I[15:0]), 	// input [15 : 0] x_in
  .y_in(FRE_I[31:16]), 	// input [15 : 0] y_in
  .nd(FRE_I_nd), 	// input nd
  .phase_out(phase_trans_out),// output [15 : 0] phase_out in format 3.13
  .rdy(phase_trans_rdy),	// output rdy
  .rfd(phase_trans_rfd), 	// output rfd
  .clk(CLK_I), 			// input clk 
  .sclr(RST_I) 			// input sclr
);

/*PhaseAddOffset PhaseAddOffset_ins(
	 .clk(CLK_I),
    .rst(RST_I),
    .ld(phase_trans_rdy),
    .phase_in(phase_trans_out), 	// phase in from phase translation in format 3.13
    .phase_out(phase_offs_out),	// phase offset out for compensating short symbol in format 3.13
    .phase_out_rdy(phase_offs_rdy)    );
*/

wire acc = datin_ena;
wire phase_acc_rdy;
FreComp_PhaseRotAcc FreComp_PhaseRotAcc_ins(
    .clk(CLK_I),						//input clock
    .rst(RST_I),						//input reset
    //.ld(phase_offs_rdy),			//input load initial phase
	 .ld(phase_trans_rdy),
    .acc(acc),							//input Accumulate phase
	 .ce(~out_halt),
	 //.phase_ld(phase_offs_out),		//input [15:0] phase offset input
	 .phase_ld(16'd0),		//input [15:0] phase offset input
    .phase_in(phase_trans_out),	//input [15:0] phase input
    .phase_out(phase_rot),			//output[15:0] phase output
    .phase_out_rdy(phase_acc_rdy)	//output	phase out ready		
    );
	 
assign phase_rot_nd = datin_ena;
wire phase_rot_ce = (~out_halt);
wire [15:0] phase_rot_x_in = {DAT_I[15], DAT_I[15:1]};     //in format 2.14
wire [15:0] phase_rot_y_in = {DAT_I[31], DAT_I[31:17]} ;		//in format 2.14
FreComp_PhaseRot FreComp_PhaseRot_ins (
  .x_in(phase_rot_x_in), 	// input [15 : 0] x_in
  .y_in(phase_rot_y_in), 	// input [15 : 0] y_in
  .phase_in(phase_rot),			// input [15 : 0] phase_in in format 3.13
  .nd(phase_rot_nd), 			// input nd
  .x_out(phase_rot_xout),		// output [15 : 0] x_out
  .y_out(phase_rot_yout), 		// output [15 : 0] y_out
  .rdy(phase_rot_rdy),			// output rdy
  .ce(phase_rot_ce),				// input ce
  .clk(CLK_I), 					// input clk  
  .sclr(RST_I) 					// input sclr
);

always @(posedge CLK_I or posedge RST_I)
begin
	if(RST_I)								CYC_O <= 1'b0; 
	else if (phase_rot_rdy &(CYC_I)) CYC_O <= 1'b1;
	else if ((~CYC_I) & (~STB_O)) 	CYC_O <= 1'b0; 
end

always @(posedge CLK_I or posedge RST_I)
begin
	if(RST_I)	begin
		STB_O <= 1'b0;
		DAT_O <= 32'b0;
		end
	else if (~out_halt)	begin
		DAT_O <= {phase_rot_yout, phase_rot_xout};
		STB_O <= phase_rot_rdy;
		end	
//	else if (~phase_rot_rdy) begin
//		DAT_O <= 32'd0;
//		STB_O <= 1'b0;
//		end	
end
assign WE_O = STB_O;

endmodule
