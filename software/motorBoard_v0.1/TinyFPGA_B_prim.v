// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Oct 21 21:26:06 2019
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, LED, USBPU, PIN_1, PIN_2, PIN_3, PIN_4, 
            PIN_5, PIN_6, PIN_7, PIN_8, PIN_9, PIN_10, PIN_11, 
            PIN_12, PIN_13, PIN_14, PIN_15, PIN_16, PIN_17, PIN_18, 
            PIN_19, PIN_20, PIN_21, PIN_22, PIN_23, PIN_24) /* synthesis syn_preserve=0, syn_noprune=0, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output LED;   // verilog/TinyFPGA_B.v(4[10:13])
    output USBPU;   // verilog/TinyFPGA_B.v(5[10:15])
    input PIN_1 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(6[9:14])
    input PIN_2 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(7[9:14])
    inout PIN_3 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(8[9:14])
    inout PIN_4 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(9[9:14])
    inout PIN_5 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    input PIN_6 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    input PIN_7 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    input PIN_8 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(13[9:14])
    input PIN_9 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(14[9:14])
    input PIN_10 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(15[9:15])
    input PIN_11 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(16[9:15])
    input PIN_12 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(17[9:15])
    input PIN_13 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(18[9:15])
    input PIN_14 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(19[9:15])
    input PIN_15 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(20[9:15])
    input PIN_16 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(21[9:15])
    input PIN_17 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:15])
    input PIN_18 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(23[9:15])
    output PIN_19 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(24[9:15])
    output PIN_20 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(25[9:15])
    output PIN_21 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(26[9:15])
    output PIN_22 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(27[9:15])
    output PIN_23 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(28[9:15])
    output PIN_24 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(29[9:15])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, n46, PIN_19_c_5, PIN_20_c_4, PIN_21_c_3, 
        PIN_22_c_2, PIN_23_c_1, PIN_24_c_0, hall1, hall2, hall3, 
        n45, n44, n43;
    wire [8:0]pwm_count;   // verilog/TinyFPGA_B.v(76[12:21])
    
    wire n11, n22, n405, n42, n434, n249, n404, n403, n62, 
        n436, n338, n402, n401, n400, n334, n9, n8, n47, n48, 
        n49, n50, n432, n337, n333, n4, n399, n398;
    
    VCC i2 (.Y(VCC_net));
    SB_IO hall2_input (.PACKAGE_PIN(PIN_4), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall2)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall2_input.PIN_TYPE = 6'b000001;
    defparam hall2_input.PULLUP = 1'b1;
    defparam hall2_input.NEG_TRIGGER = 1'b0;
    defparam hall2_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall3_input (.PACKAGE_PIN(PIN_5), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_count_97__i0 (.Q(n9), .C(CLK_c), .D(n50));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_LUT4 pwm_count_97_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[4]), 
            .I3(n401), .O(n46)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_97__i8 (.Q(pwm_count[8]), .C(CLK_c), .D(n42));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_DFF pwm_count_97__i7 (.Q(pwm_count[7]), .C(CLK_c), .D(n43));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_CARRY pwm_count_97_add_4_6 (.CI(n401), .I0(GND_net), .I1(pwm_count[4]), 
            .CO(n402));
    SB_IO hall1_input (.PACKAGE_PIN(PIN_3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall3)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i20_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n22));   // verilog/TinyFPGA_B.v(94[18:33])
    defparam i20_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 pwm_count_97_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[3]), 
            .I3(n400), .O(n47)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_IO PIN_19_pad (.PACKAGE_PIN(PIN_19), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_19_c_5));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_19_pad.PIN_TYPE = 6'b011001;
    defparam PIN_19_pad.PULLUP = 1'b0;
    defparam PIN_19_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_19_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1_3_lut (.I0(n11), .I1(n249), .I2(hall3), .I3(GND_net), 
            .O(n337));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    defparam i1_3_lut.LUT_INIT = 16'hecec;
    SB_DFF pwm_count_97__i6 (.Q(pwm_count[6]), .C(CLK_c), .D(n44));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_CARRY pwm_count_97_add_4_5 (.CI(n400), .I0(GND_net), .I1(pwm_count[3]), 
            .CO(n401));
    SB_DFF pwm_count_97__i5 (.Q(pwm_count[5]), .C(CLK_c), .D(n45));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_DFF pwm_count_97__i4 (.Q(pwm_count[4]), .C(CLK_c), .D(n46));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_DFF pwm_count_97__i3 (.Q(pwm_count[3]), .C(CLK_c), .D(n47));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_DFF pwm_count_97__i2 (.Q(pwm_count[2]), .C(CLK_c), .D(n48));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_LUT4 i1_2_lut (.I0(hall3), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n436));   // verilog/TinyFPGA_B.v(91[15] 100[9])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 pwm_count_97_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[2]), 
            .I3(n399), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_97__i1 (.Q(n8), .C(CLK_c), .D(n49));   // verilog/TinyFPGA_B.v(125[17:28])
    SB_DFFESR GATES__i5 (.Q(PIN_20_c_4), .C(CLK_c), .E(VCC_net), .D(n22), 
            .R(n333));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_CARRY pwm_count_97_add_4_4 (.CI(n399), .I0(GND_net), .I1(pwm_count[2]), 
            .CO(n400));
    SB_DFFESR GATES__i4 (.Q(PIN_21_c_3), .C(CLK_c), .E(VCC_net), .D(n436), 
            .R(n338));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_DFFESR GATES__i3 (.Q(PIN_22_c_2), .C(CLK_c), .E(VCC_net), .D(n434), 
            .R(n249));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_DFFESR GATES__i2 (.Q(PIN_23_c_1), .C(CLK_c), .E(VCC_net), .D(n432), 
            .R(n334));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_DFFESR GATES__i1 (.Q(PIN_24_c_0), .C(CLK_c), .E(VCC_net), .D(n62), 
            .R(n337));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_LUT4 pwm_count_97_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n8), 
            .I3(n398), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_count_97_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[6]), 
            .I3(n403), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_97_add_4_3 (.CI(n398), .I0(GND_net), .I1(n8), .CO(n399));
    SB_LUT4 i1_3_lut_adj_1 (.I0(n22), .I1(n333), .I2(hall3), .I3(GND_net), 
            .O(n334));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    defparam i1_3_lut_adj_1.LUT_INIT = 16'hcece;
    SB_CARRY pwm_count_97_add_4_8 (.CI(n403), .I0(GND_net), .I1(pwm_count[6]), 
            .CO(n404));
    SB_LUT4 i1_4_lut (.I0(pwm_count[6]), .I1(pwm_count[3]), .I2(pwm_count[4]), 
            .I3(pwm_count[2]), .O(n4));
    defparam i1_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_adj_2 (.I0(hall1), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n432));   // verilog/TinyFPGA_B.v(97[15] 100[9])
    defparam i1_2_lut_adj_2.LUT_INIT = 16'h4444;
    SB_IO PIN_20_pad (.PACKAGE_PIN(PIN_20), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_20_c_4));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_20_pad.PIN_TYPE = 6'b011001;
    defparam PIN_20_pad.PULLUP = 1'b0;
    defparam PIN_20_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_20_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_21_pad (.PACKAGE_PIN(PIN_21), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_21_c_3));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_21_pad.PIN_TYPE = 6'b011001;
    defparam PIN_21_pad.PULLUP = 1'b0;
    defparam PIN_21_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_21_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_22_pad (.PACKAGE_PIN(PIN_22), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_22_c_2));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_22_pad.PIN_TYPE = 6'b011001;
    defparam PIN_22_pad.PULLUP = 1'b0;
    defparam PIN_22_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_22_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_23_pad (.PACKAGE_PIN(PIN_23), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_23_c_1));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_23_pad.PIN_TYPE = 6'b011001;
    defparam PIN_23_pad.PULLUP = 1'b0;
    defparam PIN_23_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_23_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_24_pad (.PACKAGE_PIN(PIN_24), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_24_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_24_pad.PIN_TYPE = 6'b011001;
    defparam PIN_24_pad.PULLUP = 1'b0;
    defparam PIN_24_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_24_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i2_4_lut (.I0(pwm_count[7]), .I1(pwm_count[8]), .I2(pwm_count[5]), 
            .I3(n4), .O(n249));
    defparam i2_4_lut.LUT_INIT = 16'hfeee;
    SB_LUT4 i1_2_lut_adj_3 (.I0(hall3), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n434));   // verilog/TinyFPGA_B.v(85[15] 100[9])
    defparam i1_2_lut_adj_3.LUT_INIT = 16'h2222;
    SB_LUT4 i9_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n11));   // verilog/TinyFPGA_B.v(85[18:33])
    defparam i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut (.I0(n11), .I1(hall3), .I2(n337), .I3(GND_net), 
            .O(n338));   // verilog/TinyFPGA_B.v(85[18:43])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 i1_2_lut_3_lut_adj_4 (.I0(hall1), .I1(hall3), .I2(n337), .I3(GND_net), 
            .O(n333));   // verilog/TinyFPGA_B.v(88[18:42])
    defparam i1_2_lut_3_lut_adj_4.LUT_INIT = 16'hf2f2;
    GND i1 (.Y(GND_net));
    SB_LUT4 pwm_count_97_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[8]), 
            .I3(n405), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_count_97_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[7]), 
            .I3(n404), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_97_add_4_9 (.CI(n404), .I0(GND_net), .I1(pwm_count[7]), 
            .CO(n405));
    SB_LUT4 pwm_count_97_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n9), 
            .I3(VCC_net), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_97_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n9), 
            .CO(n398));
    SB_LUT4 pwm_count_97_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[5]), 
            .I3(n402), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_97_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_97_add_4_7 (.CI(n402), .I0(GND_net), .I1(pwm_count[5]), 
            .CO(n403));
    SB_DFFESR GATES__i6 (.Q(PIN_19_c_5), .C(CLK_c), .E(VCC_net), .D(n11), 
            .R(n249));   // verilog/TinyFPGA_B.v(78[9] 126[5])
    SB_LUT4 i212_3_lut_4_lut_4_lut (.I0(hall1), .I1(hall3), .I2(hall2), 
            .I3(n11), .O(n62));   // verilog/TinyFPGA_B.v(88[18:42])
    defparam i212_3_lut_4_lut_4_lut.LUT_INIT = 16'h3320;
    
endmodule
