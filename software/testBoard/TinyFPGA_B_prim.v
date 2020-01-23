// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu Jan 23 15:50:55 2020
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
    output SCL;   // verilog/TinyFPGA_B.v(21[10:13])
    input SDA /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:12])
    output INLC;   // verilog/TinyFPGA_B.v(23[10:14])
    output INHC;   // verilog/TinyFPGA_B.v(24[10:14])
    output INLB;   // verilog/TinyFPGA_B.v(25[10:14])
    output INHB;   // verilog/TinyFPGA_B.v(26[10:14])
    output INLA;   // verilog/TinyFPGA_B.v(27[10:14])
    output INHA;   // verilog/TinyFPGA_B.v(28[10:14])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, INHA_c_0;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n1278, n1277;
    wire [8:0]\half_duty[0] ;   // vhdl/pwm.vhd(55[11:20])
    
    wire n1259, n1276, n684, n6, n1265, n7, n8, n9, n10, n11, 
        n12, n13, n14, n1269, n15, n16, n17, n18, n19, n20, 
        n21, n22, n23, n24, n25, n26, n1272, n1411, n1258, 
        n1410, n1260, n110, n111, n112, n113, n114, n115, n116, 
        n117, n118, n119, n120, n121, n122, n123, n124, n125, 
        n126, n127, n128, n129, n130, n131, n132, n133, n134, 
        n135, n1270, n1266, n1275, n1268, n1257, n1267, n1264, 
        n1274, n1273, n1271, n1261, n1262, n700, n699, n698, 
        n697, n696, n1281, n1280, n1263, n1279;
    
    VCC i2 (.Y(VCC_net));
    \pwm(16000000,20000,4000000,23,1)  PWM (.CLK_c(CLK_c), .\half_duty[0][5] (\half_duty[0] [5]), 
            .GND_net(GND_net), .\half_duty[0][3] (\half_duty[0] [3]), .\half_duty[0][2] (\half_duty[0] [2]), 
            .\half_duty[0][1] (\half_duty[0] [1]), .\half_duty[0][0] (\half_duty[0] [0]), 
            .n684(n684), .VCC_net(VCC_net), .INHA_c_0(INHA_c_0), .n700(n700), 
            .n699(n699), .n698(n698), .n697(n697), .n696(n696));   // verilog/TinyFPGA_B.v(61[45] 67[7])
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_49__i0 (.Q(n26), .C(CLK_c), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_49_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i912_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n1410));
    defparam i912_4_lut.LUT_INIT = 16'hcf08;
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(GND_net));
    SB_LUT4 i914_3_lut (.I0(n1410), .I1(n1411), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i914_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 blink_counter_49_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[25]), 
            .I3(n1281), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i913_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n1411));
    defparam i913_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 blink_counter_49_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[24]), 
            .I3(n1280), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_26 (.CI(n1280), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n1281));
    SB_DFF blink_counter_49__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_49_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[23]), 
            .I3(n1279), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_49_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n1261), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_25 (.CI(n1279), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n1280));
    SB_LUT4 blink_counter_49_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[22]), 
            .I3(n1278), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_49_add_4_24 (.CI(n1278), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n1279));
    SB_LUT4 blink_counter_49_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(blink_counter[21]), 
            .I3(n1277), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_23 (.CI(n1277), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n1278));
    SB_CARRY blink_counter_49_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n1257));
    SB_LUT4 blink_counter_49_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(n6), 
            .I3(n1276), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_22 (.CI(n1276), .I0(GND_net), .I1(n6), 
            .CO(n1277));
    SB_LUT4 blink_counter_49_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(n7), 
            .I3(n1275), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_21 (.CI(n1275), .I0(GND_net), .I1(n7), 
            .CO(n1276));
    SB_CARRY blink_counter_49_add_4_8 (.CI(n1262), .I0(GND_net), .I1(n20), 
            .CO(n1263));
    SB_LUT4 blink_counter_49_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(n8), 
            .I3(n1274), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_20 (.CI(n1274), .I0(GND_net), .I1(n8), 
            .CO(n1275));
    SB_LUT4 blink_counter_49_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(n9), 
            .I3(n1273), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_19 (.CI(n1273), .I0(GND_net), .I1(n9), 
            .CO(n1274));
    SB_LUT4 blink_counter_49_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(n10), 
            .I3(n1272), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_18 (.CI(n1272), .I0(GND_net), .I1(n10), 
            .CO(n1273));
    SB_LUT4 blink_counter_49_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(n11), 
            .I3(n1271), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_17 (.CI(n1271), .I0(GND_net), .I1(n11), 
            .CO(n1272));
    SB_DFF blink_counter_49__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i20 (.Q(n6), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i16 (.Q(n10), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i12 (.Q(n14), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i7 (.Q(n19), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_49__i1 (.Q(n25), .C(CLK_c), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_49_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(n12), 
            .I3(n1270), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_16 (.CI(n1270), .I0(GND_net), .I1(n12), 
            .CO(n1271));
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
    SB_IO SCL_pad (.PACKAGE_PIN(SCL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam SCL_pad.PIN_TYPE = 6'b011001;
    defparam SCL_pad.PULLUP = 1'b0;
    defparam SCL_pad.NEG_TRIGGER = 1'b0;
    defparam SCL_pad.IO_STANDARD = "SB_LVCMOS";
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
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(VCC_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHA_c_0)) /* synthesis IO_FF_OUT=TRUE */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_49_add_4_3 (.CI(n1257), .I0(GND_net), .I1(n25), 
            .CO(n1258));
    SB_LUT4 blink_counter_49_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n1257), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_49_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n1260), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_4 (.CI(n1258), .I0(GND_net), .I1(n24), 
            .CO(n1259));
    SB_LUT4 blink_counter_49_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n1258), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_5 (.CI(n1259), .I0(GND_net), .I1(n23), 
            .CO(n1260));
    SB_LUT4 blink_counter_49_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n1259), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_6 (.CI(n1260), .I0(GND_net), .I1(n22), 
            .CO(n1261));
    SB_LUT4 i569_2_lut (.I0(\half_duty[0] [1]), .I1(n684), .I2(GND_net), 
            .I3(GND_net), .O(n700));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i569_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i566_2_lut (.I0(\half_duty[0] [2]), .I1(n684), .I2(GND_net), 
            .I3(GND_net), .O(n699));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i566_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i565_2_lut (.I0(\half_duty[0] [3]), .I1(n684), .I2(GND_net), 
            .I3(GND_net), .O(n698));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i565_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i533_2_lut (.I0(\half_duty[0] [5]), .I1(n684), .I2(GND_net), 
            .I3(GND_net), .O(n697));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i533_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 blink_counter_49_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(n13), 
            .I3(n1269), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_15 (.CI(n1269), .I0(GND_net), .I1(n13), 
            .CO(n1270));
    SB_LUT4 blink_counter_49_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(n14), 
            .I3(n1268), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_14 (.CI(n1268), .I0(GND_net), .I1(n14), 
            .CO(n1269));
    SB_LUT4 blink_counter_49_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(n15), 
            .I3(n1267), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i564_2_lut (.I0(\half_duty[0] [0]), .I1(n684), .I2(GND_net), 
            .I3(GND_net), .O(n696));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i564_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY blink_counter_49_add_4_13 (.CI(n1267), .I0(GND_net), .I1(n15), 
            .CO(n1268));
    SB_LUT4 blink_counter_49_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(n16), 
            .I3(n1266), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_12 (.CI(n1266), .I0(GND_net), .I1(n16), 
            .CO(n1267));
    SB_LUT4 blink_counter_49_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(n17), 
            .I3(n1265), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_11 (.CI(n1265), .I0(GND_net), .I1(n17), 
            .CO(n1266));
    SB_LUT4 blink_counter_49_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(n18), 
            .I3(n1264), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_10 (.CI(n1264), .I0(GND_net), .I1(n18), 
            .CO(n1265));
    SB_LUT4 blink_counter_49_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n1263), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_49_add_4_9 (.CI(n1263), .I0(GND_net), .I1(n19), 
            .CO(n1264));
    SB_CARRY blink_counter_49_add_4_7 (.CI(n1261), .I0(GND_net), .I1(n21), 
            .CO(n1262));
    SB_LUT4 blink_counter_49_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n1262), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_49_add_4_8_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module \pwm(16000000,20000,4000000,23,1) 
//

module \pwm(16000000,20000,4000000,23,1)  (CLK_c, \half_duty[0][5] , GND_net, 
            \half_duty[0][3] , \half_duty[0][2] , \half_duty[0][1] , \half_duty[0][0] , 
            n684, VCC_net, INHA_c_0, n700, n699, n698, n697, n696);
    input CLK_c;
    output \half_duty[0][5] ;
    input GND_net;
    output \half_duty[0][3] ;
    output \half_duty[0][2] ;
    output \half_duty[0][1] ;
    output \half_duty[0][0] ;
    output n684;
    input VCC_net;
    output INHA_c_0;
    input n700;
    input n699;
    input n698;
    input n697;
    input n696;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire [2:0]n118;
    
    wire n653;
    wire [2:0]\pause_counter[0] ;   // vhdl/pwm.vhd(52[11:24])
    
    wire n694;
    wire [9:0]\count[0] ;   // vhdl/pwm.vhd(51[11:16])
    wire [10:0]pwm_out_0__N_43;
    
    wire n11;
    wire [9:0]n45;
    
    wire n1284, pwm_out_0__N_55, n4, n1400, n1285, n1370, n1402, 
        n1283, n12, n18, n647, n1404, n1282, n993, n657;
    wire [2:0]pause_counter_0__2__N_102;
    
    wire n193, n19, n640, n1406, n13, n14, n3, n16, n12_adj_126, 
        n1286, n1287, n1288, n1289, n1290;
    
    SB_DFFESR pause_counter_0__i2 (.Q(\pause_counter[0] [2]), .C(CLK_c), 
            .E(n653), .D(n118[2]), .R(n694));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_LUT4 i1_4_lut (.I0(\count[0] [6]), .I1(\count[0] [5]), .I2(pwm_out_0__N_43[4]), 
            .I3(\half_duty[0][5] ), .O(n11));
    defparam i1_4_lut.LUT_INIT = 16'h8114;
    SB_LUT4 count_0__50_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [3]), 
            .I3(n1284), .O(n45[3])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i732_4_lut (.I0(\half_duty[0][3] ), .I1(\half_duty[0][2] ), 
            .I2(\half_duty[0][1] ), .I3(\half_duty[0][0] ), .O(pwm_out_0__N_43[4]));
    defparam i732_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR count_0__50__i3 (.Q(\count[0] [3]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[3]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_LUT4 i902_4_lut (.I0(\half_duty[0][0] ), .I1(\count[0] [3]), .I2(\count[0] [0]), 
            .I3(n4), .O(n1400));
    defparam i902_4_lut.LUT_INIT = 16'h7bde;
    SB_CARRY count_0__50_add_4_5 (.CI(n1284), .I0(GND_net), .I1(\count[0] [3]), 
            .CO(n1285));
    SB_LUT4 i904_4_lut (.I0(\half_duty[0][5] ), .I1(n1370), .I2(\count[0] [7]), 
            .I3(pwm_out_0__N_43[4]), .O(n1402));
    defparam i904_4_lut.LUT_INIT = 16'hdefc;
    SB_LUT4 count_0__50_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [2]), 
            .I3(n1283), .O(n45[2])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY count_0__50_add_4_4 (.CI(n1283), .I0(GND_net), .I1(\count[0] [2]), 
            .CO(n1284));
    SB_LUT4 i8_3_lut (.I0(n1400), .I1(n11), .I2(n12), .I3(GND_net), 
            .O(n18));
    defparam i8_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i906_4_lut (.I0(n647), .I1(\count[0] [1]), .I2(\half_duty[0][0] ), 
            .I3(\half_duty[0][1] ), .O(n1404));
    defparam i906_4_lut.LUT_INIT = 16'hebbe;
    SB_DFFESR count_0__50__i4 (.Q(\count[0] [4]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[4]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_LUT4 count_0__50_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [1]), 
            .I3(n1282), .O(n45[1])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR count_0__50__i5 (.Q(\count[0] [5]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[5]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_DFFESR count_0__50__i0 (.Q(\count[0] [0]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[0]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_DFFESR count_0__50__i6 (.Q(\count[0] [6]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[6]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_CARRY count_0__50_add_4_3 (.CI(n1282), .I0(GND_net), .I1(\count[0] [1]), 
            .CO(n1283));
    SB_LUT4 i1_4_lut_adj_8 (.I0(n1404), .I1(n993), .I2(n18), .I3(n1402), 
            .O(n657));
    defparam i1_4_lut_adj_8.LUT_INIT = 16'h3373;
    SB_LUT4 count_0__50_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [0]), 
            .I3(VCC_net), .O(n45[0])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(\count[0] [2]), .I1(\half_duty[0][1] ), .I2(\half_duty[0][2] ), 
            .I3(\half_duty[0][0] ), .O(n1370));
    defparam i2_4_lut.LUT_INIT = 16'ha596;
    SB_LUT4 i2_4_lut_adj_9 (.I0(\half_duty[0][5] ), .I1(\count[0] [4]), 
            .I2(\count[0] [8]), .I3(pwm_out_0__N_43[4]), .O(n12));
    defparam i2_4_lut_adj_9.LUT_INIT = 16'h4830;
    SB_DFFE pwm_out_0__40 (.Q(INHA_c_0), .C(CLK_c), .E(n657), .D(n993));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFFESS pause_counter_0__i0 (.Q(\pause_counter[0] [0]), .C(CLK_c), 
            .E(n653), .D(pause_counter_0__2__N_102[0]), .S(n193));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_LUT4 i528_3_lut_3_lut (.I0(\pause_counter[0] [0]), .I1(\pause_counter[0] [1]), 
            .I2(\pause_counter[0] [2]), .I3(GND_net), .O(pause_counter_0__2__N_102[0]));   // vhdl/pwm.vhd(90[8:37])
    defparam i528_3_lut_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 i529_2_lut (.I0(n19), .I1(pwm_out_0__N_55), .I2(GND_net), 
            .I3(GND_net), .O(n993));
    defparam i529_2_lut.LUT_INIT = 16'hbbbb;
    SB_CARRY count_0__50_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(\count[0] [0]), 
            .CO(n1282));
    SB_LUT4 i1_2_lut (.I0(\count[0] [7]), .I1(\count[0] [6]), .I2(GND_net), 
            .I3(GND_net), .O(n640));   // vhdl/pwm.vhd(80[8:31])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_10 (.I0(pwm_out_0__N_55), .I1(\count[0] [9]), .I2(GND_net), 
            .I3(GND_net), .O(n647));   // vhdl/pwm.vhd(59[5] 95[12])
    defparam i1_2_lut_adj_10.LUT_INIT = 16'h7777;
    SB_LUT4 i908_4_lut (.I0(\count[0] [3]), .I1(\count[0] [2]), .I2(\count[0] [0]), 
            .I3(\count[0] [8]), .O(n1406));
    defparam i908_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_4_lut (.I0(\count[0] [4]), .I1(n640), .I2(\count[0] [5]), 
            .I3(\count[0] [1]), .O(n13));
    defparam i5_4_lut.LUT_INIT = 16'hfdff;
    SB_DFFESR count_0__50__i2 (.Q(\count[0] [2]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[2]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_LUT4 i530_1_lut_2_lut (.I0(n19), .I1(pwm_out_0__N_55), .I2(GND_net), 
            .I3(GND_net), .O(n193));
    defparam i530_1_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i928_2_lut_3_lut (.I0(\pause_counter[0] [0]), .I1(\pause_counter[0] [1]), 
            .I2(\pause_counter[0] [2]), .I3(GND_net), .O(pwm_out_0__N_55));   // vhdl/pwm.vhd(90[8:37])
    defparam i928_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i229_2_lut_3_lut_4_lut (.I0(\pause_counter[0] [0]), .I1(\pause_counter[0] [1]), 
            .I2(n19), .I3(pwm_out_0__N_55), .O(n694));   // vhdl/pwm.vhd(90[8:37])
    defparam i229_2_lut_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_LUT4 i1_2_lut_adj_11 (.I0(n19), .I1(pwm_out_0__N_55), .I2(GND_net), 
            .I3(GND_net), .O(n653));
    defparam i1_2_lut_adj_11.LUT_INIT = 16'h7777;
    SB_DFFESR count_0__50__i7 (.Q(\count[0] [7]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[7]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_LUT4 i7_4_lut (.I0(\half_duty[0][0] ), .I1(n14), .I2(n3), .I3(\count[0] [0]), 
            .O(n16));   // vhdl/pwm.vhd(80[8:31])
    defparam i7_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i8_4_lut (.I0(\count[0] [9]), .I1(n16), .I2(n12_adj_126), 
            .I3(\count[0] [8]), .O(n19));   // vhdl/pwm.vhd(80[8:31])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 count_0__50_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [4]), 
            .I3(n1285), .O(n45[4])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY count_0__50_add_4_7 (.CI(n1286), .I0(GND_net), .I1(\count[0] [5]), 
            .CO(n1287));
    SB_LUT4 count_0__50_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [5]), 
            .I3(n1286), .O(n45[5])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_12 (.I0(\half_duty[0][2] ), .I1(\half_duty[0][3] ), 
            .I2(\half_duty[0][1] ), .I3(\half_duty[0][0] ), .O(n4));
    defparam i1_4_lut_adj_12.LUT_INIT = 16'h3336;
    SB_DFF half_duty_0___i2 (.Q(\half_duty[0][1] ), .C(CLK_c), .D(n700));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_LUT4 i74_3_lut (.I0(\pause_counter[0] [2]), .I1(\pause_counter[0] [1]), 
            .I2(\pause_counter[0] [0]), .I3(GND_net), .O(n118[2]));   // vhdl/pwm.vhd(89[25:41])
    defparam i74_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFF half_duty_0___i3 (.Q(\half_duty[0][2] ), .C(CLK_c), .D(n699));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFF half_duty_0___i4 (.Q(\half_duty[0][3] ), .C(CLK_c), .D(n698));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFF half_duty_0___i6 (.Q(\half_duty[0][5] ), .C(CLK_c), .D(n697));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFF half_duty_0___i1 (.Q(\half_duty[0][0] ), .C(CLK_c), .D(n696));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFFESR count_0__50__i8 (.Q(\count[0] [8]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[8]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_DFFESR pause_counter_0__i1 (.Q(\pause_counter[0] [1]), .C(CLK_c), 
            .E(n653), .D(n118[1]), .R(n694));   // vhdl/pwm.vhd(59[5] 95[12])
    SB_DFFESR count_0__50__i9 (.Q(\count[0] [9]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[9]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_DFFESR count_0__50__i1 (.Q(\count[0] [1]), .C(CLK_c), .E(pwm_out_0__N_55), 
            .D(n45[1]), .R(n684));   // vhdl/pwm.vhd(77[18:26])
    SB_CARRY count_0__50_add_4_8 (.CI(n1287), .I0(GND_net), .I1(\count[0] [6]), 
            .CO(n1288));
    SB_LUT4 count_0__50_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [6]), 
            .I3(n1287), .O(n45[6])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY count_0__50_add_4_9 (.CI(n1288), .I0(GND_net), .I1(\count[0] [7]), 
            .CO(n1289));
    SB_LUT4 count_0__50_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [7]), 
            .I3(n1288), .O(n45[7])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY count_0__50_add_4_10 (.CI(n1289), .I0(GND_net), .I1(\count[0] [8]), 
            .CO(n1290));
    SB_LUT4 count_0__50_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [8]), 
            .I3(n1289), .O(n45[8])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 count_0__50_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(\count[0] [9]), 
            .I3(n1290), .O(n45[9])) /* synthesis syn_instantiated=1 */ ;
    defparam count_0__50_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_4_lut (.I0(\half_duty[0][1] ), .I1(\half_duty[0][5] ), .I2(\count[0] [1]), 
            .I3(\count[0] [5]), .O(n12_adj_126));   // vhdl/pwm.vhd(80[8:31])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_13 (.I0(\half_duty[0][3] ), .I1(\count[0] [4]), 
            .I2(\count[0] [3]), .I3(n640), .O(n14));   // vhdl/pwm.vhd(80[8:31])
    defparam i5_4_lut_adj_13.LUT_INIT = 16'hffde;
    SB_LUT4 half_duty_0__8__I_0_46_i3_2_lut (.I0(\half_duty[0][2] ), .I1(\count[0] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n3));   // vhdl/pwm.vhd(80[8:31])
    defparam half_duty_0__8__I_0_46_i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i931_3_lut_4_lut (.I0(pwm_out_0__N_55), .I1(\count[0] [9]), 
            .I2(n13), .I3(n1406), .O(n684));   // vhdl/pwm.vhd(73[8:47])
    defparam i931_3_lut_4_lut.LUT_INIT = 16'h0800;
    SB_CARRY count_0__50_add_4_6 (.CI(n1285), .I0(GND_net), .I1(\count[0] [4]), 
            .CO(n1286));
    SB_LUT4 i67_2_lut (.I0(\pause_counter[0] [1]), .I1(\pause_counter[0] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n118[1]));   // vhdl/pwm.vhd(89[25:41])
    defparam i67_2_lut.LUT_INIT = 16'h6666;
    
endmodule
