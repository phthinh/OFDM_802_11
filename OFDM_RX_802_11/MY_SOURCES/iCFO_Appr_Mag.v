`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:35 09/21/2012 
// Design Name: 
// Module Name:    Appr_Mag 
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
module iCFO_Appr_Mag #(parameter WIDTH = 16)(
	input 						clk, rst, ena,
	input 	[WIDTH-1:0] 	real_in, imag_in,
	output	[WIDTH:0]		mag,
	output 						val
	
    );

reg	[WIDTH-1:0] real_abs, imag_abs;
reg	ena_abs;
always@(posedge clk)
begin	
	if(rst) begin
		ena_abs 	<= 1'b0;
		real_abs <= 0;
		imag_abs	<= 0;
		end
	else if(ena) begin
		ena_abs 	<= 1'b1;
		real_abs <= (real_in[WIDTH-1])? (~real_in + 1'b1): real_in;
		imag_abs	<= (imag_in[WIDTH-1])? (~imag_in + 1'b1): imag_in;
		end
	else ena_abs <= 1'b0;
end

assign	mag 	= (real_abs > imag_abs)? (real_abs + (imag_abs>>1)): (imag_abs + (real_abs>>1));
assign  	val	= ena_abs;


endmodule
