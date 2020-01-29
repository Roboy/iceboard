// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jan 29 19:18:13 2020
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
    input HALL1;   // verilog/TinyFPGA_B.v(10[9:14])
    input HALL2;   // verilog/TinyFPGA_B.v(11[9:14])
    input HALL3;   // verilog/TinyFPGA_B.v(12[9:14])
    input FAULT_N;   // verilog/TinyFPGA_B.v(13[9:16])
    output NEOPXL;   // verilog/TinyFPGA_B.v(14[10:16])
    output DE;   // verilog/TinyFPGA_B.v(15[10:12])
    output TX;   // verilog/TinyFPGA_B.v(16[10:12])
    input RX;   // verilog/TinyFPGA_B.v(17[9:11])
    output CS_CLK;   // verilog/TinyFPGA_B.v(18[10:16])
    output CS;   // verilog/TinyFPGA_B.v(19[10:12])
    input CS_MISO;   // verilog/TinyFPGA_B.v(20[9:16])
    inout SCL /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(21[9:12])
    inout SDA /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(22[9:12])
    output INLC;   // verilog/TinyFPGA_B.v(23[10:14])
    output INHC;   // verilog/TinyFPGA_B.v(24[10:14])
    output INLB;   // verilog/TinyFPGA_B.v(25[10:14])
    output INHB;   // verilog/TinyFPGA_B.v(26[10:14])
    output INLA;   // verilog/TinyFPGA_B.v(27[10:14])
    output INHA;   // verilog/TinyFPGA_B.v(28[10:14])
    
    wire CLK_N /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, n17, n16, n15, n14, n13, n12, 
        n11, n10;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n9, n2308, scl_enable, sda_enable, n324, n320, n318, 
        n316, scl, read_N;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(119[13:26])
    
    wire n2560, n1568, n2307, n2306, n2283, addr_10__N_70, n314, 
        n312, n310, n308, n306, n15_adj_393, n2305, rw, n2304;
    wire [7:0]state;   // verilog/eeprom.v(22[11:16])
    
    wire n2282, n6, n2303, n2302, n2281, n693, n2301, n10_adj_394, 
        n4, n1835, n2280, n2495, n2547, n2380, n4_adj_395, n2279;
    wire [7:0]state_adj_420;   // verilog/i2c_controller.v(32[12:17])
    
    wire n2300;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(33[12:22])
    
    wire n10_adj_398, n2368, n2278, n2299, n2277, sda_out, n2298, 
        n2297, n2296, n2276, n2275;
    wire [7:0]state_7__N_269;
    
    wire n2295, n2274, n2566, n2318, n8, n2294, n2273, n949, 
        n2483, n11_adj_399, n2460, n1749, n1748, n11_adj_400, n2272;
    wire [7:0]state_7__N_285;
    
    wire n1747, n1746, n2271, n2293, n2317, n14_adj_401, n1745, 
        n2512, n1532, n15_adj_402, n2292, n2316, n1769, n1700, 
        n1698, n10_adj_403, n9_adj_404, n1518, n2554, n2315, n2291, 
        n2553, n2569, n2507, n2314, n2290, n2270, n1744, n1743, 
        n2366, n2269, n1826, n6_adj_405, n2313, n2289, n1523, 
        n41, n17_adj_406, n2288, n2536, n16_adj_407, n2312, n4_adj_408, 
        n8_adj_409, n7, n6_adj_410, n1817, n26, n25, n24, n23, 
        n22, n21, n20, n19, n18, n2311, n2268, n2310, n2267, 
        n2266, n2265, n2264, n2263, n4_adj_411, n8_adj_412, n6_adj_413, 
        n110, n111, n112, n113, n114, n115, n116, n117, n118, 
        n119, n120, n121, n122, n123, n124, n125, n126, n127, 
        n128, n129, n130, n131, n132, n133, n134, n135, n134_adj_414, 
        n135_adj_415, n136, n137, n138, n139, n140, n141, n142, 
        n143, n144, n145, n146, n147, n148, n149, n150, n151, 
        n152, n153, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n164, n165, n2538, n2287, n2286, n2285, 
        n2284, n2309;
    
    VCC i2 (.Y(VCC_net));
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_362_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n2272), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_23 (.CI(n2314), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n2315));
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(state_7__N_285[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_363_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_410), .I3(n2313), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n2300), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_9 (.CI(n2300), .I0(GND_net), .I1(n19), 
            .CO(n2301));
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1_4_lut (.I0(n10_adj_398), .I1(n11_adj_399), .I2(n2538), 
            .I3(state_7__N_285[3]), .O(n4_adj_411));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1_4_lut.LUT_INIT = 16'h7350;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY delay_counter_362_add_4_27 (.CI(n2287), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n2288));
    SB_CARRY blink_counter_363_add_4_22 (.CI(n2313), .I0(GND_net), .I1(n6_adj_410), 
            .CO(n2314));
    SB_LUT4 delay_counter_362_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n2286), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n2312), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_21 (.CI(n2312), .I0(GND_net), .I1(n7), 
            .CO(n2313));
    SB_LUT4 blink_counter_363_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_409), .I3(n2311), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_20 (.CI(n2311), .I0(GND_net), .I1(n8_adj_409), 
            .CO(n2312));
    SB_CARRY delay_counter_362_add_4_12 (.CI(n2272), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n2273));
    SB_LUT4 i1_4_lut_adj_17 (.I0(state_adj_420[3]), .I1(n1532), .I2(n1835), 
            .I3(n2507), .O(n2368));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1_4_lut_adj_17.LUT_INIT = 16'hbba8;
    SB_CARRY delay_counter_362_add_4_26 (.CI(n2286), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n2287));
    SB_DFFSR delay_counter_362__i0 (.Q(delay_counter[0]), .C(CLK_N), .D(n165), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 blink_counter_363_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n2299), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_8 (.CI(n2299), .I0(GND_net), .I1(n20), 
            .CO(n2300));
    SB_LUT4 delay_counter_362_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n2285), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n2310), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n2298), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n2271), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_11 (.CI(n2271), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n2272));
    SB_CARRY blink_counter_363_add_4_7 (.CI(n2298), .I0(GND_net), .I1(n21), 
            .CO(n2299));
    SB_CARRY blink_counter_363_add_4_19 (.CI(n2310), .I0(GND_net), .I1(n9), 
            .CO(n2311));
    SB_LUT4 i867_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(state_7__N_269[0]), 
            .I3(n15_adj_393), .O(n1698));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i867_4_lut.LUT_INIT = 16'haaca;
    SB_CARRY delay_counter_362_add_4_25 (.CI(n2285), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n2286));
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_363_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n2297), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_362_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n2270), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n2309), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_18 (.CI(n2309), .I0(GND_net), .I1(n10), 
            .CO(n2310));
    SB_LUT4 i938_4_lut (.I0(state_7__N_285[3]), .I1(n320), .I2(n4_adj_408), 
            .I3(n1523), .O(n1769));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i938_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 blink_counter_363_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n2308), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n2284), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i869_4_lut (.I0(rw), .I1(state[0]), .I2(state[1]), .I3(n693), 
            .O(n1700));   // verilog/eeprom.v(25[8] 57[4])
    defparam i869_4_lut.LUT_INIT = 16'hacaa;
    SB_CARRY blink_counter_363_add_4_6 (.CI(n2297), .I0(GND_net), .I1(n22), 
            .CO(n2298));
    SB_CARRY delay_counter_362_add_4_10 (.CI(n2270), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n2271));
    SB_CARRY blink_counter_363_add_4_17 (.CI(n2308), .I0(GND_net), .I1(n11), 
            .CO(n2309));
    SB_DFF blink_counter_363__i0 (.Q(n26), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_CARRY delay_counter_362_add_4_24 (.CI(n2284), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n2285));
    SB_LUT4 i1676_4_lut (.I0(state_adj_420[1]), .I1(n11_adj_400), .I2(n2460), 
            .I3(state_adj_420[0]), .O(n2560));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1676_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 blink_counter_363_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n2307), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_16 (.CI(n2307), .I0(GND_net), .I1(n12), 
            .CO(n2308));
    SB_LUT4 i28_4_lut (.I0(n2560), .I1(state_adj_420[0]), .I2(n949), .I3(n1826), 
            .O(n15_adj_402));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i28_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 blink_counter_363_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n2296), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_5_lut.LUT_INIT = 16'hC33C;
    GND i1 (.Y(GND_net));
    SB_LUT4 i912_4_lut (.I0(state_7__N_285[3]), .I1(n318), .I2(n4_adj_408), 
            .I3(n1518), .O(n1743));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i912_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 delay_counter_362_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n2283), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i913_4_lut (.I0(state_7__N_285[3]), .I1(n316), .I2(n4), .I3(n1523), 
            .O(n1744));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i913_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i6_4_lut (.I0(delay_counter[0]), .I1(delay_counter[6]), .I2(delay_counter[9]), 
            .I3(delay_counter[3]), .O(n16_adj_407));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(delay_counter[4]), .I1(delay_counter[8]), .I2(delay_counter[7]), 
            .I3(delay_counter[1]), .O(n17_adj_406));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(n17_adj_406), .I1(delay_counter[5]), .I2(n16_adj_407), 
            .I3(delay_counter[2]), .O(n2536));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_4_lut (.I0(n2536), .I1(delay_counter[12]), .I2(delay_counter[10]), 
            .I3(delay_counter[11]), .O(n2512));
    defparam i2_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i3_3_lut (.I0(delay_counter[14]), .I1(delay_counter[15]), .I2(delay_counter[17]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(delay_counter[21]), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_413));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(delay_counter[16]), .I1(n8), .I2(n2512), .I3(delay_counter[13]), 
            .O(n2495));
    defparam i4_4_lut.LUT_INIT = 16'hfeee;
    SB_LUT4 i3_4_lut (.I0(n2495), .I1(n6_adj_413), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n8_adj_412));
    defparam i3_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i2_2_lut (.I0(delay_counter[28]), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_403));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_18 (.I0(delay_counter[24]), .I1(delay_counter[30]), 
            .I2(delay_counter[26]), .I3(delay_counter[27]), .O(n14_adj_401));
    defparam i6_4_lut_adj_18.LUT_INIT = 16'hfffe;
    SB_CARRY delay_counter_362_add_4_23 (.CI(n2283), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n2284));
    SB_LUT4 i1_4_lut_adj_19 (.I0(delay_counter[22]), .I1(delay_counter[25]), 
            .I2(n8_adj_412), .I3(delay_counter[20]), .O(n9_adj_404));
    defparam i1_4_lut_adj_19.LUT_INIT = 16'heccc;
    SB_LUT4 i914_4_lut (.I0(state_7__N_285[3]), .I1(n314), .I2(n4), .I3(n1518), 
            .O(n1745));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i914_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1566_4_lut (.I0(n41), .I1(state[0]), .I2(n6_adj_405), .I3(state_adj_420[0]), 
            .O(n2483));
    defparam i1566_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1673_2_lut_3_lut (.I0(n11_adj_399), .I1(sda_out), .I2(sda_enable), 
            .I3(GND_net), .O(n2569));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1673_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i915_4_lut (.I0(state_7__N_285[3]), .I1(n312), .I2(n4_adj_395), 
            .I3(n1523), .O(n1746));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i915_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1011_4_lut (.I0(n9_adj_404), .I1(delay_counter[31]), .I2(n14_adj_401), 
            .I3(n10_adj_403), .O(addr_10__N_70));   // verilog/TinyFPGA_B.v(123[10:34])
    defparam i1011_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i916_4_lut (.I0(state_7__N_285[3]), .I1(n310), .I2(n4_adj_395), 
            .I3(n1518), .O(n1747));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i916_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i917_4_lut (.I0(state_7__N_285[3]), .I1(n308), .I2(n1817), 
            .I3(n1523), .O(n1748));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i917_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1674_3_lut_4_lut (.I0(sda_out), .I1(sda_enable), .I2(n11_adj_399), 
            .I3(saved_addr[0]), .O(n2566));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1674_3_lut_4_lut.LUT_INIT = 16'h0700;
    SB_LUT4 i918_4_lut (.I0(state_7__N_285[3]), .I1(n306), .I2(n1817), 
            .I3(n1518), .O(n1749));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i918_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i12_3_lut (.I0(state[1]), .I1(state[0]), .I2(n1568), .I3(GND_net), 
            .O(n2366));   // verilog/eeprom.v(25[8] 57[4])
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 blink_counter_363_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n2306), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31_4_lut (.I0(n2566), .I1(state_adj_420[1]), .I2(n949), .I3(n2547), 
            .O(n2380));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i31_4_lut.LUT_INIT = 16'hcacf;
    SB_LUT4 i1630_4_lut_4_lut (.I0(state_adj_420[2]), .I1(state_adj_420[3]), 
            .I2(state_adj_420[0]), .I3(state_adj_420[1]), .O(n2547));
    defparam i1630_4_lut_4_lut.LUT_INIT = 16'hfe8f;
    SB_LUT4 i14_4_lut (.I0(n2569), .I1(state_adj_420[2]), .I2(n949), .I3(n1826), 
            .O(n6));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i14_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i1_3_lut_3_lut (.I0(state_adj_420[2]), .I1(state_adj_420[3]), 
            .I2(state_7__N_269[0]), .I3(GND_net), .O(n2460));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1_3_lut_3_lut.LUT_INIT = 16'hcdcd;
    SB_CARRY blink_counter_363_add_4_5 (.CI(n2296), .I0(GND_net), .I1(n23), 
            .CO(n2297));
    SB_CARRY blink_counter_363_add_4_15 (.CI(n2306), .I0(GND_net), .I1(n13), 
            .CO(n2307));
    SB_LUT4 delay_counter_362_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n2282), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n2305), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n2295), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_22 (.CI(n2282), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n2283));
    SB_CARRY blink_counter_363_add_4_4 (.CI(n2295), .I0(GND_net), .I1(n24), 
            .CO(n2296));
    SB_LUT4 delay_counter_362_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n2281), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[7]), 
            .I3(n2269), .O(n158)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_21 (.CI(n2281), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n2282));
    SB_LUT4 blink_counter_363_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n2294), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_14 (.CI(n2305), .I0(GND_net), .I1(n14), 
            .CO(n2306));
    SB_CARRY delay_counter_362_add_4_9 (.CI(n2269), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n2270));
    SB_LUT4 delay_counter_362_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n2280), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_3 (.CI(n2294), .I0(GND_net), .I1(n25), 
            .CO(n2295));
    SB_LUT4 blink_counter_363_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n2304), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_20 (.CI(n2280), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n2281));
    SB_LUT4 delay_counter_362_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[6]), 
            .I3(n2268), .O(n159)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_8 (.CI(n2268), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n2269));
    SB_LUT4 delay_counter_362_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[5]), 
            .I3(n2267), .O(n160)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_7 (.CI(n2267), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n2268));
    SB_LUT4 delay_counter_362_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[4]), 
            .I3(n2266), .O(n161)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n2294));
    SB_CARRY delay_counter_362_add_4_6 (.CI(n2266), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n2267));
    SB_LUT4 delay_counter_362_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n2279), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[3]), 
            .I3(n2265), .O(n162)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_13 (.CI(n2304), .I0(GND_net), .I1(n15), 
            .CO(n2305));
    SB_CARRY delay_counter_362_add_4_5 (.CI(n2265), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n2266));
    SB_LUT4 delay_counter_362_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n2293), .O(n134_adj_414)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_19 (.CI(n2279), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n2280));
    SB_LUT4 delay_counter_362_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n2278), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n2303), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_18 (.CI(n2278), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n2279));
    SB_LUT4 delay_counter_362_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[15]), .I3(n2277), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[2]), 
            .I3(n2264), .O(n163)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_4 (.CI(n2264), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n2265));
    SB_CARRY delay_counter_362_add_4_17 (.CI(n2277), .I0(GND_net), .I1(delay_counter[15]), 
            .CO(n2278));
    SB_LUT4 delay_counter_362_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n2292), .O(n135_adj_415)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_12 (.CI(n2303), .I0(GND_net), .I1(n16), 
            .CO(n2304));
    SB_CARRY delay_counter_362_add_4_32 (.CI(n2292), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n2293));
    SB_LUT4 blink_counter_363_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n2302), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[1]), 
            .I3(n2263), .O(n164)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n2276), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_3 (.CI(n2263), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n2264));
    SB_CARRY blink_counter_363_add_4_11 (.CI(n2302), .I0(GND_net), .I1(n17), 
            .CO(n2303));
    SB_LUT4 delay_counter_362_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n2291), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[0]), 
            .I3(VCC_net), .O(n165)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_16 (.CI(n2276), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n2277));
    SB_CARRY delay_counter_362_add_4_31 (.CI(n2291), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n2292));
    SB_LUT4 delay_counter_362_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n2275), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_362_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n2290), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_15 (.CI(n2275), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n2276));
    SB_LUT4 blink_counter_363_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n2301), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_30 (.CI(n2290), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n2291));
    SB_LUT4 delay_counter_362_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n2289), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n2263));
    SB_LUT4 delay_counter_362_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n2274), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_14 (.CI(n2274), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n2275));
    SB_CARRY delay_counter_362_add_4_29 (.CI(n2289), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n2290));
    SB_LUT4 delay_counter_362_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n2273), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_362_add_4_13 (.CI(n2273), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n2274));
    SB_LUT4 delay_counter_362_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n2288), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_10 (.CI(n2301), .I0(GND_net), .I1(n18), 
            .CO(n2302));
    SB_CARRY delay_counter_362_add_4_28 (.CI(n2288), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n2289));
    SB_LUT4 delay_counter_362_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n2287), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_362_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n2318), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_363_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n2317), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_26 (.CI(n2317), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n2318));
    SB_LUT4 blink_counter_363_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n2316), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_25 (.CI(n2316), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n2317));
    SB_LUT4 blink_counter_363_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n2315), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_363_add_4_24 (.CI(n2315), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n2316));
    SB_LUT4 i2_3_lut_4_lut (.I0(state_adj_420[0]), .I1(state_adj_420[1]), 
            .I2(n4_adj_411), .I3(n10_adj_394), .O(n2507));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hf0f4;
    SB_DFF blink_counter_363__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i20 (.Q(n6_adj_410), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i19 (.Q(n7), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i18 (.Q(n8_adj_409), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i17 (.Q(n9), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i16 (.Q(n10), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i15 (.Q(n11), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i14 (.Q(n12), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i13 (.Q(n13), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i12 (.Q(n14), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i11 (.Q(n15), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i10 (.Q(n16), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i9 (.Q(n17), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i8 (.Q(n18), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i7 (.Q(n19), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i6 (.Q(n20), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i5 (.Q(n21), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i4 (.Q(n22), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i3 (.Q(n23), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i2 (.Q(n24), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_363__i1 (.Q(n25), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFFSR delay_counter_362__i31 (.Q(delay_counter[31]), .C(CLK_N), .D(n134_adj_414), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 blink_counter_363_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n2314), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_363_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1636_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2554));
    defparam i1636_4_lut.LUT_INIT = 16'hfec4;
    SB_DFFSR delay_counter_362__i30 (.Q(delay_counter[30]), .C(CLK_N), .D(n135_adj_415), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 i1635_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2553));
    defparam i1635_4_lut.LUT_INIT = 16'hcf08;
    SB_DFFSR delay_counter_362__i29 (.Q(delay_counter[29]), .C(CLK_N), .D(n136), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i28 (.Q(delay_counter[28]), .C(CLK_N), .D(n137), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i27 (.Q(delay_counter[27]), .C(CLK_N), .D(n138), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i26 (.Q(delay_counter[26]), .C(CLK_N), .D(n139), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i25 (.Q(delay_counter[25]), .C(CLK_N), .D(n140), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i24 (.Q(delay_counter[24]), .C(CLK_N), .D(n141), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i23 (.Q(delay_counter[23]), .C(CLK_N), .D(n142), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i22 (.Q(delay_counter[22]), .C(CLK_N), .D(n143), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i21 (.Q(delay_counter[21]), .C(CLK_N), .D(n144), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i20 (.Q(delay_counter[20]), .C(CLK_N), .D(n145), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i19 (.Q(delay_counter[19]), .C(CLK_N), .D(n146), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i18 (.Q(delay_counter[18]), .C(CLK_N), .D(n147), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i17 (.Q(delay_counter[17]), .C(CLK_N), .D(n148), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i16 (.Q(delay_counter[16]), .C(CLK_N), .D(n149), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i15 (.Q(delay_counter[15]), .C(CLK_N), .D(n150), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i14 (.Q(delay_counter[14]), .C(CLK_N), .D(n151), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i13 (.Q(delay_counter[13]), .C(CLK_N), .D(n152), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i12 (.Q(delay_counter[12]), .C(CLK_N), .D(n153), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i11 (.Q(delay_counter[11]), .C(CLK_N), .D(n154), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i10 (.Q(delay_counter[10]), .C(CLK_N), .D(n155), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i9 (.Q(delay_counter[9]), .C(CLK_N), .D(n156), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i8 (.Q(delay_counter[8]), .C(CLK_N), .D(n157), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i7 (.Q(delay_counter[7]), .C(CLK_N), .D(n158), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i6 (.Q(delay_counter[6]), .C(CLK_N), .D(n159), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i5 (.Q(delay_counter[5]), .C(CLK_N), .D(n160), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i4 (.Q(delay_counter[4]), .C(CLK_N), .D(n161), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i3 (.Q(delay_counter[3]), .C(CLK_N), .D(n162), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i2 (.Q(delay_counter[2]), .C(CLK_N), .D(n163), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_362__i1 (.Q(delay_counter[1]), .C(CLK_N), .D(n164), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 i1637_3_lut (.I0(n2553), .I1(n2554), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i1637_3_lut.LUT_INIT = 16'h3535;
    SB_DFF read_15 (.Q(read_N), .C(CLK_N), .D(addr_10__N_70));   // verilog/TinyFPGA_B.v(120[12] 128[8])
    EEPROM eeprom (.n1568(n1568), .\state[0] (state[0]), .CLK_N_keep(CLK_N), 
           .VCC_net(VCC_net), .GND_net(GND_net), .read_N_keep(read_N), 
           .n15(n15_adj_393), .n692({n693}), .\state[1] (state[1]), .n2366(n2366), 
           .\state[3] (state_adj_420[3]), .n6(n6_adj_405), .n2483(n2483), 
           .n324(n324), .n1700(n1700), .rw(rw), .\state[0]_adj_6 (state_adj_420[0]), 
           .n4(n4_adj_408), .\state[2] (state_adj_420[2]), .\state[1]_adj_7 (state_adj_420[1]), 
           .scl_enable(scl_enable), .n11(n11_adj_400), .n10(n10_adj_398), 
           .n1532(n1532), .n10_adj_8(n10_adj_394), .n15_adj_9(n15_adj_402), 
           .n1835(n1835), .n949(n949), .n1769(n1769), .data({n306, n308, 
           n310, n312, n314, n316, n318, n320}), .\saved_addr[0] (saved_addr[0]), 
           .n6_adj_10(n6), .n2380(n2380), .n1826(n1826), .n4_adj_11(n4), 
           .n41(n41), .n1749(n1749), .n4_adj_12(n4_adj_395), .n1748(n1748), 
           .n1747(n1747), .n1817(n1817), .n1746(n1746), .n1745(n1745), 
           .n1523(n1523), .sda_enable(sda_enable), .\state_7__N_269[0] (state_7__N_269[0]), 
           .sda_out(sda_out), .\state_7__N_285[3] (state_7__N_285[3]), .n11_adj_13(n11_adj_399), 
           .n1744(n1744), .n1743(n1743), .n345({scl}), .n1518(n1518), 
           .n1698(n1698), .n2368(n2368), .n2538(n2538)) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(130[12] 140[8])
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_N));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (n1568, \state[0] , CLK_N_keep, VCC_net, GND_net, read_N_keep, 
            n15, n692, \state[1] , n2366, \state[3] , n6, n2483, 
            n324, n1700, rw, \state[0]_adj_6 , n4, \state[2] , \state[1]_adj_7 , 
            scl_enable, n11, n10, n1532, n10_adj_8, n15_adj_9, n1835, 
            n949, n1769, data, \saved_addr[0] , n6_adj_10, n2380, 
            n1826, n4_adj_11, n41, n1749, n4_adj_12, n1748, n1747, 
            n1817, n1746, n1745, n1523, sda_enable, \state_7__N_269[0] , 
            sda_out, \state_7__N_285[3] , n11_adj_13, n1744, n1743, 
            n345, n1518, n1698, n2368, n2538) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;
    output n1568;
    output \state[0] ;
    input CLK_N_keep;
    input VCC_net;
    input GND_net;
    input read_N_keep;
    output n15;
    output [0:0]n692;
    output \state[1] ;
    input n2366;
    output \state[3] ;
    output n6;
    input n2483;
    output n324;
    input n1700;
    output rw;
    output \state[0]_adj_6 ;
    output n4;
    output \state[2] ;
    output \state[1]_adj_7 ;
    output scl_enable;
    output n11;
    output n10;
    output n1532;
    output n10_adj_8;
    input n15_adj_9;
    output n1835;
    output n949;
    input n1769;
    output [7:0]data;
    output \saved_addr[0] ;
    input n6_adj_10;
    input n2380;
    output n1826;
    output n4_adj_11;
    output n41;
    input n1749;
    output n4_adj_12;
    input n1748;
    input n1747;
    output n1817;
    input n1746;
    input n1745;
    output n1523;
    output sda_enable;
    output \state_7__N_269[0] ;
    output sda_out;
    output \state_7__N_285[3] ;
    output n11_adj_13;
    input n1744;
    input n1743;
    output [0:0]n345;
    output n1518;
    input n1698;
    input n2368;
    output n2538;
    
    
    wire n2244;
    wire [15:0]delay_counter;   // verilog/eeprom.v(23[12:25])
    wire [15:0]n645;
    
    wire n2245, n2453, n1706;
    wire [15:0]delay_counter_15__N_171;
    
    wire n2243, n1709, n13, n14, n7, n1714, n1703, n1727, n1730, 
        n1733, n1500, n8, n6_c, n1736, n2250, n2251, n1739, 
        n1601, n1742, n1018, n2408, n1711, n1716, n1718, n1720, 
        n1722, n1724, n2242, n2249, n2241, n2248, n2255, n2247, 
        n2254, n2253, n2246, n2252, enable;
    
    SB_CARRY add_158_6 (.CI(n2244), .I0(delay_counter[4]), .I1(n645[2]), 
            .CO(n2245));
    SB_DFFE state__i0 (.Q(\state[0] ), .C(CLK_N_keep), .E(n1568), .D(n2453));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i2 (.Q(delay_counter[2]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1706));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 add_158_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n645[2]), 
            .I3(n2243), .O(delay_counter_15__N_171[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF delay_counter_i0_i3 (.Q(delay_counter[3]), .C(CLK_N_keep), .D(n1709));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 i1_3_lut (.I0(n13), .I1(delay_counter[13]), .I2(n14), .I3(GND_net), 
            .O(n7));   // verilog/eeprom.v(41[12:28])
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_DFF delay_counter_i0_i5 (.Q(delay_counter[5]), .C(CLK_N_keep), .D(n1714));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF delay_counter_i0_i1 (.Q(delay_counter[1]), .C(CLK_N_keep), .D(n1703));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF delay_counter_i0_i11 (.Q(delay_counter[11]), .C(CLK_N_keep), 
           .D(n1727));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF delay_counter_i0_i12 (.Q(delay_counter[12]), .C(CLK_N_keep), 
           .D(n1730));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF delay_counter_i0_i13 (.Q(delay_counter[13]), .C(CLK_N_keep), 
           .D(n1733));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 mux_182_Mux_0_i1_4_lut (.I0(read_N_keep), .I1(n1500), .I2(\state[0] ), 
            .I3(n15), .O(n692[0]));   // verilog/eeprom.v(28[3] 56[10])
    defparam mux_182_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_CARRY add_158_5 (.CI(n2243), .I0(delay_counter[3]), .I1(n645[2]), 
            .CO(n2244));
    SB_LUT4 i5_4_lut (.I0(delay_counter[3]), .I1(n7), .I2(delay_counter[1]), 
            .I3(n8), .O(n1500));   // verilog/eeprom.v(41[12:28])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut (.I0(delay_counter[15]), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(GND_net), .O(n6_c));   // verilog/eeprom.v(41[12:28])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_DFF delay_counter_i0_i14 (.Q(delay_counter[14]), .C(CLK_N_keep), 
           .D(n1736));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 add_158_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(n645[2]), 
            .I3(n2250), .O(delay_counter_15__N_171[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_12 (.CI(n2250), .I0(delay_counter[10]), .I1(n645[2]), 
            .CO(n2251));
    SB_DFF delay_counter_i0_i15 (.Q(delay_counter[15]), .C(CLK_N_keep), 
           .D(n1739));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 i6_4_lut (.I0(delay_counter[8]), .I1(delay_counter[12]), .I2(delay_counter[2]), 
            .I3(delay_counter[6]), .O(n14));   // verilog/eeprom.v(41[12:28])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_13 (.I0(read_N_keep), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n1601));
    defparam i1_3_lut_adj_13.LUT_INIT = 16'h3232;
    SB_DFF delay_counter_i0_i0 (.Q(delay_counter[0]), .C(CLK_N_keep), .D(n1742));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 add_158_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n645[2]), 
            .I3(GND_net), .O(delay_counter_15__N_171[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE state__i1 (.Q(\state[1] ), .C(CLK_N_keep), .E(VCC_net), .D(n2366));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 i2_2_lut_adj_14 (.I0(\state[3] ), .I1(n1500), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // verilog/eeprom.v(41[12:28])
    defparam i2_2_lut_adj_14.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut_adj_15 (.I0(delay_counter[4]), .I1(delay_counter[5]), 
            .I2(delay_counter[0]), .I3(delay_counter[10]), .O(n13));   // verilog/eeprom.v(41[12:28])
    defparam i5_4_lut_adj_15.LUT_INIT = 16'hfffe;
    SB_LUT4 i525_3_lut (.I0(n15), .I1(\state[1] ), .I2(\state[0] ), .I3(GND_net), 
            .O(n1018));   // verilog/eeprom.v(28[3] 56[10])
    defparam i525_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i2_4_lut (.I0(n2483), .I1(read_N_keep), .I2(n1018), .I3(n2453), 
            .O(n1568));
    defparam i2_4_lut.LUT_INIT = 16'h0405;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[1] ), .I1(n15), .I2(n324), .I3(\state[0] ), 
            .O(n2408));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf0a2;
    SB_LUT4 i1682_2_lut_3_lut (.I0(\state[1] ), .I1(n15), .I2(\state[0] ), 
            .I3(GND_net), .O(n2453));
    defparam i1682_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i880_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[4]), 
            .I3(delay_counter[4]), .O(n1711));   // verilog/eeprom.v(25[8] 57[4])
    defparam i880_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i885_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[6]), 
            .I3(delay_counter[6]), .O(n1716));   // verilog/eeprom.v(25[8] 57[4])
    defparam i885_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i887_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[7]), 
            .I3(delay_counter[7]), .O(n1718));   // verilog/eeprom.v(25[8] 57[4])
    defparam i887_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i889_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[8]), 
            .I3(delay_counter[8]), .O(n1720));   // verilog/eeprom.v(25[8] 57[4])
    defparam i889_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i2_4_lut_adj_16 (.I0(delay_counter[9]), .I1(delay_counter[7]), 
            .I2(n6_c), .I3(delay_counter[11]), .O(n8));   // verilog/eeprom.v(41[12:28])
    defparam i2_4_lut_adj_16.LUT_INIT = 16'hfffe;
    SB_LUT4 i891_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[9]), 
            .I3(delay_counter[9]), .O(n1722));   // verilog/eeprom.v(25[8] 57[4])
    defparam i891_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i893_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[10]), 
            .I3(delay_counter[10]), .O(n1724));   // verilog/eeprom.v(25[8] 57[4])
    defparam i893_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i911_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[0]), 
            .I3(delay_counter[0]), .O(n1742));   // verilog/eeprom.v(25[8] 57[4])
    defparam i911_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i908_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[15]), 
            .I3(delay_counter[15]), .O(n1739));   // verilog/eeprom.v(25[8] 57[4])
    defparam i908_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i905_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[14]), 
            .I3(delay_counter[14]), .O(n1736));   // verilog/eeprom.v(25[8] 57[4])
    defparam i905_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i902_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[13]), 
            .I3(delay_counter[13]), .O(n1733));   // verilog/eeprom.v(25[8] 57[4])
    defparam i902_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i899_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[12]), 
            .I3(delay_counter[12]), .O(n1730));   // verilog/eeprom.v(25[8] 57[4])
    defparam i899_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i896_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[11]), 
            .I3(delay_counter[11]), .O(n1727));   // verilog/eeprom.v(25[8] 57[4])
    defparam i896_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i875_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[2]), 
            .I3(delay_counter[2]), .O(n1706));   // verilog/eeprom.v(25[8] 57[4])
    defparam i875_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i878_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[3]), 
            .I3(delay_counter[3]), .O(n1709));   // verilog/eeprom.v(25[8] 57[4])
    defparam i878_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i1696_2_lut (.I0(n1500), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(n645[2]));   // verilog/eeprom.v(45[18] 47[12])
    defparam i1696_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i883_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[5]), 
            .I3(delay_counter[5]), .O(n1714));   // verilog/eeprom.v(25[8] 57[4])
    defparam i883_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 add_158_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n645[2]), 
            .I3(n2242), .O(delay_counter_15__N_171[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_158_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(n645[2]), 
            .I3(n2249), .O(delay_counter_15__N_171[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_11 (.CI(n2249), .I0(delay_counter[9]), .I1(n645[2]), 
            .CO(n2250));
    SB_CARRY add_158_4 (.CI(n2242), .I0(delay_counter[2]), .I1(n645[2]), 
            .CO(n2243));
    SB_CARRY add_158_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n645[2]), 
            .CO(n2241));
    SB_LUT4 add_158_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(n645[2]), 
            .I3(n2248), .O(delay_counter_15__N_171[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_10 (.CI(n2248), .I0(delay_counter[8]), .I1(n645[2]), 
            .CO(n2249));
    SB_LUT4 add_158_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n645[2]), 
            .I3(n2255), .O(delay_counter_15__N_171[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_158_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(n645[2]), 
            .I3(n2247), .O(delay_counter_15__N_171[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_158_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n645[2]), 
            .I3(n2254), .O(delay_counter_15__N_171[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_16 (.CI(n2254), .I0(delay_counter[14]), .I1(n645[2]), 
            .CO(n2255));
    SB_LUT4 add_158_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n645[2]), 
            .I3(n2253), .O(delay_counter_15__N_171[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_15 (.CI(n2253), .I0(delay_counter[13]), .I1(n645[2]), 
            .CO(n2254));
    SB_CARRY add_158_9 (.CI(n2247), .I0(delay_counter[7]), .I1(n645[2]), 
            .CO(n2248));
    SB_LUT4 add_158_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(n645[2]), 
            .I3(n2246), .O(delay_counter_15__N_171[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_8 (.CI(n2246), .I0(delay_counter[6]), .I1(n645[2]), 
            .CO(n2247));
    SB_LUT4 add_158_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n645[2]), 
            .I3(n2241), .O(delay_counter_15__N_171[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_158_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n645[2]), 
            .I3(n2252), .O(delay_counter_15__N_171[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_14 (.CI(n2252), .I0(delay_counter[12]), .I1(n645[2]), 
            .CO(n2253));
    SB_LUT4 add_158_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n645[2]), 
            .I3(n2245), .O(delay_counter_15__N_171[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_158_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n645[2]), 
            .I3(n2251), .O(delay_counter_15__N_171[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_7 (.CI(n2245), .I0(delay_counter[5]), .I1(n645[2]), 
            .CO(n2246));
    SB_CARRY add_158_13 (.CI(n2251), .I0(delay_counter[11]), .I1(n645[2]), 
            .CO(n2252));
    SB_LUT4 add_158_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(n645[2]), 
            .I3(n2244), .O(delay_counter_15__N_171[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_158_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_158_3 (.CI(n2241), .I0(delay_counter[1]), .I1(n645[2]), 
            .CO(n2242));
    SB_LUT4 i872_4_lut_4_lut (.I0(n1601), .I1(\state[0] ), .I2(delay_counter_15__N_171[1]), 
            .I3(delay_counter[1]), .O(n1703));   // verilog/eeprom.v(25[8] 57[4])
    defparam i872_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_DFFE delay_counter_i0_i10 (.Q(delay_counter[10]), .C(CLK_N_keep), 
            .E(VCC_net), .D(n1724));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i9 (.Q(delay_counter[9]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1722));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i8 (.Q(delay_counter[8]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1720));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i7 (.Q(delay_counter[7]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1718));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i6 (.Q(delay_counter[6]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1716));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFE delay_counter_i0_i4 (.Q(delay_counter[4]), .C(CLK_N_keep), .E(VCC_net), 
            .D(n1711));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF rw_43 (.Q(rw), .C(CLK_N_keep), .D(n1700));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFSR enable_39 (.Q(enable), .C(CLK_N_keep), .D(n692[0]), .R(\state[1] ));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF data_ready_42 (.Q(n324), .C(CLK_N_keep), .D(n2408));   // verilog/eeprom.v(25[8] 57[4])
    i2c_controller i2c (.VCC_net(VCC_net), .GND_net(GND_net), .\state[0] (\state[0]_adj_6 ), 
            .\state[3] (\state[3] ), .n4(n4), .CLK_N_keep(CLK_N_keep), 
            .n15(n15), .\state[2] (\state[2] ), .\state[1] (\state[1]_adj_7 ), 
            .scl_enable(scl_enable), .n11(n11), .n10(n10), .n1532(n1532), 
            .n10_adj_1(n10_adj_8), .n15_adj_2(n15_adj_9), .n1835(n1835), 
            .n949(n949), .n1769(n1769), .data({data}), .\saved_addr[0] (\saved_addr[0] ), 
            .n6(n6_adj_10), .n2380(n2380), .n1826(n1826), .n4_adj_3(n4_adj_11), 
            .n41(n41), .n1749(n1749), .n4_adj_4(n4_adj_12), .n1748(n1748), 
            .n1747(n1747), .n1817(n1817), .n1746(n1746), .n1745(n1745), 
            .n1523(n1523), .sda_enable(sda_enable), .enable(enable), .\state_7__N_269[0] (\state_7__N_269[0] ), 
            .sda_out(sda_out), .\state_7__N_285[3] (\state_7__N_285[3] ), 
            .n11_adj_5(n11_adj_13), .n1744(n1744), .n1743(n1743), .n345({n345}), 
            .n1518(n1518), .n1698(n1698), .n2368(n2368), .n2538(n2538)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(59[16] 72[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (VCC_net, GND_net, \state[0] , \state[3] , n4, 
            CLK_N_keep, n15, \state[2] , \state[1] , scl_enable, n11, 
            n10, n1532, n10_adj_1, n15_adj_2, n1835, n949, n1769, 
            data, \saved_addr[0] , n6, n2380, n1826, n4_adj_3, n41, 
            n1749, n4_adj_4, n1748, n1747, n1817, n1746, n1745, 
            n1523, sda_enable, enable, \state_7__N_269[0] , sda_out, 
            \state_7__N_285[3] , n11_adj_5, n1744, n1743, n345, n1518, 
            n1698, n2368, n2538) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input VCC_net;
    input GND_net;
    output \state[0] ;
    output \state[3] ;
    output n4;
    input CLK_N_keep;
    output n15;
    output \state[2] ;
    output \state[1] ;
    output scl_enable;
    output n11;
    output n10;
    output n1532;
    output n10_adj_1;
    input n15_adj_2;
    output n1835;
    output n949;
    input n1769;
    output [7:0]data;
    output \saved_addr[0] ;
    input n6;
    input n2380;
    output n1826;
    output n4_adj_3;
    output n41;
    input n1749;
    output n4_adj_4;
    input n1748;
    input n1747;
    output n1817;
    input n1746;
    input n1745;
    output n1523;
    output sda_enable;
    input enable;
    output \state_7__N_269[0] ;
    output sda_out;
    output \state_7__N_285[3] ;
    output n11_adj_5;
    input n1744;
    input n1743;
    output [0:0]n345;
    output n1518;
    input n1698;
    input n2368;
    output n2538;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(40[6:13])
    wire [7:0]counter;   // verilog/i2c_controller.v(35[12:19])
    
    wire n12;
    wire [7:0]n346;
    
    wire n2260, n2261, n2259, n10_c, n942, i2c_clk_N_361, scl_enable_N_363, 
        n9, n11_adj_379;
    wire [7:0]counter2;   // verilog/i2c_controller.v(36[12:20])
    
    wire n6_c, counter2_7__N_256, n2475, n1051, n37, n1548, n1655, 
        n39, n13, n2406;
    wire [4:0]n25;
    
    wire n2574, n2557, n2577, n1355, n33, n1669, n1359, n1027, 
        n1580, n2258, n2257, n2256, n2262, n2322, n2321, n2320, 
        n2319;
    
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(107[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_34_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n2260), .O(n346[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_7 (.CI(n2260), .I0(counter[5]), .I1(VCC_net), 
            .CO(n2261));
    SB_LUT4 sub_34_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n2259), .O(n346[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i26_2_lut (.I0(\state[0] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10_c));   // verilog/i2c_controller.v(75[8:62])
    defparam i26_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n4), 
            .O(n942));   // verilog/i2c_controller.v(107[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(CLK_N_keep), .D(i2c_clk_N_361));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_CARRY sub_34_add_2_6 (.CI(n2259), .I0(counter[4]), .I1(VCC_net), 
            .CO(n2260));
    SB_LUT4 i1684_4_lut (.I0(n15), .I1(\state[2] ), .I2(n10_c), .I3(\state[1] ), 
            .O(scl_enable_N_363));   // verilog/i2c_controller.v(77[13] 79[7])
    defparam i1684_4_lut.LUT_INIT = 16'haa8a;
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_363));   // verilog/i2c_controller.v(74[12] 80[6])
    SB_LUT4 i1_4_lut (.I0(n942), .I1(n11), .I2(n10), .I3(\state[0] ), 
            .O(n1532));
    defparam i1_4_lut.LUT_INIT = 16'h222a;
    SB_LUT4 state_7__I_0_142_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_1));   // verilog/i2c_controller.v(127[9:14])
    defparam state_7__I_0_142_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 state_7__I_0_142_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(127[9:14])
    defparam state_7__I_0_142_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n15_adj_2));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_3_lut (.I0(\state[3] ), .I1(n1532), .I2(n1835), .I3(GND_net), 
            .O(n949));
    defparam i1_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i22_3_lut_3_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n11_adj_379));
    defparam i22_3_lut_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 i1_2_lut (.I0(counter2[1]), .I1(counter2[4]), .I2(GND_net), 
            .I3(GND_net), .O(n6_c));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[2]), .I2(counter2[0]), 
            .I3(n6_c), .O(counter2_7__N_256));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i17_4_lut (.I0(n942), .I1(n2475), .I2(n1051), .I3(n37), 
            .O(n1548));
    defparam i17_4_lut.LUT_INIT = 16'h3a30;
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n1769));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1548), .D(n346[3]), 
            .R(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1548), .D(n346[4]), 
            .R(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_2_lut_adj_7 (.I0(i2c_clk), .I1(counter2_7__N_256), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_361));
    defparam i1_2_lut_adj_7.LUT_INIT = 16'h6666;
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1548), .D(n346[5]), 
            .R(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1548), .D(n346[6]), 
            .R(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1548), .D(n346[7]), 
            .R(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 state_7__I_0_143_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(131[5:14])
    defparam state_7__I_0_143_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_25_i11_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n15));
    defparam equal_25_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1686_4_lut (.I0(\state[1] ), .I1(n39), .I2(\state[2] ), .I3(n13), 
            .O(n2406));
    defparam i1686_4_lut.LUT_INIT = 16'h444c;
    SB_DFFSR counter2_364_365__i1 (.Q(counter2[0]), .C(CLK_N_keep), .D(n25[0]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_LUT4 i1667_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n2574));   // verilog/i2c_controller.v(180[28:35])
    defparam i1667_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1666_4_lut (.I0(n2574), .I1(\state[1] ), .I2(counter[0]), 
            .I3(counter[2]), .O(n2557));   // verilog/i2c_controller.v(163[4] 196[11])
    defparam i1666_4_lut.LUT_INIT = 16'hc008;
    SB_LUT4 i1665_4_lut (.I0(n2557), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(n11_adj_379), .O(n2577));   // verilog/i2c_controller.v(163[4] 196[11])
    defparam i1665_4_lut.LUT_INIT = 16'h0322;
    SB_LUT4 i1690_2_lut (.I0(i2c_clk), .I1(counter2_7__N_256), .I2(GND_net), 
            .I3(GND_net), .O(n1355));   // verilog/i2c_controller.v(68[8:33])
    defparam i1690_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i1_3_lut_adj_8 (.I0(\state[1] ), .I1(n37), .I2(n33), .I3(GND_net), 
            .O(n39));
    defparam i1_3_lut_adj_8.LUT_INIT = 16'hdcdc;
    SB_LUT4 i56_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut.LUT_INIT = 16'h1c1c;
    SB_DFFE state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(VCC_net), .D(n6));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_3_lut_adj_9 (.I0(\state[1] ), .I1(n33), .I2(n37), .I3(GND_net), 
            .O(n1669));
    defparam i1_3_lut_adj_9.LUT_INIT = 16'h5454;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[0] ), .O(n37));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h0554;
    SB_LUT4 i1004_2_lut_3_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(GND_net), .O(n1835));
    defparam i1004_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_DFFE state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(VCC_net), .D(n2380));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i995_3_lut_4_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n1826));   // verilog/i2c_controller.v(137[5:14])
    defparam i995_3_lut_4_lut_4_lut.LUT_INIT = 16'hfdbf;
    SB_LUT4 equal_48_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_3));   // verilog/i2c_controller.v(138[6:23])
    defparam equal_48_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_50_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(138[6:23])
    defparam equal_50_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_10 (.I0(\state[1] ), .I1(\state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n41));
    defparam i1_2_lut_adj_10.LUT_INIT = 16'heeee;
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n1749));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1699_2_lut_3_lut (.I0(\state[2] ), .I1(n11_adj_379), .I2(\state[0] ), 
            .I3(GND_net), .O(n1359));
    defparam i1699_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 equal_45_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_4));   // verilog/i2c_controller.v(138[6:23])
    defparam equal_45_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n1748));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1692_4_lut_4_lut (.I0(\state[2] ), .I1(n11_adj_379), .I2(\state[1] ), 
            .I3(n39), .O(n1027));
    defparam i1692_4_lut_4_lut.LUT_INIT = 16'hef00;
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n1747));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n1051));   // verilog/i2c_controller.v(43[32:47])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i986_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n1817));
    defparam i986_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n1746));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n1745));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(counter[0]), 
            .I3(n10), .O(n1523));   // verilog/i2c_controller.v(106[5:12])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n1027), 
            .D(n1359), .S(n1669));   // verilog/i2c_controller.v(162[12] 197[6])
    SB_LUT4 i1_2_lut_3_lut_adj_11 (.I0(enable), .I1(i2c_clk), .I2(counter2_7__N_256), 
            .I3(GND_net), .O(n1580));
    defparam i1_2_lut_3_lut_adj_11.LUT_INIT = 16'heaea;
    SB_DFFESS enable_slow_121 (.Q(\state_7__N_269[0] ), .C(CLK_N_keep), 
            .E(n1580), .D(n1355), .S(enable));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_DFFSR counter2_364_365__i5 (.Q(counter2[4]), .C(CLK_N_keep), .D(n25[4]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_LUT4 state_7__I_0_139_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11));   // verilog/i2c_controller.v(106[5:12])
    defparam state_7__I_0_139_i11_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1545_2_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(n2475), .O(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1545_2_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i463_2_lut (.I0(sda_out), .I1(sda_enable), .I2(GND_net), .I3(GND_net), 
            .O(\state_7__N_285[3] ));   // verilog/i2c_controller.v(45[9:16])
    defparam i463_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 sub_34_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n2258), .O(n346[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_5 (.CI(n2258), .I0(counter[3]), .I1(VCC_net), 
            .CO(n2259));
    SB_LUT4 sub_34_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n2257), .O(n346[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_4 (.CI(n2257), .I0(counter[2]), .I1(VCC_net), 
            .CO(n2258));
    SB_LUT4 sub_34_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n2256), .O(n346[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_3 (.CI(n2256), .I0(counter[1]), .I1(VCC_net), 
            .CO(n2257));
    SB_LUT4 sub_34_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n346[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n2256));
    SB_LUT4 sub_34_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n2262), .O(n346[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n2261), .O(n346[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_8 (.CI(n2261), .I0(counter[6]), .I1(VCC_net), 
            .CO(n2262));
    SB_LUT4 state_7__I_0_140_i11_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11_adj_5));
    defparam state_7__I_0_140_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_DFFNE sda_out_133 (.Q(sda_out), .C(i2c_clk), .E(n2406), .D(n2577));   // verilog/i2c_controller.v(162[12] 197[6])
    SB_LUT4 counter2_364_365_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[4]), 
            .I3(n2322), .O(n25[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_364_365_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_364_365_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[3]), 
            .I3(n2321), .O(n25[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_364_365_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_364_365_add_4_5 (.CI(n2321), .I0(GND_net), .I1(counter2[3]), 
            .CO(n2322));
    SB_LUT4 counter2_364_365_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n2320), .O(n25[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_364_365_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_364_365_add_4_4 (.CI(n2320), .I0(GND_net), .I1(counter2[2]), 
            .CO(n2321));
    SB_LUT4 counter2_364_365_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n2319), .O(n25[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_364_365_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_364_365_add_4_3 (.CI(n2319), .I0(GND_net), .I1(counter2[1]), 
            .CO(n2320));
    SB_LUT4 counter2_364_365_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n25[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_364_365_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_364_365_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n2319));
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n1744));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1548), .D(n346[0]), 
            .S(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n1743));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFSR counter2_364_365__i4 (.Q(counter2[3]), .C(CLK_N_keep), .D(n25[3]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_364_365__i3 (.Q(counter2[2]), .C(CLK_N_keep), .D(n25[2]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_364_365__i2 (.Q(counter2[1]), .C(CLK_N_keep), .D(n25[1]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_LUT4 i989_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), .I3(GND_net), 
            .O(n345[0]));   // verilog/i2c_controller.v(44[19:55])
    defparam i989_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_3_lut_2_lut (.I0(\state[0] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n13));
    defparam i1_3_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1558_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n9), 
            .I3(\state_7__N_285[3] ), .O(n2475));   // verilog/i2c_controller.v(92[5:9])
    defparam i1558_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1548), .D(n346[1]), 
            .S(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1548), .D(n346[2]), 
            .S(n1655));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(counter[0]), .I3(n10), .O(n1518));   // verilog/i2c_controller.v(106[5:12])
    defparam i1_2_lut_3_lut_4_lut_adj_12.LUT_INIT = 16'hffbf;
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1698));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFE state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(VCC_net), .D(n2368));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i2_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(enable), 
            .I3(\state_7__N_285[3] ), .O(n2538));
    defparam i2_4_lut_4_lut.LUT_INIT = 16'hdd5d;
    
endmodule
