////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: Complex_Multiplier.v
// /___/   /\     Timestamp: Wed May 08 14:29:44 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Complex_Multiplier.ngc E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Complex_Multiplier.v 
// Device	: 6vlx240tff1156-1
// Input file	: E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Complex_Multiplier.ngc
// Output file	: E:/OFDM/ISE/OFDM_SYS_RX/OFDM_RX_802_11/IPCORE/tmp/_cg/Complex_Multiplier.v
// # of Modules	: 1
// Design Name	: Complex_Multiplier
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

module Complex_Multiplier (
  aresetn, m_axis_dout_tvalid, s_axis_b_tvalid, s_axis_a_tvalid, aclk, s_axis_b_tdata, s_axis_a_tdata, m_axis_dout_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aresetn;
  output m_axis_dout_tvalid;
  input s_axis_b_tvalid;
  input s_axis_a_tvalid;
  input aclk;
  input [31 : 0] s_axis_b_tdata;
  input [31 : 0] s_axis_a_tdata;
  output [79 : 0] m_axis_dout_tdata;
  
  // synthesis translate_off
  
  wire \NlwRenamedSignal_m_axis_dout_tdata[72] ;
  wire \NlwRenamedSignal_m_axis_dout_tdata[32] ;
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
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000045 ;
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
    .O(\blk00000003/sig0000008a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f6  (
    .C(aclk),
    .D(\blk00000003/sig00000198 ),
    .Q(\blk00000003/sig000000bd )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000f5  (
    .I0(\blk00000003/sig00000188 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000198 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f4  (
    .C(aclk),
    .D(\blk00000003/sig00000197 ),
    .Q(\blk00000003/sig000000be )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000f3  (
    .I0(\blk00000003/sig00000186 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000197 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f2  (
    .C(aclk),
    .D(\blk00000003/sig00000196 ),
    .Q(\blk00000003/sig000000bf )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000f1  (
    .I0(\blk00000003/sig00000184 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000196 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f0  (
    .C(aclk),
    .D(\blk00000003/sig00000195 ),
    .Q(\blk00000003/sig000000c0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000ef  (
    .I0(\blk00000003/sig00000182 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000195 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ee  (
    .C(aclk),
    .D(\blk00000003/sig00000194 ),
    .Q(\blk00000003/sig000000c1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000ed  (
    .I0(\blk00000003/sig00000180 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000194 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ec  (
    .C(aclk),
    .D(\blk00000003/sig00000193 ),
    .Q(\blk00000003/sig000000c2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000eb  (
    .I0(\blk00000003/sig0000017e ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000193 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ea  (
    .C(aclk),
    .D(\blk00000003/sig00000192 ),
    .Q(\blk00000003/sig000000c3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000e9  (
    .I0(\blk00000003/sig0000017c ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000192 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e8  (
    .C(aclk),
    .D(\blk00000003/sig00000191 ),
    .Q(\blk00000003/sig000000c4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000e7  (
    .I0(\blk00000003/sig0000017a ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e6  (
    .C(aclk),
    .D(\blk00000003/sig00000190 ),
    .Q(\blk00000003/sig000000c5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000e5  (
    .I0(\blk00000003/sig00000178 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000190 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e4  (
    .C(aclk),
    .D(\blk00000003/sig0000018f ),
    .Q(\blk00000003/sig000000c6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000e3  (
    .I0(\blk00000003/sig00000176 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e2  (
    .C(aclk),
    .D(\blk00000003/sig0000018e ),
    .Q(\blk00000003/sig000000c7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000e1  (
    .I0(\blk00000003/sig00000174 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e0  (
    .C(aclk),
    .D(\blk00000003/sig0000018d ),
    .Q(\blk00000003/sig000000c8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000df  (
    .I0(\blk00000003/sig00000172 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000de  (
    .C(aclk),
    .D(\blk00000003/sig0000018c ),
    .Q(\blk00000003/sig000000c9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000dd  (
    .I0(\blk00000003/sig00000170 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000dc  (
    .C(aclk),
    .D(\blk00000003/sig0000018b ),
    .Q(\blk00000003/sig000000ca )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000db  (
    .I0(\blk00000003/sig0000016e ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000da  (
    .C(aclk),
    .D(\blk00000003/sig0000018a ),
    .Q(\blk00000003/sig000000cb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000d9  (
    .I0(\blk00000003/sig0000016c ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000018a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d8  (
    .C(aclk),
    .D(\blk00000003/sig00000189 ),
    .Q(\blk00000003/sig000000cc )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000d7  (
    .I0(\blk00000003/sig0000016a ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000189 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d6  (
    .C(aclk),
    .D(\blk00000003/sig00000187 ),
    .Q(\blk00000003/sig00000188 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000d5  (
    .I0(s_axis_a_tdata_0[31]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d4  (
    .C(aclk),
    .D(\blk00000003/sig00000185 ),
    .Q(\blk00000003/sig00000186 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000d3  (
    .I0(s_axis_a_tdata_0[30]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000185 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d2  (
    .C(aclk),
    .D(\blk00000003/sig00000183 ),
    .Q(\blk00000003/sig00000184 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000d1  (
    .I0(s_axis_a_tdata_0[29]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000183 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d0  (
    .C(aclk),
    .D(\blk00000003/sig00000181 ),
    .Q(\blk00000003/sig00000182 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000cf  (
    .I0(s_axis_a_tdata_0[28]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000181 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ce  (
    .C(aclk),
    .D(\blk00000003/sig0000017f ),
    .Q(\blk00000003/sig00000180 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000cd  (
    .I0(s_axis_a_tdata_0[27]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000017f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000cc  (
    .C(aclk),
    .D(\blk00000003/sig0000017d ),
    .Q(\blk00000003/sig0000017e )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000cb  (
    .I0(s_axis_a_tdata_0[26]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000017d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ca  (
    .C(aclk),
    .D(\blk00000003/sig0000017b ),
    .Q(\blk00000003/sig0000017c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000c9  (
    .I0(s_axis_a_tdata_0[25]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000017b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c8  (
    .C(aclk),
    .D(\blk00000003/sig00000179 ),
    .Q(\blk00000003/sig0000017a )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000c7  (
    .I0(s_axis_a_tdata_0[24]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000179 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c6  (
    .C(aclk),
    .D(\blk00000003/sig00000177 ),
    .Q(\blk00000003/sig00000178 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000c5  (
    .I0(s_axis_a_tdata_0[23]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000177 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c4  (
    .C(aclk),
    .D(\blk00000003/sig00000175 ),
    .Q(\blk00000003/sig00000176 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000c3  (
    .I0(s_axis_a_tdata_0[22]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000175 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c2  (
    .C(aclk),
    .D(\blk00000003/sig00000173 ),
    .Q(\blk00000003/sig00000174 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000c1  (
    .I0(s_axis_a_tdata_0[21]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000173 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c0  (
    .C(aclk),
    .D(\blk00000003/sig00000171 ),
    .Q(\blk00000003/sig00000172 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000bf  (
    .I0(s_axis_a_tdata_0[20]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000171 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000be  (
    .C(aclk),
    .D(\blk00000003/sig0000016f ),
    .Q(\blk00000003/sig00000170 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000bd  (
    .I0(s_axis_a_tdata_0[19]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000016f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bc  (
    .C(aclk),
    .D(\blk00000003/sig0000016d ),
    .Q(\blk00000003/sig0000016e )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000bb  (
    .I0(s_axis_a_tdata_0[18]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000016d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ba  (
    .C(aclk),
    .D(\blk00000003/sig0000016b ),
    .Q(\blk00000003/sig0000016c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b9  (
    .I0(s_axis_a_tdata_0[17]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000016b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b8  (
    .C(aclk),
    .D(\blk00000003/sig00000169 ),
    .Q(\blk00000003/sig0000016a )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b7  (
    .I0(s_axis_a_tdata_0[16]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000169 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b6  (
    .C(aclk),
    .D(\blk00000003/sig00000168 ),
    .Q(\blk00000003/sig000000cd )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b5  (
    .I0(s_axis_a_tdata_0[15]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000168 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b4  (
    .C(aclk),
    .D(\blk00000003/sig00000167 ),
    .Q(\blk00000003/sig000000ce )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b3  (
    .I0(s_axis_a_tdata_0[14]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000167 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b2  (
    .C(aclk),
    .D(\blk00000003/sig00000166 ),
    .Q(\blk00000003/sig000000cf )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b1  (
    .I0(s_axis_a_tdata_0[13]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000166 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b0  (
    .C(aclk),
    .D(\blk00000003/sig00000165 ),
    .Q(\blk00000003/sig000000d0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000af  (
    .I0(s_axis_a_tdata_0[12]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000165 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ae  (
    .C(aclk),
    .D(\blk00000003/sig00000164 ),
    .Q(\blk00000003/sig000000d1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000ad  (
    .I0(s_axis_a_tdata_0[11]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000164 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ac  (
    .C(aclk),
    .D(\blk00000003/sig00000163 ),
    .Q(\blk00000003/sig000000d2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000ab  (
    .I0(s_axis_a_tdata_0[10]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000163 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000aa  (
    .C(aclk),
    .D(\blk00000003/sig00000162 ),
    .Q(\blk00000003/sig000000d3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a9  (
    .I0(s_axis_a_tdata_0[9]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000162 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a8  (
    .C(aclk),
    .D(\blk00000003/sig00000161 ),
    .Q(\blk00000003/sig000000d4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a7  (
    .I0(s_axis_a_tdata_0[8]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000161 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a6  (
    .C(aclk),
    .D(\blk00000003/sig00000160 ),
    .Q(\blk00000003/sig000000d5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a5  (
    .I0(s_axis_a_tdata_0[7]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000160 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a4  (
    .C(aclk),
    .D(\blk00000003/sig0000015f ),
    .Q(\blk00000003/sig000000d6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a3  (
    .I0(s_axis_a_tdata_0[6]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a2  (
    .C(aclk),
    .D(\blk00000003/sig0000015e ),
    .Q(\blk00000003/sig000000d7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000a1  (
    .I0(s_axis_a_tdata_0[5]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000a0  (
    .C(aclk),
    .D(\blk00000003/sig0000015d ),
    .Q(\blk00000003/sig000000d8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000009f  (
    .I0(s_axis_a_tdata_0[4]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009e  (
    .C(aclk),
    .D(\blk00000003/sig0000015c ),
    .Q(\blk00000003/sig000000d9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000009d  (
    .I0(s_axis_a_tdata_0[3]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009c  (
    .C(aclk),
    .D(\blk00000003/sig0000015b ),
    .Q(\blk00000003/sig000000da )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000009b  (
    .I0(s_axis_a_tdata_0[2]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000009a  (
    .C(aclk),
    .D(\blk00000003/sig0000015a ),
    .Q(\blk00000003/sig000000db )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000099  (
    .I0(s_axis_a_tdata_0[1]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000015a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000098  (
    .C(aclk),
    .D(\blk00000003/sig00000159 ),
    .Q(\blk00000003/sig000000dc )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000097  (
    .I0(s_axis_a_tdata_0[0]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000159 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000096  (
    .C(aclk),
    .D(\blk00000003/sig00000158 ),
    .Q(\blk00000003/sig000000dd )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000095  (
    .I0(\blk00000003/sig00000148 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000158 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000094  (
    .C(aclk),
    .D(\blk00000003/sig00000157 ),
    .Q(\blk00000003/sig000000de )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000093  (
    .I0(\blk00000003/sig00000146 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000157 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000092  (
    .C(aclk),
    .D(\blk00000003/sig00000156 ),
    .Q(\blk00000003/sig000000df )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000091  (
    .I0(\blk00000003/sig00000144 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000156 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000090  (
    .C(aclk),
    .D(\blk00000003/sig00000155 ),
    .Q(\blk00000003/sig000000e0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000008f  (
    .I0(\blk00000003/sig00000142 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000155 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008e  (
    .C(aclk),
    .D(\blk00000003/sig00000154 ),
    .Q(\blk00000003/sig000000e1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000008d  (
    .I0(\blk00000003/sig00000140 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000154 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008c  (
    .C(aclk),
    .D(\blk00000003/sig00000153 ),
    .Q(\blk00000003/sig000000e2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000008b  (
    .I0(\blk00000003/sig0000013e ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000153 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008a  (
    .C(aclk),
    .D(\blk00000003/sig00000152 ),
    .Q(\blk00000003/sig000000e3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000089  (
    .I0(\blk00000003/sig0000013c ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000152 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000088  (
    .C(aclk),
    .D(\blk00000003/sig00000151 ),
    .Q(\blk00000003/sig000000e4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000087  (
    .I0(\blk00000003/sig0000013a ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000151 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000086  (
    .C(aclk),
    .D(\blk00000003/sig00000150 ),
    .Q(\blk00000003/sig000000e5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000085  (
    .I0(\blk00000003/sig00000138 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000150 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000084  (
    .C(aclk),
    .D(\blk00000003/sig0000014f ),
    .Q(\blk00000003/sig000000e6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000083  (
    .I0(\blk00000003/sig00000136 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000082  (
    .C(aclk),
    .D(\blk00000003/sig0000014e ),
    .Q(\blk00000003/sig000000e7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000081  (
    .I0(\blk00000003/sig00000134 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000080  (
    .C(aclk),
    .D(\blk00000003/sig0000014d ),
    .Q(\blk00000003/sig000000e8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000007f  (
    .I0(\blk00000003/sig00000132 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007e  (
    .C(aclk),
    .D(\blk00000003/sig0000014c ),
    .Q(\blk00000003/sig000000e9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000007d  (
    .I0(\blk00000003/sig00000130 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007c  (
    .C(aclk),
    .D(\blk00000003/sig0000014b ),
    .Q(\blk00000003/sig000000ea )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000007b  (
    .I0(\blk00000003/sig0000012e ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007a  (
    .C(aclk),
    .D(\blk00000003/sig0000014a ),
    .Q(\blk00000003/sig000000eb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000079  (
    .I0(\blk00000003/sig0000012c ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000014a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000078  (
    .C(aclk),
    .D(\blk00000003/sig00000149 ),
    .Q(\blk00000003/sig000000ec )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000077  (
    .I0(\blk00000003/sig0000012a ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000149 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000076  (
    .C(aclk),
    .D(\blk00000003/sig00000147 ),
    .Q(\blk00000003/sig00000148 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000075  (
    .I0(s_axis_b_tdata_1[31]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000147 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000074  (
    .C(aclk),
    .D(\blk00000003/sig00000145 ),
    .Q(\blk00000003/sig00000146 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000073  (
    .I0(s_axis_b_tdata_1[30]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000145 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000072  (
    .C(aclk),
    .D(\blk00000003/sig00000143 ),
    .Q(\blk00000003/sig00000144 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000071  (
    .I0(s_axis_b_tdata_1[29]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000143 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000070  (
    .C(aclk),
    .D(\blk00000003/sig00000141 ),
    .Q(\blk00000003/sig00000142 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000006f  (
    .I0(s_axis_b_tdata_1[28]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000141 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006e  (
    .C(aclk),
    .D(\blk00000003/sig0000013f ),
    .Q(\blk00000003/sig00000140 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000006d  (
    .I0(s_axis_b_tdata_1[27]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000013f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006c  (
    .C(aclk),
    .D(\blk00000003/sig0000013d ),
    .Q(\blk00000003/sig0000013e )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000006b  (
    .I0(s_axis_b_tdata_1[26]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000013d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a  (
    .C(aclk),
    .D(\blk00000003/sig0000013b ),
    .Q(\blk00000003/sig0000013c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000069  (
    .I0(s_axis_b_tdata_1[25]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000013b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000068  (
    .C(aclk),
    .D(\blk00000003/sig00000139 ),
    .Q(\blk00000003/sig0000013a )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000067  (
    .I0(s_axis_b_tdata_1[24]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000139 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000066  (
    .C(aclk),
    .D(\blk00000003/sig00000137 ),
    .Q(\blk00000003/sig00000138 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000065  (
    .I0(s_axis_b_tdata_1[23]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000137 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000064  (
    .C(aclk),
    .D(\blk00000003/sig00000135 ),
    .Q(\blk00000003/sig00000136 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000063  (
    .I0(s_axis_b_tdata_1[22]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000135 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000062  (
    .C(aclk),
    .D(\blk00000003/sig00000133 ),
    .Q(\blk00000003/sig00000134 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000061  (
    .I0(s_axis_b_tdata_1[21]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000133 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000060  (
    .C(aclk),
    .D(\blk00000003/sig00000131 ),
    .Q(\blk00000003/sig00000132 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000005f  (
    .I0(s_axis_b_tdata_1[20]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000131 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005e  (
    .C(aclk),
    .D(\blk00000003/sig0000012f ),
    .Q(\blk00000003/sig00000130 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000005d  (
    .I0(s_axis_b_tdata_1[19]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000012f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005c  (
    .C(aclk),
    .D(\blk00000003/sig0000012d ),
    .Q(\blk00000003/sig0000012e )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000005b  (
    .I0(s_axis_b_tdata_1[18]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000012d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000005a  (
    .C(aclk),
    .D(\blk00000003/sig0000012b ),
    .Q(\blk00000003/sig0000012c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000059  (
    .I0(s_axis_b_tdata_1[17]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000012b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058  (
    .C(aclk),
    .D(\blk00000003/sig00000129 ),
    .Q(\blk00000003/sig0000012a )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000057  (
    .I0(s_axis_b_tdata_1[16]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000129 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000056  (
    .C(aclk),
    .D(\blk00000003/sig00000128 ),
    .Q(\blk00000003/sig00000117 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000055  (
    .I0(s_axis_b_tdata_1[0]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000128 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000054  (
    .C(aclk),
    .D(\blk00000003/sig00000127 ),
    .Q(\blk00000003/sig00000115 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000053  (
    .I0(s_axis_b_tdata_1[1]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000127 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000052  (
    .C(aclk),
    .D(\blk00000003/sig00000126 ),
    .Q(\blk00000003/sig00000113 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000051  (
    .I0(s_axis_b_tdata_1[2]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000126 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000050  (
    .C(aclk),
    .D(\blk00000003/sig00000125 ),
    .Q(\blk00000003/sig00000111 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000004f  (
    .I0(s_axis_b_tdata_1[3]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000125 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004e  (
    .C(aclk),
    .D(\blk00000003/sig00000124 ),
    .Q(\blk00000003/sig0000010f )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000004d  (
    .I0(s_axis_b_tdata_1[4]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000124 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004c  (
    .C(aclk),
    .D(\blk00000003/sig00000123 ),
    .Q(\blk00000003/sig0000010d )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000004b  (
    .I0(s_axis_b_tdata_1[5]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000123 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000004a  (
    .C(aclk),
    .D(\blk00000003/sig00000122 ),
    .Q(\blk00000003/sig0000010b )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000049  (
    .I0(s_axis_b_tdata_1[6]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000122 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000048  (
    .C(aclk),
    .D(\blk00000003/sig00000121 ),
    .Q(\blk00000003/sig00000109 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000047  (
    .I0(s_axis_b_tdata_1[7]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000121 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046  (
    .C(aclk),
    .D(\blk00000003/sig00000120 ),
    .Q(\blk00000003/sig00000107 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000045  (
    .I0(s_axis_b_tdata_1[8]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000120 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000044  (
    .C(aclk),
    .D(\blk00000003/sig0000011f ),
    .Q(\blk00000003/sig00000105 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000043  (
    .I0(s_axis_b_tdata_1[9]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000042  (
    .C(aclk),
    .D(\blk00000003/sig0000011e ),
    .Q(\blk00000003/sig00000103 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000041  (
    .I0(s_axis_b_tdata_1[10]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000040  (
    .C(aclk),
    .D(\blk00000003/sig0000011d ),
    .Q(\blk00000003/sig00000101 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000003f  (
    .I0(s_axis_b_tdata_1[11]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003e  (
    .C(aclk),
    .D(\blk00000003/sig0000011c ),
    .Q(\blk00000003/sig000000ff )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000003d  (
    .I0(s_axis_b_tdata_1[12]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003c  (
    .C(aclk),
    .D(\blk00000003/sig0000011b ),
    .Q(\blk00000003/sig000000fd )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000003b  (
    .I0(s_axis_b_tdata_1[13]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003a  (
    .C(aclk),
    .D(\blk00000003/sig0000011a ),
    .Q(\blk00000003/sig000000fb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000039  (
    .I0(s_axis_b_tdata_1[14]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000011a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000038  (
    .C(aclk),
    .D(\blk00000003/sig00000119 ),
    .Q(\blk00000003/sig000000f9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000037  (
    .I0(s_axis_b_tdata_1[15]),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000119 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000036  (
    .C(aclk),
    .D(\blk00000003/sig00000118 ),
    .Q(\blk00000003/sig000000bc )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000035  (
    .I0(\blk00000003/sig00000117 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000118 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000034  (
    .C(aclk),
    .D(\blk00000003/sig00000116 ),
    .Q(\blk00000003/sig000000bb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000033  (
    .I0(\blk00000003/sig00000115 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000116 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000032  (
    .C(aclk),
    .D(\blk00000003/sig00000114 ),
    .Q(\blk00000003/sig000000ba )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000031  (
    .I0(\blk00000003/sig00000113 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000114 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000030  (
    .C(aclk),
    .D(\blk00000003/sig00000112 ),
    .Q(\blk00000003/sig000000b9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000002f  (
    .I0(\blk00000003/sig00000111 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000112 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002e  (
    .C(aclk),
    .D(\blk00000003/sig00000110 ),
    .Q(\blk00000003/sig000000b8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000002d  (
    .I0(\blk00000003/sig0000010f ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000110 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002c  (
    .C(aclk),
    .D(\blk00000003/sig0000010e ),
    .Q(\blk00000003/sig000000b7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000002b  (
    .I0(\blk00000003/sig0000010d ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000010e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002a  (
    .C(aclk),
    .D(\blk00000003/sig0000010c ),
    .Q(\blk00000003/sig000000b6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000029  (
    .I0(\blk00000003/sig0000010b ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000010c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000028  (
    .C(aclk),
    .D(\blk00000003/sig0000010a ),
    .Q(\blk00000003/sig000000b5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000027  (
    .I0(\blk00000003/sig00000109 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000010a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000026  (
    .C(aclk),
    .D(\blk00000003/sig00000108 ),
    .Q(\blk00000003/sig000000b4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000025  (
    .I0(\blk00000003/sig00000107 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000108 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000024  (
    .C(aclk),
    .D(\blk00000003/sig00000106 ),
    .Q(\blk00000003/sig000000b3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000023  (
    .I0(\blk00000003/sig00000105 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000106 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000022  (
    .C(aclk),
    .D(\blk00000003/sig00000104 ),
    .Q(\blk00000003/sig000000b2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000021  (
    .I0(\blk00000003/sig00000103 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000104 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000020  (
    .C(aclk),
    .D(\blk00000003/sig00000102 ),
    .Q(\blk00000003/sig000000b1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000001f  (
    .I0(\blk00000003/sig00000101 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000102 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001e  (
    .C(aclk),
    .D(\blk00000003/sig00000100 ),
    .Q(\blk00000003/sig000000b0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000001d  (
    .I0(\blk00000003/sig000000ff ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000100 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001c  (
    .C(aclk),
    .D(\blk00000003/sig000000fe ),
    .Q(\blk00000003/sig000000af )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000001b  (
    .I0(\blk00000003/sig000000fd ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000fe )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001a  (
    .C(aclk),
    .D(\blk00000003/sig000000fc ),
    .Q(\blk00000003/sig000000ae )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000019  (
    .I0(\blk00000003/sig000000fb ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000fc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000018  (
    .C(aclk),
    .D(\blk00000003/sig000000fa ),
    .Q(\blk00000003/sig000000ad )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000017  (
    .I0(\blk00000003/sig000000f9 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000fa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000016  (
    .C(aclk),
    .D(\blk00000003/sig000000f8 ),
    .Q(\blk00000003/sig000000f6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000015  (
    .I0(\blk00000003/sig000000ed ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000f8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000014  (
    .C(aclk),
    .D(\blk00000003/sig000000f7 ),
    .Q(\blk00000003/sig000000f4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000013  (
    .I0(\blk00000003/sig000000f6 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000f7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000012  (
    .C(aclk),
    .D(\blk00000003/sig000000f5 ),
    .Q(\blk00000003/sig000000f2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000011  (
    .I0(\blk00000003/sig000000f4 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000f5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000010  (
    .C(aclk),
    .D(\blk00000003/sig000000f3 ),
    .Q(\blk00000003/sig000000f0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000000f  (
    .I0(\blk00000003/sig000000f2 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000f3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000e  (
    .C(aclk),
    .D(\blk00000003/sig000000f1 ),
    .Q(\blk00000003/sig000000ee )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000000d  (
    .I0(\blk00000003/sig000000f0 ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000f1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000c  (
    .C(aclk),
    .D(\blk00000003/sig000000ef ),
    .Q(m_axis_dout_tvalid)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk0000000b  (
    .I0(\blk00000003/sig000000ee ),
    .I1(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig000000ef )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000003/blk0000000a  (
    .I0(s_axis_a_tvalid),
    .I1(s_axis_b_tvalid),
    .O(\blk00000003/sig000000ed )
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
    .RSTC(\blk00000003/sig0000008b ),
    .CEB1(\blk00000003/sig00000089 ),
    .CEAD(\blk00000003/sig00000089 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000009_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000003/sig00000089 ),
    .RSTM(\blk00000003/sig0000008b ),
    .MULTSIGNIN(\blk00000003/sig00000045 ),
    .CEB2(\blk00000003/sig00000089 ),
    .RSTCTRL(\blk00000003/sig00000045 ),
    .CEP(\blk00000003/sig00000089 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000009_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008b ),
    .CECARRYIN(\blk00000003/sig00000045 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000009_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000009_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000045 ),
    .RSTALLCARRYIN(\blk00000003/sig00000045 ),
    .CED(\blk00000003/sig00000089 ),
    .RSTD(\blk00000003/sig0000008b ),
    .CEALUMODE(\blk00000003/sig00000045 ),
    .CEA2(\blk00000003/sig00000089 ),
    .CLK(aclk),
    .CEA1(\blk00000003/sig00000089 ),
    .RSTB(\blk00000003/sig0000008b ),
    .OVERFLOW(\NLW_blk00000003/blk00000009_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000045 ),
    .CEM(\blk00000003/sig00000089 ),
    .CARRYIN(\blk00000003/sig00000045 ),
    .CARRYCASCIN(\blk00000003/sig00000045 ),
    .RSTINMODE(\blk00000003/sig00000045 ),
    .CEINMODE(\blk00000003/sig00000045 ),
    .RSTP(\blk00000003/sig0000008b ),
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
    .OPMODE({\blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , 
\blk00000003/sig00000045 , \blk00000003/sig00000089 }),
    .PCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .ALUMODE({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000089 }),
    .C({\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , 
\blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , 
\blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , 
\blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , 
\blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , 
\blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac }),
    .CARRYOUT({\NLW_blk00000003/blk00000009_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .BCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .B({\blk00000003/sig000000dd , \blk00000003/sig000000dd , \blk00000003/sig000000dd , \blk00000003/sig000000de , \blk00000003/sig000000df , 
\blk00000003/sig000000e0 , \blk00000003/sig000000e1 , \blk00000003/sig000000e2 , \blk00000003/sig000000e3 , \blk00000003/sig000000e4 , 
\blk00000003/sig000000e5 , \blk00000003/sig000000e6 , \blk00000003/sig000000e7 , \blk00000003/sig000000e8 , \blk00000003/sig000000e9 , 
\blk00000003/sig000000ea , \blk00000003/sig000000eb , \blk00000003/sig000000ec }),
    .BCOUT({\NLW_blk00000003/blk00000009_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , 
\blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , 
\blk00000003/sig000000be , \blk00000003/sig000000bf , \blk00000003/sig000000c0 , \blk00000003/sig000000c1 , \blk00000003/sig000000c2 , 
\blk00000003/sig000000c3 , \blk00000003/sig000000c4 , \blk00000003/sig000000c5 , \blk00000003/sig000000c6 , \blk00000003/sig000000c7 , 
\blk00000003/sig000000c8 , \blk00000003/sig000000c9 , \blk00000003/sig000000ca , \blk00000003/sig000000cb , \blk00000003/sig000000cc }),
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
    .A({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , 
\blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , 
\blk00000003/sig000000ce , \blk00000003/sig000000cf , \blk00000003/sig000000d0 , \blk00000003/sig000000d1 , \blk00000003/sig000000d2 , 
\blk00000003/sig000000d3 , \blk00000003/sig000000d4 , \blk00000003/sig000000d5 , \blk00000003/sig000000d6 , \blk00000003/sig000000d7 , 
\blk00000003/sig000000d8 , \blk00000003/sig000000d9 , \blk00000003/sig000000da , \blk00000003/sig000000db , \blk00000003/sig000000dc }),
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
    .ACIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .CARRYINSEL({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 })
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
    .RSTC(\blk00000003/sig00000045 ),
    .CEB1(\blk00000003/sig00000089 ),
    .CEAD(\blk00000003/sig00000089 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000008_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000003/sig00000045 ),
    .RSTM(\blk00000003/sig0000008b ),
    .MULTSIGNIN(\blk00000003/sig00000045 ),
    .CEB2(\blk00000003/sig00000089 ),
    .RSTCTRL(\blk00000003/sig00000045 ),
    .CEP(\blk00000003/sig00000089 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000008_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008b ),
    .CECARRYIN(\blk00000003/sig00000045 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000008_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000008_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000045 ),
    .RSTALLCARRYIN(\blk00000003/sig00000045 ),
    .CED(\blk00000003/sig00000089 ),
    .RSTD(\blk00000003/sig0000008b ),
    .CEALUMODE(\blk00000003/sig00000045 ),
    .CEA2(\blk00000003/sig00000089 ),
    .CLK(aclk),
    .CEA1(\blk00000003/sig00000045 ),
    .RSTB(\blk00000003/sig0000008b ),
    .OVERFLOW(\NLW_blk00000003/blk00000008_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000045 ),
    .CEM(\blk00000003/sig00000089 ),
    .CARRYIN(\blk00000003/sig00000045 ),
    .CARRYCASCIN(\blk00000003/sig00000045 ),
    .RSTINMODE(\blk00000003/sig00000045 ),
    .CEINMODE(\blk00000003/sig00000045 ),
    .RSTP(\blk00000003/sig0000008b ),
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
    .OPMODE({\blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , 
\blk00000003/sig00000045 , \blk00000003/sig00000089 }),
    .PCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .ALUMODE({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .C({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .CARRYOUT({\NLW_blk00000003/blk00000008_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000008_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000008_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000008_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .BCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
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
\NLW_blk00000003/blk00000008_P<33>_UNCONNECTED , \blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , 
\blk00000003/sig0000008f , \blk00000003/sig00000090 , \blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , 
\blk00000003/sig00000094 , \blk00000003/sig00000095 , \blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , 
\blk00000003/sig00000099 , \blk00000003/sig0000009a , \blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , 
\blk00000003/sig0000009e , \blk00000003/sig0000009f , \blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , 
\blk00000003/sig000000a3 , \blk00000003/sig000000a4 , \blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , 
\blk00000003/sig000000a8 , \blk00000003/sig000000a9 , \blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac }),
    .A({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
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
    .ACIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .CARRYINSEL({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 })
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
    .RSTC(\blk00000003/sig0000008b ),
    .CEB1(\blk00000003/sig00000089 ),
    .CEAD(\blk00000003/sig00000089 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000007_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000003/sig00000089 ),
    .RSTM(\blk00000003/sig0000008b ),
    .MULTSIGNIN(\blk00000003/sig00000045 ),
    .CEB2(\blk00000003/sig00000089 ),
    .RSTCTRL(\blk00000003/sig00000045 ),
    .CEP(\blk00000003/sig00000089 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000007_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000008b ),
    .CECARRYIN(\blk00000003/sig00000045 ),
    .UNDERFLOW(\NLW_blk00000003/blk00000007_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000007_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000003/sig00000045 ),
    .RSTALLCARRYIN(\blk00000003/sig00000045 ),
    .CED(\blk00000003/sig00000089 ),
    .RSTD(\blk00000003/sig0000008b ),
    .CEALUMODE(\blk00000003/sig00000045 ),
    .CEA2(\blk00000003/sig00000089 ),
    .CLK(aclk),
    .CEA1(\blk00000003/sig00000089 ),
    .RSTB(\blk00000003/sig0000008b ),
    .OVERFLOW(\NLW_blk00000003/blk00000007_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000003/sig00000045 ),
    .CEM(\blk00000003/sig00000089 ),
    .CARRYIN(\blk00000003/sig00000045 ),
    .CARRYCASCIN(\blk00000003/sig00000045 ),
    .RSTINMODE(\blk00000003/sig00000045 ),
    .CEINMODE(\blk00000003/sig00000045 ),
    .RSTP(\blk00000003/sig0000008b ),
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
    .OPMODE({\blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000089 , 
\blk00000003/sig00000045 , \blk00000003/sig00000089 }),
    .PCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .ALUMODE({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .C({\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , \blk00000003/sig0000008c , 
\blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , 
\blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , 
\blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , 
\blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , 
\blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , 
\blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac }),
    .CARRYOUT({\NLW_blk00000003/blk00000007_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000003/sig00000045 , \blk00000003/sig00000089 , \blk00000003/sig00000089 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .BCIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .B({\blk00000003/sig000000ad , \blk00000003/sig000000ad , \blk00000003/sig000000ad , \blk00000003/sig000000ae , \blk00000003/sig000000af , 
\blk00000003/sig000000b0 , \blk00000003/sig000000b1 , \blk00000003/sig000000b2 , \blk00000003/sig000000b3 , \blk00000003/sig000000b4 , 
\blk00000003/sig000000b5 , \blk00000003/sig000000b6 , \blk00000003/sig000000b7 , \blk00000003/sig000000b8 , \blk00000003/sig000000b9 , 
\blk00000003/sig000000ba , \blk00000003/sig000000bb , \blk00000003/sig000000bc }),
    .BCOUT({\NLW_blk00000003/blk00000007_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000007_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000007_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , 
\blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , \blk00000003/sig000000bd , 
\blk00000003/sig000000be , \blk00000003/sig000000bf , \blk00000003/sig000000c0 , \blk00000003/sig000000c1 , \blk00000003/sig000000c2 , 
\blk00000003/sig000000c3 , \blk00000003/sig000000c4 , \blk00000003/sig000000c5 , \blk00000003/sig000000c6 , \blk00000003/sig000000c7 , 
\blk00000003/sig000000c8 , \blk00000003/sig000000c9 , \blk00000003/sig000000ca , \blk00000003/sig000000cb , \blk00000003/sig000000cc }),
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
    .A({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , 
\blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , \blk00000003/sig000000cd , 
\blk00000003/sig000000ce , \blk00000003/sig000000cf , \blk00000003/sig000000d0 , \blk00000003/sig000000d1 , \blk00000003/sig000000d2 , 
\blk00000003/sig000000d3 , \blk00000003/sig000000d4 , \blk00000003/sig000000d5 , \blk00000003/sig000000d6 , \blk00000003/sig000000d7 , 
\blk00000003/sig000000d8 , \blk00000003/sig000000d9 , \blk00000003/sig000000da , \blk00000003/sig000000db , \blk00000003/sig000000dc }),
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
    .ACIN({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , 
\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 }),
    .CARRYINSEL({\blk00000003/sig00000045 , \blk00000003/sig00000045 , \blk00000003/sig00000045 })
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000006  (
    .C(aclk),
    .D(\blk00000003/sig0000008a ),
    .Q(\blk00000003/sig0000008b )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig00000089 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000045 )
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
