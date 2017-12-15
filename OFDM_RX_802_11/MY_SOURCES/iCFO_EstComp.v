`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:58 09/18/2012 
// Design Name: 
// Module Name:    iCFO 
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
module iCFO_EstComp(
	input 			CLK_I, RST_I,
	input [31:0] 	DAT_I,					// DAT_I_Im[31:16] DAT_I_Re[15:0] in format 5.11
	input 			WE_I, STB_I, CYC_I,
	output			ACK_O,
	
	output reg [31:0]	DAT_O,				// DAT_O_Im[31:16] DAT_O_Re[15:0] in format 5.11
	output reg			CYC_O, STB_O,
	output 			WE_O,
	input				ACK_I	
    );

reg			iCFO_ena, datsym_ena;
wire [2:0] 	ifoff;
wire 		 	iCFO_val;

reg [31:0]  iCFO_buf_comp [0:255];
reg [7:0] 	dat_cnt;
reg [7:0]	buf_wraddr;
reg 			buf_wrfull;
wire [7:0]	buf_rdaddr;
reg [7:0]	buf_rdcnt;
reg [7:0]	buf_rdaddr_offset;
reg 			buf_rdena;	
reg [31:0]  idat;
reg 			iena;
wire 			istart, out_halt, datin_val;


assign 		datin_val = (CYC_I) & STB_I & (WE_I);
assign 		out_halt  =  STB_O  & (~ACK_I);
assign 		ACK_O     =  datin_val & (~out_halt);
assign		istart	 =  CYC_I  & (~CYC_I_pp);

reg 	CYC_I_pp;
always @(posedge CLK_I) begin
	if(RST_I)	CYC_I_pp <= 1'b1;
	else  		CYC_I_pp <= CYC_I;
end
always @(posedge CLK_I) begin
	if(RST_I) 				idat <= 32'd0;
	else if (ACK_O) 		idat <= DAT_I;
end
always @(posedge CLK_I) begin
	if(RST_I)  				iena <= 1'b0;
	else if (ACK_O)		iena <= 1'b1;
	else 						iena <= 1'b0;
end

always @(posedge CLK_I) begin
	if(RST_I)  			dat_cnt <= 8'd0;
	else if (istart)	dat_cnt <= 8'd0;
	else if (ACK_O)	dat_cnt <= dat_cnt + 1'b1;
end

always @(posedge CLK_I) begin
	if(RST_I)  								iCFO_ena <= 1'b0;
	else if (istart)						iCFO_ena <= 1'b0;
	else if (ACK_O & (~datsym_ena))	iCFO_ena <= 1'b1;
	else if (dat_cnt == 8'd255)		iCFO_ena <= 1'b0;
end

always @(posedge CLK_I) begin
	if(RST_I)  								datsym_ena <= 1'b0;
	else if (istart)						datsym_ena <= 1'b0;
	else if (dat_cnt == 8'd255)		datsym_ena <= 1'b1;
end

always @(posedge CLK_I) begin
	if (iena) iCFO_buf_comp[buf_wraddr] <= idat;
end

always @(posedge CLK_I) begin
	if(RST_I)  										buf_wraddr <= 8'd0;
	else if (istart)								buf_wraddr <= 8'd0;
	else if ((dat_cnt == 8'd255) & ACK_O)	buf_wraddr <= buf_wraddr + {3'b000,ifoff,2'b00};
	else if (iena)									buf_wraddr <= buf_wraddr + 1'b1;
end

always @(posedge CLK_I) begin
	if(RST_I)  															buf_wrfull <= 1'b0;
	else if (istart)													buf_wrfull <= 1'b0;
	else if ((dat_cnt == 8'd255) & (iena))						buf_wrfull <= 1'b1;
	else if (buf_wrfull & iCFO_val )								buf_wrfull <= 1'b0;

end

always @(posedge CLK_I) begin
	if(RST_I)  								buf_rdena <= 1'b0;
	else if (istart)						buf_rdena <= 1'b0;
	else if (buf_wrfull & iCFO_val)	buf_rdena <= 1'b1;
	else if (buf_rdcnt == 8'd255)		buf_rdena <= 1'b0;
end

always @(posedge CLK_I) begin
	if(RST_I)  								buf_rdaddr_offset <= 8'd0;
	else if (istart)						buf_rdaddr_offset <= 8'd0;
	else if (buf_wrfull & iCFO_val)	buf_rdaddr_offset <= buf_wraddr + {3'b000,ifoff,2'b00};	
end

always @(posedge CLK_I) begin
	if(RST_I)  								buf_rdcnt <= 8'd0;
	else if (istart)						buf_rdcnt <= 8'd0;
	else if (buf_rdena &(~out_halt)) buf_rdcnt <= buf_rdcnt + 1'b1;
end

assign buf_rdaddr = buf_rdcnt + buf_rdaddr_offset;

iCFO_est iCFO_Est_ins(
   .clk(CLK_I), .rst(RST_I),  .ena_i(iCFO_ena),
	.sb_dat_i({idat[31],idat[15]}),		//signed bit symbol:[1] :signed bit of imaginary part, [0] :signed bit of real part,
	.stb_i(STB_I), 
	.dat_cnt(dat_cnt),
	.ifoff(ifoff),
	.dat_out_val(iCFO_val)
	);

always @(posedge CLK_I) begin
	if(RST_I) 	begin
		DAT_O <= 32'd0;
		STB_O <= 1'b0;
		end
	else if(buf_rdena) 	begin	
		STB_O <= 1'b1;
		if ((~out_halt))	DAT_O <= iCFO_buf_comp[buf_rdaddr];			
		end		
	else STB_O <= 1'b0;
end

reg	frm_fin;
always @(posedge CLK_I) begin
	if(RST_I)  																			frm_fin <= 1'b0;
	else if (istart)																	frm_fin <= 1'b0;
	else if ((buf_rdcnt == 8'd255) &(buf_rdcnt == 8'd255) & (~CYC_I))	frm_fin <= 1'b1;	
end

always @(posedge CLK_I) begin
	if(RST_I) 			CYC_O <= 1'b0;
	else if(istart) 	CYC_O <= 1'b1;		
	else if(frm_fin) 	CYC_O <= 1'b0;
end
assign WE_O = CYC_O;



endmodule
