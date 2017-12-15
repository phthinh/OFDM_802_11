`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:54 04/07/2012 
// Design Name: 
// Module Name:    FreComp_PhaseRotAcc 
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
module Phase_Acc(
    input clk,
    input rst,
	 input ld,
    input acc,
	 input ce,
    input [15:0] phase_in,
    output [15:0] phase_out,
    output reg phase_out_rdy
    );
parameter L 			= 6;  			//log2(64)
parameter Pi 			= 16'h648B;	//pi in 3Q16 (format 3.13)
parameter ifre_off	= 16'h0FB5;	   //pre integer frequency offset in 3Q16 (format 3.13) = -2*pi*n_off / NFFT; 
												//n_off is chosen -20 to limit integer frequency offset smaller than 18 normalized frequency offset
reg signed [15:0] phase_in_lat;
reg signed [15:0] phase_rot;

wire signed [15:0] phase_rot_acc  = phase_rot + phase_in_lat;
wire signed [15:0] phase_rot_adj1 = ($signed(phase_rot_acc >>> 1) - $signed(Pi)) <<1;
wire signed [15:0] phase_rot_adj2 = ($signed(phase_rot_acc >>> 1) + $signed(Pi)) <<1;
wire acc_gt_pi = ($signed(phase_rot_acc) > $signed(Pi));
wire acc_lt_pi = ($signed(phase_rot_acc) < $signed(-Pi));

wire [15:0] phase_in_rd = phase_in + {1'b1, {L-1{1'b0}}};		// rounding -1 -> 0 when shift L bits

always @(posedge clk)
begin
	if(rst)				phase_in_lat <= 16'd0; 
	else if (ld) 		phase_in_lat <= $signed(phase_in_rd) >>> L;		
end

always @(posedge clk)
begin
	if(rst)	begin
			phase_rot 		<= 16'd0; 
			phase_out_rdy  <= 1'b0;
			end
	else if (ce) begin
		if (ld)		begin
			phase_rot 		<= $signed(phase_in_rd) >>> L; 		
			phase_out_rdy  <= 1'b1;			
			end
		else if (acc) begin
			if 		(acc_gt_pi) 	phase_rot <= phase_rot_adj1; 
			else if 	(acc_lt_pi) 	phase_rot <= phase_rot_adj2; 
			else							phase_rot <= phase_rot_acc;	
			phase_out_rdy  <= 1'b1;			
			end
		else 	phase_out_rdy  <= 1'b0;
	end
end

assign phase_out = phase_rot;

endmodule
