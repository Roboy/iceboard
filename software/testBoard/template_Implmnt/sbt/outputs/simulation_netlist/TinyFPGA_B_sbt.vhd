-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 12 2017 08:26:01

-- File Generated:     Feb 17 2020 12:41:07

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "TinyFPGA_B" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of TinyFPGA_B
entity TinyFPGA_B is
port (
    USBPU : out std_logic;
    TX : out std_logic;
    SDA : in std_logic;
    SCL : in std_logic;
    RX : in std_logic;
    NEOPXL : out std_logic;
    LED : out std_logic;
    INLC : out std_logic;
    INLB : out std_logic;
    INLA : out std_logic;
    INHC : out std_logic;
    INHB : out std_logic;
    INHA : out std_logic;
    HALL3 : in std_logic;
    HALL2 : in std_logic;
    HALL1 : in std_logic;
    FAULT_N : in std_logic;
    ENCODER1_B : in std_logic;
    ENCODER1_A : in std_logic;
    ENCODER0_B : in std_logic;
    ENCODER0_A : in std_logic;
    DE : out std_logic;
    CS_MISO : in std_logic;
    CS_CLK : out std_logic;
    CS : out std_logic;
    CLK : in std_logic);
end TinyFPGA_B;

-- Architecture of TinyFPGA_B
-- View name is \INTERFACE\
architecture \INTERFACE\ of TinyFPGA_B is

signal \N__2747\ : std_logic;
signal \N__2746\ : std_logic;
signal \N__2745\ : std_logic;
signal \N__2738\ : std_logic;
signal \N__2737\ : std_logic;
signal \N__2736\ : std_logic;
signal \N__2729\ : std_logic;
signal \N__2728\ : std_logic;
signal \N__2727\ : std_logic;
signal \N__2720\ : std_logic;
signal \N__2719\ : std_logic;
signal \N__2718\ : std_logic;
signal \N__2711\ : std_logic;
signal \N__2710\ : std_logic;
signal \N__2709\ : std_logic;
signal \N__2702\ : std_logic;
signal \N__2701\ : std_logic;
signal \N__2700\ : std_logic;
signal \N__2693\ : std_logic;
signal \N__2692\ : std_logic;
signal \N__2691\ : std_logic;
signal \N__2684\ : std_logic;
signal \N__2683\ : std_logic;
signal \N__2682\ : std_logic;
signal \N__2675\ : std_logic;
signal \N__2674\ : std_logic;
signal \N__2673\ : std_logic;
signal \N__2666\ : std_logic;
signal \N__2665\ : std_logic;
signal \N__2664\ : std_logic;
signal \N__2657\ : std_logic;
signal \N__2656\ : std_logic;
signal \N__2655\ : std_logic;
signal \N__2648\ : std_logic;
signal \N__2647\ : std_logic;
signal \N__2646\ : std_logic;
signal \N__2639\ : std_logic;
signal \N__2638\ : std_logic;
signal \N__2637\ : std_logic;
signal \N__2630\ : std_logic;
signal \N__2629\ : std_logic;
signal \N__2628\ : std_logic;
signal \N__2621\ : std_logic;
signal \N__2620\ : std_logic;
signal \N__2619\ : std_logic;
signal \N__2612\ : std_logic;
signal \N__2611\ : std_logic;
signal \N__2610\ : std_logic;
signal \N__2603\ : std_logic;
signal \N__2602\ : std_logic;
signal \N__2601\ : std_logic;
signal \N__2584\ : std_logic;
signal \N__2583\ : std_logic;
signal \N__2580\ : std_logic;
signal \N__2577\ : std_logic;
signal \N__2572\ : std_logic;
signal \N__2569\ : std_logic;
signal \N__2566\ : std_logic;
signal \N__2563\ : std_logic;
signal \N__2562\ : std_logic;
signal \N__2559\ : std_logic;
signal \N__2556\ : std_logic;
signal \N__2551\ : std_logic;
signal \N__2550\ : std_logic;
signal \N__2547\ : std_logic;
signal \N__2544\ : std_logic;
signal \N__2539\ : std_logic;
signal \N__2538\ : std_logic;
signal \N__2535\ : std_logic;
signal \N__2532\ : std_logic;
signal \N__2527\ : std_logic;
signal \N__2526\ : std_logic;
signal \N__2523\ : std_logic;
signal \N__2520\ : std_logic;
signal \N__2515\ : std_logic;
signal \N__2512\ : std_logic;
signal \N__2511\ : std_logic;
signal \N__2508\ : std_logic;
signal \N__2505\ : std_logic;
signal \N__2500\ : std_logic;
signal \N__2499\ : std_logic;
signal \N__2496\ : std_logic;
signal \N__2495\ : std_logic;
signal \N__2492\ : std_logic;
signal \N__2491\ : std_logic;
signal \N__2488\ : std_logic;
signal \N__2485\ : std_logic;
signal \N__2480\ : std_logic;
signal \N__2475\ : std_logic;
signal \N__2472\ : std_logic;
signal \N__2469\ : std_logic;
signal \N__2464\ : std_logic;
signal \N__2463\ : std_logic;
signal \N__2462\ : std_logic;
signal \N__2461\ : std_logic;
signal \N__2458\ : std_logic;
signal \N__2457\ : std_logic;
signal \N__2456\ : std_logic;
signal \N__2453\ : std_logic;
signal \N__2450\ : std_logic;
signal \N__2447\ : std_logic;
signal \N__2446\ : std_logic;
signal \N__2443\ : std_logic;
signal \N__2442\ : std_logic;
signal \N__2439\ : std_logic;
signal \N__2436\ : std_logic;
signal \N__2429\ : std_logic;
signal \N__2426\ : std_logic;
signal \N__2423\ : std_logic;
signal \N__2420\ : std_logic;
signal \N__2419\ : std_logic;
signal \N__2416\ : std_logic;
signal \N__2413\ : std_logic;
signal \N__2410\ : std_logic;
signal \N__2403\ : std_logic;
signal \N__2400\ : std_logic;
signal \N__2399\ : std_logic;
signal \N__2396\ : std_logic;
signal \N__2393\ : std_logic;
signal \N__2390\ : std_logic;
signal \N__2387\ : std_logic;
signal \N__2384\ : std_logic;
signal \N__2381\ : std_logic;
signal \N__2368\ : std_logic;
signal \N__2365\ : std_logic;
signal \N__2362\ : std_logic;
signal \N__2359\ : std_logic;
signal \N__2356\ : std_logic;
signal \N__2353\ : std_logic;
signal \N__2350\ : std_logic;
signal \N__2347\ : std_logic;
signal \N__2344\ : std_logic;
signal \N__2341\ : std_logic;
signal \N__2338\ : std_logic;
signal \N__2337\ : std_logic;
signal \N__2336\ : std_logic;
signal \N__2333\ : std_logic;
signal \N__2328\ : std_logic;
signal \N__2323\ : std_logic;
signal \N__2320\ : std_logic;
signal \N__2319\ : std_logic;
signal \N__2318\ : std_logic;
signal \N__2315\ : std_logic;
signal \N__2314\ : std_logic;
signal \N__2313\ : std_logic;
signal \N__2312\ : std_logic;
signal \N__2311\ : std_logic;
signal \N__2310\ : std_logic;
signal \N__2309\ : std_logic;
signal \N__2308\ : std_logic;
signal \N__2307\ : std_logic;
signal \N__2304\ : std_logic;
signal \N__2301\ : std_logic;
signal \N__2298\ : std_logic;
signal \N__2295\ : std_logic;
signal \N__2290\ : std_logic;
signal \N__2285\ : std_logic;
signal \N__2278\ : std_logic;
signal \N__2263\ : std_logic;
signal \N__2262\ : std_logic;
signal \N__2261\ : std_logic;
signal \N__2260\ : std_logic;
signal \N__2255\ : std_logic;
signal \N__2252\ : std_logic;
signal \N__2249\ : std_logic;
signal \N__2242\ : std_logic;
signal \N__2241\ : std_logic;
signal \N__2240\ : std_logic;
signal \N__2237\ : std_logic;
signal \N__2236\ : std_logic;
signal \N__2235\ : std_logic;
signal \N__2234\ : std_logic;
signal \N__2233\ : std_logic;
signal \N__2232\ : std_logic;
signal \N__2231\ : std_logic;
signal \N__2228\ : std_logic;
signal \N__2227\ : std_logic;
signal \N__2226\ : std_logic;
signal \N__2225\ : std_logic;
signal \N__2224\ : std_logic;
signal \N__2221\ : std_logic;
signal \N__2218\ : std_logic;
signal \N__2215\ : std_logic;
signal \N__2212\ : std_logic;
signal \N__2207\ : std_logic;
signal \N__2202\ : std_logic;
signal \N__2191\ : std_logic;
signal \N__2176\ : std_logic;
signal \N__2175\ : std_logic;
signal \N__2172\ : std_logic;
signal \N__2169\ : std_logic;
signal \N__2166\ : std_logic;
signal \N__2161\ : std_logic;
signal \N__2158\ : std_logic;
signal \N__2155\ : std_logic;
signal \N__2154\ : std_logic;
signal \N__2151\ : std_logic;
signal \N__2148\ : std_logic;
signal \N__2147\ : std_logic;
signal \N__2142\ : std_logic;
signal \N__2139\ : std_logic;
signal \N__2136\ : std_logic;
signal \N__2133\ : std_logic;
signal \N__2128\ : std_logic;
signal \N__2127\ : std_logic;
signal \N__2126\ : std_logic;
signal \N__2123\ : std_logic;
signal \N__2118\ : std_logic;
signal \N__2113\ : std_logic;
signal \N__2112\ : std_logic;
signal \N__2109\ : std_logic;
signal \N__2106\ : std_logic;
signal \N__2101\ : std_logic;
signal \N__2100\ : std_logic;
signal \N__2097\ : std_logic;
signal \N__2094\ : std_logic;
signal \N__2089\ : std_logic;
signal \N__2086\ : std_logic;
signal \N__2085\ : std_logic;
signal \N__2082\ : std_logic;
signal \N__2079\ : std_logic;
signal \N__2074\ : std_logic;
signal \N__2073\ : std_logic;
signal \N__2070\ : std_logic;
signal \N__2067\ : std_logic;
signal \N__2062\ : std_logic;
signal \N__2061\ : std_logic;
signal \N__2058\ : std_logic;
signal \N__2055\ : std_logic;
signal \N__2050\ : std_logic;
signal \N__2047\ : std_logic;
signal \N__2046\ : std_logic;
signal \N__2043\ : std_logic;
signal \N__2040\ : std_logic;
signal \N__2035\ : std_logic;
signal \N__2032\ : std_logic;
signal \N__2029\ : std_logic;
signal \N__2026\ : std_logic;
signal \N__2025\ : std_logic;
signal \N__2022\ : std_logic;
signal \N__2019\ : std_logic;
signal \N__2014\ : std_logic;
signal \N__2013\ : std_logic;
signal \N__2010\ : std_logic;
signal \N__2007\ : std_logic;
signal \N__2002\ : std_logic;
signal \N__1999\ : std_logic;
signal \N__1996\ : std_logic;
signal \N__1993\ : std_logic;
signal \N__1990\ : std_logic;
signal \N__1987\ : std_logic;
signal \N__1984\ : std_logic;
signal \N__1981\ : std_logic;
signal \N__1978\ : std_logic;
signal \N__1975\ : std_logic;
signal \N__1972\ : std_logic;
signal \N__1969\ : std_logic;
signal \N__1966\ : std_logic;
signal \N__1963\ : std_logic;
signal \N__1960\ : std_logic;
signal \N__1957\ : std_logic;
signal \N__1956\ : std_logic;
signal \N__1953\ : std_logic;
signal \N__1950\ : std_logic;
signal \N__1945\ : std_logic;
signal \N__1944\ : std_logic;
signal \N__1941\ : std_logic;
signal \N__1938\ : std_logic;
signal \N__1933\ : std_logic;
signal \N__1930\ : std_logic;
signal \N__1927\ : std_logic;
signal \N__1926\ : std_logic;
signal \N__1923\ : std_logic;
signal \N__1920\ : std_logic;
signal \N__1917\ : std_logic;
signal \N__1912\ : std_logic;
signal \N__1909\ : std_logic;
signal \N__1908\ : std_logic;
signal \N__1905\ : std_logic;
signal \N__1902\ : std_logic;
signal \N__1897\ : std_logic;
signal \N__1894\ : std_logic;
signal \N__1891\ : std_logic;
signal \N__1888\ : std_logic;
signal \N__1885\ : std_logic;
signal \N__1882\ : std_logic;
signal \N__1879\ : std_logic;
signal \N__1876\ : std_logic;
signal \N__1873\ : std_logic;
signal \N__1870\ : std_logic;
signal \N__1867\ : std_logic;
signal \N__1864\ : std_logic;
signal \N__1861\ : std_logic;
signal \N__1858\ : std_logic;
signal \N__1855\ : std_logic;
signal \N__1852\ : std_logic;
signal \N__1851\ : std_logic;
signal \N__1850\ : std_logic;
signal \N__1849\ : std_logic;
signal \N__1848\ : std_logic;
signal \N__1845\ : std_logic;
signal \N__1842\ : std_logic;
signal \N__1841\ : std_logic;
signal \N__1838\ : std_logic;
signal \N__1837\ : std_logic;
signal \N__1834\ : std_logic;
signal \N__1831\ : std_logic;
signal \N__1826\ : std_logic;
signal \N__1815\ : std_logic;
signal \N__1810\ : std_logic;
signal \N__1807\ : std_logic;
signal \N__1806\ : std_logic;
signal \N__1803\ : std_logic;
signal \N__1800\ : std_logic;
signal \N__1795\ : std_logic;
signal \N__1794\ : std_logic;
signal \N__1791\ : std_logic;
signal \N__1788\ : std_logic;
signal \N__1783\ : std_logic;
signal \N__1780\ : std_logic;
signal \N__1779\ : std_logic;
signal \N__1776\ : std_logic;
signal \N__1773\ : std_logic;
signal \N__1768\ : std_logic;
signal \N__1767\ : std_logic;
signal \N__1764\ : std_logic;
signal \N__1761\ : std_logic;
signal \N__1756\ : std_logic;
signal \N__1753\ : std_logic;
signal \N__1750\ : std_logic;
signal \N__1747\ : std_logic;
signal \N__1744\ : std_logic;
signal \N__1741\ : std_logic;
signal \N__1738\ : std_logic;
signal \N__1737\ : std_logic;
signal \N__1734\ : std_logic;
signal \N__1731\ : std_logic;
signal \N__1726\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1719\ : std_logic;
signal \N__1714\ : std_logic;
signal \N__1713\ : std_logic;
signal \N__1710\ : std_logic;
signal \N__1707\ : std_logic;
signal \N__1702\ : std_logic;
signal \N__1701\ : std_logic;
signal \N__1698\ : std_logic;
signal \N__1695\ : std_logic;
signal \N__1690\ : std_logic;
signal \N__1687\ : std_logic;
signal \N__1686\ : std_logic;
signal \N__1683\ : std_logic;
signal \N__1680\ : std_logic;
signal \N__1675\ : std_logic;
signal \N__1672\ : std_logic;
signal \N__1669\ : std_logic;
signal \N__1666\ : std_logic;
signal \N__1665\ : std_logic;
signal \N__1664\ : std_logic;
signal \N__1663\ : std_logic;
signal \N__1662\ : std_logic;
signal \N__1661\ : std_logic;
signal \N__1648\ : std_logic;
signal \N__1645\ : std_logic;
signal \N__1642\ : std_logic;
signal \N__1639\ : std_logic;
signal \N__1636\ : std_logic;
signal \N__1633\ : std_logic;
signal \N__1630\ : std_logic;
signal \N__1627\ : std_logic;
signal \N__1626\ : std_logic;
signal \N__1625\ : std_logic;
signal \N__1620\ : std_logic;
signal \N__1617\ : std_logic;
signal \N__1612\ : std_logic;
signal \N__1609\ : std_logic;
signal \N__1608\ : std_logic;
signal \N__1607\ : std_logic;
signal \N__1602\ : std_logic;
signal \N__1599\ : std_logic;
signal \N__1594\ : std_logic;
signal \N__1591\ : std_logic;
signal \N__1590\ : std_logic;
signal \N__1587\ : std_logic;
signal \N__1586\ : std_logic;
signal \N__1581\ : std_logic;
signal \N__1578\ : std_logic;
signal \N__1573\ : std_logic;
signal \N__1570\ : std_logic;
signal \N__1569\ : std_logic;
signal \N__1568\ : std_logic;
signal \N__1563\ : std_logic;
signal \N__1560\ : std_logic;
signal \N__1555\ : std_logic;
signal \N__1552\ : std_logic;
signal \N__1549\ : std_logic;
signal \N__1548\ : std_logic;
signal \N__1545\ : std_logic;
signal \N__1542\ : std_logic;
signal \N__1537\ : std_logic;
signal \N__1534\ : std_logic;
signal \N__1531\ : std_logic;
signal \N__1528\ : std_logic;
signal \N__1525\ : std_logic;
signal \N__1522\ : std_logic;
signal \N__1519\ : std_logic;
signal \N__1516\ : std_logic;
signal \N__1513\ : std_logic;
signal \N__1510\ : std_logic;
signal \N__1507\ : std_logic;
signal \N__1504\ : std_logic;
signal \N__1501\ : std_logic;
signal \N__1498\ : std_logic;
signal \N__1495\ : std_logic;
signal \N__1492\ : std_logic;
signal \N__1489\ : std_logic;
signal \N__1486\ : std_logic;
signal \N__1483\ : std_logic;
signal \N__1480\ : std_logic;
signal \N__1477\ : std_logic;
signal \N__1474\ : std_logic;
signal \N__1471\ : std_logic;
signal \N__1468\ : std_logic;
signal \N__1465\ : std_logic;
signal \N__1462\ : std_logic;
signal \N__1459\ : std_logic;
signal \N__1456\ : std_logic;
signal \N__1453\ : std_logic;
signal \N__1450\ : std_logic;
signal \N__1447\ : std_logic;
signal \N__1444\ : std_logic;
signal \N__1441\ : std_logic;
signal \N__1438\ : std_logic;
signal \N__1435\ : std_logic;
signal \N__1432\ : std_logic;
signal \N__1429\ : std_logic;
signal \N__1426\ : std_logic;
signal \N__1423\ : std_logic;
signal \N__1420\ : std_logic;
signal \N__1417\ : std_logic;
signal \N__1414\ : std_logic;
signal \N__1411\ : std_logic;
signal \N__1408\ : std_logic;
signal \N__1405\ : std_logic;
signal \N__1402\ : std_logic;
signal \N__1399\ : std_logic;
signal \N__1396\ : std_logic;
signal \N__1393\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1387\ : std_logic;
signal \N__1384\ : std_logic;
signal \N__1381\ : std_logic;
signal \N__1378\ : std_logic;
signal \N__1375\ : std_logic;
signal \N__1372\ : std_logic;
signal \N__1369\ : std_logic;
signal \N__1366\ : std_logic;
signal \N__1363\ : std_logic;
signal \N__1360\ : std_logic;
signal \N__1357\ : std_logic;
signal \N__1354\ : std_logic;
signal \N__1351\ : std_logic;
signal \N__1348\ : std_logic;
signal \N__1345\ : std_logic;
signal \N__1342\ : std_logic;
signal \N__1339\ : std_logic;
signal \N__1336\ : std_logic;
signal \N__1333\ : std_logic;
signal \N__1330\ : std_logic;
signal \N__1327\ : std_logic;
signal \N__1324\ : std_logic;
signal \N__1321\ : std_logic;
signal \N__1318\ : std_logic;
signal \N__1315\ : std_logic;
signal \N__1312\ : std_logic;
signal \N__1309\ : std_logic;
signal \N__1306\ : std_logic;
signal \N__1303\ : std_logic;
signal \N__1300\ : std_logic;
signal \N__1297\ : std_logic;
signal \N__1294\ : std_logic;
signal \N__1291\ : std_logic;
signal \CLK_pad_gb_input\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal n979 : std_logic;
signal n980 : std_logic;
signal \LED_c\ : std_logic;
signal n26 : std_logic;
signal \bfn_13_17_0_\ : std_logic;
signal n25 : std_logic;
signal n916 : std_logic;
signal n24 : std_logic;
signal n917 : std_logic;
signal n23 : std_logic;
signal n918 : std_logic;
signal n22 : std_logic;
signal n919 : std_logic;
signal n21 : std_logic;
signal n920 : std_logic;
signal n20 : std_logic;
signal n921 : std_logic;
signal n19 : std_logic;
signal n922 : std_logic;
signal n923 : std_logic;
signal n18 : std_logic;
signal \bfn_13_18_0_\ : std_logic;
signal n17 : std_logic;
signal n924 : std_logic;
signal n16 : std_logic;
signal n925 : std_logic;
signal n15 : std_logic;
signal n926 : std_logic;
signal n14 : std_logic;
signal n927 : std_logic;
signal n13 : std_logic;
signal n928 : std_logic;
signal n12 : std_logic;
signal n929 : std_logic;
signal n11 : std_logic;
signal n930 : std_logic;
signal n931 : std_logic;
signal n10 : std_logic;
signal \bfn_13_19_0_\ : std_logic;
signal n9 : std_logic;
signal n932 : std_logic;
signal n8 : std_logic;
signal n933 : std_logic;
signal n7 : std_logic;
signal n934 : std_logic;
signal n6 : std_logic;
signal n935 : std_logic;
signal blink_counter_21 : std_logic;
signal n936 : std_logic;
signal blink_counter_22 : std_logic;
signal n937 : std_logic;
signal blink_counter_23 : std_logic;
signal n938 : std_logic;
signal n939 : std_logic;
signal blink_counter_24 : std_logic;
signal \bfn_13_20_0_\ : std_logic;
signal n940 : std_logic;
signal blink_counter_25 : std_logic;
signal \bfn_14_16_0_\ : std_logic;
signal \tli.n899\ : std_logic;
signal \tli.n900\ : std_logic;
signal \tli.n901\ : std_logic;
signal \tli.n902\ : std_logic;
signal \tli.counter_1\ : std_logic;
signal \tli.counter_2\ : std_logic;
signal \tli.counter_3\ : std_logic;
signal \tli.counter_4\ : std_logic;
signal \tli.n6_adj_237_cascade_\ : std_logic;
signal \tli.counter_0\ : std_logic;
signal \tli.clk_slow_N_43\ : std_logic;
signal \tli.clk_slow_N_43_cascade_\ : std_logic;
signal \CLK_c\ : std_logic;
signal \bfn_15_17_0_\ : std_logic;
signal \tli.n892\ : std_logic;
signal \tli.n893\ : std_logic;
signal \tli.n894\ : std_logic;
signal \tli.n895\ : std_logic;
signal \tli.n896\ : std_logic;
signal \tli.n897\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \tli.n898\ : std_logic;
signal \INVtli.bit_counter_134__i4C_net\ : std_logic;
signal \tli.bit_counter_7\ : std_logic;
signal \tli.bit_counter_5\ : std_logic;
signal \tli.bit_counter_4\ : std_logic;
signal \tli.bit_counter_6\ : std_logic;
signal \tli.n45\ : std_logic;
signal \tli.n986\ : std_logic;
signal \INVtli.bit_counter_134__i0C_net\ : std_logic;
signal \bfn_15_19_0_\ : std_logic;
signal \tli.n903\ : std_logic;
signal \tli.n904\ : std_logic;
signal \tli.n905\ : std_logic;
signal \tli.n906\ : std_logic;
signal \tli.n907\ : std_logic;
signal \tli.n908\ : std_logic;
signal \tli.n909\ : std_logic;
signal \tli.n910\ : std_logic;
signal \INVtli.delay_counter_132_133__i1C_net\ : std_logic;
signal \bfn_15_20_0_\ : std_logic;
signal \tli.n911\ : std_logic;
signal \tli.n912\ : std_logic;
signal \tli.n913\ : std_logic;
signal \tli.n914\ : std_logic;
signal \tli.n915\ : std_logic;
signal \INVtli.delay_counter_132_133__i9C_net\ : std_logic;
signal \tli.n985\ : std_logic;
signal \tli.n984\ : std_logic;
signal \INVtli.bit_counter_134__i2C_net\ : std_logic;
signal \tli.bit_counter_1\ : std_logic;
signal \tli.bit_counter_2\ : std_logic;
signal \tli.n14\ : std_logic;
signal \tli.bit_counter_3\ : std_logic;
signal \tli.bit_counter_0\ : std_logic;
signal \tli.n10\ : std_logic;
signal \tli.n15_cascade_\ : std_logic;
signal \tli.n852\ : std_logic;
signal \tli.n839\ : std_logic;
signal \tli.n569\ : std_logic;
signal \INVtli.state_i0C_net\ : std_logic;
signal \tli.delay_counter_2\ : std_logic;
signal \tli.delay_counter_1\ : std_logic;
signal \tli.delay_counter_3\ : std_logic;
signal \tli.delay_counter_0\ : std_logic;
signal \tli.delay_counter_7\ : std_logic;
signal \tli.n978_cascade_\ : std_logic;
signal \tli.delay_counter_4\ : std_logic;
signal \tli.n833\ : std_logic;
signal \tli.delay_counter_5\ : std_logic;
signal \tli.delay_counter_6\ : std_logic;
signal \tli.n6\ : std_logic;
signal \tli.n850\ : std_logic;
signal \tli.delay_counter_9\ : std_logic;
signal \tli.n977\ : std_logic;
signal \tli.delay_counter_10\ : std_logic;
signal \tli.delay_counter_8\ : std_logic;
signal \tli.delay_counter_12\ : std_logic;
signal \tli.delay_counter_13\ : std_logic;
signal \tli.n966_cascade_\ : std_logic;
signal \tli.delay_counter_11\ : std_logic;
signal \tli.delay_counter_15__N_124\ : std_logic;
signal \tli.clk_slow\ : std_logic;
signal \CS_CLK_c\ : std_logic;
signal \CS_c\ : std_logic;
signal \INVtli.slave_select_65C_net\ : std_logic;
signal \tli.state_1\ : std_logic;
signal \tli.n15\ : std_logic;
signal \tli.state_0\ : std_logic;
signal \tli.clk_out\ : std_logic;
signal \INVtli.clk_out_66C_net\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \CS_CLK_wire\ : std_logic;
signal \CS_wire\ : std_logic;
signal \DE_wire\ : std_logic;
signal \INHA_wire\ : std_logic;
signal \INHB_wire\ : std_logic;
signal \INHC_wire\ : std_logic;
signal \INLA_wire\ : std_logic;
signal \INLB_wire\ : std_logic;
signal \INLC_wire\ : std_logic;
signal \LED_wire\ : std_logic;
signal \NEOPXL_wire\ : std_logic;
signal \TX_wire\ : std_logic;
signal \USBPU_wire\ : std_logic;
signal \HALL1_wire\ : std_logic;
signal \HALL2_wire\ : std_logic;
signal \HALL3_wire\ : std_logic;
signal \CLK_wire\ : std_logic;

begin
    CS_CLK <= \CS_CLK_wire\;
    CS <= \CS_wire\;
    DE <= \DE_wire\;
    INHA <= \INHA_wire\;
    INHB <= \INHB_wire\;
    INHC <= \INHC_wire\;
    INLA <= \INLA_wire\;
    INLB <= \INLB_wire\;
    INLC <= \INLC_wire\;
    LED <= \LED_wire\;
    NEOPXL <= \NEOPXL_wire\;
    TX <= \TX_wire\;
    USBPU <= \USBPU_wire\;
    \HALL1_wire\ <= HALL1;
    \HALL2_wire\ <= HALL2;
    \HALL3_wire\ <= HALL3;
    \CLK_wire\ <= CLK;

    \CS_CLK_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2747\,
            DIN => \N__2746\,
            DOUT => \N__2745\,
            PACKAGEPIN => \CS_CLK_wire\
        );

    \CS_CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2747\,
            PADOUT => \N__2746\,
            PADIN => \N__2745\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__2368\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \CS_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2738\,
            DIN => \N__2737\,
            DOUT => \N__2736\,
            PACKAGEPIN => \CS_wire\
        );

    \CS_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2738\,
            PADOUT => \N__2737\,
            PADIN => \N__2736\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__2344\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \DE_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2729\,
            DIN => \N__2728\,
            DOUT => \N__2727\,
            PACKAGEPIN => \DE_wire\
        );

    \DE_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2729\,
            PADOUT => \N__2728\,
            PADIN => \N__2727\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INHA_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2720\,
            DIN => \N__2719\,
            DOUT => \N__2718\,
            PACKAGEPIN => \INHA_wire\
        );

    \INHA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2720\,
            PADOUT => \N__2719\,
            PADIN => \N__2718\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INHB_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2711\,
            DIN => \N__2710\,
            DOUT => \N__2709\,
            PACKAGEPIN => \INHB_wire\
        );

    \INHB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2711\,
            PADOUT => \N__2710\,
            PADIN => \N__2709\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INHC_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2702\,
            DIN => \N__2701\,
            DOUT => \N__2700\,
            PACKAGEPIN => \INHC_wire\
        );

    \INHC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2702\,
            PADOUT => \N__2701\,
            PADIN => \N__2700\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INLA_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2693\,
            DIN => \N__2692\,
            DOUT => \N__2691\,
            PACKAGEPIN => \INLA_wire\
        );

    \INLA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2693\,
            PADOUT => \N__2692\,
            PADIN => \N__2691\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INLB_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2684\,
            DIN => \N__2683\,
            DOUT => \N__2682\,
            PACKAGEPIN => \INLB_wire\
        );

    \INLB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2684\,
            PADOUT => \N__2683\,
            PADIN => \N__2682\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \INLC_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2675\,
            DIN => \N__2674\,
            DOUT => \N__2673\,
            PACKAGEPIN => \INLC_wire\
        );

    \INLC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2675\,
            PADOUT => \N__2674\,
            PADIN => \N__2673\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \LED_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2666\,
            DIN => \N__2665\,
            DOUT => \N__2664\,
            PACKAGEPIN => \LED_wire\
        );

    \LED_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2666\,
            PADOUT => \N__2665\,
            PADIN => \N__2664\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__1366\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \NEOPXL_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2657\,
            DIN => \N__2656\,
            DOUT => \N__2655\,
            PACKAGEPIN => \NEOPXL_wire\
        );

    \NEOPXL_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2657\,
            PADOUT => \N__2656\,
            PADIN => \N__2655\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \TX_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2648\,
            DIN => \N__2647\,
            DOUT => \N__2646\,
            PACKAGEPIN => \TX_wire\
        );

    \TX_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2648\,
            PADOUT => \N__2647\,
            PADIN => \N__2646\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \USBPU_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2639\,
            DIN => \N__2638\,
            DOUT => \N__2637\,
            PACKAGEPIN => \USBPU_wire\
        );

    \USBPU_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2639\,
            PADOUT => \N__2638\,
            PADIN => \N__2637\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \hall1_input_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '1'
        )
    port map (
            OE => \N__2630\,
            DIN => \N__2629\,
            DOUT => \N__2628\,
            PACKAGEPIN => \HALL1_wire\
        );

    \hall1_input_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2630\,
            PADOUT => \N__2629\,
            PADIN => \N__2628\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \hall2_input_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '1'
        )
    port map (
            OE => \N__2621\,
            DIN => \N__2620\,
            DOUT => \N__2619\,
            PACKAGEPIN => \HALL2_wire\
        );

    \hall2_input_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2621\,
            PADOUT => \N__2620\,
            PADIN => \N__2619\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \hall3_input_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '1'
        )
    port map (
            OE => \N__2612\,
            DIN => \N__2611\,
            DOUT => \N__2610\,
            PACKAGEPIN => \HALL3_wire\
        );

    \hall3_input_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2612\,
            PADOUT => \N__2611\,
            PADIN => \N__2610\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \GNDG0\,
            DOUT1 => \GNDG0\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \CLK_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2603\,
            DIN => \N__2602\,
            DOUT => \N__2601\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2603\,
            PADOUT => \N__2602\,
            PADIN => \N__2601\,
            CLOCKENABLE => 'H',
            DIN0 => \CLK_pad_gb_input\,
            DIN1 => OPEN,
            DOUT0 => '0',
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0'
        );

    \I__550\ : InMux
    port map (
            O => \N__2584\,
            I => \N__2580\
        );

    \I__549\ : InMux
    port map (
            O => \N__2583\,
            I => \N__2577\
        );

    \I__548\ : LocalMux
    port map (
            O => \N__2580\,
            I => \tli.delay_counter_9\
        );

    \I__547\ : LocalMux
    port map (
            O => \N__2577\,
            I => \tli.delay_counter_9\
        );

    \I__546\ : InMux
    port map (
            O => \N__2572\,
            I => \N__2569\
        );

    \I__545\ : LocalMux
    port map (
            O => \N__2569\,
            I => \tli.n977\
        );

    \I__544\ : CascadeMux
    port map (
            O => \N__2566\,
            I => \N__2563\
        );

    \I__543\ : InMux
    port map (
            O => \N__2563\,
            I => \N__2559\
        );

    \I__542\ : InMux
    port map (
            O => \N__2562\,
            I => \N__2556\
        );

    \I__541\ : LocalMux
    port map (
            O => \N__2559\,
            I => \tli.delay_counter_10\
        );

    \I__540\ : LocalMux
    port map (
            O => \N__2556\,
            I => \tli.delay_counter_10\
        );

    \I__539\ : InMux
    port map (
            O => \N__2551\,
            I => \N__2547\
        );

    \I__538\ : InMux
    port map (
            O => \N__2550\,
            I => \N__2544\
        );

    \I__537\ : LocalMux
    port map (
            O => \N__2547\,
            I => \tli.delay_counter_8\
        );

    \I__536\ : LocalMux
    port map (
            O => \N__2544\,
            I => \tli.delay_counter_8\
        );

    \I__535\ : InMux
    port map (
            O => \N__2539\,
            I => \N__2535\
        );

    \I__534\ : InMux
    port map (
            O => \N__2538\,
            I => \N__2532\
        );

    \I__533\ : LocalMux
    port map (
            O => \N__2535\,
            I => \tli.delay_counter_12\
        );

    \I__532\ : LocalMux
    port map (
            O => \N__2532\,
            I => \tli.delay_counter_12\
        );

    \I__531\ : InMux
    port map (
            O => \N__2527\,
            I => \N__2523\
        );

    \I__530\ : InMux
    port map (
            O => \N__2526\,
            I => \N__2520\
        );

    \I__529\ : LocalMux
    port map (
            O => \N__2523\,
            I => \tli.delay_counter_13\
        );

    \I__528\ : LocalMux
    port map (
            O => \N__2520\,
            I => \tli.delay_counter_13\
        );

    \I__527\ : CascadeMux
    port map (
            O => \N__2515\,
            I => \tli.n966_cascade_\
        );

    \I__526\ : InMux
    port map (
            O => \N__2512\,
            I => \N__2508\
        );

    \I__525\ : InMux
    port map (
            O => \N__2511\,
            I => \N__2505\
        );

    \I__524\ : LocalMux
    port map (
            O => \N__2508\,
            I => \tli.delay_counter_11\
        );

    \I__523\ : LocalMux
    port map (
            O => \N__2505\,
            I => \tli.delay_counter_11\
        );

    \I__522\ : SRMux
    port map (
            O => \N__2500\,
            I => \N__2496\
        );

    \I__521\ : CascadeMux
    port map (
            O => \N__2499\,
            I => \N__2492\
        );

    \I__520\ : LocalMux
    port map (
            O => \N__2496\,
            I => \N__2488\
        );

    \I__519\ : SRMux
    port map (
            O => \N__2495\,
            I => \N__2485\
        );

    \I__518\ : InMux
    port map (
            O => \N__2492\,
            I => \N__2480\
        );

    \I__517\ : InMux
    port map (
            O => \N__2491\,
            I => \N__2480\
        );

    \I__516\ : Span4Mux_v
    port map (
            O => \N__2488\,
            I => \N__2475\
        );

    \I__515\ : LocalMux
    port map (
            O => \N__2485\,
            I => \N__2475\
        );

    \I__514\ : LocalMux
    port map (
            O => \N__2480\,
            I => \N__2472\
        );

    \I__513\ : Sp12to4
    port map (
            O => \N__2475\,
            I => \N__2469\
        );

    \I__512\ : Odrv4
    port map (
            O => \N__2472\,
            I => \tli.delay_counter_15__N_124\
        );

    \I__511\ : Odrv12
    port map (
            O => \N__2469\,
            I => \tli.delay_counter_15__N_124\
        );

    \I__510\ : ClkMux
    port map (
            O => \N__2464\,
            I => \N__2458\
        );

    \I__509\ : InMux
    port map (
            O => \N__2463\,
            I => \N__2453\
        );

    \I__508\ : ClkMux
    port map (
            O => \N__2462\,
            I => \N__2450\
        );

    \I__507\ : ClkMux
    port map (
            O => \N__2461\,
            I => \N__2447\
        );

    \I__506\ : LocalMux
    port map (
            O => \N__2458\,
            I => \N__2443\
        );

    \I__505\ : ClkMux
    port map (
            O => \N__2457\,
            I => \N__2439\
        );

    \I__504\ : ClkMux
    port map (
            O => \N__2456\,
            I => \N__2436\
        );

    \I__503\ : LocalMux
    port map (
            O => \N__2453\,
            I => \N__2429\
        );

    \I__502\ : LocalMux
    port map (
            O => \N__2450\,
            I => \N__2429\
        );

    \I__501\ : LocalMux
    port map (
            O => \N__2447\,
            I => \N__2429\
        );

    \I__500\ : ClkMux
    port map (
            O => \N__2446\,
            I => \N__2426\
        );

    \I__499\ : Span4Mux_v
    port map (
            O => \N__2443\,
            I => \N__2423\
        );

    \I__498\ : ClkMux
    port map (
            O => \N__2442\,
            I => \N__2420\
        );

    \I__497\ : LocalMux
    port map (
            O => \N__2439\,
            I => \N__2416\
        );

    \I__496\ : LocalMux
    port map (
            O => \N__2436\,
            I => \N__2413\
        );

    \I__495\ : Span4Mux_v
    port map (
            O => \N__2429\,
            I => \N__2410\
        );

    \I__494\ : LocalMux
    port map (
            O => \N__2426\,
            I => \N__2403\
        );

    \I__493\ : Span4Mux_v
    port map (
            O => \N__2423\,
            I => \N__2403\
        );

    \I__492\ : LocalMux
    port map (
            O => \N__2420\,
            I => \N__2403\
        );

    \I__491\ : ClkMux
    port map (
            O => \N__2419\,
            I => \N__2400\
        );

    \I__490\ : Span4Mux_h
    port map (
            O => \N__2416\,
            I => \N__2396\
        );

    \I__489\ : Span4Mux_v
    port map (
            O => \N__2413\,
            I => \N__2393\
        );

    \I__488\ : Span4Mux_h
    port map (
            O => \N__2410\,
            I => \N__2390\
        );

    \I__487\ : Span4Mux_v
    port map (
            O => \N__2403\,
            I => \N__2387\
        );

    \I__486\ : LocalMux
    port map (
            O => \N__2400\,
            I => \N__2384\
        );

    \I__485\ : InMux
    port map (
            O => \N__2399\,
            I => \N__2381\
        );

    \I__484\ : Odrv4
    port map (
            O => \N__2396\,
            I => \tli.clk_slow\
        );

    \I__483\ : Odrv4
    port map (
            O => \N__2393\,
            I => \tli.clk_slow\
        );

    \I__482\ : Odrv4
    port map (
            O => \N__2390\,
            I => \tli.clk_slow\
        );

    \I__481\ : Odrv4
    port map (
            O => \N__2387\,
            I => \tli.clk_slow\
        );

    \I__480\ : Odrv12
    port map (
            O => \N__2384\,
            I => \tli.clk_slow\
        );

    \I__479\ : LocalMux
    port map (
            O => \N__2381\,
            I => \tli.clk_slow\
        );

    \I__478\ : IoInMux
    port map (
            O => \N__2368\,
            I => \N__2365\
        );

    \I__477\ : LocalMux
    port map (
            O => \N__2365\,
            I => \N__2362\
        );

    \I__476\ : IoSpan4Mux
    port map (
            O => \N__2362\,
            I => \N__2359\
        );

    \I__475\ : Span4Mux_s2_h
    port map (
            O => \N__2359\,
            I => \N__2356\
        );

    \I__474\ : Sp12to4
    port map (
            O => \N__2356\,
            I => \N__2353\
        );

    \I__473\ : Span12Mux_h
    port map (
            O => \N__2353\,
            I => \N__2350\
        );

    \I__472\ : Span12Mux_v
    port map (
            O => \N__2350\,
            I => \N__2347\
        );

    \I__471\ : Odrv12
    port map (
            O => \N__2347\,
            I => \CS_CLK_c\
        );

    \I__470\ : IoInMux
    port map (
            O => \N__2344\,
            I => \N__2341\
        );

    \I__469\ : LocalMux
    port map (
            O => \N__2341\,
            I => \N__2338\
        );

    \I__468\ : Span12Mux_s6_h
    port map (
            O => \N__2338\,
            I => \N__2333\
        );

    \I__467\ : InMux
    port map (
            O => \N__2337\,
            I => \N__2328\
        );

    \I__466\ : InMux
    port map (
            O => \N__2336\,
            I => \N__2328\
        );

    \I__465\ : Odrv12
    port map (
            O => \N__2333\,
            I => \CS_c\
        );

    \I__464\ : LocalMux
    port map (
            O => \N__2328\,
            I => \CS_c\
        );

    \I__463\ : CascadeMux
    port map (
            O => \N__2323\,
            I => \N__2320\
        );

    \I__462\ : InMux
    port map (
            O => \N__2320\,
            I => \N__2315\
        );

    \I__461\ : InMux
    port map (
            O => \N__2319\,
            I => \N__2304\
        );

    \I__460\ : InMux
    port map (
            O => \N__2318\,
            I => \N__2301\
        );

    \I__459\ : LocalMux
    port map (
            O => \N__2315\,
            I => \N__2298\
        );

    \I__458\ : InMux
    port map (
            O => \N__2314\,
            I => \N__2295\
        );

    \I__457\ : InMux
    port map (
            O => \N__2313\,
            I => \N__2290\
        );

    \I__456\ : InMux
    port map (
            O => \N__2312\,
            I => \N__2290\
        );

    \I__455\ : InMux
    port map (
            O => \N__2311\,
            I => \N__2285\
        );

    \I__454\ : InMux
    port map (
            O => \N__2310\,
            I => \N__2285\
        );

    \I__453\ : InMux
    port map (
            O => \N__2309\,
            I => \N__2278\
        );

    \I__452\ : InMux
    port map (
            O => \N__2308\,
            I => \N__2278\
        );

    \I__451\ : InMux
    port map (
            O => \N__2307\,
            I => \N__2278\
        );

    \I__450\ : LocalMux
    port map (
            O => \N__2304\,
            I => \tli.state_1\
        );

    \I__449\ : LocalMux
    port map (
            O => \N__2301\,
            I => \tli.state_1\
        );

    \I__448\ : Odrv4
    port map (
            O => \N__2298\,
            I => \tli.state_1\
        );

    \I__447\ : LocalMux
    port map (
            O => \N__2295\,
            I => \tli.state_1\
        );

    \I__446\ : LocalMux
    port map (
            O => \N__2290\,
            I => \tli.state_1\
        );

    \I__445\ : LocalMux
    port map (
            O => \N__2285\,
            I => \tli.state_1\
        );

    \I__444\ : LocalMux
    port map (
            O => \N__2278\,
            I => \tli.state_1\
        );

    \I__443\ : InMux
    port map (
            O => \N__2263\,
            I => \N__2255\
        );

    \I__442\ : InMux
    port map (
            O => \N__2262\,
            I => \N__2255\
        );

    \I__441\ : InMux
    port map (
            O => \N__2261\,
            I => \N__2252\
        );

    \I__440\ : InMux
    port map (
            O => \N__2260\,
            I => \N__2249\
        );

    \I__439\ : LocalMux
    port map (
            O => \N__2255\,
            I => \tli.n15\
        );

    \I__438\ : LocalMux
    port map (
            O => \N__2252\,
            I => \tli.n15\
        );

    \I__437\ : LocalMux
    port map (
            O => \N__2249\,
            I => \tli.n15\
        );

    \I__436\ : InMux
    port map (
            O => \N__2242\,
            I => \N__2237\
        );

    \I__435\ : CascadeMux
    port map (
            O => \N__2241\,
            I => \N__2228\
        );

    \I__434\ : InMux
    port map (
            O => \N__2240\,
            I => \N__2221\
        );

    \I__433\ : LocalMux
    port map (
            O => \N__2237\,
            I => \N__2218\
        );

    \I__432\ : InMux
    port map (
            O => \N__2236\,
            I => \N__2215\
        );

    \I__431\ : InMux
    port map (
            O => \N__2235\,
            I => \N__2212\
        );

    \I__430\ : InMux
    port map (
            O => \N__2234\,
            I => \N__2207\
        );

    \I__429\ : InMux
    port map (
            O => \N__2233\,
            I => \N__2207\
        );

    \I__428\ : InMux
    port map (
            O => \N__2232\,
            I => \N__2202\
        );

    \I__427\ : InMux
    port map (
            O => \N__2231\,
            I => \N__2202\
        );

    \I__426\ : InMux
    port map (
            O => \N__2228\,
            I => \N__2191\
        );

    \I__425\ : InMux
    port map (
            O => \N__2227\,
            I => \N__2191\
        );

    \I__424\ : InMux
    port map (
            O => \N__2226\,
            I => \N__2191\
        );

    \I__423\ : InMux
    port map (
            O => \N__2225\,
            I => \N__2191\
        );

    \I__422\ : InMux
    port map (
            O => \N__2224\,
            I => \N__2191\
        );

    \I__421\ : LocalMux
    port map (
            O => \N__2221\,
            I => \tli.state_0\
        );

    \I__420\ : Odrv4
    port map (
            O => \N__2218\,
            I => \tli.state_0\
        );

    \I__419\ : LocalMux
    port map (
            O => \N__2215\,
            I => \tli.state_0\
        );

    \I__418\ : LocalMux
    port map (
            O => \N__2212\,
            I => \tli.state_0\
        );

    \I__417\ : LocalMux
    port map (
            O => \N__2207\,
            I => \tli.state_0\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__2202\,
            I => \tli.state_0\
        );

    \I__415\ : LocalMux
    port map (
            O => \N__2191\,
            I => \tli.state_0\
        );

    \I__414\ : CascadeMux
    port map (
            O => \N__2176\,
            I => \N__2172\
        );

    \I__413\ : InMux
    port map (
            O => \N__2175\,
            I => \N__2169\
        );

    \I__412\ : InMux
    port map (
            O => \N__2172\,
            I => \N__2166\
        );

    \I__411\ : LocalMux
    port map (
            O => \N__2169\,
            I => \tli.clk_out\
        );

    \I__410\ : LocalMux
    port map (
            O => \N__2166\,
            I => \tli.clk_out\
        );

    \I__409\ : SRMux
    port map (
            O => \N__2161\,
            I => \N__2158\
        );

    \I__408\ : LocalMux
    port map (
            O => \N__2158\,
            I => \tli.n852\
        );

    \I__407\ : CEMux
    port map (
            O => \N__2155\,
            I => \N__2151\
        );

    \I__406\ : CEMux
    port map (
            O => \N__2154\,
            I => \N__2148\
        );

    \I__405\ : LocalMux
    port map (
            O => \N__2151\,
            I => \N__2142\
        );

    \I__404\ : LocalMux
    port map (
            O => \N__2148\,
            I => \N__2142\
        );

    \I__403\ : CEMux
    port map (
            O => \N__2147\,
            I => \N__2139\
        );

    \I__402\ : Span4Mux_v
    port map (
            O => \N__2142\,
            I => \N__2136\
        );

    \I__401\ : LocalMux
    port map (
            O => \N__2139\,
            I => \N__2133\
        );

    \I__400\ : Odrv4
    port map (
            O => \N__2136\,
            I => \tli.n839\
        );

    \I__399\ : Odrv4
    port map (
            O => \N__2133\,
            I => \tli.n839\
        );

    \I__398\ : InMux
    port map (
            O => \N__2128\,
            I => \N__2123\
        );

    \I__397\ : InMux
    port map (
            O => \N__2127\,
            I => \N__2118\
        );

    \I__396\ : InMux
    port map (
            O => \N__2126\,
            I => \N__2118\
        );

    \I__395\ : LocalMux
    port map (
            O => \N__2123\,
            I => \tli.n569\
        );

    \I__394\ : LocalMux
    port map (
            O => \N__2118\,
            I => \tli.n569\
        );

    \I__393\ : InMux
    port map (
            O => \N__2113\,
            I => \N__2109\
        );

    \I__392\ : InMux
    port map (
            O => \N__2112\,
            I => \N__2106\
        );

    \I__391\ : LocalMux
    port map (
            O => \N__2109\,
            I => \tli.delay_counter_2\
        );

    \I__390\ : LocalMux
    port map (
            O => \N__2106\,
            I => \tli.delay_counter_2\
        );

    \I__389\ : InMux
    port map (
            O => \N__2101\,
            I => \N__2097\
        );

    \I__388\ : InMux
    port map (
            O => \N__2100\,
            I => \N__2094\
        );

    \I__387\ : LocalMux
    port map (
            O => \N__2097\,
            I => \tli.delay_counter_1\
        );

    \I__386\ : LocalMux
    port map (
            O => \N__2094\,
            I => \tli.delay_counter_1\
        );

    \I__385\ : CascadeMux
    port map (
            O => \N__2089\,
            I => \N__2086\
        );

    \I__384\ : InMux
    port map (
            O => \N__2086\,
            I => \N__2082\
        );

    \I__383\ : InMux
    port map (
            O => \N__2085\,
            I => \N__2079\
        );

    \I__382\ : LocalMux
    port map (
            O => \N__2082\,
            I => \tli.delay_counter_3\
        );

    \I__381\ : LocalMux
    port map (
            O => \N__2079\,
            I => \tli.delay_counter_3\
        );

    \I__380\ : InMux
    port map (
            O => \N__2074\,
            I => \N__2070\
        );

    \I__379\ : InMux
    port map (
            O => \N__2073\,
            I => \N__2067\
        );

    \I__378\ : LocalMux
    port map (
            O => \N__2070\,
            I => \tli.delay_counter_0\
        );

    \I__377\ : LocalMux
    port map (
            O => \N__2067\,
            I => \tli.delay_counter_0\
        );

    \I__376\ : InMux
    port map (
            O => \N__2062\,
            I => \N__2058\
        );

    \I__375\ : InMux
    port map (
            O => \N__2061\,
            I => \N__2055\
        );

    \I__374\ : LocalMux
    port map (
            O => \N__2058\,
            I => \tli.delay_counter_7\
        );

    \I__373\ : LocalMux
    port map (
            O => \N__2055\,
            I => \tli.delay_counter_7\
        );

    \I__372\ : CascadeMux
    port map (
            O => \N__2050\,
            I => \tli.n978_cascade_\
        );

    \I__371\ : InMux
    port map (
            O => \N__2047\,
            I => \N__2043\
        );

    \I__370\ : InMux
    port map (
            O => \N__2046\,
            I => \N__2040\
        );

    \I__369\ : LocalMux
    port map (
            O => \N__2043\,
            I => \tli.delay_counter_4\
        );

    \I__368\ : LocalMux
    port map (
            O => \N__2040\,
            I => \tli.delay_counter_4\
        );

    \I__367\ : CEMux
    port map (
            O => \N__2035\,
            I => \N__2032\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__2032\,
            I => \N__2029\
        );

    \I__365\ : Odrv12
    port map (
            O => \N__2029\,
            I => \tli.n833\
        );

    \I__364\ : InMux
    port map (
            O => \N__2026\,
            I => \N__2022\
        );

    \I__363\ : InMux
    port map (
            O => \N__2025\,
            I => \N__2019\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__2022\,
            I => \tli.delay_counter_5\
        );

    \I__361\ : LocalMux
    port map (
            O => \N__2019\,
            I => \tli.delay_counter_5\
        );

    \I__360\ : InMux
    port map (
            O => \N__2014\,
            I => \N__2010\
        );

    \I__359\ : InMux
    port map (
            O => \N__2013\,
            I => \N__2007\
        );

    \I__358\ : LocalMux
    port map (
            O => \N__2010\,
            I => \tli.delay_counter_6\
        );

    \I__357\ : LocalMux
    port map (
            O => \N__2007\,
            I => \tli.delay_counter_6\
        );

    \I__356\ : InMux
    port map (
            O => \N__2002\,
            I => \N__1999\
        );

    \I__355\ : LocalMux
    port map (
            O => \N__1999\,
            I => \tli.n6\
        );

    \I__354\ : SRMux
    port map (
            O => \N__1996\,
            I => \N__1993\
        );

    \I__353\ : LocalMux
    port map (
            O => \N__1993\,
            I => \N__1990\
        );

    \I__352\ : Span4Mux_h
    port map (
            O => \N__1990\,
            I => \N__1987\
        );

    \I__351\ : Odrv4
    port map (
            O => \N__1987\,
            I => \tli.n850\
        );

    \I__350\ : InMux
    port map (
            O => \N__1984\,
            I => \tli.n912\
        );

    \I__349\ : InMux
    port map (
            O => \N__1981\,
            I => \tli.n913\
        );

    \I__348\ : InMux
    port map (
            O => \N__1978\,
            I => \tli.n914\
        );

    \I__347\ : InMux
    port map (
            O => \N__1975\,
            I => \tli.n915\
        );

    \I__346\ : InMux
    port map (
            O => \N__1972\,
            I => \N__1969\
        );

    \I__345\ : LocalMux
    port map (
            O => \N__1969\,
            I => \N__1966\
        );

    \I__344\ : Odrv4
    port map (
            O => \N__1966\,
            I => \tli.n985\
        );

    \I__343\ : InMux
    port map (
            O => \N__1963\,
            I => \N__1960\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__1960\,
            I => \tli.n984\
        );

    \I__341\ : InMux
    port map (
            O => \N__1957\,
            I => \N__1953\
        );

    \I__340\ : InMux
    port map (
            O => \N__1956\,
            I => \N__1950\
        );

    \I__339\ : LocalMux
    port map (
            O => \N__1953\,
            I => \tli.bit_counter_1\
        );

    \I__338\ : LocalMux
    port map (
            O => \N__1950\,
            I => \tli.bit_counter_1\
        );

    \I__337\ : InMux
    port map (
            O => \N__1945\,
            I => \N__1941\
        );

    \I__336\ : InMux
    port map (
            O => \N__1944\,
            I => \N__1938\
        );

    \I__335\ : LocalMux
    port map (
            O => \N__1941\,
            I => \tli.bit_counter_2\
        );

    \I__334\ : LocalMux
    port map (
            O => \N__1938\,
            I => \tli.bit_counter_2\
        );

    \I__333\ : InMux
    port map (
            O => \N__1933\,
            I => \N__1930\
        );

    \I__332\ : LocalMux
    port map (
            O => \N__1930\,
            I => \tli.n14\
        );

    \I__331\ : CascadeMux
    port map (
            O => \N__1927\,
            I => \N__1923\
        );

    \I__330\ : InMux
    port map (
            O => \N__1926\,
            I => \N__1920\
        );

    \I__329\ : InMux
    port map (
            O => \N__1923\,
            I => \N__1917\
        );

    \I__328\ : LocalMux
    port map (
            O => \N__1920\,
            I => \tli.bit_counter_3\
        );

    \I__327\ : LocalMux
    port map (
            O => \N__1917\,
            I => \tli.bit_counter_3\
        );

    \I__326\ : CascadeMux
    port map (
            O => \N__1912\,
            I => \N__1909\
        );

    \I__325\ : InMux
    port map (
            O => \N__1909\,
            I => \N__1905\
        );

    \I__324\ : InMux
    port map (
            O => \N__1908\,
            I => \N__1902\
        );

    \I__323\ : LocalMux
    port map (
            O => \N__1905\,
            I => \tli.bit_counter_0\
        );

    \I__322\ : LocalMux
    port map (
            O => \N__1902\,
            I => \tli.bit_counter_0\
        );

    \I__321\ : InMux
    port map (
            O => \N__1897\,
            I => \N__1894\
        );

    \I__320\ : LocalMux
    port map (
            O => \N__1894\,
            I => \tli.n10\
        );

    \I__319\ : CascadeMux
    port map (
            O => \N__1891\,
            I => \tli.n15_cascade_\
        );

    \I__318\ : InMux
    port map (
            O => \N__1888\,
            I => \tli.n903\
        );

    \I__317\ : InMux
    port map (
            O => \N__1885\,
            I => \tli.n904\
        );

    \I__316\ : InMux
    port map (
            O => \N__1882\,
            I => \tli.n905\
        );

    \I__315\ : InMux
    port map (
            O => \N__1879\,
            I => \tli.n906\
        );

    \I__314\ : InMux
    port map (
            O => \N__1876\,
            I => \tli.n907\
        );

    \I__313\ : InMux
    port map (
            O => \N__1873\,
            I => \tli.n908\
        );

    \I__312\ : InMux
    port map (
            O => \N__1870\,
            I => \tli.n909\
        );

    \I__311\ : InMux
    port map (
            O => \N__1867\,
            I => \bfn_15_20_0_\
        );

    \I__310\ : InMux
    port map (
            O => \N__1864\,
            I => \tli.n911\
        );

    \I__309\ : InMux
    port map (
            O => \N__1861\,
            I => \tli.n895\
        );

    \I__308\ : InMux
    port map (
            O => \N__1858\,
            I => \tli.n896\
        );

    \I__307\ : InMux
    port map (
            O => \N__1855\,
            I => \tli.n897\
        );

    \I__306\ : CascadeMux
    port map (
            O => \N__1852\,
            I => \N__1845\
        );

    \I__305\ : CascadeMux
    port map (
            O => \N__1851\,
            I => \N__1842\
        );

    \I__304\ : CascadeMux
    port map (
            O => \N__1850\,
            I => \N__1838\
        );

    \I__303\ : CascadeMux
    port map (
            O => \N__1849\,
            I => \N__1834\
        );

    \I__302\ : CascadeMux
    port map (
            O => \N__1848\,
            I => \N__1831\
        );

    \I__301\ : InMux
    port map (
            O => \N__1845\,
            I => \N__1826\
        );

    \I__300\ : InMux
    port map (
            O => \N__1842\,
            I => \N__1826\
        );

    \I__299\ : InMux
    port map (
            O => \N__1841\,
            I => \N__1815\
        );

    \I__298\ : InMux
    port map (
            O => \N__1838\,
            I => \N__1815\
        );

    \I__297\ : InMux
    port map (
            O => \N__1837\,
            I => \N__1815\
        );

    \I__296\ : InMux
    port map (
            O => \N__1834\,
            I => \N__1815\
        );

    \I__295\ : InMux
    port map (
            O => \N__1831\,
            I => \N__1815\
        );

    \I__294\ : LocalMux
    port map (
            O => \N__1826\,
            I => \CONSTANT_ONE_NET\
        );

    \I__293\ : LocalMux
    port map (
            O => \N__1815\,
            I => \CONSTANT_ONE_NET\
        );

    \I__292\ : InMux
    port map (
            O => \N__1810\,
            I => \tli.n898\
        );

    \I__291\ : InMux
    port map (
            O => \N__1807\,
            I => \N__1803\
        );

    \I__290\ : InMux
    port map (
            O => \N__1806\,
            I => \N__1800\
        );

    \I__289\ : LocalMux
    port map (
            O => \N__1803\,
            I => \tli.bit_counter_7\
        );

    \I__288\ : LocalMux
    port map (
            O => \N__1800\,
            I => \tli.bit_counter_7\
        );

    \I__287\ : InMux
    port map (
            O => \N__1795\,
            I => \N__1791\
        );

    \I__286\ : InMux
    port map (
            O => \N__1794\,
            I => \N__1788\
        );

    \I__285\ : LocalMux
    port map (
            O => \N__1791\,
            I => \tli.bit_counter_5\
        );

    \I__284\ : LocalMux
    port map (
            O => \N__1788\,
            I => \tli.bit_counter_5\
        );

    \I__283\ : CascadeMux
    port map (
            O => \N__1783\,
            I => \N__1780\
        );

    \I__282\ : InMux
    port map (
            O => \N__1780\,
            I => \N__1776\
        );

    \I__281\ : InMux
    port map (
            O => \N__1779\,
            I => \N__1773\
        );

    \I__280\ : LocalMux
    port map (
            O => \N__1776\,
            I => \tli.bit_counter_4\
        );

    \I__279\ : LocalMux
    port map (
            O => \N__1773\,
            I => \tli.bit_counter_4\
        );

    \I__278\ : InMux
    port map (
            O => \N__1768\,
            I => \N__1764\
        );

    \I__277\ : InMux
    port map (
            O => \N__1767\,
            I => \N__1761\
        );

    \I__276\ : LocalMux
    port map (
            O => \N__1764\,
            I => \tli.bit_counter_6\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1761\,
            I => \tli.bit_counter_6\
        );

    \I__274\ : InMux
    port map (
            O => \N__1756\,
            I => \N__1753\
        );

    \I__273\ : LocalMux
    port map (
            O => \N__1753\,
            I => \tli.n45\
        );

    \I__272\ : InMux
    port map (
            O => \N__1750\,
            I => \N__1747\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1747\,
            I => \tli.n986\
        );

    \I__270\ : InMux
    port map (
            O => \N__1744\,
            I => \bfn_15_19_0_\
        );

    \I__269\ : InMux
    port map (
            O => \N__1741\,
            I => \tli.n902\
        );

    \I__268\ : InMux
    port map (
            O => \N__1738\,
            I => \N__1734\
        );

    \I__267\ : InMux
    port map (
            O => \N__1737\,
            I => \N__1731\
        );

    \I__266\ : LocalMux
    port map (
            O => \N__1734\,
            I => \tli.counter_1\
        );

    \I__265\ : LocalMux
    port map (
            O => \N__1731\,
            I => \tli.counter_1\
        );

    \I__264\ : InMux
    port map (
            O => \N__1726\,
            I => \N__1722\
        );

    \I__263\ : InMux
    port map (
            O => \N__1725\,
            I => \N__1719\
        );

    \I__262\ : LocalMux
    port map (
            O => \N__1722\,
            I => \tli.counter_2\
        );

    \I__261\ : LocalMux
    port map (
            O => \N__1719\,
            I => \tli.counter_2\
        );

    \I__260\ : InMux
    port map (
            O => \N__1714\,
            I => \N__1710\
        );

    \I__259\ : InMux
    port map (
            O => \N__1713\,
            I => \N__1707\
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1710\,
            I => \tli.counter_3\
        );

    \I__257\ : LocalMux
    port map (
            O => \N__1707\,
            I => \tli.counter_3\
        );

    \I__256\ : InMux
    port map (
            O => \N__1702\,
            I => \N__1698\
        );

    \I__255\ : InMux
    port map (
            O => \N__1701\,
            I => \N__1695\
        );

    \I__254\ : LocalMux
    port map (
            O => \N__1698\,
            I => \tli.counter_4\
        );

    \I__253\ : LocalMux
    port map (
            O => \N__1695\,
            I => \tli.counter_4\
        );

    \I__252\ : CascadeMux
    port map (
            O => \N__1690\,
            I => \tli.n6_adj_237_cascade_\
        );

    \I__251\ : InMux
    port map (
            O => \N__1687\,
            I => \N__1683\
        );

    \I__250\ : InMux
    port map (
            O => \N__1686\,
            I => \N__1680\
        );

    \I__249\ : LocalMux
    port map (
            O => \N__1683\,
            I => \tli.counter_0\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1680\,
            I => \tli.counter_0\
        );

    \I__247\ : SRMux
    port map (
            O => \N__1675\,
            I => \N__1672\
        );

    \I__246\ : LocalMux
    port map (
            O => \N__1672\,
            I => \tli.clk_slow_N_43\
        );

    \I__245\ : CascadeMux
    port map (
            O => \N__1669\,
            I => \tli.clk_slow_N_43_cascade_\
        );

    \I__244\ : ClkMux
    port map (
            O => \N__1666\,
            I => \N__1648\
        );

    \I__243\ : ClkMux
    port map (
            O => \N__1665\,
            I => \N__1648\
        );

    \I__242\ : ClkMux
    port map (
            O => \N__1664\,
            I => \N__1648\
        );

    \I__241\ : ClkMux
    port map (
            O => \N__1663\,
            I => \N__1648\
        );

    \I__240\ : ClkMux
    port map (
            O => \N__1662\,
            I => \N__1648\
        );

    \I__239\ : ClkMux
    port map (
            O => \N__1661\,
            I => \N__1648\
        );

    \I__238\ : GlobalMux
    port map (
            O => \N__1648\,
            I => \N__1645\
        );

    \I__237\ : gio2CtrlBuf
    port map (
            O => \N__1645\,
            I => \CLK_c\
        );

    \I__236\ : InMux
    port map (
            O => \N__1642\,
            I => \bfn_15_17_0_\
        );

    \I__235\ : InMux
    port map (
            O => \N__1639\,
            I => \tli.n892\
        );

    \I__234\ : InMux
    port map (
            O => \N__1636\,
            I => \tli.n893\
        );

    \I__233\ : InMux
    port map (
            O => \N__1633\,
            I => \tli.n894\
        );

    \I__232\ : CascadeMux
    port map (
            O => \N__1630\,
            I => \N__1627\
        );

    \I__231\ : InMux
    port map (
            O => \N__1627\,
            I => \N__1620\
        );

    \I__230\ : InMux
    port map (
            O => \N__1626\,
            I => \N__1620\
        );

    \I__229\ : InMux
    port map (
            O => \N__1625\,
            I => \N__1617\
        );

    \I__228\ : LocalMux
    port map (
            O => \N__1620\,
            I => blink_counter_21
        );

    \I__227\ : LocalMux
    port map (
            O => \N__1617\,
            I => blink_counter_21
        );

    \I__226\ : InMux
    port map (
            O => \N__1612\,
            I => n936
        );

    \I__225\ : InMux
    port map (
            O => \N__1609\,
            I => \N__1602\
        );

    \I__224\ : InMux
    port map (
            O => \N__1608\,
            I => \N__1602\
        );

    \I__223\ : InMux
    port map (
            O => \N__1607\,
            I => \N__1599\
        );

    \I__222\ : LocalMux
    port map (
            O => \N__1602\,
            I => blink_counter_22
        );

    \I__221\ : LocalMux
    port map (
            O => \N__1599\,
            I => blink_counter_22
        );

    \I__220\ : InMux
    port map (
            O => \N__1594\,
            I => n937
        );

    \I__219\ : CascadeMux
    port map (
            O => \N__1591\,
            I => \N__1587\
        );

    \I__218\ : InMux
    port map (
            O => \N__1590\,
            I => \N__1581\
        );

    \I__217\ : InMux
    port map (
            O => \N__1587\,
            I => \N__1581\
        );

    \I__216\ : InMux
    port map (
            O => \N__1586\,
            I => \N__1578\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__1581\,
            I => blink_counter_23
        );

    \I__214\ : LocalMux
    port map (
            O => \N__1578\,
            I => blink_counter_23
        );

    \I__213\ : InMux
    port map (
            O => \N__1573\,
            I => n938
        );

    \I__212\ : InMux
    port map (
            O => \N__1570\,
            I => \N__1563\
        );

    \I__211\ : InMux
    port map (
            O => \N__1569\,
            I => \N__1563\
        );

    \I__210\ : InMux
    port map (
            O => \N__1568\,
            I => \N__1560\
        );

    \I__209\ : LocalMux
    port map (
            O => \N__1563\,
            I => blink_counter_24
        );

    \I__208\ : LocalMux
    port map (
            O => \N__1560\,
            I => blink_counter_24
        );

    \I__207\ : InMux
    port map (
            O => \N__1555\,
            I => \bfn_13_20_0_\
        );

    \I__206\ : InMux
    port map (
            O => \N__1552\,
            I => n940
        );

    \I__205\ : InMux
    port map (
            O => \N__1549\,
            I => \N__1545\
        );

    \I__204\ : InMux
    port map (
            O => \N__1548\,
            I => \N__1542\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__1545\,
            I => blink_counter_25
        );

    \I__202\ : LocalMux
    port map (
            O => \N__1542\,
            I => blink_counter_25
        );

    \I__201\ : InMux
    port map (
            O => \N__1537\,
            I => \bfn_14_16_0_\
        );

    \I__200\ : InMux
    port map (
            O => \N__1534\,
            I => \tli.n899\
        );

    \I__199\ : InMux
    port map (
            O => \N__1531\,
            I => \tli.n900\
        );

    \I__198\ : InMux
    port map (
            O => \N__1528\,
            I => \tli.n901\
        );

    \I__197\ : InMux
    port map (
            O => \N__1525\,
            I => \N__1522\
        );

    \I__196\ : LocalMux
    port map (
            O => \N__1522\,
            I => n13
        );

    \I__195\ : InMux
    port map (
            O => \N__1519\,
            I => n928
        );

    \I__194\ : InMux
    port map (
            O => \N__1516\,
            I => \N__1513\
        );

    \I__193\ : LocalMux
    port map (
            O => \N__1513\,
            I => n12
        );

    \I__192\ : InMux
    port map (
            O => \N__1510\,
            I => n929
        );

    \I__191\ : InMux
    port map (
            O => \N__1507\,
            I => \N__1504\
        );

    \I__190\ : LocalMux
    port map (
            O => \N__1504\,
            I => n11
        );

    \I__189\ : InMux
    port map (
            O => \N__1501\,
            I => n930
        );

    \I__188\ : InMux
    port map (
            O => \N__1498\,
            I => \N__1495\
        );

    \I__187\ : LocalMux
    port map (
            O => \N__1495\,
            I => n10
        );

    \I__186\ : InMux
    port map (
            O => \N__1492\,
            I => \bfn_13_19_0_\
        );

    \I__185\ : InMux
    port map (
            O => \N__1489\,
            I => \N__1486\
        );

    \I__184\ : LocalMux
    port map (
            O => \N__1486\,
            I => n9
        );

    \I__183\ : InMux
    port map (
            O => \N__1483\,
            I => n932
        );

    \I__182\ : InMux
    port map (
            O => \N__1480\,
            I => \N__1477\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__1477\,
            I => n8
        );

    \I__180\ : InMux
    port map (
            O => \N__1474\,
            I => n933
        );

    \I__179\ : InMux
    port map (
            O => \N__1471\,
            I => \N__1468\
        );

    \I__178\ : LocalMux
    port map (
            O => \N__1468\,
            I => n7
        );

    \I__177\ : InMux
    port map (
            O => \N__1465\,
            I => n934
        );

    \I__176\ : InMux
    port map (
            O => \N__1462\,
            I => \N__1459\
        );

    \I__175\ : LocalMux
    port map (
            O => \N__1459\,
            I => n6
        );

    \I__174\ : InMux
    port map (
            O => \N__1456\,
            I => n935
        );

    \I__173\ : InMux
    port map (
            O => \N__1453\,
            I => n919
        );

    \I__172\ : InMux
    port map (
            O => \N__1450\,
            I => \N__1447\
        );

    \I__171\ : LocalMux
    port map (
            O => \N__1447\,
            I => n21
        );

    \I__170\ : InMux
    port map (
            O => \N__1444\,
            I => n920
        );

    \I__169\ : InMux
    port map (
            O => \N__1441\,
            I => \N__1438\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__1438\,
            I => n20
        );

    \I__167\ : InMux
    port map (
            O => \N__1435\,
            I => n921
        );

    \I__166\ : InMux
    port map (
            O => \N__1432\,
            I => \N__1429\
        );

    \I__165\ : LocalMux
    port map (
            O => \N__1429\,
            I => n19
        );

    \I__164\ : InMux
    port map (
            O => \N__1426\,
            I => n922
        );

    \I__163\ : InMux
    port map (
            O => \N__1423\,
            I => \N__1420\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__1420\,
            I => n18
        );

    \I__161\ : InMux
    port map (
            O => \N__1417\,
            I => \bfn_13_18_0_\
        );

    \I__160\ : InMux
    port map (
            O => \N__1414\,
            I => \N__1411\
        );

    \I__159\ : LocalMux
    port map (
            O => \N__1411\,
            I => n17
        );

    \I__158\ : InMux
    port map (
            O => \N__1408\,
            I => n924
        );

    \I__157\ : InMux
    port map (
            O => \N__1405\,
            I => \N__1402\
        );

    \I__156\ : LocalMux
    port map (
            O => \N__1402\,
            I => n16
        );

    \I__155\ : InMux
    port map (
            O => \N__1399\,
            I => n925
        );

    \I__154\ : InMux
    port map (
            O => \N__1396\,
            I => \N__1393\
        );

    \I__153\ : LocalMux
    port map (
            O => \N__1393\,
            I => n15
        );

    \I__152\ : InMux
    port map (
            O => \N__1390\,
            I => n926
        );

    \I__151\ : InMux
    port map (
            O => \N__1387\,
            I => \N__1384\
        );

    \I__150\ : LocalMux
    port map (
            O => \N__1384\,
            I => n14
        );

    \I__149\ : InMux
    port map (
            O => \N__1381\,
            I => n927
        );

    \I__148\ : InMux
    port map (
            O => \N__1378\,
            I => \N__1375\
        );

    \I__147\ : LocalMux
    port map (
            O => \N__1375\,
            I => n979
        );

    \I__146\ : InMux
    port map (
            O => \N__1372\,
            I => \N__1369\
        );

    \I__145\ : LocalMux
    port map (
            O => \N__1369\,
            I => n980
        );

    \I__144\ : IoInMux
    port map (
            O => \N__1366\,
            I => \N__1363\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__1363\,
            I => \N__1360\
        );

    \I__142\ : Span4Mux_s2_v
    port map (
            O => \N__1360\,
            I => \N__1357\
        );

    \I__141\ : Sp12to4
    port map (
            O => \N__1357\,
            I => \N__1354\
        );

    \I__140\ : Span12Mux_s11_h
    port map (
            O => \N__1354\,
            I => \N__1351\
        );

    \I__139\ : Odrv12
    port map (
            O => \N__1351\,
            I => \LED_c\
        );

    \I__138\ : InMux
    port map (
            O => \N__1348\,
            I => \N__1345\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__1345\,
            I => n26
        );

    \I__136\ : InMux
    port map (
            O => \N__1342\,
            I => \bfn_13_17_0_\
        );

    \I__135\ : InMux
    port map (
            O => \N__1339\,
            I => \N__1336\
        );

    \I__134\ : LocalMux
    port map (
            O => \N__1336\,
            I => n25
        );

    \I__133\ : InMux
    port map (
            O => \N__1333\,
            I => n916
        );

    \I__132\ : InMux
    port map (
            O => \N__1330\,
            I => \N__1327\
        );

    \I__131\ : LocalMux
    port map (
            O => \N__1327\,
            I => n24
        );

    \I__130\ : InMux
    port map (
            O => \N__1324\,
            I => n917
        );

    \I__129\ : InMux
    port map (
            O => \N__1321\,
            I => \N__1318\
        );

    \I__128\ : LocalMux
    port map (
            O => \N__1318\,
            I => n23
        );

    \I__127\ : InMux
    port map (
            O => \N__1315\,
            I => n918
        );

    \I__126\ : InMux
    port map (
            O => \N__1312\,
            I => \N__1309\
        );

    \I__125\ : LocalMux
    port map (
            O => \N__1309\,
            I => n22
        );

    \I__124\ : IoInMux
    port map (
            O => \N__1306\,
            I => \N__1303\
        );

    \I__123\ : LocalMux
    port map (
            O => \N__1303\,
            I => \N__1300\
        );

    \I__122\ : IoSpan4Mux
    port map (
            O => \N__1300\,
            I => \N__1297\
        );

    \I__121\ : IoSpan4Mux
    port map (
            O => \N__1297\,
            I => \N__1294\
        );

    \I__120\ : IoSpan4Mux
    port map (
            O => \N__1294\,
            I => \N__1291\
        );

    \I__119\ : Odrv4
    port map (
            O => \N__1291\,
            I => \CLK_pad_gb_input\
        );

    \INVtli.clk_out_66C\ : INV
    port map (
            O => \INVtli.clk_out_66C_net\,
            I => \N__2457\
        );

    \INVtli.slave_select_65C\ : INV
    port map (
            O => \INVtli.slave_select_65C_net\,
            I => \N__2462\
        );

    \INVtli.state_i0C\ : INV
    port map (
            O => \INVtli.state_i0C_net\,
            I => \N__2456\
        );

    \INVtli.bit_counter_134__i2C\ : INV
    port map (
            O => \INVtli.bit_counter_134__i2C_net\,
            I => \N__2461\
        );

    \INVtli.delay_counter_132_133__i9C\ : INV
    port map (
            O => \INVtli.delay_counter_132_133__i9C_net\,
            I => \N__2446\
        );

    \INVtli.delay_counter_132_133__i1C\ : INV
    port map (
            O => \INVtli.delay_counter_132_133__i1C_net\,
            I => \N__2464\
        );

    \INVtli.bit_counter_134__i0C\ : INV
    port map (
            O => \INVtli.bit_counter_134__i0C_net\,
            I => \N__2442\
        );

    \INVtli.bit_counter_134__i4C\ : INV
    port map (
            O => \INVtli.bit_counter_134__i4C_net\,
            I => \N__2419\
        );

    \IN_MUX_bfv_15_19_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_15_19_0_\
        );

    \IN_MUX_bfv_15_20_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \tli.n910\,
            carryinitout => \bfn_15_20_0_\
        );

    \IN_MUX_bfv_14_16_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_14_16_0_\
        );

    \IN_MUX_bfv_15_17_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_15_17_0_\
        );

    \IN_MUX_bfv_13_17_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_13_17_0_\
        );

    \IN_MUX_bfv_13_18_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n923,
            carryinitout => \bfn_13_18_0_\
        );

    \IN_MUX_bfv_13_19_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n931,
            carryinitout => \bfn_13_19_0_\
        );

    \IN_MUX_bfv_13_20_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n939,
            carryinitout => \bfn_13_20_0_\
        );

    \CLK_pad_gb\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__1306\,
            GLOBALBUFFEROUTPUT => \CLK_c\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \i323_4_lut_LC_12_19_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1011101100100000"
        )
    port map (
            in0 => \N__1608\,
            in1 => \N__1569\,
            in2 => \N__1591\,
            in3 => \N__1626\,
            lcout => n979,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i324_4_lut_LC_12_19_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111100011101100"
        )
    port map (
            in0 => \N__1570\,
            in1 => \N__1590\,
            in2 => \N__1630\,
            in3 => \N__1609\,
            lcout => n980,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i325_3_lut_LC_12_20_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001101010101"
        )
    port map (
            in0 => \N__1378\,
            in1 => \N__1372\,
            in2 => \_gnd_net_\,
            in3 => \N__1549\,
            lcout => \LED_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i0_LC_13_17_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1348\,
            in2 => \_gnd_net_\,
            in3 => \N__1342\,
            lcout => n26,
            ltout => OPEN,
            carryin => \bfn_13_17_0_\,
            carryout => n916,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i1_LC_13_17_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1339\,
            in2 => \_gnd_net_\,
            in3 => \N__1333\,
            lcout => n25,
            ltout => OPEN,
            carryin => n916,
            carryout => n917,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i2_LC_13_17_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1330\,
            in2 => \_gnd_net_\,
            in3 => \N__1324\,
            lcout => n24,
            ltout => OPEN,
            carryin => n917,
            carryout => n918,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i3_LC_13_17_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1321\,
            in2 => \_gnd_net_\,
            in3 => \N__1315\,
            lcout => n23,
            ltout => OPEN,
            carryin => n918,
            carryout => n919,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i4_LC_13_17_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1312\,
            in2 => \_gnd_net_\,
            in3 => \N__1453\,
            lcout => n22,
            ltout => OPEN,
            carryin => n919,
            carryout => n920,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i5_LC_13_17_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1450\,
            in2 => \_gnd_net_\,
            in3 => \N__1444\,
            lcout => n21,
            ltout => OPEN,
            carryin => n920,
            carryout => n921,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i6_LC_13_17_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1441\,
            in2 => \_gnd_net_\,
            in3 => \N__1435\,
            lcout => n20,
            ltout => OPEN,
            carryin => n921,
            carryout => n922,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i7_LC_13_17_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1432\,
            in2 => \_gnd_net_\,
            in3 => \N__1426\,
            lcout => n19,
            ltout => OPEN,
            carryin => n922,
            carryout => n923,
            clk => \N__1661\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i8_LC_13_18_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1423\,
            in2 => \_gnd_net_\,
            in3 => \N__1417\,
            lcout => n18,
            ltout => OPEN,
            carryin => \bfn_13_18_0_\,
            carryout => n924,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i9_LC_13_18_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1414\,
            in2 => \_gnd_net_\,
            in3 => \N__1408\,
            lcout => n17,
            ltout => OPEN,
            carryin => n924,
            carryout => n925,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i10_LC_13_18_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1405\,
            in2 => \_gnd_net_\,
            in3 => \N__1399\,
            lcout => n16,
            ltout => OPEN,
            carryin => n925,
            carryout => n926,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i11_LC_13_18_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1396\,
            in2 => \_gnd_net_\,
            in3 => \N__1390\,
            lcout => n15,
            ltout => OPEN,
            carryin => n926,
            carryout => n927,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i12_LC_13_18_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1387\,
            in2 => \_gnd_net_\,
            in3 => \N__1381\,
            lcout => n14,
            ltout => OPEN,
            carryin => n927,
            carryout => n928,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i13_LC_13_18_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1525\,
            in2 => \_gnd_net_\,
            in3 => \N__1519\,
            lcout => n13,
            ltout => OPEN,
            carryin => n928,
            carryout => n929,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i14_LC_13_18_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1516\,
            in2 => \_gnd_net_\,
            in3 => \N__1510\,
            lcout => n12,
            ltout => OPEN,
            carryin => n929,
            carryout => n930,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i15_LC_13_18_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1507\,
            in2 => \_gnd_net_\,
            in3 => \N__1501\,
            lcout => n11,
            ltout => OPEN,
            carryin => n930,
            carryout => n931,
            clk => \N__1662\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i16_LC_13_19_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1498\,
            in2 => \_gnd_net_\,
            in3 => \N__1492\,
            lcout => n10,
            ltout => OPEN,
            carryin => \bfn_13_19_0_\,
            carryout => n932,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i17_LC_13_19_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1489\,
            in2 => \_gnd_net_\,
            in3 => \N__1483\,
            lcout => n9,
            ltout => OPEN,
            carryin => n932,
            carryout => n933,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i18_LC_13_19_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1480\,
            in2 => \_gnd_net_\,
            in3 => \N__1474\,
            lcout => n8,
            ltout => OPEN,
            carryin => n933,
            carryout => n934,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i19_LC_13_19_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1471\,
            in2 => \_gnd_net_\,
            in3 => \N__1465\,
            lcout => n7,
            ltout => OPEN,
            carryin => n934,
            carryout => n935,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i20_LC_13_19_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1462\,
            in2 => \_gnd_net_\,
            in3 => \N__1456\,
            lcout => n6,
            ltout => OPEN,
            carryin => n935,
            carryout => n936,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i21_LC_13_19_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1625\,
            in2 => \_gnd_net_\,
            in3 => \N__1612\,
            lcout => blink_counter_21,
            ltout => OPEN,
            carryin => n936,
            carryout => n937,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i22_LC_13_19_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1607\,
            in2 => \_gnd_net_\,
            in3 => \N__1594\,
            lcout => blink_counter_22,
            ltout => OPEN,
            carryin => n937,
            carryout => n938,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i23_LC_13_19_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1586\,
            in2 => \_gnd_net_\,
            in3 => \N__1573\,
            lcout => blink_counter_23,
            ltout => OPEN,
            carryin => n938,
            carryout => n939,
            clk => \N__1663\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i24_LC_13_20_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1568\,
            in2 => \_gnd_net_\,
            in3 => \N__1555\,
            lcout => blink_counter_24,
            ltout => OPEN,
            carryin => \bfn_13_20_0_\,
            carryout => n940,
            clk => \N__1665\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_131__i25_LC_13_20_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1548\,
            in2 => \_gnd_net_\,
            in3 => \N__1552\,
            lcout => blink_counter_25,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1665\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.counter_135_136__i1_LC_14_16_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1686\,
            in2 => \_gnd_net_\,
            in3 => \N__1537\,
            lcout => \tli.counter_0\,
            ltout => OPEN,
            carryin => \bfn_14_16_0_\,
            carryout => \tli.n899\,
            clk => \N__1664\,
            ce => 'H',
            sr => \N__1675\
        );

    \tli.counter_135_136__i2_LC_14_16_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1738\,
            in2 => \_gnd_net_\,
            in3 => \N__1534\,
            lcout => \tli.counter_1\,
            ltout => OPEN,
            carryin => \tli.n899\,
            carryout => \tli.n900\,
            clk => \N__1664\,
            ce => 'H',
            sr => \N__1675\
        );

    \tli.counter_135_136__i3_LC_14_16_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1726\,
            in2 => \_gnd_net_\,
            in3 => \N__1531\,
            lcout => \tli.counter_2\,
            ltout => OPEN,
            carryin => \tli.n900\,
            carryout => \tli.n901\,
            clk => \N__1664\,
            ce => 'H',
            sr => \N__1675\
        );

    \tli.counter_135_136__i4_LC_14_16_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1714\,
            in2 => \_gnd_net_\,
            in3 => \N__1528\,
            lcout => \tli.counter_3\,
            ltout => OPEN,
            carryin => \tli.n901\,
            carryout => \tli.n902\,
            clk => \N__1664\,
            ce => 'H',
            sr => \N__1675\
        );

    \tli.counter_135_136__i5_LC_14_16_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1702\,
            in2 => \_gnd_net_\,
            in3 => \N__1741\,
            lcout => \tli.counter_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1664\,
            ce => 'H',
            sr => \N__1675\
        );

    \CONSTANT_ONE_LUT4_LC_14_17_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i2_2_lut_adj_4_LC_15_16_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1737\,
            in2 => \_gnd_net_\,
            in3 => \N__1725\,
            lcout => OPEN,
            ltout => \tli.n6_adj_237_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i154_4_lut_LC_15_16_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011001000"
        )
    port map (
            in0 => \N__1713\,
            in1 => \N__1701\,
            in2 => \N__1690\,
            in3 => \N__1687\,
            lcout => \tli.clk_slow_N_43\,
            ltout => \tli.clk_slow_N_43_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.clk_slow_62_LC_15_16_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000111111110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__1669\,
            in3 => \N__2399\,
            lcout => \tli.clk_slow\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1666\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134_add_4_2_lut_LC_15_17_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1908\,
            in2 => \_gnd_net_\,
            in3 => \N__1642\,
            lcout => \tli.n45\,
            ltout => OPEN,
            carryin => \bfn_15_17_0_\,
            carryout => \tli.n892\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134_add_4_3_lut_LC_15_17_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1000001000101000"
        )
    port map (
            in0 => \N__2126\,
            in1 => \N__1956\,
            in2 => \N__1852\,
            in3 => \N__1639\,
            lcout => \tli.n986\,
            ltout => OPEN,
            carryin => \tli.n892\,
            carryout => \tli.n893\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134_add_4_4_lut_LC_15_17_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1000001000101000"
        )
    port map (
            in0 => \N__2128\,
            in1 => \N__1945\,
            in2 => \N__1850\,
            in3 => \N__1636\,
            lcout => \tli.n985\,
            ltout => OPEN,
            carryin => \tli.n893\,
            carryout => \tli.n894\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134_add_4_5_lut_LC_15_17_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1000001000101000"
        )
    port map (
            in0 => \N__2127\,
            in1 => \N__1841\,
            in2 => \N__1927\,
            in3 => \N__1633\,
            lcout => \tli.n984\,
            ltout => OPEN,
            carryin => \tli.n894\,
            carryout => \tli.n895\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134__i4_LC_15_17_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1779\,
            in2 => \N__1848\,
            in3 => \N__1861\,
            lcout => \tli.bit_counter_4\,
            ltout => OPEN,
            carryin => \tli.n895\,
            carryout => \tli.n896\,
            clk => \INVtli.bit_counter_134__i4C_net\,
            ce => \N__2155\,
            sr => \N__2161\
        );

    \tli.bit_counter_134__i5_LC_15_17_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1794\,
            in2 => \N__1851\,
            in3 => \N__1858\,
            lcout => \tli.bit_counter_5\,
            ltout => OPEN,
            carryin => \tli.n896\,
            carryout => \tli.n897\,
            clk => \INVtli.bit_counter_134__i4C_net\,
            ce => \N__2155\,
            sr => \N__2161\
        );

    \tli.bit_counter_134__i6_LC_15_17_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1767\,
            in2 => \N__1849\,
            in3 => \N__1855\,
            lcout => \tli.bit_counter_6\,
            ltout => OPEN,
            carryin => \tli.n897\,
            carryout => \tli.n898\,
            clk => \INVtli.bit_counter_134__i4C_net\,
            ce => \N__2155\,
            sr => \N__2161\
        );

    \tli.bit_counter_134__i7_LC_15_17_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \N__1806\,
            in1 => \N__1837\,
            in2 => \_gnd_net_\,
            in3 => \N__1810\,
            lcout => \tli.bit_counter_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.bit_counter_134__i4C_net\,
            ce => \N__2155\,
            sr => \N__2161\
        );

    \tli.i6_4_lut_LC_15_18_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1807\,
            in1 => \N__1795\,
            in2 => \N__1783\,
            in3 => \N__1768\,
            lcout => \tli.n14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134__i0_LC_15_18_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0100010010101010"
        )
    port map (
            in0 => \N__2231\,
            in1 => \N__1756\,
            in2 => \_gnd_net_\,
            in3 => \N__2310\,
            lcout => \tli.bit_counter_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.bit_counter_134__i0C_net\,
            ce => \N__2147\,
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134__i1_LC_15_18_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__2311\,
            in1 => \N__1750\,
            in2 => \_gnd_net_\,
            in3 => \N__2232\,
            lcout => \tli.bit_counter_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.bit_counter_134__i0C_net\,
            ce => \N__2147\,
            sr => \_gnd_net_\
        );

    \tli.delay_counter_132_133__i1_LC_15_19_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2073\,
            in2 => \_gnd_net_\,
            in3 => \N__1744\,
            lcout => \tli.delay_counter_0\,
            ltout => OPEN,
            carryin => \bfn_15_19_0_\,
            carryout => \tli.n903\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i2_LC_15_19_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2100\,
            in2 => \_gnd_net_\,
            in3 => \N__1888\,
            lcout => \tli.delay_counter_1\,
            ltout => OPEN,
            carryin => \tli.n903\,
            carryout => \tli.n904\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i3_LC_15_19_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2112\,
            in2 => \_gnd_net_\,
            in3 => \N__1885\,
            lcout => \tli.delay_counter_2\,
            ltout => OPEN,
            carryin => \tli.n904\,
            carryout => \tli.n905\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i4_LC_15_19_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2085\,
            in2 => \_gnd_net_\,
            in3 => \N__1882\,
            lcout => \tli.delay_counter_3\,
            ltout => OPEN,
            carryin => \tli.n905\,
            carryout => \tli.n906\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i5_LC_15_19_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2046\,
            in2 => \_gnd_net_\,
            in3 => \N__1879\,
            lcout => \tli.delay_counter_4\,
            ltout => OPEN,
            carryin => \tli.n906\,
            carryout => \tli.n907\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i6_LC_15_19_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2025\,
            in2 => \_gnd_net_\,
            in3 => \N__1876\,
            lcout => \tli.delay_counter_5\,
            ltout => OPEN,
            carryin => \tli.n907\,
            carryout => \tli.n908\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i7_LC_15_19_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2013\,
            in2 => \_gnd_net_\,
            in3 => \N__1873\,
            lcout => \tli.delay_counter_6\,
            ltout => OPEN,
            carryin => \tli.n908\,
            carryout => \tli.n909\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i8_LC_15_19_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2061\,
            in2 => \_gnd_net_\,
            in3 => \N__1870\,
            lcout => \tli.delay_counter_7\,
            ltout => OPEN,
            carryin => \tli.n909\,
            carryout => \tli.n910\,
            clk => \INVtli.delay_counter_132_133__i1C_net\,
            ce => 'H',
            sr => \N__2500\
        );

    \tli.delay_counter_132_133__i9_LC_15_20_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2550\,
            in2 => \_gnd_net_\,
            in3 => \N__1867\,
            lcout => \tli.delay_counter_8\,
            ltout => OPEN,
            carryin => \bfn_15_20_0_\,
            carryout => \tli.n911\,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.delay_counter_132_133__i10_LC_15_20_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2583\,
            in2 => \_gnd_net_\,
            in3 => \N__1864\,
            lcout => \tli.delay_counter_9\,
            ltout => OPEN,
            carryin => \tli.n911\,
            carryout => \tli.n912\,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.delay_counter_132_133__i11_LC_15_20_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2562\,
            in2 => \_gnd_net_\,
            in3 => \N__1984\,
            lcout => \tli.delay_counter_10\,
            ltout => OPEN,
            carryin => \tli.n912\,
            carryout => \tli.n913\,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.delay_counter_132_133__i12_LC_15_20_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2511\,
            in2 => \_gnd_net_\,
            in3 => \N__1981\,
            lcout => \tli.delay_counter_11\,
            ltout => OPEN,
            carryin => \tli.n913\,
            carryout => \tli.n914\,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.delay_counter_132_133__i13_LC_15_20_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2538\,
            in2 => \_gnd_net_\,
            in3 => \N__1978\,
            lcout => \tli.delay_counter_12\,
            ltout => OPEN,
            carryin => \tli.n914\,
            carryout => \tli.n915\,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.delay_counter_132_133__i14_LC_15_20_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010010101011010"
        )
    port map (
            in0 => \N__2526\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1975\,
            lcout => \tli.delay_counter_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.delay_counter_132_133__i9C_net\,
            ce => 'H',
            sr => \N__2495\
        );

    \tli.bit_counter_134__i2_LC_16_17_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__2312\,
            in1 => \N__1972\,
            in2 => \_gnd_net_\,
            in3 => \N__2233\,
            lcout => \tli.bit_counter_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.bit_counter_134__i2C_net\,
            ce => \N__2154\,
            sr => \_gnd_net_\
        );

    \tli.bit_counter_134__i3_LC_16_17_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__2234\,
            in1 => \N__1963\,
            in2 => \_gnd_net_\,
            in3 => \N__2313\,
            lcout => \tli.bit_counter_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.bit_counter_134__i2C_net\,
            ce => \N__2154\,
            sr => \_gnd_net_\
        );

    \tli.i2_2_lut_adj_5_LC_16_17_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__1957\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1944\,
            lcout => \tli.n10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i7_4_lut_LC_16_18_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1933\,
            in1 => \N__1926\,
            in2 => \N__1912\,
            in3 => \N__1897\,
            lcout => \tli.n15\,
            ltout => \tli.n15_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.state_i0_LC_16_18_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1001",
            LUT_INIT => "0000000000001111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__1891\,
            in3 => \N__2227\,
            lcout => \tli.state_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.state_i0C_net\,
            ce => \N__2035\,
            sr => \N__1996\
        );

    \tli.i246_2_lut_3_lut_2_lut_LC_16_18_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010100000000"
        )
    port map (
            in0 => \N__2308\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2226\,
            lcout => \tli.n852\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i235_2_lut_LC_16_18_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010110101010"
        )
    port map (
            in0 => \N__2225\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2307\,
            lcout => \tli.n839\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i121_1_lut_LC_16_18_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2224\,
            lcout => \tli.n569\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.state_i1_LC_16_18_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000010111110101"
        )
    port map (
            in0 => \N__2260\,
            in1 => \_gnd_net_\,
            in2 => \N__2241\,
            in3 => \N__2309\,
            lcout => \tli.state_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.state_i0C_net\,
            ce => \N__2035\,
            sr => \N__1996\
        );

    \tli.i3_4_lut_LC_16_19_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2113\,
            in1 => \N__2101\,
            in2 => \N__2089\,
            in3 => \N__2074\,
            lcout => OPEN,
            ltout => \tli.n978_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i3_4_lut_adj_2_LC_16_19_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111011101110"
        )
    port map (
            in0 => \N__2002\,
            in1 => \N__2062\,
            in2 => \N__2050\,
            in3 => \N__2047\,
            lcout => \tli.n977\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i1_2_lut_4_lut_LC_16_19_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111011100"
        )
    port map (
            in0 => \N__2262\,
            in1 => \N__2491\,
            in2 => \N__2323\,
            in3 => \N__2236\,
            lcout => \tli.n833\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i2_2_lut_LC_16_19_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2026\,
            in2 => \_gnd_net_\,
            in3 => \N__2014\,
            lcout => \tli.n6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i244_2_lut_4_lut_LC_16_19_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011010000"
        )
    port map (
            in0 => \N__2318\,
            in1 => \N__2263\,
            in2 => \N__2499\,
            in3 => \N__2242\,
            lcout => \tli.n850\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i3_4_lut_adj_3_LC_16_20_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__2584\,
            in1 => \N__2572\,
            in2 => \N__2566\,
            in3 => \N__2551\,
            lcout => OPEN,
            ltout => \tli.n966_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i159_4_lut_LC_16_20_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011001000"
        )
    port map (
            in0 => \N__2539\,
            in1 => \N__2527\,
            in2 => \N__2515\,
            in3 => \N__2512\,
            lcout => \tli.delay_counter_15__N_124\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi_clk_I_0_i1_3_lut_LC_17_17_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110111000000000"
        )
    port map (
            in0 => \N__2337\,
            in1 => \N__2463\,
            in2 => \_gnd_net_\,
            in3 => \N__2175\,
            lcout => \CS_CLK_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.slave_select_65_LC_17_17_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110001010101"
        )
    port map (
            in0 => \N__2240\,
            in1 => \N__2336\,
            in2 => \_gnd_net_\,
            in3 => \N__2319\,
            lcout => \CS_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.slave_select_65C_net\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.clk_out_66_LC_17_18_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111010111010000"
        )
    port map (
            in0 => \N__2314\,
            in1 => \N__2261\,
            in2 => \N__2176\,
            in3 => \N__2235\,
            lcout => \tli.clk_out\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \INVtli.clk_out_66C_net\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
