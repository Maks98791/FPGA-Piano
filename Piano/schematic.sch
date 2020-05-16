<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(11:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10(3:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clock" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19(7:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clock" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <blockdef name="convertModule">
            <timestamp>2020-5-16T20:47:26</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
        </blockdef>
        <blockdef name="soundGenerateModule">
            <timestamp>2020-5-16T20:47:33</timestamp>
            <rect width="448" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-96" y2="-96" x1="512" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="convertModule" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="IfExtended" />
            <blockpin signalname="XLXN_2" name="ButtonRelase" />
            <blockpin signalname="XLXN_3" name="Ready" />
            <blockpin signalname="Clock" name="Clock" />
            <blockpin signalname="XLXN_19(7:0)" name="Code(7:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Frequency(3:0)" />
        </block>
        <block symbolname="soundGenerateModule" name="XLXI_2">
            <blockpin signalname="Clock" name="Clock" />
            <blockpin signalname="XLXN_4(3:0)" name="ReceivedFrequency(3:0)" />
            <blockpin signalname="XLXN_6" name="BeginInfo" />
            <blockpin signalname="XLXN_5(11:0)" name="SoundSignal(11:0)" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin signalname="Clock" name="Reset" />
            <blockpin signalname="XLXN_6" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_9(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_5(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clock" name="Clk_50MHz" />
            <blockpin name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clock" name="Clk_50MHz" />
            <blockpin signalname="XLXN_1" name="E0" />
            <blockpin signalname="XLXN_2" name="F0" />
            <blockpin signalname="XLXN_3" name="DO_Rdy" />
            <blockpin signalname="XLXN_19(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clock" name="Clk_Sys" />
        </block>
        <block symbolname="constant" name="Addr">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_10(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="Cmd">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_9(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1552" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1328" y1="1264" y2="1264" x1="1152" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1328" y1="1328" y2="1328" x1="1152" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1328" y1="1392" y2="1392" x1="1152" />
        </branch>
        <instance x="768" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1920" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4(3:0)">
            <wire x2="1920" y1="1264" y2="1264" x1="1776" />
        </branch>
        <branch name="XLXN_5(11:0)">
            <wire x2="2672" y1="1264" y2="1264" x1="2496" />
        </branch>
        <instance x="2672" y="1616" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="2544" y1="1200" y2="1200" x1="2496" />
            <wire x2="2672" y1="1072" y2="1072" x1="2544" />
            <wire x2="2544" y1="1072" y2="1200" x1="2544" />
        </branch>
        <instance x="2192" y="976" name="Addr" orien="R0">
        </instance>
        <branch name="XLXN_9(3:0)">
            <wire x2="2624" y1="880" y2="880" x1="2336" />
            <wire x2="2624" y1="880" y2="1136" x1="2624" />
            <wire x2="2672" y1="1136" y2="1136" x1="2624" />
        </branch>
        <branch name="XLXN_10(3:0)">
            <wire x2="2576" y1="1008" y2="1008" x1="2336" />
            <wire x2="2576" y1="1008" y2="1200" x1="2576" />
            <wire x2="2672" y1="1200" y2="1200" x1="2576" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="752" y1="1200" y2="1200" x1="592" />
            <wire x2="768" y1="1200" y2="1200" x1="752" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="752" y1="1264" y2="1264" x1="592" />
            <wire x2="768" y1="1264" y2="1264" x1="752" />
        </branch>
        <branch name="Clock">
            <wire x2="688" y1="1328" y2="1328" x1="592" />
            <wire x2="768" y1="1328" y2="1328" x1="688" />
            <wire x2="688" y1="1328" y2="1392" x1="688" />
            <wire x2="768" y1="1392" y2="1392" x1="688" />
            <wire x2="688" y1="1392" y2="1456" x1="688" />
            <wire x2="1328" y1="1456" y2="1456" x1="688" />
            <wire x2="688" y1="1456" y2="1648" x1="688" />
            <wire x2="1840" y1="1648" y2="1648" x1="688" />
            <wire x2="2528" y1="1648" y2="1648" x1="1840" />
            <wire x2="2672" y1="1648" y2="1648" x1="2528" />
            <wire x2="2528" y1="1648" y2="1712" x1="2528" />
            <wire x2="2672" y1="1712" y2="1712" x1="2528" />
            <wire x2="1920" y1="1200" y2="1200" x1="1840" />
            <wire x2="1840" y1="1200" y2="1648" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="592" y="1328" name="Clock" orien="R180" />
        <branch name="XLXN_19(7:0)">
            <wire x2="1232" y1="1200" y2="1200" x1="1152" />
            <wire x2="1232" y1="1200" y2="1520" x1="1232" />
            <wire x2="1328" y1="1520" y2="1520" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="592" y="1200" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="592" y="1264" name="PS2_Data" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="3152" y1="1072" y2="1072" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1072" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="3152" y1="1136" y2="1136" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1136" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="3152" y1="1200" y2="1200" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1200" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="3152" y1="1264" y2="1264" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1264" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="3152" y1="1328" y2="1328" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1328" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="3152" y1="1392" y2="1392" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1392" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="3152" y1="1456" y2="1456" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1456" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="3152" y1="1520" y2="1520" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1520" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="3152" y1="1584" y2="1584" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1584" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="3152" y1="1648" y2="1648" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1648" name="FPGA_INIT_B" orien="R0" />
        <instance x="2192" y="848" name="Cmd" orien="R0">
        </instance>
    </sheet>
</drawing>