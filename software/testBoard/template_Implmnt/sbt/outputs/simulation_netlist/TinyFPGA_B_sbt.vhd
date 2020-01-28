-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 12 2017 08:26:01

-- File Generated:     Jan 28 2020 14:30:54

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
    SCL : out std_logic;
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

signal \N__2890\ : std_logic;
signal \N__2889\ : std_logic;
signal \N__2888\ : std_logic;
signal \N__2881\ : std_logic;
signal \N__2880\ : std_logic;
signal \N__2879\ : std_logic;
signal \N__2872\ : std_logic;
signal \N__2871\ : std_logic;
signal \N__2870\ : std_logic;
signal \N__2863\ : std_logic;
signal \N__2862\ : std_logic;
signal \N__2861\ : std_logic;
signal \N__2854\ : std_logic;
signal \N__2853\ : std_logic;
signal \N__2852\ : std_logic;
signal \N__2845\ : std_logic;
signal \N__2844\ : std_logic;
signal \N__2843\ : std_logic;
signal \N__2836\ : std_logic;
signal \N__2835\ : std_logic;
signal \N__2834\ : std_logic;
signal \N__2827\ : std_logic;
signal \N__2826\ : std_logic;
signal \N__2825\ : std_logic;
signal \N__2818\ : std_logic;
signal \N__2817\ : std_logic;
signal \N__2816\ : std_logic;
signal \N__2809\ : std_logic;
signal \N__2808\ : std_logic;
signal \N__2807\ : std_logic;
signal \N__2800\ : std_logic;
signal \N__2799\ : std_logic;
signal \N__2798\ : std_logic;
signal \N__2791\ : std_logic;
signal \N__2790\ : std_logic;
signal \N__2789\ : std_logic;
signal \N__2782\ : std_logic;
signal \N__2781\ : std_logic;
signal \N__2780\ : std_logic;
signal \N__2773\ : std_logic;
signal \N__2772\ : std_logic;
signal \N__2771\ : std_logic;
signal \N__2764\ : std_logic;
signal \N__2763\ : std_logic;
signal \N__2762\ : std_logic;
signal \N__2755\ : std_logic;
signal \N__2754\ : std_logic;
signal \N__2753\ : std_logic;
signal \N__2736\ : std_logic;
signal \N__2735\ : std_logic;
signal \N__2732\ : std_logic;
signal \N__2729\ : std_logic;
signal \N__2724\ : std_logic;
signal \N__2721\ : std_logic;
signal \N__2718\ : std_logic;
signal \N__2717\ : std_logic;
signal \N__2714\ : std_logic;
signal \N__2711\ : std_logic;
signal \N__2708\ : std_logic;
signal \N__2703\ : std_logic;
signal \N__2700\ : std_logic;
signal \N__2699\ : std_logic;
signal \N__2696\ : std_logic;
signal \N__2693\ : std_logic;
signal \N__2688\ : std_logic;
signal \N__2685\ : std_logic;
signal \N__2682\ : std_logic;
signal \N__2679\ : std_logic;
signal \N__2678\ : std_logic;
signal \N__2675\ : std_logic;
signal \N__2672\ : std_logic;
signal \N__2669\ : std_logic;
signal \N__2664\ : std_logic;
signal \N__2663\ : std_logic;
signal \N__2660\ : std_logic;
signal \N__2657\ : std_logic;
signal \N__2656\ : std_logic;
signal \N__2651\ : std_logic;
signal \N__2650\ : std_logic;
signal \N__2647\ : std_logic;
signal \N__2644\ : std_logic;
signal \N__2641\ : std_logic;
signal \N__2634\ : std_logic;
signal \N__2631\ : std_logic;
signal \N__2630\ : std_logic;
signal \N__2627\ : std_logic;
signal \N__2626\ : std_logic;
signal \N__2623\ : std_logic;
signal \N__2622\ : std_logic;
signal \N__2621\ : std_logic;
signal \N__2620\ : std_logic;
signal \N__2619\ : std_logic;
signal \N__2618\ : std_logic;
signal \N__2617\ : std_logic;
signal \N__2616\ : std_logic;
signal \N__2613\ : std_logic;
signal \N__2610\ : std_logic;
signal \N__2607\ : std_logic;
signal \N__2604\ : std_logic;
signal \N__2601\ : std_logic;
signal \N__2600\ : std_logic;
signal \N__2599\ : std_logic;
signal \N__2596\ : std_logic;
signal \N__2593\ : std_logic;
signal \N__2592\ : std_logic;
signal \N__2591\ : std_logic;
signal \N__2590\ : std_logic;
signal \N__2589\ : std_logic;
signal \N__2586\ : std_logic;
signal \N__2583\ : std_logic;
signal \N__2580\ : std_logic;
signal \N__2579\ : std_logic;
signal \N__2576\ : std_logic;
signal \N__2569\ : std_logic;
signal \N__2564\ : std_logic;
signal \N__2553\ : std_logic;
signal \N__2540\ : std_logic;
signal \N__2529\ : std_logic;
signal \N__2526\ : std_logic;
signal \N__2523\ : std_logic;
signal \N__2520\ : std_logic;
signal \N__2517\ : std_logic;
signal \N__2516\ : std_logic;
signal \N__2515\ : std_logic;
signal \N__2512\ : std_logic;
signal \N__2509\ : std_logic;
signal \N__2506\ : std_logic;
signal \N__2499\ : std_logic;
signal \N__2496\ : std_logic;
signal \N__2493\ : std_logic;
signal \N__2492\ : std_logic;
signal \N__2491\ : std_logic;
signal \N__2490\ : std_logic;
signal \N__2489\ : std_logic;
signal \N__2488\ : std_logic;
signal \N__2487\ : std_logic;
signal \N__2486\ : std_logic;
signal \N__2485\ : std_logic;
signal \N__2484\ : std_logic;
signal \N__2483\ : std_logic;
signal \N__2482\ : std_logic;
signal \N__2481\ : std_logic;
signal \N__2454\ : std_logic;
signal \N__2451\ : std_logic;
signal \N__2448\ : std_logic;
signal \N__2445\ : std_logic;
signal \N__2444\ : std_logic;
signal \N__2443\ : std_logic;
signal \N__2442\ : std_logic;
signal \N__2439\ : std_logic;
signal \N__2432\ : std_logic;
signal \N__2429\ : std_logic;
signal \N__2426\ : std_logic;
signal \N__2423\ : std_logic;
signal \N__2420\ : std_logic;
signal \N__2415\ : std_logic;
signal \N__2414\ : std_logic;
signal \N__2411\ : std_logic;
signal \N__2408\ : std_logic;
signal \N__2403\ : std_logic;
signal \N__2400\ : std_logic;
signal \N__2399\ : std_logic;
signal \N__2396\ : std_logic;
signal \N__2393\ : std_logic;
signal \N__2388\ : std_logic;
signal \N__2385\ : std_logic;
signal \N__2384\ : std_logic;
signal \N__2381\ : std_logic;
signal \N__2378\ : std_logic;
signal \N__2373\ : std_logic;
signal \N__2370\ : std_logic;
signal \N__2369\ : std_logic;
signal \N__2366\ : std_logic;
signal \N__2363\ : std_logic;
signal \N__2358\ : std_logic;
signal \N__2355\ : std_logic;
signal \N__2354\ : std_logic;
signal \N__2351\ : std_logic;
signal \N__2348\ : std_logic;
signal \N__2343\ : std_logic;
signal \N__2340\ : std_logic;
signal \N__2339\ : std_logic;
signal \N__2336\ : std_logic;
signal \N__2333\ : std_logic;
signal \N__2328\ : std_logic;
signal \N__2325\ : std_logic;
signal \N__2324\ : std_logic;
signal \N__2321\ : std_logic;
signal \N__2318\ : std_logic;
signal \N__2315\ : std_logic;
signal \N__2310\ : std_logic;
signal \N__2307\ : std_logic;
signal \N__2306\ : std_logic;
signal \N__2303\ : std_logic;
signal \N__2300\ : std_logic;
signal \N__2297\ : std_logic;
signal \N__2292\ : std_logic;
signal \N__2289\ : std_logic;
signal \N__2288\ : std_logic;
signal \N__2285\ : std_logic;
signal \N__2282\ : std_logic;
signal \N__2279\ : std_logic;
signal \N__2274\ : std_logic;
signal \N__2271\ : std_logic;
signal \N__2270\ : std_logic;
signal \N__2267\ : std_logic;
signal \N__2264\ : std_logic;
signal \N__2259\ : std_logic;
signal \N__2256\ : std_logic;
signal \N__2255\ : std_logic;
signal \N__2252\ : std_logic;
signal \N__2249\ : std_logic;
signal \N__2244\ : std_logic;
signal \N__2241\ : std_logic;
signal \N__2240\ : std_logic;
signal \N__2237\ : std_logic;
signal \N__2234\ : std_logic;
signal \N__2229\ : std_logic;
signal \N__2226\ : std_logic;
signal \N__2223\ : std_logic;
signal \N__2222\ : std_logic;
signal \N__2219\ : std_logic;
signal \N__2216\ : std_logic;
signal \N__2211\ : std_logic;
signal \N__2208\ : std_logic;
signal \N__2207\ : std_logic;
signal \N__2204\ : std_logic;
signal \N__2201\ : std_logic;
signal \N__2196\ : std_logic;
signal \N__2193\ : std_logic;
signal \N__2192\ : std_logic;
signal \N__2189\ : std_logic;
signal \N__2186\ : std_logic;
signal \N__2183\ : std_logic;
signal \N__2178\ : std_logic;
signal \N__2175\ : std_logic;
signal \N__2174\ : std_logic;
signal \N__2171\ : std_logic;
signal \N__2168\ : std_logic;
signal \N__2163\ : std_logic;
signal \N__2160\ : std_logic;
signal \N__2159\ : std_logic;
signal \N__2156\ : std_logic;
signal \N__2153\ : std_logic;
signal \N__2148\ : std_logic;
signal \N__2145\ : std_logic;
signal \N__2144\ : std_logic;
signal \N__2141\ : std_logic;
signal \N__2138\ : std_logic;
signal \N__2133\ : std_logic;
signal \N__2130\ : std_logic;
signal \N__2129\ : std_logic;
signal \N__2126\ : std_logic;
signal \N__2123\ : std_logic;
signal \N__2118\ : std_logic;
signal \N__2115\ : std_logic;
signal \N__2114\ : std_logic;
signal \N__2111\ : std_logic;
signal \N__2108\ : std_logic;
signal \N__2103\ : std_logic;
signal \N__2100\ : std_logic;
signal \N__2099\ : std_logic;
signal \N__2096\ : std_logic;
signal \N__2093\ : std_logic;
signal \N__2088\ : std_logic;
signal \N__2085\ : std_logic;
signal \N__2084\ : std_logic;
signal \N__2081\ : std_logic;
signal \N__2078\ : std_logic;
signal \N__2075\ : std_logic;
signal \N__2070\ : std_logic;
signal \N__2067\ : std_logic;
signal \N__2066\ : std_logic;
signal \N__2063\ : std_logic;
signal \N__2060\ : std_logic;
signal \N__2057\ : std_logic;
signal \N__2052\ : std_logic;
signal \N__2049\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2045\ : std_logic;
signal \N__2042\ : std_logic;
signal \N__2037\ : std_logic;
signal \N__2034\ : std_logic;
signal \N__2031\ : std_logic;
signal \N__2028\ : std_logic;
signal \N__2025\ : std_logic;
signal \N__2022\ : std_logic;
signal \N__2019\ : std_logic;
signal \N__2016\ : std_logic;
signal \N__2013\ : std_logic;
signal \N__2010\ : std_logic;
signal \N__2007\ : std_logic;
signal \N__2004\ : std_logic;
signal \N__2001\ : std_logic;
signal \N__1998\ : std_logic;
signal \N__1995\ : std_logic;
signal \N__1992\ : std_logic;
signal \N__1991\ : std_logic;
signal \N__1988\ : std_logic;
signal \N__1985\ : std_logic;
signal \N__1980\ : std_logic;
signal \N__1977\ : std_logic;
signal \N__1976\ : std_logic;
signal \N__1973\ : std_logic;
signal \N__1970\ : std_logic;
signal \N__1965\ : std_logic;
signal \N__1962\ : std_logic;
signal \N__1961\ : std_logic;
signal \N__1958\ : std_logic;
signal \N__1955\ : std_logic;
signal \N__1950\ : std_logic;
signal \N__1947\ : std_logic;
signal \N__1944\ : std_logic;
signal \N__1941\ : std_logic;
signal \N__1938\ : std_logic;
signal \N__1935\ : std_logic;
signal \N__1932\ : std_logic;
signal \N__1929\ : std_logic;
signal \N__1926\ : std_logic;
signal \N__1923\ : std_logic;
signal \N__1920\ : std_logic;
signal \N__1917\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1911\ : std_logic;
signal \N__1908\ : std_logic;
signal \N__1905\ : std_logic;
signal \N__1902\ : std_logic;
signal \N__1899\ : std_logic;
signal \N__1896\ : std_logic;
signal \N__1893\ : std_logic;
signal \N__1890\ : std_logic;
signal \N__1887\ : std_logic;
signal \N__1884\ : std_logic;
signal \N__1881\ : std_logic;
signal \N__1878\ : std_logic;
signal \N__1875\ : std_logic;
signal \N__1872\ : std_logic;
signal \N__1869\ : std_logic;
signal \N__1866\ : std_logic;
signal \N__1863\ : std_logic;
signal \N__1860\ : std_logic;
signal \N__1857\ : std_logic;
signal \N__1854\ : std_logic;
signal \N__1851\ : std_logic;
signal \N__1848\ : std_logic;
signal \N__1847\ : std_logic;
signal \N__1842\ : std_logic;
signal \N__1839\ : std_logic;
signal \N__1836\ : std_logic;
signal \N__1833\ : std_logic;
signal \N__1830\ : std_logic;
signal \N__1827\ : std_logic;
signal \N__1824\ : std_logic;
signal \N__1823\ : std_logic;
signal \N__1822\ : std_logic;
signal \N__1817\ : std_logic;
signal \N__1814\ : std_logic;
signal \N__1809\ : std_logic;
signal \N__1808\ : std_logic;
signal \N__1805\ : std_logic;
signal \N__1800\ : std_logic;
signal \N__1799\ : std_logic;
signal \N__1796\ : std_logic;
signal \N__1793\ : std_logic;
signal \N__1788\ : std_logic;
signal \N__1785\ : std_logic;
signal \N__1784\ : std_logic;
signal \N__1783\ : std_logic;
signal \N__1776\ : std_logic;
signal \N__1773\ : std_logic;
signal \N__1772\ : std_logic;
signal \N__1771\ : std_logic;
signal \N__1766\ : std_logic;
signal \N__1763\ : std_logic;
signal \N__1758\ : std_logic;
signal \N__1755\ : std_logic;
signal \N__1752\ : std_logic;
signal \N__1749\ : std_logic;
signal \N__1746\ : std_logic;
signal \N__1743\ : std_logic;
signal \N__1740\ : std_logic;
signal \N__1737\ : std_logic;
signal \N__1734\ : std_logic;
signal \N__1731\ : std_logic;
signal \N__1728\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1719\ : std_logic;
signal \N__1716\ : std_logic;
signal \N__1713\ : std_logic;
signal \N__1710\ : std_logic;
signal \N__1707\ : std_logic;
signal \N__1704\ : std_logic;
signal \N__1701\ : std_logic;
signal \N__1698\ : std_logic;
signal \N__1695\ : std_logic;
signal \N__1692\ : std_logic;
signal \N__1689\ : std_logic;
signal \N__1686\ : std_logic;
signal \N__1683\ : std_logic;
signal \N__1680\ : std_logic;
signal \N__1677\ : std_logic;
signal \N__1674\ : std_logic;
signal \N__1671\ : std_logic;
signal \N__1668\ : std_logic;
signal \N__1665\ : std_logic;
signal \N__1662\ : std_logic;
signal \N__1659\ : std_logic;
signal \N__1656\ : std_logic;
signal \N__1653\ : std_logic;
signal \N__1650\ : std_logic;
signal \N__1647\ : std_logic;
signal \N__1644\ : std_logic;
signal \N__1641\ : std_logic;
signal \N__1638\ : std_logic;
signal \N__1635\ : std_logic;
signal \N__1632\ : std_logic;
signal \N__1629\ : std_logic;
signal \N__1626\ : std_logic;
signal \N__1623\ : std_logic;
signal \N__1620\ : std_logic;
signal \N__1617\ : std_logic;
signal \N__1614\ : std_logic;
signal \N__1611\ : std_logic;
signal \N__1608\ : std_logic;
signal \N__1605\ : std_logic;
signal \N__1602\ : std_logic;
signal \N__1599\ : std_logic;
signal \N__1596\ : std_logic;
signal \N__1595\ : std_logic;
signal \N__1594\ : std_logic;
signal \N__1587\ : std_logic;
signal \N__1584\ : std_logic;
signal \N__1583\ : std_logic;
signal \N__1582\ : std_logic;
signal \N__1581\ : std_logic;
signal \N__1572\ : std_logic;
signal \N__1569\ : std_logic;
signal \N__1568\ : std_logic;
signal \N__1565\ : std_logic;
signal \N__1560\ : std_logic;
signal \N__1557\ : std_logic;
signal \N__1556\ : std_logic;
signal \N__1555\ : std_logic;
signal \N__1554\ : std_logic;
signal \N__1553\ : std_logic;
signal \N__1542\ : std_logic;
signal \N__1539\ : std_logic;
signal \N__1536\ : std_logic;
signal \N__1533\ : std_logic;
signal \N__1530\ : std_logic;
signal \N__1527\ : std_logic;
signal \N__1524\ : std_logic;
signal \N__1521\ : std_logic;
signal \N__1518\ : std_logic;
signal \N__1515\ : std_logic;
signal \N__1512\ : std_logic;
signal \N__1509\ : std_logic;
signal \N__1506\ : std_logic;
signal \N__1503\ : std_logic;
signal \N__1500\ : std_logic;
signal \N__1497\ : std_logic;
signal \N__1494\ : std_logic;
signal \N__1491\ : std_logic;
signal \N__1488\ : std_logic;
signal \N__1485\ : std_logic;
signal \N__1484\ : std_logic;
signal \N__1479\ : std_logic;
signal \N__1476\ : std_logic;
signal \N__1473\ : std_logic;
signal \N__1470\ : std_logic;
signal \N__1469\ : std_logic;
signal \N__1466\ : std_logic;
signal \N__1463\ : std_logic;
signal \N__1458\ : std_logic;
signal \N__1455\ : std_logic;
signal \N__1452\ : std_logic;
signal \N__1449\ : std_logic;
signal \N__1446\ : std_logic;
signal \N__1443\ : std_logic;
signal \CLK_pad_gb_input\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal n370 : std_logic;
signal n368 : std_logic;
signal spi_2x_ce : std_logic;
signal \tli.spi.spi_2x_ce_gen_proc_clk_cnt_2\ : std_logic;
signal \tli.spi.spi_2x_ce_gen_proc_clk_cnt_1\ : std_logic;
signal \tli.spi.spi_2x_ce_gen_proc_clk_cnt_3\ : std_logic;
signal \tli.spi.spi_2x_ce_gen_proc_clk_cnt_0\ : std_logic;
signal n26 : std_logic;
signal \bfn_5_21_0_\ : std_logic;
signal n25 : std_logic;
signal n992 : std_logic;
signal n24 : std_logic;
signal n993 : std_logic;
signal n23 : std_logic;
signal n994 : std_logic;
signal n22 : std_logic;
signal n995 : std_logic;
signal n21 : std_logic;
signal n996 : std_logic;
signal n20 : std_logic;
signal n997 : std_logic;
signal n19 : std_logic;
signal n998 : std_logic;
signal n999 : std_logic;
signal n18 : std_logic;
signal \bfn_5_22_0_\ : std_logic;
signal n17 : std_logic;
signal n1000 : std_logic;
signal n16 : std_logic;
signal n1001 : std_logic;
signal n15 : std_logic;
signal n1002 : std_logic;
signal n14 : std_logic;
signal n1003 : std_logic;
signal n13 : std_logic;
signal n1004 : std_logic;
signal n12 : std_logic;
signal n1005 : std_logic;
signal n11 : std_logic;
signal n1006 : std_logic;
signal n1007 : std_logic;
signal n10 : std_logic;
signal \bfn_5_23_0_\ : std_logic;
signal n9 : std_logic;
signal n1008 : std_logic;
signal n8 : std_logic;
signal n1009 : std_logic;
signal n7 : std_logic;
signal n1010 : std_logic;
signal n6 : std_logic;
signal n1011 : std_logic;
signal n1012 : std_logic;
signal n1013 : std_logic;
signal n1014 : std_logic;
signal n1015 : std_logic;
signal \bfn_5_24_0_\ : std_logic;
signal n1016 : std_logic;
signal blink_counter_25 : std_logic;
signal \LED_c\ : std_logic;
signal n1083 : std_logic;
signal blink_counter_23 : std_logic;
signal blink_counter_22 : std_logic;
signal blink_counter_24 : std_logic;
signal blink_counter_21 : std_logic;
signal n1084 : std_logic;
signal n168 : std_logic;
signal n148 : std_logic;
signal n160 : std_logic;
signal n156 : std_logic;
signal n152 : std_logic;
signal \tli.n10_cascade_\ : std_logic;
signal n154 : std_logic;
signal n158 : std_logic;
signal \tli.n15\ : std_logic;
signal \tli.n16\ : std_logic;
signal \tli.n22_cascade_\ : std_logic;
signal \tli.n10_adj_301\ : std_logic;
signal \tli.n17_cascade_\ : std_logic;
signal \tli.n29_cascade_\ : std_logic;
signal \tli.current_14__N_89_cascade_\ : std_logic;
signal \tli.current_14__N_89\ : std_logic;
signal n146 : std_logic;
signal n164 : std_logic;
signal n166 : std_logic;
signal n150 : std_logic;
signal n144 : std_logic;
signal \tli.n28\ : std_logic;
signal \tli.n26\ : std_logic;
signal n162 : std_logic;
signal \tli.n27\ : std_logic;
signal \tli.delay_counter_0_N\ : std_logic;
signal \bfn_7_22_0_\ : std_logic;
signal \tli.delay_counter_1_N\ : std_logic;
signal \tli.n1017\ : std_logic;
signal \tli.delay_counter_2_N\ : std_logic;
signal \tli.n1018\ : std_logic;
signal \tli.delay_counter_3_N\ : std_logic;
signal \tli.n1019\ : std_logic;
signal \tli.delay_counter_4_N\ : std_logic;
signal \tli.n1020\ : std_logic;
signal \tli.delay_counter_5_N\ : std_logic;
signal \tli.n1021\ : std_logic;
signal \tli.delay_counter_6_N\ : std_logic;
signal \tli.n1022\ : std_logic;
signal \tli.delay_counter_7_N\ : std_logic;
signal \tli.n1023\ : std_logic;
signal \tli.n1024\ : std_logic;
signal \tli.delay_counter_8_N\ : std_logic;
signal \bfn_7_23_0_\ : std_logic;
signal \tli.delay_counter_9_N\ : std_logic;
signal \tli.n1025\ : std_logic;
signal \tli.delay_counter_10_N\ : std_logic;
signal \tli.n1026\ : std_logic;
signal \tli.delay_counter_11_N\ : std_logic;
signal \tli.n1027\ : std_logic;
signal \tli.delay_counter_12_N\ : std_logic;
signal \tli.n1028\ : std_logic;
signal \tli.delay_counter_13_N\ : std_logic;
signal \tli.n1029\ : std_logic;
signal \tli.delay_counter_14_N\ : std_logic;
signal \tli.n1030\ : std_logic;
signal \tli.n1031\ : std_logic;
signal \tli.n1032\ : std_logic;
signal \tli.delay_counter_16\ : std_logic;
signal \bfn_7_24_0_\ : std_logic;
signal \tli.delay_counter_17\ : std_logic;
signal \tli.n1033\ : std_logic;
signal \tli.delay_counter_18\ : std_logic;
signal \tli.n1034\ : std_logic;
signal \tli.delay_counter_19\ : std_logic;
signal \tli.n1035\ : std_logic;
signal \tli.delay_counter_20\ : std_logic;
signal \tli.n1036\ : std_logic;
signal \tli.delay_counter_21\ : std_logic;
signal \tli.n1037\ : std_logic;
signal \tli.delay_counter_22\ : std_logic;
signal \tli.n1038\ : std_logic;
signal \tli.delay_counter_23\ : std_logic;
signal \tli.n1039\ : std_logic;
signal \tli.n1040\ : std_logic;
signal \tli.delay_counter_24\ : std_logic;
signal \bfn_7_25_0_\ : std_logic;
signal \tli.delay_counter_25\ : std_logic;
signal \tli.n1041\ : std_logic;
signal \tli.delay_counter_26\ : std_logic;
signal \tli.n1042\ : std_logic;
signal \tli.delay_counter_27\ : std_logic;
signal \tli.n1043\ : std_logic;
signal \tli.delay_counter_28\ : std_logic;
signal \tli.n1044\ : std_logic;
signal \tli.delay_counter_29\ : std_logic;
signal \tli.n1045\ : std_logic;
signal \tli.delay_counter_30\ : std_logic;
signal \tli.n1046\ : std_logic;
signal \tli.n1047\ : std_logic;
signal \tli.delay_counter_31\ : std_logic;
signal \tli.n804\ : std_logic;
signal \tli.n841\ : std_logic;
signal \wren_N_keep\ : std_logic;
signal \delay_counter_15_N_keep\ : std_logic;
signal di_reg_15 : std_logic;
signal \CLK_N\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \CS_CLK_wire\ : std_logic;
signal \CS_MISO_wire\ : std_logic;
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
signal \SCL_wire\ : std_logic;
signal \TX_wire\ : std_logic;
signal \USBPU_wire\ : std_logic;
signal \CLK_wire\ : std_logic;

begin
    CS_CLK <= \CS_CLK_wire\;
    \CS_MISO_wire\ <= CS_MISO;
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
    SCL <= \SCL_wire\;
    TX <= \TX_wire\;
    USBPU <= \USBPU_wire\;
    \CLK_wire\ <= CLK;

    \CS_CLK_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2890\,
            DIN => \N__2889\,
            DOUT => \N__2888\,
            PACKAGEPIN => \CS_CLK_wire\
        );

    \CS_CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2890\,
            PADOUT => \N__2889\,
            PADIN => \N__2888\,
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

    \CS_MISO_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2881\,
            DIN => \N__2880\,
            DOUT => \N__2879\,
            PACKAGEPIN => \CS_MISO_wire\
        );

    \CS_MISO_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2881\,
            PADOUT => \N__2880\,
            PADIN => \N__2879\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => '0',
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
            OE => \N__2872\,
            DIN => \N__2871\,
            DOUT => \N__2870\,
            PACKAGEPIN => \CS_wire\
        );

    \CS_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2872\,
            PADOUT => \N__2871\,
            PADIN => \N__2870\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__2448\,
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
            OE => \N__2863\,
            DIN => \N__2862\,
            DOUT => \N__2861\,
            PACKAGEPIN => \DE_wire\
        );

    \DE_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2863\,
            PADOUT => \N__2862\,
            PADIN => \N__2861\,
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
            OE => \N__2854\,
            DIN => \N__2853\,
            DOUT => \N__2852\,
            PACKAGEPIN => \INHA_wire\
        );

    \INHA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2854\,
            PADOUT => \N__2853\,
            PADIN => \N__2852\,
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
            OE => \N__2845\,
            DIN => \N__2844\,
            DOUT => \N__2843\,
            PACKAGEPIN => \INHB_wire\
        );

    \INHB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2845\,
            PADOUT => \N__2844\,
            PADIN => \N__2843\,
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
            OE => \N__2836\,
            DIN => \N__2835\,
            DOUT => \N__2834\,
            PACKAGEPIN => \INHC_wire\
        );

    \INHC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2836\,
            PADOUT => \N__2835\,
            PADIN => \N__2834\,
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
            OE => \N__2827\,
            DIN => \N__2826\,
            DOUT => \N__2825\,
            PACKAGEPIN => \INLA_wire\
        );

    \INLA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2827\,
            PADOUT => \N__2826\,
            PADIN => \N__2825\,
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
            OE => \N__2818\,
            DIN => \N__2817\,
            DOUT => \N__2816\,
            PACKAGEPIN => \INLB_wire\
        );

    \INLB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2818\,
            PADOUT => \N__2817\,
            PADIN => \N__2816\,
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
            OE => \N__2809\,
            DIN => \N__2808\,
            DOUT => \N__2807\,
            PACKAGEPIN => \INLC_wire\
        );

    \INLC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2809\,
            PADOUT => \N__2808\,
            PADIN => \N__2807\,
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
            OE => \N__2800\,
            DIN => \N__2799\,
            DOUT => \N__2798\,
            PACKAGEPIN => \LED_wire\
        );

    \LED_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2800\,
            PADOUT => \N__2799\,
            PADIN => \N__2798\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__1839\,
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
            OE => \N__2791\,
            DIN => \N__2790\,
            DOUT => \N__2789\,
            PACKAGEPIN => \NEOPXL_wire\
        );

    \NEOPXL_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2791\,
            PADOUT => \N__2790\,
            PADIN => \N__2789\,
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

    \SCL_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2782\,
            DIN => \N__2781\,
            DOUT => \N__2780\,
            PACKAGEPIN => \SCL_wire\
        );

    \SCL_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2782\,
            PADOUT => \N__2781\,
            PADIN => \N__2780\,
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
            OE => \N__2773\,
            DIN => \N__2772\,
            DOUT => \N__2771\,
            PACKAGEPIN => \TX_wire\
        );

    \TX_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2773\,
            PADOUT => \N__2772\,
            PADIN => \N__2771\,
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
            OE => \N__2764\,
            DIN => \N__2763\,
            DOUT => \N__2762\,
            PACKAGEPIN => \USBPU_wire\
        );

    \USBPU_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2764\,
            PADOUT => \N__2763\,
            PADIN => \N__2762\,
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

    \CLK_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2755\,
            DIN => \N__2754\,
            DOUT => \N__2753\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2755\,
            PADOUT => \N__2754\,
            PADIN => \N__2753\,
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

    \I__556\ : InMux
    port map (
            O => \N__2736\,
            I => \N__2732\
        );

    \I__555\ : InMux
    port map (
            O => \N__2735\,
            I => \N__2729\
        );

    \I__554\ : LocalMux
    port map (
            O => \N__2732\,
            I => \tli.delay_counter_28\
        );

    \I__553\ : LocalMux
    port map (
            O => \N__2729\,
            I => \tli.delay_counter_28\
        );

    \I__552\ : InMux
    port map (
            O => \N__2724\,
            I => \tli.n1044\
        );

    \I__551\ : InMux
    port map (
            O => \N__2721\,
            I => \N__2718\
        );

    \I__550\ : LocalMux
    port map (
            O => \N__2718\,
            I => \N__2714\
        );

    \I__549\ : InMux
    port map (
            O => \N__2717\,
            I => \N__2711\
        );

    \I__548\ : Span4Mux_h
    port map (
            O => \N__2714\,
            I => \N__2708\
        );

    \I__547\ : LocalMux
    port map (
            O => \N__2711\,
            I => \tli.delay_counter_29\
        );

    \I__546\ : Odrv4
    port map (
            O => \N__2708\,
            I => \tli.delay_counter_29\
        );

    \I__545\ : InMux
    port map (
            O => \N__2703\,
            I => \tli.n1045\
        );

    \I__544\ : InMux
    port map (
            O => \N__2700\,
            I => \N__2696\
        );

    \I__543\ : InMux
    port map (
            O => \N__2699\,
            I => \N__2693\
        );

    \I__542\ : LocalMux
    port map (
            O => \N__2696\,
            I => \tli.delay_counter_30\
        );

    \I__541\ : LocalMux
    port map (
            O => \N__2693\,
            I => \tli.delay_counter_30\
        );

    \I__540\ : InMux
    port map (
            O => \N__2688\,
            I => \tli.n1046\
        );

    \I__539\ : InMux
    port map (
            O => \N__2685\,
            I => \tli.n1047\
        );

    \I__538\ : InMux
    port map (
            O => \N__2682\,
            I => \N__2679\
        );

    \I__537\ : LocalMux
    port map (
            O => \N__2679\,
            I => \N__2675\
        );

    \I__536\ : InMux
    port map (
            O => \N__2678\,
            I => \N__2672\
        );

    \I__535\ : Span4Mux_h
    port map (
            O => \N__2675\,
            I => \N__2669\
        );

    \I__534\ : LocalMux
    port map (
            O => \N__2672\,
            I => \tli.delay_counter_31\
        );

    \I__533\ : Odrv4
    port map (
            O => \N__2669\,
            I => \tli.delay_counter_31\
        );

    \I__532\ : CEMux
    port map (
            O => \N__2664\,
            I => \N__2660\
        );

    \I__531\ : CEMux
    port map (
            O => \N__2663\,
            I => \N__2657\
        );

    \I__530\ : LocalMux
    port map (
            O => \N__2660\,
            I => \N__2651\
        );

    \I__529\ : LocalMux
    port map (
            O => \N__2657\,
            I => \N__2651\
        );

    \I__528\ : CEMux
    port map (
            O => \N__2656\,
            I => \N__2647\
        );

    \I__527\ : Span4Mux_v
    port map (
            O => \N__2651\,
            I => \N__2644\
        );

    \I__526\ : CEMux
    port map (
            O => \N__2650\,
            I => \N__2641\
        );

    \I__525\ : LocalMux
    port map (
            O => \N__2647\,
            I => \N__2634\
        );

    \I__524\ : Span4Mux_v
    port map (
            O => \N__2644\,
            I => \N__2634\
        );

    \I__523\ : LocalMux
    port map (
            O => \N__2641\,
            I => \N__2634\
        );

    \I__522\ : Odrv4
    port map (
            O => \N__2634\,
            I => \tli.n804\
        );

    \I__521\ : SRMux
    port map (
            O => \N__2631\,
            I => \N__2627\
        );

    \I__520\ : SRMux
    port map (
            O => \N__2630\,
            I => \N__2623\
        );

    \I__519\ : LocalMux
    port map (
            O => \N__2627\,
            I => \N__2613\
        );

    \I__518\ : SRMux
    port map (
            O => \N__2626\,
            I => \N__2610\
        );

    \I__517\ : LocalMux
    port map (
            O => \N__2623\,
            I => \N__2607\
        );

    \I__516\ : SRMux
    port map (
            O => \N__2622\,
            I => \N__2604\
        );

    \I__515\ : CascadeMux
    port map (
            O => \N__2621\,
            I => \N__2601\
        );

    \I__514\ : CascadeMux
    port map (
            O => \N__2620\,
            I => \N__2596\
        );

    \I__513\ : CascadeMux
    port map (
            O => \N__2619\,
            I => \N__2593\
        );

    \I__512\ : CascadeMux
    port map (
            O => \N__2618\,
            I => \N__2586\
        );

    \I__511\ : CascadeMux
    port map (
            O => \N__2617\,
            I => \N__2583\
        );

    \I__510\ : CascadeMux
    port map (
            O => \N__2616\,
            I => \N__2580\
        );

    \I__509\ : Span4Mux_h
    port map (
            O => \N__2613\,
            I => \N__2576\
        );

    \I__508\ : LocalMux
    port map (
            O => \N__2610\,
            I => \N__2569\
        );

    \I__507\ : Span4Mux_v
    port map (
            O => \N__2607\,
            I => \N__2569\
        );

    \I__506\ : LocalMux
    port map (
            O => \N__2604\,
            I => \N__2569\
        );

    \I__505\ : InMux
    port map (
            O => \N__2601\,
            I => \N__2564\
        );

    \I__504\ : InMux
    port map (
            O => \N__2600\,
            I => \N__2564\
        );

    \I__503\ : InMux
    port map (
            O => \N__2599\,
            I => \N__2553\
        );

    \I__502\ : InMux
    port map (
            O => \N__2596\,
            I => \N__2553\
        );

    \I__501\ : InMux
    port map (
            O => \N__2593\,
            I => \N__2553\
        );

    \I__500\ : InMux
    port map (
            O => \N__2592\,
            I => \N__2553\
        );

    \I__499\ : InMux
    port map (
            O => \N__2591\,
            I => \N__2553\
        );

    \I__498\ : InMux
    port map (
            O => \N__2590\,
            I => \N__2540\
        );

    \I__497\ : InMux
    port map (
            O => \N__2589\,
            I => \N__2540\
        );

    \I__496\ : InMux
    port map (
            O => \N__2586\,
            I => \N__2540\
        );

    \I__495\ : InMux
    port map (
            O => \N__2583\,
            I => \N__2540\
        );

    \I__494\ : InMux
    port map (
            O => \N__2580\,
            I => \N__2540\
        );

    \I__493\ : InMux
    port map (
            O => \N__2579\,
            I => \N__2540\
        );

    \I__492\ : Odrv4
    port map (
            O => \N__2576\,
            I => \tli.n841\
        );

    \I__491\ : Odrv4
    port map (
            O => \N__2569\,
            I => \tli.n841\
        );

    \I__490\ : LocalMux
    port map (
            O => \N__2564\,
            I => \tli.n841\
        );

    \I__489\ : LocalMux
    port map (
            O => \N__2553\,
            I => \tli.n841\
        );

    \I__488\ : LocalMux
    port map (
            O => \N__2540\,
            I => \tli.n841\
        );

    \I__487\ : InMux
    port map (
            O => \N__2529\,
            I => \N__2526\
        );

    \I__486\ : LocalMux
    port map (
            O => \N__2526\,
            I => \N__2523\
        );

    \I__485\ : Odrv12
    port map (
            O => \N__2523\,
            I => \wren_N_keep\
        );

    \I__484\ : InMux
    port map (
            O => \N__2520\,
            I => \N__2517\
        );

    \I__483\ : LocalMux
    port map (
            O => \N__2517\,
            I => \N__2512\
        );

    \I__482\ : InMux
    port map (
            O => \N__2516\,
            I => \N__2509\
        );

    \I__481\ : InMux
    port map (
            O => \N__2515\,
            I => \N__2506\
        );

    \I__480\ : Odrv4
    port map (
            O => \N__2512\,
            I => \delay_counter_15_N_keep\
        );

    \I__479\ : LocalMux
    port map (
            O => \N__2509\,
            I => \delay_counter_15_N_keep\
        );

    \I__478\ : LocalMux
    port map (
            O => \N__2506\,
            I => \delay_counter_15_N_keep\
        );

    \I__477\ : InMux
    port map (
            O => \N__2499\,
            I => \N__2496\
        );

    \I__476\ : LocalMux
    port map (
            O => \N__2496\,
            I => di_reg_15
        );

    \I__475\ : ClkMux
    port map (
            O => \N__2493\,
            I => \N__2454\
        );

    \I__474\ : ClkMux
    port map (
            O => \N__2492\,
            I => \N__2454\
        );

    \I__473\ : ClkMux
    port map (
            O => \N__2491\,
            I => \N__2454\
        );

    \I__472\ : ClkMux
    port map (
            O => \N__2490\,
            I => \N__2454\
        );

    \I__471\ : ClkMux
    port map (
            O => \N__2489\,
            I => \N__2454\
        );

    \I__470\ : ClkMux
    port map (
            O => \N__2488\,
            I => \N__2454\
        );

    \I__469\ : ClkMux
    port map (
            O => \N__2487\,
            I => \N__2454\
        );

    \I__468\ : ClkMux
    port map (
            O => \N__2486\,
            I => \N__2454\
        );

    \I__467\ : ClkMux
    port map (
            O => \N__2485\,
            I => \N__2454\
        );

    \I__466\ : ClkMux
    port map (
            O => \N__2484\,
            I => \N__2454\
        );

    \I__465\ : ClkMux
    port map (
            O => \N__2483\,
            I => \N__2454\
        );

    \I__464\ : ClkMux
    port map (
            O => \N__2482\,
            I => \N__2454\
        );

    \I__463\ : ClkMux
    port map (
            O => \N__2481\,
            I => \N__2454\
        );

    \I__462\ : GlobalMux
    port map (
            O => \N__2454\,
            I => \N__2451\
        );

    \I__461\ : gio2CtrlBuf
    port map (
            O => \N__2451\,
            I => \CLK_N\
        );

    \I__460\ : IoInMux
    port map (
            O => \N__2448\,
            I => \N__2445\
        );

    \I__459\ : LocalMux
    port map (
            O => \N__2445\,
            I => \N__2439\
        );

    \I__458\ : InMux
    port map (
            O => \N__2444\,
            I => \N__2432\
        );

    \I__457\ : InMux
    port map (
            O => \N__2443\,
            I => \N__2432\
        );

    \I__456\ : InMux
    port map (
            O => \N__2442\,
            I => \N__2432\
        );

    \I__455\ : Sp12to4
    port map (
            O => \N__2439\,
            I => \N__2429\
        );

    \I__454\ : LocalMux
    port map (
            O => \N__2432\,
            I => \N__2426\
        );

    \I__453\ : Span12Mux_h
    port map (
            O => \N__2429\,
            I => \N__2423\
        );

    \I__452\ : Span12Mux_s9_h
    port map (
            O => \N__2426\,
            I => \N__2420\
        );

    \I__451\ : Odrv12
    port map (
            O => \N__2423\,
            I => \CONSTANT_ONE_NET\
        );

    \I__450\ : Odrv12
    port map (
            O => \N__2420\,
            I => \CONSTANT_ONE_NET\
        );

    \I__449\ : InMux
    port map (
            O => \N__2415\,
            I => \N__2411\
        );

    \I__448\ : InMux
    port map (
            O => \N__2414\,
            I => \N__2408\
        );

    \I__447\ : LocalMux
    port map (
            O => \N__2411\,
            I => \tli.delay_counter_20\
        );

    \I__446\ : LocalMux
    port map (
            O => \N__2408\,
            I => \tli.delay_counter_20\
        );

    \I__445\ : InMux
    port map (
            O => \N__2403\,
            I => \tli.n1036\
        );

    \I__444\ : InMux
    port map (
            O => \N__2400\,
            I => \N__2396\
        );

    \I__443\ : InMux
    port map (
            O => \N__2399\,
            I => \N__2393\
        );

    \I__442\ : LocalMux
    port map (
            O => \N__2396\,
            I => \tli.delay_counter_21\
        );

    \I__441\ : LocalMux
    port map (
            O => \N__2393\,
            I => \tli.delay_counter_21\
        );

    \I__440\ : InMux
    port map (
            O => \N__2388\,
            I => \tli.n1037\
        );

    \I__439\ : InMux
    port map (
            O => \N__2385\,
            I => \N__2381\
        );

    \I__438\ : InMux
    port map (
            O => \N__2384\,
            I => \N__2378\
        );

    \I__437\ : LocalMux
    port map (
            O => \N__2381\,
            I => \tli.delay_counter_22\
        );

    \I__436\ : LocalMux
    port map (
            O => \N__2378\,
            I => \tli.delay_counter_22\
        );

    \I__435\ : InMux
    port map (
            O => \N__2373\,
            I => \tli.n1038\
        );

    \I__434\ : InMux
    port map (
            O => \N__2370\,
            I => \N__2366\
        );

    \I__433\ : InMux
    port map (
            O => \N__2369\,
            I => \N__2363\
        );

    \I__432\ : LocalMux
    port map (
            O => \N__2366\,
            I => \tli.delay_counter_23\
        );

    \I__431\ : LocalMux
    port map (
            O => \N__2363\,
            I => \tli.delay_counter_23\
        );

    \I__430\ : InMux
    port map (
            O => \N__2358\,
            I => \tli.n1039\
        );

    \I__429\ : InMux
    port map (
            O => \N__2355\,
            I => \N__2351\
        );

    \I__428\ : InMux
    port map (
            O => \N__2354\,
            I => \N__2348\
        );

    \I__427\ : LocalMux
    port map (
            O => \N__2351\,
            I => \tli.delay_counter_24\
        );

    \I__426\ : LocalMux
    port map (
            O => \N__2348\,
            I => \tli.delay_counter_24\
        );

    \I__425\ : InMux
    port map (
            O => \N__2343\,
            I => \bfn_7_25_0_\
        );

    \I__424\ : InMux
    port map (
            O => \N__2340\,
            I => \N__2336\
        );

    \I__423\ : InMux
    port map (
            O => \N__2339\,
            I => \N__2333\
        );

    \I__422\ : LocalMux
    port map (
            O => \N__2336\,
            I => \tli.delay_counter_25\
        );

    \I__421\ : LocalMux
    port map (
            O => \N__2333\,
            I => \tli.delay_counter_25\
        );

    \I__420\ : InMux
    port map (
            O => \N__2328\,
            I => \tli.n1041\
        );

    \I__419\ : CascadeMux
    port map (
            O => \N__2325\,
            I => \N__2321\
        );

    \I__418\ : InMux
    port map (
            O => \N__2324\,
            I => \N__2318\
        );

    \I__417\ : InMux
    port map (
            O => \N__2321\,
            I => \N__2315\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__2318\,
            I => \tli.delay_counter_26\
        );

    \I__415\ : LocalMux
    port map (
            O => \N__2315\,
            I => \tli.delay_counter_26\
        );

    \I__414\ : InMux
    port map (
            O => \N__2310\,
            I => \tli.n1042\
        );

    \I__413\ : CascadeMux
    port map (
            O => \N__2307\,
            I => \N__2303\
        );

    \I__412\ : InMux
    port map (
            O => \N__2306\,
            I => \N__2300\
        );

    \I__411\ : InMux
    port map (
            O => \N__2303\,
            I => \N__2297\
        );

    \I__410\ : LocalMux
    port map (
            O => \N__2300\,
            I => \tli.delay_counter_27\
        );

    \I__409\ : LocalMux
    port map (
            O => \N__2297\,
            I => \tli.delay_counter_27\
        );

    \I__408\ : InMux
    port map (
            O => \N__2292\,
            I => \tli.n1043\
        );

    \I__407\ : CascadeMux
    port map (
            O => \N__2289\,
            I => \N__2285\
        );

    \I__406\ : InMux
    port map (
            O => \N__2288\,
            I => \N__2282\
        );

    \I__405\ : InMux
    port map (
            O => \N__2285\,
            I => \N__2279\
        );

    \I__404\ : LocalMux
    port map (
            O => \N__2282\,
            I => \tli.delay_counter_11_N\
        );

    \I__403\ : LocalMux
    port map (
            O => \N__2279\,
            I => \tli.delay_counter_11_N\
        );

    \I__402\ : InMux
    port map (
            O => \N__2274\,
            I => \tli.n1027\
        );

    \I__401\ : InMux
    port map (
            O => \N__2271\,
            I => \N__2267\
        );

    \I__400\ : InMux
    port map (
            O => \N__2270\,
            I => \N__2264\
        );

    \I__399\ : LocalMux
    port map (
            O => \N__2267\,
            I => \tli.delay_counter_12_N\
        );

    \I__398\ : LocalMux
    port map (
            O => \N__2264\,
            I => \tli.delay_counter_12_N\
        );

    \I__397\ : InMux
    port map (
            O => \N__2259\,
            I => \tli.n1028\
        );

    \I__396\ : InMux
    port map (
            O => \N__2256\,
            I => \N__2252\
        );

    \I__395\ : InMux
    port map (
            O => \N__2255\,
            I => \N__2249\
        );

    \I__394\ : LocalMux
    port map (
            O => \N__2252\,
            I => \tli.delay_counter_13_N\
        );

    \I__393\ : LocalMux
    port map (
            O => \N__2249\,
            I => \tli.delay_counter_13_N\
        );

    \I__392\ : InMux
    port map (
            O => \N__2244\,
            I => \tli.n1029\
        );

    \I__391\ : InMux
    port map (
            O => \N__2241\,
            I => \N__2237\
        );

    \I__390\ : InMux
    port map (
            O => \N__2240\,
            I => \N__2234\
        );

    \I__389\ : LocalMux
    port map (
            O => \N__2237\,
            I => \tli.delay_counter_14_N\
        );

    \I__388\ : LocalMux
    port map (
            O => \N__2234\,
            I => \tli.delay_counter_14_N\
        );

    \I__387\ : InMux
    port map (
            O => \N__2229\,
            I => \tli.n1030\
        );

    \I__386\ : InMux
    port map (
            O => \N__2226\,
            I => \tli.n1031\
        );

    \I__385\ : InMux
    port map (
            O => \N__2223\,
            I => \N__2219\
        );

    \I__384\ : InMux
    port map (
            O => \N__2222\,
            I => \N__2216\
        );

    \I__383\ : LocalMux
    port map (
            O => \N__2219\,
            I => \tli.delay_counter_16\
        );

    \I__382\ : LocalMux
    port map (
            O => \N__2216\,
            I => \tli.delay_counter_16\
        );

    \I__381\ : InMux
    port map (
            O => \N__2211\,
            I => \bfn_7_24_0_\
        );

    \I__380\ : InMux
    port map (
            O => \N__2208\,
            I => \N__2204\
        );

    \I__379\ : InMux
    port map (
            O => \N__2207\,
            I => \N__2201\
        );

    \I__378\ : LocalMux
    port map (
            O => \N__2204\,
            I => \tli.delay_counter_17\
        );

    \I__377\ : LocalMux
    port map (
            O => \N__2201\,
            I => \tli.delay_counter_17\
        );

    \I__376\ : InMux
    port map (
            O => \N__2196\,
            I => \tli.n1033\
        );

    \I__375\ : CascadeMux
    port map (
            O => \N__2193\,
            I => \N__2189\
        );

    \I__374\ : InMux
    port map (
            O => \N__2192\,
            I => \N__2186\
        );

    \I__373\ : InMux
    port map (
            O => \N__2189\,
            I => \N__2183\
        );

    \I__372\ : LocalMux
    port map (
            O => \N__2186\,
            I => \tli.delay_counter_18\
        );

    \I__371\ : LocalMux
    port map (
            O => \N__2183\,
            I => \tli.delay_counter_18\
        );

    \I__370\ : InMux
    port map (
            O => \N__2178\,
            I => \tli.n1034\
        );

    \I__369\ : InMux
    port map (
            O => \N__2175\,
            I => \N__2171\
        );

    \I__368\ : InMux
    port map (
            O => \N__2174\,
            I => \N__2168\
        );

    \I__367\ : LocalMux
    port map (
            O => \N__2171\,
            I => \tli.delay_counter_19\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__2168\,
            I => \tli.delay_counter_19\
        );

    \I__365\ : InMux
    port map (
            O => \N__2163\,
            I => \tli.n1035\
        );

    \I__364\ : InMux
    port map (
            O => \N__2160\,
            I => \N__2156\
        );

    \I__363\ : InMux
    port map (
            O => \N__2159\,
            I => \N__2153\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__2156\,
            I => \tli.delay_counter_3_N\
        );

    \I__361\ : LocalMux
    port map (
            O => \N__2153\,
            I => \tli.delay_counter_3_N\
        );

    \I__360\ : InMux
    port map (
            O => \N__2148\,
            I => \tli.n1019\
        );

    \I__359\ : InMux
    port map (
            O => \N__2145\,
            I => \N__2141\
        );

    \I__358\ : InMux
    port map (
            O => \N__2144\,
            I => \N__2138\
        );

    \I__357\ : LocalMux
    port map (
            O => \N__2141\,
            I => \tli.delay_counter_4_N\
        );

    \I__356\ : LocalMux
    port map (
            O => \N__2138\,
            I => \tli.delay_counter_4_N\
        );

    \I__355\ : InMux
    port map (
            O => \N__2133\,
            I => \tli.n1020\
        );

    \I__354\ : InMux
    port map (
            O => \N__2130\,
            I => \N__2126\
        );

    \I__353\ : InMux
    port map (
            O => \N__2129\,
            I => \N__2123\
        );

    \I__352\ : LocalMux
    port map (
            O => \N__2126\,
            I => \tli.delay_counter_5_N\
        );

    \I__351\ : LocalMux
    port map (
            O => \N__2123\,
            I => \tli.delay_counter_5_N\
        );

    \I__350\ : InMux
    port map (
            O => \N__2118\,
            I => \tli.n1021\
        );

    \I__349\ : InMux
    port map (
            O => \N__2115\,
            I => \N__2111\
        );

    \I__348\ : InMux
    port map (
            O => \N__2114\,
            I => \N__2108\
        );

    \I__347\ : LocalMux
    port map (
            O => \N__2111\,
            I => \tli.delay_counter_6_N\
        );

    \I__346\ : LocalMux
    port map (
            O => \N__2108\,
            I => \tli.delay_counter_6_N\
        );

    \I__345\ : InMux
    port map (
            O => \N__2103\,
            I => \tli.n1022\
        );

    \I__344\ : InMux
    port map (
            O => \N__2100\,
            I => \N__2096\
        );

    \I__343\ : InMux
    port map (
            O => \N__2099\,
            I => \N__2093\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__2096\,
            I => \tli.delay_counter_7_N\
        );

    \I__341\ : LocalMux
    port map (
            O => \N__2093\,
            I => \tli.delay_counter_7_N\
        );

    \I__340\ : InMux
    port map (
            O => \N__2088\,
            I => \tli.n1023\
        );

    \I__339\ : CascadeMux
    port map (
            O => \N__2085\,
            I => \N__2081\
        );

    \I__338\ : InMux
    port map (
            O => \N__2084\,
            I => \N__2078\
        );

    \I__337\ : InMux
    port map (
            O => \N__2081\,
            I => \N__2075\
        );

    \I__336\ : LocalMux
    port map (
            O => \N__2078\,
            I => \tli.delay_counter_8_N\
        );

    \I__335\ : LocalMux
    port map (
            O => \N__2075\,
            I => \tli.delay_counter_8_N\
        );

    \I__334\ : InMux
    port map (
            O => \N__2070\,
            I => \bfn_7_23_0_\
        );

    \I__333\ : CascadeMux
    port map (
            O => \N__2067\,
            I => \N__2063\
        );

    \I__332\ : InMux
    port map (
            O => \N__2066\,
            I => \N__2060\
        );

    \I__331\ : InMux
    port map (
            O => \N__2063\,
            I => \N__2057\
        );

    \I__330\ : LocalMux
    port map (
            O => \N__2060\,
            I => \tli.delay_counter_9_N\
        );

    \I__329\ : LocalMux
    port map (
            O => \N__2057\,
            I => \tli.delay_counter_9_N\
        );

    \I__328\ : InMux
    port map (
            O => \N__2052\,
            I => \tli.n1025\
        );

    \I__327\ : InMux
    port map (
            O => \N__2049\,
            I => \N__2045\
        );

    \I__326\ : InMux
    port map (
            O => \N__2048\,
            I => \N__2042\
        );

    \I__325\ : LocalMux
    port map (
            O => \N__2045\,
            I => \tli.delay_counter_10_N\
        );

    \I__324\ : LocalMux
    port map (
            O => \N__2042\,
            I => \tli.delay_counter_10_N\
        );

    \I__323\ : InMux
    port map (
            O => \N__2037\,
            I => \tli.n1026\
        );

    \I__322\ : InMux
    port map (
            O => \N__2034\,
            I => \N__2031\
        );

    \I__321\ : LocalMux
    port map (
            O => \N__2031\,
            I => n150
        );

    \I__320\ : InMux
    port map (
            O => \N__2028\,
            I => \N__2025\
        );

    \I__319\ : LocalMux
    port map (
            O => \N__2025\,
            I => n144
        );

    \I__318\ : InMux
    port map (
            O => \N__2022\,
            I => \N__2019\
        );

    \I__317\ : LocalMux
    port map (
            O => \N__2019\,
            I => \N__2016\
        );

    \I__316\ : Odrv4
    port map (
            O => \N__2016\,
            I => \tli.n28\
        );

    \I__315\ : InMux
    port map (
            O => \N__2013\,
            I => \N__2010\
        );

    \I__314\ : LocalMux
    port map (
            O => \N__2010\,
            I => \tli.n26\
        );

    \I__313\ : InMux
    port map (
            O => \N__2007\,
            I => \N__2004\
        );

    \I__312\ : LocalMux
    port map (
            O => \N__2004\,
            I => n162
        );

    \I__311\ : InMux
    port map (
            O => \N__2001\,
            I => \N__1998\
        );

    \I__310\ : LocalMux
    port map (
            O => \N__1998\,
            I => \N__1995\
        );

    \I__309\ : Odrv4
    port map (
            O => \N__1995\,
            I => \tli.n27\
        );

    \I__308\ : InMux
    port map (
            O => \N__1992\,
            I => \N__1988\
        );

    \I__307\ : InMux
    port map (
            O => \N__1991\,
            I => \N__1985\
        );

    \I__306\ : LocalMux
    port map (
            O => \N__1988\,
            I => \tli.delay_counter_0_N\
        );

    \I__305\ : LocalMux
    port map (
            O => \N__1985\,
            I => \tli.delay_counter_0_N\
        );

    \I__304\ : InMux
    port map (
            O => \N__1980\,
            I => \bfn_7_22_0_\
        );

    \I__303\ : InMux
    port map (
            O => \N__1977\,
            I => \N__1973\
        );

    \I__302\ : InMux
    port map (
            O => \N__1976\,
            I => \N__1970\
        );

    \I__301\ : LocalMux
    port map (
            O => \N__1973\,
            I => \tli.delay_counter_1_N\
        );

    \I__300\ : LocalMux
    port map (
            O => \N__1970\,
            I => \tli.delay_counter_1_N\
        );

    \I__299\ : InMux
    port map (
            O => \N__1965\,
            I => \tli.n1017\
        );

    \I__298\ : InMux
    port map (
            O => \N__1962\,
            I => \N__1958\
        );

    \I__297\ : InMux
    port map (
            O => \N__1961\,
            I => \N__1955\
        );

    \I__296\ : LocalMux
    port map (
            O => \N__1958\,
            I => \tli.delay_counter_2_N\
        );

    \I__295\ : LocalMux
    port map (
            O => \N__1955\,
            I => \tli.delay_counter_2_N\
        );

    \I__294\ : InMux
    port map (
            O => \N__1950\,
            I => \tli.n1018\
        );

    \I__293\ : InMux
    port map (
            O => \N__1947\,
            I => \N__1944\
        );

    \I__292\ : LocalMux
    port map (
            O => \N__1944\,
            I => \tli.n15\
        );

    \I__291\ : InMux
    port map (
            O => \N__1941\,
            I => \N__1938\
        );

    \I__290\ : LocalMux
    port map (
            O => \N__1938\,
            I => \tli.n16\
        );

    \I__289\ : CascadeMux
    port map (
            O => \N__1935\,
            I => \tli.n22_cascade_\
        );

    \I__288\ : InMux
    port map (
            O => \N__1932\,
            I => \N__1929\
        );

    \I__287\ : LocalMux
    port map (
            O => \N__1929\,
            I => \tli.n10_adj_301\
        );

    \I__286\ : CascadeMux
    port map (
            O => \N__1926\,
            I => \tli.n17_cascade_\
        );

    \I__285\ : CascadeMux
    port map (
            O => \N__1923\,
            I => \tli.n29_cascade_\
        );

    \I__284\ : CascadeMux
    port map (
            O => \N__1920\,
            I => \tli.current_14__N_89_cascade_\
        );

    \I__283\ : InMux
    port map (
            O => \N__1917\,
            I => \N__1911\
        );

    \I__282\ : InMux
    port map (
            O => \N__1916\,
            I => \N__1911\
        );

    \I__281\ : LocalMux
    port map (
            O => \N__1911\,
            I => \tli.current_14__N_89\
        );

    \I__280\ : InMux
    port map (
            O => \N__1908\,
            I => \N__1905\
        );

    \I__279\ : LocalMux
    port map (
            O => \N__1905\,
            I => n146
        );

    \I__278\ : InMux
    port map (
            O => \N__1902\,
            I => \N__1899\
        );

    \I__277\ : LocalMux
    port map (
            O => \N__1899\,
            I => n164
        );

    \I__276\ : InMux
    port map (
            O => \N__1896\,
            I => \N__1893\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1893\,
            I => n166
        );

    \I__274\ : InMux
    port map (
            O => \N__1890\,
            I => \N__1887\
        );

    \I__273\ : LocalMux
    port map (
            O => \N__1887\,
            I => n160
        );

    \I__272\ : InMux
    port map (
            O => \N__1884\,
            I => \N__1881\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1881\,
            I => n156
        );

    \I__270\ : InMux
    port map (
            O => \N__1878\,
            I => \N__1875\
        );

    \I__269\ : LocalMux
    port map (
            O => \N__1875\,
            I => n152
        );

    \I__268\ : CascadeMux
    port map (
            O => \N__1872\,
            I => \tli.n10_cascade_\
        );

    \I__267\ : InMux
    port map (
            O => \N__1869\,
            I => \N__1866\
        );

    \I__266\ : LocalMux
    port map (
            O => \N__1866\,
            I => n154
        );

    \I__265\ : InMux
    port map (
            O => \N__1863\,
            I => \N__1860\
        );

    \I__264\ : LocalMux
    port map (
            O => \N__1860\,
            I => n158
        );

    \I__263\ : InMux
    port map (
            O => \N__1857\,
            I => n1014
        );

    \I__262\ : InMux
    port map (
            O => \N__1854\,
            I => \bfn_5_24_0_\
        );

    \I__261\ : InMux
    port map (
            O => \N__1851\,
            I => n1016
        );

    \I__260\ : InMux
    port map (
            O => \N__1848\,
            I => \N__1842\
        );

    \I__259\ : InMux
    port map (
            O => \N__1847\,
            I => \N__1842\
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1842\,
            I => blink_counter_25
        );

    \I__257\ : IoInMux
    port map (
            O => \N__1839\,
            I => \N__1836\
        );

    \I__256\ : LocalMux
    port map (
            O => \N__1836\,
            I => \N__1833\
        );

    \I__255\ : Odrv12
    port map (
            O => \N__1833\,
            I => \LED_c\
        );

    \I__254\ : InMux
    port map (
            O => \N__1830\,
            I => \N__1827\
        );

    \I__253\ : LocalMux
    port map (
            O => \N__1827\,
            I => n1083
        );

    \I__252\ : InMux
    port map (
            O => \N__1824\,
            I => \N__1817\
        );

    \I__251\ : InMux
    port map (
            O => \N__1823\,
            I => \N__1817\
        );

    \I__250\ : InMux
    port map (
            O => \N__1822\,
            I => \N__1814\
        );

    \I__249\ : LocalMux
    port map (
            O => \N__1817\,
            I => blink_counter_23
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1814\,
            I => blink_counter_23
        );

    \I__247\ : CascadeMux
    port map (
            O => \N__1809\,
            I => \N__1805\
        );

    \I__246\ : InMux
    port map (
            O => \N__1808\,
            I => \N__1800\
        );

    \I__245\ : InMux
    port map (
            O => \N__1805\,
            I => \N__1800\
        );

    \I__244\ : LocalMux
    port map (
            O => \N__1800\,
            I => \N__1796\
        );

    \I__243\ : InMux
    port map (
            O => \N__1799\,
            I => \N__1793\
        );

    \I__242\ : Odrv4
    port map (
            O => \N__1796\,
            I => blink_counter_22
        );

    \I__241\ : LocalMux
    port map (
            O => \N__1793\,
            I => blink_counter_22
        );

    \I__240\ : CascadeMux
    port map (
            O => \N__1788\,
            I => \N__1785\
        );

    \I__239\ : InMux
    port map (
            O => \N__1785\,
            I => \N__1776\
        );

    \I__238\ : InMux
    port map (
            O => \N__1784\,
            I => \N__1776\
        );

    \I__237\ : InMux
    port map (
            O => \N__1783\,
            I => \N__1776\
        );

    \I__236\ : LocalMux
    port map (
            O => \N__1776\,
            I => blink_counter_24
        );

    \I__235\ : InMux
    port map (
            O => \N__1773\,
            I => \N__1766\
        );

    \I__234\ : InMux
    port map (
            O => \N__1772\,
            I => \N__1766\
        );

    \I__233\ : InMux
    port map (
            O => \N__1771\,
            I => \N__1763\
        );

    \I__232\ : LocalMux
    port map (
            O => \N__1766\,
            I => blink_counter_21
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1763\,
            I => blink_counter_21
        );

    \I__230\ : InMux
    port map (
            O => \N__1758\,
            I => \N__1755\
        );

    \I__229\ : LocalMux
    port map (
            O => \N__1755\,
            I => n1084
        );

    \I__228\ : InMux
    port map (
            O => \N__1752\,
            I => \N__1749\
        );

    \I__227\ : LocalMux
    port map (
            O => \N__1749\,
            I => n168
        );

    \I__226\ : InMux
    port map (
            O => \N__1746\,
            I => \N__1743\
        );

    \I__225\ : LocalMux
    port map (
            O => \N__1743\,
            I => n148
        );

    \I__224\ : InMux
    port map (
            O => \N__1740\,
            I => \N__1737\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1737\,
            I => n12
        );

    \I__222\ : InMux
    port map (
            O => \N__1734\,
            I => n1005
        );

    \I__221\ : InMux
    port map (
            O => \N__1731\,
            I => \N__1728\
        );

    \I__220\ : LocalMux
    port map (
            O => \N__1728\,
            I => n11
        );

    \I__219\ : InMux
    port map (
            O => \N__1725\,
            I => n1006
        );

    \I__218\ : InMux
    port map (
            O => \N__1722\,
            I => \N__1719\
        );

    \I__217\ : LocalMux
    port map (
            O => \N__1719\,
            I => n10
        );

    \I__216\ : InMux
    port map (
            O => \N__1716\,
            I => \bfn_5_23_0_\
        );

    \I__215\ : InMux
    port map (
            O => \N__1713\,
            I => \N__1710\
        );

    \I__214\ : LocalMux
    port map (
            O => \N__1710\,
            I => n9
        );

    \I__213\ : InMux
    port map (
            O => \N__1707\,
            I => n1008
        );

    \I__212\ : InMux
    port map (
            O => \N__1704\,
            I => \N__1701\
        );

    \I__211\ : LocalMux
    port map (
            O => \N__1701\,
            I => n8
        );

    \I__210\ : InMux
    port map (
            O => \N__1698\,
            I => n1009
        );

    \I__209\ : InMux
    port map (
            O => \N__1695\,
            I => \N__1692\
        );

    \I__208\ : LocalMux
    port map (
            O => \N__1692\,
            I => n7
        );

    \I__207\ : InMux
    port map (
            O => \N__1689\,
            I => n1010
        );

    \I__206\ : InMux
    port map (
            O => \N__1686\,
            I => \N__1683\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1683\,
            I => n6
        );

    \I__204\ : InMux
    port map (
            O => \N__1680\,
            I => n1011
        );

    \I__203\ : InMux
    port map (
            O => \N__1677\,
            I => n1012
        );

    \I__202\ : InMux
    port map (
            O => \N__1674\,
            I => n1013
        );

    \I__201\ : InMux
    port map (
            O => \N__1671\,
            I => \N__1668\
        );

    \I__200\ : LocalMux
    port map (
            O => \N__1668\,
            I => n20
        );

    \I__199\ : InMux
    port map (
            O => \N__1665\,
            I => n997
        );

    \I__198\ : InMux
    port map (
            O => \N__1662\,
            I => \N__1659\
        );

    \I__197\ : LocalMux
    port map (
            O => \N__1659\,
            I => n19
        );

    \I__196\ : InMux
    port map (
            O => \N__1656\,
            I => n998
        );

    \I__195\ : InMux
    port map (
            O => \N__1653\,
            I => \N__1650\
        );

    \I__194\ : LocalMux
    port map (
            O => \N__1650\,
            I => n18
        );

    \I__193\ : InMux
    port map (
            O => \N__1647\,
            I => \bfn_5_22_0_\
        );

    \I__192\ : InMux
    port map (
            O => \N__1644\,
            I => \N__1641\
        );

    \I__191\ : LocalMux
    port map (
            O => \N__1641\,
            I => n17
        );

    \I__190\ : InMux
    port map (
            O => \N__1638\,
            I => n1000
        );

    \I__189\ : InMux
    port map (
            O => \N__1635\,
            I => \N__1632\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1632\,
            I => n16
        );

    \I__187\ : InMux
    port map (
            O => \N__1629\,
            I => n1001
        );

    \I__186\ : InMux
    port map (
            O => \N__1626\,
            I => \N__1623\
        );

    \I__185\ : LocalMux
    port map (
            O => \N__1623\,
            I => n15
        );

    \I__184\ : InMux
    port map (
            O => \N__1620\,
            I => n1002
        );

    \I__183\ : InMux
    port map (
            O => \N__1617\,
            I => \N__1614\
        );

    \I__182\ : LocalMux
    port map (
            O => \N__1614\,
            I => n14
        );

    \I__181\ : InMux
    port map (
            O => \N__1611\,
            I => n1003
        );

    \I__180\ : InMux
    port map (
            O => \N__1608\,
            I => \N__1605\
        );

    \I__179\ : LocalMux
    port map (
            O => \N__1605\,
            I => n13
        );

    \I__178\ : InMux
    port map (
            O => \N__1602\,
            I => n1004
        );

    \I__177\ : CascadeMux
    port map (
            O => \N__1599\,
            I => \N__1596\
        );

    \I__176\ : InMux
    port map (
            O => \N__1596\,
            I => \N__1587\
        );

    \I__175\ : InMux
    port map (
            O => \N__1595\,
            I => \N__1587\
        );

    \I__174\ : InMux
    port map (
            O => \N__1594\,
            I => \N__1587\
        );

    \I__173\ : LocalMux
    port map (
            O => \N__1587\,
            I => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_2\
        );

    \I__172\ : InMux
    port map (
            O => \N__1584\,
            I => \N__1572\
        );

    \I__171\ : InMux
    port map (
            O => \N__1583\,
            I => \N__1572\
        );

    \I__170\ : InMux
    port map (
            O => \N__1582\,
            I => \N__1572\
        );

    \I__169\ : InMux
    port map (
            O => \N__1581\,
            I => \N__1572\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__1572\,
            I => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_1\
        );

    \I__167\ : CascadeMux
    port map (
            O => \N__1569\,
            I => \N__1565\
        );

    \I__166\ : InMux
    port map (
            O => \N__1568\,
            I => \N__1560\
        );

    \I__165\ : InMux
    port map (
            O => \N__1565\,
            I => \N__1560\
        );

    \I__164\ : LocalMux
    port map (
            O => \N__1560\,
            I => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_3\
        );

    \I__163\ : InMux
    port map (
            O => \N__1557\,
            I => \N__1542\
        );

    \I__162\ : InMux
    port map (
            O => \N__1556\,
            I => \N__1542\
        );

    \I__161\ : InMux
    port map (
            O => \N__1555\,
            I => \N__1542\
        );

    \I__160\ : InMux
    port map (
            O => \N__1554\,
            I => \N__1542\
        );

    \I__159\ : InMux
    port map (
            O => \N__1553\,
            I => \N__1542\
        );

    \I__158\ : LocalMux
    port map (
            O => \N__1542\,
            I => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_0\
        );

    \I__157\ : InMux
    port map (
            O => \N__1539\,
            I => \N__1536\
        );

    \I__156\ : LocalMux
    port map (
            O => \N__1536\,
            I => n26
        );

    \I__155\ : InMux
    port map (
            O => \N__1533\,
            I => \bfn_5_21_0_\
        );

    \I__154\ : InMux
    port map (
            O => \N__1530\,
            I => \N__1527\
        );

    \I__153\ : LocalMux
    port map (
            O => \N__1527\,
            I => n25
        );

    \I__152\ : InMux
    port map (
            O => \N__1524\,
            I => n992
        );

    \I__151\ : InMux
    port map (
            O => \N__1521\,
            I => \N__1518\
        );

    \I__150\ : LocalMux
    port map (
            O => \N__1518\,
            I => n24
        );

    \I__149\ : InMux
    port map (
            O => \N__1515\,
            I => n993
        );

    \I__148\ : InMux
    port map (
            O => \N__1512\,
            I => \N__1509\
        );

    \I__147\ : LocalMux
    port map (
            O => \N__1509\,
            I => n23
        );

    \I__146\ : InMux
    port map (
            O => \N__1506\,
            I => n994
        );

    \I__145\ : InMux
    port map (
            O => \N__1503\,
            I => \N__1500\
        );

    \I__144\ : LocalMux
    port map (
            O => \N__1500\,
            I => n22
        );

    \I__143\ : InMux
    port map (
            O => \N__1497\,
            I => n995
        );

    \I__142\ : InMux
    port map (
            O => \N__1494\,
            I => \N__1491\
        );

    \I__141\ : LocalMux
    port map (
            O => \N__1491\,
            I => n21
        );

    \I__140\ : InMux
    port map (
            O => \N__1488\,
            I => n996
        );

    \I__139\ : InMux
    port map (
            O => \N__1485\,
            I => \N__1479\
        );

    \I__138\ : InMux
    port map (
            O => \N__1484\,
            I => \N__1479\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__1479\,
            I => n370
        );

    \I__136\ : InMux
    port map (
            O => \N__1476\,
            I => \N__1473\
        );

    \I__135\ : LocalMux
    port map (
            O => \N__1473\,
            I => n368
        );

    \I__134\ : InMux
    port map (
            O => \N__1470\,
            I => \N__1466\
        );

    \I__133\ : InMux
    port map (
            O => \N__1469\,
            I => \N__1463\
        );

    \I__132\ : LocalMux
    port map (
            O => \N__1466\,
            I => spi_2x_ce
        );

    \I__131\ : LocalMux
    port map (
            O => \N__1463\,
            I => spi_2x_ce
        );

    \I__130\ : IoInMux
    port map (
            O => \N__1458\,
            I => \N__1455\
        );

    \I__129\ : LocalMux
    port map (
            O => \N__1455\,
            I => \N__1452\
        );

    \I__128\ : IoSpan4Mux
    port map (
            O => \N__1452\,
            I => \N__1449\
        );

    \I__127\ : IoSpan4Mux
    port map (
            O => \N__1449\,
            I => \N__1446\
        );

    \I__126\ : IoSpan4Mux
    port map (
            O => \N__1446\,
            I => \N__1443\
        );

    \I__125\ : Odrv4
    port map (
            O => \N__1443\,
            I => \CLK_pad_gb_input\
        );

    \IN_MUX_bfv_7_22_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_7_22_0_\
        );

    \IN_MUX_bfv_7_23_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \tli.n1024\,
            carryinitout => \bfn_7_23_0_\
        );

    \IN_MUX_bfv_7_24_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \tli.n1032\,
            carryinitout => \bfn_7_24_0_\
        );

    \IN_MUX_bfv_7_25_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \tli.n1040\,
            carryinitout => \bfn_7_25_0_\
        );

    \IN_MUX_bfv_5_21_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_5_21_0_\
        );

    \IN_MUX_bfv_5_22_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n999,
            carryinitout => \bfn_5_22_0_\
        );

    \IN_MUX_bfv_5_23_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n1007,
            carryinitout => \bfn_5_23_0_\
        );

    \IN_MUX_bfv_5_24_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n1015,
            carryinitout => \bfn_5_24_0_\
        );

    \CLK_pad_gb\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__1458\,
            GLOBALBUFFEROUTPUT => \CLK_N\
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

    \tli.spi.core_n_clk_101_LC_4_21_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1469\,
            in2 => \_gnd_net_\,
            in3 => \N__1484\,
            lcout => n370,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i1_LC_4_21_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101010110101010"
        )
    port map (
            in0 => \N__1555\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1581\,
            lcout => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i2_LC_4_21_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__1582\,
            in1 => \N__1595\,
            in2 => \_gnd_net_\,
            in3 => \N__1556\,
            lcout => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.core_clk_100_LC_4_21_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__1470\,
            in1 => \N__1476\,
            in2 => \_gnd_net_\,
            in3 => \N__1485\,
            lcout => n368,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.spi_2x_ce_98_LC_4_21_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1584\,
            in1 => \N__1594\,
            in2 => \N__1569\,
            in3 => \N__1553\,
            lcout => spi_2x_ce,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i3_LC_4_21_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0110110011001100"
        )
    port map (
            in0 => \N__1557\,
            in1 => \N__1568\,
            in2 => \N__1599\,
            in3 => \N__1583\,
            lcout => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.spi.spi_2x_ce_gen_proc_clk_cnt_184__i0_LC_4_21_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1554\,
            lcout => \tli.spi.spi_2x_ce_gen_proc_clk_cnt_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2481\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i0_LC_5_21_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1539\,
            in2 => \_gnd_net_\,
            in3 => \N__1533\,
            lcout => n26,
            ltout => OPEN,
            carryin => \bfn_5_21_0_\,
            carryout => n992,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i1_LC_5_21_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1530\,
            in2 => \_gnd_net_\,
            in3 => \N__1524\,
            lcout => n25,
            ltout => OPEN,
            carryin => n992,
            carryout => n993,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i2_LC_5_21_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1521\,
            in2 => \_gnd_net_\,
            in3 => \N__1515\,
            lcout => n24,
            ltout => OPEN,
            carryin => n993,
            carryout => n994,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i3_LC_5_21_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1512\,
            in2 => \_gnd_net_\,
            in3 => \N__1506\,
            lcout => n23,
            ltout => OPEN,
            carryin => n994,
            carryout => n995,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i4_LC_5_21_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1503\,
            in2 => \_gnd_net_\,
            in3 => \N__1497\,
            lcout => n22,
            ltout => OPEN,
            carryin => n995,
            carryout => n996,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i5_LC_5_21_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1494\,
            in2 => \_gnd_net_\,
            in3 => \N__1488\,
            lcout => n21,
            ltout => OPEN,
            carryin => n996,
            carryout => n997,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i6_LC_5_21_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1671\,
            in2 => \_gnd_net_\,
            in3 => \N__1665\,
            lcout => n20,
            ltout => OPEN,
            carryin => n997,
            carryout => n998,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i7_LC_5_21_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1662\,
            in2 => \_gnd_net_\,
            in3 => \N__1656\,
            lcout => n19,
            ltout => OPEN,
            carryin => n998,
            carryout => n999,
            clk => \N__2482\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i8_LC_5_22_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1653\,
            in2 => \_gnd_net_\,
            in3 => \N__1647\,
            lcout => n18,
            ltout => OPEN,
            carryin => \bfn_5_22_0_\,
            carryout => n1000,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i9_LC_5_22_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1644\,
            in2 => \_gnd_net_\,
            in3 => \N__1638\,
            lcout => n17,
            ltout => OPEN,
            carryin => n1000,
            carryout => n1001,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i10_LC_5_22_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1635\,
            in2 => \_gnd_net_\,
            in3 => \N__1629\,
            lcout => n16,
            ltout => OPEN,
            carryin => n1001,
            carryout => n1002,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i11_LC_5_22_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1626\,
            in2 => \_gnd_net_\,
            in3 => \N__1620\,
            lcout => n15,
            ltout => OPEN,
            carryin => n1002,
            carryout => n1003,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i12_LC_5_22_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1617\,
            in2 => \_gnd_net_\,
            in3 => \N__1611\,
            lcout => n14,
            ltout => OPEN,
            carryin => n1003,
            carryout => n1004,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i13_LC_5_22_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1608\,
            in2 => \_gnd_net_\,
            in3 => \N__1602\,
            lcout => n13,
            ltout => OPEN,
            carryin => n1004,
            carryout => n1005,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i14_LC_5_22_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1740\,
            in2 => \_gnd_net_\,
            in3 => \N__1734\,
            lcout => n12,
            ltout => OPEN,
            carryin => n1005,
            carryout => n1006,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i15_LC_5_22_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1731\,
            in2 => \_gnd_net_\,
            in3 => \N__1725\,
            lcout => n11,
            ltout => OPEN,
            carryin => n1006,
            carryout => n1007,
            clk => \N__2483\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i16_LC_5_23_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1722\,
            in2 => \_gnd_net_\,
            in3 => \N__1716\,
            lcout => n10,
            ltout => OPEN,
            carryin => \bfn_5_23_0_\,
            carryout => n1008,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i17_LC_5_23_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1713\,
            in2 => \_gnd_net_\,
            in3 => \N__1707\,
            lcout => n9,
            ltout => OPEN,
            carryin => n1008,
            carryout => n1009,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i18_LC_5_23_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1704\,
            in2 => \_gnd_net_\,
            in3 => \N__1698\,
            lcout => n8,
            ltout => OPEN,
            carryin => n1009,
            carryout => n1010,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i19_LC_5_23_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1695\,
            in2 => \_gnd_net_\,
            in3 => \N__1689\,
            lcout => n7,
            ltout => OPEN,
            carryin => n1010,
            carryout => n1011,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i20_LC_5_23_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1686\,
            in2 => \_gnd_net_\,
            in3 => \N__1680\,
            lcout => n6,
            ltout => OPEN,
            carryin => n1011,
            carryout => n1012,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i21_LC_5_23_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1771\,
            in2 => \_gnd_net_\,
            in3 => \N__1677\,
            lcout => blink_counter_21,
            ltout => OPEN,
            carryin => n1012,
            carryout => n1013,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i22_LC_5_23_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1799\,
            in2 => \_gnd_net_\,
            in3 => \N__1674\,
            lcout => blink_counter_22,
            ltout => OPEN,
            carryin => n1013,
            carryout => n1014,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i23_LC_5_23_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1822\,
            in2 => \_gnd_net_\,
            in3 => \N__1857\,
            lcout => blink_counter_23,
            ltout => OPEN,
            carryin => n1014,
            carryout => n1015,
            clk => \N__2484\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i24_LC_5_24_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1783\,
            in2 => \_gnd_net_\,
            in3 => \N__1854\,
            lcout => blink_counter_24,
            ltout => OPEN,
            carryin => \bfn_5_24_0_\,
            carryout => n1016,
            clk => \N__2486\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_182__i25_LC_5_24_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1847\,
            in2 => \_gnd_net_\,
            in3 => \N__1851\,
            lcout => blink_counter_25,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2486\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i715_3_lut_LC_5_24_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001000110111011"
        )
    port map (
            in0 => \N__1848\,
            in1 => \N__1830\,
            in2 => \_gnd_net_\,
            in3 => \N__1758\,
            lcout => \LED_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i713_4_lut_LC_5_24_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1011001010100010"
        )
    port map (
            in0 => \N__1772\,
            in1 => \N__1784\,
            in2 => \N__1809\,
            in3 => \N__1823\,
            lcout => n1083,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i714_4_lut_LC_5_24_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111010100010"
        )
    port map (
            in0 => \N__1824\,
            in1 => \N__1808\,
            in2 => \N__1788\,
            in3 => \N__1773\,
            lcout => n1084,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i1_LC_5_24_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2621\,
            in3 => \N__1752\,
            lcout => n168,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2486\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i11_LC_5_24_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1746\,
            in2 => \_gnd_net_\,
            in3 => \N__2600\,
            lcout => n148,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2486\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i6_4_lut_LC_6_22_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2114\,
            in1 => \N__1961\,
            in2 => \N__2085\,
            in3 => \N__1976\,
            lcout => \tli.n15\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i5_LC_6_22_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1890\,
            in2 => \_gnd_net_\,
            in3 => \N__2591\,
            lcout => n160,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2485\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i7_LC_6_22_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2619\,
            in3 => \N__1884\,
            lcout => n156,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2485\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i9_LC_6_22_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1878\,
            in2 => \_gnd_net_\,
            in3 => \N__2599\,
            lcout => n152,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2485\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i1_2_lut_LC_6_22_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2129\,
            in2 => \_gnd_net_\,
            in3 => \N__2144\,
            lcout => OPEN,
            ltout => \tli.n10_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i7_4_lut_LC_6_22_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1991\,
            in1 => \N__2159\,
            in2 => \N__1872\,
            in3 => \N__2099\,
            lcout => \tli.n16\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i8_LC_6_22_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2620\,
            in3 => \N__1869\,
            lcout => n154,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2485\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i6_LC_6_22_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1863\,
            in2 => \_gnd_net_\,
            in3 => \N__2592\,
            lcout => n158,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2485\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i4_4_lut_LC_6_23_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__2270\,
            in1 => \N__2255\,
            in2 => \N__2289\,
            in3 => \N__2515\,
            lcout => \tli.n10_adj_301\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i1_2_lut_adj_6_LC_6_23_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2443\,
            in2 => \_gnd_net_\,
            in3 => \N__1916\,
            lcout => \tli.n804\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i421_4_lut_LC_6_23_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011101010"
        )
    port map (
            in0 => \N__2048\,
            in1 => \N__1947\,
            in2 => \N__2067\,
            in3 => \N__1941\,
            lcout => OPEN,
            ltout => \tli.n22_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i1_4_lut_LC_6_23_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110101010101010"
        )
    port map (
            in0 => \N__2222\,
            in1 => \N__2240\,
            in2 => \N__1935\,
            in3 => \N__1932\,
            lcout => OPEN,
            ltout => \tli.n17_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i13_4_lut_LC_6_23_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2721\,
            in1 => \N__2384\,
            in2 => \N__1926\,
            in3 => \N__2013\,
            lcout => OPEN,
            ltout => \tli.n29_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i620_4_lut_LC_6_23_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010101010100"
        )
    port map (
            in0 => \N__2682\,
            in1 => \N__2022\,
            in2 => \N__1923\,
            in3 => \N__2001\,
            lcout => \tli.current_14__N_89\,
            ltout => \tli.current_14__N_89_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i1_2_lut_adj_5_LC_6_23_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010000010100000"
        )
    port map (
            in0 => \N__2442\,
            in1 => \_gnd_net_\,
            in2 => \N__1920\,
            in3 => \_gnd_net_\,
            lcout => \tli.n841\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.wren_18_LC_6_23_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2444\,
            in2 => \_gnd_net_\,
            in3 => \N__1917\,
            lcout => \wren_N_keep\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2487\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i12_LC_6_24_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2616\,
            in3 => \N__1908\,
            lcout => n146,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i3_LC_6_24_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1902\,
            in2 => \_gnd_net_\,
            in3 => \N__2589\,
            lcout => n164,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i2_LC_6_24_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2618\,
            in3 => \N__1896\,
            lcout => n166,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i10_LC_6_24_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2034\,
            in2 => \_gnd_net_\,
            in3 => \N__2579\,
            lcout => n150,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i13_LC_6_24_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111101000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2617\,
            in3 => \N__2028\,
            lcout => n144,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i12_4_lut_LC_6_24_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2414\,
            in1 => \N__2354\,
            in2 => \N__2193\,
            in3 => \N__2399\,
            lcout => \tli.n28\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i10_4_lut_LC_6_24_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2369\,
            in1 => \N__2207\,
            in2 => \N__2325\,
            in3 => \N__2174\,
            lcout => \tli.n26\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.current__i4_LC_6_24_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101100011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2007\,
            in2 => \_gnd_net_\,
            in3 => \N__2590\,
            lcout => n162,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2489\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.i11_4_lut_LC_6_25_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2339\,
            in1 => \N__2699\,
            in2 => \N__2307\,
            in3 => \N__2735\,
            lcout => \tli.n27\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tli.delay_counter_183__i0_LC_7_22_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1992\,
            in2 => \_gnd_net_\,
            in3 => \N__1980\,
            lcout => \tli.delay_counter_0_N\,
            ltout => OPEN,
            carryin => \bfn_7_22_0_\,
            carryout => \tli.n1017\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i1_LC_7_22_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1977\,
            in2 => \_gnd_net_\,
            in3 => \N__1965\,
            lcout => \tli.delay_counter_1_N\,
            ltout => OPEN,
            carryin => \tli.n1017\,
            carryout => \tli.n1018\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i2_LC_7_22_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1962\,
            in2 => \_gnd_net_\,
            in3 => \N__1950\,
            lcout => \tli.delay_counter_2_N\,
            ltout => OPEN,
            carryin => \tli.n1018\,
            carryout => \tli.n1019\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i3_LC_7_22_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2160\,
            in2 => \_gnd_net_\,
            in3 => \N__2148\,
            lcout => \tli.delay_counter_3_N\,
            ltout => OPEN,
            carryin => \tli.n1019\,
            carryout => \tli.n1020\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i4_LC_7_22_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2145\,
            in2 => \_gnd_net_\,
            in3 => \N__2133\,
            lcout => \tli.delay_counter_4_N\,
            ltout => OPEN,
            carryin => \tli.n1020\,
            carryout => \tli.n1021\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i5_LC_7_22_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2130\,
            in2 => \_gnd_net_\,
            in3 => \N__2118\,
            lcout => \tli.delay_counter_5_N\,
            ltout => OPEN,
            carryin => \tli.n1021\,
            carryout => \tli.n1022\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i6_LC_7_22_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2115\,
            in2 => \_gnd_net_\,
            in3 => \N__2103\,
            lcout => \tli.delay_counter_6_N\,
            ltout => OPEN,
            carryin => \tli.n1022\,
            carryout => \tli.n1023\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i7_LC_7_22_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2100\,
            in2 => \_gnd_net_\,
            in3 => \N__2088\,
            lcout => \tli.delay_counter_7_N\,
            ltout => OPEN,
            carryin => \tli.n1023\,
            carryout => \tli.n1024\,
            clk => \N__2488\,
            ce => \N__2663\,
            sr => \N__2630\
        );

    \tli.delay_counter_183__i8_LC_7_23_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2084\,
            in2 => \_gnd_net_\,
            in3 => \N__2070\,
            lcout => \tli.delay_counter_8_N\,
            ltout => OPEN,
            carryin => \bfn_7_23_0_\,
            carryout => \tli.n1025\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i9_LC_7_23_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2066\,
            in2 => \_gnd_net_\,
            in3 => \N__2052\,
            lcout => \tli.delay_counter_9_N\,
            ltout => OPEN,
            carryin => \tli.n1025\,
            carryout => \tli.n1026\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i10_LC_7_23_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2049\,
            in2 => \_gnd_net_\,
            in3 => \N__2037\,
            lcout => \tli.delay_counter_10_N\,
            ltout => OPEN,
            carryin => \tli.n1026\,
            carryout => \tli.n1027\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i11_LC_7_23_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2288\,
            in2 => \_gnd_net_\,
            in3 => \N__2274\,
            lcout => \tli.delay_counter_11_N\,
            ltout => OPEN,
            carryin => \tli.n1027\,
            carryout => \tli.n1028\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i12_LC_7_23_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2271\,
            in2 => \_gnd_net_\,
            in3 => \N__2259\,
            lcout => \tli.delay_counter_12_N\,
            ltout => OPEN,
            carryin => \tli.n1028\,
            carryout => \tli.n1029\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i13_LC_7_23_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2256\,
            in2 => \_gnd_net_\,
            in3 => \N__2244\,
            lcout => \tli.delay_counter_13_N\,
            ltout => OPEN,
            carryin => \tli.n1029\,
            carryout => \tli.n1030\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i14_LC_7_23_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2241\,
            in2 => \_gnd_net_\,
            in3 => \N__2229\,
            lcout => \tli.delay_counter_14_N\,
            ltout => OPEN,
            carryin => \tli.n1030\,
            carryout => \tli.n1031\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i15_LC_7_23_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2516\,
            in2 => \_gnd_net_\,
            in3 => \N__2226\,
            lcout => \delay_counter_15_N_keep\,
            ltout => OPEN,
            carryin => \tli.n1031\,
            carryout => \tli.n1032\,
            clk => \N__2490\,
            ce => \N__2650\,
            sr => \N__2622\
        );

    \tli.delay_counter_183__i16_LC_7_24_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2223\,
            in2 => \_gnd_net_\,
            in3 => \N__2211\,
            lcout => \tli.delay_counter_16\,
            ltout => OPEN,
            carryin => \bfn_7_24_0_\,
            carryout => \tli.n1033\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i17_LC_7_24_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2208\,
            in2 => \_gnd_net_\,
            in3 => \N__2196\,
            lcout => \tli.delay_counter_17\,
            ltout => OPEN,
            carryin => \tli.n1033\,
            carryout => \tli.n1034\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i18_LC_7_24_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2192\,
            in2 => \_gnd_net_\,
            in3 => \N__2178\,
            lcout => \tli.delay_counter_18\,
            ltout => OPEN,
            carryin => \tli.n1034\,
            carryout => \tli.n1035\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i19_LC_7_24_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2175\,
            in2 => \_gnd_net_\,
            in3 => \N__2163\,
            lcout => \tli.delay_counter_19\,
            ltout => OPEN,
            carryin => \tli.n1035\,
            carryout => \tli.n1036\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i20_LC_7_24_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2415\,
            in2 => \_gnd_net_\,
            in3 => \N__2403\,
            lcout => \tli.delay_counter_20\,
            ltout => OPEN,
            carryin => \tli.n1036\,
            carryout => \tli.n1037\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i21_LC_7_24_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2400\,
            in2 => \_gnd_net_\,
            in3 => \N__2388\,
            lcout => \tli.delay_counter_21\,
            ltout => OPEN,
            carryin => \tli.n1037\,
            carryout => \tli.n1038\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i22_LC_7_24_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2385\,
            in2 => \_gnd_net_\,
            in3 => \N__2373\,
            lcout => \tli.delay_counter_22\,
            ltout => OPEN,
            carryin => \tli.n1038\,
            carryout => \tli.n1039\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i23_LC_7_24_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2370\,
            in2 => \_gnd_net_\,
            in3 => \N__2358\,
            lcout => \tli.delay_counter_23\,
            ltout => OPEN,
            carryin => \tli.n1039\,
            carryout => \tli.n1040\,
            clk => \N__2491\,
            ce => \N__2664\,
            sr => \N__2631\
        );

    \tli.delay_counter_183__i24_LC_7_25_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2355\,
            in2 => \_gnd_net_\,
            in3 => \N__2343\,
            lcout => \tli.delay_counter_24\,
            ltout => OPEN,
            carryin => \bfn_7_25_0_\,
            carryout => \tli.n1041\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i25_LC_7_25_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2340\,
            in2 => \_gnd_net_\,
            in3 => \N__2328\,
            lcout => \tli.delay_counter_25\,
            ltout => OPEN,
            carryin => \tli.n1041\,
            carryout => \tli.n1042\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i26_LC_7_25_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2324\,
            in2 => \_gnd_net_\,
            in3 => \N__2310\,
            lcout => \tli.delay_counter_26\,
            ltout => OPEN,
            carryin => \tli.n1042\,
            carryout => \tli.n1043\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i27_LC_7_25_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2306\,
            in2 => \_gnd_net_\,
            in3 => \N__2292\,
            lcout => \tli.delay_counter_27\,
            ltout => OPEN,
            carryin => \tli.n1043\,
            carryout => \tli.n1044\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i28_LC_7_25_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2736\,
            in2 => \_gnd_net_\,
            in3 => \N__2724\,
            lcout => \tli.delay_counter_28\,
            ltout => OPEN,
            carryin => \tli.n1044\,
            carryout => \tli.n1045\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i29_LC_7_25_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2717\,
            in2 => \_gnd_net_\,
            in3 => \N__2703\,
            lcout => \tli.delay_counter_29\,
            ltout => OPEN,
            carryin => \tli.n1045\,
            carryout => \tli.n1046\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i30_LC_7_25_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2700\,
            in2 => \_gnd_net_\,
            in3 => \N__2688\,
            lcout => \tli.delay_counter_30\,
            ltout => OPEN,
            carryin => \tli.n1046\,
            carryout => \tli.n1047\,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.delay_counter_183__i31_LC_7_25_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2678\,
            in2 => \_gnd_net_\,
            in3 => \N__2685\,
            lcout => \tli.delay_counter_31\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2492\,
            ce => \N__2656\,
            sr => \N__2626\
        );

    \tli.spi.i275_LC_9_23_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2529\,
            in1 => \N__2499\,
            in2 => \_gnd_net_\,
            in3 => \N__2520\,
            lcout => di_reg_15,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2493\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_10_17_6\ : LogicCell40
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
end \INTERFACE\;
