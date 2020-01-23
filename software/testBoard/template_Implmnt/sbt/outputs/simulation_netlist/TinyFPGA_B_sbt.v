// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Jan 23 2020 15:51:44

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

    wire N__2418;
    wire N__2417;
    wire N__2416;
    wire N__2409;
    wire N__2408;
    wire N__2407;
    wire N__2400;
    wire N__2399;
    wire N__2398;
    wire N__2391;
    wire N__2390;
    wire N__2389;
    wire N__2382;
    wire N__2381;
    wire N__2380;
    wire N__2373;
    wire N__2372;
    wire N__2371;
    wire N__2364;
    wire N__2363;
    wire N__2362;
    wire N__2355;
    wire N__2354;
    wire N__2353;
    wire N__2346;
    wire N__2345;
    wire N__2344;
    wire N__2337;
    wire N__2336;
    wire N__2335;
    wire N__2328;
    wire N__2327;
    wire N__2326;
    wire N__2319;
    wire N__2318;
    wire N__2317;
    wire N__2310;
    wire N__2309;
    wire N__2308;
    wire N__2301;
    wire N__2300;
    wire N__2299;
    wire N__2292;
    wire N__2291;
    wire N__2290;
    wire N__2273;
    wire N__2272;
    wire N__2271;
    wire N__2270;
    wire N__2269;
    wire N__2264;
    wire N__2261;
    wire N__2256;
    wire N__2249;
    wire N__2246;
    wire N__2245;
    wire N__2244;
    wire N__2243;
    wire N__2240;
    wire N__2237;
    wire N__2234;
    wire N__2231;
    wire N__2228;
    wire N__2223;
    wire N__2216;
    wire N__2213;
    wire N__2212;
    wire N__2209;
    wire N__2206;
    wire N__2205;
    wire N__2200;
    wire N__2197;
    wire N__2192;
    wire N__2189;
    wire N__2186;
    wire N__2183;
    wire N__2180;
    wire N__2177;
    wire N__2176;
    wire N__2173;
    wire N__2170;
    wire N__2167;
    wire N__2164;
    wire N__2163;
    wire N__2162;
    wire N__2161;
    wire N__2160;
    wire N__2159;
    wire N__2156;
    wire N__2153;
    wire N__2150;
    wire N__2145;
    wire N__2140;
    wire N__2129;
    wire N__2128;
    wire N__2127;
    wire N__2126;
    wire N__2125;
    wire N__2124;
    wire N__2119;
    wire N__2112;
    wire N__2109;
    wire N__2102;
    wire N__2101;
    wire N__2100;
    wire N__2099;
    wire N__2098;
    wire N__2097;
    wire N__2096;
    wire N__2093;
    wire N__2090;
    wire N__2087;
    wire N__2084;
    wire N__2081;
    wire N__2076;
    wire N__2071;
    wire N__2060;
    wire N__2059;
    wire N__2058;
    wire N__2051;
    wire N__2048;
    wire N__2047;
    wire N__2046;
    wire N__2043;
    wire N__2038;
    wire N__2033;
    wire N__2032;
    wire N__2031;
    wire N__2028;
    wire N__2027;
    wire N__2026;
    wire N__2023;
    wire N__2020;
    wire N__2013;
    wire N__2006;
    wire N__2003;
    wire N__2002;
    wire N__1999;
    wire N__1998;
    wire N__1997;
    wire N__1996;
    wire N__1993;
    wire N__1990;
    wire N__1983;
    wire N__1976;
    wire N__1975;
    wire N__1974;
    wire N__1973;
    wire N__1972;
    wire N__1971;
    wire N__1970;
    wire N__1969;
    wire N__1968;
    wire N__1967;
    wire N__1966;
    wire N__1965;
    wire N__1940;
    wire N__1937;
    wire N__1934;
    wire N__1933;
    wire N__1930;
    wire N__1927;
    wire N__1922;
    wire N__1919;
    wire N__1916;
    wire N__1913;
    wire N__1910;
    wire N__1907;
    wire N__1904;
    wire N__1901;
    wire N__1900;
    wire N__1897;
    wire N__1896;
    wire N__1895;
    wire N__1892;
    wire N__1889;
    wire N__1886;
    wire N__1883;
    wire N__1880;
    wire N__1877;
    wire N__1874;
    wire N__1865;
    wire N__1862;
    wire N__1861;
    wire N__1860;
    wire N__1857;
    wire N__1856;
    wire N__1853;
    wire N__1850;
    wire N__1847;
    wire N__1844;
    wire N__1835;
    wire N__1832;
    wire N__1829;
    wire N__1826;
    wire N__1823;
    wire N__1820;
    wire N__1817;
    wire N__1814;
    wire N__1811;
    wire N__1808;
    wire N__1805;
    wire N__1802;
    wire N__1799;
    wire N__1796;
    wire N__1793;
    wire N__1790;
    wire N__1787;
    wire N__1784;
    wire N__1781;
    wire N__1778;
    wire N__1775;
    wire N__1774;
    wire N__1771;
    wire N__1770;
    wire N__1769;
    wire N__1766;
    wire N__1763;
    wire N__1758;
    wire N__1751;
    wire N__1748;
    wire N__1745;
    wire N__1742;
    wire N__1739;
    wire N__1738;
    wire N__1737;
    wire N__1736;
    wire N__1735;
    wire N__1728;
    wire N__1725;
    wire N__1722;
    wire N__1715;
    wire N__1714;
    wire N__1713;
    wire N__1712;
    wire N__1709;
    wire N__1708;
    wire N__1705;
    wire N__1704;
    wire N__1701;
    wire N__1698;
    wire N__1697;
    wire N__1690;
    wire N__1683;
    wire N__1680;
    wire N__1673;
    wire N__1672;
    wire N__1671;
    wire N__1670;
    wire N__1667;
    wire N__1664;
    wire N__1661;
    wire N__1658;
    wire N__1649;
    wire N__1648;
    wire N__1645;
    wire N__1642;
    wire N__1637;
    wire N__1636;
    wire N__1635;
    wire N__1632;
    wire N__1629;
    wire N__1626;
    wire N__1619;
    wire N__1616;
    wire N__1613;
    wire N__1612;
    wire N__1611;
    wire N__1610;
    wire N__1607;
    wire N__1600;
    wire N__1595;
    wire N__1592;
    wire N__1591;
    wire N__1590;
    wire N__1589;
    wire N__1586;
    wire N__1583;
    wire N__1578;
    wire N__1571;
    wire N__1568;
    wire N__1565;
    wire N__1562;
    wire N__1559;
    wire N__1558;
    wire N__1557;
    wire N__1556;
    wire N__1553;
    wire N__1550;
    wire N__1547;
    wire N__1544;
    wire N__1541;
    wire N__1532;
    wire N__1531;
    wire N__1528;
    wire N__1527;
    wire N__1526;
    wire N__1523;
    wire N__1520;
    wire N__1517;
    wire N__1514;
    wire N__1509;
    wire N__1502;
    wire N__1499;
    wire N__1496;
    wire N__1493;
    wire N__1490;
    wire N__1487;
    wire N__1484;
    wire N__1481;
    wire N__1478;
    wire N__1475;
    wire N__1472;
    wire N__1469;
    wire N__1466;
    wire N__1463;
    wire N__1460;
    wire N__1457;
    wire N__1454;
    wire N__1451;
    wire N__1448;
    wire N__1445;
    wire N__1442;
    wire N__1439;
    wire N__1438;
    wire N__1437;
    wire N__1432;
    wire N__1429;
    wire N__1424;
    wire N__1421;
    wire N__1420;
    wire N__1419;
    wire N__1414;
    wire N__1411;
    wire N__1406;
    wire N__1403;
    wire N__1402;
    wire N__1399;
    wire N__1396;
    wire N__1395;
    wire N__1390;
    wire N__1387;
    wire N__1382;
    wire N__1379;
    wire N__1378;
    wire N__1377;
    wire N__1372;
    wire N__1369;
    wire N__1364;
    wire N__1361;
    wire N__1358;
    wire N__1357;
    wire N__1354;
    wire N__1351;
    wire N__1346;
    wire N__1343;
    wire N__1340;
    wire N__1337;
    wire N__1334;
    wire N__1331;
    wire N__1328;
    wire N__1325;
    wire N__1322;
    wire N__1319;
    wire N__1316;
    wire N__1313;
    wire N__1310;
    wire N__1307;
    wire N__1304;
    wire N__1301;
    wire N__1298;
    wire N__1295;
    wire N__1292;
    wire N__1289;
    wire N__1286;
    wire N__1283;
    wire N__1280;
    wire N__1277;
    wire N__1274;
    wire N__1271;
    wire N__1268;
    wire N__1265;
    wire N__1262;
    wire N__1259;
    wire N__1256;
    wire N__1253;
    wire N__1250;
    wire N__1247;
    wire N__1244;
    wire N__1241;
    wire N__1238;
    wire N__1235;
    wire N__1232;
    wire N__1229;
    wire N__1226;
    wire N__1223;
    wire N__1220;
    wire N__1217;
    wire N__1214;
    wire N__1211;
    wire N__1208;
    wire N__1205;
    wire N__1202;
    wire N__1199;
    wire N__1196;
    wire N__1193;
    wire N__1190;
    wire N__1187;
    wire N__1184;
    wire N__1181;
    wire N__1178;
    wire N__1175;
    wire N__1172;
    wire N__1169;
    wire N__1166;
    wire N__1163;
    wire N__1160;
    wire N__1157;
    wire N__1154;
    wire N__1151;
    wire N__1148;
    wire N__1145;
    wire N__1142;
    wire N__1139;
    wire N__1136;
    wire N__1133;
    wire N__1130;
    wire N__1127;
    wire N__1124;
    wire N__1121;
    wire CLK_pad_gb_input;
    wire VCCG0;
    wire GNDG0;
    wire n1411_cascade_;
    wire LED_c;
    wire n1410;
    wire n26;
    wire bfn_13_27_0_;
    wire n25;
    wire n1257;
    wire n24;
    wire n1258;
    wire n23;
    wire n1259;
    wire n22;
    wire n1260;
    wire n21;
    wire n1261;
    wire n20;
    wire n1262;
    wire n19;
    wire n1263;
    wire n1264;
    wire n18;
    wire bfn_13_28_0_;
    wire n17;
    wire n1265;
    wire n16;
    wire n1266;
    wire n15;
    wire n1267;
    wire n14;
    wire n1268;
    wire n13;
    wire n1269;
    wire n12;
    wire n1270;
    wire n11;
    wire n1271;
    wire n1272;
    wire n10;
    wire bfn_13_29_0_;
    wire n9;
    wire n1273;
    wire n8;
    wire n1274;
    wire n7;
    wire n1275;
    wire n6;
    wire n1276;
    wire blink_counter_21;
    wire n1277;
    wire blink_counter_22;
    wire n1278;
    wire blink_counter_23;
    wire n1279;
    wire n1280;
    wire blink_counter_24;
    wire bfn_13_30_0_;
    wire n1281;
    wire blink_counter_25;
    wire bfn_13_31_0_;
    wire \PWM.n1282 ;
    wire \PWM.n1283 ;
    wire \PWM.n1284 ;
    wire \PWM.n1285 ;
    wire \PWM.n1286 ;
    wire \PWM.n1287 ;
    wire \PWM.n1288 ;
    wire \PWM.n1289 ;
    wire bfn_13_32_0_;
    wire \PWM.n1290 ;
    wire \PWM.n1370_cascade_ ;
    wire \PWM.n4_cascade_ ;
    wire \PWM.n1400 ;
    wire \PWM.n12_cascade_ ;
    wire \PWM.n13_cascade_ ;
    wire \PWM.count_0_7 ;
    wire \PWM.n640 ;
    wire \PWM.count_0_4 ;
    wire \PWM.n640_cascade_ ;
    wire \PWM.count_0_3 ;
    wire \PWM.n1406 ;
    wire \PWM.pwm_out_0__N_55_cascade_ ;
    wire \PWM.count_0_2 ;
    wire \PWM.count_0_0 ;
    wire \PWM.n3_cascade_ ;
    wire \PWM.n14 ;
    wire \PWM.count_0_8 ;
    wire \PWM.count_0_9 ;
    wire \PWM.n16_cascade_ ;
    wire \PWM.n12_adj_126 ;
    wire \PWM.n19_cascade_ ;
    wire \PWM.n993 ;
    wire \PWM.n18 ;
    wire \PWM.n993_cascade_ ;
    wire \PWM.n1402 ;
    wire \PWM.n657 ;
    wire \PWM.count_0_1 ;
    wire \PWM.n647 ;
    wire \PWM.n1404 ;
    wire half_duty_0_2;
    wire half_duty_0_0;
    wire half_duty_0_3;
    wire \PWM.pwm_out_0_N_43_4 ;
    wire half_duty_0_5;
    wire \PWM.count_0_5 ;
    wire \PWM.pwm_out_0_N_43_4_cascade_ ;
    wire \PWM.count_0_6 ;
    wire \PWM.n11 ;
    wire \PWM.n694 ;
    wire n684;
    wire half_duty_0_1;
    wire \PWM.pwm_out_0__N_55 ;
    wire \PWM.n19 ;
    wire \PWM.pause_counter_0_2 ;
    wire \PWM.pause_counter_0_1 ;
    wire \PWM.pause_counter_0_0 ;
    wire CLK_c;
    wire \PWM.n653 ;
    wire \PWM.n193 ;
    wire CONSTANT_ONE_NET;
    wire _gnd_net_;

    defparam CS_CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_CLK_pad_iopad (
            .OE(N__2418),
            .DIN(N__2417),
            .DOUT(N__2416),
            .PACKAGEPIN(CS_CLK));
    defparam CS_CLK_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_CLK_pad_preio (
            .PADOEN(N__2418),
            .PADOUT(N__2417),
            .PADIN(N__2416),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CS_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_pad_iopad (
            .OE(N__2409),
            .DIN(N__2408),
            .DOUT(N__2407),
            .PACKAGEPIN(CS));
    defparam CS_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_pad_preio (
            .PADOEN(N__2409),
            .PADOUT(N__2408),
            .PADIN(N__2407),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam DE_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam DE_pad_iopad.PULLUP=1'b0;
    IO_PAD DE_pad_iopad (
            .OE(N__2400),
            .DIN(N__2399),
            .DOUT(N__2398),
            .PACKAGEPIN(DE));
    defparam DE_pad_preio.PIN_TYPE=6'b011001;
    defparam DE_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO DE_pad_preio (
            .PADOEN(N__2400),
            .PADOUT(N__2399),
            .PADIN(N__2398),
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
            .OE(N__2391),
            .DIN(N__2390),
            .DOUT(N__2389),
            .PACKAGEPIN(INHA));
    defparam INHA_pad_preio.PIN_TYPE=6'b010101;
    defparam INHA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHA_pad_preio (
            .PADOEN(N__2391),
            .PADOUT(N__2390),
            .PADIN(N__2389),
            .CLOCKENABLE(N__1793),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__1823),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(N__1976),
            .OUTPUTENABLE());
    defparam INHB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHB_pad_iopad.PULLUP=1'b0;
    IO_PAD INHB_pad_iopad (
            .OE(N__2382),
            .DIN(N__2381),
            .DOUT(N__2380),
            .PACKAGEPIN(INHB));
    defparam INHB_pad_preio.PIN_TYPE=6'b011001;
    defparam INHB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHB_pad_preio (
            .PADOEN(N__2382),
            .PADOUT(N__2381),
            .PADIN(N__2380),
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
            .OE(N__2373),
            .DIN(N__2372),
            .DOUT(N__2371),
            .PACKAGEPIN(INHC));
    defparam INHC_pad_preio.PIN_TYPE=6'b011001;
    defparam INHC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHC_pad_preio (
            .PADOEN(N__2373),
            .PADOUT(N__2372),
            .PADIN(N__2371),
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
            .OE(N__2364),
            .DIN(N__2363),
            .DOUT(N__2362),
            .PACKAGEPIN(INLA));
    defparam INLA_pad_preio.PIN_TYPE=6'b011001;
    defparam INLA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLA_pad_preio (
            .PADOEN(N__2364),
            .PADOUT(N__2363),
            .PADIN(N__2362),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__1907),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLB_pad_iopad.PULLUP=1'b0;
    IO_PAD INLB_pad_iopad (
            .OE(N__2355),
            .DIN(N__2354),
            .DOUT(N__2353),
            .PACKAGEPIN(INLB));
    defparam INLB_pad_preio.PIN_TYPE=6'b011001;
    defparam INLB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLB_pad_preio (
            .PADOEN(N__2355),
            .PADOUT(N__2354),
            .PADIN(N__2353),
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
            .OE(N__2346),
            .DIN(N__2345),
            .DOUT(N__2344),
            .PACKAGEPIN(INLC));
    defparam INLC_pad_preio.PIN_TYPE=6'b011001;
    defparam INLC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLC_pad_preio (
            .PADOEN(N__2346),
            .PADOUT(N__2345),
            .PADIN(N__2344),
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
            .OE(N__2337),
            .DIN(N__2336),
            .DOUT(N__2335),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__2337),
            .PADOUT(N__2336),
            .PADIN(N__2335),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__1184),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam NEOPXL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam NEOPXL_pad_iopad.PULLUP=1'b0;
    IO_PAD NEOPXL_pad_iopad (
            .OE(N__2328),
            .DIN(N__2327),
            .DOUT(N__2326),
            .PACKAGEPIN(NEOPXL));
    defparam NEOPXL_pad_preio.PIN_TYPE=6'b011001;
    defparam NEOPXL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO NEOPXL_pad_preio (
            .PADOEN(N__2328),
            .PADOUT(N__2327),
            .PADIN(N__2326),
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
            .OE(N__2319),
            .DIN(N__2318),
            .DOUT(N__2317),
            .PACKAGEPIN(SCL));
    defparam SCL_pad_preio.PIN_TYPE=6'b011001;
    defparam SCL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO SCL_pad_preio (
            .PADOEN(N__2319),
            .PADOUT(N__2318),
            .PADIN(N__2317),
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
            .OE(N__2310),
            .DIN(N__2309),
            .DOUT(N__2308),
            .PACKAGEPIN(TX));
    defparam TX_pad_preio.PIN_TYPE=6'b011001;
    defparam TX_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO TX_pad_preio (
            .PADOEN(N__2310),
            .PADOUT(N__2309),
            .PADIN(N__2308),
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
            .OE(N__2301),
            .DIN(N__2300),
            .DOUT(N__2299),
            .PACKAGEPIN(USBPU));
    defparam USBPU_pad_preio.PIN_TYPE=6'b011001;
    defparam USBPU_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO USBPU_pad_preio (
            .PADOEN(N__2301),
            .PADOUT(N__2300),
            .PADIN(N__2299),
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
            .OE(N__2292),
            .DIN(N__2291),
            .DOUT(N__2290),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__2292),
            .PADOUT(N__2291),
            .PADIN(N__2290),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    InMux I__482 (
            .O(N__2273),
            .I(N__2264));
    InMux I__481 (
            .O(N__2272),
            .I(N__2264));
    InMux I__480 (
            .O(N__2271),
            .I(N__2261));
    InMux I__479 (
            .O(N__2270),
            .I(N__2256));
    InMux I__478 (
            .O(N__2269),
            .I(N__2256));
    LocalMux I__477 (
            .O(N__2264),
            .I(half_duty_0_5));
    LocalMux I__476 (
            .O(N__2261),
            .I(half_duty_0_5));
    LocalMux I__475 (
            .O(N__2256),
            .I(half_duty_0_5));
    InMux I__474 (
            .O(N__2249),
            .I(N__2246));
    LocalMux I__473 (
            .O(N__2246),
            .I(N__2240));
    CascadeMux I__472 (
            .O(N__2245),
            .I(N__2237));
    CascadeMux I__471 (
            .O(N__2244),
            .I(N__2234));
    InMux I__470 (
            .O(N__2243),
            .I(N__2231));
    Span4Mux_h I__469 (
            .O(N__2240),
            .I(N__2228));
    InMux I__468 (
            .O(N__2237),
            .I(N__2223));
    InMux I__467 (
            .O(N__2234),
            .I(N__2223));
    LocalMux I__466 (
            .O(N__2231),
            .I(\PWM.count_0_5 ));
    Odrv4 I__465 (
            .O(N__2228),
            .I(\PWM.count_0_5 ));
    LocalMux I__464 (
            .O(N__2223),
            .I(\PWM.count_0_5 ));
    CascadeMux I__463 (
            .O(N__2216),
            .I(\PWM.pwm_out_0_N_43_4_cascade_ ));
    InMux I__462 (
            .O(N__2213),
            .I(N__2209));
    InMux I__461 (
            .O(N__2212),
            .I(N__2206));
    LocalMux I__460 (
            .O(N__2209),
            .I(N__2200));
    LocalMux I__459 (
            .O(N__2206),
            .I(N__2200));
    InMux I__458 (
            .O(N__2205),
            .I(N__2197));
    Odrv4 I__457 (
            .O(N__2200),
            .I(\PWM.count_0_6 ));
    LocalMux I__456 (
            .O(N__2197),
            .I(\PWM.count_0_6 ));
    InMux I__455 (
            .O(N__2192),
            .I(N__2189));
    LocalMux I__454 (
            .O(N__2189),
            .I(\PWM.n11 ));
    SRMux I__453 (
            .O(N__2186),
            .I(N__2183));
    LocalMux I__452 (
            .O(N__2183),
            .I(\PWM.n694 ));
    SRMux I__451 (
            .O(N__2180),
            .I(N__2177));
    LocalMux I__450 (
            .O(N__2177),
            .I(N__2173));
    SRMux I__449 (
            .O(N__2176),
            .I(N__2170));
    Span4Mux_h I__448 (
            .O(N__2173),
            .I(N__2167));
    LocalMux I__447 (
            .O(N__2170),
            .I(N__2164));
    Span4Mux_s0_v I__446 (
            .O(N__2167),
            .I(N__2156));
    Span4Mux_h I__445 (
            .O(N__2164),
            .I(N__2153));
    InMux I__444 (
            .O(N__2163),
            .I(N__2150));
    InMux I__443 (
            .O(N__2162),
            .I(N__2145));
    InMux I__442 (
            .O(N__2161),
            .I(N__2145));
    InMux I__441 (
            .O(N__2160),
            .I(N__2140));
    InMux I__440 (
            .O(N__2159),
            .I(N__2140));
    Odrv4 I__439 (
            .O(N__2156),
            .I(n684));
    Odrv4 I__438 (
            .O(N__2153),
            .I(n684));
    LocalMux I__437 (
            .O(N__2150),
            .I(n684));
    LocalMux I__436 (
            .O(N__2145),
            .I(n684));
    LocalMux I__435 (
            .O(N__2140),
            .I(n684));
    InMux I__434 (
            .O(N__2129),
            .I(N__2119));
    InMux I__433 (
            .O(N__2128),
            .I(N__2119));
    InMux I__432 (
            .O(N__2127),
            .I(N__2112));
    InMux I__431 (
            .O(N__2126),
            .I(N__2112));
    InMux I__430 (
            .O(N__2125),
            .I(N__2112));
    InMux I__429 (
            .O(N__2124),
            .I(N__2109));
    LocalMux I__428 (
            .O(N__2119),
            .I(half_duty_0_1));
    LocalMux I__427 (
            .O(N__2112),
            .I(half_duty_0_1));
    LocalMux I__426 (
            .O(N__2109),
            .I(half_duty_0_1));
    InMux I__425 (
            .O(N__2102),
            .I(N__2093));
    InMux I__424 (
            .O(N__2101),
            .I(N__2090));
    CEMux I__423 (
            .O(N__2100),
            .I(N__2087));
    CEMux I__422 (
            .O(N__2099),
            .I(N__2084));
    InMux I__421 (
            .O(N__2098),
            .I(N__2081));
    InMux I__420 (
            .O(N__2097),
            .I(N__2076));
    InMux I__419 (
            .O(N__2096),
            .I(N__2076));
    LocalMux I__418 (
            .O(N__2093),
            .I(N__2071));
    LocalMux I__417 (
            .O(N__2090),
            .I(N__2071));
    LocalMux I__416 (
            .O(N__2087),
            .I(\PWM.pwm_out_0__N_55 ));
    LocalMux I__415 (
            .O(N__2084),
            .I(\PWM.pwm_out_0__N_55 ));
    LocalMux I__414 (
            .O(N__2081),
            .I(\PWM.pwm_out_0__N_55 ));
    LocalMux I__413 (
            .O(N__2076),
            .I(\PWM.pwm_out_0__N_55 ));
    Odrv4 I__412 (
            .O(N__2071),
            .I(\PWM.pwm_out_0__N_55 ));
    InMux I__411 (
            .O(N__2060),
            .I(N__2051));
    InMux I__410 (
            .O(N__2059),
            .I(N__2051));
    InMux I__409 (
            .O(N__2058),
            .I(N__2051));
    LocalMux I__408 (
            .O(N__2051),
            .I(\PWM.n19 ));
    InMux I__407 (
            .O(N__2048),
            .I(N__2043));
    InMux I__406 (
            .O(N__2047),
            .I(N__2038));
    InMux I__405 (
            .O(N__2046),
            .I(N__2038));
    LocalMux I__404 (
            .O(N__2043),
            .I(\PWM.pause_counter_0_2 ));
    LocalMux I__403 (
            .O(N__2038),
            .I(\PWM.pause_counter_0_2 ));
    CascadeMux I__402 (
            .O(N__2033),
            .I(N__2028));
    InMux I__401 (
            .O(N__2032),
            .I(N__2023));
    InMux I__400 (
            .O(N__2031),
            .I(N__2020));
    InMux I__399 (
            .O(N__2028),
            .I(N__2013));
    InMux I__398 (
            .O(N__2027),
            .I(N__2013));
    InMux I__397 (
            .O(N__2026),
            .I(N__2013));
    LocalMux I__396 (
            .O(N__2023),
            .I(\PWM.pause_counter_0_1 ));
    LocalMux I__395 (
            .O(N__2020),
            .I(\PWM.pause_counter_0_1 ));
    LocalMux I__394 (
            .O(N__2013),
            .I(\PWM.pause_counter_0_1 ));
    CascadeMux I__393 (
            .O(N__2006),
            .I(N__2003));
    InMux I__392 (
            .O(N__2003),
            .I(N__1999));
    InMux I__391 (
            .O(N__2002),
            .I(N__1993));
    LocalMux I__390 (
            .O(N__1999),
            .I(N__1990));
    InMux I__389 (
            .O(N__1998),
            .I(N__1983));
    InMux I__388 (
            .O(N__1997),
            .I(N__1983));
    InMux I__387 (
            .O(N__1996),
            .I(N__1983));
    LocalMux I__386 (
            .O(N__1993),
            .I(\PWM.pause_counter_0_0 ));
    Odrv4 I__385 (
            .O(N__1990),
            .I(\PWM.pause_counter_0_0 ));
    LocalMux I__384 (
            .O(N__1983),
            .I(\PWM.pause_counter_0_0 ));
    ClkMux I__383 (
            .O(N__1976),
            .I(N__1940));
    ClkMux I__382 (
            .O(N__1975),
            .I(N__1940));
    ClkMux I__381 (
            .O(N__1974),
            .I(N__1940));
    ClkMux I__380 (
            .O(N__1973),
            .I(N__1940));
    ClkMux I__379 (
            .O(N__1972),
            .I(N__1940));
    ClkMux I__378 (
            .O(N__1971),
            .I(N__1940));
    ClkMux I__377 (
            .O(N__1970),
            .I(N__1940));
    ClkMux I__376 (
            .O(N__1969),
            .I(N__1940));
    ClkMux I__375 (
            .O(N__1968),
            .I(N__1940));
    ClkMux I__374 (
            .O(N__1967),
            .I(N__1940));
    ClkMux I__373 (
            .O(N__1966),
            .I(N__1940));
    ClkMux I__372 (
            .O(N__1965),
            .I(N__1940));
    GlobalMux I__371 (
            .O(N__1940),
            .I(N__1937));
    gio2CtrlBuf I__370 (
            .O(N__1937),
            .I(CLK_c));
    CEMux I__369 (
            .O(N__1934),
            .I(N__1930));
    CEMux I__368 (
            .O(N__1933),
            .I(N__1927));
    LocalMux I__367 (
            .O(N__1930),
            .I(N__1922));
    LocalMux I__366 (
            .O(N__1927),
            .I(N__1922));
    Span4Mux_s1_v I__365 (
            .O(N__1922),
            .I(N__1919));
    Odrv4 I__364 (
            .O(N__1919),
            .I(\PWM.n653 ));
    SRMux I__363 (
            .O(N__1916),
            .I(N__1913));
    LocalMux I__362 (
            .O(N__1913),
            .I(N__1910));
    Odrv12 I__361 (
            .O(N__1910),
            .I(\PWM.n193 ));
    IoInMux I__360 (
            .O(N__1907),
            .I(N__1904));
    LocalMux I__359 (
            .O(N__1904),
            .I(CONSTANT_ONE_NET));
    InMux I__358 (
            .O(N__1901),
            .I(N__1897));
    CascadeMux I__357 (
            .O(N__1900),
            .I(N__1892));
    LocalMux I__356 (
            .O(N__1897),
            .I(N__1889));
    CascadeMux I__355 (
            .O(N__1896),
            .I(N__1886));
    InMux I__354 (
            .O(N__1895),
            .I(N__1883));
    InMux I__353 (
            .O(N__1892),
            .I(N__1880));
    Span4Mux_h I__352 (
            .O(N__1889),
            .I(N__1877));
    InMux I__351 (
            .O(N__1886),
            .I(N__1874));
    LocalMux I__350 (
            .O(N__1883),
            .I(\PWM.count_0_8 ));
    LocalMux I__349 (
            .O(N__1880),
            .I(\PWM.count_0_8 ));
    Odrv4 I__348 (
            .O(N__1877),
            .I(\PWM.count_0_8 ));
    LocalMux I__347 (
            .O(N__1874),
            .I(\PWM.count_0_8 ));
    InMux I__346 (
            .O(N__1865),
            .I(N__1862));
    LocalMux I__345 (
            .O(N__1862),
            .I(N__1857));
    InMux I__344 (
            .O(N__1861),
            .I(N__1853));
    InMux I__343 (
            .O(N__1860),
            .I(N__1850));
    Span4Mux_h I__342 (
            .O(N__1857),
            .I(N__1847));
    InMux I__341 (
            .O(N__1856),
            .I(N__1844));
    LocalMux I__340 (
            .O(N__1853),
            .I(\PWM.count_0_9 ));
    LocalMux I__339 (
            .O(N__1850),
            .I(\PWM.count_0_9 ));
    Odrv4 I__338 (
            .O(N__1847),
            .I(\PWM.count_0_9 ));
    LocalMux I__337 (
            .O(N__1844),
            .I(\PWM.count_0_9 ));
    CascadeMux I__336 (
            .O(N__1835),
            .I(\PWM.n16_cascade_ ));
    InMux I__335 (
            .O(N__1832),
            .I(N__1829));
    LocalMux I__334 (
            .O(N__1829),
            .I(\PWM.n12_adj_126 ));
    CascadeMux I__333 (
            .O(N__1826),
            .I(\PWM.n19_cascade_ ));
    IoInMux I__332 (
            .O(N__1823),
            .I(N__1820));
    LocalMux I__331 (
            .O(N__1820),
            .I(N__1817));
    Span4Mux_s2_v I__330 (
            .O(N__1817),
            .I(N__1814));
    Span4Mux_h I__329 (
            .O(N__1814),
            .I(N__1811));
    Odrv4 I__328 (
            .O(N__1811),
            .I(\PWM.n993 ));
    InMux I__327 (
            .O(N__1808),
            .I(N__1805));
    LocalMux I__326 (
            .O(N__1805),
            .I(\PWM.n18 ));
    CascadeMux I__325 (
            .O(N__1802),
            .I(\PWM.n993_cascade_ ));
    InMux I__324 (
            .O(N__1799),
            .I(N__1796));
    LocalMux I__323 (
            .O(N__1796),
            .I(\PWM.n1402 ));
    CEMux I__322 (
            .O(N__1793),
            .I(N__1790));
    LocalMux I__321 (
            .O(N__1790),
            .I(N__1787));
    Span4Mux_s2_v I__320 (
            .O(N__1787),
            .I(N__1784));
    Span4Mux_h I__319 (
            .O(N__1784),
            .I(N__1781));
    Odrv4 I__318 (
            .O(N__1781),
            .I(\PWM.n657 ));
    InMux I__317 (
            .O(N__1778),
            .I(N__1775));
    LocalMux I__316 (
            .O(N__1775),
            .I(N__1771));
    InMux I__315 (
            .O(N__1774),
            .I(N__1766));
    Span4Mux_h I__314 (
            .O(N__1771),
            .I(N__1763));
    InMux I__313 (
            .O(N__1770),
            .I(N__1758));
    InMux I__312 (
            .O(N__1769),
            .I(N__1758));
    LocalMux I__311 (
            .O(N__1766),
            .I(\PWM.count_0_1 ));
    Odrv4 I__310 (
            .O(N__1763),
            .I(\PWM.count_0_1 ));
    LocalMux I__309 (
            .O(N__1758),
            .I(\PWM.count_0_1 ));
    InMux I__308 (
            .O(N__1751),
            .I(N__1748));
    LocalMux I__307 (
            .O(N__1748),
            .I(\PWM.n647 ));
    InMux I__306 (
            .O(N__1745),
            .I(N__1742));
    LocalMux I__305 (
            .O(N__1742),
            .I(\PWM.n1404 ));
    InMux I__304 (
            .O(N__1739),
            .I(N__1728));
    InMux I__303 (
            .O(N__1738),
            .I(N__1728));
    InMux I__302 (
            .O(N__1737),
            .I(N__1728));
    InMux I__301 (
            .O(N__1736),
            .I(N__1725));
    InMux I__300 (
            .O(N__1735),
            .I(N__1722));
    LocalMux I__299 (
            .O(N__1728),
            .I(half_duty_0_2));
    LocalMux I__298 (
            .O(N__1725),
            .I(half_duty_0_2));
    LocalMux I__297 (
            .O(N__1722),
            .I(half_duty_0_2));
    CascadeMux I__296 (
            .O(N__1715),
            .I(N__1709));
    CascadeMux I__295 (
            .O(N__1714),
            .I(N__1705));
    CascadeMux I__294 (
            .O(N__1713),
            .I(N__1701));
    CascadeMux I__293 (
            .O(N__1712),
            .I(N__1698));
    InMux I__292 (
            .O(N__1709),
            .I(N__1690));
    InMux I__291 (
            .O(N__1708),
            .I(N__1690));
    InMux I__290 (
            .O(N__1705),
            .I(N__1690));
    InMux I__289 (
            .O(N__1704),
            .I(N__1683));
    InMux I__288 (
            .O(N__1701),
            .I(N__1683));
    InMux I__287 (
            .O(N__1698),
            .I(N__1683));
    InMux I__286 (
            .O(N__1697),
            .I(N__1680));
    LocalMux I__285 (
            .O(N__1690),
            .I(half_duty_0_0));
    LocalMux I__284 (
            .O(N__1683),
            .I(half_duty_0_0));
    LocalMux I__283 (
            .O(N__1680),
            .I(half_duty_0_0));
    InMux I__282 (
            .O(N__1673),
            .I(N__1667));
    InMux I__281 (
            .O(N__1672),
            .I(N__1664));
    InMux I__280 (
            .O(N__1671),
            .I(N__1661));
    InMux I__279 (
            .O(N__1670),
            .I(N__1658));
    LocalMux I__278 (
            .O(N__1667),
            .I(half_duty_0_3));
    LocalMux I__277 (
            .O(N__1664),
            .I(half_duty_0_3));
    LocalMux I__276 (
            .O(N__1661),
            .I(half_duty_0_3));
    LocalMux I__275 (
            .O(N__1658),
            .I(half_duty_0_3));
    InMux I__274 (
            .O(N__1649),
            .I(N__1645));
    InMux I__273 (
            .O(N__1648),
            .I(N__1642));
    LocalMux I__272 (
            .O(N__1645),
            .I(\PWM.pwm_out_0_N_43_4 ));
    LocalMux I__271 (
            .O(N__1642),
            .I(\PWM.pwm_out_0_N_43_4 ));
    InMux I__270 (
            .O(N__1637),
            .I(N__1632));
    InMux I__269 (
            .O(N__1636),
            .I(N__1629));
    InMux I__268 (
            .O(N__1635),
            .I(N__1626));
    LocalMux I__267 (
            .O(N__1632),
            .I(\PWM.count_0_7 ));
    LocalMux I__266 (
            .O(N__1629),
            .I(\PWM.count_0_7 ));
    LocalMux I__265 (
            .O(N__1626),
            .I(\PWM.count_0_7 ));
    InMux I__264 (
            .O(N__1619),
            .I(N__1616));
    LocalMux I__263 (
            .O(N__1616),
            .I(\PWM.n640 ));
    InMux I__262 (
            .O(N__1613),
            .I(N__1607));
    InMux I__261 (
            .O(N__1612),
            .I(N__1600));
    InMux I__260 (
            .O(N__1611),
            .I(N__1600));
    InMux I__259 (
            .O(N__1610),
            .I(N__1600));
    LocalMux I__258 (
            .O(N__1607),
            .I(\PWM.count_0_4 ));
    LocalMux I__257 (
            .O(N__1600),
            .I(\PWM.count_0_4 ));
    CascadeMux I__256 (
            .O(N__1595),
            .I(\PWM.n640_cascade_ ));
    InMux I__255 (
            .O(N__1592),
            .I(N__1586));
    InMux I__254 (
            .O(N__1591),
            .I(N__1583));
    InMux I__253 (
            .O(N__1590),
            .I(N__1578));
    InMux I__252 (
            .O(N__1589),
            .I(N__1578));
    LocalMux I__251 (
            .O(N__1586),
            .I(\PWM.count_0_3 ));
    LocalMux I__250 (
            .O(N__1583),
            .I(\PWM.count_0_3 ));
    LocalMux I__249 (
            .O(N__1578),
            .I(\PWM.count_0_3 ));
    InMux I__248 (
            .O(N__1571),
            .I(N__1568));
    LocalMux I__247 (
            .O(N__1568),
            .I(\PWM.n1406 ));
    CascadeMux I__246 (
            .O(N__1565),
            .I(\PWM.pwm_out_0__N_55_cascade_ ));
    InMux I__245 (
            .O(N__1562),
            .I(N__1559));
    LocalMux I__244 (
            .O(N__1559),
            .I(N__1553));
    InMux I__243 (
            .O(N__1558),
            .I(N__1550));
    InMux I__242 (
            .O(N__1557),
            .I(N__1547));
    InMux I__241 (
            .O(N__1556),
            .I(N__1544));
    Span4Mux_h I__240 (
            .O(N__1553),
            .I(N__1541));
    LocalMux I__239 (
            .O(N__1550),
            .I(\PWM.count_0_2 ));
    LocalMux I__238 (
            .O(N__1547),
            .I(\PWM.count_0_2 ));
    LocalMux I__237 (
            .O(N__1544),
            .I(\PWM.count_0_2 ));
    Odrv4 I__236 (
            .O(N__1541),
            .I(\PWM.count_0_2 ));
    InMux I__235 (
            .O(N__1532),
            .I(N__1528));
    InMux I__234 (
            .O(N__1531),
            .I(N__1523));
    LocalMux I__233 (
            .O(N__1528),
            .I(N__1520));
    InMux I__232 (
            .O(N__1527),
            .I(N__1517));
    InMux I__231 (
            .O(N__1526),
            .I(N__1514));
    LocalMux I__230 (
            .O(N__1523),
            .I(N__1509));
    Span4Mux_v I__229 (
            .O(N__1520),
            .I(N__1509));
    LocalMux I__228 (
            .O(N__1517),
            .I(\PWM.count_0_0 ));
    LocalMux I__227 (
            .O(N__1514),
            .I(\PWM.count_0_0 ));
    Odrv4 I__226 (
            .O(N__1509),
            .I(\PWM.count_0_0 ));
    CascadeMux I__225 (
            .O(N__1502),
            .I(\PWM.n3_cascade_ ));
    InMux I__224 (
            .O(N__1499),
            .I(N__1496));
    LocalMux I__223 (
            .O(N__1496),
            .I(\PWM.n14 ));
    CascadeMux I__222 (
            .O(N__1493),
            .I(\PWM.n1370_cascade_ ));
    CascadeMux I__221 (
            .O(N__1490),
            .I(\PWM.n4_cascade_ ));
    InMux I__220 (
            .O(N__1487),
            .I(N__1484));
    LocalMux I__219 (
            .O(N__1484),
            .I(N__1481));
    Odrv4 I__218 (
            .O(N__1481),
            .I(\PWM.n1400 ));
    CascadeMux I__217 (
            .O(N__1478),
            .I(\PWM.n12_cascade_ ));
    CascadeMux I__216 (
            .O(N__1475),
            .I(\PWM.n13_cascade_ ));
    InMux I__215 (
            .O(N__1472),
            .I(\PWM.n1283 ));
    InMux I__214 (
            .O(N__1469),
            .I(\PWM.n1284 ));
    InMux I__213 (
            .O(N__1466),
            .I(\PWM.n1285 ));
    InMux I__212 (
            .O(N__1463),
            .I(\PWM.n1286 ));
    InMux I__211 (
            .O(N__1460),
            .I(\PWM.n1287 ));
    InMux I__210 (
            .O(N__1457),
            .I(\PWM.n1288 ));
    InMux I__209 (
            .O(N__1454),
            .I(bfn_13_32_0_));
    InMux I__208 (
            .O(N__1451),
            .I(\PWM.n1290 ));
    InMux I__207 (
            .O(N__1448),
            .I(N__1445));
    LocalMux I__206 (
            .O(N__1445),
            .I(n6));
    InMux I__205 (
            .O(N__1442),
            .I(n1276));
    InMux I__204 (
            .O(N__1439),
            .I(N__1432));
    InMux I__203 (
            .O(N__1438),
            .I(N__1432));
    InMux I__202 (
            .O(N__1437),
            .I(N__1429));
    LocalMux I__201 (
            .O(N__1432),
            .I(blink_counter_21));
    LocalMux I__200 (
            .O(N__1429),
            .I(blink_counter_21));
    InMux I__199 (
            .O(N__1424),
            .I(n1277));
    InMux I__198 (
            .O(N__1421),
            .I(N__1414));
    InMux I__197 (
            .O(N__1420),
            .I(N__1414));
    InMux I__196 (
            .O(N__1419),
            .I(N__1411));
    LocalMux I__195 (
            .O(N__1414),
            .I(blink_counter_22));
    LocalMux I__194 (
            .O(N__1411),
            .I(blink_counter_22));
    InMux I__193 (
            .O(N__1406),
            .I(n1278));
    CascadeMux I__192 (
            .O(N__1403),
            .I(N__1399));
    CascadeMux I__191 (
            .O(N__1402),
            .I(N__1396));
    InMux I__190 (
            .O(N__1399),
            .I(N__1390));
    InMux I__189 (
            .O(N__1396),
            .I(N__1390));
    InMux I__188 (
            .O(N__1395),
            .I(N__1387));
    LocalMux I__187 (
            .O(N__1390),
            .I(blink_counter_23));
    LocalMux I__186 (
            .O(N__1387),
            .I(blink_counter_23));
    InMux I__185 (
            .O(N__1382),
            .I(n1279));
    InMux I__184 (
            .O(N__1379),
            .I(N__1372));
    InMux I__183 (
            .O(N__1378),
            .I(N__1372));
    InMux I__182 (
            .O(N__1377),
            .I(N__1369));
    LocalMux I__181 (
            .O(N__1372),
            .I(blink_counter_24));
    LocalMux I__180 (
            .O(N__1369),
            .I(blink_counter_24));
    InMux I__179 (
            .O(N__1364),
            .I(bfn_13_30_0_));
    InMux I__178 (
            .O(N__1361),
            .I(n1281));
    InMux I__177 (
            .O(N__1358),
            .I(N__1354));
    InMux I__176 (
            .O(N__1357),
            .I(N__1351));
    LocalMux I__175 (
            .O(N__1354),
            .I(blink_counter_25));
    LocalMux I__174 (
            .O(N__1351),
            .I(blink_counter_25));
    InMux I__173 (
            .O(N__1346),
            .I(bfn_13_31_0_));
    InMux I__172 (
            .O(N__1343),
            .I(\PWM.n1282 ));
    InMux I__171 (
            .O(N__1340),
            .I(N__1337));
    LocalMux I__170 (
            .O(N__1337),
            .I(n15));
    InMux I__169 (
            .O(N__1334),
            .I(n1267));
    InMux I__168 (
            .O(N__1331),
            .I(N__1328));
    LocalMux I__167 (
            .O(N__1328),
            .I(n14));
    InMux I__166 (
            .O(N__1325),
            .I(n1268));
    InMux I__165 (
            .O(N__1322),
            .I(N__1319));
    LocalMux I__164 (
            .O(N__1319),
            .I(n13));
    InMux I__163 (
            .O(N__1316),
            .I(n1269));
    InMux I__162 (
            .O(N__1313),
            .I(N__1310));
    LocalMux I__161 (
            .O(N__1310),
            .I(n12));
    InMux I__160 (
            .O(N__1307),
            .I(n1270));
    InMux I__159 (
            .O(N__1304),
            .I(N__1301));
    LocalMux I__158 (
            .O(N__1301),
            .I(n11));
    InMux I__157 (
            .O(N__1298),
            .I(n1271));
    InMux I__156 (
            .O(N__1295),
            .I(N__1292));
    LocalMux I__155 (
            .O(N__1292),
            .I(n10));
    InMux I__154 (
            .O(N__1289),
            .I(bfn_13_29_0_));
    InMux I__153 (
            .O(N__1286),
            .I(N__1283));
    LocalMux I__152 (
            .O(N__1283),
            .I(n9));
    InMux I__151 (
            .O(N__1280),
            .I(n1273));
    InMux I__150 (
            .O(N__1277),
            .I(N__1274));
    LocalMux I__149 (
            .O(N__1274),
            .I(n8));
    InMux I__148 (
            .O(N__1271),
            .I(n1274));
    InMux I__147 (
            .O(N__1268),
            .I(N__1265));
    LocalMux I__146 (
            .O(N__1265),
            .I(n7));
    InMux I__145 (
            .O(N__1262),
            .I(n1275));
    InMux I__144 (
            .O(N__1259),
            .I(N__1256));
    LocalMux I__143 (
            .O(N__1256),
            .I(n23));
    InMux I__142 (
            .O(N__1253),
            .I(n1259));
    InMux I__141 (
            .O(N__1250),
            .I(N__1247));
    LocalMux I__140 (
            .O(N__1247),
            .I(n22));
    InMux I__139 (
            .O(N__1244),
            .I(n1260));
    InMux I__138 (
            .O(N__1241),
            .I(N__1238));
    LocalMux I__137 (
            .O(N__1238),
            .I(n21));
    InMux I__136 (
            .O(N__1235),
            .I(n1261));
    InMux I__135 (
            .O(N__1232),
            .I(N__1229));
    LocalMux I__134 (
            .O(N__1229),
            .I(n20));
    InMux I__133 (
            .O(N__1226),
            .I(n1262));
    InMux I__132 (
            .O(N__1223),
            .I(N__1220));
    LocalMux I__131 (
            .O(N__1220),
            .I(n19));
    InMux I__130 (
            .O(N__1217),
            .I(n1263));
    InMux I__129 (
            .O(N__1214),
            .I(N__1211));
    LocalMux I__128 (
            .O(N__1211),
            .I(n18));
    InMux I__127 (
            .O(N__1208),
            .I(bfn_13_28_0_));
    InMux I__126 (
            .O(N__1205),
            .I(N__1202));
    LocalMux I__125 (
            .O(N__1202),
            .I(n17));
    InMux I__124 (
            .O(N__1199),
            .I(n1265));
    InMux I__123 (
            .O(N__1196),
            .I(N__1193));
    LocalMux I__122 (
            .O(N__1193),
            .I(n16));
    InMux I__121 (
            .O(N__1190),
            .I(n1266));
    CascadeMux I__120 (
            .O(N__1187),
            .I(n1411_cascade_));
    IoInMux I__119 (
            .O(N__1184),
            .I(N__1181));
    LocalMux I__118 (
            .O(N__1181),
            .I(N__1178));
    Span4Mux_s3_v I__117 (
            .O(N__1178),
            .I(N__1175));
    Span4Mux_h I__116 (
            .O(N__1175),
            .I(N__1172));
    Odrv4 I__115 (
            .O(N__1172),
            .I(LED_c));
    InMux I__114 (
            .O(N__1169),
            .I(N__1166));
    LocalMux I__113 (
            .O(N__1166),
            .I(n1410));
    InMux I__112 (
            .O(N__1163),
            .I(N__1160));
    LocalMux I__111 (
            .O(N__1160),
            .I(n26));
    InMux I__110 (
            .O(N__1157),
            .I(bfn_13_27_0_));
    InMux I__109 (
            .O(N__1154),
            .I(N__1151));
    LocalMux I__108 (
            .O(N__1151),
            .I(n25));
    InMux I__107 (
            .O(N__1148),
            .I(n1257));
    InMux I__106 (
            .O(N__1145),
            .I(N__1142));
    LocalMux I__105 (
            .O(N__1142),
            .I(n24));
    InMux I__104 (
            .O(N__1139),
            .I(n1258));
    IoInMux I__103 (
            .O(N__1136),
            .I(N__1133));
    LocalMux I__102 (
            .O(N__1133),
            .I(N__1130));
    IoSpan4Mux I__101 (
            .O(N__1130),
            .I(N__1127));
    IoSpan4Mux I__100 (
            .O(N__1127),
            .I(N__1124));
    IoSpan4Mux I__99 (
            .O(N__1124),
            .I(N__1121));
    Odrv4 I__98 (
            .O(N__1121),
            .I(CLK_pad_gb_input));
    defparam IN_MUX_bfv_13_27_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_27_0_ (
            .carryinitin(),
            .carryinitout(bfn_13_27_0_));
    defparam IN_MUX_bfv_13_28_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_28_0_ (
            .carryinitin(n1264),
            .carryinitout(bfn_13_28_0_));
    defparam IN_MUX_bfv_13_29_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_29_0_ (
            .carryinitin(n1272),
            .carryinitout(bfn_13_29_0_));
    defparam IN_MUX_bfv_13_30_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_30_0_ (
            .carryinitin(n1280),
            .carryinitout(bfn_13_30_0_));
    defparam IN_MUX_bfv_13_31_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_31_0_ (
            .carryinitin(),
            .carryinitout(bfn_13_31_0_));
    defparam IN_MUX_bfv_13_32_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_13_32_0_ (
            .carryinitin(\PWM.n1289 ),
            .carryinitout(bfn_13_32_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__1136),
            .GLOBALBUFFEROUTPUT(CLK_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam i913_4_lut_LC_12_29_3.C_ON=1'b0;
    defparam i913_4_lut_LC_12_29_3.SEQ_MODE=4'b0000;
    defparam i913_4_lut_LC_12_29_3.LUT_INIT=16'b1111111010110000;
    LogicCell40 i913_4_lut_LC_12_29_3 (
            .in0(N__1379),
            .in1(N__1421),
            .in2(N__1403),
            .in3(N__1439),
            .lcout(),
            .ltout(n1411_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i914_3_lut_LC_12_29_4.C_ON=1'b0;
    defparam i914_3_lut_LC_12_29_4.SEQ_MODE=4'b0000;
    defparam i914_3_lut_LC_12_29_4.LUT_INIT=16'b0000111101010101;
    LogicCell40 i914_3_lut_LC_12_29_4 (
            .in0(N__1169),
            .in1(_gnd_net_),
            .in2(N__1187),
            .in3(N__1358),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i912_4_lut_LC_12_29_7.C_ON=1'b0;
    defparam i912_4_lut_LC_12_29_7.SEQ_MODE=4'b0000;
    defparam i912_4_lut_LC_12_29_7.LUT_INIT=16'b1101110101000000;
    LogicCell40 i912_4_lut_LC_12_29_7 (
            .in0(N__1378),
            .in1(N__1420),
            .in2(N__1402),
            .in3(N__1438),
            .lcout(n1410),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i0_LC_13_27_0.C_ON=1'b1;
    defparam blink_counter_49__i0_LC_13_27_0.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i0_LC_13_27_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i0_LC_13_27_0 (
            .in0(_gnd_net_),
            .in1(N__1163),
            .in2(_gnd_net_),
            .in3(N__1157),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_13_27_0_),
            .carryout(n1257),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i1_LC_13_27_1.C_ON=1'b1;
    defparam blink_counter_49__i1_LC_13_27_1.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i1_LC_13_27_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i1_LC_13_27_1 (
            .in0(_gnd_net_),
            .in1(N__1154),
            .in2(_gnd_net_),
            .in3(N__1148),
            .lcout(n25),
            .ltout(),
            .carryin(n1257),
            .carryout(n1258),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i2_LC_13_27_2.C_ON=1'b1;
    defparam blink_counter_49__i2_LC_13_27_2.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i2_LC_13_27_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i2_LC_13_27_2 (
            .in0(_gnd_net_),
            .in1(N__1145),
            .in2(_gnd_net_),
            .in3(N__1139),
            .lcout(n24),
            .ltout(),
            .carryin(n1258),
            .carryout(n1259),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i3_LC_13_27_3.C_ON=1'b1;
    defparam blink_counter_49__i3_LC_13_27_3.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i3_LC_13_27_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i3_LC_13_27_3 (
            .in0(_gnd_net_),
            .in1(N__1259),
            .in2(_gnd_net_),
            .in3(N__1253),
            .lcout(n23),
            .ltout(),
            .carryin(n1259),
            .carryout(n1260),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i4_LC_13_27_4.C_ON=1'b1;
    defparam blink_counter_49__i4_LC_13_27_4.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i4_LC_13_27_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i4_LC_13_27_4 (
            .in0(_gnd_net_),
            .in1(N__1250),
            .in2(_gnd_net_),
            .in3(N__1244),
            .lcout(n22),
            .ltout(),
            .carryin(n1260),
            .carryout(n1261),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i5_LC_13_27_5.C_ON=1'b1;
    defparam blink_counter_49__i5_LC_13_27_5.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i5_LC_13_27_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i5_LC_13_27_5 (
            .in0(_gnd_net_),
            .in1(N__1241),
            .in2(_gnd_net_),
            .in3(N__1235),
            .lcout(n21),
            .ltout(),
            .carryin(n1261),
            .carryout(n1262),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i6_LC_13_27_6.C_ON=1'b1;
    defparam blink_counter_49__i6_LC_13_27_6.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i6_LC_13_27_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i6_LC_13_27_6 (
            .in0(_gnd_net_),
            .in1(N__1232),
            .in2(_gnd_net_),
            .in3(N__1226),
            .lcout(n20),
            .ltout(),
            .carryin(n1262),
            .carryout(n1263),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i7_LC_13_27_7.C_ON=1'b1;
    defparam blink_counter_49__i7_LC_13_27_7.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i7_LC_13_27_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i7_LC_13_27_7 (
            .in0(_gnd_net_),
            .in1(N__1223),
            .in2(_gnd_net_),
            .in3(N__1217),
            .lcout(n19),
            .ltout(),
            .carryin(n1263),
            .carryout(n1264),
            .clk(N__1965),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i8_LC_13_28_0.C_ON=1'b1;
    defparam blink_counter_49__i8_LC_13_28_0.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i8_LC_13_28_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i8_LC_13_28_0 (
            .in0(_gnd_net_),
            .in1(N__1214),
            .in2(_gnd_net_),
            .in3(N__1208),
            .lcout(n18),
            .ltout(),
            .carryin(bfn_13_28_0_),
            .carryout(n1265),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i9_LC_13_28_1.C_ON=1'b1;
    defparam blink_counter_49__i9_LC_13_28_1.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i9_LC_13_28_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i9_LC_13_28_1 (
            .in0(_gnd_net_),
            .in1(N__1205),
            .in2(_gnd_net_),
            .in3(N__1199),
            .lcout(n17),
            .ltout(),
            .carryin(n1265),
            .carryout(n1266),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i10_LC_13_28_2.C_ON=1'b1;
    defparam blink_counter_49__i10_LC_13_28_2.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i10_LC_13_28_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i10_LC_13_28_2 (
            .in0(_gnd_net_),
            .in1(N__1196),
            .in2(_gnd_net_),
            .in3(N__1190),
            .lcout(n16),
            .ltout(),
            .carryin(n1266),
            .carryout(n1267),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i11_LC_13_28_3.C_ON=1'b1;
    defparam blink_counter_49__i11_LC_13_28_3.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i11_LC_13_28_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i11_LC_13_28_3 (
            .in0(_gnd_net_),
            .in1(N__1340),
            .in2(_gnd_net_),
            .in3(N__1334),
            .lcout(n15),
            .ltout(),
            .carryin(n1267),
            .carryout(n1268),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i12_LC_13_28_4.C_ON=1'b1;
    defparam blink_counter_49__i12_LC_13_28_4.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i12_LC_13_28_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i12_LC_13_28_4 (
            .in0(_gnd_net_),
            .in1(N__1331),
            .in2(_gnd_net_),
            .in3(N__1325),
            .lcout(n14),
            .ltout(),
            .carryin(n1268),
            .carryout(n1269),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i13_LC_13_28_5.C_ON=1'b1;
    defparam blink_counter_49__i13_LC_13_28_5.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i13_LC_13_28_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i13_LC_13_28_5 (
            .in0(_gnd_net_),
            .in1(N__1322),
            .in2(_gnd_net_),
            .in3(N__1316),
            .lcout(n13),
            .ltout(),
            .carryin(n1269),
            .carryout(n1270),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i14_LC_13_28_6.C_ON=1'b1;
    defparam blink_counter_49__i14_LC_13_28_6.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i14_LC_13_28_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i14_LC_13_28_6 (
            .in0(_gnd_net_),
            .in1(N__1313),
            .in2(_gnd_net_),
            .in3(N__1307),
            .lcout(n12),
            .ltout(),
            .carryin(n1270),
            .carryout(n1271),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i15_LC_13_28_7.C_ON=1'b1;
    defparam blink_counter_49__i15_LC_13_28_7.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i15_LC_13_28_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i15_LC_13_28_7 (
            .in0(_gnd_net_),
            .in1(N__1304),
            .in2(_gnd_net_),
            .in3(N__1298),
            .lcout(n11),
            .ltout(),
            .carryin(n1271),
            .carryout(n1272),
            .clk(N__1966),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i16_LC_13_29_0.C_ON=1'b1;
    defparam blink_counter_49__i16_LC_13_29_0.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i16_LC_13_29_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i16_LC_13_29_0 (
            .in0(_gnd_net_),
            .in1(N__1295),
            .in2(_gnd_net_),
            .in3(N__1289),
            .lcout(n10),
            .ltout(),
            .carryin(bfn_13_29_0_),
            .carryout(n1273),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i17_LC_13_29_1.C_ON=1'b1;
    defparam blink_counter_49__i17_LC_13_29_1.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i17_LC_13_29_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i17_LC_13_29_1 (
            .in0(_gnd_net_),
            .in1(N__1286),
            .in2(_gnd_net_),
            .in3(N__1280),
            .lcout(n9),
            .ltout(),
            .carryin(n1273),
            .carryout(n1274),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i18_LC_13_29_2.C_ON=1'b1;
    defparam blink_counter_49__i18_LC_13_29_2.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i18_LC_13_29_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i18_LC_13_29_2 (
            .in0(_gnd_net_),
            .in1(N__1277),
            .in2(_gnd_net_),
            .in3(N__1271),
            .lcout(n8),
            .ltout(),
            .carryin(n1274),
            .carryout(n1275),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i19_LC_13_29_3.C_ON=1'b1;
    defparam blink_counter_49__i19_LC_13_29_3.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i19_LC_13_29_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i19_LC_13_29_3 (
            .in0(_gnd_net_),
            .in1(N__1268),
            .in2(_gnd_net_),
            .in3(N__1262),
            .lcout(n7),
            .ltout(),
            .carryin(n1275),
            .carryout(n1276),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i20_LC_13_29_4.C_ON=1'b1;
    defparam blink_counter_49__i20_LC_13_29_4.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i20_LC_13_29_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i20_LC_13_29_4 (
            .in0(_gnd_net_),
            .in1(N__1448),
            .in2(_gnd_net_),
            .in3(N__1442),
            .lcout(n6),
            .ltout(),
            .carryin(n1276),
            .carryout(n1277),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i21_LC_13_29_5.C_ON=1'b1;
    defparam blink_counter_49__i21_LC_13_29_5.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i21_LC_13_29_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i21_LC_13_29_5 (
            .in0(_gnd_net_),
            .in1(N__1437),
            .in2(_gnd_net_),
            .in3(N__1424),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n1277),
            .carryout(n1278),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i22_LC_13_29_6.C_ON=1'b1;
    defparam blink_counter_49__i22_LC_13_29_6.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i22_LC_13_29_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i22_LC_13_29_6 (
            .in0(_gnd_net_),
            .in1(N__1419),
            .in2(_gnd_net_),
            .in3(N__1406),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n1278),
            .carryout(n1279),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i23_LC_13_29_7.C_ON=1'b1;
    defparam blink_counter_49__i23_LC_13_29_7.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i23_LC_13_29_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i23_LC_13_29_7 (
            .in0(_gnd_net_),
            .in1(N__1395),
            .in2(_gnd_net_),
            .in3(N__1382),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n1279),
            .carryout(n1280),
            .clk(N__1967),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i24_LC_13_30_0.C_ON=1'b1;
    defparam blink_counter_49__i24_LC_13_30_0.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i24_LC_13_30_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i24_LC_13_30_0 (
            .in0(_gnd_net_),
            .in1(N__1377),
            .in2(_gnd_net_),
            .in3(N__1364),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_13_30_0_),
            .carryout(n1281),
            .clk(N__1968),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_49__i25_LC_13_30_1.C_ON=1'b0;
    defparam blink_counter_49__i25_LC_13_30_1.SEQ_MODE=4'b1000;
    defparam blink_counter_49__i25_LC_13_30_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_49__i25_LC_13_30_1 (
            .in0(_gnd_net_),
            .in1(N__1357),
            .in2(_gnd_net_),
            .in3(N__1361),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1968),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.count_0__50__i0_LC_13_31_0 .C_ON=1'b1;
    defparam \PWM.count_0__50__i0_LC_13_31_0 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i0_LC_13_31_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i0_LC_13_31_0  (
            .in0(_gnd_net_),
            .in1(N__1527),
            .in2(_gnd_net_),
            .in3(N__1346),
            .lcout(\PWM.count_0_0 ),
            .ltout(),
            .carryin(bfn_13_31_0_),
            .carryout(\PWM.n1282 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i1_LC_13_31_1 .C_ON=1'b1;
    defparam \PWM.count_0__50__i1_LC_13_31_1 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i1_LC_13_31_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i1_LC_13_31_1  (
            .in0(_gnd_net_),
            .in1(N__1774),
            .in2(_gnd_net_),
            .in3(N__1343),
            .lcout(\PWM.count_0_1 ),
            .ltout(),
            .carryin(\PWM.n1282 ),
            .carryout(\PWM.n1283 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i2_LC_13_31_2 .C_ON=1'b1;
    defparam \PWM.count_0__50__i2_LC_13_31_2 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i2_LC_13_31_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i2_LC_13_31_2  (
            .in0(_gnd_net_),
            .in1(N__1558),
            .in2(_gnd_net_),
            .in3(N__1472),
            .lcout(\PWM.count_0_2 ),
            .ltout(),
            .carryin(\PWM.n1283 ),
            .carryout(\PWM.n1284 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i3_LC_13_31_3 .C_ON=1'b1;
    defparam \PWM.count_0__50__i3_LC_13_31_3 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i3_LC_13_31_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i3_LC_13_31_3  (
            .in0(_gnd_net_),
            .in1(N__1592),
            .in2(_gnd_net_),
            .in3(N__1469),
            .lcout(\PWM.count_0_3 ),
            .ltout(),
            .carryin(\PWM.n1284 ),
            .carryout(\PWM.n1285 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i4_LC_13_31_4 .C_ON=1'b1;
    defparam \PWM.count_0__50__i4_LC_13_31_4 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i4_LC_13_31_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i4_LC_13_31_4  (
            .in0(_gnd_net_),
            .in1(N__1613),
            .in2(_gnd_net_),
            .in3(N__1466),
            .lcout(\PWM.count_0_4 ),
            .ltout(),
            .carryin(\PWM.n1285 ),
            .carryout(\PWM.n1286 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i5_LC_13_31_5 .C_ON=1'b1;
    defparam \PWM.count_0__50__i5_LC_13_31_5 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i5_LC_13_31_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i5_LC_13_31_5  (
            .in0(_gnd_net_),
            .in1(N__2243),
            .in2(_gnd_net_),
            .in3(N__1463),
            .lcout(\PWM.count_0_5 ),
            .ltout(),
            .carryin(\PWM.n1286 ),
            .carryout(\PWM.n1287 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i6_LC_13_31_6 .C_ON=1'b1;
    defparam \PWM.count_0__50__i6_LC_13_31_6 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i6_LC_13_31_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i6_LC_13_31_6  (
            .in0(_gnd_net_),
            .in1(N__2213),
            .in2(_gnd_net_),
            .in3(N__1460),
            .lcout(\PWM.count_0_6 ),
            .ltout(),
            .carryin(\PWM.n1287 ),
            .carryout(\PWM.n1288 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i7_LC_13_31_7 .C_ON=1'b1;
    defparam \PWM.count_0__50__i7_LC_13_31_7 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i7_LC_13_31_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i7_LC_13_31_7  (
            .in0(_gnd_net_),
            .in1(N__1637),
            .in2(_gnd_net_),
            .in3(N__1457),
            .lcout(\PWM.count_0_7 ),
            .ltout(),
            .carryin(\PWM.n1288 ),
            .carryout(\PWM.n1289 ),
            .clk(N__1969),
            .ce(N__2100),
            .sr(N__2176));
    defparam \PWM.count_0__50__i8_LC_13_32_0 .C_ON=1'b1;
    defparam \PWM.count_0__50__i8_LC_13_32_0 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i8_LC_13_32_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i8_LC_13_32_0  (
            .in0(_gnd_net_),
            .in1(N__1895),
            .in2(_gnd_net_),
            .in3(N__1454),
            .lcout(\PWM.count_0_8 ),
            .ltout(),
            .carryin(bfn_13_32_0_),
            .carryout(\PWM.n1290 ),
            .clk(N__1971),
            .ce(N__2099),
            .sr(N__2180));
    defparam \PWM.count_0__50__i9_LC_13_32_1 .C_ON=1'b0;
    defparam \PWM.count_0__50__i9_LC_13_32_1 .SEQ_MODE=4'b1000;
    defparam \PWM.count_0__50__i9_LC_13_32_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \PWM.count_0__50__i9_LC_13_32_1  (
            .in0(_gnd_net_),
            .in1(N__1861),
            .in2(_gnd_net_),
            .in3(N__1451),
            .lcout(\PWM.count_0_9 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1971),
            .ce(N__2099),
            .sr(N__2180));
    defparam \PWM.half_duty_0___i3_LC_14_30_0 .C_ON=1'b0;
    defparam \PWM.half_duty_0___i3_LC_14_30_0 .SEQ_MODE=4'b1000;
    defparam \PWM.half_duty_0___i3_LC_14_30_0 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \PWM.half_duty_0___i3_LC_14_30_0  (
            .in0(N__1739),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2161),
            .lcout(half_duty_0_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1970),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.half_duty_0___i6_LC_14_30_2 .C_ON=1'b0;
    defparam \PWM.half_duty_0___i6_LC_14_30_2 .SEQ_MODE=4'b1000;
    defparam \PWM.half_duty_0___i6_LC_14_30_2 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \PWM.half_duty_0___i6_LC_14_30_2  (
            .in0(_gnd_net_),
            .in1(N__2162),
            .in2(_gnd_net_),
            .in3(N__2273),
            .lcout(half_duty_0_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1970),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i2_4_lut_LC_14_30_3 .C_ON=1'b0;
    defparam \PWM.i2_4_lut_LC_14_30_3 .SEQ_MODE=4'b0000;
    defparam \PWM.i2_4_lut_LC_14_30_3 .LUT_INIT=16'b1100100100110110;
    LogicCell40 \PWM.i2_4_lut_LC_14_30_3  (
            .in0(N__2129),
            .in1(N__1738),
            .in2(N__1715),
            .in3(N__1556),
            .lcout(),
            .ltout(\PWM.n1370_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i904_4_lut_LC_14_30_4 .C_ON=1'b0;
    defparam \PWM.i904_4_lut_LC_14_30_4 .SEQ_MODE=4'b0000;
    defparam \PWM.i904_4_lut_LC_14_30_4 .LUT_INIT=16'b1111011111111000;
    LogicCell40 \PWM.i904_4_lut_LC_14_30_4  (
            .in0(N__1649),
            .in1(N__2272),
            .in2(N__1493),
            .in3(N__1636),
            .lcout(\PWM.n1402 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_4_lut_adj_12_LC_14_30_5 .C_ON=1'b0;
    defparam \PWM.i1_4_lut_adj_12_LC_14_30_5 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_4_lut_adj_12_LC_14_30_5 .LUT_INIT=16'b0000000111111110;
    LogicCell40 \PWM.i1_4_lut_adj_12_LC_14_30_5  (
            .in0(N__2128),
            .in1(N__1737),
            .in2(N__1714),
            .in3(N__1672),
            .lcout(),
            .ltout(\PWM.n4_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i902_4_lut_LC_14_30_6 .C_ON=1'b0;
    defparam \PWM.i902_4_lut_LC_14_30_6 .SEQ_MODE=4'b0000;
    defparam \PWM.i902_4_lut_LC_14_30_6 .LUT_INIT=16'b0110111111110110;
    LogicCell40 \PWM.i902_4_lut_LC_14_30_6  (
            .in0(N__1526),
            .in1(N__1708),
            .in2(N__1490),
            .in3(N__1591),
            .lcout(\PWM.n1400 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i2_4_lut_adj_9_LC_14_31_0 .C_ON=1'b0;
    defparam \PWM.i2_4_lut_adj_9_LC_14_31_0 .SEQ_MODE=4'b0000;
    defparam \PWM.i2_4_lut_adj_9_LC_14_31_0 .LUT_INIT=16'b0010100001010000;
    LogicCell40 \PWM.i2_4_lut_adj_9_LC_14_31_0  (
            .in0(N__1648),
            .in1(N__2270),
            .in2(N__1896),
            .in3(N__1611),
            .lcout(),
            .ltout(\PWM.n12_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i8_3_lut_LC_14_31_1 .C_ON=1'b0;
    defparam \PWM.i8_3_lut_LC_14_31_1 .SEQ_MODE=4'b0000;
    defparam \PWM.i8_3_lut_LC_14_31_1 .LUT_INIT=16'b0011000000000000;
    LogicCell40 \PWM.i8_3_lut_LC_14_31_1  (
            .in0(_gnd_net_),
            .in1(N__1487),
            .in2(N__1478),
            .in3(N__2192),
            .lcout(\PWM.n18 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i5_4_lut_LC_14_31_2 .C_ON=1'b0;
    defparam \PWM.i5_4_lut_LC_14_31_2 .SEQ_MODE=4'b0000;
    defparam \PWM.i5_4_lut_LC_14_31_2 .LUT_INIT=16'b1111110111111111;
    LogicCell40 \PWM.i5_4_lut_LC_14_31_2  (
            .in0(N__1770),
            .in1(N__1619),
            .in2(N__2245),
            .in3(N__1612),
            .lcout(),
            .ltout(\PWM.n13_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i931_3_lut_4_lut_LC_14_31_3 .C_ON=1'b0;
    defparam \PWM.i931_3_lut_4_lut_LC_14_31_3 .SEQ_MODE=4'b0000;
    defparam \PWM.i931_3_lut_4_lut_LC_14_31_3 .LUT_INIT=16'b0000100000000000;
    LogicCell40 \PWM.i931_3_lut_4_lut_LC_14_31_3  (
            .in0(N__1860),
            .in1(N__1571),
            .in2(N__1475),
            .in3(N__2102),
            .lcout(n684),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i3_4_lut_LC_14_31_4 .C_ON=1'b0;
    defparam \PWM.i3_4_lut_LC_14_31_4 .SEQ_MODE=4'b0000;
    defparam \PWM.i3_4_lut_LC_14_31_4 .LUT_INIT=16'b0111110110111110;
    LogicCell40 \PWM.i3_4_lut_LC_14_31_4  (
            .in0(N__1769),
            .in1(N__2269),
            .in2(N__2244),
            .in3(N__2124),
            .lcout(\PWM.n12_adj_126 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_2_lut_LC_14_31_5 .C_ON=1'b0;
    defparam \PWM.i1_2_lut_LC_14_31_5 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_2_lut_LC_14_31_5 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \PWM.i1_2_lut_LC_14_31_5  (
            .in0(_gnd_net_),
            .in1(N__1635),
            .in2(_gnd_net_),
            .in3(N__2205),
            .lcout(\PWM.n640 ),
            .ltout(\PWM.n640_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i5_4_lut_adj_13_LC_14_31_6 .C_ON=1'b0;
    defparam \PWM.i5_4_lut_adj_13_LC_14_31_6 .SEQ_MODE=4'b0000;
    defparam \PWM.i5_4_lut_adj_13_LC_14_31_6 .LUT_INIT=16'b1111110111111110;
    LogicCell40 \PWM.i5_4_lut_adj_13_LC_14_31_6  (
            .in0(N__1589),
            .in1(N__1610),
            .in2(N__1595),
            .in3(N__1670),
            .lcout(\PWM.n14 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i908_4_lut_LC_14_31_7 .C_ON=1'b0;
    defparam \PWM.i908_4_lut_LC_14_31_7 .SEQ_MODE=4'b0000;
    defparam \PWM.i908_4_lut_LC_14_31_7 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \PWM.i908_4_lut_LC_14_31_7  (
            .in0(N__1531),
            .in1(N__1557),
            .in2(N__1900),
            .in3(N__1590),
            .lcout(\PWM.n1406 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.pause_counter_0__i1_LC_14_32_1 .C_ON=1'b0;
    defparam \PWM.pause_counter_0__i1_LC_14_32_1 .SEQ_MODE=4'b1000;
    defparam \PWM.pause_counter_0__i1_LC_14_32_1 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \PWM.pause_counter_0__i1_LC_14_32_1  (
            .in0(_gnd_net_),
            .in1(N__2027),
            .in2(_gnd_net_),
            .in3(N__1998),
            .lcout(\PWM.pause_counter_0_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1973),
            .ce(N__1934),
            .sr(N__2186));
    defparam \PWM.pause_counter_0__i2_LC_14_32_2 .C_ON=1'b0;
    defparam \PWM.pause_counter_0__i2_LC_14_32_2 .SEQ_MODE=4'b1000;
    defparam \PWM.pause_counter_0__i2_LC_14_32_2 .LUT_INIT=16'b0101111110100000;
    LogicCell40 \PWM.pause_counter_0__i2_LC_14_32_2  (
            .in0(N__1997),
            .in1(_gnd_net_),
            .in2(N__2033),
            .in3(N__2047),
            .lcout(\PWM.pause_counter_0_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1973),
            .ce(N__1934),
            .sr(N__2186));
    defparam \PWM.i928_2_lut_3_lut_LC_14_32_3 .C_ON=1'b0;
    defparam \PWM.i928_2_lut_3_lut_LC_14_32_3 .SEQ_MODE=4'b0000;
    defparam \PWM.i928_2_lut_3_lut_LC_14_32_3 .LUT_INIT=16'b0000000000010001;
    LogicCell40 \PWM.i928_2_lut_3_lut_LC_14_32_3  (
            .in0(N__2046),
            .in1(N__2026),
            .in2(_gnd_net_),
            .in3(N__1996),
            .lcout(\PWM.pwm_out_0__N_55 ),
            .ltout(\PWM.pwm_out_0__N_55_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_2_lut_adj_10_LC_14_32_4 .C_ON=1'b0;
    defparam \PWM.i1_2_lut_adj_10_LC_14_32_4 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_2_lut_adj_10_LC_14_32_4 .LUT_INIT=16'b0011111100111111;
    LogicCell40 \PWM.i1_2_lut_adj_10_LC_14_32_4  (
            .in0(_gnd_net_),
            .in1(N__1856),
            .in2(N__1565),
            .in3(_gnd_net_),
            .lcout(\PWM.n647 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.half_duty_0__8__I_0_46_i3_2_lut_LC_15_30_0 .C_ON=1'b0;
    defparam \PWM.half_duty_0__8__I_0_46_i3_2_lut_LC_15_30_0 .SEQ_MODE=4'b0000;
    defparam \PWM.half_duty_0__8__I_0_46_i3_2_lut_LC_15_30_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \PWM.half_duty_0__8__I_0_46_i3_2_lut_LC_15_30_0  (
            .in0(_gnd_net_),
            .in1(N__1562),
            .in2(_gnd_net_),
            .in3(N__1735),
            .lcout(),
            .ltout(\PWM.n3_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i7_4_lut_LC_15_30_1 .C_ON=1'b0;
    defparam \PWM.i7_4_lut_LC_15_30_1 .SEQ_MODE=4'b0000;
    defparam \PWM.i7_4_lut_LC_15_30_1 .LUT_INIT=16'b1111111111110110;
    LogicCell40 \PWM.i7_4_lut_LC_15_30_1  (
            .in0(N__1532),
            .in1(N__1697),
            .in2(N__1502),
            .in3(N__1499),
            .lcout(),
            .ltout(\PWM.n16_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i8_4_lut_LC_15_30_2 .C_ON=1'b0;
    defparam \PWM.i8_4_lut_LC_15_30_2 .SEQ_MODE=4'b0000;
    defparam \PWM.i8_4_lut_LC_15_30_2 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \PWM.i8_4_lut_LC_15_30_2  (
            .in0(N__1901),
            .in1(N__1865),
            .in2(N__1835),
            .in3(N__1832),
            .lcout(\PWM.n19 ),
            .ltout(\PWM.n19_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i529_2_lut_LC_15_30_3 .C_ON=1'b0;
    defparam \PWM.i529_2_lut_LC_15_30_3 .SEQ_MODE=4'b0000;
    defparam \PWM.i529_2_lut_LC_15_30_3 .LUT_INIT=16'b1111000011111111;
    LogicCell40 \PWM.i529_2_lut_LC_15_30_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__1826),
            .in3(N__2101),
            .lcout(\PWM.n993 ),
            .ltout(\PWM.n993_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_4_lut_adj_8_LC_15_30_4 .C_ON=1'b0;
    defparam \PWM.i1_4_lut_adj_8_LC_15_30_4 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_4_lut_adj_8_LC_15_30_4 .LUT_INIT=16'b0000111100101111;
    LogicCell40 \PWM.i1_4_lut_adj_8_LC_15_30_4  (
            .in0(N__1808),
            .in1(N__1745),
            .in2(N__1802),
            .in3(N__1799),
            .lcout(\PWM.n657 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.half_duty_0___i4_LC_15_30_6 .C_ON=1'b0;
    defparam \PWM.half_duty_0___i4_LC_15_30_6 .SEQ_MODE=4'b1000;
    defparam \PWM.half_duty_0___i4_LC_15_30_6 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \PWM.half_duty_0___i4_LC_15_30_6  (
            .in0(_gnd_net_),
            .in1(N__2163),
            .in2(_gnd_net_),
            .in3(N__1673),
            .lcout(half_duty_0_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1972),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_2_lut_adj_11_LC_15_31_0 .C_ON=1'b0;
    defparam \PWM.i1_2_lut_adj_11_LC_15_31_0 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_2_lut_adj_11_LC_15_31_0 .LUT_INIT=16'b0101010111111111;
    LogicCell40 \PWM.i1_2_lut_adj_11_LC_15_31_0  (
            .in0(N__2060),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__2098),
            .lcout(\PWM.n653 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i906_4_lut_LC_15_31_1 .C_ON=1'b0;
    defparam \PWM.i906_4_lut_LC_15_31_1 .SEQ_MODE=4'b0000;
    defparam \PWM.i906_4_lut_LC_15_31_1 .LUT_INIT=16'b1111111110010110;
    LogicCell40 \PWM.i906_4_lut_LC_15_31_1  (
            .in0(N__2126),
            .in1(N__1778),
            .in2(N__1713),
            .in3(N__1751),
            .lcout(\PWM.n1404 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.half_duty_0___i1_LC_15_31_2 .C_ON=1'b0;
    defparam \PWM.half_duty_0___i1_LC_15_31_2 .SEQ_MODE=4'b1000;
    defparam \PWM.half_duty_0___i1_LC_15_31_2 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \PWM.half_duty_0___i1_LC_15_31_2  (
            .in0(_gnd_net_),
            .in1(N__2159),
            .in2(_gnd_net_),
            .in3(N__1704),
            .lcout(half_duty_0_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1974),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i732_4_lut_LC_15_31_3 .C_ON=1'b0;
    defparam \PWM.i732_4_lut_LC_15_31_3 .SEQ_MODE=4'b0000;
    defparam \PWM.i732_4_lut_LC_15_31_3 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \PWM.i732_4_lut_LC_15_31_3  (
            .in0(N__2125),
            .in1(N__1736),
            .in2(N__1712),
            .in3(N__1671),
            .lcout(\PWM.pwm_out_0_N_43_4 ),
            .ltout(\PWM.pwm_out_0_N_43_4_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i1_4_lut_LC_15_31_4 .C_ON=1'b0;
    defparam \PWM.i1_4_lut_LC_15_31_4 .SEQ_MODE=4'b0000;
    defparam \PWM.i1_4_lut_LC_15_31_4 .LUT_INIT=16'b1000000000010110;
    LogicCell40 \PWM.i1_4_lut_LC_15_31_4  (
            .in0(N__2271),
            .in1(N__2249),
            .in2(N__2216),
            .in3(N__2212),
            .lcout(\PWM.n11 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i229_2_lut_3_lut_4_lut_LC_15_31_5 .C_ON=1'b0;
    defparam \PWM.i229_2_lut_3_lut_4_lut_LC_15_31_5 .SEQ_MODE=4'b0000;
    defparam \PWM.i229_2_lut_3_lut_4_lut_LC_15_31_5 .LUT_INIT=16'b0000000100000101;
    LogicCell40 \PWM.i229_2_lut_3_lut_4_lut_LC_15_31_5  (
            .in0(N__2031),
            .in1(N__2097),
            .in2(N__2006),
            .in3(N__2059),
            .lcout(\PWM.n694 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.half_duty_0___i2_LC_15_31_6 .C_ON=1'b0;
    defparam \PWM.half_duty_0___i2_LC_15_31_6 .SEQ_MODE=4'b1000;
    defparam \PWM.half_duty_0___i2_LC_15_31_6 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \PWM.half_duty_0___i2_LC_15_31_6  (
            .in0(_gnd_net_),
            .in1(N__2160),
            .in2(_gnd_net_),
            .in3(N__2127),
            .lcout(half_duty_0_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1974),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.i530_1_lut_2_lut_LC_15_31_7 .C_ON=1'b0;
    defparam \PWM.i530_1_lut_2_lut_LC_15_31_7 .SEQ_MODE=4'b0000;
    defparam \PWM.i530_1_lut_2_lut_LC_15_31_7 .LUT_INIT=16'b0000000011001100;
    LogicCell40 \PWM.i530_1_lut_2_lut_LC_15_31_7  (
            .in0(_gnd_net_),
            .in1(N__2096),
            .in2(_gnd_net_),
            .in3(N__2058),
            .lcout(\PWM.n193 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \PWM.pause_counter_0__i0_LC_15_32_5 .C_ON=1'b0;
    defparam \PWM.pause_counter_0__i0_LC_15_32_5 .SEQ_MODE=4'b1001;
    defparam \PWM.pause_counter_0__i0_LC_15_32_5 .LUT_INIT=16'b0000000011011101;
    LogicCell40 \PWM.pause_counter_0__i0_LC_15_32_5  (
            .in0(N__2048),
            .in1(N__2032),
            .in2(_gnd_net_),
            .in3(N__2002),
            .lcout(\PWM.pause_counter_0_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1975),
            .ce(N__1933),
            .sr(N__1916));
    defparam CONSTANT_ONE_LUT4_LC_24_32_7.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_24_32_7.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_24_32_7.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_24_32_7 (
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
