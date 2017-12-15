`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:43 04/26/2012 
// Design Name: 
// Module Name:    OFDM_RX_tb 
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
module OFDM_RX_tb(
    );

reg 	rst, clk;
reg 	cyc_i;
reg 	stb_i;
reg	[31:0] dat_in;

wire 	ack_o;
wire  [43:0] p_metric;
wire  [21:0] r_metric;
reg	[3:0]  SNR;

wire [7:0] dat_out;	
wire			 we_o, stb_o, cyc_o;
reg			 ack_i;



OFDM_RX_802_11 UUT(
	.CLK_I(clk), .RST_I(rst),
	.Q_CH_I(dat_in[31:16]),
	.I_CH_I(dat_in[15:0]),
	.CYC_I(cyc_i), 
	.STB_I(stb_i),
	.ACK_O(ack_o),
	
	.DAT_O(dat_out),
	.WE_O(we_o), 
	.STB_O(stb_o),
	.CYC_O(cyc_o),
	.ACK_I(ack_i),	
	
	.SNR(SNR)

    );
	 
	 

parameter    NSAM  = 30*(256+32);
reg [15:0] 	 datin_Re [NSAM - 1:0];
reg [15:0] 	 datin_Im [NSAM - 1:0];
integer 	lop_cnt, ii;
integer  NLOP, Flen, Toff, para_fin;


initial 	begin
		rst 		= 1'b1;
		clk 		= 1'b0;	
		cyc_i		= 1'b0;		
		
		dat_in	= 32'd0;
		
		para_fin = $fopen("./MATLAB/RTL_OFDM_RX_datin_len.txt","r"); 
		$fscanf(para_fin, "%d ", NLOP);
		$fscanf(para_fin, "%d ", Flen);
		$fscanf(para_fin, "%d ", SNR);
		$fscanf(para_fin, "%d ", Toff);
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
			ii 		= 0;
			lop_cnt  = 0;
			#200;
			forever begin
				@(posedge clk);
				if (~(lop_cnt == NLOP)) begin
					dat_in <= {datin_Im[ii], datin_Re[ii]};
					wr_frm = 1'b1;
					@(negedge cyc_o);		
					#200;
					ii = ii+1;
					lop_cnt = lop_cnt + 1;
				end
			end					
end	

reg wr_datin, wr_frm_pp;	
	
always @(posedge clk) begin	
	if(rst) 	begin
		ii <= 0;	
		//dat_in <= {datin_Im[ii], datin_Re[ii]};	
		wr_frm_pp <= 1'b0;
		end
	else begin
	
		if(wr_frm) begin
			cyc_i		<= 1'b1;		
			wr_frm_pp <= wr_frm;
		
			if (~wr_datin) begin	
				stb_i		<= 1'b0;
			end
			else if (~wr_frm_pp) begin
				wr_frm_pp <= wr_frm;
				stb_i		<= 1'b1;
			end
			else if ((ii == ((Flen)*(lop_cnt+1) -1))&(ack_o)) begin 
				cyc_i		<= 1'b0;
				stb_i		<= 1'b0;
				wr_frm	<= 1'b0;
			end
			else begin
				stb_i		<= 1'b1;
			end				
			end	
		else begin
			wr_frm_pp <= wr_frm;
			cyc_i		<= 1'b0;
			stb_i		<= 1'b0;
		end
		
		if (stb_i & ack_o & (ii < ((Flen)*(lop_cnt+1) -1))) begin
				dat_in 	<= {datin_Im[ii + 1], datin_Re[ii + 1]};	
				ii 		<= ii+1;
		end
	end
end


integer datout_fo, datout_cnt;

initial begin
	datout_cnt = 0;
	datout_fo = $fopen("./MATLAB/RTL_OFDM_RX_datout.txt");
	forever begin
		@(posedge clk);
		if ((stb_o)&&(cyc_o)&&(ack_i)) begin
			$fwrite(datout_fo,"%d ",$signed(dat_out[7:0]));
			datout_cnt = datout_cnt + 1;			
			end	
	end
end


// Synch ===============================================================================
wire [31:0] Synch_datout = UUT.Synch_ins.DAT_O;
wire 			Synch_stb_o	 = UUT.Synch_ins.STB_O;
wire 			Synch_we_o	 = UUT.Synch_ins.WE_O;
wire 			Synch_ack_o	 = UUT.Synch_ins.ACK_O;


// FreComp ===============================================================================
//wire [31:0] FreComp_datout 	= UUT.FreComp_ins.DAT_O;
//wire 			FreComp_stb_o		= UUT.FreComp_ins.STB_O;
//wire 			FreComp_we_o		= UUT.FreComp_ins.WE_O;
//wire 			FreComp_ack_o		= UUT.FreComp_ins.ACK_O;
//wire [15:0] FreComp_phase_rot 		= UUT.FreComp_ins.phase_rot;
//wire 			FreComp_phase_acc_rdy 	= UUT.FreComp_ins.phase_acc_rdy;
//wire 			FreComp_phase_acc_ce 	= (~UUT.FreComp_ins.out_halt);
// RemoveCP ===============================================================================
wire [31:0] RemoveCP_datout = UUT.RemoveCP_ins.DAT_O;
wire 			RemoveCP_stb_o	 = UUT.RemoveCP_ins.STB_O;
wire 			RemoveCP_we_o	 = UUT.RemoveCP_ins.WE_O;
wire 			RemoveCP_ack_o	 = UUT.RemoveCP_ins.ACK_O;
// FFT ===============================================================================
wire [31:0] FFT_datout 	= UUT.FFT_Demod_ins.DAT_O;
wire 			FFT_stb_o	= UUT.FFT_Demod_ins.STB_O;
wire 			FFT_we_o		= UUT.FFT_Demod_ins.WE_O;
wire 			FFT_ack_o	= UUT.FFT_Demod_ins.ACK_O;

// iCFO_EstComp ===============================================================================
wire [31:0] iCFO_EstComp_datout 	= UUT.iCFO_EstComp_ins.DAT_O;
wire 			iCFO_EstComp_stb_o	= UUT.iCFO_EstComp_ins.STB_O;
wire 			iCFO_EstComp_we_o		= UUT.iCFO_EstComp_ins.WE_O;
wire 			iCFO_EstComp_ack_o	= UUT.iCFO_EstComp_ins.ACK_O;

// Ch_EstEqu ===============================================================================
wire [31:0] Ch_EstEqu_datout 	= UUT.Ch_EstEqu_ins.DAT_O;
wire 			Ch_EstEqu_stb_o	= UUT.Ch_EstEqu_ins.STB_O;
wire 			Ch_EstEqu_we_o		= UUT.Ch_EstEqu_ins.WE_O;
wire 			Ch_EstEqu_ack_i	= UUT.Ch_EstEqu_ins.ACK_I;
// PhaseTrack ===============================================================================
wire [31:0] PhaseTrack_datout = UUT.PhaseTrack_ins.DAT_O;
wire 			PhaseTrack_stb_o	= UUT.PhaseTrack_ins.STB_O;
wire 			PhaseTrack_we_o	= UUT.PhaseTrack_ins.WE_O;
wire 			PhaseTrack_ack_i	= UUT.PhaseTrack_ins.ACK_I;

integer Synch_datout_Re_fo, FreComp_datout_Re_fo, RemoveCP_datout_Re_fo, FFT_datout_Re_fo, iCFO_EstComp_datout_Re_fo, Ch_EstEqu_datout_Re_fo, PhaseTrack_datout_Re_fo;
integer Synch_datout_Im_fo, FreComp_datout_Im_fo, RemoveCP_datout_Im_fo, FFT_datout_Im_fo, iCFO_EstComp_datout_Im_fo, Ch_EstEqu_datout_Im_fo, PhaseTrack_datout_Im_fo;
integer FreComp_phase_rot_fo;
integer Synch_datout_cnt, FreComp_datout_cnt, RemoveCP_datout_cnt, FFT_datout_cnt, temp_fo;

initial begin	
	Synch_datout_Re_fo 			= $fopen("./MATLAB/RTL_OFDM_RX_Synch_datout_Re.txt");	
	Synch_datout_Im_fo 			= $fopen("./MATLAB/RTL_OFDM_RX_Synch_datout_Im.txt");	
//	FreComp_datout_Re_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_FreComp_datout_Re.txt");
//	FreComp_datout_Im_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_FreComp_datout_Im.txt");
//	FreComp_phase_rot_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_FreComp_phase_rot.txt");	
	RemoveCP_datout_Re_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_RemoveCP_datout_Re.txt");
	RemoveCP_datout_Im_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_RemoveCP_datout_Im.txt");
	FFT_datout_Re_fo 				= $fopen("./MATLAB/RTL_OFDM_RX_FFT_datout_Re.txt");	
	FFT_datout_Im_fo 				= $fopen("./MATLAB/RTL_OFDM_RX_FFT_datout_Im.txt");	
	iCFO_EstComp_datout_Re_fo  = $fopen("./MATLAB/RTL_OFDM_RX_iCFO_EstComp_datout_Re.txt");	
	iCFO_EstComp_datout_Im_fo  = $fopen("./MATLAB/RTL_OFDM_RX_iCFO_EstComp_datout_Im.txt");
	Ch_EstEqu_datout_Re_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_Ch_EstEqu_datout_Re.txt");	
	Ch_EstEqu_datout_Im_fo 		= $fopen("./MATLAB/RTL_OFDM_RX_Ch_EstEqu_datout_Im.txt");	
	PhaseTrack_datout_Re_fo 	= $fopen("./MATLAB/RTL_OFDM_RX_PhaseTrack_datout_Re.txt");	
	PhaseTrack_datout_Im_fo 	= $fopen("./MATLAB/RTL_OFDM_RX_PhaseTrack_datout_Im.txt");	
	temp_fo 	= $fopen("./MATLAB/temp.txt");	
	
	Synch_datout_cnt 		= 0;
	FreComp_datout_cnt	= 0;
	RemoveCP_datout_cnt	= 0;
	FFT_datout_cnt			= 0;
	forever begin
		@(posedge clk);
		if (Synch_stb_o) 		begin 
			$fwrite(Synch_datout_Re_fo,"%d ", $signed(Synch_datout[15:0])); 	
			$fwrite(Synch_datout_Im_fo,"%d ", $signed(Synch_datout[31:16])); 			
			Synch_datout_cnt = Synch_datout_cnt+1; 		
		end
//		if (FreComp_stb_o) 	begin	
//			$fwrite(FreComp_datout_Re_fo,"%d ", $signed(FreComp_datout[15:0]));
//			$fwrite(FreComp_datout_Im_fo,"%d ", $signed(FreComp_datout[31:16]));				
//			FreComp_datout_cnt = FreComp_datout_cnt+1;	
//		end
//		if (FreComp_phase_acc_rdy & FreComp_phase_acc_ce) begin			
//			$fwrite(FreComp_phase_rot_fo,"%d ",$signed(FreComp_phase_rot));			
//		end	
		if (RemoveCP_stb_o) 	begin	
			$fwrite(RemoveCP_datout_Re_fo,"%d ", $signed(RemoveCP_datout[15:0]));
			$fwrite(RemoveCP_datout_Im_fo,"%d ", $signed(RemoveCP_datout[31:16]));
			RemoveCP_datout_cnt = RemoveCP_datout_cnt + 1;	
		end
		if (FFT_stb_o) 		begin 
			$fwrite(FFT_datout_Re_fo,"%d ", $signed(FFT_datout[15:0]));		
			$fwrite(FFT_datout_Im_fo,"%d ", $signed(FFT_datout[31:16]));					
			FFT_datout_cnt = FFT_datout_cnt+1;				
		end
		if (iCFO_EstComp_stb_o) 		begin 
			$fwrite(iCFO_EstComp_datout_Re_fo,"%d ", $signed(iCFO_EstComp_datout[15:0]));		
			$fwrite(iCFO_EstComp_datout_Im_fo,"%d ", $signed(iCFO_EstComp_datout[31:16]));					
		end	
		if (Ch_EstEqu_stb_o & Ch_EstEqu_ack_i) 		begin 
			$fwrite(Ch_EstEqu_datout_Re_fo,"%d ", $signed(Ch_EstEqu_datout[15:0]));		
			$fwrite(Ch_EstEqu_datout_Im_fo,"%d ", $signed(Ch_EstEqu_datout[31:16]));								
		end
		if (PhaseTrack_stb_o) 		begin 
			$fwrite(PhaseTrack_datout_Re_fo,"%d ", $signed(PhaseTrack_datout[15:0]));		
			$fwrite(PhaseTrack_datout_Im_fo,"%d ", $signed(PhaseTrack_datout[31:16]));		
		end
		
	end
end

reg stop_chk;
initial  begin
	stop_chk = 1'b0;
	forever begin
		@(posedge clk);
		if (lop_cnt == NLOP) begin
			#400;
			stop_chk = 1'b1;
		end
	end	
end
initial begin
	forever begin
	@(posedge clk);
	if (stop_chk)	begin
		$fclose(Synch_datout_Re_fo);
		$fclose(Synch_datout_Im_fo);
//		$fclose(FreComp_datout_Re_fo);
//		$fclose(FreComp_datout_Im_fo);
//		$fclose(FreComp_phase_rot_fo);
		$fclose(RemoveCP_datout_Re_fo);
		$fclose(RemoveCP_datout_Im_fo);
		$fclose(FFT_datout_Re_fo);
		$fclose(FFT_datout_Im_fo);
		$fclose(iCFO_EstComp_datout_Re_fo);
		$fclose(iCFO_EstComp_datout_Im_fo);
		$fclose(Ch_EstEqu_datout_Re_fo);
		$fclose(Ch_EstEqu_datout_Im_fo);
		$fclose(PhaseTrack_datout_Re_fo);
		$fclose(PhaseTrack_datout_Im_fo);
		$fclose(temp_fo);		
		$fclose(datout_fo);
		$stop;
		end		
	end
end

endmodule
