/*******************************************************************************
*     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.              *
*                                                                              *
*     This file contains confidential and proprietary information              *
*     of Xilinx, Inc. and is protected under U.S. and                          *
*     international copyright and other intellectual property                  *
*     laws.                                                                    *
*                                                                              *
*     DISCLAIMER                                                               *
*     This disclaimer is not a license and does not grant any                  *
*     rights to the materials distributed herewith. Except as                  *
*     otherwise provided in a valid license issued to you by                   *
*     Xilinx, and to the maximum extent permitted by applicable                *
*     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                  *
*     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES              *
*     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING                *
*     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                   *
*     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and                 *
*     (2) Xilinx shall not be liable (whether in contract or tort,             *
*     including negligence, or under any other theory of                       *
*     liability) for any loss or damage of any kind or nature                  *
*     related to, arising under or in connection with these                    *
*     materials, including for any direct, or any indirect,                    *
*     special, incidental, or consequential loss or damage                     *
*     (including loss of data, profits, goodwill, or any type of               *
*     loss or damage suffered as a result of any action brought                *
*     by a third party) even if such damage or loss was                        *
*     reasonably foreseeable or Xilinx had been advised of the                 *
*     possibility of the same.                                                 *
*                                                                              *
*     CRITICAL APPLICATIONS                                                    *
*     Xilinx products are not designed or intended to be fail-                 *
*     safe, or for use in any application requiring fail-safe                  *
*     performance, such as life-support or safety devices or                   *
*     systems, Class III medical devices, nuclear facilities,                  *
*     applications related to the deployment of airbags, or any                *
*     other applications that could lead to death, personal                    *
*     injury, or severe property or environmental damage                       *
*     (individually and collectively, "Critical                                *
*     Applications"). Customer assumes the sole risk and                       *
*     liability of any use of Xilinx products in Critical                      *
*     Applications, subject only to applicable laws and                        *
*     regulations governing limitations on product liability.                  *
*                                                                              *
*     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS                 *
*     PART OF THIS FILE AT ALL TIMES.                                          *
*******************************************************************************/

//  Generated from component ID: xilinx.com:ip:xfft:8.0


// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
IFFT YourInstanceName (
	.aclk(aclk), // input aclk
	.aresetn(aresetn), // input aresetn
	.s_axis_config_tdata(s_axis_config_tdata), // input [15 : 0] s_axis_config_tdata
	.s_axis_config_tvalid(s_axis_config_tvalid), // input s_axis_config_tvalid
	.s_axis_config_tready(s_axis_config_tready), // ouput s_axis_config_tready
	.s_axis_data_tdata(s_axis_data_tdata), // input [31 : 0] s_axis_data_tdata
	.s_axis_data_tvalid(s_axis_data_tvalid), // input s_axis_data_tvalid
	.s_axis_data_tready(s_axis_data_tready), // ouput s_axis_data_tready
	.s_axis_data_tlast(s_axis_data_tlast), // input s_axis_data_tlast
	.m_axis_data_tdata(m_axis_data_tdata), // ouput [31 : 0] m_axis_data_tdata
	.m_axis_data_tuser(m_axis_data_tuser), // ouput [7 : 0] m_axis_data_tuser
	.m_axis_data_tvalid(m_axis_data_tvalid), // ouput m_axis_data_tvalid
	.m_axis_data_tready(m_axis_data_tready), // input m_axis_data_tready
	.m_axis_data_tlast(m_axis_data_tlast), // ouput m_axis_data_tlast
	.event_frame_started(event_frame_started), // ouput event_frame_started
	.event_tlast_unexpected(event_tlast_unexpected), // ouput event_tlast_unexpected
	.event_tlast_missing(event_tlast_missing), // ouput event_tlast_missing
	.event_status_channel_halt(event_status_channel_halt), // ouput event_status_channel_halt
	.event_data_in_channel_halt(event_data_in_channel_halt), // ouput event_data_in_channel_halt
	.event_data_out_channel_halt(event_data_out_channel_halt)); // ouput event_data_out_channel_halt

// INST_TAG_END ------ End INSTANTIATION Template ---------
