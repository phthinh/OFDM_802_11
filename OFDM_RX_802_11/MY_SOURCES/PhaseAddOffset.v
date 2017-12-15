`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:57 04/29/2012 
// Design Name: 
// Module Name:    PhaseAddOffset 
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
module PhaseAddOffset(
	 input clk,
    input rst,
    input ld,
    input [15:0] phase_in, 	// phase in from phase translation in format 3.13
    output reg [15:0] phase_out,	// phase offset out for compensating short symbol in format 3.13
    output reg phase_out_rdy
    );
parameter Pi  	  	  	 =  16'h648B;		//pi in 3Q16 (format 3.13)
parameter ifre_off_L  =  19'h25B30;		//pre integer frequency offset * M=64 in 6Q19 (format 6.13) = -(2*pi*n_off / NFFT) * M; 
													//n_off is chosen -12 to limit frequency offset -14:18 normalized frequency offset
reg ld_pp;

always @(posedge clk)
begin
	if(rst)		ld_pp <= 1'b0; 
	else 			ld_pp <= ld;
end

wire signed [19:0] adj_phase_in;		// adjusted phase in for pre-added integer frequency offset; = angle(P) - 2*pi*n_off * L / NFFT = phase_in + ifre_off
												// in format 7.13
assign adj_phase_in = $signed({{3{phase_in[15]}}, phase_in}) + $signed(ifre_off_L);
reg signed [22:0] phase;				// in format 10.13
wire signed [22:0] phase_adj1 = ($signed(phase >>> 1) - $signed(Pi)) <<1;
wire signed [22:0] phase_adj2 = ($signed(phase >>> 1) + $signed(Pi)) <<1;

reg 	phase_adj_run;
always @(posedge clk)
begin
	if(rst)		begin
		phase 			<= 25'd0;
		phase_out_rdy	<= 1'b0;
		phase_out		<= 16'd0;
		phase_adj_run  <= 1'b0;
	end
	else if (ld & (~ld_pp))begin
		phase 			<= $signed({adj_phase_in, 2'd0}) + $signed({{3{adj_phase_in[19]}}, adj_phase_in[19:1]});  //= (angle(P)/L + 2*pi*n_off / NFFT)*288
		phase_out_rdy	<= 1'b0;
		phase_adj_run  <= 1'b1;
	end
	else if ($signed(phase) > $signed(Pi))  phase <= phase_adj1; 
	else if ($signed(phase) < $signed(-Pi)) phase <= phase_adj2; 
	else if (phase_adj_run)	begin
		phase_out <=  phase[15:0];	
		phase_out_rdy  <= 1'b1;			
		phase_adj_run  <= 1'b0;
	end
	else phase_out_rdy  <= 1'b0;	
end

endmodule
