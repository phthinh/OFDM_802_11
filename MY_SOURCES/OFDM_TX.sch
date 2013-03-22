<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(31:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11(31:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="DAT_I(1:0)" />
        <signal name="CYC_I" />
        <signal name="WE_I" />
        <signal name="STB_I" />
        <signal name="ACK_O" />
        <signal name="CLK_I" />
        <signal name="RST_I" />
        <signal name="DAT_O(31:0)" />
        <signal name="CYC_O" />
        <signal name="WE_O" />
        <signal name="STB_O" />
        <signal name="ACK_I" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <port polarity="Input" name="DAT_I(1:0)" />
        <port polarity="Input" name="CYC_I" />
        <port polarity="Input" name="WE_I" />
        <port polarity="Input" name="STB_I" />
        <port polarity="Output" name="ACK_O" />
        <port polarity="Input" name="CLK_I" />
        <port polarity="Input" name="RST_I" />
        <port polarity="Output" name="DAT_O(31:0)" />
        <port polarity="Output" name="CYC_O" />
        <port polarity="Output" name="WE_O" />
        <port polarity="Output" name="STB_O" />
        <port polarity="Input" name="ACK_I" />
        <blockdef name="QPSK_Mod">
            <timestamp>2012-12-4T6:29:9</timestamp>
            <rect width="288" x="64" y="-448" height="512" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="352" y1="-160" y2="-160" x1="416" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Pilots_Insert">
            <timestamp>2012-12-4T6:32:3</timestamp>
            <rect width="288" x="64" y="-448" height="512" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="352" y1="-160" y2="-160" x1="416" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="IFFT_Mod">
            <timestamp>2012-12-4T8:13:50</timestamp>
            <rect width="288" x="64" y="-432" height="512" />
            <rect width="64" x="0" y="-412" height="24" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="416" y1="-336" y2="-336" x1="352" />
            <line x2="416" y1="-208" y2="-208" x1="352" />
            <line x2="416" y1="-272" y2="-272" x1="352" />
            <line x2="352" y1="-144" y2="-144" x1="416" />
            <line x2="64" y1="-144" y2="-144" x1="0" />
            <rect width="64" x="352" y="-412" height="24" />
            <line x2="416" y1="-400" y2="-400" x1="352" />
            <line x2="0" y1="-16" y2="-16" x1="64" />
            <line x2="0" y1="48" y2="48" x1="64" />
        </blockdef>
        <blockdef name="Tx_Out">
            <timestamp>2012-12-4T6:46:44</timestamp>
            <rect width="288" x="64" y="-448" height="512" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="352" y1="-160" y2="-160" x1="416" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
        </blockdef>
        <block symbolname="QPSK_Mod" name="QPSK_Mod_Ins">
            <blockpin signalname="DAT_I(1:0)" name="DAT_I(1:0)" />
            <blockpin signalname="CYC_I" name="CYC_I" />
            <blockpin signalname="WE_I" name="WE_I" />
            <blockpin signalname="STB_I" name="STB_I" />
            <blockpin signalname="RST_I" name="RST_I" />
            <blockpin signalname="ACK_O" name="ACK_O" />
            <blockpin signalname="XLXN_1(31:0)" name="DAT_O(31:0)" />
            <blockpin signalname="XLXN_2" name="CYC_O" />
            <blockpin signalname="XLXN_3" name="WE_O" />
            <blockpin signalname="XLXN_4" name="STB_O" />
            <blockpin signalname="XLXN_5" name="ACK_I" />
            <blockpin signalname="CLK_I" name="CLK_I" />
        </block>
        <block symbolname="Pilots_Insert" name="Pilots_Insert_Ins">
            <blockpin signalname="XLXN_1(31:0)" name="DAT_I(31:0)" />
            <blockpin signalname="XLXN_2" name="CYC_I" />
            <blockpin signalname="XLXN_3" name="WE_I" />
            <blockpin signalname="XLXN_4" name="STB_I" />
            <blockpin signalname="CLK_I" name="CLK_I" />
            <blockpin signalname="RST_I" name="RST_I" />
            <blockpin signalname="XLXN_7" name="CYC_O" />
            <blockpin signalname="XLXN_9" name="STB_O" />
            <blockpin signalname="XLXN_8" name="WE_O" />
            <blockpin signalname="XLXN_6(31:0)" name="DAT_O(31:0)" />
            <blockpin signalname="XLXN_10" name="ACK_I" />
            <blockpin signalname="XLXN_5" name="ACK_O" />
        </block>
        <block symbolname="IFFT_Mod" name="IFFT_Mod_Ins">
            <blockpin signalname="XLXN_6(31:0)" name="DAT_I(31:0)" />
            <blockpin signalname="XLXN_7" name="CYC_I" />
            <blockpin signalname="XLXN_8" name="WE_I" />
            <blockpin signalname="XLXN_9" name="STB_I" />
            <blockpin signalname="XLXN_12" name="CYC_O" />
            <blockpin signalname="XLXN_14" name="STB_O" />
            <blockpin signalname="XLXN_13" name="WE_O" />
            <blockpin signalname="XLXN_15" name="ACK_I" />
            <blockpin signalname="XLXN_10" name="ACK_O" />
            <blockpin signalname="XLXN_11(31:0)" name="DAT_O(31:0)" />
            <blockpin signalname="CLK_I" name="CLK_I" />
            <blockpin signalname="RST_I" name="RST_I" />
        </block>
        <block symbolname="Tx_Out" name="Tx_Out_Ins">
            <blockpin signalname="XLXN_11(31:0)" name="DAT_I(31:0)" />
            <blockpin signalname="XLXN_13" name="WE_I" />
            <blockpin signalname="XLXN_14" name="STB_I" />
            <blockpin signalname="XLXN_12" name="CYC_I" />
            <blockpin signalname="CLK_I" name="CLK_I" />
            <blockpin signalname="RST_I" name="RST_I" />
            <blockpin signalname="CYC_O" name="CYC_O" />
            <blockpin signalname="STB_O" name="STB_O" />
            <blockpin signalname="WE_O" name="WE_O" />
            <blockpin signalname="ACK_I" name="ACK_I" />
            <blockpin signalname="XLXN_15" name="ACK_O" />
            <blockpin signalname="DAT_O(31:0)" name="DAT_O(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="1152" name="QPSK_Mod_Ins" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="928" y1="736" y2="736" x1="848" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="928" y1="800" y2="800" x1="848" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="928" y1="864" y2="864" x1="848" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="928" y1="928" y2="928" x1="848" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="928" y1="992" y2="992" x1="848" />
        </branch>
        <branch name="XLXN_6(31:0)">
            <wire x2="1424" y1="736" y2="736" x1="1344" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1424" y1="800" y2="800" x1="1344" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1424" y1="864" y2="864" x1="1344" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1424" y1="928" y2="928" x1="1344" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1424" y1="992" y2="992" x1="1344" />
        </branch>
        <branch name="XLXN_11(31:0)">
            <wire x2="1920" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1920" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1920" y1="864" y2="864" x1="1840" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1920" y1="928" y2="928" x1="1840" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1920" y1="992" y2="992" x1="1840" />
        </branch>
        <branch name="DAT_I(1:0)">
            <wire x2="432" y1="736" y2="736" x1="352" />
        </branch>
        <branch name="CYC_I">
            <wire x2="432" y1="800" y2="800" x1="352" />
        </branch>
        <branch name="WE_I">
            <wire x2="432" y1="864" y2="864" x1="352" />
        </branch>
        <branch name="STB_I">
            <wire x2="432" y1="928" y2="928" x1="352" />
        </branch>
        <branch name="ACK_O">
            <wire x2="432" y1="992" y2="992" x1="352" />
        </branch>
        <branch name="CLK_I">
            <wire x2="416" y1="1120" y2="1120" x1="352" />
            <wire x2="432" y1="1120" y2="1120" x1="416" />
            <wire x2="416" y1="1120" y2="1248" x1="416" />
            <wire x2="864" y1="1248" y2="1248" x1="416" />
            <wire x2="1360" y1="1248" y2="1248" x1="864" />
            <wire x2="1856" y1="1248" y2="1248" x1="1360" />
            <wire x2="928" y1="1120" y2="1120" x1="864" />
            <wire x2="864" y1="1120" y2="1248" x1="864" />
            <wire x2="1424" y1="1120" y2="1120" x1="1360" />
            <wire x2="1360" y1="1120" y2="1248" x1="1360" />
            <wire x2="1920" y1="1120" y2="1120" x1="1856" />
            <wire x2="1856" y1="1120" y2="1248" x1="1856" />
        </branch>
        <branch name="RST_I">
            <wire x2="384" y1="1184" y2="1184" x1="352" />
            <wire x2="384" y1="1184" y2="1280" x1="384" />
            <wire x2="896" y1="1280" y2="1280" x1="384" />
            <wire x2="1392" y1="1280" y2="1280" x1="896" />
            <wire x2="1888" y1="1280" y2="1280" x1="1392" />
            <wire x2="432" y1="1184" y2="1184" x1="384" />
            <wire x2="928" y1="1184" y2="1184" x1="896" />
            <wire x2="896" y1="1184" y2="1280" x1="896" />
            <wire x2="1424" y1="1184" y2="1184" x1="1392" />
            <wire x2="1392" y1="1184" y2="1280" x1="1392" />
            <wire x2="1888" y1="1184" y2="1280" x1="1888" />
            <wire x2="1920" y1="1184" y2="1184" x1="1888" />
        </branch>
        <branch name="DAT_O(31:0)">
            <wire x2="2352" y1="736" y2="736" x1="2336" />
            <wire x2="2416" y1="736" y2="736" x1="2352" />
        </branch>
        <branch name="CYC_O">
            <wire x2="2352" y1="800" y2="800" x1="2336" />
            <wire x2="2416" y1="800" y2="800" x1="2352" />
        </branch>
        <branch name="WE_O">
            <wire x2="2352" y1="864" y2="864" x1="2336" />
            <wire x2="2416" y1="864" y2="864" x1="2352" />
        </branch>
        <branch name="STB_O">
            <wire x2="2352" y1="928" y2="928" x1="2336" />
            <wire x2="2416" y1="928" y2="928" x1="2352" />
        </branch>
        <branch name="ACK_I">
            <wire x2="2352" y1="992" y2="992" x1="2336" />
            <wire x2="2416" y1="992" y2="992" x1="2352" />
        </branch>
        <instance x="928" y="1152" name="Pilots_Insert_Ins" orien="R0">
        </instance>
        <instance x="1424" y="1136" name="IFFT_Mod_Ins" orien="R0">
        </instance>
        <instance x="1920" y="1152" name="Tx_Out_Ins" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2416" y="736" name="DAT_O(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2416" y="800" name="CYC_O" orien="R0" />
        <iomarker fontsize="28" x="2416" y="864" name="WE_O" orien="R0" />
        <iomarker fontsize="28" x="2416" y="928" name="STB_O" orien="R0" />
        <iomarker fontsize="28" x="2416" y="992" name="ACK_I" orien="R0" />
        <iomarker fontsize="28" x="352" y="736" name="DAT_I(1:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="800" name="CYC_I" orien="R180" />
        <iomarker fontsize="28" x="352" y="864" name="WE_I" orien="R180" />
        <iomarker fontsize="28" x="352" y="928" name="STB_I" orien="R180" />
        <iomarker fontsize="28" x="352" y="992" name="ACK_O" orien="R180" />
        <iomarker fontsize="28" x="352" y="1120" name="CLK_I" orien="R180" />
        <iomarker fontsize="28" x="352" y="1184" name="RST_I" orien="R180" />
    </sheet>
</drawing>