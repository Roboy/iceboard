// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sat Mar 21 16:00:08 2020
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
    input PIN_2 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(7[9:14])
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
    
    wire GND_net, VCC_net, LED_c, PIN_18_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(40[12:25])
    
    wire n193, n192, n191, n183, n195, n190, n182, n189, n188, 
        n187, n186, n196, diff_input, n22, n21, n20, n19, n18, 
        n17, n16, n15, n14, n13, n12, n11, n10, n9, n8, 
        n7, n6, n185, n194, n184, n25, n24, n26, n23, n110, 
        n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n120, n121, n122, n123, n124, n125, n126, n127, n128, 
        n129, n130, n131, n132, n133, n134, n135, n197, n198, 
        n199, n200, n201, n202, n203, n204, n205, n206, n207, 
        n208;
    
    VCC i2 (.Y(VCC_net));
    SB_IO differential_input (.PACKAGE_PIN(PIN_13), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(CLK_c), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(diff_input)) /* synthesis syn_instantiated=1 */ ;   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam differential_input.PIN_TYPE = 6'b000001;
    defparam differential_input.PULLUP = 1'b0;
    defparam differential_input.NEG_TRIGGER = 1'b0;
    defparam differential_input.IO_STANDARD = "SB_LVDS_INPUT";
    SB_DFF blink_counter_14__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_IO PIN_18_pad (.PACKAGE_PIN(PIN_18), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_18_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_18_pad.PIN_TYPE = 6'b011001;
    defparam PIN_18_pad.PULLUP = 1'b0;
    defparam PIN_18_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_18_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_14__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_LUT4 blink_counter_14_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n186), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF oversampler_9 (.Q(PIN_18_c), .C(CLK_c), .D(diff_input));   // verilog/TinyFPGA_B.v(77[8] 79[4])
    SB_CARRY blink_counter_14_add_4_7 (.CI(n186), .I0(GND_net), .I1(n21), 
            .CO(n187));
    SB_LUT4 blink_counter_14_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n185), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_14__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_CARRY blink_counter_14_add_4_6 (.CI(n185), .I0(GND_net), .I1(n22), 
            .CO(n186));
    SB_LUT4 blink_counter_14_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n184), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_8 (.CI(n187), .I0(GND_net), .I1(n20), 
            .CO(n188));
    SB_LUT4 blink_counter_14_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_5 (.CI(n184), .I0(GND_net), .I1(n23), 
            .CO(n185));
    SB_LUT4 blink_counter_14_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n183), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_4 (.CI(n183), .I0(GND_net), .I1(n24), 
            .CO(n184));
    GND i1 (.Y(GND_net));
    SB_LUT4 blink_counter_14_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n182), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_14__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_CARRY blink_counter_14_add_4_3 (.CI(n182), .I0(GND_net), .I1(n25), 
            .CO(n183));
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i56_3_lut (.I0(n207), .I1(n208), .I2(blink_counter[25]), .I3(GND_net), 
            .O(LED_c));
    defparam i56_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i55_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), .I2(blink_counter[24]), 
            .I3(blink_counter[21]), .O(n208));
    defparam i55_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i54_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), .I2(blink_counter[24]), 
            .I3(blink_counter[21]), .O(n207));
    defparam i54_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 blink_counter_14_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[25]), 
            .I3(n206), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_14_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[24]), 
            .I3(n205), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_26 (.CI(n205), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n206));
    SB_LUT4 blink_counter_14_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[23]), 
            .I3(n204), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_25 (.CI(n204), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n205));
    SB_LUT4 blink_counter_14_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[22]), 
            .I3(n203), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_24 (.CI(n203), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n204));
    SB_LUT4 blink_counter_14_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[21]), 
            .I3(n202), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_23 (.CI(n202), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n203));
    SB_LUT4 blink_counter_14_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(n6), 
            .I3(n201), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_22 (.CI(n201), .I0(GND_net), .I1(n6), 
            .CO(n202));
    SB_LUT4 blink_counter_14_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(n7), 
            .I3(n200), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_21 (.CI(n200), .I0(GND_net), .I1(n7), 
            .CO(n201));
    SB_LUT4 blink_counter_14_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(n8), 
            .I3(n199), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_20 (.CI(n199), .I0(GND_net), .I1(n8), 
            .CO(n200));
    SB_LUT4 blink_counter_14_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(n9), 
            .I3(n198), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_19 (.CI(n198), .I0(GND_net), .I1(n9), 
            .CO(n199));
    SB_LUT4 blink_counter_14_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(n10), 
            .I3(n197), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_18 (.CI(n197), .I0(GND_net), .I1(n10), 
            .CO(n198));
    SB_LUT4 blink_counter_14_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(n11), 
            .I3(n196), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_17 (.CI(n196), .I0(GND_net), .I1(n11), 
            .CO(n197));
    SB_LUT4 blink_counter_14_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(n12), 
            .I3(n195), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_16 (.CI(n195), .I0(GND_net), .I1(n12), 
            .CO(n196));
    SB_LUT4 blink_counter_14_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(n13), 
            .I3(n194), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_15 (.CI(n194), .I0(GND_net), .I1(n13), 
            .CO(n195));
    SB_LUT4 blink_counter_14_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(n14), 
            .I3(n193), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_14 (.CI(n193), .I0(GND_net), .I1(n14), 
            .CO(n194));
    SB_LUT4 blink_counter_14_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(n15), 
            .I3(n192), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_13 (.CI(n192), .I0(GND_net), .I1(n15), 
            .CO(n193));
    SB_LUT4 blink_counter_14_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(n16), 
            .I3(n191), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_12 (.CI(n191), .I0(GND_net), .I1(n16), 
            .CO(n192));
    SB_LUT4 blink_counter_14_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(n17), 
            .I3(n190), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_11 (.CI(n190), .I0(GND_net), .I1(n17), 
            .CO(n191));
    SB_LUT4 blink_counter_14_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(n18), 
            .I3(n189), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_10 (.CI(n189), .I0(GND_net), .I1(n18), 
            .CO(n190));
    SB_LUT4 blink_counter_14_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n188), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_14_add_4_9 (.CI(n188), .I0(GND_net), .I1(n19), 
            .CO(n189));
    SB_LUT4 blink_counter_14_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n187), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_14_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_14__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i12 (.Q(n14), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_DFF blink_counter_14__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_CARRY blink_counter_14_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n182));
    SB_DFF blink_counter_14__i1 (.Q(n25), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(47[22:39])
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    
endmodule
