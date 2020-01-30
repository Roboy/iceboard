// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Jan 31 00:07:57 2020
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
    
    wire GND_net, VCC_net, LED_c, n2846, n2900;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n2899, n2898, n2897, n2896, n2845, n2844, n15;
    wire [7:0]data;   // verilog/TinyFPGA_B.v(94[16:20])
    
    wire data_ready, sda_out, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(118[13:26])
    
    wire read;
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(126[17:22])
    
    wire n2830, n1507, n2843, n1723, n2895, n2913, n2894, n72, 
        n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
        n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104, n2951, n2344, n2893, n2892, n2829, n2842, 
        n2828, n2891, n2890, n2827, n1836, n1891, n2841, \ID_READOUT_FSM.state_2__N_62 , 
        n2889, n2888, rw, n2887, n2840, n2886, n2839;
    wire [7:0]state;   // verilog/eeprom.v(23[11:16])
    
    wire n2885, n2838, n1965, n2884, n2837, n2826, n2836, n2883, 
        n2818, n2882, n2881, n2880, n2879, n2822, n2825, n2835, 
        n4, n20, n6, n2878;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n2979, n2821, n1113, enable_slow_N_373, n2935, n2877, n2834;
    wire [7:0]state_7__N_270;
    
    wire n4_adj_389, n13, n4_adj_390, n2876, n2833;
    wire [7:0]state_7__N_286;
    
    wire n12, n805, n2382, n25, n24, n23, n1718, n22, n2820, 
        n2824, n2832, n3120, n2848, n2823, n3109, n18, n2847, 
        n36, n3114, n2414, n1981, n1980, n1979, n1978, n1977, 
        n1976, n3047, n1972, n1971, n1967, n2819, n2831, n14, 
        n13_adj_391, n3119, n3069, n3051, n6_adj_392, n7, n8, 
        n9, n10, n11, n12_adj_393, n13_adj_394, n14_adj_395, n15_adj_396, 
        n16, n17, n18_adj_397, n19, n20_adj_398, n21, n22_adj_399, 
        n23_adj_400, n24_adj_401, n25_adj_402, n26, n110, n111, 
        n112, n113, n114, n115, n116, n117, n118, n119, n120, 
        n121, n122, n123, n124, n125, n126, n127, n128, n129, 
        n130, n131, n132, n133, n134, n135;
    
    VCC i2 (.Y(VCC_net));
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_286[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_8_28 (.CI(n2843), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n2844));
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_410_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n2900), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_8 (.CI(n2823), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n2824));
    SB_LUT4 add_8_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n2842), .O(n78)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_16 (.CI(n2831), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n2832));
    SB_LUT4 blink_counter_410_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n2899), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n2822), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_26 (.CI(n2899), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n2900));
    SB_LUT4 i1054_4_lut (.I0(state_7__N_286[3]), .I1(data[7]), .I2(n2344), 
            .I3(n1723), .O(n1981));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1054_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 blink_counter_410_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24_adj_401), 
            .I3(n2877), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n2898), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_27 (.CI(n2842), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n2843));
    SB_LUT4 add_8_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n2841), .O(n79)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_26_lut.LUT_INIT = 16'hC33C;
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i12_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n2414), .I2(n1836), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n2935));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_CARRY blink_counter_410_add_4_4 (.CI(n2877), .I0(GND_net), .I1(n24_adj_401), 
            .CO(n2878));
    SB_LUT4 i1_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_8_26 (.CI(n2841), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n2842));
    SB_LUT4 blink_counter_410_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25_adj_402), 
            .I3(n2876), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_7 (.CI(n2822), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n2823));
    SB_CARRY blink_counter_410_add_4_25 (.CI(n2898), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n2899));
    SB_LUT4 add_8_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n2840), .O(n80)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n2897), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_3 (.CI(n2876), .I0(GND_net), .I1(n25_adj_402), 
            .CO(n2877));
    SB_CARRY add_8_25 (.CI(n2840), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n2841));
    SB_CARRY blink_counter_410_add_4_24 (.CI(n2897), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n2898));
    SB_LUT4 blink_counter_410_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n2876));
    SB_LUT4 add_8_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n2830), .O(n90)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n2839), .O(n81)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i24_3_lut (.I0(n20), .I1(n6), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n1836));
    defparam i24_3_lut.LUT_INIT = 16'hc5c5;
    SB_CARRY add_8_4 (.CI(n2819), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n2820));
    SB_LUT4 blink_counter_410_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n2896), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_23 (.CI(n2896), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n2897));
    SB_LUT4 i2_3_lut_4_lut (.I0(state[0]), .I1(state[1]), .I2(n2913), 
            .I3(GND_net), .O(n3051));   // verilog/eeprom.v(26[8] 58[4])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0202;
    SB_LUT4 blink_counter_410_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_392), .I3(n2895), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_22 (.CI(n2895), .I0(GND_net), .I1(n6_adj_392), 
            .CO(n2896));
    SB_LUT4 blink_counter_410_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n2894), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1484_2_lut_3_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n15), .I3(n104), .O(n2414));   // verilog/TinyFPGA_B.v(139[9:13])
    defparam i1484_2_lut_3_lut_4_lut.LUT_INIT = 16'hbfff;
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_8_15 (.CI(n2830), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n2831));
    SB_LUT4 i2_4_lut (.I0(n2913), .I1(read), .I2(state[0]), .I3(n1113), 
            .O(n3109));   // verilog/eeprom.v(26[8] 58[4])
    defparam i2_4_lut.LUT_INIT = 16'hffb3;
    SB_CARRY blink_counter_410_add_4_21 (.CI(n2894), .I0(GND_net), .I1(n7), 
            .CO(n2895));
    SB_DFFESR delay_counter_i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n1507), 
            .D(n102), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n1507), 
            .D(n101), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n1507), 
            .D(n100), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n1507), 
            .D(n99), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i1_4_lut (.I0(n2382), .I1(state[1]), .I2(n3051), .I3(n3109), 
            .O(n2951));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1_4_lut.LUT_INIT = 16'ha8a0;
    SB_DFFESR delay_counter_i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n1507), 
            .D(n98), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n1507), 
            .D(n97), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n1507), 
            .D(n96), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_410_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n2893), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n1507), 
            .D(n95), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_410_add_4_20 (.CI(n2893), .I0(GND_net), .I1(n8), 
            .CO(n2894));
    SB_LUT4 blink_counter_410_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n2892), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_19 (.CI(n2892), .I0(GND_net), .I1(n9), 
            .CO(n2893));
    SB_DFF blink_counter_410__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFFESR delay_counter_i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n1507), 
            .D(n94), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_24 (.CI(n2839), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n2840));
    SB_LUT4 i2142_2_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(GND_net), .I3(GND_net), .O(\ID_READOUT_FSM.state_2__N_62 ));   // verilog/TinyFPGA_B.v(129[9:13])
    defparam i2142_2_lut.LUT_INIT = 16'h1111;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 add_8_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n2838), .O(n82)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_23_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i10 (.Q(delay_counter[10]), .C(CLK_c), .E(n1507), 
            .D(n93), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i11 (.Q(delay_counter[11]), .C(CLK_c), .E(n1507), 
            .D(n92), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i2104_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n3120));
    defparam i2104_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i2103_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n3119));
    defparam i2103_4_lut.LUT_INIT = 16'hcf08;
    SB_DFFESR delay_counter_i12 (.Q(delay_counter[12]), .C(CLK_c), .E(n1507), 
            .D(n91), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i625_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n15), .I3(GND_net), .O(n1507));   // verilog/TinyFPGA_B.v(139[9:13])
    defparam i625_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i2105_3_lut (.I0(n3119), .I1(n3120), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i2105_3_lut.LUT_INIT = 16'h3535;
    SB_DFFESR delay_counter_i13 (.Q(delay_counter[13]), .C(CLK_c), .E(n1507), 
            .D(n90), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i6_4_lut (.I0(delay_counter[3]), .I1(delay_counter[7]), .I2(delay_counter[6]), 
            .I3(delay_counter[4]), .O(n14));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 blink_counter_410_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n2891), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n2829), .O(n91)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_18 (.CI(n2891), .I0(GND_net), .I1(n10), 
            .CO(n2892));
    SB_CARRY add_8_23 (.CI(n2838), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n2839));
    SB_LUT4 i5_4_lut (.I0(delay_counter[0]), .I1(delay_counter[5]), .I2(delay_counter[2]), 
            .I3(delay_counter[1]), .O(n13_adj_391));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i530_3_lut (.I0(n13_adj_391), .I1(delay_counter[8]), .I2(n14), 
            .I3(GND_net), .O(n18));
    defparam i530_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 blink_counter_410_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n2890), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_17 (.CI(n2890), .I0(GND_net), .I1(n11), 
            .CO(n2891));
    SB_DFFESR delay_counter_i14 (.Q(delay_counter[14]), .C(CLK_c), .E(n1507), 
            .D(n89), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_14 (.CI(n2829), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n2830));
    SB_DFFESR delay_counter_i15 (.Q(delay_counter[15]), .C(CLK_c), .E(n1507), 
            .D(n88), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 add_8_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n2828), .O(n92)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i16 (.Q(delay_counter[16]), .C(CLK_c), .E(n1507), 
            .D(n87), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 add_8_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n2837), .O(n83)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12_adj_393), .I3(n2889), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_22 (.CI(n2837), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n2838));
    SB_CARRY blink_counter_410_add_4_16 (.CI(n2889), .I0(GND_net), .I1(n12_adj_393), 
            .CO(n2890));
    SB_DFFESR delay_counter_i17 (.Q(delay_counter[17]), .C(CLK_c), .E(n1507), 
            .D(n86), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i3_4_lut (.I0(n18), .I1(delay_counter[9]), .I2(delay_counter[11]), 
            .I3(delay_counter[10]), .O(n3114));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i18 (.Q(delay_counter[18]), .C(CLK_c), .E(n1507), 
            .D(n85), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_410_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13_adj_394), .I3(n2888), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n2836), .O(n84)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_4_lut_adj_9 (.I0(n3114), .I1(delay_counter[12]), .I2(delay_counter[14]), 
            .I3(delay_counter[13]), .O(n3069));
    defparam i3_4_lut_adj_9.LUT_INIT = 16'h8000;
    SB_DFFESR delay_counter_i19 (.Q(delay_counter[19]), .C(CLK_c), .E(n1507), 
            .D(n84), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_13 (.CI(n2828), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n2829));
    SB_CARRY add_8_21 (.CI(n2836), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n2837));
    SB_DFFESR delay_counter_i20 (.Q(delay_counter[20]), .C(CLK_c), .E(n1507), 
            .D(n83), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i21 (.Q(delay_counter[21]), .C(CLK_c), .E(n1507), 
            .D(n82), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 add_8_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n2835), .O(n85)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_20 (.CI(n2835), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n2836));
    SB_CARRY blink_counter_410_add_4_15 (.CI(n2888), .I0(GND_net), .I1(n13_adj_394), 
            .CO(n2889));
    SB_DFFESR delay_counter_i22 (.Q(delay_counter[22]), .C(CLK_c), .E(n1507), 
            .D(n81), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i23 (.Q(delay_counter[23]), .C(CLK_c), .E(n1507), 
            .D(n80), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i526_4_lut (.I0(n3069), .I1(delay_counter[17]), .I2(delay_counter[16]), 
            .I3(delay_counter[15]), .O(n36));
    defparam i526_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 add_8_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n2827), .O(n93)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_395), .I3(n2887), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8_4_lut (.I0(delay_counter[24]), .I1(delay_counter[18]), .I2(n36), 
            .I3(delay_counter[29]), .O(n22));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i24 (.Q(delay_counter[24]), .C(CLK_c), .E(n1507), 
            .D(n79), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i25 (.Q(delay_counter[25]), .C(CLK_c), .E(n1507), 
            .D(n78), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_410_add_4_14 (.CI(n2887), .I0(GND_net), .I1(n14_adj_395), 
            .CO(n2888));
    SB_LUT4 blink_counter_410_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15_adj_396), .I3(n2886), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i26 (.Q(delay_counter[26]), .C(CLK_c), .E(n1507), 
            .D(n77), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_410_add_4_13 (.CI(n2886), .I0(GND_net), .I1(n15_adj_396), 
            .CO(n2887));
    SB_LUT4 blink_counter_410_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n2885), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_12 (.CI(n2885), .I0(GND_net), .I1(n16), 
            .CO(n2886));
    SB_LUT4 i10_4_lut (.I0(delay_counter[28]), .I1(delay_counter[30]), .I2(delay_counter[22]), 
            .I3(delay_counter[26]), .O(n24));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[20]), .I1(delay_counter[25]), .I2(delay_counter[21]), 
            .I3(delay_counter[19]), .O(n23));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i27 (.Q(delay_counter[27]), .C(CLK_c), .E(n1507), 
            .D(n76), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i11_3_lut (.I0(delay_counter[23]), .I1(n22), .I2(delay_counter[27]), 
            .I3(GND_net), .O(n25));
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1422_4_lut (.I0(n25), .I1(delay_counter[31]), .I2(n23), .I3(n24), 
            .O(n104));   // verilog/TinyFPGA_B.v(142[16:38])
    defparam i1422_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i2171_4_lut_4_lut (.I0(n20), .I1(n6), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(n2414), .O(n3047));
    defparam i2171_4_lut_4_lut.LUT_INIT = 16'h3530;
    SB_DFFESR delay_counter_i28 (.Q(delay_counter[28]), .C(CLK_c), .E(n1507), 
            .D(n75), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 blink_counter_410_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n2884), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_11 (.CI(n2884), .I0(GND_net), .I1(n17), 
            .CO(n2885));
    SB_LUT4 i4_2_lut (.I0(data[4]), .I1(data[6]), .I2(GND_net), .I3(GND_net), 
            .O(n12));   // verilog/TinyFPGA_B.v(140[14:25])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 blink_counter_410_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18_adj_397), .I3(n2883), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n2834), .O(n86)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_19 (.CI(n2834), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n2835));
    SB_CARRY blink_counter_410_add_4_10 (.CI(n2883), .I0(GND_net), .I1(n18_adj_397), 
            .CO(n2884));
    SB_DFFESR delay_counter_i29 (.Q(delay_counter[29]), .C(CLK_c), .E(n1507), 
            .D(n74), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY add_8_12 (.CI(n2827), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n2828));
    SB_LUT4 add_8_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n2818), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n2882), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n2848), .O(n72)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_10 (.I0(data[0]), .I1(data[1]), .I2(data[3]), 
            .I3(data[2]), .O(n13));   // verilog/TinyFPGA_B.v(140[14:25])
    defparam i5_4_lut_adj_10.LUT_INIT = 16'hfffe;
    SB_LUT4 add_8_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n2833), .O(n87)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n2818));
    SB_CARRY add_8_18 (.CI(n2833), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n2834));
    SB_LUT4 add_8_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n2847), .O(n73)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_32_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i30 (.Q(delay_counter[30]), .C(CLK_c), .E(n1507), 
            .D(n73), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i31 (.Q(delay_counter[31]), .C(CLK_c), .E(n1507), 
            .D(n72), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFFESR delay_counter_i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n1507), 
            .D(n103), .R(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFF read_26 (.Q(read), .C(CLK_c), .D(\ID_READOUT_FSM.state_2__N_62 ));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_LUT4 i7_4_lut (.I0(n13), .I1(data[7]), .I2(n12), .I3(data[5]), 
            .O(n15));   // verilog/TinyFPGA_B.v(140[14:25])
    defparam i7_4_lut.LUT_INIT = 16'hfffb;
    SB_CARRY blink_counter_410_add_4_9 (.CI(n2882), .I0(GND_net), .I1(n19), 
            .CO(n2883));
    SB_LUT4 blink_counter_410_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20_adj_398), 
            .I3(n2881), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i995_2_lut (.I0(n1507), .I1(n104), .I2(GND_net), .I3(GND_net), 
            .O(n1891));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    defparam i995_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_8_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n2821), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_3 (.CI(n2818), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n2819));
    SB_CARRY add_8_32 (.CI(n2847), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n2848));
    SB_DFF blink_counter_410__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 add_8_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n2826), .O(n94)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2007_2_lut_3_lut (.I0(n104), .I1(n15), .I2(\ID_READOUT_FSM.state [1]), 
            .I3(GND_net), .O(n20));   // verilog/TinyFPGA_B.v(140[11] 146[14])
    defparam i2007_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_DFF blink_counter_410__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    GND i1 (.Y(GND_net));
    SB_DFF \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(CLK_c), 
           .D(n3047));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_DFF \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(CLK_c), 
           .D(n2935));   // verilog/TinyFPGA_B.v(125[12] 149[8])
    SB_CARRY blink_counter_410_add_4_8 (.CI(n2881), .I0(GND_net), .I1(n20_adj_398), 
            .CO(n2882));
    SB_DFF blink_counter_410__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i20 (.Q(n6_adj_392), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i14 (.Q(n12_adj_393), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i13 (.Q(n13_adj_394), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i12 (.Q(n14_adj_395), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i11 (.Q(n15_adj_396), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i8 (.Q(n18_adj_397), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i6 (.Q(n20_adj_398), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i4 (.Q(n22_adj_399), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i3 (.Q(n23_adj_400), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i2 (.Q(n24_adj_401), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_410__i1 (.Q(n25_adj_402), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_410_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n2880), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n2846), .O(n74)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_31 (.CI(n2846), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n2847));
    SB_CARRY add_8_11 (.CI(n2826), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n2827));
    SB_CARRY blink_counter_410_add_4_7 (.CI(n2880), .I0(GND_net), .I1(n21), 
            .CO(n2881));
    SB_LUT4 add_8_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n2845), .O(n75)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_30 (.CI(n2845), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n2846));
    SB_LUT4 add_8_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n2832), .O(n88)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1038_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(state_7__N_270[0]), 
            .I3(enable_slow_N_373), .O(n1965));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1038_4_lut.LUT_INIT = 16'haaca;
    SB_LUT4 i1_4_lut_adj_11 (.I0(enable_slow_N_373), .I1(data_ready), .I2(state[1]), 
            .I3(state[0]), .O(n2979));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1_4_lut_adj_11.LUT_INIT = 16'hccd0;
    SB_LUT4 blink_counter_410_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22_adj_399), 
            .I3(n2879), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_410_add_4_6 (.CI(n2879), .I0(GND_net), .I1(n22_adj_399), 
            .CO(n2880));
    SB_LUT4 add_8_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n2825), .O(n95)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_6 (.CI(n2821), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n2822));
    SB_CARRY add_8_10 (.CI(n2825), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n2826));
    SB_LUT4 add_8_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n2824), .O(n96)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_410_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23_adj_400), 
            .I3(n2878), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_410_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_17 (.CI(n2832), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n2833));
    SB_CARRY blink_counter_410_add_4_5 (.CI(n2878), .I0(GND_net), .I1(n23_adj_400), 
            .CO(n2879));
    SB_LUT4 i1040_4_lut (.I0(rw), .I1(state[0]), .I2(state[1]), .I3(n805), 
            .O(n1967));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1040_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 add_8_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n2820), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_5 (.CI(n2820), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n2821));
    SB_LUT4 add_8_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n2819), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n2844), .O(n76)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_9 (.CI(n2824), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n2825));
    SB_LUT4 add_8_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n2823), .O(n97)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_8_29 (.CI(n2844), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n2845));
    SB_LUT4 add_8_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n2831), .O(n89)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_8_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n2843), .O(n77)) /* synthesis syn_instantiated=1 */ ;
    defparam add_8_28_lut.LUT_INIT = 16'hC33C;
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
    SB_LUT4 i1044_4_lut (.I0(state_7__N_286[3]), .I1(data[1]), .I2(n4_adj_390), 
            .I3(n1723), .O(n1971));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1044_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1045_4_lut (.I0(state_7__N_286[3]), .I1(data[2]), .I2(n4), 
            .I3(n1718), .O(n1972));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1045_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1049_4_lut (.I0(state_7__N_286[3]), .I1(data[3]), .I2(n4), 
            .I3(n1723), .O(n1976));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1049_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1050_4_lut (.I0(state_7__N_286[3]), .I1(data[0]), .I2(n4_adj_390), 
            .I3(n1718), .O(n1977));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1050_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1051_4_lut (.I0(state_7__N_286[3]), .I1(data[4]), .I2(n4_adj_389), 
            .I3(n1718), .O(n1978));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1051_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1052_4_lut (.I0(state_7__N_286[3]), .I1(data[5]), .I2(n4_adj_389), 
            .I3(n1723), .O(n1979));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1052_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1053_4_lut (.I0(state_7__N_286[3]), .I1(data[6]), .I2(n2344), 
            .I3(n1718), .O(n1980));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1053_4_lut.LUT_INIT = 16'hccac;
    EEPROM eeprom (.GND_net(GND_net), .\state[0] (state[0]), .\state[1] (state[1]), 
           .n2382(n2382), .n1113(n1113), .read(read), .CLK_c(CLK_c), 
           .n2913(n2913), .enable_slow_N_373(enable_slow_N_373), .n2951(n2951), 
           .n804({n805}), .n1967(n1967), .rw(rw), .n2979(n2979), .data_ready(data_ready), 
           .scl_enable(scl_enable), .VCC_net(VCC_net), .n4(n4_adj_390), 
           .\state_7__N_270[0] (state_7__N_270[0]), .sda_enable(sda_enable), 
           .\state_7__N_286[3] (state_7__N_286[3]), .\saved_addr[0] (saved_addr[0]), 
           .scl(scl), .n1981(n1981), .data({data}), .n1980(n1980), .n1979(n1979), 
           .n1978(n1978), .n1977(n1977), .n1976(n1976), .n1972(n1972), 
           .n1971(n1971), .n1965(n1965), .sda_out(sda_out), .n4_adj_3(n4), 
           .n4_adj_4(n4_adj_389), .n1718(n1718), .n1723(n1723), .n2344(n2344)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(151[12] 162[8])
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, \state[0] , \state[1] , n2382, n1113, read, 
            CLK_c, n2913, enable_slow_N_373, n2951, n804, n1967, 
            rw, n2979, data_ready, scl_enable, VCC_net, n4, \state_7__N_270[0] , 
            sda_enable, \state_7__N_286[3] , \saved_addr[0] , scl, n1981, 
            data, n1980, n1979, n1978, n1977, n1976, n1972, n1971, 
            n1965, sda_out, n4_adj_3, n4_adj_4, n1718, n1723, n2344) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    output \state[0] ;
    output \state[1] ;
    output n2382;
    output n1113;
    input read;
    input CLK_c;
    output n2913;
    output enable_slow_N_373;
    input n2951;
    output [0:0]n804;
    input n1967;
    output rw;
    input n2979;
    output data_ready;
    output scl_enable;
    input VCC_net;
    output n4;
    output \state_7__N_270[0] ;
    output sda_enable;
    input \state_7__N_286[3] ;
    output \saved_addr[0] ;
    output scl;
    input n1981;
    output [7:0]data;
    input n1980;
    input n1979;
    input n1978;
    input n1977;
    input n1976;
    input n1972;
    input n1971;
    input n1965;
    output sda_out;
    output n4_adj_3;
    output n4_adj_4;
    output n1718;
    output n1723;
    output n2344;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n2857;
    wire [15:0]delay_counter;   // verilog/eeprom.v(24[12:25])
    wire [15:0]n732;
    
    wire n2858;
    wire [15:0]delay_counter_15__N_172;
    
    wire n2856, n9, n10, n1796, n1929, n1850, n3142, n26, n1704;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n14, n25, n27, n26_adj_385, n28, n2870, n2869, n2868, 
        n2867, n2866, n2865, n2864, n2863, n2862, n2861, n2860, 
        n2859, enable;
    
    SB_CARRY add_186_4 (.CI(n2857), .I0(delay_counter[2]), .I1(n732[1]), 
            .CO(n2858));
    SB_LUT4 add_186_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n732[1]), 
            .I3(n2856), .O(delay_counter_15__N_172[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_3 (.CI(n2856), .I0(delay_counter[1]), .I1(n732[1]), 
            .CO(n2857));
    SB_LUT4 i1492_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n9), 
            .I3(n10), .O(n2382));   // verilog/eeprom.v(51[5:9])
    defparam i1492_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i546_3_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n9), 
            .I3(n10), .O(n1113));   // verilog/eeprom.v(51[5:9])
    defparam i546_3_lut_3_lut_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_3_lut (.I0(read), .I1(\state[1] ), .I2(\state[0] ), .I3(GND_net), 
            .O(n1796));
    defparam i1_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 add_186_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n732[1]), 
            .I3(GND_net), .O(delay_counter_15__N_172[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n732[1]), 
            .CO(n2856));
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[1]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[2]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[3]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[4]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[5]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i2150_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n9), 
            .I3(n10), .O(n1850));   // verilog/eeprom.v(26[8] 58[4])
    defparam i2150_2_lut_3_lut_4_lut.LUT_INIT = 16'h5551;
    SB_DFFE state__i0 (.Q(\state[0] ), .C(CLK_c), .E(n3142), .D(n1850));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[6]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[7]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[8]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[9]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[10]), .S(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[11]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i3_4_lut (.I0(n26), .I1(n1704), .I2(state[0]), .I3(state[3]), 
            .O(n2913));   // verilog/eeprom.v(42[12:28])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[12]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[13]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i28_3_lut (.I0(read), .I1(n2913), .I2(\state[0] ), .I3(GND_net), 
            .O(n14));
    defparam i28_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[14]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i2126_4_lut (.I0(enable_slow_N_373), .I1(n14), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n3142));
    defparam i2126_4_lut.LUT_INIT = 16'h0c5c;
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[15]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i9_4_lut (.I0(delay_counter[4]), .I1(delay_counter[9]), .I2(delay_counter[13]), 
            .I3(delay_counter[0]), .O(n25));   // verilog/eeprom.v(42[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n1796), 
            .D(delay_counter_15__N_172[0]), .R(n1929));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26_adj_385), .I3(n28), 
            .O(n1704));   // verilog/eeprom.v(42[12:28])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1002_2_lut (.I0(n1796), .I1(\state[0] ), .I2(GND_net), .I3(GND_net), 
            .O(n1929));   // verilog/eeprom.v(26[8] 58[4])
    defparam i1002_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_186_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n732[1]), 
            .I3(n2870), .O(delay_counter_15__N_172[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_186_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n732[1]), 
            .I3(n2869), .O(delay_counter_15__N_172[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_16 (.CI(n2869), .I0(delay_counter[14]), .I1(n732[1]), 
            .CO(n2870));
    SB_LUT4 add_186_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n732[1]), 
            .I3(n2868), .O(delay_counter_15__N_172[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_15 (.CI(n2868), .I0(delay_counter[13]), .I1(n732[1]), 
            .CO(n2869));
    SB_LUT4 add_186_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n732[1]), 
            .I3(n2867), .O(delay_counter_15__N_172[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_14 (.CI(n2867), .I0(delay_counter[12]), .I1(n732[1]), 
            .CO(n2868));
    SB_LUT4 add_186_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n732[1]), 
            .I3(n2866), .O(delay_counter_15__N_172[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_13 (.CI(n2866), .I0(delay_counter[11]), .I1(n732[1]), 
            .CO(n2867));
    SB_LUT4 add_186_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(n732[1]), 
            .I3(n2865), .O(delay_counter_15__N_172[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_12 (.CI(n2865), .I0(delay_counter[10]), .I1(n732[1]), 
            .CO(n2866));
    SB_LUT4 add_186_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(n732[1]), 
            .I3(n2864), .O(delay_counter_15__N_172[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_11 (.CI(n2864), .I0(delay_counter[9]), .I1(n732[1]), 
            .CO(n2865));
    SB_LUT4 i2156_2_lut_3_lut_4_lut (.I0(n1704), .I1(state[1]), .I2(state[0]), 
            .I3(n10), .O(n732[1]));   // verilog/eeprom.v(46[18] 48[12])
    defparam i2156_2_lut_3_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 add_186_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(n732[1]), 
            .I3(n2863), .O(delay_counter_15__N_172[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_10 (.CI(n2863), .I0(delay_counter[8]), .I1(n732[1]), 
            .CO(n2864));
    SB_LUT4 add_186_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(n732[1]), 
            .I3(n2862), .O(delay_counter_15__N_172[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_9 (.CI(n2862), .I0(delay_counter[7]), .I1(n732[1]), 
            .CO(n2863));
    SB_LUT4 add_186_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(n732[1]), 
            .I3(n2861), .O(delay_counter_15__N_172[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_8 (.CI(n2861), .I0(delay_counter[6]), .I1(n732[1]), 
            .CO(n2862));
    SB_DFF state__i1 (.Q(\state[1] ), .C(CLK_c), .D(n2951));   // verilog/eeprom.v(26[8] 58[4])
    SB_LUT4 add_186_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n732[1]), 
            .I3(n2860), .O(delay_counter_15__N_172[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_7 (.CI(n2860), .I0(delay_counter[5]), .I1(n732[1]), 
            .CO(n2861));
    SB_LUT4 add_186_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(n732[1]), 
            .I3(n2859), .O(delay_counter_15__N_172[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_217_Mux_0_i1_4_lut (.I0(read), .I1(n1704), .I2(\state[0] ), 
            .I3(enable_slow_N_373), .O(n804[0]));   // verilog/eeprom.v(29[3] 57[10])
    defparam mux_217_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF rw_43 (.Q(rw), .C(CLK_c), .D(n1967));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFFSR enable_39 (.Q(enable), .C(CLK_c), .D(n804[0]), .R(\state[1] ));   // verilog/eeprom.v(26[8] 58[4])
    SB_DFF data_ready_42 (.Q(data_ready), .C(CLK_c), .D(n2979));   // verilog/eeprom.v(26[8] 58[4])
    SB_CARRY add_186_6 (.CI(n2859), .I0(delay_counter[4]), .I1(n732[1]), 
            .CO(n2860));
    SB_LUT4 i12_4_lut (.I0(delay_counter[6]), .I1(delay_counter[10]), .I2(delay_counter[12]), 
            .I3(delay_counter[8]), .O(n28));   // verilog/eeprom.v(42[12:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(delay_counter[11]), .I1(delay_counter[2]), .I2(delay_counter[7]), 
            .I3(delay_counter[5]), .O(n26_adj_385));   // verilog/eeprom.v(42[12:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(delay_counter[15]), .I1(delay_counter[3]), .I2(delay_counter[14]), 
            .I3(delay_counter[1]), .O(n27));   // verilog/eeprom.v(42[12:28])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_186_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n732[1]), 
            .I3(n2858), .O(delay_counter_15__N_172[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_186_5 (.CI(n2858), .I0(delay_counter[3]), .I1(n732[1]), 
            .CO(n2859));
    SB_LUT4 add_186_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n732[1]), 
            .I3(n2857), .O(delay_counter_15__N_172[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_186_4_lut.LUT_INIT = 16'hC33C;
    i2c_controller i2c (.\state[0] (state[0]), .\state[1] (state[1]), .\state[3] (state[3]), 
            .enable_slow_N_373(enable_slow_N_373), .GND_net(GND_net), .CLK_c(CLK_c), 
            .scl_enable(scl_enable), .VCC_net(VCC_net), .n4(n4), .n26(n26), 
            .\state_7__N_270[0] (\state_7__N_270[0] ), .enable(enable), 
            .n9(n9), .n10(n10), .sda_enable(sda_enable), .\state_7__N_286[3] (\state_7__N_286[3] ), 
            .\saved_addr[0] (\saved_addr[0] ), .scl(scl), .n1981(n1981), 
            .data({data}), .n1980(n1980), .n1979(n1979), .n1978(n1978), 
            .n1977(n1977), .n1976(n1976), .n1972(n1972), .n1971(n1971), 
            .n1965(n1965), .sda_out(sda_out), .n4_adj_1(n4_adj_3), .n4_adj_2(n4_adj_4), 
            .n1718(n1718), .n1723(n1723), .n2344(n2344)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(60[16] 74[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\state[0] , \state[1] , \state[3] , enable_slow_N_373, 
            GND_net, CLK_c, scl_enable, VCC_net, n4, n26, \state_7__N_270[0] , 
            enable, n9, n10, sda_enable, \state_7__N_286[3] , \saved_addr[0] , 
            scl, n1981, data, n1980, n1979, n1978, n1977, n1976, 
            n1972, n1971, n1965, sda_out, n4_adj_1, n4_adj_2, n1718, 
            n1723, n2344) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \state[0] ;
    output \state[1] ;
    output \state[3] ;
    output enable_slow_N_373;
    input GND_net;
    input CLK_c;
    output scl_enable;
    input VCC_net;
    output n4;
    output n26;
    output \state_7__N_270[0] ;
    input enable;
    output n9;
    output n10;
    output sda_enable;
    input \state_7__N_286[3] ;
    output \saved_addr[0] ;
    output scl;
    input n1981;
    output [7:0]data;
    input n1980;
    input n1979;
    input n1978;
    input n1977;
    input n1976;
    input n1972;
    input n1971;
    input n1965;
    output sda_out;
    output n4_adj_1;
    output n4_adj_2;
    output n1718;
    output n1723;
    output n2344;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n3123;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n11, n3136, n7, i2c_clk_N_359, n37, n33, n39, scl_enable_N_360;
    wire [7:0]n119;
    
    wire n1757;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n1924, n2855, n11_adj_374, n3039, n1928, enable_slow_N_372, 
        n1761;
    wire [5:0]n29;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n2875, n2874, n1153, n2854, n1930, n2873, n1486, n2967, 
        sda_out_adj_375, n12, n2872, n2342, n1063, n1923, n2853, 
        n1056, n2871, n1172, n9_adj_377, n3050, n11_adj_378, n7_adj_379, 
        n2852, n2851, n2850, n2849, n10_adj_380, n15, n2352, n10_adj_381, 
        n2358, n2366, n2388, n3003, n3082, n1734, n3130, n3133, 
        n13;
    
    SB_LUT4 i2121_4_lut (.I0(n3123), .I1(state[2]), .I2(\state[0] ), .I3(n11), 
            .O(n3136));   // verilog/i2c_controller.v(181[4] 214[11])
    defparam i2121_4_lut.LUT_INIT = 16'h0322;
    SB_LUT4 equal_40_i11_2_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(state[2]), .I3(\state[3] ), .O(enable_slow_N_373));   // verilog/i2c_controller.v(44[32:47])
    defparam equal_40_i11_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut (.I0(state[2]), .I1(\state[3] ), .I2(GND_net), .I3(GND_net), 
            .O(n7));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFF i2c_clk_121 (.Q(i2c_clk), .C(CLK_c), .D(i2c_clk_N_359));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_LUT4 i1_3_lut (.I0(\state[1] ), .I1(n37), .I2(n33), .I3(GND_net), 
            .O(n39));
    defparam i1_3_lut.LUT_INIT = 16'hdcdc;
    SB_DFFN i2c_scl_enable_123 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_360));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1757), .D(n119[4]), 
            .R(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1757), .D(n119[5]), 
            .R(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1757), .D(n119[6]), 
            .R(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i1467_3_lut_4_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(state[2]), 
            .I3(\state[3] ), .O(scl_enable_N_360));   // verilog/i2c_controller.v(77[27:43])
    defparam i1467_3_lut_4_lut_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n2855), .O(n119[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 equal_59_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_59_i4_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1757), .D(n119[7]), 
            .R(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_139_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(state[2]), .I3(\state[3] ), .O(n11_adj_374));   // verilog/i2c_controller.v(117[5:13])
    defparam state_7__I_0_139_i11_2_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i2008_2_lut_4_lut (.I0(\state[0] ), .I1(state[2]), .I2(\state[3] ), 
            .I3(n3039), .O(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i2008_2_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i1_2_lut_adj_3 (.I0(state[2]), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n26));
    defparam i1_2_lut_adj_3.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_4 (.I0(\state[1] ), .I1(n33), .I2(n37), .I3(GND_net), 
            .O(n1928));
    defparam i1_3_lut_adj_4.LUT_INIT = 16'h5454;
    SB_DFFE enable_slow_120 (.Q(\state_7__N_270[0] ), .C(CLK_c), .E(n1761), 
            .D(enable_slow_N_372));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_LUT4 counter2_411_412_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[5]), 
            .I3(n2875), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_411_412_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[4]), 
            .I3(n2874), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2152_4_lut_4_lut (.I0(state[2]), .I1(n11), .I2(\state[1] ), 
            .I3(n39), .O(n1153));
    defparam i2152_4_lut_4_lut.LUT_INIT = 16'hef00;
    SB_CARRY counter2_411_412_add_4_6 (.CI(n2874), .I0(GND_net), .I1(counter2[4]), 
            .CO(n2875));
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n2854), .O(n119[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(enable), .I1(\state_7__N_270[0] ), 
            .I2(n9), .I3(n10), .O(n1761));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'heeea;
    SB_DFFSR counter2_411_412__i1 (.Q(counter2[0]), .C(CLK_c), .D(n29[0]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 counter2_411_412_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[3]), 
            .I3(n2873), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_8 (.CI(n2854), .I0(counter[6]), .I1(VCC_net), 
            .CO(n2855));
    SB_CARRY counter2_411_412_add_4_5 (.CI(n2873), .I0(GND_net), .I1(counter2[3]), 
            .CO(n2874));
    SB_DFFNESS write_enable_131 (.Q(sda_enable), .C(i2c_clk), .E(n1153), 
            .D(n1486), .S(n1928));   // verilog/i2c_controller.v(180[12] 215[6])
    SB_DFFNE sda_out_132 (.Q(sda_out_adj_375), .C(i2c_clk), .E(n2967), 
            .D(n3136));   // verilog/i2c_controller.v(180[12] 215[6])
    SB_LUT4 i5_4_lut (.I0(counter[0]), .I1(counter[3]), .I2(counter[6]), 
            .I3(counter[5]), .O(n12));   // verilog/i2c_controller.v(110[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1757), .D(n119[0]), 
            .S(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 counter2_411_412_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n2872), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(n1063), .D(n2342), 
            .S(n1923));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n2853), .O(n119[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut (.I0(counter[4]), .I1(n12), .I2(counter[7]), .I3(n4), 
            .O(n1056));   // verilog/i2c_controller.v(110[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY counter2_411_412_add_4_4 (.CI(n2872), .I0(GND_net), .I1(counter2[2]), 
            .CO(n2873));
    SB_LUT4 counter2_411_412_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n2871), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_411_412_add_4_3 (.CI(n2871), .I0(GND_net), .I1(counter2[1]), 
            .CO(n2872));
    SB_LUT4 counter2_411_412_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_411_412_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_7 (.CI(n2853), .I0(counter[5]), .I1(VCC_net), 
            .CO(n2854));
    SB_LUT4 i17_4_lut (.I0(n1056), .I1(n3039), .I2(n1172), .I3(n37), 
            .O(n1757));
    defparam i17_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i2181_4_lut (.I0(n9_adj_377), .I1(state[2]), .I2(n1063), .I3(\state[3] ), 
            .O(n3050));
    defparam i2181_4_lut.LUT_INIT = 16'h1050;
    SB_LUT4 i2_4_lut (.I0(n11_adj_378), .I1(n11_adj_374), .I2(\state_7__N_286[3] ), 
            .I3(\saved_addr[0] ), .O(n7_adj_379));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i2_4_lut.LUT_INIT = 16'h5755;
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n2852), .O(n119[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2024_2_lut_3_lut (.I0(n9_adj_377), .I1(n10), .I2(\state_7__N_286[3] ), 
            .I3(GND_net), .O(n3039));   // verilog/i2c_controller.v(77[27:43])
    defparam i2024_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1757), .D(n119[2]), 
            .S(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_CARRY counter2_411_412_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n2871));
    SB_CARRY sub_39_add_2_6 (.CI(n2852), .I0(counter[4]), .I1(VCC_net), 
            .CO(n2853));
    SB_LUT4 equal_42_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_377));   // verilog/i2c_controller.v(77[27:43])
    defparam equal_42_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n2851), .O(n119[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_5 (.CI(n2851), .I0(counter[3]), .I1(VCC_net), 
            .CO(n2852));
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n2850), .O(n119[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_4 (.CI(n2850), .I0(counter[2]), .I1(VCC_net), 
            .CO(n2851));
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n2849), .O(n119[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_3 (.CI(n2849), .I0(counter[1]), .I1(VCC_net), 
            .CO(n2850));
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n119[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n2849));
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[0] ), .I1(state[2]), .I2(\state[3] ), 
            .I3(GND_net), .O(n1172));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[4]), .O(n10_adj_380));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n1063), .D(n7_adj_379), 
            .S(n3050));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[3] ), .I1(state[2]), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n37));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h1154;
    SB_LUT4 i5_3_lut (.I0(counter2[1]), .I1(n10_adj_380), .I2(counter2[0]), 
            .I3(GND_net), .O(n1930));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1404_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i1404_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i56_3_lut_3_lut (.I0(state[2]), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut_3_lut.LUT_INIT = 16'h3434;
    SB_LUT4 state_7__I_0_143_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(state[2]), .I3(\state[3] ), .O(n15));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_143_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n1981));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i1_2_lut_adj_5 (.I0(i2c_clk), .I1(n1930), .I2(GND_net), .I3(GND_net), 
            .O(i2c_clk_N_359));
    defparam i1_2_lut_adj_5.LUT_INIT = 16'h6666;
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n1980));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n1979));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n1978));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n1977));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n1976));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 equal_40_i10_2_lut (.I0(state[2]), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(44[32:47])
    defparam equal_40_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1427_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n2352));
    defparam i1427_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1400_2_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n9));
    defparam i1400_2_lut.LUT_INIT = 16'heeee;
    SB_DFFSR counter2_411_412__i6 (.Q(counter2[5]), .C(CLK_c), .D(n29[5]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_411_412__i5 (.Q(counter2[4]), .C(CLK_c), .D(n29[4]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_411_412__i4 (.Q(counter2[3]), .C(CLK_c), .D(n29[3]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_411_412__i3 (.Q(counter2[2]), .C(CLK_c), .D(n29[2]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_411_412__i2 (.Q(counter2[1]), .C(CLK_c), .D(n29[1]), 
            .R(n1930));   // verilog/i2c_controller.v(69[20:35])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n1972));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_138_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(state[2]), .I3(\state[3] ), .O(n11_adj_378));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_138_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n1971));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_142_i10_2_lut (.I0(state[2]), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_381));   // verilog/i2c_controller.v(143[5:14])
    defparam state_7__I_0_142_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i22_3_lut_3_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n11));
    defparam i22_3_lut_3_lut.LUT_INIT = 16'h1a1a;
    SB_LUT4 i1433_4_lut (.I0(\state[3] ), .I1(n15), .I2(n9_adj_377), .I3(state[2]), 
            .O(n2358));
    defparam i1433_4_lut.LUT_INIT = 16'hccc4;
    SB_DFFESS state_i0_i2 (.Q(state[2]), .C(i2c_clk), .E(n1063), .D(n2366), 
            .S(n2388));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n1063), .D(n3003), 
            .S(n3082));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1965));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1757), .D(n119[3]), 
            .R(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i996_4_lut (.I0(n1063), .I1(\state_7__N_270[0] ), .I2(n2358), 
            .I3(enable_slow_N_373), .O(n1923));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i996_4_lut.LUT_INIT = 16'h0a8a;
    SB_LUT4 i2154_2_lut_3_lut (.I0(state[2]), .I1(n11), .I2(\state[0] ), 
            .I3(GND_net), .O(n1486));
    defparam i2154_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1_4_lut (.I0(n1056), .I1(n11_adj_378), .I2(n10_adj_381), 
            .I3(\state[0] ), .O(n1734));
    defparam i1_4_lut.LUT_INIT = 16'h222a;
    SB_LUT4 i471_2_lut (.I0(sda_out_adj_375), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i471_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2129_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n3130));   // verilog/i2c_controller.v(198[28:35])
    defparam i2129_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i2162_4_lut (.I0(\state[3] ), .I1(n1734), .I2(state[2]), .I3(n2352), 
            .O(n1063));
    defparam i2162_4_lut.LUT_INIT = 16'h1113;
    SB_LUT4 i2132_4_lut (.I0(n10), .I1(n10_adj_381), .I2(\state_7__N_286[3] ), 
            .I3(enable), .O(n3133));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i2132_4_lut.LUT_INIT = 16'h7073;
    SB_LUT4 i1_4_lut_adj_6 (.I0(\state[1] ), .I1(n7), .I2(n3133), .I3(\state[0] ), 
            .O(n3003));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i1_4_lut_adj_6.LUT_INIT = 16'ha088;
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1757), .D(n119[1]), 
            .S(n1924));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i2178_2_lut (.I0(n1063), .I1(n2358), .I2(GND_net), .I3(GND_net), 
            .O(n2388));
    defparam i2178_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2168_2_lut (.I0(\state_7__N_286[3] ), .I1(n11_adj_374), .I2(GND_net), 
            .I3(GND_net), .O(n2366));
    defparam i2168_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i2146_2_lut_3_lut_4_lut (.I0(\state_7__N_270[0] ), .I1(\state[1] ), 
            .I2(\state[0] ), .I3(n10), .O(enable_slow_N_372));   // verilog/i2c_controller.v(58[9] 71[5])
    defparam i2146_2_lut_3_lut_4_lut.LUT_INIT = 16'h5557;
    SB_LUT4 i2148_4_lut (.I0(\state[1] ), .I1(n39), .I2(state[2]), .I3(n13), 
            .O(n2967));
    defparam i2148_4_lut.LUT_INIT = 16'h444c;
    SB_LUT4 i2128_4_lut (.I0(n3130), .I1(\state[1] ), .I2(counter[0]), 
            .I3(counter[2]), .O(n3123));   // verilog/i2c_controller.v(181[4] 214[11])
    defparam i2128_4_lut.LUT_INIT = 16'hc008;
    SB_LUT4 i1_3_lut_3_lut (.I0(\state[0] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n13));
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2165_3_lut_4_lut (.I0(n11_adj_378), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(n10_adj_381), .O(n2342));
    defparam i2165_3_lut_4_lut.LUT_INIT = 16'h5557;
    SB_LUT4 equal_58_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_1));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_58_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_56_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_2));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_56_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_7 (.I0(counter[0]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(n1718));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_7.LUT_INIT = 16'heeee;
    SB_LUT4 i2176_3_lut_4_lut (.I0(state[2]), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(n1063), .O(n3082));
    defparam i2176_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i1_2_lut_adj_8 (.I0(n15), .I1(counter[0]), .I2(GND_net), .I3(GND_net), 
            .O(n1723));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_8.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1419_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n2344));
    defparam i1419_2_lut.LUT_INIT = 16'h8888;
    
endmodule
