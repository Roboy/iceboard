-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 12 2017 08:26:01

-- File Generated:     Jan 23 2020 15:51:44

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

signal \N__2418\ : std_logic;
signal \N__2417\ : std_logic;
signal \N__2416\ : std_logic;
signal \N__2409\ : std_logic;
signal \N__2408\ : std_logic;
signal \N__2407\ : std_logic;
signal \N__2400\ : std_logic;
signal \N__2399\ : std_logic;
signal \N__2398\ : std_logic;
signal \N__2391\ : std_logic;
signal \N__2390\ : std_logic;
signal \N__2389\ : std_logic;
signal \N__2382\ : std_logic;
signal \N__2381\ : std_logic;
signal \N__2380\ : std_logic;
signal \N__2373\ : std_logic;
signal \N__2372\ : std_logic;
signal \N__2371\ : std_logic;
signal \N__2364\ : std_logic;
signal \N__2363\ : std_logic;
signal \N__2362\ : std_logic;
signal \N__2355\ : std_logic;
signal \N__2354\ : std_logic;
signal \N__2353\ : std_logic;
signal \N__2346\ : std_logic;
signal \N__2345\ : std_logic;
signal \N__2344\ : std_logic;
signal \N__2337\ : std_logic;
signal \N__2336\ : std_logic;
signal \N__2335\ : std_logic;
signal \N__2328\ : std_logic;
signal \N__2327\ : std_logic;
signal \N__2326\ : std_logic;
signal \N__2319\ : std_logic;
signal \N__2318\ : std_logic;
signal \N__2317\ : std_logic;
signal \N__2310\ : std_logic;
signal \N__2309\ : std_logic;
signal \N__2308\ : std_logic;
signal \N__2301\ : std_logic;
signal \N__2300\ : std_logic;
signal \N__2299\ : std_logic;
signal \N__2292\ : std_logic;
signal \N__2291\ : std_logic;
signal \N__2290\ : std_logic;
signal \N__2273\ : std_logic;
signal \N__2272\ : std_logic;
signal \N__2271\ : std_logic;
signal \N__2270\ : std_logic;
signal \N__2269\ : std_logic;
signal \N__2264\ : std_logic;
signal \N__2261\ : std_logic;
signal \N__2256\ : std_logic;
signal \N__2249\ : std_logic;
signal \N__2246\ : std_logic;
signal \N__2245\ : std_logic;
signal \N__2244\ : std_logic;
signal \N__2243\ : std_logic;
signal \N__2240\ : std_logic;
signal \N__2237\ : std_logic;
signal \N__2234\ : std_logic;
signal \N__2231\ : std_logic;
signal \N__2228\ : std_logic;
signal \N__2223\ : std_logic;
signal \N__2216\ : std_logic;
signal \N__2213\ : std_logic;
signal \N__2212\ : std_logic;
signal \N__2209\ : std_logic;
signal \N__2206\ : std_logic;
signal \N__2205\ : std_logic;
signal \N__2200\ : std_logic;
signal \N__2197\ : std_logic;
signal \N__2192\ : std_logic;
signal \N__2189\ : std_logic;
signal \N__2186\ : std_logic;
signal \N__2183\ : std_logic;
signal \N__2180\ : std_logic;
signal \N__2177\ : std_logic;
signal \N__2176\ : std_logic;
signal \N__2173\ : std_logic;
signal \N__2170\ : std_logic;
signal \N__2167\ : std_logic;
signal \N__2164\ : std_logic;
signal \N__2163\ : std_logic;
signal \N__2162\ : std_logic;
signal \N__2161\ : std_logic;
signal \N__2160\ : std_logic;
signal \N__2159\ : std_logic;
signal \N__2156\ : std_logic;
signal \N__2153\ : std_logic;
signal \N__2150\ : std_logic;
signal \N__2145\ : std_logic;
signal \N__2140\ : std_logic;
signal \N__2129\ : std_logic;
signal \N__2128\ : std_logic;
signal \N__2127\ : std_logic;
signal \N__2126\ : std_logic;
signal \N__2125\ : std_logic;
signal \N__2124\ : std_logic;
signal \N__2119\ : std_logic;
signal \N__2112\ : std_logic;
signal \N__2109\ : std_logic;
signal \N__2102\ : std_logic;
signal \N__2101\ : std_logic;
signal \N__2100\ : std_logic;
signal \N__2099\ : std_logic;
signal \N__2098\ : std_logic;
signal \N__2097\ : std_logic;
signal \N__2096\ : std_logic;
signal \N__2093\ : std_logic;
signal \N__2090\ : std_logic;
signal \N__2087\ : std_logic;
signal \N__2084\ : std_logic;
signal \N__2081\ : std_logic;
signal \N__2076\ : std_logic;
signal \N__2071\ : std_logic;
signal \N__2060\ : std_logic;
signal \N__2059\ : std_logic;
signal \N__2058\ : std_logic;
signal \N__2051\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2047\ : std_logic;
signal \N__2046\ : std_logic;
signal \N__2043\ : std_logic;
signal \N__2038\ : std_logic;
signal \N__2033\ : std_logic;
signal \N__2032\ : std_logic;
signal \N__2031\ : std_logic;
signal \N__2028\ : std_logic;
signal \N__2027\ : std_logic;
signal \N__2026\ : std_logic;
signal \N__2023\ : std_logic;
signal \N__2020\ : std_logic;
signal \N__2013\ : std_logic;
signal \N__2006\ : std_logic;
signal \N__2003\ : std_logic;
signal \N__2002\ : std_logic;
signal \N__1999\ : std_logic;
signal \N__1998\ : std_logic;
signal \N__1997\ : std_logic;
signal \N__1996\ : std_logic;
signal \N__1993\ : std_logic;
signal \N__1990\ : std_logic;
signal \N__1983\ : std_logic;
signal \N__1976\ : std_logic;
signal \N__1975\ : std_logic;
signal \N__1974\ : std_logic;
signal \N__1973\ : std_logic;
signal \N__1972\ : std_logic;
signal \N__1971\ : std_logic;
signal \N__1970\ : std_logic;
signal \N__1969\ : std_logic;
signal \N__1968\ : std_logic;
signal \N__1967\ : std_logic;
signal \N__1966\ : std_logic;
signal \N__1965\ : std_logic;
signal \N__1940\ : std_logic;
signal \N__1937\ : std_logic;
signal \N__1934\ : std_logic;
signal \N__1933\ : std_logic;
signal \N__1930\ : std_logic;
signal \N__1927\ : std_logic;
signal \N__1922\ : std_logic;
signal \N__1919\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1913\ : std_logic;
signal \N__1910\ : std_logic;
signal \N__1907\ : std_logic;
signal \N__1904\ : std_logic;
signal \N__1901\ : std_logic;
signal \N__1900\ : std_logic;
signal \N__1897\ : std_logic;
signal \N__1896\ : std_logic;
signal \N__1895\ : std_logic;
signal \N__1892\ : std_logic;
signal \N__1889\ : std_logic;
signal \N__1886\ : std_logic;
signal \N__1883\ : std_logic;
signal \N__1880\ : std_logic;
signal \N__1877\ : std_logic;
signal \N__1874\ : std_logic;
signal \N__1865\ : std_logic;
signal \N__1862\ : std_logic;
signal \N__1861\ : std_logic;
signal \N__1860\ : std_logic;
signal \N__1857\ : std_logic;
signal \N__1856\ : std_logic;
signal \N__1853\ : std_logic;
signal \N__1850\ : std_logic;
signal \N__1847\ : std_logic;
signal \N__1844\ : std_logic;
signal \N__1835\ : std_logic;
signal \N__1832\ : std_logic;
signal \N__1829\ : std_logic;
signal \N__1826\ : std_logic;
signal \N__1823\ : std_logic;
signal \N__1820\ : std_logic;
signal \N__1817\ : std_logic;
signal \N__1814\ : std_logic;
signal \N__1811\ : std_logic;
signal \N__1808\ : std_logic;
signal \N__1805\ : std_logic;
signal \N__1802\ : std_logic;
signal \N__1799\ : std_logic;
signal \N__1796\ : std_logic;
signal \N__1793\ : std_logic;
signal \N__1790\ : std_logic;
signal \N__1787\ : std_logic;
signal \N__1784\ : std_logic;
signal \N__1781\ : std_logic;
signal \N__1778\ : std_logic;
signal \N__1775\ : std_logic;
signal \N__1774\ : std_logic;
signal \N__1771\ : std_logic;
signal \N__1770\ : std_logic;
signal \N__1769\ : std_logic;
signal \N__1766\ : std_logic;
signal \N__1763\ : std_logic;
signal \N__1758\ : std_logic;
signal \N__1751\ : std_logic;
signal \N__1748\ : std_logic;
signal \N__1745\ : std_logic;
signal \N__1742\ : std_logic;
signal \N__1739\ : std_logic;
signal \N__1738\ : std_logic;
signal \N__1737\ : std_logic;
signal \N__1736\ : std_logic;
signal \N__1735\ : std_logic;
signal \N__1728\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1715\ : std_logic;
signal \N__1714\ : std_logic;
signal \N__1713\ : std_logic;
signal \N__1712\ : std_logic;
signal \N__1709\ : std_logic;
signal \N__1708\ : std_logic;
signal \N__1705\ : std_logic;
signal \N__1704\ : std_logic;
signal \N__1701\ : std_logic;
signal \N__1698\ : std_logic;
signal \N__1697\ : std_logic;
signal \N__1690\ : std_logic;
signal \N__1683\ : std_logic;
signal \N__1680\ : std_logic;
signal \N__1673\ : std_logic;
signal \N__1672\ : std_logic;
signal \N__1671\ : std_logic;
signal \N__1670\ : std_logic;
signal \N__1667\ : std_logic;
signal \N__1664\ : std_logic;
signal \N__1661\ : std_logic;
signal \N__1658\ : std_logic;
signal \N__1649\ : std_logic;
signal \N__1648\ : std_logic;
signal \N__1645\ : std_logic;
signal \N__1642\ : std_logic;
signal \N__1637\ : std_logic;
signal \N__1636\ : std_logic;
signal \N__1635\ : std_logic;
signal \N__1632\ : std_logic;
signal \N__1629\ : std_logic;
signal \N__1626\ : std_logic;
signal \N__1619\ : std_logic;
signal \N__1616\ : std_logic;
signal \N__1613\ : std_logic;
signal \N__1612\ : std_logic;
signal \N__1611\ : std_logic;
signal \N__1610\ : std_logic;
signal \N__1607\ : std_logic;
signal \N__1600\ : std_logic;
signal \N__1595\ : std_logic;
signal \N__1592\ : std_logic;
signal \N__1591\ : std_logic;
signal \N__1590\ : std_logic;
signal \N__1589\ : std_logic;
signal \N__1586\ : std_logic;
signal \N__1583\ : std_logic;
signal \N__1578\ : std_logic;
signal \N__1571\ : std_logic;
signal \N__1568\ : std_logic;
signal \N__1565\ : std_logic;
signal \N__1562\ : std_logic;
signal \N__1559\ : std_logic;
signal \N__1558\ : std_logic;
signal \N__1557\ : std_logic;
signal \N__1556\ : std_logic;
signal \N__1553\ : std_logic;
signal \N__1550\ : std_logic;
signal \N__1547\ : std_logic;
signal \N__1544\ : std_logic;
signal \N__1541\ : std_logic;
signal \N__1532\ : std_logic;
signal \N__1531\ : std_logic;
signal \N__1528\ : std_logic;
signal \N__1527\ : std_logic;
signal \N__1526\ : std_logic;
signal \N__1523\ : std_logic;
signal \N__1520\ : std_logic;
signal \N__1517\ : std_logic;
signal \N__1514\ : std_logic;
signal \N__1509\ : std_logic;
signal \N__1502\ : std_logic;
signal \N__1499\ : std_logic;
signal \N__1496\ : std_logic;
signal \N__1493\ : std_logic;
signal \N__1490\ : std_logic;
signal \N__1487\ : std_logic;
signal \N__1484\ : std_logic;
signal \N__1481\ : std_logic;
signal \N__1478\ : std_logic;
signal \N__1475\ : std_logic;
signal \N__1472\ : std_logic;
signal \N__1469\ : std_logic;
signal \N__1466\ : std_logic;
signal \N__1463\ : std_logic;
signal \N__1460\ : std_logic;
signal \N__1457\ : std_logic;
signal \N__1454\ : std_logic;
signal \N__1451\ : std_logic;
signal \N__1448\ : std_logic;
signal \N__1445\ : std_logic;
signal \N__1442\ : std_logic;
signal \N__1439\ : std_logic;
signal \N__1438\ : std_logic;
signal \N__1437\ : std_logic;
signal \N__1432\ : std_logic;
signal \N__1429\ : std_logic;
signal \N__1424\ : std_logic;
signal \N__1421\ : std_logic;
signal \N__1420\ : std_logic;
signal \N__1419\ : std_logic;
signal \N__1414\ : std_logic;
signal \N__1411\ : std_logic;
signal \N__1406\ : std_logic;
signal \N__1403\ : std_logic;
signal \N__1402\ : std_logic;
signal \N__1399\ : std_logic;
signal \N__1396\ : std_logic;
signal \N__1395\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1387\ : std_logic;
signal \N__1382\ : std_logic;
signal \N__1379\ : std_logic;
signal \N__1378\ : std_logic;
signal \N__1377\ : std_logic;
signal \N__1372\ : std_logic;
signal \N__1369\ : std_logic;
signal \N__1364\ : std_logic;
signal \N__1361\ : std_logic;
signal \N__1358\ : std_logic;
signal \N__1357\ : std_logic;
signal \N__1354\ : std_logic;
signal \N__1351\ : std_logic;
signal \N__1346\ : std_logic;
signal \N__1343\ : std_logic;
signal \N__1340\ : std_logic;
signal \N__1337\ : std_logic;
signal \N__1334\ : std_logic;
signal \N__1331\ : std_logic;
signal \N__1328\ : std_logic;
signal \N__1325\ : std_logic;
signal \N__1322\ : std_logic;
signal \N__1319\ : std_logic;
signal \N__1316\ : std_logic;
signal \N__1313\ : std_logic;
signal \N__1310\ : std_logic;
signal \N__1307\ : std_logic;
signal \N__1304\ : std_logic;
signal \N__1301\ : std_logic;
signal \N__1298\ : std_logic;
signal \N__1295\ : std_logic;
signal \N__1292\ : std_logic;
signal \N__1289\ : std_logic;
signal \N__1286\ : std_logic;
signal \N__1283\ : std_logic;
signal \N__1280\ : std_logic;
signal \N__1277\ : std_logic;
signal \N__1274\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1268\ : std_logic;
signal \N__1265\ : std_logic;
signal \N__1262\ : std_logic;
signal \N__1259\ : std_logic;
signal \N__1256\ : std_logic;
signal \N__1253\ : std_logic;
signal \N__1250\ : std_logic;
signal \N__1247\ : std_logic;
signal \N__1244\ : std_logic;
signal \N__1241\ : std_logic;
signal \N__1238\ : std_logic;
signal \N__1235\ : std_logic;
signal \N__1232\ : std_logic;
signal \N__1229\ : std_logic;
signal \N__1226\ : std_logic;
signal \N__1223\ : std_logic;
signal \N__1220\ : std_logic;
signal \N__1217\ : std_logic;
signal \N__1214\ : std_logic;
signal \N__1211\ : std_logic;
signal \N__1208\ : std_logic;
signal \N__1205\ : std_logic;
signal \N__1202\ : std_logic;
signal \N__1199\ : std_logic;
signal \N__1196\ : std_logic;
signal \N__1193\ : std_logic;
signal \N__1190\ : std_logic;
signal \N__1187\ : std_logic;
signal \N__1184\ : std_logic;
signal \N__1181\ : std_logic;
signal \N__1178\ : std_logic;
signal \N__1175\ : std_logic;
signal \N__1172\ : std_logic;
signal \N__1169\ : std_logic;
signal \N__1166\ : std_logic;
signal \N__1163\ : std_logic;
signal \N__1160\ : std_logic;
signal \N__1157\ : std_logic;
signal \N__1154\ : std_logic;
signal \N__1151\ : std_logic;
signal \N__1148\ : std_logic;
signal \N__1145\ : std_logic;
signal \N__1142\ : std_logic;
signal \N__1139\ : std_logic;
signal \N__1136\ : std_logic;
signal \N__1133\ : std_logic;
signal \N__1130\ : std_logic;
signal \N__1127\ : std_logic;
signal \N__1124\ : std_logic;
signal \N__1121\ : std_logic;
signal \CLK_pad_gb_input\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \n1411_cascade_\ : std_logic;
signal \LED_c\ : std_logic;
signal n1410 : std_logic;
signal n26 : std_logic;
signal \bfn_13_27_0_\ : std_logic;
signal n25 : std_logic;
signal n1257 : std_logic;
signal n24 : std_logic;
signal n1258 : std_logic;
signal n23 : std_logic;
signal n1259 : std_logic;
signal n22 : std_logic;
signal n1260 : std_logic;
signal n21 : std_logic;
signal n1261 : std_logic;
signal n20 : std_logic;
signal n1262 : std_logic;
signal n19 : std_logic;
signal n1263 : std_logic;
signal n1264 : std_logic;
signal n18 : std_logic;
signal \bfn_13_28_0_\ : std_logic;
signal n17 : std_logic;
signal n1265 : std_logic;
signal n16 : std_logic;
signal n1266 : std_logic;
signal n15 : std_logic;
signal n1267 : std_logic;
signal n14 : std_logic;
signal n1268 : std_logic;
signal n13 : std_logic;
signal n1269 : std_logic;
signal n12 : std_logic;
signal n1270 : std_logic;
signal n11 : std_logic;
signal n1271 : std_logic;
signal n1272 : std_logic;
signal n10 : std_logic;
signal \bfn_13_29_0_\ : std_logic;
signal n9 : std_logic;
signal n1273 : std_logic;
signal n8 : std_logic;
signal n1274 : std_logic;
signal n7 : std_logic;
signal n1275 : std_logic;
signal n6 : std_logic;
signal n1276 : std_logic;
signal blink_counter_21 : std_logic;
signal n1277 : std_logic;
signal blink_counter_22 : std_logic;
signal n1278 : std_logic;
signal blink_counter_23 : std_logic;
signal n1279 : std_logic;
signal n1280 : std_logic;
signal blink_counter_24 : std_logic;
signal \bfn_13_30_0_\ : std_logic;
signal n1281 : std_logic;
signal blink_counter_25 : std_logic;
signal \bfn_13_31_0_\ : std_logic;
signal \PWM.n1282\ : std_logic;
signal \PWM.n1283\ : std_logic;
signal \PWM.n1284\ : std_logic;
signal \PWM.n1285\ : std_logic;
signal \PWM.n1286\ : std_logic;
signal \PWM.n1287\ : std_logic;
signal \PWM.n1288\ : std_logic;
signal \PWM.n1289\ : std_logic;
signal \bfn_13_32_0_\ : std_logic;
signal \PWM.n1290\ : std_logic;
signal \PWM.n1370_cascade_\ : std_logic;
signal \PWM.n4_cascade_\ : std_logic;
signal \PWM.n1400\ : std_logic;
signal \PWM.n12_cascade_\ : std_logic;
signal \PWM.n13_cascade_\ : std_logic;
signal \PWM.count_0_7\ : std_logic;
signal \PWM.n640\ : std_logic;
signal \PWM.count_0_4\ : std_logic;
signal \PWM.n640_cascade_\ : std_logic;
signal \PWM.count_0_3\ : std_logic;
signal \PWM.n1406\ : std_logic;
signal \PWM.pwm_out_0__N_55_cascade_\ : std_logic;
signal \PWM.count_0_2\ : std_logic;
signal \PWM.count_0_0\ : std_logic;
signal \PWM.n3_cascade_\ : std_logic;
signal \PWM.n14\ : std_logic;
signal \PWM.count_0_8\ : std_logic;
signal \PWM.count_0_9\ : std_logic;
signal \PWM.n16_cascade_\ : std_logic;
signal \PWM.n12_adj_126\ : std_logic;
signal \PWM.n19_cascade_\ : std_logic;
signal \PWM.n993\ : std_logic;
signal \PWM.n18\ : std_logic;
signal \PWM.n993_cascade_\ : std_logic;
signal \PWM.n1402\ : std_logic;
signal \PWM.n657\ : std_logic;
signal \PWM.count_0_1\ : std_logic;
signal \PWM.n647\ : std_logic;
signal \PWM.n1404\ : std_logic;
signal half_duty_0_2 : std_logic;
signal half_duty_0_0 : std_logic;
signal half_duty_0_3 : std_logic;
signal \PWM.pwm_out_0_N_43_4\ : std_logic;
signal half_duty_0_5 : std_logic;
signal \PWM.count_0_5\ : std_logic;
signal \PWM.pwm_out_0_N_43_4_cascade_\ : std_logic;
signal \PWM.count_0_6\ : std_logic;
signal \PWM.n11\ : std_logic;
signal \PWM.n694\ : std_logic;
signal n684 : std_logic;
signal half_duty_0_1 : std_logic;
signal \PWM.pwm_out_0__N_55\ : std_logic;
signal \PWM.n19\ : std_logic;
signal \PWM.pause_counter_0_2\ : std_logic;
signal \PWM.pause_counter_0_1\ : std_logic;
signal \PWM.pause_counter_0_0\ : std_logic;
signal \CLK_c\ : std_logic;
signal \PWM.n653\ : std_logic;
signal \PWM.n193\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
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
signal \SCL_wire\ : std_logic;
signal \TX_wire\ : std_logic;
signal \USBPU_wire\ : std_logic;
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
            OE => \N__2418\,
            DIN => \N__2417\,
            DOUT => \N__2416\,
            PACKAGEPIN => \CS_CLK_wire\
        );

    \CS_CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2418\,
            PADOUT => \N__2417\,
            PADIN => \N__2416\,
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

    \CS_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2409\,
            DIN => \N__2408\,
            DOUT => \N__2407\,
            PACKAGEPIN => \CS_wire\
        );

    \CS_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2409\,
            PADOUT => \N__2408\,
            PADIN => \N__2407\,
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

    \DE_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2400\,
            DIN => \N__2399\,
            DOUT => \N__2398\,
            PACKAGEPIN => \DE_wire\
        );

    \DE_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2400\,
            PADOUT => \N__2399\,
            PADIN => \N__2398\,
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
            OE => \N__2391\,
            DIN => \N__2390\,
            DOUT => \N__2389\,
            PACKAGEPIN => \INHA_wire\
        );

    \INHA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "010101",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2391\,
            PADOUT => \N__2390\,
            PADIN => \N__2389\,
            CLOCKENABLE => \N__1793\,
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__1823\,
            DOUT1 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            OUTPUTCLK => \N__1976\,
            OUTPUTENABLE => '0'
        );

    \INHB_pad_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2382\,
            DIN => \N__2381\,
            DOUT => \N__2380\,
            PACKAGEPIN => \INHB_wire\
        );

    \INHB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2382\,
            PADOUT => \N__2381\,
            PADIN => \N__2380\,
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
            OE => \N__2373\,
            DIN => \N__2372\,
            DOUT => \N__2371\,
            PACKAGEPIN => \INHC_wire\
        );

    \INHC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2373\,
            PADOUT => \N__2372\,
            PADIN => \N__2371\,
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
            OE => \N__2364\,
            DIN => \N__2363\,
            DOUT => \N__2362\,
            PACKAGEPIN => \INLA_wire\
        );

    \INLA_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2364\,
            PADOUT => \N__2363\,
            PADIN => \N__2362\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__1907\,
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
            OE => \N__2355\,
            DIN => \N__2354\,
            DOUT => \N__2353\,
            PACKAGEPIN => \INLB_wire\
        );

    \INLB_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2355\,
            PADOUT => \N__2354\,
            PADIN => \N__2353\,
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
            OE => \N__2346\,
            DIN => \N__2345\,
            DOUT => \N__2344\,
            PACKAGEPIN => \INLC_wire\
        );

    \INLC_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2346\,
            PADOUT => \N__2345\,
            PADIN => \N__2344\,
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
            OE => \N__2337\,
            DIN => \N__2336\,
            DOUT => \N__2335\,
            PACKAGEPIN => \LED_wire\
        );

    \LED_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2337\,
            PADOUT => \N__2336\,
            PADIN => \N__2335\,
            CLOCKENABLE => 'H',
            DIN0 => OPEN,
            DIN1 => OPEN,
            DOUT0 => \N__1184\,
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
            OE => \N__2328\,
            DIN => \N__2327\,
            DOUT => \N__2326\,
            PACKAGEPIN => \NEOPXL_wire\
        );

    \NEOPXL_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2328\,
            PADOUT => \N__2327\,
            PADIN => \N__2326\,
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
            OE => \N__2319\,
            DIN => \N__2318\,
            DOUT => \N__2317\,
            PACKAGEPIN => \SCL_wire\
        );

    \SCL_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2319\,
            PADOUT => \N__2318\,
            PADIN => \N__2317\,
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
            OE => \N__2310\,
            DIN => \N__2309\,
            DOUT => \N__2308\,
            PACKAGEPIN => \TX_wire\
        );

    \TX_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2310\,
            PADOUT => \N__2309\,
            PADIN => \N__2308\,
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
            OE => \N__2301\,
            DIN => \N__2300\,
            DOUT => \N__2299\,
            PACKAGEPIN => \USBPU_wire\
        );

    \USBPU_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2301\,
            PADOUT => \N__2300\,
            PADIN => \N__2299\,
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
            OE => \N__2292\,
            DIN => \N__2291\,
            DOUT => \N__2290\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_pad_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2292\,
            PADOUT => \N__2291\,
            PADIN => \N__2290\,
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

    \I__482\ : InMux
    port map (
            O => \N__2273\,
            I => \N__2264\
        );

    \I__481\ : InMux
    port map (
            O => \N__2272\,
            I => \N__2264\
        );

    \I__480\ : InMux
    port map (
            O => \N__2271\,
            I => \N__2261\
        );

    \I__479\ : InMux
    port map (
            O => \N__2270\,
            I => \N__2256\
        );

    \I__478\ : InMux
    port map (
            O => \N__2269\,
            I => \N__2256\
        );

    \I__477\ : LocalMux
    port map (
            O => \N__2264\,
            I => half_duty_0_5
        );

    \I__476\ : LocalMux
    port map (
            O => \N__2261\,
            I => half_duty_0_5
        );

    \I__475\ : LocalMux
    port map (
            O => \N__2256\,
            I => half_duty_0_5
        );

    \I__474\ : InMux
    port map (
            O => \N__2249\,
            I => \N__2246\
        );

    \I__473\ : LocalMux
    port map (
            O => \N__2246\,
            I => \N__2240\
        );

    \I__472\ : CascadeMux
    port map (
            O => \N__2245\,
            I => \N__2237\
        );

    \I__471\ : CascadeMux
    port map (
            O => \N__2244\,
            I => \N__2234\
        );

    \I__470\ : InMux
    port map (
            O => \N__2243\,
            I => \N__2231\
        );

    \I__469\ : Span4Mux_h
    port map (
            O => \N__2240\,
            I => \N__2228\
        );

    \I__468\ : InMux
    port map (
            O => \N__2237\,
            I => \N__2223\
        );

    \I__467\ : InMux
    port map (
            O => \N__2234\,
            I => \N__2223\
        );

    \I__466\ : LocalMux
    port map (
            O => \N__2231\,
            I => \PWM.count_0_5\
        );

    \I__465\ : Odrv4
    port map (
            O => \N__2228\,
            I => \PWM.count_0_5\
        );

    \I__464\ : LocalMux
    port map (
            O => \N__2223\,
            I => \PWM.count_0_5\
        );

    \I__463\ : CascadeMux
    port map (
            O => \N__2216\,
            I => \PWM.pwm_out_0_N_43_4_cascade_\
        );

    \I__462\ : InMux
    port map (
            O => \N__2213\,
            I => \N__2209\
        );

    \I__461\ : InMux
    port map (
            O => \N__2212\,
            I => \N__2206\
        );

    \I__460\ : LocalMux
    port map (
            O => \N__2209\,
            I => \N__2200\
        );

    \I__459\ : LocalMux
    port map (
            O => \N__2206\,
            I => \N__2200\
        );

    \I__458\ : InMux
    port map (
            O => \N__2205\,
            I => \N__2197\
        );

    \I__457\ : Odrv4
    port map (
            O => \N__2200\,
            I => \PWM.count_0_6\
        );

    \I__456\ : LocalMux
    port map (
            O => \N__2197\,
            I => \PWM.count_0_6\
        );

    \I__455\ : InMux
    port map (
            O => \N__2192\,
            I => \N__2189\
        );

    \I__454\ : LocalMux
    port map (
            O => \N__2189\,
            I => \PWM.n11\
        );

    \I__453\ : SRMux
    port map (
            O => \N__2186\,
            I => \N__2183\
        );

    \I__452\ : LocalMux
    port map (
            O => \N__2183\,
            I => \PWM.n694\
        );

    \I__451\ : SRMux
    port map (
            O => \N__2180\,
            I => \N__2177\
        );

    \I__450\ : LocalMux
    port map (
            O => \N__2177\,
            I => \N__2173\
        );

    \I__449\ : SRMux
    port map (
            O => \N__2176\,
            I => \N__2170\
        );

    \I__448\ : Span4Mux_h
    port map (
            O => \N__2173\,
            I => \N__2167\
        );

    \I__447\ : LocalMux
    port map (
            O => \N__2170\,
            I => \N__2164\
        );

    \I__446\ : Span4Mux_s0_v
    port map (
            O => \N__2167\,
            I => \N__2156\
        );

    \I__445\ : Span4Mux_h
    port map (
            O => \N__2164\,
            I => \N__2153\
        );

    \I__444\ : InMux
    port map (
            O => \N__2163\,
            I => \N__2150\
        );

    \I__443\ : InMux
    port map (
            O => \N__2162\,
            I => \N__2145\
        );

    \I__442\ : InMux
    port map (
            O => \N__2161\,
            I => \N__2145\
        );

    \I__441\ : InMux
    port map (
            O => \N__2160\,
            I => \N__2140\
        );

    \I__440\ : InMux
    port map (
            O => \N__2159\,
            I => \N__2140\
        );

    \I__439\ : Odrv4
    port map (
            O => \N__2156\,
            I => n684
        );

    \I__438\ : Odrv4
    port map (
            O => \N__2153\,
            I => n684
        );

    \I__437\ : LocalMux
    port map (
            O => \N__2150\,
            I => n684
        );

    \I__436\ : LocalMux
    port map (
            O => \N__2145\,
            I => n684
        );

    \I__435\ : LocalMux
    port map (
            O => \N__2140\,
            I => n684
        );

    \I__434\ : InMux
    port map (
            O => \N__2129\,
            I => \N__2119\
        );

    \I__433\ : InMux
    port map (
            O => \N__2128\,
            I => \N__2119\
        );

    \I__432\ : InMux
    port map (
            O => \N__2127\,
            I => \N__2112\
        );

    \I__431\ : InMux
    port map (
            O => \N__2126\,
            I => \N__2112\
        );

    \I__430\ : InMux
    port map (
            O => \N__2125\,
            I => \N__2112\
        );

    \I__429\ : InMux
    port map (
            O => \N__2124\,
            I => \N__2109\
        );

    \I__428\ : LocalMux
    port map (
            O => \N__2119\,
            I => half_duty_0_1
        );

    \I__427\ : LocalMux
    port map (
            O => \N__2112\,
            I => half_duty_0_1
        );

    \I__426\ : LocalMux
    port map (
            O => \N__2109\,
            I => half_duty_0_1
        );

    \I__425\ : InMux
    port map (
            O => \N__2102\,
            I => \N__2093\
        );

    \I__424\ : InMux
    port map (
            O => \N__2101\,
            I => \N__2090\
        );

    \I__423\ : CEMux
    port map (
            O => \N__2100\,
            I => \N__2087\
        );

    \I__422\ : CEMux
    port map (
            O => \N__2099\,
            I => \N__2084\
        );

    \I__421\ : InMux
    port map (
            O => \N__2098\,
            I => \N__2081\
        );

    \I__420\ : InMux
    port map (
            O => \N__2097\,
            I => \N__2076\
        );

    \I__419\ : InMux
    port map (
            O => \N__2096\,
            I => \N__2076\
        );

    \I__418\ : LocalMux
    port map (
            O => \N__2093\,
            I => \N__2071\
        );

    \I__417\ : LocalMux
    port map (
            O => \N__2090\,
            I => \N__2071\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__2087\,
            I => \PWM.pwm_out_0__N_55\
        );

    \I__415\ : LocalMux
    port map (
            O => \N__2084\,
            I => \PWM.pwm_out_0__N_55\
        );

    \I__414\ : LocalMux
    port map (
            O => \N__2081\,
            I => \PWM.pwm_out_0__N_55\
        );

    \I__413\ : LocalMux
    port map (
            O => \N__2076\,
            I => \PWM.pwm_out_0__N_55\
        );

    \I__412\ : Odrv4
    port map (
            O => \N__2071\,
            I => \PWM.pwm_out_0__N_55\
        );

    \I__411\ : InMux
    port map (
            O => \N__2060\,
            I => \N__2051\
        );

    \I__410\ : InMux
    port map (
            O => \N__2059\,
            I => \N__2051\
        );

    \I__409\ : InMux
    port map (
            O => \N__2058\,
            I => \N__2051\
        );

    \I__408\ : LocalMux
    port map (
            O => \N__2051\,
            I => \PWM.n19\
        );

    \I__407\ : InMux
    port map (
            O => \N__2048\,
            I => \N__2043\
        );

    \I__406\ : InMux
    port map (
            O => \N__2047\,
            I => \N__2038\
        );

    \I__405\ : InMux
    port map (
            O => \N__2046\,
            I => \N__2038\
        );

    \I__404\ : LocalMux
    port map (
            O => \N__2043\,
            I => \PWM.pause_counter_0_2\
        );

    \I__403\ : LocalMux
    port map (
            O => \N__2038\,
            I => \PWM.pause_counter_0_2\
        );

    \I__402\ : CascadeMux
    port map (
            O => \N__2033\,
            I => \N__2028\
        );

    \I__401\ : InMux
    port map (
            O => \N__2032\,
            I => \N__2023\
        );

    \I__400\ : InMux
    port map (
            O => \N__2031\,
            I => \N__2020\
        );

    \I__399\ : InMux
    port map (
            O => \N__2028\,
            I => \N__2013\
        );

    \I__398\ : InMux
    port map (
            O => \N__2027\,
            I => \N__2013\
        );

    \I__397\ : InMux
    port map (
            O => \N__2026\,
            I => \N__2013\
        );

    \I__396\ : LocalMux
    port map (
            O => \N__2023\,
            I => \PWM.pause_counter_0_1\
        );

    \I__395\ : LocalMux
    port map (
            O => \N__2020\,
            I => \PWM.pause_counter_0_1\
        );

    \I__394\ : LocalMux
    port map (
            O => \N__2013\,
            I => \PWM.pause_counter_0_1\
        );

    \I__393\ : CascadeMux
    port map (
            O => \N__2006\,
            I => \N__2003\
        );

    \I__392\ : InMux
    port map (
            O => \N__2003\,
            I => \N__1999\
        );

    \I__391\ : InMux
    port map (
            O => \N__2002\,
            I => \N__1993\
        );

    \I__390\ : LocalMux
    port map (
            O => \N__1999\,
            I => \N__1990\
        );

    \I__389\ : InMux
    port map (
            O => \N__1998\,
            I => \N__1983\
        );

    \I__388\ : InMux
    port map (
            O => \N__1997\,
            I => \N__1983\
        );

    \I__387\ : InMux
    port map (
            O => \N__1996\,
            I => \N__1983\
        );

    \I__386\ : LocalMux
    port map (
            O => \N__1993\,
            I => \PWM.pause_counter_0_0\
        );

    \I__385\ : Odrv4
    port map (
            O => \N__1990\,
            I => \PWM.pause_counter_0_0\
        );

    \I__384\ : LocalMux
    port map (
            O => \N__1983\,
            I => \PWM.pause_counter_0_0\
        );

    \I__383\ : ClkMux
    port map (
            O => \N__1976\,
            I => \N__1940\
        );

    \I__382\ : ClkMux
    port map (
            O => \N__1975\,
            I => \N__1940\
        );

    \I__381\ : ClkMux
    port map (
            O => \N__1974\,
            I => \N__1940\
        );

    \I__380\ : ClkMux
    port map (
            O => \N__1973\,
            I => \N__1940\
        );

    \I__379\ : ClkMux
    port map (
            O => \N__1972\,
            I => \N__1940\
        );

    \I__378\ : ClkMux
    port map (
            O => \N__1971\,
            I => \N__1940\
        );

    \I__377\ : ClkMux
    port map (
            O => \N__1970\,
            I => \N__1940\
        );

    \I__376\ : ClkMux
    port map (
            O => \N__1969\,
            I => \N__1940\
        );

    \I__375\ : ClkMux
    port map (
            O => \N__1968\,
            I => \N__1940\
        );

    \I__374\ : ClkMux
    port map (
            O => \N__1967\,
            I => \N__1940\
        );

    \I__373\ : ClkMux
    port map (
            O => \N__1966\,
            I => \N__1940\
        );

    \I__372\ : ClkMux
    port map (
            O => \N__1965\,
            I => \N__1940\
        );

    \I__371\ : GlobalMux
    port map (
            O => \N__1940\,
            I => \N__1937\
        );

    \I__370\ : gio2CtrlBuf
    port map (
            O => \N__1937\,
            I => \CLK_c\
        );

    \I__369\ : CEMux
    port map (
            O => \N__1934\,
            I => \N__1930\
        );

    \I__368\ : CEMux
    port map (
            O => \N__1933\,
            I => \N__1927\
        );

    \I__367\ : LocalMux
    port map (
            O => \N__1930\,
            I => \N__1922\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__1927\,
            I => \N__1922\
        );

    \I__365\ : Span4Mux_s1_v
    port map (
            O => \N__1922\,
            I => \N__1919\
        );

    \I__364\ : Odrv4
    port map (
            O => \N__1919\,
            I => \PWM.n653\
        );

    \I__363\ : SRMux
    port map (
            O => \N__1916\,
            I => \N__1913\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__1913\,
            I => \N__1910\
        );

    \I__361\ : Odrv12
    port map (
            O => \N__1910\,
            I => \PWM.n193\
        );

    \I__360\ : IoInMux
    port map (
            O => \N__1907\,
            I => \N__1904\
        );

    \I__359\ : LocalMux
    port map (
            O => \N__1904\,
            I => \CONSTANT_ONE_NET\
        );

    \I__358\ : InMux
    port map (
            O => \N__1901\,
            I => \N__1897\
        );

    \I__357\ : CascadeMux
    port map (
            O => \N__1900\,
            I => \N__1892\
        );

    \I__356\ : LocalMux
    port map (
            O => \N__1897\,
            I => \N__1889\
        );

    \I__355\ : CascadeMux
    port map (
            O => \N__1896\,
            I => \N__1886\
        );

    \I__354\ : InMux
    port map (
            O => \N__1895\,
            I => \N__1883\
        );

    \I__353\ : InMux
    port map (
            O => \N__1892\,
            I => \N__1880\
        );

    \I__352\ : Span4Mux_h
    port map (
            O => \N__1889\,
            I => \N__1877\
        );

    \I__351\ : InMux
    port map (
            O => \N__1886\,
            I => \N__1874\
        );

    \I__350\ : LocalMux
    port map (
            O => \N__1883\,
            I => \PWM.count_0_8\
        );

    \I__349\ : LocalMux
    port map (
            O => \N__1880\,
            I => \PWM.count_0_8\
        );

    \I__348\ : Odrv4
    port map (
            O => \N__1877\,
            I => \PWM.count_0_8\
        );

    \I__347\ : LocalMux
    port map (
            O => \N__1874\,
            I => \PWM.count_0_8\
        );

    \I__346\ : InMux
    port map (
            O => \N__1865\,
            I => \N__1862\
        );

    \I__345\ : LocalMux
    port map (
            O => \N__1862\,
            I => \N__1857\
        );

    \I__344\ : InMux
    port map (
            O => \N__1861\,
            I => \N__1853\
        );

    \I__343\ : InMux
    port map (
            O => \N__1860\,
            I => \N__1850\
        );

    \I__342\ : Span4Mux_h
    port map (
            O => \N__1857\,
            I => \N__1847\
        );

    \I__341\ : InMux
    port map (
            O => \N__1856\,
            I => \N__1844\
        );

    \I__340\ : LocalMux
    port map (
            O => \N__1853\,
            I => \PWM.count_0_9\
        );

    \I__339\ : LocalMux
    port map (
            O => \N__1850\,
            I => \PWM.count_0_9\
        );

    \I__338\ : Odrv4
    port map (
            O => \N__1847\,
            I => \PWM.count_0_9\
        );

    \I__337\ : LocalMux
    port map (
            O => \N__1844\,
            I => \PWM.count_0_9\
        );

    \I__336\ : CascadeMux
    port map (
            O => \N__1835\,
            I => \PWM.n16_cascade_\
        );

    \I__335\ : InMux
    port map (
            O => \N__1832\,
            I => \N__1829\
        );

    \I__334\ : LocalMux
    port map (
            O => \N__1829\,
            I => \PWM.n12_adj_126\
        );

    \I__333\ : CascadeMux
    port map (
            O => \N__1826\,
            I => \PWM.n19_cascade_\
        );

    \I__332\ : IoInMux
    port map (
            O => \N__1823\,
            I => \N__1820\
        );

    \I__331\ : LocalMux
    port map (
            O => \N__1820\,
            I => \N__1817\
        );

    \I__330\ : Span4Mux_s2_v
    port map (
            O => \N__1817\,
            I => \N__1814\
        );

    \I__329\ : Span4Mux_h
    port map (
            O => \N__1814\,
            I => \N__1811\
        );

    \I__328\ : Odrv4
    port map (
            O => \N__1811\,
            I => \PWM.n993\
        );

    \I__327\ : InMux
    port map (
            O => \N__1808\,
            I => \N__1805\
        );

    \I__326\ : LocalMux
    port map (
            O => \N__1805\,
            I => \PWM.n18\
        );

    \I__325\ : CascadeMux
    port map (
            O => \N__1802\,
            I => \PWM.n993_cascade_\
        );

    \I__324\ : InMux
    port map (
            O => \N__1799\,
            I => \N__1796\
        );

    \I__323\ : LocalMux
    port map (
            O => \N__1796\,
            I => \PWM.n1402\
        );

    \I__322\ : CEMux
    port map (
            O => \N__1793\,
            I => \N__1790\
        );

    \I__321\ : LocalMux
    port map (
            O => \N__1790\,
            I => \N__1787\
        );

    \I__320\ : Span4Mux_s2_v
    port map (
            O => \N__1787\,
            I => \N__1784\
        );

    \I__319\ : Span4Mux_h
    port map (
            O => \N__1784\,
            I => \N__1781\
        );

    \I__318\ : Odrv4
    port map (
            O => \N__1781\,
            I => \PWM.n657\
        );

    \I__317\ : InMux
    port map (
            O => \N__1778\,
            I => \N__1775\
        );

    \I__316\ : LocalMux
    port map (
            O => \N__1775\,
            I => \N__1771\
        );

    \I__315\ : InMux
    port map (
            O => \N__1774\,
            I => \N__1766\
        );

    \I__314\ : Span4Mux_h
    port map (
            O => \N__1771\,
            I => \N__1763\
        );

    \I__313\ : InMux
    port map (
            O => \N__1770\,
            I => \N__1758\
        );

    \I__312\ : InMux
    port map (
            O => \N__1769\,
            I => \N__1758\
        );

    \I__311\ : LocalMux
    port map (
            O => \N__1766\,
            I => \PWM.count_0_1\
        );

    \I__310\ : Odrv4
    port map (
            O => \N__1763\,
            I => \PWM.count_0_1\
        );

    \I__309\ : LocalMux
    port map (
            O => \N__1758\,
            I => \PWM.count_0_1\
        );

    \I__308\ : InMux
    port map (
            O => \N__1751\,
            I => \N__1748\
        );

    \I__307\ : LocalMux
    port map (
            O => \N__1748\,
            I => \PWM.n647\
        );

    \I__306\ : InMux
    port map (
            O => \N__1745\,
            I => \N__1742\
        );

    \I__305\ : LocalMux
    port map (
            O => \N__1742\,
            I => \PWM.n1404\
        );

    \I__304\ : InMux
    port map (
            O => \N__1739\,
            I => \N__1728\
        );

    \I__303\ : InMux
    port map (
            O => \N__1738\,
            I => \N__1728\
        );

    \I__302\ : InMux
    port map (
            O => \N__1737\,
            I => \N__1728\
        );

    \I__301\ : InMux
    port map (
            O => \N__1736\,
            I => \N__1725\
        );

    \I__300\ : InMux
    port map (
            O => \N__1735\,
            I => \N__1722\
        );

    \I__299\ : LocalMux
    port map (
            O => \N__1728\,
            I => half_duty_0_2
        );

    \I__298\ : LocalMux
    port map (
            O => \N__1725\,
            I => half_duty_0_2
        );

    \I__297\ : LocalMux
    port map (
            O => \N__1722\,
            I => half_duty_0_2
        );

    \I__296\ : CascadeMux
    port map (
            O => \N__1715\,
            I => \N__1709\
        );

    \I__295\ : CascadeMux
    port map (
            O => \N__1714\,
            I => \N__1705\
        );

    \I__294\ : CascadeMux
    port map (
            O => \N__1713\,
            I => \N__1701\
        );

    \I__293\ : CascadeMux
    port map (
            O => \N__1712\,
            I => \N__1698\
        );

    \I__292\ : InMux
    port map (
            O => \N__1709\,
            I => \N__1690\
        );

    \I__291\ : InMux
    port map (
            O => \N__1708\,
            I => \N__1690\
        );

    \I__290\ : InMux
    port map (
            O => \N__1705\,
            I => \N__1690\
        );

    \I__289\ : InMux
    port map (
            O => \N__1704\,
            I => \N__1683\
        );

    \I__288\ : InMux
    port map (
            O => \N__1701\,
            I => \N__1683\
        );

    \I__287\ : InMux
    port map (
            O => \N__1698\,
            I => \N__1683\
        );

    \I__286\ : InMux
    port map (
            O => \N__1697\,
            I => \N__1680\
        );

    \I__285\ : LocalMux
    port map (
            O => \N__1690\,
            I => half_duty_0_0
        );

    \I__284\ : LocalMux
    port map (
            O => \N__1683\,
            I => half_duty_0_0
        );

    \I__283\ : LocalMux
    port map (
            O => \N__1680\,
            I => half_duty_0_0
        );

    \I__282\ : InMux
    port map (
            O => \N__1673\,
            I => \N__1667\
        );

    \I__281\ : InMux
    port map (
            O => \N__1672\,
            I => \N__1664\
        );

    \I__280\ : InMux
    port map (
            O => \N__1671\,
            I => \N__1661\
        );

    \I__279\ : InMux
    port map (
            O => \N__1670\,
            I => \N__1658\
        );

    \I__278\ : LocalMux
    port map (
            O => \N__1667\,
            I => half_duty_0_3
        );

    \I__277\ : LocalMux
    port map (
            O => \N__1664\,
            I => half_duty_0_3
        );

    \I__276\ : LocalMux
    port map (
            O => \N__1661\,
            I => half_duty_0_3
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1658\,
            I => half_duty_0_3
        );

    \I__274\ : InMux
    port map (
            O => \N__1649\,
            I => \N__1645\
        );

    \I__273\ : InMux
    port map (
            O => \N__1648\,
            I => \N__1642\
        );

    \I__272\ : LocalMux
    port map (
            O => \N__1645\,
            I => \PWM.pwm_out_0_N_43_4\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1642\,
            I => \PWM.pwm_out_0_N_43_4\
        );

    \I__270\ : InMux
    port map (
            O => \N__1637\,
            I => \N__1632\
        );

    \I__269\ : InMux
    port map (
            O => \N__1636\,
            I => \N__1629\
        );

    \I__268\ : InMux
    port map (
            O => \N__1635\,
            I => \N__1626\
        );

    \I__267\ : LocalMux
    port map (
            O => \N__1632\,
            I => \PWM.count_0_7\
        );

    \I__266\ : LocalMux
    port map (
            O => \N__1629\,
            I => \PWM.count_0_7\
        );

    \I__265\ : LocalMux
    port map (
            O => \N__1626\,
            I => \PWM.count_0_7\
        );

    \I__264\ : InMux
    port map (
            O => \N__1619\,
            I => \N__1616\
        );

    \I__263\ : LocalMux
    port map (
            O => \N__1616\,
            I => \PWM.n640\
        );

    \I__262\ : InMux
    port map (
            O => \N__1613\,
            I => \N__1607\
        );

    \I__261\ : InMux
    port map (
            O => \N__1612\,
            I => \N__1600\
        );

    \I__260\ : InMux
    port map (
            O => \N__1611\,
            I => \N__1600\
        );

    \I__259\ : InMux
    port map (
            O => \N__1610\,
            I => \N__1600\
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1607\,
            I => \PWM.count_0_4\
        );

    \I__257\ : LocalMux
    port map (
            O => \N__1600\,
            I => \PWM.count_0_4\
        );

    \I__256\ : CascadeMux
    port map (
            O => \N__1595\,
            I => \PWM.n640_cascade_\
        );

    \I__255\ : InMux
    port map (
            O => \N__1592\,
            I => \N__1586\
        );

    \I__254\ : InMux
    port map (
            O => \N__1591\,
            I => \N__1583\
        );

    \I__253\ : InMux
    port map (
            O => \N__1590\,
            I => \N__1578\
        );

    \I__252\ : InMux
    port map (
            O => \N__1589\,
            I => \N__1578\
        );

    \I__251\ : LocalMux
    port map (
            O => \N__1586\,
            I => \PWM.count_0_3\
        );

    \I__250\ : LocalMux
    port map (
            O => \N__1583\,
            I => \PWM.count_0_3\
        );

    \I__249\ : LocalMux
    port map (
            O => \N__1578\,
            I => \PWM.count_0_3\
        );

    \I__248\ : InMux
    port map (
            O => \N__1571\,
            I => \N__1568\
        );

    \I__247\ : LocalMux
    port map (
            O => \N__1568\,
            I => \PWM.n1406\
        );

    \I__246\ : CascadeMux
    port map (
            O => \N__1565\,
            I => \PWM.pwm_out_0__N_55_cascade_\
        );

    \I__245\ : InMux
    port map (
            O => \N__1562\,
            I => \N__1559\
        );

    \I__244\ : LocalMux
    port map (
            O => \N__1559\,
            I => \N__1553\
        );

    \I__243\ : InMux
    port map (
            O => \N__1558\,
            I => \N__1550\
        );

    \I__242\ : InMux
    port map (
            O => \N__1557\,
            I => \N__1547\
        );

    \I__241\ : InMux
    port map (
            O => \N__1556\,
            I => \N__1544\
        );

    \I__240\ : Span4Mux_h
    port map (
            O => \N__1553\,
            I => \N__1541\
        );

    \I__239\ : LocalMux
    port map (
            O => \N__1550\,
            I => \PWM.count_0_2\
        );

    \I__238\ : LocalMux
    port map (
            O => \N__1547\,
            I => \PWM.count_0_2\
        );

    \I__237\ : LocalMux
    port map (
            O => \N__1544\,
            I => \PWM.count_0_2\
        );

    \I__236\ : Odrv4
    port map (
            O => \N__1541\,
            I => \PWM.count_0_2\
        );

    \I__235\ : InMux
    port map (
            O => \N__1532\,
            I => \N__1528\
        );

    \I__234\ : InMux
    port map (
            O => \N__1531\,
            I => \N__1523\
        );

    \I__233\ : LocalMux
    port map (
            O => \N__1528\,
            I => \N__1520\
        );

    \I__232\ : InMux
    port map (
            O => \N__1527\,
            I => \N__1517\
        );

    \I__231\ : InMux
    port map (
            O => \N__1526\,
            I => \N__1514\
        );

    \I__230\ : LocalMux
    port map (
            O => \N__1523\,
            I => \N__1509\
        );

    \I__229\ : Span4Mux_v
    port map (
            O => \N__1520\,
            I => \N__1509\
        );

    \I__228\ : LocalMux
    port map (
            O => \N__1517\,
            I => \PWM.count_0_0\
        );

    \I__227\ : LocalMux
    port map (
            O => \N__1514\,
            I => \PWM.count_0_0\
        );

    \I__226\ : Odrv4
    port map (
            O => \N__1509\,
            I => \PWM.count_0_0\
        );

    \I__225\ : CascadeMux
    port map (
            O => \N__1502\,
            I => \PWM.n3_cascade_\
        );

    \I__224\ : InMux
    port map (
            O => \N__1499\,
            I => \N__1496\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1496\,
            I => \PWM.n14\
        );

    \I__222\ : CascadeMux
    port map (
            O => \N__1493\,
            I => \PWM.n1370_cascade_\
        );

    \I__221\ : CascadeMux
    port map (
            O => \N__1490\,
            I => \PWM.n4_cascade_\
        );

    \I__220\ : InMux
    port map (
            O => \N__1487\,
            I => \N__1484\
        );

    \I__219\ : LocalMux
    port map (
            O => \N__1484\,
            I => \N__1481\
        );

    \I__218\ : Odrv4
    port map (
            O => \N__1481\,
            I => \PWM.n1400\
        );

    \I__217\ : CascadeMux
    port map (
            O => \N__1478\,
            I => \PWM.n12_cascade_\
        );

    \I__216\ : CascadeMux
    port map (
            O => \N__1475\,
            I => \PWM.n13_cascade_\
        );

    \I__215\ : InMux
    port map (
            O => \N__1472\,
            I => \PWM.n1283\
        );

    \I__214\ : InMux
    port map (
            O => \N__1469\,
            I => \PWM.n1284\
        );

    \I__213\ : InMux
    port map (
            O => \N__1466\,
            I => \PWM.n1285\
        );

    \I__212\ : InMux
    port map (
            O => \N__1463\,
            I => \PWM.n1286\
        );

    \I__211\ : InMux
    port map (
            O => \N__1460\,
            I => \PWM.n1287\
        );

    \I__210\ : InMux
    port map (
            O => \N__1457\,
            I => \PWM.n1288\
        );

    \I__209\ : InMux
    port map (
            O => \N__1454\,
            I => \bfn_13_32_0_\
        );

    \I__208\ : InMux
    port map (
            O => \N__1451\,
            I => \PWM.n1290\
        );

    \I__207\ : InMux
    port map (
            O => \N__1448\,
            I => \N__1445\
        );

    \I__206\ : LocalMux
    port map (
            O => \N__1445\,
            I => n6
        );

    \I__205\ : InMux
    port map (
            O => \N__1442\,
            I => n1276
        );

    \I__204\ : InMux
    port map (
            O => \N__1439\,
            I => \N__1432\
        );

    \I__203\ : InMux
    port map (
            O => \N__1438\,
            I => \N__1432\
        );

    \I__202\ : InMux
    port map (
            O => \N__1437\,
            I => \N__1429\
        );

    \I__201\ : LocalMux
    port map (
            O => \N__1432\,
            I => blink_counter_21
        );

    \I__200\ : LocalMux
    port map (
            O => \N__1429\,
            I => blink_counter_21
        );

    \I__199\ : InMux
    port map (
            O => \N__1424\,
            I => n1277
        );

    \I__198\ : InMux
    port map (
            O => \N__1421\,
            I => \N__1414\
        );

    \I__197\ : InMux
    port map (
            O => \N__1420\,
            I => \N__1414\
        );

    \I__196\ : InMux
    port map (
            O => \N__1419\,
            I => \N__1411\
        );

    \I__195\ : LocalMux
    port map (
            O => \N__1414\,
            I => blink_counter_22
        );

    \I__194\ : LocalMux
    port map (
            O => \N__1411\,
            I => blink_counter_22
        );

    \I__193\ : InMux
    port map (
            O => \N__1406\,
            I => n1278
        );

    \I__192\ : CascadeMux
    port map (
            O => \N__1403\,
            I => \N__1399\
        );

    \I__191\ : CascadeMux
    port map (
            O => \N__1402\,
            I => \N__1396\
        );

    \I__190\ : InMux
    port map (
            O => \N__1399\,
            I => \N__1390\
        );

    \I__189\ : InMux
    port map (
            O => \N__1396\,
            I => \N__1390\
        );

    \I__188\ : InMux
    port map (
            O => \N__1395\,
            I => \N__1387\
        );

    \I__187\ : LocalMux
    port map (
            O => \N__1390\,
            I => blink_counter_23
        );

    \I__186\ : LocalMux
    port map (
            O => \N__1387\,
            I => blink_counter_23
        );

    \I__185\ : InMux
    port map (
            O => \N__1382\,
            I => n1279
        );

    \I__184\ : InMux
    port map (
            O => \N__1379\,
            I => \N__1372\
        );

    \I__183\ : InMux
    port map (
            O => \N__1378\,
            I => \N__1372\
        );

    \I__182\ : InMux
    port map (
            O => \N__1377\,
            I => \N__1369\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__1372\,
            I => blink_counter_24
        );

    \I__180\ : LocalMux
    port map (
            O => \N__1369\,
            I => blink_counter_24
        );

    \I__179\ : InMux
    port map (
            O => \N__1364\,
            I => \bfn_13_30_0_\
        );

    \I__178\ : InMux
    port map (
            O => \N__1361\,
            I => n1281
        );

    \I__177\ : InMux
    port map (
            O => \N__1358\,
            I => \N__1354\
        );

    \I__176\ : InMux
    port map (
            O => \N__1357\,
            I => \N__1351\
        );

    \I__175\ : LocalMux
    port map (
            O => \N__1354\,
            I => blink_counter_25
        );

    \I__174\ : LocalMux
    port map (
            O => \N__1351\,
            I => blink_counter_25
        );

    \I__173\ : InMux
    port map (
            O => \N__1346\,
            I => \bfn_13_31_0_\
        );

    \I__172\ : InMux
    port map (
            O => \N__1343\,
            I => \PWM.n1282\
        );

    \I__171\ : InMux
    port map (
            O => \N__1340\,
            I => \N__1337\
        );

    \I__170\ : LocalMux
    port map (
            O => \N__1337\,
            I => n15
        );

    \I__169\ : InMux
    port map (
            O => \N__1334\,
            I => n1267
        );

    \I__168\ : InMux
    port map (
            O => \N__1331\,
            I => \N__1328\
        );

    \I__167\ : LocalMux
    port map (
            O => \N__1328\,
            I => n14
        );

    \I__166\ : InMux
    port map (
            O => \N__1325\,
            I => n1268
        );

    \I__165\ : InMux
    port map (
            O => \N__1322\,
            I => \N__1319\
        );

    \I__164\ : LocalMux
    port map (
            O => \N__1319\,
            I => n13
        );

    \I__163\ : InMux
    port map (
            O => \N__1316\,
            I => n1269
        );

    \I__162\ : InMux
    port map (
            O => \N__1313\,
            I => \N__1310\
        );

    \I__161\ : LocalMux
    port map (
            O => \N__1310\,
            I => n12
        );

    \I__160\ : InMux
    port map (
            O => \N__1307\,
            I => n1270
        );

    \I__159\ : InMux
    port map (
            O => \N__1304\,
            I => \N__1301\
        );

    \I__158\ : LocalMux
    port map (
            O => \N__1301\,
            I => n11
        );

    \I__157\ : InMux
    port map (
            O => \N__1298\,
            I => n1271
        );

    \I__156\ : InMux
    port map (
            O => \N__1295\,
            I => \N__1292\
        );

    \I__155\ : LocalMux
    port map (
            O => \N__1292\,
            I => n10
        );

    \I__154\ : InMux
    port map (
            O => \N__1289\,
            I => \bfn_13_29_0_\
        );

    \I__153\ : InMux
    port map (
            O => \N__1286\,
            I => \N__1283\
        );

    \I__152\ : LocalMux
    port map (
            O => \N__1283\,
            I => n9
        );

    \I__151\ : InMux
    port map (
            O => \N__1280\,
            I => n1273
        );

    \I__150\ : InMux
    port map (
            O => \N__1277\,
            I => \N__1274\
        );

    \I__149\ : LocalMux
    port map (
            O => \N__1274\,
            I => n8
        );

    \I__148\ : InMux
    port map (
            O => \N__1271\,
            I => n1274
        );

    \I__147\ : InMux
    port map (
            O => \N__1268\,
            I => \N__1265\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__1265\,
            I => n7
        );

    \I__145\ : InMux
    port map (
            O => \N__1262\,
            I => n1275
        );

    \I__144\ : InMux
    port map (
            O => \N__1259\,
            I => \N__1256\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__1256\,
            I => n23
        );

    \I__142\ : InMux
    port map (
            O => \N__1253\,
            I => n1259
        );

    \I__141\ : InMux
    port map (
            O => \N__1250\,
            I => \N__1247\
        );

    \I__140\ : LocalMux
    port map (
            O => \N__1247\,
            I => n22
        );

    \I__139\ : InMux
    port map (
            O => \N__1244\,
            I => n1260
        );

    \I__138\ : InMux
    port map (
            O => \N__1241\,
            I => \N__1238\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__1238\,
            I => n21
        );

    \I__136\ : InMux
    port map (
            O => \N__1235\,
            I => n1261
        );

    \I__135\ : InMux
    port map (
            O => \N__1232\,
            I => \N__1229\
        );

    \I__134\ : LocalMux
    port map (
            O => \N__1229\,
            I => n20
        );

    \I__133\ : InMux
    port map (
            O => \N__1226\,
            I => n1262
        );

    \I__132\ : InMux
    port map (
            O => \N__1223\,
            I => \N__1220\
        );

    \I__131\ : LocalMux
    port map (
            O => \N__1220\,
            I => n19
        );

    \I__130\ : InMux
    port map (
            O => \N__1217\,
            I => n1263
        );

    \I__129\ : InMux
    port map (
            O => \N__1214\,
            I => \N__1211\
        );

    \I__128\ : LocalMux
    port map (
            O => \N__1211\,
            I => n18
        );

    \I__127\ : InMux
    port map (
            O => \N__1208\,
            I => \bfn_13_28_0_\
        );

    \I__126\ : InMux
    port map (
            O => \N__1205\,
            I => \N__1202\
        );

    \I__125\ : LocalMux
    port map (
            O => \N__1202\,
            I => n17
        );

    \I__124\ : InMux
    port map (
            O => \N__1199\,
            I => n1265
        );

    \I__123\ : InMux
    port map (
            O => \N__1196\,
            I => \N__1193\
        );

    \I__122\ : LocalMux
    port map (
            O => \N__1193\,
            I => n16
        );

    \I__121\ : InMux
    port map (
            O => \N__1190\,
            I => n1266
        );

    \I__120\ : CascadeMux
    port map (
            O => \N__1187\,
            I => \n1411_cascade_\
        );

    \I__119\ : IoInMux
    port map (
            O => \N__1184\,
            I => \N__1181\
        );

    \I__118\ : LocalMux
    port map (
            O => \N__1181\,
            I => \N__1178\
        );

    \I__117\ : Span4Mux_s3_v
    port map (
            O => \N__1178\,
            I => \N__1175\
        );

    \I__116\ : Span4Mux_h
    port map (
            O => \N__1175\,
            I => \N__1172\
        );

    \I__115\ : Odrv4
    port map (
            O => \N__1172\,
            I => \LED_c\
        );

    \I__114\ : InMux
    port map (
            O => \N__1169\,
            I => \N__1166\
        );

    \I__113\ : LocalMux
    port map (
            O => \N__1166\,
            I => n1410
        );

    \I__112\ : InMux
    port map (
            O => \N__1163\,
            I => \N__1160\
        );

    \I__111\ : LocalMux
    port map (
            O => \N__1160\,
            I => n26
        );

    \I__110\ : InMux
    port map (
            O => \N__1157\,
            I => \bfn_13_27_0_\
        );

    \I__109\ : InMux
    port map (
            O => \N__1154\,
            I => \N__1151\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__1151\,
            I => n25
        );

    \I__107\ : InMux
    port map (
            O => \N__1148\,
            I => n1257
        );

    \I__106\ : InMux
    port map (
            O => \N__1145\,
            I => \N__1142\
        );

    \I__105\ : LocalMux
    port map (
            O => \N__1142\,
            I => n24
        );

    \I__104\ : InMux
    port map (
            O => \N__1139\,
            I => n1258
        );

    \I__103\ : IoInMux
    port map (
            O => \N__1136\,
            I => \N__1133\
        );

    \I__102\ : LocalMux
    port map (
            O => \N__1133\,
            I => \N__1130\
        );

    \I__101\ : IoSpan4Mux
    port map (
            O => \N__1130\,
            I => \N__1127\
        );

    \I__100\ : IoSpan4Mux
    port map (
            O => \N__1127\,
            I => \N__1124\
        );

    \I__99\ : IoSpan4Mux
    port map (
            O => \N__1124\,
            I => \N__1121\
        );

    \I__98\ : Odrv4
    port map (
            O => \N__1121\,
            I => \CLK_pad_gb_input\
        );

    \IN_MUX_bfv_13_27_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_13_27_0_\
        );

    \IN_MUX_bfv_13_28_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n1264,
            carryinitout => \bfn_13_28_0_\
        );

    \IN_MUX_bfv_13_29_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n1272,
            carryinitout => \bfn_13_29_0_\
        );

    \IN_MUX_bfv_13_30_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => n1280,
            carryinitout => \bfn_13_30_0_\
        );

    \IN_MUX_bfv_13_31_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "01"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_13_31_0_\
        );

    \IN_MUX_bfv_13_32_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \PWM.n1289\,
            carryinitout => \bfn_13_32_0_\
        );

    \CLK_pad_gb\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__1136\,
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

    \i913_4_lut_LC_12_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111010110000"
        )
    port map (
            in0 => \N__1379\,
            in1 => \N__1421\,
            in2 => \N__1403\,
            in3 => \N__1439\,
            lcout => OPEN,
            ltout => \n1411_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i914_3_lut_LC_12_29_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111101010101"
        )
    port map (
            in0 => \N__1169\,
            in1 => \_gnd_net_\,
            in2 => \N__1187\,
            in3 => \N__1358\,
            lcout => \LED_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i912_4_lut_LC_12_29_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101110101000000"
        )
    port map (
            in0 => \N__1378\,
            in1 => \N__1420\,
            in2 => \N__1402\,
            in3 => \N__1438\,
            lcout => n1410,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i0_LC_13_27_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1163\,
            in2 => \_gnd_net_\,
            in3 => \N__1157\,
            lcout => n26,
            ltout => OPEN,
            carryin => \bfn_13_27_0_\,
            carryout => n1257,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i1_LC_13_27_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1154\,
            in2 => \_gnd_net_\,
            in3 => \N__1148\,
            lcout => n25,
            ltout => OPEN,
            carryin => n1257,
            carryout => n1258,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i2_LC_13_27_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1145\,
            in2 => \_gnd_net_\,
            in3 => \N__1139\,
            lcout => n24,
            ltout => OPEN,
            carryin => n1258,
            carryout => n1259,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i3_LC_13_27_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1259\,
            in2 => \_gnd_net_\,
            in3 => \N__1253\,
            lcout => n23,
            ltout => OPEN,
            carryin => n1259,
            carryout => n1260,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i4_LC_13_27_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1250\,
            in2 => \_gnd_net_\,
            in3 => \N__1244\,
            lcout => n22,
            ltout => OPEN,
            carryin => n1260,
            carryout => n1261,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i5_LC_13_27_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1241\,
            in2 => \_gnd_net_\,
            in3 => \N__1235\,
            lcout => n21,
            ltout => OPEN,
            carryin => n1261,
            carryout => n1262,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i6_LC_13_27_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1232\,
            in2 => \_gnd_net_\,
            in3 => \N__1226\,
            lcout => n20,
            ltout => OPEN,
            carryin => n1262,
            carryout => n1263,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i7_LC_13_27_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1223\,
            in2 => \_gnd_net_\,
            in3 => \N__1217\,
            lcout => n19,
            ltout => OPEN,
            carryin => n1263,
            carryout => n1264,
            clk => \N__1965\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i8_LC_13_28_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1214\,
            in2 => \_gnd_net_\,
            in3 => \N__1208\,
            lcout => n18,
            ltout => OPEN,
            carryin => \bfn_13_28_0_\,
            carryout => n1265,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i9_LC_13_28_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1205\,
            in2 => \_gnd_net_\,
            in3 => \N__1199\,
            lcout => n17,
            ltout => OPEN,
            carryin => n1265,
            carryout => n1266,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i10_LC_13_28_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1196\,
            in2 => \_gnd_net_\,
            in3 => \N__1190\,
            lcout => n16,
            ltout => OPEN,
            carryin => n1266,
            carryout => n1267,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i11_LC_13_28_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1340\,
            in2 => \_gnd_net_\,
            in3 => \N__1334\,
            lcout => n15,
            ltout => OPEN,
            carryin => n1267,
            carryout => n1268,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i12_LC_13_28_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1331\,
            in2 => \_gnd_net_\,
            in3 => \N__1325\,
            lcout => n14,
            ltout => OPEN,
            carryin => n1268,
            carryout => n1269,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i13_LC_13_28_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1322\,
            in2 => \_gnd_net_\,
            in3 => \N__1316\,
            lcout => n13,
            ltout => OPEN,
            carryin => n1269,
            carryout => n1270,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i14_LC_13_28_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1313\,
            in2 => \_gnd_net_\,
            in3 => \N__1307\,
            lcout => n12,
            ltout => OPEN,
            carryin => n1270,
            carryout => n1271,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i15_LC_13_28_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1304\,
            in2 => \_gnd_net_\,
            in3 => \N__1298\,
            lcout => n11,
            ltout => OPEN,
            carryin => n1271,
            carryout => n1272,
            clk => \N__1966\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i16_LC_13_29_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1295\,
            in2 => \_gnd_net_\,
            in3 => \N__1289\,
            lcout => n10,
            ltout => OPEN,
            carryin => \bfn_13_29_0_\,
            carryout => n1273,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i17_LC_13_29_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1286\,
            in2 => \_gnd_net_\,
            in3 => \N__1280\,
            lcout => n9,
            ltout => OPEN,
            carryin => n1273,
            carryout => n1274,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i18_LC_13_29_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1277\,
            in2 => \_gnd_net_\,
            in3 => \N__1271\,
            lcout => n8,
            ltout => OPEN,
            carryin => n1274,
            carryout => n1275,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i19_LC_13_29_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1268\,
            in2 => \_gnd_net_\,
            in3 => \N__1262\,
            lcout => n7,
            ltout => OPEN,
            carryin => n1275,
            carryout => n1276,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i20_LC_13_29_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1448\,
            in2 => \_gnd_net_\,
            in3 => \N__1442\,
            lcout => n6,
            ltout => OPEN,
            carryin => n1276,
            carryout => n1277,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i21_LC_13_29_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1437\,
            in2 => \_gnd_net_\,
            in3 => \N__1424\,
            lcout => blink_counter_21,
            ltout => OPEN,
            carryin => n1277,
            carryout => n1278,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i22_LC_13_29_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1419\,
            in2 => \_gnd_net_\,
            in3 => \N__1406\,
            lcout => blink_counter_22,
            ltout => OPEN,
            carryin => n1278,
            carryout => n1279,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i23_LC_13_29_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1395\,
            in2 => \_gnd_net_\,
            in3 => \N__1382\,
            lcout => blink_counter_23,
            ltout => OPEN,
            carryin => n1279,
            carryout => n1280,
            clk => \N__1967\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i24_LC_13_30_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1377\,
            in2 => \_gnd_net_\,
            in3 => \N__1364\,
            lcout => blink_counter_24,
            ltout => OPEN,
            carryin => \bfn_13_30_0_\,
            carryout => n1281,
            clk => \N__1968\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \blink_counter_49__i25_LC_13_30_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1357\,
            in2 => \_gnd_net_\,
            in3 => \N__1361\,
            lcout => blink_counter_25,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1968\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.count_0__50__i0_LC_13_31_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1527\,
            in2 => \_gnd_net_\,
            in3 => \N__1346\,
            lcout => \PWM.count_0_0\,
            ltout => OPEN,
            carryin => \bfn_13_31_0_\,
            carryout => \PWM.n1282\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i1_LC_13_31_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1774\,
            in2 => \_gnd_net_\,
            in3 => \N__1343\,
            lcout => \PWM.count_0_1\,
            ltout => OPEN,
            carryin => \PWM.n1282\,
            carryout => \PWM.n1283\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i2_LC_13_31_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1558\,
            in2 => \_gnd_net_\,
            in3 => \N__1472\,
            lcout => \PWM.count_0_2\,
            ltout => OPEN,
            carryin => \PWM.n1283\,
            carryout => \PWM.n1284\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i3_LC_13_31_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1592\,
            in2 => \_gnd_net_\,
            in3 => \N__1469\,
            lcout => \PWM.count_0_3\,
            ltout => OPEN,
            carryin => \PWM.n1284\,
            carryout => \PWM.n1285\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i4_LC_13_31_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1613\,
            in2 => \_gnd_net_\,
            in3 => \N__1466\,
            lcout => \PWM.count_0_4\,
            ltout => OPEN,
            carryin => \PWM.n1285\,
            carryout => \PWM.n1286\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i5_LC_13_31_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2243\,
            in2 => \_gnd_net_\,
            in3 => \N__1463\,
            lcout => \PWM.count_0_5\,
            ltout => OPEN,
            carryin => \PWM.n1286\,
            carryout => \PWM.n1287\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i6_LC_13_31_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2213\,
            in2 => \_gnd_net_\,
            in3 => \N__1460\,
            lcout => \PWM.count_0_6\,
            ltout => OPEN,
            carryin => \PWM.n1287\,
            carryout => \PWM.n1288\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i7_LC_13_31_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1637\,
            in2 => \_gnd_net_\,
            in3 => \N__1457\,
            lcout => \PWM.count_0_7\,
            ltout => OPEN,
            carryin => \PWM.n1288\,
            carryout => \PWM.n1289\,
            clk => \N__1969\,
            ce => \N__2100\,
            sr => \N__2176\
        );

    \PWM.count_0__50__i8_LC_13_32_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1895\,
            in2 => \_gnd_net_\,
            in3 => \N__1454\,
            lcout => \PWM.count_0_8\,
            ltout => OPEN,
            carryin => \bfn_13_32_0_\,
            carryout => \PWM.n1290\,
            clk => \N__1971\,
            ce => \N__2099\,
            sr => \N__2180\
        );

    \PWM.count_0__50__i9_LC_13_32_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1861\,
            in2 => \_gnd_net_\,
            in3 => \N__1451\,
            lcout => \PWM.count_0_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1971\,
            ce => \N__2099\,
            sr => \N__2180\
        );

    \PWM.half_duty_0___i3_LC_14_30_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__1739\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2161\,
            lcout => half_duty_0_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1970\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.half_duty_0___i6_LC_14_30_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2162\,
            in2 => \_gnd_net_\,
            in3 => \N__2273\,
            lcout => half_duty_0_5,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1970\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i2_4_lut_LC_14_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100100100110110"
        )
    port map (
            in0 => \N__2129\,
            in1 => \N__1738\,
            in2 => \N__1715\,
            in3 => \N__1556\,
            lcout => OPEN,
            ltout => \PWM.n1370_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i904_4_lut_LC_14_30_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111011111111000"
        )
    port map (
            in0 => \N__1649\,
            in1 => \N__2272\,
            in2 => \N__1493\,
            in3 => \N__1636\,
            lcout => \PWM.n1402\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_4_lut_adj_12_LC_14_30_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000111111110"
        )
    port map (
            in0 => \N__2128\,
            in1 => \N__1737\,
            in2 => \N__1714\,
            in3 => \N__1672\,
            lcout => OPEN,
            ltout => \PWM.n4_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i902_4_lut_LC_14_30_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__1526\,
            in1 => \N__1708\,
            in2 => \N__1490\,
            in3 => \N__1591\,
            lcout => \PWM.n1400\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i2_4_lut_adj_9_LC_14_31_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0010100001010000"
        )
    port map (
            in0 => \N__1648\,
            in1 => \N__2270\,
            in2 => \N__1896\,
            in3 => \N__1611\,
            lcout => OPEN,
            ltout => \PWM.n12_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i8_3_lut_LC_14_31_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1487\,
            in2 => \N__1478\,
            in3 => \N__2192\,
            lcout => \PWM.n18\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i5_4_lut_LC_14_31_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111110111111111"
        )
    port map (
            in0 => \N__1770\,
            in1 => \N__1619\,
            in2 => \N__2245\,
            in3 => \N__1612\,
            lcout => OPEN,
            ltout => \PWM.n13_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i931_3_lut_4_lut_LC_14_31_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000100000000000"
        )
    port map (
            in0 => \N__1860\,
            in1 => \N__1571\,
            in2 => \N__1475\,
            in3 => \N__2102\,
            lcout => n684,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i3_4_lut_LC_14_31_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__1769\,
            in1 => \N__2269\,
            in2 => \N__2244\,
            in3 => \N__2124\,
            lcout => \PWM.n12_adj_126\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_2_lut_LC_14_31_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1635\,
            in2 => \_gnd_net_\,
            in3 => \N__2205\,
            lcout => \PWM.n640\,
            ltout => \PWM.n640_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i5_4_lut_adj_13_LC_14_31_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111110111111110"
        )
    port map (
            in0 => \N__1589\,
            in1 => \N__1610\,
            in2 => \N__1595\,
            in3 => \N__1670\,
            lcout => \PWM.n14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i908_4_lut_LC_14_31_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1531\,
            in1 => \N__1557\,
            in2 => \N__1900\,
            in3 => \N__1590\,
            lcout => \PWM.n1406\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.pause_counter_0__i1_LC_14_32_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2027\,
            in2 => \_gnd_net_\,
            in3 => \N__1998\,
            lcout => \PWM.pause_counter_0_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1973\,
            ce => \N__1934\,
            sr => \N__2186\
        );

    \PWM.pause_counter_0__i2_LC_14_32_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101111110100000"
        )
    port map (
            in0 => \N__1997\,
            in1 => \_gnd_net_\,
            in2 => \N__2033\,
            in3 => \N__2047\,
            lcout => \PWM.pause_counter_0_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1973\,
            ce => \N__1934\,
            sr => \N__2186\
        );

    \PWM.i928_2_lut_3_lut_LC_14_32_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000010001"
        )
    port map (
            in0 => \N__2046\,
            in1 => \N__2026\,
            in2 => \_gnd_net_\,
            in3 => \N__1996\,
            lcout => \PWM.pwm_out_0__N_55\,
            ltout => \PWM.pwm_out_0__N_55_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_2_lut_adj_10_LC_14_32_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011111100111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1856\,
            in2 => \N__1565\,
            in3 => \_gnd_net_\,
            lcout => \PWM.n647\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.half_duty_0__8__I_0_46_i3_2_lut_LC_15_30_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1562\,
            in2 => \_gnd_net_\,
            in3 => \N__1735\,
            lcout => OPEN,
            ltout => \PWM.n3_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i7_4_lut_LC_15_30_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111110110"
        )
    port map (
            in0 => \N__1532\,
            in1 => \N__1697\,
            in2 => \N__1502\,
            in3 => \N__1499\,
            lcout => OPEN,
            ltout => \PWM.n16_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i8_4_lut_LC_15_30_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1901\,
            in1 => \N__1865\,
            in2 => \N__1835\,
            in3 => \N__1832\,
            lcout => \PWM.n19\,
            ltout => \PWM.n19_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i529_2_lut_LC_15_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__1826\,
            in3 => \N__2101\,
            lcout => \PWM.n993\,
            ltout => \PWM.n993_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_4_lut_adj_8_LC_15_30_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111100101111"
        )
    port map (
            in0 => \N__1808\,
            in1 => \N__1745\,
            in2 => \N__1802\,
            in3 => \N__1799\,
            lcout => \PWM.n657\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.half_duty_0___i4_LC_15_30_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2163\,
            in2 => \_gnd_net_\,
            in3 => \N__1673\,
            lcout => half_duty_0_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1972\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_2_lut_adj_11_LC_15_31_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010111111111"
        )
    port map (
            in0 => \N__2060\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2098\,
            lcout => \PWM.n653\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i906_4_lut_LC_15_31_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110010110"
        )
    port map (
            in0 => \N__2126\,
            in1 => \N__1778\,
            in2 => \N__1713\,
            in3 => \N__1751\,
            lcout => \PWM.n1404\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.half_duty_0___i1_LC_15_31_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2159\,
            in2 => \_gnd_net_\,
            in3 => \N__1704\,
            lcout => half_duty_0_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1974\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i732_4_lut_LC_15_31_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2125\,
            in1 => \N__1736\,
            in2 => \N__1712\,
            in3 => \N__1671\,
            lcout => \PWM.pwm_out_0_N_43_4\,
            ltout => \PWM.pwm_out_0_N_43_4_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i1_4_lut_LC_15_31_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000010110"
        )
    port map (
            in0 => \N__2271\,
            in1 => \N__2249\,
            in2 => \N__2216\,
            in3 => \N__2212\,
            lcout => \PWM.n11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i229_2_lut_3_lut_4_lut_LC_15_31_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000100000101"
        )
    port map (
            in0 => \N__2031\,
            in1 => \N__2097\,
            in2 => \N__2006\,
            in3 => \N__2059\,
            lcout => \PWM.n694\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.half_duty_0___i2_LC_15_31_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2160\,
            in2 => \_gnd_net_\,
            in3 => \N__2127\,
            lcout => half_duty_0_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1974\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.i530_1_lut_2_lut_LC_15_31_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2096\,
            in2 => \_gnd_net_\,
            in3 => \N__2058\,
            lcout => \PWM.n193\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \PWM.pause_counter_0__i0_LC_15_32_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1001",
            LUT_INIT => "0000000011011101"
        )
    port map (
            in0 => \N__2048\,
            in1 => \N__2032\,
            in2 => \_gnd_net_\,
            in3 => \N__2002\,
            lcout => \PWM.pause_counter_0_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1975\,
            ce => \N__1933\,
            sr => \N__1916\
        );

    \CONSTANT_ONE_LUT4_LC_24_32_7\ : LogicCell40
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
