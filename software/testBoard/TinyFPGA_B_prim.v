// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Feb 17 12:40:38 2020
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
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, n929, n928, CS_CLK_c, CS_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[12:25])
    
    wire n931, n927, n926, n925, n930, n924, n923, n922, n921, 
        n920, n919, n12, n11, n10, n9, n8, n7, n6, n918, 
        n917, n916, n979, n934, n933, n932, n26, n25, n24, 
        n23, n22, n21, n20, n19, n18, n17, n16, n15, n14, 
        n13, n110, n111, n112, n113, n114, n115, n116, n117, 
        n118, n119, n120, n121, n122, n123, n124, n125, n126, 
        n127, n128, n129, n130, n131, n132, n133, n134, n135, 
        n980, n940, n939, n938, n937, n936, n935;
    
    VCC i2 (.Y(VCC_net));
    TLI4970 tli (.VCC_net(VCC_net), .GND_net(GND_net), .CLK_c(CLK_c), 
            .CS_c(CS_c), .CS_CLK_c(CS_CLK_c)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(53[9] 59[2])
    SB_IO hall1_input (.PACKAGE_PIN(HALL1), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall2_input (.PACKAGE_PIN(HALL2), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall2_input.PIN_TYPE = 6'b000001;
    defparam hall2_input.PULLUP = 1'b1;
    defparam hall2_input.NEG_TRIGGER = 1'b0;
    defparam hall2_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall3_input (.PACKAGE_PIN(HALL3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_131_add_4_14 (.CI(n927), .I0(GND_net), .I1(n14), 
            .CO(n928));
    SB_LUT4 blink_counter_131_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n926), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_13 (.CI(n926), .I0(GND_net), .I1(n15), 
            .CO(n927));
    SB_LUT4 blink_counter_131_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n925), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n939), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n920), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_26 (.CI(n939), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n940));
    SB_CARRY blink_counter_131_add_4_7 (.CI(n920), .I0(GND_net), .I1(n21), 
            .CO(n921));
    SB_LUT4 blink_counter_131_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n938), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_12 (.CI(n925), .I0(GND_net), .I1(n16), 
            .CO(n926));
    SB_LUT4 blink_counter_131_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n924), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_131_add_4_25 (.CI(n938), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n939));
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_131_add_4_11 (.CI(n924), .I0(GND_net), .I1(n17), 
            .CO(n925));
    SB_LUT4 blink_counter_131_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n923), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_10 (.CI(n923), .I0(GND_net), .I1(n18), 
            .CO(n924));
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(CS_CLK_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_131_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n922), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n937), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_24 (.CI(n937), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n938));
    SB_LUT4 blink_counter_131_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n919), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_9 (.CI(n922), .I0(GND_net), .I1(n19), 
            .CO(n923));
    SB_LUT4 blink_counter_131_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n921), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n936), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_23 (.CI(n936), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n937));
    SB_CARRY blink_counter_131_add_4_8 (.CI(n921), .I0(GND_net), .I1(n20), 
            .CO(n922));
    SB_CARRY blink_counter_131_add_4_6 (.CI(n919), .I0(GND_net), .I1(n22), 
            .CO(n920));
    SB_LUT4 i324_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n980));
    defparam i324_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 blink_counter_131_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n918), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n935), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_22 (.CI(n935), .I0(GND_net), .I1(n6), 
            .CO(n936));
    SB_LUT4 blink_counter_131_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n934), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_21 (.CI(n934), .I0(GND_net), .I1(n7), 
            .CO(n935));
    SB_LUT4 blink_counter_131_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n933), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_131__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_CARRY blink_counter_131_add_4_20 (.CI(n933), .I0(GND_net), .I1(n8), 
            .CO(n934));
    SB_CARRY blink_counter_131_add_4_5 (.CI(n918), .I0(GND_net), .I1(n23), 
            .CO(n919));
    SB_LUT4 blink_counter_131_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n932), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n917), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_19 (.CI(n932), .I0(GND_net), .I1(n9), 
            .CO(n933));
    SB_CARRY blink_counter_131_add_4_4 (.CI(n917), .I0(GND_net), .I1(n24), 
            .CO(n918));
    SB_LUT4 blink_counter_131_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n931), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n916), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_18 (.CI(n931), .I0(GND_net), .I1(n10), 
            .CO(n932));
    SB_CARRY blink_counter_131_add_4_3 (.CI(n916), .I0(GND_net), .I1(n25), 
            .CO(n917));
    SB_LUT4 blink_counter_131_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n930), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_131__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[22:39])
    GND i1 (.Y(GND_net));
    SB_DFF blink_counter_131__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i12 (.Q(n14), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_131__i1 (.Q(n25), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 i323_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n979));
    defparam i323_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i325_3_lut (.I0(n979), .I1(n980), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i325_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY blink_counter_131_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n916));
    SB_CARRY blink_counter_131_add_4_17 (.CI(n930), .I0(GND_net), .I1(n11), 
            .CO(n931));
    SB_LUT4 blink_counter_131_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n929), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_16 (.CI(n929), .I0(GND_net), .I1(n12), 
            .CO(n930));
    SB_LUT4 blink_counter_131_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n928), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_131_add_4_15 (.CI(n928), .I0(GND_net), .I1(n13), 
            .CO(n929));
    SB_LUT4 blink_counter_131_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n927), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_131_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n940), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_131_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(CS_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
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
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    
endmodule
//
// Verilog Description of module TLI4970
//

module TLI4970 (VCC_net, GND_net, CLK_c, CS_c, CS_CLK_c) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input VCC_net;
    input GND_net;
    input CLK_c;
    output CS_c;
    output CS_CLK_c;
    
    wire clk_slow /* synthesis is_clock=1, SET_AS_NETWORK=\tli/clk_slow */ ;   // verilog/tli4970.v(11[7:15])
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n892;
    wire [7:0]bit_counter;   // verilog/tli4970.v(26[13:24])
    
    wire n893, n897, n898;
    wire [7:0]n37;
    
    wire n896;
    wire [7:0]state;   // verilog/tli4970.v(29[13:18])
    
    wire n569, clk_slow_N_43, clk_slow_N_42;
    wire [13:0]n61;
    wire [15:0]delay_counter;   // verilog/tli4970.v(28[14:27])
    
    wire n910, n895;
    wire [4:0]n25;
    wire [7:0]counter;   // verilog/tli4970.v(12[13:20])
    
    wire n908, n839, n852, n6, n909, n907, n984, n894, clk_out;
    wire [7:0]n47;
    
    wire n792, n833, n850, delay_counter_15__N_124, n978, n911, 
        n906, n977, n856, n966, n15, n876, n986, n6_adj_237, 
        n9, n985, n905, n904, n903, n902, n901, n900, n899, 
        n10, n14, n915, n914, n913, n912;
    
    SB_CARRY bit_counter_134_add_4_3 (.CI(n892), .I0(VCC_net), .I1(bit_counter[1]), 
            .CO(n893));
    SB_CARRY bit_counter_134_add_4_8 (.CI(n897), .I0(VCC_net), .I1(bit_counter[6]), 
            .CO(n898));
    SB_LUT4 bit_counter_134_add_4_7_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[5]), 
            .I3(n896), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_counter_134_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_counter[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i121_1_lut (.I0(state[0]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n569));   // verilog/tli4970.v(33[10] 66[6])
    defparam i121_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 clk_slow_I_0_71_2_lut (.I0(clk_slow), .I1(clk_slow_N_43), .I2(GND_net), 
            .I3(GND_net), .O(clk_slow_N_42));   // verilog/tli4970.v(15[5] 18[8])
    defparam clk_slow_I_0_71_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY bit_counter_134_add_4_7 (.CI(n896), .I0(VCC_net), .I1(bit_counter[5]), 
            .CO(n897));
    SB_LUT4 delay_counter_132_133_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n910), .O(n61[8])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_counter_134_add_4_6_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[4]), 
            .I3(n895), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR counter_135_136__i1 (.Q(counter[0]), .C(CLK_c), .D(n25[0]), 
            .R(clk_slow_N_43));   // verilog/tli4970.v(14[16:27])
    SB_LUT4 delay_counter_132_133_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[6]), .I3(n908), .O(n61[6])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR bit_counter_134__i4 (.Q(bit_counter[4]), .C(clk_slow), .E(n839), 
            .D(n37[4]), .R(n852));   // verilog/tli4970.v(53[24:39])
    SB_DFFNESR bit_counter_134__i5 (.Q(bit_counter[5]), .C(clk_slow), .E(n839), 
            .D(n37[5]), .R(n852));   // verilog/tli4970.v(53[24:39])
    SB_CARRY bit_counter_134_add_4_6 (.CI(n895), .I0(VCC_net), .I1(bit_counter[4]), 
            .CO(n896));
    SB_LUT4 i2_2_lut (.I0(delay_counter[5]), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY delay_counter_132_133_add_4_8 (.CI(n908), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n909));
    SB_LUT4 delay_counter_132_133_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[5]), .I3(n907), .O(n61[5])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF clk_slow_62 (.Q(clk_slow), .C(CLK_c), .D(clk_slow_N_42));   // verilog/tli4970.v(13[10] 19[6])
    SB_LUT4 bit_counter_134_add_4_5_lut (.I0(n569), .I1(VCC_net), .I2(bit_counter[3]), 
            .I3(n894), .O(n984)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 spi_clk_I_0_i1_3_lut (.I0(clk_slow), .I1(clk_out), .I2(CS_c), 
            .I3(GND_net), .O(CS_CLK_c));   // verilog/tli4970.v(23[20:53])
    defparam spi_clk_I_0_i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFNE bit_counter_134__i0 (.Q(bit_counter[0]), .C(clk_slow), .E(n839), 
            .D(n47[0]));   // verilog/tli4970.v(53[24:39])
    SB_DFFNESR bit_counter_134__i6 (.Q(bit_counter[6]), .C(clk_slow), .E(n839), 
            .D(n37[6]), .R(n852));   // verilog/tli4970.v(53[24:39])
    SB_CARRY delay_counter_132_133_add_4_7 (.CI(n907), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n908));
    SB_CARRY bit_counter_134_add_4_5 (.CI(n894), .I0(VCC_net), .I1(bit_counter[3]), 
            .CO(n895));
    SB_DFFNESR state_i1 (.Q(state[1]), .C(clk_slow), .E(n833), .D(n792), 
            .R(n850));   // verilog/tli4970.v(33[10] 66[6])
    SB_DFFNSR delay_counter_132_133__i1 (.Q(delay_counter[0]), .C(clk_slow), 
            .D(n61[0]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_LUT4 i3_4_lut (.I0(delay_counter[0]), .I1(delay_counter[2]), .I2(delay_counter[3]), 
            .I3(delay_counter[1]), .O(n978));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY delay_counter_132_133_add_4_10 (.CI(n910), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n911));
    SB_LUT4 delay_counter_132_133_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[4]), .I3(n906), .O(n61[4])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_6 (.CI(n906), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n907));
    SB_DFFNESR bit_counter_134__i7 (.Q(bit_counter[7]), .C(clk_slow), .E(n839), 
            .D(n37[7]), .R(n852));   // verilog/tli4970.v(53[24:39])
    SB_LUT4 i3_4_lut_adj_2 (.I0(n978), .I1(n6), .I2(delay_counter[7]), 
            .I3(delay_counter[4]), .O(n977));
    defparam i3_4_lut_adj_2.LUT_INIT = 16'hfefc;
    SB_LUT4 i250_3_lut_3_lut (.I0(state[0]), .I1(state[1]), .I2(CS_c), 
            .I3(GND_net), .O(n856));   // verilog/tli4970.v(33[10] 66[6])
    defparam i250_3_lut_3_lut.LUT_INIT = 16'hd1d1;
    SB_LUT4 i3_4_lut_adj_3 (.I0(n977), .I1(delay_counter[8]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n966));
    defparam i3_4_lut_adj_3.LUT_INIT = 16'h8000;
    SB_LUT4 i159_4_lut (.I0(n966), .I1(delay_counter[13]), .I2(delay_counter[12]), 
            .I3(delay_counter[11]), .O(delay_counter_15__N_124));
    defparam i159_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i344_2_lut (.I0(n15), .I1(state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n876));
    defparam i344_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1_2_lut_4_lut (.I0(delay_counter_15__N_124), .I1(state[0]), 
            .I2(state[1]), .I3(n15), .O(n833));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i244_2_lut_4_lut (.I0(delay_counter_15__N_124), .I1(state[0]), 
            .I2(state[1]), .I3(n15), .O(n850));   // verilog/tli4970.v(33[10] 66[6])
    defparam i244_2_lut_4_lut.LUT_INIT = 16'h2202;
    SB_LUT4 mux_149_i2_3_lut (.I0(n15), .I1(state[1]), .I2(state[0]), 
            .I3(GND_net), .O(n792));
    defparam mux_149_i2_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 bit_counter_134_mux_6_i2_3_lut (.I0(state[0]), .I1(n986), .I2(state[1]), 
            .I3(GND_net), .O(n47[1]));   // verilog/tli4970.v(53[24:39])
    defparam bit_counter_134_mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i235_2_lut (.I0(state[1]), .I1(state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n839));
    defparam i235_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 bit_counter_134_mux_6_i1_4_lut_3_lut (.I0(state[0]), .I1(state[1]), 
            .I2(n37[0]), .I3(GND_net), .O(n47[0]));   // verilog/tli4970.v(51[7:17])
    defparam bit_counter_134_mux_6_i1_4_lut_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i2_2_lut_adj_4 (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_237));
    defparam i2_2_lut_adj_4.LUT_INIT = 16'heeee;
    SB_LUT4 i347_4_lut_4_lut (.I0(state[0]), .I1(state[1]), .I2(clk_out), 
            .I3(n15), .O(n9));   // verilog/tli4970.v(33[10] 66[6])
    defparam i347_4_lut_4_lut.LUT_INIT = 16'hf2b2;
    SB_LUT4 bit_counter_134_mux_6_i3_3_lut (.I0(state[0]), .I1(n985), .I2(state[1]), 
            .I3(GND_net), .O(n47[2]));   // verilog/tli4970.v(53[24:39])
    defparam bit_counter_134_mux_6_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i246_2_lut_3_lut_2_lut (.I0(state[0]), .I1(state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n852));   // verilog/tli4970.v(51[7:17])
    defparam i246_2_lut_3_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 bit_counter_134_mux_6_i4_3_lut (.I0(state[0]), .I1(n984), .I2(state[1]), 
            .I3(GND_net), .O(n47[3]));   // verilog/tli4970.v(53[24:39])
    defparam bit_counter_134_mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_132_133_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[3]), .I3(n905), .O(n61[3])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFNSR delay_counter_132_133__i14 (.Q(delay_counter[13]), .C(clk_slow), 
            .D(n61[13]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i13 (.Q(delay_counter[12]), .C(clk_slow), 
            .D(n61[12]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i12 (.Q(delay_counter[11]), .C(clk_slow), 
            .D(n61[11]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i11 (.Q(delay_counter[10]), .C(clk_slow), 
            .D(n61[10]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i10 (.Q(delay_counter[9]), .C(clk_slow), 
            .D(n61[9]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i9 (.Q(delay_counter[8]), .C(clk_slow), 
            .D(n61[8]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i8 (.Q(delay_counter[7]), .C(clk_slow), 
            .D(n61[7]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i7 (.Q(delay_counter[6]), .C(clk_slow), 
            .D(n61[6]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i6 (.Q(delay_counter[5]), .C(clk_slow), 
            .D(n61[5]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i5 (.Q(delay_counter[4]), .C(clk_slow), 
            .D(n61[4]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i4 (.Q(delay_counter[3]), .C(clk_slow), 
            .D(n61[3]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i3 (.Q(delay_counter[2]), .C(clk_slow), 
            .D(n61[2]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNSR delay_counter_132_133__i2 (.Q(delay_counter[1]), .C(clk_slow), 
            .D(n61[1]), .R(delay_counter_15__N_124));   // verilog/tli4970.v(38[24:39])
    SB_DFFNE bit_counter_134__i3 (.Q(bit_counter[3]), .C(clk_slow), .E(n839), 
            .D(n47[3]));   // verilog/tli4970.v(53[24:39])
    SB_CARRY delay_counter_132_133_add_4_5 (.CI(n905), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n906));
    SB_LUT4 delay_counter_132_133_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[2]), .I3(n904), .O(n61[2])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_4 (.CI(n904), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n905));
    SB_LUT4 delay_counter_132_133_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[1]), .I3(n903), .O(n61[1])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_3 (.CI(n903), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n904));
    SB_LUT4 delay_counter_132_133_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[0]), .I3(VCC_net), .O(n61[0])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_2 (.CI(VCC_net), .I0(GND_net), 
            .I1(delay_counter[0]), .CO(n903));
    SB_LUT4 counter_135_136_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter[4]), 
            .I3(n902), .O(n25[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_135_136_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_135_136_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter[3]), 
            .I3(n901), .O(n25[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_135_136_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_135_136_add_4_5 (.CI(n901), .I0(GND_net), .I1(counter[3]), 
            .CO(n902));
    SB_LUT4 counter_135_136_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter[2]), 
            .I3(n900), .O(n25[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_135_136_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_135_136_add_4_4 (.CI(n900), .I0(GND_net), .I1(counter[2]), 
            .CO(n901));
    SB_LUT4 counter_135_136_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter[1]), 
            .I3(n899), .O(n25[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_135_136_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut_adj_5 (.I0(bit_counter[1]), .I1(bit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/tli4970.v(54[12:26])
    defparam i2_2_lut_adj_5.LUT_INIT = 16'heeee;
    SB_DFFNE bit_counter_134__i2 (.Q(bit_counter[2]), .C(clk_slow), .E(n839), 
            .D(n47[2]));   // verilog/tli4970.v(53[24:39])
    SB_DFFNE bit_counter_134__i1 (.Q(bit_counter[1]), .C(clk_slow), .E(n839), 
            .D(n47[1]));   // verilog/tli4970.v(53[24:39])
    SB_DFFSR counter_135_136__i5 (.Q(counter[4]), .C(CLK_c), .D(n25[4]), 
            .R(clk_slow_N_43));   // verilog/tli4970.v(14[16:27])
    SB_DFFN clk_out_66 (.Q(clk_out), .C(clk_slow), .D(n9));   // verilog/tli4970.v(33[10] 66[6])
    SB_CARRY counter_135_136_add_4_3 (.CI(n899), .I0(GND_net), .I1(counter[1]), 
            .CO(n900));
    SB_LUT4 counter_135_136_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter[0]), 
            .I3(VCC_net), .O(n25[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_135_136_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_135_136_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter[0]), 
            .CO(n899));
    SB_LUT4 bit_counter_134_add_4_9_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[7]), 
            .I3(n898), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_counter_134_add_4_8_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[6]), 
            .I3(n897), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i154_4_lut (.I0(counter[0]), .I1(counter[4]), .I2(n6_adj_237), 
            .I3(counter[3]), .O(clk_slow_N_43));
    defparam i154_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 bit_counter_134_add_4_4_lut (.I0(n569), .I1(VCC_net), .I2(bit_counter[2]), 
            .I3(n893), .O(n985)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY bit_counter_134_add_4_4 (.CI(n893), .I0(VCC_net), .I1(bit_counter[2]), 
            .CO(n894));
    SB_DFFN slave_select_65 (.Q(CS_c), .C(clk_slow), .D(n856));   // verilog/tli4970.v(33[10] 66[6])
    SB_DFFSR counter_135_136__i4 (.Q(counter[3]), .C(CLK_c), .D(n25[3]), 
            .R(clk_slow_N_43));   // verilog/tli4970.v(14[16:27])
    SB_LUT4 bit_counter_134_add_4_3_lut (.I0(n569), .I1(VCC_net), .I2(bit_counter[1]), 
            .I3(n892), .O(n986)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_134_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i6_4_lut (.I0(bit_counter[7]), .I1(bit_counter[4]), .I2(bit_counter[5]), 
            .I3(bit_counter[6]), .O(n14));   // verilog/tli4970.v(54[12:26])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFSR counter_135_136__i3 (.Q(counter[2]), .C(CLK_c), .D(n25[2]), 
            .R(clk_slow_N_43));   // verilog/tli4970.v(14[16:27])
    SB_DFFSR counter_135_136__i2 (.Q(counter[1]), .C(CLK_c), .D(n25[1]), 
            .R(clk_slow_N_43));   // verilog/tli4970.v(14[16:27])
    SB_DFFNESS state_i0 (.Q(state[0]), .C(clk_slow), .E(n833), .D(n876), 
            .S(n850));   // verilog/tli4970.v(33[10] 66[6])
    SB_CARRY delay_counter_132_133_add_4_9 (.CI(n909), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n910));
    SB_LUT4 delay_counter_132_133_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[7]), .I3(n909), .O(n61[7])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_132_133_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n915), .O(n61[13])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_132_133_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n914), .O(n61[12])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_14 (.CI(n914), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n915));
    SB_LUT4 delay_counter_132_133_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n913), .O(n61[11])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_13 (.CI(n913), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n914));
    SB_LUT4 delay_counter_132_133_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n912), .O(n61[10])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_12 (.CI(n912), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n913));
    SB_LUT4 delay_counter_132_133_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n911), .O(n61[9])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_132_133_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_132_133_add_4_11 (.CI(n911), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n912));
    SB_CARRY bit_counter_134_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_counter[0]), 
            .CO(n892));
    SB_LUT4 i7_4_lut (.I0(bit_counter[0]), .I1(n14), .I2(n10), .I3(bit_counter[3]), 
            .O(n15));   // verilog/tli4970.v(54[12:26])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    
endmodule
