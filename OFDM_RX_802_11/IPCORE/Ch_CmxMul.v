////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: Ch_CmxMul.v
// /___/   /\     Timestamp: Wed May 08 14:38:12 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Ch_CmxMul.ngc E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Ch_CmxMul.v 
// Device	: 6vlx240tff1156-1
// Input file	: E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Ch_CmxMul.ngc
// Output file	: E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Ch_CmxMul.v
// # of Modules	: 1
// Design Name	: Ch_CmxMul
// Xilinx        : D:\Xilinx\13.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Ch_CmxMul (
  aresetn, m_axis_dout_tvalid, s_axis_b_tvalid, s_axis_a_tvalid, aclken, aclk, s_axis_b_tdata, s_axis_a_tdata, m_axis_dout_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aresetn;
  output m_axis_dout_tvalid;
  input s_axis_b_tvalid;
  input s_axis_a_tvalid;
  input aclken;
  input aclk;
  input [31 : 0] s_axis_b_tdata;
  input [31 : 0] s_axis_a_tdata;
  output [79 : 0] m_axis_dout_tdata;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_m_axis_dout_tvalid;
  wire \NlwRenamedSignal_m_axis_dout_tdata[72] ;
  wire \NlwRenamedSignal_m_axis_dout_tdata[32] ;
  wire \blk00000003/sig00000199 ;
  wire \blk00000003/sig00000198 ;
  wire \blk00000003/sig00000197 ;
  wire \blk00000003/sig00000196 ;
  wire \blk00000003/sig00000195 ;
  wire \blk00000003/sig00000194 ;
  wire \blk00000003/sig00000193 ;
  wire \blk00000003/sig00000192 ;
  wire \blk00000003/sig00000191 ;
  wire \blk00000003/sig00000190 ;
  wire \blk00000003/sig0000018f ;
  wire \blk00000003/sig0000018e ;
  wire \blk00000003/sig0000018d ;
  wire \blk00000003/sig0000018c ;
  wire \blk00000003/sig0000018b ;
  wire \blk00000003/sig0000018a ;
  wire \blk00000003/sig00000189 ;
  wire \blk00000003/sig00000188 ;
  wire \blk00000003/sig00000187 ;
  wire \blk00000003/sig00000186 ;
  wire \blk00000003/sig00000185 ;
  wire \blk00000003/sig00000184 ;
  wire \blk00000003/sig00000183 ;
  wire \blk00000003/sig00000182 ;
  wire \blk00000003/sig00000181 ;
  wire \blk00000003/sig00000180 ;
  wire \blk00000003/sig0000017f ;
  wire \blk00000003/sig0000017e ;
  wire \blk00000003/sig0000017d ;
  wire \blk00000003/sig0000017c ;
  wire \blk00000003/sig0000017b ;
  wire \blk00000003/sig0000017a ;
  wire \blk00000003/sig00000179 ;
  wire \blk00000003/sig00000178 ;
  wire \blk00000003/sig00000177 ;
  wire \blk00000003/sig00000176 ;
  wire \blk00000003/sig00000175 ;
  wire \blk00000003/sig00000174 ;
  wire \blk00000003/sig00000173 ;
  wire \blk00000003/sig00000172 ;
  wire \blk00000003/sig00000171 ;
  wire \blk00000003/sig00000170 ;
  wire \blk00000003/sig0000016f ;
  wire \blk00000003/sig0000016e ;
  wire \blk00000003/sig0000016d ;
  wire \blk00000003/sig0000016c ;
  wire \blk00000003/sig0000016b ;
  wire \blk00000003/sig0000016a ;
  wire \blk00000003/sig00000169 ;
  wire \blk00000003/sig00000168 ;
  wire \blk00000003/sig00000167 ;
  wire \blk00000003/sig00000166 ;
  wire \blk00000003/sig00000165 ;
  wire \blk00000003/sig00000164 ;
  wire \blk00000003/sig00000163 ;
  wire \blk00000003/sig00000162 ;
  wire \blk00000003/sig00000161 ;
  wire \blk00000003/sig00000160 ;
  wire \blk00000003/sig0000015f ;
  wire \blk00000003/sig0000015e ;
  wire \blk00000003/sig0000015d ;
  wire \blk00000003/sig0000015c ;
  wire \blk00000003/sig0000015b ;
  wire \blk00000003/sig0000015a ;
  wire \blk00000003/sig00000159 ;
  wire \blk00000003/sig00000158 ;
  wire \blk00000003/sig00000157 ;
  wire \blk00000003/sig00000156 ;
  wire \blk00000003/sig00000155 ;
  wire \blk00000003/sig00000154 ;
  wire \blk00000003/sig00000153 ;
  wire \blk00000003/sig00000152 ;
  wire \blk00000003/sig00000151 ;
  wire \blk00000003/sig00000150 ;
  wire \blk00000003/sig0000014f ;
  wire \blk00000003/sig0000014e ;
  wire \blk00000003/sig0000014d ;
  wire \blk00000003/sig0000014c ;
  wire \blk00000003/sig0000014b ;
  wire \blk00000003/sig0000014a ;
  wire \blk00000003/sig00000149 ;
  wire \blk00000003/sig00000148 ;
  wire \blk00000003/sig00000147 ;
  wire \blk00000003/sig00000146 ;
  wire \blk00000003/sig00000145 ;
  wire \blk00000003/sig00000144 ;
  wire \blk00000003/sig00000143 ;
  wire \blk00000003/sig00000142 ;
  wire \blk00000003/sig00000141 ;
  wire \blk00000003/sig00000140 ;
  wire \blk00000003/sig0000013f ;
  wire \blk00000003/sig0000013e ;
  wire \blk00000003/sig0000013d ;
  wire \blk00000003/sig0000013c ;
  wire \blk00000003/sig0000013b ;
  wire \blk00000003/sig0000013a ;
  wire \blk00000003/sig00000139 ;
  wire \blk00000003/sig00000138 ;
  wire \blk00000003/sig00000137 ;
  wire \blk00000003/sig00000136 ;
  wire \blk00000003/sig00000135 ;
  wire \blk00000003/sig00000134 ;
  wire \blk00000003/sig00000133 ;
  wire \blk00000003/sig00000132 ;
  wire \blk00000003/sig00000131 ;
  wire \blk00000003/sig00000130 ;
  wire \blk00000003/sig0000012f ;
  wire \blk00000003/sig0000012e ;
  wire \blk00000003/sig0000012d ;
  wire \blk00000003/sig0000012c ;
  wire \blk00000003/sig0000012b ;
  wire \blk00000003/sig0000012a ;
  wire \blk00000003/sig00000129 ;
  wire \blk00000003/sig00000128 ;
  wire \blk00000003/sig00000127 ;
  wire \blk00000003/sig00000126 ;
  wire \blk00000003/sig00000125 ;
  wire \blk00000003/sig00000124 ;
  wire \blk00000003/sig00000123 ;
  wire \blk00000003/sig00000122 ;
  wire \blk00000003/sig00000121 ;
  wire \blk00000003/sig00000120 ;
  wire \blk00000003/sig0000011f ;
  wire \blk00000003/sig0000011e ;
  wire \blk00000003/sig0000011d ;
  wire \blk00000003/sig0000011c ;
  wire \blk00000003/sig0000011b ;
  wire \blk00000003/sig0000011a ;
  wire \blk00000003/sig00000119 ;
  wire \blk00000003/sig00000118 ;
  wire \blk00000003/sig00000117 ;
  wire \blk00000003/sig00000116 ;
  wire \blk00000003/sig00000115 ;
  wire \blk00000003/sig00000114 ;
  wire \blk00000003/sig00000113 ;
  wire \blk00000003/sig00000112 ;
  wire \blk00000003/sig00000111 ;
  wire \blk00000003/sig00000110 ;
  wire \blk00000003/sig0000010f ;
  wire \blk00000003/sig0000010e ;
  wire \blk00000003/sig0000010d ;
  wire \blk00000003/sig0000010c ;
  wire \blk00000003/sig0000010b ;
  wire \blk00000003/sig0000010a ;
  wire \blk00000003/sig00000109 ;
  wire \blk00000003/sig00000108 ;
  wire \blk00000003/sig00000107 ;
  wire \blk00000003/sig00000106 ;
  wire \blk00000003/sig00000105 ;
  wire \blk00000003/sig00000104 ;
  wire \blk00000003/sig00000103 ;
  wire \blk00000003/sig00000102 ;
  wire \blk00000003/sig00000101 ;
  wire \blk00000003/sig00000100 ;
  wire \blk00000003/sig000000ff ;
  wire \blk00000003/sig000000fe ;
  wire \blk00000003/sig000000fd ;
  wire \blk00000003/sig000000fc ;
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000f8 ;
  wire \blk00000003/sig000000f7 ;
  wire \blk00000003/sig000000f6 ;
  wire \blk00000003/sig000000f5 ;
  wire \blk00000003/sig000000f4 ;
  wire \blk00000003/sig000000f3 ;
  wire \blk00000003/sig000000f2 ;
  wire \blk00000003/sig000000f1 ;
  wire \blk00000003/sig000000f0 ;
  wire \blk00000003/sig000000ef ;
  wire \blk00000003/sig000000ee ;
  wire \blk00000003/sig000000ed ;
  wire \blk00000003/sig000000ec ;
  wire \blk00000003/sig000000eb ;
  wire \blk00000003/sig000000ea ;
  wire \blk00000003/sig000000e9 ;
  wire \blk00000003/sig000000e8 ;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000046 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000009_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000008_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000007_PCOUT<0>_UNCONNECTED ;
  wire [31 : 0] s_axis_a_tdata_0;
  wire [31 : 0] s_axis_b_tdata_1;
  assign
    m_axis_dout_tvalid = NlwRenamedSig_OI_m_axis_dout_tvalid,
    s_axis_b_tdata_1[31] = s_axis_b_tdata[31],
    s_axis_b_tdata_1[30] = s_axis_b_tdata[30],
    s_axis_b_tdata_1[29] = s_axis_b_tdata[29],
    s_axis_b_tdata_1[28] = s_axis_b_tdata[28],
    s_axis_b_tdata_1[27] = s_axis_b_tdata[27],
    s_axis_b_tdata_1[26] = s_axis_b_tdata[26],
    s_axis_b_tdata_1[25] = s_axis_b_tdata[25],
    s_axis_b_tdata_1[24] = s_axis_b_tdata[24],
    s_axis_b_tdata_1[23] = s_axis_b_tdata[23],
    s_axis_b_tdata_1[22] = s_axis_b_tdata[22],
    s_axis_b_tdata_1[21] = s_axis_b_tdata[21],
    s_axis_b_tdata_1[20] = s_axis_b_tdata[20],
    s_axis_b_tdata_1[19] = s_axis_b_tdata[19],
    s_axis_b_tdata_1[18] = s_axis_b_tdata[18],
    s_axis_b_tdata_1[17] = s_axis_b_tdata[17],
    s_axis_b_tdata_1[16] = s_axis_b_tdata[16],
    s_axis_b_tdata_1[15] = s_axis_b_tdata[15],
    s_axis_b_tdata_1[14] = s_axis_b_tdata[14],
    s_axis_b_tdata_1[13] = s_axis_b_tdata[13],
    s_axis_b_tdata_1[12] = s_axis_b_tdata[12],
    s_axis_b_tdata_1[11] = s_axis_b_tdata[11],
    s_axis_b_tdata_1[10] = s_axis_b_tdata[10],
    s_axis_b_tdata_1[9] = s_axis_b_tdata[9],
    s_axis_b_tdata_1[8] = s_axis_b_tdata[8],
    s_axis_b_tdata_1[7] = s_axis_b_tdata[7],
    s_axis_b_tdata_1[6] = s_axis_b_tdata[6],
    s_axis_b_tdata_1[5] = s_axis_b_tdata[5],
    s_axis_b_tdata_1[4] = s_axis_b_tdata[4],
    s_axis_b_tdata_1[3] = s_axis_b_tdata[3],
    s_axis_b_tdata_1[2] = s_axis_b_tdata[2],
    s_axis_b_tdata_1[1] = s_axis_b_tdata[1],
    s_axis_b_tdata_1[0] = s_axis_b_tdata[0],
    s_axis_a_tdata_0[31] = s_axis_a_tdata[31],
    s_axis_a_tdata_0[30] = s_axis_a_tdata[30],
    s_axis_a_tdata_0[29] = s_axis_a_tdata[29],
    s_axis_a_tdata_0[28] = s_axis_a_tdata[28],
    s_axis_a_tdata_0[27] = s_axis_a_tdata[27],
    s_axis_a_tdata_0[26] = s_axis_a_tdata[26],
    s_axis_a_tdata_0[25] = s_axis_a_tdata[25],
    s_axis_a_tdata_0[24] = s_axis_a_tdata[24],
    s_axis_a_tdata_0[23] = s_axis_a_tdata[23],
    s_axis_a_tdata_0[22] = s_axis_a_tdata[22],
    s_axis_a_tdata_0[21] = s_axis_a_tdata[21],
    s_axis_a_tdata_0[20] = s_axis_a_tdata[20],
    s_axis_a_tdata_0[19] = s_axis_a_tdata[19],
    s_axis_a_tdata_0[18] = s_axis_a_tdata[18],
    s_axis_a_tdata_0[17] = s_axis_a_tdata[17],
    s_axis_a_tdata_0[16] = s_axis_a_tdata[16],
    s_axis_a_tdata_0[15] = s_axis_a_tdata[15],
    s_axis_a_tdata_0[14] = s_axis_a_tdata[14],
    s_axis_a_tdata_0[13] = s_axis_a_tdata[13],
    s_axis_a_tdata_0[12] = s_axis_a_tdata[12],
    s_axis_a_tdata_0[11] = s_axis_a_tdata[11],
    s_axis_a_tdata_0[10] = s_axis_a_tdata[10],
    s_axis_a_tdata_0[9] = s_axis_a_tdata[9],
    s_axis_a_tdata_0[8] = s_axis_a_tdata[8],
    s_axis_a_tdata_0[7] = s_axis_a_tdata[7],
    s_axis_a_tdata_0[6] = s_axis_a_tdata[6],
    s_axis_a_tdata_0[5] = s_axis_a_tdata[5],
    s_axis_a_tdata_0[4] = s_axis_a_tdata[4],
    s_axis_a_tdata_0[3] = s_axis_a_tdata[3],
    s_axis_a_tdata_0[2] = s_axis_a_tdata[2],
    s_axis_a_tdata_0[1] = s_axis_a_tdata[1],
    s_axis_a_tdata_0[0] = s_axis_a_tdata[0],
    m_axis_dout_tdata[79] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[78] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[77] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[76] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[75] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[74] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[73] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[72] = \NlwRenamedSignal_m_axis_dout_tdata[72] ,
    m_axis_dout_tdata[39] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[38] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[37] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[36] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[35] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[34] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[33] = \NlwRenamedSignal_m_axis_dout_tdata[32] ,
    m_axis_dout_tdata[32] = \NlwRenamedSignal_m_axis_dout_tdata[32] ;
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  INV   \blk00000003/blk000000f7  (
    .I(aresetn),
    .O(\blk00000003/sig0000008b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f6  (
    .C(aclk),
    .D(\blk00000003/sig0000008b ),
    .Q(\blk00000003/sig0000008d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f5  (
    .C(aclk),
    .D(\blk00000003/sig00000199 ),
    .Q(\blk00000003/sig000000bf )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000f4  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000bf ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000199 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f3  (
    .C(aclk),
    .D(\blk00000003/sig00000198 ),
    .Q(\blk00000003/sig000000c0 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000f2  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015d ),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000198 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f1  (
    .C(aclk),
    .D(\blk00000003/sig00000197 ),
    .Q(\blk00000003/sig000000c1 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000f0  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015b ),
    .I2(\blk00000003/sig000000c1 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000197 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ef  (
    .C(aclk),
    .D(\blk00000003/sig00000196 ),
    .Q(\blk00000003/sig000000c2 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ee  (
    .I0(aclken),
    .I1(\blk00000003/sig00000159 ),
    .I2(\blk00000003/sig000000c2 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000196 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ed  (
    .C(aclk),
    .D(\blk00000003/sig00000195 ),
    .Q(\blk00000003/sig000000c3 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ec  (
    .I0(aclken),
    .I1(\blk00000003/sig00000157 ),
    .I2(\blk00000003/sig000000c3 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000195 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000eb  (
    .C(aclk),
    .D(\blk00000003/sig00000194 ),
    .Q(\blk00000003/sig000000c4 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ea  (
    .I0(aclken),
    .I1(\blk00000003/sig00000155 ),
    .I2(\blk00000003/sig000000c4 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000194 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e9  (
    .C(aclk),
    .D(\blk00000003/sig00000193 ),
    .Q(\blk00000003/sig000000c5 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000e8  (
    .I0(aclken),
    .I1(\blk00000003/sig00000153 ),
    .I2(\blk00000003/sig000000c5 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000193 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e7  (
    .C(aclk),
    .D(\blk00000003/sig00000192 ),
    .Q(\blk00000003/sig000000c6 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000e6  (
    .I0(aclken),
    .I1(\blk00000003/sig00000151 ),
    .I2(\blk00000003/sig000000c6 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000192 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e5  (
    .C(aclk),
    .D(\blk00000003/sig00000191 ),
    .Q(\blk00000003/sig000000c7 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000e4  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014f ),
    .I2(\blk00000003/sig000000c7 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e3  (
    .C(aclk),
    .D(\blk00000003/sig00000190 ),
    .Q(\blk00000003/sig000000c8 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000e2  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014d ),
    .I2(\blk00000003/sig000000c8 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000190 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e1  (
    .C(aclk),
    .D(\blk00000003/sig0000018f ),
    .Q(\blk00000003/sig000000c9 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000e0  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014b ),
    .I2(\blk00000003/sig000000c9 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000df  (
    .C(aclk),
    .D(\blk00000003/sig0000018e ),
    .Q(\blk00000003/sig000000ca )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000de  (
    .I0(aclken),
    .I1(\blk00000003/sig00000149 ),
    .I2(\blk00000003/sig000000ca ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000dd  (
    .C(aclk),
    .D(\blk00000003/sig0000018d ),
    .Q(\blk00000003/sig000000cb )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000dc  (
    .I0(aclken),
    .I1(\blk00000003/sig00000147 ),
    .I2(\blk00000003/sig000000cb ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000db  (
    .C(aclk),
    .D(\blk00000003/sig0000018c ),
    .Q(\blk00000003/sig000000cc )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000da  (
    .I0(aclken),
    .I1(\blk00000003/sig00000145 ),
    .I2(\blk00000003/sig000000cc ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d9  (
    .C(aclk),
    .D(\blk00000003/sig0000018b ),
    .Q(\blk00000003/sig000000cd )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000d8  (
    .I0(aclken),
    .I1(\blk00000003/sig00000143 ),
    .I2(\blk00000003/sig000000cd ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d7  (
    .C(aclk),
    .D(\blk00000003/sig0000018a ),
    .Q(\blk00000003/sig000000ce )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000d6  (
    .I0(aclken),
    .I1(\blk00000003/sig00000141 ),
    .I2(\blk00000003/sig000000ce ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000018a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d5  (
    .C(aclk),
    .D(\blk00000003/sig00000189 ),
    .Q(\blk00000003/sig000000df )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000d4  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012f ),
    .I2(\blk00000003/sig000000df ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000189 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d3  (
    .C(aclk),
    .D(\blk00000003/sig00000188 ),
    .Q(\blk00000003/sig000000e0 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000d2  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012d ),
    .I2(\blk00000003/sig000000e0 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000188 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d1  (
    .C(aclk),
    .D(\blk00000003/sig00000187 ),
    .Q(\blk00000003/sig000000e1 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000d0  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012b ),
    .I2(\blk00000003/sig000000e1 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000cf  (
    .C(aclk),
    .D(\blk00000003/sig00000186 ),
    .Q(\blk00000003/sig000000e2 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ce  (
    .I0(aclken),
    .I1(\blk00000003/sig00000129 ),
    .I2(\blk00000003/sig000000e2 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000186 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000cd  (
    .C(aclk),
    .D(\blk00000003/sig00000185 ),
    .Q(\blk00000003/sig000000e3 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000cc  (
    .I0(aclken),
    .I1(\blk00000003/sig00000127 ),
    .I2(\blk00000003/sig000000e3 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000185 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000cb  (
    .C(aclk),
    .D(\blk00000003/sig00000184 ),
    .Q(\blk00000003/sig000000e4 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ca  (
    .I0(aclken),
    .I1(\blk00000003/sig00000125 ),
    .I2(\blk00000003/sig000000e4 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000184 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c9  (
    .C(aclk),
    .D(\blk00000003/sig00000183 ),
    .Q(\blk00000003/sig000000e5 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000c8  (
    .I0(aclken),
    .I1(\blk00000003/sig00000123 ),
    .I2(\blk00000003/sig000000e5 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000183 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c7  (
    .C(aclk),
    .D(\blk00000003/sig00000182 ),
    .Q(\blk00000003/sig000000e6 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000c6  (
    .I0(aclken),
    .I1(\blk00000003/sig00000121 ),
    .I2(\blk00000003/sig000000e6 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000182 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c5  (
    .C(aclk),
    .D(\blk00000003/sig00000181 ),
    .Q(\blk00000003/sig000000e7 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000c4  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011f ),
    .I2(\blk00000003/sig000000e7 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000181 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c3  (
    .C(aclk),
    .D(\blk00000003/sig00000180 ),
    .Q(\blk00000003/sig000000e8 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000c2  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011d ),
    .I2(\blk00000003/sig000000e8 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000180 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c1  (
    .C(aclk),
    .D(\blk00000003/sig0000017f ),
    .Q(\blk00000003/sig000000e9 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000c0  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011b ),
    .I2(\blk00000003/sig000000e9 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bf  (
    .C(aclk),
    .D(\blk00000003/sig0000017e ),
    .Q(\blk00000003/sig000000ea )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000be  (
    .I0(aclken),
    .I1(\blk00000003/sig00000119 ),
    .I2(\blk00000003/sig000000ea ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bd  (
    .C(aclk),
    .D(\blk00000003/sig0000017d ),
    .Q(\blk00000003/sig000000eb )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000bc  (
    .I0(aclken),
    .I1(\blk00000003/sig00000117 ),
    .I2(\blk00000003/sig000000eb ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bb  (
    .C(aclk),
    .D(\blk00000003/sig0000017c ),
    .Q(\blk00000003/sig000000ec )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ba  (
    .I0(aclken),
    .I1(\blk00000003/sig00000115 ),
    .I2(\blk00000003/sig000000ec ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b9  (
    .C(aclk),
    .D(\blk00000003/sig0000017b ),
    .Q(\blk00000003/sig000000ed )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000b8  (
    .I0(aclken),
    .I1(\blk00000003/sig00000113 ),
    .I2(\blk00000003/sig000000ed ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b7  (
    .C(aclk),
    .D(\blk00000003/sig0000017a ),
    .Q(\blk00000003/sig000000ee )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000b6  (
    .I0(aclken),
    .I1(\blk00000003/sig00000111 ),
    .I2(\blk00000003/sig000000ee ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000017a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b5  (
    .C(aclk),
    .D(\blk00000003/sig00000179 ),
    .Q(\blk00000003/sig000000be )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000b4  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010f ),
    .I2(\blk00000003/sig000000be ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000179 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b3  (
    .C(aclk),
    .D(\blk00000003/sig00000178 ),
    .Q(\blk00000003/sig000000bd )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000b2  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010d ),
    .I2(\blk00000003/sig000000bd ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000178 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b1  (
    .C(aclk),
    .D(\blk00000003/sig00000177 ),
    .Q(\blk00000003/sig000000bc )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000b0  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010b ),
    .I2(\blk00000003/sig000000bc ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000177 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000af  (
    .C(aclk),
    .D(\blk00000003/sig00000176 ),
    .Q(\blk00000003/sig000000bb )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ae  (
    .I0(aclken),
    .I1(\blk00000003/sig00000109 ),
    .I2(\blk00000003/sig000000bb ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000176 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ad  (
    .C(aclk),
    .D(\blk00000003/sig00000175 ),
    .Q(\blk00000003/sig000000ba )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000ac  (
    .I0(aclken),
    .I1(\blk00000003/sig00000107 ),
    .I2(\blk00000003/sig000000ba ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000175 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ab  (
    .C(aclk),
    .D(\blk00000003/sig00000174 ),
    .Q(\blk00000003/sig000000b9 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000aa  (
    .I0(aclken),
    .I1(\blk00000003/sig00000105 ),
    .I2(\blk00000003/sig000000b9 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000174 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a9  (
    .C(aclk),
    .D(\blk00000003/sig00000173 ),
    .Q(\blk00000003/sig000000b8 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000a8  (
    .I0(aclken),
    .I1(\blk00000003/sig00000103 ),
    .I2(\blk00000003/sig000000b8 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000173 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a7  (
    .C(aclk),
    .D(\blk00000003/sig00000172 ),
    .Q(\blk00000003/sig000000b7 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000a6  (
    .I0(aclken),
    .I1(\blk00000003/sig00000101 ),
    .I2(\blk00000003/sig000000b7 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000172 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a5  (
    .C(aclk),
    .D(\blk00000003/sig00000171 ),
    .Q(\blk00000003/sig000000b6 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000a4  (
    .I0(aclken),
    .I1(\blk00000003/sig000000ff ),
    .I2(\blk00000003/sig000000b6 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000171 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a3  (
    .C(aclk),
    .D(\blk00000003/sig00000170 ),
    .Q(\blk00000003/sig000000b5 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000a2  (
    .I0(aclken),
    .I1(\blk00000003/sig000000fd ),
    .I2(\blk00000003/sig000000b5 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000170 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a1  (
    .C(aclk),
    .D(\blk00000003/sig0000016f ),
    .Q(\blk00000003/sig000000b4 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk000000a0  (
    .I0(aclken),
    .I1(\blk00000003/sig000000fb ),
    .I2(\blk00000003/sig000000b4 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009f  (
    .C(aclk),
    .D(\blk00000003/sig0000016e ),
    .Q(\blk00000003/sig000000b3 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk0000009e  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f9 ),
    .I2(\blk00000003/sig000000b3 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009d  (
    .C(aclk),
    .D(\blk00000003/sig0000016d ),
    .Q(\blk00000003/sig000000b2 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk0000009c  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f7 ),
    .I2(\blk00000003/sig000000b2 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009b  (
    .C(aclk),
    .D(\blk00000003/sig0000016c ),
    .Q(\blk00000003/sig000000b1 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk0000009a  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f5 ),
    .I2(\blk00000003/sig000000b1 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000099  (
    .C(aclk),
    .D(\blk00000003/sig0000016b ),
    .Q(\blk00000003/sig000000b0 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk00000098  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f3 ),
    .I2(\blk00000003/sig000000b0 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000097  (
    .C(aclk),
    .D(\blk00000003/sig0000016a ),
    .Q(\blk00000003/sig000000af )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk00000096  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f1 ),
    .I2(\blk00000003/sig000000af ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000016a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000095  (
    .C(aclk),
    .D(\blk00000003/sig00000169 ),
    .Q(\blk00000003/sig00000167 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk00000094  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f0 ),
    .I2(\blk00000003/sig00000167 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000169 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000093  (
    .C(aclk),
    .D(\blk00000003/sig00000168 ),
    .Q(\blk00000003/sig00000165 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk00000092  (
    .I0(aclken),
    .I1(\blk00000003/sig00000167 ),
    .I2(\blk00000003/sig00000165 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000168 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000091  (
    .C(aclk),
    .D(\blk00000003/sig00000166 ),
    .Q(\blk00000003/sig00000163 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk00000090  (
    .I0(aclken),
    .I1(\blk00000003/sig00000165 ),
    .I2(\blk00000003/sig00000163 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000166 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008f  (
    .C(aclk),
    .D(\blk00000003/sig00000164 ),
    .Q(\blk00000003/sig00000161 )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \blk00000003/blk0000008e  (
    .I0(aclken),
    .I1(\blk00000003/sig00000163 ),
    .I2(\blk00000003/sig00000161 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000164 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008d  (
    .C(aclk),
    .D(\blk00000003/sig00000162 ),
    .Q(NlwRenamedSig_OI_m_axis_dout_tvalid)
  );
  LUT4 #(
    .INIT ( 16'h00E4 ))
  \blk00000003/blk0000008c  (
    .I0(aclken),
    .I1(NlwRenamedSig_OI_m_axis_dout_tvalid),
    .I2(\blk00000003/sig00000161 ),
    .I3(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig00000162 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \blk00000003/blk0000008b  (
    .I0(aclken),
    .I1(s_axis_a_tvalid),
    .I2(s_axis_b_tvalid),
    .I3(\blk00000003/sig000000f0 ),
    .O(\blk00000003/sig000000ef )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008a  (
    .C(aclk),
    .D(\blk00000003/sig00000160 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000015f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000089  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015f ),
    .I2(s_axis_a_tdata_0[31]),
    .O(\blk00000003/sig00000160 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000088  (
    .C(aclk),
    .D(\blk00000003/sig0000015e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000015d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000087  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015d ),
    .I2(s_axis_a_tdata_0[30]),
    .O(\blk00000003/sig0000015e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000086  (
    .C(aclk),
    .D(\blk00000003/sig0000015c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000015b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000085  (
    .I0(aclken),
    .I1(\blk00000003/sig0000015b ),
    .I2(s_axis_a_tdata_0[29]),
    .O(\blk00000003/sig0000015c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000084  (
    .C(aclk),
    .D(\blk00000003/sig0000015a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000159 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000083  (
    .I0(aclken),
    .I1(\blk00000003/sig00000159 ),
    .I2(s_axis_a_tdata_0[28]),
    .O(\blk00000003/sig0000015a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000082  (
    .C(aclk),
    .D(\blk00000003/sig00000158 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000157 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000081  (
    .I0(aclken),
    .I1(\blk00000003/sig00000157 ),
    .I2(s_axis_a_tdata_0[27]),
    .O(\blk00000003/sig00000158 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000080  (
    .C(aclk),
    .D(\blk00000003/sig00000156 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000155 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000007f  (
    .I0(aclken),
    .I1(\blk00000003/sig00000155 ),
    .I2(s_axis_a_tdata_0[26]),
    .O(\blk00000003/sig00000156 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007e  (
    .C(aclk),
    .D(\blk00000003/sig00000154 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000153 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000007d  (
    .I0(aclken),
    .I1(\blk00000003/sig00000153 ),
    .I2(s_axis_a_tdata_0[25]),
    .O(\blk00000003/sig00000154 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007c  (
    .C(aclk),
    .D(\blk00000003/sig00000152 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000151 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000007b  (
    .I0(aclken),
    .I1(\blk00000003/sig00000151 ),
    .I2(s_axis_a_tdata_0[24]),
    .O(\blk00000003/sig00000152 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007a  (
    .C(aclk),
    .D(\blk00000003/sig00000150 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000014f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000079  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014f ),
    .I2(s_axis_a_tdata_0[23]),
    .O(\blk00000003/sig00000150 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000078  (
    .C(aclk),
    .D(\blk00000003/sig0000014e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000014d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000077  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014d ),
    .I2(s_axis_a_tdata_0[22]),
    .O(\blk00000003/sig0000014e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000076  (
    .C(aclk),
    .D(\blk00000003/sig0000014c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000014b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000075  (
    .I0(aclken),
    .I1(\blk00000003/sig0000014b ),
    .I2(s_axis_a_tdata_0[21]),
    .O(\blk00000003/sig0000014c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000074  (
    .C(aclk),
    .D(\blk00000003/sig0000014a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000149 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000073  (
    .I0(aclken),
    .I1(\blk00000003/sig00000149 ),
    .I2(s_axis_a_tdata_0[20]),
    .O(\blk00000003/sig0000014a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072  (
    .C(aclk),
    .D(\blk00000003/sig00000148 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000147 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000071  (
    .I0(aclken),
    .I1(\blk00000003/sig00000147 ),
    .I2(s_axis_a_tdata_0[19]),
    .O(\blk00000003/sig00000148 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000070  (
    .C(aclk),
    .D(\blk00000003/sig00000146 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000145 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000006f  (
    .I0(aclken),
    .I1(\blk00000003/sig00000145 ),
    .I2(s_axis_a_tdata_0[18]),
    .O(\blk00000003/sig00000146 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006e  (
    .C(aclk),
    .D(\blk00000003/sig00000144 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000143 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000006d  (
    .I0(aclken),
    .I1(\blk00000003/sig00000143 ),
    .I2(s_axis_a_tdata_0[17]),
    .O(\blk00000003/sig00000144 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006c  (
    .C(aclk),
    .D(\blk00000003/sig00000142 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000141 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000006b  (
    .I0(aclken),
    .I1(\blk00000003/sig00000141 ),
    .I2(s_axis_a_tdata_0[16]),
    .O(\blk00000003/sig00000142 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a  (
    .C(aclk),
    .D(\blk00000003/sig00000140 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000cf )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000069  (
    .I0(aclken),
    .I1(\blk00000003/sig000000cf ),
    .I2(s_axis_a_tdata_0[15]),
    .O(\blk00000003/sig00000140 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000068  (
    .C(aclk),
    .D(\blk00000003/sig0000013f ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000067  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d0 ),
    .I2(s_axis_a_tdata_0[14]),
    .O(\blk00000003/sig0000013f )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000066  (
    .C(aclk),
    .D(\blk00000003/sig0000013e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000065  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d1 ),
    .I2(s_axis_a_tdata_0[13]),
    .O(\blk00000003/sig0000013e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000064  (
    .C(aclk),
    .D(\blk00000003/sig0000013d ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000063  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d2 ),
    .I2(s_axis_a_tdata_0[12]),
    .O(\blk00000003/sig0000013d )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000062  (
    .C(aclk),
    .D(\blk00000003/sig0000013c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000061  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d3 ),
    .I2(s_axis_a_tdata_0[11]),
    .O(\blk00000003/sig0000013c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000060  (
    .C(aclk),
    .D(\blk00000003/sig0000013b ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d4 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000005f  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d4 ),
    .I2(s_axis_a_tdata_0[10]),
    .O(\blk00000003/sig0000013b )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005e  (
    .C(aclk),
    .D(\blk00000003/sig0000013a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000005d  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d5 ),
    .I2(s_axis_a_tdata_0[9]),
    .O(\blk00000003/sig0000013a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005c  (
    .C(aclk),
    .D(\blk00000003/sig00000139 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000005b  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d6 ),
    .I2(s_axis_a_tdata_0[8]),
    .O(\blk00000003/sig00000139 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005a  (
    .C(aclk),
    .D(\blk00000003/sig00000138 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000059  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d7 ),
    .I2(s_axis_a_tdata_0[7]),
    .O(\blk00000003/sig00000138 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058  (
    .C(aclk),
    .D(\blk00000003/sig00000137 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000057  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d8 ),
    .I2(s_axis_a_tdata_0[6]),
    .O(\blk00000003/sig00000137 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000056  (
    .C(aclk),
    .D(\blk00000003/sig00000136 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000d9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000055  (
    .I0(aclken),
    .I1(\blk00000003/sig000000d9 ),
    .I2(s_axis_a_tdata_0[5]),
    .O(\blk00000003/sig00000136 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000054  (
    .C(aclk),
    .D(\blk00000003/sig00000135 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000da )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000053  (
    .I0(aclken),
    .I1(\blk00000003/sig000000da ),
    .I2(s_axis_a_tdata_0[4]),
    .O(\blk00000003/sig00000135 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000052  (
    .C(aclk),
    .D(\blk00000003/sig00000134 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000db )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000051  (
    .I0(aclken),
    .I1(\blk00000003/sig000000db ),
    .I2(s_axis_a_tdata_0[3]),
    .O(\blk00000003/sig00000134 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000050  (
    .C(aclk),
    .D(\blk00000003/sig00000133 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000dc )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000004f  (
    .I0(aclken),
    .I1(\blk00000003/sig000000dc ),
    .I2(s_axis_a_tdata_0[2]),
    .O(\blk00000003/sig00000133 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004e  (
    .C(aclk),
    .D(\blk00000003/sig00000132 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000dd )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000004d  (
    .I0(aclken),
    .I1(\blk00000003/sig000000dd ),
    .I2(s_axis_a_tdata_0[1]),
    .O(\blk00000003/sig00000132 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004c  (
    .C(aclk),
    .D(\blk00000003/sig00000131 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000de )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000004b  (
    .I0(aclken),
    .I1(\blk00000003/sig000000de ),
    .I2(s_axis_a_tdata_0[0]),
    .O(\blk00000003/sig00000131 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004a  (
    .C(aclk),
    .D(\blk00000003/sig00000130 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000012f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000049  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012f ),
    .I2(s_axis_b_tdata_1[31]),
    .O(\blk00000003/sig00000130 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000048  (
    .C(aclk),
    .D(\blk00000003/sig0000012e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000012d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000047  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012d ),
    .I2(s_axis_b_tdata_1[30]),
    .O(\blk00000003/sig0000012e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046  (
    .C(aclk),
    .D(\blk00000003/sig0000012c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000012b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000045  (
    .I0(aclken),
    .I1(\blk00000003/sig0000012b ),
    .I2(s_axis_b_tdata_1[29]),
    .O(\blk00000003/sig0000012c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000044  (
    .C(aclk),
    .D(\blk00000003/sig0000012a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000129 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000043  (
    .I0(aclken),
    .I1(\blk00000003/sig00000129 ),
    .I2(s_axis_b_tdata_1[28]),
    .O(\blk00000003/sig0000012a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000042  (
    .C(aclk),
    .D(\blk00000003/sig00000128 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000127 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000041  (
    .I0(aclken),
    .I1(\blk00000003/sig00000127 ),
    .I2(s_axis_b_tdata_1[27]),
    .O(\blk00000003/sig00000128 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000040  (
    .C(aclk),
    .D(\blk00000003/sig00000126 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000125 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000003f  (
    .I0(aclken),
    .I1(\blk00000003/sig00000125 ),
    .I2(s_axis_b_tdata_1[26]),
    .O(\blk00000003/sig00000126 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003e  (
    .C(aclk),
    .D(\blk00000003/sig00000124 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000123 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000003d  (
    .I0(aclken),
    .I1(\blk00000003/sig00000123 ),
    .I2(s_axis_b_tdata_1[25]),
    .O(\blk00000003/sig00000124 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003c  (
    .C(aclk),
    .D(\blk00000003/sig00000122 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000121 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000003b  (
    .I0(aclken),
    .I1(\blk00000003/sig00000121 ),
    .I2(s_axis_b_tdata_1[24]),
    .O(\blk00000003/sig00000122 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003a  (
    .C(aclk),
    .D(\blk00000003/sig00000120 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000011f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000039  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011f ),
    .I2(s_axis_b_tdata_1[23]),
    .O(\blk00000003/sig00000120 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000038  (
    .C(aclk),
    .D(\blk00000003/sig0000011e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000011d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000037  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011d ),
    .I2(s_axis_b_tdata_1[22]),
    .O(\blk00000003/sig0000011e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000036  (
    .C(aclk),
    .D(\blk00000003/sig0000011c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000011b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000035  (
    .I0(aclken),
    .I1(\blk00000003/sig0000011b ),
    .I2(s_axis_b_tdata_1[21]),
    .O(\blk00000003/sig0000011c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000034  (
    .C(aclk),
    .D(\blk00000003/sig0000011a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000119 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000033  (
    .I0(aclken),
    .I1(\blk00000003/sig00000119 ),
    .I2(s_axis_b_tdata_1[20]),
    .O(\blk00000003/sig0000011a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000032  (
    .C(aclk),
    .D(\blk00000003/sig00000118 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000117 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000031  (
    .I0(aclken),
    .I1(\blk00000003/sig00000117 ),
    .I2(s_axis_b_tdata_1[19]),
    .O(\blk00000003/sig00000118 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000030  (
    .C(aclk),
    .D(\blk00000003/sig00000116 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000115 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000002f  (
    .I0(aclken),
    .I1(\blk00000003/sig00000115 ),
    .I2(s_axis_b_tdata_1[18]),
    .O(\blk00000003/sig00000116 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002e  (
    .C(aclk),
    .D(\blk00000003/sig00000114 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000113 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000002d  (
    .I0(aclken),
    .I1(\blk00000003/sig00000113 ),
    .I2(s_axis_b_tdata_1[17]),
    .O(\blk00000003/sig00000114 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002c  (
    .C(aclk),
    .D(\blk00000003/sig00000112 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000111 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000002b  (
    .I0(aclken),
    .I1(\blk00000003/sig00000111 ),
    .I2(s_axis_b_tdata_1[16]),
    .O(\blk00000003/sig00000112 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002a  (
    .C(aclk),
    .D(\blk00000003/sig00000110 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000010f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000029  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010f ),
    .I2(s_axis_b_tdata_1[0]),
    .O(\blk00000003/sig00000110 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000028  (
    .C(aclk),
    .D(\blk00000003/sig0000010e ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000010d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000027  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010d ),
    .I2(s_axis_b_tdata_1[1]),
    .O(\blk00000003/sig0000010e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000026  (
    .C(aclk),
    .D(\blk00000003/sig0000010c ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig0000010b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000025  (
    .I0(aclken),
    .I1(\blk00000003/sig0000010b ),
    .I2(s_axis_b_tdata_1[2]),
    .O(\blk00000003/sig0000010c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000024  (
    .C(aclk),
    .D(\blk00000003/sig0000010a ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000109 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000023  (
    .I0(aclken),
    .I1(\blk00000003/sig00000109 ),
    .I2(s_axis_b_tdata_1[3]),
    .O(\blk00000003/sig0000010a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000022  (
    .C(aclk),
    .D(\blk00000003/sig00000108 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000107 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000021  (
    .I0(aclken),
    .I1(\blk00000003/sig00000107 ),
    .I2(s_axis_b_tdata_1[4]),
    .O(\blk00000003/sig00000108 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000020  (
    .C(aclk),
    .D(\blk00000003/sig00000106 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000105 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000001f  (
    .I0(aclken),
    .I1(\blk00000003/sig00000105 ),
    .I2(s_axis_b_tdata_1[5]),
    .O(\blk00000003/sig00000106 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001e  (
    .C(aclk),
    .D(\blk00000003/sig00000104 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000103 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000001d  (
    .I0(aclken),
    .I1(\blk00000003/sig00000103 ),
    .I2(s_axis_b_tdata_1[6]),
    .O(\blk00000003/sig00000104 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001c  (
    .C(aclk),
    .D(\blk00000003/sig00000102 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig00000101 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000001b  (
    .I0(aclken),
    .I1(\blk00000003/sig00000101 ),
    .I2(s_axis_b_tdata_1[7]),
    .O(\blk00000003/sig00000102 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001a  (
    .C(aclk),
    .D(\blk00000003/sig00000100 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000ff )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000019  (
    .I0(aclken),
    .I1(\blk00000003/sig000000ff ),
    .I2(s_axis_b_tdata_1[8]),
    .O(\blk00000003/sig00000100 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000018  (
    .C(aclk),
    .D(\blk00000003/sig000000fe ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000fd )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000017  (
    .I0(aclken),
    .I1(\blk00000003/sig000000fd ),
    .I2(s_axis_b_tdata_1[9]),
    .O(\blk00000003/sig000000fe )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000016  (
    .C(aclk),
    .D(\blk00000003/sig000000fc ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000fb )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000015  (
    .I0(aclken),
    .I1(\blk00000003/sig000000fb ),
    .I2(s_axis_b_tdata_1[10]),
    .O(\blk00000003/sig000000fc )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000014  (
    .C(aclk),
    .D(\blk00000003/sig000000fa ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000013  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f9 ),
    .I2(s_axis_b_tdata_1[11]),
    .O(\blk00000003/sig000000fa )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000012  (
    .C(aclk),
    .D(\blk00000003/sig000000f8 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000011  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f7 ),
    .I2(s_axis_b_tdata_1[12]),
    .O(\blk00000003/sig000000f8 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000010  (
    .C(aclk),
    .D(\blk00000003/sig000000f6 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000000f  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f5 ),
    .I2(s_axis_b_tdata_1[13]),
    .O(\blk00000003/sig000000f6 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000e  (
    .C(aclk),
    .D(\blk00000003/sig000000f4 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000000d  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f3 ),
    .I2(s_axis_b_tdata_1[14]),
    .O(\blk00000003/sig000000f4 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000c  (
    .C(aclk),
    .D(\blk00000003/sig000000f2 ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000000b  (
    .I0(aclken),
    .I1(\blk00000003/sig000000f1 ),
    .I2(s_axis_b_tdata_1[15]),
    .O(\blk00000003/sig000000f2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000a  (
    .C(aclk),
    .D(\blk00000003/sig000000ef ),
    .R(\blk00000003/sig0000008d ),
    .Q(\blk00000003/sig000000f0 )
  );
  DSP48E1 #(
    .ACASCREG ( 2 ),
    .ADREG ( 1 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 2 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "TRUE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000003/blk00000009  (
    .PATTERNBDETECT(\NLW_blk00000003/blk00000009_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000003/sig0000008c ),
    .CEB1(aclken),
    .CEAD(aclken),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000009_MULTSIGNOUT_UNCONNECTED ),
    .CEC(aclken),
    .RSTM(\blk00000003/sig0000008c ),
    .MULTSIGNIN(\blk00000003/sig00000046 ),
    .CEB2(aclken),
    .RSTCTRL(\blk00000003/sig00000046 ),
    .CEP(aclken),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000009_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008c ),
    .CECARRYIN(\blk00000003/sig00000046 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000009_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000009_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000046 ),
    .RSTALLCARRYIN(\blk00000003/sig00000046 ),
    .CED(aclken),
    .RSTD(\blk00000003/sig0000008d ),
    .CEALUMODE(\blk00000003/sig00000046 ),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(aclken),
    .RSTB(\blk00000003/sig0000008c ),
    .OVERFLOW(\NLW_blk00000003/blk00000009_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000046 ),
    .CEM(aclken),
    .CARRYIN(\blk00000003/sig00000046 ),
    .CARRYCASCIN(\blk00000003/sig00000046 ),
    .RSTINMODE(\blk00000003/sig00000046 ),
    .CEINMODE(\blk00000003/sig00000046 ),
    .RSTP(\blk00000003/sig0000008c ),
    .ACOUT({\NLW_blk00000003/blk00000009_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_ACOUT<0>_UNCONNECTED }),
    .OPMODE({\blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig0000008a , 
\blk00000003/sig00000046 , \blk00000003/sig0000008a }),
    .PCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .ALUMODE({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig0000008a }),
    .C({\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , \blk00000003/sig00000091 , \blk00000003/sig00000092 , 
\blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , \blk00000003/sig00000096 , \blk00000003/sig00000097 , 
\blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , \blk00000003/sig0000009b , \blk00000003/sig0000009c , 
\blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , \blk00000003/sig000000a0 , \blk00000003/sig000000a1 , 
\blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , \blk00000003/sig000000a5 , \blk00000003/sig000000a6 , 
\blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , \blk00000003/sig000000aa , \blk00000003/sig000000ab , 
\blk00000003/sig000000ac , \blk00000003/sig000000ad , \blk00000003/sig000000ae }),
    .CARRYOUT({\NLW_blk00000003/blk00000009_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .BCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .B({\blk00000003/sig000000df , \blk00000003/sig000000df , \blk00000003/sig000000df , \blk00000003/sig000000e0 , \blk00000003/sig000000e1 , 
\blk00000003/sig000000e2 , \blk00000003/sig000000e3 , \blk00000003/sig000000e4 , \blk00000003/sig000000e5 , \blk00000003/sig000000e6 , 
\blk00000003/sig000000e7 , \blk00000003/sig000000e8 , \blk00000003/sig000000e9 , \blk00000003/sig000000ea , \blk00000003/sig000000eb , 
\blk00000003/sig000000ec , \blk00000003/sig000000ed , \blk00000003/sig000000ee }),
    .BCOUT({\NLW_blk00000003/blk00000009_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , 
\blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , 
\blk00000003/sig000000c0 , \blk00000003/sig000000c1 , \blk00000003/sig000000c2 , \blk00000003/sig000000c3 , \blk00000003/sig000000c4 , 
\blk00000003/sig000000c5 , \blk00000003/sig000000c6 , \blk00000003/sig000000c7 , \blk00000003/sig000000c8 , \blk00000003/sig000000c9 , 
\blk00000003/sig000000ca , \blk00000003/sig000000cb , \blk00000003/sig000000cc , \blk00000003/sig000000cd , \blk00000003/sig000000ce }),
    .P({\NLW_blk00000003/blk00000009_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<33>_UNCONNECTED , \NlwRenamedSignal_m_axis_dout_tdata[32] , m_axis_dout_tdata[31], m_axis_dout_tdata[30], 
m_axis_dout_tdata[29], m_axis_dout_tdata[28], m_axis_dout_tdata[27], m_axis_dout_tdata[26], m_axis_dout_tdata[25], m_axis_dout_tdata[24], 
m_axis_dout_tdata[23], m_axis_dout_tdata[22], m_axis_dout_tdata[21], m_axis_dout_tdata[20], m_axis_dout_tdata[19], m_axis_dout_tdata[18], 
m_axis_dout_tdata[17], m_axis_dout_tdata[16], m_axis_dout_tdata[15], m_axis_dout_tdata[14], m_axis_dout_tdata[13], m_axis_dout_tdata[12], 
m_axis_dout_tdata[11], m_axis_dout_tdata[10], m_axis_dout_tdata[9], m_axis_dout_tdata[8], m_axis_dout_tdata[7], m_axis_dout_tdata[6], 
m_axis_dout_tdata[5], m_axis_dout_tdata[4], m_axis_dout_tdata[3], m_axis_dout_tdata[2], m_axis_dout_tdata[1], m_axis_dout_tdata[0]}),
    .A({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , 
\blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , 
\blk00000003/sig000000d0 , \blk00000003/sig000000d1 , \blk00000003/sig000000d2 , \blk00000003/sig000000d3 , \blk00000003/sig000000d4 , 
\blk00000003/sig000000d5 , \blk00000003/sig000000d6 , \blk00000003/sig000000d7 , \blk00000003/sig000000d8 , \blk00000003/sig000000d9 , 
\blk00000003/sig000000da , \blk00000003/sig000000db , \blk00000003/sig000000dc , \blk00000003/sig000000dd , \blk00000003/sig000000de }),
    .PCOUT({\NLW_blk00000003/blk00000009_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .CARRYINSEL({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 })
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 1 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .DREG ( 1 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "TRUE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000003/blk00000008  (
    .PATTERNBDETECT(\NLW_blk00000003/blk00000008_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000003/sig00000046 ),
    .CEB1(aclken),
    .CEAD(aclken),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000008_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000003/sig00000046 ),
    .RSTM(\blk00000003/sig0000008c ),
    .MULTSIGNIN(\blk00000003/sig00000046 ),
    .CEB2(aclken),
    .RSTCTRL(\blk00000003/sig00000046 ),
    .CEP(aclken),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000008_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008c ),
    .CECARRYIN(\blk00000003/sig00000046 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000008_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000008_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000046 ),
    .RSTALLCARRYIN(\blk00000003/sig00000046 ),
    .CED(aclken),
    .RSTD(\blk00000003/sig0000008d ),
    .CEALUMODE(\blk00000003/sig00000046 ),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(\blk00000003/sig00000046 ),
    .RSTB(\blk00000003/sig0000008c ),
    .OVERFLOW(\NLW_blk00000003/blk00000008_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000046 ),
    .CEM(aclken),
    .CARRYIN(\blk00000003/sig00000046 ),
    .CARRYCASCIN(\blk00000003/sig00000046 ),
    .RSTINMODE(\blk00000003/sig00000046 ),
    .CEINMODE(\blk00000003/sig00000046 ),
    .RSTP(\blk00000003/sig0000008c ),
    .ACOUT({\NLW_blk00000003/blk00000008_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000008_ACOUT<0>_UNCONNECTED }),
    .OPMODE({\blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig0000008a , 
\blk00000003/sig00000046 , \blk00000003/sig0000008a }),
    .PCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .ALUMODE({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .C({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .CARRYOUT({\NLW_blk00000003/blk00000008_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000008_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000008_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .BCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .B({s_axis_a_tdata_0[15], s_axis_a_tdata_0[15], s_axis_a_tdata_0[15], s_axis_a_tdata_0[14], s_axis_a_tdata_0[13], s_axis_a_tdata_0[12], 
s_axis_a_tdata_0[11], s_axis_a_tdata_0[10], s_axis_a_tdata_0[9], s_axis_a_tdata_0[8], s_axis_a_tdata_0[7], s_axis_a_tdata_0[6], s_axis_a_tdata_0[5], 
s_axis_a_tdata_0[4], s_axis_a_tdata_0[3], s_axis_a_tdata_0[2], s_axis_a_tdata_0[1], s_axis_a_tdata_0[0]}),
    .BCOUT({\NLW_blk00000003/blk00000008_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000008_BCOUT<0>_UNCONNECTED }),
    .D({s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], 
s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[31], s_axis_b_tdata_1[30], s_axis_b_tdata_1[29], 
s_axis_b_tdata_1[28], s_axis_b_tdata_1[27], s_axis_b_tdata_1[26], s_axis_b_tdata_1[25], s_axis_b_tdata_1[24], s_axis_b_tdata_1[23], 
s_axis_b_tdata_1[22], s_axis_b_tdata_1[21], s_axis_b_tdata_1[20], s_axis_b_tdata_1[19], s_axis_b_tdata_1[18], s_axis_b_tdata_1[17], 
s_axis_b_tdata_1[16]}),
    .P({\NLW_blk00000003/blk00000008_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000008_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_P<33>_UNCONNECTED , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , 
\blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , 
\blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , 
\blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , 
\blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , 
\blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac , \blk00000003/sig000000ad , \blk00000003/sig000000ae }),
    .A({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], 
s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[15], s_axis_b_tdata_1[14], s_axis_b_tdata_1[13], 
s_axis_b_tdata_1[12], s_axis_b_tdata_1[11], s_axis_b_tdata_1[10], s_axis_b_tdata_1[9], s_axis_b_tdata_1[8], s_axis_b_tdata_1[7], s_axis_b_tdata_1[6], 
s_axis_b_tdata_1[5], s_axis_b_tdata_1[4], s_axis_b_tdata_1[3], s_axis_b_tdata_1[2], s_axis_b_tdata_1[1], s_axis_b_tdata_1[0]}),
    .PCOUT({\NLW_blk00000003/blk00000008_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000008_PCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .CARRYINSEL({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 })
  );
  DSP48E1 #(
    .ACASCREG ( 2 ),
    .ADREG ( 1 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 2 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "TRUE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000003/blk00000007  (
    .PATTERNBDETECT(\NLW_blk00000003/blk00000007_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000003/sig0000008c ),
    .CEB1(aclken),
    .CEAD(aclken),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000007_MULTSIGNOUT_UNCONNECTED ),
    .CEC(aclken),
    .RSTM(\blk00000003/sig0000008c ),
    .MULTSIGNIN(\blk00000003/sig00000046 ),
    .CEB2(aclken),
    .RSTCTRL(\blk00000003/sig00000046 ),
    .CEP(aclken),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000007_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008c ),
    .CECARRYIN(\blk00000003/sig00000046 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000007_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000007_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000046 ),
    .RSTALLCARRYIN(\blk00000003/sig00000046 ),
    .CED(aclken),
    .RSTD(\blk00000003/sig0000008d ),
    .CEALUMODE(\blk00000003/sig00000046 ),
    .CEA2(aclken),
    .CLK(aclk),
    .CEA1(aclken),
    .RSTB(\blk00000003/sig0000008c ),
    .OVERFLOW(\NLW_blk00000003/blk00000007_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000046 ),
    .CEM(aclken),
    .CARRYIN(\blk00000003/sig00000046 ),
    .CARRYCASCIN(\blk00000003/sig00000046 ),
    .RSTINMODE(\blk00000003/sig00000046 ),
    .CEINMODE(\blk00000003/sig00000046 ),
    .RSTP(\blk00000003/sig0000008c ),
    .ACOUT({\NLW_blk00000003/blk00000007_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_ACOUT<0>_UNCONNECTED }),
    .OPMODE({\blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig0000008a , 
\blk00000003/sig00000046 , \blk00000003/sig0000008a }),
    .PCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .ALUMODE({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .C({\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , \blk00000003/sig0000008e , 
\blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , \blk00000003/sig00000091 , \blk00000003/sig00000092 , 
\blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , \blk00000003/sig00000096 , \blk00000003/sig00000097 , 
\blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , \blk00000003/sig0000009b , \blk00000003/sig0000009c , 
\blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , \blk00000003/sig000000a0 , \blk00000003/sig000000a1 , 
\blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , \blk00000003/sig000000a5 , \blk00000003/sig000000a6 , 
\blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , \blk00000003/sig000000aa , \blk00000003/sig000000ab , 
\blk00000003/sig000000ac , \blk00000003/sig000000ad , \blk00000003/sig000000ae }),
    .CARRYOUT({\NLW_blk00000003/blk00000007_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000046 , \blk00000003/sig0000008a , \blk00000003/sig0000008a , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .BCIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .B({\blk00000003/sig000000af , \blk00000003/sig000000af , \blk00000003/sig000000af , \blk00000003/sig000000b0 , \blk00000003/sig000000b1 , 
\blk00000003/sig000000b2 , \blk00000003/sig000000b3 , \blk00000003/sig000000b4 , \blk00000003/sig000000b5 , \blk00000003/sig000000b6 , 
\blk00000003/sig000000b7 , \blk00000003/sig000000b8 , \blk00000003/sig000000b9 , \blk00000003/sig000000ba , \blk00000003/sig000000bb , 
\blk00000003/sig000000bc , \blk00000003/sig000000bd , \blk00000003/sig000000be }),
    .BCOUT({\NLW_blk00000003/blk00000007_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , 
\blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , \blk00000003/sig000000bf , 
\blk00000003/sig000000c0 , \blk00000003/sig000000c1 , \blk00000003/sig000000c2 , \blk00000003/sig000000c3 , \blk00000003/sig000000c4 , 
\blk00000003/sig000000c5 , \blk00000003/sig000000c6 , \blk00000003/sig000000c7 , \blk00000003/sig000000c8 , \blk00000003/sig000000c9 , 
\blk00000003/sig000000ca , \blk00000003/sig000000cb , \blk00000003/sig000000cc , \blk00000003/sig000000cd , \blk00000003/sig000000ce }),
    .P({\NLW_blk00000003/blk00000007_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000007_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_P<33>_UNCONNECTED , \NlwRenamedSignal_m_axis_dout_tdata[72] , m_axis_dout_tdata[71], m_axis_dout_tdata[70], 
m_axis_dout_tdata[69], m_axis_dout_tdata[68], m_axis_dout_tdata[67], m_axis_dout_tdata[66], m_axis_dout_tdata[65], m_axis_dout_tdata[64], 
m_axis_dout_tdata[63], m_axis_dout_tdata[62], m_axis_dout_tdata[61], m_axis_dout_tdata[60], m_axis_dout_tdata[59], m_axis_dout_tdata[58], 
m_axis_dout_tdata[57], m_axis_dout_tdata[56], m_axis_dout_tdata[55], m_axis_dout_tdata[54], m_axis_dout_tdata[53], m_axis_dout_tdata[52], 
m_axis_dout_tdata[51], m_axis_dout_tdata[50], m_axis_dout_tdata[49], m_axis_dout_tdata[48], m_axis_dout_tdata[47], m_axis_dout_tdata[46], 
m_axis_dout_tdata[45], m_axis_dout_tdata[44], m_axis_dout_tdata[43], m_axis_dout_tdata[42], m_axis_dout_tdata[41], m_axis_dout_tdata[40]}),
    .A({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , 
\blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , \blk00000003/sig000000cf , 
\blk00000003/sig000000d0 , \blk00000003/sig000000d1 , \blk00000003/sig000000d2 , \blk00000003/sig000000d3 , \blk00000003/sig000000d4 , 
\blk00000003/sig000000d5 , \blk00000003/sig000000d6 , \blk00000003/sig000000d7 , \blk00000003/sig000000d8 , \blk00000003/sig000000d9 , 
\blk00000003/sig000000da , \blk00000003/sig000000db , \blk00000003/sig000000dc , \blk00000003/sig000000dd , \blk00000003/sig000000de }),
    .PCOUT({\NLW_blk00000003/blk00000007_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_PCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , 
\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 }),
    .CARRYINSEL({\blk00000003/sig00000046 , \blk00000003/sig00000046 , \blk00000003/sig00000046 })
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000006  (
    .C(aclk),
    .D(\blk00000003/sig0000008b ),
    .Q(\blk00000003/sig0000008c )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig0000008a )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000046 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
