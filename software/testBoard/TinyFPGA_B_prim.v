// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu Jan 30 23:27:42 2020
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
    
    wire GND_net, VCC_net, LED_c, n2652;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n2663, n2662;
    wire [7:0]data;   // verilog/TinyFPGA_B.v(94[16:20])
    
    wire data_ready, sda_out, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(118[13:26])
    
    wire read;
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(126[17:22])
    
    wire n2651, n2954, n72, n73, n74, n75, n76, n77, n78, 
        n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
        n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, 
        n99, n100, n101, n102, n103, n104, n2650, n2424, n2414, 
        n2639, n2661, n2660, n2659, n2434, n2649, n2638, n1841, 
        n2749, \ID_READOUT_FSM.state_2__N_62 , n2648, n14, n13, rw, 
        n2647;
    wire [7:0]state;   // verilog/eeprom.v(23[11:16])
    
    wire n2637, n2636, n2646, n1722, n6, n4, n2658, n2645, n20, 
        n2657;
    wire [7:0]state_adj_412;   // verilog/i2c_controller.v(33[12:17])
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n2644, n1895, n25, n24, n2476, n2958;
    wire [7:0]state_7__N_273;
    
    wire n1061, n23, n22, n4_adj_393, n2635;
    wire [7:0]state_7__N_289;
    
    wire n1970, n2939, n8, n4_adj_394, n2634, n2656, n2655, n1991, 
        n1990, n805, n2715, n2714, n1717, n2713, n2712, n2711, 
        n2643, n2710, n47, n2709, n2708, n2654, n15, n1740, 
        n1989, n2642, n2955, n2707, n2706, n2705, n2704, n2633, 
        n2641, n2703, n36, n2702, n2701, n2653, n2700, n18, 
        n2699, n2640, n2698, n1988, n1987, n1983, n1982, n1981, 
        n2697, n2696, n2695, n2694, n2935, n14_adj_395, n2693, 
        n1972, n2692, n2691, n10, n6_adj_396, n7, n8_adj_397, 
        n9, n10_adj_398, n11, n12, n13_adj_399, n14_adj_400, n15_adj_401, 
        n16, n17, n18_adj_402, n19, n20_adj_403, n21, n22_adj_404, 
        n23_adj_405, n24_adj_406, n25_adj_407, n26, n2885, n110, 
        n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n120, n121, n122, n123, n124, n125, n126, n127, n128, 
        n129, n130, n131, n132, n133, n134, n135;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 blink_counter_409_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n2711), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_289[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 add_8_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n2653), .O(n82)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_23_lut.LUT_INIT = 16'hC33C;
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_409_add_4_23 (.CI(n2711), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n2712));
    SB_LUT4 blink_counter_409_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_396), .I3(n2710), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut (.I0(delay_counter[21]), .I1(delay_counter[30]), .I2(delay_counter[22]), 
            .I3(delay_counter[25]), .O(n24));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[28]), .I1(delay_counter[27]), .I2(delay_counter[19]), 
            .I3(delay_counter[29]), .O(n23));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_3_lut (.I0(n20), .I1(n6), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n1841));
    defparam i24_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i11_3_lut (.I0(delay_counter[26]), .I1(n22), .I2(delay_counter[23]), 
            .I3(GND_net), .O(n25));
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY blink_counter_409_add_4_8 (.CI(n2696), .I0(GND_net), .I1(n20_adj_403), 
            .CO(n2697));
    SB_LUT4 i1504_4_lut (.I0(n25), .I1(delay_counter[31]), .I2(n23), .I3(n24), 
            .O(n104));   // verilog/TinyFPGA_B.v(142[16:38])
    defparam i1504_4_lut.LUT_INIT = 16'h3332;
    SB_CARRY blink_counter_409_add_4_22 (.CI(n2710), .I0(GND_net), .I1(n6_adj_396), 
            .CO(n2711));
    SB_LUT4 i999_2_lut (.I0(n1740), .I1(n104), .I2(GND_net), .I3(GND_net), 
            .O(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    defparam i999_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 blink_counter_409_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n2709), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_409_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20_adj_403), 
            .I3(n2696), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_409_add_4_21 (.CI(n2709), .I0(GND_net), .I1(n7), 
            .CO(n2710));
    SB_LUT4 blink_counter_409_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_397), .I3(n2708), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_20 (.CI(n2708), .I0(GND_net), .I1(n8_adj_397), 
            .CO(n2709));
    SB_CARRY blink_counter_409_add_4_4 (.CI(n2692), .I0(GND_net), .I1(n24_adj_406), 
            .CO(n2693));
    SB_LUT4 add_8_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n2660), .O(n75)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n2641), .O(n94)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_9 (.CI(n2697), .I0(GND_net), .I1(n19), 
            .CO(n2698));
    SB_LUT4 blink_counter_409_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n2697), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_409_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25_adj_407), 
            .I3(n2691), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n1740), 
            .D(n102), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n1740), 
            .D(n101), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_409_add_4_10 (.CI(n2698), .I0(GND_net), .I1(n18_adj_402), 
            .CO(n2699));
    SB_LUT4 blink_counter_409_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n2707), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n1740), 
            .D(n100), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_409_add_4_19 (.CI(n2707), .I0(GND_net), .I1(n9), 
            .CO(n2708));
    SB_DFFESR delay_counter_i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n1740), 
            .D(n99), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_409_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_398), .I3(n2706), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n1740), 
            .D(n98), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n1740), 
            .D(n97), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_409_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18_adj_402), .I3(n2698), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_409_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n2699), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n1740), 
            .D(n96), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_409_add_4_12 (.CI(n2700), .I0(GND_net), .I1(n16), 
            .CO(n2701));
    SB_DFF blink_counter_409__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 add_8_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n2647), .O(n88)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_5 (.CI(n2635), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n2636));
    SB_LUT4 blink_counter_409_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n2700), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_18 (.CI(n2706), .I0(GND_net), .I1(n10_adj_398), 
            .CO(n2707));
    SB_LUT4 blink_counter_409_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n2705), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_11 (.CI(n2641), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n2642));
    SB_LUT4 blink_counter_409_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22_adj_404), 
            .I3(n2694), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_17 (.CI(n2705), .I0(GND_net), .I1(n11), 
            .CO(n2706));
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_409_add_4_13 (.CI(n2701), .I0(GND_net), .I1(n15_adj_401), 
            .CO(n2702));
    SB_DFFESR delay_counter_i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n1740), 
            .D(n95), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_409_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15_adj_401), .I3(n2701), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_14 (.CI(n2702), .I0(GND_net), .I1(n14_adj_400), 
            .CO(n2703));
    SB_CARRY blink_counter_409_add_4_3 (.CI(n2691), .I0(GND_net), .I1(n25_adj_407), 
            .CO(n2692));
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_409_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n1740), 
            .D(n94), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_409_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n2691));
    SB_DFFESR delay_counter_i10 (.Q(delay_counter[10]), .C(CLK_c), .E(n1740), 
            .D(n93), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i11 (.Q(delay_counter[11]), .C(CLK_c), .E(n1740), 
            .D(n92), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i12 (.Q(delay_counter[12]), .C(CLK_c), .E(n1740), 
            .D(n91), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i13 (.Q(delay_counter[13]), .C(CLK_c), .E(n1740), 
            .D(n90), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i14 (.Q(delay_counter[14]), .C(CLK_c), .E(n1740), 
            .D(n89), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i15 (.Q(delay_counter[15]), .C(CLK_c), .E(n1740), 
            .D(n88), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_409_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n2704), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i16 (.Q(delay_counter[16]), .C(CLK_c), .E(n1740), 
            .D(n87), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i17 (.Q(delay_counter[17]), .C(CLK_c), .E(n1740), 
            .D(n86), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i18 (.Q(delay_counter[18]), .C(CLK_c), .E(n1740), 
            .D(n85), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i19 (.Q(delay_counter[19]), .C(CLK_c), .E(n1740), 
            .D(n84), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i20 (.Q(delay_counter[20]), .C(CLK_c), .E(n1740), 
            .D(n83), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_409_add_4_16 (.CI(n2704), .I0(GND_net), .I1(n12), 
            .CO(n2705));
    SB_DFFESR delay_counter_i21 (.Q(delay_counter[21]), .C(CLK_c), .E(n1740), 
            .D(n82), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i1941_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2955));
    defparam i1941_4_lut.LUT_INIT = 16'hfec4;
    SB_CARRY add_8_30 (.CI(n2660), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n2661));
    SB_LUT4 i1940_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n2954));
    defparam i1940_4_lut.LUT_INIT = 16'hcf08;
    SB_CARRY add_8_17 (.CI(n2647), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n2648));
    SB_LUT4 add_8_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n2640), .O(n95)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_409_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13_adj_399), .I3(n2703), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n2634), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n2646), .O(n89)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n2659), .O(n76)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_15 (.CI(n2703), .I0(GND_net), .I1(n13_adj_399), 
            .CO(n2704));
    SB_CARRY add_8_23 (.CI(n2653), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n2654));
    SB_DFFESR delay_counter_i22 (.Q(delay_counter[22]), .C(CLK_c), .E(n1740), 
            .D(n81), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_10 (.CI(n2640), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n2641));
    SB_LUT4 blink_counter_409_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_400), .I3(n2702), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n2652), .O(n83)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_22 (.CI(n2652), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n2653));
    SB_LUT4 add_8_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n2651), .O(n84)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_29 (.CI(n2659), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n2660));
    SB_DFFESR delay_counter_i23 (.Q(delay_counter[23]), .C(CLK_c), .E(n1740), 
            .D(n80), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_409_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24_adj_406), 
            .I3(n2692), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i24 (.Q(delay_counter[24]), .C(CLK_c), .E(n1740), 
            .D(n79), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i1942_3_lut (.I0(n2954), .I1(n2955), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i1942_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 add_8_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n2658), .O(n77)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_4 (.CI(n2634), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n2635));
    SB_LUT4 add_8_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n2639), .O(n96)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_28 (.CI(n2658), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n2659));
    SB_LUT4 add_8_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n2657), .O(n78)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n2633), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_9 (.CI(n2639), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n2640));
    SB_CARRY add_8_16 (.CI(n2646), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n2647));
    SB_LUT4 i1043_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(state_7__N_273[0]), 
            .I3(n47), .O(n1970));   // verilog/i2c_controller.v(91[8] 172[6])
    defparam i1043_4_lut.LUT_INIT = 16'haaca;
    SB_LUT4 add_8_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n2638), .O(n97)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i25 (.Q(delay_counter[25]), .C(CLK_c), .E(n1740), 
            .D(n78), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_27 (.CI(n2657), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n2658));
    SB_LUT4 add_8_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n2645), .O(n90)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i26 (.Q(delay_counter[26]), .C(CLK_c), .E(n1740), 
            .D(n77), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_21 (.CI(n2651), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n2652));
    SB_LUT4 add_8_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n2650), .O(n85)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_8 (.CI(n2638), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n2639));
    SB_CARRY add_8_20 (.CI(n2650), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n2651));
    SB_CARRY add_8_15 (.CI(n2645), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n2646));
    SB_LUT4 add_8_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n2656), .O(n79)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_3 (.CI(n2633), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n2634));
    SB_LUT4 add_8_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n2644), .O(n91)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n2637), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_7 (.CI(n2637), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n2638));
    SB_CARRY add_8_26 (.CI(n2656), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n2657));
    SB_LUT4 add_8_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n2649), .O(n86)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_19 (.CI(n2649), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n2650));
    SB_CARRY add_8_14 (.CI(n2644), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n2645));
    SB_LUT4 i2_2_lut (.I0(data[1]), .I1(data[2]), .I2(GND_net), .I3(GND_net), 
            .O(n10));   // verilog/TinyFPGA_B.v(140[14:21])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_8_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n2636), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n2655), .O(n80)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n2643), .O(n92)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i27 (.Q(delay_counter[27]), .C(CLK_c), .E(n1740), 
            .D(n76), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i28 (.Q(delay_counter[28]), .C(CLK_c), .E(n1740), 
            .D(n75), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 add_8_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_6 (.CI(n2636), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n2637));
    SB_LUT4 i6_4_lut (.I0(data[7]), .I1(data[4]), .I2(data[5]), .I3(data[6]), 
            .O(n14_adj_395));   // verilog/TinyFPGA_B.v(140[14:21])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_8_13 (.CI(n2643), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n2644));
    SB_LUT4 i7_4_lut (.I0(data[0]), .I1(n14_adj_395), .I2(n10), .I3(data[3]), 
            .O(n15));   // verilog/TinyFPGA_B.v(140[14:21])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i29 (.Q(delay_counter[29]), .C(CLK_c), .E(n1740), 
            .D(n74), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i6_4_lut_adj_13 (.I0(delay_counter[5]), .I1(delay_counter[3]), 
            .I2(delay_counter[1]), .I3(delay_counter[7]), .O(n14));
    defparam i6_4_lut_adj_13.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_4_lut (.I0(delay_counter[0]), .I1(delay_counter[6]), .I2(delay_counter[2]), 
            .I3(delay_counter[4]), .O(n13));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i528_3_lut (.I0(n13), .I1(delay_counter[8]), .I2(n14), .I3(GND_net), 
            .O(n18));
    defparam i528_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFESR delay_counter_i30 (.Q(delay_counter[30]), .C(CLK_c), .E(n1740), 
            .D(n73), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i31 (.Q(delay_counter[31]), .C(CLK_c), .E(n1740), 
            .D(n72), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFF \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(CLK_c), 
           .D(n2885));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFF \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(CLK_c), 
           .D(n2749));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i3_4_lut (.I0(n18), .I1(delay_counter[9]), .I2(delay_counter[11]), 
            .I3(delay_counter[10]), .O(n2935));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_409_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n2715), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_409__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i3_4_lut_adj_14 (.I0(n2935), .I1(delay_counter[13]), .I2(delay_counter[14]), 
            .I3(delay_counter[12]), .O(n2939));
    defparam i3_4_lut_adj_14.LUT_INIT = 16'h8000;
    SB_LUT4 i524_4_lut (.I0(n2939), .I1(delay_counter[17]), .I2(delay_counter[16]), 
            .I3(delay_counter[15]), .O(n36));
    defparam i524_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i8_4_lut (.I0(delay_counter[24]), .I1(delay_counter[18]), .I2(n36), 
            .I3(delay_counter[20]), .O(n22));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF blink_counter_409__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFFESR delay_counter_i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n1740), 
            .D(n103), .R(n1895));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFF blink_counter_409__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i20 (.Q(n6_adj_396), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i18 (.Q(n8_adj_397), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_409_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n2695), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_409__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i16 (.Q(n10_adj_398), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i13 (.Q(n13_adj_399), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i12 (.Q(n14_adj_400), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i11 (.Q(n15_adj_401), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i1844_2_lut_3_lut (.I0(n104), .I1(n15), .I2(\ID_READOUT_FSM.state [1]), 
            .I3(GND_net), .O(n20));   // verilog/TinyFPGA_B.v(140[11] 146[14])
    defparam i1844_2_lut_3_lut.LUT_INIT = 16'hd0d0;
    SB_DFF blink_counter_409__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i8 (.Q(n18_adj_402), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i6 (.Q(n20_adj_403), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i4 (.Q(n22_adj_404), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i3 (.Q(n23_adj_405), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i2 (.Q(n24_adj_406), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_409__i1 (.Q(n25_adj_407), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF read_26 (.Q(read), .C(CLK_c), .D(\ID_READOUT_FSM.state_2__N_62 ));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i1045_4_lut (.I0(rw), .I1(state[0]), .I2(state[1]), .I3(n805), 
            .O(n1972));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1045_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 blink_counter_409_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n2714), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n2635), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_5 (.CI(n2693), .I0(GND_net), .I1(n23_adj_405), 
            .CO(n2694));
    SB_LUT4 blink_counter_409_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23_adj_405), 
            .I3(n2693), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_11 (.CI(n2699), .I0(GND_net), .I1(n17), 
            .CO(n2700));
    GND i1 (.Y(GND_net));
    SB_LUT4 i1547_2_lut_3_lut_4_lut (.I0(n104), .I1(n15), .I2(\ID_READOUT_FSM.state [1]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n2476));   // verilog/TinyFPGA_B.v(140[11] 146[14])
    defparam i1547_2_lut_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 add_8_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n2648), .O(n87)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1995_2_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(GND_net), .I3(GND_net), .O(\ID_READOUT_FSM.state_2__N_62 ));   // verilog/TinyFPGA_B.v(129[9:13])
    defparam i1995_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1973_3_lut (.I0(state_7__N_273[0]), .I1(n2434), .I2(n47), 
            .I3(GND_net), .O(n2958));   // verilog/i2c_controller.v(91[8] 172[6])
    defparam i1973_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i16_4_lut (.I0(state_adj_412[0]), .I1(n2958), .I2(n1061), 
            .I3(n2414), .O(n8));   // verilog/i2c_controller.v(91[8] 172[6])
    defparam i16_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i1054_4_lut (.I0(state_7__N_289[3]), .I1(data[1]), .I2(n4), 
            .I3(n1722), .O(n1981));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1054_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1055_4_lut (.I0(state_7__N_289[3]), .I1(data[2]), .I2(n4_adj_393), 
            .I3(n1717), .O(n1982));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1055_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY blink_counter_409_add_4_26 (.CI(n2714), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n2715));
    SB_LUT4 blink_counter_409_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n2713), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n2642), .O(n93)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_25 (.CI(n2713), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n2714));
    SB_CARRY add_8_25 (.CI(n2655), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n2656));
    SB_CARRY add_8_12 (.CI(n2642), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n2643));
    SB_CARRY add_8_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n2633));
    SB_CARRY blink_counter_409_add_4_6 (.CI(n2694), .I0(GND_net), .I1(n22_adj_404), 
            .CO(n2695));
    SB_CARRY blink_counter_409_add_4_7 (.CI(n2695), .I0(GND_net), .I1(n21), 
            .CO(n2696));
    SB_LUT4 i1056_4_lut (.I0(state_7__N_289[3]), .I1(data[3]), .I2(n4_adj_393), 
            .I3(n1722), .O(n1983));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1056_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_8_18 (.CI(n2648), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n2649));
    SB_LUT4 add_8_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n2663), .O(n72)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n2662), .O(n73)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_32 (.CI(n2662), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n2663));
    SB_LUT4 i1060_4_lut (.I0(state_7__N_289[3]), .I1(data[4]), .I2(n4_adj_394), 
            .I3(n1717), .O(n1987));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1060_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_8_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n2661), .O(n74)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n2654), .O(n81)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_409_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n2712), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_409_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_409_add_4_24 (.CI(n2712), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n2713));
    SB_CARRY add_8_31 (.CI(n2661), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n2662));
    SB_CARRY add_8_24 (.CI(n2654), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n2655));
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
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
    SB_LUT4 i1061_4_lut (.I0(state_7__N_289[3]), .I1(data[5]), .I2(n4_adj_394), 
            .I3(n1722), .O(n1988));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1061_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1062_4_lut (.I0(state_7__N_289[3]), .I1(data[6]), .I2(n2424), 
            .I3(n1717), .O(n1989));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1062_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1063_4_lut (.I0(state_7__N_289[3]), .I1(data[0]), .I2(n4), 
            .I3(n1717), .O(n1990));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1063_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i2009_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n15), .I3(GND_net), .O(n1740));   // verilog/TinyFPGA_B.v(139[9:13])
    defparam i2009_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1064_4_lut (.I0(state_7__N_289[3]), .I1(data[7]), .I2(n2424), 
            .I3(n1722), .O(n1991));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1064_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i12_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n2476), .I2(n1841), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n2749));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    EEPROM eeprom (.\state[0] (state[0]), .GND_net(GND_net), .read(read), 
           .\state[1] (state[1]), .\state[0]_adj_5 (state_adj_412[0]), .CLK_c(CLK_c), 
           .n47(n47), .n1972(n1972), .rw(rw), .n804({n805}), .data_ready(data_ready), 
           .scl_enable(scl_enable), .\saved_addr[0] (saved_addr[0]), .n1061(n1061), 
           .\state_7__N_273[0] (state_7__N_273[0]), .sda_enable(sda_enable), 
           .n1970(n1970), .n2434(n2434), .n2414(n2414), .\state_7__N_289[3] (state_7__N_289[3]), 
           .VCC_net(VCC_net), .n4(n4), .n1991(n1991), .data({data}), 
           .n1990(n1990), .n1989(n1989), .n1988(n1988), .n1987(n1987), 
           .n1983(n1983), .n1982(n1982), .n1981(n1981), .n8(n8), .n4_adj_6(n4_adj_393), 
           .n4_adj_7(n4_adj_394), .n1717(n1717), .sda_out(sda_out), .n1722(n1722), 
           .n2424(n2424), .scl(scl)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(151[12] 162[8])
    SB_LUT4 i2001_4_lut_4_lut (.I0(n20), .I1(n6), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(n2476), .O(n2885));
    defparam i2001_4_lut_4_lut.LUT_INIT = 16'h3530;
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (\state[0] , GND_net, read, \state[1] , \state[0]_adj_5 , 
            CLK_c, n47, n1972, rw, n804, data_ready, scl_enable, 
            \saved_addr[0] , n1061, \state_7__N_273[0] , sda_enable, 
            n1970, n2434, n2414, \state_7__N_289[3] , VCC_net, n4, 
            n1991, data, n1990, n1989, n1988, n1987, n1983, n1982, 
            n1981, n8, n4_adj_6, n4_adj_7, n1717, sda_out, n1722, 
            n2424, scl) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \state[0] ;
    input GND_net;
    input read;
    output \state[1] ;
    output \state[0]_adj_5 ;
    input CLK_c;
    output n47;
    input n1972;
    output rw;
    output [0:0]n804;
    output data_ready;
    output scl_enable;
    output \saved_addr[0] ;
    output n1061;
    output \state_7__N_273[0] ;
    output sda_enable;
    input n1970;
    output n2434;
    output n2414;
    input \state_7__N_289[3] ;
    input VCC_net;
    output n4;
    input n1991;
    output [7:0]data;
    input n1990;
    input n1989;
    input n1988;
    input n1987;
    input n1983;
    input n1982;
    input n1981;
    input n8;
    output n4_adj_6;
    output n4_adj_7;
    output n1717;
    output sda_out;
    output n1722;
    output n2424;
    output scl;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n1799, n1934, n26;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n1703, n2727;
    wire [15:0]delay_counter_15__N_172;
    wire [15:0]delay_counter;   // verilog/eeprom.v(24[12:25])
    
    wire n28, n26_adj_388, n27, n25, n4_c;
    wire [15:0]n732;
    
    wire n2685, n2684, n2683, n2682, n2681, n2680, n2679, n2678, 
        n2677, n2676, n2763, n2675, n2674, n2773, n2673, n2672, 
        n2671, enable, n2807, n22;
    
    SB_LUT4 i1007_2_lut (.I0(n1799), .I1(\state[0] ), .I2(GND_net), .I3(GND_net), 
            .O(n1934));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1007_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut (.I0(read), .I1(\state[1] ), .I2(\state[0] ), .I3(GND_net), 
            .O(n1799));
    defparam i1_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i3_4_lut (.I0(n26), .I1(state[3]), .I2(\state[0]_adj_5 ), 
            .I3(n1703), .O(n2727));   // verilog/eeprom.v(42[12:28])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[1]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[2]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[3]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[4]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[5]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i12_4_lut (.I0(delay_counter[6]), .I1(delay_counter[10]), .I2(delay_counter[12]), 
            .I3(delay_counter[8]), .O(n28));   // verilog/eeprom.v(42[12:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[6]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i10_4_lut (.I0(delay_counter[11]), .I1(delay_counter[2]), .I2(delay_counter[7]), 
            .I3(delay_counter[5]), .O(n26_adj_388));   // verilog/eeprom.v(42[12:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[7]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[8]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[9]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[10]), .S(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[11]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[12]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[13]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[14]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[15]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n1799), 
            .D(delay_counter_15__N_172[0]), .R(n1934));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i11_4_lut (.I0(delay_counter[15]), .I1(delay_counter[3]), .I2(delay_counter[14]), 
            .I3(delay_counter[1]), .O(n27));   // verilog/eeprom.v(42[12:28])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[4]), .I1(delay_counter[9]), .I2(delay_counter[13]), 
            .I3(delay_counter[0]), .O(n25));   // verilog/eeprom.v(42[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26_adj_388), .I3(n28), 
            .O(n1703));   // verilog/eeprom.v(42[12:28])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[0] ), .I1(n47), .I2(\state[1] ), 
            .I3(GND_net), .O(n4_c));   // verilog/eeprom.v(51[5:9])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 add_187_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n732[1]), 
            .I3(n2685), .O(delay_counter_15__N_172[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_187_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n732[1]), 
            .I3(n2684), .O(delay_counter_15__N_172[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_16 (.CI(n2684), .I0(delay_counter[14]), .I1(n732[1]), 
            .CO(n2685));
    SB_LUT4 add_187_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n732[1]), 
            .I3(n2683), .O(delay_counter_15__N_172[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_15 (.CI(n2683), .I0(delay_counter[13]), .I1(n732[1]), 
            .CO(n2684));
    SB_LUT4 add_187_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n732[1]), 
            .I3(n2682), .O(delay_counter_15__N_172[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_14 (.CI(n2682), .I0(delay_counter[12]), .I1(n732[1]), 
            .CO(n2683));
    SB_LUT4 add_187_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n732[1]), 
            .I3(n2681), .O(delay_counter_15__N_172[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_13 (.CI(n2681), .I0(delay_counter[11]), .I1(n732[1]), 
            .CO(n2682));
    SB_LUT4 add_187_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(n732[1]), 
            .I3(n2680), .O(delay_counter_15__N_172[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_12 (.CI(n2680), .I0(delay_counter[10]), .I1(n732[1]), 
            .CO(n2681));
    SB_LUT4 add_187_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(n732[1]), 
            .I3(n2679), .O(delay_counter_15__N_172[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_11 (.CI(n2679), .I0(delay_counter[9]), .I1(n732[1]), 
            .CO(n2680));
    SB_LUT4 add_187_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(n732[1]), 
            .I3(n2678), .O(delay_counter_15__N_172[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_10 (.CI(n2678), .I0(delay_counter[8]), .I1(n732[1]), 
            .CO(n2679));
    SB_LUT4 add_187_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(n732[1]), 
            .I3(n2677), .O(delay_counter_15__N_172[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_9 (.CI(n2677), .I0(delay_counter[7]), .I1(n732[1]), 
            .CO(n2678));
    SB_LUT4 add_187_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(n732[1]), 
            .I3(n2676), .O(delay_counter_15__N_172[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF state__i1 (.Q(\state[1] ), .C(CLK_c), .D(n2763));   // verilog/eeprom.v(26[8] 58[4])
    SB_CARRY add_187_8 (.CI(n2676), .I0(delay_counter[6]), .I1(n732[1]), 
            .CO(n2677));
    SB_LUT4 add_187_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n732[1]), 
            .I3(n2675), .O(delay_counter_15__N_172[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_7 (.CI(n2675), .I0(delay_counter[5]), .I1(n732[1]), 
            .CO(n2676));
    SB_LUT4 add_187_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(n732[1]), 
            .I3(n2674), .O(delay_counter_15__N_172[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF state__i0 (.Q(\state[0] ), .C(CLK_c), .D(n2773));   // verilog/eeprom.v(26[8] 58[4])
    SB_CARRY add_187_6 (.CI(n2674), .I0(delay_counter[4]), .I1(n732[1]), 
            .CO(n2675));
    SB_LUT4 add_187_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n732[1]), 
            .I3(n2673), .O(delay_counter_15__N_172[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_5 (.CI(n2673), .I0(delay_counter[3]), .I1(n732[1]), 
            .CO(n2674));
    SB_LUT4 add_187_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n732[1]), 
            .I3(n2672), .O(delay_counter_15__N_172[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_4 (.CI(n2672), .I0(delay_counter[2]), .I1(n732[1]), 
            .CO(n2673));
    SB_LUT4 add_187_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n732[1]), 
            .I3(n2671), .O(delay_counter_15__N_172[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_3 (.CI(n2671), .I0(delay_counter[1]), .I1(n732[1]), 
            .CO(n2672));
    SB_LUT4 add_187_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n732[1]), 
            .I3(GND_net), .O(delay_counter_15__N_172[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_187_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_187_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n732[1]), 
            .CO(n2671));
    SB_DFF rw_43 (.Q(rw), .C(CLK_c), .D(n1972));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFSR enable_39 (.Q(enable), .C(CLK_c), .D(n804[0]), .R(\state[1] ));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFF data_ready_42 (.Q(data_ready), .C(CLK_c), .D(n2807));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i1_4_lut_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n2727), 
            .I3(GND_net), .O(n22));   // verilog/eeprom.v(51[5:9])
    defparam i1_4_lut_2_lut_4_lut.LUT_INIT = 16'h0202;
    i2c_controller i2c (.\state[1] (\state[1] ), .n2727(n2727), .\state[0] (\state[0] ), 
            .read(read), .n2773(n2773), .\state[0]_adj_1 (\state[0]_adj_5 ), 
            .\state[3] (state[3]), .CLK_c(CLK_c), .scl_enable(scl_enable), 
            .\saved_addr[0] (\saved_addr[0] ), .GND_net(GND_net), .n22(n22), 
            .n4(n4_c), .n2763(n2763), .n1061(n1061), .\state_7__N_273[0] (\state_7__N_273[0] ), 
            .sda_enable(sda_enable), .n1703(n1703), .n47(n47), .n730(n732[1]), 
            .n1970(n1970), .n2434(n2434), .n2414(n2414), .\state_7__N_289[3] (\state_7__N_289[3] ), 
            .n26(n26), .VCC_net(VCC_net), .n4_adj_2(n4), .data_ready(data_ready), 
            .n2807(n2807), .n1991(n1991), .data({data}), .n1990(n1990), 
            .n1989(n1989), .n1988(n1988), .n1987(n1987), .n1983(n1983), 
            .n804({n804}), .n1982(n1982), .n1981(n1981), .n8(n8), .enable(enable), 
            .n4_adj_3(n4_adj_6), .n4_adj_4(n4_adj_7), .n1717(n1717), .sda_out(sda_out), 
            .n1722(n1722), .n2424(n2424), .scl(scl)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(60[16] 74[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\state[1] , n2727, \state[0] , read, n2773, 
            \state[0]_adj_1 , \state[3] , CLK_c, scl_enable, \saved_addr[0] , 
            GND_net, n22, n4, n2763, n1061, \state_7__N_273[0] , 
            sda_enable, n1703, n47, n730, n1970, n2434, n2414, 
            \state_7__N_289[3] , n26, VCC_net, n4_adj_2, data_ready, 
            n2807, n1991, data, n1990, n1989, n1988, n1987, n1983, 
            n804, n1982, n1981, n8, enable, n4_adj_3, n4_adj_4, 
            n1717, sda_out, n1722, n2424, scl) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input \state[1] ;
    input n2727;
    input \state[0] ;
    input read;
    output n2773;
    output \state[0]_adj_1 ;
    output \state[3] ;
    input CLK_c;
    output scl_enable;
    output \saved_addr[0] ;
    input GND_net;
    input n22;
    input n4;
    output n2763;
    output n1061;
    output \state_7__N_273[0] ;
    output sda_enable;
    input n1703;
    output n47;
    output n730;
    input n1970;
    output n2434;
    output n2414;
    input \state_7__N_289[3] ;
    output n26;
    input VCC_net;
    output n4_adj_2;
    input data_ready;
    output n2807;
    input n1991;
    output [7:0]data;
    input n1990;
    input n1989;
    input n1988;
    input n1987;
    input n1983;
    output [0:0]n804;
    input n1982;
    input n1981;
    input n8;
    input enable;
    output n4_adj_3;
    output n4_adj_4;
    output n1717;
    output sda_out;
    output n1722;
    output n2424;
    output scl;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire [7:0]n119;
    
    wire n1837;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n1928;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n1739, i2c_clk_N_210, scl_enable_N_360, n2869, n13, n2791, 
        n2967, n2963, n2881, n11, n2976, n9, n10, n15, n2454, 
        enable_slow_N_372, n1766;
    wire [5:0]n29;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n1935, n1484, n1152, n1932, sda_out_adj_376, n7, n37, 
        n33, n1054, n2873, n1171, n10_adj_377, n11_adj_378, n10_adj_379, 
        n2927, n2690, n2689, n11_adj_380, n11_adj_381, n5, n2688, 
        n2687, n2479, n2686, n2951, n2440, n2670, n2669, n2668, 
        n2667, n10_adj_384, n2972, n2819, n2666, n2665, n2664;
    
    SB_LUT4 i19_4_lut (.I0(\state[1] ), .I1(n2727), .I2(\state[0] ), .I3(read), 
            .O(n2773));   // verilog/eeprom.v(23[11:16])
    defparam i19_4_lut.LUT_INIT = 16'he5e0;
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1837), .D(n119[3]), 
            .R(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[0]_adj_1 ), .I1(state[1]), .I2(state[2]), 
            .I3(\state[3] ), .O(n1739));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_DFF i2c_clk_121 (.Q(i2c_clk), .C(CLK_c), .D(i2c_clk_N_210));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFFN i2c_scl_enable_123 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_360));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1837), .D(n119[4]), 
            .R(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1987_4_lut (.I0(state[1]), .I1(n2869), .I2(state[2]), .I3(n13), 
            .O(n2791));
    defparam i1987_4_lut.LUT_INIT = 16'h444c;
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1837), .D(n119[5]), 
            .R(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1976_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n2967));   // verilog/i2c_controller.v(197[28:35])
    defparam i1976_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1968_4_lut (.I0(n2967), .I1(state[1]), .I2(counter[0]), .I3(counter[2]), 
            .O(n2963));   // verilog/i2c_controller.v(180[4] 214[11])
    defparam i1968_4_lut.LUT_INIT = 16'hc008;
    SB_LUT4 i1867_3_lut (.I0(\state[1] ), .I1(n2727), .I2(\state[0] ), 
            .I3(GND_net), .O(n2881));
    defparam i1867_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i1965_4_lut (.I0(n2963), .I1(state[2]), .I2(\state[0]_adj_1 ), 
            .I3(n11), .O(n2976));   // verilog/i2c_controller.v(180[4] 214[11])
    defparam i1965_4_lut.LUT_INIT = 16'h0322;
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1837), .D(n119[6]), 
            .R(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1837), .D(n119[7]), 
            .R(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1_4_lut (.I0(read), .I1(n22), .I2(n4), .I3(n2881), .O(n2763));   // verilog/eeprom.v(23[11:16])
    defparam i1_4_lut.LUT_INIT = 16'hfcdc;
    SB_LUT4 i2011_3_lut_4_lut (.I0(n9), .I1(n10), .I2(n15), .I3(n1061), 
            .O(n2454));   // verilog/i2c_controller.v(139[9:14])
    defparam i2011_3_lut_4_lut.LUT_INIT = 16'h1f00;
    SB_DFFE enable_slow_120 (.Q(\state_7__N_273[0] ), .C(CLK_c), .E(n1766), 
            .D(enable_slow_N_372));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_LUT4 equal_44_i10_2_lut (.I0(state[2]), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(77[47:62])
    defparam equal_44_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFSR counter2_410_411__i1 (.Q(counter2[0]), .C(CLK_c), .D(n29[0]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFNESS write_enable_130 (.Q(sda_enable), .C(i2c_clk), .E(n1152), 
            .D(n1484), .S(n1932));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_LUT4 i1991_2_lut_3_lut (.I0(state[2]), .I1(n11), .I2(\state[0]_adj_1 ), 
            .I3(GND_net), .O(n1484));
    defparam i1991_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_DFFNE sda_out_131 (.Q(sda_out_adj_376), .C(i2c_clk), .E(n2791), 
            .D(n2976));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_LUT4 i1_2_lut (.I0(state[2]), .I1(\state[3] ), .I2(GND_net), .I3(GND_net), 
            .O(n7));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1837), .D(n119[0]), 
            .S(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1_2_lut_adj_4 (.I0(n1703), .I1(n47), .I2(GND_net), .I3(GND_net), 
            .O(n730));   // verilog/i2c_controller.v(77[27:43])
    defparam i1_2_lut_adj_4.LUT_INIT = 16'h2222;
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1970));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1989_4_lut_4_lut (.I0(state[2]), .I1(n11), .I2(state[1]), 
            .I3(n2869), .O(n1152));
    defparam i1989_4_lut_4_lut.LUT_INIT = 16'hef00;
    SB_LUT4 i1856_3_lut (.I0(state[1]), .I1(n37), .I2(n33), .I3(GND_net), 
            .O(n2869));
    defparam i1856_3_lut.LUT_INIT = 16'hdcdc;
    SB_LUT4 i17_4_lut (.I0(n1054), .I1(n2873), .I2(n1171), .I3(n37), 
            .O(n1837));
    defparam i17_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 state_7__I_0_140_i10_2_lut (.I0(state[2]), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_377));   // verilog/i2c_controller.v(195[5:15])
    defparam state_7__I_0_140_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 state_7__I_0_139_i11_2_lut_3_lut_4_lut (.I0(\state[0]_adj_1 ), 
            .I1(state[1]), .I2(state[2]), .I3(\state[3] ), .O(n11_adj_378));
    defparam state_7__I_0_139_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i1_3_lut (.I0(state[1]), .I1(n33), .I2(n37), .I3(GND_net), 
            .O(n1932));
    defparam i1_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i1509_2_lut_3_lut_4_lut (.I0(\state[0]_adj_1 ), .I1(state[1]), 
            .I2(state[2]), .I3(\state[3] ), .O(n2434));   // verilog/i2c_controller.v(139[9:14])
    defparam i1509_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdfb;
    SB_LUT4 i83_4_lut_4_lut_4_lut (.I0(state[1]), .I1(\state[0]_adj_1 ), 
            .I2(state[2]), .I3(\state[3] ), .O(scl_enable_N_360));
    defparam i83_4_lut_4_lut_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[0]_adj_1 ), .I1(state[2]), .I2(\state[3] ), 
            .I3(GND_net), .O(n1171));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2017_2_lut (.I0(n47), .I1(\state_7__N_273[0] ), .I2(GND_net), 
            .I3(GND_net), .O(enable_slow_N_372));
    defparam i2017_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[4]), .O(n10_adj_379));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(counter2[1]), .I1(n10_adj_379), .I2(counter2[0]), 
            .I3(GND_net), .O(n1935));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2006_3_lut_4_lut (.I0(state[2]), .I1(\state[3] ), .I2(state[1]), 
            .I3(n1061), .O(n2927));
    defparam i2006_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[3] ), .I1(state[2]), .I2(state[1]), 
            .I3(\state[0]_adj_1 ), .O(n37));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h1154;
    SB_LUT4 counter2_410_411_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[5]), 
            .I3(n2690), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_410_411_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[4]), 
            .I3(n2689), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(state[1]), .I1(\state[0]_adj_1 ), 
            .I2(state[2]), .I3(\state[3] ), .O(n47));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 state_7__I_0_144_i11_2_lut_4_lut (.I0(\state[0]_adj_1 ), .I1(state[1]), 
            .I2(state[2]), .I3(\state[3] ), .O(n11_adj_380));   // verilog/i2c_controller.v(200[5:14])
    defparam state_7__I_0_144_i11_2_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1837), .D(n119[2]), 
            .S(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1985_4_lut (.I0(n1739), .I1(n1054), .I2(n11_adj_381), .I3(n2414), 
            .O(n1061));
    defparam i1985_4_lut.LUT_INIT = 16'h5111;
    SB_CARRY counter2_410_411_add_4_6 (.CI(n2689), .I0(GND_net), .I1(counter2[4]), 
            .CO(n2690));
    SB_LUT4 i1_4_lut_adj_5 (.I0(n11_adj_380), .I1(n11_adj_378), .I2(\state_7__N_289[3] ), 
            .I3(\saved_addr[0] ), .O(n5));   // verilog/i2c_controller.v(92[4] 171[11])
    defparam i1_4_lut_adj_5.LUT_INIT = 16'h5755;
    SB_LUT4 i22_3_lut_3_lut (.I0(state[1]), .I1(\state[0]_adj_1 ), .I2(\state[3] ), 
            .I3(GND_net), .O(n11));
    defparam i22_3_lut_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 counter2_410_411_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[3]), 
            .I3(n2688), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_6 (.I0(i2c_clk), .I1(n1935), .I2(GND_net), .I3(GND_net), 
            .O(i2c_clk_N_210));
    defparam i1_2_lut_adj_6.LUT_INIT = 16'h6666;
    SB_CARRY counter2_410_411_add_4_5 (.CI(n2688), .I0(GND_net), .I1(counter2[3]), 
            .CO(n2689));
    SB_LUT4 i1_2_lut_adj_7 (.I0(state[2]), .I1(state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n26));
    defparam i1_2_lut_adj_7.LUT_INIT = 16'heeee;
    SB_LUT4 counter2_410_411_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n2687), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS state_i0_i1 (.Q(state[1]), .C(i2c_clk), .E(n1061), .D(n5), 
            .S(n2479));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_CARRY counter2_410_411_add_4_4 (.CI(n2687), .I0(GND_net), .I1(counter2[2]), 
            .CO(n2688));
    SB_LUT4 counter2_410_411_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n2686), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_410_411_add_4_3 (.CI(n2686), .I0(GND_net), .I1(counter2[1]), 
            .CO(n2687));
    SB_LUT4 counter2_410_411_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_410_411_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_410_411_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n2686));
    SB_LUT4 equal_60_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_2));   // verilog/i2c_controller.v(206[6:23])
    defparam equal_60_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 state_7__I_0_143_i11_2_lut_3_lut_4_lut (.I0(\state[0]_adj_1 ), 
            .I1(state[1]), .I2(state[2]), .I3(\state[3] ), .O(n15));   // verilog/i2c_controller.v(164[9:15])
    defparam state_7__I_0_143_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_3_lut_2_lut (.I0(\state[0]_adj_1 ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n13));
    defparam i1_3_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_4_lut (.I0(n4_adj_2), .I1(counter[4]), .I2(counter[3]), 
            .I3(counter[5]), .O(n2951));   // verilog/i2c_controller.v(110[10:22])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(\state[1] ), .I1(data_ready), .I2(\state[0] ), 
            .I3(n47), .O(n2807));
    defparam i13_4_lut.LUT_INIT = 16'hc8ca;
    SB_DFFN data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n1991));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n1990));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n1989));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n1988));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n1987));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n1983));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_LUT4 i3_4_lut_adj_8 (.I0(counter[7]), .I1(counter[0]), .I2(n2951), 
            .I3(counter[6]), .O(n1054));   // verilog/i2c_controller.v(110[10:22])
    defparam i3_4_lut_adj_8.LUT_INIT = 16'hfffe;
    SB_LUT4 i1197_4_lut (.I0(read), .I1(n1703), .I2(\state[0] ), .I3(n47), 
            .O(n804[0]));   // verilog/eeprom.v(23[11:16])
    defparam i1197_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFN data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n1982));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFN data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n1981));   // verilog/i2c_controller.v(179[12] 215[6])
    SB_DFFE state_i0_i0 (.Q(\state[0]_adj_1 ), .C(i2c_clk), .E(VCC_net), 
            .D(n8));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_DFFSR counter2_410_411__i6 (.Q(counter2[5]), .C(CLK_c), .D(n29[5]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_410_411__i5 (.Q(counter2[4]), .C(CLK_c), .D(n29[4]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_410_411__i4 (.Q(counter2[3]), .C(CLK_c), .D(n29[3]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_410_411__i3 (.Q(counter2[2]), .C(CLK_c), .D(n29[2]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_410_411__i2 (.Q(counter2[1]), .C(CLK_c), .D(n29[1]), 
            .R(n1935));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFESS state_i0_i2 (.Q(state[2]), .C(i2c_clk), .E(n1061), .D(n2440), 
            .S(n2454));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n2670), .O(n119[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n2669), .O(n119[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_8 (.CI(n2669), .I0(counter[6]), .I1(VCC_net), 
            .CO(n2670));
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n2668), .O(n119[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 equal_43_i9_2_lut (.I0(\state[0]_adj_1 ), .I1(state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(77[27:43])
    defparam equal_43_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY sub_39_add_2_7 (.CI(n2668), .I0(counter[5]), .I1(VCC_net), 
            .CO(n2669));
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n2667), .O(n119[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_6 (.CI(n2667), .I0(counter[4]), .I1(VCC_net), 
            .CO(n2668));
    SB_LUT4 i1964_4_lut (.I0(n10_adj_384), .I1(n10_adj_377), .I2(\state_7__N_289[3] ), 
            .I3(enable), .O(n2972));   // verilog/i2c_controller.v(92[4] 171[11])
    defparam i1964_4_lut.LUT_INIT = 16'h7073;
    SB_LUT4 i1_4_lut_adj_9 (.I0(state[1]), .I1(n7), .I2(n2972), .I3(\state[0]_adj_1 ), 
            .O(n2819));   // verilog/i2c_controller.v(92[4] 171[11])
    defparam i1_4_lut_adj_9.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_3_lut_adj_10 (.I0(enable), .I1(n47), .I2(\state_7__N_273[0] ), 
            .I3(GND_net), .O(n1766));
    defparam i1_2_lut_3_lut_adj_10.LUT_INIT = 16'heaea;
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n1061), .D(n2819), 
            .S(n2927));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 i1998_2_lut (.I0(\state_7__N_289[3] ), .I1(n11_adj_378), .I2(GND_net), 
            .I3(GND_net), .O(n2440));
    defparam i1998_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n2666), .O(n119[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_5 (.CI(n2666), .I0(counter[3]), .I1(VCC_net), 
            .CO(n2667));
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1837), .D(n119[1]), 
            .S(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n2665), .O(n119[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 equal_59_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_3));   // verilog/i2c_controller.v(206[6:23])
    defparam equal_59_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_43_i10_2_lut (.I0(state[2]), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_384));   // verilog/i2c_controller.v(77[27:43])
    defparam equal_43_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i56_3_lut_3_lut (.I0(state[2]), .I1(\state[3] ), .I2(\state[0]_adj_1 ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut_3_lut.LUT_INIT = 16'h3434;
    SB_LUT4 i2013_3_lut_4_lut (.I0(n10_adj_384), .I1(n9), .I2(n2434), 
            .I3(n1061), .O(n2479));
    defparam i2013_3_lut_4_lut.LUT_INIT = 16'h1f00;
    SB_CARRY sub_39_add_2_4 (.CI(n2665), .I0(counter[2]), .I1(VCC_net), 
            .CO(n2666));
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n2664), .O(n119[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_3 (.CI(n2664), .I0(counter[1]), .I1(VCC_net), 
            .CO(n2665));
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n119[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n2664));
    SB_LUT4 equal_57_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_4));   // verilog/i2c_controller.v(206[6:23])
    defparam equal_57_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1860_2_lut_3_lut (.I0(n10_adj_384), .I1(n9), .I2(\state_7__N_289[3] ), 
            .I3(GND_net), .O(n2873));
    defparam i1860_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_adj_11 (.I0(counter[0]), .I1(n15), .I2(GND_net), 
            .I3(GND_net), .O(n1717));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1_2_lut_adj_11.LUT_INIT = 16'heeee;
    SB_LUT4 i469_2_lut (.I0(sda_out_adj_376), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i469_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1536_2_lut_3_lut (.I0(state[2]), .I1(\state[3] ), .I2(\state[0]_adj_1 ), 
            .I3(GND_net), .O(n2414));
    defparam i1536_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 state_7__I_0_138_i11_2_lut_3_lut_4_lut (.I0(\state[0]_adj_1 ), 
            .I1(state[1]), .I2(state[2]), .I3(\state[3] ), .O(n11_adj_381));   // verilog/i2c_controller.v(164[9:15])
    defparam state_7__I_0_138_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_adj_12 (.I0(n15), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n1722));   // verilog/i2c_controller.v(179[12] 215[6])
    defparam i1_2_lut_adj_12.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1499_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n2424));
    defparam i1499_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1480_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i1480_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1849_2_lut_4_lut (.I0(\state[0]_adj_1 ), .I1(n10_adj_384), 
            .I2(n9), .I3(\state_7__N_289[3] ), .O(n1928));   // verilog/i2c_controller.v(91[8] 172[6])
    defparam i1849_2_lut_4_lut.LUT_INIT = 16'h0222;
    
endmodule
