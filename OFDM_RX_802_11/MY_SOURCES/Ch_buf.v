`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:18 11/10/2012 
// Design Name: 
// Module Name:    Ch_buf 
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
module Ch_buf(
	input 					clk, rst, ena, start,
	input 		[31:0]	datin,
	input 		[7:0]		rd_addr,		 
	output 		[31:0]	datout,
	output reg 	[7:0] 	dat_cnt,
	output 		 			almostfull,
	output					full
    );

reg [31:0] 	rx_buf_mem [0:199];
reg [7:0]  	rx_buf_wrcnt;	//write pointer of rx buffer
reg [7:0] 	datin_cnt;

always@(posedge clk) begin
	if (rst)	 					dat_cnt <=8'd0;
	else if (ena & (~full)) dat_cnt <= dat_cnt + 1'b1;
	else if (~ena)				dat_cnt <=8'd0;
end

reg car_val; // used carriers in OFDM symbol
always@(posedge clk) begin
	if (rst)	 								car_val <=8'd0;
	else if 		(start)					car_val <=8'd0;
	else if 		(ena) begin
		if			(dat_cnt == 8'd0)		car_val <= 1'd1;
		else if	(dat_cnt == 8'd100)	car_val <= 1'd0;
		else if	(dat_cnt == 8'd155)	car_val <= 1'd1;
		else if	(dat_cnt == 8'd255) 	car_val <= 1'd0;
	end	
end


always@(posedge clk) begin
	if (rst) 				rx_buf_wrcnt	<= 8'd0;	
	else if (start)		rx_buf_wrcnt	<= 8'd0;
	else if (~full)
		if (ena & car_val & (rx_buf_wrcnt == 8'd199))	begin
								rx_buf_wrcnt	<= 8'd0;
								rx_buf_mem[rx_buf_wrcnt] 	<= datin;
								end
		else if (ena & car_val)	begin
								rx_buf_wrcnt	<= rx_buf_wrcnt + 1'b1;
								rx_buf_mem[rx_buf_wrcnt] 	<= datin;
								end	
end
assign 	datout		=  rx_buf_mem[rd_addr];
assign 	almostfull  = ena & car_val & (rx_buf_wrcnt == 8'd180);
assign 	full			= ena & car_val & (rx_buf_wrcnt == rd_addr) & (~(rx_buf_wrcnt == 8'd0));
endmodule
