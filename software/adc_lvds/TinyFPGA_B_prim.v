// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Mar 24 18:54:10 2020
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, LED, USBPU, PIN_1, PIN_2, PIN_3, PIN_4, 
            PIN_5, PIN_6, PIN_7, PIN_8, PIN_9, PIN_10, PIN_11, 
            PIN_12, PIN_13, PIN_14, PIN_15, PIN_16, PIN_17, PIN_18, 
            PIN_19, PIN_20, PIN_21, PIN_22, PIN_23, PIN_24, SPI_IO2) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output LED;   // verilog/TinyFPGA_B.v(4[10:13])
    input USBPU /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(5[9:14])
    input PIN_1 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(6[9:14])
    output PIN_2 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(7[9:14])
    input PIN_3 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(8[9:14])
    input PIN_4 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(9[9:14])
    input PIN_5 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    input PIN_6 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    input PIN_7 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    input PIN_8 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(13[9:14])
    input PIN_9 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(14[9:14])
    input PIN_10 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(15[9:15])
    input PIN_11 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(16[9:15])
    input PIN_12 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(17[9:15])
    inout PIN_13 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(18[9:15])
    input PIN_14 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(19[9:15])
    input PIN_15 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(20[9:15])
    input PIN_16 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(21[9:15])
    input PIN_17 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:15])
    output PIN_18 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(23[9:15])
    input PIN_19 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(24[9:15])
    input PIN_20 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(25[9:15])
    input PIN_21 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(26[9:15])
    input PIN_22 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(27[9:15])
    input PIN_23 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(28[9:15])
    input PIN_24 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(29[9:15])
    input SPI_IO2 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(30[9:16])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire clk_slow /* synthesis SET_AS_NETWORK=clk_slow, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(65[5:13])
    
    wire GND_net, VCC_net, LED_c, PIN_2_c, PIN_18_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(40[12:25])
    
    wire n44, n40, n39, n38, n37, diff_input;
    wire [31:0]clk_divider;   // verilog/TinyFPGA_B.v(66[9:20])
    wire [31:0]counter;   // verilog/TinyFPGA_B.v(88[9:16])
    wire [7:0]integrator;   // verilog/TinyFPGA_B.v(89[11:21])
    
    wire n2249;
    wire [7:0]data_out;   // verilog/TinyFPGA_B.v(94[11:19])
    
    wire n36, n35, n2216, clk_divider_31__N_139, n2217, counter_31__N_172, 
        n2248, n2247, n2246, n2245;
    wire [2:0]r_SM_Main;   // verilog/uart_tx.v(32[16:25])
    
    wire n2244;
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    wire [7:0]r_Tx_Data;   // verilog/uart_tx.v(35[16:25])
    
    wire n2243, n2242;
    wire [2:0]r_SM_Main_2__N_236;
    
    wire n2241;
    wire [2:0]r_SM_Main_2__N_233;
    
    wire n2240, n2239, n2238, n2218, n2237, n10, n2252, n2219, 
        n2220, n2394, n2221, n2222, n2236, n2191, n2223, n2190, 
        n2189, n2188, n2187, n2186, n2185, n2184, n2183, n2182, 
        n2181, n2180, n2179, n2192, n2193, n2194, n2195, n2196, 
        n2197, n2198, n2199, n2200, n2201, n2202, n2203, n2204, 
        n2168, n2224, n1851, n1850, n1849, n1848, n1847, n2178, 
        n2167, n2166, n2165, n2164, n2225, n1845, n1844, n1843, 
        n1842, n1841, n1840, n1839, n1838, n1837, n1836, n1832, 
        n2251, n2226, n2227, n2177, n2228, n2229, n2176, n2230, 
        n2250, n2175, n6, n7, n8, n9, n10_adj_317, n11, n12, 
        n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
        n23, n24, n25, n26, n110, n111, n112, n113, n114, 
        n115, n116, n117, n118, n119, n120, n121, n122, n123, 
        n124, n125, n126, n127, n128, n129, n130, n131, n132, 
        n133, n134, n135, n2174, n38_adj_318, n39_adj_319, n40_adj_320, 
        n41, n42, n43, n44_adj_321, n45, n2163, n134_adj_322, 
        n135_adj_323, n136, n137, n138, n139, n140, n141, n142, 
        n143, n144, n145, n146, n147, n148, n149, n150, n151, 
        n152, n153, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n164, n165, n2205, n2206, n2207, n2208, 
        n2209, n2210, n2211, n2212, n2213, n2214, n2215, n6_adj_324, 
        n50, n49, n134_adj_325, n135_adj_326, n136_adj_327, n137_adj_328, 
        n138_adj_329, n139_adj_330, n140_adj_331, n141_adj_332, n142_adj_333, 
        n143_adj_334, n144_adj_335, n145_adj_336, n146_adj_337, n147_adj_338, 
        n148_adj_339, n149_adj_340, n150_adj_341, n151_adj_342, n152_adj_343, 
        n153_adj_344, n154_adj_345, n155_adj_346, n156_adj_347, n157_adj_348, 
        n158_adj_349, n159_adj_350, n160_adj_351, n161_adj_352, n162_adj_353, 
        n163_adj_354, n164_adj_355, n165_adj_356, n45_adj_357, n44_adj_358, 
        n43_adj_359, n42_adj_360, n41_adj_361, n40_adj_362, n2231, 
        n2232, n2233, n2234, n2235, n2002, n2173, n2172, n2171, 
        n2170, n2395, n2433, n2256, n1831, n2255, n2308, n2169, 
        n1757, n2254, n2253;
    
    VCC i2 (.Y(VCC_net));
    uart_tx uart (.CLK_c(CLK_c), .r_SM_Main({r_SM_Main}), .PIN_2_c(PIN_2_c), 
            .\r_SM_Main_2__N_236[0] (r_SM_Main_2__N_236[0]), .n1757(n1757), 
            .\r_SM_Main_2__N_233[1] (r_SM_Main_2__N_233[1]), .GND_net(GND_net), 
            .\r_Bit_Index[0] (r_Bit_Index[0]), .n2002(n2002), .n2308(n2308), 
            .VCC_net(VCC_net), .r_Tx_Data({r_Tx_Data}), .n1851(n1851), 
            .n1850(n1850), .n1849(n1849), .n1848(n1848), .n1836(n1836), 
            .n1843(n1843), .n1842(n1842), .n1841(n1841), .n2433(n2433), 
            .n1831(n1831)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(117[9] 126[2])
    SB_IO differential_input (.PACKAGE_PIN(PIN_13), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(CLK_c), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(diff_input)) /* synthesis syn_instantiated=1 */ ;   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam differential_input.PIN_TYPE = 6'b000001;
    defparam differential_input.PULLUP = 1'b0;
    defparam differential_input.NEG_TRIGGER = 1'b0;
    defparam differential_input.IO_STANDARD = "SB_LVDS_INPUT";
    SB_LUT4 counter_117_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(counter[29]), 
            .I3(n2223), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_13 (.CI(n2173), .I0(GND_net), .I1(n15), 
            .CO(n2174));
    SB_LUT4 i640_3_lut (.I0(data_out[6]), .I1(integrator[6]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1837));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i640_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY counter_117_add_4_31 (.CI(n2223), .I0(GND_net), .I1(counter[29]), 
            .CO(n2224));
    SB_DFF clk_slow_25 (.Q(clk_slow), .C(CLK_c), .D(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(77[8] 85[4])
    SB_LUT4 i641_3_lut (.I0(data_out[5]), .I1(integrator[5]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1838));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i642_3_lut (.I0(data_out[4]), .I1(integrator[4]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1839));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i642_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 counter_117_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(counter[28]), 
            .I3(n2222), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i643_3_lut (.I0(data_out[3]), .I1(integrator[3]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1840));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i643_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_119_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n2166), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18_4_lut (.I0(clk_divider[17]), .I1(clk_divider[9]), .I2(clk_divider[26]), 
            .I3(clk_divider[14]), .O(n44_adj_358));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY counter_117_add_4_30 (.CI(n2222), .I0(GND_net), .I1(counter[28]), 
            .CO(n2223));
    SB_CARRY blink_counter_119_add_4_6 (.CI(n2166), .I0(GND_net), .I1(n22), 
            .CO(n2167));
    SB_LUT4 counter_117_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(counter[27]), 
            .I3(n2221), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_12 (.CI(n2172), .I0(GND_net), .I1(n16), 
            .CO(n2173));
    SB_DFF oversampler_26 (.Q(PIN_18_c), .C(clk_slow), .D(diff_input));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_CARRY counter_117_add_4_29 (.CI(n2221), .I0(GND_net), .I1(counter[27]), 
            .CO(n2222));
    SB_LUT4 integrator_118_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[1]), 
            .I3(n2188), .O(n44_adj_321)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i644_3_lut (.I0(r_Tx_Data[7]), .I1(data_out[7]), .I2(n1757), 
            .I3(GND_net), .O(n1841));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i644_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i645_3_lut (.I0(r_Tx_Data[6]), .I1(data_out[6]), .I2(n1757), 
            .I3(GND_net), .O(n1842));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i645_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_119_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n2173), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_119_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n2172), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_14 (.CI(n2174), .I0(GND_net), .I1(n14), 
            .CO(n2175));
    SB_LUT4 blink_counter_119_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n2174), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_15 (.CI(n2175), .I0(GND_net), .I1(n13), 
            .CO(n2176));
    SB_LUT4 i24_4_lut (.I0(n41_adj_361), .I1(n43_adj_359), .I2(n42_adj_360), 
            .I3(n44_adj_358), .O(n50));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_119_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n2165), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(counter[26]), 
            .I3(n2220), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i646_3_lut (.I0(r_Tx_Data[5]), .I1(data_out[5]), .I2(n1757), 
            .I3(GND_net), .O(n1843));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i646_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i647_3_lut (.I0(data_out[2]), .I1(integrator[2]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1844));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i647_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i648_3_lut (.I0(data_out[1]), .I1(integrator[1]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1845));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i650_3_lut (.I0(data_out[0]), .I1(integrator[0]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1847));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i650_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i651_3_lut (.I0(r_Tx_Data[4]), .I1(data_out[4]), .I2(n1757), 
            .I3(GND_net), .O(n1848));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i651_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i652_3_lut (.I0(r_Tx_Data[3]), .I1(data_out[3]), .I2(n1757), 
            .I3(GND_net), .O(n1849));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i652_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i653_3_lut (.I0(r_Tx_Data[2]), .I1(data_out[2]), .I2(n1757), 
            .I3(GND_net), .O(n1850));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i653_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_119_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n2175), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_divider_116__i31 (.Q(clk_divider[31]), .C(CLK_c), .D(n134_adj_325), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_CARRY counter_117_add_4_28 (.CI(n2220), .I0(GND_net), .I1(counter[26]), 
            .CO(n2221));
    SB_LUT4 counter_117_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(counter[25]), 
            .I3(n2219), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_27 (.CI(n2219), .I0(GND_net), .I1(counter[25]), 
            .CO(n2220));
    SB_LUT4 counter_117_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(counter[24]), 
            .I3(n2218), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i634_3_lut (.I0(r_Tx_Data[0]), .I1(data_out[0]), .I2(n1757), 
            .I3(GND_net), .O(n1831));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i635_3_lut (.I0(data_out[7]), .I1(integrator[7]), .I2(counter_31__N_172), 
            .I3(GND_net), .O(n1832));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    defparam i635_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY blink_counter_119_add_4_16 (.CI(n2176), .I0(GND_net), .I1(n12), 
            .CO(n2177));
    SB_CARRY counter_117_add_4_26 (.CI(n2218), .I0(GND_net), .I1(counter[24]), 
            .CO(n2219));
    SB_LUT4 i654_3_lut (.I0(r_Tx_Data[1]), .I1(data_out[1]), .I2(n1757), 
            .I3(GND_net), .O(n1851));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i654_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15_4_lut (.I0(counter[14]), .I1(counter[23]), .I2(counter[13]), 
            .I3(counter[11]), .O(n38));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(counter[19]), .I1(counter[30]), .I2(counter[22]), 
            .I3(counter[26]), .O(n36));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(counter[20]), .I1(counter[28]), .I2(counter[10]), 
            .I3(counter[29]), .O(n37));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_3_lut (.I0(counter[9]), .I1(counter[27]), .I2(counter[18]), 
            .I3(GND_net), .O(n35));
    defparam i12_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i17_4_lut (.I0(counter[12]), .I1(counter[25]), .I2(counter[8]), 
            .I3(counter[15]), .O(n40));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(n35), .I1(n37), .I2(n36), .I3(n38), .O(n44));
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut (.I0(counter[16]), .I1(counter[24]), .I2(counter[17]), 
            .I3(counter[21]), .O(n39));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i710_4_lut (.I0(n39), .I1(counter[31]), .I2(n44), .I3(n40), 
            .O(counter_31__N_172));   // verilog/TinyFPGA_B.v(103[6:17])
    defparam i710_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i3_4_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(r_SM_Main_2__N_233[1]), .O(n2433));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 i639_3_lut_4_lut (.I0(n2002), .I1(r_SM_Main[1]), .I2(n2308), 
            .I3(r_Bit_Index[0]), .O(n1836));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i639_3_lut_4_lut.LUT_INIT = 16'h0f40;
    SB_CARRY integrator_118_add_4_3 (.CI(n2188), .I0(GND_net), .I1(integrator[1]), 
            .CO(n2189));
    SB_LUT4 blink_counter_119_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n2176), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 integrator_118_add_4_2_lut (.I0(GND_net), .I1(diff_input), .I2(integrator[0]), 
            .I3(GND_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY integrator_118_add_4_2 (.CI(GND_net), .I0(diff_input), .I1(integrator[0]), 
            .CO(n2188));
    SB_LUT4 blink_counter_119_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n2187), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_119_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n2186), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1070_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2395));
    defparam i1070_4_lut.LUT_INIT = 16'hfec4;
    SB_CARRY blink_counter_119_add_4_26 (.CI(n2186), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n2187));
    SB_LUT4 i1069_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2394));
    defparam i1069_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 blink_counter_119_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n2185), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1071_3_lut (.I0(n2394), .I1(n2395), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i1071_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY blink_counter_119_add_4_25 (.CI(n2185), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n2186));
    SB_LUT4 counter_117_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(counter[23]), 
            .I3(n2217), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter[0]), 
            .CO(n2195));
    SB_LUT4 blink_counter_119_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n2184), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_25 (.CI(n2217), .I0(GND_net), .I1(counter[23]), 
            .CO(n2218));
    SB_LUT4 counter_117_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(counter[22]), 
            .I3(n2216), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 integrator_118_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[7]), 
            .I3(n2194), .O(n38_adj_318)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 integrator_118_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[2]), 
            .I3(n2189), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_24 (.CI(n2184), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n2185));
    SB_LUT4 blink_counter_119_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n2183), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_24 (.CI(n2216), .I0(GND_net), .I1(counter[22]), 
            .CO(n2217));
    SB_LUT4 integrator_118_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[6]), 
            .I3(n2193), .O(n39_adj_319)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(counter[21]), 
            .I3(n2215), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY integrator_118_add_4_8 (.CI(n2193), .I0(GND_net), .I1(integrator[6]), 
            .CO(n2194));
    SB_CARRY blink_counter_119_add_4_23 (.CI(n2183), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n2184));
    SB_CARRY counter_117_add_4_23 (.CI(n2215), .I0(GND_net), .I1(counter[21]), 
            .CO(n2216));
    SB_LUT4 integrator_118_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[5]), 
            .I3(n2192), .O(n40_adj_320)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(counter[20]), 
            .I3(n2214), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 clk_divider_116_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[31]), 
            .I3(n2256), .O(n134_adj_325)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_22 (.CI(n2214), .I0(GND_net), .I1(counter[20]), 
            .CO(n2215));
    SB_CARRY integrator_118_add_4_7 (.CI(n2192), .I0(GND_net), .I1(integrator[5]), 
            .CO(n2193));
    SB_LUT4 counter_117_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(counter[19]), 
            .I3(n2213), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 integrator_118_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[4]), 
            .I3(n2191), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_divider_116__i30 (.Q(clk_divider[30]), .C(CLK_c), .D(n135_adj_326), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_LUT4 clk_divider_116_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[30]), 
            .I3(n2255), .O(n135_adj_326)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_21 (.CI(n2213), .I0(GND_net), .I1(counter[19]), 
            .CO(n2214));
    SB_LUT4 counter_117_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(counter[18]), 
            .I3(n2212), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_20 (.CI(n2212), .I0(GND_net), .I1(counter[18]), 
            .CO(n2213));
    SB_LUT4 counter_117_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(counter[17]), 
            .I3(n2211), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_19 (.CI(n2211), .I0(GND_net), .I1(counter[17]), 
            .CO(n2212));
    SB_LUT4 counter_117_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(counter[16]), 
            .I3(n2210), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY integrator_118_add_4_6 (.CI(n2191), .I0(GND_net), .I1(integrator[4]), 
            .CO(n2192));
    SB_CARRY counter_117_add_4_18 (.CI(n2210), .I0(GND_net), .I1(counter[16]), 
            .CO(n2211));
    SB_LUT4 i15_4_lut_adj_1 (.I0(clk_divider[6]), .I1(clk_divider[22]), 
            .I2(clk_divider[21]), .I3(clk_divider[28]), .O(n41_adj_361));
    defparam i15_4_lut_adj_1.LUT_INIT = 16'hfffe;
    SB_LUT4 counter_117_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(counter[15]), 
            .I3(n2209), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_17 (.CI(n2209), .I0(GND_net), .I1(counter[15]), 
            .CO(n2210));
    SB_LUT4 counter_117_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(counter[14]), 
            .I3(n2208), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_16 (.CI(n2208), .I0(GND_net), .I1(counter[14]), 
            .CO(n2209));
    SB_LUT4 i16_4_lut_adj_2 (.I0(clk_divider[19]), .I1(clk_divider[27]), 
            .I2(clk_divider[30]), .I3(clk_divider[20]), .O(n42_adj_360));
    defparam i16_4_lut_adj_2.LUT_INIT = 16'hfffe;
    SB_LUT4 counter_117_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(counter[13]), 
            .I3(n2207), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_15 (.CI(n2207), .I0(GND_net), .I1(counter[13]), 
            .CO(n2208));
    SB_LUT4 counter_117_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(counter[12]), 
            .I3(n2206), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_14 (.CI(n2206), .I0(GND_net), .I1(counter[12]), 
            .CO(n2207));
    SB_LUT4 counter_117_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(counter[11]), 
            .I3(n2205), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_13 (.CI(n2205), .I0(GND_net), .I1(counter[11]), 
            .CO(n2206));
    SB_LUT4 counter_117_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(counter[10]), 
            .I3(n2204), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i291_4_lut (.I0(clk_divider[0]), .I1(clk_divider[4]), .I2(n6_adj_324), 
            .I3(clk_divider[3]), .O(n10));
    defparam i291_4_lut.LUT_INIT = 16'hccc8;
    SB_CARRY counter_117_add_4_12 (.CI(n2204), .I0(GND_net), .I1(counter[10]), 
            .CO(n2205));
    SB_DFFSR clk_divider_116__i29 (.Q(clk_divider[29]), .C(CLK_c), .D(n136_adj_327), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i28 (.Q(clk_divider[28]), .C(CLK_c), .D(n137_adj_328), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i27 (.Q(clk_divider[27]), .C(CLK_c), .D(n138_adj_329), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i26 (.Q(clk_divider[26]), .C(CLK_c), .D(n139_adj_330), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_CARRY clk_divider_116_add_4_32 (.CI(n2255), .I0(GND_net), .I1(clk_divider[30]), 
            .CO(n2256));
    SB_DFFSR clk_divider_116__i25 (.Q(clk_divider[25]), .C(CLK_c), .D(n140_adj_331), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i24 (.Q(clk_divider[24]), .C(CLK_c), .D(n141_adj_332), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i23 (.Q(clk_divider[23]), .C(CLK_c), .D(n142_adj_333), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i22 (.Q(clk_divider[22]), .C(CLK_c), .D(n143_adj_334), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i21 (.Q(clk_divider[21]), .C(CLK_c), .D(n144_adj_335), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i20 (.Q(clk_divider[20]), .C(CLK_c), .D(n145_adj_336), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i19 (.Q(clk_divider[19]), .C(CLK_c), .D(n146_adj_337), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i18 (.Q(clk_divider[18]), .C(CLK_c), .D(n147_adj_338), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i17 (.Q(clk_divider[17]), .C(CLK_c), .D(n148_adj_339), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i16 (.Q(clk_divider[16]), .C(CLK_c), .D(n149_adj_340), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i15 (.Q(clk_divider[15]), .C(CLK_c), .D(n150_adj_341), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i14 (.Q(clk_divider[14]), .C(CLK_c), .D(n151_adj_342), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i13 (.Q(clk_divider[13]), .C(CLK_c), .D(n152_adj_343), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i12 (.Q(clk_divider[12]), .C(CLK_c), .D(n153_adj_344), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i11 (.Q(clk_divider[11]), .C(CLK_c), .D(n154_adj_345), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i10 (.Q(clk_divider[10]), .C(CLK_c), .D(n155_adj_346), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i9 (.Q(clk_divider[9]), .C(CLK_c), .D(n156_adj_347), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i8 (.Q(clk_divider[8]), .C(CLK_c), .D(n157_adj_348), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i7 (.Q(clk_divider[7]), .C(CLK_c), .D(n158_adj_349), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i6 (.Q(clk_divider[6]), .C(CLK_c), .D(n159_adj_350), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i5 (.Q(clk_divider[5]), .C(CLK_c), .D(n160_adj_351), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i4 (.Q(clk_divider[4]), .C(CLK_c), .D(n161_adj_352), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i3 (.Q(clk_divider[3]), .C(CLK_c), .D(n162_adj_353), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR clk_divider_116__i2 (.Q(clk_divider[2]), .C(CLK_c), .D(n163_adj_354), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_LUT4 i2_2_lut (.I0(clk_divider[2]), .I1(clk_divider[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_324));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 clk_divider_116_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[29]), 
            .I3(n2254), .O(n136_adj_327)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_divider_116__i1 (.Q(clk_divider[1]), .C(CLK_c), .D(n164_adj_355), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_LUT4 counter_117_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(counter[9]), 
            .I3(n2203), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17_4_lut_adj_3 (.I0(clk_divider[16]), .I1(clk_divider[29]), 
            .I2(clk_divider[13]), .I3(clk_divider[23]), .O(n43_adj_359));
    defparam i17_4_lut_adj_3.LUT_INIT = 16'hfffe;
    SB_CARRY clk_divider_116_add_4_31 (.CI(n2254), .I0(GND_net), .I1(clk_divider[29]), 
            .CO(n2255));
    SB_CARRY counter_117_add_4_11 (.CI(n2203), .I0(GND_net), .I1(counter[9]), 
            .CO(n2204));
    SB_CARRY blink_counter_119_add_4_7 (.CI(n2167), .I0(GND_net), .I1(n21), 
            .CO(n2168));
    SB_LUT4 clk_divider_116_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[28]), 
            .I3(n2253), .O(n137_adj_328)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_30 (.CI(n2253), .I0(GND_net), .I1(clk_divider[28]), 
            .CO(n2254));
    SB_DFFSR counter_117__i31 (.Q(counter[31]), .C(clk_slow), .D(n134_adj_322), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i30 (.Q(counter[30]), .C(clk_slow), .D(n135_adj_323), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_CARRY blink_counter_119_add_4_5 (.CI(n2165), .I0(GND_net), .I1(n23), 
            .CO(n2166));
    SB_LUT4 blink_counter_119_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n2164), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_4 (.CI(n2164), .I0(GND_net), .I1(n24), 
            .CO(n2165));
    SB_LUT4 blink_counter_119_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n2163), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_3 (.CI(n2163), .I0(GND_net), .I1(n25), 
            .CO(n2164));
    SB_LUT4 blink_counter_119_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n2163));
    SB_LUT4 clk_divider_116_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[27]), 
            .I3(n2252), .O(n138_adj_329)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_4_lut_adj_4 (.I0(clk_divider[11]), .I1(clk_divider[15]), 
            .I2(clk_divider[8]), .I3(clk_divider[24]), .O(n40_adj_362));
    defparam i14_4_lut_adj_4.LUT_INIT = 16'hfffe;
    SB_LUT4 counter_117_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(counter[8]), 
            .I3(n2202), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_10 (.CI(n2202), .I0(GND_net), .I1(counter[8]), 
            .CO(n2203));
    SB_LUT4 counter_117_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(counter[7]), 
            .I3(n2201), .O(n158)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_29 (.CI(n2252), .I0(GND_net), .I1(clk_divider[27]), 
            .CO(n2253));
    SB_LUT4 clk_divider_116_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[26]), 
            .I3(n2251), .O(n139_adj_330)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_9 (.CI(n2201), .I0(GND_net), .I1(counter[7]), 
            .CO(n2202));
    SB_DFFSR counter_117__i29 (.Q(counter[29]), .C(clk_slow), .D(n136), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i28 (.Q(counter[28]), .C(clk_slow), .D(n137), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i27 (.Q(counter[27]), .C(clk_slow), .D(n138), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i26 (.Q(counter[26]), .C(clk_slow), .D(n139), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i25 (.Q(counter[25]), .C(clk_slow), .D(n140), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i24 (.Q(counter[24]), .C(clk_slow), .D(n141), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i23 (.Q(counter[23]), .C(clk_slow), .D(n142), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i22 (.Q(counter[22]), .C(clk_slow), .D(n143), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i21 (.Q(counter[21]), .C(clk_slow), .D(n144), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i20 (.Q(counter[20]), .C(clk_slow), .D(n145), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i19 (.Q(counter[19]), .C(clk_slow), .D(n146), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i18 (.Q(counter[18]), .C(clk_slow), .D(n147), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i17 (.Q(counter[17]), .C(clk_slow), .D(n148), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i16 (.Q(counter[16]), .C(clk_slow), .D(n149), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i15 (.Q(counter[15]), .C(clk_slow), .D(n150), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i14 (.Q(counter[14]), .C(clk_slow), .D(n151), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_CARRY clk_divider_116_add_4_28 (.CI(n2251), .I0(GND_net), .I1(clk_divider[26]), 
            .CO(n2252));
    SB_LUT4 counter_117_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(counter[6]), 
            .I3(n2200), .O(n159)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR counter_117__i13 (.Q(counter[13]), .C(clk_slow), .D(n152), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i12 (.Q(counter[12]), .C(clk_slow), .D(n153), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i11 (.Q(counter[11]), .C(clk_slow), .D(n154), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i10 (.Q(counter[10]), .C(clk_slow), .D(n155), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i9 (.Q(counter[9]), .C(clk_slow), .D(n156), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i8 (.Q(counter[8]), .C(clk_slow), .D(n157), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i7 (.Q(counter[7]), .C(clk_slow), .D(n158), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i6 (.Q(counter[6]), .C(clk_slow), .D(n159), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i5 (.Q(counter[5]), .C(clk_slow), .D(n160), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i4 (.Q(counter[4]), .C(clk_slow), .D(n161), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i3 (.Q(counter[3]), .C(clk_slow), .D(n162), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR counter_117__i2 (.Q(counter[2]), .C(clk_slow), .D(n163), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_CARRY counter_117_add_4_8 (.CI(n2200), .I0(GND_net), .I1(counter[6]), 
            .CO(n2201));
    SB_DFFSR counter_117__i1 (.Q(counter[1]), .C(clk_slow), .D(n164), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_CARRY blink_counter_119_add_4_17 (.CI(n2177), .I0(GND_net), .I1(n11), 
            .CO(n2178));
    SB_LUT4 blink_counter_119_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n2177), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_18 (.CI(n2178), .I0(GND_net), .I1(n10_adj_317), 
            .CO(n2179));
    SB_DFF data_out_i0_i0 (.Q(data_out[0]), .C(clk_slow), .D(n1847));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_LUT4 blink_counter_119_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n2167), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_8 (.CI(n2168), .I0(GND_net), .I1(n20), 
            .CO(n2169));
    SB_LUT4 blink_counter_119_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n2168), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_9 (.CI(n2169), .I0(GND_net), .I1(n19), 
            .CO(n2170));
    SB_LUT4 blink_counter_119_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n2169), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_10 (.CI(n2170), .I0(GND_net), .I1(n18), 
            .CO(n2171));
    SB_LUT4 blink_counter_119_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n2170), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_11 (.CI(n2171), .I0(GND_net), .I1(n17), 
            .CO(n2172));
    SB_LUT4 blink_counter_119_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n2171), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_119__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_IO PIN_2_pad (.PACKAGE_PIN(PIN_2), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_2_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_2_pad.PIN_TYPE = 6'b011001;
    defparam PIN_2_pad.PULLUP = 1'b0;
    defparam PIN_2_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_2_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_18_pad (.PACKAGE_PIN(PIN_18), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_18_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_18_pad.PIN_TYPE = 6'b011001;
    defparam PIN_18_pad.PULLUP = 1'b0;
    defparam PIN_18_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_18_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 counter_117_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(counter[5]), 
            .I3(n2199), .O(n160)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_7 (.CI(n2199), .I0(GND_net), .I1(counter[5]), 
            .CO(n2200));
    SB_LUT4 blink_counter_119_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_317), .I3(n2178), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 clk_divider_116_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[25]), 
            .I3(n2250), .O(n140_adj_331)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter[4]), 
            .I3(n2198), .O(n161)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_27 (.CI(n2250), .I0(GND_net), .I1(clk_divider[25]), 
            .CO(n2251));
    SB_DFF data_out_i0_i1 (.Q(data_out[1]), .C(clk_slow), .D(n1845));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_LUT4 clk_divider_116_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[24]), 
            .I3(n2249), .O(n141_adj_332)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_19 (.CI(n2179), .I0(GND_net), .I1(n9), 
            .CO(n2180));
    SB_CARRY counter_117_add_4_6 (.CI(n2198), .I0(GND_net), .I1(counter[4]), 
            .CO(n2199));
    SB_CARRY clk_divider_116_add_4_26 (.CI(n2249), .I0(GND_net), .I1(clk_divider[24]), 
            .CO(n2250));
    SB_LUT4 clk_divider_116_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[23]), 
            .I3(n2248), .O(n142_adj_333)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_25 (.CI(n2248), .I0(GND_net), .I1(clk_divider[23]), 
            .CO(n2249));
    SB_LUT4 clk_divider_116_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[22]), 
            .I3(n2247), .O(n143_adj_334)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_24 (.CI(n2247), .I0(GND_net), .I1(clk_divider[22]), 
            .CO(n2248));
    SB_LUT4 clk_divider_116_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[21]), 
            .I3(n2246), .O(n144_adj_335)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_23 (.CI(n2246), .I0(GND_net), .I1(clk_divider[21]), 
            .CO(n2247));
    SB_LUT4 clk_divider_116_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[20]), 
            .I3(n2245), .O(n145_adj_336)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_22 (.CI(n2245), .I0(GND_net), .I1(clk_divider[20]), 
            .CO(n2246));
    SB_LUT4 clk_divider_116_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[19]), 
            .I3(n2244), .O(n146_adj_337)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_out_i0_i2 (.Q(data_out[2]), .C(clk_slow), .D(n1844));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_CARRY clk_divider_116_add_4_21 (.CI(n2244), .I0(GND_net), .I1(clk_divider[19]), 
            .CO(n2245));
    SB_LUT4 clk_divider_116_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[18]), 
            .I3(n2243), .O(n147_adj_338)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_20 (.CI(n2243), .I0(GND_net), .I1(clk_divider[18]), 
            .CO(n2244));
    SB_LUT4 clk_divider_116_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[17]), 
            .I3(n2242), .O(n148_adj_339)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_out_i0_i3 (.Q(data_out[3]), .C(clk_slow), .D(n1840));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_CARRY clk_divider_116_add_4_19 (.CI(n2242), .I0(GND_net), .I1(clk_divider[17]), 
            .CO(n2243));
    SB_DFF data_out_i0_i4 (.Q(data_out[4]), .C(clk_slow), .D(n1839));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_LUT4 clk_divider_116_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[16]), 
            .I3(n2241), .O(n149_adj_340)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_DFF data_out_i0_i5 (.Q(data_out[5]), .C(clk_slow), .D(n1838));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_CARRY clk_divider_116_add_4_18 (.CI(n2241), .I0(GND_net), .I1(clk_divider[16]), 
            .CO(n2242));
    SB_DFF data_out_i0_i6 (.Q(data_out[6]), .C(clk_slow), .D(n1837));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_LUT4 clk_divider_116_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[15]), 
            .I3(n2240), .O(n150_adj_341)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_17 (.CI(n2240), .I0(GND_net), .I1(clk_divider[15]), 
            .CO(n2241));
    SB_LUT4 clk_divider_116_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[14]), 
            .I3(n2239), .O(n151_adj_342)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_16 (.CI(n2239), .I0(GND_net), .I1(clk_divider[14]), 
            .CO(n2240));
    SB_LUT4 clk_divider_116_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[13]), 
            .I3(n2238), .O(n152_adj_343)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR integrator_118__i0 (.Q(integrator[0]), .C(clk_slow), .D(n45), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_CARRY clk_divider_116_add_4_15 (.CI(n2238), .I0(GND_net), .I1(clk_divider[13]), 
            .CO(n2239));
    SB_LUT4 counter_117_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter[3]), 
            .I3(n2197), .O(n162)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 clk_divider_116_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[12]), 
            .I3(n2237), .O(n153_adj_344)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_14 (.CI(n2237), .I0(GND_net), .I1(clk_divider[12]), 
            .CO(n2238));
    SB_LUT4 clk_divider_116_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[11]), 
            .I3(n2236), .O(n154_adj_345)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_13 (.CI(n2236), .I0(GND_net), .I1(clk_divider[11]), 
            .CO(n2237));
    SB_LUT4 clk_divider_116_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[10]), 
            .I3(n2235), .O(n155_adj_346)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_12 (.CI(n2235), .I0(GND_net), .I1(clk_divider[10]), 
            .CO(n2236));
    SB_LUT4 clk_divider_116_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[9]), 
            .I3(n2234), .O(n156_adj_347)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_11 (.CI(n2234), .I0(GND_net), .I1(clk_divider[9]), 
            .CO(n2235));
    SB_DFFSR counter_117__i0 (.Q(counter[0]), .C(clk_slow), .D(n165), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(100[14:24])
    SB_DFFSR clk_divider_116__i0 (.Q(clk_divider[0]), .C(CLK_c), .D(n165_adj_356), 
            .R(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(78[18:31])
    SB_DFFSR integrator_118__i7 (.Q(integrator[7]), .C(clk_slow), .D(n38_adj_318), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFFSR integrator_118__i6 (.Q(integrator[6]), .C(clk_slow), .D(n39_adj_319), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_LUT4 blink_counter_119_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n2179), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_20 (.CI(n2180), .I0(GND_net), .I1(n8), 
            .CO(n2181));
    SB_LUT4 blink_counter_119_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n2180), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_21 (.CI(n2181), .I0(GND_net), .I1(n7), 
            .CO(n2182));
    SB_DFFSR integrator_118__i5 (.Q(integrator[5]), .C(clk_slow), .D(n40_adj_320), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFFSR integrator_118__i4 (.Q(integrator[4]), .C(clk_slow), .D(n41), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFFSR integrator_118__i3 (.Q(integrator[3]), .C(clk_slow), .D(n42), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFFSR integrator_118__i2 (.Q(integrator[2]), .C(clk_slow), .D(n43), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFFSR integrator_118__i1 (.Q(integrator[1]), .C(clk_slow), .D(n44_adj_321), 
            .R(counter_31__N_172));   // verilog/TinyFPGA_B.v(101[17:38])
    SB_DFF blink_counter_119__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_LUT4 blink_counter_119_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n2181), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_119_add_4_22 (.CI(n2182), .I0(GND_net), .I1(n6), 
            .CO(n2183));
    SB_DFF blink_counter_119__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i16 (.Q(n10_adj_317), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i12 (.Q(n14), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_119__i1 (.Q(n25), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF data_out_i0_i7 (.Q(data_out[7]), .C(clk_slow), .D(n1832));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_LUT4 clk_divider_116_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[8]), 
            .I3(n2233), .O(n157_adj_348)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_10 (.CI(n2233), .I0(GND_net), .I1(clk_divider[8]), 
            .CO(n2234));
    SB_CARRY counter_117_add_4_5 (.CI(n2197), .I0(GND_net), .I1(counter[3]), 
            .CO(n2198));
    SB_LUT4 clk_divider_116_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[7]), 
            .I3(n2232), .O(n158_adj_349)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_9 (.CI(n2232), .I0(GND_net), .I1(clk_divider[7]), 
            .CO(n2233));
    SB_LUT4 integrator_118_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(integrator[3]), 
            .I3(n2190), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam integrator_118_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 clk_divider_116_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[6]), 
            .I3(n2231), .O(n159_adj_350)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter[2]), 
            .I3(n2196), .O(n163)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i23_4_lut (.I0(n45_adj_357), .I1(clk_divider[7]), .I2(n40_adj_362), 
            .I3(clk_divider[25]), .O(n49));
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY clk_divider_116_add_4_8 (.CI(n2231), .I0(GND_net), .I1(clk_divider[6]), 
            .CO(n2232));
    SB_LUT4 clk_divider_116_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[5]), 
            .I3(n2230), .O(n160_adj_351)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_4 (.CI(n2196), .I0(GND_net), .I1(counter[2]), 
            .CO(n2197));
    SB_LUT4 counter_117_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter[1]), 
            .I3(n2195), .O(n164)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_7 (.CI(n2230), .I0(GND_net), .I1(clk_divider[5]), 
            .CO(n2231));
    SB_CARRY integrator_118_add_4_5 (.CI(n2190), .I0(GND_net), .I1(integrator[3]), 
            .CO(n2191));
    SB_LUT4 clk_divider_116_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[4]), 
            .I3(n2229), .O(n161_adj_352)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF send_29 (.Q(r_SM_Main_2__N_236[0]), .C(clk_slow), .D(counter_31__N_172));   // verilog/TinyFPGA_B.v(98[8] 111[4])
    SB_CARRY integrator_118_add_4_4 (.CI(n2189), .I0(GND_net), .I1(integrator[2]), 
            .CO(n2190));
    SB_LUT4 i19_4_lut (.I0(clk_divider[5]), .I1(clk_divider[18]), .I2(clk_divider[10]), 
            .I3(clk_divider[12]), .O(n45_adj_357));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY clk_divider_116_add_4_6 (.CI(n2229), .I0(GND_net), .I1(clk_divider[4]), 
            .CO(n2230));
    SB_LUT4 clk_divider_116_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[3]), 
            .I3(n2228), .O(n162_adj_353)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_119_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n2182), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_119_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_5 (.CI(n2228), .I0(GND_net), .I1(clk_divider[3]), 
            .CO(n2229));
    SB_LUT4 clk_divider_116_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[2]), 
            .I3(n2227), .O(n163_adj_354)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_3 (.CI(n2195), .I0(GND_net), .I1(counter[1]), 
            .CO(n2196));
    SB_CARRY clk_divider_116_add_4_4 (.CI(n2227), .I0(GND_net), .I1(clk_divider[2]), 
            .CO(n2228));
    SB_LUT4 clk_divider_116_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[1]), 
            .I3(n2226), .O(n164_adj_355)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i708_4_lut (.I0(n49), .I1(clk_divider[31]), .I2(n10), .I3(n50), 
            .O(clk_divider_31__N_139));   // verilog/TinyFPGA_B.v(79[6:20])
    defparam i708_4_lut.LUT_INIT = 16'h3332;
    GND i1 (.Y(GND_net));
    SB_CARRY clk_divider_116_add_4_3 (.CI(n2226), .I0(GND_net), .I1(clk_divider[1]), 
            .CO(n2227));
    SB_LUT4 clk_divider_116_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(clk_divider[0]), 
            .I3(VCC_net), .O(n165_adj_356)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_divider_116_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_divider_116_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(clk_divider[0]), 
            .CO(n2226));
    SB_LUT4 counter_117_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter[0]), 
            .I3(VCC_net), .O(n165)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(counter[31]), 
            .I3(n2225), .O(n134_adj_322)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_117_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(counter[30]), 
            .I3(n2224), .O(n135_adj_323)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_117_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_117_add_4_32 (.CI(n2224), .I0(GND_net), .I1(counter[30]), 
            .CO(n2225));
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (CLK_c, r_SM_Main, PIN_2_c, \r_SM_Main_2__N_236[0] , 
            n1757, \r_SM_Main_2__N_233[1] , GND_net, \r_Bit_Index[0] , 
            n2002, n2308, VCC_net, r_Tx_Data, n1851, n1850, n1849, 
            n1848, n1836, n1843, n1842, n1841, n2433, n1831) /* synthesis syn_module_defined=1 */ ;
    input CLK_c;
    output [2:0]r_SM_Main;
    output PIN_2_c;
    input \r_SM_Main_2__N_236[0] ;
    output n1757;
    output \r_SM_Main_2__N_233[1] ;
    input GND_net;
    output \r_Bit_Index[0] ;
    output n2002;
    output n2308;
    input VCC_net;
    output [7:0]r_Tx_Data;
    input n1851;
    input n1850;
    input n1849;
    input n1848;
    input n1836;
    input n1843;
    input n1842;
    input n1841;
    input n2433;
    input n1831;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire [31:0]n133;
    
    wire n1;
    wire [31:0]r_Clock_Count;   // verilog/uart_tx.v(33[16:29])
    
    wire n1796, n1712, n3, n3_adj_316;
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    wire [2:0]n598;
    
    wire n2431, n2425, o_Tx_Serial_N_312, n1711, n40, n38, n39, 
        n37, n34, n42, n2310, n2006, n46, n45, n2385, n2162, 
        n2161, n2160, n2159, n2135, n2136, n2143, n2144, n2142, 
        n2149, n2150, n2134, n2141, n2133, n2148, n2147, n2140, 
        n2138, n2139, n2428, n2137, n2146, n2145, n2132, n2158, 
        n2157, n2156, n2155, n2154, n2153, n2152, n2422, n2151;
    
    SB_DFFESR r_Clock_Count_121__i31 (.Q(r_Clock_Count[31]), .C(CLK_c), 
            .E(n1), .D(n133[31]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i25 (.Q(r_Clock_Count[25]), .C(CLK_c), 
            .E(n1), .D(n133[25]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i14 (.Q(r_Clock_Count[14]), .C(CLK_c), 
            .E(n1), .D(n133[14]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(CLK_c), .D(n1712), .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Clock_Count_121__i26 (.Q(r_Clock_Count[26]), .C(CLK_c), 
            .E(n1), .D(n133[26]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i27 (.Q(r_Clock_Count[27]), .C(CLK_c), 
            .E(n1), .D(n133[27]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i13 (.Q(r_Clock_Count[13]), .C(CLK_c), 
            .E(n1), .D(n133[13]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i2 (.Q(r_Clock_Count[2]), .C(CLK_c), .E(n1), 
            .D(n133[2]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i4 (.Q(r_Clock_Count[4]), .C(CLK_c), .E(n1), 
            .D(n133[4]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFE o_Tx_Serial_51 (.Q(PIN_2_c), .C(CLK_c), .E(n1), .D(n3));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i2_3_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(\r_SM_Main_2__N_236[0] ), 
            .I3(r_SM_Main[1]), .O(n1757));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i537_3_lut (.I0(\r_SM_Main_2__N_233[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[0]), .I3(GND_net), .O(n3_adj_316));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i537_3_lut.LUT_INIT = 16'h6c6c;
    SB_DFFESR r_Clock_Count_121__i28 (.Q(r_Clock_Count[28]), .C(CLK_c), 
            .E(n1), .D(n133[28]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i24 (.Q(r_Clock_Count[24]), .C(CLK_c), 
            .E(n1), .D(n133[24]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i23 (.Q(r_Clock_Count[23]), .C(CLK_c), 
            .E(n1), .D(n133[23]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i22 (.Q(r_Clock_Count[22]), .C(CLK_c), 
            .E(n1), .D(n133[22]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i21 (.Q(r_Clock_Count[21]), .C(CLK_c), 
            .E(n1), .D(n133[21]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i20 (.Q(r_Clock_Count[20]), .C(CLK_c), 
            .E(n1), .D(n133[20]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i19 (.Q(r_Clock_Count[19]), .C(CLK_c), 
            .E(n1), .D(n133[19]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i18 (.Q(r_Clock_Count[18]), .C(CLK_c), 
            .E(n1), .D(n133[18]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i17 (.Q(r_Clock_Count[17]), .C(CLK_c), 
            .E(n1), .D(n133[17]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i16 (.Q(r_Clock_Count[16]), .C(CLK_c), 
            .E(n1), .D(n133[16]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i15 (.Q(r_Clock_Count[15]), .C(CLK_c), 
            .E(n1), .D(n133[15]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i141_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n598[2]));   // verilog/uart_tx.v(99[36:51])
    defparam i141_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i134_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n598[1]));   // verilog/uart_tx.v(99[36:51])
    defparam i134_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i8225_i1_3_lut (.I0(n2431), .I1(n2425), .I2(r_Bit_Index[2]), 
            .I3(GND_net), .O(o_Tx_Serial_N_312));
    defparam i8225_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_62_i3_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_312), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n3));   // verilog/uart_tx.v(44[7] 143[14])
    defparam r_SM_Main_2__I_0_62_i3_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n2002));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i515_4_lut (.I0(\r_SM_Main_2__N_236[0] ), .I1(n2002), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_233[1] ), .O(n1711));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i515_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFESR r_Clock_Count_121__i5 (.Q(r_Clock_Count[5]), .C(CLK_c), .E(n1), 
            .D(n133[5]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i516_3_lut (.I0(n1711), .I1(\r_SM_Main_2__N_233[1] ), .I2(r_SM_Main[0]), 
            .I3(GND_net), .O(n1712));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i516_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFESR r_Clock_Count_121__i6 (.Q(r_Clock_Count[6]), .C(CLK_c), .E(n1), 
            .D(n133[6]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i7 (.Q(r_Clock_Count[7]), .C(CLK_c), .E(n1), 
            .D(n133[7]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i8 (.Q(r_Clock_Count[8]), .C(CLK_c), .E(n1), 
            .D(n133[8]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i9 (.Q(r_Clock_Count[9]), .C(CLK_c), .E(n1), 
            .D(n133[9]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i10 (.Q(r_Clock_Count[10]), .C(CLK_c), 
            .E(n1), .D(n133[10]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i16_4_lut (.I0(r_Clock_Count[11]), .I1(r_Clock_Count[21]), .I2(r_Clock_Count[17]), 
            .I3(r_Clock_Count[18]), .O(n40));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Clock_Count_121__i29 (.Q(r_Clock_Count[29]), .C(CLK_c), 
            .E(n1), .D(n133[29]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i14_4_lut (.I0(r_Clock_Count[20]), .I1(r_Clock_Count[25]), .I2(r_Clock_Count[15]), 
            .I3(r_Clock_Count[9]), .O(n38));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Clock_Count_121__i11 (.Q(r_Clock_Count[11]), .C(CLK_c), 
            .E(n1), .D(n133[11]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_121__i12 (.Q(r_Clock_Count[12]), .C(CLK_c), 
            .E(n1), .D(n133[12]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i15_4_lut (.I0(r_Clock_Count[28]), .I1(r_Clock_Count[24]), .I2(r_Clock_Count[30]), 
            .I3(r_Clock_Count[23]), .O(n39));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(r_Clock_Count[27]), .I1(r_Clock_Count[31]), .I2(r_Clock_Count[16]), 
            .I3(r_Clock_Count[19]), .O(n37));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_2_lut (.I0(r_Clock_Count[14]), .I1(r_Clock_Count[8]), .I2(GND_net), 
            .I3(GND_net), .O(n34));
    defparam i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18_4_lut (.I0(r_Clock_Count[26]), .I1(r_Clock_Count[13]), .I2(r_Clock_Count[22]), 
            .I3(r_Clock_Count[10]), .O(n42));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(CLK_c), .E(n2308), 
            .D(n598[1]), .R(n2310));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i806_4_lut (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[3]), .I2(r_Clock_Count[2]), 
            .I3(r_Clock_Count[0]), .O(n2006));
    defparam i806_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i22_4_lut (.I0(n37), .I1(n39), .I2(n38), .I3(n40), .O(n46));
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(r_Clock_Count[29]), .I1(n42), .I2(n34), .I3(r_Clock_Count[12]), 
            .O(n45));
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(CLK_c), .E(n2308), 
            .D(n598[2]), .R(n2310));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i3_4_lut (.I0(n2006), .I1(r_Clock_Count[6]), .I2(r_Clock_Count[4]), 
            .I3(r_Clock_Count[5]), .O(n2385));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(n2385), .I1(n45), .I2(r_Clock_Count[7]), .I3(n46), 
            .O(\r_SM_Main_2__N_233[1] ));
    defparam i1_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i1088_4_lut (.I0(r_SM_Main[2]), .I1(\r_SM_Main_2__N_233[1] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n1796));
    defparam i1088_4_lut.LUT_INIT = 16'h4445;
    SB_LUT4 i1095_3_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_233[1] ), .O(n2308));
    defparam i1095_3_lut_4_lut.LUT_INIT = 16'h1101;
    SB_LUT4 i1_1_lut (.I0(r_SM_Main[2]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1));
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR r_Clock_Count_121__i3 (.Q(r_Clock_Count[3]), .C(CLK_c), .E(n1), 
            .D(n133[3]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 r_Clock_Count_121_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[31]), .I3(n2162), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[30]), .I3(n2161), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_32 (.CI(n2161), .I0(GND_net), .I1(r_Clock_Count[30]), 
            .CO(n2162));
    SB_LUT4 r_Clock_Count_121_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[29]), .I3(n2160), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_31 (.CI(n2160), .I0(GND_net), .I1(r_Clock_Count[29]), 
            .CO(n2161));
    SB_LUT4 r_Clock_Count_121_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[28]), .I3(n2159), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[4]), 
            .I3(n2135), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_6 (.CI(n2135), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n2136));
    SB_LUT4 r_Clock_Count_121_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[12]), .I3(n2143), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_14 (.CI(n2143), .I0(GND_net), .I1(r_Clock_Count[12]), 
            .CO(n2144));
    SB_LUT4 r_Clock_Count_121_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[11]), .I3(n2142), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_20 (.CI(n2149), .I0(GND_net), .I1(r_Clock_Count[18]), 
            .CO(n2150));
    SB_CARRY r_Clock_Count_121_add_4_13 (.CI(n2142), .I0(GND_net), .I1(r_Clock_Count[11]), 
            .CO(n2143));
    SB_LUT4 r_Clock_Count_121_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[3]), 
            .I3(n2134), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[10]), .I3(n2141), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_4 (.CI(n2133), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n2134));
    SB_LUT4 r_Clock_Count_121_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[17]), .I3(n2148), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_19 (.CI(n2148), .I0(GND_net), .I1(r_Clock_Count[17]), 
            .CO(n2149));
    SB_CARRY r_Clock_Count_121_add_4_12 (.CI(n2141), .I0(GND_net), .I1(r_Clock_Count[10]), 
            .CO(n2142));
    SB_LUT4 r_Clock_Count_121_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[16]), .I3(n2147), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_18 (.CI(n2147), .I0(GND_net), .I1(r_Clock_Count[16]), 
            .CO(n2148));
    SB_LUT4 r_Clock_Count_121_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[9]), .I3(n2140), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_9 (.CI(n2138), .I0(GND_net), .I1(r_Clock_Count[7]), 
            .CO(n2139));
    SB_CARRY r_Clock_Count_121_add_4_11 (.CI(n2140), .I0(GND_net), .I1(r_Clock_Count[9]), 
            .CO(n2141));
    SB_LUT4 r_Bit_Index_0__bdd_4_lut (.I0(\r_Bit_Index[0] ), .I1(r_Tx_Data[2]), 
            .I2(r_Tx_Data[3]), .I3(r_Bit_Index[1]), .O(n2428));
    defparam r_Bit_Index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 r_Clock_Count_121_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[8]), .I3(n2139), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[6]), 
            .I3(n2137), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[15]), .I3(n2146), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_17 (.CI(n2146), .I0(GND_net), .I1(r_Clock_Count[15]), 
            .CO(n2147));
    SB_CARRY r_Clock_Count_121_add_4_10 (.CI(n2139), .I0(GND_net), .I1(r_Clock_Count[8]), 
            .CO(n2140));
    SB_LUT4 r_Clock_Count_121_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[14]), .I3(n2145), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_8 (.CI(n2137), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n2138));
    SB_LUT4 r_Clock_Count_121_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[1]), 
            .I3(n2132), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_121_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[5]), 
            .I3(n2136), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_16 (.CI(n2145), .I0(GND_net), .I1(r_Clock_Count[14]), 
            .CO(n2146));
    SB_LUT4 r_Clock_Count_121_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[13]), .I3(n2144), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_5 (.CI(n2134), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n2135));
    SB_LUT4 r_Clock_Count_121_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[2]), 
            .I3(n2133), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n2132));
    SB_CARRY r_Clock_Count_121_add_4_30 (.CI(n2159), .I0(GND_net), .I1(r_Clock_Count[28]), 
            .CO(n2160));
    SB_LUT4 r_Clock_Count_121_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[27]), .I3(n2158), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_29 (.CI(n2158), .I0(GND_net), .I1(r_Clock_Count[27]), 
            .CO(n2159));
    SB_LUT4 r_Clock_Count_121_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[26]), .I3(n2157), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_28 (.CI(n2157), .I0(GND_net), .I1(r_Clock_Count[26]), 
            .CO(n2158));
    SB_DFF r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(CLK_c), .D(n1851));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 r_Clock_Count_121_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[25]), .I3(n2156), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_27 (.CI(n2156), .I0(GND_net), .I1(r_Clock_Count[25]), 
            .CO(n2157));
    SB_LUT4 r_Clock_Count_121_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[24]), .I3(n2155), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_26 (.CI(n2155), .I0(GND_net), .I1(r_Clock_Count[24]), 
            .CO(n2156));
    SB_LUT4 r_Clock_Count_121_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[23]), .I3(n2154), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_25 (.CI(n2154), .I0(GND_net), .I1(r_Clock_Count[23]), 
            .CO(n2155));
    SB_LUT4 r_Clock_Count_121_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[22]), .I3(n2153), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_24 (.CI(n2153), .I0(GND_net), .I1(r_Clock_Count[22]), 
            .CO(n2154));
    SB_CARRY r_Clock_Count_121_add_4_7 (.CI(n2136), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n2137));
    SB_DFF r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(CLK_c), .D(n1850));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(CLK_c), .D(n1849));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 r_Clock_Count_121_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(r_Clock_Count[7]), 
            .I3(n2138), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(CLK_c), .D(n1848));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(CLK_c), .D(n1836));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(CLK_c), .D(n3_adj_316), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Clock_Count_121__i0 (.Q(r_Clock_Count[0]), .C(CLK_c), .E(n1), 
            .D(n133[0]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_CARRY r_Clock_Count_121_add_4_15 (.CI(n2144), .I0(GND_net), .I1(r_Clock_Count[13]), 
            .CO(n2145));
    SB_CARRY r_Clock_Count_121_add_4_3 (.CI(n2132), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n2133));
    SB_LUT4 r_Clock_Count_121_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[21]), .I3(n2152), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_121_add_4_23 (.CI(n2152), .I0(GND_net), .I1(r_Clock_Count[21]), 
            .CO(n2153));
    SB_LUT4 n2428_bdd_4_lut (.I0(n2428), .I1(r_Tx_Data[1]), .I2(r_Tx_Data[0]), 
            .I3(r_Bit_Index[1]), .O(n2431));
    defparam n2428_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(CLK_c), .D(n1843));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(CLK_c), .D(n1842));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(CLK_c), .D(n1841));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(CLK_c), .D(n2433));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 r_Bit_Index_0__bdd_4_lut_1104 (.I0(\r_Bit_Index[0] ), .I1(r_Tx_Data[6]), 
            .I2(r_Tx_Data[7]), .I3(r_Bit_Index[1]), .O(n2422));
    defparam r_Bit_Index_0__bdd_4_lut_1104.LUT_INIT = 16'he4aa;
    SB_LUT4 i1091_2_lut_3_lut (.I0(n2002), .I1(r_SM_Main[1]), .I2(n2308), 
            .I3(GND_net), .O(n2310));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i1091_2_lut_3_lut.LUT_INIT = 16'hb0b0;
    SB_LUT4 n2422_bdd_4_lut (.I0(n2422), .I1(r_Tx_Data[5]), .I2(r_Tx_Data[4]), 
            .I3(r_Bit_Index[1]), .O(n2425));
    defparam n2422_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 r_Clock_Count_121_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[20]), .I3(n2151), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(CLK_c), .D(n1831));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Clock_Count_121__i30 (.Q(r_Clock_Count[30]), .C(CLK_c), 
            .E(n1), .D(n133[30]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_CARRY r_Clock_Count_121_add_4_22 (.CI(n2151), .I0(GND_net), .I1(r_Clock_Count[20]), 
            .CO(n2152));
    SB_LUT4 r_Clock_Count_121_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[19]), .I3(n2150), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_121__i1 (.Q(r_Clock_Count[1]), .C(CLK_c), .E(n1), 
            .D(n133[1]), .R(n1796));   // verilog/uart_tx.v(119[34:51])
    SB_CARRY r_Clock_Count_121_add_4_21 (.CI(n2150), .I0(GND_net), .I1(r_Clock_Count[19]), 
            .CO(n2151));
    SB_LUT4 r_Clock_Count_121_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[18]), .I3(n2149), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_121_add_4_20_lut.LUT_INIT = 16'hC33C;
    
endmodule
