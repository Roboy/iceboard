// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Oct 23 14:00:06 2019
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
        hall1, hall2, hall3;
    wire [8:0]pwm_count;   // verilog/TinyFPGA_B.v(86[19:28])
    
    wire n156, n162, n161, n160, n158, n159, n157, n168, n167, 
        n4, n163, n50, n49, n48, n47, n46, n45, n44, n43, 
        n42;
    
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
    SB_DFF h2_25 (.Q(PIN_21_c), .C(CLK_c), .D(hall2));   // verilog/TinyFPGA_B.v(88[9] 103[5])
    SB_CARRY pwm_count_43_add_4_3 (.CI(n156), .I0(GND_net), .I1(pwm_count[1]), 
            .CO(n157));
    SB_DFF h3_26 (.Q(PIN_22_c), .C(CLK_c), .D(hall3));   // verilog/TinyFPGA_B.v(88[9] 103[5])
    SB_DFF pwm_count_43__i2 (.Q(pwm_count[2]), .C(CLK_c), .D(n48));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_DFF h1_24 (.Q(PIN_20_c), .C(CLK_c), .D(hall1));   // verilog/TinyFPGA_B.v(88[9] 103[5])
    SB_DFF pwm_count_43__i1 (.Q(pwm_count[1]), .C(CLK_c), .D(n49));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall1_input (.PACKAGE_PIN(PIN_3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pwm_count_43__i0 (.Q(pwm_count[0]), .C(CLK_c), .D(n50));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_LUT4 i1_2_lut (.I0(pwm_count[4]), .I1(pwm_count[5]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/TinyFPGA_B.v(86[19:28])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFF pwm_count_43__i8 (.Q(pwm_count[8]), .C(CLK_c), .D(n42));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_CARRY pwm_count_43_add_4_8 (.CI(n161), .I0(GND_net), .I1(pwm_count[6]), 
            .CO(n162));
    SB_DFFESS pwm_out_27 (.Q(PIN_19_c), .C(CLK_c), .E(VCC_net), .D(n167), 
            .S(pwm_count[8]));   // verilog/TinyFPGA_B.v(88[9] 103[5])
    SB_LUT4 pwm_count_43_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[5]), 
            .I3(n160), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_43__i7 (.Q(pwm_count[7]), .C(CLK_c), .D(n43));   // verilog/TinyFPGA_B.v(102[17:28])
    GND i1 (.Y(GND_net));
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_24_pad (.PACKAGE_PIN(PIN_24), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(VCC_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_24_pad.PIN_TYPE = 6'b011001;
    defparam PIN_24_pad.PULLUP = 1'b0;
    defparam PIN_24_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_24_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_23_pad (.PACKAGE_PIN(PIN_23), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(VCC_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_23_pad.PIN_TYPE = 6'b011001;
    defparam PIN_23_pad.PULLUP = 1'b0;
    defparam PIN_23_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_23_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_22_pad (.PACKAGE_PIN(PIN_22), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_22_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_22_pad.PIN_TYPE = 6'b011001;
    defparam PIN_22_pad.PULLUP = 1'b0;
    defparam PIN_22_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_22_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_21_pad (.PACKAGE_PIN(PIN_21), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_21_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_21_pad.PIN_TYPE = 6'b011001;
    defparam PIN_21_pad.PULLUP = 1'b0;
    defparam PIN_21_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_21_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_20_pad (.PACKAGE_PIN(PIN_20), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_20_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_20_pad.PIN_TYPE = 6'b011001;
    defparam PIN_20_pad.PULLUP = 1'b0;
    defparam PIN_20_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_20_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_19_pad (.PACKAGE_PIN(PIN_19), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_19_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_19_pad.PIN_TYPE = 6'b011001;
    defparam PIN_19_pad.PULLUP = 1'b0;
    defparam PIN_19_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_19_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 pwm_count_43_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[6]), 
            .I3(n161), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_43_add_4_7 (.CI(n160), .I0(GND_net), .I1(pwm_count[5]), 
            .CO(n161));
    SB_LUT4 pwm_count_43_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[4]), 
            .I3(n159), .O(n46)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut (.I0(pwm_count[2]), .I1(pwm_count[1]), .I2(pwm_count[3]), 
            .I3(GND_net), .O(n168));   // verilog/TinyFPGA_B.v(86[19:28])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i93_4_lut (.I0(pwm_count[7]), .I1(pwm_count[6]), .I2(n168), 
            .I3(n4), .O(n167));
    defparam i93_4_lut.LUT_INIT = 16'h0111;
    SB_CARRY pwm_count_43_add_4_9 (.CI(n162), .I0(GND_net), .I1(pwm_count[7]), 
            .CO(n163));
    SB_LUT4 pwm_count_43_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[7]), 
            .I3(n162), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_count_43_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[8]), 
            .I3(n163), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_43_add_4_4 (.CI(n157), .I0(GND_net), .I1(pwm_count[2]), 
            .CO(n158));
    SB_LUT4 pwm_count_43_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[0]), 
            .I3(VCC_net), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_43_add_4_5 (.CI(n158), .I0(GND_net), .I1(pwm_count[3]), 
            .CO(n159));
    SB_LUT4 pwm_count_43_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[1]), 
            .I3(n156), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_43_add_4_6 (.CI(n159), .I0(GND_net), .I1(pwm_count[4]), 
            .CO(n160));
    SB_DFF pwm_count_43__i6 (.Q(pwm_count[6]), .C(CLK_c), .D(n44));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_DFF pwm_count_43__i5 (.Q(pwm_count[5]), .C(CLK_c), .D(n45));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_DFF pwm_count_43__i4 (.Q(pwm_count[4]), .C(CLK_c), .D(n46));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_DFF pwm_count_43__i3 (.Q(pwm_count[3]), .C(CLK_c), .D(n47));   // verilog/TinyFPGA_B.v(102[17:28])
    SB_LUT4 pwm_count_43_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[3]), 
            .I3(n158), .O(n47)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_43_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(pwm_count[0]), 
            .CO(n156));
    SB_LUT4 pwm_count_43_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[2]), 
            .I3(n157), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_43_add_4_4_lut.LUT_INIT = 16'hC33C;
    
endmodule
