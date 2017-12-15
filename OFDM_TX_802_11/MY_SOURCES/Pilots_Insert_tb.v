`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:49 12/05/2012 
// Design Name: 
// Module Name:    Pilots_Insert_tb 
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
module Pilots_Insert_tb(
      );

reg 	rst, clk;
reg 	we_i, stb_i, cyc_i;
reg	[31:0] dat_in;
wire 	ack_o;


wire [31:0] dat_out;	
wire			 we_o, stb_o, cyc_o;
reg			 ack_i;

Pilots_Insert UUT(
	.CLK_I(clk), .RST_I(rst),
	.DAT_I(dat_in),
	.WE_I(we_i), 
	.STB_I(stb_i),
	.CYC_I(cyc_i),
	.ACK_O(ack_o),	
	.DAT_O(dat_out),
	.WE_O(we_o), 
	.STB_O(stb_o),
	.CYC_O(cyc_o),
	.ACK_I(ack_i)	
    );

parameter    NSAM  = 10*(256+32);
//reg [31:0] 	 datin [NSAM - 1:0];
integer 	ii;
integer  Len, para_fin;


initial 	begin
		rst 		= 1'b1;
		clk 		= 1'b0;	
		we_i		= 1'b0;
		stb_i		= 1'b0;
		cyc_i		= 1'b0;
		ii 		= 0;
		dat_in	= 32'd0;
		
//		para_fin = $fopen("../../MATLAB/OFDM_SYS_tb/RemoveCP_tb/RemoveCP_datin_len.txt","r");
//		$fscanf(para_fin, "%d ", Len);
//		$fclose(para_fin);
		Len = 400;
//		$readmemh("../../MATLAB/OFDM_SYS_tb/RemoveCP_tb/RTL_RemoveCP_datin.txt", datin);
	
	#25rst		= 1'b0;
end

always #10 	clk 		= ~clk;

reg wr_datin, wr_frm_pp;	

reg 		wr_frm; 
initial 	begin	
			wr_frm   = 1'b0; 
			wr_datin =1'b1;
			ack_i    =1'b1;
	#200	ii=0;
			wr_frm   = 1'b1;		
end	

	
always @(posedge clk) begin	
	if(rst) 	begin
		ii <= 0;	
		dat_in <= 32'd1;	
		wr_frm_pp <= 1'b0;
		end
	else if(wr_frm) begin
		cyc_i 	 <= 1'b1; 	
		wr_frm_pp <= wr_frm;
		
		if (~wr_datin) begin	
			stb_i		<= 1'b0;
			cyc_i		<= 1'b0;
			we_i 		<= 1'b0;
			end
		else if (~wr_frm_pp) begin
			wr_frm_pp <= wr_frm;
			ii 		<= ii+1;	
			stb_i		<= 1'b1;
			cyc_i		<= 1'b1;	
			we_i		<= 1'b1;	
			end
		else if ((ii == Len)&(ack_o)) begin 
			we_i		<= 1'b0;
			stb_i		<= 1'b0;
			cyc_i		<= 1'b0;	
			wr_frm	<= 1'b0;
			end
		else if (ack_o) begin
			dat_in 	<= dat_in + 1'b1;	
			ii 		<= ii+1;	
			stb_i		<= 1'b1;
			cyc_i		<= 1'b1;
			we_i		<= 1'b1;	
			end	
		end			
	else begin
		wr_frm_pp <= wr_frm;
		we_i		<= 1'b0;
		stb_i		<= 1'b0;
		cyc_i		<= 1'b0;
		end	

end

/*
initial begin
	wr_datin =1'b1;
	@(posedge ack_o);
	#210;
	wr_datin =1'b0;
	#100;
	wr_datin =1'b1;
	#400;
	wr_datin =1'b0;
	#200;
	wr_datin =1'b1;
	#300;
	wr_datin =1'b0;
	#100;
	wr_datin =1'b1;
end


initial begin
	ack_i =1'b0;
	@(posedge stb_o);
	#5;
	ack_i =1'b0;
	#100;
	ack_i =1'b1;
	#500;
	ack_i =1'b0;
	#200;
	ack_i =1'b1;
	#300;
	ack_i =1'b0;
	#700;
	ack_i =1'b1;
end
*/
/*
integer datout_fo, datout_cnt;

initial begin
	datout_cnt = 0;	
	datout_fo = $fopen("../../MATLAB/OFDM_SYS_tb/RemoveCP/RTL_RemoveCP_datout.txt");		
	forever begin
		@(posedge clk);
		if ((~we_o)&&(stb_o)&&(cyc_o)&&(ack_i)) begin
			$fwrite(datout_fo,"%d ",$signed(dat_out));
			datout_cnt = datout_cnt + 1;			
			end	
	end
end
*/

initial begin
	ack_i = 0;
	forever begin
	@(posedge clk);
	if (stb_o)	begin
		@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk); @(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk); 
		ack_i = 1'b1;
		end		
	end
end

initial begin
	forever begin
	@(posedge clk);
	if (dat_in == 31'd193)	begin
		ack_i = 1'b0;
		#645 	ack_i = 1'b1;
		end		
	end
end

initial begin
	forever begin
	@(posedge clk);
	if (dat_in == 31'd80)	begin
		ack_i = 1'b0;
		@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk);@(posedge clk); 	
		ack_i = 1'b1;
		end		
	end
end

reg stop_chk;
initial  begin
	stop_chk = 1'b0;
	#10000	stop_chk = 1'b1;
end
initial begin
	forever begin
	@(posedge clk);
	if (stop_chk)	begin
		//$fclose(datout_fo);
		$stop;
		end		
	end
end

endmodule
