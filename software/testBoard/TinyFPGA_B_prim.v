// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Feb 17 11:44:52 2020
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, LED, USBPU, ENCODER0_A, ENCODER0_B, ENCODER1_A, 
            ENCODER1_B, HALL1, HALL2, HALL3, FAULT_N, NEOPXL, DE, 
            TX, RX, CS_CLK, CS, CS_MISO, SCL, SDA, INLC, INHC, 
            INLB, INHB, INLA, INHA) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output LED;   // verilog/TinyFPGA_B.v(4[10:13])
    output USBPU;   // verilog/TinyFPGA_B.v(5[10:15])
    input ENCODER0_A;   // verilog/TinyFPGA_B.v(6[9:19])
    input ENCODER0_B;   // verilog/TinyFPGA_B.v(7[9:19])
    input ENCODER1_A;   // verilog/TinyFPGA_B.v(8[9:19])
    input ENCODER1_B;   // verilog/TinyFPGA_B.v(9[9:19])
    input HALL1 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    input HALL2 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    input HALL3 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    input FAULT_N;   // verilog/TinyFPGA_B.v(13[9:16])
    output NEOPXL;   // verilog/TinyFPGA_B.v(14[10:16])
    output DE;   // verilog/TinyFPGA_B.v(15[10:12])
    output TX;   // verilog/TinyFPGA_B.v(16[10:12])
    input RX;   // verilog/TinyFPGA_B.v(17[9:11])
    output CS_CLK;   // verilog/TinyFPGA_B.v(18[10:16])
    output CS;   // verilog/TinyFPGA_B.v(19[10:12])
    input CS_MISO;   // verilog/TinyFPGA_B.v(20[9:16])
    input SCL /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(21[9:12])
    input SDA /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:12])
    output INLC;   // verilog/TinyFPGA_B.v(23[10:14])
    output INHC;   // verilog/TinyFPGA_B.v(24[10:14])
    output INLB;   // verilog/TinyFPGA_B.v(25[10:14])
    output INHB;   // verilog/TinyFPGA_B.v(26[10:14])
    output INLA;   // verilog/TinyFPGA_B.v(27[10:14])
    output INHA;   // verilog/TinyFPGA_B.v(28[10:14])
    
    wire CLK_N /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, ENCODER0_A_N, ENCODER0_B_N, n5201, 
        INLC_c_0, INHC_c_0, INLB_c_0, INHB_c_0, INLA_c_0, INHA_c_0;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[12:25])
    
    wire n14576, hall1, hall2, hall3, pwm_out, dir, GHA, GHB, 
        GHC;
    wire [23:0]pwm_setpoint;   // verilog/TinyFPGA_B.v(87[19:31])
    wire [23:0]duty;   // verilog/TinyFPGA_B.v(88[19:23])
    
    wire h1, h2, h3;
    wire [7:0]commutation_state;   // verilog/TinyFPGA_B.v(116[11:28])
    wire [7:0]commutation_state_prev;   // verilog/TinyFPGA_B.v(117[11:33])
    
    wire dti;
    wire [7:0]dti_counter;   // verilog/TinyFPGA_B.v(126[11:22])
    
    wire n12787;
    wire [31:0]sweep_counter;   // verilog/TinyFPGA_B.v(128[9:22])
    
    wire direction;
    wire [23:0]encoder0_position_scaled;   // verilog/TinyFPGA_B.v(133[19:43])
    wire [23:0]encoder0_position_target;   // verilog/TinyFPGA_B.v(134[19:43])
    
    wire n5187, n14598, n12786, pwm_setpoint_23__N_195;
    wire [23:0]pwm_setpoint_23__N_171;
    wire [23:0]pwm_setpoint_23__N_27;
    wire [32:0]encoder0_position_scaled_23__N_123;
    
    wire n12785, n5215, n41, n40, n39, n38, n15241, n33, n32, 
        n31, n30, n29, n28, n27, n26, n25, n24, n23, n22, 
        n21, n20, n19, n18, n17, n16, n15, n14, n13, n12, 
        n11, direction_N_342, n10, n9, n25_adj_551, n24_adj_552, 
        n23_adj_553, n22_adj_554;
    wire [31:0]encoder0_position;   // verilog/TinyFPGA_B.v(131[9:26])
    
    wire n21_adj_555, n20_adj_556, n19_adj_557, n1693, n12733, n18_adj_558, 
        n17_adj_559, n5137, direction_N_340, n12784, n312, n16_adj_560, 
        n1619, n1618, n1377, n1641, n1640, n1639, n1638, n1637, 
        n1636, n1635, n1634, n1633, n1632, n1631, n1630, n1629, 
        n1628, n1627, n1621, n1620, n1626, n1625, n1624, n1623, 
        n1622, n12783, n12782, n13094, n8, n7, n6, n5, n4, 
        n3, n2, n12732, n13093;
    wire [23:0]duty_23__N_51;
    
    wire n14594;
    wire [7:0]commutation_state_7__N_253;
    
    wire commutation_state_7__N_261, n1302, n12731, n15384, n13092, 
        GHA_N_284, GLA_N_301, GHB_N_306, GLB_N_315, GHC_N_320, GLC_N_329, 
        dti_N_333, n13091, n12781, n12730, n5260, n5259, n5258, 
        n5256, n14558, n14588;
    wire [31:0]pwm_counter;   // verilog/pwm.v(11[9:20])
    
    wire n15_adj_561, n14_adj_562, n13_adj_563, n12_adj_564, n11_adj_565, 
        n10_adj_566, n9_adj_567, n8_adj_568, n7_adj_569, n6_adj_570, 
        n5_adj_571, n4_adj_572, n3_adj_573, n2_adj_574, n15121, n13090, 
        n12780, n13089, n12779, n12729, n12728;
    wire [2:0]reg_B;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(142[19:24])
    
    wire n3_adj_575, n4_adj_576, n5_adj_577, n6_adj_578, n7_adj_579, 
        n8_adj_580, n9_adj_581, n10_adj_582, n11_adj_583, n12_adj_584, 
        n13_adj_585, n14_adj_586, n15_adj_587, n16_adj_588, n17_adj_589, 
        n18_adj_590, n19_adj_591, n20_adj_592, n21_adj_593, n22_adj_594, 
        n23_adj_595, n24_adj_596, n25_adj_597;
    wire [1:0]a_new;   // vhdl/quadrature_decoder.vhd(40[9:14])
    
    wire b_prev, n13088, n12778, n14584, n12727, n404, n316, n403, 
        n402, n315, n314, n12726, n313, n12777, n12725, n14552, 
        n12617, n12724, n14368, n14550, n12723, direction_N_537, 
        n15110, n10_adj_598, n12776, n13087, n12775, n13086, n12774, 
        n13085, n12773, n12722, n12721, n12720, n12719, n12718, 
        n12717, n15104, n13084, n13083, n12772, n13082, n12771, 
        n295, n296, n297, n298, n299, n300, n301, n302, n303, 
        n304, n305, n306, n307, n308, n309, n310, n311, n12716, 
        n12715, n12714, n11878, n13675, n13672, n12770, n12713, 
        n14382, n13081, n14362, n13080, n2338, n13662, n13079, 
        n12769, n13078, n13660, n13658, n319, n13077, n318, n317, 
        n12768, n12712, n13656, n13076, n12711, n12767, n13075, 
        n13074, n12766, n13653, n14356, n14574, n14544, n13073, 
        n12765, n13072, n12764, n12710, n12763, n13071, n14350, 
        n12709, n12762, n13070, n13069, n15099, n13068, n15097, 
        n2566, n2565, n2564, n2563, n2562, n2561, n12761, n13067, 
        n12760, n828, n829, n830, n831, n832, n833, n14348, 
        n13066, n13065, n12759, n12708, n12707, n861, n13064, 
        n12758, n12706, n12705, n13063, n4_adj_599, n896, n897, 
        n898, n899, n900, n901, n927, n928, n929, n930, n931, 
        n932, n933, n13062, n13061, n12704, n960, n14346, n13060, 
        n12757, n12703, n12702, n995, n996, n997, n998, n999, 
        n1000, n1001, n13059, n12756, n13058, n1026, n1027, n1028, 
        n1029, n1030, n1031, n1032, n1033, n13057, n12755, n12701, 
        n13056, n12754, n1059, n13055, n13054, n1093, n1094, n1095, 
        n1096, n1097, n1098, n1099, n1100, n1101, n12753, n13053, 
        n12752, n1125, n1126, n1127, n1128, n1129, n1130, n1131, 
        n1132, n1133, n12751, n12750, n1158, n12749, n12700, n12748, 
        n12699, n1193, n1194, n1195, n1196, n1197, n1198, n1199, 
        n1200, n1201, n12698, n12747, n1224, n1225, n1226, n1227, 
        n1228, n1229, n1230, n1231, n1232, n1233, n12746, n12697, 
        n1257, n14534, n1292, n1293, n1294, n1295, n1296, n1297, 
        n1298, n1299, n1300, n1301, n12745, n12744, n1323, n1324, 
        n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, 
        n1333, n14530, n1356, n12743, n12696, n1391, n1392, n1393, 
        n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, 
        n14526, n1422, n1423, n1424, n1425, n1426, n1427, n1428, 
        n1429, n1430, n1431, n1432, n1433, n12742, n12695, n1455, 
        n12694, n12693, n12692, n1490, n1491, n1492, n1493, n1494, 
        n1495, n1496, n1497, n1498, n1499, n1500, n1501, n12691, 
        n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, 
        n1529, n1530, n1531, n1532, n1533, n1554, n12690, n12689, 
        n12688, n12687, n15091, n1589, n1590, n1591, n1592, n1593, 
        n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, 
        n1620_adj_600, n1621_adj_601, n1622_adj_602, n1623_adj_603, 
        n1624_adj_604, n1625_adj_605, n1626_adj_606, n1627_adj_607, 
        n1628_adj_608, n1629_adj_609, n1630_adj_610, n1631_adj_611, 
        n1632_adj_612, n1633_adj_613, n14330, n14524, n1653, n13748, 
        n12738, n12686, n1688, n1689, n1690, n1691, n1692, n1693_adj_614, 
        n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, 
        n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, 
        n1727, n1728, n1729, n1730, n1731, n1732, n1733, n14520, 
        n1752, n12685, n1787, n1788, n1789, n1790, n1791, n1792, 
        n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800, 
        n1801, n1818, n1819, n1820, n1821, n1822, n1823, n1824, 
        n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, 
        n1833, n14324, n1851, n12739, n1885, n1886, n1887, n1888, 
        n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, 
        n1897, n1898, n1899, n1900, n1901, n12684, n1917, n1918, 
        n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, 
        n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1950, 
        n13739, n14514, n12740, n12683, n1985, n1986, n1987, n1988, 
        n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996, 
        n1997, n1998, n1999, n2000, n2001, n2016, n2017, n2018, 
        n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026, 
        n2027, n2028, n2029, n2030, n2031, n2032, n2033, n15247, 
        n2049, n14318, n15352, n2084, n2085, n2086, n2087, n2088, 
        n2089, n2090, n2091, n2092, n2093, n2094, n2095, n2096, 
        n2097, n2098, n2099, n2100, n2101, n2115, n2116, n2117, 
        n2118, n2119, n2120, n2121, n2122, n2123, n2124, n2125, 
        n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133, 
        n14078, n12682, n2148, n12741, n12681, n2183, n2184, n2185, 
        n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193, 
        n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, 
        n14025, n14316, n2214, n2215, n2216, n2217, n2218, n2219, 
        n2220, n2221, n2222, n2223, n2224, n2225, n2226, n2227, 
        n2228, n2229, n2230, n2231, n2232, n2233, n2247, n12735, 
        n12680, n2282, n2283, n2284, n2285, n2286, n2287, n2288, 
        n2289, n2290, n2291, n2292, n2293, n2294, n2295, n2296, 
        n2297, n2298, n2299, n2300, n2301, n14508, n2313, n2314, 
        n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322, 
        n2323, n2324, n2325, n2326, n2327, n2328, n2329, n2330, 
        n2331, n2332, n2333, n2346, n12_adj_615, n2381, n2382, 
        n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390, 
        n2391, n2392, n2393, n2394, n2395, n2396, n2397, n2398, 
        n2399, n2400, n2401, n13012, n2412, n2413, n2414, n2415, 
        n2416, n2417, n2418, n2419, n2420, n2421, n2422, n2423, 
        n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, 
        n2432, n2433, n2445, n13011, n12679, n12678, n12616, n12615, 
        n2480, n2481, n2482, n2483, n2484, n2485, n2486, n2487, 
        n2488, n2489, n2490, n2491, n2492, n2493, n2494, n2495, 
        n2496, n2497, n2498, n2499, n2500, n2501, n13010, n2511, 
        n2512, n2513, n2514, n2515, n2516, n2517, n2518, n2519, 
        n2520, n2521, n2522, n2523, n2524, n2525, n2526, n2527, 
        n2528, n2529, n2530, n2531, n2532, n2533, n2544, n13009, 
        n13723, n12614, n13008, n2579, n2580, n2581, n2582, n2583, 
        n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591, 
        n2592, n2593, n2594, n2595, n2596, n2597, n2598, n2599, 
        n2600, n2601, n2610, n2611, n2612, n2613, n2614, n2615, 
        n2616, n2617, n2618, n2619, n2620, n2621, n2622, n2623, 
        n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631, 
        n2632, n2633, n2643, n24_adj_616, n13007, n13006, n2677, 
        n2678, n2679, n2680, n2681, n2682, n2683, n2684, n2685, 
        n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693, 
        n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701, 
        n22_adj_617, n13005, n2709, n2710, n2711, n2712, n2713, 
        n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721, 
        n2722, n2723, n2724, n2725, n2726, n2727, n2728, n2729, 
        n2730, n2731, n2732, n2733, n13004, n2742, n13003, n12734, 
        n12613, n13002, n13728, n14502, n2777, n2778, n2779, n2780, 
        n2781, n2782, n2783, n2784, n2785, n2786, n2787, n2788, 
        n2789, n2790, n2791, n2792, n2793, n2794, n2795, n2796, 
        n2797, n2798, n2799, n2800, n2801, n12612, n13001, n20_adj_618, 
        n2808, n2809, n2810, n2811, n2812, n2813, n2814, n2815, 
        n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, 
        n2824, n2825, n2826, n2827, n2828, n2829, n2830, n2831, 
        n2832, n2833, n2841, n13000, n12736, n14308, n12999, n2876, 
        n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884, 
        n2885, n2886, n2887, n2888, n2889, n2890, n2891, n2892, 
        n2893, n2894, n2895, n2896, n2897, n2898, n2899, n2900, 
        n2901, n2907, n2908, n2909, n2910, n2911, n2912, n2913, 
        n2914, n2915, n2916, n2917, n2918, n2919, n2920, n2921, 
        n2922, n2923, n2924, n2925, n2926, n2927, n2928, n2929, 
        n2930, n2931, n2932, n2933, n2940, n12998, n12611, n2975, 
        n2976, n2977, n2978, n2979, n2980, n2981, n2982, n2983, 
        n2984, n2985, n2986, n2987, n2988, n2989, n2990, n2991, 
        n2992, n2993, n2994, n2995, n2996, n2997, n2998, n2999, 
        n3000, n3001, n3006, n3007, n3008, n3009, n3010, n3011, 
        n3012, n3013, n3014, n3015, n3016, n3017, n3018, n3019, 
        n3020, n3021, n3022, n3023, n3024, n3025, n3026, n3027, 
        n3028, n3029, n3030, n3031, n3032, n3033, n3039, n16_adj_619, 
        n14306, n12997, n3074, n3075, n3076, n3077, n3078, n3079, 
        n3080, n3081, n3082, n3083, n3084, n3085, n3086, n3087, 
        n3088, n3089, n3090, n3091, n3092, n3093, n3094, n3095, 
        n3096, n3097, n3098, n3099, n3100, n3101, n3105, n3106, 
        n3107, n3108, n3109, n3110, n3111, n3112, n3113, n3114, 
        n3115, n3116, n3117, n3118, n3119, n3120, n3121, n3122, 
        n3123, n3124, n3125, n3126, n3127, n3128, n3129, n3130, 
        n3131, n3132, n3133, n3138, n12996, n5253, n12995, n3173, 
        n3174, n3175, n3176, n3177, n3178, n3179, n3180, n3181, 
        n3182, n3183, n3184, n3185, n3186, n3187, n3188, n3189, 
        n3190, n3191, n3192, n3193, n3194, n3195, n3196, n3197, 
        n3198, n3199, n3200, n3201, n12610, n3204, n3205, n3206, 
        n3207, n3208, n3209, n3210, n3211, n3212, n3213, n3214, 
        n3215, n3216, n3217, n3218, n3219, n3220, n3221, n3222, 
        n3223, n3224, n3225, n3226, n3227, n3228, n3229, n3230, 
        n3231, n3232, n3233, n15490, n3237, n14304, n12994, n14302, 
        n3271, n3272, n3273, n3274, n3275, n3276, n3277, n3278, 
        n3279, n3280, n3281, n3282, n3283, n3284, n3285, n3286, 
        n3287, n3288, n3289, n3290, n3291, n3292, n3293, n3294, 
        n3295, n3296, n3298, n3299, n3300, n3301, n12609, n12993, 
        n12992, n14300, n12063, n12737, n12991, n14298, n14296, 
        n14294, n14292, n12990, n12059, n12608, n12607, n12989, 
        n14288, n12988, n12606, n12605, n12987, n14286, n12604, 
        n14284, n12986, n14282, n12603, n12039, n12985, n12984, 
        n12602, n14272, n14270, n14268, n12601, n12600, n14490, 
        n12599, n12983, n14266, n12982, n2_adj_620, n3_adj_621, 
        n4_adj_622, n5_adj_623, n6_adj_624, n7_adj_625, n8_adj_626, 
        n9_adj_627, n10_adj_628, n11_adj_629, n12_adj_630, n13_adj_631, 
        n14_adj_632, n15_adj_633, n16_adj_634, n17_adj_635, n18_adj_636, 
        n19_adj_637, n20_adj_638, n21_adj_639, n22_adj_640, n23_adj_641, 
        n24_adj_642, n25_adj_643, n26_adj_644, n27_adj_645, n28_adj_646, 
        n29_adj_647, n30_adj_648, n31_adj_649, n32_adj_650, n33_adj_651, 
        n12981, n14264, n12980, n14262, n12979, n12598, n12978, 
        n12027, n12977, n12619, n14260, n12976, n12975, n12620, 
        n12621, n48, n49, n50, n51, n52, n53, n54, n55, n12974, 
        n13828, n5182, n14254, n12973, n14484, n13875, n14250, 
        n25_adj_652, n24_adj_653, n12972, n12971, n12019, n23_adj_654, 
        n12622, n4_adj_655, n6_adj_656, n8_adj_657, n9_adj_658, n10_adj_659, 
        n11_adj_660, n12_adj_661, n13_adj_662, n15_adj_663, n16_adj_664, 
        n17_adj_665, n19_adj_666, n21_adj_667, n23_adj_668, n24_adj_669, 
        n25_adj_670, n27_adj_671, n15229, n29_adj_672, n30_adj_673, 
        n31_adj_674, n33_adj_675, n35, n15223, n37, n15237, n39_adj_676, 
        n40_adj_677, n41_adj_678, n43, n45, n15245, n12623, n12970, 
        n12969, n12624, n12968, n14476, n14244, n12967, n12625, 
        n12626, n16_adj_679, n12966, n12965, n12964, n15_adj_680, 
        n10_adj_681, n12963, n12051, n12962, n12961, n12627, n12628, 
        n12960, n12959, n5_adj_682, n12958, n12629, n12957, n12630, 
        n14236, n12956, n12631, n12955, n12954, n12053, n11997, 
        n12953, n15081, n78, n79, n80, n81, n82, n83, n84, 
        n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, 
        n95, n6_adj_683, n7_adj_684, n8_adj_685, n9_adj_686, n10_adj_687, 
        n11_adj_688, n12_adj_689, n13_adj_690, n14_adj_691, n15_adj_692, 
        n16_adj_693, n17_adj_694, n18_adj_695, n19_adj_696, n20_adj_697, 
        n21_adj_698, n22_adj_699, n23_adj_700, n24_adj_701, n25_adj_702, 
        n26_adj_703, n12632, n12633, n12952, n12951, n12950, n12634, 
        n12949, n11991, n11989, n12948, n14230, n12947, n110, 
        n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n120, n121, n122, n123, n124, n125, n126, n127, n128, 
        n129, n130, n131, n132, n133, n134, n135, n12946, n15830, 
        n12635, n12945, n12944, n14224, n12943, n14222, n11985, 
        n12942, n12636, n12941, n12940, n12939, n15079, n11981, 
        n12938, n14216, n14464, n14214, n12937, n12936, n12935, 
        n14212, n12637, n12488, n12503, n12520, n12487, n12519, 
        n12471, n12934, n12933, n12932, n12534, n12931, n11977, 
        n12930, n12518, n12929, n15802, n12928, n12927, n12442, 
        n12926, n14460, n12925, n12924, n12923, n5_adj_704, n11971, 
        n12441, n12922, n12921, n12428, n12920, n12431, n12440, 
        n12470, n12435, n12502, n12919, n12918, n12917, n12439, 
        n12438, n12469, n12486, n12501, n12916, n12915, n11967, 
        n12485, n12914, n14_adj_705, n12913, n12484, n12517, n12437, 
        n12500, n12454, n12468, n12912, n12911, n14816, n12910, 
        n13787, n12499, n14812, n12516, n12483, n12453, n12482, 
        n12498, n14450, n14808, n15775, n10_adj_706, n12909, n12515, 
        n12533, n12434, n12514, n12481, n14804, n12908, n12907, 
        n11957, n12513, n12906, n12532, n12467, n12430, n12452, 
        n12427, n15076, n15075, n12905, n11955, n12451, n12904, 
        n14446, n12531, n12436, n12433, n12426, n12497, n15748, 
        n12903, n12902, n12901, n12900, n12530, n12429, n12480, 
        n12496, n12479, n14194, n14798, n12899, n11953, n12466, 
        n12898, n12897, n12512, n15203, n12529, n12528, n12495, 
        n12511, n12510, n12896, n15722, n12895, n15074, n15204, 
        n12894, n11947, n12494, n15195, n12450, n12527, n12432, 
        n12526, n12509, n12478, n12893, n12508, n15322, n12525, 
        n12465, n14440, n12464, n12892, n11945, n14929, n12891, 
        n11943, n12493, n15697, n12507, n12477, n12449, n12506, 
        n14188, n12505, n14928, n14438, n15418, n14788, n15257, 
        n12890, n12889, n11941, n12524, n14782, n12523, n12522, 
        n12492, n12491, n12476, n12888, n15146, n13871, n12463, 
        n12597, n12596, n12595, n12594, n12887, n14776, n12886, 
        n15674, n12885, n12884, n12593, n12592, n12591, n12590, 
        n12589, n14770, n12883, n12588, n12882, n14768, n12881, 
        n12880, n12587, n12586, n12879, n12585, n12645, n12644, 
        n12643, n14184, n14754, n15652, n25_adj_707, n14748, n12642, 
        n12878, n12641, n12640, n12639, n12638, n24_adj_708, n23_adj_709, 
        n12877, n11933, n12475, n14742, n12474, n12876, n12473, 
        n12448, n12447, n15144, n12446, n12504, n16_adj_710, n15_adj_711, 
        n6_adj_712, n14736, n12875, n12521, n12490, n12489, n12445, 
        n12444, n12874, n11927, n12443, n14730, n12873, n11925, 
        n12872, n11923, n12462, n12461, n12460, n12459, n12458, 
        n15630, n14428, n12871, n12870, n14728, n11919, n12869, 
        n12457, n12456, n15611, n12455, n12472, n12618, n15258, 
        n12584, n12646, n12647, n12648, n14568, n12649, n15246, 
        n14426, n15292, n12868, n12867, n12650, n12651, n12652, 
        n12653, n14034, n12654, n14174, n12655, n12866, n12656, 
        n12657, n12658, n12659, n12660, n12661, n14420, n12865, 
        n12864, n15591, n12662, n12663, n12664, n12665, n12666, 
        n12863, n12667, n12668, n12669, n12670, n5180, n12671, 
        n14714, n15243, n14168, n12862, n12672, n12673, n12674, 
        n12675, n12676, n13_adj_713, n17_adj_714, n23_adj_715, n27_adj_716, 
        n29_adj_717, n33_adj_718, n35_adj_719, n45_adj_720, n13197, 
        n14414, n12861, n12860, n12859, n12858, n14708, n12857, 
        n14162, n12677, n12583, n12856, n15572, n12855, n11909, 
        n12854, n12582, n12581, n12853, n15220, n12580, n12852, 
        n14156, n14702, n14406, n12851, n12850, n12579, n12578, 
        n12849, n15178, n15553, n15174, n14696, n12848, n12577, 
        n12847, n14690, n14688, n12576, n12846, n12575, n12845, 
        n12574, n12573, n12844, n12843, n12842, n12841, n12840, 
        n13654, n12839, n12838, n15537, n12837, n14674, n12572, 
        n12571, n12836, n12835, n12834, n14668, n12570, n12569, 
        n12568, n12833, n15522, n12567, n12566, n12832, n6_adj_721, 
        n12831, n14660, n13720, n12830, n12565, n12564, n12563, 
        n12829, n11872, n12828, n13808, n15508, n12562, n12827, 
        n13968, n12561, n12826, n14654, n12560, n12825, n12559, 
        n12558, n12824, n14150, n13831, n12823, n14650, n12822, 
        n14398, n15230, n12821, n12820, n14646, n12819, n14148, 
        n12818, n12817, n12557, n12556, n12816, n14640, n15485, 
        n12815, n14392, n12814, n12555, n12554, n12813, n14146, 
        n14634, n12553, n12812, n14390, n12811, n14117, n14628, 
        n12810, n12552, n12551, n12809, n14622, n12808, n14620, 
        n15451, n12550, n12807, n14384, n15254, n12549, n12806, 
        n12548, n12805, n12547, n12804, n12803, n12546, n12802, 
        n12545, n12801, n14129, n12544, n12800, n13605, n12799, 
        n12798, n15165, n12543, n12797, n11526, n12542, n12541, 
        n12796, n12795, n12540, n12794, n12539, n12793, n12538, 
        n12792, n12791, n15073, n12790, n12537, n12536, n12789, 
        n15072, n14604, n14116, n12535, n12788, n15071, n15070, 
        n13857;
    
    VCC i2 (.Y(VCC_net));
    \quadrature_decoder(1,500000)  quad_counter0 (.direction_N_537(direction_N_537), 
            .encoder0_position({encoder0_position}), .CLK_N_keep(CLK_N), 
            .n5258(n5258), .n1302(n1302), .ENCODER0_B_N_keep(ENCODER0_B_N), 
            .ENCODER0_A_N_keep(ENCODER0_A_N), .\a_new[1] (a_new[1]), .GND_net(GND_net), 
            .b_prev(b_prev), .VCC_net(VCC_net)) /* synthesis lattice_noprune=1 */ ;   // verilog/TinyFPGA_B.v(240[55] 247[4])
    SB_IO hall2_input (.PACKAGE_PIN(HALL2), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall2)) /* synthesis syn_instantiated=1, IO_FF_IN=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall2_input.PIN_TYPE = 6'b000001;
    defparam hall2_input.PULLUP = 1'b1;
    defparam hall2_input.NEG_TRIGGER = 1'b0;
    defparam hall2_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall3_input (.PACKAGE_PIN(HALL3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall3)) /* synthesis syn_instantiated=1, IO_FF_IN=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_setpoint_i0 (.Q(pwm_setpoint[0]), .C(CLK_N), .D(pwm_setpoint_23__N_27[0]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 encoder0_position_31__I_0_add_2173_32_lut (.I0(GND_net), .I1(n3205), 
            .I2(VCC_net), .I3(n12950), .O(n3272)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_32_lut.LUT_INIT = 16'hC33C;
    SB_DFF commutation_state_prev_i0 (.Q(commutation_state_prev[0]), .C(CLK_N), 
           .D(commutation_state[0]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF dir_160 (.Q(dir), .C(CLK_N), .D(pwm_setpoint_23__N_195));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF encoder0_position_scaled_i0 (.Q(encoder0_position_scaled[0]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[0]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i12970_4_lut (.I0(n2017), .I1(n2016), .I2(n2018), .I3(n14558), 
            .O(n2049));
    defparam i12970_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1307_3_lut (.I0(n1920), .I1(n1987), 
            .I2(n1950), .I3(GND_net), .O(n2019));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1307_3_lut.LUT_INIT = 16'hacac;
    SB_IO ENCODER0_B_pad (.PACKAGE_PIN(ENCODER0_B), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER0_B_N));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER0_B_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER0_B_pad.PULLUP = 1'b0;
    defparam ENCODER0_B_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER0_B_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY encoder0_position_31__I_0_add_2173_32 (.CI(n12950), .I0(n3205), 
            .I1(VCC_net), .CO(n12951));
    SB_LUT4 encoder0_position_31__I_0_add_1034_12_lut (.I0(GND_net), .I1(n1524), 
            .I2(VCC_net), .I3(n12573), .O(n1591)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_12_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i0 (.Q(duty[0]), .C(CLK_N), .D(duty_23__N_51[0]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE dti_163 (.Q(dti), .C(CLK_N), .E(n5187), .D(dti_N_333));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_4_lut (.I0(n2128), .I1(n2126), .I2(n2123), .I3(n2124), 
            .O(n14316));
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2173_31_lut (.I0(GND_net), .I1(n3206), 
            .I2(VCC_net), .I3(n12949), .O(n3273)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_15 (.CI(n12751), .I0(n2521), 
            .I1(VCC_net), .CO(n12752));
    SB_IO hall1_input (.PACKAGE_PIN(HALL1), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis syn_instantiated=1, IO_FF_IN=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY encoder0_position_31__I_0_add_2173_31 (.CI(n12949), .I0(n3206), 
            .I1(VCC_net), .CO(n12950));
    SB_LUT4 pwm_setpoint_23__I_0_i9_3_lut (.I0(duty[8]), .I1(pwm_setpoint_23__N_171[8]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[8]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE encoder0_position_target_i0_i0 (.Q(encoder0_position_target[0]), 
            .C(CLK_N), .E(n5215), .D(n1641));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 pwm_setpoint_23__I_0_i10_3_lut (.I0(duty[9]), .I1(pwm_setpoint_23__N_171[9]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[9]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1044_rep_29_3_lut (.I0(n1529), .I1(n1596), 
            .I2(n1554), .I3(GND_net), .O(n1628_adj_608));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1044_rep_29_3_lut.LUT_INIT = 16'hacac;
    SB_DFF direction_167 (.Q(direction), .C(CLK_N), .D(n2338));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_3_lut (.I0(n2122), .I1(n2125), .I2(n2127), .I3(GND_net), 
            .O(n14318));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_add_1704_14_lut (.I0(GND_net), .I1(n2522), 
            .I2(VCC_net), .I3(n12750), .O(n2589)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_14_lut.LUT_INIT = 16'hC33C;
    SB_DFF dti_counter_662__i7 (.Q(dti_counter[7]), .C(CLK_N), .D(n48));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_LUT4 encoder0_position_31__I_0_i1111_3_lut (.I0(n1628_adj_608), .I1(n1695), 
            .I2(n1653), .I3(GND_net), .O(n1727));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1111_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1177_3_lut (.I0(n1726), .I1(n1793), 
            .I2(n1752), .I3(GND_net), .O(n1825));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1177_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1244_3_lut (.I0(n1825), .I1(n1892), 
            .I2(n1851), .I3(GND_net), .O(n1924));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1244_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1311_3_lut (.I0(n1924), .I1(n1991), 
            .I2(n1950), .I3(GND_net), .O(n2023));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1311_3_lut.LUT_INIT = 16'hacac;
    SB_DFF dti_counter_662__i6 (.Q(dti_counter[6]), .C(CLK_N), .D(n49));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_CARRY encoder0_position_31__I_0_add_1034_12 (.CI(n12573), .I0(n1524), 
            .I1(VCC_net), .CO(n12574));
    SB_LUT4 encoder0_position_31__I_0_i1378_3_lut (.I0(n2023), .I1(n2090), 
            .I2(n2049), .I3(GND_net), .O(n2122));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1378_3_lut.LUT_INIT = 16'hacac;
    SB_DFF dti_counter_662__i5 (.Q(dti_counter[5]), .C(CLK_N), .D(n50));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_DFF dti_counter_662__i4 (.Q(dti_counter[4]), .C(CLK_N), .D(n51));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_DFF dti_counter_662__i3 (.Q(dti_counter[3]), .C(CLK_N), .D(n52));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_DFF dti_counter_662__i2 (.Q(dti_counter[2]), .C(CLK_N), .D(n53));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_DFF dti_counter_662__i1 (.Q(dti_counter[1]), .C(CLK_N), .D(n54));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_LUT4 i1_4_lut_adj_27 (.I0(n2514), .I1(n2515), .I2(n14188), .I3(n14117), 
            .O(n14194));
    defparam i1_4_lut_adj_27.LUT_INIT = 16'hfffe;
    SB_LUT4 i13103_4_lut (.I0(n2512), .I1(n2511), .I2(n2513), .I3(n14194), 
            .O(n2544));
    defparam i13103_4_lut.LUT_INIT = 16'h0001;
    SB_DFF pwm_setpoint_i10 (.Q(pwm_setpoint[10]), .C(CLK_N), .D(pwm_setpoint_23__N_27[10]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 encoder0_position_31__I_0_i1642_3_lut (.I0(n2415), .I1(n2482), 
            .I2(n2445), .I3(GND_net), .O(n2514));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1642_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1445_3_lut (.I0(n2122), .I1(n2189), 
            .I2(n2148), .I3(GND_net), .O(n2221));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1445_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_30_lut (.I0(GND_net), .I1(n3207), 
            .I2(VCC_net), .I3(n12948), .O(n3274)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10082_4_lut (.I0(n312), .I1(n2631), .I2(n2632), .I3(n2633), 
            .O(n12059));
    defparam i10082_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_2_lut (.I0(n2629), .I1(n2630), .I2(GND_net), .I3(GND_net), 
            .O(n14816));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY encoder0_position_31__I_0_add_1704_14 (.CI(n12750), .I0(n2522), 
            .I1(VCC_net), .CO(n12751));
    SB_LUT4 i1_4_lut_adj_28 (.I0(n2619), .I1(n14816), .I2(n2623), .I3(n12059), 
            .O(n14650));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'hfefa;
    SB_LUT4 encoder0_position_31__I_0_add_1034_11_lut (.I0(GND_net), .I1(n1525), 
            .I2(VCC_net), .I3(n12572), .O(n1592)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2173_30 (.CI(n12948), .I0(n3207), 
            .I1(VCC_net), .CO(n12949));
    SB_LUT4 encoder0_position_31__I_0_add_1704_13_lut (.I0(GND_net), .I1(n2523), 
            .I2(VCC_net), .I3(n12749), .O(n2590)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_29 (.I0(n2617), .I1(n2625), .I2(n2627), .I3(GND_net), 
            .O(n14812));
    defparam i1_3_lut_adj_29.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_add_2173_29_lut (.I0(GND_net), .I1(n3208), 
            .I2(VCC_net), .I3(n12947), .O(n3275)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_29_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_663__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 i9933_3_lut (.I0(n307), .I1(n2132), .I2(n2133), .I3(GND_net), 
            .O(n11909));
    defparam i9933_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 encoder0_position_31__I_0_i1512_3_lut (.I0(n2221), .I1(n2288), 
            .I2(n2247), .I3(GND_net), .O(n2320));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1512_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_29 (.CI(n12947), .I0(n3208), 
            .I1(VCC_net), .CO(n12948));
    SB_CARRY encoder0_position_31__I_0_add_1704_13 (.CI(n12749), .I0(n2523), 
            .I1(VCC_net), .CO(n12750));
    SB_DFF blink_counter_663__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_add_1168_11_lut (.I0(GND_net), .I1(n1725), 
            .I2(VCC_net), .I3(n12599), .O(n1792)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_30 (.I0(n2120), .I1(n2121), .I2(n14318), .I3(n14316), 
            .O(n14324));
    defparam i1_4_lut_adj_30.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2173_28_lut (.I0(GND_net), .I1(n3209), 
            .I2(VCC_net), .I3(n12946), .O(n3276)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_12_lut (.I0(GND_net), .I1(n2524), 
            .I2(VCC_net), .I3(n12748), .O(n2591)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_11 (.CI(n12599), .I0(n1725), 
            .I1(VCC_net), .CO(n12600));
    SB_CARRY encoder0_position_31__I_0_add_1704_12 (.CI(n12748), .I0(n2524), 
            .I1(VCC_net), .CO(n12749));
    SB_LUT4 encoder0_position_31__I_0_add_766_8_lut (.I0(GND_net), .I1(n1128), 
            .I2(VCC_net), .I3(n12527), .O(n1195)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_766_8 (.CI(n12527), .I0(n1128), 
            .I1(VCC_net), .CO(n12528));
    SB_LUT4 encoder0_position_31__I_0_add_1168_10_lut (.I0(GND_net), .I1(n1726), 
            .I2(VCC_net), .I3(n12598), .O(n1793)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1579_3_lut (.I0(n2320), .I1(n2387), 
            .I2(n2346), .I3(GND_net), .O(n2419));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1579_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_28 (.CI(n12946), .I0(n3209), 
            .I1(VCC_net), .CO(n12947));
    SB_CARRY encoder0_position_31__I_0_add_1034_11 (.CI(n12572), .I0(n1525), 
            .I1(VCC_net), .CO(n12573));
    SB_LUT4 encoder0_position_31__I_0_add_1034_10_lut (.I0(GND_net), .I1(n1526), 
            .I2(VCC_net), .I3(n12571), .O(n1593)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1646_3_lut (.I0(n2419), .I1(n2486), 
            .I2(n2445), .I3(GND_net), .O(n2518));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1646_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1713_3_lut (.I0(n2518), .I1(n2585), 
            .I2(n2544), .I3(GND_net), .O(n2617));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1713_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1780_3_lut (.I0(n2617), .I1(n2684), 
            .I2(n2643), .I3(GND_net), .O(n2716));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1780_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1847_3_lut (.I0(n2716), .I1(n2783), 
            .I2(n2742), .I3(GND_net), .O(n2815));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1847_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1704_11_lut (.I0(GND_net), .I1(n2525), 
            .I2(VCC_net), .I3(n12747), .O(n2592)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1914_3_lut (.I0(n2815), .I1(n2882), 
            .I2(n2841), .I3(GND_net), .O(n2914));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1914_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1034_10 (.CI(n12571), .I0(n1526), 
            .I1(VCC_net), .CO(n12572));
    SB_DFF blink_counter_663__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i1981_3_lut (.I0(n2914), .I1(n2981), 
            .I2(n2940), .I3(GND_net), .O(n3013));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1981_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2048_3_lut (.I0(n3013), .I1(n3080), 
            .I2(n3039), .I3(GND_net), .O(n3112));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2048_3_lut.LUT_INIT = 16'hacac;
    SB_DFF blink_counter_663__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_add_1034_9_lut (.I0(GND_net), .I1(n1527), 
            .I2(VCC_net), .I3(n12570), .O(n1594)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_9 (.CI(n12570), .I0(n1527), 
            .I1(VCC_net), .CO(n12571));
    SB_LUT4 encoder0_position_31__I_0_add_1034_8_lut (.I0(GND_net), .I1(n1528), 
            .I2(VCC_net), .I3(n12569), .O(n1595)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_8 (.CI(n12569), .I0(n1528), 
            .I1(VCC_net), .CO(n12570));
    SB_LUT4 encoder0_position_31__I_0_add_1034_7_lut (.I0(GND_net), .I1(n1529), 
            .I2(GND_net), .I3(n12568), .O(n1596)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_663__i20 (.Q(n6_adj_683), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i2115_3_lut (.I0(n3112), .I1(n3179), 
            .I2(n3138), .I3(GND_net), .O(n3211));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2115_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_27_lut (.I0(GND_net), .I1(n3210), 
            .I2(VCC_net), .I3(n12945), .O(n3277)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i17_3_lut (.I0(encoder0_position[16]), 
            .I1(n17), .I2(encoder0_position[31]), .I3(GND_net), .O(n303));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_1704_11 (.CI(n12747), .I0(n2525), 
            .I1(VCC_net), .CO(n12748));
    SB_CARRY encoder0_position_31__I_0_add_1034_7 (.CI(n12568), .I0(n1529), 
            .I1(GND_net), .CO(n12569));
    SB_DFF blink_counter_663__i19 (.Q(n7_adj_684), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_CARRY encoder0_position_31__I_0_add_1168_10 (.CI(n12598), .I0(n1726), 
            .I1(VCC_net), .CO(n12599));
    SB_LUT4 encoder0_position_31__I_0_i1185_3_lut (.I0(n303), .I1(n1801), 
            .I2(n1752), .I3(GND_net), .O(n1833));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1185_3_lut.LUT_INIT = 16'hacac;
    SB_DFF blink_counter_663__i18 (.Q(n8_adj_685), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i17 (.Q(n9_adj_686), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i1252_3_lut (.I0(n1833), .I1(n1900), 
            .I2(n1851), .I3(GND_net), .O(n1932));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1252_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1319_3_lut (.I0(n1932), .I1(n1999), 
            .I2(n1950), .I3(GND_net), .O(n2031));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1319_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1386_3_lut (.I0(n2031), .I1(n2098), 
            .I2(n2049), .I3(GND_net), .O(n2130));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1386_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1453_3_lut (.I0(n2130), .I1(n2197), 
            .I2(n2148), .I3(GND_net), .O(n2229));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1453_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1520_3_lut (.I0(n2229), .I1(n2296), 
            .I2(n2247), .I3(GND_net), .O(n2328));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1520_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1587_3_lut (.I0(n2328), .I1(n2395), 
            .I2(n2346), .I3(GND_net), .O(n2427));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1587_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1654_3_lut (.I0(n2427), .I1(n2494), 
            .I2(n2445), .I3(GND_net), .O(n2526));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1654_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i23_3_lut (.I0(encoder0_position[22]), 
            .I1(n11), .I2(encoder0_position[31]), .I3(GND_net), .O(n297));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF blink_counter_663__i16 (.Q(n10_adj_687), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i15 (.Q(n11_adj_688), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i777_3_lut (.I0(n297), .I1(n1201), 
            .I2(n1158), .I3(GND_net), .O(n1233));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i777_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i844_3_lut (.I0(n1233), .I1(n1300), 
            .I2(n1257), .I3(GND_net), .O(n1332));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i844_3_lut.LUT_INIT = 16'hacac;
    SB_DFF blink_counter_663__i14 (.Q(n12_adj_689), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i911_3_lut (.I0(n1332), .I1(n1399), 
            .I2(n1356), .I3(GND_net), .O(n1431));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i911_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i978_3_lut (.I0(n1431), .I1(n1498), 
            .I2(n1455), .I3(GND_net), .O(n1530));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i978_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1034_6_lut (.I0(GND_net), .I1(n1530), 
            .I2(GND_net), .I3(n12567), .O(n1597)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_6 (.CI(n12567), .I0(n1530), 
            .I1(GND_net), .CO(n12568));
    SB_LUT4 encoder0_position_31__I_0_add_1034_5_lut (.I0(GND_net), .I1(n1531), 
            .I2(VCC_net), .I3(n12566), .O(n1598)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_5 (.CI(n12566), .I0(n1531), 
            .I1(VCC_net), .CO(n12567));
    SB_LUT4 encoder0_position_31__I_0_add_1034_4_lut (.I0(GND_net), .I1(n1532), 
            .I2(GND_net), .I3(n12565), .O(n1599)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_4 (.CI(n12565), .I0(n1532), 
            .I1(GND_net), .CO(n12566));
    SB_DFF blink_counter_663__i13 (.Q(n13_adj_690), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 i1_4_lut_adj_31 (.I0(n14812), .I1(n2615), .I2(n14650), .I3(n2616), 
            .O(n14654));
    defparam i1_4_lut_adj_31.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1034_3_lut (.I0(GND_net), .I1(n1533), 
            .I2(VCC_net), .I3(n12564), .O(n1600)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_663__i12 (.Q(n14_adj_691), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_CARRY encoder0_position_31__I_0_add_2173_27 (.CI(n12945), .I0(n3210), 
            .I1(VCC_net), .CO(n12946));
    SB_LUT4 i1_4_lut_adj_32 (.I0(n2626), .I1(n2622), .I2(n2628), .I3(n2624), 
            .O(n14668));
    defparam i1_4_lut_adj_32.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1704_10_lut (.I0(GND_net), .I1(n2526), 
            .I2(VCC_net), .I3(n12746), .O(n2593)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_10_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_663__i11 (.Q(n15_adj_692), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_i1176_3_lut (.I0(n1725), .I1(n1792), 
            .I2(n1752), .I3(GND_net), .O(n1824));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1176_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_26_lut (.I0(GND_net), .I1(n3211), 
            .I2(VCC_net), .I3(n12944), .O(n3278)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_10 (.CI(n12746), .I0(n2526), 
            .I1(VCC_net), .CO(n12747));
    SB_LUT4 encoder0_position_31__I_0_add_1168_9_lut (.I0(GND_net), .I1(n1727), 
            .I2(VCC_net), .I3(n12597), .O(n1794)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n2129), .I1(n11909), .I2(n2130), .I3(n2131), 
            .O(n13787));
    defparam i1_4_lut_adj_33.LUT_INIT = 16'ha080;
    SB_LUT4 encoder0_position_31__I_0_i1243_3_lut (.I0(n1824), .I1(n1891), 
            .I2(n1851), .I3(GND_net), .O(n1923));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1243_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_26 (.CI(n12944), .I0(n3211), 
            .I1(VCC_net), .CO(n12945));
    SB_DFF pwm_setpoint_i9 (.Q(pwm_setpoint[9]), .C(CLK_N), .D(pwm_setpoint_23__N_27[9]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 encoder0_position_31__I_0_i1310_3_lut (.I0(n1923), .I1(n1990), 
            .I2(n1950), .I3(GND_net), .O(n2022));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1310_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1377_3_lut (.I0(n2022), .I1(n2089), 
            .I2(n2049), .I3(GND_net), .O(n2121));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1377_3_lut.LUT_INIT = 16'hacac;
    SB_DFF blink_counter_663__i10 (.Q(n16_adj_693), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i9 (.Q(n17_adj_694), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i8 (.Q(n18_adj_695), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i7 (.Q(n19_adj_696), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i6 (.Q(n20_adj_697), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i5 (.Q(n21_adj_698), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i4 (.Q(n22_adj_699), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i3 (.Q(n23_adj_700), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i2 (.Q(n24_adj_701), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_663__i1 (.Q(n25_adj_702), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFFSR sweep_counter_660_661__i18 (.Q(sweep_counter[17]), .C(CLK_N), 
            .D(n78), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i17 (.Q(sweep_counter[16]), .C(CLK_N), 
            .D(n79), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i16 (.Q(sweep_counter[15]), .C(CLK_N), 
            .D(n80), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i15 (.Q(sweep_counter[14]), .C(CLK_N), 
            .D(n81), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i14 (.Q(sweep_counter[13]), .C(CLK_N), 
            .D(n82), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i13 (.Q(sweep_counter[12]), .C(CLK_N), 
            .D(n83), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i12 (.Q(sweep_counter[11]), .C(CLK_N), 
            .D(n84), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i11 (.Q(sweep_counter[10]), .C(CLK_N), 
            .D(n85), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i10 (.Q(sweep_counter[9]), .C(CLK_N), 
            .D(n86), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i9 (.Q(sweep_counter[8]), .C(CLK_N), 
            .D(n87), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i8 (.Q(sweep_counter[7]), .C(CLK_N), 
            .D(n88), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i7 (.Q(sweep_counter[6]), .C(CLK_N), 
            .D(n89), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i6 (.Q(sweep_counter[5]), .C(CLK_N), 
            .D(n90), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i5 (.Q(sweep_counter[4]), .C(CLK_N), 
            .D(n91), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i4 (.Q(sweep_counter[3]), .C(CLK_N), 
            .D(n92), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i3 (.Q(sweep_counter[2]), .C(CLK_N), 
            .D(n93), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFFSR sweep_counter_660_661__i2 (.Q(sweep_counter[1]), .C(CLK_N), 
            .D(n94), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_DFF pwm_setpoint_i8 (.Q(pwm_setpoint[8]), .C(CLK_N), .D(pwm_setpoint_23__N_27[8]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 encoder0_position_31__I_0_i1444_3_lut (.I0(n2121), .I1(n2188), 
            .I2(n2148), .I3(GND_net), .O(n2220));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1444_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_25_lut (.I0(GND_net), .I1(n3212), 
            .I2(VCC_net), .I3(n12943), .O(n3279)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1511_3_lut (.I0(n2220), .I1(n2287), 
            .I2(n2247), .I3(GND_net), .O(n2319));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1511_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1578_3_lut (.I0(n2319), .I1(n2386), 
            .I2(n2346), .I3(GND_net), .O(n2418));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1578_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1645_3_lut (.I0(n2418), .I1(n2485), 
            .I2(n2445), .I3(GND_net), .O(n2517));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1645_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_25 (.CI(n12943), .I0(n3212), 
            .I1(VCC_net), .CO(n12944));
    SB_LUT4 encoder0_position_31__I_0_add_1704_9_lut (.I0(GND_net), .I1(n2527), 
            .I2(VCC_net), .I3(n12745), .O(n2594)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_9 (.CI(n12597), .I0(n1727), 
            .I1(VCC_net), .CO(n12598));
    SB_LUT4 encoder0_position_31__I_0_add_2173_24_lut (.I0(GND_net), .I1(n3213), 
            .I2(VCC_net), .I3(n12942), .O(n3280)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_9 (.CI(n12745), .I0(n2527), 
            .I1(VCC_net), .CO(n12746));
    SB_LUT4 encoder0_position_31__I_0_i1712_3_lut (.I0(n2517), .I1(n2584), 
            .I2(n2544), .I3(GND_net), .O(n2616));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1712_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1779_3_lut (.I0(n2616), .I1(n2683), 
            .I2(n2643), .I3(GND_net), .O(n2715));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1779_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_24 (.CI(n12942), .I0(n3213), 
            .I1(VCC_net), .CO(n12943));
    SB_LUT4 encoder0_position_31__I_0_add_1704_8_lut (.I0(GND_net), .I1(n2528), 
            .I2(VCC_net), .I3(n12744), .O(n2595)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1168_8_lut (.I0(GND_net), .I1(n1728), 
            .I2(VCC_net), .I3(n12596), .O(n1795)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1034_3 (.CI(n12564), .I0(n1533), 
            .I1(VCC_net), .CO(n12565));
    SB_CARRY encoder0_position_31__I_0_add_1704_8 (.CI(n12744), .I0(n2528), 
            .I1(VCC_net), .CO(n12745));
    SB_LUT4 encoder0_position_31__I_0_i1846_3_lut (.I0(n2715), .I1(n2782), 
            .I2(n2742), .I3(GND_net), .O(n2814));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1846_3_lut.LUT_INIT = 16'hacac;
    SB_DFFE encoder0_position_target_i0_i23 (.Q(encoder0_position_target[23]), 
            .C(CLK_N), .E(n5215), .D(n1618));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_i1913_3_lut (.I0(n2814), .I1(n2881), 
            .I2(n2841), .I3(GND_net), .O(n2913));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1913_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1980_3_lut (.I0(n2913), .I1(n2980), 
            .I2(n2940), .I3(GND_net), .O(n3012));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1980_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_23_lut (.I0(GND_net), .I1(n3214), 
            .I2(VCC_net), .I3(n12941), .O(n3281)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_7_lut (.I0(GND_net), .I1(n2529), 
            .I2(GND_net), .I3(n12743), .O(n2596)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_8 (.CI(n12596), .I0(n1728), 
            .I1(VCC_net), .CO(n12597));
    SB_LUT4 encoder0_position_31__I_0_add_1034_2_lut (.I0(GND_net), .I1(n301), 
            .I2(GND_net), .I3(VCC_net), .O(n1601)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2047_3_lut (.I0(n3012), .I1(n3079), 
            .I2(n3039), .I3(GND_net), .O(n3111));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2047_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2114_3_lut (.I0(n3111), .I1(n3178), 
            .I2(n3138), .I3(GND_net), .O(n3210));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2114_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_34 (.I0(n2612), .I1(n2613), .I2(n2614), .I3(n14654), 
            .O(n14660));
    defparam i1_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_1034_2 (.CI(VCC_net), .I0(n301), 
            .I1(GND_net), .CO(n12564));
    SB_LUT4 encoder0_position_31__I_0_add_967_14_lut (.I0(n15572), .I1(n1422), 
            .I2(VCC_net), .I3(n12563), .O(n1521)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i24_3_lut (.I0(encoder0_position[23]), 
            .I1(n10), .I2(encoder0_position[31]), .I3(GND_net), .O(n296));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i709_3_lut (.I0(n296), .I1(n1101), 
            .I2(n1059), .I3(GND_net), .O(n1133));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i709_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_967_13_lut (.I0(GND_net), .I1(n1423), 
            .I2(VCC_net), .I3(n12562), .O(n1490)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_13 (.CI(n12562), .I0(n1423), 
            .I1(VCC_net), .CO(n12563));
    SB_LUT4 encoder0_position_31__I_0_i776_3_lut (.I0(n1133), .I1(n1200), 
            .I2(n1158), .I3(GND_net), .O(n1232));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i776_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_23 (.CI(n12941), .I0(n3214), 
            .I1(VCC_net), .CO(n12942));
    SB_CARRY encoder0_position_31__I_0_add_1704_7 (.CI(n12743), .I0(n2529), 
            .I1(GND_net), .CO(n12744));
    SB_LUT4 encoder0_position_31__I_0_i843_3_lut (.I0(n1232), .I1(n1299), 
            .I2(n1257), .I3(GND_net), .O(n1331));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i843_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_22_lut (.I0(GND_net), .I1(n3215), 
            .I2(VCC_net), .I3(n12940), .O(n3282)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i910_3_lut (.I0(n1331), .I1(n1398), 
            .I2(n1356), .I3(GND_net), .O(n1430));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i910_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i977_3_lut (.I0(n1430), .I1(n1497), 
            .I2(n1455), .I3(GND_net), .O(n1529));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i977_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i18_3_lut (.I0(encoder0_position[17]), 
            .I1(n16), .I2(encoder0_position[31]), .I3(GND_net), .O(n302));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2173_22 (.CI(n12940), .I0(n3215), 
            .I1(VCC_net), .CO(n12941));
    SB_LUT4 encoder0_position_31__I_0_add_1704_6_lut (.I0(GND_net), .I1(n2530), 
            .I2(GND_net), .I3(n12742), .O(n2597)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1168_7_lut (.I0(GND_net), .I1(n1729), 
            .I2(GND_net), .I3(n12595), .O(n1796)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1117_3_lut (.I0(n302), .I1(n1701), 
            .I2(n1653), .I3(GND_net), .O(n1733));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1117_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1184_3_lut (.I0(n1733), .I1(n1800), 
            .I2(n1752), .I3(GND_net), .O(n1832));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1184_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1251_3_lut (.I0(n1832), .I1(n1899), 
            .I2(n1851), .I3(GND_net), .O(n1931));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1251_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1318_3_lut (.I0(n1931), .I1(n1998), 
            .I2(n1950), .I3(GND_net), .O(n2030));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1318_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1385_3_lut (.I0(n2030), .I1(n2097), 
            .I2(n2049), .I3(GND_net), .O(n2129));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1385_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_967_12_lut (.I0(GND_net), .I1(n1424), 
            .I2(VCC_net), .I3(n12561), .O(n1491)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_12 (.CI(n12561), .I0(n1424), 
            .I1(VCC_net), .CO(n12562));
    SB_LUT4 encoder0_position_31__I_0_add_2173_21_lut (.I0(GND_net), .I1(n3216), 
            .I2(VCC_net), .I3(n12939), .O(n3283)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1452_3_lut (.I0(n2129), .I1(n2196), 
            .I2(n2148), .I3(GND_net), .O(n2228));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1452_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1704_6 (.CI(n12742), .I0(n2530), 
            .I1(GND_net), .CO(n12743));
    SB_LUT4 encoder0_position_31__I_0_i1519_rep_17_3_lut (.I0(n2228), .I1(n2295), 
            .I2(n2247), .I3(GND_net), .O(n2327));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1519_rep_17_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12485_3_lut (.I0(n2327), .I1(n2394), .I2(n2346), .I3(GND_net), 
            .O(n2426));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12485_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12486_3_lut (.I0(n2426), .I1(n2493), .I2(n2445), .I3(GND_net), 
            .O(n2525));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12486_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_21 (.CI(n12939), .I0(n3216), 
            .I1(VCC_net), .CO(n12940));
    SB_LUT4 i10989_3_lut (.I0(n7), .I1(n2566), .I2(n13653), .I3(GND_net), 
            .O(n13662));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2173_20_lut (.I0(GND_net), .I1(n3217), 
            .I2(VCC_net), .I3(n12938), .O(n3284)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12421_3_lut (.I0(encoder0_position[26]), .I1(n13662), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n833));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12421_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_1034_13 (.CI(n12574), .I0(n1523), 
            .I1(VCC_net), .CO(n12575));
    SB_LUT4 encoder0_position_31__I_0_i572_3_lut (.I0(n833), .I1(n900), 
            .I2(n861), .I3(GND_net), .O(n932));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i572_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2173_20 (.CI(n12938), .I0(n3217), 
            .I1(VCC_net), .CO(n12939));
    SB_LUT4 encoder0_position_31__I_0_add_1704_5_lut (.I0(GND_net), .I1(n2531), 
            .I2(VCC_net), .I3(n12741), .O(n2598)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i639_3_lut (.I0(n932), .I1(n999), 
            .I2(n960), .I3(GND_net), .O(n1031));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2173_19_lut (.I0(GND_net), .I1(n3218), 
            .I2(VCC_net), .I3(n12937), .O(n3285)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_5 (.CI(n12741), .I0(n2531), 
            .I1(VCC_net), .CO(n12742));
    SB_LUT4 encoder0_position_31__I_0_i706_3_lut (.I0(n1031), .I1(n1098), 
            .I2(n1059), .I3(GND_net), .O(n1130));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i706_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_19 (.CI(n12937), .I0(n3218), 
            .I1(VCC_net), .CO(n12938));
    SB_LUT4 encoder0_position_31__I_0_add_1704_4_lut (.I0(GND_net), .I1(n2532), 
            .I2(GND_net), .I3(n12740), .O(n2599)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2173_18_lut (.I0(GND_net), .I1(n3219), 
            .I2(VCC_net), .I3(n12936), .O(n3286)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_4 (.CI(n12740), .I0(n2532), 
            .I1(GND_net), .CO(n12741));
    SB_LUT4 encoder0_position_31__I_0_i773_3_lut (.I0(n1130), .I1(n1197), 
            .I2(n1158), .I3(GND_net), .O(n1229));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i773_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_18 (.CI(n12936), .I0(n3219), 
            .I1(VCC_net), .CO(n12937));
    SB_LUT4 encoder0_position_31__I_0_add_1704_3_lut (.I0(GND_net), .I1(n2533), 
            .I2(VCC_net), .I3(n12739), .O(n2600)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_7 (.CI(n12595), .I0(n1729), 
            .I1(GND_net), .CO(n12596));
    SB_LUT4 i1_4_lut_adj_35 (.I0(n2118), .I1(n13787), .I2(n2119), .I3(n14324), 
            .O(n14330));
    defparam i1_4_lut_adj_35.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2173_17_lut (.I0(GND_net), .I1(n3220), 
            .I2(VCC_net), .I3(n12935), .O(n3287)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_3 (.CI(n12739), .I0(n2533), 
            .I1(VCC_net), .CO(n12740));
    SB_LUT4 encoder0_position_31__I_0_add_1168_6_lut (.I0(GND_net), .I1(n1730), 
            .I2(GND_net), .I3(n12594), .O(n1797)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2173_17 (.CI(n12935), .I0(n3220), 
            .I1(VCC_net), .CO(n12936));
    SB_LUT4 encoder0_position_31__I_0_add_1704_2_lut (.I0(GND_net), .I1(n311), 
            .I2(GND_net), .I3(VCC_net), .O(n2601)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_967_11_lut (.I0(GND_net), .I1(n1425), 
            .I2(VCC_net), .I3(n12560), .O(n1492)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_11 (.CI(n12560), .I0(n1425), 
            .I1(VCC_net), .CO(n12561));
    SB_LUT4 encoder0_position_31__I_0_add_967_10_lut (.I0(GND_net), .I1(n1426), 
            .I2(VCC_net), .I3(n12559), .O(n1493)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2173_16_lut (.I0(GND_net), .I1(n3221), 
            .I2(VCC_net), .I3(n12934), .O(n3288)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_2 (.CI(VCC_net), .I0(n311), 
            .I1(GND_net), .CO(n12739));
    SB_CARRY encoder0_position_31__I_0_add_1168_6 (.CI(n12594), .I0(n1730), 
            .I1(GND_net), .CO(n12595));
    SB_LUT4 encoder0_position_31__I_0_i840_3_lut (.I0(n1229), .I1(n1296), 
            .I2(n1257), .I3(GND_net), .O(n1328));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i840_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_16 (.CI(n12934), .I0(n3221), 
            .I1(VCC_net), .CO(n12935));
    SB_LUT4 encoder0_position_31__I_0_add_1637_24_lut (.I0(n15802), .I1(n2412), 
            .I2(VCC_net), .I3(n12738), .O(n2511)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_i907_3_lut (.I0(n1328), .I1(n1395), 
            .I2(n1356), .I3(GND_net), .O(n1427));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i907_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i974_3_lut (.I0(n1427), .I1(n1494), 
            .I2(n1455), .I3(GND_net), .O(n1526));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i974_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i25_3_lut (.I0(encoder0_position[24]), 
            .I1(n9), .I2(encoder0_position[31]), .I3(GND_net), .O(n295));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i641_3_lut (.I0(n295), .I1(n1001), 
            .I2(n960), .I3(GND_net), .O(n1033));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i708_3_lut (.I0(n1033), .I1(n1100), 
            .I2(n1059), .I3(GND_net), .O(n1132));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i708_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i775_3_lut (.I0(n1132), .I1(n1199), 
            .I2(n1158), .I3(GND_net), .O(n1231));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i775_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i842_3_lut (.I0(n1231), .I1(n1298), 
            .I2(n1257), .I3(GND_net), .O(n1330));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i842_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i909_3_lut (.I0(n1330), .I1(n1397), 
            .I2(n1356), .I3(GND_net), .O(n1429));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i909_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_15_lut (.I0(GND_net), .I1(n3222), 
            .I2(VCC_net), .I3(n12933), .O(n3289)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i976_rep_49_3_lut (.I0(n1429), .I1(n1496), 
            .I2(n1455), .I3(GND_net), .O(n1528));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i976_rep_49_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1637_23_lut (.I0(GND_net), .I1(n2413), 
            .I2(VCC_net), .I3(n12737), .O(n2480)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1168_5_lut (.I0(GND_net), .I1(n1731), 
            .I2(VCC_net), .I3(n12593), .O(n1798)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12995_4_lut (.I0(n2116), .I1(n2115), .I2(n2117), .I3(n14330), 
            .O(n2148));
    defparam i12995_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1374_3_lut (.I0(n2019), .I1(n2086), 
            .I2(n2049), .I3(GND_net), .O(n2118));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1374_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12477_3_lut (.I0(n1528), .I1(n1595), .I2(n1554), .I3(GND_net), 
            .O(n1627_adj_607));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12477_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_15 (.CI(n12933), .I0(n3222), 
            .I1(VCC_net), .CO(n12934));
    SB_LUT4 i1_2_lut_adj_36 (.I0(n2224), .I1(n2227), .I2(GND_net), .I3(GND_net), 
            .O(n14584));
    defparam i1_2_lut_adj_36.LUT_INIT = 16'heeee;
    SB_LUT4 encoder0_position_31__I_0_add_2173_14_lut (.I0(GND_net), .I1(n3223), 
            .I2(VCC_net), .I3(n12932), .O(n3290)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12478_3_lut (.I0(n1627_adj_607), .I1(n1694), .I2(n1653), 
            .I3(GND_net), .O(n1726));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12478_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i19_3_lut (.I0(encoder0_position[18]), 
            .I1(n15), .I2(encoder0_position[31]), .I3(GND_net), .O(n301));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2173_14 (.CI(n12932), .I0(n3223), 
            .I1(VCC_net), .CO(n12933));
    SB_CARRY encoder0_position_31__I_0_add_1637_23 (.CI(n12737), .I0(n2413), 
            .I1(VCC_net), .CO(n12738));
    SB_LUT4 encoder0_position_31__I_0_add_2173_13_lut (.I0(GND_net), .I1(n3224), 
            .I2(VCC_net), .I3(n12931), .O(n3291)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_22_lut (.I0(GND_net), .I1(n2414), 
            .I2(VCC_net), .I3(n12736), .O(n2481)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_5 (.CI(n12593), .I0(n1731), 
            .I1(VCC_net), .CO(n12594));
    SB_LUT4 i1_4_lut_adj_37 (.I0(n2226), .I1(n14584), .I2(n2228), .I3(n2225), 
            .O(n14588));
    defparam i1_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_i1049_3_lut (.I0(n301), .I1(n1601), 
            .I2(n1554), .I3(GND_net), .O(n1633_adj_613));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1049_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_13 (.CI(n12931), .I0(n3224), 
            .I1(VCC_net), .CO(n12932));
    SB_CARRY encoder0_position_31__I_0_add_1637_22 (.CI(n12736), .I0(n2414), 
            .I1(VCC_net), .CO(n12737));
    SB_LUT4 encoder0_position_31__I_0_add_1168_4_lut (.I0(GND_net), .I1(n1732), 
            .I2(GND_net), .I3(n12592), .O(n1799)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_10 (.CI(n12559), .I0(n1426), 
            .I1(VCC_net), .CO(n12560));
    SB_LUT4 encoder0_position_31__I_0_i1116_3_lut (.I0(n1633_adj_613), .I1(n1700), 
            .I2(n1653), .I3(GND_net), .O(n1732));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1116_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1183_3_lut (.I0(n1732), .I1(n1799), 
            .I2(n1752), .I3(GND_net), .O(n1831));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1183_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1250_3_lut (.I0(n1831), .I1(n1898), 
            .I2(n1851), .I3(GND_net), .O(n1930));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1250_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1317_3_lut (.I0(n1930), .I1(n1997), 
            .I2(n1950), .I3(GND_net), .O(n2029));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1317_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1384_3_lut (.I0(n2029), .I1(n2096), 
            .I2(n2049), .I3(GND_net), .O(n2128));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1384_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1451_3_lut (.I0(n2128), .I1(n2195), 
            .I2(n2148), .I3(GND_net), .O(n2227));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1451_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1518_3_lut (.I0(n2227), .I1(n2294), 
            .I2(n2247), .I3(GND_net), .O(n2326));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1518_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_967_9_lut (.I0(GND_net), .I1(n1427), 
            .I2(VCC_net), .I3(n12558), .O(n1494)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1585_3_lut (.I0(n2326), .I1(n2393), 
            .I2(n2346), .I3(GND_net), .O(n2425));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1585_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_967_9 (.CI(n12558), .I0(n1427), 
            .I1(VCC_net), .CO(n12559));
    SB_LUT4 encoder0_position_31__I_0_i1652_3_lut (.I0(n2425), .I1(n2492), 
            .I2(n2445), .I3(GND_net), .O(n2524));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1652_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_12_lut (.I0(GND_net), .I1(n3225), 
            .I2(VCC_net), .I3(n12930), .O(n3292)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_21_lut (.I0(GND_net), .I1(n2415), 
            .I2(VCC_net), .I3(n12735), .O(n2482)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2113_3_lut (.I0(n3110), .I1(n3177), 
            .I2(n3138), .I3(GND_net), .O(n3209));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2113_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_12 (.CI(n12930), .I0(n3225), 
            .I1(VCC_net), .CO(n12931));
    SB_LUT4 encoder0_position_31__I_0_mux_3_i26_3_lut (.I0(encoder0_position[25]), 
            .I1(n8), .I2(encoder0_position[31]), .I3(GND_net), .O(n41));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i573_3_lut (.I0(n41), .I1(n901), .I2(n861), 
            .I3(GND_net), .O(n933));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i573_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i640_3_lut (.I0(n933), .I1(n1000), 
            .I2(n960), .I3(GND_net), .O(n1032));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i640_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i707_3_lut (.I0(n1032), .I1(n1099), 
            .I2(n1059), .I3(GND_net), .O(n1131));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i707_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i774_3_lut (.I0(n1131), .I1(n1198), 
            .I2(n1158), .I3(GND_net), .O(n1230));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i774_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i841_3_lut (.I0(n1230), .I1(n1297), 
            .I2(n1257), .I3(GND_net), .O(n1329));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i841_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10000_4_lut (.I0(n308), .I1(n2231), .I2(n2232), .I3(n2233), 
            .O(n11977));
    defparam i10000_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 encoder0_position_31__I_0_i908_3_lut (.I0(n1329), .I1(n1396), 
            .I2(n1356), .I3(GND_net), .O(n1428));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i908_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_11_lut (.I0(GND_net), .I1(n3226), 
            .I2(VCC_net), .I3(n12929), .O(n3293)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_21 (.CI(n12735), .I0(n2415), 
            .I1(VCC_net), .CO(n12736));
    SB_CARRY encoder0_position_31__I_0_add_1168_4 (.CI(n12592), .I0(n1732), 
            .I1(GND_net), .CO(n12593));
    SB_LUT4 encoder0_position_31__I_0_add_967_8_lut (.I0(GND_net), .I1(n1428), 
            .I2(VCC_net), .I3(n12557), .O(n1495)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i975_3_lut (.I0(n1428), .I1(n1495), 
            .I2(n1455), .I3(GND_net), .O(n1527));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i975_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1042_3_lut (.I0(n1527), .I1(n1594), 
            .I2(n1554), .I3(GND_net), .O(n1626_adj_606));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1042_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1109_3_lut (.I0(n1626_adj_606), .I1(n1693_adj_614), 
            .I2(n1653), .I3(GND_net), .O(n1725));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1109_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_11 (.CI(n12929), .I0(n3226), 
            .I1(VCC_net), .CO(n12930));
    SB_LUT4 encoder0_position_31__I_0_add_1637_20_lut (.I0(GND_net), .I1(n2416), 
            .I2(VCC_net), .I3(n12734), .O(n2483)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2173_10_lut (.I0(GND_net), .I1(n3227), 
            .I2(VCC_net), .I3(n12928), .O(n3294)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2173_10 (.CI(n12928), .I0(n3227), 
            .I1(VCC_net), .CO(n12929));
    SB_LUT4 encoder0_position_31__I_0_i2112_3_lut (.I0(n3109), .I1(n3176), 
            .I2(n3138), .I3(GND_net), .O(n3208));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2112_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_38 (.I0(n2221), .I1(n2222), .I2(n14588), .I3(n2223), 
            .O(n14594));
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2173_9_lut (.I0(GND_net), .I1(n3228), 
            .I2(VCC_net), .I3(n12927), .O(n3295)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_20 (.CI(n12734), .I0(n2416), 
            .I1(VCC_net), .CO(n12735));
    SB_CARRY encoder0_position_31__I_0_add_2173_9 (.CI(n12927), .I0(n3228), 
            .I1(VCC_net), .CO(n12928));
    SB_LUT4 encoder0_position_31__I_0_add_1637_19_lut (.I0(GND_net), .I1(n2417), 
            .I2(VCC_net), .I3(n12733), .O(n2484)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i20_3_lut (.I0(encoder0_position[19]), 
            .I1(n14), .I2(encoder0_position[31]), .I3(GND_net), .O(n300));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i981_3_lut (.I0(n300), .I1(n1501), 
            .I2(n1455), .I3(GND_net), .O(n1533));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i981_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_8_lut (.I0(GND_net), .I1(n3229), 
            .I2(GND_net), .I3(n12926), .O(n3296)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_19 (.CI(n12733), .I0(n2417), 
            .I1(VCC_net), .CO(n12734));
    SB_CARRY encoder0_position_31__I_0_add_2173_8 (.CI(n12926), .I0(n3229), 
            .I1(GND_net), .CO(n12927));
    SB_LUT4 encoder0_position_31__I_0_add_1637_18_lut (.I0(GND_net), .I1(n2418), 
            .I2(VCC_net), .I3(n12732), .O(n2485)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1048_3_lut (.I0(n1533), .I1(n1600), 
            .I2(n1554), .I3(GND_net), .O(n1632_adj_612));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1048_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1115_3_lut (.I0(n1632_adj_612), .I1(n1699), 
            .I2(n1653), .I3(GND_net), .O(n1731));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1115_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1182_3_lut (.I0(n1731), .I1(n1798), 
            .I2(n1752), .I3(GND_net), .O(n1830));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1182_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_7_lut (.I0(n3298), .I1(n3230), 
            .I2(GND_net), .I3(n12925), .O(n15079)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY encoder0_position_31__I_0_add_1637_18 (.CI(n12732), .I0(n2418), 
            .I1(VCC_net), .CO(n12733));
    SB_LUT4 encoder0_position_31__I_0_add_1168_3_lut (.I0(GND_net), .I1(n1733), 
            .I2(VCC_net), .I3(n12591), .O(n1800)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2173_7 (.CI(n12925), .I0(n3230), 
            .I1(GND_net), .CO(n12926));
    SB_LUT4 i1_2_lut_adj_39 (.I0(n2229), .I1(n2230), .I2(GND_net), .I3(GND_net), 
            .O(n14808));
    defparam i1_2_lut_adj_39.LUT_INIT = 16'h8888;
    SB_LUT4 encoder0_position_31__I_0_add_1637_17_lut (.I0(GND_net), .I1(n2419), 
            .I2(VCC_net), .I3(n12731), .O(n2486)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_3 (.CI(n12591), .I0(n1733), 
            .I1(VCC_net), .CO(n12592));
    SB_LUT4 encoder0_position_31__I_0_i1249_3_lut (.I0(n1830), .I1(n1897), 
            .I2(n1851), .I3(GND_net), .O(n1929));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1249_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_6_lut (.I0(GND_net), .I1(n3231), 
            .I2(VCC_net), .I3(n12924), .O(n3298)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_17 (.CI(n12731), .I0(n2419), 
            .I1(VCC_net), .CO(n12732));
    SB_LUT4 i1_4_lut_adj_40 (.I0(n2220), .I1(n14808), .I2(n14594), .I3(n11977), 
            .O(n14598));
    defparam i1_4_lut_adj_40.LUT_INIT = 16'hfefa;
    SB_LUT4 encoder0_position_31__I_0_i1316_3_lut (.I0(n1929), .I1(n1996), 
            .I2(n1950), .I3(GND_net), .O(n2028));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1316_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_967_8 (.CI(n12557), .I0(n1428), 
            .I1(VCC_net), .CO(n12558));
    SB_LUT4 encoder0_position_31__I_0_add_967_7_lut (.I0(GND_net), .I1(n1429), 
            .I2(GND_net), .I3(n12556), .O(n1496)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1383_3_lut (.I0(n2028), .I1(n2095), 
            .I2(n2049), .I3(GND_net), .O(n2127));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1383_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_6 (.CI(n12924), .I0(n3231), 
            .I1(VCC_net), .CO(n12925));
    SB_LUT4 encoder0_position_31__I_0_add_1637_16_lut (.I0(GND_net), .I1(n2420), 
            .I2(VCC_net), .I3(n12730), .O(n2487)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1168_2_lut (.I0(GND_net), .I1(n303), 
            .I2(GND_net), .I3(VCC_net), .O(n1801)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_41 (.I0(n2217), .I1(n2218), .I2(n2219), .I3(n14598), 
            .O(n14604));
    defparam i1_4_lut_adj_41.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_i1450_3_lut (.I0(n2127), .I1(n2194), 
            .I2(n2148), .I3(GND_net), .O(n2226));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1450_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1517_3_lut (.I0(n2226), .I1(n2293), 
            .I2(n2247), .I3(GND_net), .O(n2325));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1517_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2173_5_lut (.I0(GND_net), .I1(n3232), 
            .I2(GND_net), .I3(n12923), .O(n3299)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_16 (.CI(n12730), .I0(n2420), 
            .I1(VCC_net), .CO(n12731));
    SB_CARRY encoder0_position_31__I_0_add_2173_5 (.CI(n12923), .I0(n3232), 
            .I1(GND_net), .CO(n12924));
    SB_LUT4 encoder0_position_31__I_0_add_1637_15_lut (.I0(GND_net), .I1(n2421), 
            .I2(VCC_net), .I3(n12729), .O(n2488)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_2 (.CI(VCC_net), .I0(n303), 
            .I1(GND_net), .CO(n12591));
    SB_CARRY encoder0_position_31__I_0_add_967_7 (.CI(n12556), .I0(n1429), 
            .I1(GND_net), .CO(n12557));
    SB_LUT4 encoder0_position_31__I_0_add_2173_4_lut (.I0(GND_net), .I1(n3233), 
            .I2(VCC_net), .I3(n12922), .O(n3300)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13021_4_lut (.I0(n2215), .I1(n2214), .I2(n2216), .I3(n14604), 
            .O(n2247));
    defparam i13021_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1584_3_lut (.I0(n2325), .I1(n2392), 
            .I2(n2346), .I3(GND_net), .O(n2424));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1584_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1651_3_lut (.I0(n2424), .I1(n2491), 
            .I2(n2445), .I3(GND_net), .O(n2523));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1651_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_4 (.CI(n12922), .I0(n3233), 
            .I1(VCC_net), .CO(n12923));
    SB_LUT4 i10987_3_lut (.I0(n6), .I1(n2565), .I2(n13653), .I3(GND_net), 
            .O(n13660));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2173_3_lut (.I0(GND_net), .I1(n318), 
            .I2(GND_net), .I3(n12921), .O(n3301)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10988_3_lut (.I0(encoder0_position[27]), .I1(n13660), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n832));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i571_3_lut (.I0(n832), .I1(n899), 
            .I2(n861), .I3(GND_net), .O(n931));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i571_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_1637_15 (.CI(n12729), .I0(n2421), 
            .I1(VCC_net), .CO(n12730));
    SB_LUT4 encoder0_position_31__I_0_i638_3_lut (.I0(n931), .I1(n998), 
            .I2(n960), .I3(GND_net), .O(n1030));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i638_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i705_3_lut (.I0(n1030), .I1(n1097), 
            .I2(n1059), .I3(GND_net), .O(n1129));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i705_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i772_3_lut (.I0(n1129), .I1(n1196), 
            .I2(n1158), .I3(GND_net), .O(n1228));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i772_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2173_3 (.CI(n12921), .I0(n318), 
            .I1(GND_net), .CO(n12922));
    SB_LUT4 encoder0_position_31__I_0_i839_3_lut (.I0(n1228), .I1(n1295), 
            .I2(n1257), .I3(GND_net), .O(n1327));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i839_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1637_14_lut (.I0(GND_net), .I1(n2422), 
            .I2(VCC_net), .I3(n12728), .O(n2489)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1101_16_lut (.I0(n15611), .I1(n1620_adj_600), 
            .I2(VCC_net), .I3(n12590), .O(n1719)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_i906_3_lut (.I0(n1327), .I1(n1394), 
            .I2(n1356), .I3(GND_net), .O(n1426));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i906_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i973_3_lut (.I0(n1426), .I1(n1493), 
            .I2(n1455), .I3(GND_net), .O(n1525));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i973_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2111_3_lut (.I0(n3108), .I1(n3175), 
            .I2(n3138), .I3(GND_net), .O(n3207));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2111_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_299_i41_2_lut (.I0(pwm_counter[20]), .I1(pwm_setpoint[20]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_678));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i39_2_lut (.I0(pwm_counter[19]), .I1(pwm_setpoint[19]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_676));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i45_2_lut (.I0(pwm_counter[22]), .I1(pwm_setpoint[22]), 
            .I2(GND_net), .I3(GND_net), .O(n45));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i45_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY encoder0_position_31__I_0_add_2173_2 (.CI(VCC_net), .I0(n319), 
            .I1(VCC_net), .CO(n12921));
    SB_CARRY encoder0_position_31__I_0_add_1637_14 (.CI(n12728), .I0(n2422), 
            .I1(VCC_net), .CO(n12729));
    SB_LUT4 encoder0_position_31__I_0_add_1101_15_lut (.I0(GND_net), .I1(n1621_adj_601), 
            .I2(VCC_net), .I3(n12589), .O(n1688)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1441_3_lut (.I0(n2118), .I1(n2185), 
            .I2(n2148), .I3(GND_net), .O(n2217));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1441_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_299_i43_2_lut (.I0(pwm_counter[21]), .I1(pwm_setpoint[21]), 
            .I2(GND_net), .I3(GND_net), .O(n43));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i29_2_lut (.I0(pwm_counter[14]), .I1(pwm_setpoint[14]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_672));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 encoder0_position_31__I_0_add_967_6_lut (.I0(GND_net), .I1(n1430), 
            .I2(GND_net), .I3(n12555), .O(n1497)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i31_2_lut (.I0(pwm_counter[15]), .I1(pwm_setpoint[15]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_674));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i31_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY encoder0_position_31__I_0_add_967_6 (.CI(n12555), .I0(n1430), 
            .I1(GND_net), .CO(n12556));
    SB_LUT4 LessThan_299_i37_2_lut (.I0(pwm_counter[18]), .I1(pwm_setpoint[18]), 
            .I2(GND_net), .I3(GND_net), .O(n37));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i23_2_lut (.I0(pwm_counter[11]), .I1(pwm_setpoint[11]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_668));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i25_2_lut (.I0(pwm_counter[12]), .I1(pwm_setpoint[12]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_670));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 encoder0_position_31__I_0_add_2106_31_lut (.I0(n15451), .I1(n3105), 
            .I2(VCC_net), .I3(n12920), .O(n3204)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_31_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_42 (.I0(n2323), .I1(n2322), .I2(n2326), .I3(n2325), 
            .O(n14382));
    defparam i1_4_lut_adj_42.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1637_13_lut (.I0(GND_net), .I1(n2423), 
            .I2(VCC_net), .I3(n12727), .O(n2490)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2106_30_lut (.I0(GND_net), .I1(n3106), 
            .I2(VCC_net), .I3(n12919), .O(n3173)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i35_2_lut (.I0(pwm_counter[17]), .I1(pwm_setpoint[17]), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i33_2_lut (.I0(pwm_counter[16]), .I1(pwm_setpoint[16]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_675));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i33_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY encoder0_position_31__I_0_add_2106_30 (.CI(n12919), .I0(n3106), 
            .I1(VCC_net), .CO(n12920));
    SB_CARRY encoder0_position_31__I_0_add_1637_13 (.CI(n12727), .I0(n2423), 
            .I1(VCC_net), .CO(n12728));
    SB_CARRY encoder0_position_31__I_0_add_1101_15 (.CI(n12589), .I0(n1621_adj_601), 
            .I1(VCC_net), .CO(n12590));
    SB_LUT4 encoder0_position_31__I_0_add_967_5_lut (.I0(GND_net), .I1(n1431), 
            .I2(VCC_net), .I3(n12554), .O(n1498)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i11_2_lut (.I0(pwm_counter[5]), .I1(pwm_setpoint[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_660));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 encoder0_position_31__I_0_add_2106_29_lut (.I0(GND_net), .I1(n3107), 
            .I2(VCC_net), .I3(n12918), .O(n3174)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i13_2_lut (.I0(pwm_counter[6]), .I1(pwm_setpoint[6]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_662));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i15_2_lut (.I0(pwm_counter[7]), .I1(pwm_setpoint[7]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_663));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i27_2_lut (.I0(pwm_counter[13]), .I1(pwm_setpoint[13]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_671));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 encoder0_position_31__I_0_add_1637_12_lut (.I0(GND_net), .I1(n2424), 
            .I2(VCC_net), .I3(n12726), .O(n2491)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i9_2_lut (.I0(pwm_counter[4]), .I1(pwm_setpoint[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_658));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i17_2_lut (.I0(pwm_counter[8]), .I1(pwm_setpoint[8]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_665));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_299_i19_2_lut (.I0(pwm_counter[9]), .I1(pwm_setpoint[9]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_666));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_43 (.I0(n2327), .I1(n2321), .I2(n2328), .I3(n2324), 
            .O(n14384));
    defparam i1_4_lut_adj_43.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_2106_29 (.CI(n12918), .I0(n3107), 
            .I1(VCC_net), .CO(n12919));
    SB_LUT4 encoder0_position_31__I_0_add_2106_28_lut (.I0(GND_net), .I1(n3108), 
            .I2(VCC_net), .I3(n12917), .O(n3175)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i21_2_lut (.I0(pwm_counter[10]), .I1(pwm_setpoint[10]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_667));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut (.I0(pwm_counter[27]), .I1(pwm_counter[29]), .I2(pwm_counter[24]), 
            .I3(pwm_counter[26]), .O(n12_adj_615));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(pwm_counter[28]), .I1(n12_adj_615), .I2(pwm_counter[25]), 
            .I3(pwm_counter[30]), .O(n5180));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_2106_28 (.CI(n12917), .I0(n3108), 
            .I1(VCC_net), .CO(n12918));
    SB_CARRY encoder0_position_31__I_0_add_1637_12 (.CI(n12726), .I0(n2424), 
            .I1(VCC_net), .CO(n12727));
    SB_LUT4 i1_2_lut_adj_44 (.I0(pwm_counter[31]), .I1(n5180), .I2(GND_net), 
            .I3(GND_net), .O(n5182));
    defparam i1_2_lut_adj_44.LUT_INIT = 16'heeee;
    SB_CARRY encoder0_position_31__I_0_add_967_5 (.CI(n12554), .I0(n1431), 
            .I1(VCC_net), .CO(n12555));
    SB_LUT4 encoder0_position_31__I_0_add_967_4_lut (.I0(GND_net), .I1(n1432), 
            .I2(GND_net), .I3(n12553), .O(n1499)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2106_27_lut (.I0(GND_net), .I1(n3109), 
            .I2(VCC_net), .I3(n12916), .O(n3176)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_11_lut (.I0(GND_net), .I1(n2425), 
            .I2(VCC_net), .I3(n12725), .O(n2492)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_27 (.CI(n12916), .I0(n3109), 
            .I1(VCC_net), .CO(n12917));
    SB_CARRY encoder0_position_31__I_0_add_1637_11 (.CI(n12725), .I0(n2425), 
            .I1(VCC_net), .CO(n12726));
    SB_LUT4 encoder0_position_31__I_0_add_2106_26_lut (.I0(GND_net), .I1(n3110), 
            .I2(VCC_net), .I3(n12915), .O(n3177)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_10_lut (.I0(GND_net), .I1(n2426), 
            .I2(VCC_net), .I3(n12724), .O(n2493)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_26 (.CI(n12915), .I0(n3110), 
            .I1(VCC_net), .CO(n12916));
    SB_CARRY encoder0_position_31__I_0_add_1637_10 (.CI(n12724), .I0(n2426), 
            .I1(VCC_net), .CO(n12725));
    SB_LUT4 encoder0_position_31__I_0_add_1101_14_lut (.I0(GND_net), .I1(n1622_adj_602), 
            .I2(VCC_net), .I3(n12588), .O(n1689)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_4 (.CI(n12553), .I0(n1432), 
            .I1(GND_net), .CO(n12554));
    SB_LUT4 encoder0_position_31__I_0_add_2106_25_lut (.I0(GND_net), .I1(n3111), 
            .I2(VCC_net), .I3(n12914), .O(n3178)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_9_lut (.I0(GND_net), .I1(n2427), 
            .I2(VCC_net), .I3(n12723), .O(n2494)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1101_14 (.CI(n12588), .I0(n1622_adj_602), 
            .I1(VCC_net), .CO(n12589));
    SB_LUT4 i9994_4_lut (.I0(n309), .I1(n2331), .I2(n2332), .I3(n2333), 
            .O(n11971));
    defparam i9994_4_lut.LUT_INIT = 16'hfcec;
    SB_CARRY encoder0_position_31__I_0_add_2106_25 (.CI(n12914), .I0(n3111), 
            .I1(VCC_net), .CO(n12915));
    SB_CARRY encoder0_position_31__I_0_add_1637_9 (.CI(n12723), .I0(n2427), 
            .I1(VCC_net), .CO(n12724));
    SB_LUT4 encoder0_position_31__I_0_add_967_3_lut (.I0(GND_net), .I1(n1433), 
            .I2(VCC_net), .I3(n12552), .O(n1500)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12380_4_lut (.I0(n21_adj_667), .I1(n19_adj_666), .I2(n17_adj_665), 
            .I3(n9_adj_658), .O(n15110));
    defparam i12380_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i12374_4_lut (.I0(n27_adj_671), .I1(n15_adj_663), .I2(n13_adj_662), 
            .I3(n11_adj_660), .O(n15104));
    defparam i12374_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 encoder0_position_31__I_0_add_2106_24_lut (.I0(GND_net), .I1(n3112), 
            .I2(VCC_net), .I3(n12913), .O(n3179)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_8_lut (.I0(GND_net), .I1(n2428), 
            .I2(VCC_net), .I3(n12722), .O(n2495)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1101_13_lut (.I0(GND_net), .I1(n1623_adj_603), 
            .I2(VCC_net), .I3(n12587), .O(n1690)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_967_3 (.CI(n12552), .I0(n1433), 
            .I1(VCC_net), .CO(n12553));
    SB_LUT4 encoder0_position_31__I_0_add_967_2_lut (.I0(GND_net), .I1(n300), 
            .I2(GND_net), .I3(VCC_net), .O(n1501)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_967_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i30_3_lut (.I0(n12_adj_661), .I1(pwm_setpoint[17]), 
            .I2(n35), .I3(GND_net), .O(n30_adj_673));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_45 (.I0(n2319), .I1(n2320), .I2(n14384), .I3(n14382), 
            .O(n14390));
    defparam i1_4_lut_adj_45.LUT_INIT = 16'hfffe;
    SB_LUT4 i12448_4_lut (.I0(n13_adj_662), .I1(n11_adj_660), .I2(n9_adj_658), 
            .I3(n15121), .O(n15178));
    defparam i12448_4_lut.LUT_INIT = 16'heeef;
    SB_CARRY encoder0_position_31__I_0_add_2106_24 (.CI(n12913), .I0(n3112), 
            .I1(VCC_net), .CO(n12914));
    SB_CARRY encoder0_position_31__I_0_add_1637_8 (.CI(n12722), .I0(n2428), 
            .I1(VCC_net), .CO(n12723));
    SB_LUT4 i12444_4_lut (.I0(n19_adj_666), .I1(n17_adj_665), .I2(n15_adj_663), 
            .I3(n15178), .O(n15174));
    defparam i12444_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i12507_4_lut (.I0(n25_adj_670), .I1(n23_adj_668), .I2(n21_adj_667), 
            .I3(n15174), .O(n15237));
    defparam i12507_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_1101_3 (.CI(n12577), .I0(n1633_adj_613), 
            .I1(VCC_net), .CO(n12578));
    SB_LUT4 i12465_4_lut (.I0(n31_adj_674), .I1(n29_adj_672), .I2(n27_adj_671), 
            .I3(n15237), .O(n15195));
    defparam i12465_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i12511_4_lut (.I0(n37), .I1(n35), .I2(n33_adj_675), .I3(n15195), 
            .O(n15241));
    defparam i12511_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2106_23_lut (.I0(GND_net), .I1(n3113), 
            .I2(VCC_net), .I3(n12912), .O(n3180)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_7_lut (.I0(GND_net), .I1(n2429), 
            .I2(GND_net), .I3(n12721), .O(n2496)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1101_13 (.CI(n12587), .I0(n1623_adj_603), 
            .I1(VCC_net), .CO(n12588));
    SB_CARRY encoder0_position_31__I_0_add_967_2 (.CI(VCC_net), .I0(n300), 
            .I1(GND_net), .CO(n12552));
    SB_LUT4 i12473_3_lut (.I0(n6_adj_656), .I1(pwm_setpoint[10]), .I2(n21_adj_667), 
            .I3(GND_net), .O(n15203));   // verilog/pwm.v(21[8:24])
    defparam i12473_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12474_3_lut (.I0(n15203), .I1(pwm_setpoint[11]), .I2(n23_adj_668), 
            .I3(GND_net), .O(n15204));   // verilog/pwm.v(21[8:24])
    defparam i12474_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2106_23 (.CI(n12912), .I0(n3113), 
            .I1(VCC_net), .CO(n12913));
    SB_LUT4 i1_4_lut_adj_46 (.I0(n2329), .I1(n14390), .I2(n11971), .I3(n2330), 
            .O(n14392));
    defparam i1_4_lut_adj_46.LUT_INIT = 16'heccc;
    SB_LUT4 LessThan_299_i24_3_lut (.I0(n16_adj_664), .I1(pwm_setpoint[22]), 
            .I2(n45), .I3(GND_net), .O(n24_adj_669));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_1101_2_lut (.I0(GND_net), .I1(n302), 
            .I2(GND_net), .I3(VCC_net), .O(n1701)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2106_22_lut (.I0(GND_net), .I1(n3114), 
            .I2(VCC_net), .I3(n12911), .O(n3181)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12416_4_lut (.I0(n43), .I1(n25_adj_670), .I2(n23_adj_668), 
            .I3(n15110), .O(n15146));
    defparam i12416_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i12493_4_lut (.I0(n24_adj_669), .I1(n8_adj_657), .I2(n45), 
            .I3(n15144), .O(n15223));   // verilog/pwm.v(21[8:24])
    defparam i12493_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i12435_3_lut (.I0(n15204), .I1(pwm_setpoint[12]), .I2(n25_adj_670), 
            .I3(GND_net), .O(n15165));   // verilog/pwm.v(21[8:24])
    defparam i12435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_900_13_lut (.I0(n15553), .I1(n1323), 
            .I2(VCC_net), .I3(n12551), .O(n1422)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_900_12_lut (.I0(GND_net), .I1(n1324), 
            .I2(VCC_net), .I3(n12550), .O(n1391)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_22 (.CI(n12911), .I0(n3114), 
            .I1(VCC_net), .CO(n12912));
    SB_CARRY encoder0_position_31__I_0_add_1637_7 (.CI(n12721), .I0(n2429), 
            .I1(GND_net), .CO(n12722));
    SB_LUT4 i1_4_lut_adj_47 (.I0(n2316), .I1(n2317), .I2(n14392), .I3(n2318), 
            .O(n14398));
    defparam i1_4_lut_adj_47.LUT_INIT = 16'hfffe;
    SB_LUT4 LessThan_299_i4_4_lut (.I0(pwm_setpoint[0]), .I1(pwm_setpoint[1]), 
            .I2(pwm_counter[1]), .I3(pwm_counter[0]), .O(n4_adj_655));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i4_4_lut.LUT_INIT = 16'h0c8e;
    SB_LUT4 i12499_3_lut (.I0(n4_adj_655), .I1(pwm_setpoint[13]), .I2(n27_adj_671), 
            .I3(GND_net), .O(n15229));   // verilog/pwm.v(21[8:24])
    defparam i12499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 LessThan_299_i6_3_lut_3_lut (.I0(pwm_counter[3]), .I1(pwm_setpoint[3]), 
            .I2(pwm_setpoint[2]), .I3(GND_net), .O(n6_adj_656));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_CARRY encoder0_position_31__I_0_add_1101_2 (.CI(VCC_net), .I0(n302), 
            .I1(GND_net), .CO(n12577));
    SB_LUT4 encoder0_position_31__I_0_add_2106_21_lut (.I0(GND_net), .I1(n3115), 
            .I2(VCC_net), .I3(n12910), .O(n3182)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_6_lut (.I0(GND_net), .I1(n2430), 
            .I2(GND_net), .I3(n12720), .O(n2497)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1101_12_lut (.I0(GND_net), .I1(n1624_adj_604), 
            .I2(VCC_net), .I3(n12586), .O(n1691)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12500_3_lut (.I0(n15229), .I1(pwm_setpoint[14]), .I2(n29_adj_672), 
            .I3(GND_net), .O(n15230));   // verilog/pwm.v(21[8:24])
    defparam i12500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12369_4_lut (.I0(n33_adj_675), .I1(n31_adj_674), .I2(n29_adj_672), 
            .I3(n15104), .O(n15099));
    defparam i12369_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i12517_4_lut (.I0(n30_adj_673), .I1(n10_adj_659), .I2(n35), 
            .I3(n15097), .O(n15247));   // verilog/pwm.v(21[8:24])
    defparam i12517_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i12490_3_lut (.I0(n15230), .I1(pwm_setpoint[15]), .I2(n31_adj_674), 
            .I3(GND_net), .O(n15220));   // verilog/pwm.v(21[8:24])
    defparam i12490_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_900_12 (.CI(n12550), .I0(n1324), 
            .I1(VCC_net), .CO(n12551));
    SB_LUT4 encoder0_position_31__I_0_add_900_11_lut (.I0(GND_net), .I1(n1325), 
            .I2(VCC_net), .I3(n12549), .O(n1392)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12527_4_lut (.I0(n15220), .I1(n15247), .I2(n35), .I3(n15099), 
            .O(n15257));   // verilog/pwm.v(21[8:24])
    defparam i12527_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12528_3_lut (.I0(n15257), .I1(pwm_setpoint[18]), .I2(n37), 
            .I3(GND_net), .O(n15258));   // verilog/pwm.v(21[8:24])
    defparam i12528_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2106_21 (.CI(n12910), .I0(n3115), 
            .I1(VCC_net), .CO(n12911));
    SB_CARRY encoder0_position_31__I_0_add_1637_6 (.CI(n12720), .I0(n2430), 
            .I1(GND_net), .CO(n12721));
    SB_CARRY encoder0_position_31__I_0_add_1101_12 (.CI(n12586), .I0(n1624_adj_604), 
            .I1(VCC_net), .CO(n12587));
    SB_CARRY encoder0_position_31__I_0_add_900_11 (.CI(n12549), .I0(n1325), 
            .I1(VCC_net), .CO(n12550));
    SB_LUT4 i12524_3_lut (.I0(n15258), .I1(pwm_setpoint[19]), .I2(n39_adj_676), 
            .I3(GND_net), .O(n15254));   // verilog/pwm.v(21[8:24])
    defparam i12524_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12361_4_lut (.I0(n43), .I1(n41_adj_678), .I2(n39_adj_676), 
            .I3(n15241), .O(n15091));
    defparam i12361_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 encoder0_position_31__I_0_add_1034_15_lut (.I0(n15591), .I1(n1521), 
            .I2(VCC_net), .I3(n12576), .O(n1620_adj_600)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_2106_20_lut (.I0(GND_net), .I1(n3116), 
            .I2(VCC_net), .I3(n12909), .O(n3183)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1637_5_lut (.I0(GND_net), .I1(n2431), 
            .I2(VCC_net), .I3(n12719), .O(n2498)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12513_4_lut (.I0(n15165), .I1(n15223), .I2(n45), .I3(n15146), 
            .O(n15243));   // verilog/pwm.v(21[8:24])
    defparam i12513_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12522_3_lut (.I0(n15254), .I1(pwm_setpoint[20]), .I2(n41_adj_678), 
            .I3(GND_net), .O(n40_adj_677));   // verilog/pwm.v(21[8:24])
    defparam i12522_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2106_20 (.CI(n12909), .I0(n3116), 
            .I1(VCC_net), .CO(n12910));
    SB_LUT4 encoder0_position_31__I_0_add_900_10_lut (.I0(GND_net), .I1(n1326), 
            .I2(VCC_net), .I3(n12548), .O(n1393)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_900_10 (.CI(n12548), .I0(n1326), 
            .I1(VCC_net), .CO(n12549));
    SB_LUT4 i12515_4_lut (.I0(n40_adj_677), .I1(n15243), .I2(n45), .I3(n15091), 
            .O(n15245));   // verilog/pwm.v(21[8:24])
    defparam i12515_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 encoder0_position_31__I_0_add_2106_19_lut (.I0(GND_net), .I1(n3117), 
            .I2(VCC_net), .I3(n12908), .O(n3184)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_5 (.CI(n12719), .I0(n2431), 
            .I1(VCC_net), .CO(n12720));
    SB_LUT4 encoder0_position_31__I_0_add_1101_11_lut (.I0(GND_net), .I1(n1625_adj_605), 
            .I2(VCC_net), .I3(n12585), .O(n1692)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1034_14_lut (.I0(GND_net), .I1(n1522), 
            .I2(VCC_net), .I3(n12575), .O(n1589)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_900_9_lut (.I0(GND_net), .I1(n1327), 
            .I2(VCC_net), .I3(n12547), .O(n1394)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12516_3_lut (.I0(n15245), .I1(pwm_setpoint[23]), .I2(pwm_counter[23]), 
            .I3(GND_net), .O(n15246));   // verilog/pwm.v(21[8:24])
    defparam i12516_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 pwm_setpoint_23__I_0_i11_3_lut (.I0(duty[10]), .I1(pwm_setpoint_23__N_171[10]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[10]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2106_19 (.CI(n12908), .I0(n3117), 
            .I1(VCC_net), .CO(n12909));
    SB_LUT4 encoder0_position_31__I_0_add_1637_4_lut (.I0(GND_net), .I1(n2432), 
            .I2(GND_net), .I3(n12718), .O(n2499)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_766_7_lut (.I0(GND_net), .I1(n1129), 
            .I2(GND_net), .I3(n12526), .O(n1196)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_766_7 (.CI(n12526), .I0(n1129), 
            .I1(GND_net), .CO(n12527));
    SB_LUT4 encoder0_position_31__I_0_add_766_6_lut (.I0(GND_net), .I1(n1130), 
            .I2(GND_net), .I3(n12525), .O(n1197)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2106_18_lut (.I0(GND_net), .I1(n3118), 
            .I2(VCC_net), .I3(n12907), .O(n3185)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13048_4_lut (.I0(n2314), .I1(n2313), .I2(n2315), .I3(n14398), 
            .O(n2346));
    defparam i13048_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY encoder0_position_31__I_0_add_2106_18 (.CI(n12907), .I0(n3118), 
            .I1(VCC_net), .CO(n12908));
    SB_CARRY encoder0_position_31__I_0_add_1034_14 (.CI(n12575), .I0(n1522), 
            .I1(VCC_net), .CO(n12576));
    SB_LUT4 encoder0_position_31__I_0_add_2106_17_lut (.I0(GND_net), .I1(n3119), 
            .I2(VCC_net), .I3(n12906), .O(n3186)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_4 (.CI(n12718), .I0(n2432), 
            .I1(GND_net), .CO(n12719));
    SB_CARRY encoder0_position_31__I_0_add_2106_17 (.CI(n12906), .I0(n3119), 
            .I1(VCC_net), .CO(n12907));
    SB_LUT4 encoder0_position_31__I_0_add_1637_3_lut (.I0(GND_net), .I1(n2433), 
            .I2(VCC_net), .I3(n12717), .O(n2500)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i21_3_lut (.I0(encoder0_position[20]), 
            .I1(n13), .I2(encoder0_position[31]), .I3(GND_net), .O(n299));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2106_16_lut (.I0(GND_net), .I1(n3120), 
            .I2(VCC_net), .I3(n12905), .O(n3187)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_3 (.CI(n12717), .I0(n2433), 
            .I1(VCC_net), .CO(n12718));
    SB_LUT4 encoder0_position_31__I_0_i913_3_lut (.I0(n299), .I1(n1401), 
            .I2(n1356), .I3(GND_net), .O(n1433));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i913_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i980_3_lut (.I0(n1433), .I1(n1500), 
            .I2(n1455), .I3(GND_net), .O(n1532));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i980_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1508_3_lut (.I0(n2217), .I1(n2284), 
            .I2(n2247), .I3(GND_net), .O(n2316));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1508_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1034_13_lut (.I0(GND_net), .I1(n1523), 
            .I2(VCC_net), .I3(n12574), .O(n1590)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1034_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_16 (.CI(n12905), .I0(n3120), 
            .I1(VCC_net), .CO(n12906));
    SB_LUT4 encoder0_position_31__I_0_add_1637_2_lut (.I0(GND_net), .I1(n310), 
            .I2(GND_net), .I3(VCC_net), .O(n2501)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1637_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2106_15_lut (.I0(GND_net), .I1(n3121), 
            .I2(VCC_net), .I3(n12904), .O(n3188)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1637_2 (.CI(VCC_net), .I0(n310), 
            .I1(GND_net), .CO(n12717));
    SB_LUT4 encoder0_position_31__I_0_i1047_3_lut (.I0(n1532), .I1(n1599), 
            .I2(n1554), .I3(GND_net), .O(n1631_adj_611));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1047_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1114_3_lut (.I0(n1631_adj_611), .I1(n1698), 
            .I2(n1653), .I3(GND_net), .O(n1730));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1114_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1181_3_lut (.I0(n1730), .I1(n1797), 
            .I2(n1752), .I3(GND_net), .O(n1829));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1181_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1248_3_lut (.I0(n1829), .I1(n1896), 
            .I2(n1851), .I3(GND_net), .O(n1928));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1248_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_48 (.I0(n2427), .I1(n2426), .I2(n2425), .I3(n2424), 
            .O(n14620));
    defparam i1_4_lut_adj_48.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_2106_15 (.CI(n12904), .I0(n3121), 
            .I1(VCC_net), .CO(n12905));
    SB_CARRY encoder0_position_31__I_0_add_1101_11 (.CI(n12585), .I0(n1625_adj_605), 
            .I1(VCC_net), .CO(n12586));
    SB_LUT4 encoder0_position_31__I_0_add_2106_14_lut (.I0(GND_net), .I1(n3122), 
            .I2(VCC_net), .I3(n12903), .O(n3189)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_23_lut (.I0(n15775), .I1(n2313), 
            .I2(VCC_net), .I3(n12716), .O(n2412)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1101_10_lut (.I0(GND_net), .I1(n1626_adj_606), 
            .I2(VCC_net), .I3(n12584), .O(n1693_adj_614)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_766_6 (.CI(n12525), .I0(n1130), 
            .I1(GND_net), .CO(n12526));
    SB_CARRY encoder0_position_31__I_0_add_2106_14 (.CI(n12903), .I0(n3122), 
            .I1(VCC_net), .CO(n12904));
    SB_LUT4 i1_3_lut_adj_49 (.I0(n14620), .I1(n2428), .I2(n2423), .I3(GND_net), 
            .O(n14622));
    defparam i1_3_lut_adj_49.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_add_1570_22_lut (.I0(GND_net), .I1(n2314), 
            .I2(VCC_net), .I3(n12715), .O(n2381)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1101_10 (.CI(n12584), .I0(n1626_adj_606), 
            .I1(VCC_net), .CO(n12585));
    SB_LUT4 encoder0_position_31__I_0_i1315_3_lut (.I0(n1928), .I1(n1995), 
            .I2(n1950), .I3(GND_net), .O(n2027));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1315_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1382_3_lut (.I0(n2027), .I1(n2094), 
            .I2(n2049), .I3(GND_net), .O(n2126));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1382_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1449_rep_20_3_lut (.I0(n2126), .I1(n2193), 
            .I2(n2148), .I3(GND_net), .O(n2225));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1449_rep_20_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2106_13_lut (.I0(GND_net), .I1(n3123), 
            .I2(VCC_net), .I3(n12902), .O(n3190)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_22 (.CI(n12715), .I0(n2314), 
            .I1(VCC_net), .CO(n12716));
    SB_LUT4 i9990_3_lut (.I0(n310), .I1(n2432), .I2(n2433), .I3(GND_net), 
            .O(n11967));
    defparam i9990_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i12483_3_lut (.I0(n2225), .I1(n2292), .I2(n2247), .I3(GND_net), 
            .O(n2324));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12483_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12484_3_lut (.I0(n2324), .I1(n2391), .I2(n2346), .I3(GND_net), 
            .O(n2423));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12484_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1650_3_lut (.I0(n2423), .I1(n2490), 
            .I2(n2445), .I3(GND_net), .O(n2522));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1650_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i3_4_lut (.I0(encoder0_position_target[0]), .I1(encoder0_position_target[1]), 
            .I2(encoder0_position_target[3]), .I3(encoder0_position_target[2]), 
            .O(n14034));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1570_21_lut (.I0(GND_net), .I1(n2315), 
            .I2(VCC_net), .I3(n12714), .O(n2382)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut (.I0(n14034), .I1(encoder0_position_target[5]), .I2(encoder0_position_target[4]), 
            .I3(GND_net), .O(n14116));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_CARRY encoder0_position_31__I_0_add_2106_13 (.CI(n12902), .I0(n3123), 
            .I1(VCC_net), .CO(n12903));
    SB_LUT4 i4_4_lut (.I0(encoder0_position_target[10]), .I1(encoder0_position_target[6]), 
            .I2(encoder0_position_target[7]), .I3(encoder0_position_target[8]), 
            .O(n10_adj_598));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_766_5_lut (.I0(GND_net), .I1(n1131), 
            .I2(VCC_net), .I3(n12524), .O(n1198)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_21 (.CI(n12714), .I0(n2315), 
            .I1(VCC_net), .CO(n12715));
    SB_LUT4 i1_4_lut_adj_50 (.I0(n2618), .I1(n2620), .I2(n2621), .I3(n14668), 
            .O(n14674));
    defparam i1_4_lut_adj_50.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1101_9_lut (.I0(GND_net), .I1(n1627_adj_607), 
            .I2(VCC_net), .I3(n12583), .O(n1694)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut (.I0(encoder0_position_target[11]), .I1(encoder0_position_target[22]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_679));
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_51 (.I0(encoder0_position_target[17]), .I1(encoder0_position_target[9]), 
            .I2(n10_adj_598), .I3(n14116), .O(n15_adj_680));
    defparam i1_4_lut_adj_51.LUT_INIT = 16'haaa8;
    SB_LUT4 encoder0_position_31__I_0_add_2106_12_lut (.I0(GND_net), .I1(n3124), 
            .I2(VCC_net), .I3(n12901), .O(n3191)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_20_lut (.I0(GND_net), .I1(n2316), 
            .I2(VCC_net), .I3(n12713), .O(n2383)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut (.I0(encoder0_position_target[21]), .I1(encoder0_position_target[23]), 
            .I2(encoder0_position_target[15]), .I3(encoder0_position_target[19]), 
            .O(n24_adj_653));
    defparam i10_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i9_4_lut (.I0(encoder0_position_target[13]), .I1(encoder0_position_target[18]), 
            .I2(encoder0_position_target[14]), .I3(encoder0_position_target[12]), 
            .O(n23_adj_654));
    defparam i9_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i11_4_lut (.I0(encoder0_position_target[16]), .I1(n15_adj_680), 
            .I2(encoder0_position_target[20]), .I3(n16_adj_679), .O(n25_adj_652));
    defparam i11_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY encoder0_position_31__I_0_add_2106_12 (.CI(n12901), .I0(n3124), 
            .I1(VCC_net), .CO(n12902));
    SB_LUT4 i9624_4_lut (.I0(n25_adj_652), .I1(encoder0_position_target[23]), 
            .I2(n23_adj_654), .I3(n24_adj_653), .O(direction_N_342));   // verilog/TinyFPGA_B.v(149[10:40])
    defparam i9624_4_lut.LUT_INIT = 16'hb333;
    SB_LUT4 encoder0_position_31__I_0_add_2106_11_lut (.I0(GND_net), .I1(n3125), 
            .I2(VCC_net), .I3(n12900), .O(n3192)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_11_lut.LUT_INIT = 16'hC33C;
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO ENCODER0_A_pad (.PACKAGE_PIN(ENCODER0_A), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER0_A_N));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER0_A_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER0_A_pad.PULLUP = 1'b0;
    defparam ENCODER0_A_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER0_A_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_N));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHA_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLA_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHB_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLB_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHC_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLC_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY encoder0_position_31__I_0_add_766_5 (.CI(n12524), .I0(n1131), 
            .I1(VCC_net), .CO(n12525));
    SB_CARRY encoder0_position_31__I_0_add_2106_11 (.CI(n12900), .I0(n3125), 
            .I1(VCC_net), .CO(n12901));
    SB_CARRY encoder0_position_31__I_0_add_1570_20 (.CI(n12713), .I0(n2316), 
            .I1(VCC_net), .CO(n12714));
    SB_LUT4 i9898_2_lut (.I0(encoder0_position_target[4]), .I1(encoder0_position_target[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11872));
    defparam i9898_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 encoder0_position_31__I_0_add_2106_10_lut (.I0(GND_net), .I1(n3126), 
            .I2(VCC_net), .I3(n12899), .O(n3193)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_19_lut (.I0(GND_net), .I1(n2317), 
            .I2(VCC_net), .I3(n12712), .O(n2384)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1101_9 (.CI(n12583), .I0(n1627_adj_607), 
            .I1(VCC_net), .CO(n12584));
    SB_LUT4 encoder0_position_31__I_0_add_766_4_lut (.I0(GND_net), .I1(n1132), 
            .I2(GND_net), .I3(n12523), .O(n1199)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_10 (.CI(n12899), .I0(n3126), 
            .I1(VCC_net), .CO(n12900));
    SB_LUT4 i4_4_lut_adj_52 (.I0(encoder0_position_target[6]), .I1(encoder0_position_target[7]), 
            .I2(n11872), .I3(encoder0_position_target[10]), .O(n10_adj_681));
    defparam i4_4_lut_adj_52.LUT_INIT = 16'h8000;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i2_2_lut_adj_53 (.I0(encoder0_position_target[12]), .I1(encoder0_position_target[21]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_710));
    defparam i2_2_lut_adj_53.LUT_INIT = 16'heeee;
    SB_LUT4 encoder0_position_31__I_0_add_2106_9_lut (.I0(GND_net), .I1(n3127), 
            .I2(VCC_net), .I3(n12898), .O(n3194)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_19 (.CI(n12712), .I0(n2317), 
            .I1(VCC_net), .CO(n12713));
    SB_LUT4 encoder0_position_31__I_0_add_1101_8_lut (.I0(GND_net), .I1(n1628_adj_608), 
            .I2(VCC_net), .I3(n12582), .O(n1695)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12565_4_lut (.I0(n2610), .I1(n14674), .I2(n14660), .I3(n2611), 
            .O(n2643));
    defparam i12565_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1709_3_lut (.I0(n2514), .I1(n2581), 
            .I2(n2544), .I3(GND_net), .O(n2613));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1709_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_54 (.I0(n2720), .I1(n2727), .I2(n2723), .I3(n2725), 
            .O(n14346));
    defparam i1_4_lut_adj_54.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_55 (.I0(n2721), .I1(n2724), .I2(n2728), .I3(n2726), 
            .O(n14348));
    defparam i1_4_lut_adj_55.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_56 (.I0(n14346), .I1(n2719), .I2(n2722), .I3(GND_net), 
            .O(n14350));
    defparam i1_3_lut_adj_56.LUT_INIT = 16'hfefe;
    SB_LUT4 i9980_3_lut (.I0(n313), .I1(n2732), .I2(n2733), .I3(GND_net), 
            .O(n11957));
    defparam i9980_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n2717), .I1(n2718), .I2(n14350), .I3(n14348), 
            .O(n14356));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_58 (.I0(n2729), .I1(n11957), .I2(n2730), .I3(n2731), 
            .O(n13808));
    defparam i1_4_lut_adj_58.LUT_INIT = 16'ha080;
    SB_LUT4 i1_4_lut_adj_59 (.I0(n2715), .I1(n13808), .I2(n2716), .I3(n14356), 
            .O(n14362));
    defparam i1_4_lut_adj_59.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_60 (.I0(n2712), .I1(n2713), .I2(n2714), .I3(n14362), 
            .O(n14368));
    defparam i1_4_lut_adj_60.LUT_INIT = 16'hfffe;
    SB_LUT4 i12595_4_lut (.I0(n2710), .I1(n2709), .I2(n2711), .I3(n14368), 
            .O(n2742));
    defparam i12595_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1776_3_lut (.I0(n2613), .I1(n2680), 
            .I2(n2643), .I3(GND_net), .O(n2712));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1776_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_61 (.I0(n2828), .I1(n2822), .I2(n2827), .I3(n2826), 
            .O(n14688));
    defparam i1_4_lut_adj_61.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_62 (.I0(n2823), .I1(n2824), .I2(n2825), .I3(n2821), 
            .O(n14690));
    defparam i1_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 i9976_3_lut (.I0(n314), .I1(n2832), .I2(n2833), .I3(GND_net), 
            .O(n11953));
    defparam i9976_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_63 (.I0(n2819), .I1(n14690), .I2(n2820), .I3(n14688), 
            .O(n14696));
    defparam i1_4_lut_adj_63.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_64 (.I0(n2829), .I1(n11953), .I2(n2830), .I3(n2831), 
            .O(n13857));
    defparam i1_4_lut_adj_64.LUT_INIT = 16'ha080;
    SB_LUT4 i1_4_lut_adj_65 (.I0(n2817), .I1(n2818), .I2(n13857), .I3(n14696), 
            .O(n14702));
    defparam i1_4_lut_adj_65.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_66 (.I0(n2814), .I1(n2815), .I2(n2816), .I3(n14702), 
            .O(n14708));
    defparam i1_4_lut_adj_66.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_67 (.I0(n2811), .I1(n2812), .I2(n2813), .I3(n14708), 
            .O(n14714));
    defparam i1_4_lut_adj_67.LUT_INIT = 16'hfffe;
    SB_LUT4 i12626_4_lut (.I0(n2809), .I1(n2808), .I2(n2810), .I3(n14714), 
            .O(n2841));
    defparam i12626_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1843_3_lut (.I0(n2712), .I1(n2779), 
            .I2(n2742), .I3(GND_net), .O(n2811));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1843_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_68 (.I0(n2923), .I1(n2928), .I2(n2920), .I3(n2925), 
            .O(n14214));
    defparam i1_4_lut_adj_68.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_69 (.I0(n2922), .I1(n2921), .I2(n2924), .I3(n2919), 
            .O(n14212));
    defparam i1_4_lut_adj_69.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_2106_9 (.CI(n12898), .I0(n3127), 
            .I1(VCC_net), .CO(n12899));
    SB_LUT4 i1_4_lut_adj_70 (.I0(encoder0_position_target[8]), .I1(encoder0_position_target[19]), 
            .I2(n10_adj_681), .I3(encoder0_position_target[9]), .O(n15_adj_711));
    defparam i1_4_lut_adj_70.LUT_INIT = 16'heccc;
    SB_LUT4 i10_4_lut_adj_71 (.I0(encoder0_position_target[23]), .I1(encoder0_position_target[11]), 
            .I2(encoder0_position_target[17]), .I3(encoder0_position_target[20]), 
            .O(n24_adj_708));
    defparam i10_4_lut_adj_71.LUT_INIT = 16'hfffe;
    SB_DFFE encoder0_position_target_i0_i22 (.Q(encoder0_position_target[22]), 
            .C(CLK_N), .E(n5215), .D(n1619));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i21 (.Q(encoder0_position_target[21]), 
            .C(CLK_N), .E(n5215), .D(n1620));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i20 (.Q(encoder0_position_target[20]), 
            .C(CLK_N), .E(n5215), .D(n1621));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i19 (.Q(encoder0_position_target[19]), 
            .C(CLK_N), .E(n5215), .D(n1622));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i18 (.Q(encoder0_position_target[18]), 
            .C(CLK_N), .E(n5215), .D(n1623));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFESR GHC_174 (.Q(GHC), .C(CLK_N), .E(n5201), .D(GHC_N_320), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i17 (.Q(encoder0_position_target[17]), 
            .C(CLK_N), .E(n5215), .D(n1624));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i16 (.Q(encoder0_position_target[16]), 
            .C(CLK_N), .E(n5215), .D(n1625));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFESR GHB_172 (.Q(GHB), .C(CLK_N), .E(n5201), .D(GHB_N_306), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i15 (.Q(encoder0_position_target[15]), 
            .C(CLK_N), .E(n5215), .D(n1626));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFESR GHA_170 (.Q(GHA), .C(CLK_N), .E(n5201), .D(GHA_N_284), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i14 (.Q(encoder0_position_target[14]), 
            .C(CLK_N), .E(n5215), .D(n1627));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i13 (.Q(encoder0_position_target[13]), 
            .C(CLK_N), .E(n5215), .D(n1628));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i12 (.Q(encoder0_position_target[12]), 
            .C(CLK_N), .E(n5215), .D(n1629));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i11 (.Q(encoder0_position_target[11]), 
            .C(CLK_N), .E(n5215), .D(n1630));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i10 (.Q(encoder0_position_target[10]), 
            .C(CLK_N), .E(n5215), .D(n1631));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i9 (.Q(encoder0_position_target[9]), 
            .C(CLK_N), .E(n5215), .D(n1632));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i9_4_lut_adj_72 (.I0(encoder0_position_target[15]), .I1(encoder0_position_target[18]), 
            .I2(encoder0_position_target[16]), .I3(encoder0_position_target[14]), 
            .O(n23_adj_709));
    defparam i9_4_lut_adj_72.LUT_INIT = 16'hfffe;
    SB_DFFE encoder0_position_target_i0_i8 (.Q(encoder0_position_target[8]), 
            .C(CLK_N), .E(n5215), .D(n1633));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i7 (.Q(encoder0_position_target[7]), 
            .C(CLK_N), .E(n5215), .D(n1634));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i11_4_lut_adj_73 (.I0(encoder0_position_target[13]), .I1(n15_adj_711), 
            .I2(encoder0_position_target[22]), .I3(n16_adj_710), .O(n25_adj_707));
    defparam i11_4_lut_adj_73.LUT_INIT = 16'hfffe;
    SB_DFFE encoder0_position_target_i0_i6 (.Q(encoder0_position_target[6]), 
            .C(CLK_N), .E(n5215), .D(n1635));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_766_4 (.CI(n12523), .I0(n1132), 
            .I1(GND_net), .CO(n12524));
    SB_LUT4 i831_4_lut (.I0(n25_adj_707), .I1(encoder0_position_target[23]), 
            .I2(n23_adj_709), .I3(n24_adj_708), .O(direction_N_340));
    defparam i831_4_lut.LUT_INIT = 16'hcccd;
    SB_LUT4 i20_3_lut (.I0(direction_N_340), .I1(direction_N_342), .I2(direction), 
            .I3(GND_net), .O(n13675));
    defparam i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3251_4_lut (.I0(direction), .I1(n13968), .I2(n13675), .I3(n13197), 
            .O(n2338));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    defparam i3251_4_lut.LUT_INIT = 16'haaa6;
    SB_LUT4 encoder0_position_31__I_0_add_766_3_lut (.I0(GND_net), .I1(n1133), 
            .I2(VCC_net), .I3(n12522), .O(n1200)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_74 (.I0(sweep_counter[8]), .I1(sweep_counter[14]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_712));
    defparam i1_2_lut_adj_74.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut_adj_75 (.I0(sweep_counter[12]), .I1(sweep_counter[17]), 
            .I2(sweep_counter[13]), .I3(n6_adj_712), .O(n13968));
    defparam i4_4_lut_adj_75.LUT_INIT = 16'h8000;
    SB_DFFE encoder0_position_target_i0_i5 (.Q(encoder0_position_target[5]), 
            .C(CLK_N), .E(n5215), .D(n1636));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i4 (.Q(encoder0_position_target[4]), 
            .C(CLK_N), .E(n5215), .D(n1637));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFFE encoder0_position_target_i0_i3 (.Q(encoder0_position_target[3]), 
            .C(CLK_N), .E(n5215), .D(n1638));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_1101_8 (.CI(n12582), .I0(n1628_adj_608), 
            .I1(VCC_net), .CO(n12583));
    SB_DFF pwm_setpoint_i7 (.Q(pwm_setpoint[7]), .C(CLK_N), .D(pwm_setpoint_23__N_27[7]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFFE encoder0_position_target_i0_i2 (.Q(encoder0_position_target[2]), 
            .C(CLK_N), .E(n5215), .D(n1639));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i3_2_lut (.I0(sweep_counter[15]), .I1(sweep_counter[10]), .I2(GND_net), 
            .I3(GND_net), .O(n16_adj_619));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut_adj_76 (.I0(sweep_counter[16]), .I1(sweep_counter[3]), 
            .I2(sweep_counter[2]), .I3(sweep_counter[9]), .O(n22_adj_617));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i9_4_lut_adj_76.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut (.I0(sweep_counter[1]), .I1(sweep_counter[6]), .I2(sweep_counter[0]), 
            .I3(GND_net), .O(n20_adj_618));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut_adj_77 (.I0(sweep_counter[4]), .I1(n22_adj_617), .I2(n16_adj_619), 
            .I3(sweep_counter[7]), .O(n24_adj_616));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i11_4_lut_adj_77.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut (.I0(sweep_counter[11]), .I1(n24_adj_616), .I2(n20_adj_618), 
            .I3(sweep_counter[5]), .O(n13197));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2106_8_lut (.I0(GND_net), .I1(n3128), 
            .I2(VCC_net), .I3(n12897), .O(n3195)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_18_lut (.I0(GND_net), .I1(n2318), 
            .I2(VCC_net), .I3(n12711), .O(n2385)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_8 (.CI(n12897), .I0(n3128), 
            .I1(VCC_net), .CO(n12898));
    SB_LUT4 encoder0_position_31__I_0_add_1101_7_lut (.I0(GND_net), .I1(n1629_adj_609), 
            .I2(GND_net), .I3(n12581), .O(n1696)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12765_2_lut (.I0(n13197), .I1(n13968), .I2(GND_net), .I3(GND_net), 
            .O(n5215));   // verilog/TinyFPGA_B.v(146[6:29])
    defparam i12765_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i22_3_lut (.I0(encoder0_position[21]), 
            .I1(n12), .I2(encoder0_position[31]), .I3(GND_net), .O(n298));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i845_3_lut (.I0(n298), .I1(n1301), 
            .I2(n1257), .I3(GND_net), .O(n1333));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i845_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2106_7_lut (.I0(GND_net), .I1(n3129), 
            .I2(GND_net), .I3(n12896), .O(n3196)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_18 (.CI(n12711), .I0(n2318), 
            .I1(VCC_net), .CO(n12712));
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY encoder0_position_31__I_0_add_1101_7 (.CI(n12581), .I0(n1629_adj_609), 
            .I1(GND_net), .CO(n12582));
    SB_CARRY encoder0_position_31__I_0_add_2106_7 (.CI(n12896), .I0(n3129), 
            .I1(GND_net), .CO(n12897));
    SB_LUT4 encoder0_position_31__I_0_add_1570_17_lut (.I0(GND_net), .I1(n2319), 
            .I2(VCC_net), .I3(n12710), .O(n2386)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1101_6_lut (.I0(GND_net), .I1(n1630_adj_610), 
            .I2(GND_net), .I3(n12580), .O(n1697)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_766_3 (.CI(n12522), .I0(n1133), 
            .I1(VCC_net), .CO(n12523));
    SB_LUT4 encoder0_position_31__I_0_i912_3_lut (.I0(n1333), .I1(n1400), 
            .I2(n1356), .I3(GND_net), .O(n1432));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i912_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2106_6_lut (.I0(GND_net), .I1(n3130), 
            .I2(GND_net), .I3(n12895), .O(n3197)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_17 (.CI(n12710), .I0(n2319), 
            .I1(VCC_net), .CO(n12711));
    SB_CARRY encoder0_position_31__I_0_add_2106_6 (.CI(n12895), .I0(n3130), 
            .I1(GND_net), .CO(n12896));
    SB_LUT4 encoder0_position_31__I_0_add_2106_5_lut (.I0(GND_net), .I1(n3131), 
            .I2(VCC_net), .I3(n12894), .O(n3198)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_16_lut (.I0(GND_net), .I1(n2320), 
            .I2(VCC_net), .I3(n12709), .O(n2387)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_16_lut.LUT_INIT = 16'hC33C;
    SB_DFF dti_counter_662__i0 (.Q(dti_counter[0]), .C(CLK_N), .D(n55));   // verilog/TinyFPGA_B.v(188[22:36])
    SB_CARRY encoder0_position_31__I_0_add_1101_6 (.CI(n12580), .I0(n1630_adj_610), 
            .I1(GND_net), .CO(n12581));
    SB_LUT4 encoder0_position_31__I_0_add_766_2_lut (.I0(GND_net), .I1(n297), 
            .I2(GND_net), .I3(VCC_net), .O(n1201)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_5 (.CI(n12894), .I0(n3131), 
            .I1(VCC_net), .CO(n12895));
    SB_CARRY encoder0_position_31__I_0_add_1570_16 (.CI(n12709), .I0(n2320), 
            .I1(VCC_net), .CO(n12710));
    SB_DFFE encoder0_position_target_i0_i1 (.Q(encoder0_position_target[1]), 
            .C(CLK_N), .E(n5215), .D(n1640));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_766_2 (.CI(VCC_net), .I0(n297), 
            .I1(GND_net), .CO(n12522));
    SB_LUT4 encoder0_position_31__I_0_i979_3_lut (.I0(n1432), .I1(n1499), 
            .I2(n1455), .I3(GND_net), .O(n1531));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i979_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1046_3_lut (.I0(n1531), .I1(n1598), 
            .I2(n1554), .I3(GND_net), .O(n1630_adj_610));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1046_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1113_3_lut (.I0(n1630_adj_610), .I1(n1697), 
            .I2(n1653), .I3(GND_net), .O(n1729));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1113_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1180_3_lut (.I0(n1729), .I1(n1796), 
            .I2(n1752), .I3(GND_net), .O(n1828));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1180_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1247_3_lut (.I0(n1828), .I1(n1895), 
            .I2(n1851), .I3(GND_net), .O(n1927));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1247_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2106_4_lut (.I0(GND_net), .I1(n3132), 
            .I2(GND_net), .I3(n12893), .O(n3199)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_4 (.CI(n12893), .I0(n3132), 
            .I1(GND_net), .CO(n12894));
    SB_LUT4 encoder0_position_31__I_0_i1314_3_lut (.I0(n1927), .I1(n1994), 
            .I2(n1950), .I3(GND_net), .O(n2026));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1314_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1381_3_lut (.I0(n2026), .I1(n2093), 
            .I2(n2049), .I3(GND_net), .O(n2125));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1381_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1448_3_lut (.I0(n2125), .I1(n2192), 
            .I2(n2148), .I3(GND_net), .O(n2224));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1448_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1515_3_lut (.I0(n2224), .I1(n2291), 
            .I2(n2247), .I3(GND_net), .O(n2323));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1515_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1582_3_lut (.I0(n2323), .I1(n2390), 
            .I2(n2346), .I3(GND_net), .O(n2422));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1582_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1649_3_lut (.I0(n2422), .I1(n2489), 
            .I2(n2445), .I3(GND_net), .O(n2521));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1649_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2106_3_lut (.I0(GND_net), .I1(n3133), 
            .I2(VCC_net), .I3(n12892), .O(n3200)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_15_lut (.I0(GND_net), .I1(n2321), 
            .I2(VCC_net), .I3(n12708), .O(n2388)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_3 (.CI(n12892), .I0(n3133), 
            .I1(VCC_net), .CO(n12893));
    SB_CARRY encoder0_position_31__I_0_add_1570_15 (.CI(n12708), .I0(n2321), 
            .I1(VCC_net), .CO(n12709));
    SB_LUT4 encoder0_position_31__I_0_i2110_3_lut (.I0(n3107), .I1(n3174), 
            .I2(n3138), .I3(GND_net), .O(n3206));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2110_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_2_lut_adj_78 (.I0(dti_counter[1]), .I1(dti_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_706));   // verilog/TinyFPGA_B.v(185[8:22])
    defparam i2_2_lut_adj_78.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_79 (.I0(dti_counter[7]), .I1(dti_counter[4]), .I2(dti_counter[5]), 
            .I3(dti_counter[6]), .O(n14_adj_705));   // verilog/TinyFPGA_B.v(185[8:22])
    defparam i6_4_lut_adj_79.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(dti_counter[0]), .I1(n14_adj_705), .I2(n10_adj_706), 
            .I3(dti_counter[3]), .O(n5137));   // verilog/TinyFPGA_B.v(185[8:22])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_2106_2_lut (.I0(GND_net), .I1(n317), 
            .I2(GND_net), .I3(VCC_net), .O(n3201)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2106_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_14_lut (.I0(GND_net), .I1(n2322), 
            .I2(VCC_net), .I3(n12707), .O(n2389)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2106_2 (.CI(VCC_net), .I0(n317), 
            .I1(GND_net), .CO(n12892));
    SB_CARRY encoder0_position_31__I_0_add_1570_14 (.CI(n12707), .I0(n2322), 
            .I1(VCC_net), .CO(n12708));
    SB_LUT4 i1_4_lut_adj_80 (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(commutation_state_prev[2]), .I3(commutation_state_prev[1]), 
            .O(n4_adj_599));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i1_4_lut_adj_80.LUT_INIT = 16'h7bde;
    SB_LUT4 encoder0_position_31__I_0_add_2039_30_lut (.I0(n15418), .I1(n3006), 
            .I2(VCC_net), .I3(n12891), .O(n3105)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_30_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1570_13_lut (.I0(GND_net), .I1(n2323), 
            .I2(VCC_net), .I3(n12706), .O(n2390)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1101_5_lut (.I0(GND_net), .I1(n1631_adj_611), 
            .I2(VCC_net), .I3(n12579), .O(n1698)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_699_10_lut (.I0(GND_net), .I1(n1026), 
            .I2(VCC_net), .I3(n12521), .O(n1093)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_29_lut (.I0(GND_net), .I1(n3007), 
            .I2(VCC_net), .I3(n12890), .O(n3074)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_13 (.CI(n12706), .I0(n2323), 
            .I1(VCC_net), .CO(n12707));
    SB_CARRY encoder0_position_31__I_0_add_1101_5 (.CI(n12579), .I0(n1631_adj_611), 
            .I1(VCC_net), .CO(n12580));
    SB_CARRY encoder0_position_31__I_0_add_2039_29 (.CI(n12890), .I0(n3007), 
            .I1(VCC_net), .CO(n12891));
    SB_LUT4 encoder0_position_31__I_0_add_1570_12_lut (.I0(GND_net), .I1(n2324), 
            .I2(VCC_net), .I3(n12705), .O(n2391)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_699_9_lut (.I0(GND_net), .I1(n1027), 
            .I2(VCC_net), .I3(n12520), .O(n1094)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_699_9 (.CI(n12520), .I0(n1027), 
            .I1(VCC_net), .CO(n12521));
    SB_LUT4 encoder0_position_31__I_0_add_2039_28_lut (.I0(GND_net), .I1(n3008), 
            .I2(VCC_net), .I3(n12889), .O(n3075)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_12 (.CI(n12705), .I0(n2324), 
            .I1(VCC_net), .CO(n12706));
    SB_LUT4 encoder0_position_31__I_0_add_1101_4_lut (.I0(GND_net), .I1(n1632_adj_612), 
            .I2(GND_net), .I3(n12578), .O(n1699)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_28 (.CI(n12889), .I0(n3008), 
            .I1(VCC_net), .CO(n12890));
    SB_LUT4 encoder0_position_31__I_0_add_1570_11_lut (.I0(GND_net), .I1(n2325), 
            .I2(VCC_net), .I3(n12704), .O(n2392)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12768_2_lut (.I0(n5137), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(dti_N_333));
    defparam i12768_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3280_3_lut (.I0(h3), .I1(reg_B[0]), .I2(n14129), .I3(GND_net), 
            .O(n5256));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    defparam i3280_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_27_lut (.I0(GND_net), .I1(n3009), 
            .I2(VCC_net), .I3(n12888), .O(n3076)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_11 (.CI(n12704), .I0(n2325), 
            .I1(VCC_net), .CO(n12705));
    SB_CARRY encoder0_position_31__I_0_add_1101_4 (.CI(n12578), .I0(n1632_adj_612), 
            .I1(GND_net), .CO(n12579));
    SB_LUT4 encoder0_position_31__I_0_add_699_8_lut (.I0(GND_net), .I1(n1028), 
            .I2(VCC_net), .I3(n12519), .O(n1095)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_27 (.CI(n12888), .I0(n3009), 
            .I1(VCC_net), .CO(n12889));
    SB_LUT4 encoder0_position_31__I_0_add_2039_26_lut (.I0(GND_net), .I1(n3010), 
            .I2(VCC_net), .I3(n12887), .O(n3077)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_26_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR sweep_counter_660_661__i1 (.Q(sweep_counter[0]), .C(CLK_N), 
            .D(n95), .R(n5215));   // verilog/TinyFPGA_B.v(145[20:37])
    SB_CARRY encoder0_position_31__I_0_add_699_8 (.CI(n12519), .I0(n1028), 
            .I1(VCC_net), .CO(n12520));
    SB_DFF blink_counter_663__i0 (.Q(n26_adj_703), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 encoder0_position_31__I_0_add_699_7_lut (.I0(GND_net), .I1(n1029), 
            .I2(GND_net), .I3(n12518), .O(n1096)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_26 (.CI(n12887), .I0(n3010), 
            .I1(VCC_net), .CO(n12888));
    SB_LUT4 encoder0_position_31__I_0_add_1570_10_lut (.I0(GND_net), .I1(n2326), 
            .I2(VCC_net), .I3(n12703), .O(n2393)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_10_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_setpoint_i6 (.Q(pwm_setpoint[6]), .C(CLK_N), .D(pwm_setpoint_23__N_27[6]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 i3283_3_lut (.I0(h1), .I1(reg_B[2]), .I2(n14129), .I3(GND_net), 
            .O(n5259));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    defparam i3283_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_699_7 (.CI(n12518), .I0(n1029), 
            .I1(GND_net), .CO(n12519));
    SB_LUT4 i3284_3_lut (.I0(h2), .I1(reg_B[1]), .I2(n14129), .I3(GND_net), 
            .O(n5260));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    defparam i3284_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_25_lut (.I0(GND_net), .I1(n3011), 
            .I2(VCC_net), .I3(n12886), .O(n3078)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_10 (.CI(n12703), .I0(n2326), 
            .I1(VCC_net), .CO(n12704));
    SB_LUT4 encoder0_position_31__I_0_add_1101_3_lut (.I0(GND_net), .I1(n1633_adj_613), 
            .I2(VCC_net), .I3(n12577), .O(n1700)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1101_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2178_1_lut (.I0(duty[23]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(pwm_setpoint_23__N_195));   // verilog/TinyFPGA_B.v(107[6:13])
    defparam i2178_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_2039_25 (.CI(n12886), .I0(n3011), 
            .I1(VCC_net), .CO(n12887));
    SB_LUT4 encoder0_position_31__I_0_add_1570_9_lut (.I0(GND_net), .I1(n2327), 
            .I2(VCC_net), .I3(n12702), .O(n2394)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_81 (.I0(n2420), .I1(n2421), .I2(n14622), .I3(n2422), 
            .O(n14628));
    defparam i1_4_lut_adj_81.LUT_INIT = 16'hfffe;
    SB_LUT4 i10981_3_lut (.I0(n3), .I1(n2562), .I2(n13653), .I3(GND_net), 
            .O(n13654));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10982_3_lut (.I0(encoder0_position[30]), .I1(n13654), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n829));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i568_3_lut (.I0(n829), .I1(n896), 
            .I2(n861), .I3(GND_net), .O(n928));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i568_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2039_24_lut (.I0(GND_net), .I1(n3012), 
            .I2(VCC_net), .I3(n12885), .O(n3079)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_9 (.CI(n12702), .I0(n2327), 
            .I1(VCC_net), .CO(n12703));
    SB_CARRY encoder0_position_31__I_0_add_2039_24 (.CI(n12885), .I0(n3012), 
            .I1(VCC_net), .CO(n12886));
    SB_DFF pwm_setpoint_i5 (.Q(pwm_setpoint[5]), .C(CLK_N), .D(pwm_setpoint_23__N_27[5]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i4 (.Q(pwm_setpoint[4]), .C(CLK_N), .D(pwm_setpoint_23__N_27[4]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_LUT4 encoder0_position_31__I_0_add_2039_23_lut (.I0(GND_net), .I1(n3013), 
            .I2(VCC_net), .I3(n12884), .O(n3080)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_8_lut (.I0(GND_net), .I1(n2328), 
            .I2(VCC_net), .I3(n12701), .O(n2395)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_699_6_lut (.I0(GND_net), .I1(n1030), 
            .I2(GND_net), .I3(n12517), .O(n1097)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_23 (.CI(n12884), .I0(n3013), 
            .I1(VCC_net), .CO(n12885));
    SB_CARRY encoder0_position_31__I_0_add_1570_8 (.CI(n12701), .I0(n2328), 
            .I1(VCC_net), .CO(n12702));
    SB_LUT4 encoder0_position_31__I_0_i635_rep_47_3_lut (.I0(n928), .I1(n995), 
            .I2(n960), .I3(GND_net), .O(n1027));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i635_rep_47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2039_22_lut (.I0(GND_net), .I1(n3014), 
            .I2(VCC_net), .I3(n12883), .O(n3081)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_22 (.CI(n12883), .I0(n3014), 
            .I1(VCC_net), .CO(n12884));
    SB_LUT4 encoder0_position_31__I_0_i702_3_lut (.I0(n1027), .I1(n1094), 
            .I2(n1059), .I3(GND_net), .O(n1126));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i702_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i769_3_lut (.I0(n1126), .I1(n1193), 
            .I2(n1158), .I3(GND_net), .O(n1225));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i769_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i836_3_lut (.I0(n1225), .I1(n1292), 
            .I2(n1257), .I3(GND_net), .O(n1324));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i836_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i903_3_lut (.I0(n1324), .I1(n1391), 
            .I2(n1356), .I3(GND_net), .O(n1423));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i903_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_82 (.I0(n2429), .I1(n11967), .I2(n2430), .I3(n2431), 
            .O(n13828));
    defparam i1_4_lut_adj_82.LUT_INIT = 16'ha080;
    SB_LUT4 encoder0_position_31__I_0_add_2039_21_lut (.I0(GND_net), .I1(n3015), 
            .I2(VCC_net), .I3(n12882), .O(n3082)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_7_lut (.I0(GND_net), .I1(n2329), 
            .I2(GND_net), .I3(n12700), .O(n2396)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_21 (.CI(n12882), .I0(n3015), 
            .I1(VCC_net), .CO(n12883));
    SB_CARRY encoder0_position_31__I_0_add_1570_7 (.CI(n12700), .I0(n2329), 
            .I1(GND_net), .CO(n12701));
    SB_DFF duty_i23 (.Q(duty[23]), .C(CLK_N), .D(duty_23__N_51[23]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_i970_3_lut (.I0(n1423), .I1(n1490), 
            .I2(n1455), .I3(GND_net), .O(n1522));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i970_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1037_3_lut (.I0(n1522), .I1(n1589), 
            .I2(n1554), .I3(GND_net), .O(n1621_adj_601));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1037_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1104_3_lut (.I0(n1621_adj_601), .I1(n1688), 
            .I2(n1653), .I3(GND_net), .O(n1720));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1104_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_20_lut (.I0(GND_net), .I1(n3016), 
            .I2(VCC_net), .I3(n12881), .O(n3083)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_6_lut (.I0(GND_net), .I1(n2330), 
            .I2(GND_net), .I3(n12699), .O(n2397)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_20 (.CI(n12881), .I0(n3016), 
            .I1(VCC_net), .CO(n12882));
    SB_CARRY encoder0_position_31__I_0_add_1570_6 (.CI(n12699), .I0(n2330), 
            .I1(GND_net), .CO(n12700));
    SB_LUT4 encoder0_position_31__I_0_i1171_3_lut (.I0(n1720), .I1(n1787), 
            .I2(n1752), .I3(GND_net), .O(n1819));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1171_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1238_3_lut (.I0(n1819), .I1(n1886), 
            .I2(n1851), .I3(GND_net), .O(n1918));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1238_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_19_lut (.I0(GND_net), .I1(n3017), 
            .I2(VCC_net), .I3(n12880), .O(n3084)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_5_lut (.I0(GND_net), .I1(n2331), 
            .I2(VCC_net), .I3(n12698), .O(n2398)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1305_3_lut (.I0(n1918), .I1(n1985), 
            .I2(n1950), .I3(GND_net), .O(n2017));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1305_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_305_9 (.CI(n12456), .I0(encoder0_position_target[7]), .I1(direction), 
            .CO(n12457));
    SB_CARRY encoder0_position_31__I_0_add_2039_19 (.CI(n12880), .I0(n3017), 
            .I1(VCC_net), .CO(n12881));
    SB_CARRY encoder0_position_31__I_0_add_1570_5 (.CI(n12698), .I0(n2331), 
            .I1(VCC_net), .CO(n12699));
    SB_LUT4 encoder0_position_31__I_0_i1372_3_lut (.I0(n2017), .I1(n2084), 
            .I2(n2049), .I3(GND_net), .O(n2116));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1372_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_18_lut (.I0(GND_net), .I1(n3018), 
            .I2(VCC_net), .I3(n12879), .O(n3085)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_4_lut (.I0(GND_net), .I1(n2332), 
            .I2(GND_net), .I3(n12697), .O(n2399)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_16_lut (.I0(GND_net), .I1(encoder0_position_target[14]), 
            .I2(direction), .I3(n12463), .O(n1627)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1439_3_lut (.I0(n2116), .I1(n2183), 
            .I2(n2148), .I3(GND_net), .O(n2215));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1439_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1506_3_lut (.I0(n2215), .I1(n2282), 
            .I2(n2247), .I3(GND_net), .O(n2314));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1506_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1573_3_lut (.I0(n2314), .I1(n2381), 
            .I2(n2346), .I3(GND_net), .O(n2413));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1573_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_8_lut (.I0(GND_net), 
            .I1(encoder0_position_target[6]), .I2(n19_adj_557), .I3(n12478), 
            .O(duty_23__N_51[6])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_18 (.CI(n12879), .I0(n3018), 
            .I1(VCC_net), .CO(n12880));
    SB_CARRY encoder0_position_31__I_0_add_1570_4 (.CI(n12697), .I0(n2332), 
            .I1(GND_net), .CO(n12698));
    SB_LUT4 encoder0_position_31__I_0_i1640_3_lut (.I0(n2413), .I1(n2480), 
            .I2(n2445), .I3(GND_net), .O(n2512));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1640_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_17_lut (.I0(GND_net), .I1(n3019), 
            .I2(VCC_net), .I3(n12878), .O(n3086)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1707_3_lut (.I0(n2512), .I1(n2579), 
            .I2(n2544), .I3(GND_net), .O(n2611));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1707_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1774_3_lut (.I0(n2611), .I1(n2678), 
            .I2(n2643), .I3(GND_net), .O(n2710));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1774_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_17 (.CI(n12878), .I0(n3019), 
            .I1(VCC_net), .CO(n12879));
    SB_LUT4 encoder0_position_31__I_0_add_2039_16_lut (.I0(GND_net), .I1(n3020), 
            .I2(VCC_net), .I3(n12877), .O(n3087)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1570_3_lut (.I0(GND_net), .I1(n2333), 
            .I2(VCC_net), .I3(n12696), .O(n2400)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1841_3_lut (.I0(n2710), .I1(n2777), 
            .I2(n2742), .I3(GND_net), .O(n2809));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1841_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1908_3_lut (.I0(n2809), .I1(n2876), 
            .I2(n2841), .I3(GND_net), .O(n2908));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1908_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1975_3_lut (.I0(n2908), .I1(n2975), 
            .I2(n2940), .I3(GND_net), .O(n3007));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1975_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_16 (.CI(n12877), .I0(n3020), 
            .I1(VCC_net), .CO(n12878));
    SB_LUT4 add_305_8_lut (.I0(GND_net), .I1(encoder0_position_target[6]), 
            .I2(direction), .I3(n12455), .O(n1635)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1570_3 (.CI(n12696), .I0(n2333), 
            .I1(VCC_net), .CO(n12697));
    SB_LUT4 encoder0_position_31__I_0_mux_3_i27_3_lut (.I0(encoder0_position[26]), 
            .I1(n7), .I2(encoder0_position[31]), .I3(GND_net), .O(n40));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_83 (.I0(n4), .I1(n5), .I2(n40), .I3(n6), .O(n5_adj_682));
    defparam i1_4_lut_adj_83.LUT_INIT = 16'heeea;
    SB_LUT4 unary_minus_13_add_3_4_lut (.I0(GND_net), .I1(GND_net), .I2(n23_adj_595), 
            .I3(n12427), .O(pwm_setpoint_23__N_171[2])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_16 (.CI(n12439), .I0(GND_net), .I1(n11_adj_583), 
            .CO(n12440));
    SB_CARRY unary_minus_13_add_3_10 (.CI(n12433), .I0(GND_net), .I1(n17_adj_589), 
            .CO(n12434));
    SB_LUT4 unary_minus_13_add_3_24_lut (.I0(GND_net), .I1(GND_net), .I2(n3_adj_575), 
            .I3(n12447), .O(pwm_setpoint_23__N_171[22])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_84 (.I0(n3), .I1(n2), .I2(n5_adj_682), .I3(GND_net), 
            .O(n13653));
    defparam i1_3_lut_adj_84.LUT_INIT = 16'h8080;
    SB_LUT4 i10983_3_lut (.I0(n4), .I1(n2563), .I2(n13653), .I3(GND_net), 
            .O(n13656));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2039_15_lut (.I0(GND_net), .I1(n3021), 
            .I2(VCC_net), .I3(n12876), .O(n3088)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10984_3_lut (.I0(encoder0_position[29]), .I1(n13656), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n830));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i569_3_lut (.I0(n830), .I1(n897), 
            .I2(n861), .I3(GND_net), .O(n929));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i569_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_2039_15 (.CI(n12876), .I0(n3021), 
            .I1(VCC_net), .CO(n12877));
    SB_LUT4 encoder0_position_31__I_0_add_1570_2_lut (.I0(GND_net), .I1(n309), 
            .I2(GND_net), .I3(VCC_net), .O(n2401)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1570_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_25_lut (.I0(GND_net), .I1(encoder0_position_target[23]), 
            .I2(direction), .I3(n12472), .O(n1618)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_14_lut (.I0(GND_net), .I1(n3022), 
            .I2(VCC_net), .I3(n12875), .O(n3089)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i636_3_lut (.I0(n929), .I1(n996), 
            .I2(n960), .I3(GND_net), .O(n1028));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i703_3_lut (.I0(n1028), .I1(n1095), 
            .I2(n1059), .I3(GND_net), .O(n1127));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i703_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i770_3_lut (.I0(n1127), .I1(n1194), 
            .I2(n1158), .I3(GND_net), .O(n1226));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i770_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_14 (.CI(n12875), .I0(n3022), 
            .I1(VCC_net), .CO(n12876));
    SB_CARRY encoder0_position_31__I_0_add_1570_2 (.CI(VCC_net), .I0(n309), 
            .I1(GND_net), .CO(n12696));
    SB_LUT4 encoder0_position_31__I_0_i837_3_lut (.I0(n1226), .I1(n1293), 
            .I2(n1257), .I3(GND_net), .O(n1325));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i837_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i904_3_lut (.I0(n1325), .I1(n1392), 
            .I2(n1356), .I3(GND_net), .O(n1424));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i904_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i971_3_lut (.I0(n1424), .I1(n1491), 
            .I2(n1455), .I3(GND_net), .O(n1523));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i971_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_305_24_lut (.I0(GND_net), .I1(encoder0_position_target[22]), 
            .I2(direction), .I3(n12471), .O(n1619)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1038_3_lut (.I0(n1523), .I1(n1590), 
            .I2(n1554), .I3(GND_net), .O(n1622_adj_602));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1038_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1105_3_lut (.I0(n1622_adj_602), .I1(n1689), 
            .I2(n1653), .I3(GND_net), .O(n1721));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1105_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 unary_minus_13_add_3_9_lut (.I0(GND_net), .I1(GND_net), .I2(n18_adj_590), 
            .I3(n12432), .O(pwm_setpoint_23__N_171[7])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_add_3_15_lut (.I0(GND_net), .I1(GND_net), .I2(n12_adj_584), 
            .I3(n12438), .O(pwm_setpoint_23__N_171[13])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_8 (.CI(n12455), .I0(encoder0_position_target[6]), .I1(direction), 
            .CO(n12456));
    SB_CARRY unary_minus_13_add_3_3 (.CI(n12426), .I0(GND_net), .I1(n24_adj_596), 
            .CO(n12427));
    SB_LUT4 encoder0_position_31__I_0_add_2039_13_lut (.I0(GND_net), .I1(n3023), 
            .I2(VCC_net), .I3(n12874), .O(n3090)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_22_lut (.I0(n15748), .I1(n2214), 
            .I2(VCC_net), .I3(n12695), .O(n2313)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_22_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_305_24 (.CI(n12471), .I0(encoder0_position_target[22]), 
            .I1(direction), .CO(n12472));
    SB_LUT4 encoder0_position_31__I_0_i1172_3_lut (.I0(n1721), .I1(n1788), 
            .I2(n1752), .I3(GND_net), .O(n1820));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1172_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_305_23_lut (.I0(GND_net), .I1(encoder0_position_target[21]), 
            .I2(direction), .I3(n12470), .O(n1620)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1239_3_lut (.I0(n1820), .I1(n1887), 
            .I2(n1851), .I3(GND_net), .O(n1919));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1239_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_13 (.CI(n12874), .I0(n3023), 
            .I1(VCC_net), .CO(n12875));
    SB_LUT4 encoder0_position_31__I_0_add_1503_21_lut (.I0(GND_net), .I1(n2215), 
            .I2(VCC_net), .I3(n12694), .O(n2282)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_12_lut (.I0(GND_net), .I1(n3024), 
            .I2(VCC_net), .I3(n12873), .O(n3091)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_21 (.CI(n12694), .I0(n2215), 
            .I1(VCC_net), .CO(n12695));
    SB_LUT4 encoder0_position_31__I_0_i1306_3_lut (.I0(n1919), .I1(n1986), 
            .I2(n1950), .I3(GND_net), .O(n2018));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1306_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1373_3_lut (.I0(n2018), .I1(n2085), 
            .I2(n2049), .I3(GND_net), .O(n2117));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1373_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1440_3_lut (.I0(n2117), .I1(n2184), 
            .I2(n2148), .I3(GND_net), .O(n2216));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1440_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_12 (.CI(n12873), .I0(n3024), 
            .I1(VCC_net), .CO(n12874));
    SB_LUT4 encoder0_position_31__I_0_add_1503_20_lut (.I0(GND_net), .I1(n2216), 
            .I2(VCC_net), .I3(n12693), .O(n2283)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_11_lut (.I0(GND_net), .I1(n3025), 
            .I2(VCC_net), .I3(n12872), .O(n3092)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_20 (.CI(n12693), .I0(n2216), 
            .I1(VCC_net), .CO(n12694));
    SB_LUT4 encoder0_position_31__I_0_i1507_3_lut (.I0(n2216), .I1(n2283), 
            .I2(n2247), .I3(GND_net), .O(n2315));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1507_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY unary_minus_13_add_3_9 (.CI(n12432), .I0(GND_net), .I1(n18_adj_590), 
            .CO(n12433));
    SB_CARRY add_305_23 (.CI(n12470), .I0(encoder0_position_target[21]), 
            .I1(direction), .CO(n12471));
    SB_LUT4 add_305_22_lut (.I0(GND_net), .I1(encoder0_position_target[20]), 
            .I2(direction), .I3(n12469), .O(n1621)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_add_3_6_lut (.I0(GND_net), .I1(GND_net), .I2(n21_adj_593), 
            .I3(n12429), .O(pwm_setpoint_23__N_171[4])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_16 (.CI(n12463), .I0(encoder0_position_target[14]), 
            .I1(direction), .CO(n12464));
    SB_LUT4 encoder0_position_31__I_0_i1574_3_lut (.I0(n2315), .I1(n2382), 
            .I2(n2346), .I3(GND_net), .O(n2414));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1574_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1641_3_lut (.I0(n2414), .I1(n2481), 
            .I2(n2445), .I3(GND_net), .O(n2513));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1641_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1708_3_lut (.I0(n2513), .I1(n2580), 
            .I2(n2544), .I3(GND_net), .O(n2612));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1708_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_11 (.CI(n12872), .I0(n3025), 
            .I1(VCC_net), .CO(n12873));
    SB_LUT4 encoder0_position_31__I_0_add_1503_19_lut (.I0(GND_net), .I1(n2217), 
            .I2(VCC_net), .I3(n12692), .O(n2284)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1775_3_lut (.I0(n2612), .I1(n2679), 
            .I2(n2643), .I3(GND_net), .O(n2711));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1775_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 unary_minus_13_add_3_8_lut (.I0(GND_net), .I1(GND_net), .I2(n19_adj_591), 
            .I3(n12431), .O(pwm_setpoint_23__N_171[6])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1842_3_lut (.I0(n2711), .I1(n2778), 
            .I2(n2742), .I3(GND_net), .O(n2810));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1842_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1909_3_lut (.I0(n2810), .I1(n2877), 
            .I2(n2841), .I3(GND_net), .O(n2909));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1909_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1976_3_lut (.I0(n2909), .I1(n2976), 
            .I2(n2940), .I3(GND_net), .O(n3008));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1976_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2043_3_lut (.I0(n3008), .I1(n3075), 
            .I2(n3039), .I3(GND_net), .O(n3107));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2043_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_305_7_lut (.I0(GND_net), .I1(encoder0_position_target[5]), 
            .I2(direction), .I3(n12454), .O(n1636)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_15_lut (.I0(GND_net), .I1(encoder0_position_target[13]), 
            .I2(direction), .I3(n12462), .O(n1628)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_22 (.CI(n12469), .I0(encoder0_position_target[20]), 
            .I1(direction), .CO(n12470));
    SB_CARRY add_305_7 (.CI(n12454), .I0(encoder0_position_target[5]), .I1(direction), 
            .CO(n12455));
    SB_LUT4 i10050_4_lut (.I0(n41), .I1(n831), .I2(n832), .I3(n833), 
            .O(n12027));
    defparam i10050_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i10150_4_lut (.I0(n829), .I1(n828), .I2(n12027), .I3(n830), 
            .O(n861));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10150_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i12760_1_lut (.I0(n12051), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15490));
    defparam i12760_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10985_3_lut (.I0(n5), .I1(n2564), .I2(n13653), .I3(GND_net), 
            .O(n13658));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10986_3_lut (.I0(encoder0_position[28]), .I1(n13658), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n831));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i10986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_2039_10_lut (.I0(GND_net), .I1(n3026), 
            .I2(VCC_net), .I3(n12871), .O(n3093)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9978_4_lut (.I0(n295), .I1(n931), .I2(n932), .I3(n933), 
            .O(n11955));
    defparam i9978_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 encoder0_position_31__I_0_i2193_3_lut (.I0(n3222), .I1(n3289), 
            .I2(n3237), .I3(GND_net), .O(n27_adj_716));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2193_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY unary_minus_13_add_3_15 (.CI(n12438), .I0(GND_net), .I1(n12_adj_584), 
            .CO(n12439));
    SB_LUT4 add_305_6_lut (.I0(GND_net), .I1(encoder0_position_target[4]), 
            .I2(direction), .I3(n12453), .O(n1637)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_19 (.CI(n12692), .I0(n2217), 
            .I1(VCC_net), .CO(n12693));
    SB_LUT4 unary_minus_13_add_3_14_lut (.I0(GND_net), .I1(GND_net), .I2(n13_adj_585), 
            .I3(n12437), .O(pwm_setpoint_23__N_171[12])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_15 (.CI(n12462), .I0(encoder0_position_target[13]), 
            .I1(direction), .CO(n12463));
    SB_CARRY encoder0_position_31__I_0_add_2039_10 (.CI(n12871), .I0(n3026), 
            .I1(VCC_net), .CO(n12872));
    SB_LUT4 i1_2_lut_adj_85 (.I0(n929), .I1(n930), .I2(GND_net), .I3(GND_net), 
            .O(n14460));
    defparam i1_2_lut_adj_85.LUT_INIT = 16'h8888;
    SB_LUT4 encoder0_position_31__I_0_i2192_3_lut (.I0(n3221), .I1(n3288), 
            .I2(n3237), .I3(GND_net), .O(n29_adj_717));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2192_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY unary_minus_13_add_3_24 (.CI(n12447), .I0(GND_net), .I1(n3_adj_575), 
            .CO(n12448));
    SB_LUT4 encoder0_position_31__I_0_i2189_3_lut (.I0(n3218), .I1(n3285), 
            .I2(n3237), .I3(GND_net), .O(n35_adj_719));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2189_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_2039_9_lut (.I0(GND_net), .I1(n3027), 
            .I2(VCC_net), .I3(n12870), .O(n3094)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2195_3_lut (.I0(n3224), .I1(n3291), 
            .I2(n3237), .I3(GND_net), .O(n23_adj_715));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2195_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2200_3_lut (.I0(n3229), .I1(n3296), 
            .I2(n3237), .I3(GND_net), .O(n13_adj_713));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2200_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1503_18_lut (.I0(GND_net), .I1(n2218), 
            .I2(VCC_net), .I3(n12691), .O(n2285)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_9 (.CI(n12870), .I0(n3027), 
            .I1(VCC_net), .CO(n12871));
    SB_CARRY encoder0_position_31__I_0_add_1503_18 (.CI(n12691), .I0(n2218), 
            .I1(VCC_net), .CO(n12692));
    SB_LUT4 encoder0_position_31__I_0_add_2039_8_lut (.I0(GND_net), .I1(n3028), 
            .I2(VCC_net), .I3(n12869), .O(n3095)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_86 (.I0(n927), .I1(n14460), .I2(n928), .I3(n11955), 
            .O(n960));
    defparam i1_4_lut_adj_86.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_4_lut_adj_87 (.I0(n3217), .I1(n27_adj_716), .I2(n3284), 
            .I3(n3237), .O(n14266));
    defparam i1_4_lut_adj_87.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_88 (.I0(n3225), .I1(n29_adj_717), .I2(n3292), 
            .I3(n3237), .O(n14270));
    defparam i1_4_lut_adj_88.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_89 (.I0(n3220), .I1(n23_adj_715), .I2(n3287), 
            .I3(n3237), .O(n14260));
    defparam i1_4_lut_adj_89.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_90 (.I0(n3226), .I1(n13_adj_713), .I2(n3293), 
            .I3(n3237), .O(n14264));
    defparam i1_4_lut_adj_90.LUT_INIT = 16'heefc;
    SB_LUT4 encoder0_position_31__I_0_i570_3_lut (.I0(n831), .I1(n898), 
            .I2(n861), .I3(GND_net), .O(n930));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i570_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9957_3_lut (.I0(n296), .I1(n1032), .I2(n1033), .I3(GND_net), 
            .O(n11933));
    defparam i9957_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 encoder0_position_31__I_0_i2198_3_lut (.I0(n3227), .I1(n3294), 
            .I2(n3237), .I3(GND_net), .O(n17_adj_714));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2198_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_8 (.CI(n12869), .I0(n3028), 
            .I1(VCC_net), .CO(n12870));
    SB_LUT4 add_305_14_lut (.I0(GND_net), .I1(encoder0_position_target[12]), 
            .I2(direction), .I3(n12461), .O(n1629)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_7_lut (.I0(GND_net), .I1(n3029), 
            .I2(GND_net), .I3(n12868), .O(n3096)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_21_lut (.I0(GND_net), .I1(encoder0_position_target[19]), 
            .I2(direction), .I3(n12468), .O(n1622)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_8 (.CI(n12431), .I0(GND_net), .I1(n19_adj_591), 
            .CO(n12432));
    SB_CARRY add_305_14 (.CI(n12461), .I0(encoder0_position_target[12]), 
            .I1(direction), .CO(n12462));
    SB_LUT4 add_305_13_lut (.I0(GND_net), .I1(encoder0_position_target[11]), 
            .I2(direction), .I3(n12460), .O(n1630)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2190_3_lut (.I0(n3219), .I1(n3286), 
            .I2(n3237), .I3(GND_net), .O(n33_adj_718));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2190_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_2039_7 (.CI(n12868), .I0(n3029), 
            .I1(GND_net), .CO(n12869));
    SB_LUT4 i1_4_lut_adj_91 (.I0(n3228), .I1(n35_adj_719), .I2(n3295), 
            .I3(n3237), .O(n14268));
    defparam i1_4_lut_adj_91.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_92 (.I0(n1029), .I1(n11933), .I2(n1030), .I3(n1031), 
            .O(n13728));
    defparam i1_4_lut_adj_92.LUT_INIT = 16'ha080;
    SB_LUT4 i1_4_lut_adj_93 (.I0(n3216), .I1(n17_adj_714), .I2(n3283), 
            .I3(n3237), .O(n14272));
    defparam i1_4_lut_adj_93.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_94 (.I0(n3223), .I1(n33_adj_718), .I2(n3290), 
            .I3(n3237), .O(n14262));
    defparam i1_4_lut_adj_94.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_95 (.I0(n14264), .I1(n14260), .I2(n14270), .I3(n14266), 
            .O(n14282));
    defparam i1_4_lut_adj_95.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1503_17_lut (.I0(GND_net), .I1(n2219), 
            .I2(VCC_net), .I3(n12690), .O(n2286)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_6_lut (.I0(GND_net), .I1(n3030), 
            .I2(GND_net), .I3(n12867), .O(n3097)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12781_4_lut (.I0(n1026), .I1(n13728), .I2(n1027), .I3(n1028), 
            .O(n1059));
    defparam i12781_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i637_3_lut (.I0(n930), .I1(n997), 
            .I2(n960), .I3(GND_net), .O(n1029));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i637_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10042_4_lut (.I0(n297), .I1(n1131), .I2(n1132), .I3(n1133), 
            .O(n12019));
    defparam i10042_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_3_lut_adj_96 (.I0(n1126), .I1(n1127), .I2(n1128), .I3(GND_net), 
            .O(n14406));
    defparam i1_3_lut_adj_96.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_97 (.I0(n14282), .I1(n14262), .I2(n14272), .I3(n14268), 
            .O(n14284));
    defparam i1_4_lut_adj_97.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_98 (.I0(n14284), .I1(n3215), .I2(n3282), .I3(n3237), 
            .O(n14286));
    defparam i1_4_lut_adj_98.LUT_INIT = 16'heefa;
    SB_LUT4 i1_2_lut_adj_99 (.I0(n1129), .I1(n1130), .I2(GND_net), .I3(GND_net), 
            .O(n14464));
    defparam i1_2_lut_adj_99.LUT_INIT = 16'h8888;
    SB_LUT4 i12795_4_lut (.I0(n14464), .I1(n1125), .I2(n14406), .I3(n12019), 
            .O(n1158));
    defparam i12795_4_lut.LUT_INIT = 16'h0103;
    SB_LUT4 blink_counter_663_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n13094), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_6 (.CI(n12867), .I0(n3030), 
            .I1(GND_net), .CO(n12868));
    SB_CARRY encoder0_position_31__I_0_add_1503_17 (.CI(n12690), .I0(n2219), 
            .I1(VCC_net), .CO(n12691));
    SB_CARRY add_305_21 (.CI(n12468), .I0(encoder0_position_target[19]), 
            .I1(direction), .CO(n12469));
    SB_LUT4 encoder0_position_31__I_0_i704_3_lut (.I0(n1029), .I1(n1096), 
            .I2(n1059), .I3(GND_net), .O(n1128));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i704_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_8 (.CI(n12478), .I0(encoder0_position_target[6]), 
            .I1(n19_adj_557), .CO(n12479));
    SB_LUT4 blink_counter_663_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n13093), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_add_3_23_lut (.I0(GND_net), .I1(GND_net), .I2(n4_adj_576), 
            .I3(n12446), .O(pwm_setpoint_23__N_171[21])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_20_lut (.I0(GND_net), .I1(encoder0_position_target[18]), 
            .I2(direction), .I3(n12467), .O(n1623)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2039_5_lut (.I0(GND_net), .I1(n3031), 
            .I2(VCC_net), .I3(n12866), .O(n3098)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_16_lut (.I0(GND_net), .I1(n2220), 
            .I2(VCC_net), .I3(n12689), .O(n2287)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9902_4_lut (.I0(n319), .I1(n318), .I2(n3301), .I3(n3237), 
            .O(n11878));
    defparam i9902_4_lut.LUT_INIT = 16'heefa;
    SB_CARRY blink_counter_663_add_4_26 (.CI(n13093), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n13094));
    SB_LUT4 i9951_3_lut (.I0(n298), .I1(n1232), .I2(n1233), .I3(GND_net), 
            .O(n11927));
    defparam i9951_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 blink_counter_663_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n13092), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9964_4_lut (.I0(n11878), .I1(n3233), .I2(n3300), .I3(n3237), 
            .O(n11941));
    defparam i9964_4_lut.LUT_INIT = 16'h88a0;
    SB_LUT4 i1_3_lut_adj_100 (.I0(n1226), .I1(n1227), .I2(n1228), .I3(GND_net), 
            .O(n14476));
    defparam i1_3_lut_adj_100.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_101 (.I0(n1229), .I1(n11927), .I2(n1230), .I3(n1231), 
            .O(n13723));
    defparam i1_4_lut_adj_101.LUT_INIT = 16'ha080;
    SB_CARRY blink_counter_663_add_4_25 (.CI(n13092), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n13093));
    SB_CARRY encoder0_position_31__I_0_add_2039_5 (.CI(n12866), .I0(n3031), 
            .I1(VCC_net), .CO(n12867));
    SB_CARRY encoder0_position_31__I_0_add_1503_16 (.CI(n12689), .I0(n2220), 
            .I1(VCC_net), .CO(n12690));
    SB_LUT4 i16_4_lut (.I0(n3231), .I1(n15079), .I2(n3237), .I3(n3230), 
            .O(n5_adj_704));
    defparam i16_4_lut.LUT_INIT = 16'hac0c;
    SB_LUT4 i1_4_lut_adj_102 (.I0(n3214), .I1(n14286), .I2(n3281), .I3(n3237), 
            .O(n14288));
    defparam i1_4_lut_adj_102.LUT_INIT = 16'heefc;
    SB_LUT4 encoder0_position_31__I_0_add_2039_4_lut (.I0(GND_net), .I1(n3032), 
            .I2(GND_net), .I3(n12865), .O(n3099)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_15_lut (.I0(GND_net), .I1(n2221), 
            .I2(VCC_net), .I3(n12688), .O(n2288)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2184_3_lut (.I0(n3213), .I1(n3280), 
            .I2(n3237), .I3(GND_net), .O(n45_adj_720));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2184_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY unary_minus_13_add_3_6 (.CI(n12429), .I0(GND_net), .I1(n21_adj_593), 
            .CO(n12430));
    SB_CARRY add_305_6 (.CI(n12453), .I0(encoder0_position_target[4]), .I1(direction), 
            .CO(n12454));
    SB_LUT4 i10062_4_lut (.I0(n11941), .I1(n3232), .I2(n3299), .I3(n3237), 
            .O(n12039));
    defparam i10062_4_lut.LUT_INIT = 16'heefa;
    SB_LUT4 i1_4_lut_adj_103 (.I0(n12039), .I1(n45_adj_720), .I2(n14288), 
            .I3(n5_adj_704), .O(n14292));
    defparam i1_4_lut_adj_103.LUT_INIT = 16'hfefc;
    SB_LUT4 i12810_4_lut (.I0(n1225), .I1(n1224), .I2(n13723), .I3(n14476), 
            .O(n1257));
    defparam i12810_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 blink_counter_663_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n13091), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_4 (.CI(n12865), .I0(n3032), 
            .I1(GND_net), .CO(n12866));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_7_lut (.I0(GND_net), 
            .I1(encoder0_position_target[5]), .I2(n20_adj_556), .I3(n12477), 
            .O(duty_23__N_51[5])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_15 (.CI(n12688), .I0(n2221), 
            .I1(VCC_net), .CO(n12689));
    SB_LUT4 encoder0_position_31__I_0_i771_3_lut (.I0(n1128), .I1(n1195), 
            .I2(n1158), .I3(GND_net), .O(n1227));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i771_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY unary_minus_13_add_3_23 (.CI(n12446), .I0(GND_net), .I1(n4_adj_576), 
            .CO(n12447));
    SB_LUT4 i9949_3_lut (.I0(n299), .I1(n1332), .I2(n1333), .I3(GND_net), 
            .O(n11925));
    defparam i9949_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 unary_minus_13_add_3_7_lut (.I0(GND_net), .I1(GND_net), .I2(n20_adj_592), 
            .I3(n12430), .O(pwm_setpoint_23__N_171[5])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_104 (.I0(n3212), .I1(n14292), .I2(n3279), .I3(n3237), 
            .O(n14294));
    defparam i1_4_lut_adj_104.LUT_INIT = 16'heefc;
    SB_CARRY unary_minus_13_add_3_14 (.CI(n12437), .I0(GND_net), .I1(n13_adj_585), 
            .CO(n12438));
    SB_DFF duty_i22 (.Q(duty[22]), .C(CLK_N), .D(duty_23__N_51[22]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_4_lut_adj_105 (.I0(n1325), .I1(n1326), .I2(n1327), .I3(n1328), 
            .O(n14414));
    defparam i1_4_lut_adj_105.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_106 (.I0(n1329), .I1(n11925), .I2(n1330), .I3(n1331), 
            .O(n13720));
    defparam i1_4_lut_adj_106.LUT_INIT = 16'ha080;
    SB_LUT4 i12826_4_lut (.I0(n13720), .I1(n1323), .I2(n1324), .I3(n14414), 
            .O(n1356));
    defparam i12826_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i838_3_lut (.I0(n1227), .I1(n1294), 
            .I2(n1257), .I3(GND_net), .O(n1326));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i838_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9947_3_lut (.I0(n300), .I1(n1432), .I2(n1433), .I3(GND_net), 
            .O(n11923));
    defparam i9947_3_lut.LUT_INIT = 16'hc8c8;
    SB_CARRY blink_counter_663_add_4_24 (.CI(n13091), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n13092));
    SB_LUT4 i1_2_lut_adj_107 (.I0(n1427), .I1(n1428), .I2(GND_net), .I3(GND_net), 
            .O(n14484));
    defparam i1_2_lut_adj_107.LUT_INIT = 16'heeee;
    SB_LUT4 encoder0_position_31__I_0_add_2039_3_lut (.I0(GND_net), .I1(n3033), 
            .I2(VCC_net), .I3(n12864), .O(n3100)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_108 (.I0(n1429), .I1(n11923), .I2(n1430), .I3(n1431), 
            .O(n13739));
    defparam i1_4_lut_adj_108.LUT_INIT = 16'ha080;
    SB_LUT4 encoder0_position_31__I_0_add_1503_14_lut (.I0(GND_net), .I1(n2222), 
            .I2(VCC_net), .I3(n12687), .O(n2289)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_109 (.I0(n3211), .I1(n14294), .I2(n3278), .I3(n3237), 
            .O(n14296));
    defparam i1_4_lut_adj_109.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_110 (.I0(n1424), .I1(n1425), .I2(n1426), .I3(n14484), 
            .O(n14490));
    defparam i1_4_lut_adj_110.LUT_INIT = 16'hfffe;
    SB_LUT4 i12845_4_lut (.I0(n1423), .I1(n1422), .I2(n14490), .I3(n13739), 
            .O(n1455));
    defparam i12845_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 blink_counter_663_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n13090), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_111 (.I0(n3210), .I1(n14296), .I2(n3277), .I3(n3237), 
            .O(n14298));
    defparam i1_4_lut_adj_111.LUT_INIT = 16'heefc;
    SB_CARRY blink_counter_663_add_4_23 (.CI(n13090), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n13091));
    SB_CARRY encoder0_position_31__I_0_add_2039_3 (.CI(n12864), .I0(n3033), 
            .I1(VCC_net), .CO(n12865));
    SB_CARRY encoder0_position_31__I_0_add_1503_14 (.CI(n12687), .I0(n2222), 
            .I1(VCC_net), .CO(n12688));
    SB_LUT4 encoder0_position_31__I_0_i905_3_lut (.I0(n1326), .I1(n1393), 
            .I2(n1356), .I3(GND_net), .O(n1425));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i905_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_112 (.I0(n1528), .I1(n1527), .I2(GND_net), .I3(GND_net), 
            .O(n14420));
    defparam i1_2_lut_adj_112.LUT_INIT = 16'heeee;
    SB_LUT4 blink_counter_663_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_683), .I3(n13089), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_add_3_2_lut (.I0(GND_net), .I1(GND_net), .I2(n25_adj_597), 
            .I3(VCC_net), .O(pwm_setpoint_23__N_171[0])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_7 (.CI(n12477), .I0(encoder0_position_target[5]), 
            .I1(n20_adj_556), .CO(n12478));
    SB_LUT4 encoder0_position_31__I_0_add_2039_2_lut (.I0(GND_net), .I1(n316), 
            .I2(GND_net), .I3(VCC_net), .O(n3101)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2039_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_13_lut (.I0(GND_net), .I1(n2223), 
            .I2(VCC_net), .I3(n12686), .O(n2290)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_6_lut (.I0(GND_net), 
            .I1(encoder0_position_target[4]), .I2(n21_adj_555), .I3(n12476), 
            .O(duty_23__N_51[4])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_113 (.I0(n3209), .I1(n14298), .I2(n3276), .I3(n3237), 
            .O(n14300));
    defparam i1_4_lut_adj_113.LUT_INIT = 16'heefc;
    SB_DFF duty_i21 (.Q(duty[21]), .C(CLK_N), .D(duty_23__N_51[21]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 unary_minus_13_add_3_13_lut (.I0(GND_net), .I1(GND_net), .I2(n14_adj_586), 
            .I3(n12436), .O(pwm_setpoint_23__N_171[11])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10020_4_lut (.I0(n301), .I1(n1531), .I2(n1532), .I3(n1533), 
            .O(n11997));
    defparam i10020_4_lut.LUT_INIT = 16'hfcec;
    SB_CARRY unary_minus_13_add_3_7 (.CI(n12430), .I0(GND_net), .I1(n20_adj_592), 
            .CO(n12431));
    SB_DFF duty_i20 (.Q(duty[20]), .C(CLK_N), .D(duty_23__N_51[20]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 add_305_5_lut (.I0(GND_net), .I1(encoder0_position_target[3]), 
            .I2(direction), .I3(n12452), .O(n1638)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i19 (.Q(duty[19]), .C(CLK_N), .D(duty_23__N_51[19]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_4_lut_adj_114 (.I0(n3208), .I1(n14300), .I2(n3275), .I3(n3237), 
            .O(n14302));
    defparam i1_4_lut_adj_114.LUT_INIT = 16'heefc;
    SB_CARRY blink_counter_663_add_4_22 (.CI(n13089), .I0(GND_net), .I1(n6_adj_683), 
            .CO(n13090));
    SB_LUT4 blink_counter_663_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7_adj_684), .I3(n13088), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_2039_2 (.CI(VCC_net), .I0(n316), 
            .I1(GND_net), .CO(n12864));
    SB_LUT4 encoder0_position_31__I_0_add_1972_29_lut (.I0(n15384), .I1(n2907), 
            .I2(VCC_net), .I3(n12863), .O(n3006)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_29_lut.LUT_INIT = 16'h8228;
    SB_CARRY encoder0_position_31__I_0_add_1503_13 (.CI(n12686), .I0(n2223), 
            .I1(VCC_net), .CO(n12687));
    SB_CARRY blink_counter_663_add_4_21 (.CI(n13088), .I0(GND_net), .I1(n7_adj_684), 
            .CO(n13089));
    SB_LUT4 encoder0_position_31__I_0_add_1503_12_lut (.I0(GND_net), .I1(n2224), 
            .I2(VCC_net), .I3(n12685), .O(n2291)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_115 (.I0(n3207), .I1(n14302), .I2(n3274), .I3(n3237), 
            .O(n14304));
    defparam i1_4_lut_adj_115.LUT_INIT = 16'heefc;
    SB_LUT4 blink_counter_663_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_685), .I3(n13087), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_28_lut (.I0(GND_net), .I1(n2908), 
            .I2(VCC_net), .I3(n12862), .O(n2975)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_116 (.I0(n3206), .I1(n14304), .I2(n3273), .I3(n3237), 
            .O(n14306));
    defparam i1_4_lut_adj_116.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_117 (.I0(n3205), .I1(n14306), .I2(n3272), .I3(n3237), 
            .O(n14308));
    defparam i1_4_lut_adj_117.LUT_INIT = 16'heefc;
    SB_LUT4 i1_4_lut_adj_118 (.I0(n1524), .I1(n1525), .I2(n1526), .I3(n14420), 
            .O(n14426));
    defparam i1_4_lut_adj_118.LUT_INIT = 16'hfffe;
    SB_LUT4 i12763_4_lut (.I0(n14308), .I1(n3204), .I2(n3271), .I3(n3237), 
            .O(n12051));
    defparam i12763_4_lut.LUT_INIT = 16'h1105;
    SB_LUT4 i12755_1_lut (.I0(n3237), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15485));
    defparam i12755_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9966_3_lut (.I0(n318), .I1(n3232), .I2(n3233), .I3(GND_net), 
            .O(n11943));
    defparam i9966_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_119 (.I0(n1529), .I1(n14426), .I2(n11997), .I3(n1530), 
            .O(n14428));
    defparam i1_4_lut_adj_119.LUT_INIT = 16'heccc;
    SB_CARRY blink_counter_663_add_4_20 (.CI(n13087), .I0(GND_net), .I1(n8_adj_685), 
            .CO(n13088));
    SB_LUT4 i1_4_lut_adj_120 (.I0(n3229), .I1(n11943), .I2(n3230), .I3(n3231), 
            .O(n13875));
    defparam i1_4_lut_adj_120.LUT_INIT = 16'ha080;
    SB_LUT4 i12864_4_lut (.I0(n1522), .I1(n1521), .I2(n14428), .I3(n1523), 
            .O(n1554));
    defparam i12864_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 blink_counter_663_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9_adj_686), .I3(n13086), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_28 (.CI(n12862), .I0(n2908), 
            .I1(VCC_net), .CO(n12863));
    SB_CARRY encoder0_position_31__I_0_add_1503_12 (.CI(n12685), .I0(n2224), 
            .I1(VCC_net), .CO(n12686));
    SB_LUT4 encoder0_position_31__I_0_i972_3_lut (.I0(n1425), .I1(n1492), 
            .I2(n1455), .I3(GND_net), .O(n1524));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i972_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1972_27_lut (.I0(GND_net), .I1(n2909), 
            .I2(VCC_net), .I3(n12861), .O(n2976)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_11_lut (.I0(GND_net), .I1(n2225), 
            .I2(VCC_net), .I3(n12684), .O(n2292)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_4 (.CI(n12427), .I0(GND_net), .I1(n23_adj_595), 
            .CO(n12428));
    SB_LUT4 unary_minus_13_add_3_22_lut (.I0(GND_net), .I1(GND_net), .I2(n5_adj_577), 
            .I3(n12445), .O(pwm_setpoint_23__N_171[20])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9943_3_lut (.I0(n302), .I1(n1632_adj_612), .I2(n1633_adj_613), 
            .I3(GND_net), .O(n11919));
    defparam i9943_3_lut.LUT_INIT = 16'hc8c8;
    SB_CARRY add_305_13 (.CI(n12460), .I0(encoder0_position_target[11]), 
            .I1(direction), .CO(n12461));
    SB_LUT4 i1_4_lut_adj_121 (.I0(n3226), .I1(n3224), .I2(n3222), .I3(n3227), 
            .O(n14768));
    defparam i1_4_lut_adj_121.LUT_INIT = 16'hfffe;
    SB_DFF duty_i18 (.Q(duty[18]), .C(CLK_N), .D(duty_23__N_51[18]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_20 (.CI(n12467), .I0(encoder0_position_target[18]), 
            .I1(direction), .CO(n12468));
    SB_LUT4 add_305_19_lut (.I0(GND_net), .I1(encoder0_position_target[17]), 
            .I2(direction), .I3(n12466), .O(n1624)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_19_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i17 (.Q(duty[17]), .C(CLK_N), .D(duty_23__N_51[17]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_19 (.CI(n12466), .I0(encoder0_position_target[17]), 
            .I1(direction), .CO(n12467));
    SB_DFF duty_i16 (.Q(duty[16]), .C(CLK_N), .D(duty_23__N_51[16]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_4_lut_adj_122 (.I0(n1625_adj_605), .I1(n1628_adj_608), .I2(n1626_adj_606), 
            .I3(n1627_adj_607), .O(n14502));
    defparam i1_4_lut_adj_122.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_663_add_4_19 (.CI(n13086), .I0(GND_net), .I1(n9_adj_686), 
            .CO(n13087));
    SB_LUT4 blink_counter_663_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_687), .I3(n13085), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_123 (.I0(n1629_adj_609), .I1(n11919), .I2(n1630_adj_610), 
            .I3(n1631_adj_611), .O(n13748));
    defparam i1_4_lut_adj_123.LUT_INIT = 16'ha080;
    SB_LUT4 i1_4_lut_adj_124 (.I0(n1623_adj_603), .I1(n13748), .I2(n1624_adj_604), 
            .I3(n14502), .O(n14508));
    defparam i1_4_lut_adj_124.LUT_INIT = 16'hfffe;
    SB_LUT4 i12884_4_lut (.I0(n1621_adj_601), .I1(n1620_adj_600), .I2(n1622_adj_602), 
            .I3(n14508), .O(n1653));
    defparam i12884_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_3_lut_adj_125 (.I0(n14768), .I1(n3223), .I2(n3228), .I3(GND_net), 
            .O(n14770));
    defparam i1_3_lut_adj_125.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_i1039_3_lut (.I0(n1524), .I1(n1591), 
            .I2(n1554), .I3(GND_net), .O(n1623_adj_603));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1039_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_126 (.I0(n3214), .I1(n3215), .I2(n3217), .I3(n14770), 
            .O(n14776));
    defparam i1_4_lut_adj_126.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_663_add_4_18 (.CI(n13085), .I0(GND_net), .I1(n10_adj_687), 
            .CO(n13086));
    SB_CARRY encoder0_position_31__I_0_add_1972_27 (.CI(n12861), .I0(n2909), 
            .I1(VCC_net), .CO(n12862));
    SB_CARRY encoder0_position_31__I_0_add_1503_11 (.CI(n12684), .I0(n2225), 
            .I1(VCC_net), .CO(n12685));
    SB_LUT4 i1_4_lut_adj_127 (.I0(n3210), .I1(n3211), .I2(n3213), .I3(n14776), 
            .O(n14782));
    defparam i1_4_lut_adj_127.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_663_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11_adj_688), .I3(n13084), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_26_lut (.I0(GND_net), .I1(n2910), 
            .I2(VCC_net), .I3(n12860), .O(n2977)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_10_lut (.I0(GND_net), .I1(n2226), 
            .I2(VCC_net), .I3(n12683), .O(n2293)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_128 (.I0(n3218), .I1(n3219), .I2(n3220), .I3(GND_net), 
            .O(n14798));
    defparam i1_3_lut_adj_128.LUT_INIT = 16'hfefe;
    SB_CARRY blink_counter_663_add_4_17 (.CI(n13084), .I0(GND_net), .I1(n11_adj_688), 
            .CO(n13085));
    SB_CARRY encoder0_position_31__I_0_add_1972_26 (.CI(n12860), .I0(n2910), 
            .I1(VCC_net), .CO(n12861));
    SB_LUT4 i1_4_lut_adj_129 (.I0(n13875), .I1(n3205), .I2(n3221), .I3(n3225), 
            .O(n14025));
    defparam i1_4_lut_adj_129.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_130 (.I0(n3207), .I1(n3208), .I2(n3209), .I3(n14782), 
            .O(n14788));
    defparam i1_4_lut_adj_130.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_131 (.I0(n3204), .I1(n3212), .I2(n3216), .I3(n14798), 
            .O(n14804));
    defparam i1_4_lut_adj_131.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_663_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12_adj_689), .I3(n13083), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12759_4_lut (.I0(n3206), .I1(n14804), .I2(n14788), .I3(n14025), 
            .O(n3237));
    defparam i12759_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_3_lut_adj_132 (.I0(n1728), .I1(n1726), .I2(n1727), .I3(GND_net), 
            .O(n14244));
    defparam i1_3_lut_adj_132.LUT_INIT = 16'hfefe;
    SB_LUT4 i10014_4_lut (.I0(n303), .I1(n1731), .I2(n1732), .I3(n1733), 
            .O(n11991));
    defparam i10014_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_4_lut_adj_133 (.I0(n1723), .I1(n1724), .I2(n14244), .I3(n1725), 
            .O(n14250));
    defparam i1_4_lut_adj_133.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_663_add_4_16 (.CI(n13083), .I0(GND_net), .I1(n12_adj_689), 
            .CO(n13084));
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_6 (.CI(n12476), .I0(encoder0_position_target[4]), 
            .I1(n21_adj_555), .CO(n12477));
    SB_LUT4 encoder0_position_31__I_0_add_1972_25_lut (.I0(GND_net), .I1(n2911), 
            .I2(VCC_net), .I3(n12859), .O(n2978)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_10 (.CI(n12683), .I0(n2226), 
            .I1(VCC_net), .CO(n12684));
    SB_DFF duty_i15 (.Q(duty[15]), .C(CLK_N), .D(duty_23__N_51[15]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 unary_minus_13_add_3_5_lut (.I0(GND_net), .I1(GND_net), .I2(n22_adj_594), 
            .I3(n12428), .O(pwm_setpoint_23__N_171[3])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_22 (.CI(n12445), .I0(GND_net), .I1(n5_adj_577), 
            .CO(n12446));
    SB_DFF duty_i14 (.Q(duty[14]), .C(CLK_N), .D(duty_23__N_51[14]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY unary_minus_13_add_3_2 (.CI(VCC_net), .I0(GND_net), .I1(n25_adj_597), 
            .CO(n12426));
    SB_DFF duty_i13 (.Q(duty[13]), .C(CLK_N), .D(duty_23__N_51[13]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i12721_1_lut (.I0(n3138), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15451));
    defparam i12721_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i8_1_lut (.I0(encoder0_position_scaled[7]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n18_adj_558));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12688_1_lut (.I0(n3039), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15418));
    defparam i12688_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_134 (.I0(n1729), .I1(n1730), .I2(GND_net), .I3(GND_net), 
            .O(n14514));
    defparam i1_2_lut_adj_134.LUT_INIT = 16'h8888;
    SB_LUT4 blink_counter_663_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13_adj_690), .I3(n13082), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i9_1_lut (.I0(encoder0_position_scaled[8]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n17_adj_559));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_135 (.I0(n14514), .I1(n1722), .I2(n14250), .I3(n11991), 
            .O(n14254));
    defparam i1_4_lut_adj_135.LUT_INIT = 16'hfefc;
    SB_CARRY encoder0_position_31__I_0_add_1972_25 (.CI(n12859), .I0(n2911), 
            .I1(VCC_net), .CO(n12860));
    SB_LUT4 i12654_1_lut (.I0(n2940), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15384));
    defparam i12654_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1503_9_lut (.I0(GND_net), .I1(n2227), 
            .I2(VCC_net), .I3(n12682), .O(n2294)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12622_1_lut (.I0(n2841), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15352));
    defparam i12622_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12904_4_lut (.I0(n1720), .I1(n1719), .I2(n1721), .I3(n14254), 
            .O(n1752));
    defparam i12904_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_add_1972_24_lut (.I0(GND_net), .I1(n2912), 
            .I2(VCC_net), .I3(n12858), .O(n2979)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_12_lut (.I0(GND_net), .I1(encoder0_position_target[10]), 
            .I2(direction), .I3(n12459), .O(n1631)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12900_1_lut (.I0(n1752), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15630));
    defparam i12900_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12592_1_lut (.I0(n2742), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15322));
    defparam i12592_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_i1106_3_lut (.I0(n1623_adj_603), .I1(n1690), 
            .I2(n1653), .I3(GND_net), .O(n1722));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1106_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_136 (.I0(n1825), .I1(n1826), .I2(n1827), .I3(n1828), 
            .O(n14520));
    defparam i1_4_lut_adj_136.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_663_add_4_15 (.CI(n13082), .I0(GND_net), .I1(n13_adj_690), 
            .CO(n13083));
    SB_CARRY encoder0_position_31__I_0_add_1972_24 (.CI(n12858), .I0(n2912), 
            .I1(VCC_net), .CO(n12859));
    SB_CARRY encoder0_position_31__I_0_add_1503_9 (.CI(n12682), .I0(n2227), 
            .I1(VCC_net), .CO(n12683));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_5_lut (.I0(GND_net), 
            .I1(encoder0_position_target[3]), .I2(n22_adj_554), .I3(n12475), 
            .O(duty_23__N_51[3])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12562_1_lut (.I0(n2643), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15292));
    defparam i12562_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10012_4_lut (.I0(n304), .I1(n1831), .I2(n1832), .I3(n1833), 
            .O(n11989));
    defparam i10012_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_3_lut_adj_137 (.I0(n1823), .I1(n1824), .I2(n14520), .I3(GND_net), 
            .O(n14524));
    defparam i1_3_lut_adj_137.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_138 (.I0(n1829), .I1(n14524), .I2(n11989), .I3(n1830), 
            .O(n14526));
    defparam i1_4_lut_adj_138.LUT_INIT = 16'heccc;
    SB_LUT4 i1_3_lut_adj_139 (.I0(n1820), .I1(n1821), .I2(n1822), .I3(GND_net), 
            .O(n14534));
    defparam i1_3_lut_adj_139.LUT_INIT = 16'hfefe;
    SB_LUT4 blink_counter_663_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_691), .I3(n13081), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_23_lut (.I0(GND_net), .I1(n2913), 
            .I2(VCC_net), .I3(n12857), .O(n2980)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_8_lut (.I0(GND_net), .I1(n2228), 
            .I2(VCC_net), .I3(n12681), .O(n2295)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12925_4_lut (.I0(n1819), .I1(n14534), .I2(n14526), .I3(n1818), 
            .O(n1851));
    defparam i12925_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY blink_counter_663_add_4_14 (.CI(n13081), .I0(GND_net), .I1(n14_adj_691), 
            .CO(n13082));
    SB_LUT4 encoder0_position_31__I_0_i1173_3_lut (.I0(n1722), .I1(n1789), 
            .I2(n1752), .I3(GND_net), .O(n1821));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1173_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 blink_counter_663_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15_adj_692), .I3(n13080), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_5 (.CI(n12475), .I0(encoder0_position_target[3]), 
            .I1(n22_adj_554), .CO(n12476));
    SB_CARRY encoder0_position_31__I_0_add_1972_23 (.CI(n12857), .I0(n2913), 
            .I1(VCC_net), .CO(n12858));
    SB_LUT4 i1_3_lut_adj_140 (.I0(n1924), .I1(n1926), .I2(n1927), .I3(GND_net), 
            .O(n14438));
    defparam i1_3_lut_adj_140.LUT_INIT = 16'hfefe;
    SB_DFF duty_i12 (.Q(duty[12]), .C(CLK_N), .D(duty_23__N_51[12]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_12 (.CI(n12459), .I0(encoder0_position_target[10]), 
            .I1(direction), .CO(n12460));
    SB_LUT4 add_305_18_lut (.I0(GND_net), .I1(encoder0_position_target[16]), 
            .I2(direction), .I3(n12465), .O(n1625)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_18_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i11 (.Q(duty[11]), .C(CLK_N), .D(duty_23__N_51[11]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_18 (.CI(n12465), .I0(encoder0_position_target[16]), 
            .I1(direction), .CO(n12466));
    SB_DFF duty_i10 (.Q(duty[10]), .C(CLK_N), .D(duty_23__N_51[10]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY blink_counter_663_add_4_13 (.CI(n13080), .I0(GND_net), .I1(n15_adj_692), 
            .CO(n13081));
    SB_LUT4 encoder0_position_31__I_0_add_1972_22_lut (.I0(GND_net), .I1(n2914), 
            .I2(VCC_net), .I3(n12856), .O(n2981)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_141 (.I0(n1923), .I1(n1925), .I2(n1928), .I3(GND_net), 
            .O(n14440));
    defparam i1_3_lut_adj_141.LUT_INIT = 16'hfefe;
    SB_LUT4 blink_counter_663_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16_adj_693), .I3(n13079), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i10_1_lut (.I0(encoder0_position_scaled[9]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n16_adj_560));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i13100_1_lut (.I0(n2544), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15830));
    defparam i13100_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_12 (.CI(n13079), .I0(GND_net), .I1(n16_adj_693), 
            .CO(n13080));
    SB_CARRY encoder0_position_31__I_0_add_1972_22 (.CI(n12856), .I0(n2914), 
            .I1(VCC_net), .CO(n12857));
    SB_CARRY encoder0_position_31__I_0_add_1503_8 (.CI(n12681), .I0(n2228), 
            .I1(VCC_net), .CO(n12682));
    SB_LUT4 i13072_1_lut (.I0(n2445), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15802));
    defparam i13072_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i11_1_lut (.I0(encoder0_position_scaled[10]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n15_adj_561));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17_adj_694), .I3(n13078), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_21_lut (.I0(GND_net), .I1(n2915), 
            .I2(VCC_net), .I3(n12855), .O(n2982)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_7_lut (.I0(GND_net), .I1(n2229), 
            .I2(GND_net), .I3(n12680), .O(n2296)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13045_1_lut (.I0(n2346), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15775));
    defparam i13045_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i12_1_lut (.I0(encoder0_position_scaled[11]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n14_adj_562));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_1972_21 (.CI(n12855), .I0(n2915), 
            .I1(VCC_net), .CO(n12856));
    SB_CARRY encoder0_position_31__I_0_add_1503_7 (.CI(n12680), .I0(n2229), 
            .I1(GND_net), .CO(n12681));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_4_lut (.I0(GND_net), 
            .I1(encoder0_position_target[2]), .I2(n23_adj_553), .I3(n12474), 
            .O(duty_23__N_51[2])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13018_1_lut (.I0(n2247), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15748));
    defparam i13018_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12992_1_lut (.I0(n2148), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15722));
    defparam i12992_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_305_11_lut (.I0(GND_net), .I1(encoder0_position_target[9]), 
            .I2(direction), .I3(n12458), .O(n1632)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10008_4_lut (.I0(n305), .I1(n1931), .I2(n1932), .I3(n1933), 
            .O(n11985));
    defparam i10008_4_lut.LUT_INIT = 16'hfcec;
    SB_DFF duty_i9 (.Q(duty[9]), .C(CLK_N), .D(duty_23__N_51[9]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_4 (.CI(n12474), .I0(encoder0_position_target[2]), 
            .I1(n23_adj_553), .CO(n12475));
    SB_CARRY add_305_5 (.CI(n12452), .I0(encoder0_position_target[3]), .I1(direction), 
            .CO(n12453));
    SB_DFF duty_i8 (.Q(duty[8]), .C(CLK_N), .D(duty_23__N_51[8]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY unary_minus_13_add_3_5 (.CI(n12428), .I0(GND_net), .I1(n22_adj_594), 
            .CO(n12429));
    SB_DFF duty_i7 (.Q(duty[7]), .C(CLK_N), .D(duty_23__N_51[7]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY blink_counter_663_add_4_11 (.CI(n13078), .I0(GND_net), .I1(n17_adj_694), 
            .CO(n13079));
    SB_LUT4 blink_counter_663_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18_adj_695), .I3(n13077), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_20_lut (.I0(GND_net), .I1(n2916), 
            .I2(VCC_net), .I3(n12854), .O(n2983)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_20 (.CI(n12854), .I0(n2916), 
            .I1(VCC_net), .CO(n12855));
    SB_LUT4 encoder0_position_31__I_0_add_1503_6_lut (.I0(GND_net), .I1(n2230), 
            .I2(GND_net), .I3(n12679), .O(n2297)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i13_1_lut (.I0(encoder0_position_scaled[12]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n13_adj_563));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12967_1_lut (.I0(n2049), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15697));
    defparam i12967_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_142 (.I0(n1921), .I1(n1922), .I2(n14440), .I3(n14438), 
            .O(n14446));
    defparam i1_4_lut_adj_142.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_663_add_4_10 (.CI(n13077), .I0(GND_net), .I1(n18_adj_695), 
            .CO(n13078));
    SB_LUT4 blink_counter_663_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19_adj_696), 
            .I3(n13076), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_6 (.CI(n12679), .I0(n2230), 
            .I1(GND_net), .CO(n12680));
    SB_LUT4 encoder0_position_31__I_0_add_1972_19_lut (.I0(GND_net), .I1(n2917), 
            .I2(VCC_net), .I3(n12853), .O(n2984)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12944_1_lut (.I0(n1950), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15674));
    defparam i12944_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12922_1_lut (.I0(n1851), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15652));
    defparam i12922_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i14_1_lut (.I0(encoder0_position_scaled[13]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n12_adj_564));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_9 (.CI(n13076), .I0(GND_net), .I1(n19_adj_696), 
            .CO(n13077));
    SB_CARRY encoder0_position_31__I_0_add_1972_19 (.CI(n12853), .I0(n2917), 
            .I1(VCC_net), .CO(n12854));
    SB_LUT4 i1_2_lut_adj_143 (.I0(n1929), .I1(n1930), .I2(GND_net), .I3(GND_net), 
            .O(n14530));
    defparam i1_2_lut_adj_143.LUT_INIT = 16'h8888;
    SB_LUT4 blink_counter_663_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20_adj_697), 
            .I3(n13075), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_144 (.I0(n14530), .I1(n1920), .I2(n14446), .I3(n11985), 
            .O(n14450));
    defparam i1_4_lut_adj_144.LUT_INIT = 16'hfefc;
    SB_CARRY blink_counter_663_add_4_8 (.CI(n13075), .I0(GND_net), .I1(n20_adj_697), 
            .CO(n13076));
    SB_LUT4 encoder0_position_31__I_0_add_1972_18_lut (.I0(GND_net), .I1(n2918), 
            .I2(VCC_net), .I3(n12852), .O(n2985)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_5_lut (.I0(GND_net), .I1(n2231), 
            .I2(VCC_net), .I3(n12678), .O(n2298)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_18 (.CI(n12852), .I0(n2918), 
            .I1(VCC_net), .CO(n12853));
    SB_CARRY encoder0_position_31__I_0_add_1503_5 (.CI(n12678), .I0(n2231), 
            .I1(VCC_net), .CO(n12679));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_3_lut (.I0(GND_net), 
            .I1(encoder0_position_target[1]), .I2(n24_adj_552), .I3(n12473), 
            .O(duty_23__N_51[1])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12947_4_lut (.I0(n1918), .I1(n1917), .I2(n1919), .I3(n14450), 
            .O(n1950));
    defparam i12947_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_305_11 (.CI(n12458), .I0(encoder0_position_target[9]), 
            .I1(direction), .CO(n12459));
    SB_DFF duty_i6 (.Q(duty[6]), .C(CLK_N), .D(duty_23__N_51[6]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 unary_minus_13_add_3_3_lut (.I0(GND_net), .I1(GND_net), .I2(n24_adj_596), 
            .I3(n12426), .O(pwm_setpoint_23__N_171[1])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i15_1_lut (.I0(encoder0_position_scaled[14]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n11_adj_565));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_3 (.CI(n12473), .I0(encoder0_position_target[1]), 
            .I1(n24_adj_552), .CO(n12474));
    SB_DFF duty_i5 (.Q(duty[5]), .C(CLK_N), .D(duty_23__N_51[5]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_2_lut (.I0(GND_net), 
            .I1(encoder0_position_target[0]), .I2(n25_adj_551), .I3(VCC_net), 
            .O(duty_23__N_51[0])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i4 (.Q(duty[4]), .C(CLK_N), .D(duty_23__N_51[4]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_i1240_3_lut (.I0(n1821), .I1(n1888), 
            .I2(n1851), .I3(GND_net), .O(n1920));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1240_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12881_1_lut (.I0(n1653), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15611));
    defparam i12881_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12861_1_lut (.I0(n1554), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15591));
    defparam i12861_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21_adj_698), 
            .I3(n13074), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_17_lut (.I0(GND_net), .I1(n2919), 
            .I2(VCC_net), .I3(n12851), .O(n2986)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_4_lut (.I0(GND_net), .I1(n2232), 
            .I2(GND_net), .I3(n12677), .O(n2299)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12842_1_lut (.I0(n1455), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15572));
    defparam i12842_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12823_1_lut (.I0(n1356), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15553));
    defparam i12823_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_7 (.CI(n13074), .I0(GND_net), .I1(n21_adj_698), 
            .CO(n13075));
    SB_LUT4 i1_4_lut_adj_145 (.I0(n2025), .I1(n2026), .I2(n2028), .I3(n2027), 
            .O(n14544));
    defparam i1_4_lut_adj_145.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_1972_17 (.CI(n12851), .I0(n2919), 
            .I1(VCC_net), .CO(n12852));
    SB_LUT4 blink_counter_663_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22_adj_699), 
            .I3(n13073), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10004_4_lut (.I0(n306), .I1(n2031), .I2(n2032), .I3(n2033), 
            .O(n11981));
    defparam i10004_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i12807_1_lut (.I0(n1257), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15537));
    defparam i12807_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i16_1_lut (.I0(encoder0_position_scaled[15]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n10_adj_566));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_146 (.I0(n2022), .I1(n2023), .I2(n2024), .I3(n14544), 
            .O(n14550));
    defparam i1_4_lut_adj_146.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i17_1_lut (.I0(encoder0_position_scaled[16]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n9_adj_567));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12792_1_lut (.I0(n1158), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15522));
    defparam i12792_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_6 (.CI(n13073), .I0(GND_net), .I1(n22_adj_699), 
            .CO(n13074));
    SB_LUT4 i12778_1_lut (.I0(n1059), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n15508));
    defparam i12778_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23_adj_700), 
            .I3(n13072), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_16_lut (.I0(GND_net), .I1(n2920), 
            .I2(VCC_net), .I3(n12850), .O(n2987)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_4 (.CI(n12677), .I0(n2232), 
            .I1(GND_net), .CO(n12678));
    SB_LUT4 i1_4_lut_adj_147 (.I0(n14550), .I1(n2029), .I2(n11981), .I3(n2030), 
            .O(n14552));
    defparam i1_4_lut_adj_147.LUT_INIT = 16'heaaa;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i1_1_lut (.I0(encoder0_position[0]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n33_adj_651));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_1972_16 (.CI(n12850), .I0(n2920), 
            .I1(VCC_net), .CO(n12851));
    SB_LUT4 add_305_4_lut (.I0(GND_net), .I1(encoder0_position_target[2]), 
            .I2(direction), .I3(n12451), .O(n1639)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_3_lut (.I0(GND_net), .I1(n2233), 
            .I2(VCC_net), .I3(n12676), .O(n2300)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_10_lut (.I0(GND_net), .I1(encoder0_position_target[8]), 
            .I2(direction), .I3(n12457), .O(n1633)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_10_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i3 (.Q(duty[3]), .C(CLK_N), .D(duty_23__N_51[3]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_4 (.CI(n12451), .I0(encoder0_position_target[2]), .I1(direction), 
            .CO(n12452));
    SB_CARRY encoder0_position_31__I_0_add_699_6 (.CI(n12517), .I0(n1030), 
            .I1(GND_net), .CO(n12518));
    SB_LUT4 encoder0_position_31__I_0_add_699_5_lut (.I0(GND_net), .I1(n1031), 
            .I2(VCC_net), .I3(n12516), .O(n1098)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF duty_i2 (.Q(duty[2]), .C(CLK_N), .D(duty_23__N_51[2]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_699_5 (.CI(n12516), .I0(n1031), 
            .I1(VCC_net), .CO(n12517));
    SB_DFF duty_i1 (.Q(duty[1]), .C(CLK_N), .D(duty_23__N_51[1]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i18_1_lut (.I0(encoder0_position_scaled[17]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n8_adj_568));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i19_1_lut (.I0(encoder0_position_scaled[18]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n7_adj_569));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1972_15_lut (.I0(GND_net), .I1(n2921), 
            .I2(VCC_net), .I3(n12849), .O(n2988)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i2_1_lut (.I0(encoder0_position[1]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n32_adj_650));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i3_1_lut (.I0(encoder0_position[2]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n31_adj_649));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_148 (.I0(n2019), .I1(n2020), .I2(n2021), .I3(n14552), 
            .O(n14558));
    defparam i1_4_lut_adj_148.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i4_1_lut (.I0(encoder0_position[3]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n30_adj_648));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i20_1_lut (.I0(encoder0_position_scaled[19]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n6_adj_570));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i5_1_lut (.I0(encoder0_position[4]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n29_adj_647));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_5 (.CI(n13072), .I0(GND_net), .I1(n23_adj_700), 
            .CO(n13073));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i6_1_lut (.I0(encoder0_position[5]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n28_adj_646));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24_adj_701), 
            .I3(n13071), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_15 (.CI(n12849), .I0(n2921), 
            .I1(VCC_net), .CO(n12850));
    SB_CARRY encoder0_position_31__I_0_add_1503_3 (.CI(n12676), .I0(n2233), 
            .I1(VCC_net), .CO(n12677));
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i21_1_lut (.I0(encoder0_position_scaled[20]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n5_adj_571));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i7_1_lut (.I0(encoder0_position[6]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n27_adj_645));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1972_14_lut (.I0(GND_net), .I1(n2922), 
            .I2(VCC_net), .I3(n12848), .O(n2989)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1503_2_lut (.I0(GND_net), .I1(n308), 
            .I2(GND_net), .I3(VCC_net), .O(n2301)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1503_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_699_4_lut (.I0(GND_net), .I1(n1032), 
            .I2(GND_net), .I3(n12515), .O(n1099)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i8_1_lut (.I0(encoder0_position[7]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n26_adj_644));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_699_4 (.CI(n12515), .I0(n1032), 
            .I1(GND_net), .CO(n12516));
    SB_CARRY blink_counter_663_add_4_4 (.CI(n13071), .I0(GND_net), .I1(n24_adj_701), 
            .CO(n13072));
    SB_CARRY encoder0_position_31__I_0_add_1972_14 (.CI(n12848), .I0(n2922), 
            .I1(VCC_net), .CO(n12849));
    SB_DFF encoder0_position_scaled_i23 (.Q(encoder0_position_scaled[23]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[23]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_699_3_lut (.I0(GND_net), .I1(n1033), 
            .I2(VCC_net), .I3(n12514), .O(n1100)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i9_1_lut (.I0(encoder0_position[8]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n25_adj_643));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_699_3 (.CI(n12514), .I0(n1033), 
            .I1(VCC_net), .CO(n12515));
    SB_DFF encoder0_position_scaled_i22 (.Q(encoder0_position_scaled[22]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[22]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_699_2_lut (.I0(GND_net), .I1(n296), 
            .I2(GND_net), .I3(VCC_net), .O(n1101)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_699_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i21 (.Q(encoder0_position_scaled[21]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[21]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i10_1_lut (.I0(encoder0_position[9]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n24_adj_642));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i22_1_lut (.I0(encoder0_position_scaled[21]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n4_adj_572));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25_adj_702), 
            .I3(n13070), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_13_lut (.I0(GND_net), .I1(n2923), 
            .I2(VCC_net), .I3(n12847), .O(n2990)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1503_2 (.CI(VCC_net), .I0(n308), 
            .I1(GND_net), .CO(n12676));
    SB_CARRY blink_counter_663_add_4_3 (.CI(n13070), .I0(GND_net), .I1(n25_adj_702), 
            .CO(n13071));
    SB_CARRY encoder0_position_31__I_0_add_1972_13 (.CI(n12847), .I0(n2923), 
            .I1(VCC_net), .CO(n12848));
    SB_CARRY encoder0_position_31__I_0_add_699_2 (.CI(VCC_net), .I0(n296), 
            .I1(GND_net), .CO(n12514));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i11_1_lut (.I0(encoder0_position[10]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n23_adj_641));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 blink_counter_663_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26_adj_703), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_663_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_21_lut (.I0(n15722), .I1(n2115), 
            .I2(VCC_net), .I3(n12675), .O(n2214)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_21_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i23_1_lut (.I0(encoder0_position_scaled[22]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n3_adj_573));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1436_20_lut (.I0(GND_net), .I1(n2116), 
            .I2(VCC_net), .I3(n12674), .O(n2183)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i12_1_lut (.I0(encoder0_position[11]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n22_adj_640));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i24_1_lut (.I0(encoder0_position_scaled[23]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n2_adj_574));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i13_1_lut (.I0(encoder0_position[12]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n21_adj_639));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY blink_counter_663_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26_adj_703), 
            .CO(n13070));
    SB_LUT4 encoder0_position_31__I_0_add_1972_12_lut (.I0(GND_net), .I1(n2924), 
            .I2(VCC_net), .I3(n12846), .O(n2991)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_20 (.CI(n12674), .I0(n2116), 
            .I1(VCC_net), .CO(n12675));
    SB_LUT4 sweep_counter_660_661_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[17]), .I3(n13069), .O(n78)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_632_9_lut (.I0(n960), .I1(n927), 
            .I2(VCC_net), .I3(n12513), .O(n1026)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_9_lut.LUT_INIT = 16'h8228;
    SB_DFF encoder0_position_scaled_i20 (.Q(encoder0_position_scaled[20]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[20]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_8_lut (.I0(GND_net), .I1(n928), 
            .I2(VCC_net), .I3(n12512), .O(n995)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_632_8 (.CI(n12512), .I0(n928), 
            .I1(VCC_net), .CO(n12513));
    SB_DFF encoder0_position_scaled_i19 (.Q(encoder0_position_scaled[19]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[19]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_7_lut (.I0(GND_net), .I1(n929), 
            .I2(GND_net), .I3(n12511), .O(n996)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i18 (.Q(encoder0_position_scaled[18]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[18]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i14_1_lut (.I0(encoder0_position[13]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n20_adj_638));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i15_1_lut (.I0(encoder0_position[14]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n19_adj_637));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i16_1_lut (.I0(encoder0_position[15]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n18_adj_636));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[16]), .I3(n13068), .O(n79)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i28_3_lut (.I0(encoder0_position[27]), 
            .I1(n6), .I2(encoder0_position[31]), .I3(GND_net), .O(n39));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_1972_12 (.CI(n12846), .I0(n2924), 
            .I1(VCC_net), .CO(n12847));
    SB_LUT4 encoder0_position_31__I_0_add_1436_19_lut (.I0(GND_net), .I1(n2117), 
            .I2(VCC_net), .I3(n12673), .O(n2184)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i17_1_lut (.I0(encoder0_position[16]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n17_adj_635));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i18_1_lut (.I0(encoder0_position[17]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n16_adj_634));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i19_1_lut (.I0(encoder0_position[18]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n15_adj_633));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sweep_counter_660_661_add_4_18 (.CI(n13068), .I0(GND_net), 
            .I1(sweep_counter[16]), .CO(n13069));
    SB_LUT4 sweep_counter_660_661_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[15]), .I3(n13067), .O(n80)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i20_1_lut (.I0(encoder0_position[19]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n14_adj_632));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1972_11_lut (.I0(GND_net), .I1(n2925), 
            .I2(VCC_net), .I3(n12845), .O(n2992)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_17 (.CI(n13067), .I0(GND_net), 
            .I1(sweep_counter[15]), .CO(n13068));
    SB_CARRY encoder0_position_31__I_0_add_1972_11 (.CI(n12845), .I0(n2925), 
            .I1(VCC_net), .CO(n12846));
    SB_LUT4 encoder0_position_31__I_0_add_1972_10_lut (.I0(GND_net), .I1(n2926), 
            .I2(VCC_net), .I3(n12844), .O(n2993)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i21_1_lut (.I0(encoder0_position[20]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n13_adj_631));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i22_1_lut (.I0(encoder0_position[21]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n12_adj_630));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[14]), .I3(n13066), .O(n81)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i29_3_lut (.I0(encoder0_position[28]), 
            .I1(n5), .I2(encoder0_position[31]), .I3(GND_net), .O(n38));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sweep_counter_660_661_add_4_16 (.CI(n13066), .I0(GND_net), 
            .I1(sweep_counter[14]), .CO(n13067));
    SB_CARRY encoder0_position_31__I_0_add_1972_10 (.CI(n12844), .I0(n2926), 
            .I1(VCC_net), .CO(n12845));
    SB_CARRY encoder0_position_31__I_0_add_632_7 (.CI(n12511), .I0(n929), 
            .I1(GND_net), .CO(n12512));
    SB_DFF encoder0_position_scaled_i17 (.Q(encoder0_position_scaled[17]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[17]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_6_lut (.I0(GND_net), .I1(n930), 
            .I2(GND_net), .I3(n12510), .O(n997)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_632_6 (.CI(n12510), .I0(n930), 
            .I1(GND_net), .CO(n12511));
    SB_DFF encoder0_position_scaled_i16 (.Q(encoder0_position_scaled[16]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[16]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_5_lut (.I0(GND_net), .I1(n931), 
            .I2(VCC_net), .I3(n12509), .O(n998)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i15 (.Q(encoder0_position_scaled[15]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[15]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_mux_3_i30_3_lut (.I0(encoder0_position[29]), 
            .I1(n4), .I2(encoder0_position[31]), .I3(GND_net), .O(n404));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i23_1_lut (.I0(encoder0_position[22]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n11_adj_629));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_i1237_3_lut (.I0(n1818), .I1(n1885), 
            .I2(n1851), .I3(GND_net), .O(n1917));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1237_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i24_1_lut (.I0(encoder0_position[23]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n10_adj_628));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[13]), .I3(n13065), .O(n82)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_9_lut (.I0(GND_net), .I1(n2927), 
            .I2(VCC_net), .I3(n12843), .O(n2994)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_19 (.CI(n12673), .I0(n2117), 
            .I1(VCC_net), .CO(n12674));
    SB_CARRY sweep_counter_660_661_add_4_15 (.CI(n13065), .I0(GND_net), 
            .I1(sweep_counter[13]), .CO(n13066));
    SB_LUT4 sweep_counter_660_661_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[12]), .I3(n13064), .O(n83)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_9 (.CI(n12843), .I0(n2927), 
            .I1(VCC_net), .CO(n12844));
    SB_LUT4 encoder0_position_31__I_0_add_1972_8_lut (.I0(GND_net), .I1(n2928), 
            .I2(VCC_net), .I3(n12842), .O(n2995)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_18_lut (.I0(GND_net), .I1(n2118), 
            .I2(VCC_net), .I3(n12672), .O(n2185)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_14 (.CI(n13064), .I0(GND_net), 
            .I1(sweep_counter[12]), .CO(n13065));
    SB_CARRY encoder0_position_31__I_0_add_1972_8 (.CI(n12842), .I0(n2928), 
            .I1(VCC_net), .CO(n12843));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i25_1_lut (.I0(encoder0_position[24]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n9_adj_627));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i31_3_lut (.I0(encoder0_position[30]), 
            .I1(n3), .I2(encoder0_position[31]), .I3(GND_net), .O(n403));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2181_2_lut (.I0(n2), .I1(encoder0_position[31]), .I2(GND_net), 
            .I3(GND_net), .O(n402));
    defparam i2181_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY encoder0_position_31__I_0_add_632_5 (.CI(n12509), .I0(n931), 
            .I1(VCC_net), .CO(n12510));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i26_1_lut (.I0(encoder0_position[25]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n8_adj_626));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[11]), .I3(n13063), .O(n84)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i14 (.Q(encoder0_position_scaled[14]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[14]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_4_lut (.I0(GND_net), .I1(n932), 
            .I2(GND_net), .I3(n12508), .O(n999)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_7_lut (.I0(GND_net), .I1(n2929), 
            .I2(GND_net), .I3(n12841), .O(n2996)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_add_3_21_lut (.I0(GND_net), .I1(GND_net), .I2(n6_adj_578), 
            .I3(n12444), .O(pwm_setpoint_23__N_171[19])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_21_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i13 (.Q(encoder0_position_scaled[13]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[13]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 add_305_17_lut (.I0(GND_net), .I1(encoder0_position_target[15]), 
            .I2(direction), .I3(n12464), .O(n1626)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_17_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i12 (.Q(encoder0_position_scaled[12]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[12]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY sweep_counter_660_661_add_4_13 (.CI(n13063), .I0(GND_net), 
            .I1(sweep_counter[11]), .CO(n13064));
    SB_CARRY encoder0_position_31__I_0_add_1436_18 (.CI(n12672), .I0(n2118), 
            .I1(VCC_net), .CO(n12673));
    SB_LUT4 sweep_counter_660_661_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[10]), .I3(n13062), .O(n85)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_17_lut (.I0(GND_net), .I1(n2119), 
            .I2(VCC_net), .I3(n12671), .O(n2186)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_12 (.CI(n13062), .I0(GND_net), 
            .I1(sweep_counter[10]), .CO(n13063));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i27_1_lut (.I0(encoder0_position[26]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n7_adj_625));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[9]), .I3(n13061), .O(n86)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i28_1_lut (.I0(encoder0_position[27]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n6_adj_624));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_1972_7 (.CI(n12841), .I0(n2929), 
            .I1(GND_net), .CO(n12842));
    SB_CARRY sweep_counter_660_661_add_4_11 (.CI(n13061), .I0(GND_net), 
            .I1(sweep_counter[9]), .CO(n13062));
    SB_CARRY encoder0_position_31__I_0_add_1436_17 (.CI(n12671), .I0(n2119), 
            .I1(VCC_net), .CO(n12672));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i29_1_lut (.I0(encoder0_position[28]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n5_adj_623));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i30_1_lut (.I0(encoder0_position[29]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n4_adj_622));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_305_3_lut (.I0(GND_net), .I1(encoder0_position_target[1]), 
            .I2(direction), .I3(n12450), .O(n1640)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i11 (.Q(encoder0_position_scaled[11]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[11]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY add_305_3 (.CI(n12450), .I0(encoder0_position_target[1]), .I1(direction), 
            .CO(n12451));
    SB_CARRY unary_minus_13_add_3_21 (.CI(n12444), .I0(GND_net), .I1(n6_adj_578), 
            .CO(n12445));
    SB_DFF encoder0_position_scaled_i10 (.Q(encoder0_position_scaled[10]), 
           .C(CLK_N), .D(encoder0_position_scaled_23__N_123[10]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 unary_minus_13_add_3_20_lut (.I0(GND_net), .I1(GND_net), .I2(n7_adj_579), 
            .I3(n12443), .O(pwm_setpoint_23__N_171[18])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_20_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i9 (.Q(encoder0_position_scaled[9]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[9]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_1972_6_lut (.I0(GND_net), .I1(n2930), 
            .I2(GND_net), .I3(n12840), .O(n2997)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i31_1_lut (.I0(encoder0_position[30]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n3_adj_621));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sweep_counter_660_661_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[8]), .I3(n13060), .O(n87)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_6 (.CI(n12840), .I0(n2930), 
            .I1(GND_net), .CO(n12841));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_inv_0_i32_1_lut (.I0(encoder0_position[31]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n2_adj_620));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_unary_minus_2_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sweep_counter_660_661_add_4_10 (.CI(n13060), .I0(GND_net), 
            .I1(sweep_counter[8]), .CO(n13061));
    SB_LUT4 encoder0_position_31__I_0_add_1972_5_lut (.I0(GND_net), .I1(n2931), 
            .I2(VCC_net), .I3(n12839), .O(n2998)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sweep_counter_660_661_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[7]), .I3(n13059), .O(n88)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_16_lut (.I0(GND_net), .I1(n2120), 
            .I2(VCC_net), .I3(n12670), .O(n2187)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_9 (.CI(n13059), .I0(GND_net), .I1(sweep_counter[7]), 
            .CO(n13060));
    SB_CARRY encoder0_position_31__I_0_add_632_4 (.CI(n12508), .I0(n932), 
            .I1(GND_net), .CO(n12509));
    SB_DFF encoder0_position_scaled_i8 (.Q(encoder0_position_scaled[8]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[8]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_3_lut (.I0(GND_net), .I1(n933), 
            .I2(VCC_net), .I3(n12507), .O(n1000)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_632_3 (.CI(n12507), .I0(n933), 
            .I1(VCC_net), .CO(n12508));
    SB_DFF encoder0_position_scaled_i7 (.Q(encoder0_position_scaled[7]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[7]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_632_2_lut (.I0(GND_net), .I1(n295), 
            .I2(GND_net), .I3(VCC_net), .O(n1001)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_632_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS commutation_state_i0 (.Q(commutation_state[0]), .C(CLK_N), 
            .E(n6_adj_721), .D(commutation_state_7__N_253[0]), .S(commutation_state_7__N_261));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 i1_4_lut_adj_149 (.I0(n2418), .I1(n2419), .I2(n13828), .I3(n14628), 
            .O(n14634));
    defparam i1_4_lut_adj_149.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_150 (.I0(n2415), .I1(n2416), .I2(n2417), .I3(n14634), 
            .O(n14640));
    defparam i1_4_lut_adj_150.LUT_INIT = 16'hfffe;
    SB_LUT4 sweep_counter_660_661_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[6]), .I3(n13058), .O(n89)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_632_2 (.CI(VCC_net), .I0(n295), 
            .I1(GND_net), .CO(n12507));
    SB_DFFESR GLA_171 (.Q(INLA_c_0), .C(CLK_N), .E(n5201), .D(GLA_N_301), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY sweep_counter_660_661_add_4_8 (.CI(n13058), .I0(GND_net), .I1(sweep_counter[6]), 
            .CO(n13059));
    SB_DFFESR GLB_173 (.Q(INLB_c_0), .C(CLK_N), .E(n5201), .D(GLB_N_315), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_1972_5 (.CI(n12839), .I0(n2931), 
            .I1(VCC_net), .CO(n12840));
    SB_LUT4 sweep_counter_660_661_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[5]), .I3(n13057), .O(n90)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_4_lut (.I0(GND_net), .I1(n2932), 
            .I2(GND_net), .I3(n12838), .O(n2999)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR GLC_175 (.Q(INLC_c_0), .C(CLK_N), .E(n5201), .D(GLC_N_329), 
            .R(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFF encoder0_position_scaled_i6 (.Q(encoder0_position_scaled[6]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[6]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_565_8_lut (.I0(n861), .I1(n828), 
            .I2(VCC_net), .I3(n12506), .O(n927)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_8_lut.LUT_INIT = 16'h8228;
    SB_DFF encoder0_position_scaled_i5 (.Q(encoder0_position_scaled[5]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[5]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_565_7_lut (.I0(GND_net), .I1(n829), 
            .I2(GND_net), .I3(n12505), .O(n896)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_7 (.CI(n13057), .I0(GND_net), .I1(sweep_counter[5]), 
            .CO(n13058));
    SB_CARRY encoder0_position_31__I_0_add_565_7 (.CI(n12505), .I0(n829), 
            .I1(GND_net), .CO(n12506));
    SB_DFF encoder0_position_scaled_i4 (.Q(encoder0_position_scaled[4]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[4]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_565_6_lut (.I0(GND_net), .I1(n830), 
            .I2(GND_net), .I3(n12504), .O(n897)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF encoder0_position_scaled_i3 (.Q(encoder0_position_scaled[3]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[3]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY encoder0_position_31__I_0_add_1972_4 (.CI(n12838), .I0(n2932), 
            .I1(GND_net), .CO(n12839));
    SB_CARRY encoder0_position_31__I_0_add_1436_16 (.CI(n12670), .I0(n2120), 
            .I1(VCC_net), .CO(n12671));
    SB_LUT4 sweep_counter_660_661_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[4]), .I3(n13056), .O(n91)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1972_3_lut (.I0(GND_net), .I1(n2933), 
            .I2(VCC_net), .I3(n12837), .O(n3000)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_15_lut (.I0(GND_net), .I1(n2121), 
            .I2(VCC_net), .I3(n12669), .O(n2188)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_6 (.CI(n13056), .I0(GND_net), .I1(sweep_counter[4]), 
            .CO(n13057));
    SB_LUT4 sweep_counter_660_661_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[3]), .I3(n13055), .O(n92)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_3 (.CI(n12837), .I0(n2933), 
            .I1(VCC_net), .CO(n12838));
    SB_LUT4 encoder0_position_31__I_0_add_1972_2_lut (.I0(GND_net), .I1(n315), 
            .I2(GND_net), .I3(VCC_net), .O(n3001)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1972_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9552_2_lut (.I0(n5137), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n11526));
    defparam i9552_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY sweep_counter_660_661_add_4_5 (.CI(n13055), .I0(GND_net), .I1(sweep_counter[3]), 
            .CO(n13056));
    SB_CARRY encoder0_position_31__I_0_add_1436_15 (.CI(n12669), .I0(n2121), 
            .I1(VCC_net), .CO(n12670));
    SB_CARRY encoder0_position_31__I_0_add_565_6 (.CI(n12504), .I0(n830), 
            .I1(GND_net), .CO(n12505));
    SB_DFF encoder0_position_scaled_i2 (.Q(encoder0_position_scaled[2]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[2]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_565_5_lut (.I0(GND_net), .I1(n831), 
            .I2(VCC_net), .I3(n12503), .O(n898)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_565_5 (.CI(n12503), .I0(n831), 
            .I1(VCC_net), .CO(n12504));
    SB_DFF encoder0_position_scaled_i1 (.Q(encoder0_position_scaled[1]), .C(CLK_N), 
           .D(encoder0_position_scaled_23__N_123[1]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_add_833_3_lut (.I0(GND_net), .I1(n1233), 
            .I2(VCC_net), .I3(n12531), .O(n1300)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF commutation_state_i1 (.Q(commutation_state[1]), .C(CLK_N), .D(n13605));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_i1773_3_lut (.I0(n2610), .I1(n2677), 
            .I2(n2643), .I3(GND_net), .O(n2709));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1773_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sweep_counter_660_661_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[2]), .I3(n13054), .O(n93)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sweep_counter_660_661_add_4_4 (.CI(n13054), .I0(GND_net), .I1(sweep_counter[2]), 
            .CO(n13055));
    SB_LUT4 sweep_counter_660_661_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[1]), .I3(n13053), .O(n94)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1972_2 (.CI(VCC_net), .I0(n315), 
            .I1(GND_net), .CO(n12837));
    SB_DFF commutation_state_i2 (.Q(commutation_state[2]), .C(CLK_N), .D(n13672));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_CARRY sweep_counter_660_661_add_4_3 (.CI(n13053), .I0(GND_net), .I1(sweep_counter[1]), 
            .CO(n13054));
    SB_LUT4 encoder0_position_31__I_0_add_1436_14_lut (.I0(GND_net), .I1(n2122), 
            .I2(VCC_net), .I3(n12668), .O(n2189)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sweep_counter_660_661_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(sweep_counter[0]), .I3(VCC_net), .O(n95)) /* synthesis syn_instantiated=1 */ ;
    defparam sweep_counter_660_661_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_28_lut (.I0(n15352), .I1(n2808), 
            .I2(VCC_net), .I3(n12836), .O(n2907)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_28_lut.LUT_INIT = 16'h8228;
    SB_DFF pwm_setpoint_i3 (.Q(pwm_setpoint[3]), .C(CLK_N), .D(pwm_setpoint_23__N_27[3]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_CARRY sweep_counter_660_661_add_4_2 (.CI(VCC_net), .I0(GND_net), 
            .I1(sweep_counter[0]), .CO(n13053));
    SB_LUT4 encoder0_position_31__I_0_add_1905_27_lut (.I0(GND_net), .I1(n2809), 
            .I2(VCC_net), .I3(n12835), .O(n2876)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_833_3 (.CI(n12531), .I0(n1233), 
            .I1(VCC_net), .CO(n12532));
    SB_CARRY encoder0_position_31__I_0_add_1436_14 (.CI(n12668), .I0(n2122), 
            .I1(VCC_net), .CO(n12669));
    SB_CARRY encoder0_position_31__I_0_add_1905_27 (.CI(n12835), .I0(n2809), 
            .I1(VCC_net), .CO(n12836));
    SB_LUT4 pwm_setpoint_23__I_0_i12_3_lut (.I0(duty[11]), .I1(pwm_setpoint_23__N_171[11]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[11]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_833_2_lut (.I0(GND_net), .I1(n298), 
            .I2(GND_net), .I3(VCC_net), .O(n1301)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_setpoint_23__I_0_i13_3_lut (.I0(duty[12]), .I1(pwm_setpoint_23__N_171[12]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[12]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_833_2 (.CI(VCC_net), .I0(n298), 
            .I1(GND_net), .CO(n12531));
    SB_LUT4 encoder0_position_31__I_0_add_766_11_lut (.I0(n15522), .I1(n1125), 
            .I2(VCC_net), .I3(n12530), .O(n1224)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_766_10_lut (.I0(GND_net), .I1(n1126), 
            .I2(VCC_net), .I3(n12529), .O(n1193)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_10_lut.LUT_INIT = 16'hC33C;
    GND i1 (.Y(GND_net));
    SB_LUT4 pwm_setpoint_23__I_0_i14_3_lut (.I0(duty[13]), .I1(pwm_setpoint_23__N_171[13]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[13]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i15_3_lut (.I0(duty[14]), .I1(pwm_setpoint_23__N_171[14]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[14]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_1905_26_lut (.I0(GND_net), .I1(n2810), 
            .I2(VCC_net), .I3(n12834), .O(n2877)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_26 (.CI(n12834), .I0(n2810), 
            .I1(VCC_net), .CO(n12835));
    SB_LUT4 pwm_setpoint_23__I_0_i16_3_lut (.I0(duty[15]), .I1(pwm_setpoint_23__N_171[15]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[15]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12199_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n14929));
    defparam i12199_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i12198_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n14928));
    defparam i12198_4_lut.LUT_INIT = 16'hcf08;
    SB_CARRY encoder0_position_31__I_0_add_766_10 (.CI(n12529), .I0(n1126), 
            .I1(VCC_net), .CO(n12530));
    SB_LUT4 encoder0_position_31__I_0_add_766_9_lut (.I0(GND_net), .I1(n1127), 
            .I2(VCC_net), .I3(n12528), .O(n1194)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_766_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_305_2_lut (.I0(GND_net), .I1(encoder0_position_target[0]), 
            .I2(n1693), .I3(n12449), .O(n1641)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_2 (.CI(n12449), .I0(encoder0_position_target[0]), .I1(n1693), 
            .CO(n12450));
    SB_LUT4 i12200_3_lut (.I0(n14928), .I1(n14929), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i12200_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 pwm_setpoint_23__I_0_i17_3_lut (.I0(duty[16]), .I1(pwm_setpoint_23__N_171[16]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[16]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i18_3_lut (.I0(duty[17]), .I1(pwm_setpoint_23__N_171[17]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[17]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i19_3_lut (.I0(duty[18]), .I1(pwm_setpoint_23__N_171[18]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[18]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i20_3_lut (.I0(duty[19]), .I1(pwm_setpoint_23__N_171[19]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[19]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i21_3_lut (.I0(duty[20]), .I1(pwm_setpoint_23__N_171[20]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[20]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_305_1 (.CI(GND_net), .I0(direction), .I1(direction), 
            .CO(n12449));
    SB_LUT4 encoder0_position_31__I_0_add_1436_13_lut (.I0(GND_net), .I1(n2123), 
            .I2(VCC_net), .I3(n12667), .O(n2190)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_setpoint_23__I_0_i22_3_lut (.I0(duty[21]), .I1(pwm_setpoint_23__N_171[21]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[21]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i23_3_lut (.I0(duty[22]), .I1(pwm_setpoint_23__N_171[22]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[22]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_565_4_lut (.I0(GND_net), .I1(n832), 
            .I2(GND_net), .I3(n12502), .O(n899)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_setpoint_23__I_0_i2_3_lut (.I0(duty[1]), .I1(pwm_setpoint_23__N_171[1]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[1]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 unary_minus_13_inv_0_i16_1_lut (.I0(duty[15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_582));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i17_1_lut (.I0(duty[16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_581));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_305_17 (.CI(n12464), .I0(encoder0_position_target[15]), 
            .I1(direction), .CO(n12465));
    SB_LUT4 encoder0_position_31__I_0_add_1905_25_lut (.I0(GND_net), .I1(n2811), 
            .I2(VCC_net), .I3(n12833), .O(n2878)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_305_10 (.CI(n12457), .I0(encoder0_position_target[8]), 
            .I1(direction), .CO(n12458));
    SB_LUT4 add_305_9_lut (.I0(GND_net), .I1(encoder0_position_target[7]), 
            .I2(direction), .I3(n12456), .O(n1634)) /* synthesis syn_instantiated=1 */ ;
    defparam add_305_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_2 (.CI(VCC_net), .I0(encoder0_position_target[0]), 
            .I1(n25_adj_551), .CO(n12473));
    SB_LUT4 unary_minus_13_inv_0_i18_1_lut (.I0(duty[17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_580));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 pwm_setpoint_23__I_0_i3_3_lut (.I0(duty[2]), .I1(pwm_setpoint_23__N_171[2]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[2]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 unary_minus_13_inv_0_i10_1_lut (.I0(duty[9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_588));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i11_1_lut (.I0(duty[10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_587));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mux_303_i1_3_lut (.I0(direction_N_340), .I1(direction_N_342), 
            .I2(direction), .I3(GND_net), .O(n1693));   // verilog/TinyFPGA_B.v(146[3] 161[6])
    defparam mux_303_i1_3_lut.LUT_INIT = 16'h3a3a;
    SB_CARRY encoder0_position_31__I_0_add_1905_25 (.CI(n12833), .I0(n2811), 
            .I1(VCC_net), .CO(n12834));
    SB_LUT4 encoder0_position_31__I_0_i701_3_lut (.I0(n1026), .I1(n1093), 
            .I2(n1059), .I3(GND_net), .O(n1125));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i701_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i13075_4_lut (.I0(n2413), .I1(n2412), .I2(n2414), .I3(n14640), 
            .O(n2445));
    defparam i13075_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i10999_4_lut_4_lut_4_lut (.I0(h1), .I1(h3), .I2(h2), .I3(commutation_state[2]), 
            .O(n13672));   // verilog/TinyFPGA_B.v(180[6:22])
    defparam i10999_4_lut_4_lut_4_lut.LUT_INIT = 16'hc544;
    SB_CARRY unary_minus_13_add_3_13 (.CI(n12436), .I0(GND_net), .I1(n14_adj_586), 
            .CO(n12437));
    SB_LUT4 unary_minus_13_add_3_12_lut (.I0(GND_net), .I1(GND_net), .I2(n15_adj_587), 
            .I3(n12435), .O(pwm_setpoint_23__N_171[10])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_12 (.CI(n12435), .I0(GND_net), .I1(n15_adj_587), 
            .CO(n12436));
    SB_LUT4 pwm_setpoint_23__I_0_i4_3_lut (.I0(duty[3]), .I1(pwm_setpoint_23__N_171[3]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[3]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_1905_24_lut (.I0(GND_net), .I1(n2812), 
            .I2(VCC_net), .I3(n12832), .O(n2879)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2184_3_lut_4_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(dir), .I3(commutation_state[0]), .O(GLA_N_301));   // verilog/TinyFPGA_B.v(193[6] 212[14])
    defparam i2184_3_lut_4_lut_4_lut.LUT_INIT = 16'h212c;
    SB_LUT4 i1_4_lut_adj_151 (.I0(h3), .I1(commutation_state[1]), .I2(h2), 
            .I3(h1), .O(n13605));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    defparam i1_4_lut_adj_151.LUT_INIT = 16'hd054;
    SB_LUT4 unary_minus_13_add_3_11_lut (.I0(GND_net), .I1(GND_net), .I2(n16_adj_588), 
            .I3(n12434), .O(pwm_setpoint_23__N_171[9])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_setpoint_i2 (.Q(pwm_setpoint[2]), .C(CLK_N), .D(pwm_setpoint_23__N_27[2]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_CARRY unary_minus_13_add_3_11 (.CI(n12434), .I0(GND_net), .I1(n16_adj_588), 
            .CO(n12435));
    SB_LUT4 i1_3_lut_adj_152 (.I0(n5_adj_682), .I1(n3), .I2(encoder0_position[31]), 
            .I3(GND_net), .O(n14568));
    defparam i1_3_lut_adj_152.LUT_INIT = 16'h8080;
    SB_LUT4 encoder0_position_31__I_0_i500_4_lut (.I0(n2), .I1(n2561), .I2(n14568), 
            .I3(encoder0_position[31]), .O(n828));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i500_4_lut.LUT_INIT = 16'h8a80;
    SB_LUT4 i2192_3_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(commutation_state[0]), .I3(dir), .O(GLC_N_329));   // verilog/TinyFPGA_B.v(214[6] 233[13])
    defparam i2192_3_lut_4_lut.LUT_INIT = 16'hcc21;
    SB_LUT4 i2182_3_lut_4_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(dir), .I3(commutation_state[0]), .O(GHA_N_284));   // verilog/TinyFPGA_B.v(193[6] 212[14])
    defparam i2182_3_lut_4_lut_4_lut.LUT_INIT = 16'h12c2;
    SB_LUT4 i2186_3_lut_4_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(dir), .I3(commutation_state[0]), .O(GHB_N_306));
    defparam i2186_3_lut_4_lut_4_lut.LUT_INIT = 16'hc121;
    SB_LUT4 i2188_3_lut_4_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(dir), .I3(commutation_state[0]), .O(GLB_N_315));
    defparam i2188_3_lut_4_lut_4_lut.LUT_INIT = 16'h1c12;
    SB_LUT4 i9553_1_lut_2_lut (.I0(n5137), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n1377));
    defparam i9553_1_lut_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i3282_3_lut_4_lut (.I0(n1302), .I1(b_prev), .I2(a_new[1]), 
            .I3(direction_N_537), .O(n5258));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    defparam i3282_3_lut_4_lut.LUT_INIT = 16'h3caa;
    SB_LUT4 unary_minus_13_add_3_10_lut (.I0(GND_net), .I1(GND_net), .I2(n17_adj_589), 
            .I3(n12433), .O(pwm_setpoint_23__N_171[8])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_24 (.CI(n12832), .I0(n2812), 
            .I1(VCC_net), .CO(n12833));
    SB_LUT4 i2190_3_lut_4_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(commutation_state[0]), .I3(dir), .O(GHC_N_320));   // verilog/TinyFPGA_B.v(214[6] 233[13])
    defparam i2190_3_lut_4_lut.LUT_INIT = 16'h21cc;
    SB_LUT4 i14_3_lut (.I0(h2), .I1(h3), .I2(h1), .I3(GND_net), .O(n6_adj_721));
    defparam i14_3_lut.LUT_INIT = 16'h7e7e;
    SB_LUT4 i1_3_lut_adj_153 (.I0(h3), .I1(h2), .I2(h1), .I3(GND_net), 
            .O(commutation_state_7__N_253[0]));   // verilog/TinyFPGA_B.v(177[3] 179[6])
    defparam i1_3_lut_adj_153.LUT_INIT = 16'h1414;
    SB_LUT4 unary_minus_13_inv_0_i19_1_lut (.I0(duty[18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_579));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i20_1_lut (.I0(duty[19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_578));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY unary_minus_13_add_3_20 (.CI(n12443), .I0(GND_net), .I1(n7_adj_579), 
            .CO(n12444));
    SB_LUT4 unary_minus_13_add_3_19_lut (.I0(GND_net), .I1(GND_net), .I2(n8_adj_580), 
            .I3(n12442), .O(pwm_setpoint_23__N_171[17])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_19 (.CI(n12442), .I0(GND_net), .I1(n8_adj_580), 
            .CO(n12443));
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i1_1_lut (.I0(encoder0_position_scaled[0]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n25_adj_551));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_add_3_18_lut (.I0(GND_net), .I1(GND_net), .I2(n9_adj_581), 
            .I3(n12441), .O(pwm_setpoint_23__N_171[16])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_18 (.CI(n12441), .I0(GND_net), .I1(n9_adj_581), 
            .CO(n12442));
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i2_1_lut (.I0(encoder0_position_scaled[1]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n24_adj_552));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1905_23_lut (.I0(GND_net), .I1(n2813), 
            .I2(VCC_net), .I3(n12831), .O(n2880)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_23 (.CI(n12831), .I0(n2813), 
            .I1(VCC_net), .CO(n12832));
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i3_1_lut (.I0(encoder0_position_scaled[2]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n23_adj_553));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_add_3_17_lut (.I0(GND_net), .I1(GND_net), .I2(n10_adj_582), 
            .I3(n12440), .O(pwm_setpoint_23__N_171[15])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i4_1_lut (.I0(encoder0_position_scaled[3]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n22_adj_554));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_1905_22_lut (.I0(GND_net), .I1(n2814), 
            .I2(VCC_net), .I3(n12830), .O(n2881)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_13 (.CI(n12667), .I0(n2123), 
            .I1(VCC_net), .CO(n12668));
    SB_LUT4 encoder0_position_31__I_0_add_1436_12_lut (.I0(GND_net), .I1(n2124), 
            .I2(VCC_net), .I3(n12666), .O(n2191)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY unary_minus_13_add_3_17 (.CI(n12440), .I0(GND_net), .I1(n10_adj_582), 
            .CO(n12441));
    SB_LUT4 unary_minus_13_add_3_16_lut (.I0(GND_net), .I1(GND_net), .I2(n11_adj_583), 
            .I3(n12439), .O(pwm_setpoint_23__N_171[14])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 unary_minus_13_inv_0_i4_1_lut (.I0(duty[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n22_adj_594));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i21_1_lut (.I0(duty[20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n5_adj_577));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_1905_22 (.CI(n12830), .I0(n2814), 
            .I1(VCC_net), .CO(n12831));
    SB_LUT4 unary_minus_13_add_3_25_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_setpoint_23__N_195), 
            .I3(n12448), .O(pwm_setpoint_23__N_171[23])) /* synthesis syn_instantiated=1 */ ;
    defparam unary_minus_13_add_3_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_565_4 (.CI(n12502), .I0(n832), 
            .I1(GND_net), .CO(n12503));
    SB_LUT4 unary_minus_13_inv_0_i12_1_lut (.I0(duty[11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n14_adj_586));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i5_1_lut (.I0(encoder0_position_scaled[4]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n21_adj_555));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i1_1_lut (.I0(duty[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n25_adj_597));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i6_1_lut (.I0(duty[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n20_adj_592));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i6_1_lut (.I0(encoder0_position_scaled[5]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n20_adj_556));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY encoder0_position_31__I_0_add_766_9 (.CI(n12528), .I0(n1127), 
            .I1(VCC_net), .CO(n12529));
    SB_CARRY encoder0_position_31__I_0_add_833_4 (.CI(n12532), .I0(n1232), 
            .I1(GND_net), .CO(n12533));
    SB_LUT4 encoder0_position_31__I_0_i1575_3_lut (.I0(n2316), .I1(n2383), 
            .I2(n2346), .I3(GND_net), .O(n2415));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1575_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 unary_minus_13_inv_0_i22_1_lut (.I0(duty[21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_576));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i13_1_lut (.I0(duty[12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_585));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i7_1_lut (.I0(duty[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n19_adj_591));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i5_1_lut (.I0(duty[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21_adj_593));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_833_4_lut (.I0(GND_net), .I1(n1232), 
            .I2(GND_net), .I3(n12532), .O(n1299)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_833_5 (.CI(n12533), .I0(n1231), 
            .I1(VCC_net), .CO(n12534));
    SB_LUT4 unary_minus_13_inv_0_i2_1_lut (.I0(duty[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n24_adj_596));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i14_1_lut (.I0(duty[13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n12_adj_584));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i8_1_lut (.I0(duty[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n18_adj_590));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i23_1_lut (.I0(duty[22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n3_adj_575));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i9_1_lut (.I0(duty[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n17_adj_589));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 unary_minus_13_inv_0_i15_1_lut (.I0(duty[14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_583));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_31__I_0_add_833_5_lut (.I0(GND_net), .I1(n1231), 
            .I2(VCC_net), .I3(n12533), .O(n1298)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_833_6 (.CI(n12534), .I0(n1230), 
            .I1(GND_net), .CO(n12535));
    SB_LUT4 i1_3_lut_adj_154 (.I0(n2524), .I1(n2528), .I2(n2526), .I3(GND_net), 
            .O(n14574));
    defparam i1_3_lut_adj_154.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_add_833_6_lut (.I0(GND_net), .I1(n1230), 
            .I2(GND_net), .I3(n12534), .O(n1297)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_833_7 (.CI(n12535), .I0(n1229), 
            .I1(GND_net), .CO(n12536));
    SB_LUT4 unary_minus_13_inv_0_i3_1_lut (.I0(duty[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n23_adj_595));   // verilog/TinyFPGA_B.v(111[21:26])
    defparam unary_minus_13_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 encoder0_position_target_23__I_0_204_inv_0_i7_1_lut (.I0(encoder0_position_scaled[6]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n19_adj_557));   // verilog/TinyFPGA_B.v(163[11:62])
    defparam encoder0_position_target_23__I_0_204_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_2_lut_3_lut (.I0(h1), .I1(h3), .I2(h2), .I3(GND_net), 
            .O(commutation_state_7__N_261));   // verilog/TinyFPGA_B.v(180[6:22])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 pwm_setpoint_23__I_0_i5_3_lut (.I0(duty[4]), .I1(pwm_setpoint_23__N_171[4]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[4]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 pwm_setpoint_23__I_0_i6_3_lut (.I0(duty[5]), .I1(pwm_setpoint_23__N_171[5]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[5]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_833_7_lut (.I0(GND_net), .I1(n1229), 
            .I2(GND_net), .I3(n12535), .O(n1296)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1644_3_lut (.I0(n2417), .I1(n2484), 
            .I2(n2445), .I3(GND_net), .O(n2516));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1644_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_833_8 (.CI(n12536), .I0(n1228), 
            .I1(VCC_net), .CO(n12537));
    SB_LUT4 encoder0_position_31__I_0_i1711_3_lut (.I0(n2516), .I1(n2583), 
            .I2(n2544), .I3(GND_net), .O(n2615));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1711_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1778_3_lut (.I0(n2615), .I1(n2682), 
            .I2(n2643), .I3(GND_net), .O(n2714));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1778_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1845_3_lut (.I0(n2714), .I1(n2781), 
            .I2(n2742), .I3(GND_net), .O(n2813));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1845_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1912_3_lut (.I0(n2813), .I1(n2880), 
            .I2(n2841), .I3(GND_net), .O(n2912));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1912_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1979_3_lut (.I0(n2912), .I1(n2979), 
            .I2(n2940), .I3(GND_net), .O(n3011));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1979_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_833_8_lut (.I0(GND_net), .I1(n1228), 
            .I2(VCC_net), .I3(n12536), .O(n1295)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_833_9 (.CI(n12537), .I0(n1227), 
            .I1(VCC_net), .CO(n12538));
    SB_LUT4 i1_4_lut_adj_155 (.I0(n14214), .I1(n2926), .I2(n2918), .I3(n2927), 
            .O(n14216));
    defparam i1_4_lut_adj_155.LUT_INIT = 16'hfffe;
    SB_LUT4 pwm_setpoint_23__I_0_i7_3_lut (.I0(duty[6]), .I1(pwm_setpoint_23__N_171[6]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[6]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_156 (.I0(n2520), .I1(n2527), .I2(n2523), .I3(GND_net), 
            .O(n14576));
    defparam i1_3_lut_adj_156.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_i1643_3_lut (.I0(n2416), .I1(n2483), 
            .I2(n2445), .I3(GND_net), .O(n2515));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1643_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1710_3_lut (.I0(n2515), .I1(n2582), 
            .I2(n2544), .I3(GND_net), .O(n2614));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1710_3_lut.LUT_INIT = 16'hacac;
    SB_DFF pwm_setpoint_i1 (.Q(pwm_setpoint[1]), .C(CLK_N), .D(pwm_setpoint_23__N_27[1]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF commutation_state_prev_i2 (.Q(commutation_state_prev[2]), .C(CLK_N), 
           .D(commutation_state[2]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_DFF commutation_state_prev_i1 (.Q(commutation_state_prev[1]), .C(CLK_N), 
           .D(commutation_state[1]));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    SB_LUT4 encoder0_position_31__I_0_i1777_3_lut (.I0(n2614), .I1(n2681), 
            .I2(n2643), .I3(GND_net), .O(n2713));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1777_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1844_3_lut (.I0(n2713), .I1(n2780), 
            .I2(n2742), .I3(GND_net), .O(n2812));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1844_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1905_21_lut (.I0(GND_net), .I1(n2815), 
            .I2(VCC_net), .I3(n12829), .O(n2882)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1911_3_lut (.I0(n2812), .I1(n2879), 
            .I2(n2841), .I3(GND_net), .O(n2911));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1911_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1978_3_lut (.I0(n2911), .I1(n2978), 
            .I2(n2940), .I3(GND_net), .O(n3010));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1978_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1905_21 (.CI(n12829), .I0(n2815), 
            .I1(VCC_net), .CO(n12830));
    SB_DFFSR pwm_setpoint_i23 (.Q(pwm_setpoint[23]), .C(CLK_N), .D(pwm_setpoint_23__N_171[23]), 
            .R(pwm_setpoint_23__N_195));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i22 (.Q(pwm_setpoint[22]), .C(CLK_N), .D(pwm_setpoint_23__N_27[22]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i21 (.Q(pwm_setpoint[21]), .C(CLK_N), .D(pwm_setpoint_23__N_27[21]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i20 (.Q(pwm_setpoint[20]), .C(CLK_N), .D(pwm_setpoint_23__N_27[20]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i19 (.Q(pwm_setpoint[19]), .C(CLK_N), .D(pwm_setpoint_23__N_27[19]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i18 (.Q(pwm_setpoint[18]), .C(CLK_N), .D(pwm_setpoint_23__N_27[18]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i17 (.Q(pwm_setpoint[17]), .C(CLK_N), .D(pwm_setpoint_23__N_27[17]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i16 (.Q(pwm_setpoint[16]), .C(CLK_N), .D(pwm_setpoint_23__N_27[16]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_setpoint_i15 (.Q(pwm_setpoint[15]), .C(CLK_N), .D(pwm_setpoint_23__N_27[15]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i14 (.Q(pwm_setpoint[14]), .C(CLK_N), .D(pwm_setpoint_23__N_27[14]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i13 (.Q(pwm_setpoint[13]), .C(CLK_N), .D(pwm_setpoint_23__N_27[13]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i12 (.Q(pwm_setpoint[12]), .C(CLK_N), .D(pwm_setpoint_23__N_27[12]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_DFF pwm_setpoint_i11 (.Q(pwm_setpoint[11]), .C(CLK_N), .D(pwm_setpoint_23__N_27[11]));   // verilog/TinyFPGA_B.v(104[8] 114[4])
    SB_CARRY encoder0_position_31__I_0_add_1436_12 (.CI(n12666), .I0(n2124), 
            .I1(VCC_net), .CO(n12667));
    SB_LUT4 encoder0_position_31__I_0_add_1905_20_lut (.I0(GND_net), .I1(n2816), 
            .I2(VCC_net), .I3(n12828), .O(n2883)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_20 (.CI(n12828), .I0(n2816), 
            .I1(VCC_net), .CO(n12829));
    SB_LUT4 encoder0_position_31__I_0_add_1436_11_lut (.I0(GND_net), .I1(n2125), 
            .I2(VCC_net), .I3(n12665), .O(n2192)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_19_lut (.I0(GND_net), .I1(n2817), 
            .I2(VCC_net), .I3(n12827), .O(n2884)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_833_9_lut (.I0(GND_net), .I1(n1227), 
            .I2(VCC_net), .I3(n12537), .O(n1294)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_11 (.CI(n12665), .I0(n2125), 
            .I1(VCC_net), .CO(n12666));
    SB_CARRY encoder0_position_31__I_0_add_1905_19 (.CI(n12827), .I0(n2817), 
            .I1(VCC_net), .CO(n12828));
    SB_LUT4 pwm_setpoint_23__I_0_i8_3_lut (.I0(duty[7]), .I1(pwm_setpoint_23__N_171[7]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[7]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_1905_18_lut (.I0(GND_net), .I1(n2818), 
            .I2(VCC_net), .I3(n12826), .O(n2885)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_10_lut (.I0(GND_net), .I1(n2126), 
            .I2(VCC_net), .I3(n12664), .O(n2193)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_18 (.CI(n12826), .I0(n2818), 
            .I1(VCC_net), .CO(n12827));
    SB_LUT4 LessThan_299_i8_3_lut_3_lut (.I0(pwm_setpoint[4]), .I1(pwm_setpoint[8]), 
            .I2(pwm_counter[8]), .I3(GND_net), .O(n8_adj_657));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i8_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY encoder0_position_31__I_0_add_833_10 (.CI(n12538), .I0(n1226), 
            .I1(VCC_net), .CO(n12539));
    SB_CARRY encoder0_position_31__I_0_add_1436_10 (.CI(n12664), .I0(n2126), 
            .I1(VCC_net), .CO(n12665));
    SB_LUT4 encoder0_position_31__I_0_add_1905_17_lut (.I0(GND_net), .I1(n2819), 
            .I2(VCC_net), .I3(n12825), .O(n2886)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12414_2_lut_4_lut (.I0(pwm_counter[21]), .I1(pwm_setpoint[21]), 
            .I2(pwm_counter[9]), .I3(pwm_setpoint[9]), .O(n15144));
    defparam i12414_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 encoder0_position_31__I_0_add_1436_9_lut (.I0(GND_net), .I1(n2127), 
            .I2(VCC_net), .I3(n12663), .O(n2194)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_17 (.CI(n12825), .I0(n2819), 
            .I1(VCC_net), .CO(n12826));
    SB_CARRY encoder0_position_31__I_0_add_1436_9 (.CI(n12663), .I0(n2127), 
            .I1(VCC_net), .CO(n12664));
    SB_LUT4 encoder0_position_31__I_0_add_1905_16_lut (.I0(GND_net), .I1(n2820), 
            .I2(VCC_net), .I3(n12824), .O(n2887)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_8_lut (.I0(GND_net), .I1(n2128), 
            .I2(VCC_net), .I3(n12662), .O(n2195)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_16 (.CI(n12824), .I0(n2820), 
            .I1(VCC_net), .CO(n12825));
    SB_LUT4 encoder0_position_31__I_0_add_1905_15_lut (.I0(GND_net), .I1(n2821), 
            .I2(VCC_net), .I3(n12823), .O(n2888)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_299_i16_3_lut_3_lut (.I0(pwm_setpoint[9]), .I1(pwm_setpoint[21]), 
            .I2(pwm_counter[21]), .I3(GND_net), .O(n16_adj_664));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 LessThan_299_i10_3_lut_3_lut (.I0(pwm_setpoint[5]), .I1(pwm_setpoint[6]), 
            .I2(pwm_counter[6]), .I3(GND_net), .O(n10_adj_659));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY encoder0_position_31__I_0_add_1436_8 (.CI(n12662), .I0(n2128), 
            .I1(VCC_net), .CO(n12663));
    SB_CARRY encoder0_position_31__I_0_add_1905_15 (.CI(n12823), .I0(n2821), 
            .I1(VCC_net), .CO(n12824));
    SB_LUT4 encoder0_position_31__I_0_add_833_10_lut (.I0(GND_net), .I1(n1226), 
            .I2(VCC_net), .I3(n12538), .O(n1293)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_7_lut (.I0(GND_net), .I1(n2129), 
            .I2(GND_net), .I3(n12661), .O(n2196)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_14_lut (.I0(GND_net), .I1(n2822), 
            .I2(VCC_net), .I3(n12822), .O(n2889)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12367_2_lut_4_lut (.I0(pwm_counter[16]), .I1(pwm_setpoint[16]), 
            .I2(pwm_counter[7]), .I3(pwm_setpoint[7]), .O(n15097));
    defparam i12367_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY encoder0_position_31__I_0_add_1905_14 (.CI(n12822), .I0(n2822), 
            .I1(VCC_net), .CO(n12823));
    SB_CARRY encoder0_position_31__I_0_add_833_11 (.CI(n12539), .I0(n1225), 
            .I1(VCC_net), .CO(n12540));
    SB_CARRY encoder0_position_31__I_0_add_1436_7 (.CI(n12661), .I0(n2129), 
            .I1(GND_net), .CO(n12662));
    SB_LUT4 encoder0_position_31__I_0_add_1905_13_lut (.I0(GND_net), .I1(n2823), 
            .I2(VCC_net), .I3(n12821), .O(n2890)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_833_11_lut (.I0(GND_net), .I1(n1225), 
            .I2(VCC_net), .I3(n12539), .O(n1292)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_833_12_lut (.I0(n15537), .I1(n1224), 
            .I2(VCC_net), .I3(n12540), .O(n1323)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_833_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i3271_2_lut (.I0(n5201), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n5253));   // verilog/TinyFPGA_B.v(136[8] 236[4])
    defparam i3271_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 encoder0_position_31__I_0_add_1436_6_lut (.I0(GND_net), .I1(n2130), 
            .I2(GND_net), .I3(n12660), .O(n2197)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_13 (.CI(n12821), .I0(n2823), 
            .I1(VCC_net), .CO(n12822));
    SB_LUT4 i12529_4_lut (.I0(commutation_state[1]), .I1(n5137), .I2(dti), 
            .I3(commutation_state[2]), .O(n5201));
    defparam i12529_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 encoder0_position_31__I_0_add_1905_12_lut (.I0(GND_net), .I1(n2824), 
            .I2(VCC_net), .I3(n12820), .O(n2891)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_12 (.CI(n12820), .I0(n2824), 
            .I1(VCC_net), .CO(n12821));
    SB_LUT4 LessThan_299_i12_3_lut_3_lut (.I0(pwm_setpoint[7]), .I1(pwm_setpoint[16]), 
            .I2(pwm_counter[16]), .I3(GND_net), .O(n12_adj_661));   // verilog/pwm.v(21[8:24])
    defparam LessThan_299_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i9546_2_lut (.I0(pwm_out), .I1(GHC), .I2(GND_net), .I3(GND_net), 
            .O(INHC_c_0));   // verilog/TinyFPGA_B.v(84[15:30])
    defparam i9546_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9545_2_lut (.I0(pwm_out), .I1(GHB), .I2(GND_net), .I3(GND_net), 
            .O(INHB_c_0));   // verilog/TinyFPGA_B.v(82[15:30])
    defparam i9545_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9544_2_lut (.I0(pwm_out), .I1(GHA), .I2(GND_net), .I3(GND_net), 
            .O(INHA_c_0));   // verilog/TinyFPGA_B.v(80[15:30])
    defparam i9544_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY encoder0_position_31__I_0_add_900_2 (.CI(VCC_net), .I0(n299), 
            .I1(GND_net), .CO(n12541));
    SB_CARRY encoder0_position_31__I_0_add_1436_6 (.CI(n12660), .I0(n2130), 
            .I1(GND_net), .CO(n12661));
    SB_LUT4 encoder0_position_31__I_0_add_1905_11_lut (.I0(GND_net), .I1(n2825), 
            .I2(VCC_net), .I3(n12819), .O(n2892)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i1_3_lut (.I0(encoder0_position[0]), 
            .I1(n33), .I2(encoder0_position[31]), .I3(GND_net), .O(n319));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_add_1905_11 (.CI(n12819), .I0(n2825), 
            .I1(VCC_net), .CO(n12820));
    SB_LUT4 encoder0_position_31__I_0_add_1436_5_lut (.I0(GND_net), .I1(n2131), 
            .I2(VCC_net), .I3(n12659), .O(n2198)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_10_lut (.I0(GND_net), .I1(n2826), 
            .I2(VCC_net), .I3(n12818), .O(n2893)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_900_2_lut (.I0(GND_net), .I1(n299), 
            .I2(GND_net), .I3(VCC_net), .O(n1401)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_5 (.CI(n12659), .I0(n2131), 
            .I1(VCC_net), .CO(n12660));
    SB_CARRY encoder0_position_31__I_0_add_1905_10 (.CI(n12818), .I0(n2826), 
            .I1(VCC_net), .CO(n12819));
    SB_LUT4 encoder0_position_31__I_0_mux_3_i2_3_lut (.I0(encoder0_position[1]), 
            .I1(n32), .I2(encoder0_position[31]), .I3(GND_net), .O(n318));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i3_3_lut (.I0(encoder0_position[2]), 
            .I1(n31), .I2(encoder0_position[31]), .I3(GND_net), .O(n317));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_1905_9_lut (.I0(GND_net), .I1(n2827), 
            .I2(VCC_net), .I3(n12817), .O(n2894)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_9_lut.LUT_INIT = 16'hC33C;
    \grp_debouncer(3,1000)  debounce (.n5260(n5260), .data_o({h1, h2, 
            h3}), .CLK_c(CLK_N), .n5259(n5259), .n5256(n5256), .reg_B({reg_B}), 
            .data_i({hall1, hall2, hall3}), .n14129(n14129), .GND_net(GND_net), 
            .VCC_net(VCC_net));   // verilog/TinyFPGA_B.v(98[25] 102[2])
    SB_LUT4 encoder0_position_31__I_0_add_1436_4_lut (.I0(GND_net), .I1(n2132), 
            .I2(GND_net), .I3(n12658), .O(n2199)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_9 (.CI(n12817), .I0(n2827), 
            .I1(VCC_net), .CO(n12818));
    SB_LUT4 encoder0_position_31__I_0_i2137_3_lut (.I0(n317), .I1(n3201), 
            .I2(n3138), .I3(GND_net), .O(n3233));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2137_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1436_4 (.CI(n12658), .I0(n2132), 
            .I1(GND_net), .CO(n12659));
    SB_LUT4 encoder0_position_31__I_0_add_1905_8_lut (.I0(GND_net), .I1(n2828), 
            .I2(VCC_net), .I3(n12816), .O(n2895)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i4_3_lut (.I0(encoder0_position[3]), 
            .I1(n30), .I2(encoder0_position[31]), .I3(GND_net), .O(n316));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12360_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[0]), .O(n15081));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12360_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_CARRY encoder0_position_31__I_0_add_1905_8 (.CI(n12816), .I0(n2828), 
            .I1(VCC_net), .CO(n12817));
    SB_LUT4 encoder0_position_31__I_0_i2069_3_lut (.I0(n316), .I1(n3101), 
            .I2(n3039), .I3(GND_net), .O(n3133));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2069_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_900_3 (.CI(n12541), .I0(n1333), 
            .I1(VCC_net), .CO(n12542));
    SB_LUT4 encoder0_position_31__I_0_add_1436_3_lut (.I0(GND_net), .I1(n2133), 
            .I2(VCC_net), .I3(n12657), .O(n2200)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_7_lut (.I0(GND_net), .I1(n2829), 
            .I2(GND_net), .I3(n12815), .O(n2896)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2136_3_lut (.I0(n3133), .I1(n3200), 
            .I2(n3138), .I3(GND_net), .O(n3232));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2136_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i5_3_lut (.I0(encoder0_position[4]), 
            .I1(n29), .I2(encoder0_position[31]), .I3(GND_net), .O(n315));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10086_4_lut (.I0(n311), .I1(n2531), .I2(n2532), .I3(n2533), 
            .O(n12063));
    defparam i10086_4_lut.LUT_INIT = 16'hfcec;
    SB_CARRY encoder0_position_31__I_0_add_1436_3 (.CI(n12657), .I0(n2133), 
            .I1(VCC_net), .CO(n12658));
    SB_CARRY encoder0_position_31__I_0_add_1905_7 (.CI(n12815), .I0(n2829), 
            .I1(GND_net), .CO(n12816));
    SB_LUT4 encoder0_position_31__I_0_i2001_3_lut (.I0(n315), .I1(n3001), 
            .I2(n2940), .I3(GND_net), .O(n3033));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2001_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2068_3_lut (.I0(n3033), .I1(n3100), 
            .I2(n3039), .I3(GND_net), .O(n3132));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2068_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2135_3_lut (.I0(n3132), .I1(n3199), 
            .I2(n3138), .I3(GND_net), .O(n3231));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2135_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i6_3_lut (.I0(encoder0_position[5]), 
            .I1(n28), .I2(encoder0_position[31]), .I3(GND_net), .O(n314));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_add_900_3_lut (.I0(GND_net), .I1(n1333), 
            .I2(VCC_net), .I3(n12541), .O(n1400)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1436_2_lut (.I0(GND_net), .I1(n307), 
            .I2(GND_net), .I3(VCC_net), .O(n2201)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1436_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1905_6_lut (.I0(GND_net), .I1(n2830), 
            .I2(GND_net), .I3(n12814), .O(n2897)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_900_4 (.CI(n12542), .I0(n1332), 
            .I1(GND_net), .CO(n12543));
    SB_LUT4 encoder0_position_31__I_0_add_900_4_lut (.I0(GND_net), .I1(n1332), 
            .I2(GND_net), .I3(n12542), .O(n1399)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1436_2 (.CI(VCC_net), .I0(n307), 
            .I1(GND_net), .CO(n12657));
    SB_CARRY encoder0_position_31__I_0_add_1905_6 (.CI(n12814), .I0(n2830), 
            .I1(GND_net), .CO(n12815));
    SB_LUT4 encoder0_position_31__I_0_i1933_3_lut (.I0(n314), .I1(n2901), 
            .I2(n2841), .I3(GND_net), .O(n2933));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1933_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2000_3_lut (.I0(n2933), .I1(n3000), 
            .I2(n2940), .I3(GND_net), .O(n3032));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2000_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2067_3_lut (.I0(n3032), .I1(n3099), 
            .I2(n3039), .I3(GND_net), .O(n3131));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2067_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2134_3_lut (.I0(n3131), .I1(n3198), 
            .I2(n3138), .I3(GND_net), .O(n3230));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2134_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i7_3_lut (.I0(encoder0_position[6]), 
            .I1(n27), .I2(encoder0_position[31]), .I3(GND_net), .O(n313));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1865_3_lut (.I0(n313), .I1(n2801), 
            .I2(n2742), .I3(GND_net), .O(n2833));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1865_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1932_3_lut (.I0(n2833), .I1(n2900), 
            .I2(n2841), .I3(GND_net), .O(n2932));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1932_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_20_lut (.I0(n15697), .I1(n2016), 
            .I2(VCC_net), .I3(n12656), .O(n2115)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1905_5_lut (.I0(GND_net), .I1(n2831), 
            .I2(VCC_net), .I3(n12813), .O(n2898)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1369_19_lut (.I0(GND_net), .I1(n2017), 
            .I2(VCC_net), .I3(n12655), .O(n2084)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_5 (.CI(n12813), .I0(n2831), 
            .I1(VCC_net), .CO(n12814));
    SB_LUT4 encoder0_position_31__I_0_i1999_3_lut (.I0(n2932), .I1(n2999), 
            .I2(n2940), .I3(GND_net), .O(n3031));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1999_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2066_3_lut (.I0(n3031), .I1(n3098), 
            .I2(n3039), .I3(GND_net), .O(n3130));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2066_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2133_3_lut (.I0(n3130), .I1(n3197), 
            .I2(n3138), .I3(GND_net), .O(n3229));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2133_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1041_3_lut (.I0(n1526), .I1(n1593), 
            .I2(n1554), .I3(GND_net), .O(n1625_adj_605));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1041_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1108_3_lut (.I0(n1625_adj_605), .I1(n1692), 
            .I2(n1653), .I3(GND_net), .O(n1724));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1108_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1369_19 (.CI(n12655), .I0(n2017), 
            .I1(VCC_net), .CO(n12656));
    SB_LUT4 encoder0_position_31__I_0_add_1905_4_lut (.I0(GND_net), .I1(n2832), 
            .I2(GND_net), .I3(n12812), .O(n2899)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1175_3_lut (.I0(n1724), .I1(n1791), 
            .I2(n1752), .I3(GND_net), .O(n1823));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1175_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1242_3_lut (.I0(n1823), .I1(n1890), 
            .I2(n1851), .I3(GND_net), .O(n1922));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1242_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_18_lut (.I0(GND_net), .I1(n2018), 
            .I2(VCC_net), .I3(n12654), .O(n2085)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_4 (.CI(n12812), .I0(n2832), 
            .I1(GND_net), .CO(n12813));
    SB_CARRY encoder0_position_31__I_0_add_1369_18 (.CI(n12654), .I0(n2018), 
            .I1(VCC_net), .CO(n12655));
    SB_LUT4 encoder0_position_31__I_0_add_1905_3_lut (.I0(GND_net), .I1(n2833), 
            .I2(VCC_net), .I3(n12811), .O(n2900)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1369_17_lut (.I0(GND_net), .I1(n2019), 
            .I2(VCC_net), .I3(n12653), .O(n2086)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_3 (.CI(n12811), .I0(n2833), 
            .I1(VCC_net), .CO(n12812));
    SB_CARRY encoder0_position_31__I_0_add_1369_17 (.CI(n12653), .I0(n2019), 
            .I1(VCC_net), .CO(n12654));
    SB_LUT4 encoder0_position_31__I_0_add_1905_2_lut (.I0(GND_net), .I1(n314), 
            .I2(GND_net), .I3(VCC_net), .O(n2901)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1905_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_157 (.I0(n2518), .I1(n2522), .I2(n2525), .I3(n2521), 
            .O(n14184));
    defparam i1_4_lut_adj_157.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_900_5 (.CI(n12543), .I0(n1331), 
            .I1(VCC_net), .CO(n12544));
    SB_LUT4 encoder0_position_31__I_0_add_1369_16_lut (.I0(GND_net), .I1(n2020), 
            .I2(VCC_net), .I3(n12652), .O(n2087)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1905_2 (.CI(VCC_net), .I0(n314), 
            .I1(GND_net), .CO(n12811));
    SB_LUT4 encoder0_position_31__I_0_i1309_3_lut (.I0(n1922), .I1(n1989), 
            .I2(n1950), .I3(GND_net), .O(n2021));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1309_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12407_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[1]), .O(n15076));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12407_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_CARRY encoder0_position_31__I_0_add_1369_16 (.CI(n12652), .I0(n2020), 
            .I1(VCC_net), .CO(n12653));
    SB_LUT4 encoder0_position_31__I_0_add_1838_27_lut (.I0(n15322), .I1(n2709), 
            .I2(VCC_net), .I3(n12810), .O(n2808)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_27_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1369_15_lut (.I0(GND_net), .I1(n2021), 
            .I2(VCC_net), .I3(n12651), .O(n2088)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_26_lut (.I0(GND_net), .I1(n2710), 
            .I2(VCC_net), .I3(n12809), .O(n2777)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1376_3_lut (.I0(n2021), .I1(n2088), 
            .I2(n2049), .I3(GND_net), .O(n2120));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1376_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_900_5_lut (.I0(GND_net), .I1(n1331), 
            .I2(VCC_net), .I3(n12543), .O(n1398)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_900_6 (.CI(n12544), .I0(n1330), 
            .I1(GND_net), .CO(n12545));
    SB_CARRY encoder0_position_31__I_0_add_1369_15 (.CI(n12651), .I0(n2021), 
            .I1(VCC_net), .CO(n12652));
    SB_CARRY encoder0_position_31__I_0_add_1838_26 (.CI(n12809), .I0(n2710), 
            .I1(VCC_net), .CO(n12810));
    SB_LUT4 encoder0_position_31__I_0_i1443_3_lut (.I0(n2120), .I1(n2187), 
            .I2(n2148), .I3(GND_net), .O(n2219));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1443_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1510_3_lut (.I0(n2219), .I1(n2286), 
            .I2(n2247), .I3(GND_net), .O(n2318));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1510_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12406_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[2]), .O(n15075));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12406_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 encoder0_position_31__I_0_i1577_3_lut (.I0(n2318), .I1(n2385), 
            .I2(n2346), .I3(GND_net), .O(n2417));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1577_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_900_6_lut (.I0(GND_net), .I1(n1330), 
            .I2(GND_net), .I3(n12544), .O(n1397)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1369_14_lut (.I0(GND_net), .I1(n2022), 
            .I2(VCC_net), .I3(n12650), .O(n2089)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_25_lut (.I0(GND_net), .I1(n2711), 
            .I2(VCC_net), .I3(n12808), .O(n2778)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i8_3_lut (.I0(encoder0_position[7]), 
            .I1(n26), .I2(encoder0_position[31]), .I3(GND_net), .O(n312));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1797_3_lut (.I0(n312), .I1(n2701), 
            .I2(n2643), .I3(GND_net), .O(n2733));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1797_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1369_14 (.CI(n12650), .I0(n2022), 
            .I1(VCC_net), .CO(n12651));
    SB_CARRY encoder0_position_31__I_0_add_1838_25 (.CI(n12808), .I0(n2711), 
            .I1(VCC_net), .CO(n12809));
    SB_LUT4 encoder0_position_31__I_0_i1864_3_lut (.I0(n2733), .I1(n2800), 
            .I2(n2742), .I3(GND_net), .O(n2832));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1864_3_lut.LUT_INIT = 16'hacac;
    pwm PWM (.pwm_counter({pwm_counter}), .n5180(n5180), .n15246(n15246), 
        .pwm_out(pwm_out), .CLK_c(CLK_N), .n5182(n5182), .GND_net(GND_net), 
        .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(89[5] 94[2])
    SB_LUT4 dti_counter_662_add_4_9_lut (.I0(n15070), .I1(n11526), .I2(dti_counter[7]), 
            .I3(n13012), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_9_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_i1931_3_lut (.I0(n2832), .I1(n2899), 
            .I2(n2841), .I3(GND_net), .O(n2931));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1931_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1838_24_lut (.I0(GND_net), .I1(n2712), 
            .I2(VCC_net), .I3(n12807), .O(n2779)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dti_counter_662_add_4_8_lut (.I0(n15071), .I1(n11526), .I2(dti_counter[6]), 
            .I3(n13011), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_8_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_i1998_3_lut (.I0(n2931), .I1(n2998), 
            .I2(n2940), .I3(GND_net), .O(n3030));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1998_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2065_3_lut (.I0(n3030), .I1(n3097), 
            .I2(n3039), .I3(GND_net), .O(n3129));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2065_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_13_lut (.I0(GND_net), .I1(n2023), 
            .I2(VCC_net), .I3(n12649), .O(n2090)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_24 (.CI(n12807), .I0(n2712), 
            .I1(VCC_net), .CO(n12808));
    SB_CARRY dti_counter_662_add_4_8 (.CI(n13011), .I0(n11526), .I1(dti_counter[6]), 
            .CO(n13012));
    SB_LUT4 i1_2_lut_adj_158 (.I0(n2529), .I1(n2530), .I2(GND_net), .I3(GND_net), 
            .O(n14646));
    defparam i1_2_lut_adj_158.LUT_INIT = 16'h8888;
    SB_CARRY encoder0_position_31__I_0_add_900_7 (.CI(n12545), .I0(n1329), 
            .I1(GND_net), .CO(n12546));
    SB_CARRY encoder0_position_31__I_0_add_1369_13 (.CI(n12649), .I0(n2023), 
            .I1(VCC_net), .CO(n12650));
    SB_LUT4 encoder0_position_31__I_0_add_1838_23_lut (.I0(GND_net), .I1(n2713), 
            .I2(VCC_net), .I3(n12806), .O(n2780)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2132_3_lut (.I0(n3129), .I1(n3196), 
            .I2(n3138), .I3(GND_net), .O(n3228));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2132_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 dti_counter_662_add_4_7_lut (.I0(n15072), .I1(n11526), .I2(dti_counter[5]), 
            .I3(n13010), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_7_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_i1729_3_lut (.I0(n311), .I1(n2601), 
            .I2(n2544), .I3(GND_net), .O(n2633));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1729_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1796_3_lut (.I0(n2633), .I1(n2700), 
            .I2(n2643), .I3(GND_net), .O(n2732));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1796_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1838_23 (.CI(n12806), .I0(n2713), 
            .I1(VCC_net), .CO(n12807));
    SB_CARRY dti_counter_662_add_4_7 (.CI(n13010), .I0(n11526), .I1(dti_counter[5]), 
            .CO(n13011));
    SB_LUT4 encoder0_position_31__I_0_i1863_3_lut (.I0(n2732), .I1(n2799), 
            .I2(n2742), .I3(GND_net), .O(n2831));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1863_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_12_lut (.I0(GND_net), .I1(n2024), 
            .I2(VCC_net), .I3(n12648), .O(n2091)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_22_lut (.I0(GND_net), .I1(n2714), 
            .I2(VCC_net), .I3(n12805), .O(n2781)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dti_counter_662_add_4_6_lut (.I0(n15073), .I1(n11526), .I2(dti_counter[4]), 
            .I3(n13009), .O(n51)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_6_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_i1930_3_lut (.I0(n2831), .I1(n2898), 
            .I2(n2841), .I3(GND_net), .O(n2930));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1930_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1997_3_lut (.I0(n2930), .I1(n2997), 
            .I2(n2940), .I3(GND_net), .O(n3029));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1997_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_900_7_lut (.I0(GND_net), .I1(n1329), 
            .I2(GND_net), .I3(n12545), .O(n1396)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1369_12 (.CI(n12648), .I0(n2024), 
            .I1(VCC_net), .CO(n12649));
    SB_CARRY dti_counter_662_add_4_6 (.CI(n13009), .I0(n11526), .I1(dti_counter[4]), 
            .CO(n13010));
    SB_CARRY encoder0_position_31__I_0_add_1838_22 (.CI(n12805), .I0(n2714), 
            .I1(VCC_net), .CO(n12806));
    SB_LUT4 dti_counter_662_add_4_5_lut (.I0(n15074), .I1(n11526), .I2(dti_counter[3]), 
            .I3(n13008), .O(n52)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_5_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_i2064_3_lut (.I0(n3029), .I1(n3096), 
            .I2(n3039), .I3(GND_net), .O(n3128));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2064_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_900_8 (.CI(n12546), .I0(n1328), 
            .I1(VCC_net), .CO(n12547));
    SB_LUT4 encoder0_position_31__I_0_add_1369_11_lut (.I0(GND_net), .I1(n2025), 
            .I2(VCC_net), .I3(n12647), .O(n2092)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_21_lut (.I0(GND_net), .I1(n2715), 
            .I2(VCC_net), .I3(n12804), .O(n2782)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dti_counter_662_add_4_5 (.CI(n13008), .I0(n11526), .I1(dti_counter[3]), 
            .CO(n13009));
    SB_LUT4 encoder0_position_31__I_0_add_900_8_lut (.I0(GND_net), .I1(n1328), 
            .I2(VCC_net), .I3(n12546), .O(n1395)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_900_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1369_11 (.CI(n12647), .I0(n2025), 
            .I1(VCC_net), .CO(n12648));
    SB_CARRY encoder0_position_31__I_0_add_1838_21 (.CI(n12804), .I0(n2715), 
            .I1(VCC_net), .CO(n12805));
    SB_LUT4 i1_4_lut_adj_159 (.I0(n2519), .I1(n2517), .I2(n14576), .I3(n14574), 
            .O(n14117));
    defparam i1_4_lut_adj_159.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_900_9 (.CI(n12547), .I0(n1327), 
            .I1(VCC_net), .CO(n12548));
    SB_LUT4 encoder0_position_31__I_0_add_1369_10_lut (.I0(GND_net), .I1(n2026), 
            .I2(VCC_net), .I3(n12646), .O(n2093)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_20_lut (.I0(GND_net), .I1(n2716), 
            .I2(VCC_net), .I3(n12803), .O(n2783)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dti_counter_662_add_4_4_lut (.I0(n15075), .I1(n11526), .I2(dti_counter[2]), 
            .I3(n13007), .O(n53)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_4_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_662_add_4_4 (.CI(n13007), .I0(n11526), .I1(dti_counter[2]), 
            .CO(n13008));
    SB_CARRY encoder0_position_31__I_0_add_1369_10 (.CI(n12646), .I0(n2026), 
            .I1(VCC_net), .CO(n12647));
    SB_CARRY encoder0_position_31__I_0_add_1838_20 (.CI(n12803), .I0(n2716), 
            .I1(VCC_net), .CO(n12804));
    SB_LUT4 dti_counter_662_add_4_3_lut (.I0(n15076), .I1(n11526), .I2(dti_counter[1]), 
            .I3(n13006), .O(n54)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_3_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 encoder0_position_31__I_0_add_1369_9_lut (.I0(GND_net), .I1(n2027), 
            .I2(VCC_net), .I3(n12645), .O(n2094)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_19_lut (.I0(GND_net), .I1(n2717), 
            .I2(VCC_net), .I3(n12802), .O(n2784)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dti_counter_662_add_4_3 (.CI(n13006), .I0(n11526), .I1(dti_counter[1]), 
            .CO(n13007));
    SB_LUT4 encoder0_position_31__I_0_i2131_3_lut (.I0(n3128), .I1(n3195), 
            .I2(n3138), .I3(GND_net), .O(n3227));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2131_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1369_9 (.CI(n12645), .I0(n2027), 
            .I1(VCC_net), .CO(n12646));
    SB_CARRY encoder0_position_31__I_0_add_1838_19 (.CI(n12802), .I0(n2717), 
            .I1(VCC_net), .CO(n12803));
    SB_LUT4 encoder0_position_31__I_0_i1040_3_lut (.I0(n1525), .I1(n1592), 
            .I2(n1554), .I3(GND_net), .O(n1624_adj_604));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1040_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1107_3_lut (.I0(n1624_adj_604), .I1(n1691), 
            .I2(n1653), .I3(GND_net), .O(n1723));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1107_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_8_lut (.I0(GND_net), .I1(n2028), 
            .I2(VCC_net), .I3(n12644), .O(n2095)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_18_lut (.I0(GND_net), .I1(n2718), 
            .I2(VCC_net), .I3(n12801), .O(n2785)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dti_counter_662_add_4_2_lut (.I0(n15081), .I1(n1377), .I2(dti_counter[0]), 
            .I3(VCC_net), .O(n55)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_662_add_4_2_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1174_3_lut (.I0(n1723), .I1(n1790), 
            .I2(n1752), .I3(GND_net), .O(n1822));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1174_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY dti_counter_662_add_4_2 (.CI(VCC_net), .I0(n1377), .I1(dti_counter[0]), 
            .CO(n13006));
    SB_LUT4 encoder0_position_31__I_0_i1241_3_lut (.I0(n1822), .I1(n1889), 
            .I2(n1851), .I3(GND_net), .O(n1921));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1241_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1308_3_lut (.I0(n1921), .I1(n1988), 
            .I2(n1950), .I3(GND_net), .O(n2020));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1308_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1375_3_lut (.I0(n2020), .I1(n2087), 
            .I2(n2049), .I3(GND_net), .O(n2119));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1375_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1442_3_lut (.I0(n2119), .I1(n2186), 
            .I2(n2148), .I3(GND_net), .O(n2218));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1442_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1369_8 (.CI(n12644), .I0(n2028), 
            .I1(VCC_net), .CO(n12645));
    SB_CARRY encoder0_position_31__I_0_add_1838_18 (.CI(n12801), .I0(n2718), 
            .I1(VCC_net), .CO(n12802));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_33_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n2_adj_620), .I3(n13005), .O(n2)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1369_7_lut (.I0(GND_net), .I1(n2029), 
            .I2(GND_net), .I3(n12643), .O(n2096)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_17_lut (.I0(GND_net), .I1(n2719), 
            .I2(VCC_net), .I3(n12800), .O(n2786)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_32_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n3_adj_621), .I3(n13004), .O(n3)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1509_3_lut (.I0(n2218), .I1(n2285), 
            .I2(n2247), .I3(GND_net), .O(n2317));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1509_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1576_3_lut (.I0(n2317), .I1(n2384), 
            .I2(n2346), .I3(GND_net), .O(n2416));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1576_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_160 (.I0(n2516), .I1(n14646), .I2(n14184), .I3(n12063), 
            .O(n14188));
    defparam i1_4_lut_adj_160.LUT_INIT = 16'hfefa;
    SB_CARRY encoder0_position_31__I_0_add_1369_7 (.CI(n12643), .I0(n2029), 
            .I1(GND_net), .CO(n12644));
    SB_CARRY encoder0_position_31__I_0_add_1838_17 (.CI(n12800), .I0(n2719), 
            .I1(VCC_net), .CO(n12801));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_32 (.CI(n13004), 
            .I0(GND_net), .I1(n3_adj_621), .CO(n13005));
    SB_LUT4 encoder0_position_31__I_0_i1728_3_lut (.I0(n2533), .I1(n2600), 
            .I2(n2544), .I3(GND_net), .O(n2632));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1728_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_565_3_lut (.I0(GND_net), .I1(n833), 
            .I2(VCC_net), .I3(n12501), .O(n900)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_565_3 (.CI(n12501), .I0(n833), 
            .I1(VCC_net), .CO(n12502));
    SB_LUT4 encoder0_position_31__I_0_add_1369_6_lut (.I0(GND_net), .I1(n2030), 
            .I2(GND_net), .I3(n12642), .O(n2097)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_16_lut (.I0(GND_net), .I1(n2720), 
            .I2(VCC_net), .I3(n12799), .O(n2787)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1795_3_lut (.I0(n2632), .I1(n2699), 
            .I2(n2643), .I3(GND_net), .O(n2731));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1795_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1862_3_lut (.I0(n2731), .I1(n2798), 
            .I2(n2742), .I3(GND_net), .O(n2830));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1862_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_31_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n4_adj_622), .I3(n13003), .O(n4)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1369_6 (.CI(n12642), .I0(n2030), 
            .I1(GND_net), .CO(n12643));
    SB_CARRY encoder0_position_31__I_0_add_1838_16 (.CI(n12799), .I0(n2720), 
            .I1(VCC_net), .CO(n12800));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_31 (.CI(n13003), 
            .I0(GND_net), .I1(n4_adj_622), .CO(n13004));
    SB_LUT4 encoder0_position_31__I_0_i1929_3_lut (.I0(n2830), .I1(n2897), 
            .I2(n2841), .I3(GND_net), .O(n2929));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1929_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1996_3_lut (.I0(n2929), .I1(n2996), 
            .I2(n2940), .I3(GND_net), .O(n3028));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1996_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10076_4_lut (.I0(n315), .I1(n2931), .I2(n2932), .I3(n2933), 
            .O(n12053));
    defparam i10076_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 encoder0_position_31__I_0_add_1369_5_lut (.I0(GND_net), .I1(n2031), 
            .I2(VCC_net), .I3(n12641), .O(n2098)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_15_lut (.I0(GND_net), .I1(n2721), 
            .I2(VCC_net), .I3(n12798), .O(n2788)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_30_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n5_adj_623), .I3(n13002), .O(n5)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2063_3_lut (.I0(n3028), .I1(n3095), 
            .I2(n3039), .I3(GND_net), .O(n3127));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2063_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_161 (.I0(n2916), .I1(n2917), .I2(n14216), .I3(n14212), 
            .O(n14222));
    defparam i1_4_lut_adj_161.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_565_2_lut (.I0(GND_net), .I1(n41), 
            .I2(GND_net), .I3(VCC_net), .O(n901)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_565_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1369_5 (.CI(n12641), .I0(n2031), 
            .I1(VCC_net), .CO(n12642));
    SB_CARRY encoder0_position_31__I_0_add_1838_15 (.CI(n12798), .I0(n2721), 
            .I1(VCC_net), .CO(n12799));
    SB_LUT4 encoder0_position_31__I_0_i2130_3_lut (.I0(n3127), .I1(n3194), 
            .I2(n3138), .I3(GND_net), .O(n3226));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2130_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1727_3_lut (.I0(n2532), .I1(n2599), 
            .I2(n2544), .I3(GND_net), .O(n2631));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1727_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_30 (.CI(n13002), 
            .I0(GND_net), .I1(n5_adj_623), .CO(n13003));
    SB_LUT4 encoder0_position_31__I_0_i1794_3_lut (.I0(n2631), .I1(n2698), 
            .I2(n2643), .I3(GND_net), .O(n2730));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1794_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_565_2 (.CI(VCC_net), .I0(n41), 
            .I1(GND_net), .CO(n12501));
    SB_LUT4 encoder0_position_31__I_0_add_1369_4_lut (.I0(GND_net), .I1(n2032), 
            .I2(GND_net), .I3(n12640), .O(n2099)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_14_lut (.I0(GND_net), .I1(n2722), 
            .I2(VCC_net), .I3(n12797), .O(n2789)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_29_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n6_adj_624), .I3(n13001), .O(n6)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1861_3_lut (.I0(n2730), .I1(n2797), 
            .I2(n2742), .I3(GND_net), .O(n2829));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1861_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1928_3_lut (.I0(n2829), .I1(n2896), 
            .I2(n2841), .I3(GND_net), .O(n2928));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1928_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1995_3_lut (.I0(n2928), .I1(n2995), 
            .I2(n2940), .I3(GND_net), .O(n3027));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1995_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2062_3_lut (.I0(n3027), .I1(n3094), 
            .I2(n3039), .I3(GND_net), .O(n3126));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2062_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2129_3_lut (.I0(n3126), .I1(n3193), 
            .I2(n3138), .I3(GND_net), .O(n3225));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2129_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1369_4 (.CI(n12640), .I0(n2032), 
            .I1(GND_net), .CO(n12641));
    SB_CARRY encoder0_position_31__I_0_add_1838_14 (.CI(n12797), .I0(n2722), 
            .I1(VCC_net), .CO(n12798));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_29 (.CI(n13001), 
            .I0(GND_net), .I1(n6_adj_624), .CO(n13002));
    SB_LUT4 encoder0_position_31__I_0_i1726_3_lut (.I0(n2531), .I1(n2598), 
            .I2(n2544), .I3(GND_net), .O(n2630));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1726_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1793_3_lut (.I0(n2630), .I1(n2697), 
            .I2(n2643), .I3(GND_net), .O(n2729));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1793_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1860_3_lut (.I0(n2729), .I1(n2796), 
            .I2(n2742), .I3(GND_net), .O(n2828));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1860_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_28_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n7_adj_625), .I3(n13000), .O(n7)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1927_3_lut (.I0(n2828), .I1(n2895), 
            .I2(n2841), .I3(GND_net), .O(n2927));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1927_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1838_13_lut (.I0(GND_net), .I1(n2723), 
            .I2(VCC_net), .I3(n12796), .O(n2790)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_28 (.CI(n13000), 
            .I0(GND_net), .I1(n7_adj_625), .CO(n13001));
    SB_LUT4 encoder0_position_31__I_0_i1994_3_lut (.I0(n2927), .I1(n2994), 
            .I2(n2940), .I3(GND_net), .O(n3026));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1994_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2061_3_lut (.I0(n3026), .I1(n3093), 
            .I2(n3039), .I3(GND_net), .O(n3125));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2061_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2128_3_lut (.I0(n3125), .I1(n3192), 
            .I2(n3138), .I3(GND_net), .O(n3224));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2128_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_3_lut (.I0(GND_net), .I1(n2033), 
            .I2(VCC_net), .I3(n12639), .O(n2100)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_13 (.CI(n12796), .I0(n2723), 
            .I1(VCC_net), .CO(n12797));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_27_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n8_adj_626), .I3(n12999), .O(n8)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_741_7_lut (.I0(GND_net), .I1(n402), .I2(GND_net), .I3(n12500), 
            .O(n2561)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_741_6_lut (.I0(GND_net), .I1(n403), .I2(GND_net), .I3(n12499), 
            .O(n2562)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1369_3 (.CI(n12639), .I0(n2033), 
            .I1(VCC_net), .CO(n12640));
    SB_LUT4 encoder0_position_31__I_0_add_1838_12_lut (.I0(GND_net), .I1(n2724), 
            .I2(VCC_net), .I3(n12795), .O(n2791)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_27 (.CI(n12999), 
            .I0(GND_net), .I1(n8_adj_626), .CO(n13000));
    SB_LUT4 encoder0_position_31__I_0_i1725_3_lut (.I0(n2530), .I1(n2597), 
            .I2(n2544), .I3(GND_net), .O(n2629));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1725_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1792_3_lut (.I0(n2629), .I1(n2696), 
            .I2(n2643), .I3(GND_net), .O(n2728));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1792_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1838_12 (.CI(n12795), .I0(n2724), 
            .I1(VCC_net), .CO(n12796));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_26_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n9_adj_627), .I3(n12998), .O(n9)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1859_3_lut (.I0(n2728), .I1(n2795), 
            .I2(n2742), .I3(GND_net), .O(n2827));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1859_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1926_3_lut (.I0(n2827), .I1(n2894), 
            .I2(n2841), .I3(GND_net), .O(n2926));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1926_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1369_2_lut (.I0(GND_net), .I1(n306), 
            .I2(GND_net), .I3(VCC_net), .O(n2101)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1369_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1838_11_lut (.I0(GND_net), .I1(n2725), 
            .I2(VCC_net), .I3(n12794), .O(n2792)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_26 (.CI(n12998), 
            .I0(GND_net), .I1(n9_adj_627), .CO(n12999));
    SB_CARRY add_741_6 (.CI(n12499), .I0(n403), .I1(GND_net), .CO(n12500));
    SB_CARRY encoder0_position_31__I_0_add_1369_2 (.CI(VCC_net), .I0(n306), 
            .I1(GND_net), .CO(n12639));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_25_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n10_adj_628), .I3(n12997), .O(n10)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_11 (.CI(n12794), .I0(n2725), 
            .I1(VCC_net), .CO(n12795));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_25 (.CI(n12997), 
            .I0(GND_net), .I1(n10_adj_628), .CO(n12998));
    SB_LUT4 i1_4_lut_adj_162 (.I0(n2929), .I1(n14222), .I2(n12053), .I3(n2930), 
            .O(n14224));
    defparam i1_4_lut_adj_162.LUT_INIT = 16'heccc;
    SB_LUT4 encoder0_position_31__I_0_add_1302_19_lut (.I0(n15674), .I1(n1917), 
            .I2(VCC_net), .I3(n12638), .O(n2016)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1838_10_lut (.I0(GND_net), .I1(n2726), 
            .I2(VCC_net), .I3(n12793), .O(n2793)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_24_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n11_adj_629), .I3(n12996), .O(n11)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1993_3_lut (.I0(n2926), .I1(n2993), 
            .I2(n2940), .I3(GND_net), .O(n3025));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1993_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2060_3_lut (.I0(n3025), .I1(n3092), 
            .I2(n3039), .I3(GND_net), .O(n3124));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2060_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2127_3_lut (.I0(n3124), .I1(n3191), 
            .I2(n3138), .I3(GND_net), .O(n3223));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2127_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_741_5_lut (.I0(GND_net), .I1(n404), .I2(VCC_net), .I3(n12498), 
            .O(n2563)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1302_18_lut (.I0(GND_net), .I1(n1918), 
            .I2(VCC_net), .I3(n12637), .O(n1985)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_10 (.CI(n12793), .I0(n2726), 
            .I1(VCC_net), .CO(n12794));
    SB_CARRY add_741_5 (.CI(n12498), .I0(n404), .I1(VCC_net), .CO(n12499));
    SB_LUT4 add_741_4_lut (.I0(GND_net), .I1(n38), .I2(GND_net), .I3(n12497), 
            .O(n2564)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_18 (.CI(n12637), .I0(n1918), 
            .I1(VCC_net), .CO(n12638));
    SB_LUT4 encoder0_position_31__I_0_add_1838_9_lut (.I0(GND_net), .I1(n2727), 
            .I2(VCC_net), .I3(n12792), .O(n2794)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_24 (.CI(n12996), 
            .I0(GND_net), .I1(n11_adj_629), .CO(n12997));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_23_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n12_adj_630), .I3(n12995), .O(n12)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1724_3_lut (.I0(n2529), .I1(n2596), 
            .I2(n2544), .I3(GND_net), .O(n2628));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1724_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1791_3_lut (.I0(n2628), .I1(n2695), 
            .I2(n2643), .I3(GND_net), .O(n2727));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1791_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_17_lut (.I0(GND_net), .I1(n1919), 
            .I2(VCC_net), .I3(n12636), .O(n1986)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_9 (.CI(n12792), .I0(n2727), 
            .I1(VCC_net), .CO(n12793));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_23 (.CI(n12995), 
            .I0(GND_net), .I1(n12_adj_630), .CO(n12996));
    SB_CARRY encoder0_position_31__I_0_add_1302_17 (.CI(n12636), .I0(n1919), 
            .I1(VCC_net), .CO(n12637));
    SB_LUT4 encoder0_position_31__I_0_add_1838_8_lut (.I0(GND_net), .I1(n2728), 
            .I2(VCC_net), .I3(n12791), .O(n2795)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_22_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n13_adj_631), .I3(n12994), .O(n13)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1858_3_lut (.I0(n2727), .I1(n2794), 
            .I2(n2742), .I3(GND_net), .O(n2826));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1858_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_16_lut (.I0(GND_net), .I1(n1920), 
            .I2(VCC_net), .I3(n12635), .O(n1987)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_8 (.CI(n12791), .I0(n2728), 
            .I1(VCC_net), .CO(n12792));
    SB_CARRY encoder0_position_31__I_0_add_1302_16 (.CI(n12635), .I0(n1920), 
            .I1(VCC_net), .CO(n12636));
    SB_LUT4 encoder0_position_31__I_0_add_1838_7_lut (.I0(GND_net), .I1(n2729), 
            .I2(GND_net), .I3(n12790), .O(n2796)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_22 (.CI(n12994), 
            .I0(GND_net), .I1(n13_adj_631), .CO(n12995));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_21_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n14_adj_632), .I3(n12993), .O(n14)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1302_15_lut (.I0(GND_net), .I1(n1921), 
            .I2(VCC_net), .I3(n12634), .O(n1988)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_7 (.CI(n12790), .I0(n2729), 
            .I1(GND_net), .CO(n12791));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_21 (.CI(n12993), 
            .I0(GND_net), .I1(n14_adj_632), .CO(n12994));
    SB_CARRY encoder0_position_31__I_0_add_1302_15 (.CI(n12634), .I0(n1921), 
            .I1(VCC_net), .CO(n12635));
    SB_LUT4 encoder0_position_31__I_0_add_1838_6_lut (.I0(GND_net), .I1(n2730), 
            .I2(GND_net), .I3(n12789), .O(n2797)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_20_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n15_adj_633), .I3(n12992), .O(n15)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1925_3_lut (.I0(n2826), .I1(n2893), 
            .I2(n2841), .I3(GND_net), .O(n2925));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1925_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1992_3_lut (.I0(n2925), .I1(n2992), 
            .I2(n2940), .I3(GND_net), .O(n3024));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1992_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2059_3_lut (.I0(n3024), .I1(n3091), 
            .I2(n3039), .I3(GND_net), .O(n3123));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2059_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_14_lut (.I0(GND_net), .I1(n1922), 
            .I2(VCC_net), .I3(n12633), .O(n1989)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_6 (.CI(n12789), .I0(n2730), 
            .I1(GND_net), .CO(n12790));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_20 (.CI(n12992), 
            .I0(GND_net), .I1(n15_adj_633), .CO(n12993));
    SB_LUT4 encoder0_position_31__I_0_i2126_3_lut (.I0(n3123), .I1(n3190), 
            .I2(n3138), .I3(GND_net), .O(n3222));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2126_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_163 (.I0(n2913), .I1(n2914), .I2(n14224), .I3(n2915), 
            .O(n14230));
    defparam i1_4_lut_adj_163.LUT_INIT = 16'hfffe;
    SB_CARRY add_741_4 (.CI(n12497), .I0(n38), .I1(GND_net), .CO(n12498));
    SB_CARRY encoder0_position_31__I_0_add_1302_14 (.CI(n12633), .I0(n1922), 
            .I1(VCC_net), .CO(n12634));
    SB_LUT4 encoder0_position_31__I_0_add_1838_5_lut (.I0(GND_net), .I1(n2731), 
            .I2(VCC_net), .I3(n12788), .O(n2798)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_19_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n16_adj_634), .I3(n12991), .O(n16)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1302_13_lut (.I0(GND_net), .I1(n1923), 
            .I2(VCC_net), .I3(n12632), .O(n1990)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_5 (.CI(n12788), .I0(n2731), 
            .I1(VCC_net), .CO(n12789));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_19 (.CI(n12991), 
            .I0(GND_net), .I1(n16_adj_634), .CO(n12992));
    SB_CARRY encoder0_position_31__I_0_add_1302_13 (.CI(n12632), .I0(n1923), 
            .I1(VCC_net), .CO(n12633));
    SB_LUT4 encoder0_position_31__I_0_add_1838_4_lut (.I0(GND_net), .I1(n2732), 
            .I2(GND_net), .I3(n12787), .O(n2799)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_18_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n17_adj_635), .I3(n12990), .O(n17)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1723_3_lut (.I0(n2528), .I1(n2595), 
            .I2(n2544), .I3(GND_net), .O(n2627));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1723_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1790_3_lut (.I0(n2627), .I1(n2694), 
            .I2(n2643), .I3(GND_net), .O(n2726));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1790_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_741_3_lut (.I0(GND_net), .I1(n39), .I2(VCC_net), .I3(n12496), 
            .O(n2565)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_741_3 (.CI(n12496), .I0(n39), .I1(VCC_net), .CO(n12497));
    SB_LUT4 encoder0_position_31__I_0_add_1302_12_lut (.I0(GND_net), .I1(n1924), 
            .I2(VCC_net), .I3(n12631), .O(n1991)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_4 (.CI(n12787), .I0(n2732), 
            .I1(GND_net), .CO(n12788));
    SB_LUT4 i12405_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[3]), .O(n15074));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12405_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_18 (.CI(n12990), 
            .I0(GND_net), .I1(n17_adj_635), .CO(n12991));
    SB_LUT4 i12404_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[4]), .O(n15073));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12404_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 encoder0_position_31__I_0_i1857_3_lut (.I0(n2726), .I1(n2793), 
            .I2(n2742), .I3(GND_net), .O(n2825));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1857_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_741_2_lut (.I0(GND_net), .I1(n40), .I2(GND_net), .I3(VCC_net), 
            .O(n2566)) /* synthesis syn_instantiated=1 */ ;
    defparam add_741_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_12 (.CI(n12631), .I0(n1924), 
            .I1(VCC_net), .CO(n12632));
    SB_LUT4 encoder0_position_31__I_0_add_1838_3_lut (.I0(GND_net), .I1(n2733), 
            .I2(VCC_net), .I3(n12786), .O(n2800)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_17_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n18_adj_636), .I3(n12989), .O(n18)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1924_3_lut (.I0(n2825), .I1(n2892), 
            .I2(n2841), .I3(GND_net), .O(n2924));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1924_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1991_3_lut (.I0(n2924), .I1(n2991), 
            .I2(n2940), .I3(GND_net), .O(n3023));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1991_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2058_3_lut (.I0(n3023), .I1(n3090), 
            .I2(n3039), .I3(GND_net), .O(n3122));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2058_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_11_lut (.I0(GND_net), .I1(n1925), 
            .I2(VCC_net), .I3(n12630), .O(n1992)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1838_3 (.CI(n12786), .I0(n2733), 
            .I1(VCC_net), .CO(n12787));
    SB_LUT4 encoder0_position_31__I_0_i2125_3_lut (.I0(n3122), .I1(n3189), 
            .I2(n3138), .I3(GND_net), .O(n3221));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2125_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i9_3_lut (.I0(encoder0_position[8]), 
            .I1(n25), .I2(encoder0_position[31]), .I3(GND_net), .O(n311));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_17 (.CI(n12989), 
            .I0(GND_net), .I1(n18_adj_636), .CO(n12990));
    SB_LUT4 encoder0_position_31__I_0_i1722_3_lut (.I0(n2527), .I1(n2594), 
            .I2(n2544), .I3(GND_net), .O(n2626));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1722_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1789_3_lut (.I0(n2626), .I1(n2693), 
            .I2(n2643), .I3(GND_net), .O(n2725));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1789_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1856_3_lut (.I0(n2725), .I1(n2792), 
            .I2(n2742), .I3(GND_net), .O(n2824));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1856_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_16_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n19_adj_637), .I3(n12988), .O(n19)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1923_3_lut (.I0(n2824), .I1(n2891), 
            .I2(n2841), .I3(GND_net), .O(n2923));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1923_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1838_2_lut (.I0(GND_net), .I1(n313), 
            .I2(GND_net), .I3(VCC_net), .O(n2801)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1838_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_16 (.CI(n12988), 
            .I0(GND_net), .I1(n19_adj_637), .CO(n12989));
    SB_LUT4 encoder0_position_31__I_0_i1990_3_lut (.I0(n2923), .I1(n2990), 
            .I2(n2940), .I3(GND_net), .O(n3022));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1990_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2057_3_lut (.I0(n3022), .I1(n3089), 
            .I2(n3039), .I3(GND_net), .O(n3121));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2057_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2124_3_lut (.I0(n3121), .I1(n3188), 
            .I2(n3138), .I3(GND_net), .O(n3220));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2124_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1302_11 (.CI(n12630), .I0(n1925), 
            .I1(VCC_net), .CO(n12631));
    SB_CARRY encoder0_position_31__I_0_add_1838_2 (.CI(VCC_net), .I0(n313), 
            .I1(GND_net), .CO(n12786));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_15_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n20_adj_638), .I3(n12987), .O(n20)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i10_3_lut (.I0(encoder0_position[9]), 
            .I1(n24), .I2(encoder0_position[31]), .I3(GND_net), .O(n310));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1661_3_lut (.I0(n310), .I1(n2501), 
            .I2(n2445), .I3(GND_net), .O(n2533));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1661_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_164 (.I0(n2910), .I1(n2911), .I2(n2912), .I3(n14230), 
            .O(n14236));
    defparam i1_4_lut_adj_164.LUT_INIT = 16'hfffe;
    SB_CARRY add_741_2 (.CI(VCC_net), .I0(n40), .I1(GND_net), .CO(n12496));
    SB_LUT4 encoder0_position_31__I_0_i1721_3_lut (.I0(n2526), .I1(n2593), 
            .I2(n2544), .I3(GND_net), .O(n2625));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1721_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_10_lut (.I0(GND_net), .I1(n1926), 
            .I2(VCC_net), .I3(n12629), .O(n1993)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_26_lut (.I0(GND_net), .I1(n2610), 
            .I2(VCC_net), .I3(n12785), .O(n2677)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_15 (.CI(n12987), 
            .I0(GND_net), .I1(n20_adj_638), .CO(n12988));
    SB_LUT4 encoder0_position_31__I_0_add_1771_25_lut (.I0(GND_net), .I1(n2611), 
            .I2(VCC_net), .I3(n12784), .O(n2678)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_14_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n21_adj_639), .I3(n12986), .O(n21)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1788_3_lut (.I0(n2625), .I1(n2692), 
            .I2(n2643), .I3(GND_net), .O(n2724));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1788_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1302_10 (.CI(n12629), .I0(n1926), 
            .I1(VCC_net), .CO(n12630));
    SB_CARRY encoder0_position_31__I_0_add_1771_25 (.CI(n12784), .I0(n2611), 
            .I1(VCC_net), .CO(n12785));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_14 (.CI(n12986), 
            .I0(GND_net), .I1(n21_adj_639), .CO(n12987));
    SB_LUT4 encoder0_position_31__I_0_i1855_3_lut (.I0(n2724), .I1(n2791), 
            .I2(n2742), .I3(GND_net), .O(n2823));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1855_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1922_3_lut (.I0(n2823), .I1(n2890), 
            .I2(n2841), .I3(GND_net), .O(n2922));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1922_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1989_3_lut (.I0(n2922), .I1(n2989), 
            .I2(n2940), .I3(GND_net), .O(n3021));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1989_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_25_lut (.I0(GND_net), 
            .I1(encoder0_position_target[23]), .I2(n2_adj_574), .I3(n12495), 
            .O(duty_23__N_51[23])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1302_9_lut (.I0(GND_net), .I1(n1927), 
            .I2(VCC_net), .I3(n12628), .O(n1994)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_13_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n22_adj_640), .I3(n12985), .O(n22)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2056_3_lut (.I0(n3021), .I1(n3088), 
            .I2(n3039), .I3(GND_net), .O(n3120));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2056_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1771_24_lut (.I0(GND_net), .I1(n2612), 
            .I2(VCC_net), .I3(n12783), .O(n2679)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_13 (.CI(n12985), 
            .I0(GND_net), .I1(n22_adj_640), .CO(n12986));
    SB_LUT4 encoder0_position_31__I_0_i2123_3_lut (.I0(n3120), .I1(n3187), 
            .I2(n3138), .I3(GND_net), .O(n3219));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2123_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i11_3_lut (.I0(encoder0_position[10]), 
            .I1(n23), .I2(encoder0_position[31]), .I3(GND_net), .O(n309));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_24_lut (.I0(GND_net), 
            .I1(encoder0_position_target[22]), .I2(n3_adj_573), .I3(n12494), 
            .O(duty_23__N_51[22])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_9 (.CI(n12628), .I0(n1927), 
            .I1(VCC_net), .CO(n12629));
    SB_CARRY encoder0_position_31__I_0_add_1771_24 (.CI(n12783), .I0(n2612), 
            .I1(VCC_net), .CO(n12784));
    SB_LUT4 encoder0_position_31__I_0_i1593_3_lut (.I0(n309), .I1(n2401), 
            .I2(n2346), .I3(GND_net), .O(n2433));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1593_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_12_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n23_adj_641), .I3(n12984), .O(n23)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1660_3_lut (.I0(n2433), .I1(n2500), 
            .I2(n2445), .I3(GND_net), .O(n2532));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1660_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1720_3_lut (.I0(n2525), .I1(n2592), 
            .I2(n2544), .I3(GND_net), .O(n2624));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1720_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_24 (.CI(n12494), .I0(encoder0_position_target[22]), 
            .I1(n3_adj_573), .CO(n12495));
    SB_LUT4 encoder0_position_31__I_0_add_1302_8_lut (.I0(GND_net), .I1(n1928), 
            .I2(VCC_net), .I3(n12627), .O(n1995)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_23_lut (.I0(GND_net), .I1(n2613), 
            .I2(VCC_net), .I3(n12782), .O(n2680)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12658_4_lut (.I0(n2908), .I1(n2907), .I2(n2909), .I3(n14236), 
            .O(n2940));
    defparam i12658_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_23_lut (.I0(GND_net), 
            .I1(encoder0_position_target[21]), .I2(n4_adj_572), .I3(n12493), 
            .O(duty_23__N_51[21])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_8 (.CI(n12627), .I0(n1928), 
            .I1(VCC_net), .CO(n12628));
    SB_CARRY encoder0_position_31__I_0_add_1771_23 (.CI(n12782), .I0(n2613), 
            .I1(VCC_net), .CO(n12783));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_12 (.CI(n12984), 
            .I0(GND_net), .I1(n23_adj_641), .CO(n12985));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_11_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n24_adj_642), .I3(n12983), .O(n24)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1787_3_lut (.I0(n2624), .I1(n2691), 
            .I2(n2643), .I3(GND_net), .O(n2723));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1787_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1854_3_lut (.I0(n2723), .I1(n2790), 
            .I2(n2742), .I3(GND_net), .O(n2822));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1854_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1921_3_lut (.I0(n2822), .I1(n2889), 
            .I2(n2841), .I3(GND_net), .O(n2921));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1921_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1988_3_lut (.I0(n2921), .I1(n2988), 
            .I2(n2940), .I3(GND_net), .O(n3020));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1988_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_7_lut (.I0(GND_net), .I1(n1929), 
            .I2(GND_net), .I3(n12626), .O(n1996)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_22_lut (.I0(GND_net), .I1(n2614), 
            .I2(VCC_net), .I3(n12781), .O(n2681)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_11 (.CI(n12983), 
            .I0(GND_net), .I1(n24_adj_642), .CO(n12984));
    SB_CARRY encoder0_position_31__I_0_add_1302_7 (.CI(n12626), .I0(n1929), 
            .I1(GND_net), .CO(n12627));
    SB_CARRY encoder0_position_31__I_0_add_1771_22 (.CI(n12781), .I0(n2614), 
            .I1(VCC_net), .CO(n12782));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_10_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n25_adj_643), .I3(n12982), .O(n25)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2055_3_lut (.I0(n3020), .I1(n3087), 
            .I2(n3039), .I3(GND_net), .O(n3119));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2055_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_6_lut (.I0(GND_net), .I1(n1930), 
            .I2(GND_net), .I3(n12625), .O(n1997)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_21_lut (.I0(GND_net), .I1(n2615), 
            .I2(VCC_net), .I3(n12780), .O(n2682)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_6 (.CI(n12625), .I0(n1930), 
            .I1(GND_net), .CO(n12626));
    SB_CARRY encoder0_position_31__I_0_add_1771_21 (.CI(n12780), .I0(n2615), 
            .I1(VCC_net), .CO(n12781));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_10 (.CI(n12982), 
            .I0(GND_net), .I1(n25_adj_643), .CO(n12983));
    SB_LUT4 encoder0_position_31__I_0_i2122_3_lut (.I0(n3119), .I1(n3186), 
            .I2(n3138), .I3(GND_net), .O(n3218));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2122_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_9_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n26_adj_644), .I3(n12981), .O(n26)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i12_3_lut (.I0(encoder0_position[11]), 
            .I1(n22), .I2(encoder0_position[31]), .I3(GND_net), .O(n308));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1525_3_lut (.I0(n308), .I1(n2301), 
            .I2(n2247), .I3(GND_net), .O(n2333));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1525_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1592_3_lut (.I0(n2333), .I1(n2400), 
            .I2(n2346), .I3(GND_net), .O(n2432));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1592_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_5_lut (.I0(GND_net), .I1(n1931), 
            .I2(VCC_net), .I3(n12624), .O(n1998)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_20_lut (.I0(GND_net), .I1(n2616), 
            .I2(VCC_net), .I3(n12779), .O(n2683)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_9 (.CI(n12981), 
            .I0(GND_net), .I1(n26_adj_644), .CO(n12982));
    SB_LUT4 i12403_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[5]), .O(n15072));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12403_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_CARRY encoder0_position_31__I_0_add_1302_5 (.CI(n12624), .I0(n1931), 
            .I1(VCC_net), .CO(n12625));
    SB_CARRY encoder0_position_31__I_0_add_1771_20 (.CI(n12779), .I0(n2616), 
            .I1(VCC_net), .CO(n12780));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_8_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n27_adj_645), .I3(n12980), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1659_3_lut (.I0(n2432), .I1(n2499), 
            .I2(n2445), .I3(GND_net), .O(n2531));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1659_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1719_3_lut (.I0(n2524), .I1(n2591), 
            .I2(n2544), .I3(GND_net), .O(n2623));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1719_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1786_3_lut (.I0(n2623), .I1(n2690), 
            .I2(n2643), .I3(GND_net), .O(n2722));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1786_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1302_4_lut (.I0(GND_net), .I1(n1932), 
            .I2(GND_net), .I3(n12623), .O(n1999)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_19_lut (.I0(GND_net), .I1(n2617), 
            .I2(VCC_net), .I3(n12778), .O(n2684)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_8 (.CI(n12980), 
            .I0(GND_net), .I1(n27_adj_645), .CO(n12981));
    SB_LUT4 encoder0_position_31__I_0_i1853_3_lut (.I0(n2722), .I1(n2789), 
            .I2(n2742), .I3(GND_net), .O(n2821));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1853_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_23 (.CI(n12493), .I0(encoder0_position_target[21]), 
            .I1(n4_adj_572), .CO(n12494));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_22_lut (.I0(GND_net), 
            .I1(encoder0_position_target[20]), .I2(n5_adj_571), .I3(n12492), 
            .O(duty_23__N_51[20])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1302_4 (.CI(n12623), .I0(n1932), 
            .I1(GND_net), .CO(n12624));
    SB_CARRY encoder0_position_31__I_0_add_1771_19 (.CI(n12778), .I0(n2617), 
            .I1(VCC_net), .CO(n12779));
    SB_LUT4 encoder0_position_31__I_0_i1920_3_lut (.I0(n2821), .I1(n2888), 
            .I2(n2841), .I3(GND_net), .O(n2920));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1920_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_7_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n28_adj_646), .I3(n12979), .O(n28)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1302_3_lut (.I0(GND_net), .I1(n1933), 
            .I2(VCC_net), .I3(n12622), .O(n2000)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_18_lut (.I0(GND_net), .I1(n2618), 
            .I2(VCC_net), .I3(n12777), .O(n2685)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_7 (.CI(n12979), 
            .I0(GND_net), .I1(n28_adj_646), .CO(n12980));
    SB_LUT4 encoder0_position_31__I_0_i1987_3_lut (.I0(n2920), .I1(n2987), 
            .I2(n2940), .I3(GND_net), .O(n3019));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1987_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1302_3 (.CI(n12622), .I0(n1933), 
            .I1(VCC_net), .CO(n12623));
    SB_CARRY encoder0_position_31__I_0_add_1771_18 (.CI(n12777), .I0(n2618), 
            .I1(VCC_net), .CO(n12778));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_6_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n29_adj_647), .I3(n12978), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2054_3_lut (.I0(n3019), .I1(n3086), 
            .I2(n3039), .I3(GND_net), .O(n3118));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2054_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2121_3_lut (.I0(n3118), .I1(n3185), 
            .I2(n3138), .I3(GND_net), .O(n3217));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2121_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1718_3_lut (.I0(n2523), .I1(n2590), 
            .I2(n2544), .I3(GND_net), .O(n2622));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1718_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1785_3_lut (.I0(n2622), .I1(n2689), 
            .I2(n2643), .I3(GND_net), .O(n2721));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1785_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1852_3_lut (.I0(n2721), .I1(n2788), 
            .I2(n2742), .I3(GND_net), .O(n2820));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1852_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1910_3_lut (.I0(n2811), .I1(n2878), 
            .I2(n2841), .I3(GND_net), .O(n2910));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1910_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_22 (.CI(n12492), .I0(encoder0_position_target[20]), 
            .I1(n5_adj_571), .CO(n12493));
    SB_LUT4 encoder0_position_31__I_0_add_1302_2_lut (.I0(GND_net), .I1(n305), 
            .I2(GND_net), .I3(VCC_net), .O(n2001)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1302_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_17_lut (.I0(GND_net), .I1(n2619), 
            .I2(VCC_net), .I3(n12776), .O(n2686)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_6 (.CI(n12978), 
            .I0(GND_net), .I1(n29_adj_647), .CO(n12979));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_21_lut (.I0(GND_net), 
            .I1(encoder0_position_target[19]), .I2(n6_adj_570), .I3(n12491), 
            .O(duty_23__N_51[19])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_21 (.CI(n12491), .I0(encoder0_position_target[19]), 
            .I1(n6_adj_570), .CO(n12492));
    SB_CARRY encoder0_position_31__I_0_add_1302_2 (.CI(VCC_net), .I0(n305), 
            .I1(GND_net), .CO(n12622));
    SB_CARRY encoder0_position_31__I_0_add_1771_17 (.CI(n12776), .I0(n2619), 
            .I1(VCC_net), .CO(n12777));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_5_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n30_adj_648), .I3(n12977), .O(n30)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1919_3_lut (.I0(n2820), .I1(n2887), 
            .I2(n2841), .I3(GND_net), .O(n2919));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1919_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1235_18_lut (.I0(GND_net), .I1(n1818), 
            .I2(VCC_net), .I3(n12621), .O(n1885)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_16_lut (.I0(GND_net), .I1(n2620), 
            .I2(VCC_net), .I3(n12775), .O(n2687)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_5 (.CI(n12977), 
            .I0(GND_net), .I1(n30_adj_648), .CO(n12978));
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_4_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n31_adj_649), .I3(n12976), .O(n31)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1986_3_lut (.I0(n2919), .I1(n2986), 
            .I2(n2940), .I3(GND_net), .O(n3018));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1986_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1771_16 (.CI(n12775), .I0(n2620), 
            .I1(VCC_net), .CO(n12776));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_4 (.CI(n12976), 
            .I0(GND_net), .I1(n31_adj_649), .CO(n12977));
    SB_LUT4 encoder0_position_31__I_0_i2053_3_lut (.I0(n3018), .I1(n3085), 
            .I2(n3039), .I3(GND_net), .O(n3117));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2053_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2120_3_lut (.I0(n3117), .I1(n3184), 
            .I2(n3138), .I3(GND_net), .O(n3216));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2120_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i13_3_lut (.I0(encoder0_position[12]), 
            .I1(n21), .I2(encoder0_position[31]), .I3(GND_net), .O(n307));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1457_3_lut (.I0(n307), .I1(n2201), 
            .I2(n2148), .I3(GND_net), .O(n2233));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1457_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1524_3_lut (.I0(n2233), .I1(n2300), 
            .I2(n2247), .I3(GND_net), .O(n2332));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1524_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1591_3_lut (.I0(n2332), .I1(n2399), 
            .I2(n2346), .I3(GND_net), .O(n2431));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1591_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1658_3_lut (.I0(n2431), .I1(n2498), 
            .I2(n2445), .I3(GND_net), .O(n2530));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1658_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1717_3_lut (.I0(n2522), .I1(n2589), 
            .I2(n2544), .I3(GND_net), .O(n2621));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1717_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1784_3_lut (.I0(n2621), .I1(n2688), 
            .I2(n2643), .I3(GND_net), .O(n2720));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1784_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1235_17_lut (.I0(GND_net), .I1(n1819), 
            .I2(VCC_net), .I3(n12620), .O(n1886)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_15_lut (.I0(GND_net), .I1(n2621), 
            .I2(VCC_net), .I3(n12774), .O(n2688)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_3_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n32_adj_650), .I3(n12975), .O(n32)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i1851_3_lut (.I0(n2720), .I1(n2787), 
            .I2(n2742), .I3(GND_net), .O(n2819));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1851_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_20_lut (.I0(GND_net), 
            .I1(encoder0_position_target[18]), .I2(n7_adj_569), .I3(n12490), 
            .O(duty_23__N_51[18])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_20 (.CI(n12490), .I0(encoder0_position_target[18]), 
            .I1(n7_adj_569), .CO(n12491));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_19_lut (.I0(GND_net), 
            .I1(encoder0_position_target[17]), .I2(n8_adj_568), .I3(n12489), 
            .O(duty_23__N_51[17])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1235_17 (.CI(n12620), .I0(n1819), 
            .I1(VCC_net), .CO(n12621));
    SB_CARRY encoder0_position_31__I_0_add_1771_15 (.CI(n12774), .I0(n2621), 
            .I1(VCC_net), .CO(n12775));
    SB_LUT4 encoder0_position_31__I_0_i1918_3_lut (.I0(n2819), .I1(n2886), 
            .I2(n2841), .I3(GND_net), .O(n2918));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1918_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_3 (.CI(n12975), 
            .I0(GND_net), .I1(n32_adj_650), .CO(n12976));
    SB_LUT4 encoder0_position_31__I_0_add_1771_14_lut (.I0(GND_net), .I1(n2622), 
            .I2(VCC_net), .I3(n12773), .O(n2689)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_unary_minus_2_add_3_2_lut (.I0(GND_net), 
            .I1(GND_net), .I2(n33_adj_651), .I3(VCC_net), .O(n33)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_unary_minus_2_add_3_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12390_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[6]), .O(n15071));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12390_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 encoder0_position_31__I_0_add_1235_16_lut (.I0(GND_net), .I1(n1820), 
            .I2(VCC_net), .I3(n12619), .O(n1887)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_14 (.CI(n12773), .I0(n2622), 
            .I1(VCC_net), .CO(n12774));
    SB_CARRY encoder0_position_31__I_0_unary_minus_2_add_3_2 (.CI(VCC_net), 
            .I0(GND_net), .I1(n33_adj_651), .CO(n12975));
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_19 (.CI(n12489), .I0(encoder0_position_target[17]), 
            .I1(n8_adj_568), .CO(n12490));
    SB_CARRY encoder0_position_31__I_0_add_1235_16 (.CI(n12619), .I0(n1820), 
            .I1(VCC_net), .CO(n12620));
    SB_LUT4 add_791_25_lut (.I0(n15508), .I1(n2_adj_620), .I2(n1059), 
            .I3(n12974), .O(encoder0_position_scaled_23__N_123[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_25_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_add_1771_13_lut (.I0(GND_net), .I1(n2623), 
            .I2(VCC_net), .I3(n12772), .O(n2690)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_24_lut (.I0(n15522), .I1(n2_adj_620), .I2(n1158), 
            .I3(n12973), .O(encoder0_position_scaled_23__N_123[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_24_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1985_3_lut (.I0(n2918), .I1(n2985), 
            .I2(n2940), .I3(GND_net), .O(n3017));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1985_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_3_lut_adj_165 (.I0(n3021), .I1(n3022), .I2(n3028), .I3(GND_net), 
            .O(n14728));
    defparam i1_3_lut_adj_165.LUT_INIT = 16'hfefe;
    SB_LUT4 encoder0_position_31__I_0_add_1235_15_lut (.I0(GND_net), .I1(n1821), 
            .I2(VCC_net), .I3(n12618), .O(n1888)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_13 (.CI(n12772), .I0(n2623), 
            .I1(VCC_net), .CO(n12773));
    SB_CARRY add_791_24 (.CI(n12973), .I0(n2_adj_620), .I1(n1158), .CO(n12974));
    SB_LUT4 encoder0_position_31__I_0_i2052_3_lut (.I0(n3017), .I1(n3084), 
            .I2(n3039), .I3(GND_net), .O(n3116));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2052_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_18_lut (.I0(GND_net), 
            .I1(encoder0_position_target[16]), .I2(n9_adj_567), .I3(n12488), 
            .O(duty_23__N_51[16])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1235_15 (.CI(n12618), .I0(n1821), 
            .I1(VCC_net), .CO(n12619));
    SB_LUT4 encoder0_position_31__I_0_add_1771_12_lut (.I0(GND_net), .I1(n2624), 
            .I2(VCC_net), .I3(n12771), .O(n2691)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_18 (.CI(n12488), .I0(encoder0_position_target[16]), 
            .I1(n9_adj_567), .CO(n12489));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_17_lut (.I0(GND_net), 
            .I1(encoder0_position_target[15]), .I2(n10_adj_566), .I3(n12487), 
            .O(duty_23__N_51[15])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1235_14_lut (.I0(GND_net), .I1(n1822), 
            .I2(VCC_net), .I3(n12617), .O(n1889)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_12 (.CI(n12771), .I0(n2624), 
            .I1(VCC_net), .CO(n12772));
    SB_LUT4 add_791_23_lut (.I0(n15537), .I1(n2_adj_620), .I2(n1257), 
            .I3(n12972), .O(encoder0_position_scaled_23__N_123[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_23_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i2119_3_lut (.I0(n3116), .I1(n3183), 
            .I2(n3138), .I3(GND_net), .O(n3215));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2119_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_791_23 (.CI(n12972), .I0(n2_adj_620), .I1(n1257), .CO(n12973));
    SB_CARRY encoder0_position_31__I_0_add_1235_14 (.CI(n12617), .I0(n1822), 
            .I1(VCC_net), .CO(n12618));
    SB_LUT4 encoder0_position_31__I_0_add_1771_11_lut (.I0(GND_net), .I1(n2625), 
            .I2(VCC_net), .I3(n12770), .O(n2692)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_22_lut (.I0(n15553), .I1(n2_adj_620), .I2(n1356), 
            .I3(n12971), .O(encoder0_position_scaled_23__N_123[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_22_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_add_1235_13_lut (.I0(GND_net), .I1(n1823), 
            .I2(VCC_net), .I3(n12616), .O(n1890)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_11 (.CI(n12770), .I0(n2625), 
            .I1(VCC_net), .CO(n12771));
    SB_CARRY add_791_22 (.CI(n12971), .I0(n2_adj_620), .I1(n1356), .CO(n12972));
    SB_LUT4 encoder0_position_31__I_0_mux_3_i14_3_lut (.I0(encoder0_position[13]), 
            .I1(n20), .I2(encoder0_position[31]), .I3(GND_net), .O(n306));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_166 (.I0(n3024), .I1(n3020), .I2(n3025), .I3(n3026), 
            .O(n14730));
    defparam i1_4_lut_adj_166.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_1235_13 (.CI(n12616), .I0(n1823), 
            .I1(VCC_net), .CO(n12617));
    SB_LUT4 encoder0_position_31__I_0_add_1771_10_lut (.I0(GND_net), .I1(n2626), 
            .I2(VCC_net), .I3(n12769), .O(n2693)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1235_12_lut (.I0(GND_net), .I1(n1824), 
            .I2(VCC_net), .I3(n12615), .O(n1891)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_10 (.CI(n12769), .I0(n2626), 
            .I1(VCC_net), .CO(n12770));
    SB_LUT4 add_791_21_lut (.I0(n15572), .I1(n2_adj_620), .I2(n1455), 
            .I3(n12970), .O(encoder0_position_scaled_23__N_123[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_21_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY add_791_21 (.CI(n12970), .I0(n2_adj_620), .I1(n1455), .CO(n12971));
    SB_LUT4 encoder0_position_31__I_0_i1389_3_lut (.I0(n306), .I1(n2101), 
            .I2(n2049), .I3(GND_net), .O(n2133));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1389_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1456_3_lut (.I0(n2133), .I1(n2200), 
            .I2(n2148), .I3(GND_net), .O(n2232));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1456_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1523_3_lut (.I0(n2232), .I1(n2299), 
            .I2(n2247), .I3(GND_net), .O(n2331));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1523_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1590_3_lut (.I0(n2331), .I1(n2398), 
            .I2(n2346), .I3(GND_net), .O(n2430));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1590_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1657_3_lut (.I0(n2430), .I1(n2497), 
            .I2(n2445), .I3(GND_net), .O(n2529));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1657_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1716_3_lut (.I0(n2521), .I1(n2588), 
            .I2(n2544), .I3(GND_net), .O(n2620));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1716_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1235_12 (.CI(n12615), .I0(n1824), 
            .I1(VCC_net), .CO(n12616));
    SB_LUT4 encoder0_position_31__I_0_add_1771_9_lut (.I0(GND_net), .I1(n2627), 
            .I2(VCC_net), .I3(n12768), .O(n2694)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_20_lut (.I0(n15591), .I1(n2_adj_620), .I2(n1554), 
            .I3(n12969), .O(encoder0_position_scaled_23__N_123[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_20_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_add_1235_11_lut (.I0(GND_net), .I1(n1825), 
            .I2(VCC_net), .I3(n12614), .O(n1892)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_9 (.CI(n12768), .I0(n2627), 
            .I1(VCC_net), .CO(n12769));
    SB_CARRY add_791_20 (.CI(n12969), .I0(n2_adj_620), .I1(n1554), .CO(n12970));
    SB_LUT4 i12418_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[7]), .O(n15070));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i12418_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 encoder0_position_31__I_0_i1783_3_lut (.I0(n2620), .I1(n2687), 
            .I2(n2643), .I3(GND_net), .O(n2719));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1783_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1235_11 (.CI(n12614), .I0(n1825), 
            .I1(VCC_net), .CO(n12615));
    SB_LUT4 encoder0_position_31__I_0_add_1771_8_lut (.I0(GND_net), .I1(n2628), 
            .I2(VCC_net), .I3(n12767), .O(n2695)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_19_lut (.I0(n15611), .I1(n2_adj_620), .I2(n1653), 
            .I3(n12968), .O(encoder0_position_scaled_23__N_123[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_19_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1850_3_lut (.I0(n2719), .I1(n2786), 
            .I2(n2742), .I3(GND_net), .O(n2818));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1850_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_17 (.CI(n12487), .I0(encoder0_position_target[15]), 
            .I1(n10_adj_566), .CO(n12488));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_16_lut (.I0(GND_net), 
            .I1(encoder0_position_target[14]), .I2(n11_adj_565), .I3(n12486), 
            .O(duty_23__N_51[14])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1235_10_lut (.I0(GND_net), .I1(n1826), 
            .I2(VCC_net), .I3(n12613), .O(n1893)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_8 (.CI(n12767), .I0(n2628), 
            .I1(VCC_net), .CO(n12768));
    SB_CARRY add_791_19 (.CI(n12968), .I0(n2_adj_620), .I1(n1653), .CO(n12969));
    SB_LUT4 encoder0_position_31__I_0_i1917_3_lut (.I0(n2818), .I1(n2885), 
            .I2(n2841), .I3(GND_net), .O(n2917));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1917_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1235_10 (.CI(n12613), .I0(n1826), 
            .I1(VCC_net), .CO(n12614));
    SB_LUT4 encoder0_position_31__I_0_add_1771_7_lut (.I0(GND_net), .I1(n2629), 
            .I2(GND_net), .I3(n12766), .O(n2696)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_18_lut (.I0(n15630), .I1(n2_adj_620), .I2(n1752), 
            .I3(n12967), .O(encoder0_position_scaled_23__N_123[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_18_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_add_1235_9_lut (.I0(GND_net), .I1(n1827), 
            .I2(VCC_net), .I3(n12612), .O(n1894)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_7 (.CI(n12766), .I0(n2629), 
            .I1(GND_net), .CO(n12767));
    SB_CARRY add_791_18 (.CI(n12967), .I0(n2_adj_620), .I1(n1752), .CO(n12968));
    SB_LUT4 encoder0_position_31__I_0_i1984_3_lut (.I0(n2917), .I1(n2984), 
            .I2(n2940), .I3(GND_net), .O(n3016));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1984_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2051_3_lut (.I0(n3016), .I1(n3083), 
            .I2(n3039), .I3(GND_net), .O(n3115));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2051_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2118_3_lut (.I0(n3115), .I1(n3182), 
            .I2(n3138), .I3(GND_net), .O(n3214));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2118_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i15_3_lut (.I0(encoder0_position[14]), 
            .I1(n19), .I2(encoder0_position[31]), .I3(GND_net), .O(n305));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i1321_3_lut (.I0(n305), .I1(n2001), 
            .I2(n1950), .I3(GND_net), .O(n2033));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1321_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_16 (.CI(n12486), .I0(encoder0_position_target[14]), 
            .I1(n11_adj_565), .CO(n12487));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_15_lut (.I0(GND_net), 
            .I1(encoder0_position_target[13]), .I2(n12_adj_564), .I3(n12485), 
            .O(duty_23__N_51[13])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1235_9 (.CI(n12612), .I0(n1827), 
            .I1(VCC_net), .CO(n12613));
    SB_LUT4 encoder0_position_31__I_0_add_1771_6_lut (.I0(GND_net), .I1(n2630), 
            .I2(GND_net), .I3(n12765), .O(n2697)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_17_lut (.I0(n15652), .I1(n2_adj_620), .I2(n1851), 
            .I3(n12966), .O(encoder0_position_scaled_23__N_123[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_17_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1388_3_lut (.I0(n2033), .I1(n2100), 
            .I2(n2049), .I3(GND_net), .O(n2132));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1388_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1455_3_lut (.I0(n2132), .I1(n2199), 
            .I2(n2148), .I3(GND_net), .O(n2231));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1455_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_15 (.CI(n12485), .I0(encoder0_position_target[13]), 
            .I1(n12_adj_564), .CO(n12486));
    SB_LUT4 encoder0_position_31__I_0_add_1235_8_lut (.I0(GND_net), .I1(n1828), 
            .I2(VCC_net), .I3(n12611), .O(n1895)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_6 (.CI(n12765), .I0(n2630), 
            .I1(GND_net), .CO(n12766));
    SB_CARRY add_791_17 (.CI(n12966), .I0(n2_adj_620), .I1(n1851), .CO(n12967));
    SB_CARRY encoder0_position_31__I_0_add_1235_8 (.CI(n12611), .I0(n1828), 
            .I1(VCC_net), .CO(n12612));
    SB_LUT4 encoder0_position_31__I_0_add_1771_5_lut (.I0(GND_net), .I1(n2631), 
            .I2(VCC_net), .I3(n12764), .O(n2698)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_16_lut (.I0(n15674), .I1(n2_adj_620), .I2(n1950), 
            .I3(n12965), .O(encoder0_position_scaled_23__N_123[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_16_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY add_791_16 (.CI(n12965), .I0(n2_adj_620), .I1(n1950), .CO(n12966));
    SB_CARRY encoder0_position_31__I_0_add_1771_5 (.CI(n12764), .I0(n2631), 
            .I1(VCC_net), .CO(n12765));
    SB_LUT4 add_791_15_lut (.I0(n15697), .I1(n2_adj_620), .I2(n2049), 
            .I3(n12964), .O(encoder0_position_scaled_23__N_123[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_15_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1522_3_lut (.I0(n2231), .I1(n2298), 
            .I2(n2247), .I3(GND_net), .O(n2330));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1522_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1589_3_lut (.I0(n2330), .I1(n2397), 
            .I2(n2346), .I3(GND_net), .O(n2429));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1589_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1656_3_lut (.I0(n2429), .I1(n2496), 
            .I2(n2445), .I3(GND_net), .O(n2528));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1656_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1045_3_lut (.I0(n1530), .I1(n1597), 
            .I2(n1554), .I3(GND_net), .O(n1629_adj_609));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1045_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1112_3_lut (.I0(n1629_adj_609), .I1(n1696), 
            .I2(n1653), .I3(GND_net), .O(n1728));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1112_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1179_3_lut (.I0(n1728), .I1(n1795), 
            .I2(n1752), .I3(GND_net), .O(n1827));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1179_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9970_3_lut (.I0(n316), .I1(n3032), .I2(n3033), .I3(GND_net), 
            .O(n11947));
    defparam i9970_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 encoder0_position_31__I_0_add_1235_7_lut (.I0(GND_net), .I1(n1829), 
            .I2(GND_net), .I3(n12610), .O(n1896)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1771_4_lut (.I0(GND_net), .I1(n2632), 
            .I2(GND_net), .I3(n12763), .O(n2699)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_15 (.CI(n12964), .I0(n2_adj_620), .I1(n2049), .CO(n12965));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_14_lut (.I0(GND_net), 
            .I1(encoder0_position_target[12]), .I2(n13_adj_563), .I3(n12484), 
            .O(duty_23__N_51[12])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_14 (.CI(n12484), .I0(encoder0_position_target[12]), 
            .I1(n13_adj_563), .CO(n12485));
    SB_CARRY encoder0_position_31__I_0_add_1235_7 (.CI(n12610), .I0(n1829), 
            .I1(GND_net), .CO(n12611));
    SB_CARRY encoder0_position_31__I_0_add_1771_4 (.CI(n12763), .I0(n2632), 
            .I1(GND_net), .CO(n12764));
    SB_LUT4 encoder0_position_31__I_0_i1246_3_lut (.I0(n1827), .I1(n1894), 
            .I2(n1851), .I3(GND_net), .O(n1926));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1246_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_791_14_lut (.I0(n15722), .I1(n2_adj_620), .I2(n2148), 
            .I3(n12963), .O(encoder0_position_scaled_23__N_123[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_14_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1313_3_lut (.I0(n1926), .I1(n1993), 
            .I2(n1950), .I3(GND_net), .O(n2025));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1313_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_599), 
            .I2(commutation_state_prev[0]), .I3(dti_N_333), .O(n5187));   // verilog/TinyFPGA_B.v(140[6:47])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hdeff;
    SB_LUT4 encoder0_position_31__I_0_add_1771_3_lut (.I0(GND_net), .I1(n2633), 
            .I2(VCC_net), .I3(n12762), .O(n2700)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_14 (.CI(n12963), .I0(n2_adj_620), .I1(n2148), .CO(n12964));
    SB_LUT4 encoder0_position_31__I_0_add_1235_6_lut (.I0(GND_net), .I1(n1830), 
            .I2(GND_net), .I3(n12609), .O(n1897)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_3 (.CI(n12762), .I0(n2633), 
            .I1(VCC_net), .CO(n12763));
    SB_LUT4 add_791_13_lut (.I0(n15748), .I1(n2_adj_620), .I2(n2247), 
            .I3(n12962), .O(encoder0_position_scaled_23__N_123[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_13_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_167 (.I0(n3029), .I1(n11947), .I2(n3030), .I3(n3031), 
            .O(n13871));
    defparam i1_4_lut_adj_167.LUT_INIT = 16'ha080;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_13_lut (.I0(GND_net), 
            .I1(encoder0_position_target[11]), .I2(n14_adj_562), .I3(n12483), 
            .O(duty_23__N_51[11])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1235_6 (.CI(n12609), .I0(n1830), 
            .I1(GND_net), .CO(n12610));
    SB_CARRY add_791_13 (.CI(n12962), .I0(n2_adj_620), .I1(n2247), .CO(n12963));
    SB_LUT4 encoder0_position_31__I_0_i1380_3_lut (.I0(n2025), .I1(n2092), 
            .I2(n2049), .I3(GND_net), .O(n2124));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1380_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1771_2_lut (.I0(GND_net), .I1(n312), 
            .I2(GND_net), .I3(VCC_net), .O(n2701)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1771_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_12_lut (.I0(n15775), .I1(n2_adj_620), .I2(n2346), 
            .I3(n12961), .O(encoder0_position_scaled_23__N_123[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_12_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i12391_3_lut_4_lut (.I0(pwm_counter[3]), .I1(pwm_setpoint[3]), 
            .I2(pwm_setpoint[2]), .I3(pwm_counter[2]), .O(n15121));   // verilog/pwm.v(21[8:24])
    defparam i12391_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 encoder0_position_31__I_0_add_1235_5_lut (.I0(GND_net), .I1(n1831), 
            .I2(VCC_net), .I3(n12608), .O(n1898)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1771_2 (.CI(VCC_net), .I0(n312), 
            .I1(GND_net), .CO(n12762));
    SB_LUT4 encoder0_position_31__I_0_i1447_3_lut (.I0(n2124), .I1(n2191), 
            .I2(n2148), .I3(GND_net), .O(n2223));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1447_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_791_12 (.CI(n12961), .I0(n2_adj_620), .I1(n2346), .CO(n12962));
    SB_LUT4 encoder0_position_31__I_0_i1514_3_lut (.I0(n2223), .I1(n2290), 
            .I2(n2247), .I3(GND_net), .O(n2322));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1514_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1581_3_lut (.I0(n2322), .I1(n2389), 
            .I2(n2346), .I3(GND_net), .O(n2421));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1581_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_13 (.CI(n12483), .I0(encoder0_position_target[11]), 
            .I1(n14_adj_562), .CO(n12484));
    SB_CARRY encoder0_position_31__I_0_add_1235_5 (.CI(n12608), .I0(n1831), 
            .I1(VCC_net), .CO(n12609));
    SB_LUT4 encoder0_position_31__I_0_add_1704_25_lut (.I0(n15830), .I1(n2511), 
            .I2(VCC_net), .I3(n12761), .O(n2610)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_25_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_12_lut (.I0(GND_net), 
            .I1(encoder0_position_target[10]), .I2(n15_adj_561), .I3(n12482), 
            .O(duty_23__N_51[10])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1235_4_lut (.I0(GND_net), .I1(n1832), 
            .I2(GND_net), .I3(n12607), .O(n1899)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_24_lut (.I0(GND_net), .I1(n2512), 
            .I2(VCC_net), .I3(n12760), .O(n2579)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_11_lut (.I0(n15802), .I1(n2_adj_620), .I2(n2445), 
            .I3(n12960), .O(encoder0_position_scaled_23__N_123[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_11_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1648_3_lut (.I0(n2421), .I1(n2488), 
            .I2(n2445), .I3(GND_net), .O(n2520));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1648_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_791_11 (.CI(n12960), .I0(n2_adj_620), .I1(n2445), .CO(n12961));
    SB_LUT4 encoder0_position_31__I_0_i1715_3_lut (.I0(n2520), .I1(n2587), 
            .I2(n2544), .I3(GND_net), .O(n2619));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1715_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1782_3_lut (.I0(n2619), .I1(n2686), 
            .I2(n2643), .I3(GND_net), .O(n2718));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1782_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1849_3_lut (.I0(n2718), .I1(n2785), 
            .I2(n2742), .I3(GND_net), .O(n2817));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1849_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_12 (.CI(n12482), .I0(encoder0_position_target[10]), 
            .I1(n15_adj_561), .CO(n12483));
    SB_CARRY encoder0_position_31__I_0_add_1235_4 (.CI(n12607), .I0(n1832), 
            .I1(GND_net), .CO(n12608));
    SB_CARRY encoder0_position_31__I_0_add_1704_24 (.CI(n12760), .I0(n2512), 
            .I1(VCC_net), .CO(n12761));
    SB_LUT4 add_791_10_lut (.I0(n15830), .I1(n2_adj_620), .I2(n2544), 
            .I3(n12959), .O(encoder0_position_scaled_23__N_123[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_10_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_168 (.I0(n3017), .I1(n3018), .I2(n14730), .I3(n14728), 
            .O(n14736));
    defparam i1_4_lut_adj_168.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1235_3_lut (.I0(GND_net), .I1(n1833), 
            .I2(VCC_net), .I3(n12606), .O(n1900)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_23_lut (.I0(GND_net), .I1(n2513), 
            .I2(VCC_net), .I3(n12759), .O(n2580)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_10 (.CI(n12959), .I0(n2_adj_620), .I1(n2544), .CO(n12960));
    SB_LUT4 encoder0_position_31__I_0_i1916_3_lut (.I0(n2817), .I1(n2884), 
            .I2(n2841), .I3(GND_net), .O(n2916));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1916_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1983_3_lut (.I0(n2916), .I1(n2983), 
            .I2(n2940), .I3(GND_net), .O(n3015));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1983_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2050_3_lut (.I0(n3015), .I1(n3082), 
            .I2(n3039), .I3(GND_net), .O(n3114));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2050_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2117_3_lut (.I0(n3114), .I1(n3181), 
            .I2(n3138), .I3(GND_net), .O(n3213));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2117_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_mux_3_i16_3_lut (.I0(encoder0_position[15]), 
            .I1(n18), .I2(encoder0_position[31]), .I3(GND_net), .O(n304));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_11_lut (.I0(GND_net), 
            .I1(encoder0_position_target[9]), .I2(n16_adj_560), .I3(n12481), 
            .O(duty_23__N_51[9])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1235_3 (.CI(n12606), .I0(n1833), 
            .I1(VCC_net), .CO(n12607));
    SB_CARRY encoder0_position_31__I_0_add_1704_23 (.CI(n12759), .I0(n2513), 
            .I1(VCC_net), .CO(n12760));
    SB_LUT4 encoder0_position_31__I_0_i1253_3_lut (.I0(n304), .I1(n1901), 
            .I2(n1851), .I3(GND_net), .O(n1933));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1253_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_169 (.I0(n3019), .I1(n13871), .I2(n3023), .I3(n3027), 
            .O(n14078));
    defparam i1_4_lut_adj_169.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1235_2_lut (.I0(GND_net), .I1(n304), 
            .I2(GND_net), .I3(VCC_net), .O(n1901)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1235_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_22_lut (.I0(GND_net), .I1(n2514), 
            .I2(VCC_net), .I3(n12758), .O(n2581)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_9_lut (.I0(n15292), .I1(n2_adj_620), .I2(n2643), .I3(n12958), 
            .O(encoder0_position_scaled_23__N_123[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_9_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1320_3_lut (.I0(n1933), .I1(n2000), 
            .I2(n1950), .I3(GND_net), .O(n2032));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1320_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1387_3_lut (.I0(n2032), .I1(n2099), 
            .I2(n2049), .I3(GND_net), .O(n2131));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1387_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_791_9 (.CI(n12958), .I0(n2_adj_620), .I1(n2643), .CO(n12959));
    SB_LUT4 encoder0_position_31__I_0_i1454_3_lut (.I0(n2131), .I1(n2198), 
            .I2(n2148), .I3(GND_net), .O(n2230));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1454_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1521_3_lut (.I0(n2230), .I1(n2297), 
            .I2(n2247), .I3(GND_net), .O(n2329));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1521_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1235_2 (.CI(VCC_net), .I0(n304), 
            .I1(GND_net), .CO(n12606));
    SB_CARRY encoder0_position_31__I_0_add_1704_22 (.CI(n12758), .I0(n2514), 
            .I1(VCC_net), .CO(n12759));
    SB_LUT4 add_791_8_lut (.I0(n15322), .I1(n2_adj_620), .I2(n2742), .I3(n12957), 
            .O(encoder0_position_scaled_23__N_123[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_8_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_add_1168_17_lut (.I0(n15630), .I1(n1719), 
            .I2(VCC_net), .I3(n12605), .O(n1818)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 encoder0_position_31__I_0_add_1704_21_lut (.I0(GND_net), .I1(n2515), 
            .I2(VCC_net), .I3(n12757), .O(n2582)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_8 (.CI(n12957), .I0(n2_adj_620), .I1(n2742), .CO(n12958));
    SB_LUT4 encoder0_position_31__I_0_i1588_3_lut (.I0(n2329), .I1(n2396), 
            .I2(n2346), .I3(GND_net), .O(n2428));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1588_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1655_3_lut (.I0(n2428), .I1(n2495), 
            .I2(n2445), .I3(GND_net), .O(n2527));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1655_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_11 (.CI(n12481), .I0(encoder0_position_target[9]), 
            .I1(n16_adj_560), .CO(n12482));
    SB_LUT4 encoder0_position_31__I_0_add_1168_16_lut (.I0(GND_net), .I1(n1720), 
            .I2(VCC_net), .I3(n12604), .O(n1787)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_21 (.CI(n12757), .I0(n2515), 
            .I1(VCC_net), .CO(n12758));
    SB_LUT4 add_791_7_lut (.I0(n15352), .I1(n2_adj_620), .I2(n2841), .I3(n12956), 
            .O(encoder0_position_scaled_23__N_123[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_7_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_170 (.I0(n3015), .I1(n3016), .I2(n14078), .I3(n14736), 
            .O(n14742));
    defparam i1_4_lut_adj_170.LUT_INIT = 16'hfffe;
    SB_CARRY encoder0_position_31__I_0_add_1168_16 (.CI(n12604), .I0(n1720), 
            .I1(VCC_net), .CO(n12605));
    SB_LUT4 encoder0_position_31__I_0_add_1704_20_lut (.I0(GND_net), .I1(n2516), 
            .I2(VCC_net), .I3(n12756), .O(n2583)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_7 (.CI(n12956), .I0(n2_adj_620), .I1(n2841), .CO(n12957));
    SB_LUT4 encoder0_position_31__I_0_add_1168_15_lut (.I0(GND_net), .I1(n1721), 
            .I2(VCC_net), .I3(n12603), .O(n1788)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_20 (.CI(n12756), .I0(n2516), 
            .I1(VCC_net), .CO(n12757));
    SB_LUT4 add_791_6_lut (.I0(n15384), .I1(n2_adj_620), .I2(n2940), .I3(n12955), 
            .O(encoder0_position_scaled_23__N_123[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_6_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_10_lut (.I0(GND_net), 
            .I1(encoder0_position_target[8]), .I2(n17_adj_559), .I3(n12480), 
            .O(duty_23__N_51[8])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_15 (.CI(n12603), .I0(n1721), 
            .I1(VCC_net), .CO(n12604));
    SB_LUT4 encoder0_position_31__I_0_add_1704_19_lut (.I0(GND_net), .I1(n2517), 
            .I2(VCC_net), .I3(n12755), .O(n2584)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_6 (.CI(n12955), .I0(n2_adj_620), .I1(n2940), .CO(n12956));
    SB_LUT4 i12480_3_lut (.I0(n1727), .I1(n1794), .I2(n1752), .I3(GND_net), 
            .O(n1826));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam i12480_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_171 (.I0(n3012), .I1(n3013), .I2(n3014), .I3(n14742), 
            .O(n14748));
    defparam i1_4_lut_adj_171.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_172 (.I0(n3009), .I1(n3010), .I2(n3011), .I3(n14748), 
            .O(n14754));
    defparam i1_4_lut_adj_172.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1168_14_lut (.I0(GND_net), .I1(n1722), 
            .I2(VCC_net), .I3(n12602), .O(n1789)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_19 (.CI(n12755), .I0(n2517), 
            .I1(VCC_net), .CO(n12756));
    SB_LUT4 add_791_5_lut (.I0(n15418), .I1(n2_adj_620), .I2(n3039), .I3(n12954), 
            .O(encoder0_position_scaled_23__N_123[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_5_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1245_3_lut (.I0(n1826), .I1(n1893), 
            .I2(n1851), .I3(GND_net), .O(n1925));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1245_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12691_4_lut (.I0(n3007), .I1(n3006), .I2(n3008), .I3(n14754), 
            .O(n3039));
    defparam i12691_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_10 (.CI(n12480), .I0(encoder0_position_target[8]), 
            .I1(n17_adj_559), .CO(n12481));
    SB_LUT4 encoder0_position_target_23__I_0_204_add_2_9_lut (.I0(GND_net), 
            .I1(encoder0_position_target[7]), .I2(n18_adj_558), .I3(n12479), 
            .O(duty_23__N_51[7])) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_target_23__I_0_204_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1168_14 (.CI(n12602), .I0(n1722), 
            .I1(VCC_net), .CO(n12603));
    SB_LUT4 encoder0_position_31__I_0_add_1704_18_lut (.I0(GND_net), .I1(n2518), 
            .I2(VCC_net), .I3(n12754), .O(n2585)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_791_5 (.CI(n12954), .I0(n2_adj_620), .I1(n3039), .CO(n12955));
    SB_LUT4 encoder0_position_31__I_0_i1977_3_lut (.I0(n2910), .I1(n2977), 
            .I2(n2940), .I3(GND_net), .O(n3009));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1977_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1312_3_lut (.I0(n1925), .I1(n1992), 
            .I2(n1950), .I3(GND_net), .O(n2024));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1312_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1379_3_lut (.I0(n2024), .I1(n2091), 
            .I2(n2049), .I3(GND_net), .O(n2123));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1379_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2046_3_lut (.I0(n3011), .I1(n3078), 
            .I2(n3039), .I3(GND_net), .O(n3110));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2046_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1446_3_lut (.I0(n2123), .I1(n2190), 
            .I2(n2148), .I3(GND_net), .O(n2222));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1446_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1168_13_lut (.I0(GND_net), .I1(n1723), 
            .I2(VCC_net), .I3(n12601), .O(n1790)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY encoder0_position_31__I_0_add_1704_18 (.CI(n12754), .I0(n2518), 
            .I1(VCC_net), .CO(n12755));
    SB_LUT4 encoder0_position_31__I_0_i2045_3_lut (.I0(n3010), .I1(n3077), 
            .I2(n3039), .I3(GND_net), .O(n3109));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2045_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_791_4_lut (.I0(n15451), .I1(n2_adj_620), .I2(n3138), .I3(n12953), 
            .O(encoder0_position_scaled_23__N_123[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_4_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i2044_3_lut (.I0(n3009), .I1(n3076), 
            .I2(n3039), .I3(GND_net), .O(n3108));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2044_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1513_3_lut (.I0(n2222), .I1(n2289), 
            .I2(n2247), .I3(GND_net), .O(n2321));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1513_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_791_4 (.CI(n12953), .I0(n2_adj_620), .I1(n3138), .CO(n12954));
    SB_LUT4 i1_4_lut_adj_173 (.I0(n3120), .I1(n3122), .I2(n3123), .I3(n3118), 
            .O(n14146));
    defparam i1_4_lut_adj_173.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_i1580_3_lut (.I0(n2321), .I1(n2388), 
            .I2(n2346), .I3(GND_net), .O(n2420));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1580_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_add_1704_17_lut (.I0(GND_net), .I1(n2519), 
            .I2(VCC_net), .I3(n12753), .O(n2586)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_791_3_lut (.I0(n15485), .I1(n2_adj_620), .I2(n3237), .I3(n12952), 
            .O(encoder0_position_scaled_23__N_123[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_3_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 encoder0_position_31__I_0_i1647_3_lut (.I0(n2420), .I1(n2487), 
            .I2(n2445), .I3(GND_net), .O(n2519));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1647_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_174 (.I0(n3117), .I1(n3121), .I2(n3126), .I3(n3124), 
            .O(n14150));
    defparam i1_4_lut_adj_174.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_175 (.I0(n3128), .I1(n3125), .I2(n3119), .I3(n3127), 
            .O(n14148));
    defparam i1_4_lut_adj_175.LUT_INIT = 16'hfffe;
    SB_LUT4 i9968_3_lut (.I0(n317), .I1(n3132), .I2(n3133), .I3(GND_net), 
            .O(n11945));
    defparam i9968_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_176 (.I0(n3116), .I1(n14148), .I2(n14150), .I3(n14146), 
            .O(n14156));
    defparam i1_4_lut_adj_176.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_i1714_3_lut (.I0(n2519), .I1(n2586), 
            .I2(n2544), .I3(GND_net), .O(n2618));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1714_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i1781_3_lut (.I0(n2618), .I1(n2685), 
            .I2(n2643), .I3(GND_net), .O(n2717));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1781_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1168_13 (.CI(n12601), .I0(n1723), 
            .I1(VCC_net), .CO(n12602));
    SB_CARRY encoder0_position_31__I_0_add_1704_17 (.CI(n12753), .I0(n2519), 
            .I1(VCC_net), .CO(n12754));
    SB_CARRY add_791_3 (.CI(n12952), .I0(n2_adj_620), .I1(n3237), .CO(n12953));
    SB_LUT4 i1_4_lut_adj_177 (.I0(n3129), .I1(n11945), .I2(n3130), .I3(n3131), 
            .O(n13831));
    defparam i1_4_lut_adj_177.LUT_INIT = 16'ha080;
    SB_LUT4 encoder0_position_31__I_0_i1848_3_lut (.I0(n2717), .I1(n2784), 
            .I2(n2742), .I3(GND_net), .O(n2816));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1848_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_178 (.I0(n13831), .I1(n3114), .I2(n3115), .I3(n14156), 
            .O(n14162));
    defparam i1_4_lut_adj_178.LUT_INIT = 16'hfffe;
    SB_LUT4 encoder0_position_31__I_0_add_1168_12_lut (.I0(GND_net), .I1(n1724), 
            .I2(VCC_net), .I3(n12600), .O(n1791)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1168_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_1704_16_lut (.I0(GND_net), .I1(n2520), 
            .I2(VCC_net), .I3(n12752), .O(n2587)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_179 (.I0(n3111), .I1(n3112), .I2(n3113), .I3(n14162), 
            .O(n14168));
    defparam i1_4_lut_adj_179.LUT_INIT = 16'hfffe;
    SB_LUT4 add_791_2_lut (.I0(n15490), .I1(n2_adj_620), .I2(n12051), 
            .I3(VCC_net), .O(encoder0_position_scaled_23__N_123[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_791_2_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_180 (.I0(n3108), .I1(n3109), .I2(n3110), .I3(n14168), 
            .O(n14174));
    defparam i1_4_lut_adj_180.LUT_INIT = 16'hfffe;
    SB_LUT4 i12725_4_lut (.I0(n3106), .I1(n3105), .I2(n3107), .I3(n14174), 
            .O(n3138));
    defparam i12725_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 encoder0_position_31__I_0_i1915_3_lut (.I0(n2816), .I1(n2883), 
            .I2(n2841), .I3(GND_net), .O(n2915));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1915_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_31__I_0_add_1704_16 (.CI(n12752), .I0(n2520), 
            .I1(VCC_net), .CO(n12753));
    SB_CARRY add_791_2 (.CI(VCC_net), .I0(n2_adj_620), .I1(n12051), .CO(n12952));
    SB_LUT4 encoder0_position_31__I_0_i1982_3_lut (.I0(n2915), .I1(n2982), 
            .I2(n2940), .I3(GND_net), .O(n3014));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i1982_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY encoder0_position_target_23__I_0_204_add_2_9 (.CI(n12479), .I0(encoder0_position_target[7]), 
            .I1(n18_adj_558), .CO(n12480));
    SB_CARRY encoder0_position_31__I_0_add_1168_12 (.CI(n12600), .I0(n1724), 
            .I1(VCC_net), .CO(n12601));
    SB_LUT4 encoder0_position_31__I_0_add_1704_15_lut (.I0(GND_net), .I1(n2521), 
            .I2(VCC_net), .I3(n12751), .O(n2588)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_1704_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_add_2173_33_lut (.I0(GND_net), .I1(n3204), 
            .I2(VCC_net), .I3(n12951), .O(n3271)) /* synthesis syn_instantiated=1 */ ;
    defparam encoder0_position_31__I_0_add_2173_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 encoder0_position_31__I_0_i2042_3_lut (.I0(n3007), .I1(n3074), 
            .I2(n3039), .I3(GND_net), .O(n3106));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2042_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2109_3_lut (.I0(n3106), .I1(n3173), 
            .I2(n3138), .I3(GND_net), .O(n3205));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2109_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 encoder0_position_31__I_0_i2049_3_lut (.I0(n3014), .I1(n3081), 
            .I2(n3039), .I3(GND_net), .O(n3113));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2049_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 pwm_setpoint_23__I_0_i1_3_lut (.I0(duty[0]), .I1(pwm_setpoint_23__N_171[0]), 
            .I2(duty[23]), .I3(GND_net), .O(pwm_setpoint_23__N_27[0]));   // verilog/TinyFPGA_B.v(110[12] 113[6])
    defparam pwm_setpoint_23__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 encoder0_position_31__I_0_i2116_3_lut (.I0(n3113), .I1(n3180), 
            .I2(n3138), .I3(GND_net), .O(n3212));   // verilog/TinyFPGA_B.v(138[31:51])
    defparam encoder0_position_31__I_0_i2116_3_lut.LUT_INIT = 16'hacac;
    
endmodule
//
// Verilog Description of module \quadrature_decoder(1,500000) 
//

module \quadrature_decoder(1,500000)  (direction_N_537, encoder0_position, 
            CLK_N_keep, n5258, n1302, ENCODER0_B_N_keep, ENCODER0_A_N_keep, 
            \a_new[1] , GND_net, b_prev, VCC_net) /* synthesis lattice_noprune=1 */ ;
    output direction_N_537;
    output [31:0]encoder0_position;
    input CLK_N_keep;
    input n5258;
    output n1302;
    input ENCODER0_B_N_keep;
    input ENCODER0_A_N_keep;
    output \a_new[1] ;
    input GND_net;
    output b_prev;
    input VCC_net;
    
    wire [31:0]n133;
    
    wire n5257, a_prev;
    wire [1:0]b_new;   // vhdl/quadrature_decoder.vhd(41[9:14])
    wire [1:0]a_new;   // vhdl/quadrature_decoder.vhd(40[9:14])
    
    wire a_prev_N_543, debounce_cnt, direction_N_536, n13125, n13124, 
        n13123, n13122, n13121, n13120, n13119, n13118, n13117, 
        n13116, direction_N_540, n13115, n13114, n13113, n13112, 
        n13111, n13110, n13109, n13108, n13107, n13106, n13105, 
        n13104, n13103, n13102, n13101, n13100, n13099, n13098, 
        n13097, n13096, n13095, n5255;
    
    SB_DFFE position_659__i21 (.Q(encoder0_position[21]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[21]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFF direction_57 (.Q(n1302), .C(CLK_N_keep), .D(n5258));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFF a_prev_51 (.Q(a_prev), .C(CLK_N_keep), .D(n5257));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFFE position_659__i20 (.Q(encoder0_position[20]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[20]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i19 (.Q(encoder0_position[19]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[19]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i18 (.Q(encoder0_position[18]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[18]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i17 (.Q(encoder0_position[17]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[17]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i16 (.Q(encoder0_position[16]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[16]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i15 (.Q(encoder0_position[15]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[15]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i14 (.Q(encoder0_position[14]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[14]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i13 (.Q(encoder0_position[13]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[13]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i12 (.Q(encoder0_position[12]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[12]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i11 (.Q(encoder0_position[11]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[11]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i10 (.Q(encoder0_position[10]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[10]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i9 (.Q(encoder0_position[9]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[9]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i8 (.Q(encoder0_position[8]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[8]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i7 (.Q(encoder0_position[7]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[7]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFF b_new_i0 (.Q(b_new[0]), .C(CLK_N_keep), .D(ENCODER0_B_N_keep));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFF a_new_i0 (.Q(a_new[0]), .C(CLK_N_keep), .D(ENCODER0_A_N_keep));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFFE position_659__i6 (.Q(encoder0_position[6]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[6]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i5 (.Q(encoder0_position[5]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[5]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i4 (.Q(encoder0_position[4]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[4]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i3 (.Q(encoder0_position[3]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[3]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i2 (.Q(encoder0_position[2]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[2]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i1 (.Q(encoder0_position[1]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[1]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFF debounce_cnt_50 (.Q(debounce_cnt), .C(CLK_N_keep), .D(a_prev_N_543));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFF a_new_i1 (.Q(\a_new[1] ), .C(CLK_N_keep), .D(a_new[0]));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFF b_new_i1 (.Q(b_new[1]), .C(CLK_N_keep), .D(b_new[0]));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_LUT4 position_659_add_4_33_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[31]), .I3(n13125), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_DFFE position_659__i31 (.Q(encoder0_position[31]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[31]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i30 (.Q(encoder0_position[30]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[30]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i29 (.Q(encoder0_position[29]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[29]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i28 (.Q(encoder0_position[28]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[28]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i27 (.Q(encoder0_position[27]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[27]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_LUT4 position_659_add_4_32_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[30]), .I3(n13124), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_DFFE position_659__i26 (.Q(encoder0_position[26]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[26]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i25 (.Q(encoder0_position[25]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[25]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i24 (.Q(encoder0_position[24]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[24]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_DFFE position_659__i23 (.Q(encoder0_position[23]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[23]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_CARRY position_659_add_4_32 (.CI(n13124), .I0(direction_N_536), .I1(encoder0_position[30]), 
            .CO(n13125));
    SB_LUT4 position_659_add_4_31_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[29]), .I3(n13123), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_31 (.CI(n13123), .I0(direction_N_536), .I1(encoder0_position[29]), 
            .CO(n13124));
    SB_LUT4 position_659_add_4_30_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[28]), .I3(n13122), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_30 (.CI(n13122), .I0(direction_N_536), .I1(encoder0_position[28]), 
            .CO(n13123));
    SB_LUT4 position_659_add_4_29_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[27]), .I3(n13121), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_29 (.CI(n13121), .I0(direction_N_536), .I1(encoder0_position[27]), 
            .CO(n13122));
    SB_LUT4 position_659_add_4_28_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[26]), .I3(n13120), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_28 (.CI(n13120), .I0(direction_N_536), .I1(encoder0_position[26]), 
            .CO(n13121));
    SB_LUT4 position_659_add_4_27_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[25]), .I3(n13119), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_27 (.CI(n13119), .I0(direction_N_536), .I1(encoder0_position[25]), 
            .CO(n13120));
    SB_LUT4 position_659_add_4_26_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[24]), .I3(n13118), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_26 (.CI(n13118), .I0(direction_N_536), .I1(encoder0_position[24]), 
            .CO(n13119));
    SB_LUT4 position_659_add_4_25_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[23]), .I3(n13117), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12534_4_lut (.I0(a_new[0]), .I1(b_new[0]), .I2(\a_new[1] ), 
            .I3(b_new[1]), .O(a_prev_N_543));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    defparam i12534_4_lut.LUT_INIT = 16'h8421;
    SB_CARRY position_659_add_4_25 (.CI(n13117), .I0(direction_N_536), .I1(encoder0_position[23]), 
            .CO(n13118));
    SB_LUT4 b_prev_I_0_63_2_lut (.I0(b_prev), .I1(\a_new[1] ), .I2(GND_net), 
            .I3(GND_net), .O(direction_N_536));   // vhdl/quadrature_decoder.vhd(81[18:37])
    defparam b_prev_I_0_63_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 position_659_add_4_24_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[22]), .I3(n13116), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 b_prev_I_0_65_2_lut (.I0(b_prev), .I1(b_new[1]), .I2(GND_net), 
            .I3(GND_net), .O(direction_N_540));   // vhdl/quadrature_decoder.vhd(80[37:56])
    defparam b_prev_I_0_65_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 debounce_cnt_I_0_4_lut (.I0(debounce_cnt), .I1(a_prev), .I2(direction_N_540), 
            .I3(\a_new[1] ), .O(direction_N_537));   // vhdl/quadrature_decoder.vhd(79[10] 80[64])
    defparam debounce_cnt_I_0_4_lut.LUT_INIT = 16'ha2a8;
    SB_CARRY position_659_add_4_24 (.CI(n13116), .I0(direction_N_536), .I1(encoder0_position[22]), 
            .CO(n13117));
    SB_LUT4 position_659_add_4_23_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[21]), .I3(n13115), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_DFFE position_659__i0 (.Q(encoder0_position[0]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[0]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_CARRY position_659_add_4_23 (.CI(n13115), .I0(direction_N_536), .I1(encoder0_position[21]), 
            .CO(n13116));
    SB_LUT4 position_659_add_4_22_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[20]), .I3(n13114), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_22 (.CI(n13114), .I0(direction_N_536), .I1(encoder0_position[20]), 
            .CO(n13115));
    SB_LUT4 position_659_add_4_21_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[19]), .I3(n13113), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_21 (.CI(n13113), .I0(direction_N_536), .I1(encoder0_position[19]), 
            .CO(n13114));
    SB_LUT4 position_659_add_4_20_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[18]), .I3(n13112), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_20 (.CI(n13112), .I0(direction_N_536), .I1(encoder0_position[18]), 
            .CO(n13113));
    SB_LUT4 position_659_add_4_19_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[17]), .I3(n13111), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_19 (.CI(n13111), .I0(direction_N_536), .I1(encoder0_position[17]), 
            .CO(n13112));
    SB_LUT4 position_659_add_4_18_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[16]), .I3(n13110), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_18 (.CI(n13110), .I0(direction_N_536), .I1(encoder0_position[16]), 
            .CO(n13111));
    SB_LUT4 position_659_add_4_17_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[15]), .I3(n13109), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_17 (.CI(n13109), .I0(direction_N_536), .I1(encoder0_position[15]), 
            .CO(n13110));
    SB_LUT4 position_659_add_4_16_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[14]), .I3(n13108), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_16 (.CI(n13108), .I0(direction_N_536), .I1(encoder0_position[14]), 
            .CO(n13109));
    SB_LUT4 position_659_add_4_15_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[13]), .I3(n13107), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_15 (.CI(n13107), .I0(direction_N_536), .I1(encoder0_position[13]), 
            .CO(n13108));
    SB_LUT4 position_659_add_4_14_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[12]), .I3(n13106), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_14 (.CI(n13106), .I0(direction_N_536), .I1(encoder0_position[12]), 
            .CO(n13107));
    SB_LUT4 position_659_add_4_13_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[11]), .I3(n13105), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_13 (.CI(n13105), .I0(direction_N_536), .I1(encoder0_position[11]), 
            .CO(n13106));
    SB_LUT4 position_659_add_4_12_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[10]), .I3(n13104), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_12 (.CI(n13104), .I0(direction_N_536), .I1(encoder0_position[10]), 
            .CO(n13105));
    SB_LUT4 position_659_add_4_11_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[9]), .I3(n13103), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_11 (.CI(n13103), .I0(direction_N_536), .I1(encoder0_position[9]), 
            .CO(n13104));
    SB_LUT4 position_659_add_4_10_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[8]), .I3(n13102), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_10 (.CI(n13102), .I0(direction_N_536), .I1(encoder0_position[8]), 
            .CO(n13103));
    SB_LUT4 position_659_add_4_9_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[7]), .I3(n13101), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_9 (.CI(n13101), .I0(direction_N_536), .I1(encoder0_position[7]), 
            .CO(n13102));
    SB_LUT4 position_659_add_4_8_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[6]), .I3(n13100), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_8 (.CI(n13100), .I0(direction_N_536), .I1(encoder0_position[6]), 
            .CO(n13101));
    SB_LUT4 position_659_add_4_7_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[5]), .I3(n13099), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_7 (.CI(n13099), .I0(direction_N_536), .I1(encoder0_position[5]), 
            .CO(n13100));
    SB_LUT4 position_659_add_4_6_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[4]), .I3(n13098), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_6 (.CI(n13098), .I0(direction_N_536), .I1(encoder0_position[4]), 
            .CO(n13099));
    SB_LUT4 position_659_add_4_5_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[3]), .I3(n13097), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_5 (.CI(n13097), .I0(direction_N_536), .I1(encoder0_position[3]), 
            .CO(n13098));
    SB_LUT4 position_659_add_4_4_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[2]), .I3(n13096), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_4 (.CI(n13096), .I0(direction_N_536), .I1(encoder0_position[2]), 
            .CO(n13097));
    SB_LUT4 position_659_add_4_3_lut (.I0(GND_net), .I1(direction_N_536), 
            .I2(encoder0_position[1]), .I3(n13095), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_3 (.CI(n13095), .I0(direction_N_536), .I1(encoder0_position[1]), 
            .CO(n13096));
    SB_LUT4 position_659_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(encoder0_position[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam position_659_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_659_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(encoder0_position[0]), 
            .CO(n13095));
    SB_DFF b_prev_52 (.Q(b_prev), .C(CLK_N_keep), .D(n5255));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    SB_DFFE position_659__i22 (.Q(encoder0_position[22]), .C(CLK_N_keep), 
            .E(direction_N_537), .D(n133[22]));   // vhdl/quadrature_decoder.vhd(77[4] 87[11])
    SB_LUT4 i3281_3_lut_4_lut (.I0(debounce_cnt), .I1(a_prev_N_543), .I2(\a_new[1] ), 
            .I3(a_prev), .O(n5257));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    defparam i3281_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i3279_3_lut_4_lut (.I0(debounce_cnt), .I1(a_prev_N_543), .I2(b_new[1]), 
            .I3(b_prev), .O(n5255));   // vhdl/quadrature_decoder.vhd(52[3] 89[10])
    defparam i3279_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
//
// Verilog Description of module \grp_debouncer(3,1000) 
//

module \grp_debouncer(3,1000)  (n5260, data_o, CLK_c, n5259, n5256, 
            reg_B, data_i, n14129, GND_net, VCC_net);
    input n5260;
    output [2:0]data_o;
    input CLK_c;
    input n5259;
    input n5256;
    output [2:0]reg_B;
    input [2:0]data_i;
    output n14129;
    input GND_net;
    input VCC_net;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire [9:0]n45;
    wire [9:0]cnt_reg;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(149[12:19])
    
    wire cnt_next_9__N_424;
    wire [2:0]reg_A;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(142[12:17])
    
    wire n6, n16, n17, n13021, n13020, n13019, n13018, n13017, 
        n13016, n13015, n13014, n13013;
    
    SB_DFF reg_out_i0_i1 (.Q(data_o[1]), .C(CLK_c), .D(n5260));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    SB_DFF reg_out_i0_i2 (.Q(data_o[2]), .C(CLK_c), .D(n5259));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    SB_DFFSR cnt_reg_665__i2 (.Q(cnt_reg[2]), .C(CLK_c), .D(n45[2]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFF reg_out_i0_i0 (.Q(data_o[0]), .C(CLK_c), .D(n5256));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(186[9] 190[16])
    SB_DFFSR cnt_reg_665__i1 (.Q(cnt_reg[1]), .C(CLK_c), .D(n45[1]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i3 (.Q(cnt_reg[3]), .C(CLK_c), .D(n45[3]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i4 (.Q(cnt_reg[4]), .C(CLK_c), .D(n45[4]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFF reg_B_i0 (.Q(reg_B[0]), .C(CLK_c), .D(reg_A[0]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_DFFSR cnt_reg_665__i5 (.Q(cnt_reg[5]), .C(CLK_c), .D(n45[5]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i6 (.Q(cnt_reg[6]), .C(CLK_c), .D(n45[6]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i7 (.Q(cnt_reg[7]), .C(CLK_c), .D(n45[7]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i8 (.Q(cnt_reg[8]), .C(CLK_c), .D(n45[8]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFFSR cnt_reg_665__i9 (.Q(cnt_reg[9]), .C(CLK_c), .D(n45[9]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFF reg_B_i2 (.Q(reg_B[2]), .C(CLK_c), .D(reg_A[2]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_DFF reg_B_i1 (.Q(reg_B[1]), .C(CLK_c), .D(reg_A[1]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_DFFSR cnt_reg_665__i0 (.Q(cnt_reg[0]), .C(CLK_c), .D(n45[0]), .R(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[78:85])
    SB_DFF reg_A_i1 (.Q(reg_A[1]), .C(CLK_c), .D(data_i[1]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_LUT4 i2_4_lut (.I0(reg_B[2]), .I1(reg_B[1]), .I2(reg_A[2]), .I3(reg_A[1]), 
            .O(n6));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[40:72])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(reg_B[0]), .I1(n6), .I2(n14129), .I3(reg_A[0]), 
            .O(cnt_next_9__N_424));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(168[40:72])
    defparam i3_4_lut.LUT_INIT = 16'hdfef;
    SB_LUT4 i6_4_lut (.I0(cnt_reg[0]), .I1(cnt_reg[1]), .I2(cnt_reg[7]), 
            .I3(cnt_reg[2]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i7_4_lut (.I0(cnt_reg[4]), .I1(cnt_reg[9]), .I2(cnt_reg[8]), 
            .I3(cnt_reg[5]), .O(n17));
    defparam i7_4_lut.LUT_INIT = 16'hbfff;
    SB_LUT4 i9_4_lut (.I0(n17), .I1(cnt_reg[6]), .I2(n16), .I3(cnt_reg[3]), 
            .O(n14129));
    defparam i9_4_lut.LUT_INIT = 16'hfbff;
    SB_DFF reg_A_i0 (.Q(reg_A[0]), .C(CLK_c), .D(data_i[0]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_DFF reg_A_i2 (.Q(reg_A[2]), .C(CLK_c), .D(data_i[2]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/grp_debouncer.vhd(178[9] 184[16])
    SB_LUT4 cnt_reg_665_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[9]), 
            .I3(n13021), .O(n45[9])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 cnt_reg_665_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[8]), 
            .I3(n13020), .O(n45[8])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_10 (.CI(n13020), .I0(GND_net), .I1(cnt_reg[8]), 
            .CO(n13021));
    SB_LUT4 cnt_reg_665_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[7]), 
            .I3(n13019), .O(n45[7])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_9 (.CI(n13019), .I0(GND_net), .I1(cnt_reg[7]), 
            .CO(n13020));
    SB_LUT4 cnt_reg_665_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[6]), 
            .I3(n13018), .O(n45[6])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_8 (.CI(n13018), .I0(GND_net), .I1(cnt_reg[6]), 
            .CO(n13019));
    SB_LUT4 cnt_reg_665_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[5]), 
            .I3(n13017), .O(n45[5])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_7 (.CI(n13017), .I0(GND_net), .I1(cnt_reg[5]), 
            .CO(n13018));
    SB_LUT4 cnt_reg_665_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[4]), 
            .I3(n13016), .O(n45[4])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_6 (.CI(n13016), .I0(GND_net), .I1(cnt_reg[4]), 
            .CO(n13017));
    SB_LUT4 cnt_reg_665_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[3]), 
            .I3(n13015), .O(n45[3])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_5 (.CI(n13015), .I0(GND_net), .I1(cnt_reg[3]), 
            .CO(n13016));
    SB_LUT4 cnt_reg_665_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[2]), 
            .I3(n13014), .O(n45[2])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_4 (.CI(n13014), .I0(GND_net), .I1(cnt_reg[2]), 
            .CO(n13015));
    SB_LUT4 cnt_reg_665_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[1]), 
            .I3(n13013), .O(n45[1])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_3 (.CI(n13013), .I0(GND_net), .I1(cnt_reg[1]), 
            .CO(n13014));
    SB_LUT4 cnt_reg_665_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(cnt_reg[0]), 
            .I3(VCC_net), .O(n45[0])) /* synthesis syn_instantiated=1 */ ;
    defparam cnt_reg_665_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY cnt_reg_665_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(cnt_reg[0]), 
            .CO(n13013));
    
endmodule
//
// Verilog Description of module pwm
//

module pwm (pwm_counter, n5180, n15246, pwm_out, CLK_c, n5182, GND_net, 
            VCC_net) /* synthesis syn_module_defined=1 */ ;
    output [31:0]pwm_counter;
    input n5180;
    input n15246;
    output pwm_out;
    input CLK_c;
    input n5182;
    input GND_net;
    input VCC_net;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n26, n13991, n17, n28, n27, n29, pwm_counter_31__N_407;
    wire [31:0]n133;
    
    wire n13052, n13051, n13050, n13049, n13048, n13047, n13046, 
        n13045, n13044, n13043, n13042, n13041, n13040, n13039, 
        n13038, n13037, n13036, n13035, n13034, n13033, n13032, 
        n13031, n13030, n13029, n13028, n13027, n13026, n13025, 
        n13024, n13023, n13022;
    
    SB_LUT4 i10_4_lut (.I0(pwm_counter[18]), .I1(pwm_counter[15]), .I2(pwm_counter[22]), 
            .I3(pwm_counter[21]), .O(n26));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(n13991), .I1(pwm_counter[19]), .I2(pwm_counter[9]), 
            .I3(pwm_counter[8]), .O(n17));
    defparam i1_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i12_4_lut (.I0(pwm_counter[16]), .I1(pwm_counter[23]), .I2(pwm_counter[13]), 
            .I3(pwm_counter[17]), .O(n28));
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(pwm_counter[10]), .I1(pwm_counter[11]), .I2(pwm_counter[14]), 
            .I3(pwm_counter[20]), .O(n27));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(n17), .I1(n26), .I2(pwm_counter[12]), .I3(n5180), 
            .O(n29));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9630_4_lut (.I0(n29), .I1(pwm_counter[31]), .I2(n27), .I3(n28), 
            .O(pwm_counter_31__N_407));   // verilog/pwm.v(18[8:40])
    defparam i9630_4_lut.LUT_INIT = 16'h3332;
    SB_DFFSR pwm_out_12 (.Q(pwm_out), .C(CLK_c), .D(n15246), .R(n5182));   // verilog/pwm.v(16[12] 26[6])
    SB_DFFSR pwm_counter_664__i31 (.Q(pwm_counter[31]), .C(CLK_c), .D(n133[31]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i30 (.Q(pwm_counter[30]), .C(CLK_c), .D(n133[30]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i29 (.Q(pwm_counter[29]), .C(CLK_c), .D(n133[29]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i28 (.Q(pwm_counter[28]), .C(CLK_c), .D(n133[28]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i27 (.Q(pwm_counter[27]), .C(CLK_c), .D(n133[27]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i26 (.Q(pwm_counter[26]), .C(CLK_c), .D(n133[26]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i25 (.Q(pwm_counter[25]), .C(CLK_c), .D(n133[25]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i24 (.Q(pwm_counter[24]), .C(CLK_c), .D(n133[24]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i23 (.Q(pwm_counter[23]), .C(CLK_c), .D(n133[23]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i22 (.Q(pwm_counter[22]), .C(CLK_c), .D(n133[22]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i21 (.Q(pwm_counter[21]), .C(CLK_c), .D(n133[21]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i20 (.Q(pwm_counter[20]), .C(CLK_c), .D(n133[20]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i19 (.Q(pwm_counter[19]), .C(CLK_c), .D(n133[19]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i18 (.Q(pwm_counter[18]), .C(CLK_c), .D(n133[18]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i17 (.Q(pwm_counter[17]), .C(CLK_c), .D(n133[17]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i16 (.Q(pwm_counter[16]), .C(CLK_c), .D(n133[16]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i15 (.Q(pwm_counter[15]), .C(CLK_c), .D(n133[15]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i14 (.Q(pwm_counter[14]), .C(CLK_c), .D(n133[14]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i13 (.Q(pwm_counter[13]), .C(CLK_c), .D(n133[13]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i12 (.Q(pwm_counter[12]), .C(CLK_c), .D(n133[12]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i11 (.Q(pwm_counter[11]), .C(CLK_c), .D(n133[11]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i10 (.Q(pwm_counter[10]), .C(CLK_c), .D(n133[10]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i9 (.Q(pwm_counter[9]), .C(CLK_c), .D(n133[9]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i8 (.Q(pwm_counter[8]), .C(CLK_c), .D(n133[8]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i7 (.Q(pwm_counter[7]), .C(CLK_c), .D(n133[7]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i6 (.Q(pwm_counter[6]), .C(CLK_c), .D(n133[6]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i5 (.Q(pwm_counter[5]), .C(CLK_c), .D(n133[5]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i4 (.Q(pwm_counter[4]), .C(CLK_c), .D(n133[4]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i3 (.Q(pwm_counter[3]), .C(CLK_c), .D(n133[3]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i2 (.Q(pwm_counter[2]), .C(CLK_c), .D(n133[2]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i1 (.Q(pwm_counter[1]), .C(CLK_c), .D(n133[1]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_DFFSR pwm_counter_664__i0 (.Q(pwm_counter[0]), .C(CLK_c), .D(n133[0]), 
            .R(pwm_counter_31__N_407));   // verilog/pwm.v(17[20:33])
    SB_LUT4 pwm_counter_664_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[31]), 
            .I3(n13052), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_counter_664_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[30]), 
            .I3(n13051), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_32 (.CI(n13051), .I0(GND_net), .I1(pwm_counter[30]), 
            .CO(n13052));
    SB_LUT4 pwm_counter_664_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[29]), 
            .I3(n13050), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_31 (.CI(n13050), .I0(GND_net), .I1(pwm_counter[29]), 
            .CO(n13051));
    SB_LUT4 pwm_counter_664_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[28]), 
            .I3(n13049), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_30 (.CI(n13049), .I0(GND_net), .I1(pwm_counter[28]), 
            .CO(n13050));
    SB_LUT4 pwm_counter_664_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[27]), 
            .I3(n13048), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_29 (.CI(n13048), .I0(GND_net), .I1(pwm_counter[27]), 
            .CO(n13049));
    SB_LUT4 pwm_counter_664_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[26]), 
            .I3(n13047), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_28 (.CI(n13047), .I0(GND_net), .I1(pwm_counter[26]), 
            .CO(n13048));
    SB_LUT4 pwm_counter_664_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[25]), 
            .I3(n13046), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_27 (.CI(n13046), .I0(GND_net), .I1(pwm_counter[25]), 
            .CO(n13047));
    SB_LUT4 pwm_counter_664_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[24]), 
            .I3(n13045), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_26 (.CI(n13045), .I0(GND_net), .I1(pwm_counter[24]), 
            .CO(n13046));
    SB_LUT4 pwm_counter_664_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[23]), 
            .I3(n13044), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_25 (.CI(n13044), .I0(GND_net), .I1(pwm_counter[23]), 
            .CO(n13045));
    SB_LUT4 pwm_counter_664_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[22]), 
            .I3(n13043), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_24 (.CI(n13043), .I0(GND_net), .I1(pwm_counter[22]), 
            .CO(n13044));
    SB_LUT4 pwm_counter_664_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[21]), 
            .I3(n13042), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_23 (.CI(n13042), .I0(GND_net), .I1(pwm_counter[21]), 
            .CO(n13043));
    SB_LUT4 pwm_counter_664_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[20]), 
            .I3(n13041), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_22 (.CI(n13041), .I0(GND_net), .I1(pwm_counter[20]), 
            .CO(n13042));
    SB_LUT4 pwm_counter_664_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[19]), 
            .I3(n13040), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_21 (.CI(n13040), .I0(GND_net), .I1(pwm_counter[19]), 
            .CO(n13041));
    SB_LUT4 pwm_counter_664_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[18]), 
            .I3(n13039), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_20 (.CI(n13039), .I0(GND_net), .I1(pwm_counter[18]), 
            .CO(n13040));
    SB_LUT4 pwm_counter_664_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[17]), 
            .I3(n13038), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_19 (.CI(n13038), .I0(GND_net), .I1(pwm_counter[17]), 
            .CO(n13039));
    SB_LUT4 pwm_counter_664_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[16]), 
            .I3(n13037), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_18 (.CI(n13037), .I0(GND_net), .I1(pwm_counter[16]), 
            .CO(n13038));
    SB_LUT4 pwm_counter_664_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[15]), 
            .I3(n13036), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_17 (.CI(n13036), .I0(GND_net), .I1(pwm_counter[15]), 
            .CO(n13037));
    SB_LUT4 pwm_counter_664_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[14]), 
            .I3(n13035), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_16 (.CI(n13035), .I0(GND_net), .I1(pwm_counter[14]), 
            .CO(n13036));
    SB_LUT4 pwm_counter_664_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[13]), 
            .I3(n13034), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_15 (.CI(n13034), .I0(GND_net), .I1(pwm_counter[13]), 
            .CO(n13035));
    SB_LUT4 pwm_counter_664_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[12]), 
            .I3(n13033), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_14 (.CI(n13033), .I0(GND_net), .I1(pwm_counter[12]), 
            .CO(n13034));
    SB_LUT4 pwm_counter_664_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[11]), 
            .I3(n13032), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_13 (.CI(n13032), .I0(GND_net), .I1(pwm_counter[11]), 
            .CO(n13033));
    SB_LUT4 pwm_counter_664_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[10]), 
            .I3(n13031), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_12 (.CI(n13031), .I0(GND_net), .I1(pwm_counter[10]), 
            .CO(n13032));
    SB_LUT4 pwm_counter_664_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[9]), 
            .I3(n13030), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_11 (.CI(n13030), .I0(GND_net), .I1(pwm_counter[9]), 
            .CO(n13031));
    SB_LUT4 pwm_counter_664_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[8]), 
            .I3(n13029), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_10 (.CI(n13029), .I0(GND_net), .I1(pwm_counter[8]), 
            .CO(n13030));
    SB_LUT4 pwm_counter_664_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[7]), 
            .I3(n13028), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_9 (.CI(n13028), .I0(GND_net), .I1(pwm_counter[7]), 
            .CO(n13029));
    SB_LUT4 pwm_counter_664_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[6]), 
            .I3(n13027), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_8 (.CI(n13027), .I0(GND_net), .I1(pwm_counter[6]), 
            .CO(n13028));
    SB_LUT4 pwm_counter_664_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[5]), 
            .I3(n13026), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_7 (.CI(n13026), .I0(GND_net), .I1(pwm_counter[5]), 
            .CO(n13027));
    SB_LUT4 pwm_counter_664_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[4]), 
            .I3(n13025), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_6 (.CI(n13025), .I0(GND_net), .I1(pwm_counter[4]), 
            .CO(n13026));
    SB_LUT4 pwm_counter_664_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[3]), 
            .I3(n13024), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_5 (.CI(n13024), .I0(GND_net), .I1(pwm_counter[3]), 
            .CO(n13025));
    SB_LUT4 pwm_counter_664_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[2]), 
            .I3(n13023), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_4 (.CI(n13023), .I0(GND_net), .I1(pwm_counter[2]), 
            .CO(n13024));
    SB_LUT4 pwm_counter_664_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[1]), 
            .I3(n13022), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_3 (.CI(n13022), .I0(GND_net), .I1(pwm_counter[1]), 
            .CO(n13023));
    SB_LUT4 pwm_counter_664_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_counter[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_664_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_counter_664_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(pwm_counter[0]), 
            .CO(n13022));
    SB_LUT4 i2_3_lut (.I0(pwm_counter[5]), .I1(pwm_counter[7]), .I2(pwm_counter[6]), 
            .I3(GND_net), .O(n13991));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    
endmodule
