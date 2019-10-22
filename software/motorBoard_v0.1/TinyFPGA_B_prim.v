// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Oct 22 23:55:42 2019
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
    
    wire GND_net, VCC_net, PIN_19_c, PIN_20_c, PIN_21_c, PIN_22_c, 
        PIN_23_c, PIN_24_c, hall1, hall2, hall3, n47;
    wire [8:0]pwm_count;   // verilog/TinyFPGA_B.v(115[19:28])
    
    wire n46, n545, n378, n547, n48, n45, n89, n100, n403, 
        n528, n42, n43, n44, n526, n525, n524, n501, n535, 
        n523, n522, n521, n520, n543, n459, n457, n533, n519, 
        n50, n49;
    
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
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall3)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 pwm_count_166_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[4]), 
            .I3(n522), .O(n46)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i182_3_lut (.I0(n89), .I1(n378), .I2(hall3), .I3(GND_net), 
            .O(n457));   // verilog/TinyFPGA_B.v(140[13] 163[7])
    defparam i182_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i232_2_lut (.I0(hall3), .I1(hall1), .I2(GND_net), .I3(GND_net), 
            .O(n403));   // verilog/TinyFPGA_B.v(127[15] 139[9])
    defparam i232_2_lut.LUT_INIT = 16'h4444;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_count_166__i8 (.Q(pwm_count[8]), .C(CLK_c), .D(n42));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_CARRY pwm_count_166_add_4_6 (.CI(n522), .I0(GND_net), .I1(pwm_count[4]), 
            .CO(n523));
    SB_LUT4 pwm_count_166_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[3]), 
            .I3(n521), .O(n47)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_IO hall1_input (.PACKAGE_PIN(PIN_3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY pwm_count_166_add_4_5 (.CI(n521), .I0(GND_net), .I1(pwm_count[3]), 
            .CO(n522));
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_24_pad (.PACKAGE_PIN(PIN_24), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_24_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_24_pad.PIN_TYPE = 6'b011001;
    defparam PIN_24_pad.PULLUP = 1'b0;
    defparam PIN_24_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_24_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_23_pad (.PACKAGE_PIN(PIN_23), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_23_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_23_pad.PIN_TYPE = 6'b011001;
    defparam PIN_23_pad.PULLUP = 1'b0;
    defparam PIN_23_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_23_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_count_166__i7 (.Q(pwm_count[7]), .C(CLK_c), .D(n43));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_IO PIN_22_pad (.PACKAGE_PIN(PIN_22), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_22_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_22_pad.PIN_TYPE = 6'b011001;
    defparam PIN_22_pad.PULLUP = 1'b0;
    defparam PIN_22_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_22_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_21_pad (.PACKAGE_PIN(PIN_21), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_21_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_21_pad.PIN_TYPE = 6'b011001;
    defparam PIN_21_pad.PULLUP = 1'b0;
    defparam PIN_21_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_21_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_20_pad (.PACKAGE_PIN(PIN_20), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_20_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_20_pad.PIN_TYPE = 6'b011001;
    defparam PIN_20_pad.PULLUP = 1'b0;
    defparam PIN_20_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_20_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_19_pad (.PACKAGE_PIN(PIN_19), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_19_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_19_pad.PIN_TYPE = 6'b011001;
    defparam PIN_19_pad.PULLUP = 1'b0;
    defparam PIN_19_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_19_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 pwm_count_166_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[2]), 
            .I3(n520), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(n378), .I1(hall1), .I2(hall3), .I3(hall2), 
            .O(n533));   // verilog/TinyFPGA_B.v(140[13] 163[7])
    defparam i1_4_lut.LUT_INIT = 16'hafee;
    SB_LUT4 i334_2_lut (.I0(n528), .I1(pwm_count[8]), .I2(GND_net), .I3(GND_net), 
            .O(n378));
    defparam i334_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY pwm_count_166_add_4_4 (.CI(n520), .I0(GND_net), .I1(pwm_count[2]), 
            .CO(n521));
    SB_LUT4 i1_2_lut (.I0(hall3), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n547));   // verilog/TinyFPGA_B.v(130[15] 139[9])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_DFF pwm_count_166__i6 (.Q(pwm_count[6]), .C(CLK_c), .D(n44));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFF pwm_count_166__i5 (.Q(pwm_count[5]), .C(CLK_c), .D(n45));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFF pwm_count_166__i4 (.Q(pwm_count[4]), .C(CLK_c), .D(n46));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFF pwm_count_166__i3 (.Q(pwm_count[3]), .C(CLK_c), .D(n47));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFF pwm_count_166__i2 (.Q(pwm_count[2]), .C(CLK_c), .D(n48));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFF pwm_count_166__i1 (.Q(pwm_count[1]), .C(CLK_c), .D(n49));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFFESR GATES_i5 (.Q(PIN_20_c), .C(CLK_c), .E(VCC_net), .D(n100), 
            .R(n459));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_LUT4 pwm_count_166_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[1]), 
            .I3(n519), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR GATES_i4 (.Q(PIN_21_c), .C(CLK_c), .E(VCC_net), .D(n547), 
            .R(n535));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_DFFESR GATES_i3 (.Q(PIN_22_c), .C(CLK_c), .E(VCC_net), .D(n545), 
            .R(n378));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_CARRY pwm_count_166_add_4_3 (.CI(n519), .I0(GND_net), .I1(pwm_count[1]), 
            .CO(n520));
    SB_DFFESR GATES_i2 (.Q(PIN_23_c), .C(CLK_c), .E(VCC_net), .D(n543), 
            .R(n533));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_DFFESR GATES_i1 (.Q(PIN_24_c), .C(CLK_c), .E(VCC_net), .D(n403), 
            .R(n457));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_DFF pwm_count_166__i0 (.Q(pwm_count[0]), .C(CLK_c), .D(n50));   // verilog/TinyFPGA_B.v(164[17:28])
    SB_DFFESR GATES_i6 (.Q(PIN_19_c), .C(CLK_c), .E(VCC_net), .D(n89), 
            .R(n378));   // verilog/TinyFPGA_B.v(117[9] 165[5])
    SB_LUT4 pwm_count_166_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[0]), 
            .I3(VCC_net), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_1 (.I0(hall1), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n543));   // verilog/TinyFPGA_B.v(136[15] 139[9])
    defparam i1_2_lut_adj_1.LUT_INIT = 16'h4444;
    SB_LUT4 i42_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n89));   // verilog/TinyFPGA_B.v(145[18:33])
    defparam i42_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 pwm_count_166_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[5]), 
            .I3(n523), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_count_166_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[8]), 
            .I3(n526), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_166_add_4_7 (.CI(n523), .I0(GND_net), .I1(pwm_count[5]), 
            .CO(n524));
    SB_LUT4 i53_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n100));   // verilog/TinyFPGA_B.v(154[18:33])
    defparam i53_2_lut.LUT_INIT = 16'h4444;
    GND i1 (.Y(GND_net));
    SB_LUT4 i1_2_lut_adj_2 (.I0(hall2), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n545));   // verilog/TinyFPGA_B.v(124[15] 139[9])
    defparam i1_2_lut_adj_2.LUT_INIT = 16'h4444;
    SB_LUT4 pwm_count_166_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[7]), 
            .I3(n525), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_166_add_4_9 (.CI(n525), .I0(GND_net), .I1(pwm_count[7]), 
            .CO(n526));
    SB_LUT4 i291_3_lut (.I0(pwm_count[2]), .I1(pwm_count[4]), .I2(pwm_count[3]), 
            .I3(GND_net), .O(n501));
    defparam i291_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut (.I0(n501), .I1(pwm_count[6]), .I2(pwm_count[5]), 
            .I3(pwm_count[7]), .O(n528));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 pwm_count_166_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[6]), 
            .I3(n524), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_166_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_166_add_4_8 (.CI(n524), .I0(GND_net), .I1(pwm_count[6]), 
            .CO(n525));
    SB_LUT4 i1_2_lut_4_lut (.I0(hall3), .I1(hall1), .I2(n89), .I3(n378), 
            .O(n459));   // verilog/TinyFPGA_B.v(140[13] 163[7])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hffe4;
    SB_CARRY pwm_count_166_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(pwm_count[0]), 
            .CO(n519));
    SB_LUT4 i1_3_lut (.I0(hall1), .I1(n378), .I2(hall2), .I3(GND_net), 
            .O(n535));   // verilog/TinyFPGA_B.v(140[13] 163[7])
    defparam i1_3_lut.LUT_INIT = 16'hcece;
    
endmodule
