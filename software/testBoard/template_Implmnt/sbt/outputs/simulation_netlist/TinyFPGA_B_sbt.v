// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Feb 17 2020 12:41:07

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "TinyFPGA_B" view "INTERFACE"

module TinyFPGA_B (
    USBPU,
    TX,
    SDA,
    SCL,
    RX,
    NEOPXL,
    LED,
    INLC,
    INLB,
    INLA,
    INHC,
    INHB,
    INHA,
    HALL3,
    HALL2,
    HALL1,
    FAULT_N,
    ENCODER1_B,
    ENCODER1_A,
    ENCODER0_B,
    ENCODER0_A,
    DE,
    CS_MISO,
    CS_CLK,
    CS,
    CLK);

    output USBPU;
    output TX;
    input SDA;
    input SCL;
    input RX;
    output NEOPXL;
    output LED;
    output INLC;
    output INLB;
    output INLA;
    output INHC;
    output INHB;
    output INHA;
    input HALL3;
    input HALL2;
    input HALL1;
    input FAULT_N;
    input ENCODER1_B;
    input ENCODER1_A;
    input ENCODER0_B;
    input ENCODER0_A;
    output DE;
    input CS_MISO;
    output CS_CLK;
    output CS;
    input CLK;

    wire N__2747;
    wire N__2746;
    wire N__2745;
    wire N__2738;
    wire N__2737;
    wire N__2736;
    wire N__2729;
    wire N__2728;
    wire N__2727;
    wire N__2720;
    wire N__2719;
    wire N__2718;
    wire N__2711;
    wire N__2710;
    wire N__2709;
    wire N__2702;
    wire N__2701;
    wire N__2700;
    wire N__2693;
    wire N__2692;
    wire N__2691;
    wire N__2684;
    wire N__2683;
    wire N__2682;
    wire N__2675;
    wire N__2674;
    wire N__2673;
    wire N__2666;
    wire N__2665;
    wire N__2664;
    wire N__2657;
    wire N__2656;
    wire N__2655;
    wire N__2648;
    wire N__2647;
    wire N__2646;
    wire N__2639;
    wire N__2638;
    wire N__2637;
    wire N__2630;
    wire N__2629;
    wire N__2628;
    wire N__2621;
    wire N__2620;
    wire N__2619;
    wire N__2612;
    wire N__2611;
    wire N__2610;
    wire N__2603;
    wire N__2602;
    wire N__2601;
    wire N__2584;
    wire N__2583;
    wire N__2580;
    wire N__2577;
    wire N__2572;
    wire N__2569;
    wire N__2566;
    wire N__2563;
    wire N__2562;
    wire N__2559;
    wire N__2556;
    wire N__2551;
    wire N__2550;
    wire N__2547;
    wire N__2544;
    wire N__2539;
    wire N__2538;
    wire N__2535;
    wire N__2532;
    wire N__2527;
    wire N__2526;
    wire N__2523;
    wire N__2520;
    wire N__2515;
    wire N__2512;
    wire N__2511;
    wire N__2508;
    wire N__2505;
    wire N__2500;
    wire N__2499;
    wire N__2496;
    wire N__2495;
    wire N__2492;
    wire N__2491;
    wire N__2488;
    wire N__2485;
    wire N__2480;
    wire N__2475;
    wire N__2472;
    wire N__2469;
    wire N__2464;
    wire N__2463;
    wire N__2462;
    wire N__2461;
    wire N__2458;
    wire N__2457;
    wire N__2456;
    wire N__2453;
    wire N__2450;
    wire N__2447;
    wire N__2446;
    wire N__2443;
    wire N__2442;
    wire N__2439;
    wire N__2436;
    wire N__2429;
    wire N__2426;
    wire N__2423;
    wire N__2420;
    wire N__2419;
    wire N__2416;
    wire N__2413;
    wire N__2410;
    wire N__2403;
    wire N__2400;
    wire N__2399;
    wire N__2396;
    wire N__2393;
    wire N__2390;
    wire N__2387;
    wire N__2384;
    wire N__2381;
    wire N__2368;
    wire N__2365;
    wire N__2362;
    wire N__2359;
    wire N__2356;
    wire N__2353;
    wire N__2350;
    wire N__2347;
    wire N__2344;
    wire N__2341;
    wire N__2338;
    wire N__2337;
    wire N__2336;
    wire N__2333;
    wire N__2328;
    wire N__2323;
    wire N__2320;
    wire N__2319;
    wire N__2318;
    wire N__2315;
    wire N__2314;
    wire N__2313;
    wire N__2312;
    wire N__2311;
    wire N__2310;
    wire N__2309;
    wire N__2308;
    wire N__2307;
    wire N__2304;
    wire N__2301;
    wire N__2298;
    wire N__2295;
    wire N__2290;
    wire N__2285;
    wire N__2278;
    wire N__2263;
    wire N__2262;
    wire N__2261;
    wire N__2260;
    wire N__2255;
    wire N__2252;
    wire N__2249;
    wire N__2242;
    wire N__2241;
    wire N__2240;
    wire N__2237;
    wire N__2236;
    wire N__2235;
    wire N__2234;
    wire N__2233;
    wire N__2232;
    wire N__2231;
    wire N__2228;
    wire N__2227;
    wire N__2226;
    wire N__2225;
    wire N__2224;
    wire N__2221;
    wire N__2218;
    wire N__2215;
    wire N__2212;
    wire N__2207;
    wire N__2202;
    wire N__2191;
    wire N__2176;
    wire N__2175;
    wire N__2172;
    wire N__2169;
    wire N__2166;
    wire N__2161;
    wire N__2158;
    wire N__2155;
    wire N__2154;
    wire N__2151;
    wire N__2148;
    wire N__2147;
    wire N__2142;
    wire N__2139;
    wire N__2136;
    wire N__2133;
    wire N__2128;
    wire N__2127;
    wire N__2126;
    wire N__2123;
    wire N__2118;
    wire N__2113;
    wire N__2112;
    wire N__2109;
    wire N__2106;
    wire N__2101;
    wire N__2100;
    wire N__2097;
    wire N__2094;
    wire N__2089;
    wire N__2086;
    wire N__2085;
    wire N__2082;
    wire N__2079;
    wire N__2074;
    wire N__2073;
    wire N__2070;
    wire N__2067;
    wire N__2062;
    wire N__2061;
    wire N__2058;
    wire N__2055;
    wire N__2050;
    wire N__2047;
    wire N__2046;
    wire N__2043;
    wire N__2040;
    wire N__2035;
    wire N__2032;
    wire N__2029;
    wire N__2026;
    wire N__2025;
    wire N__2022;
    wire N__2019;
    wire N__2014;
    wire N__2013;
    wire N__2010;
    wire N__2007;
    wire N__2002;
    wire N__1999;
    wire N__1996;
    wire N__1993;
    wire N__1990;
    wire N__1987;
    wire N__1984;
    wire N__1981;
    wire N__1978;
    wire N__1975;
    wire N__1972;
    wire N__1969;
    wire N__1966;
    wire N__1963;
    wire N__1960;
    wire N__1957;
    wire N__1956;
    wire N__1953;
    wire N__1950;
    wire N__1945;
    wire N__1944;
    wire N__1941;
    wire N__1938;
    wire N__1933;
    wire N__1930;
    wire N__1927;
    wire N__1926;
    wire N__1923;
    wire N__1920;
    wire N__1917;
    wire N__1912;
    wire N__1909;
    wire N__1908;
    wire N__1905;
    wire N__1902;
    wire N__1897;
    wire N__1894;
    wire N__1891;
    wire N__1888;
    wire N__1885;
    wire N__1882;
    wire N__1879;
    wire N__1876;
    wire N__1873;
    wire N__1870;
    wire N__1867;
    wire N__1864;
    wire N__1861;
    wire N__1858;
    wire N__1855;
    wire N__1852;
    wire N__1851;
    wire N__1850;
    wire N__1849;
    wire N__1848;
    wire N__1845;
    wire N__1842;
    wire N__1841;
    wire N__1838;
    wire N__1837;
    wire N__1834;
    wire N__1831;
    wire N__1826;
    wire N__1815;
    wire N__1810;
    wire N__1807;
    wire N__1806;
    wire N__1803;
    wire N__1800;
    wire N__1795;
    wire N__1794;
    wire N__1791;
    wire N__1788;
    wire N__1783;
    wire N__1780;
    wire N__1779;
    wire N__1776;
    wire N__1773;
    wire N__1768;
    wire N__1767;
    wire N__1764;
    wire N__1761;
    wire N__1756;
    wire N__1753;
    wire N__1750;
    wire N__1747;
    wire N__1744;
    wire N__1741;
    wire N__1738;
    wire N__1737;
    wire N__1734;
    wire N__1731;
    wire N__1726;
    wire N__1725;
    wire N__1722;
    wire N__1719;
    wire N__1714;
    wire N__1713;
    wire N__1710;
    wire N__1707;
    wire N__1702;
    wire N__1701;
    wire N__1698;
    wire N__1695;
    wire N__1690;
    wire N__1687;
    wire N__1686;
    wire N__1683;
    wire N__1680;
    wire N__1675;
    wire N__1672;
    wire N__1669;
    wire N__1666;
    wire N__1665;
    wire N__1664;
    wire N__1663;
    wire N__1662;
    wire N__1661;
    wire N__1648;
    wire N__1645;
    wire N__1642;
    wire N__1639;
    wire N__1636;
    wire N__1633;
    wire N__1630;
    wire N__1627;
    wire N__1626;
    wire N__1625;
    wire N__1620;
    wire N__1617;
    wire N__1612;
    wire N__1609;
    wire N__1608;
    wire N__1607;
    wire N__1602;
    wire N__1599;
    wire N__1594;
    wire N__1591;
    wire N__1590;
    wire N__1587;
    wire N__1586;
    wire N__1581;
    wire N__1578;
    wire N__1573;
    wire N__1570;
    wire N__1569;
    wire N__1568;
    wire N__1563;
    wire N__1560;
    wire N__1555;
    wire N__1552;
    wire N__1549;
    wire N__1548;
    wire N__1545;
    wire N__1542;
    wire N__1537;
    wire N__1534;
    wire N__1531;
    wire N__1528;
    wire N__1525;
    wire N__1522;
    wire N__1519;
    wire N__1516;
    wire N__1513;
    wire N__1510;
    wire N__1507;
    wire N__1504;
    wire N__1501;
    wire N__1498;
    wire N__1495;
    wire N__1492;
    wire N__1489;
    wire N__1486;
    wire N__1483;
    wire N__1480;
    wire N__1477;
    wire N__1474;
    wire N__1471;
    wire N__1468;
    wire N__1465;
    wire N__1462;
    wire N__1459;
    wire N__1456;
    wire N__1453;
    wire N__1450;
    wire N__1447;
    wire N__1444;
    wire N__1441;
    wire N__1438;
    wire N__1435;
    wire N__1432;
    wire N__1429;
    wire N__1426;
    wire N__1423;
    wire N__1420;
    wire N__1417;
    wire N__1414;
    wire N__1411;
    wire N__1408;
    wire N__1405;
    wire N__1402;
    wire N__1399;
    wire N__1396;
    wire N__1393;
    wire N__1390;
    wire N__1387;
    wire N__1384;
    wire N__1381;
    wire N__1378;
    wire N__1375;
    wire N__1372;
    wire N__1369;
    wire N__1366;
    wire N__1363;
    wire N__1360;
    wire N__1357;
    wire N__1354;
    wire N__1351;
    wire N__1348;
    wire N__1345;
    wire N__1342;
    wire N__1339;
    wire N__1336;
    wire N__1333;
    wire N__1330;
    wire N__1327;
    wire N__1324;
    wire N__1321;
    wire N__1318;
    wire N__1315;
    wire N__1312;
    wire N__1309;
    wire N__1306;
    wire N__1303;
    wire N__1300;
    wire N__1297;
    wire N__1294;
    wire N__1291;
    wire CLK_pad_gb_input;
    wire VCCG0;
    wire GNDG0;
    wire n979;
    wire n980;
    wire LED_c;
    wire n26;
    wire bfn_13_17_0_;
    wire n25;
    wire n916;
    wire n24;
    wire n917;
    wire n23;
    wire n918;
    wire n22;
    wire n919;
    wire n21;
    wire n920;
    wire n20;
    wire n921;
    wire n19;
    wire n922;
    wire n923;
    wire n18;
    wire bfn_13_18_0_;
    wire n17;
    wire n924;
    wire n16;
    wire n925;
    wire n15;
    wire n926;
    wire n14;
    wire n927;
    wire n13;
    wire n928;
    wire n12;
    wire n929;
    wire n11;
    wire n930;
    wire n931;
    wire n10;
    wire bfn_13_19_0_;
    wire n9;
    wire n932;
    wire n8;
    wire n933;
    wire n7;
    wire n934;
    wire n6;
    wire n935;
    wire blink_counter_21;
    wire n936;
    wire blink_counter_22;
    wire n937;
    wire blink_counter_23;
    wire n938;
    wire n939;
    wire blink_counter_24;
    wire bfn_13_20_0_;
    wire n940;
    wire blink_counter_25;
    wire bfn_14_16_0_;
    wire \tli.n899 ;
    wire \tli.n900 ;
    wire \tli.n901 ;
    wire \tli.n902 ;
    wire \tli.counter_1 ;
    wire \tli.counter_2 ;
    wire \tli.counter_3 ;
    wire \tli.counter_4 ;
    wire \tli.n6_adj_237_cascade_ ;
    wire \tli.counter_0 ;
    wire \tli.clk_slow_N_43 ;
    wire \tli.clk_slow_N_43_cascade_ ;
    wire CLK_c;
    wire bfn_15_17_0_;
    wire \tli.n892 ;
    wire \tli.n893 ;
    wire \tli.n894 ;
    wire \tli.n895 ;
    wire \tli.n896 ;
    wire \tli.n897 ;
    wire CONSTANT_ONE_NET;
    wire \tli.n898 ;
    wire \INVtli.bit_counter_134__i4C_net ;
    wire \tli.bit_counter_7 ;
    wire \tli.bit_counter_5 ;
    wire \tli.bit_counter_4 ;
    wire \tli.bit_counter_6 ;
    wire \tli.n45 ;
    wire \tli.n986 ;
    wire \INVtli.bit_counter_134__i0C_net ;
    wire bfn_15_19_0_;
    wire \tli.n903 ;
    wire \tli.n904 ;
    wire \tli.n905 ;
    wire \tli.n906 ;
    wire \tli.n907 ;
    wire \tli.n908 ;
    wire \tli.n909 ;
    wire \tli.n910 ;
    wire \INVtli.delay_counter_132_133__i1C_net ;
    wire bfn_15_20_0_;
    wire \tli.n911 ;
    wire \tli.n912 ;
    wire \tli.n913 ;
    wire \tli.n914 ;
    wire \tli.n915 ;
    wire \INVtli.delay_counter_132_133__i9C_net ;
    wire \tli.n985 ;
    wire \tli.n984 ;
    wire \INVtli.bit_counter_134__i2C_net ;
    wire \tli.bit_counter_1 ;
    wire \tli.bit_counter_2 ;
    wire \tli.n14 ;
    wire \tli.bit_counter_3 ;
    wire \tli.bit_counter_0 ;
    wire \tli.n10 ;
    wire \tli.n15_cascade_ ;
    wire \tli.n852 ;
    wire \tli.n839 ;
    wire \tli.n569 ;
    wire \INVtli.state_i0C_net ;
    wire \tli.delay_counter_2 ;
    wire \tli.delay_counter_1 ;
    wire \tli.delay_counter_3 ;
    wire \tli.delay_counter_0 ;
    wire \tli.delay_counter_7 ;
    wire \tli.n978_cascade_ ;
    wire \tli.delay_counter_4 ;
    wire \tli.n833 ;
    wire \tli.delay_counter_5 ;
    wire \tli.delay_counter_6 ;
    wire \tli.n6 ;
    wire \tli.n850 ;
    wire \tli.delay_counter_9 ;
    wire \tli.n977 ;
    wire \tli.delay_counter_10 ;
    wire \tli.delay_counter_8 ;
    wire \tli.delay_counter_12 ;
    wire \tli.delay_counter_13 ;
    wire \tli.n966_cascade_ ;
    wire \tli.delay_counter_11 ;
    wire \tli.delay_counter_15__N_124 ;
    wire \tli.clk_slow ;
    wire CS_CLK_c;
    wire CS_c;
    wire \INVtli.slave_select_65C_net ;
    wire \tli.state_1 ;
    wire \tli.n15 ;
    wire \tli.state_0 ;
    wire \tli.clk_out ;
    wire \INVtli.clk_out_66C_net ;
    wire _gnd_net_;

    defparam CS_CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_CLK_pad_iopad (
            .OE(N__2747),
            .DIN(N__2746),
            .DOUT(N__2745),
            .PACKAGEPIN(CS_CLK));
    defparam CS_CLK_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_CLK_pad_preio (
            .PADOEN(N__2747),
            .PADOUT(N__2746),
            .PADIN(N__2745),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__2368),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CS_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_pad_iopad (
            .OE(N__2738),
            .DIN(N__2737),
            .DOUT(N__2736),
            .PACKAGEPIN(CS));
    defparam CS_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_pad_preio (
            .PADOEN(N__2738),
            .PADOUT(N__2737),
            .PADIN(N__2736),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__2344),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam DE_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam DE_pad_iopad.PULLUP=1'b0;
    IO_PAD DE_pad_iopad (
            .OE(N__2729),
            .DIN(N__2728),
            .DOUT(N__2727),
            .PACKAGEPIN(DE));
    defparam DE_pad_preio.PIN_TYPE=6'b011001;
    defparam DE_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO DE_pad_preio (
            .PADOEN(N__2729),
            .PADOUT(N__2728),
            .PADIN(N__2727),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHA_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHA_pad_iopad.PULLUP=1'b0;
    IO_PAD INHA_pad_iopad (
            .OE(N__2720),
            .DIN(N__2719),
            .DOUT(N__2718),
            .PACKAGEPIN(INHA));
    defparam INHA_pad_preio.PIN_TYPE=6'b011001;
    defparam INHA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHA_pad_preio (
            .PADOEN(N__2720),
            .PADOUT(N__2719),
            .PADIN(N__2718),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHB_pad_iopad.PULLUP=1'b0;
    IO_PAD INHB_pad_iopad (
            .OE(N__2711),
            .DIN(N__2710),
            .DOUT(N__2709),
            .PACKAGEPIN(INHB));
    defparam INHB_pad_preio.PIN_TYPE=6'b011001;
    defparam INHB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHB_pad_preio (
            .PADOEN(N__2711),
            .PADOUT(N__2710),
            .PADIN(N__2709),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHC_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHC_pad_iopad.PULLUP=1'b0;
    IO_PAD INHC_pad_iopad (
            .OE(N__2702),
            .DIN(N__2701),
            .DOUT(N__2700),
            .PACKAGEPIN(INHC));
    defparam INHC_pad_preio.PIN_TYPE=6'b011001;
    defparam INHC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHC_pad_preio (
            .PADOEN(N__2702),
            .PADOUT(N__2701),
            .PADIN(N__2700),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLA_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLA_pad_iopad.PULLUP=1'b0;
    IO_PAD INLA_pad_iopad (
            .OE(N__2693),
            .DIN(N__2692),
            .DOUT(N__2691),
            .PACKAGEPIN(INLA));
    defparam INLA_pad_preio.PIN_TYPE=6'b011001;
    defparam INLA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLA_pad_preio (
            .PADOEN(N__2693),
            .PADOUT(N__2692),
            .PADIN(N__2691),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLB_pad_iopad.PULLUP=1'b0;
    IO_PAD INLB_pad_iopad (
            .OE(N__2684),
            .DIN(N__2683),
            .DOUT(N__2682),
            .PACKAGEPIN(INLB));
    defparam INLB_pad_preio.PIN_TYPE=6'b011001;
    defparam INLB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLB_pad_preio (
            .PADOEN(N__2684),
            .PADOUT(N__2683),
            .PADIN(N__2682),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLC_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLC_pad_iopad.PULLUP=1'b0;
    IO_PAD INLC_pad_iopad (
            .OE(N__2675),
            .DIN(N__2674),
            .DOUT(N__2673),
            .PACKAGEPIN(INLC));
    defparam INLC_pad_preio.PIN_TYPE=6'b011001;
    defparam INLC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLC_pad_preio (
            .PADOEN(N__2675),
            .PADOUT(N__2674),
            .PADIN(N__2673),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam LED_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam LED_pad_iopad.PULLUP=1'b0;
    IO_PAD LED_pad_iopad (
            .OE(N__2666),
            .DIN(N__2665),
            .DOUT(N__2664),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__2666),
            .PADOUT(N__2665),
            .PADIN(N__2664),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__1366),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam NEOPXL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam NEOPXL_pad_iopad.PULLUP=1'b0;
    IO_PAD NEOPXL_pad_iopad (
            .OE(N__2657),
            .DIN(N__2656),
            .DOUT(N__2655),
            .PACKAGEPIN(NEOPXL));
    defparam NEOPXL_pad_preio.PIN_TYPE=6'b011001;
    defparam NEOPXL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO NEOPXL_pad_preio (
            .PADOEN(N__2657),
            .PADOUT(N__2656),
            .PADIN(N__2655),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam TX_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam TX_pad_iopad.PULLUP=1'b0;
    IO_PAD TX_pad_iopad (
            .OE(N__2648),
            .DIN(N__2647),
            .DOUT(N__2646),
            .PACKAGEPIN(TX));
    defparam TX_pad_preio.PIN_TYPE=6'b011001;
    defparam TX_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO TX_pad_preio (
            .PADOEN(N__2648),
            .PADOUT(N__2647),
            .PADIN(N__2646),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam USBPU_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam USBPU_pad_iopad.PULLUP=1'b0;
    IO_PAD USBPU_pad_iopad (
            .OE(N__2639),
            .DIN(N__2638),
            .DOUT(N__2637),
            .PACKAGEPIN(USBPU));
    defparam USBPU_pad_preio.PIN_TYPE=6'b011001;
    defparam USBPU_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO USBPU_pad_preio (
            .PADOEN(N__2639),
            .PADOUT(N__2638),
            .PADIN(N__2637),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam hall1_input_iopad.IO_STANDARD="SB_LVCMOS";
    defparam hall1_input_iopad.PULLUP=1'b1;
    IO_PAD hall1_input_iopad (
            .OE(N__2630),
            .DIN(N__2629),
            .DOUT(N__2628),
            .PACKAGEPIN(HALL1));
    defparam hall1_input_preio.PIN_TYPE=6'b000001;
    defparam hall1_input_preio.NEG_TRIGGER=1'b0;
    PRE_IO hall1_input_preio (
            .PADOEN(N__2630),
            .PADOUT(N__2629),
            .PADIN(N__2628),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam hall2_input_iopad.IO_STANDARD="SB_LVCMOS";
    defparam hall2_input_iopad.PULLUP=1'b1;
    IO_PAD hall2_input_iopad (
            .OE(N__2621),
            .DIN(N__2620),
            .DOUT(N__2619),
            .PACKAGEPIN(HALL2));
    defparam hall2_input_preio.PIN_TYPE=6'b000001;
    defparam hall2_input_preio.NEG_TRIGGER=1'b0;
    PRE_IO hall2_input_preio (
            .PADOEN(N__2621),
            .PADOUT(N__2620),
            .PADIN(N__2619),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam hall3_input_iopad.IO_STANDARD="SB_LVCMOS";
    defparam hall3_input_iopad.PULLUP=1'b1;
    IO_PAD hall3_input_iopad (
            .OE(N__2612),
            .DIN(N__2611),
            .DOUT(N__2610),
            .PACKAGEPIN(HALL3));
    defparam hall3_input_preio.PIN_TYPE=6'b000001;
    defparam hall3_input_preio.NEG_TRIGGER=1'b0;
    PRE_IO hall3_input_preio (
            .PADOEN(N__2612),
            .PADOUT(N__2611),
            .PADIN(N__2610),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CLK_pad_iopad (
            .OE(N__2603),
            .DIN(N__2602),
            .DOUT(N__2601),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__2603),
            .PADOUT(N__2602),
            .PADIN(N__2601),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    InMux I__550 (
            .O(N__2584),
            .I(N__2580));
    InMux I__549 (
            .O(N__2583),
            .I(N__2577));
    LocalMux I__548 (
            .O(N__2580),
            .I(\tli.delay_counter_9 ));
    LocalMux I__547 (
            .O(N__2577),
            .I(\tli.delay_counter_9 ));
    InMux I__546 (
            .O(N__2572),
            .I(N__2569));
    LocalMux I__545 (
            .O(N__2569),
            .I(\tli.n977 ));
    CascadeMux I__544 (
            .O(N__2566),
            .I(N__2563));
    InMux I__543 (
            .O(N__2563),
            .I(N__2559));
    InMux I__542 (
            .O(N__2562),
            .I(N__2556));
    LocalMux I__541 (
            .O(N__2559),
            .I(\tli.delay_counter_10 ));
    LocalMux I__540 (
            .O(N__2556),
            .I(\tli.delay_counter_10 ));
    InMux I__539 (
            .O(N__2551),
            .I(N__2547));
    InMux I__538 (
            .O(N__2550),
            .I(N__2544));
    LocalMux I__537 (
            .O(N__2547),
            .I(\tli.delay_counter_8 ));
    LocalMux I__536 (
            .O(N__2544),
            .I(\tli.delay_counter_8 ));
    InMux I__535 (
            .O(N__2539),
            .I(N__2535));
    InMux I__534 (
            .O(N__2538),
            .I(N__2532));
    LocalMux I__533 (
            .O(N__2535),
            .I(\tli.delay_counter_12 ));
    LocalMux I__532 (
            .O(N__2532),
            .I(\tli.delay_counter_12 ));
    InMux I__531 (
            .O(N__2527),
            .I(N__2523));
    InMux I__530 (
            .O(N__2526),
            .I(N__2520));
    LocalMux I__529 (
            .O(N__2523),
            .I(\tli.delay_counter_13 ));
    LocalMux I__528 (
            .O(N__2520),
            .I(\tli.delay_counter_13 ));
    CascadeMux I__527 (
            .O(N__2515),
            .I(\tli.n966_cascade_ ));
    InMux I__526 (
            .O(N__2512),
            .I(N__2508));
    InMux I__525 (
            .O(N__2511),
            .I(N__2505));
    LocalMux I__524 (
            .O(N__2508),
            .I(\tli.delay_counter_11 ));
    LocalMux I__523 (
            .O(N__2505),
            .I(\tli.delay_counter_11 ));
    SRMux I__522 (
            .O(N__2500),
            .I(N__2496));
    CascadeMux I__521 (
            .O(N__2499),
            .I(N__2492));
    LocalMux I__520 (
            .O(N__2496),
            .I(N__2488));
    SRMux I__519 (
            .O(N__2495),
            .I(N__2485));
    InMux I__518 (
            .O(N__2492),
            .I(N__2480));
    InMux I__517 (
            .O(N__2491),
            .I(N__2480));
    Span4Mux_v I__516 (
            .O(N__2488),
            .I(N__2475));
    LocalMux I__515 (
            .O(N__2485),
            .I(N__2475));
    LocalMux I__514 (
            .O(N__2480),
            .I(N__2472));
    Sp12to4 I__513 (
            .O(N__2475),
            .I(N__2469));
    Odrv4 I__512 (
            .O(N__2472),
            .I(\tli.delay_counter_15__N_124 ));
    Odrv12 I__511 (
            .O(N__2469),
            .I(\tli.delay_counter_15__N_124 ));
    ClkMux I__510 (
            .O(N__2464),
            .I(N__2458));
    InMux I__509 (
            .O(N__2463),
            .I(N__2453));
    ClkMux I__508 (
            .O(N__2462),
            .I(N__2450));
    ClkMux I__507 (
            .O(N__2461),
            .I(N__2447));
    LocalMux I__506 (
            .O(N__2458),
            .I(N__2443));
    ClkMux I__505 (
            .O(N__2457),
            .I(N__2439));
    ClkMux I__504 (
            .O(N__2456),
            .I(N__2436));
    LocalMux I__503 (
            .O(N__2453),
            .I(N__2429));
    LocalMux I__502 (
            .O(N__2450),
            .I(N__2429));
    LocalMux I__501 (
            .O(N__2447),
            .I(N__2429));
    ClkMux I__500 (
            .O(N__2446),
            .I(N__2426));
    Span4Mux_v I__499 (
            .O(N__2443),
            .I(N__2423));
    ClkMux I__498 (
            .O(N__2442),
            .I(N__2420));
    LocalMux I__497 (
            .O(N__2439),
            .I(N__2416));
    LocalMux I__496 (
            .O(N__2436),
            .I(N__2413));
    Span4Mux_v I__495 (
            .O(N__2429),
            .I(N__2410));
    LocalMux I__494 (
            .O(N__2426),
            .I(N__2403));
    Span4Mux_v I__493 (
            .O(N__2423),
            .I(N__2403));
    LocalMux I__492 (
            .O(N__2420),
            .I(N__2403));
    ClkMux I__491 (
            .O(N__2419),
            .I(N__2400));
    Span4Mux_h I__490 (
            .O(N__2416),
            .I(N__2396));
    Span4Mux_v I__489 (
            .O(N__2413),
            .I(N__2393));
    Span4Mux_h I__488 (
            .O(N__2410),
            .I(N__2390));
    Span4Mux_v I__487 (
            .O(N__2403),
            .I(N__2387));
    LocalMux I__486 (
            .O(N__2400),
            .I(N__2384));
    InMux I__485 (
            .O(N__2399),
            .I(N__2381));
    Odrv4 I__484 (
            .O(N__2396),
            .I(\tli.clk_slow ));
    Odrv4 I__483 (
            .O(N__2393),
            .I(\tli.clk_slow ));
    Odrv4 I__482 (
            .O(N__2390),
            .I(\tli.clk_slow ));
    Odrv4 I__481 (
            .O(N__2387),
            .I(\tli.clk_slow ));
    Odrv12 I__480 (
            .O(N__2384),
            .I(\tli.clk_slow ));
    LocalMux I__479 (
            .O(N__2381),
            .I(\tli.clk_slow ));
    IoInMux I__478 (
            .O(N__2368),
            .I(N__2365));
    LocalMux I__477 (
            .O(N__2365),
            .I(N__2362));
    IoSpan4Mux I__476 (
            .O(N__2362),
            .I(N__2359));
    Span4Mux_s2_h I__475 (
            .O(N__2359),
            .I(N__2356));
    Sp12to4 I__474 (
            .O(N__2356),
            .I(N__2353));
    Span12Mux_h I__473 (
            .O(N__2353),
            .I(N__2350));
    Span12Mux_v I__472 (
            .O(N__2350),
            .I(N__2347));
    Odrv12 I__471 (
            .O(N__2347),
            .I(CS_CLK_c));
    IoInMux I__470 (
            .O(N__2344),
            .I(N__2341));
    LocalMux I__469 (
            .O(N__2341),
            .I(N__2338));
    Span12Mux_s6_h I__468 (
            .O(N__2338),
            .I(N__2333));
    InMux I__467 (
            .O(N__2337),
            .I(N__2328));
    InMux I__466 (
            .O(N__2336),
            .I(N__2328));
    Odrv12 I__465 (
            .O(N__2333),
            .I(CS_c));
    LocalMux I__464 (
            .O(N__2328),
            .I(CS_c));
    CascadeMux I__463 (
            .O(N__2323),
            .I(N__2320));
    InMux I__462 (
            .O(N__2320),
            .I(N__2315));
    InMux I__461 (
            .O(N__2319),
            .I(N__2304));
    InMux I__460 (
            .O(N__2318),
            .I(N__2301));
    LocalMux I__459 (
            .O(N__2315),
            .I(N__2298));
    InMux I__458 (
            .O(N__2314),
            .I(N__2295));
    InMux I__457 (
            .O(N__2313),
            .I(N__2290));
    InMux I__456 (
            .O(N__2312),
            .I(N__2290));
    InMux I__455 (
            .O(N__2311),
            .I(N__2285));
    InMux I__454 (
            .O(N__2310),
            .I(N__2285));
    InMux I__453 (
            .O(N__2309),
            .I(N__2278));
    InMux I__452 (
            .O(N__2308),
            .I(N__2278));
    InMux I__451 (
            .O(N__2307),
            .I(N__2278));
    LocalMux I__450 (
            .O(N__2304),
            .I(\tli.state_1 ));
    LocalMux I__449 (
            .O(N__2301),
            .I(\tli.state_1 ));
    Odrv4 I__448 (
            .O(N__2298),
            .I(\tli.state_1 ));
    LocalMux I__447 (
            .O(N__2295),
            .I(\tli.state_1 ));
    LocalMux I__446 (
            .O(N__2290),
            .I(\tli.state_1 ));
    LocalMux I__445 (
            .O(N__2285),
            .I(\tli.state_1 ));
    LocalMux I__444 (
            .O(N__2278),
            .I(\tli.state_1 ));
    InMux I__443 (
            .O(N__2263),
            .I(N__2255));
    InMux I__442 (
            .O(N__2262),
            .I(N__2255));
    InMux I__441 (
            .O(N__2261),
            .I(N__2252));
    InMux I__440 (
            .O(N__2260),
            .I(N__2249));
    LocalMux I__439 (
            .O(N__2255),
            .I(\tli.n15 ));
    LocalMux I__438 (
            .O(N__2252),
            .I(\tli.n15 ));
    LocalMux I__437 (
            .O(N__2249),
            .I(\tli.n15 ));
    InMux I__436 (
            .O(N__2242),
            .I(N__2237));
    CascadeMux I__435 (
            .O(N__2241),
            .I(N__2228));
    InMux I__434 (
            .O(N__2240),
            .I(N__2221));
    LocalMux I__433 (
            .O(N__2237),
            .I(N__2218));
    InMux I__432 (
            .O(N__2236),
            .I(N__2215));
    InMux I__431 (
            .O(N__2235),
            .I(N__2212));
    InMux I__430 (
            .O(N__2234),
            .I(N__2207));
    InMux I__429 (
            .O(N__2233),
            .I(N__2207));
    InMux I__428 (
            .O(N__2232),
            .I(N__2202));
    InMux I__427 (
            .O(N__2231),
            .I(N__2202));
    InMux I__426 (
            .O(N__2228),
            .I(N__2191));
    InMux I__425 (
            .O(N__2227),
            .I(N__2191));
    InMux I__424 (
            .O(N__2226),
            .I(N__2191));
    InMux I__423 (
            .O(N__2225),
            .I(N__2191));
    InMux I__422 (
            .O(N__2224),
            .I(N__2191));
    LocalMux I__421 (
            .O(N__2221),
            .I(\tli.state_0 ));
    Odrv4 I__420 (
            .O(N__2218),
            .I(\tli.state_0 ));
    LocalMux I__419 (
            .O(N__2215),
            .I(\tli.state_0 ));
    LocalMux I__418 (
            .O(N__2212),
            .I(\tli.state_0 ));
    LocalMux I__417 (
            .O(N__2207),
            .I(\tli.state_0 ));
    LocalMux I__416 (
            .O(N__2202),
            .I(\tli.state_0 ));
    LocalMux I__415 (
            .O(N__2191),
            .I(\tli.state_0 ));
    CascadeMux I__414 (
            .O(N__2176),
            .I(N__2172));
    InMux I__413 (
            .O(N__2175),
            .I(N__2169));
    InMux I__412 (
            .O(N__2172),
            .I(N__2166));
    LocalMux I__411 (
            .O(N__2169),
            .I(\tli.clk_out ));
    LocalMux I__410 (
            .O(N__2166),
            .I(\tli.clk_out ));
    SRMux I__409 (
            .O(N__2161),
            .I(N__2158));
    LocalMux I__408 (
            .O(N__2158),
            .I(\tli.n852 ));
    CEMux I__407 (
            .O(N__2155),
            .I(N__2151));
    CEMux I__406 (
            .O(N__2154),
            .I(N__2148));
    LocalMux I__405 (
            .O(N__2151),
            .I(N__2142));
    LocalMux I__404 (
            .O(N__2148),
            .I(N__2142));
    CEMux I__403 (
            .O(N__2147),
            .I(N__2139));
    Span4Mux_v I__402 (
            .O(N__2142),
            .I(N__2136));
    LocalMux I__401 (
            .O(N__2139),
            .I(N__2133));
    Odrv4 I__400 (
            .O(N__2136),
            .I(\tli.n839 ));
    Odrv4 I__399 (
            .O(N__2133),
            .I(\tli.n839 ));
    InMux I__398 (
            .O(N__2128),
            .I(N__2123));
    InMux I__397 (
            .O(N__2127),
            .I(N__2118));
    InMux I__396 (
            .O(N__2126),
            .I(N__2118));
    LocalMux I__395 (
            .O(N__2123),
            .I(\tli.n569 ));
    LocalMux I__394 (
            .O(N__2118),
            .I(\tli.n569 ));
    InMux I__393 (
            .O(N__2113),
            .I(N__2109));
    InMux I__392 (
            .O(N__2112),
            .I(N__2106));
    LocalMux I__391 (
            .O(N__2109),
            .I(\tli.delay_counter_2 ));
    LocalMux I__390 (
            .O(N__2106),
            .I(\tli.delay_counter_2 ));
    InMux I__389 (
            .O(N__2101),
            .I(N__2097));
    InMux I__388 (
            .O(N__2100),
            .I(N__2094));
    LocalMux I__387 (
            .O(N__2097),
            .I(\tli.delay_counter_1 ));
    LocalMux I__386 (
            .O(N__2094),
            .I(\tli.delay_counter_1 ));
    CascadeMux I__385 (
            .O(N__2089),
            .I(N__2086));
    InMux I__384 (
            .O(N__2086),
            .I(N__2082));
    InMux I__383 (
            .O(N__2085),
            .I(N__2079));
    LocalMux I__382 (
            .O(N__2082),
            .I(\tli.delay_counter_3 ));
    LocalMux I__381 (
            .O(N__2079),
            .I(\tli.delay_counter_3 ));
    InMux I__380 (
            .O(N__2074),
            .I(N__2070));
    InMux I__379 (
            .O(N__2073),
            .I(N__2067));
    LocalMux I__378 (
            .O(N__2070),
            .I(\tli.delay_counter_0 ));
    LocalMux I__377 (
            .O(N__2067),
            .I(\tli.delay_counter_0 ));
    InMux I__376 (
            .O(N__2062),
            .I(N__2058));
    InMux I__375 (
            .O(N__2061),
            .I(N__2055));
    LocalMux I__374 (
            .O(N__2058),
            .I(\tli.delay_counter_7 ));
    LocalMux I__373 (
            .O(N__2055),
            .I(\tli.delay_counter_7 ));
    CascadeMux I__372 (
            .O(N__2050),
            .I(\tli.n978_cascade_ ));
    InMux I__371 (
            .O(N__2047),
            .I(N__2043));
    InMux I__370 (
            .O(N__2046),
            .I(N__2040));
    LocalMux I__369 (
            .O(N__2043),
            .I(\tli.delay_counter_4 ));
    LocalMux I__368 (
            .O(N__2040),
            .I(\tli.delay_counter_4 ));
    CEMux I__367 (
            .O(N__2035),
            .I(N__2032));
    LocalMux I__366 (
            .O(N__2032),
            .I(N__2029));
    Odrv12 I__365 (
            .O(N__2029),
            .I(\tli.n833 ));
    InMux I__364 (
            .O(N__2026),
            .I(N__2022));
    InMux I__363 (
            .O(N__2025),
            .I(N__2019));
    LocalMux I__362 (
            .O(N__2022),
            .I(\tli.delay_counter_5 ));
    LocalMux I__361 (
            .O(N__2019),
            .I(\tli.delay_counter_5 ));
    InMux I__360 (
            .O(N__2014),
            .I(N__2010));
    InMux I__359 (
            .O(N__2013),
            .I(N__2007));
    LocalMux I__358 (
            .O(N__2010),
            .I(\tli.delay_counter_6 ));
    LocalMux I__357 (
            .O(N__2007),
            .I(\tli.delay_counter_6 ));
    InMux I__356 (
            .O(N__2002),
            .I(N__1999));
    LocalMux I__355 (
            .O(N__1999),
            .I(\tli.n6 ));
    SRMux I__354 (
            .O(N__1996),
            .I(N__1993));
    LocalMux I__353 (
            .O(N__1993),
            .I(N__1990));
    Span4Mux_h I__352 (
            .O(N__1990),
            .I(N__1987));
    Odrv4 I__351 (
            .O(N__1987),
            .I(\tli.n850 ));
    InMux I__350 (
            .O(N__1984),
            .I(\tli.n912 ));
    InMux I__349 (
            .O(N__1981),
            .I(\tli.n913 ));
    InMux I__348 (
            .O(N__1978),
            .I(\tli.n914 ));
    InMux I__347 (
            .O(N__1975),
            .I(\tli.n915 ));
    InMux I__346 (
            .O(N__1972),
            .I(N__1969));
    LocalMux I__345 (
            .O(N__1969),
            .I(N__1966));
    Odrv4 I__344 (
            .O(N__1966),
            .I(\tli.n985 ));
    InMux I__343 (
            .O(N__1963),
            .I(N__1960));
    LocalMux I__342 (
            .O(N__1960),
            .I(\tli.n984 ));
    InMux I__341 (
            .O(N__1957),
            .I(N__1953));
    InMux I__340 (
            .O(N__1956),
            .I(N__1950));
    LocalMux I__339 (
            .O(N__1953),
            .I(\tli.bit_counter_1 ));
    LocalMux I__338 (
            .O(N__1950),
            .I(\tli.bit_counter_1 ));
    InMux I__337 (
            .O(N__1945),
            .I(N__1941));
    InMux I__336 (
            .O(N__1944),
            .I(N__1938));
    LocalMux I__335 (
            .O(N__1941),
            .I(\tli.bit_counter_2 ));
    LocalMux I__334 (
            .O(N__1938),
            .I(\tli.bit_counter_2 ));
    InMux I__333 (
            .O(N__1933),
            .I(N__1930));
    LocalMux I__332 (
            .O(N__1930),
            .I(\tli.n14 ));
    CascadeMux I__331 (
            .O(N__1927),
            .I(N__1923));
    InMux I__330 (
            .O(N__1926),
            .I(N__1920));
    InMux I__329 (
            .O(N__1923),
            .I(N__1917));
    LocalMux I__328 (
            .O(N__1920),
            .I(\tli.bit_counter_3 ));
    LocalMux I__327 (
            .O(N__1917),
            .I(\tli.bit_counter_3 ));
    CascadeMux I__326 (
            .O(N__1912),
            .I(N__1909));
    InMux I__325 (
            .O(N__1909),
            .I(N__1905));
    InMux I__324 (
            .O(N__1908),
            .I(N__1902));
    LocalMux I__323 (
            .O(N__1905),
            .I(\tli.bit_counter_0 ));
    LocalMux I__322 (
            .O(N__1902),
            .I(\tli.bit_counter_0 ));
    InMux I__321 (
            .O(N__1897),
            .I(N__1894));
    LocalMux I__320 (
            .O(N__1894),
            .I(\tli.n10 ));
    CascadeMux I__319 (
            .O(N__1891),
            .I(\tli.n15_cascade_ ));
    InMux I__318 (
            .O(N__1888),
            .I(\tli.n903 ));
    InMux I__317 (
            .O(N__1885),
            .I(\tli.n904 ));
    InMux I__316 (
            .O(N__1882),
            .I(\tli.n905 ));
    InMux I__315 (
            .O(N__1879),
            .I(\tli.n906 ));
    InMux I__314 (
            .O(N__1876),
            .I(\tli.n907 ));
    InMux I__313 (
            .O(N__1873),
            .I(\tli.n908 ));
    InMux I__312 (
            .O(N__1870),
            .I(\tli.n909 ));
    InMux I__311 (
            .O(N__1867),
            .I(bfn_15_20_0_));
    InMux I__310 (
            .O(N__1864),
            .I(\tli.n911 ));
    InMux I__309 (
            .O(N__1861),
            .I(\tli.n895 ));
    InMux I__308 (
            .O(N__1858),
            .I(\tli.n896 ));
    InMux I__307 (
            .O(N__1855),
            .I(\tli.n897 ));
    CascadeMux I__306 (
            .O(N__1852),
            .I(N__1845));
    CascadeMux I__305 (
            .O(N__1851),
            .I(N__1842));
    CascadeMux I__304 (
            .O(N__1850),
            .I(N__1838));
    CascadeMux I__303 (
            .O(N__1849),
            .I(N__1834));
    CascadeMux I__302 (
            .O(N__1848),
            .I(N__1831));
    InMux I__301 (
            .O(N__1845),
            .I(N__1826));
    InMux I__300 (
            .O(N__1842),
            .I(N__1826));
    InMux I__299 (
            .O(N__1841),
            .I(N__1815));
    InMux I__298 (
            .O(N__1838),
            .I(N__1815));
    InMux I__297 (
            .O(N__1837),
            .I(N__1815));
    InMux I__296 (
            .O(N__1834),
            .I(N__1815));
    InMux I__295 (
            .O(N__1831),
            .I(N__1815));
    LocalMux I__294 (
            .O(N__1826),
            .I(CONSTANT_ONE_NET));
    LocalMux I__293 (
            .O(N__1815),
            .I(CONSTANT_ONE_NET));
    InMux I__292 (
            .O(N__1810),
            .I(\tli.n898 ));
    InMux I__291 (
            .O(N__1807),
            .I(N__1803));
    InMux I__290 (
            .O(N__1806),
            .I(N__1800));
    LocalMux I__289 (
            .O(N__1803),
            .I(\tli.bit_counter_7 ));
    LocalMux I__288 (
            .O(N__1800),
            .I(\tli.bit_counter_7 ));
    InMux I__287 (
            .O(N__1795),
            .I(N__1791));
    InMux I__286 (
            .O(N__1794),
            .I(N__1788));
    LocalMux I__285 (
            .O(N__1791),
            .I(\tli.bit_counter_5 ));
    LocalMux I__284 (
            .O(N__1788),
            .I(\tli.bit_counter_5 ));
    CascadeMux I__283 (
            .O(N__1783),
            .I(N__1780));
    InMux I__282 (
            .O(N__1780),
            .I(N__1776));
    InMux I__281 (
            .O(N__1779),
            .I(N__1773));
    LocalMux I__280 (
            .O(N__1776),
            .I(\tli.bit_counter_4 ));
    LocalMux I__279 (
            .O(N__1773),
            .I(\tli.bit_counter_4 ));
    InMux I__278 (
            .O(N__1768),
            .I(N__1764));
    InMux I__277 (
            .O(N__1767),
            .I(N__1761));
    LocalMux I__276 (
            .O(N__1764),
            .I(\tli.bit_counter_6 ));
    LocalMux I__275 (
            .O(N__1761),
            .I(\tli.bit_counter_6 ));
    InMux I__274 (
            .O(N__1756),
            .I(N__1753));
    LocalMux I__273 (
            .O(N__1753),
            .I(\tli.n45 ));
    InMux I__272 (
            .O(N__1750),
            .I(N__1747));
    LocalMux I__271 (
            .O(N__1747),
            .I(\tli.n986 ));
    InMux I__270 (
            .O(N__1744),
            .I(bfn_15_19_0_));
    InMux I__269 (
            .O(N__1741),
            .I(\tli.n902 ));
    InMux I__268 (
            .O(N__1738),
            .I(N__1734));
    InMux I__267 (
            .O(N__1737),
            .I(N__1731));
    LocalMux I__266 (
            .O(N__1734),
            .I(\tli.counter_1 ));
    LocalMux I__265 (
            .O(N__1731),
            .I(\tli.counter_1 ));
    InMux I__264 (
            .O(N__1726),
            .I(N__1722));
    InMux I__263 (
            .O(N__1725),
            .I(N__1719));
    LocalMux I__262 (
            .O(N__1722),
            .I(\tli.counter_2 ));
    LocalMux I__261 (
            .O(N__1719),
            .I(\tli.counter_2 ));
    InMux I__260 (
            .O(N__1714),
            .I(N__1710));
    InMux I__259 (
            .O(N__1713),
            .I(N__1707));
    LocalMux I__258 (
            .O(N__1710),
            .I(\tli.counter_3 ));
    LocalMux I__257 (
            .O(N__1707),
            .I(\tli.counter_3 ));
    InMux I__256 (
            .O(N__1702),
            .I(N__1698));
    InMux I__255 (
            .O(N__1701),
            .I(N__1695));
    LocalMux I__254 (
            .O(N__1698),
            .I(\tli.counter_4 ));
    LocalMux I__253 (
            .O(N__1695),
            .I(\tli.counter_4 ));
    CascadeMux I__252 (
            .O(N__1690),
            .I(\tli.n6_adj_237_cascade_ ));
    InMux I__251 (
            .O(N__1687),
            .I(N__1683));
    InMux I__250 (
            .O(N__1686),
            .I(N__1680));
    LocalMux I__249 (
            .O(N__1683),
            .I(\tli.counter_0 ));
    LocalMux I__248 (
            .O(N__1680),
            .I(\tli.counter_0 ));
    SRMux I__247 (
            .O(N__1675),
            .I(N__1672));
    LocalMux I__246 (
            .O(N__1672),
            .I(\tli.clk_slow_N_43 ));
    CascadeMux I__245 (
            .O(N__1669),
            .I(\tli.clk_slow_N_43_cascade_ ));
    ClkMux I__244 (
            .O(N__1666),
            .I(N__1648));
    ClkMux I__243 (
            .O(N__1665),
            .I(N__1648));
    ClkMux I__242 (
            .O(N__1664),
            .I(N__1648));
    ClkMux I__241 (
            .O(N__1663),
            .I(N__1648));
    ClkMux I__240 (
            .O(N__1662),
            .I(N__1648));
    ClkMux I__239 (
            .O(N__1661),
            .I(N__1648));
    GlobalMux I__238 (
            .O(N__1648),
            .I(N__1645));
    gio2CtrlBuf I__237 (
            .O(N__1645),
            .I(CLK_c));
    InMux I__236 (
            .O(N__1642),
            .I(bfn_15_17_0_));
    InMux I__235 (
            .O(N__1639),
            .I(\tli.n892 ));
    InMux I__234 (
            .O(N__1636),
            .I(\tli.n893 ));
    InMux I__233 (
            .O(N__1633),
            .I(\tli.n894 ));
    CascadeMux I__232 (
            .O(N__1630),
            .I(N__1627));
    InMux I__231 (
            .O(N__1627),
            .I(N__1620));
    InMux I__230 (
            .O(N__1626),
            .I(N__1620));
    InMux I__229 (
            .O(N__1625),
            .I(N__1617));
    LocalMux I__228 (
            .O(N__1620),
            .I(blink_counter_21));
    LocalMux I__227 (
            .O(N__1617),
            .I(blink_counter_21));
    InMux I__226 (
            .O(N__1612),
            .I(n936));
    InMux I__225 (
            .O(N__1609),
            .I(N__1602));
    InMux I__224 (
            .O(N__1608),
            .I(N__1602));
    InMux I__223 (
            .O(N__1607),
            .I(N__1599));
    LocalMux I__222 (
            .O(N__1602),
            .I(blink_counter_22));
    LocalMux I__221 (
            .O(N__1599),
            .I(blink_counter_22));
    InMux I__220 (
            .O(N__1594),
            .I(n937));
    CascadeMux I__219 (
            .O(N__1591),
            .I(N__1587));
    InMux I__218 (
            .O(N__1590),
            .I(N__1581));
    InMux I__217 (
            .O(N__1587),
            .I(N__1581));
    InMux I__216 (
            .O(N__1586),
            .I(N__1578));
    LocalMux I__215 (
            .O(N__1581),
            .I(blink_counter_23));
    LocalMux I__214 (
            .O(N__1578),
            .I(blink_counter_23));
    InMux I__213 (
            .O(N__1573),
            .I(n938));
    InMux I__212 (
            .O(N__1570),
            .I(N__1563));
    InMux I__211 (
            .O(N__1569),
            .I(N__1563));
    InMux I__210 (
            .O(N__1568),
            .I(N__1560));
    LocalMux I__209 (
            .O(N__1563),
            .I(blink_counter_24));
    LocalMux I__208 (
            .O(N__1560),
            .I(blink_counter_24));
    InMux I__207 (
            .O(N__1555),
            .I(bfn_13_20_0_));
    InMux I__206 (
            .O(N__1552),
            .I(n940));
    InMux I__205 (
            .O(N__1549),
            .I(N__1545));
    InMux I__204 (
            .O(N__1548),
            .I(N__1542));
    LocalMux I__203 (
            .O(N__1545),
            .I(blink_counter_25));
    LocalMux I__202 (
            .O(N__1542),
            .I(blink_counter_25));
    InMux I__201 (
            .O(N__1537),
            .I(bfn_14_16_0_));
    InMux I__200 (
            .O(N__1534),
            .I(\tli.n899 ));
    InMux I__199 (
            .O(N__1531),
            .I(\tli.n900 ));
    InMux I__198 (
            .O(N__1528),
            .I(\tli.n901 ));
    InMux I__197 (
            .O(N__1525),
            .I(N__1522));
    LocalMux I__196 (
            .O(N__1522),
            .I(n13));
    InMux I__195 (
            .O(N__1519),
            .I(n928));
    InMux I__194 (
            .O(N__1516),
            .I(N__1513));
    LocalMux I__193 (
            .O(N__1513),
            .I(n12));
    InMux I__192 (
            .O(N__1510),
            .I(n929));
    InMux I__191 (
            .O(N__1507),
            .I(N__1504));
    LocalMux I__190 (
            .O(N__1504),
            .I(n11));
    InMux I__189 (
            .O(N__1501),
            .I(n930));
    InMux I__188 (
            .O(N__1498),
            .I(N__1495));
    LocalMux I__187 (
            .O(N__1495),
            .I(n10));
    InMux I__186 (
            .O(N__1492),
            .I(bfn_13_19_0_));
    InMux I__185 (
            .O(N__1489),
            .I(N__1486));
    LocalMux I__184 (
            .O(N__1486),
            .I(n9));
    InMux I__183 (
            .O(N__1483),
            .I(n932));
    InMux I__182 (
            .O(N__1480),
            .I(N__1477));
    LocalMux I__181 (
            .O(N__1477),
            .I(n8));
    InMux I__180 (
            .O(N__1474),
            .I(n933));
    InMux I__179 (
            .O(N__1471),
            .I(N__1468));
    LocalMux I__178 (
            .O(N__1468),
            .I(n7));
    InMux I__177 (
            .O(N__1465),
            .I(n934));
    InMux I__176 (
            .O(N__1462),
            .I(N__1459));
    LocalMux I__175 (
            .O(N__1459),
            .I(n6));
    InMux I__174 (
            .O(N__1456),
            .I(n935));
    InMux I__173 (
            .O(N__1453),
            .I(n919));
    InMux I__172 (
            .O(N__1450),
            .I(N__1447));
    LocalMux I__171 (
            .O(N__1447),
            .I(n21));
    InMux I__170 (
            .O(N__1444),
            .I(n920));
    InMux I__169 (
            .O(N__1441),
            .I(N__1438));
    LocalMux I__168 (
            .O(N__1438),
            .I(n20));
    InMux I__167 (
            .O(N__1435),
            .I(n921));
    InMux I__166 (
            .O(N__1432),
            .I(N__1429));
    LocalMux I__165 (
            .O(N__1429),
            .I(n19));
    InMux I__164 (
            .O(N__1426),
            .I(n922));
    InMux I__163 (
            .O(N__1423),
            .I(N__1420));
    LocalMux I__162 (
            .O(N__1420),
            .I(n18));
    InMux I__161 (
            .O(N__1417),
            .I(bfn_13_18_0_));
    InMux I__160 (
            .O(N__1414),
            .I(N__1411));
    LocalMux I__159 (
            .O(N__1411),
            .I(n17));
    InMux I__158 (
            .O(N__1408),
            .I(n924));
    InMux I__157 (
            .O(N__1405),
            .I(N__1402));
    LocalMux I__156 (
            .O(N__1402),
            .I(n16));
    InMux I__155 (
            .O(N__1399),
            .I(n925));
    InMux I__154 (
            .O(N__1396),
            .I(N__1393));
    LocalMux I__153 (
            .O(N__1393),
            .I(n15));
    InMux I__152 (
            .O(N__1390),
            .I(n926));
    InMux I__151 (
            .O(N__1387),
            .I(N__1384));
    LocalMux I__150 (
            .O(N__1384),
            .I(n14));
    InMux I__149 (
            .O(N__1381),
            .I(n927));
    InMux I__148 (
            .O(N__1378),
            .I(N__1375));
    LocalMux I__147 (
            .O(N__1375),
            .I(n979));
    InMux I__146 (
            .O(N__1372),
            .I(N__1369));
    LocalMux I__145 (
            .O(N__1369),
            .I(n980));
    IoInMux I__144 (
            .O(N__1366),
            .I(N__1363));
    LocalMux I__143 (
            .O(N__1363),
            .I(N__1360));
    Span4Mux_s2_v I__142 (
            .O(N__1360),
            .I(N__1357));
    Sp12to4 I__141 (
            .O(N__1357),
            .I(N__1354));
    Span12Mux_s11_h I__140 (
            .O(N__1354),
            .I(N__1351));
    Odrv12 I__139 (
            .O(N__1351),
            .I(LED_c));
    InMux I__138 (
            .O(N__1348),
            .I(N__1345));
    LocalMux I__137 (
            .O(N__1345),
            .I(n26));
    InMux I__136 (
            .O(N__1342),
            .I(bfn_13_17_0_));
    InMux I__135 (
            .O(N__1339),
            .I(N__1336));
    LocalMux I__134 (
            .O(N__1336),
            .I(n25));
    InMux I__133 (
            .O(N__1333),
            .I(n916));
    InMux I__132 (
            .O(N__1330),
            .I(N__1327));
    LocalMux I__131 (
            .O(N__1327),
            .I(n24));
    InMux I__130 (
            .O(N__1324),
            .I(n917));
    InMux I__129 (
            .O(N__1321),
            .I(N__1318));
    LocalMux I__128 (
            .O(N__1318),
            .I(n23));
    InMux I__127 (
            .O(N__1315),
            .I(n918));
    InMux I__126 (
            .O(N__1312),
            .I(N__1309));
    LocalMux I__125 (
            .O(N__1309),
            .I(n22));
    IoInMux I__124 (
            .O(N__1306),
            .I(N__1303));
    LocalMux I__123 (
            .O(N__1303),
            .I(N__1300));
    IoSpan4Mux I__122 (
            .O(N__1300),
            .I(N__1297));
    IoSpan4Mux I__121 (
            .O(N__1297),
            .I(N__1294));
    IoSpan4Mux I__120 (
            .O(N__1294),
            .I(N__1291));
    Odrv4 I__119 (
            .O(N__1291),
            .I(CLK_pad_gb_input));
    INV \INVtli.clk_out_66C  (
            .O(\INVtli.clk_out_66C_net ),
            .I(N__2457));
    INV \INVtli.slave_select_65C  (
            .O(\INVtli.slave_select_65C_net ),
            .I(N__2462));
    INV \INVtli.state_i0C  (
            .O(\INVtli.state_i0C_net ),
            .I(N__2456));
    INV \INVtli.bit_counter_134__i2C  (
            .O(\INVtli.bit_counter_134__i2C_net ),
            .I(N__2461));
    INV \INVtli.delay_counter_132_133__i9C  (
            .O(\INVtli.delay_counter_132_133__i9C_net ),
            .I(N__2446));
    INV \INVtli.delay_counter_132_133__i1C  (
            .O(\INVtli.delay_counter_132_133__i1C_net ),
            .I(N__2464));
    INV \INVtli.bit_counter_134__i0C  (
            .O(\INVtli.bit_counter_134__i0C_net ),
            .I(N__2442));
    INV \INVtli.bit_counter_134__i4C  (
            .O(\INVtli.bit_counter_134__i4C_net ),
            .I(N__2419));
    defparam IN_MUX_bfv_15_19_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_15_19_0_ (
            .carryinitin(),
            .carryinitout(bfn_15_19_0_));
    defparam IN_MUX_bfv_15_20_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_15_20_0_ (
            .carryinitin(\tli.n910 ),
            .carryinitout(bfn_15_20_0_));
    defparam IN_MUX_bfv_14_16_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_14_16_0_ (
            .carryinitin(),
            .carryinitout(bfn_14_16_0_));
    defparam IN_MUX_bfv_15_17_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_15_17_0_ (
            .carryinitin(),
            .carryinitout(bfn_15_17_0_));
    defparam IN_MUX_bfv_13_17_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_17_0_ (
            .carryinitin(),
            .carryinitout(bfn_13_17_0_));
    defparam IN_MUX_bfv_13_18_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_18_0_ (
            .carryinitin(n923),
            .carryinitout(bfn_13_18_0_));
    defparam IN_MUX_bfv_13_19_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_19_0_ (
            .carryinitin(n931),
            .carryinitout(bfn_13_19_0_));
    defparam IN_MUX_bfv_13_20_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_20_0_ (
            .carryinitin(n939),
            .carryinitout(bfn_13_20_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__1306),
            .GLOBALBUFFEROUTPUT(CLK_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam i323_4_lut_LC_12_19_2.C_ON=1'b0;
    defparam i323_4_lut_LC_12_19_2.SEQ_MODE=4'b0000;
    defparam i323_4_lut_LC_12_19_2.LUT_INIT=16'b1011101100100000;
    LogicCell40 i323_4_lut_LC_12_19_2 (
            .in0(N__1608),
            .in1(N__1569),
            .in2(N__1591),
            .in3(N__1626),
            .lcout(n979),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i324_4_lut_LC_12_19_3.C_ON=1'b0;
    defparam i324_4_lut_LC_12_19_3.SEQ_MODE=4'b0000;
    defparam i324_4_lut_LC_12_19_3.LUT_INIT=16'b1111100011101100;
    LogicCell40 i324_4_lut_LC_12_19_3 (
            .in0(N__1570),
            .in1(N__1590),
            .in2(N__1630),
            .in3(N__1609),
            .lcout(n980),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i325_3_lut_LC_12_20_2.C_ON=1'b0;
    defparam i325_3_lut_LC_12_20_2.SEQ_MODE=4'b0000;
    defparam i325_3_lut_LC_12_20_2.LUT_INIT=16'b0011001101010101;
    LogicCell40 i325_3_lut_LC_12_20_2 (
            .in0(N__1378),
            .in1(N__1372),
            .in2(_gnd_net_),
            .in3(N__1549),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i0_LC_13_17_0.C_ON=1'b1;
    defparam blink_counter_131__i0_LC_13_17_0.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i0_LC_13_17_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i0_LC_13_17_0 (
            .in0(_gnd_net_),
            .in1(N__1348),
            .in2(_gnd_net_),
            .in3(N__1342),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_13_17_0_),
            .carryout(n916),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i1_LC_13_17_1.C_ON=1'b1;
    defparam blink_counter_131__i1_LC_13_17_1.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i1_LC_13_17_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i1_LC_13_17_1 (
            .in0(_gnd_net_),
            .in1(N__1339),
            .in2(_gnd_net_),
            .in3(N__1333),
            .lcout(n25),
            .ltout(),
            .carryin(n916),
            .carryout(n917),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i2_LC_13_17_2.C_ON=1'b1;
    defparam blink_counter_131__i2_LC_13_17_2.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i2_LC_13_17_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i2_LC_13_17_2 (
            .in0(_gnd_net_),
            .in1(N__1330),
            .in2(_gnd_net_),
            .in3(N__1324),
            .lcout(n24),
            .ltout(),
            .carryin(n917),
            .carryout(n918),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i3_LC_13_17_3.C_ON=1'b1;
    defparam blink_counter_131__i3_LC_13_17_3.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i3_LC_13_17_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i3_LC_13_17_3 (
            .in0(_gnd_net_),
            .in1(N__1321),
            .in2(_gnd_net_),
            .in3(N__1315),
            .lcout(n23),
            .ltout(),
            .carryin(n918),
            .carryout(n919),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i4_LC_13_17_4.C_ON=1'b1;
    defparam blink_counter_131__i4_LC_13_17_4.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i4_LC_13_17_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i4_LC_13_17_4 (
            .in0(_gnd_net_),
            .in1(N__1312),
            .in2(_gnd_net_),
            .in3(N__1453),
            .lcout(n22),
            .ltout(),
            .carryin(n919),
            .carryout(n920),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i5_LC_13_17_5.C_ON=1'b1;
    defparam blink_counter_131__i5_LC_13_17_5.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i5_LC_13_17_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i5_LC_13_17_5 (
            .in0(_gnd_net_),
            .in1(N__1450),
            .in2(_gnd_net_),
            .in3(N__1444),
            .lcout(n21),
            .ltout(),
            .carryin(n920),
            .carryout(n921),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i6_LC_13_17_6.C_ON=1'b1;
    defparam blink_counter_131__i6_LC_13_17_6.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i6_LC_13_17_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i6_LC_13_17_6 (
            .in0(_gnd_net_),
            .in1(N__1441),
            .in2(_gnd_net_),
            .in3(N__1435),
            .lcout(n20),
            .ltout(),
            .carryin(n921),
            .carryout(n922),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i7_LC_13_17_7.C_ON=1'b1;
    defparam blink_counter_131__i7_LC_13_17_7.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i7_LC_13_17_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i7_LC_13_17_7 (
            .in0(_gnd_net_),
            .in1(N__1432),
            .in2(_gnd_net_),
            .in3(N__1426),
            .lcout(n19),
            .ltout(),
            .carryin(n922),
            .carryout(n923),
            .clk(N__1661),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i8_LC_13_18_0.C_ON=1'b1;
    defparam blink_counter_131__i8_LC_13_18_0.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i8_LC_13_18_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i8_LC_13_18_0 (
            .in0(_gnd_net_),
            .in1(N__1423),
            .in2(_gnd_net_),
            .in3(N__1417),
            .lcout(n18),
            .ltout(),
            .carryin(bfn_13_18_0_),
            .carryout(n924),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i9_LC_13_18_1.C_ON=1'b1;
    defparam blink_counter_131__i9_LC_13_18_1.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i9_LC_13_18_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i9_LC_13_18_1 (
            .in0(_gnd_net_),
            .in1(N__1414),
            .in2(_gnd_net_),
            .in3(N__1408),
            .lcout(n17),
            .ltout(),
            .carryin(n924),
            .carryout(n925),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i10_LC_13_18_2.C_ON=1'b1;
    defparam blink_counter_131__i10_LC_13_18_2.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i10_LC_13_18_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i10_LC_13_18_2 (
            .in0(_gnd_net_),
            .in1(N__1405),
            .in2(_gnd_net_),
            .in3(N__1399),
            .lcout(n16),
            .ltout(),
            .carryin(n925),
            .carryout(n926),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i11_LC_13_18_3.C_ON=1'b1;
    defparam blink_counter_131__i11_LC_13_18_3.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i11_LC_13_18_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i11_LC_13_18_3 (
            .in0(_gnd_net_),
            .in1(N__1396),
            .in2(_gnd_net_),
            .in3(N__1390),
            .lcout(n15),
            .ltout(),
            .carryin(n926),
            .carryout(n927),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i12_LC_13_18_4.C_ON=1'b1;
    defparam blink_counter_131__i12_LC_13_18_4.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i12_LC_13_18_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i12_LC_13_18_4 (
            .in0(_gnd_net_),
            .in1(N__1387),
            .in2(_gnd_net_),
            .in3(N__1381),
            .lcout(n14),
            .ltout(),
            .carryin(n927),
            .carryout(n928),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i13_LC_13_18_5.C_ON=1'b1;
    defparam blink_counter_131__i13_LC_13_18_5.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i13_LC_13_18_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i13_LC_13_18_5 (
            .in0(_gnd_net_),
            .in1(N__1525),
            .in2(_gnd_net_),
            .in3(N__1519),
            .lcout(n13),
            .ltout(),
            .carryin(n928),
            .carryout(n929),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i14_LC_13_18_6.C_ON=1'b1;
    defparam blink_counter_131__i14_LC_13_18_6.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i14_LC_13_18_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i14_LC_13_18_6 (
            .in0(_gnd_net_),
            .in1(N__1516),
            .in2(_gnd_net_),
            .in3(N__1510),
            .lcout(n12),
            .ltout(),
            .carryin(n929),
            .carryout(n930),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i15_LC_13_18_7.C_ON=1'b1;
    defparam blink_counter_131__i15_LC_13_18_7.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i15_LC_13_18_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i15_LC_13_18_7 (
            .in0(_gnd_net_),
            .in1(N__1507),
            .in2(_gnd_net_),
            .in3(N__1501),
            .lcout(n11),
            .ltout(),
            .carryin(n930),
            .carryout(n931),
            .clk(N__1662),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i16_LC_13_19_0.C_ON=1'b1;
    defparam blink_counter_131__i16_LC_13_19_0.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i16_LC_13_19_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i16_LC_13_19_0 (
            .in0(_gnd_net_),
            .in1(N__1498),
            .in2(_gnd_net_),
            .in3(N__1492),
            .lcout(n10),
            .ltout(),
            .carryin(bfn_13_19_0_),
            .carryout(n932),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i17_LC_13_19_1.C_ON=1'b1;
    defparam blink_counter_131__i17_LC_13_19_1.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i17_LC_13_19_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i17_LC_13_19_1 (
            .in0(_gnd_net_),
            .in1(N__1489),
            .in2(_gnd_net_),
            .in3(N__1483),
            .lcout(n9),
            .ltout(),
            .carryin(n932),
            .carryout(n933),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i18_LC_13_19_2.C_ON=1'b1;
    defparam blink_counter_131__i18_LC_13_19_2.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i18_LC_13_19_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i18_LC_13_19_2 (
            .in0(_gnd_net_),
            .in1(N__1480),
            .in2(_gnd_net_),
            .in3(N__1474),
            .lcout(n8),
            .ltout(),
            .carryin(n933),
            .carryout(n934),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i19_LC_13_19_3.C_ON=1'b1;
    defparam blink_counter_131__i19_LC_13_19_3.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i19_LC_13_19_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i19_LC_13_19_3 (
            .in0(_gnd_net_),
            .in1(N__1471),
            .in2(_gnd_net_),
            .in3(N__1465),
            .lcout(n7),
            .ltout(),
            .carryin(n934),
            .carryout(n935),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i20_LC_13_19_4.C_ON=1'b1;
    defparam blink_counter_131__i20_LC_13_19_4.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i20_LC_13_19_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i20_LC_13_19_4 (
            .in0(_gnd_net_),
            .in1(N__1462),
            .in2(_gnd_net_),
            .in3(N__1456),
            .lcout(n6),
            .ltout(),
            .carryin(n935),
            .carryout(n936),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i21_LC_13_19_5.C_ON=1'b1;
    defparam blink_counter_131__i21_LC_13_19_5.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i21_LC_13_19_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i21_LC_13_19_5 (
            .in0(_gnd_net_),
            .in1(N__1625),
            .in2(_gnd_net_),
            .in3(N__1612),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n936),
            .carryout(n937),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i22_LC_13_19_6.C_ON=1'b1;
    defparam blink_counter_131__i22_LC_13_19_6.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i22_LC_13_19_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i22_LC_13_19_6 (
            .in0(_gnd_net_),
            .in1(N__1607),
            .in2(_gnd_net_),
            .in3(N__1594),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n937),
            .carryout(n938),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i23_LC_13_19_7.C_ON=1'b1;
    defparam blink_counter_131__i23_LC_13_19_7.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i23_LC_13_19_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i23_LC_13_19_7 (
            .in0(_gnd_net_),
            .in1(N__1586),
            .in2(_gnd_net_),
            .in3(N__1573),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n938),
            .carryout(n939),
            .clk(N__1663),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i24_LC_13_20_0.C_ON=1'b1;
    defparam blink_counter_131__i24_LC_13_20_0.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i24_LC_13_20_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i24_LC_13_20_0 (
            .in0(_gnd_net_),
            .in1(N__1568),
            .in2(_gnd_net_),
            .in3(N__1555),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_13_20_0_),
            .carryout(n940),
            .clk(N__1665),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_131__i25_LC_13_20_1.C_ON=1'b0;
    defparam blink_counter_131__i25_LC_13_20_1.SEQ_MODE=4'b1000;
    defparam blink_counter_131__i25_LC_13_20_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_131__i25_LC_13_20_1 (
            .in0(_gnd_net_),
            .in1(N__1548),
            .in2(_gnd_net_),
            .in3(N__1552),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1665),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.counter_135_136__i1_LC_14_16_0 .C_ON=1'b1;
    defparam \tli.counter_135_136__i1_LC_14_16_0 .SEQ_MODE=4'b1000;
    defparam \tli.counter_135_136__i1_LC_14_16_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.counter_135_136__i1_LC_14_16_0  (
            .in0(_gnd_net_),
            .in1(N__1686),
            .in2(_gnd_net_),
            .in3(N__1537),
            .lcout(\tli.counter_0 ),
            .ltout(),
            .carryin(bfn_14_16_0_),
            .carryout(\tli.n899 ),
            .clk(N__1664),
            .ce(),
            .sr(N__1675));
    defparam \tli.counter_135_136__i2_LC_14_16_1 .C_ON=1'b1;
    defparam \tli.counter_135_136__i2_LC_14_16_1 .SEQ_MODE=4'b1000;
    defparam \tli.counter_135_136__i2_LC_14_16_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.counter_135_136__i2_LC_14_16_1  (
            .in0(_gnd_net_),
            .in1(N__1738),
            .in2(_gnd_net_),
            .in3(N__1534),
            .lcout(\tli.counter_1 ),
            .ltout(),
            .carryin(\tli.n899 ),
            .carryout(\tli.n900 ),
            .clk(N__1664),
            .ce(),
            .sr(N__1675));
    defparam \tli.counter_135_136__i3_LC_14_16_2 .C_ON=1'b1;
    defparam \tli.counter_135_136__i3_LC_14_16_2 .SEQ_MODE=4'b1000;
    defparam \tli.counter_135_136__i3_LC_14_16_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.counter_135_136__i3_LC_14_16_2  (
            .in0(_gnd_net_),
            .in1(N__1726),
            .in2(_gnd_net_),
            .in3(N__1531),
            .lcout(\tli.counter_2 ),
            .ltout(),
            .carryin(\tli.n900 ),
            .carryout(\tli.n901 ),
            .clk(N__1664),
            .ce(),
            .sr(N__1675));
    defparam \tli.counter_135_136__i4_LC_14_16_3 .C_ON=1'b1;
    defparam \tli.counter_135_136__i4_LC_14_16_3 .SEQ_MODE=4'b1000;
    defparam \tli.counter_135_136__i4_LC_14_16_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.counter_135_136__i4_LC_14_16_3  (
            .in0(_gnd_net_),
            .in1(N__1714),
            .in2(_gnd_net_),
            .in3(N__1528),
            .lcout(\tli.counter_3 ),
            .ltout(),
            .carryin(\tli.n901 ),
            .carryout(\tli.n902 ),
            .clk(N__1664),
            .ce(),
            .sr(N__1675));
    defparam \tli.counter_135_136__i5_LC_14_16_4 .C_ON=1'b0;
    defparam \tli.counter_135_136__i5_LC_14_16_4 .SEQ_MODE=4'b1000;
    defparam \tli.counter_135_136__i5_LC_14_16_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.counter_135_136__i5_LC_14_16_4  (
            .in0(_gnd_net_),
            .in1(N__1702),
            .in2(_gnd_net_),
            .in3(N__1741),
            .lcout(\tli.counter_4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1664),
            .ce(),
            .sr(N__1675));
    defparam CONSTANT_ONE_LUT4_LC_14_17_3.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_14_17_3.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_14_17_3.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_14_17_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i2_2_lut_adj_4_LC_15_16_3 .C_ON=1'b0;
    defparam \tli.i2_2_lut_adj_4_LC_15_16_3 .SEQ_MODE=4'b0000;
    defparam \tli.i2_2_lut_adj_4_LC_15_16_3 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \tli.i2_2_lut_adj_4_LC_15_16_3  (
            .in0(_gnd_net_),
            .in1(N__1737),
            .in2(_gnd_net_),
            .in3(N__1725),
            .lcout(),
            .ltout(\tli.n6_adj_237_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i154_4_lut_LC_15_16_4 .C_ON=1'b0;
    defparam \tli.i154_4_lut_LC_15_16_4 .SEQ_MODE=4'b0000;
    defparam \tli.i154_4_lut_LC_15_16_4 .LUT_INIT=16'b1100110011001000;
    LogicCell40 \tli.i154_4_lut_LC_15_16_4  (
            .in0(N__1713),
            .in1(N__1701),
            .in2(N__1690),
            .in3(N__1687),
            .lcout(\tli.clk_slow_N_43 ),
            .ltout(\tli.clk_slow_N_43_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.clk_slow_62_LC_15_16_5 .C_ON=1'b0;
    defparam \tli.clk_slow_62_LC_15_16_5 .SEQ_MODE=4'b1000;
    defparam \tli.clk_slow_62_LC_15_16_5 .LUT_INIT=16'b0000111111110000;
    LogicCell40 \tli.clk_slow_62_LC_15_16_5  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__1669),
            .in3(N__2399),
            .lcout(\tli.clk_slow ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1666),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134_add_4_2_lut_LC_15_17_0 .C_ON=1'b1;
    defparam \tli.bit_counter_134_add_4_2_lut_LC_15_17_0 .SEQ_MODE=4'b0000;
    defparam \tli.bit_counter_134_add_4_2_lut_LC_15_17_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.bit_counter_134_add_4_2_lut_LC_15_17_0  (
            .in0(_gnd_net_),
            .in1(N__1908),
            .in2(_gnd_net_),
            .in3(N__1642),
            .lcout(\tli.n45 ),
            .ltout(),
            .carryin(bfn_15_17_0_),
            .carryout(\tli.n892 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134_add_4_3_lut_LC_15_17_1 .C_ON=1'b1;
    defparam \tli.bit_counter_134_add_4_3_lut_LC_15_17_1 .SEQ_MODE=4'b0000;
    defparam \tli.bit_counter_134_add_4_3_lut_LC_15_17_1 .LUT_INIT=16'b1000001000101000;
    LogicCell40 \tli.bit_counter_134_add_4_3_lut_LC_15_17_1  (
            .in0(N__2126),
            .in1(N__1956),
            .in2(N__1852),
            .in3(N__1639),
            .lcout(\tli.n986 ),
            .ltout(),
            .carryin(\tli.n892 ),
            .carryout(\tli.n893 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134_add_4_4_lut_LC_15_17_2 .C_ON=1'b1;
    defparam \tli.bit_counter_134_add_4_4_lut_LC_15_17_2 .SEQ_MODE=4'b0000;
    defparam \tli.bit_counter_134_add_4_4_lut_LC_15_17_2 .LUT_INIT=16'b1000001000101000;
    LogicCell40 \tli.bit_counter_134_add_4_4_lut_LC_15_17_2  (
            .in0(N__2128),
            .in1(N__1945),
            .in2(N__1850),
            .in3(N__1636),
            .lcout(\tli.n985 ),
            .ltout(),
            .carryin(\tli.n893 ),
            .carryout(\tli.n894 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134_add_4_5_lut_LC_15_17_3 .C_ON=1'b1;
    defparam \tli.bit_counter_134_add_4_5_lut_LC_15_17_3 .SEQ_MODE=4'b0000;
    defparam \tli.bit_counter_134_add_4_5_lut_LC_15_17_3 .LUT_INIT=16'b1000001000101000;
    LogicCell40 \tli.bit_counter_134_add_4_5_lut_LC_15_17_3  (
            .in0(N__2127),
            .in1(N__1841),
            .in2(N__1927),
            .in3(N__1633),
            .lcout(\tli.n984 ),
            .ltout(),
            .carryin(\tli.n894 ),
            .carryout(\tli.n895 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134__i4_LC_15_17_4 .C_ON=1'b1;
    defparam \tli.bit_counter_134__i4_LC_15_17_4 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i4_LC_15_17_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.bit_counter_134__i4_LC_15_17_4  (
            .in0(_gnd_net_),
            .in1(N__1779),
            .in2(N__1848),
            .in3(N__1861),
            .lcout(\tli.bit_counter_4 ),
            .ltout(),
            .carryin(\tli.n895 ),
            .carryout(\tli.n896 ),
            .clk(\INVtli.bit_counter_134__i4C_net ),
            .ce(N__2155),
            .sr(N__2161));
    defparam \tli.bit_counter_134__i5_LC_15_17_5 .C_ON=1'b1;
    defparam \tli.bit_counter_134__i5_LC_15_17_5 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i5_LC_15_17_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.bit_counter_134__i5_LC_15_17_5  (
            .in0(_gnd_net_),
            .in1(N__1794),
            .in2(N__1851),
            .in3(N__1858),
            .lcout(\tli.bit_counter_5 ),
            .ltout(),
            .carryin(\tli.n896 ),
            .carryout(\tli.n897 ),
            .clk(\INVtli.bit_counter_134__i4C_net ),
            .ce(N__2155),
            .sr(N__2161));
    defparam \tli.bit_counter_134__i6_LC_15_17_6 .C_ON=1'b1;
    defparam \tli.bit_counter_134__i6_LC_15_17_6 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i6_LC_15_17_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.bit_counter_134__i6_LC_15_17_6  (
            .in0(_gnd_net_),
            .in1(N__1767),
            .in2(N__1849),
            .in3(N__1855),
            .lcout(\tli.bit_counter_6 ),
            .ltout(),
            .carryin(\tli.n897 ),
            .carryout(\tli.n898 ),
            .clk(\INVtli.bit_counter_134__i4C_net ),
            .ce(N__2155),
            .sr(N__2161));
    defparam \tli.bit_counter_134__i7_LC_15_17_7 .C_ON=1'b0;
    defparam \tli.bit_counter_134__i7_LC_15_17_7 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i7_LC_15_17_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \tli.bit_counter_134__i7_LC_15_17_7  (
            .in0(N__1806),
            .in1(N__1837),
            .in2(_gnd_net_),
            .in3(N__1810),
            .lcout(\tli.bit_counter_7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.bit_counter_134__i4C_net ),
            .ce(N__2155),
            .sr(N__2161));
    defparam \tli.i6_4_lut_LC_15_18_4 .C_ON=1'b0;
    defparam \tli.i6_4_lut_LC_15_18_4 .SEQ_MODE=4'b0000;
    defparam \tli.i6_4_lut_LC_15_18_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i6_4_lut_LC_15_18_4  (
            .in0(N__1807),
            .in1(N__1795),
            .in2(N__1783),
            .in3(N__1768),
            .lcout(\tli.n14 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134__i0_LC_15_18_5 .C_ON=1'b0;
    defparam \tli.bit_counter_134__i0_LC_15_18_5 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i0_LC_15_18_5 .LUT_INIT=16'b0100010010101010;
    LogicCell40 \tli.bit_counter_134__i0_LC_15_18_5  (
            .in0(N__2231),
            .in1(N__1756),
            .in2(_gnd_net_),
            .in3(N__2310),
            .lcout(\tli.bit_counter_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.bit_counter_134__i0C_net ),
            .ce(N__2147),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134__i1_LC_15_18_6 .C_ON=1'b0;
    defparam \tli.bit_counter_134__i1_LC_15_18_6 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i1_LC_15_18_6 .LUT_INIT=16'b1101110110001000;
    LogicCell40 \tli.bit_counter_134__i1_LC_15_18_6  (
            .in0(N__2311),
            .in1(N__1750),
            .in2(_gnd_net_),
            .in3(N__2232),
            .lcout(\tli.bit_counter_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.bit_counter_134__i0C_net ),
            .ce(N__2147),
            .sr(_gnd_net_));
    defparam \tli.delay_counter_132_133__i1_LC_15_19_0 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i1_LC_15_19_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i1_LC_15_19_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i1_LC_15_19_0  (
            .in0(_gnd_net_),
            .in1(N__2073),
            .in2(_gnd_net_),
            .in3(N__1744),
            .lcout(\tli.delay_counter_0 ),
            .ltout(),
            .carryin(bfn_15_19_0_),
            .carryout(\tli.n903 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i2_LC_15_19_1 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i2_LC_15_19_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i2_LC_15_19_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i2_LC_15_19_1  (
            .in0(_gnd_net_),
            .in1(N__2100),
            .in2(_gnd_net_),
            .in3(N__1888),
            .lcout(\tli.delay_counter_1 ),
            .ltout(),
            .carryin(\tli.n903 ),
            .carryout(\tli.n904 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i3_LC_15_19_2 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i3_LC_15_19_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i3_LC_15_19_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i3_LC_15_19_2  (
            .in0(_gnd_net_),
            .in1(N__2112),
            .in2(_gnd_net_),
            .in3(N__1885),
            .lcout(\tli.delay_counter_2 ),
            .ltout(),
            .carryin(\tli.n904 ),
            .carryout(\tli.n905 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i4_LC_15_19_3 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i4_LC_15_19_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i4_LC_15_19_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i4_LC_15_19_3  (
            .in0(_gnd_net_),
            .in1(N__2085),
            .in2(_gnd_net_),
            .in3(N__1882),
            .lcout(\tli.delay_counter_3 ),
            .ltout(),
            .carryin(\tli.n905 ),
            .carryout(\tli.n906 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i5_LC_15_19_4 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i5_LC_15_19_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i5_LC_15_19_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i5_LC_15_19_4  (
            .in0(_gnd_net_),
            .in1(N__2046),
            .in2(_gnd_net_),
            .in3(N__1879),
            .lcout(\tli.delay_counter_4 ),
            .ltout(),
            .carryin(\tli.n906 ),
            .carryout(\tli.n907 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i6_LC_15_19_5 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i6_LC_15_19_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i6_LC_15_19_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i6_LC_15_19_5  (
            .in0(_gnd_net_),
            .in1(N__2025),
            .in2(_gnd_net_),
            .in3(N__1876),
            .lcout(\tli.delay_counter_5 ),
            .ltout(),
            .carryin(\tli.n907 ),
            .carryout(\tli.n908 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i7_LC_15_19_6 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i7_LC_15_19_6 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i7_LC_15_19_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i7_LC_15_19_6  (
            .in0(_gnd_net_),
            .in1(N__2013),
            .in2(_gnd_net_),
            .in3(N__1873),
            .lcout(\tli.delay_counter_6 ),
            .ltout(),
            .carryin(\tli.n908 ),
            .carryout(\tli.n909 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i8_LC_15_19_7 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i8_LC_15_19_7 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i8_LC_15_19_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i8_LC_15_19_7  (
            .in0(_gnd_net_),
            .in1(N__2061),
            .in2(_gnd_net_),
            .in3(N__1870),
            .lcout(\tli.delay_counter_7 ),
            .ltout(),
            .carryin(\tli.n909 ),
            .carryout(\tli.n910 ),
            .clk(\INVtli.delay_counter_132_133__i1C_net ),
            .ce(),
            .sr(N__2500));
    defparam \tli.delay_counter_132_133__i9_LC_15_20_0 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i9_LC_15_20_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i9_LC_15_20_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i9_LC_15_20_0  (
            .in0(_gnd_net_),
            .in1(N__2550),
            .in2(_gnd_net_),
            .in3(N__1867),
            .lcout(\tli.delay_counter_8 ),
            .ltout(),
            .carryin(bfn_15_20_0_),
            .carryout(\tli.n911 ),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.delay_counter_132_133__i10_LC_15_20_1 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i10_LC_15_20_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i10_LC_15_20_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i10_LC_15_20_1  (
            .in0(_gnd_net_),
            .in1(N__2583),
            .in2(_gnd_net_),
            .in3(N__1864),
            .lcout(\tli.delay_counter_9 ),
            .ltout(),
            .carryin(\tli.n911 ),
            .carryout(\tli.n912 ),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.delay_counter_132_133__i11_LC_15_20_2 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i11_LC_15_20_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i11_LC_15_20_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i11_LC_15_20_2  (
            .in0(_gnd_net_),
            .in1(N__2562),
            .in2(_gnd_net_),
            .in3(N__1984),
            .lcout(\tli.delay_counter_10 ),
            .ltout(),
            .carryin(\tli.n912 ),
            .carryout(\tli.n913 ),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.delay_counter_132_133__i12_LC_15_20_3 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i12_LC_15_20_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i12_LC_15_20_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i12_LC_15_20_3  (
            .in0(_gnd_net_),
            .in1(N__2511),
            .in2(_gnd_net_),
            .in3(N__1981),
            .lcout(\tli.delay_counter_11 ),
            .ltout(),
            .carryin(\tli.n913 ),
            .carryout(\tli.n914 ),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.delay_counter_132_133__i13_LC_15_20_4 .C_ON=1'b1;
    defparam \tli.delay_counter_132_133__i13_LC_15_20_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i13_LC_15_20_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_132_133__i13_LC_15_20_4  (
            .in0(_gnd_net_),
            .in1(N__2538),
            .in2(_gnd_net_),
            .in3(N__1978),
            .lcout(\tli.delay_counter_12 ),
            .ltout(),
            .carryin(\tli.n914 ),
            .carryout(\tli.n915 ),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.delay_counter_132_133__i14_LC_15_20_5 .C_ON=1'b0;
    defparam \tli.delay_counter_132_133__i14_LC_15_20_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_132_133__i14_LC_15_20_5 .LUT_INIT=16'b1010010101011010;
    LogicCell40 \tli.delay_counter_132_133__i14_LC_15_20_5  (
            .in0(N__2526),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1975),
            .lcout(\tli.delay_counter_13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.delay_counter_132_133__i9C_net ),
            .ce(),
            .sr(N__2495));
    defparam \tli.bit_counter_134__i2_LC_16_17_0 .C_ON=1'b0;
    defparam \tli.bit_counter_134__i2_LC_16_17_0 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i2_LC_16_17_0 .LUT_INIT=16'b1101110110001000;
    LogicCell40 \tli.bit_counter_134__i2_LC_16_17_0  (
            .in0(N__2312),
            .in1(N__1972),
            .in2(_gnd_net_),
            .in3(N__2233),
            .lcout(\tli.bit_counter_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.bit_counter_134__i2C_net ),
            .ce(N__2154),
            .sr(_gnd_net_));
    defparam \tli.bit_counter_134__i3_LC_16_17_1 .C_ON=1'b0;
    defparam \tli.bit_counter_134__i3_LC_16_17_1 .SEQ_MODE=4'b1000;
    defparam \tli.bit_counter_134__i3_LC_16_17_1 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \tli.bit_counter_134__i3_LC_16_17_1  (
            .in0(N__2234),
            .in1(N__1963),
            .in2(_gnd_net_),
            .in3(N__2313),
            .lcout(\tli.bit_counter_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.bit_counter_134__i2C_net ),
            .ce(N__2154),
            .sr(_gnd_net_));
    defparam \tli.i2_2_lut_adj_5_LC_16_17_2 .C_ON=1'b0;
    defparam \tli.i2_2_lut_adj_5_LC_16_17_2 .SEQ_MODE=4'b0000;
    defparam \tli.i2_2_lut_adj_5_LC_16_17_2 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \tli.i2_2_lut_adj_5_LC_16_17_2  (
            .in0(N__1957),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1944),
            .lcout(\tli.n10 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i7_4_lut_LC_16_18_1 .C_ON=1'b0;
    defparam \tli.i7_4_lut_LC_16_18_1 .SEQ_MODE=4'b0000;
    defparam \tli.i7_4_lut_LC_16_18_1 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i7_4_lut_LC_16_18_1  (
            .in0(N__1933),
            .in1(N__1926),
            .in2(N__1912),
            .in3(N__1897),
            .lcout(\tli.n15 ),
            .ltout(\tli.n15_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.state_i0_LC_16_18_2 .C_ON=1'b0;
    defparam \tli.state_i0_LC_16_18_2 .SEQ_MODE=4'b1001;
    defparam \tli.state_i0_LC_16_18_2 .LUT_INIT=16'b0000000000001111;
    LogicCell40 \tli.state_i0_LC_16_18_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__1891),
            .in3(N__2227),
            .lcout(\tli.state_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.state_i0C_net ),
            .ce(N__2035),
            .sr(N__1996));
    defparam \tli.i246_2_lut_3_lut_2_lut_LC_16_18_4 .C_ON=1'b0;
    defparam \tli.i246_2_lut_3_lut_2_lut_LC_16_18_4 .SEQ_MODE=4'b0000;
    defparam \tli.i246_2_lut_3_lut_2_lut_LC_16_18_4 .LUT_INIT=16'b0101010100000000;
    LogicCell40 \tli.i246_2_lut_3_lut_2_lut_LC_16_18_4  (
            .in0(N__2308),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2226),
            .lcout(\tli.n852 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i235_2_lut_LC_16_18_5 .C_ON=1'b0;
    defparam \tli.i235_2_lut_LC_16_18_5 .SEQ_MODE=4'b0000;
    defparam \tli.i235_2_lut_LC_16_18_5 .LUT_INIT=16'b0101010110101010;
    LogicCell40 \tli.i235_2_lut_LC_16_18_5  (
            .in0(N__2225),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2307),
            .lcout(\tli.n839 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i121_1_lut_LC_16_18_6 .C_ON=1'b0;
    defparam \tli.i121_1_lut_LC_16_18_6 .SEQ_MODE=4'b0000;
    defparam \tli.i121_1_lut_LC_16_18_6 .LUT_INIT=16'b0000000011111111;
    LogicCell40 \tli.i121_1_lut_LC_16_18_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2224),
            .lcout(\tli.n569 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.state_i1_LC_16_18_7 .C_ON=1'b0;
    defparam \tli.state_i1_LC_16_18_7 .SEQ_MODE=4'b1000;
    defparam \tli.state_i1_LC_16_18_7 .LUT_INIT=16'b0000010111110101;
    LogicCell40 \tli.state_i1_LC_16_18_7  (
            .in0(N__2260),
            .in1(_gnd_net_),
            .in2(N__2241),
            .in3(N__2309),
            .lcout(\tli.state_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.state_i0C_net ),
            .ce(N__2035),
            .sr(N__1996));
    defparam \tli.i3_4_lut_LC_16_19_0 .C_ON=1'b0;
    defparam \tli.i3_4_lut_LC_16_19_0 .SEQ_MODE=4'b0000;
    defparam \tli.i3_4_lut_LC_16_19_0 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i3_4_lut_LC_16_19_0  (
            .in0(N__2113),
            .in1(N__2101),
            .in2(N__2089),
            .in3(N__2074),
            .lcout(),
            .ltout(\tli.n978_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i3_4_lut_adj_2_LC_16_19_1 .C_ON=1'b0;
    defparam \tli.i3_4_lut_adj_2_LC_16_19_1 .SEQ_MODE=4'b0000;
    defparam \tli.i3_4_lut_adj_2_LC_16_19_1 .LUT_INIT=16'b1111111011101110;
    LogicCell40 \tli.i3_4_lut_adj_2_LC_16_19_1  (
            .in0(N__2002),
            .in1(N__2062),
            .in2(N__2050),
            .in3(N__2047),
            .lcout(\tli.n977 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i1_2_lut_4_lut_LC_16_19_4 .C_ON=1'b0;
    defparam \tli.i1_2_lut_4_lut_LC_16_19_4 .SEQ_MODE=4'b0000;
    defparam \tli.i1_2_lut_4_lut_LC_16_19_4 .LUT_INIT=16'b1111111111011100;
    LogicCell40 \tli.i1_2_lut_4_lut_LC_16_19_4  (
            .in0(N__2262),
            .in1(N__2491),
            .in2(N__2323),
            .in3(N__2236),
            .lcout(\tli.n833 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i2_2_lut_LC_16_19_5 .C_ON=1'b0;
    defparam \tli.i2_2_lut_LC_16_19_5 .SEQ_MODE=4'b0000;
    defparam \tli.i2_2_lut_LC_16_19_5 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \tli.i2_2_lut_LC_16_19_5  (
            .in0(_gnd_net_),
            .in1(N__2026),
            .in2(_gnd_net_),
            .in3(N__2014),
            .lcout(\tli.n6 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i244_2_lut_4_lut_LC_16_19_7 .C_ON=1'b0;
    defparam \tli.i244_2_lut_4_lut_LC_16_19_7 .SEQ_MODE=4'b0000;
    defparam \tli.i244_2_lut_4_lut_LC_16_19_7 .LUT_INIT=16'b0000000011010000;
    LogicCell40 \tli.i244_2_lut_4_lut_LC_16_19_7  (
            .in0(N__2318),
            .in1(N__2263),
            .in2(N__2499),
            .in3(N__2242),
            .lcout(\tli.n850 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i3_4_lut_adj_3_LC_16_20_0 .C_ON=1'b0;
    defparam \tli.i3_4_lut_adj_3_LC_16_20_0 .SEQ_MODE=4'b0000;
    defparam \tli.i3_4_lut_adj_3_LC_16_20_0 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \tli.i3_4_lut_adj_3_LC_16_20_0  (
            .in0(N__2584),
            .in1(N__2572),
            .in2(N__2566),
            .in3(N__2551),
            .lcout(),
            .ltout(\tli.n966_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i159_4_lut_LC_16_20_1 .C_ON=1'b0;
    defparam \tli.i159_4_lut_LC_16_20_1 .SEQ_MODE=4'b0000;
    defparam \tli.i159_4_lut_LC_16_20_1 .LUT_INIT=16'b1100110011001000;
    LogicCell40 \tli.i159_4_lut_LC_16_20_1  (
            .in0(N__2539),
            .in1(N__2527),
            .in2(N__2515),
            .in3(N__2512),
            .lcout(\tli.delay_counter_15__N_124 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi_clk_I_0_i1_3_lut_LC_17_17_2 .C_ON=1'b0;
    defparam \tli.spi_clk_I_0_i1_3_lut_LC_17_17_2 .SEQ_MODE=4'b0000;
    defparam \tli.spi_clk_I_0_i1_3_lut_LC_17_17_2 .LUT_INIT=16'b1110111000000000;
    LogicCell40 \tli.spi_clk_I_0_i1_3_lut_LC_17_17_2  (
            .in0(N__2337),
            .in1(N__2463),
            .in2(_gnd_net_),
            .in3(N__2175),
            .lcout(CS_CLK_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.slave_select_65_LC_17_17_7 .C_ON=1'b0;
    defparam \tli.slave_select_65_LC_17_17_7 .SEQ_MODE=4'b1000;
    defparam \tli.slave_select_65_LC_17_17_7 .LUT_INIT=16'b1100110001010101;
    LogicCell40 \tli.slave_select_65_LC_17_17_7  (
            .in0(N__2240),
            .in1(N__2336),
            .in2(_gnd_net_),
            .in3(N__2319),
            .lcout(CS_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.slave_select_65C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.clk_out_66_LC_17_18_6 .C_ON=1'b0;
    defparam \tli.clk_out_66_LC_17_18_6 .SEQ_MODE=4'b1000;
    defparam \tli.clk_out_66_LC_17_18_6 .LUT_INIT=16'b1111010111010000;
    LogicCell40 \tli.clk_out_66_LC_17_18_6  (
            .in0(N__2314),
            .in1(N__2261),
            .in2(N__2176),
            .in3(N__2235),
            .lcout(\tli.clk_out ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVtli.clk_out_66C_net ),
            .ce(),
            .sr(_gnd_net_));
endmodule // TinyFPGA_B
