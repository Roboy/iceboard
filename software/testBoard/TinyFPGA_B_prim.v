// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jan 29 19:23:01 2020
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
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n134, n7;
    wire [7:0]state;   // verilog/eeprom.v(22[11:16])
    
    wire rw, sda_enable, scl, scl_enable, read;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(119[13:26])
    
    wire n144, n142, n141, n140, addr_10__N_70, n2494, n2493, 
        n145, n7_adj_385, n15, n2483, n2668, n2479;
    wire [7:0]state_adj_402;   // verilog/i2c_controller.v(32[12:17])
    
    wire n2492;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(33[12:22])
    
    wire n2491, n2715, n2490, n2489, n135;
    wire [7:0]state_7__N_269;
    
    wire n2731, n12, n2488, n2482, n14, n13, n2508;
    wire [7:0]state_7__N_285;
    
    wire n2559, n624, n2558, n2557, n139, n2487, n2507, n1520, 
        n2556, n2555, n2722, n8, n2506, n2077, n2486, n2478, 
        n2554, n2505, n17, n16, n2553, n2504, n143, n136, n138, 
        n137, n2721, n165, n164, n163, n162, n161, n160, n159, 
        n158, n157, n156, n155, n154, n153, n152, n151, n150, 
        n149, n148, n147, n146, n2481, n2503, n2594, n2552, 
        n2502, n2551, n2550, n6, n7_adj_387, n8_adj_388, n9, n10, 
        n11, n12_adj_389, n13_adj_390, n14_adj_391, n15_adj_392, n16_adj_393, 
        n17_adj_394, n18, n19, n20, n21, n22, n23, n24, n25, 
        n26, n2549, n2501, n2592, n2548, n2547, n2546, n2545, 
        n2500, n2499, n2544, n2543, n2542, n2541, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n121, n122, n123, n124, n125, n126, n127, n128, n129, 
        n130, n131, n132, n133, n134_adj_395, n135_adj_396, n2498, 
        n2540, n2539, n2538, n2537, n2536, n2535, n2497, n2496, 
        n2485, n2495, n2480, n2695, n2662, n2730, n6_adj_397, 
        n1521, n2484;
    
    VCC i2 (.Y(VCC_net));
    SB_DFFSR delay_counter_331__i6 (.Q(delay_counter[6]), .C(CLK_c), .D(n159), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(state_7__N_285[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_DFFSR delay_counter_331__i5 (.Q(delay_counter[5]), .C(CLK_c), .D(n160), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_CARRY blink_counter_332_add_4_7 (.CI(n2539), .I0(GND_net), .I1(n21), 
            .CO(n2540));
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_331_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n2493), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR delay_counter_331__i4 (.Q(delay_counter[4]), .C(CLK_c), .D(n161), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 blink_counter_332_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n2559), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR delay_counter_331__i3 (.Q(delay_counter[3]), .C(CLK_c), .D(n162), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_CARRY delay_counter_331_add_4_29 (.CI(n2504), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n2505));
    SB_DFFSR delay_counter_331__i2 (.Q(delay_counter[2]), .C(CLK_c), .D(n163), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFFSR delay_counter_331__i1 (.Q(delay_counter[1]), .C(CLK_c), .D(n164), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 delay_counter_331_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n2503), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFFSR delay_counter_331__i12 (.Q(delay_counter[12]), .C(CLK_c), .D(n153), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_CARRY delay_counter_331_add_4_28 (.CI(n2503), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n2504));
    SB_LUT4 blink_counter_332_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n2558), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_10 (.CI(n2485), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n2486));
    SB_LUT4 delay_counter_331_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n2502), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_331_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[7]), 
            .I3(n2484), .O(n158)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_332_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n2538), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR delay_counter_331__i11 (.Q(delay_counter[11]), .C(CLK_c), .D(n154), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_CARRY blink_counter_332_add_4_6 (.CI(n2538), .I0(GND_net), .I1(n22), 
            .CO(n2539));
    SB_LUT4 blink_counter_332_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n2537), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_5 (.CI(n2537), .I0(GND_net), .I1(n23), 
            .CO(n2538));
    SB_LUT4 i1847_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2731));
    defparam i1847_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i1846_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2730));
    defparam i1846_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i1848_3_lut (.I0(n2730), .I1(n2731), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i1848_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY delay_counter_331_add_4_18 (.CI(n2493), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n2494));
    SB_DFFSR delay_counter_331__i7 (.Q(delay_counter[7]), .C(CLK_c), .D(n158), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 i2_4_lut (.I0(delay_counter[22]), .I1(n2721), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n7));
    defparam i2_4_lut.LUT_INIT = 16'ha8a0;
    SB_LUT4 blink_counter_332_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n2536), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4_4_lut (.I0(n7), .I1(delay_counter[20]), .I2(delay_counter[21]), 
            .I3(delay_counter[23]), .O(n2695));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY blink_counter_332_add_4_4 (.CI(n2536), .I0(GND_net), .I1(n24), 
            .CO(n2537));
    SB_LUT4 blink_counter_332_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n2535), .O(n134_adj_395)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_9 (.CI(n2484), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n2485));
    SB_CARRY blink_counter_332_add_4_3 (.CI(n2535), .I0(GND_net), .I1(n25), 
            .CO(n2536));
    SB_LUT4 blink_counter_332_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135_adj_396)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_27 (.CI(n2502), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n2503));
    SB_LUT4 i721_3_lut_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(state_7__N_269[0]), 
            .I3(n15), .O(n1520));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i721_3_lut_4_lut.LUT_INIT = 16'haaca;
    SB_DFFSR delay_counter_331__i10 (.Q(delay_counter[10]), .C(CLK_c), .D(n155), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 i722_4_lut (.I0(rw), .I1(state[0]), .I2(state[1]), .I3(n624), 
            .O(n1521));   // verilog/eeprom.v(25[8] 57[4])
    defparam i722_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i1_3_lut (.I0(state[1]), .I1(read), .I2(n2668), .I3(GND_net), 
            .O(n12));   // verilog/eeprom.v(25[8] 57[4])
    defparam i1_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFSR delay_counter_331__i9 (.Q(delay_counter[9]), .C(CLK_c), .D(n156), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i8 (.Q(delay_counter[8]), .C(CLK_c), .D(n157), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_LUT4 i1_4_lut (.I0(n2077), .I1(n12), .I2(state[0]), .I3(n2668), 
            .O(n2594));   // verilog/eeprom.v(25[8] 57[4])
    defparam i1_4_lut.LUT_INIT = 16'h88a8;
    SB_LUT4 delay_counter_331_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n2501), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n2535));
    SB_LUT4 delay_counter_331_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[6]), 
            .I3(n2483), .O(n159)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut (.I0(delay_counter[24]), .I1(delay_counter[30]), .I2(delay_counter[26]), 
            .I3(delay_counter[27]), .O(n14));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF blink_counter_332__i0 (.Q(n26), .C(CLK_c), .D(n135_adj_396));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_CARRY delay_counter_331_add_4_26 (.CI(n2501), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n2502));
    SB_LUT4 delay_counter_331_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n2500), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_26 (.CI(n2558), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n2559));
    SB_DFF blink_counter_332__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_332_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n2557), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_25 (.CI(n2557), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n2558));
    SB_LUT4 blink_counter_332_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n2556), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_24 (.CI(n2556), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n2557));
    SB_LUT4 delay_counter_331_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[15]), .I3(n2492), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[2]), 
            .I3(n2479), .O(n163)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_332_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n2555), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_23 (.CI(n2555), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n2556));
    SB_CARRY delay_counter_331_add_4_17 (.CI(n2492), .I0(GND_net), .I1(delay_counter[15]), 
            .CO(n2493));
    SB_LUT4 blink_counter_332_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n2554), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_22 (.CI(n2554), .I0(GND_net), .I1(n6), 
            .CO(n2555));
    SB_LUT4 blink_counter_332_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7_adj_387), .I3(n2553), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_25 (.CI(n2500), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n2501));
    SB_CARRY blink_counter_332_add_4_21 (.CI(n2553), .I0(GND_net), .I1(n7_adj_387), 
            .CO(n2554));
    SB_LUT4 blink_counter_332_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_388), .I3(n2552), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_20 (.CI(n2552), .I0(GND_net), .I1(n8_adj_388), 
            .CO(n2553));
    SB_LUT4 i6_4_lut_adj_15 (.I0(delay_counter[0]), .I1(delay_counter[6]), 
            .I2(delay_counter[9]), .I3(delay_counter[4]), .O(n16));
    defparam i6_4_lut_adj_15.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_332_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n2551), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_4 (.CI(n2479), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n2480));
    SB_CARRY delay_counter_331_add_4_8 (.CI(n2483), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n2484));
    SB_CARRY blink_counter_332_add_4_19 (.CI(n2551), .I0(GND_net), .I1(n9), 
            .CO(n2552));
    SB_LUT4 blink_counter_332_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n2550), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n2478));
    SB_LUT4 delay_counter_331_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n2491), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[5]), 
            .I3(n2482), .O(n160)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n2499), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_18 (.CI(n2550), .I0(GND_net), .I1(n10), 
            .CO(n2551));
    SB_CARRY delay_counter_331_add_4_24 (.CI(n2499), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n2500));
    SB_CARRY delay_counter_331_add_4_16 (.CI(n2491), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n2492));
    SB_LUT4 blink_counter_332_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n2549), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n2498), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_17 (.CI(n2549), .I0(GND_net), .I1(n11), 
            .CO(n2550));
    SB_LUT4 blink_counter_332_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12_adj_389), .I3(n2548), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_23 (.CI(n2498), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n2499));
    SB_LUT4 i1779_4_lut (.I0(n7_adj_385), .I1(state[0]), .I2(n6_adj_397), 
            .I3(state_adj_402[0]), .O(n2662));
    defparam i1779_4_lut.LUT_INIT = 16'hccc8;
    SB_CARRY delay_counter_331_add_4_7 (.CI(n2482), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n2483));
    SB_LUT4 i7_4_lut (.I0(delay_counter[7]), .I1(delay_counter[2]), .I2(delay_counter[5]), 
            .I3(delay_counter[3]), .O(n17));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 delay_counter_331_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[0]), 
            .I3(VCC_net), .O(n165)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_16 (.CI(n2548), .I0(GND_net), .I1(n12_adj_389), 
            .CO(n2549));
    SB_LUT4 delay_counter_331_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n2490), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_16 (.I0(n2077), .I1(n2668), .I2(state[0]), .I3(read), 
            .O(n2592));   // verilog/eeprom.v(25[8] 57[4])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'h8280;
    SB_LUT4 blink_counter_332_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13_adj_390), .I3(n2547), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9_4_lut (.I0(n17), .I1(delay_counter[1]), .I2(n16), .I3(delay_counter[8]), 
            .O(n2722));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY blink_counter_332_add_4_15 (.CI(n2547), .I0(GND_net), .I1(n13_adj_390), 
            .CO(n2548));
    SB_LUT4 blink_counter_332_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_391), .I3(n2546), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_15 (.CI(n2490), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n2491));
    SB_LUT4 delay_counter_331_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n2497), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_14 (.CI(n2546), .I0(GND_net), .I1(n14_adj_391), 
            .CO(n2547));
    SB_DFF blink_counter_332__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_332_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15_adj_392), .I3(n2545), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_332__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i2_4_lut_adj_17 (.I0(n2722), .I1(delay_counter[12]), .I2(delay_counter[10]), 
            .I3(delay_counter[11]), .O(n2715));
    defparam i2_4_lut_adj_17.LUT_INIT = 16'hffec;
    SB_DFF blink_counter_332__i19 (.Q(n7_adj_387), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i18 (.Q(n8_adj_388), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i14 (.Q(n12_adj_389), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i13 (.Q(n13_adj_390), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i12 (.Q(n14_adj_391), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i11 (.Q(n15_adj_392), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i10 (.Q(n16_adj_393), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i9 (.Q(n17_adj_394), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i3_3_lut (.I0(delay_counter[14]), .I1(delay_counter[15]), .I2(delay_counter[17]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY blink_counter_332_add_4_13 (.CI(n2545), .I0(GND_net), .I1(n15_adj_392), 
            .CO(n2546));
    SB_DFF blink_counter_332__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 delay_counter_331_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[4]), 
            .I3(n2481), .O(n161)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_332__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_332__i1 (.Q(n25), .C(CLK_c), .D(n134_adj_395));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i4_4_lut_adj_18 (.I0(delay_counter[16]), .I1(n8), .I2(n2715), 
            .I3(delay_counter[13]), .O(n2721));
    defparam i4_4_lut_adj_18.LUT_INIT = 16'hfeee;
    SB_LUT4 delay_counter_331_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n2489), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_14 (.CI(n2489), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n2490));
    SB_DFF read_15 (.Q(read), .C(CLK_c), .D(addr_10__N_70));   // verilog/TinyFPGA_B.v(120[12] 128[8])
    SB_LUT4 delay_counter_331_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n2488), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR delay_counter_331__i0 (.Q(delay_counter[0]), .C(CLK_c), .D(n165), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i31 (.Q(delay_counter[31]), .C(CLK_c), .D(n134), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    GND i1 (.Y(GND_net));
    SB_CARRY delay_counter_331_add_4_22 (.CI(n2497), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n2498));
    SB_LUT4 blink_counter_332_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16_adj_393), .I3(n2544), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_12_lut.LUT_INIT = 16'hC33C;
    EEPROM eeprom (.n623({n624}), .CLK_c(CLK_c), .\state[1] (state[1]), 
           .GND_net(GND_net), .n15(n15), .n7(n7_adj_385), .\state[0] (state[0]), 
           .read(read), .n2662(n2662), .n2668(n2668), .n2077(n2077), 
           .n6(n6_adj_397), .n2592(n2592), .VCC_net(VCC_net), .n2594(n2594), 
           .n1521(n1521), .rw(rw), .\state[0]_adj_1 (state_adj_402[0]), 
           .scl_enable(scl_enable), .\state_7__N_285[3] (state_7__N_285[3]), 
           .\saved_addr[0] (saved_addr[0]), .sda_enable(sda_enable), .n321({scl}), 
           .\state_7__N_269[0] (state_7__N_269[0]), .n1520(n1520)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(130[12] 140[8])
    SB_CARRY delay_counter_331_add_4_13 (.CI(n2488), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n2489));
    SB_LUT4 delay_counter_331_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n2508), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n2507), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_12 (.CI(n2544), .I0(GND_net), .I1(n16_adj_393), 
            .CO(n2545));
    SB_LUT4 delay_counter_331_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n2487), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_332_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17_adj_394), .I3(n2543), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut (.I0(n2695), .I1(delay_counter[28]), .I2(delay_counter[25]), 
            .I3(delay_counter[29]), .O(n13));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFSR delay_counter_331__i30 (.Q(delay_counter[30]), .C(CLK_c), .D(n135), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_CARRY blink_counter_332_add_4_11 (.CI(n2543), .I0(GND_net), .I1(n17_adj_394), 
            .CO(n2544));
    SB_LUT4 blink_counter_332_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n2542), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_6 (.CI(n2481), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n2482));
    SB_LUT4 delay_counter_331_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n2496), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_10 (.CI(n2542), .I0(GND_net), .I1(n18), 
            .CO(n2543));
    SB_CARRY delay_counter_331_add_4_12 (.CI(n2487), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n2488));
    SB_LUT4 delay_counter_331_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[1]), 
            .I3(n2478), .O(n164)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[3]), 
            .I3(n2480), .O(n162)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_21 (.CI(n2496), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n2497));
    SB_LUT4 delay_counter_331_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n2486), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_331_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n2495), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_5 (.CI(n2480), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n2481));
    SB_CARRY delay_counter_331_add_4_32 (.CI(n2507), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n2508));
    SB_LUT4 delay_counter_331_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n2506), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_20 (.CI(n2495), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n2496));
    SB_LUT4 delay_counter_331_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n2494), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_31 (.CI(n2506), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n2507));
    SB_LUT4 delay_counter_331_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n2505), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_331_add_4_3 (.CI(n2478), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n2479));
    SB_CARRY delay_counter_331_add_4_30 (.CI(n2505), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n2506));
    SB_CARRY delay_counter_331_add_4_11 (.CI(n2486), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n2487));
    SB_CARRY delay_counter_331_add_4_19 (.CI(n2494), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n2495));
    SB_LUT4 blink_counter_332_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n2541), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_9 (.CI(n2541), .I0(GND_net), .I1(n19), 
            .CO(n2542));
    SB_LUT4 delay_counter_331_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n2504), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_332_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n2540), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_332_add_4_8 (.CI(n2540), .I0(GND_net), .I1(n20), 
            .CO(n2541));
    SB_LUT4 delay_counter_331_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n2485), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_331_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1200_3_lut (.I0(n13), .I1(delay_counter[31]), .I2(n14), .I3(GND_net), 
            .O(addr_10__N_70));   // verilog/TinyFPGA_B.v(123[10:34])
    defparam i1200_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 blink_counter_332_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n2539), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_332_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR delay_counter_331__i29 (.Q(delay_counter[29]), .C(CLK_c), .D(n136), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i28 (.Q(delay_counter[28]), .C(CLK_c), .D(n137), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i27 (.Q(delay_counter[27]), .C(CLK_c), .D(n138), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i26 (.Q(delay_counter[26]), .C(CLK_c), .D(n139), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i25 (.Q(delay_counter[25]), .C(CLK_c), .D(n140), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i24 (.Q(delay_counter[24]), .C(CLK_c), .D(n141), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i23 (.Q(delay_counter[23]), .C(CLK_c), .D(n142), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i22 (.Q(delay_counter[22]), .C(CLK_c), .D(n143), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i21 (.Q(delay_counter[21]), .C(CLK_c), .D(n144), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i20 (.Q(delay_counter[20]), .C(CLK_c), .D(n145), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i19 (.Q(delay_counter[19]), .C(CLK_c), .D(n146), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i18 (.Q(delay_counter[18]), .C(CLK_c), .D(n147), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i17 (.Q(delay_counter[17]), .C(CLK_c), .D(n148), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i16 (.Q(delay_counter[16]), .C(CLK_c), .D(n149), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i15 (.Q(delay_counter[15]), .C(CLK_c), .D(n150), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i14 (.Q(delay_counter[14]), .C(CLK_c), .D(n151), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
    SB_DFFSR delay_counter_331__i13 (.Q(delay_counter[13]), .C(CLK_c), .D(n152), 
            .R(addr_10__N_70));   // verilog/TinyFPGA_B.v(122[24:41])
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
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (n623, CLK_c, \state[1] , GND_net, n15, n7, \state[0] , 
            read, n2662, n2668, n2077, n6, n2592, VCC_net, n2594, 
            n1521, rw, \state[0]_adj_1 , scl_enable, \state_7__N_285[3] , 
            \saved_addr[0] , sda_enable, n321, \state_7__N_269[0] , 
            n1520) /* synthesis syn_module_defined=1 */ ;
    output [0:0]n623;
    input CLK_c;
    output \state[1] ;
    input GND_net;
    output n15;
    output n7;
    output \state[0] ;
    input read;
    input n2662;
    output n2668;
    output n2077;
    output n6;
    input n2592;
    input VCC_net;
    input n2594;
    input n1521;
    output rw;
    output \state[0]_adj_1 ;
    output scl_enable;
    output \state_7__N_285[3] ;
    output \saved_addr[0] ;
    output sda_enable;
    output [0:0]n321;
    output \state_7__N_269[0] ;
    input n1520;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire enable, n2520;
    wire [15:0]delay_counter;   // verilog/eeprom.v(23[12:25])
    wire [15:0]n591;
    
    wire n2521;
    wire [15:0]delay_counter_15__N_171;
    
    wire n2519, n1338, n2685;
    wire [7:0]state;   // verilog/i2c_controller.v(32[12:17])
    
    wire n16, n22, n20, n24, n1435, n1503, n2518, n2517, n2516, 
        n2530, n2529, n2528, n2527, n2526, n2525, n2524, n2523, 
        n2522;
    
    SB_DFFSR enable_39 (.Q(enable), .C(CLK_c), .D(n623[0]), .R(\state[1] ));   // verilog/eeprom.v(25[8] 57[4])
    SB_CARRY add_145_7 (.CI(n2520), .I0(delay_counter[5]), .I1(n591[15]), 
            .CO(n2521));
    SB_LUT4 add_145_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(n591[15]), 
            .I3(n2519), .O(delay_counter_15__N_171[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1902_2_lut (.I0(n1338), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(n591[15]));   // verilog/eeprom.v(45[18] 47[12])
    defparam i1902_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_4_lut (.I0(delay_counter[9]), .I1(delay_counter[15]), .I2(delay_counter[11]), 
            .I3(delay_counter[14]), .O(n2685));   // verilog/eeprom.v(41[12:28])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut (.I0(state[1]), .I1(state[2]), .I2(GND_net), .I3(GND_net), 
            .O(n7));   // verilog/eeprom.v(41[12:28])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_2_lut (.I0(delay_counter[12]), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(GND_net), .O(n16));   // verilog/eeprom.v(41[12:28])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut (.I0(n2685), .I1(delay_counter[3]), .I2(delay_counter[7]), 
            .I3(delay_counter[1]), .O(n22));   // verilog/eeprom.v(41[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut (.I0(delay_counter[8]), .I1(delay_counter[4]), .I2(delay_counter[13]), 
            .I3(GND_net), .O(n20));   // verilog/eeprom.v(41[12:28])
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut (.I0(delay_counter[0]), .I1(n22), .I2(n16), .I3(delay_counter[2]), 
            .O(n24));   // verilog/eeprom.v(41[12:28])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_145_6 (.CI(n2519), .I0(delay_counter[4]), .I1(n591[15]), 
            .CO(n2520));
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[1]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[2]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[3]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[4]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[5]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[6]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[7]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[8]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[9]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[10]), .S(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[11]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[12]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[13]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[14]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[15]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 i717_2_lut (.I0(n1435), .I1(\state[0] ), .I2(GND_net), .I3(GND_net), 
            .O(n1503));   // verilog/eeprom.v(25[8] 57[4])
    defparam i717_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut (.I0(delay_counter[5]), .I1(n24), .I2(n20), .I3(delay_counter[10]), 
            .O(n1338));   // verilog/eeprom.v(41[12:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(read), .I1(\state[1] ), .I2(\state[0] ), .I3(GND_net), 
            .O(n1435));
    defparam i1_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i1785_4_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n2662), 
            .I3(n15), .O(n2668));   // verilog/eeprom.v(50[5:9])
    defparam i1785_4_lut_4_lut.LUT_INIT = 16'hfcf8;
    SB_LUT4 mux_161_Mux_0_i1_4_lut (.I0(read), .I1(n1338), .I2(\state[0] ), 
            .I3(n15), .O(n623[0]));   // verilog/eeprom.v(28[3] 56[10])
    defparam mux_161_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 add_145_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n591[15]), 
            .I3(n2518), .O(delay_counter_15__N_171[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_5 (.CI(n2518), .I0(delay_counter[3]), .I1(n591[15]), 
            .CO(n2519));
    SB_LUT4 add_145_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n591[15]), 
            .I3(n2517), .O(delay_counter_15__N_171[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1275_2_lut_3_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n15), 
            .I3(GND_net), .O(n2077));   // verilog/eeprom.v(50[5:9])
    defparam i1275_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_CARRY add_145_4 (.CI(n2517), .I0(delay_counter[2]), .I1(n591[15]), 
            .CO(n2518));
    SB_LUT4 add_145_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n591[15]), 
            .I3(n2516), .O(delay_counter_15__N_171[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_3 (.CI(n2516), .I0(delay_counter[1]), .I1(n591[15]), 
            .CO(n2517));
    SB_LUT4 add_145_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n591[15]), 
            .I3(GND_net), .O(delay_counter_15__N_171[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n591[15]), 
            .CO(n2516));
    SB_LUT4 i2_2_lut_adj_14 (.I0(state[3]), .I1(n1338), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // verilog/eeprom.v(41[12:28])
    defparam i2_2_lut_adj_14.LUT_INIT = 16'heeee;
    SB_LUT4 add_145_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n591[15]), 
            .I3(n2530), .O(delay_counter_15__N_171[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_145_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n591[15]), 
            .I3(n2529), .O(delay_counter_15__N_171[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_16 (.CI(n2529), .I0(delay_counter[14]), .I1(n591[15]), 
            .CO(n2530));
    SB_LUT4 add_145_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n591[15]), 
            .I3(n2528), .O(delay_counter_15__N_171[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_15 (.CI(n2528), .I0(delay_counter[13]), .I1(n591[15]), 
            .CO(n2529));
    SB_LUT4 add_145_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n591[15]), 
            .I3(n2527), .O(delay_counter_15__N_171[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_14 (.CI(n2527), .I0(delay_counter[12]), .I1(n591[15]), 
            .CO(n2528));
    SB_LUT4 add_145_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n591[15]), 
            .I3(n2526), .O(delay_counter_15__N_171[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFE state__i0 (.Q(\state[0] ), .C(CLK_c), .E(VCC_net), .D(n2592));   // verilog/eeprom.v(25[8] 57[4])
    SB_CARRY add_145_13 (.CI(n2526), .I0(delay_counter[11]), .I1(n591[15]), 
            .CO(n2527));
    SB_LUT4 add_145_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(n591[15]), 
            .I3(n2525), .O(delay_counter_15__N_171[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_12 (.CI(n2525), .I0(delay_counter[10]), .I1(n591[15]), 
            .CO(n2526));
    SB_DFF state__i1 (.Q(\state[1] ), .C(CLK_c), .D(n2594));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFF rw_43 (.Q(rw), .C(CLK_c), .D(n1521));   // verilog/eeprom.v(25[8] 57[4])
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n1435), 
            .D(delay_counter_15__N_171[0]), .R(n1503));   // verilog/eeprom.v(25[8] 57[4])
    SB_LUT4 add_145_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(n591[15]), 
            .I3(n2524), .O(delay_counter_15__N_171[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_11 (.CI(n2524), .I0(delay_counter[9]), .I1(n591[15]), 
            .CO(n2525));
    SB_LUT4 add_145_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(n591[15]), 
            .I3(n2523), .O(delay_counter_15__N_171[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_10 (.CI(n2523), .I0(delay_counter[8]), .I1(n591[15]), 
            .CO(n2524));
    SB_LUT4 add_145_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(n591[15]), 
            .I3(n2522), .O(delay_counter_15__N_171[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_9 (.CI(n2522), .I0(delay_counter[7]), .I1(n591[15]), 
            .CO(n2523));
    SB_LUT4 add_145_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(n591[15]), 
            .I3(n2521), .O(delay_counter_15__N_171[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_8 (.CI(n2521), .I0(delay_counter[6]), .I1(n591[15]), 
            .CO(n2522));
    SB_LUT4 add_145_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n591[15]), 
            .I3(n2520), .O(delay_counter_15__N_171[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_7_lut.LUT_INIT = 16'hC33C;
    i2c_controller i2c (.CLK_c(CLK_c), .\state[0] (\state[0]_adj_1 ), .\state[1] (state[1]), 
            .GND_net(GND_net), .\state[2] (state[2]), .\state[3] (state[3]), 
            .scl_enable(scl_enable), .n15(n15), .\state_7__N_285[3] (\state_7__N_285[3] ), 
            .\saved_addr[0] (\saved_addr[0] ), .enable(enable), .sda_enable(sda_enable), 
            .n321({n321}), .VCC_net(VCC_net), .\state_7__N_269[0] (\state_7__N_269[0] ), 
            .n1520(n1520)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(59[16] 72[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (CLK_c, \state[0] , \state[1] , GND_net, \state[2] , 
            \state[3] , scl_enable, n15, \state_7__N_285[3] , \saved_addr[0] , 
            enable, sda_enable, n321, VCC_net, \state_7__N_269[0] , 
            n1520) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input CLK_c;
    output \state[0] ;
    output \state[1] ;
    input GND_net;
    output \state[2] ;
    output \state[3] ;
    output scl_enable;
    output n15;
    output \state_7__N_285[3] ;
    output \saved_addr[0] ;
    input enable;
    output sda_enable;
    output [0:0]n321;
    input VCC_net;
    output \state_7__N_269[0] ;
    input n1520;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(40[6:13])
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire i2c_clk_N_361, n9, n11, scl_enable_N_362, n33, n36, n1493, 
        n876, n11_adj_376, n10, n2726, n2078;
    wire [7:0]counter2;   // verilog/i2c_controller.v(36[12:20])
    
    wire n6, counter2_7__N_256;
    wire [7:0]counter;   // verilog/i2c_controller.v(35[12:19])
    
    wire n2063, n2654, n1358, n2018, n11_adj_377, n39, n952, n21, 
        n11_adj_378, n5, n1384, n37, n1231, sda_out, n2036, n16, 
        n2706, n2008, n2636;
    wire [7:0]n322;
    
    wire n1413, n1495, n2747, n2671, n970;
    wire [4:0]n25;
    
    wire n10_adj_379, n2736, n2664, n34, n2616, n2740, n2734, 
        n2752, n10_adj_380, n2534, n2533, n1229, n15_adj_381, n2532, 
        n2531, n2515, n2514, n2513, n2512, n2714, n2511, n2510, 
        n11_adj_382, n2741, n2588, n2509;
    
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(CLK_c), .D(i2c_clk_N_361));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_LUT4 state_7__I_0_139_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(106[5:12])
    defparam state_7__I_0_139_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 state_7__I_0_145_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11));   // verilog/i2c_controller.v(75[27:43])
    defparam state_7__I_0_145_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_362));   // verilog/i2c_controller.v(74[12] 80[6])
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[1] ), .I1(n33), .I2(\state[3] ), 
            .I3(n36), .O(n1493));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i1913_4_lut (.I0(n876), .I1(n11_adj_376), .I2(n10), .I3(n2726), 
            .O(n2078));
    defparam i1913_4_lut.LUT_INIT = 16'h222a;
    SB_LUT4 i1_2_lut_3_lut_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n2726));   // verilog/i2c_controller.v(75[27:43])
    defparam i1_2_lut_3_lut_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut (.I0(counter2[0]), .I1(counter2[4]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[2]), .I2(counter2[1]), 
            .I3(n6), .O(counter2_7__N_256));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut (.I0(counter[1]), .I1(n2063), .I2(n2654), .I3(counter[0]), 
            .O(n1358));
    defparam i1_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i1_2_lut_adj_7 (.I0(i2c_clk), .I1(counter2_7__N_256), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_361));
    defparam i1_2_lut_adj_7.LUT_INIT = 16'h6666;
    SB_LUT4 i1844_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n15));
    defparam i1844_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1888_4_lut (.I0(\state[3] ), .I1(n1358), .I2(\state[2] ), 
            .I3(n2018), .O(n876));
    defparam i1888_4_lut.LUT_INIT = 16'h1113;
    SB_LUT4 i1897_4_lut_4_lut (.I0(\state[2] ), .I1(n11_adj_377), .I2(\state[1] ), 
            .I3(n39), .O(n952));
    defparam i1897_4_lut_4_lut.LUT_INIT = 16'hef00;
    SB_LUT4 i1_4_lut_2_lut_4_lut (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n21));
    defparam i1_4_lut_2_lut_4_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1_4_lut_adj_8 (.I0(n11_adj_378), .I1(n11), .I2(\state_7__N_285[3] ), 
            .I3(\saved_addr[0] ), .O(n5));   // verilog/i2c_controller.v(90[4] 154[11])
    defparam i1_4_lut_adj_8.LUT_INIT = 16'h3733;
    SB_LUT4 equal_25_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(43[32:47])
    defparam equal_25_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable), .I1(i2c_clk), .I2(counter2_7__N_256), 
            .I3(GND_net), .O(n1384));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 state_7__I_0_140_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11_adj_378));   // verilog/i2c_controller.v(112[5:13])
    defparam state_7__I_0_140_i11_2_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i1_2_lut_adj_9 (.I0(\state[3] ), .I1(n36), .I2(GND_net), .I3(GND_net), 
            .O(n37));
    defparam i1_2_lut_adj_9.LUT_INIT = 16'h4444;
    SB_LUT4 i1911_2_lut_3_lut (.I0(\state[2] ), .I1(n11_adj_377), .I2(\state[0] ), 
            .I3(GND_net), .O(n1231));
    defparam i1911_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1907_2_lut_4_lut (.I0(sda_out), .I1(sda_enable), .I2(n2018), 
            .I3(n10), .O(n2036));
    defparam i1907_2_lut_4_lut.LUT_INIT = 16'h0070;
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n876), .D(n5), 
            .S(n2078));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n16));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h88a8;
    SB_LUT4 i1900_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(n876), .O(n2706));
    defparam i1900_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_DFFESS state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(n876), .D(n2036), 
            .S(n2008));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n876), .D(n2636), 
            .S(n2706));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1413), .D(n322[1]), 
            .S(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1413), .D(n322[2]), 
            .S(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i17_4_lut (.I0(n2747), .I1(n2671), .I2(n970), .I3(n37), 
            .O(n1413));
    defparam i17_4_lut.LUT_INIT = 16'h3a30;
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1413), .D(n322[3]), 
            .R(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFFSR counter2_333_334__i1 (.Q(counter2[0]), .C(CLK_c), .D(n25[0]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_LUT4 i1865_4_lut (.I0(n10), .I1(n10_adj_379), .I2(\state_7__N_285[3] ), 
            .I3(enable), .O(n2736));   // verilog/i2c_controller.v(90[4] 154[11])
    defparam i1865_4_lut.LUT_INIT = 16'h7073;
    SB_LUT4 i1781_2_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n2664));
    defparam i1781_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1413), .D(n322[4]), 
            .R(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1_4_lut_adj_10 (.I0(\state[1] ), .I1(n2664), .I2(n2736), 
            .I3(\state[0] ), .O(n2636));   // verilog/i2c_controller.v(90[4] 154[11])
    defparam i1_4_lut_adj_10.LUT_INIT = 16'ha022;
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1413), .D(n322[5]), 
            .R(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1787_2_lut_4_lut (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(n2671), .O(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1787_2_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i1891_4_lut (.I0(n16), .I1(n34), .I2(\state[3] ), .I3(n36), 
            .O(n2616));
    defparam i1891_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i1_2_lut_3_lut_adj_11 (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n970));
    defparam i1_2_lut_3_lut_adj_11.LUT_INIT = 16'h0202;
    SB_LUT4 i375_2_lut (.I0(sda_out), .I1(sda_enable), .I2(GND_net), .I3(GND_net), 
            .O(\state_7__N_285[3] ));   // verilog/i2c_controller.v(45[9:16])
    defparam i375_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1880_4_lut (.I0(n2740), .I1(\state[1] ), .I2(counter[0]), 
            .I3(counter[2]), .O(n2734));   // verilog/i2c_controller.v(163[4] 196[11])
    defparam i1880_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1872_4_lut (.I0(n2734), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(n11_adj_377), .O(n2752));   // verilog/i2c_controller.v(163[4] 196[11])
    defparam i1872_4_lut.LUT_INIT = 16'h0322;
    SB_LUT4 i1904_4_lut (.I0(n876), .I1(n11_adj_376), .I2(n9), .I3(n10_adj_379), 
            .O(n2008));
    defparam i1904_4_lut.LUT_INIT = 16'h222a;
    SB_LUT4 i1221_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n2018));
    defparam i1221_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut_adj_12 (.I0(counter[5]), .I1(counter[4]), .I2(counter[6]), 
            .I3(counter[7]), .O(n10_adj_380));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i4_4_lut_adj_12.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_3_lut (.I0(counter[3]), .I1(n10_adj_380), .I2(counter[2]), 
            .I3(GND_net), .O(n2654));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 counter2_333_334_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[4]), 
            .I3(n2534), .O(n25[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_333_334_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_333_334_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[3]), 
            .I3(n2533), .O(n25[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_333_334_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 state_7__I_0_141_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_379));   // verilog/i2c_controller.v(120[5:15])
    defparam state_7__I_0_141_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1895_2_lut (.I0(i2c_clk), .I1(counter2_7__N_256), .I2(GND_net), 
            .I3(GND_net), .O(n1229));   // verilog/i2c_controller.v(68[8:33])
    defparam i1895_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i1788_2_lut_3_lut (.I0(sda_out), .I1(sda_enable), .I2(n15_adj_381), 
            .I3(GND_net), .O(n2671));
    defparam i1788_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1413), .D(n322[6]), 
            .R(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1225_3_lut_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(scl_enable_N_362));
    defparam i1225_3_lut_4_lut_4_lut.LUT_INIT = 16'hfefa;
    SB_CARRY counter2_333_334_add_4_5 (.CI(n2533), .I0(GND_net), .I1(counter2[3]), 
            .CO(n2534));
    SB_LUT4 counter2_333_334_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n2532), .O(n25[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_333_334_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_333_334_add_4_4 (.CI(n2532), .I0(GND_net), .I1(counter2[2]), 
            .CO(n2533));
    SB_LUT4 counter2_333_334_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n2531), .O(n25[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_333_334_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1198_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(n321[0]));   // verilog/i2c_controller.v(44[19:55])
    defparam i1198_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 sub_34_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n2515), .O(n322[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_333_334_add_4_3 (.CI(n2531), .I0(GND_net), .I1(counter2[1]), 
            .CO(n2532));
    SB_LUT4 counter2_333_334_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n25[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_333_334_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n2514), .O(n322[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n11_adj_376));   // verilog/i2c_controller.v(75[27:43])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_CARRY counter2_333_334_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n2531));
    SB_LUT4 i22_3_lut_3_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n11_adj_377));
    defparam i22_3_lut_3_lut.LUT_INIT = 16'h1c1c;
    SB_CARRY sub_34_add_2_8 (.CI(n2514), .I0(counter[6]), .I1(VCC_net), 
            .CO(n2515));
    SB_LUT4 sub_34_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n2513), .O(n322[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_7 (.CI(n2513), .I0(counter[5]), .I1(VCC_net), 
            .CO(n2514));
    SB_LUT4 sub_34_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n2512), .O(n322[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i57_3_lut_3_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n36));
    defparam i57_3_lut_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i1264_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n2063));
    defparam i1264_3_lut_4_lut.LUT_INIT = 16'hffab;
    SB_CARRY sub_34_add_2_6 (.CI(n2512), .I0(counter[4]), .I1(VCC_net), 
            .CO(n2513));
    SB_LUT4 i2_2_lut (.I0(\state_7__N_269[0] ), .I1(n15), .I2(GND_net), 
            .I3(GND_net), .O(n2714));
    defparam i2_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 sub_34_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n2511), .O(n322[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 equal_31_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n15_adj_381));   // verilog/i2c_controller.v(75[27:43])
    defparam equal_31_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_CARRY sub_34_add_2_5 (.CI(n2511), .I0(counter[3]), .I1(VCC_net), 
            .CO(n2512));
    SB_LUT4 sub_34_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n2510), .O(n322[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1413), .D(n322[7]), 
            .R(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 i1874_4_lut (.I0(n11_adj_376), .I1(n21), .I2(n2714), .I3(n11_adj_382), 
            .O(n2741));
    defparam i1874_4_lut.LUT_INIT = 16'hfdff;
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n952), 
            .D(n1231), .S(n1493));   // verilog/i2c_controller.v(162[12] 197[6])
    SB_LUT4 i37_3_lut (.I0(n2741), .I1(\state[0] ), .I2(n876), .I3(GND_net), 
            .O(n2588));
    defparam i37_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1878_2_lut_3_lut (.I0(counter[0]), .I1(counter[1]), .I2(\saved_addr[0] ), 
            .I3(GND_net), .O(n2740));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1878_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i1881_2_lut_3_lut (.I0(counter[0]), .I1(counter[1]), .I2(n2654), 
            .I3(GND_net), .O(n2747));   // verilog/i2c_controller.v(89[8] 155[6])
    defparam i1881_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_4_lut (.I0(\state[1] ), .I1(n33), .I2(\state[3] ), 
            .I3(n36), .O(n39));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h4f44;
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n2588));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 state_7__I_0_139_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11_adj_382));   // verilog/i2c_controller.v(106[5:12])
    defparam state_7__I_0_139_i11_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_DFFSR counter2_333_334__i5 (.Q(counter2[4]), .C(CLK_c), .D(n25[4]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_333_334__i4 (.Q(counter2[3]), .C(CLK_c), .D(n25[3]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_333_334__i3 (.Q(counter2[2]), .C(CLK_c), .D(n25[2]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_333_334__i2 (.Q(counter2[1]), .C(CLK_c), .D(n25[1]), 
            .R(counter2_7__N_256));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFESS enable_slow_121 (.Q(\state_7__N_269[0] ), .C(CLK_c), .E(n1384), 
            .D(n1229), .S(enable));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_LUT4 i1_2_lut_adj_13 (.I0(\state[1] ), .I1(n33), .I2(GND_net), 
            .I3(GND_net), .O(n34));
    defparam i1_2_lut_adj_13.LUT_INIT = 16'h4444;
    SB_CARRY sub_34_add_2_4 (.CI(n2510), .I0(counter[2]), .I1(VCC_net), 
            .CO(n2511));
    SB_DFFNE sda_out_133 (.Q(sda_out), .C(i2c_clk), .E(n2616), .D(n2752));   // verilog/i2c_controller.v(162[12] 197[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1413), .D(n322[0]), 
            .S(n1495));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1520));   // verilog/i2c_controller.v(89[8] 155[6])
    SB_LUT4 sub_34_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n2509), .O(n322[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_3 (.CI(n2509), .I0(counter[1]), .I1(VCC_net), 
            .CO(n2510));
    SB_LUT4 i56_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 sub_34_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n322[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n2509));
    
endmodule
