`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:08 12/19/2012 
// Design Name: 
// Module Name:    OFDM_TX_tb 
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
module OFDM_TX_tb(
    );
reg 	rst, clk;
reg 	we_i, stb_i, cyc_i;
reg	[5:0] dat_in;
reg			 ack_i;
wire 			 ack_o;
wire 	[31:0] dat_out;
wire			 we_o, stb_o, cyc_o;

OFDM_TX_802_11 UUT(
	.CLK_I(clk), .RST_I(rst),
	.DAT_I(dat_in),
	.WE_I(we_i), 
	.STB_I(stb_i),
	.CYC_I(cyc_i),
	.ACK_O(ack_o),	
	.DAT_O(dat_out),
	.WE_O (we_o), 
	.STB_O(stb_o),
	.CYC_O(cyc_o),
	.ACK_I(ack_i)	
    );

wire [31:0] DAT_Mod_dat_out 	= UUT.DAT_Mod_Ins.DAT_O;	
wire			DAT_Mod_we_o		= UUT.DAT_Mod_Ins.WE_O; 
wire			DAT_Mod_stb_o		= UUT.DAT_Mod_Ins.STB_O; 
wire			DAT_Mod_cyc_o		= UUT.DAT_Mod_Ins.CYC_O;
wire 			DAT_Mod_ack_o		= UUT.DAT_Mod_Ins.ACK_O;

wire [31:0] Pilots_Insert_dat_out	= UUT.Pilots_Insert_Ins.DAT_O;	
wire			Pilots_Insert_we_o		= UUT.Pilots_Insert_Ins.WE_O; 
wire			Pilots_Insert_stb_o		= UUT.Pilots_Insert_Ins.STB_O; 
wire			Pilots_Insert_cyc_o		= UUT.Pilots_Insert_Ins.CYC_O;
wire 			Pilots_Insert_ack_o		= UUT.Pilots_Insert_Ins.ACK_O;

wire [31:0] IFFT_Mod_dat_out 	= UUT.IFFT_Mod_Ins.DAT_O;	
wire			IFFT_Mod_we_o		= UUT.IFFT_Mod_Ins.WE_O; 
wire			IFFT_Mod_stb_o		= UUT.IFFT_Mod_Ins.STB_O; 
wire			IFFT_Mod_cyc_o		= UUT.IFFT_Mod_Ins.CYC_O;
wire 			IFFT_Mod_ack_o		= UUT.IFFT_Mod_Ins.ACK_O;

wire 			IFFT_Mod_ack_i		= UUT.IFFT_Mod_Ins.ACK_I;

parameter    NSAM  = 10*(256+32);
reg [5:0] 	 datin [NSAM - 1:0];
integer 	ii, lop_cnt;
integer  Len, NLOP, para_fin;


initial 	begin
		rst 		= 1'b1;
		clk 		= 1'b0;	
		we_i		= 1'b0;
		stb_i		= 1'b0;
		cyc_i		= 1'b0;
		ii 		= 0;
		dat_in	= 6'd0;
		
		para_fin = $fopen("./MATLAB/OFDM_TX_bit_symbols_Len.txt","r");
		$fscanf(para_fin, "%d ", Len);
		$fscanf(para_fin, "%d ", NLOP);
		$fclose(para_fin);

		$readmemh("./MATLAB/RTL_OFDM_TX_bit_symbols.txt", datin);
	
	#25rst		= 1'b0;
end

always #10 	clk 		= ~clk;

reg wr_datin, wr_frm_pp;	

reg 		wr_frm; 
initial 	begin	
	wr_frm   = 1'b0; 
	wr_datin = 1'b1;
	ack_i    = 1'b1;
	lop_cnt  = 0;
	#600;
	forever begin
		@(posedge clk);
				
		if (~(lop_cnt == NLOP)) begin
			ii=0;
			wr_frm   = 1'b1;
			dat_in 	<= datin[ii + lop_cnt*Len];			
			@(negedge cyc_o);
			#600;
			lop_cnt = lop_cnt +1;
		end
	end
end	

	
always @(posedge clk) begin	
	if(rst) 	begin
		ii <= 0;	
		dat_in <= datin[ii + lop_cnt*Len];	
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
			//dat_in 	<= dat_in + 1'b1;	
			dat_in 	<= datin[ii + lop_cnt*Len];
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

integer datout_Re_fo, datout_Im_fo, datout_cnt;
integer Pilots_Insert_Re_fo, Pilots_Insert_Im_fo;
integer IFFT_Mod_Re_fo, IFFT_Mod_Im_fo;
initial begin
	datout_cnt = 0;	
	datout_Re_fo = $fopen("./MATLAB/RTL_OFDM_TX_datout_Re.txt");		
	datout_Im_fo = $fopen("./MATLAB/RTL_OFDM_TX_datout_Im.txt");
	
	Pilots_Insert_Re_fo = $fopen("./MATLAB/RTL_OFDM_TX_Pilots_Insert_Re.txt");		
	Pilots_Insert_Im_fo = $fopen("./MATLAB/RTL_OFDM_TX_Pilots_Insert_Im.txt");
	
	IFFT_Mod_Re_fo = $fopen("./MATLAB/RTL_OFDM_TX_IFFT_Mod_Re.txt");		
	IFFT_Mod_Im_fo = $fopen("./MATLAB/RTL_OFDM_TX_IFFT_Mod_Im.txt");
	
	forever begin
		@(posedge clk);
		if ((we_o)&&(stb_o)&&(cyc_o)&&(ack_i)) begin
			$fwrite(datout_Re_fo,"%d ",$signed(dat_out[15:0]));
			$fwrite(datout_Im_fo,"%d ",$signed(dat_out[31:16]));
			datout_cnt = datout_cnt + 1;			
			end	
		if ((Pilots_Insert_we_o)&&(Pilots_Insert_stb_o)&&(Pilots_Insert_cyc_o)&&(IFFT_Mod_ack_o)) begin
			$fwrite(Pilots_Insert_Re_fo,"%d ",$signed(Pilots_Insert_dat_out[15:0]));
			$fwrite(Pilots_Insert_Im_fo,"%d ",$signed(Pilots_Insert_dat_out[31:16]));
			//datout_cnt = datout_cnt + 1;			
			end
		if ((IFFT_Mod_we_o)&&(IFFT_Mod_stb_o)&&(IFFT_Mod_cyc_o)&&(IFFT_Mod_ack_i)) begin
			$fwrite(IFFT_Mod_Re_fo,"%d ",$signed(IFFT_Mod_dat_out[15:0]));
			$fwrite(IFFT_Mod_Im_fo,"%d ",$signed(IFFT_Mod_dat_out[31:16]));
			//datout_cnt = datout_cnt + 1;			
			end
	end
end


/*initial begin
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
*/

reg stop_chk;
initial  begin
	stop_chk = 1'b0;
	//#30000	stop_chk = 1'b1;
	forever begin
		@(posedge clk);				
		if (lop_cnt == NLOP) begin
			#100;
			stop_chk = 1'b1;
		end
	end
end
initial begin
	forever begin
	@(posedge clk);
	if (stop_chk)	begin
		$fclose(datout_Re_fo);
		$fclose(datout_Im_fo);
		
		$fclose(Pilots_Insert_Re_fo);
		$fclose(Pilots_Insert_Im_fo);
		
		$fclose(IFFT_Mod_Re_fo);
		$fclose(IFFT_Mod_Im_fo);
		$stop;
		end		
	end
end

endmodule
