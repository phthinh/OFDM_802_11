`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:57 09/18/2012 
// Design Name: 
// Module Name:    iCFO_est 
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
module iCFO_est(
   input 			clk, rst, ena_i,
	input [1:0] 	sb_dat_i,		//signed bit symbol:[1] :signed bit of imaginary part, [0] :signed bit of real part,
	input 			stb_i,
	input [7:0] 	dat_cnt,
	output reg [2:0]	ifoff,
	output reg			dat_out_val
    );
 
reg [1:0] sp1 	 [0:22]; //[1] :signed bit of imaginary part, [0] :signed bit of real part,
initial $readmemh("./MY_SOURCES/icfo_known_coeff_rtl1.txt", sp1);

reg [1:0] sp2 	 [0:22]; //[1] :signed bit of imaginary part, [0] :signed bit of real part,
initial $readmemh("./MY_SOURCES/icfo_known_coeff_rtl2.txt", sp2);

reg [31:0] 	rot_reg ;
reg [1:0] 	iCR_in;
wire			CR_abs_done;

//=============================================
wire [7:0] datin_cnt;
assign 	datin_cnt = (ena_i)? dat_cnt : 8'd255;
/*
always@(posedge clk) begin
	if (rst)	 						datin_cnt <=8'd0;
	else if (ena_i & stb_i) 	datin_cnt <= datin_cnt + 1'b1;
	else if (~ena_i)			datin_cnt <=8'd0;
end
*/ 
reg sp_ena1, sp_ena2;	// selected pilots enable 

always@(datin_cnt) begin
	case (datin_cnt)
		8'd0, 8'd4, 8'd8, 8'd12, 8'd16, 8'd20, 8'd24, 8'd28, 8'd32, 8'd36, 8'd40, 8'd44, 8'd48, 8'd52, 8'd56, 8'd60: 
					begin	sp_ena1 = 1'b1;
							sp_ena2 = 1'b0;
					end
		8'd184, 8'd188, 8'd192, 8'd196, 8'd200, 8'd204, 8'd208, 8'd212, 8'd216, 8'd220, 8'd224, 8'd228, 8'd232, 8'd236, 8'd240, 8'd244: 
					begin	sp_ena1 = 1'b0;
							sp_ena2 = 1'b1;
					end
		default: begin	sp_ena1 = 1'b0;
							sp_ena2 = 1'b0;
					end
	endcase
end
wire 	sp_ena = sp_ena1 | sp_ena2;
reg	ld_Ri;
always@(posedge clk) begin
	if (rst)				ld_Ri	<= 1'b0;
	else if (ena_i)	ld_Ri	<= sp_ena;
	else 					ld_Ri	<= 1'b0;		
end

reg compute_ena1, compute_ena2;
always@(posedge clk) begin
	if (rst)												compute_ena1	<= 1'b0;
	else if (ena_i && (datin_cnt == 8'd0))	compute_ena1	<= 1'b1;
	else if (datin_cnt == 8'd64) 					compute_ena1	<= 1'b0;		
end
always@(posedge clk) begin
	if (rst)												compute_ena2	<= 1'b0;	
	else if (datin_cnt == 8'd184)					compute_ena2	<= 1'b1;		
	else if (datin_cnt == 8'd248)					compute_ena2	<= 1'b0;
end

wire compute_ena = compute_ena1|compute_ena2;


reg [45:0] sp1_reg, sp2_reg;
always@(posedge clk) begin
	if (rst)					sp1_reg	<= 46'd0;
	else if (~ena_i)	sp1_reg 	<= {sp1[22],sp1[0],sp1[1],sp1[2],sp1[3],sp1[4],sp1[5],sp1[6],sp1[7],sp1[8],sp1[9],sp1[10],sp1[11],sp1[12],sp1[13],sp1[14],sp1[15],sp1[16],sp1[17],sp1[18],sp1[19],sp1[20],sp1[21]};
	else if (sp_ena1) 	sp1_reg 	<= {sp1_reg[43:0], sp1_reg[45:44]};		
end

always@(posedge clk) begin
	if (rst)					sp2_reg	<= 46'd0;
	else if (~ena_i)	sp2_reg 	<= {sp2[22],sp2[0],sp2[1],sp2[2],sp2[3],sp2[4],sp2[5],sp2[6],sp2[7],sp2[8],sp2[9],sp2[10],sp2[11],sp2[12],sp2[13],sp2[14],sp2[15],sp2[16],sp2[17],sp2[18],sp2[19],sp2[20],sp2[21]};
	else if (sp_ena2) 	sp2_reg 	<= {sp2_reg[43:0], sp2_reg[45:44]};		
end


reg	[1:0] datin_pp;
always@(posedge clk) begin
	if (rst)							datin_pp <= 2'b00;	
	else if (ena_i & stb_i)	datin_pp <= sb_dat_i;
end

always@(posedge clk) begin
	if (rst)					iCR_in <= 2'b00;		
	else if (ld_Ri) 		iCR_in <= datin_pp;
end

reg [1:0] sb_mult_mux1;
always@(datin_cnt[1:0] or compute_ena1 or compute_ena2 or sp1_reg[45:38] or  sp2_reg[45:38] ) begin
	case (datin_cnt[1:0])
		2'b01:	sb_mult_mux1 = (compute_ena1)? sp1_reg[45:44]:(compute_ena2)?sp2_reg[45:44]:2'b00;
		2'b10:	sb_mult_mux1 = (compute_ena1)? sp1_reg[43:42]:(compute_ena2)?sp2_reg[43:42]:2'b00;
		2'b11:	sb_mult_mux1 = (compute_ena1)? sp1_reg[41:40]:(compute_ena2)?sp2_reg[41:40]:2'b00;
		2'b00:	sb_mult_mux1 = (compute_ena1)? sp1_reg[39:38]:(compute_ena2)?sp2_reg[39:38]:2'b00;
		default:	sb_mult_mux1 = 2'b00;
	endcase
end
reg [1:0] sb_mult_mux2;
always@(datin_cnt[1:0] or compute_ena1 or compute_ena2 or sp1_reg[37:30] or  sp2_reg[37:30] ) begin
	case (datin_cnt[1:0])
		2'b01:	sb_mult_mux2 = (compute_ena1)? sp1_reg[37:36]:(compute_ena2)?sp2_reg[37:36]:2'b00;
		2'b10:	sb_mult_mux2 = (compute_ena1)? sp1_reg[35:34]:(compute_ena2)?sp2_reg[35:34]:2'b00;
		2'b11:	sb_mult_mux2 = (compute_ena1)? sp1_reg[33:32]:(compute_ena2)?sp2_reg[33:32]:2'b00;
		2'b00:	sb_mult_mux2 = (compute_ena1)? sp1_reg[31:30]:(compute_ena2)?sp2_reg[31:30]:2'b00;
		default:	sb_mult_mux2 = 2'b00;
	endcase
end

reg [5:0] sb_xcor_Re [0:7];
reg [5:0] sb_xcor_Im [0:7];

reg [5:0] sum_mux_Re1, sum_mux_Im1; 
always@(datin_cnt[1:0]) begin
	case (datin_cnt[1:0])
		2'b01:	begin
					sum_mux_Re1 = sb_xcor_Re[7];
					sum_mux_Im1 = sb_xcor_Im[7];
					end
		2'b10:	begin
					sum_mux_Re1 = sb_xcor_Re[6];
					sum_mux_Im1 = sb_xcor_Im[6];
					end
		2'b11:	begin
					sum_mux_Re1 = sb_xcor_Re[5];
					sum_mux_Im1 = sb_xcor_Im[5];
					end
		2'b00:	begin
					sum_mux_Re1 = sb_xcor_Re[4];
					sum_mux_Im1 = sb_xcor_Im[4];
					end
		default:	begin
					sum_mux_Re1 = 6'd0;
					sum_mux_Im1 = 6'd0;
					end
	endcase
end

reg [5:0] sum_mux_Re2, sum_mux_Im2; 
always@(datin_cnt[1:0]) begin
	case (datin_cnt[1:0])
		2'b01:	begin
					sum_mux_Re2 = sb_xcor_Re[3];
					sum_mux_Im2 = sb_xcor_Im[3];
					end
		2'b10:	begin
					sum_mux_Re2 = sb_xcor_Re[2];
					sum_mux_Im2 = sb_xcor_Im[2];
					end
		2'b11:	begin
					sum_mux_Re2 = sb_xcor_Re[1];
					sum_mux_Im2 = sb_xcor_Im[1];
					end
		2'b00:	begin
					sum_mux_Re2 = sb_xcor_Re[0];
					sum_mux_Im2 = sb_xcor_Im[0];
					end
		default:	begin
					sum_mux_Re2 = 6'd0;
					sum_mux_Im2 = 6'd0;
					end
	endcase
end

reg [1:0] sb_mult_coeff1, sb_mult_coeff2;
reg [5:0] sum_in_Re1, sum_in_Im1, sum_in_Re2, sum_in_Im2;

always@(posedge clk) begin
	if (rst)	begin
		sb_mult_coeff1 <= 2'b00;
		sb_mult_coeff2 <= 2'b00;
		sum_in_Re1		<= 6'd0;
		sum_in_Im1		<= 6'd0;
		sum_in_Re2		<= 6'd0;
		sum_in_Im2		<= 6'd0;
		end
	else if (compute_ena)begin
		sb_mult_coeff1 <= sb_mult_mux1;
		sb_mult_coeff2 <= sb_mult_mux2;
		sum_in_Re1		<= sum_mux_Re1;
		sum_in_Im1		<= sum_mux_Im1;
		sum_in_Re2		<= sum_mux_Re2;
		sum_in_Im2		<= sum_mux_Im2;
		end
end

//=============================================

wire [1:0] mult_out_Re1, mult_out_Re2;		
wire [1:0] mult_out_Im1, mult_out_Im2;	
	
Signed_Mult_tap Signed_Mult_tap_ins1(
				.rxin(iCR_in), 	//[1:0]
				.preamble(sb_mult_coeff1[1:0]), //[1:0]
				.mult_out_Re(mult_out_Re1[1:0]), //[1:0]
				.mult_out_Im(mult_out_Im1[1:0])	//[1:0]
				);				

Signed_Mult_tap Signed_Mult_tap_ins2(
				.rxin(iCR_in), 	//[1:0]
				.preamble(sb_mult_coeff2[1:0]), //[1:0]
				.mult_out_Re(mult_out_Re2[1:0]), //[1:0]
				.mult_out_Im(mult_out_Im2[1:0])	//[1:0]
				);		


wire [5:0] tap_out_Re1 = sum_in_Re1 + {{4{mult_out_Re1[1]}}, mult_out_Re1};		
wire [5:0] tap_out_Im1 = sum_in_Im1 + {{4{mult_out_Im1[1]}}, mult_out_Im1};	
wire [5:0] tap_out_Re2 = sum_in_Re2 + {{4{mult_out_Re2[1]}}, mult_out_Re2};		
wire [5:0] tap_out_Im2 = sum_in_Im2 + {{4{mult_out_Im2[1]}}, mult_out_Im2};	

reg   sum_acc_ena;
always@(posedge clk) begin
	if (rst)	sum_acc_ena	<= 1'b0;
	else  	sum_acc_ena <= compute_ena; 	
end

always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[7] <= 6'd0;
		sb_xcor_Im[7] <= 6'd0;
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[7] <= 6'd0;
		sb_xcor_Im[7] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b10)) 	begin
		sb_xcor_Re[7] <= tap_out_Re1;
		sb_xcor_Im[7] <= tap_out_Im1;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[6] <= 6'd0;
		sb_xcor_Im[6] <= 6'd0;	
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[6] <= 6'd0;
		sb_xcor_Im[6] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b11)) 	begin
		sb_xcor_Re[6] <= tap_out_Re1;
		sb_xcor_Im[6] <= tap_out_Im1;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[5] <= 6'd0;
		sb_xcor_Im[5] <= 6'd0;	
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[5] <= 6'd0;
		sb_xcor_Im[5] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b00)) 	begin
		sb_xcor_Re[5] <= tap_out_Re1;
		sb_xcor_Im[5] <= tap_out_Im1;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[4] <= 6'd0;
		sb_xcor_Im[4] <= 6'd0;	
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[4] <= 6'd0;
		sb_xcor_Im[4] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b01)) 	begin
		sb_xcor_Re[4] <= tap_out_Re1;
		sb_xcor_Im[4] <= tap_out_Im1;
		end
end

always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[3] <= 6'd0;
		sb_xcor_Im[3] <= 6'd0;
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[3] <= 6'd0;
		sb_xcor_Im[3] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b10)) 	begin
		sb_xcor_Re[3] <= tap_out_Re2;
		sb_xcor_Im[3] <= tap_out_Im2;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[2] <= 6'd0;
		sb_xcor_Im[2] <= 6'd0;
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[2] <= 6'd0;
		sb_xcor_Im[2] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b11)) 	begin
		sb_xcor_Re[2] <= tap_out_Re2;
		sb_xcor_Im[2] <= tap_out_Im2;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[1] <= 6'd0;
		sb_xcor_Im[1] <= 6'd0;
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[1] <= 6'd0;
		sb_xcor_Im[1] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b00)) 	begin
		sb_xcor_Re[1] <= tap_out_Re2;
		sb_xcor_Im[1] <= tap_out_Im2;
		end
end
always@(posedge clk) begin
	if (rst)	begin
		sb_xcor_Re[0] <= 6'd0;
		sb_xcor_Im[0] <= 6'd0;
		end
	else if (CR_abs_done) begin
		sb_xcor_Re[0] <= 6'd0;
		sb_xcor_Im[0] <= 6'd0;
		end
	else if (sum_acc_ena & (datin_cnt[1:0] == 2'b01)) 	begin
		sb_xcor_Re[0] <= tap_out_Re2;
		sb_xcor_Im[0] <= tap_out_Im2;
		end
end

//==================================================================
reg  [2:0] XCR_cnt;
reg 		  XCR_val;
always@(posedge clk) begin
	if (rst)								begin XCR_cnt <= 3'd0;  			XCR_val<= 1'b0; end
	else if (datin_cnt == 8'd249) begin XCR_cnt <= 3'd7;				XCR_val<= 1'b1; end
	else if (~(XCR_cnt == 3'd0))  begin XCR_cnt <= XCR_cnt - 1'b1; XCR_val<= 1'b1; end
	else																				XCR_val<= 1'b0;
end
reg  [5:0] CR_Re,CR_Im;
always@(XCR_cnt) begin
	case (XCR_cnt)
		3'b000:	begin
					CR_Re = sb_xcor_Re[7];
					CR_Im = sb_xcor_Im[7];
					end
		3'b001:	begin
					CR_Re = sb_xcor_Re[6];
					CR_Im = sb_xcor_Im[6];
					end
		3'b010:	begin
					CR_Re = sb_xcor_Re[5]; 
					CR_Im = sb_xcor_Im[5];
					end
		3'b011:	begin
					CR_Re = sb_xcor_Re[4];
					CR_Im = sb_xcor_Im[4];
					end
		3'b100:	begin
					CR_Re = sb_xcor_Re[3];
					CR_Im = sb_xcor_Im[3];
					end
		3'b101:	begin
					CR_Re = sb_xcor_Re[2];
					CR_Im = sb_xcor_Im[2];
					end
		3'b110:	begin
					CR_Re = sb_xcor_Re[1];
					CR_Im = sb_xcor_Im[1];
					end
		3'b111:	begin
					CR_Re = sb_xcor_Re[0];
					CR_Im = sb_xcor_Im[0];			
					end
		default:	begin
					CR_Re = sb_xcor_Re[0];
					CR_Im = sb_xcor_Im[0];
					end
	endcase
end

wire [6:0] CR_abs;
wire		  CR_abs_val;
iCFO_Appr_Mag #(.WIDTH(6)) CR_out_mag_ins(
	.clk(clk),  .rst(rst), .ena(XCR_val),
	.real_in(CR_Re), 
	.imag_in(CR_Im),
	.mag(CR_abs),		
	.val(CR_abs_val)	 
    );

//==================================================================
reg [6:0] CR_max;
reg 		 CR_abs_val_pp;
reg [2:0] ifoff_cnt;
always@(posedge clk) begin
	if (rst)	CR_abs_val_pp <= 1'b0;
	else 		CR_abs_val_pp <= CR_abs_val;	
end
assign CR_abs_done = (~CR_abs_val) & CR_abs_val_pp;

always@(posedge clk) begin
	if (rst)	begin
		ifoff 			<= 3'b000;
		CR_max			<= 9'd0;		
		dat_out_val 	<= 1'b0;
		ifoff_cnt		<= 3'b000;
		end
	else if 	(ena_i && (datin_cnt == 8'd1)) begin
		ifoff 			<= 3'b000;
		CR_max			<= 9'd0;
		dat_out_val 	<= 1'b0;
		ifoff_cnt		<= 3'b000;
		end
	else if (CR_abs_val) begin
		
		ifoff_cnt <= ifoff_cnt + 1'b1;
		
		if (CR_max < CR_abs) begin
			ifoff 			<= ifoff_cnt;
			CR_max			<= CR_abs;
			end
		end	
	else if (CR_abs_done) dat_out_val 	<= 1'b1;
end

endmodule

