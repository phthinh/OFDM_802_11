# IEEE 802.11 OFDM-based transceiver system
This repos contains the implementation of IEEE 802.11 (i.e. Wifi) OFDM-based transceiver system. This is stored in 2 separate parts, i.e. transmitter (TX) and receiver (RX).

Each part includes implementation files stored in **MY_SOURCES** and **IPCORE**, and simulation golden model stored in **MATLAB**.

**MY_SOURCES** contains hdl files using verilog to implement the sub-modules (*.v) of systems and to make a testbench files (*_tb.v). There are some pre-computed cofficient sets defined by the standard (e.g. preamble) are stored in '*.txt' files. OFDM_TX_802_11.v and OFDM_RX_802_11.v are the top modules of transmitter and receiver systems, respectively.

**IPCORE** contains the configured files of IPCores instantiated by impelemented systems. The IPCores are generated using ISE Design Tool.

**MATLAB** contains matlab files that simulate 802.11 OFDM signals as a golden model for implementation. The matlab files are also used to generate test vector for testbench and verify the output files from testbench.

#### Publications

This implementation is presented in the paper below:

- T. H. Pham, S. A. Fahmy and I. V. McLoughlin, "An End-to-End Multi-Standard OFDM Transceiver Architecture Using FPGA Partial Reconfiguration," in IEEE Access, vol. 5, pp. 21002-21015, 2017.
[doi: 10.1109/ACCESS.2017.2756914](http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8051045&isnumber=7859429)

If you use this for research, please cite the paper:
```
@ARTICLE{Pham2017, 
author={T. H. Pham and S. A. Fahmy and I. V. McLoughlin}, 
journal={IEEE Access}, 
title={An End-to-End Multi-Standard OFDM Transceiver Architecture Using FPGA Partial Reconfiguration}, 
year={2017}, 
volume={5}, 
number={}, 
pages={21002-21015}, 
keywords={Baseband;Field programmable gate arrays;Hardware;OFDM;Program processors;Standards;OFDM;cognitive radio;open wireless architecture;radio transceivers;reconfigurable architectures}, 
doi={10.1109/ACCESS.2017.2756914}, 
ISSN={}, 
month={},}
```