// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Jan 28 2020 14:30:54

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
    output SCL;
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

    wire N__2890;
    wire N__2889;
    wire N__2888;
    wire N__2881;
    wire N__2880;
    wire N__2879;
    wire N__2872;
    wire N__2871;
    wire N__2870;
    wire N__2863;
    wire N__2862;
    wire N__2861;
    wire N__2854;
    wire N__2853;
    wire N__2852;
    wire N__2845;
    wire N__2844;
    wire N__2843;
    wire N__2836;
    wire N__2835;
    wire N__2834;
    wire N__2827;
    wire N__2826;
    wire N__2825;
    wire N__2818;
    wire N__2817;
    wire N__2816;
    wire N__2809;
    wire N__2808;
    wire N__2807;
    wire N__2800;
    wire N__2799;
    wire N__2798;
    wire N__2791;
    wire N__2790;
    wire N__2789;
    wire N__2782;
    wire N__2781;
    wire N__2780;
    wire N__2773;
    wire N__2772;
    wire N__2771;
    wire N__2764;
    wire N__2763;
    wire N__2762;
    wire N__2755;
    wire N__2754;
    wire N__2753;
    wire N__2736;
    wire N__2735;
    wire N__2732;
    wire N__2729;
    wire N__2724;
    wire N__2721;
    wire N__2718;
    wire N__2717;
    wire N__2714;
    wire N__2711;
    wire N__2708;
    wire N__2703;
    wire N__2700;
    wire N__2699;
    wire N__2696;
    wire N__2693;
    wire N__2688;
    wire N__2685;
    wire N__2682;
    wire N__2679;
    wire N__2678;
    wire N__2675;
    wire N__2672;
    wire N__2669;
    wire N__2664;
    wire N__2663;
    wire N__2660;
    wire N__2657;
    wire N__2656;
    wire N__2651;
    wire N__2650;
    wire N__2647;
    wire N__2644;
    wire N__2641;
    wire N__2634;
    wire N__2631;
    wire N__2630;
    wire N__2627;
    wire N__2626;
    wire N__2623;
    wire N__2622;
    wire N__2621;
    wire N__2620;
    wire N__2619;
    wire N__2618;
    wire N__2617;
    wire N__2616;
    wire N__2613;
    wire N__2610;
    wire N__2607;
    wire N__2604;
    wire N__2601;
    wire N__2600;
    wire N__2599;
    wire N__2596;
    wire N__2593;
    wire N__2592;
    wire N__2591;
    wire N__2590;
    wire N__2589;
    wire N__2586;
    wire N__2583;
    wire N__2580;
    wire N__2579;
    wire N__2576;
    wire N__2569;
    wire N__2564;
    wire N__2553;
    wire N__2540;
    wire N__2529;
    wire N__2526;
    wire N__2523;
    wire N__2520;
    wire N__2517;
    wire N__2516;
    wire N__2515;
    wire N__2512;
    wire N__2509;
    wire N__2506;
    wire N__2499;
    wire N__2496;
    wire N__2493;
    wire N__2492;
    wire N__2491;
    wire N__2490;
    wire N__2489;
    wire N__2488;
    wire N__2487;
    wire N__2486;
    wire N__2485;
    wire N__2484;
    wire N__2483;
    wire N__2482;
    wire N__2481;
    wire N__2454;
    wire N__2451;
    wire N__2448;
    wire N__2445;
    wire N__2444;
    wire N__2443;
    wire N__2442;
    wire N__2439;
    wire N__2432;
    wire N__2429;
    wire N__2426;
    wire N__2423;
    wire N__2420;
    wire N__2415;
    wire N__2414;
    wire N__2411;
    wire N__2408;
    wire N__2403;
    wire N__2400;
    wire N__2399;
    wire N__2396;
    wire N__2393;
    wire N__2388;
    wire N__2385;
    wire N__2384;
    wire N__2381;
    wire N__2378;
    wire N__2373;
    wire N__2370;
    wire N__2369;
    wire N__2366;
    wire N__2363;
    wire N__2358;
    wire N__2355;
    wire N__2354;
    wire N__2351;
    wire N__2348;
    wire N__2343;
    wire N__2340;
    wire N__2339;
    wire N__2336;
    wire N__2333;
    wire N__2328;
    wire N__2325;
    wire N__2324;
    wire N__2321;
    wire N__2318;
    wire N__2315;
    wire N__2310;
    wire N__2307;
    wire N__2306;
    wire N__2303;
    wire N__2300;
    wire N__2297;
    wire N__2292;
    wire N__2289;
    wire N__2288;
    wire N__2285;
    wire N__2282;
    wire N__2279;
    wire N__2274;
    wire N__2271;
    wire N__2270;
    wire N__2267;
    wire N__2264;
    wire N__2259;
    wire N__2256;
    wire N__2255;
    wire N__2252;
    wire N__2249;
    wire N__2244;
    wire N__2241;
    wire N__2240;
    wire N__2237;
    wire N__2234;
    wire N__2229;
    wire N__2226;
    wire N__2223;
    wire N__2222;
    wire N__2219;
    wire N__2216;
    wire N__2211;
    wire N__2208;
    wire N__2207;
    wire N__2204;
    wire N__2201;
    wire N__2196;
    wire N__2193;
    wire N__2192;
    wire N__2189;
    wire N__2186;
    wire N__2183;
    wire N__2178;
    wire N__2175;
    wire N__2174;
    wire N__2171;
    wire N__2168;
    wire N__2163;
    wire N__2160;
    wire N__2159;
    wire N__2156;
    wire N__2153;
    wire N__2148;
    wire N__2145;
    wire N__2144;
    wire N__2141;
    wire N__2138;
    wire N__2133;
    wire N__2130;
    wire N__2129;
    wire N__2126;
    wire N__2123;
    wire N__2118;
    wire N__2115;
    wire N__2114;
    wire N__2111;
    wire N__2108;
    wire N__2103;
    wire N__2100;
    wire N__2099;
    wire N__2096;
    wire N__2093;
    wire N__2088;
    wire N__2085;
    wire N__2084;
    wire N__2081;
    wire N__2078;
    wire N__2075;
    wire N__2070;
    wire N__2067;
    wire N__2066;
    wire N__2063;
    wire N__2060;
    wire N__2057;
    wire N__2052;
    wire N__2049;
    wire N__2048;
    wire N__2045;
    wire N__2042;
    wire N__2037;
    wire N__2034;
    wire N__2031;
    wire N__2028;
    wire N__2025;
    wire N__2022;
    wire N__2019;
    wire N__2016;
    wire N__2013;
    wire N__2010;
    wire N__2007;
    wire N__2004;
    wire N__2001;
    wire N__1998;
    wire N__1995;
    wire N__1992;
    wire N__1991;
    wire N__1988;
    wire N__1985;
    wire N__1980;
    wire N__1977;
    wire N__1976;
    wire N__1973;
    wire N__1970;
    wire N__1965;
    wire N__1962;
    wire N__1961;
    wire N__1958;
    wire N__1955;
    wire N__1950;
    wire N__1947;
    wire N__1944;
    wire N__1941;
    wire N__1938;
    wire N__1935;
    wire N__1932;
    wire N__1929;
    wire N__1926;
    wire N__1923;
    wire N__1920;
    wire N__1917;
    wire N__1916;
    wire N__1911;
    wire N__1908;
    wire N__1905;
    wire N__1902;
    wire N__1899;
    wire N__1896;
    wire N__1893;
    wire N__1890;
    wire N__1887;
    wire N__1884;
    wire N__1881;
    wire N__1878;
    wire N__1875;
    wire N__1872;
    wire N__1869;
    wire N__1866;
    wire N__1863;
    wire N__1860;
    wire N__1857;
    wire N__1854;
    wire N__1851;
    wire N__1848;
    wire N__1847;
    wire N__1842;
    wire N__1839;
    wire N__1836;
    wire N__1833;
    wire N__1830;
    wire N__1827;
    wire N__1824;
    wire N__1823;
    wire N__1822;
    wire N__1817;
    wire N__1814;
    wire N__1809;
    wire N__1808;
    wire N__1805;
    wire N__1800;
    wire N__1799;
    wire N__1796;
    wire N__1793;
    wire N__1788;
    wire N__1785;
    wire N__1784;
    wire N__1783;
    wire N__1776;
    wire N__1773;
    wire N__1772;
    wire N__1771;
    wire N__1766;
    wire N__1763;
    wire N__1758;
    wire N__1755;
    wire N__1752;
    wire N__1749;
    wire N__1746;
    wire N__1743;
    wire N__1740;
    wire N__1737;
    wire N__1734;
    wire N__1731;
    wire N__1728;
    wire N__1725;
    wire N__1722;
    wire N__1719;
    wire N__1716;
    wire N__1713;
    wire N__1710;
    wire N__1707;
    wire N__1704;
    wire N__1701;
    wire N__1698;
    wire N__1695;
    wire N__1692;
    wire N__1689;
    wire N__1686;
    wire N__1683;
    wire N__1680;
    wire N__1677;
    wire N__1674;
    wire N__1671;
    wire N__1668;
    wire N__1665;
    wire N__1662;
    wire N__1659;
    wire N__1656;
    wire N__1653;
    wire N__1650;
    wire N__1647;
    wire N__1644;
    wire N__1641;
    wire N__1638;
    wire N__1635;
    wire N__1632;
    wire N__1629;
    wire N__1626;
    wire N__1623;
    wire N__1620;
    wire N__1617;
    wire N__1614;
    wire N__1611;
    wire N__1608;
    wire N__1605;
    wire N__1602;
    wire N__1599;
    wire N__1596;
    wire N__1595;
    wire N__1594;
    wire N__1587;
    wire N__1584;
    wire N__1583;
    wire N__1582;
    wire N__1581;
    wire N__1572;
    wire N__1569;
    wire N__1568;
    wire N__1565;
    wire N__1560;
    wire N__1557;
    wire N__1556;
    wire N__1555;
    wire N__1554;
    wire N__1553;
    wire N__1542;
    wire N__1539;
    wire N__1536;
    wire N__1533;
    wire N__1530;
    wire N__1527;
    wire N__1524;
    wire N__1521;
    wire N__1518;
    wire N__1515;
    wire N__1512;
    wire N__1509;
    wire N__1506;
    wire N__1503;
    wire N__1500;
    wire N__1497;
    wire N__1494;
    wire N__1491;
    wire N__1488;
    wire N__1485;
    wire N__1484;
    wire N__1479;
    wire N__1476;
    wire N__1473;
    wire N__1470;
    wire N__1469;
    wire N__1466;
    wire N__1463;
    wire N__1458;
    wire N__1455;
    wire N__1452;
    wire N__1449;
    wire N__1446;
    wire N__1443;
    wire CLK_pad_gb_input;
    wire VCCG0;
    wire GNDG0;
    wire n370;
    wire n368;
    wire spi_2x_ce;
    wire \tli.spi.spi_2x_ce_gen_proc_clk_cnt_2 ;
    wire \tli.spi.spi_2x_ce_gen_proc_clk_cnt_1 ;
    wire \tli.spi.spi_2x_ce_gen_proc_clk_cnt_3 ;
    wire \tli.spi.spi_2x_ce_gen_proc_clk_cnt_0 ;
    wire n26;
    wire bfn_5_21_0_;
    wire n25;
    wire n992;
    wire n24;
    wire n993;
    wire n23;
    wire n994;
    wire n22;
    wire n995;
    wire n21;
    wire n996;
    wire n20;
    wire n997;
    wire n19;
    wire n998;
    wire n999;
    wire n18;
    wire bfn_5_22_0_;
    wire n17;
    wire n1000;
    wire n16;
    wire n1001;
    wire n15;
    wire n1002;
    wire n14;
    wire n1003;
    wire n13;
    wire n1004;
    wire n12;
    wire n1005;
    wire n11;
    wire n1006;
    wire n1007;
    wire n10;
    wire bfn_5_23_0_;
    wire n9;
    wire n1008;
    wire n8;
    wire n1009;
    wire n7;
    wire n1010;
    wire n6;
    wire n1011;
    wire n1012;
    wire n1013;
    wire n1014;
    wire n1015;
    wire bfn_5_24_0_;
    wire n1016;
    wire blink_counter_25;
    wire LED_c;
    wire n1083;
    wire blink_counter_23;
    wire blink_counter_22;
    wire blink_counter_24;
    wire blink_counter_21;
    wire n1084;
    wire n168;
    wire n148;
    wire n160;
    wire n156;
    wire n152;
    wire \tli.n10_cascade_ ;
    wire n154;
    wire n158;
    wire \tli.n15 ;
    wire \tli.n16 ;
    wire \tli.n22_cascade_ ;
    wire \tli.n10_adj_301 ;
    wire \tli.n17_cascade_ ;
    wire \tli.n29_cascade_ ;
    wire \tli.current_14__N_89_cascade_ ;
    wire \tli.current_14__N_89 ;
    wire n146;
    wire n164;
    wire n166;
    wire n150;
    wire n144;
    wire \tli.n28 ;
    wire \tli.n26 ;
    wire n162;
    wire \tli.n27 ;
    wire \tli.delay_counter_0_N ;
    wire bfn_7_22_0_;
    wire \tli.delay_counter_1_N ;
    wire \tli.n1017 ;
    wire \tli.delay_counter_2_N ;
    wire \tli.n1018 ;
    wire \tli.delay_counter_3_N ;
    wire \tli.n1019 ;
    wire \tli.delay_counter_4_N ;
    wire \tli.n1020 ;
    wire \tli.delay_counter_5_N ;
    wire \tli.n1021 ;
    wire \tli.delay_counter_6_N ;
    wire \tli.n1022 ;
    wire \tli.delay_counter_7_N ;
    wire \tli.n1023 ;
    wire \tli.n1024 ;
    wire \tli.delay_counter_8_N ;
    wire bfn_7_23_0_;
    wire \tli.delay_counter_9_N ;
    wire \tli.n1025 ;
    wire \tli.delay_counter_10_N ;
    wire \tli.n1026 ;
    wire \tli.delay_counter_11_N ;
    wire \tli.n1027 ;
    wire \tli.delay_counter_12_N ;
    wire \tli.n1028 ;
    wire \tli.delay_counter_13_N ;
    wire \tli.n1029 ;
    wire \tli.delay_counter_14_N ;
    wire \tli.n1030 ;
    wire \tli.n1031 ;
    wire \tli.n1032 ;
    wire \tli.delay_counter_16 ;
    wire bfn_7_24_0_;
    wire \tli.delay_counter_17 ;
    wire \tli.n1033 ;
    wire \tli.delay_counter_18 ;
    wire \tli.n1034 ;
    wire \tli.delay_counter_19 ;
    wire \tli.n1035 ;
    wire \tli.delay_counter_20 ;
    wire \tli.n1036 ;
    wire \tli.delay_counter_21 ;
    wire \tli.n1037 ;
    wire \tli.delay_counter_22 ;
    wire \tli.n1038 ;
    wire \tli.delay_counter_23 ;
    wire \tli.n1039 ;
    wire \tli.n1040 ;
    wire \tli.delay_counter_24 ;
    wire bfn_7_25_0_;
    wire \tli.delay_counter_25 ;
    wire \tli.n1041 ;
    wire \tli.delay_counter_26 ;
    wire \tli.n1042 ;
    wire \tli.delay_counter_27 ;
    wire \tli.n1043 ;
    wire \tli.delay_counter_28 ;
    wire \tli.n1044 ;
    wire \tli.delay_counter_29 ;
    wire \tli.n1045 ;
    wire \tli.delay_counter_30 ;
    wire \tli.n1046 ;
    wire \tli.n1047 ;
    wire \tli.delay_counter_31 ;
    wire \tli.n804 ;
    wire \tli.n841 ;
    wire wren_N_keep;
    wire delay_counter_15_N_keep;
    wire di_reg_15;
    wire CLK_N;
    wire CONSTANT_ONE_NET;
    wire _gnd_net_;

    defparam CS_CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_CLK_pad_iopad (
            .OE(N__2890),
            .DIN(N__2889),
            .DOUT(N__2888),
            .PACKAGEPIN(CS_CLK));
    defparam CS_CLK_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_CLK_pad_preio (
            .PADOEN(N__2890),
            .PADOUT(N__2889),
            .PADIN(N__2888),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CS_MISO_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_MISO_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_MISO_pad_iopad (
            .OE(N__2881),
            .DIN(N__2880),
            .DOUT(N__2879),
            .PACKAGEPIN(CS_MISO));
    defparam CS_MISO_pad_preio.PIN_TYPE=6'b000001;
    defparam CS_MISO_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_MISO_pad_preio (
            .PADOEN(N__2881),
            .PADOUT(N__2880),
            .PADIN(N__2879),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CS_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_pad_iopad (
            .OE(N__2872),
            .DIN(N__2871),
            .DOUT(N__2870),
            .PACKAGEPIN(CS));
    defparam CS_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_pad_preio (
            .PADOEN(N__2872),
            .PADOUT(N__2871),
            .PADIN(N__2870),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__2448),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam DE_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam DE_pad_iopad.PULLUP=1'b0;
    IO_PAD DE_pad_iopad (
            .OE(N__2863),
            .DIN(N__2862),
            .DOUT(N__2861),
            .PACKAGEPIN(DE));
    defparam DE_pad_preio.PIN_TYPE=6'b011001;
    defparam DE_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO DE_pad_preio (
            .PADOEN(N__2863),
            .PADOUT(N__2862),
            .PADIN(N__2861),
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
            .OE(N__2854),
            .DIN(N__2853),
            .DOUT(N__2852),
            .PACKAGEPIN(INHA));
    defparam INHA_pad_preio.PIN_TYPE=6'b011001;
    defparam INHA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHA_pad_preio (
            .PADOEN(N__2854),
            .PADOUT(N__2853),
            .PADIN(N__2852),
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
            .OE(N__2845),
            .DIN(N__2844),
            .DOUT(N__2843),
            .PACKAGEPIN(INHB));
    defparam INHB_pad_preio.PIN_TYPE=6'b011001;
    defparam INHB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHB_pad_preio (
            .PADOEN(N__2845),
            .PADOUT(N__2844),
            .PADIN(N__2843),
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
            .OE(N__2836),
            .DIN(N__2835),
            .DOUT(N__2834),
            .PACKAGEPIN(INHC));
    defparam INHC_pad_preio.PIN_TYPE=6'b011001;
    defparam INHC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHC_pad_preio (
            .PADOEN(N__2836),
            .PADOUT(N__2835),
            .PADIN(N__2834),
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
            .OE(N__2827),
            .DIN(N__2826),
            .DOUT(N__2825),
            .PACKAGEPIN(INLA));
    defparam INLA_pad_preio.PIN_TYPE=6'b011001;
    defparam INLA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLA_pad_preio (
            .PADOEN(N__2827),
            .PADOUT(N__2826),
            .PADIN(N__2825),
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
            .OE(N__2818),
            .DIN(N__2817),
            .DOUT(N__2816),
            .PACKAGEPIN(INLB));
    defparam INLB_pad_preio.PIN_TYPE=6'b011001;
    defparam INLB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLB_pad_preio (
            .PADOEN(N__2818),
            .PADOUT(N__2817),
            .PADIN(N__2816),
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
            .OE(N__2809),
            .DIN(N__2808),
            .DOUT(N__2807),
            .PACKAGEPIN(INLC));
    defparam INLC_pad_preio.PIN_TYPE=6'b011001;
    defparam INLC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLC_pad_preio (
            .PADOEN(N__2809),
            .PADOUT(N__2808),
            .PADIN(N__2807),
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
            .OE(N__2800),
            .DIN(N__2799),
            .DOUT(N__2798),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__2800),
            .PADOUT(N__2799),
            .PADIN(N__2798),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__1839),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam NEOPXL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam NEOPXL_pad_iopad.PULLUP=1'b0;
    IO_PAD NEOPXL_pad_iopad (
            .OE(N__2791),
            .DIN(N__2790),
            .DOUT(N__2789),
            .PACKAGEPIN(NEOPXL));
    defparam NEOPXL_pad_preio.PIN_TYPE=6'b011001;
    defparam NEOPXL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO NEOPXL_pad_preio (
            .PADOEN(N__2791),
            .PADOUT(N__2790),
            .PADIN(N__2789),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam SCL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam SCL_pad_iopad.PULLUP=1'b0;
    IO_PAD SCL_pad_iopad (
            .OE(N__2782),
            .DIN(N__2781),
            .DOUT(N__2780),
            .PACKAGEPIN(SCL));
    defparam SCL_pad_preio.PIN_TYPE=6'b011001;
    defparam SCL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO SCL_pad_preio (
            .PADOEN(N__2782),
            .PADOUT(N__2781),
            .PADIN(N__2780),
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
            .OE(N__2773),
            .DIN(N__2772),
            .DOUT(N__2771),
            .PACKAGEPIN(TX));
    defparam TX_pad_preio.PIN_TYPE=6'b011001;
    defparam TX_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO TX_pad_preio (
            .PADOEN(N__2773),
            .PADOUT(N__2772),
            .PADIN(N__2771),
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
            .OE(N__2764),
            .DIN(N__2763),
            .DOUT(N__2762),
            .PACKAGEPIN(USBPU));
    defparam USBPU_pad_preio.PIN_TYPE=6'b011001;
    defparam USBPU_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO USBPU_pad_preio (
            .PADOEN(N__2764),
            .PADOUT(N__2763),
            .PADIN(N__2762),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CLK_pad_iopad (
            .OE(N__2755),
            .DIN(N__2754),
            .DOUT(N__2753),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__2755),
            .PADOUT(N__2754),
            .PADIN(N__2753),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    InMux I__556 (
            .O(N__2736),
            .I(N__2732));
    InMux I__555 (
            .O(N__2735),
            .I(N__2729));
    LocalMux I__554 (
            .O(N__2732),
            .I(\tli.delay_counter_28 ));
    LocalMux I__553 (
            .O(N__2729),
            .I(\tli.delay_counter_28 ));
    InMux I__552 (
            .O(N__2724),
            .I(\tli.n1044 ));
    InMux I__551 (
            .O(N__2721),
            .I(N__2718));
    LocalMux I__550 (
            .O(N__2718),
            .I(N__2714));
    InMux I__549 (
            .O(N__2717),
            .I(N__2711));
    Span4Mux_h I__548 (
            .O(N__2714),
            .I(N__2708));
    LocalMux I__547 (
            .O(N__2711),
            .I(\tli.delay_counter_29 ));
    Odrv4 I__546 (
            .O(N__2708),
            .I(\tli.delay_counter_29 ));
    InMux I__545 (
            .O(N__2703),
            .I(\tli.n1045 ));
    InMux I__544 (
            .O(N__2700),
            .I(N__2696));
    InMux I__543 (
            .O(N__2699),
            .I(N__2693));
    LocalMux I__542 (
            .O(N__2696),
            .I(\tli.delay_counter_30 ));
    LocalMux I__541 (
            .O(N__2693),
            .I(\tli.delay_counter_30 ));
    InMux I__540 (
            .O(N__2688),
            .I(\tli.n1046 ));
    InMux I__539 (
            .O(N__2685),
            .I(\tli.n1047 ));
    InMux I__538 (
            .O(N__2682),
            .I(N__2679));
    LocalMux I__537 (
            .O(N__2679),
            .I(N__2675));
    InMux I__536 (
            .O(N__2678),
            .I(N__2672));
    Span4Mux_h I__535 (
            .O(N__2675),
            .I(N__2669));
    LocalMux I__534 (
            .O(N__2672),
            .I(\tli.delay_counter_31 ));
    Odrv4 I__533 (
            .O(N__2669),
            .I(\tli.delay_counter_31 ));
    CEMux I__532 (
            .O(N__2664),
            .I(N__2660));
    CEMux I__531 (
            .O(N__2663),
            .I(N__2657));
    LocalMux I__530 (
            .O(N__2660),
            .I(N__2651));
    LocalMux I__529 (
            .O(N__2657),
            .I(N__2651));
    CEMux I__528 (
            .O(N__2656),
            .I(N__2647));
    Span4Mux_v I__527 (
            .O(N__2651),
            .I(N__2644));
    CEMux I__526 (
            .O(N__2650),
            .I(N__2641));
    LocalMux I__525 (
            .O(N__2647),
            .I(N__2634));
    Span4Mux_v I__524 (
            .O(N__2644),
            .I(N__2634));
    LocalMux I__523 (
            .O(N__2641),
            .I(N__2634));
    Odrv4 I__522 (
            .O(N__2634),
            .I(\tli.n804 ));
    SRMux I__521 (
            .O(N__2631),
            .I(N__2627));
    SRMux I__520 (
            .O(N__2630),
            .I(N__2623));
    LocalMux I__519 (
            .O(N__2627),
            .I(N__2613));
    SRMux I__518 (
            .O(N__2626),
            .I(N__2610));
    LocalMux I__517 (
            .O(N__2623),
            .I(N__2607));
    SRMux I__516 (
            .O(N__2622),
            .I(N__2604));
    CascadeMux I__515 (
            .O(N__2621),
            .I(N__2601));
    CascadeMux I__514 (
            .O(N__2620),
            .I(N__2596));
    CascadeMux I__513 (
            .O(N__2619),
            .I(N__2593));
    CascadeMux I__512 (
            .O(N__2618),
            .I(N__2586));
    CascadeMux I__511 (
            .O(N__2617),
            .I(N__2583));
    CascadeMux I__510 (
            .O(N__2616),
            .I(N__2580));
    Span4Mux_h I__509 (
            .O(N__2613),
            .I(N__2576));
    LocalMux I__508 (
            .O(N__2610),
            .I(N__2569));
    Span4Mux_v I__507 (
            .O(N__2607),
            .I(N__2569));
    LocalMux I__506 (
            .O(N__2604),
            .I(N__2569));
    InMux I__505 (
            .O(N__2601),
            .I(N__2564));
    InMux I__504 (
            .O(N__2600),
            .I(N__2564));
    InMux I__503 (
            .O(N__2599),
            .I(N__2553));
    InMux I__502 (
            .O(N__2596),
            .I(N__2553));
    InMux I__501 (
            .O(N__2593),
            .I(N__2553));
    InMux I__500 (
            .O(N__2592),
            .I(N__2553));
    InMux I__499 (
            .O(N__2591),
            .I(N__2553));
    InMux I__498 (
            .O(N__2590),
            .I(N__2540));
    InMux I__497 (
            .O(N__2589),
            .I(N__2540));
    InMux I__496 (
            .O(N__2586),
            .I(N__2540));
    InMux I__495 (
            .O(N__2583),
            .I(N__2540));
    InMux I__494 (
            .O(N__2580),
            .I(N__2540));
    InMux I__493 (
            .O(N__2579),
            .I(N__2540));
    Odrv4 I__492 (
            .O(N__2576),
            .I(\tli.n841 ));
    Odrv4 I__491 (
            .O(N__2569),
            .I(\tli.n841 ));
    LocalMux I__490 (
            .O(N__2564),
            .I(\tli.n841 ));
    LocalMux I__489 (
            .O(N__2553),
            .I(\tli.n841 ));
    LocalMux I__488 (
            .O(N__2540),
            .I(\tli.n841 ));
    InMux I__487 (
            .O(N__2529),
            .I(N__2526));
    LocalMux I__486 (
            .O(N__2526),
            .I(N__2523));
    Odrv12 I__485 (
            .O(N__2523),
            .I(wren_N_keep));
    InMux I__484 (
            .O(N__2520),
            .I(N__2517));
    LocalMux I__483 (
            .O(N__2517),
            .I(N__2512));
    InMux I__482 (
            .O(N__2516),
            .I(N__2509));
    InMux I__481 (
            .O(N__2515),
            .I(N__2506));
    Odrv4 I__480 (
            .O(N__2512),
            .I(delay_counter_15_N_keep));
    LocalMux I__479 (
            .O(N__2509),
            .I(delay_counter_15_N_keep));
    LocalMux I__478 (
            .O(N__2506),
            .I(delay_counter_15_N_keep));
    InMux I__477 (
            .O(N__2499),
            .I(N__2496));
    LocalMux I__476 (
            .O(N__2496),
            .I(di_reg_15));
    ClkMux I__475 (
            .O(N__2493),
            .I(N__2454));
    ClkMux I__474 (
            .O(N__2492),
            .I(N__2454));
    ClkMux I__473 (
            .O(N__2491),
            .I(N__2454));
    ClkMux I__472 (
            .O(N__2490),
            .I(N__2454));
    ClkMux I__471 (
            .O(N__2489),
            .I(N__2454));
    ClkMux I__470 (
            .O(N__2488),
            .I(N__2454));
    ClkMux I__469 (
            .O(N__2487),
            .I(N__2454));
    ClkMux I__468 (
            .O(N__2486),
            .I(N__2454));
    ClkMux I__467 (
            .O(N__2485),
            .I(N__2454));
    ClkMux I__466 (
            .O(N__2484),
            .I(N__2454));
    ClkMux I__465 (
            .O(N__2483),
            .I(N__2454));
    ClkMux I__464 (
            .O(N__2482),
            .I(N__2454));
    ClkMux I__463 (
            .O(N__2481),
            .I(N__2454));
    GlobalMux I__462 (
            .O(N__2454),
            .I(N__2451));
    gio2CtrlBuf I__461 (
            .O(N__2451),
            .I(CLK_N));
    IoInMux I__460 (
            .O(N__2448),
            .I(N__2445));
    LocalMux I__459 (
            .O(N__2445),
            .I(N__2439));
    InMux I__458 (
            .O(N__2444),
            .I(N__2432));
    InMux I__457 (
            .O(N__2443),
            .I(N__2432));
    InMux I__456 (
            .O(N__2442),
            .I(N__2432));
    Sp12to4 I__455 (
            .O(N__2439),
            .I(N__2429));
    LocalMux I__454 (
            .O(N__2432),
            .I(N__2426));
    Span12Mux_h I__453 (
            .O(N__2429),
            .I(N__2423));
    Span12Mux_s9_h I__452 (
            .O(N__2426),
            .I(N__2420));
    Odrv12 I__451 (
            .O(N__2423),
            .I(CONSTANT_ONE_NET));
    Odrv12 I__450 (
            .O(N__2420),
            .I(CONSTANT_ONE_NET));
    InMux I__449 (
            .O(N__2415),
            .I(N__2411));
    InMux I__448 (
            .O(N__2414),
            .I(N__2408));
    LocalMux I__447 (
            .O(N__2411),
            .I(\tli.delay_counter_20 ));
    LocalMux I__446 (
            .O(N__2408),
            .I(\tli.delay_counter_20 ));
    InMux I__445 (
            .O(N__2403),
            .I(\tli.n1036 ));
    InMux I__444 (
            .O(N__2400),
            .I(N__2396));
    InMux I__443 (
            .O(N__2399),
            .I(N__2393));
    LocalMux I__442 (
            .O(N__2396),
            .I(\tli.delay_counter_21 ));
    LocalMux I__441 (
            .O(N__2393),
            .I(\tli.delay_counter_21 ));
    InMux I__440 (
            .O(N__2388),
            .I(\tli.n1037 ));
    InMux I__439 (
            .O(N__2385),
            .I(N__2381));
    InMux I__438 (
            .O(N__2384),
            .I(N__2378));
    LocalMux I__437 (
            .O(N__2381),
            .I(\tli.delay_counter_22 ));
    LocalMux I__436 (
            .O(N__2378),
            .I(\tli.delay_counter_22 ));
    InMux I__435 (
            .O(N__2373),
            .I(\tli.n1038 ));
    InMux I__434 (
            .O(N__2370),
            .I(N__2366));
    InMux I__433 (
            .O(N__2369),
            .I(N__2363));
    LocalMux I__432 (
            .O(N__2366),
            .I(\tli.delay_counter_23 ));
    LocalMux I__431 (
            .O(N__2363),
            .I(\tli.delay_counter_23 ));
    InMux I__430 (
            .O(N__2358),
            .I(\tli.n1039 ));
    InMux I__429 (
            .O(N__2355),
            .I(N__2351));
    InMux I__428 (
            .O(N__2354),
            .I(N__2348));
    LocalMux I__427 (
            .O(N__2351),
            .I(\tli.delay_counter_24 ));
    LocalMux I__426 (
            .O(N__2348),
            .I(\tli.delay_counter_24 ));
    InMux I__425 (
            .O(N__2343),
            .I(bfn_7_25_0_));
    InMux I__424 (
            .O(N__2340),
            .I(N__2336));
    InMux I__423 (
            .O(N__2339),
            .I(N__2333));
    LocalMux I__422 (
            .O(N__2336),
            .I(\tli.delay_counter_25 ));
    LocalMux I__421 (
            .O(N__2333),
            .I(\tli.delay_counter_25 ));
    InMux I__420 (
            .O(N__2328),
            .I(\tli.n1041 ));
    CascadeMux I__419 (
            .O(N__2325),
            .I(N__2321));
    InMux I__418 (
            .O(N__2324),
            .I(N__2318));
    InMux I__417 (
            .O(N__2321),
            .I(N__2315));
    LocalMux I__416 (
            .O(N__2318),
            .I(\tli.delay_counter_26 ));
    LocalMux I__415 (
            .O(N__2315),
            .I(\tli.delay_counter_26 ));
    InMux I__414 (
            .O(N__2310),
            .I(\tli.n1042 ));
    CascadeMux I__413 (
            .O(N__2307),
            .I(N__2303));
    InMux I__412 (
            .O(N__2306),
            .I(N__2300));
    InMux I__411 (
            .O(N__2303),
            .I(N__2297));
    LocalMux I__410 (
            .O(N__2300),
            .I(\tli.delay_counter_27 ));
    LocalMux I__409 (
            .O(N__2297),
            .I(\tli.delay_counter_27 ));
    InMux I__408 (
            .O(N__2292),
            .I(\tli.n1043 ));
    CascadeMux I__407 (
            .O(N__2289),
            .I(N__2285));
    InMux I__406 (
            .O(N__2288),
            .I(N__2282));
    InMux I__405 (
            .O(N__2285),
            .I(N__2279));
    LocalMux I__404 (
            .O(N__2282),
            .I(\tli.delay_counter_11_N ));
    LocalMux I__403 (
            .O(N__2279),
            .I(\tli.delay_counter_11_N ));
    InMux I__402 (
            .O(N__2274),
            .I(\tli.n1027 ));
    InMux I__401 (
            .O(N__2271),
            .I(N__2267));
    InMux I__400 (
            .O(N__2270),
            .I(N__2264));
    LocalMux I__399 (
            .O(N__2267),
            .I(\tli.delay_counter_12_N ));
    LocalMux I__398 (
            .O(N__2264),
            .I(\tli.delay_counter_12_N ));
    InMux I__397 (
            .O(N__2259),
            .I(\tli.n1028 ));
    InMux I__396 (
            .O(N__2256),
            .I(N__2252));
    InMux I__395 (
            .O(N__2255),
            .I(N__2249));
    LocalMux I__394 (
            .O(N__2252),
            .I(\tli.delay_counter_13_N ));
    LocalMux I__393 (
            .O(N__2249),
            .I(\tli.delay_counter_13_N ));
    InMux I__392 (
            .O(N__2244),
            .I(\tli.n1029 ));
    InMux I__391 (
            .O(N__2241),
            .I(N__2237));
    InMux I__390 (
            .O(N__2240),
            .I(N__2234));
    LocalMux I__389 (
            .O(N__2237),
            .I(\tli.delay_counter_14_N ));
    LocalMux I__388 (
            .O(N__2234),
            .I(\tli.delay_counter_14_N ));
    InMux I__387 (
            .O(N__2229),
            .I(\tli.n1030 ));
    InMux I__386 (
            .O(N__2226),
            .I(\tli.n1031 ));
    InMux I__385 (
            .O(N__2223),
            .I(N__2219));
    InMux I__384 (
            .O(N__2222),
            .I(N__2216));
    LocalMux I__383 (
            .O(N__2219),
            .I(\tli.delay_counter_16 ));
    LocalMux I__382 (
            .O(N__2216),
            .I(\tli.delay_counter_16 ));
    InMux I__381 (
            .O(N__2211),
            .I(bfn_7_24_0_));
    InMux I__380 (
            .O(N__2208),
            .I(N__2204));
    InMux I__379 (
            .O(N__2207),
            .I(N__2201));
    LocalMux I__378 (
            .O(N__2204),
            .I(\tli.delay_counter_17 ));
    LocalMux I__377 (
            .O(N__2201),
            .I(\tli.delay_counter_17 ));
    InMux I__376 (
            .O(N__2196),
            .I(\tli.n1033 ));
    CascadeMux I__375 (
            .O(N__2193),
            .I(N__2189));
    InMux I__374 (
            .O(N__2192),
            .I(N__2186));
    InMux I__373 (
            .O(N__2189),
            .I(N__2183));
    LocalMux I__372 (
            .O(N__2186),
            .I(\tli.delay_counter_18 ));
    LocalMux I__371 (
            .O(N__2183),
            .I(\tli.delay_counter_18 ));
    InMux I__370 (
            .O(N__2178),
            .I(\tli.n1034 ));
    InMux I__369 (
            .O(N__2175),
            .I(N__2171));
    InMux I__368 (
            .O(N__2174),
            .I(N__2168));
    LocalMux I__367 (
            .O(N__2171),
            .I(\tli.delay_counter_19 ));
    LocalMux I__366 (
            .O(N__2168),
            .I(\tli.delay_counter_19 ));
    InMux I__365 (
            .O(N__2163),
            .I(\tli.n1035 ));
    InMux I__364 (
            .O(N__2160),
            .I(N__2156));
    InMux I__363 (
            .O(N__2159),
            .I(N__2153));
    LocalMux I__362 (
            .O(N__2156),
            .I(\tli.delay_counter_3_N ));
    LocalMux I__361 (
            .O(N__2153),
            .I(\tli.delay_counter_3_N ));
    InMux I__360 (
            .O(N__2148),
            .I(\tli.n1019 ));
    InMux I__359 (
            .O(N__2145),
            .I(N__2141));
    InMux I__358 (
            .O(N__2144),
            .I(N__2138));
    LocalMux I__357 (
            .O(N__2141),
            .I(\tli.delay_counter_4_N ));
    LocalMux I__356 (
            .O(N__2138),
            .I(\tli.delay_counter_4_N ));
    InMux I__355 (
            .O(N__2133),
            .I(\tli.n1020 ));
    InMux I__354 (
            .O(N__2130),
            .I(N__2126));
    InMux I__353 (
            .O(N__2129),
            .I(N__2123));
    LocalMux I__352 (
            .O(N__2126),
            .I(\tli.delay_counter_5_N ));
    LocalMux I__351 (
            .O(N__2123),
            .I(\tli.delay_counter_5_N ));
    InMux I__350 (
            .O(N__2118),
            .I(\tli.n1021 ));
    InMux I__349 (
            .O(N__2115),
            .I(N__2111));
    InMux I__348 (
            .O(N__2114),
            .I(N__2108));
    LocalMux I__347 (
            .O(N__2111),
            .I(\tli.delay_counter_6_N ));
    LocalMux I__346 (
            .O(N__2108),
            .I(\tli.delay_counter_6_N ));
    InMux I__345 (
            .O(N__2103),
            .I(\tli.n1022 ));
    InMux I__344 (
            .O(N__2100),
            .I(N__2096));
    InMux I__343 (
            .O(N__2099),
            .I(N__2093));
    LocalMux I__342 (
            .O(N__2096),
            .I(\tli.delay_counter_7_N ));
    LocalMux I__341 (
            .O(N__2093),
            .I(\tli.delay_counter_7_N ));
    InMux I__340 (
            .O(N__2088),
            .I(\tli.n1023 ));
    CascadeMux I__339 (
            .O(N__2085),
            .I(N__2081));
    InMux I__338 (
            .O(N__2084),
            .I(N__2078));
    InMux I__337 (
            .O(N__2081),
            .I(N__2075));
    LocalMux I__336 (
            .O(N__2078),
            .I(\tli.delay_counter_8_N ));
    LocalMux I__335 (
            .O(N__2075),
            .I(\tli.delay_counter_8_N ));
    InMux I__334 (
            .O(N__2070),
            .I(bfn_7_23_0_));
    CascadeMux I__333 (
            .O(N__2067),
            .I(N__2063));
    InMux I__332 (
            .O(N__2066),
            .I(N__2060));
    InMux I__331 (
            .O(N__2063),
            .I(N__2057));
    LocalMux I__330 (
            .O(N__2060),
            .I(\tli.delay_counter_9_N ));
    LocalMux I__329 (
            .O(N__2057),
            .I(\tli.delay_counter_9_N ));
    InMux I__328 (
            .O(N__2052),
            .I(\tli.n1025 ));
    InMux I__327 (
            .O(N__2049),
            .I(N__2045));
    InMux I__326 (
            .O(N__2048),
            .I(N__2042));
    LocalMux I__325 (
            .O(N__2045),
            .I(\tli.delay_counter_10_N ));
    LocalMux I__324 (
            .O(N__2042),
            .I(\tli.delay_counter_10_N ));
    InMux I__323 (
            .O(N__2037),
            .I(\tli.n1026 ));
    InMux I__322 (
            .O(N__2034),
            .I(N__2031));
    LocalMux I__321 (
            .O(N__2031),
            .I(n150));
    InMux I__320 (
            .O(N__2028),
            .I(N__2025));
    LocalMux I__319 (
            .O(N__2025),
            .I(n144));
    InMux I__318 (
            .O(N__2022),
            .I(N__2019));
    LocalMux I__317 (
            .O(N__2019),
            .I(N__2016));
    Odrv4 I__316 (
            .O(N__2016),
            .I(\tli.n28 ));
    InMux I__315 (
            .O(N__2013),
            .I(N__2010));
    LocalMux I__314 (
            .O(N__2010),
            .I(\tli.n26 ));
    InMux I__313 (
            .O(N__2007),
            .I(N__2004));
    LocalMux I__312 (
            .O(N__2004),
            .I(n162));
    InMux I__311 (
            .O(N__2001),
            .I(N__1998));
    LocalMux I__310 (
            .O(N__1998),
            .I(N__1995));
    Odrv4 I__309 (
            .O(N__1995),
            .I(\tli.n27 ));
    InMux I__308 (
            .O(N__1992),
            .I(N__1988));
    InMux I__307 (
            .O(N__1991),
            .I(N__1985));
    LocalMux I__306 (
            .O(N__1988),
            .I(\tli.delay_counter_0_N ));
    LocalMux I__305 (
            .O(N__1985),
            .I(\tli.delay_counter_0_N ));
    InMux I__304 (
            .O(N__1980),
            .I(bfn_7_22_0_));
    InMux I__303 (
            .O(N__1977),
            .I(N__1973));
    InMux I__302 (
            .O(N__1976),
            .I(N__1970));
    LocalMux I__301 (
            .O(N__1973),
            .I(\tli.delay_counter_1_N ));
    LocalMux I__300 (
            .O(N__1970),
            .I(\tli.delay_counter_1_N ));
    InMux I__299 (
            .O(N__1965),
            .I(\tli.n1017 ));
    InMux I__298 (
            .O(N__1962),
            .I(N__1958));
    InMux I__297 (
            .O(N__1961),
            .I(N__1955));
    LocalMux I__296 (
            .O(N__1958),
            .I(\tli.delay_counter_2_N ));
    LocalMux I__295 (
            .O(N__1955),
            .I(\tli.delay_counter_2_N ));
    InMux I__294 (
            .O(N__1950),
            .I(\tli.n1018 ));
    InMux I__293 (
            .O(N__1947),
            .I(N__1944));
    LocalMux I__292 (
            .O(N__1944),
            .I(\tli.n15 ));
    InMux I__291 (
            .O(N__1941),
            .I(N__1938));
    LocalMux I__290 (
            .O(N__1938),
            .I(\tli.n16 ));
    CascadeMux I__289 (
            .O(N__1935),
            .I(\tli.n22_cascade_ ));
    InMux I__288 (
            .O(N__1932),
            .I(N__1929));
    LocalMux I__287 (
            .O(N__1929),
            .I(\tli.n10_adj_301 ));
    CascadeMux I__286 (
            .O(N__1926),
            .I(\tli.n17_cascade_ ));
    CascadeMux I__285 (
            .O(N__1923),
            .I(\tli.n29_cascade_ ));
    CascadeMux I__284 (
            .O(N__1920),
            .I(\tli.current_14__N_89_cascade_ ));
    InMux I__283 (
            .O(N__1917),
            .I(N__1911));
    InMux I__282 (
            .O(N__1916),
            .I(N__1911));
    LocalMux I__281 (
            .O(N__1911),
            .I(\tli.current_14__N_89 ));
    InMux I__280 (
            .O(N__1908),
            .I(N__1905));
    LocalMux I__279 (
            .O(N__1905),
            .I(n146));
    InMux I__278 (
            .O(N__1902),
            .I(N__1899));
    LocalMux I__277 (
            .O(N__1899),
            .I(n164));
    InMux I__276 (
            .O(N__1896),
            .I(N__1893));
    LocalMux I__275 (
            .O(N__1893),
            .I(n166));
    InMux I__274 (
            .O(N__1890),
            .I(N__1887));
    LocalMux I__273 (
            .O(N__1887),
            .I(n160));
    InMux I__272 (
            .O(N__1884),
            .I(N__1881));
    LocalMux I__271 (
            .O(N__1881),
            .I(n156));
    InMux I__270 (
            .O(N__1878),
            .I(N__1875));
    LocalMux I__269 (
            .O(N__1875),
            .I(n152));
    CascadeMux I__268 (
            .O(N__1872),
            .I(\tli.n10_cascade_ ));
    InMux I__267 (
            .O(N__1869),
            .I(N__1866));
    LocalMux I__266 (
            .O(N__1866),
            .I(n154));
    InMux I__265 (
            .O(N__1863),
            .I(N__1860));
    LocalMux I__264 (
            .O(N__1860),
            .I(n158));
    InMux I__263 (
            .O(N__1857),
            .I(n1014));
    InMux I__262 (
            .O(N__1854),
            .I(bfn_5_24_0_));
    InMux I__261 (
            .O(N__1851),
            .I(n1016));
    InMux I__260 (
            .O(N__1848),
            .I(N__1842));
    InMux I__259 (
            .O(N__1847),
            .I(N__1842));
    LocalMux I__258 (
            .O(N__1842),
            .I(blink_counter_25));
    IoInMux I__257 (
            .O(N__1839),
            .I(N__1836));
    LocalMux I__256 (
            .O(N__1836),
            .I(N__1833));
    Odrv12 I__255 (
            .O(N__1833),
            .I(LED_c));
    InMux I__254 (
            .O(N__1830),
            .I(N__1827));
    LocalMux I__253 (
            .O(N__1827),
            .I(n1083));
    InMux I__252 (
            .O(N__1824),
            .I(N__1817));
    InMux I__251 (
            .O(N__1823),
            .I(N__1817));
    InMux I__250 (
            .O(N__1822),
            .I(N__1814));
    LocalMux I__249 (
            .O(N__1817),
            .I(blink_counter_23));
    LocalMux I__248 (
            .O(N__1814),
            .I(blink_counter_23));
    CascadeMux I__247 (
            .O(N__1809),
            .I(N__1805));
    InMux I__246 (
            .O(N__1808),
            .I(N__1800));
    InMux I__245 (
            .O(N__1805),
            .I(N__1800));
    LocalMux I__244 (
            .O(N__1800),
            .I(N__1796));
    InMux I__243 (
            .O(N__1799),
            .I(N__1793));
    Odrv4 I__242 (
            .O(N__1796),
            .I(blink_counter_22));
    LocalMux I__241 (
            .O(N__1793),
            .I(blink_counter_22));
    CascadeMux I__240 (
            .O(N__1788),
            .I(N__1785));
    InMux I__239 (
            .O(N__1785),
            .I(N__1776));
    InMux I__238 (
            .O(N__1784),
            .I(N__1776));
    InMux I__237 (
            .O(N__1783),
            .I(N__1776));
    LocalMux I__236 (
            .O(N__1776),
            .I(blink_counter_24));
    InMux I__235 (
            .O(N__1773),
            .I(N__1766));
    InMux I__234 (
            .O(N__1772),
            .I(N__1766));
    InMux I__233 (
            .O(N__1771),
            .I(N__1763));
    LocalMux I__232 (
            .O(N__1766),
            .I(blink_counter_21));
    LocalMux I__231 (
            .O(N__1763),
            .I(blink_counter_21));
    InMux I__230 (
            .O(N__1758),
            .I(N__1755));
    LocalMux I__229 (
            .O(N__1755),
            .I(n1084));
    InMux I__228 (
            .O(N__1752),
            .I(N__1749));
    LocalMux I__227 (
            .O(N__1749),
            .I(n168));
    InMux I__226 (
            .O(N__1746),
            .I(N__1743));
    LocalMux I__225 (
            .O(N__1743),
            .I(n148));
    InMux I__224 (
            .O(N__1740),
            .I(N__1737));
    LocalMux I__223 (
            .O(N__1737),
            .I(n12));
    InMux I__222 (
            .O(N__1734),
            .I(n1005));
    InMux I__221 (
            .O(N__1731),
            .I(N__1728));
    LocalMux I__220 (
            .O(N__1728),
            .I(n11));
    InMux I__219 (
            .O(N__1725),
            .I(n1006));
    InMux I__218 (
            .O(N__1722),
            .I(N__1719));
    LocalMux I__217 (
            .O(N__1719),
            .I(n10));
    InMux I__216 (
            .O(N__1716),
            .I(bfn_5_23_0_));
    InMux I__215 (
            .O(N__1713),
            .I(N__1710));
    LocalMux I__214 (
            .O(N__1710),
            .I(n9));
    InMux I__213 (
            .O(N__1707),
            .I(n1008));
    InMux I__212 (
            .O(N__1704),
            .I(N__1701));
    LocalMux I__211 (
            .O(N__1701),
            .I(n8));
    InMux I__210 (
            .O(N__1698),
            .I(n1009));
    InMux I__209 (
            .O(N__1695),
            .I(N__1692));
    LocalMux I__208 (
            .O(N__1692),
            .I(n7));
    InMux I__207 (
            .O(N__1689),
            .I(n1010));
    InMux I__206 (
            .O(N__1686),
            .I(N__1683));
    LocalMux I__205 (
            .O(N__1683),
            .I(n6));
    InMux I__204 (
            .O(N__1680),
            .I(n1011));
    InMux I__203 (
            .O(N__1677),
            .I(n1012));
    InMux I__202 (
            .O(N__1674),
            .I(n1013));
    InMux I__201 (
            .O(N__1671),
            .I(N__1668));
    LocalMux I__200 (
            .O(N__1668),
            .I(n20));
    InMux I__199 (
            .O(N__1665),
            .I(n997));
    InMux I__198 (
            .O(N__1662),
            .I(N__1659));
    LocalMux I__197 (
            .O(N__1659),
            .I(n19));
    InMux I__196 (
            .O(N__1656),
            .I(n998));
    InMux I__195 (
            .O(N__1653),
            .I(N__1650));
    LocalMux I__194 (
            .O(N__1650),
            .I(n18));
    InMux I__193 (
            .O(N__1647),
            .I(bfn_5_22_0_));
    InMux I__192 (
            .O(N__1644),
            .I(N__1641));
    LocalMux I__191 (
            .O(N__1641),
            .I(n17));
    InMux I__190 (
            .O(N__1638),
            .I(n1000));
    InMux I__189 (
            .O(N__1635),
            .I(N__1632));
    LocalMux I__188 (
            .O(N__1632),
            .I(n16));
    InMux I__187 (
            .O(N__1629),
            .I(n1001));
    InMux I__186 (
            .O(N__1626),
            .I(N__1623));
    LocalMux I__185 (
            .O(N__1623),
            .I(n15));
    InMux I__184 (
            .O(N__1620),
            .I(n1002));
    InMux I__183 (
            .O(N__1617),
            .I(N__1614));
    LocalMux I__182 (
            .O(N__1614),
            .I(n14));
    InMux I__181 (
            .O(N__1611),
            .I(n1003));
    InMux I__180 (
            .O(N__1608),
            .I(N__1605));
    LocalMux I__179 (
            .O(N__1605),
            .I(n13));
    InMux I__178 (
            .O(N__1602),
            .I(n1004));
    CascadeMux I__177 (
            .O(N__1599),
            .I(N__1596));
    InMux I__176 (
            .O(N__1596),
            .I(N__1587));
    InMux I__175 (
            .O(N__1595),
            .I(N__1587));
    InMux I__174 (
            .O(N__1594),
            .I(N__1587));
    LocalMux I__173 (
            .O(N__1587),
            .I(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_2 ));
    InMux I__172 (
            .O(N__1584),
            .I(N__1572));
    InMux I__171 (
            .O(N__1583),
            .I(N__1572));
    InMux I__170 (
            .O(N__1582),
            .I(N__1572));
    InMux I__169 (
            .O(N__1581),
            .I(N__1572));
    LocalMux I__168 (
            .O(N__1572),
            .I(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_1 ));
    CascadeMux I__167 (
            .O(N__1569),
            .I(N__1565));
    InMux I__166 (
            .O(N__1568),
            .I(N__1560));
    InMux I__165 (
            .O(N__1565),
            .I(N__1560));
    LocalMux I__164 (
            .O(N__1560),
            .I(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_3 ));
    InMux I__163 (
            .O(N__1557),
            .I(N__1542));
    InMux I__162 (
            .O(N__1556),
            .I(N__1542));
    InMux I__161 (
            .O(N__1555),
            .I(N__1542));
    InMux I__160 (
            .O(N__1554),
            .I(N__1542));
    InMux I__159 (
            .O(N__1553),
            .I(N__1542));
    LocalMux I__158 (
            .O(N__1542),
            .I(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_0 ));
    InMux I__157 (
            .O(N__1539),
            .I(N__1536));
    LocalMux I__156 (
            .O(N__1536),
            .I(n26));
    InMux I__155 (
            .O(N__1533),
            .I(bfn_5_21_0_));
    InMux I__154 (
            .O(N__1530),
            .I(N__1527));
    LocalMux I__153 (
            .O(N__1527),
            .I(n25));
    InMux I__152 (
            .O(N__1524),
            .I(n992));
    InMux I__151 (
            .O(N__1521),
            .I(N__1518));
    LocalMux I__150 (
            .O(N__1518),
            .I(n24));
    InMux I__149 (
            .O(N__1515),
            .I(n993));
    InMux I__148 (
            .O(N__1512),
            .I(N__1509));
    LocalMux I__147 (
            .O(N__1509),
            .I(n23));
    InMux I__146 (
            .O(N__1506),
            .I(n994));
    InMux I__145 (
            .O(N__1503),
            .I(N__1500));
    LocalMux I__144 (
            .O(N__1500),
            .I(n22));
    InMux I__143 (
            .O(N__1497),
            .I(n995));
    InMux I__142 (
            .O(N__1494),
            .I(N__1491));
    LocalMux I__141 (
            .O(N__1491),
            .I(n21));
    InMux I__140 (
            .O(N__1488),
            .I(n996));
    InMux I__139 (
            .O(N__1485),
            .I(N__1479));
    InMux I__138 (
            .O(N__1484),
            .I(N__1479));
    LocalMux I__137 (
            .O(N__1479),
            .I(n370));
    InMux I__136 (
            .O(N__1476),
            .I(N__1473));
    LocalMux I__135 (
            .O(N__1473),
            .I(n368));
    InMux I__134 (
            .O(N__1470),
            .I(N__1466));
    InMux I__133 (
            .O(N__1469),
            .I(N__1463));
    LocalMux I__132 (
            .O(N__1466),
            .I(spi_2x_ce));
    LocalMux I__131 (
            .O(N__1463),
            .I(spi_2x_ce));
    IoInMux I__130 (
            .O(N__1458),
            .I(N__1455));
    LocalMux I__129 (
            .O(N__1455),
            .I(N__1452));
    IoSpan4Mux I__128 (
            .O(N__1452),
            .I(N__1449));
    IoSpan4Mux I__127 (
            .O(N__1449),
            .I(N__1446));
    IoSpan4Mux I__126 (
            .O(N__1446),
            .I(N__1443));
    Odrv4 I__125 (
            .O(N__1443),
            .I(CLK_pad_gb_input));
    defparam IN_MUX_bfv_7_22_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_7_22_0_ (
            .carryinitin(),
            .carryinitout(bfn_7_22_0_));
    defparam IN_MUX_bfv_7_23_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_7_23_0_ (
            .carryinitin(\tli.n1024 ),
            .carryinitout(bfn_7_23_0_));
    defparam IN_MUX_bfv_7_24_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_7_24_0_ (
            .carryinitin(\tli.n1032 ),
            .carryinitout(bfn_7_24_0_));
    defparam IN_MUX_bfv_7_25_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_7_25_0_ (
            .carryinitin(\tli.n1040 ),
            .carryinitout(bfn_7_25_0_));
    defparam IN_MUX_bfv_5_21_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_5_21_0_ (
            .carryinitin(),
            .carryinitout(bfn_5_21_0_));
    defparam IN_MUX_bfv_5_22_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_5_22_0_ (
            .carryinitin(n999),
            .carryinitout(bfn_5_22_0_));
    defparam IN_MUX_bfv_5_23_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_5_23_0_ (
            .carryinitin(n1007),
            .carryinitout(bfn_5_23_0_));
    defparam IN_MUX_bfv_5_24_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_5_24_0_ (
            .carryinitin(n1015),
            .carryinitout(bfn_5_24_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__1458),
            .GLOBALBUFFEROUTPUT(CLK_N));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam \tli.spi.core_n_clk_101_LC_4_21_0 .C_ON=1'b0;
    defparam \tli.spi.core_n_clk_101_LC_4_21_0 .SEQ_MODE=4'b1000;
    defparam \tli.spi.core_n_clk_101_LC_4_21_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \tli.spi.core_n_clk_101_LC_4_21_0  (
            .in0(_gnd_net_),
            .in1(N__1469),
            .in2(_gnd_net_),
            .in3(N__1484),
            .lcout(n370),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i1_LC_4_21_2 .C_ON=1'b0;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i1_LC_4_21_2 .SEQ_MODE=4'b1000;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i1_LC_4_21_2 .LUT_INIT=16'b0101010110101010;
    LogicCell40 \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i1_LC_4_21_2  (
            .in0(N__1555),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1581),
            .lcout(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i2_LC_4_21_3 .C_ON=1'b0;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i2_LC_4_21_3 .SEQ_MODE=4'b1000;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i2_LC_4_21_3 .LUT_INIT=16'b0110011011001100;
    LogicCell40 \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i2_LC_4_21_3  (
            .in0(N__1582),
            .in1(N__1595),
            .in2(_gnd_net_),
            .in3(N__1556),
            .lcout(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.core_clk_100_LC_4_21_4 .C_ON=1'b0;
    defparam \tli.spi.core_clk_100_LC_4_21_4 .SEQ_MODE=4'b1000;
    defparam \tli.spi.core_clk_100_LC_4_21_4 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \tli.spi.core_clk_100_LC_4_21_4  (
            .in0(N__1470),
            .in1(N__1476),
            .in2(_gnd_net_),
            .in3(N__1485),
            .lcout(n368),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.spi_2x_ce_98_LC_4_21_5 .C_ON=1'b0;
    defparam \tli.spi.spi_2x_ce_98_LC_4_21_5 .SEQ_MODE=4'b1000;
    defparam \tli.spi.spi_2x_ce_98_LC_4_21_5 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \tli.spi.spi_2x_ce_98_LC_4_21_5  (
            .in0(N__1584),
            .in1(N__1594),
            .in2(N__1569),
            .in3(N__1553),
            .lcout(spi_2x_ce),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i3_LC_4_21_6 .C_ON=1'b0;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i3_LC_4_21_6 .SEQ_MODE=4'b1000;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i3_LC_4_21_6 .LUT_INIT=16'b0110110011001100;
    LogicCell40 \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i3_LC_4_21_6  (
            .in0(N__1557),
            .in1(N__1568),
            .in2(N__1599),
            .in3(N__1583),
            .lcout(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i0_LC_4_21_7 .C_ON=1'b0;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i0_LC_4_21_7 .SEQ_MODE=4'b1000;
    defparam \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i0_LC_4_21_7 .LUT_INIT=16'b0000000011111111;
    LogicCell40 \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i0_LC_4_21_7  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1554),
            .lcout(\tli.spi.spi_2x_ce_gen_proc_clk_cnt_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2481),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i0_LC_5_21_0.C_ON=1'b1;
    defparam blink_counter_182__i0_LC_5_21_0.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i0_LC_5_21_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i0_LC_5_21_0 (
            .in0(_gnd_net_),
            .in1(N__1539),
            .in2(_gnd_net_),
            .in3(N__1533),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_5_21_0_),
            .carryout(n992),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i1_LC_5_21_1.C_ON=1'b1;
    defparam blink_counter_182__i1_LC_5_21_1.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i1_LC_5_21_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i1_LC_5_21_1 (
            .in0(_gnd_net_),
            .in1(N__1530),
            .in2(_gnd_net_),
            .in3(N__1524),
            .lcout(n25),
            .ltout(),
            .carryin(n992),
            .carryout(n993),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i2_LC_5_21_2.C_ON=1'b1;
    defparam blink_counter_182__i2_LC_5_21_2.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i2_LC_5_21_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i2_LC_5_21_2 (
            .in0(_gnd_net_),
            .in1(N__1521),
            .in2(_gnd_net_),
            .in3(N__1515),
            .lcout(n24),
            .ltout(),
            .carryin(n993),
            .carryout(n994),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i3_LC_5_21_3.C_ON=1'b1;
    defparam blink_counter_182__i3_LC_5_21_3.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i3_LC_5_21_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i3_LC_5_21_3 (
            .in0(_gnd_net_),
            .in1(N__1512),
            .in2(_gnd_net_),
            .in3(N__1506),
            .lcout(n23),
            .ltout(),
            .carryin(n994),
            .carryout(n995),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i4_LC_5_21_4.C_ON=1'b1;
    defparam blink_counter_182__i4_LC_5_21_4.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i4_LC_5_21_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i4_LC_5_21_4 (
            .in0(_gnd_net_),
            .in1(N__1503),
            .in2(_gnd_net_),
            .in3(N__1497),
            .lcout(n22),
            .ltout(),
            .carryin(n995),
            .carryout(n996),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i5_LC_5_21_5.C_ON=1'b1;
    defparam blink_counter_182__i5_LC_5_21_5.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i5_LC_5_21_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i5_LC_5_21_5 (
            .in0(_gnd_net_),
            .in1(N__1494),
            .in2(_gnd_net_),
            .in3(N__1488),
            .lcout(n21),
            .ltout(),
            .carryin(n996),
            .carryout(n997),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i6_LC_5_21_6.C_ON=1'b1;
    defparam blink_counter_182__i6_LC_5_21_6.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i6_LC_5_21_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i6_LC_5_21_6 (
            .in0(_gnd_net_),
            .in1(N__1671),
            .in2(_gnd_net_),
            .in3(N__1665),
            .lcout(n20),
            .ltout(),
            .carryin(n997),
            .carryout(n998),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i7_LC_5_21_7.C_ON=1'b1;
    defparam blink_counter_182__i7_LC_5_21_7.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i7_LC_5_21_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i7_LC_5_21_7 (
            .in0(_gnd_net_),
            .in1(N__1662),
            .in2(_gnd_net_),
            .in3(N__1656),
            .lcout(n19),
            .ltout(),
            .carryin(n998),
            .carryout(n999),
            .clk(N__2482),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i8_LC_5_22_0.C_ON=1'b1;
    defparam blink_counter_182__i8_LC_5_22_0.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i8_LC_5_22_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i8_LC_5_22_0 (
            .in0(_gnd_net_),
            .in1(N__1653),
            .in2(_gnd_net_),
            .in3(N__1647),
            .lcout(n18),
            .ltout(),
            .carryin(bfn_5_22_0_),
            .carryout(n1000),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i9_LC_5_22_1.C_ON=1'b1;
    defparam blink_counter_182__i9_LC_5_22_1.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i9_LC_5_22_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i9_LC_5_22_1 (
            .in0(_gnd_net_),
            .in1(N__1644),
            .in2(_gnd_net_),
            .in3(N__1638),
            .lcout(n17),
            .ltout(),
            .carryin(n1000),
            .carryout(n1001),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i10_LC_5_22_2.C_ON=1'b1;
    defparam blink_counter_182__i10_LC_5_22_2.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i10_LC_5_22_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i10_LC_5_22_2 (
            .in0(_gnd_net_),
            .in1(N__1635),
            .in2(_gnd_net_),
            .in3(N__1629),
            .lcout(n16),
            .ltout(),
            .carryin(n1001),
            .carryout(n1002),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i11_LC_5_22_3.C_ON=1'b1;
    defparam blink_counter_182__i11_LC_5_22_3.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i11_LC_5_22_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i11_LC_5_22_3 (
            .in0(_gnd_net_),
            .in1(N__1626),
            .in2(_gnd_net_),
            .in3(N__1620),
            .lcout(n15),
            .ltout(),
            .carryin(n1002),
            .carryout(n1003),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i12_LC_5_22_4.C_ON=1'b1;
    defparam blink_counter_182__i12_LC_5_22_4.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i12_LC_5_22_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i12_LC_5_22_4 (
            .in0(_gnd_net_),
            .in1(N__1617),
            .in2(_gnd_net_),
            .in3(N__1611),
            .lcout(n14),
            .ltout(),
            .carryin(n1003),
            .carryout(n1004),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i13_LC_5_22_5.C_ON=1'b1;
    defparam blink_counter_182__i13_LC_5_22_5.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i13_LC_5_22_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i13_LC_5_22_5 (
            .in0(_gnd_net_),
            .in1(N__1608),
            .in2(_gnd_net_),
            .in3(N__1602),
            .lcout(n13),
            .ltout(),
            .carryin(n1004),
            .carryout(n1005),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i14_LC_5_22_6.C_ON=1'b1;
    defparam blink_counter_182__i14_LC_5_22_6.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i14_LC_5_22_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i14_LC_5_22_6 (
            .in0(_gnd_net_),
            .in1(N__1740),
            .in2(_gnd_net_),
            .in3(N__1734),
            .lcout(n12),
            .ltout(),
            .carryin(n1005),
            .carryout(n1006),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i15_LC_5_22_7.C_ON=1'b1;
    defparam blink_counter_182__i15_LC_5_22_7.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i15_LC_5_22_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i15_LC_5_22_7 (
            .in0(_gnd_net_),
            .in1(N__1731),
            .in2(_gnd_net_),
            .in3(N__1725),
            .lcout(n11),
            .ltout(),
            .carryin(n1006),
            .carryout(n1007),
            .clk(N__2483),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i16_LC_5_23_0.C_ON=1'b1;
    defparam blink_counter_182__i16_LC_5_23_0.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i16_LC_5_23_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i16_LC_5_23_0 (
            .in0(_gnd_net_),
            .in1(N__1722),
            .in2(_gnd_net_),
            .in3(N__1716),
            .lcout(n10),
            .ltout(),
            .carryin(bfn_5_23_0_),
            .carryout(n1008),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i17_LC_5_23_1.C_ON=1'b1;
    defparam blink_counter_182__i17_LC_5_23_1.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i17_LC_5_23_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i17_LC_5_23_1 (
            .in0(_gnd_net_),
            .in1(N__1713),
            .in2(_gnd_net_),
            .in3(N__1707),
            .lcout(n9),
            .ltout(),
            .carryin(n1008),
            .carryout(n1009),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i18_LC_5_23_2.C_ON=1'b1;
    defparam blink_counter_182__i18_LC_5_23_2.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i18_LC_5_23_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i18_LC_5_23_2 (
            .in0(_gnd_net_),
            .in1(N__1704),
            .in2(_gnd_net_),
            .in3(N__1698),
            .lcout(n8),
            .ltout(),
            .carryin(n1009),
            .carryout(n1010),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i19_LC_5_23_3.C_ON=1'b1;
    defparam blink_counter_182__i19_LC_5_23_3.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i19_LC_5_23_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i19_LC_5_23_3 (
            .in0(_gnd_net_),
            .in1(N__1695),
            .in2(_gnd_net_),
            .in3(N__1689),
            .lcout(n7),
            .ltout(),
            .carryin(n1010),
            .carryout(n1011),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i20_LC_5_23_4.C_ON=1'b1;
    defparam blink_counter_182__i20_LC_5_23_4.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i20_LC_5_23_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i20_LC_5_23_4 (
            .in0(_gnd_net_),
            .in1(N__1686),
            .in2(_gnd_net_),
            .in3(N__1680),
            .lcout(n6),
            .ltout(),
            .carryin(n1011),
            .carryout(n1012),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i21_LC_5_23_5.C_ON=1'b1;
    defparam blink_counter_182__i21_LC_5_23_5.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i21_LC_5_23_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i21_LC_5_23_5 (
            .in0(_gnd_net_),
            .in1(N__1771),
            .in2(_gnd_net_),
            .in3(N__1677),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n1012),
            .carryout(n1013),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i22_LC_5_23_6.C_ON=1'b1;
    defparam blink_counter_182__i22_LC_5_23_6.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i22_LC_5_23_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i22_LC_5_23_6 (
            .in0(_gnd_net_),
            .in1(N__1799),
            .in2(_gnd_net_),
            .in3(N__1674),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n1013),
            .carryout(n1014),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i23_LC_5_23_7.C_ON=1'b1;
    defparam blink_counter_182__i23_LC_5_23_7.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i23_LC_5_23_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i23_LC_5_23_7 (
            .in0(_gnd_net_),
            .in1(N__1822),
            .in2(_gnd_net_),
            .in3(N__1857),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n1014),
            .carryout(n1015),
            .clk(N__2484),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i24_LC_5_24_0.C_ON=1'b1;
    defparam blink_counter_182__i24_LC_5_24_0.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i24_LC_5_24_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i24_LC_5_24_0 (
            .in0(_gnd_net_),
            .in1(N__1783),
            .in2(_gnd_net_),
            .in3(N__1854),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_5_24_0_),
            .carryout(n1016),
            .clk(N__2486),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_182__i25_LC_5_24_1.C_ON=1'b0;
    defparam blink_counter_182__i25_LC_5_24_1.SEQ_MODE=4'b1000;
    defparam blink_counter_182__i25_LC_5_24_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_182__i25_LC_5_24_1 (
            .in0(_gnd_net_),
            .in1(N__1847),
            .in2(_gnd_net_),
            .in3(N__1851),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2486),
            .ce(),
            .sr(_gnd_net_));
    defparam i715_3_lut_LC_5_24_2.C_ON=1'b0;
    defparam i715_3_lut_LC_5_24_2.SEQ_MODE=4'b0000;
    defparam i715_3_lut_LC_5_24_2.LUT_INIT=16'b0001000110111011;
    LogicCell40 i715_3_lut_LC_5_24_2 (
            .in0(N__1848),
            .in1(N__1830),
            .in2(_gnd_net_),
            .in3(N__1758),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i713_4_lut_LC_5_24_4.C_ON=1'b0;
    defparam i713_4_lut_LC_5_24_4.SEQ_MODE=4'b0000;
    defparam i713_4_lut_LC_5_24_4.LUT_INIT=16'b1011001010100010;
    LogicCell40 i713_4_lut_LC_5_24_4 (
            .in0(N__1772),
            .in1(N__1784),
            .in2(N__1809),
            .in3(N__1823),
            .lcout(n1083),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i714_4_lut_LC_5_24_5.C_ON=1'b0;
    defparam i714_4_lut_LC_5_24_5.SEQ_MODE=4'b0000;
    defparam i714_4_lut_LC_5_24_5.LUT_INIT=16'b1111111010100010;
    LogicCell40 i714_4_lut_LC_5_24_5 (
            .in0(N__1824),
            .in1(N__1808),
            .in2(N__1788),
            .in3(N__1773),
            .lcout(n1084),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i1_LC_5_24_6 .C_ON=1'b0;
    defparam \tli.current__i1_LC_5_24_6 .SEQ_MODE=4'b1000;
    defparam \tli.current__i1_LC_5_24_6 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i1_LC_5_24_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2621),
            .in3(N__1752),
            .lcout(n168),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2486),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i11_LC_5_24_7 .C_ON=1'b0;
    defparam \tli.current__i11_LC_5_24_7 .SEQ_MODE=4'b1000;
    defparam \tli.current__i11_LC_5_24_7 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i11_LC_5_24_7  (
            .in0(_gnd_net_),
            .in1(N__1746),
            .in2(_gnd_net_),
            .in3(N__2600),
            .lcout(n148),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2486),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i6_4_lut_LC_6_22_0 .C_ON=1'b0;
    defparam \tli.i6_4_lut_LC_6_22_0 .SEQ_MODE=4'b0000;
    defparam \tli.i6_4_lut_LC_6_22_0 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i6_4_lut_LC_6_22_0  (
            .in0(N__2114),
            .in1(N__1961),
            .in2(N__2085),
            .in3(N__1976),
            .lcout(\tli.n15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i5_LC_6_22_1 .C_ON=1'b0;
    defparam \tli.current__i5_LC_6_22_1 .SEQ_MODE=4'b1000;
    defparam \tli.current__i5_LC_6_22_1 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i5_LC_6_22_1  (
            .in0(_gnd_net_),
            .in1(N__1890),
            .in2(_gnd_net_),
            .in3(N__2591),
            .lcout(n160),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2485),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i7_LC_6_22_2 .C_ON=1'b0;
    defparam \tli.current__i7_LC_6_22_2 .SEQ_MODE=4'b1000;
    defparam \tli.current__i7_LC_6_22_2 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i7_LC_6_22_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2619),
            .in3(N__1884),
            .lcout(n156),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2485),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i9_LC_6_22_3 .C_ON=1'b0;
    defparam \tli.current__i9_LC_6_22_3 .SEQ_MODE=4'b1000;
    defparam \tli.current__i9_LC_6_22_3 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i9_LC_6_22_3  (
            .in0(_gnd_net_),
            .in1(N__1878),
            .in2(_gnd_net_),
            .in3(N__2599),
            .lcout(n152),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2485),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i1_2_lut_LC_6_22_4 .C_ON=1'b0;
    defparam \tli.i1_2_lut_LC_6_22_4 .SEQ_MODE=4'b0000;
    defparam \tli.i1_2_lut_LC_6_22_4 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \tli.i1_2_lut_LC_6_22_4  (
            .in0(_gnd_net_),
            .in1(N__2129),
            .in2(_gnd_net_),
            .in3(N__2144),
            .lcout(),
            .ltout(\tli.n10_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i7_4_lut_LC_6_22_5 .C_ON=1'b0;
    defparam \tli.i7_4_lut_LC_6_22_5 .SEQ_MODE=4'b0000;
    defparam \tli.i7_4_lut_LC_6_22_5 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i7_4_lut_LC_6_22_5  (
            .in0(N__1991),
            .in1(N__2159),
            .in2(N__1872),
            .in3(N__2099),
            .lcout(\tli.n16 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i8_LC_6_22_6 .C_ON=1'b0;
    defparam \tli.current__i8_LC_6_22_6 .SEQ_MODE=4'b1000;
    defparam \tli.current__i8_LC_6_22_6 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i8_LC_6_22_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2620),
            .in3(N__1869),
            .lcout(n154),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2485),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i6_LC_6_22_7 .C_ON=1'b0;
    defparam \tli.current__i6_LC_6_22_7 .SEQ_MODE=4'b1000;
    defparam \tli.current__i6_LC_6_22_7 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i6_LC_6_22_7  (
            .in0(_gnd_net_),
            .in1(N__1863),
            .in2(_gnd_net_),
            .in3(N__2592),
            .lcout(n158),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2485),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i4_4_lut_LC_6_23_0 .C_ON=1'b0;
    defparam \tli.i4_4_lut_LC_6_23_0 .SEQ_MODE=4'b0000;
    defparam \tli.i4_4_lut_LC_6_23_0 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \tli.i4_4_lut_LC_6_23_0  (
            .in0(N__2270),
            .in1(N__2255),
            .in2(N__2289),
            .in3(N__2515),
            .lcout(\tli.n10_adj_301 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i1_2_lut_adj_6_LC_6_23_1 .C_ON=1'b0;
    defparam \tli.i1_2_lut_adj_6_LC_6_23_1 .SEQ_MODE=4'b0000;
    defparam \tli.i1_2_lut_adj_6_LC_6_23_1 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \tli.i1_2_lut_adj_6_LC_6_23_1  (
            .in0(_gnd_net_),
            .in1(N__2443),
            .in2(_gnd_net_),
            .in3(N__1916),
            .lcout(\tli.n804 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i421_4_lut_LC_6_23_2 .C_ON=1'b0;
    defparam \tli.i421_4_lut_LC_6_23_2 .SEQ_MODE=4'b0000;
    defparam \tli.i421_4_lut_LC_6_23_2 .LUT_INIT=16'b1111101011101010;
    LogicCell40 \tli.i421_4_lut_LC_6_23_2  (
            .in0(N__2048),
            .in1(N__1947),
            .in2(N__2067),
            .in3(N__1941),
            .lcout(),
            .ltout(\tli.n22_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i1_4_lut_LC_6_23_3 .C_ON=1'b0;
    defparam \tli.i1_4_lut_LC_6_23_3 .SEQ_MODE=4'b0000;
    defparam \tli.i1_4_lut_LC_6_23_3 .LUT_INIT=16'b1110101010101010;
    LogicCell40 \tli.i1_4_lut_LC_6_23_3  (
            .in0(N__2222),
            .in1(N__2240),
            .in2(N__1935),
            .in3(N__1932),
            .lcout(),
            .ltout(\tli.n17_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i13_4_lut_LC_6_23_4 .C_ON=1'b0;
    defparam \tli.i13_4_lut_LC_6_23_4 .SEQ_MODE=4'b0000;
    defparam \tli.i13_4_lut_LC_6_23_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i13_4_lut_LC_6_23_4  (
            .in0(N__2721),
            .in1(N__2384),
            .in2(N__1926),
            .in3(N__2013),
            .lcout(),
            .ltout(\tli.n29_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i620_4_lut_LC_6_23_5 .C_ON=1'b0;
    defparam \tli.i620_4_lut_LC_6_23_5 .SEQ_MODE=4'b0000;
    defparam \tli.i620_4_lut_LC_6_23_5 .LUT_INIT=16'b0101010101010100;
    LogicCell40 \tli.i620_4_lut_LC_6_23_5  (
            .in0(N__2682),
            .in1(N__2022),
            .in2(N__1923),
            .in3(N__2001),
            .lcout(\tli.current_14__N_89 ),
            .ltout(\tli.current_14__N_89_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i1_2_lut_adj_5_LC_6_23_6 .C_ON=1'b0;
    defparam \tli.i1_2_lut_adj_5_LC_6_23_6 .SEQ_MODE=4'b0000;
    defparam \tli.i1_2_lut_adj_5_LC_6_23_6 .LUT_INIT=16'b1010000010100000;
    LogicCell40 \tli.i1_2_lut_adj_5_LC_6_23_6  (
            .in0(N__2442),
            .in1(_gnd_net_),
            .in2(N__1920),
            .in3(_gnd_net_),
            .lcout(\tli.n841 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.wren_18_LC_6_23_7 .C_ON=1'b0;
    defparam \tli.wren_18_LC_6_23_7 .SEQ_MODE=4'b1000;
    defparam \tli.wren_18_LC_6_23_7 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \tli.wren_18_LC_6_23_7  (
            .in0(_gnd_net_),
            .in1(N__2444),
            .in2(_gnd_net_),
            .in3(N__1917),
            .lcout(wren_N_keep),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2487),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i12_LC_6_24_0 .C_ON=1'b0;
    defparam \tli.current__i12_LC_6_24_0 .SEQ_MODE=4'b1000;
    defparam \tli.current__i12_LC_6_24_0 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i12_LC_6_24_0  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2616),
            .in3(N__1908),
            .lcout(n146),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i3_LC_6_24_1 .C_ON=1'b0;
    defparam \tli.current__i3_LC_6_24_1 .SEQ_MODE=4'b1000;
    defparam \tli.current__i3_LC_6_24_1 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i3_LC_6_24_1  (
            .in0(_gnd_net_),
            .in1(N__1902),
            .in2(_gnd_net_),
            .in3(N__2589),
            .lcout(n164),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i2_LC_6_24_2 .C_ON=1'b0;
    defparam \tli.current__i2_LC_6_24_2 .SEQ_MODE=4'b1000;
    defparam \tli.current__i2_LC_6_24_2 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i2_LC_6_24_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2618),
            .in3(N__1896),
            .lcout(n166),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i10_LC_6_24_3 .C_ON=1'b0;
    defparam \tli.current__i10_LC_6_24_3 .SEQ_MODE=4'b1000;
    defparam \tli.current__i10_LC_6_24_3 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i10_LC_6_24_3  (
            .in0(_gnd_net_),
            .in1(N__2034),
            .in2(_gnd_net_),
            .in3(N__2579),
            .lcout(n150),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i13_LC_6_24_4 .C_ON=1'b0;
    defparam \tli.current__i13_LC_6_24_4 .SEQ_MODE=4'b1000;
    defparam \tli.current__i13_LC_6_24_4 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \tli.current__i13_LC_6_24_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__2617),
            .in3(N__2028),
            .lcout(n144),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i12_4_lut_LC_6_24_5 .C_ON=1'b0;
    defparam \tli.i12_4_lut_LC_6_24_5 .SEQ_MODE=4'b0000;
    defparam \tli.i12_4_lut_LC_6_24_5 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i12_4_lut_LC_6_24_5  (
            .in0(N__2414),
            .in1(N__2354),
            .in2(N__2193),
            .in3(N__2399),
            .lcout(\tli.n28 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i10_4_lut_LC_6_24_6 .C_ON=1'b0;
    defparam \tli.i10_4_lut_LC_6_24_6 .SEQ_MODE=4'b0000;
    defparam \tli.i10_4_lut_LC_6_24_6 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i10_4_lut_LC_6_24_6  (
            .in0(N__2369),
            .in1(N__2207),
            .in2(N__2325),
            .in3(N__2174),
            .lcout(\tli.n26 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.current__i4_LC_6_24_7 .C_ON=1'b0;
    defparam \tli.current__i4_LC_6_24_7 .SEQ_MODE=4'b1000;
    defparam \tli.current__i4_LC_6_24_7 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \tli.current__i4_LC_6_24_7  (
            .in0(_gnd_net_),
            .in1(N__2007),
            .in2(_gnd_net_),
            .in3(N__2590),
            .lcout(n162),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2489),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.i11_4_lut_LC_6_25_0 .C_ON=1'b0;
    defparam \tli.i11_4_lut_LC_6_25_0 .SEQ_MODE=4'b0000;
    defparam \tli.i11_4_lut_LC_6_25_0 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \tli.i11_4_lut_LC_6_25_0  (
            .in0(N__2339),
            .in1(N__2699),
            .in2(N__2307),
            .in3(N__2735),
            .lcout(\tli.n27 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \tli.delay_counter_183__i0_LC_7_22_0 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i0_LC_7_22_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i0_LC_7_22_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i0_LC_7_22_0  (
            .in0(_gnd_net_),
            .in1(N__1992),
            .in2(_gnd_net_),
            .in3(N__1980),
            .lcout(\tli.delay_counter_0_N ),
            .ltout(),
            .carryin(bfn_7_22_0_),
            .carryout(\tli.n1017 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i1_LC_7_22_1 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i1_LC_7_22_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i1_LC_7_22_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i1_LC_7_22_1  (
            .in0(_gnd_net_),
            .in1(N__1977),
            .in2(_gnd_net_),
            .in3(N__1965),
            .lcout(\tli.delay_counter_1_N ),
            .ltout(),
            .carryin(\tli.n1017 ),
            .carryout(\tli.n1018 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i2_LC_7_22_2 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i2_LC_7_22_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i2_LC_7_22_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i2_LC_7_22_2  (
            .in0(_gnd_net_),
            .in1(N__1962),
            .in2(_gnd_net_),
            .in3(N__1950),
            .lcout(\tli.delay_counter_2_N ),
            .ltout(),
            .carryin(\tli.n1018 ),
            .carryout(\tli.n1019 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i3_LC_7_22_3 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i3_LC_7_22_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i3_LC_7_22_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i3_LC_7_22_3  (
            .in0(_gnd_net_),
            .in1(N__2160),
            .in2(_gnd_net_),
            .in3(N__2148),
            .lcout(\tli.delay_counter_3_N ),
            .ltout(),
            .carryin(\tli.n1019 ),
            .carryout(\tli.n1020 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i4_LC_7_22_4 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i4_LC_7_22_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i4_LC_7_22_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i4_LC_7_22_4  (
            .in0(_gnd_net_),
            .in1(N__2145),
            .in2(_gnd_net_),
            .in3(N__2133),
            .lcout(\tli.delay_counter_4_N ),
            .ltout(),
            .carryin(\tli.n1020 ),
            .carryout(\tli.n1021 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i5_LC_7_22_5 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i5_LC_7_22_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i5_LC_7_22_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i5_LC_7_22_5  (
            .in0(_gnd_net_),
            .in1(N__2130),
            .in2(_gnd_net_),
            .in3(N__2118),
            .lcout(\tli.delay_counter_5_N ),
            .ltout(),
            .carryin(\tli.n1021 ),
            .carryout(\tli.n1022 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i6_LC_7_22_6 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i6_LC_7_22_6 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i6_LC_7_22_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i6_LC_7_22_6  (
            .in0(_gnd_net_),
            .in1(N__2115),
            .in2(_gnd_net_),
            .in3(N__2103),
            .lcout(\tli.delay_counter_6_N ),
            .ltout(),
            .carryin(\tli.n1022 ),
            .carryout(\tli.n1023 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i7_LC_7_22_7 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i7_LC_7_22_7 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i7_LC_7_22_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i7_LC_7_22_7  (
            .in0(_gnd_net_),
            .in1(N__2100),
            .in2(_gnd_net_),
            .in3(N__2088),
            .lcout(\tli.delay_counter_7_N ),
            .ltout(),
            .carryin(\tli.n1023 ),
            .carryout(\tli.n1024 ),
            .clk(N__2488),
            .ce(N__2663),
            .sr(N__2630));
    defparam \tli.delay_counter_183__i8_LC_7_23_0 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i8_LC_7_23_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i8_LC_7_23_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i8_LC_7_23_0  (
            .in0(_gnd_net_),
            .in1(N__2084),
            .in2(_gnd_net_),
            .in3(N__2070),
            .lcout(\tli.delay_counter_8_N ),
            .ltout(),
            .carryin(bfn_7_23_0_),
            .carryout(\tli.n1025 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i9_LC_7_23_1 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i9_LC_7_23_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i9_LC_7_23_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i9_LC_7_23_1  (
            .in0(_gnd_net_),
            .in1(N__2066),
            .in2(_gnd_net_),
            .in3(N__2052),
            .lcout(\tli.delay_counter_9_N ),
            .ltout(),
            .carryin(\tli.n1025 ),
            .carryout(\tli.n1026 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i10_LC_7_23_2 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i10_LC_7_23_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i10_LC_7_23_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i10_LC_7_23_2  (
            .in0(_gnd_net_),
            .in1(N__2049),
            .in2(_gnd_net_),
            .in3(N__2037),
            .lcout(\tli.delay_counter_10_N ),
            .ltout(),
            .carryin(\tli.n1026 ),
            .carryout(\tli.n1027 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i11_LC_7_23_3 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i11_LC_7_23_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i11_LC_7_23_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i11_LC_7_23_3  (
            .in0(_gnd_net_),
            .in1(N__2288),
            .in2(_gnd_net_),
            .in3(N__2274),
            .lcout(\tli.delay_counter_11_N ),
            .ltout(),
            .carryin(\tli.n1027 ),
            .carryout(\tli.n1028 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i12_LC_7_23_4 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i12_LC_7_23_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i12_LC_7_23_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i12_LC_7_23_4  (
            .in0(_gnd_net_),
            .in1(N__2271),
            .in2(_gnd_net_),
            .in3(N__2259),
            .lcout(\tli.delay_counter_12_N ),
            .ltout(),
            .carryin(\tli.n1028 ),
            .carryout(\tli.n1029 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i13_LC_7_23_5 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i13_LC_7_23_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i13_LC_7_23_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i13_LC_7_23_5  (
            .in0(_gnd_net_),
            .in1(N__2256),
            .in2(_gnd_net_),
            .in3(N__2244),
            .lcout(\tli.delay_counter_13_N ),
            .ltout(),
            .carryin(\tli.n1029 ),
            .carryout(\tli.n1030 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i14_LC_7_23_6 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i14_LC_7_23_6 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i14_LC_7_23_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i14_LC_7_23_6  (
            .in0(_gnd_net_),
            .in1(N__2241),
            .in2(_gnd_net_),
            .in3(N__2229),
            .lcout(\tli.delay_counter_14_N ),
            .ltout(),
            .carryin(\tli.n1030 ),
            .carryout(\tli.n1031 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i15_LC_7_23_7 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i15_LC_7_23_7 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i15_LC_7_23_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i15_LC_7_23_7  (
            .in0(_gnd_net_),
            .in1(N__2516),
            .in2(_gnd_net_),
            .in3(N__2226),
            .lcout(delay_counter_15_N_keep),
            .ltout(),
            .carryin(\tli.n1031 ),
            .carryout(\tli.n1032 ),
            .clk(N__2490),
            .ce(N__2650),
            .sr(N__2622));
    defparam \tli.delay_counter_183__i16_LC_7_24_0 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i16_LC_7_24_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i16_LC_7_24_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i16_LC_7_24_0  (
            .in0(_gnd_net_),
            .in1(N__2223),
            .in2(_gnd_net_),
            .in3(N__2211),
            .lcout(\tli.delay_counter_16 ),
            .ltout(),
            .carryin(bfn_7_24_0_),
            .carryout(\tli.n1033 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i17_LC_7_24_1 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i17_LC_7_24_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i17_LC_7_24_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i17_LC_7_24_1  (
            .in0(_gnd_net_),
            .in1(N__2208),
            .in2(_gnd_net_),
            .in3(N__2196),
            .lcout(\tli.delay_counter_17 ),
            .ltout(),
            .carryin(\tli.n1033 ),
            .carryout(\tli.n1034 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i18_LC_7_24_2 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i18_LC_7_24_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i18_LC_7_24_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i18_LC_7_24_2  (
            .in0(_gnd_net_),
            .in1(N__2192),
            .in2(_gnd_net_),
            .in3(N__2178),
            .lcout(\tli.delay_counter_18 ),
            .ltout(),
            .carryin(\tli.n1034 ),
            .carryout(\tli.n1035 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i19_LC_7_24_3 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i19_LC_7_24_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i19_LC_7_24_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i19_LC_7_24_3  (
            .in0(_gnd_net_),
            .in1(N__2175),
            .in2(_gnd_net_),
            .in3(N__2163),
            .lcout(\tli.delay_counter_19 ),
            .ltout(),
            .carryin(\tli.n1035 ),
            .carryout(\tli.n1036 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i20_LC_7_24_4 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i20_LC_7_24_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i20_LC_7_24_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i20_LC_7_24_4  (
            .in0(_gnd_net_),
            .in1(N__2415),
            .in2(_gnd_net_),
            .in3(N__2403),
            .lcout(\tli.delay_counter_20 ),
            .ltout(),
            .carryin(\tli.n1036 ),
            .carryout(\tli.n1037 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i21_LC_7_24_5 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i21_LC_7_24_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i21_LC_7_24_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i21_LC_7_24_5  (
            .in0(_gnd_net_),
            .in1(N__2400),
            .in2(_gnd_net_),
            .in3(N__2388),
            .lcout(\tli.delay_counter_21 ),
            .ltout(),
            .carryin(\tli.n1037 ),
            .carryout(\tli.n1038 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i22_LC_7_24_6 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i22_LC_7_24_6 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i22_LC_7_24_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i22_LC_7_24_6  (
            .in0(_gnd_net_),
            .in1(N__2385),
            .in2(_gnd_net_),
            .in3(N__2373),
            .lcout(\tli.delay_counter_22 ),
            .ltout(),
            .carryin(\tli.n1038 ),
            .carryout(\tli.n1039 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i23_LC_7_24_7 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i23_LC_7_24_7 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i23_LC_7_24_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i23_LC_7_24_7  (
            .in0(_gnd_net_),
            .in1(N__2370),
            .in2(_gnd_net_),
            .in3(N__2358),
            .lcout(\tli.delay_counter_23 ),
            .ltout(),
            .carryin(\tli.n1039 ),
            .carryout(\tli.n1040 ),
            .clk(N__2491),
            .ce(N__2664),
            .sr(N__2631));
    defparam \tli.delay_counter_183__i24_LC_7_25_0 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i24_LC_7_25_0 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i24_LC_7_25_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i24_LC_7_25_0  (
            .in0(_gnd_net_),
            .in1(N__2355),
            .in2(_gnd_net_),
            .in3(N__2343),
            .lcout(\tli.delay_counter_24 ),
            .ltout(),
            .carryin(bfn_7_25_0_),
            .carryout(\tli.n1041 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i25_LC_7_25_1 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i25_LC_7_25_1 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i25_LC_7_25_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i25_LC_7_25_1  (
            .in0(_gnd_net_),
            .in1(N__2340),
            .in2(_gnd_net_),
            .in3(N__2328),
            .lcout(\tli.delay_counter_25 ),
            .ltout(),
            .carryin(\tli.n1041 ),
            .carryout(\tli.n1042 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i26_LC_7_25_2 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i26_LC_7_25_2 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i26_LC_7_25_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i26_LC_7_25_2  (
            .in0(_gnd_net_),
            .in1(N__2324),
            .in2(_gnd_net_),
            .in3(N__2310),
            .lcout(\tli.delay_counter_26 ),
            .ltout(),
            .carryin(\tli.n1042 ),
            .carryout(\tli.n1043 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i27_LC_7_25_3 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i27_LC_7_25_3 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i27_LC_7_25_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i27_LC_7_25_3  (
            .in0(_gnd_net_),
            .in1(N__2306),
            .in2(_gnd_net_),
            .in3(N__2292),
            .lcout(\tli.delay_counter_27 ),
            .ltout(),
            .carryin(\tli.n1043 ),
            .carryout(\tli.n1044 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i28_LC_7_25_4 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i28_LC_7_25_4 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i28_LC_7_25_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i28_LC_7_25_4  (
            .in0(_gnd_net_),
            .in1(N__2736),
            .in2(_gnd_net_),
            .in3(N__2724),
            .lcout(\tli.delay_counter_28 ),
            .ltout(),
            .carryin(\tli.n1044 ),
            .carryout(\tli.n1045 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i29_LC_7_25_5 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i29_LC_7_25_5 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i29_LC_7_25_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i29_LC_7_25_5  (
            .in0(_gnd_net_),
            .in1(N__2717),
            .in2(_gnd_net_),
            .in3(N__2703),
            .lcout(\tli.delay_counter_29 ),
            .ltout(),
            .carryin(\tli.n1045 ),
            .carryout(\tli.n1046 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i30_LC_7_25_6 .C_ON=1'b1;
    defparam \tli.delay_counter_183__i30_LC_7_25_6 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i30_LC_7_25_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i30_LC_7_25_6  (
            .in0(_gnd_net_),
            .in1(N__2700),
            .in2(_gnd_net_),
            .in3(N__2688),
            .lcout(\tli.delay_counter_30 ),
            .ltout(),
            .carryin(\tli.n1046 ),
            .carryout(\tli.n1047 ),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.delay_counter_183__i31_LC_7_25_7 .C_ON=1'b0;
    defparam \tli.delay_counter_183__i31_LC_7_25_7 .SEQ_MODE=4'b1000;
    defparam \tli.delay_counter_183__i31_LC_7_25_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \tli.delay_counter_183__i31_LC_7_25_7  (
            .in0(_gnd_net_),
            .in1(N__2678),
            .in2(_gnd_net_),
            .in3(N__2685),
            .lcout(\tli.delay_counter_31 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2492),
            .ce(N__2656),
            .sr(N__2626));
    defparam \tli.spi.i275_LC_9_23_3 .C_ON=1'b0;
    defparam \tli.spi.i275_LC_9_23_3 .SEQ_MODE=4'b1000;
    defparam \tli.spi.i275_LC_9_23_3 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \tli.spi.i275_LC_9_23_3  (
            .in0(N__2529),
            .in1(N__2499),
            .in2(_gnd_net_),
            .in3(N__2520),
            .lcout(di_reg_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2493),
            .ce(),
            .sr(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_10_17_6.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_10_17_6.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_10_17_6.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_10_17_6 (
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
endmodule // TinyFPGA_B
