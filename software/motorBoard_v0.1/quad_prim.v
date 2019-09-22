// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sun Aug 25 18:39:20 2019
//
// Verilog Description of module quad
//

module quad (clk, quadA, quadB, count) /* synthesis syn_module_defined=1 */ ;   // quad.v(3[8:12])
    input clk;   // quad.v(4[9:12])
    input quadA;   // quad.v(5[9:14])
    input quadB;   // quad.v(6[9:14])
    output [31:0]count;   // quad.v(7[21:26])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // quad.v(4[9:12])
    
    wire GND_net, VCC_net, quadA_c, quadB_c, count_c_31, count_c_30, 
        count_c_29, count_c_28, count_c_27, count_c_26, count_c_25, 
        count_c_24, count_c_23, count_c_22, count_c_21, count_c_20, 
        count_c_19, count_c_18, count_c_17, count_c_16, count_c_15, 
        count_c_14, count_c_13, count_c_12, count_c_11, count_c_10, 
        count_c_9, count_c_8, count_c_7, count_c_6, count_c_5, count_c_4, 
        count_c_3, count_c_2, count_c_1, count_c_0, quadA_delayed, 
        quadB_delayed, count_enable, count_direction, n450, n449, 
        n356, n355, n448, n447, n446, n323, n445, n444, n443, 
        n442, n441, n440, n439, n438, n437, n436, n435, n434, 
        n433, n432, n431, n430, n429, n428, n427, n426, n425, 
        n424, n423, n422, n421, n420, n419, n353, n354, n384, 
        n383, n382, n381, n380, n379, n378, n377, n376, n375, 
        n374, n373, n372, n371, n370, n369, n368, n367, n366, 
        n365, n364, n363, n362, n361, n360, n359, n358, n357;
    
    VCC i100 (.Y(VCC_net));
    SB_DFFE count_i0_i1 (.Q(count_c_0), .C(clk_c), .E(count_enable), .D(n384));   // quad.v(16[10] 22[6])
    SB_IO quadB_pad (.PACKAGE_PIN(quadB), .OUTPUT_ENABLE(VCC_net), .D_IN_0(quadB_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam quadB_pad.PIN_TYPE = 6'b000001;
    defparam quadB_pad.PULLUP = 1'b0;
    defparam quadB_pad.NEG_TRIGGER = 1'b0;
    defparam quadB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i72_1_lut_2_lut (.I0(quadA_c), .I1(quadB_delayed), .I2(GND_net), 
            .I3(GND_net), .O(n323));   // quad.v(18[5] 21[8])
    defparam i72_1_lut_2_lut.LUT_INIT = 16'h9999;
    GND i143 (.Y(GND_net));
    SB_IO quadA_pad (.PACKAGE_PIN(quadA), .OUTPUT_ENABLE(VCC_net), .D_IN_0(quadA_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam quadA_pad.PIN_TYPE = 6'b000001;
    defparam quadA_pad.PULLUP = 1'b0;
    defparam quadA_pad.NEG_TRIGGER = 1'b0;
    defparam quadA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_2 (.PACKAGE_PIN(count[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_2));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_2.PIN_TYPE = 6'b011001;
    defparam count_pad_2.PULLUP = 1'b0;
    defparam count_pad_2.NEG_TRIGGER = 1'b0;
    defparam count_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_3 (.PACKAGE_PIN(count[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_3));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_3.PIN_TYPE = 6'b011001;
    defparam count_pad_3.PULLUP = 1'b0;
    defparam count_pad_3.NEG_TRIGGER = 1'b0;
    defparam count_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_4 (.PACKAGE_PIN(count[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_4));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_4.PIN_TYPE = 6'b011001;
    defparam count_pad_4.PULLUP = 1'b0;
    defparam count_pad_4.NEG_TRIGGER = 1'b0;
    defparam count_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_DFFE count_i0_i2 (.Q(count_c_1), .C(clk_c), .E(count_enable), .D(n383));   // quad.v(16[10] 22[6])
    SB_IO count_pad_5 (.PACKAGE_PIN(count[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_5));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_5.PIN_TYPE = 6'b011001;
    defparam count_pad_5.PULLUP = 1'b0;
    defparam count_pad_5.NEG_TRIGGER = 1'b0;
    defparam count_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i2_3_lut_4_lut (.I0(quadA_delayed), .I1(quadA_c), .I2(quadB_delayed), 
            .I3(quadB_c), .O(count_enable));   // quad.v(13[23:68])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_IO count_pad_6 (.PACKAGE_PIN(count[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_6));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_6.PIN_TYPE = 6'b011001;
    defparam count_pad_6.PULLUP = 1'b0;
    defparam count_pad_6.NEG_TRIGGER = 1'b0;
    defparam count_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_7 (.PACKAGE_PIN(count[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_7));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_7.PIN_TYPE = 6'b011001;
    defparam count_pad_7.PULLUP = 1'b0;
    defparam count_pad_7.NEG_TRIGGER = 1'b0;
    defparam count_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_0 (.PACKAGE_PIN(count[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_0.PIN_TYPE = 6'b011001;
    defparam count_pad_0.PULLUP = 1'b0;
    defparam count_pad_0.NEG_TRIGGER = 1'b0;
    defparam count_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_8 (.PACKAGE_PIN(count[8]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_8));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_8.PIN_TYPE = 6'b011001;
    defparam count_pad_8.PULLUP = 1'b0;
    defparam count_pad_8.NEG_TRIGGER = 1'b0;
    defparam count_pad_8.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_1 (.PACKAGE_PIN(count[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_1));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_1.PIN_TYPE = 6'b011001;
    defparam count_pad_1.PULLUP = 1'b0;
    defparam count_pad_1.NEG_TRIGGER = 1'b0;
    defparam count_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_9 (.PACKAGE_PIN(count[9]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_9));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_9.PIN_TYPE = 6'b011001;
    defparam count_pad_9.PULLUP = 1'b0;
    defparam count_pad_9.NEG_TRIGGER = 1'b0;
    defparam count_pad_9.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_10 (.PACKAGE_PIN(count[10]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_10));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_10.PIN_TYPE = 6'b011001;
    defparam count_pad_10.PULLUP = 1'b0;
    defparam count_pad_10.NEG_TRIGGER = 1'b0;
    defparam count_pad_10.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_11 (.PACKAGE_PIN(count[11]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_11));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_11.PIN_TYPE = 6'b011001;
    defparam count_pad_11.PULLUP = 1'b0;
    defparam count_pad_11.NEG_TRIGGER = 1'b0;
    defparam count_pad_11.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_12 (.PACKAGE_PIN(count[12]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_12));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_12.PIN_TYPE = 6'b011001;
    defparam count_pad_12.PULLUP = 1'b0;
    defparam count_pad_12.NEG_TRIGGER = 1'b0;
    defparam count_pad_12.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_13 (.PACKAGE_PIN(count[13]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_13));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_13.PIN_TYPE = 6'b011001;
    defparam count_pad_13.PULLUP = 1'b0;
    defparam count_pad_13.NEG_TRIGGER = 1'b0;
    defparam count_pad_13.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_14 (.PACKAGE_PIN(count[14]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_14));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_14.PIN_TYPE = 6'b011001;
    defparam count_pad_14.PULLUP = 1'b0;
    defparam count_pad_14.NEG_TRIGGER = 1'b0;
    defparam count_pad_14.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_15 (.PACKAGE_PIN(count[15]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_15));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_15.PIN_TYPE = 6'b011001;
    defparam count_pad_15.PULLUP = 1'b0;
    defparam count_pad_15.NEG_TRIGGER = 1'b0;
    defparam count_pad_15.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_16 (.PACKAGE_PIN(count[16]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_16));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_16.PIN_TYPE = 6'b011001;
    defparam count_pad_16.PULLUP = 1'b0;
    defparam count_pad_16.NEG_TRIGGER = 1'b0;
    defparam count_pad_16.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_17 (.PACKAGE_PIN(count[17]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_17));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_17.PIN_TYPE = 6'b011001;
    defparam count_pad_17.PULLUP = 1'b0;
    defparam count_pad_17.NEG_TRIGGER = 1'b0;
    defparam count_pad_17.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_18 (.PACKAGE_PIN(count[18]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_18));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_18.PIN_TYPE = 6'b011001;
    defparam count_pad_18.PULLUP = 1'b0;
    defparam count_pad_18.NEG_TRIGGER = 1'b0;
    defparam count_pad_18.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_19 (.PACKAGE_PIN(count[19]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_19));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_19.PIN_TYPE = 6'b011001;
    defparam count_pad_19.PULLUP = 1'b0;
    defparam count_pad_19.NEG_TRIGGER = 1'b0;
    defparam count_pad_19.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_20 (.PACKAGE_PIN(count[20]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_20));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_20.PIN_TYPE = 6'b011001;
    defparam count_pad_20.PULLUP = 1'b0;
    defparam count_pad_20.NEG_TRIGGER = 1'b0;
    defparam count_pad_20.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_21 (.PACKAGE_PIN(count[21]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_21));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_21.PIN_TYPE = 6'b011001;
    defparam count_pad_21.PULLUP = 1'b0;
    defparam count_pad_21.NEG_TRIGGER = 1'b0;
    defparam count_pad_21.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_22 (.PACKAGE_PIN(count[22]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_22));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_22.PIN_TYPE = 6'b011001;
    defparam count_pad_22.PULLUP = 1'b0;
    defparam count_pad_22.NEG_TRIGGER = 1'b0;
    defparam count_pad_22.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_23 (.PACKAGE_PIN(count[23]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_23));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_23.PIN_TYPE = 6'b011001;
    defparam count_pad_23.PULLUP = 1'b0;
    defparam count_pad_23.NEG_TRIGGER = 1'b0;
    defparam count_pad_23.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_24 (.PACKAGE_PIN(count[24]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_24));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_24.PIN_TYPE = 6'b011001;
    defparam count_pad_24.PULLUP = 1'b0;
    defparam count_pad_24.NEG_TRIGGER = 1'b0;
    defparam count_pad_24.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_25 (.PACKAGE_PIN(count[25]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_25));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_25.PIN_TYPE = 6'b011001;
    defparam count_pad_25.PULLUP = 1'b0;
    defparam count_pad_25.NEG_TRIGGER = 1'b0;
    defparam count_pad_25.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_26 (.PACKAGE_PIN(count[26]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_26));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_26.PIN_TYPE = 6'b011001;
    defparam count_pad_26.PULLUP = 1'b0;
    defparam count_pad_26.NEG_TRIGGER = 1'b0;
    defparam count_pad_26.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_27 (.PACKAGE_PIN(count[27]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_27));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_27.PIN_TYPE = 6'b011001;
    defparam count_pad_27.PULLUP = 1'b0;
    defparam count_pad_27.NEG_TRIGGER = 1'b0;
    defparam count_pad_27.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_28 (.PACKAGE_PIN(count[28]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_28));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_28.PIN_TYPE = 6'b011001;
    defparam count_pad_28.PULLUP = 1'b0;
    defparam count_pad_28.NEG_TRIGGER = 1'b0;
    defparam count_pad_28.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_29 (.PACKAGE_PIN(count[29]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_29));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_29.PIN_TYPE = 6'b011001;
    defparam count_pad_29.PULLUP = 1'b0;
    defparam count_pad_29.NEG_TRIGGER = 1'b0;
    defparam count_pad_29.IO_STANDARD = "SB_LVCMOS";
    SB_IO count_pad_30 (.PACKAGE_PIN(count[30]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_30));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_30.PIN_TYPE = 6'b011001;
    defparam count_pad_30.PULLUP = 1'b0;
    defparam count_pad_30.NEG_TRIGGER = 1'b0;
    defparam count_pad_30.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO clk_pad (.PACKAGE_PIN(clk), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(clk_c));   // quad.v(4[9:12])
    defparam clk_pad.PIN_TYPE = 6'b000001;
    defparam clk_pad.PULLUP = 1'b0;
    defparam clk_pad.NEG_TRIGGER = 1'b0;
    defparam clk_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF quadB_delayed_16 (.Q(quadB_delayed), .C(clk_c), .D(quadB_c));   // quad.v(11[10:48])
    SB_IO count_pad_31 (.PACKAGE_PIN(count[31]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(count_c_31));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam count_pad_31.PIN_TYPE = 6'b011001;
    defparam count_pad_31.PULLUP = 1'b0;
    defparam count_pad_31.NEG_TRIGGER = 1'b0;
    defparam count_pad_31.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_66_17 (.CI(n434), .I0(count_c_15), .I1(n323), .CO(n435));
    SB_DFFE count_i0_i3 (.Q(count_c_2), .C(clk_c), .E(count_enable), .D(n382));   // quad.v(16[10] 22[6])
    SB_LUT4 add_66_16_lut (.I0(GND_net), .I1(count_c_14), .I2(n323), .I3(n433), 
            .O(n370)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_16 (.CI(n433), .I0(count_c_14), .I1(n323), .CO(n434));
    SB_LUT4 add_66_15_lut (.I0(GND_net), .I1(count_c_13), .I2(n323), .I3(n432), 
            .O(n371)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_15 (.CI(n432), .I0(count_c_13), .I1(n323), .CO(n433));
    SB_LUT4 add_66_14_lut (.I0(GND_net), .I1(count_c_12), .I2(n323), .I3(n431), 
            .O(n372)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_14 (.CI(n431), .I0(count_c_12), .I1(n323), .CO(n432));
    SB_LUT4 add_66_13_lut (.I0(GND_net), .I1(count_c_11), .I2(n323), .I3(n430), 
            .O(n373)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_13 (.CI(n430), .I0(count_c_11), .I1(n323), .CO(n431));
    SB_LUT4 add_66_12_lut (.I0(GND_net), .I1(count_c_10), .I2(n323), .I3(n429), 
            .O(n374)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_12 (.CI(n429), .I0(count_c_10), .I1(n323), .CO(n430));
    SB_LUT4 add_66_11_lut (.I0(GND_net), .I1(count_c_9), .I2(n323), .I3(n428), 
            .O(n375)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_11 (.CI(n428), .I0(count_c_9), .I1(n323), .CO(n429));
    SB_LUT4 add_66_10_lut (.I0(GND_net), .I1(count_c_8), .I2(n323), .I3(n427), 
            .O(n376)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_10 (.CI(n427), .I0(count_c_8), .I1(n323), .CO(n428));
    SB_LUT4 add_66_9_lut (.I0(GND_net), .I1(count_c_7), .I2(n323), .I3(n426), 
            .O(n377)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_9 (.CI(n426), .I0(count_c_7), .I1(n323), .CO(n427));
    SB_LUT4 add_66_8_lut (.I0(GND_net), .I1(count_c_6), .I2(n323), .I3(n425), 
            .O(n378)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_8 (.CI(n425), .I0(count_c_6), .I1(n323), .CO(n426));
    SB_LUT4 add_66_7_lut (.I0(GND_net), .I1(count_c_5), .I2(n323), .I3(n424), 
            .O(n379)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_7 (.CI(n424), .I0(count_c_5), .I1(n323), .CO(n425));
    SB_LUT4 add_66_6_lut (.I0(GND_net), .I1(count_c_4), .I2(n323), .I3(n423), 
            .O(n380)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_6 (.CI(n423), .I0(count_c_4), .I1(n323), .CO(n424));
    SB_LUT4 add_66_5_lut (.I0(GND_net), .I1(count_c_3), .I2(n323), .I3(n422), 
            .O(n381)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_5 (.CI(n422), .I0(count_c_3), .I1(n323), .CO(n423));
    SB_LUT4 add_66_4_lut (.I0(GND_net), .I1(count_c_2), .I2(n323), .I3(n421), 
            .O(n382)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_4 (.CI(n421), .I0(count_c_2), .I1(n323), .CO(n422));
    SB_LUT4 add_66_3_lut (.I0(GND_net), .I1(count_c_1), .I2(n323), .I3(n420), 
            .O(n383)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_3 (.CI(n420), .I0(count_c_1), .I1(n323), .CO(n421));
    SB_LUT4 add_66_2_lut (.I0(GND_net), .I1(count_c_0), .I2(count_direction), 
            .I3(n419), .O(n384)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_2 (.CI(n419), .I0(count_c_0), .I1(count_direction), 
            .CO(n420));
    SB_DFF quadA_delayed_15 (.Q(quadA_delayed), .C(clk_c), .D(quadA_c));   // quad.v(10[10:48])
    SB_DFFE count_i0_i4 (.Q(count_c_3), .C(clk_c), .E(count_enable), .D(n381));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i5 (.Q(count_c_4), .C(clk_c), .E(count_enable), .D(n380));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i6 (.Q(count_c_5), .C(clk_c), .E(count_enable), .D(n379));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i7 (.Q(count_c_6), .C(clk_c), .E(count_enable), .D(n378));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i8 (.Q(count_c_7), .C(clk_c), .E(count_enable), .D(n377));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i9 (.Q(count_c_8), .C(clk_c), .E(count_enable), .D(n376));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i10 (.Q(count_c_9), .C(clk_c), .E(count_enable), 
            .D(n375));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i11 (.Q(count_c_10), .C(clk_c), .E(count_enable), 
            .D(n374));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i12 (.Q(count_c_11), .C(clk_c), .E(count_enable), 
            .D(n373));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i13 (.Q(count_c_12), .C(clk_c), .E(count_enable), 
            .D(n372));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i14 (.Q(count_c_13), .C(clk_c), .E(count_enable), 
            .D(n371));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i15 (.Q(count_c_14), .C(clk_c), .E(count_enable), 
            .D(n370));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i16 (.Q(count_c_15), .C(clk_c), .E(count_enable), 
            .D(n369));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i17 (.Q(count_c_16), .C(clk_c), .E(count_enable), 
            .D(n368));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i18 (.Q(count_c_17), .C(clk_c), .E(count_enable), 
            .D(n367));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i19 (.Q(count_c_18), .C(clk_c), .E(count_enable), 
            .D(n366));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i20 (.Q(count_c_19), .C(clk_c), .E(count_enable), 
            .D(n365));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i21 (.Q(count_c_20), .C(clk_c), .E(count_enable), 
            .D(n364));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i22 (.Q(count_c_21), .C(clk_c), .E(count_enable), 
            .D(n363));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i23 (.Q(count_c_22), .C(clk_c), .E(count_enable), 
            .D(n362));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i24 (.Q(count_c_23), .C(clk_c), .E(count_enable), 
            .D(n361));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i25 (.Q(count_c_24), .C(clk_c), .E(count_enable), 
            .D(n360));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i26 (.Q(count_c_25), .C(clk_c), .E(count_enable), 
            .D(n359));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i27 (.Q(count_c_26), .C(clk_c), .E(count_enable), 
            .D(n358));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i28 (.Q(count_c_27), .C(clk_c), .E(count_enable), 
            .D(n357));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i29 (.Q(count_c_28), .C(clk_c), .E(count_enable), 
            .D(n356));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i30 (.Q(count_c_29), .C(clk_c), .E(count_enable), 
            .D(n355));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i31 (.Q(count_c_30), .C(clk_c), .E(count_enable), 
            .D(n354));   // quad.v(16[10] 22[6])
    SB_DFFE count_i0_i32 (.Q(count_c_31), .C(clk_c), .E(count_enable), 
            .D(n353));   // quad.v(16[10] 22[6])
    SB_CARRY add_66_1 (.CI(GND_net), .I0(n323), .I1(n323), .CO(n419));
    SB_LUT4 add_66_17_lut (.I0(GND_net), .I1(count_c_15), .I2(n323), .I3(n434), 
            .O(n369)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_18 (.CI(n435), .I0(count_c_16), .I1(n323), .CO(n436));
    SB_LUT4 add_66_18_lut (.I0(GND_net), .I1(count_c_16), .I2(n323), .I3(n435), 
            .O(n368)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_19 (.CI(n436), .I0(count_c_17), .I1(n323), .CO(n437));
    SB_LUT4 add_66_19_lut (.I0(GND_net), .I1(count_c_17), .I2(n323), .I3(n436), 
            .O(n367)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_20 (.CI(n437), .I0(count_c_18), .I1(n323), .CO(n438));
    SB_LUT4 add_66_20_lut (.I0(GND_net), .I1(count_c_18), .I2(n323), .I3(n437), 
            .O(n366)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_21 (.CI(n438), .I0(count_c_19), .I1(n323), .CO(n439));
    SB_LUT4 add_66_21_lut (.I0(GND_net), .I1(count_c_19), .I2(n323), .I3(n438), 
            .O(n365)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_22 (.CI(n439), .I0(count_c_20), .I1(n323), .CO(n440));
    SB_LUT4 add_66_22_lut (.I0(GND_net), .I1(count_c_20), .I2(n323), .I3(n439), 
            .O(n364)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_23 (.CI(n440), .I0(count_c_21), .I1(n323), .CO(n441));
    SB_LUT4 add_66_23_lut (.I0(GND_net), .I1(count_c_21), .I2(n323), .I3(n440), 
            .O(n363)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_24 (.CI(n441), .I0(count_c_22), .I1(n323), .CO(n442));
    SB_LUT4 add_66_24_lut (.I0(GND_net), .I1(count_c_22), .I2(n323), .I3(n441), 
            .O(n362)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_25 (.CI(n442), .I0(count_c_23), .I1(n323), .CO(n443));
    SB_LUT4 add_66_25_lut (.I0(GND_net), .I1(count_c_23), .I2(n323), .I3(n442), 
            .O(n361)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_26 (.CI(n443), .I0(count_c_24), .I1(n323), .CO(n444));
    SB_LUT4 add_66_26_lut (.I0(GND_net), .I1(count_c_24), .I2(n323), .I3(n443), 
            .O(n360)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_27 (.CI(n444), .I0(count_c_25), .I1(n323), .CO(n445));
    SB_LUT4 add_66_27_lut (.I0(GND_net), .I1(count_c_25), .I2(n323), .I3(n444), 
            .O(n359)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_28 (.CI(n445), .I0(count_c_26), .I1(n323), .CO(n446));
    SB_LUT4 add_66_28_lut (.I0(GND_net), .I1(count_c_26), .I2(n323), .I3(n445), 
            .O(n358)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_29 (.CI(n446), .I0(count_c_27), .I1(n323), .CO(n447));
    SB_LUT4 add_66_29_lut (.I0(GND_net), .I1(count_c_27), .I2(n323), .I3(n446), 
            .O(n357)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_30 (.CI(n447), .I0(count_c_28), .I1(n323), .CO(n448));
    SB_LUT4 add_66_30_lut (.I0(GND_net), .I1(count_c_28), .I2(n323), .I3(n447), 
            .O(n356)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_31 (.CI(n448), .I0(count_c_29), .I1(n323), .CO(n449));
    SB_LUT4 add_66_31_lut (.I0(GND_net), .I1(count_c_29), .I2(n323), .I3(n448), 
            .O(n355)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_66_32 (.CI(n449), .I0(count_c_30), .I1(n323), .CO(n450));
    SB_LUT4 add_66_32_lut (.I0(GND_net), .I1(count_c_30), .I2(n323), .I3(n449), 
            .O(n354)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_66_33_lut (.I0(GND_net), .I1(count_c_31), .I2(n323), .I3(n450), 
            .O(n353)) /* synthesis syn_instantiated=1 */ ;
    defparam add_66_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(quadA_c), .I1(quadB_delayed), .I2(GND_net), 
            .I3(GND_net), .O(count_direction));   // quad.v(13[23:68])
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    
endmodule
