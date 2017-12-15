`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:17 06/27/2013 
// Design Name: 
// Module Name:    PhaseTrack_tb 
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
module PhaseTrack_tb();
reg 				rst, clk;
reg 				cyc_i;
reg	[31:0] 	dat_in;
wire 				ack_o;

wire [31:0] 	dat_out;	
wire			 	we_o, stb_o, cyc_o;
reg			 	ack_i;

wire stb_i = cyc_i;
wire we_i  = stb_i;
//reg [127:0] ALLOC_VEC;
reg [103:0] ALLOC_VEC;

PhaseTrack UUT(
	.CLK_I(clk), .RST_I(rst),
	.DAT_I(dat_in),
	.CYC_I(cyc_i), 
	.WE_I(we_i),
	.STB_I(stb_i),
	.ACK_O(ack_o),
	
	.DAT_O(dat_out),
	.WE_O(we_o), 
	.STB_O(stb_o),
	.CYC_O(cyc_o),
	.ACK_I(ack_i),
	.ALLOC_VEC(ALLOC_VEC),
	.VEC_LD()
   );
parameter    NSAM  = 10*(64+16);
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
//		ALLOC_VEC={{6{2'b11}}, 2'b01, {13{2'b11}}, 2'b01, {5{2'b11}}, {11{2'b00}}, {5{2'b11}}, 2'b10, {13{2'b11}}, 2'b01, {6{2'b11}}, 2'b00};
		ALLOC_VEC={{6{2'b11}}, 2'b01, {13{2'b11}}, 2'b01, {5{2'b11}}, {5{2'b11}}, 2'b10, {13{2'b11}}, 2'b01, {6{2'b11}}};

		para_fin = $fopen("./MATLAB/RTL_PhaseTrack_datin_len.txt","r");
		$fscanf(para_fin, "%d ", Len);
		$fclose(para_fin);
		
				
		$readmemh("./MATLAB/RTL_PhaseTrack_datin_Re.txt", datin_Re);
		$readmemh("./MATLAB/RTL_PhaseTrack_datin_Im.txt", datin_Im);
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
	datout_Re_fo = $fopen("./MATLAB/RTL_PhaseTrack_datout_Re.txt");
	datout_Im_fo = $fopen("./MATLAB/RTL_PhaseTrack_datout_Im.txt");		
	forever begin
		@(posedge clk);
		if ((we_o)&&(stb_o)&&(cyc_o)&&(ack_i)) begin
			$fwrite(datout_Re_fo,"%d ",$signed(dat_out[15:0]));
			$fwrite(datout_Im_fo,"%d ",$signed(dat_out[31:16]));	
			datout_cnt = datout_cnt + 1;			
			end	
	end
end


reg stop_chk;
initial  begin
	stop_chk = 1'b0;
	@(posedge cyc_o);
	@(negedge cyc_o);
	#300	stop_chk = 1'b1;
end
initial begin
	forever begin
	@(posedge clk);
	if (stop_chk)	begin		
		$fclose(datout_Re_fo);
		$fclose(datout_Im_fo);
		$stop;
		end		
	end
end

endmodule
