# TimingSideChannelSecurity
This repos contains the implementation of IEEE 802.11 (i.e. Wifi) OFDM-based transceiver system. This is stored in 2 separate parts, i.e. transmitter (TX) and receiver (RX).

Each part includes implementation files stored in **MY_SOURCES** and **IPCORE**, and simulation golden model stored in **MATLAB**.

**MY_SOURCES** contains hdl files using verilog to implement the sub-modules (*.v) of systems and to make a testbench files (*_tb.v). There are some pre-computed cofficient sets defined by the standard (e.g. preamble) are stored in '*.txt' files. OFDM_TX_802_11.v and OFDM_RX_802_11.v are the top modules of transmitter and receiver systems, respectively.

**IPCORE** contains the configured files of IPCores instantiated by impelemented systems. The IPCores are generated using ISE Design Tool.

**MATLAB** contains matlab files that simulate 802.11 OFDM signals as a golden model for implementation. The matlab files are also used to generate test vector for testbench and verify the output files from testbench.

