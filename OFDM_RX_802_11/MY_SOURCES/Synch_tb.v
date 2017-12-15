`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:26 04/19/2012 
// Design Name: 
// Module Name:    Synch_tb 
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
module Synch_tb(
    );
reg 	rst, clk;
reg 	cyc_i;
reg	[31:0] dat_in;

wire 	ack_o;
wire  [43:0] p_metric;
wire  [21:0] r_metric;
wire 	[31:0] fre_o; 
reg	[3:0]  SNR;

wire [31:0] dat_out;	
wire			 we_o, stb_o, cyc_o;
reg			 ack_i;

wire stb_i = cyc_i;

Synch UUT(
	.CLK_I(clk), .RST_I(rst),
	.DAT_I(dat_in),
	.CYC_I(cyc_i), 
	.STB_I(stb_i),
	.ACK_O(ack_o),
	
	.DAT_O(dat_out),
	.WE_O(we_o), 
	.STB_O(stb_o),
	.CYC_O(cyc_o),
	.ACK_I(ack_i)
	
	//.SNR(SNR)
	
    );
parameter    NSAM  = 10*(256+32);
reg [15:0] 	 datin_Re [NSAM - 1:0];
reg [15:0] 	 datin_Im [NSAM - 1:0];
integer 	ii;
integer  NLOP, Len, para_fin;


initial 	begin
		rst 		= 1'b1;
		clk 		= 1'b0;	
		cyc_i		= 1'b0;		
		ii 		= 0;
		dat_in	= 32'd0;
		
		para_fin = $fopen("./MATLAB/RTL_OFDM_RX_datin_len.txt","r");
		$fscanf(para_fin, "%d ", NLOP);
		$fscanf(para_fin, "%d ", Len);
		$fscanf(para_fin, "%d ", SNR);
		$fclose(para_fin);
		
				
		$readmemh("./MATLAB/RTL_OFDM_RX_datin_Re.txt", datin_Re);
		$readmemh("./MATLAB/RTL_OFDM_RX_datin_Im.txt", datin_Im);
	#25rst		= 1'b0;
end

always #10 	clk 		= ~clk;

reg 		wr_frm; 
initial 	begin	
			wr_frm = 1'b0; 
			wr_datin =1'b1;
			ack_i = 1'b1;
	#200	ii=0;
			wr_frm = 1'b1;		
end	

reg wr_datin, wr_frm_pp;	
	
always @(posedge clk) begin	
	if(rst) 	begin
		ii <= 0;	
		dat_in <= {datin_Im[ii], datin_Re[ii]};	
		wr_frm_pp <= 1'b0;
		end
	else if(wr_frm) begin
		cyc_i		<= 1'b1;		
		
		if (ii < Len) begin 
			dat_in 	<= {datin_Im[ii], datin_Re[ii]};
			ii 		<= ii+1;
			end
		else if (ii == Len)
			begin 
				wr_frm 	<= 0;
				cyc_i		<= 1'b0;
			end
		end		
end


integer datout_Re_fo, datout_Im_fo, datout_cnt;

initial begin
	datout_cnt = 0;
	datout_Re_fo = $fopen("./MATLAB/RTL_Synch_datout_Re.txt");
	datout_Im_fo = $fopen("./MATLAB/RTL_Synch_datout_Im.txt");		
	forever begin
		@(posedge clk);
		if ((we_o)&&(stb_o)&&(cyc_o)&&(ack_i)) begin
			$fwrite(datout_Re_fo,"%d ",$signed(dat_out[15:0]));
			$fwrite(datout_Im_fo,"%d ",$signed(dat_out[31:16]));	
			datout_cnt = datout_cnt + 1;			
			end	
	end
end
/*
wire [15:0] ACR_mult_Re = UUT.ACRMult_Re;
wire [15:0] ACR_mult_Im = UUT.ACRMult_Im;
wire [15:0] ABS_rxin		= UUT.rx_abs;*/

wire [21:0] P_metric_Re = UUT.P_Re;
wire [21:0] P_metric_Im = UUT.P_Im;
wire [21:0] R_metric	   = UUT.R_Metric;
wire 			metric_rd 	= UUT.CM_val;

/*wire [21:0] R_Metric_thr = UUT.Coarse_Time_Synch_ins.R_Metric_thr;
wire [22:0] P_Metric_mag = UUT.P_Metric_mag;
wire  		appr_mag_val = UUT.P_Metric_mag_val;*/

wire [7:0] 	CR_out_mag 		= UUT.Fine_Time_Synch_ins.CR_out_mag;
wire   		CR_out_mag_val = UUT.Fine_Time_Synch_ins.CR_out_mag_val;


integer P_metric_Re_fo, P_metric_Im_fo, R_metric_fo, metric_cnt;
integer ACR_mult_Re_fo, ACR_mult_Im_fo;
integer ABS_rxin_fo;
integer R_metric_thr_fo, P_metric_mag_fo;
integer CR_out_mag_fo;
initial begin	
	/*ACR_mult_Re_fo = $fopen("./MATLAB/RTL_Synch_ACR_mult_Re.txt");
	ACR_mult_Im_fo = $fopen("./MATLAB/RTL_Synch_ACR_mult_Im.txt");	
	ABS_rxin_fo 	= $fopen("./MATLAB/RTL_Synch_ABS_rxin.txt");*/
	P_metric_Re_fo = $fopen("./MATLAB/RTL_Synch_P_metric_Re.txt");	
	P_metric_Im_fo = $fopen("./MATLAB/RTL_Synch_P_metric_Im.txt");	
	R_metric_fo    = $fopen("./MATLAB/RTL_Synch_R_metric.txt");	
	metric_cnt = 0;
	//P_metric_mag_fo = $fopen("./MATLAB/RTL_Synch_P_Metric_mag.txt");	
	//R_metric_thr_fo = $fopen("./MATLAB/RTL_Synch_R_Metric_thr.txt");	
	CR_out_mag_fo = $fopen("./MATLAB/RTL_Synch_CR_out_mag.txt");	

	
	forever begin
		@(posedge clk);
		if (metric_rd) begin			
			/*$fwrite(ACR_mult_Re_fo,"%d ", $signed(ACR_mult_Re));	
			$fwrite(ACR_mult_Im_fo,"%d ", $signed(ACR_mult_Im));	
			$fwrite(ABS_rxin_fo,   "%d ", ABS_rxin);	*/
			$fwrite(P_metric_Re_fo,"%d ", $signed(P_metric_Re));	
			$fwrite(P_metric_Im_fo,"%d ", $signed(P_metric_Im));		
			$fwrite(R_metric_fo,   "%d ", R_metric);				
			metric_cnt = metric_cnt +1;
			end	
		/*if(appr_mag_val) begin
			$fwrite(P_metric_mag_fo,"%d ", P_Metric_mag);		
			$fwrite(R_metric_thr_fo,"%d ", R_Metric_thr);	
		end*/
		
		if(CR_out_mag_val) begin
			$fwrite(CR_out_mag_fo,"%d ", CR_out_mag);		
		end
	end
end

reg stop_chk;
initial  begin
	stop_chk = 1'b0;
	#30000	stop_chk = 1'b1;
end
initial begin
	forever begin
	@(posedge clk);
	if (stop_chk)	begin
		/*$fclose(ACR_mult_Re_fo);
		$fclose(ACR_mult_Im_fo);
		$fclose(ABS_rxin_fo);*/
		$fclose(P_metric_Re_fo);
		$fclose(P_metric_Im_fo);
		$fclose(R_metric_fo);
		/*$fclose(P_metric_mag_fo);
		$fclose(R_metric_thr_fo);*/
		$fclose(CR_out_mag_fo);
		
		$fclose(datout_Re_fo);
		$fclose(datout_Im_fo);
		$stop;
		end		
	end
end

endmodule



