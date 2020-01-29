// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jan 29 18:30:34 2020
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, LED, USBPU, ENCODER0_A, ENCODER0_B, ENCODER1_A, 
            ENCODER1_B, HALL1, HALL2, HALL3, FAULT_N, NEOPXL, DE, 
            TX, RX, CS_CLK, CS, CS_MISO, SCL, SDA, INLC, INHC, 
            INLB, INHB, INLA, INHA) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
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
    
    wire CLK_N /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, LED_c, n11;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n166, n164, n162, n160, n158, scl, n4, n8, n168, 
        n170, n172, sda_enable, scl_enable, rw;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n10, n174, n1928;
    wire [7:0]state_7__N_146;
    
    wire n4_adj_358, n3917, n471, n3916, n3915;
    wire [7:0]state_7__N_162;
    
    wire n3914, n3913, n3912, n3911, n3910, n1927, n1926, n4495, 
        n1921, n3909, n3908, n3907, n11_adj_359, n10_adj_360, n3906, 
        n4_adj_361, n6, n7, n8_adj_362, n9, n10_adj_363, n11_adj_364, 
        n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
        n22, n23, n24, n25, n26, n1800, n110, n111, n112, 
        n113, n114, n115, n116, n117, n118, n119, n120, n121, 
        n122, n123, n124, n125, n126, n127, n128, n129, n130, 
        n131, n132, n133, n134, n135, n3595, n6_adj_365, n8_adj_366, 
        n3587, n3585, n4733, n3581, n22_adj_367, n5, n5421, n5420, 
        n15_adj_368, n1805, n5454, n1935, n1814, n1932, n1931, 
        n5461, n5458, n3930, n3929, n3928, n3927, n3926, n3925, 
        n1930, n3924, n3923, n3922, n3921, n4_adj_369, n3920, 
        n3919, n1929, n3918, n5361;
    
    VCC i2 (.Y(VCC_net));
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(state_7__N_162[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_227__i0 (.Q(n26), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_227_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n3906), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_3 (.CI(n3906), .I0(GND_net), .I1(n25), 
            .CO(n3907));
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
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_227_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n3906));
    SB_LUT4 i3_4_lut (.I0(n11), .I1(n5361), .I2(state_7__N_162[3]), .I3(saved_addr[0]), 
            .O(n8));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i3_4_lut.LUT_INIT = 16'hc8cc;
    SB_LUT4 i28_4_lut (.I0(n5461), .I1(state[1]), .I2(n471), .I3(n8), 
            .O(n15_adj_368));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i28_4_lut.LUT_INIT = 16'hc5cf;
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
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_N));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i4591_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n5421));
    defparam i4591_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i4590_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n5420));
    defparam i4590_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i4592_3_lut (.I0(n5420), .I1(n5421), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i4592_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i1539_4_lut (.I0(state_7__N_162[3]), .I1(n158), .I2(n3585), 
            .I3(n1805), .O(n1926));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1539_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1540_4_lut (.I0(state_7__N_162[3]), .I1(n160), .I2(n3585), 
            .I3(n1800), .O(n1927));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1540_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1541_4_lut (.I0(state_7__N_162[3]), .I1(n162), .I2(n4_adj_361), 
            .I3(n1805), .O(n1928));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1541_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1542_4_lut (.I0(state_7__N_162[3]), .I1(n164), .I2(n4_adj_361), 
            .I3(n1800), .O(n1929));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1542_4_lut.LUT_INIT = 16'hccca;
    SB_DFF blink_counter_227__i1 (.Q(n25), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i1543_4_lut (.I0(state_7__N_162[3]), .I1(n166), .I2(n4), .I3(n1805), 
            .O(n1930));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1543_4_lut.LUT_INIT = 16'hccca;
    SB_DFF blink_counter_227__i2 (.Q(n24), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i3 (.Q(n23), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i4 (.Q(n22), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i5 (.Q(n21), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i6 (.Q(n20), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i7 (.Q(n19), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i8 (.Q(n18), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i9 (.Q(n17), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i10 (.Q(n16), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i11 (.Q(n15), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i12 (.Q(n14), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i13 (.Q(n13), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i14 (.Q(n12), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i15 (.Q(n11_adj_364), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i16 (.Q(n10_adj_363), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i17 (.Q(n9), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i18 (.Q(n8_adj_362), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i19 (.Q(n7), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i20 (.Q(n6), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_227__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i1544_4_lut (.I0(state_7__N_162[3]), .I1(n168), .I2(n4), .I3(n1800), 
            .O(n1931));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1544_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1545_4_lut (.I0(state_7__N_162[3]), .I1(n170), .I2(n4_adj_358), 
            .I3(n1805), .O(n1932));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1545_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i4641_4_lut (.I0(state_7__N_146[0]), .I1(n3587), .I2(n3581), 
            .I3(n10), .O(n5454));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i4641_4_lut.LUT_INIT = 16'hccc4;
    SB_LUT4 i16_4_lut (.I0(n5454), .I1(state[0]), .I2(n471), .I3(n6_adj_365), 
            .O(n8_adj_366));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i16_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i1548_4_lut (.I0(state_7__N_162[3]), .I1(n172), .I2(n4_adj_358), 
            .I3(n1800), .O(n1935));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1548_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut (.I0(n10_adj_360), .I1(n11), .I2(n22_adj_367), .I3(state_7__N_162[3]), 
            .O(n4_adj_369));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1_4_lut.LUT_INIT = 16'h7350;
    SB_LUT4 i1_4_lut_adj_114 (.I0(state[3]), .I1(n1814), .I2(n3595), .I3(n4733), 
            .O(n4495));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1_4_lut_adj_114.LUT_INIT = 16'hbba8;
    SB_LUT4 i1534_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(state_7__N_146[0]), 
            .I3(n174), .O(n1921));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i1534_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i4649_3_lut_4_lut (.I0(state[0]), .I1(state[1]), .I2(state[2]), 
            .I3(state[3]), .O(n5461));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i4649_3_lut_4_lut.LUT_INIT = 16'hfff9;
    SB_LUT4 i13_4_lut (.I0(n5458), .I1(state[2]), .I2(n471), .I3(n11_adj_359), 
            .O(n5));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i13_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 blink_counter_227_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n3930), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_27_lut.LUT_INIT = 16'hC33C;
    GND i1 (.Y(GND_net));
    SB_LUT4 blink_counter_227_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n3929), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_26 (.CI(n3929), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n3930));
    SB_LUT4 blink_counter_227_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n3928), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_25 (.CI(n3928), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n3929));
    SB_LUT4 blink_counter_227_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n3927), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_24 (.CI(n3927), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n3928));
    SB_LUT4 blink_counter_227_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n3926), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_23 (.CI(n3926), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n3927));
    SB_LUT4 blink_counter_227_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n3925), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_22 (.CI(n3925), .I0(GND_net), .I1(n6), 
            .CO(n3926));
    SB_LUT4 blink_counter_227_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n3924), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_21 (.CI(n3924), .I0(GND_net), .I1(n7), 
            .CO(n3925));
    SB_LUT4 blink_counter_227_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_362), .I3(n3923), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_20 (.CI(n3923), .I0(GND_net), .I1(n8_adj_362), 
            .CO(n3924));
    SB_LUT4 blink_counter_227_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n3922), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_19 (.CI(n3922), .I0(GND_net), .I1(n9), 
            .CO(n3923));
    SB_LUT4 blink_counter_227_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_363), .I3(n3921), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_18 (.CI(n3921), .I0(GND_net), .I1(n10_adj_363), 
            .CO(n3922));
    SB_LUT4 blink_counter_227_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11_adj_364), .I3(n3920), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_17 (.CI(n3920), .I0(GND_net), .I1(n11_adj_364), 
            .CO(n3921));
    SB_LUT4 blink_counter_227_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n3919), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_16 (.CI(n3919), .I0(GND_net), .I1(n12), 
            .CO(n3920));
    SB_LUT4 blink_counter_227_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n3918), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_15 (.CI(n3918), .I0(GND_net), .I1(n13), 
            .CO(n3919));
    SB_LUT4 blink_counter_227_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n3917), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_14 (.CI(n3917), .I0(GND_net), .I1(n14), 
            .CO(n3918));
    SB_LUT4 blink_counter_227_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n3916), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_13 (.CI(n3916), .I0(GND_net), .I1(n15), 
            .CO(n3917));
    SB_LUT4 blink_counter_227_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n3915), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_12 (.CI(n3915), .I0(GND_net), .I1(n16), 
            .CO(n3916));
    SB_LUT4 blink_counter_227_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n3914), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_11 (.CI(n3914), .I0(GND_net), .I1(n17), 
            .CO(n3915));
    SB_LUT4 blink_counter_227_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n3913), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_10 (.CI(n3913), .I0(GND_net), .I1(n18), 
            .CO(n3914));
    SB_LUT4 blink_counter_227_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n3912), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_9 (.CI(n3912), .I0(GND_net), .I1(n19), 
            .CO(n3913));
    SB_LUT4 blink_counter_227_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n3911), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_8 (.CI(n3911), .I0(GND_net), .I1(n20), 
            .CO(n3912));
    SB_LUT4 blink_counter_227_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n3910), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_7 (.CI(n3910), .I0(GND_net), .I1(n21), 
            .CO(n3911));
    SB_LUT4 blink_counter_227_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n3909), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_6 (.CI(n3909), .I0(GND_net), .I1(n22), 
            .CO(n3910));
    SB_LUT4 blink_counter_227_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n3908), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_5 (.CI(n3908), .I0(GND_net), .I1(n23), 
            .CO(n3909));
    SB_LUT4 blink_counter_227_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n3907), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_227_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_227_add_4_4 (.CI(n3907), .I0(GND_net), .I1(n24), 
            .CO(n3908));
    EEPROM eeprom (.GND_net(GND_net), .VCC_net(VCC_net), .CLK_N_keep(CLK_N), 
           .rw(rw), .scl_enable(scl_enable), .n1927(n1927), .data({n158, 
           n160, n162, n164, n166, n168, n170, n172}), .n1926(n1926), 
           .\state[2] (state[2]), .\state[3] (state[3]), .n4(n4_adj_369), 
           .n4733(n4733), .n15(n15_adj_368), .\state[1] (state[1]), .n1814(n1814), 
           .n3595(n3595), .n471(n471), .\state[0] (state[0]), .ready_N_228(n174), 
           .n4_adj_6(n4_adj_358), .n10(n10), .n11(n11), .n10_adj_7(n10_adj_360), 
           .n6(n6_adj_365), .n3585(n3585), .\state_7__N_162[3] (state_7__N_162[3]), 
           .n22(n22_adj_367), .n4_adj_8(n4_adj_361), .n5(n5), .n1921(n1921), 
           .\saved_addr[0] (saved_addr[0]), .n4495(n4495), .n1935(n1935), 
           .n8(n8_adj_366), .n4_adj_9(n4), .n5361(n5361), .sda_enable(sda_enable), 
           .n1932(n1932), .\state_7__N_146[0] (state_7__N_146[0]), .n1931(n1931), 
           .n1930(n1930), .n1929(n1929), .n1928(n1928), .n3587(n3587), 
           .n3581(n3581), .n1805(n1805), .n1800(n1800), .n5458(n5458), 
           .n11_adj_10(n11_adj_359), .n178({scl})) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(121[12] 130[8])
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, VCC_net, CLK_N_keep, rw, scl_enable, n1927, 
            data, n1926, \state[2] , \state[3] , n4, n4733, n15, 
            \state[1] , n1814, n3595, n471, \state[0] , ready_N_228, 
            n4_adj_6, n10, n11, n10_adj_7, n6, n3585, \state_7__N_162[3] , 
            n22, n4_adj_8, n5, n1921, \saved_addr[0] , n4495, n1935, 
            n8, n4_adj_9, n5361, sda_enable, n1932, \state_7__N_146[0] , 
            n1931, n1930, n1929, n1928, n3587, n3581, n1805, n1800, 
            n5458, n11_adj_10, n178) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input CLK_N_keep;
    output rw;
    output scl_enable;
    input n1927;
    output [7:0]data;
    input n1926;
    output \state[2] ;
    output \state[3] ;
    input n4;
    output n4733;
    input n15;
    output \state[1] ;
    output n1814;
    output n3595;
    output n471;
    output \state[0] ;
    output ready_N_228;
    output n4_adj_6;
    output n10;
    output n11;
    output n10_adj_7;
    output n6;
    output n3585;
    output \state_7__N_162[3] ;
    output n22;
    output n4_adj_8;
    input n5;
    input n1921;
    output \saved_addr[0] ;
    input n4495;
    input n1935;
    input n8;
    output n4_adj_9;
    output n5361;
    output sda_enable;
    input n1932;
    output \state_7__N_146[0] ;
    input n1931;
    input n1930;
    input n1929;
    input n1928;
    output n3587;
    output n3581;
    output n1805;
    output n1800;
    output n5458;
    output n11_adj_10;
    output [0:0]n178;
    
    
    wire n3299, n3300, n3298, n3301, n25, n27, n26, n28, n3331, 
        n3316;
    wire [31:0]n3364;
    
    wire n3415, n3988, n2118, n3989, n3314, n3413;
    wire [31:0]n2176;
    
    wire n2119, n3398, n3397, n18, n5289, n2110, n2011, n3987, 
        n2044, n3414, n3417, n3416, n5291, n3113, n3115, n5305;
    wire [31:0]n2077;
    
    wire n2012, n3986;
    wire [31:0]n1;
    wire [31:0]n1_adj_357;
    
    wire n4254, n4255, n4167, n3313, n4168;
    wire [31:0]n2968;
    
    wire n2918, n4088, n3419, n3418, n4824, n4166, n3114, n3117, 
        n3116, n5309, n3408, n3409, n3411, n30, n3106, n3119, 
        n3118, n18_adj_260, n3403, n3405, n3404, n28_adj_261, n3107, 
        n3108, n3111, n3109, n24, n3101, n3102, n3100, n3103, 
        n22_c, n2013, n3985, n2014, n3984, n3406, n3412, n3407, 
        n3410, n29, n3104, n3105, n26_adj_262, n3112, n3110, n3133, 
        n3399, n3401, n3400, n3402, n27_adj_263, n4253;
    wire [31:0]n133;
    wire [31:0]eeprom_counter;   // verilog/eeprom.v(16[9:23])
    
    wire n2015, n3983, n3017;
    wire [31:0]n3067;
    
    wire n3034;
    wire [31:0]n3166;
    
    wire n3215, n3430, n2016, n3982;
    wire [31:0]n3463;
    
    wire n3499, n3498, n4089, n2017, n3981, n3497, n2919;
    wire [31:0]n2572;
    
    wire n2517, n4031, n2018, n3980, n4252, n3315, n4165, n2902, 
        n2803, n4087, n2836, n4032, n3496, n28_adj_267, n2019, 
        n4251, n3513, n3515, n5321;
    wire [31:0]n2869;
    
    wire n2804, n4086, n4250, n4164, n3514, n3517, n3516, n5323, 
        n3519, n3518, n4753, n4249, n2805, n4085, n3317, n4163, 
        n2518, n4030, n3506, n3508, n32, n3505, n3504, n3512, 
        n30_adj_273, n3318, n4162, n2806, n4084, n3507, n3510, 
        n3511, n3509, n31, n2519, n3500, n3502, n3501, n3503, 
        n29_adj_274, n1912, n3979, n1945;
    wire [31:0]n1978;
    
    wire n1913, n3978, n3529, n4248, n3319, n1914, n3977, n2506, 
        n2407, n4029, n2440, n1915, n3976;
    wire [31:0]n3562;
    
    wire n3612, n2807, n4083;
    wire [31:0]n2473;
    
    wire n2408, n4028, n1916, n3975, n4247, n3199, n4161, n3232, 
        n4246;
    wire [31:0]n3265;
    
    wire n3200, n4160, n4245, n2808, n4082, n1917, n3974, n2809, 
        n4081, n2409, n4027, n1918, n3973, n2810, n4080, n2410, 
        n4026, n3201, n4159, n4244, n3628;
    wire [7:0]n1200;
    
    wire n5568, n1919, n3202, n4158, n2811, n4079, n3972, n3203, 
        n4157, n2411, n4025, n3613, n3971, n4243, n3204, n4156, 
        n3614, n3970, n4242, n3205, n4155, n2812, n4078, n3615, 
        n3969, n3616, n3968, n3206, n4154, n3219, n2412, n4024, 
        n2419, n3218, n3617, n3967;
    wire [14:0]enable_N_60;
    
    wire n3711, n4241, n3207, n4153, n3712, n4240, n5565, n3618, 
        n3966, n2813, n4077, n2413, n4023, n3713, n4239, n5562, 
        n3208, n4152, n2814, n4076, n2414, n4022, n3714, n4238, 
        n5559, n3209, n4151, n3715, n4237, n5556, n2815, n4075, 
        n2415, n4021, n3210, n4150, n3716, n4236, n5553, n3211, 
        n4149, n2816, n4074, n2416, n4020, n3717, n4235, n5550, 
        n3217, n2817, n4073, n2417, n4019, n5362, n4234, n5547, 
        n3619, n3216, n3719, n4233, n3212, n4148, n2818, n4072, 
        n3213, n4147, n3720, n4232, n2418, n4018, n3214, n4146, 
        n3721, n4231, n2819, n5071, n3722, n4230, n4145, n2704, 
        n2737, n4071, n4144, n2308, n2341, n4017, n3723, n4229, 
        n2705, n4070, n4143, n2309, n4016, n3724, n4228, n4142, 
        n917, n2706, n4069, n2310, n4015, n5355, n4227, n4226, 
        n2707, n4068, n2311, n4014, n4141, n3995, n2111, n3996, 
        n4225, n4140, n2708, n4067, n4139, n2312, n4013, n4224, 
        n2112, n3994, n4223, n4138, n4222, n4137, n2709, n4066, 
        n4221, n4136, n3991, n2115, n3992, n4135, n2710, n4065, 
        n2313, n5576, n4012, n4220, n4134, n2113, n3993, n4133, 
        n2711, n4064, n4219, n4132, n2712, n4063, n5157, n16, 
        n4218, n4217, n4131, n2713, n5575, n4062, n2714, n4061, 
        n4130, n2114, n4216, n4215, n5073, n4129, n2715, n4060, 
        n2314, n4011, n5328, n1256, n5035, n2716, n4059, n2315, 
        n4010, n4214, n4782, n4128, n2717, n4058, n12, n18_adj_290, 
        n20_adj_291, n4213, n4127, n2718, n4057, n2316, n4009, 
        n4212, n4126, n2719, n2317, n4008, n4125, n2605, n4056, 
        n2638, n2318, n4007, n4211;
    wire [31:0]n2671;
    
    wire n2606, n4055, n3961, n4124, n2319, n2116, n3990, n4210, 
        n4123, n2607, n4054, n1137;
    wire [6:0]n1191;
    
    wire n1843, n2608, n4053, n2209, n4006, n2242, n4209, n3001, 
        n4122, n3002, n4121, n4208;
    wire [31:0]n2275;
    
    wire n2210, n4005, n3003, n4120, n2609, n4052, n3004, n4119, 
        n4207, n2910, n4206, n3005, n4118, n4205, n3960, n2907, 
        n2911, n5205, n5209, n3959, n2912, n2913, n2915, n5297, 
        n2117, n3958, n2914, n2917, n2916, n5301, n3957, enable_N_59, 
        rw_N_75, n2906, n15_adj_300, n3956, n20_adj_301, n26_adj_302, 
        n16_adj_303, n24_adj_304, n28_adj_305, n4847, n1139, n1135, 
        n892, n1140, n4977, n1138, n4983, n4853, n3955, n3954, 
        n3953, n4859, n4865, n3952, n3951, n2610, n4051, n3011, 
        n3013, n3006, n3010, n3012, n3009, n3008, n3018, n3015, 
        n2935, n5327, n3950, n2217, n3949, n5400, n5501, n4117, 
        n2143, n5405, n2213, n2219, n2211, n2216, n2214, n3019, 
        n3007, n3948, n2212, n2909, n3947, n2903, n5059, n5061, 
        n4788, n2215, n4116, n5045, n6_adj_321, n2218, n4797, 
        n4204, n5081, n5085, n8_adj_322, n7_adj_323, n2613, n3946, 
        n2611, n4203, n4202, n2612, n2619, n2617, n2618, n2615, 
        n2509, n2539, n3945, n2508, n2512, n3944, n2513, n2511, 
        n2905, n2904, n2908, n2510, n2507, n2516, n2514, n5153, 
        n3943, n2515, n4201, n19_adj_327, n5169, n5173, n11_adj_328, 
        n13_adj_329, n18_adj_330, n22_adj_331, n2614, n5101, n2616, 
        n5105, n10_adj_332, n12_adj_333, n16_adj_334, n3014, n5143, 
        n3016, n5147, n18_adj_335, n21_adj_336, n20_adj_337, n5213, 
        n5215, n3942, n4830, n16_adj_338, n17_adj_339, n24_adj_340, 
        n3941, n4115, n4200, n5039, n3940, n5221, n3608, n5175, 
        n3609, n5021, n5023, n5025, n4199, n4114, n4050, n4004, 
        n4049, n5027, n4198, n4113, n5029, n4003, n3939, n5177, 
        n3598, n31_adj_341, n5031, n5225, n4112, n4048, n4002, 
        n3605, n5017, n4197, n5019, n5161, n3938, n3937, n3596, 
        n4196, n4111, n28_adj_342, n3936, n3935, enable, n4047, 
        n4001, n4110, n4195, n4194, n4109, n4046, n4000, n3934, 
        n4193, n3933, n4108, n4045, n4192, n3999, n3932, n3931, 
        n4191, n4107, n4044, n3998, n5005, n5009, n4190, n3312, 
        n4278, n4277, n4189, n4106, n4276, n4188, n4187, n4043, 
        n3997, n4275, n4105, n4186, n4274, n4185, n4273, n4184, 
        n4183, n3303, n4104, n4042, n3302, n4272, n4041, n4182, 
        n4103, n3311, n3308, n4271, n4181, n4102, n4270, n3307, 
        n4180, n4040, n4101, n4179, n4100, n4269, n4039, n3305, 
        n4178, n4099, n4268, n4177, n4098, n3306, n3304, n4267, 
        n3310, n3309, n4038, n4097, n4266, n4265, n4176, n4037, 
        n4175, n4096, n4264, n4263, n4174, n4095, n4262, n4094, 
        n4261, n4173, n4036, n4260, n4093, n4172, n4171, n4092, 
        n4035, n4259, n4258, n4170, n4034, n4091, n4169, n4033, 
        n5313, n5315, n4090, n4257, n4820, n4256;
    
    SB_LUT4 i9_4_lut (.I0(n3299), .I1(n3300), .I2(n3298), .I3(n3301), 
            .O(n25));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n3331));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2243_3_lut (.I0(n3316), .I1(n3364[13]), .I2(n3331), 
            .I3(GND_net), .O(n3415));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2243_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1419_3 (.CI(n3988), .I0(n2118), .I1(VCC_net), .CO(n3989));
    SB_LUT4 rem_4_i2241_3_lut (.I0(n3314), .I1(n3364[15]), .I2(n3331), 
            .I3(GND_net), .O(n3413));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2241_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1419_2_lut (.I0(GND_net), .I1(n2119), .I2(GND_net), 
            .I3(VCC_net), .O(n2176[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_2 (.CI(VCC_net), .I0(n2119), .I1(GND_net), 
            .CO(n3988));
    SB_LUT4 rem_4_i2226_3_lut (.I0(n3299), .I1(n3364[30]), .I2(n3331), 
            .I3(GND_net), .O(n3398));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(n3398), .I1(n3397), .I2(GND_net), .I3(GND_net), 
            .O(n18));   // verilog/eeprom.v(23[6:29])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_12 (.I0(n3413), .I1(n3415), .I2(GND_net), .I3(GND_net), 
            .O(n5289));
    defparam i1_2_lut_adj_12.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_1352_10_lut (.I0(n2044), .I1(n2011), .I2(VCC_net), 
            .I3(n3987), .O(n2110)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_3_lut (.I0(n3414), .I1(n3417), .I2(n3416), .I3(GND_net), 
            .O(n5291));
    defparam i1_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_13 (.I0(n3113), .I1(n3115), .I2(GND_net), .I3(GND_net), 
            .O(n5305));
    defparam i1_2_lut_adj_13.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_1352_9_lut (.I0(GND_net), .I1(n2012), .I2(VCC_net), 
            .I3(n3986), .O(n2077[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[13]), .I3(n4254), .O(n1[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_15 (.CI(n4254), .I0(GND_net), .I1(n1_adj_357[13]), 
            .CO(n4255));
    SB_CARRY rem_4_add_2223_8 (.CI(n4167), .I0(n3313), .I1(GND_net), .CO(n4168));
    SB_LUT4 rem_4_add_1955_3_lut (.I0(GND_net), .I1(n2918), .I2(VCC_net), 
            .I3(n4088), .O(n2968[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(n5291), .I1(n3419), .I2(n5289), .I3(n3418), 
            .O(n4824));
    defparam i1_4_lut.LUT_INIT = 16'ha080;
    SB_LUT4 rem_4_add_2223_7_lut (.I0(GND_net), .I1(n3314), .I2(GND_net), 
            .I3(n4166), .O(n3364[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_14 (.I0(n3114), .I1(n5305), .I2(n3117), .I3(n3116), 
            .O(n5309));
    defparam i1_4_lut_adj_14.LUT_INIT = 16'h8000;
    SB_LUT4 i13_4_lut (.I0(n3408), .I1(n3409), .I2(n3411), .I3(n18), 
            .O(n30));   // verilog/eeprom.v(23[6:29])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_1352_9 (.CI(n3986), .I0(n2012), .I1(VCC_net), .CO(n3987));
    SB_LUT4 i4_4_lut (.I0(n5309), .I1(n3106), .I2(n3119), .I3(n3118), 
            .O(n18_adj_260));
    defparam i4_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 i11_4_lut (.I0(n3403), .I1(n3405), .I2(n3404), .I3(n4824), 
            .O(n28_adj_261));   // verilog/eeprom.v(23[6:29])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(n3107), .I1(n3108), .I2(n3111), .I3(n3109), 
            .O(n24));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(n3101), .I1(n3102), .I2(n3100), .I3(n3103), 
            .O(n22_c));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1352_8_lut (.I0(GND_net), .I1(n2013), .I2(GND_net), 
            .I3(n3985), .O(n2077[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1352_8 (.CI(n3985), .I0(n2013), .I1(GND_net), .CO(n3986));
    SB_LUT4 rem_4_add_1352_7_lut (.I0(GND_net), .I1(n2014), .I2(GND_net), 
            .I3(n3984), .O(n2077[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1352_7 (.CI(n3984), .I0(n2014), .I1(GND_net), .CO(n3985));
    SB_LUT4 i12_4_lut (.I0(n3406), .I1(n3412), .I2(n3407), .I3(n3410), 
            .O(n29));   // verilog/eeprom.v(23[6:29])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_15 (.I0(n3104), .I1(n24), .I2(n18_adj_260), 
            .I3(n3105), .O(n26_adj_262));
    defparam i12_4_lut_adj_15.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_16 (.I0(n3112), .I1(n26_adj_262), .I2(n22_c), 
            .I3(n3110), .O(n3133));
    defparam i13_4_lut_adj_16.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_17 (.I0(n3399), .I1(n3401), .I2(n3400), .I3(n3402), 
            .O(n27_adj_263));   // verilog/eeprom.v(23[6:29])
    defparam i10_4_lut_adj_17.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[12]), .I3(n4253), .O(n1[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_14_lut.LUT_INIT = 16'hC33C;
    SB_DFF eeprom_counter_228__i0 (.Q(eeprom_counter[0]), .C(CLK_N_keep), 
           .D(n133[0]));   // verilog/eeprom.v(22[21:39])
    SB_LUT4 rem_4_add_1352_6_lut (.I0(GND_net), .I1(n2015), .I2(GND_net), 
            .I3(n3983), .O(n2077[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2040_3_lut (.I0(n3017), .I1(n3067[15]), .I2(n3034), 
            .I3(GND_net), .O(n3116));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2040_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1352_6 (.CI(n3983), .I0(n2015), .I1(GND_net), .CO(n3984));
    SB_LUT4 rem_4_i2107_3_lut (.I0(n3116), .I1(n3166[15]), .I2(n3133), 
            .I3(GND_net), .O(n3215));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16_4_lut (.I0(n27_adj_263), .I1(n29), .I2(n28_adj_261), .I3(n30), 
            .O(n3430));   // verilog/eeprom.v(23[6:29])
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2228_3_lut (.I0(n3301), .I1(n3364[28]), .I2(n3331), 
            .I3(GND_net), .O(n3400));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1352_5_lut (.I0(GND_net), .I1(n2016), .I2(GND_net), 
            .I3(n3982), .O(n2077[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2295_3_lut (.I0(n3400), .I1(n3463[28]), .I2(n3430), 
            .I3(GND_net), .O(n3499));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2295_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2294_3_lut (.I0(n3399), .I1(n3463[29]), .I2(n3430), 
            .I3(GND_net), .O(n3498));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2294_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1352_5 (.CI(n3982), .I0(n2016), .I1(GND_net), .CO(n3983));
    SB_CARRY rem_4_add_1955_3 (.CI(n4088), .I0(n2918), .I1(VCC_net), .CO(n4089));
    SB_LUT4 rem_4_add_1352_4_lut (.I0(GND_net), .I1(n2017), .I2(GND_net), 
            .I3(n3981), .O(n2077[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1352_4 (.CI(n3981), .I0(n2017), .I1(GND_net), .CO(n3982));
    SB_LUT4 rem_4_i2293_3_lut (.I0(n3398), .I1(n3463[30]), .I2(n3430), 
            .I3(GND_net), .O(n3497));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2293_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_14 (.CI(n4253), .I0(GND_net), .I1(n1_adj_357[12]), 
            .CO(n4254));
    SB_LUT4 rem_4_add_1955_2_lut (.I0(GND_net), .I1(n2919), .I2(GND_net), 
            .I3(VCC_net), .O(n2968[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_7 (.CI(n4166), .I0(n3314), .I1(GND_net), .CO(n4167));
    SB_CARRY rem_4_add_1955_2 (.CI(VCC_net), .I0(n2919), .I1(GND_net), 
            .CO(n4088));
    SB_LUT4 rem_4_add_1687_4_lut (.I0(GND_net), .I1(n2517), .I2(GND_net), 
            .I3(n4031), .O(n2572[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1352_3_lut (.I0(GND_net), .I1(n2018), .I2(VCC_net), 
            .I3(n3980), .O(n2077[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[11]), .I3(n4252), .O(n1[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_6_lut (.I0(GND_net), .I1(n3315), .I2(GND_net), 
            .I3(n4165), .O(n3364[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_18_lut (.I0(n2836), .I1(n2803), .I2(VCC_net), 
            .I3(n4087), .O(n2902)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_18_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_1687_4 (.CI(n4031), .I0(n2517), .I1(GND_net), .CO(n4032));
    SB_CARRY rem_4_add_1352_3 (.CI(n3980), .I0(n2018), .I1(VCC_net), .CO(n3981));
    SB_CARRY rem_4_unary_minus_2_add_3_13 (.CI(n4252), .I0(GND_net), .I1(n1_adj_357[11]), 
            .CO(n4253));
    SB_LUT4 i10_4_lut_adj_18 (.I0(n3497), .I1(n3498), .I2(n3496), .I3(n3499), 
            .O(n28_adj_267));
    defparam i10_4_lut_adj_18.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1352_2_lut (.I0(GND_net), .I1(n2019), .I2(GND_net), 
            .I3(VCC_net), .O(n2077[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[10]), .I3(n4251), .O(n1[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_6 (.CI(n4165), .I0(n3315), .I1(GND_net), .CO(n4166));
    SB_CARRY rem_4_unary_minus_2_add_3_12 (.CI(n4251), .I0(GND_net), .I1(n1_adj_357[10]), 
            .CO(n4252));
    SB_LUT4 i1_2_lut_adj_19 (.I0(n3513), .I1(n3515), .I2(GND_net), .I3(GND_net), 
            .O(n5321));
    defparam i1_2_lut_adj_19.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_1888_17_lut (.I0(GND_net), .I1(n2804), .I2(VCC_net), 
            .I3(n4086), .O(n2869[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[9]), .I3(n4250), .O(n1[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_5_lut (.I0(GND_net), .I1(n3316), .I2(GND_net), 
            .I3(n4164), .O(n3364[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_11 (.CI(n4250), .I0(GND_net), .I1(n1_adj_357[9]), 
            .CO(n4251));
    SB_CARRY rem_4_add_1888_17 (.CI(n4086), .I0(n2804), .I1(VCC_net), 
            .CO(n4087));
    SB_LUT4 i1_3_lut_adj_20 (.I0(n3514), .I1(n3517), .I2(n3516), .I3(GND_net), 
            .O(n5323));
    defparam i1_3_lut_adj_20.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_21 (.I0(n5323), .I1(n3519), .I2(n5321), .I3(n3518), 
            .O(n4753));
    defparam i1_4_lut_adj_21.LUT_INIT = 16'ha080;
    SB_LUT4 rem_4_unary_minus_2_add_3_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[8]), .I3(n4249), .O(n1[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_5 (.CI(n4164), .I0(n3316), .I1(GND_net), .CO(n4165));
    SB_LUT4 rem_4_add_1888_16_lut (.I0(GND_net), .I1(n2805), .I2(VCC_net), 
            .I3(n4085), .O(n2869[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_4_lut (.I0(GND_net), .I1(n3317), .I2(GND_net), 
            .I3(n4163), .O(n3364[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_3_lut (.I0(GND_net), .I1(n2518), .I2(VCC_net), 
            .I3(n4030), .O(n2572[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_3_lut (.I0(n3506), .I1(n28_adj_267), .I2(n3508), .I3(GND_net), 
            .O(n32));
    defparam i14_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY rem_4_add_1352_2 (.CI(VCC_net), .I0(n2019), .I1(GND_net), 
            .CO(n3980));
    SB_LUT4 i12_4_lut_adj_22 (.I0(n4753), .I1(n3505), .I2(n3504), .I3(n3512), 
            .O(n30_adj_273));
    defparam i12_4_lut_adj_22.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_unary_minus_2_add_3_10 (.CI(n4249), .I0(GND_net), .I1(n1_adj_357[8]), 
            .CO(n4250));
    SB_CARRY rem_4_add_2223_4 (.CI(n4163), .I0(n3317), .I1(GND_net), .CO(n4164));
    SB_CARRY rem_4_add_1888_16 (.CI(n4085), .I0(n2805), .I1(VCC_net), 
            .CO(n4086));
    SB_LUT4 rem_4_add_2223_3_lut (.I0(GND_net), .I1(n3318), .I2(VCC_net), 
            .I3(n4162), .O(n3364[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_3 (.CI(n4030), .I0(n2518), .I1(VCC_net), .CO(n4031));
    SB_CARRY rem_4_add_2223_3 (.CI(n4162), .I0(n3318), .I1(VCC_net), .CO(n4163));
    SB_LUT4 rem_4_add_1888_15_lut (.I0(GND_net), .I1(n2806), .I2(VCC_net), 
            .I3(n4084), .O(n2869[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_4_lut_adj_23 (.I0(n3507), .I1(n3510), .I2(n3511), .I3(n3509), 
            .O(n31));
    defparam i13_4_lut_adj_23.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1687_2_lut (.I0(GND_net), .I1(n2519), .I2(GND_net), 
            .I3(VCC_net), .O(n2572[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_2 (.CI(VCC_net), .I0(n2519), .I1(GND_net), 
            .CO(n4030));
    SB_LUT4 i11_4_lut_adj_24 (.I0(n3500), .I1(n3502), .I2(n3501), .I3(n3503), 
            .O(n29_adj_274));
    defparam i11_4_lut_adj_24.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1285_9_lut (.I0(n1945), .I1(n1912), .I2(VCC_net), 
            .I3(n3979), .O(n2011)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1285_8_lut (.I0(GND_net), .I1(n1913), .I2(GND_net), 
            .I3(n3978), .O(n1978[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17_4_lut (.I0(n29_adj_274), .I1(n31), .I2(n30_adj_273), .I3(n32), 
            .O(n3529));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[7]), .I3(n4248), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_2_lut (.I0(GND_net), .I1(n3319), .I2(GND_net), 
            .I3(VCC_net), .O(n3364[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_8 (.CI(n3978), .I0(n1913), .I1(GND_net), .CO(n3979));
    SB_LUT4 rem_4_add_1285_7_lut (.I0(GND_net), .I1(n1914), .I2(GND_net), 
            .I3(n3977), .O(n1978[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_7 (.CI(n3977), .I0(n1914), .I1(GND_net), .CO(n3978));
    SB_CARRY rem_4_add_1888_15 (.CI(n4084), .I0(n2806), .I1(VCC_net), 
            .CO(n4085));
    SB_LUT4 rem_4_i2309_3_lut (.I0(n3414), .I1(n3463[14]), .I2(n3430), 
            .I3(GND_net), .O(n3513));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2309_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1620_14_lut (.I0(n2440), .I1(n2407), .I2(VCC_net), 
            .I3(n4029), .O(n2506)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1285_6_lut (.I0(GND_net), .I1(n1915), .I2(GND_net), 
            .I3(n3976), .O(n1978[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2376_3_lut (.I0(n3513), .I1(n3562[14]), .I2(n3529), 
            .I3(GND_net), .O(n3612));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i4_1_lut (.I0(eeprom_counter[3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[3]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_1888_14_lut (.I0(GND_net), .I1(n2807), .I2(VCC_net), 
            .I3(n4083), .O(n2869[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_6 (.CI(n3976), .I0(n1915), .I1(GND_net), .CO(n3977));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i5_1_lut (.I0(eeprom_counter[4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[4]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_1620_13_lut (.I0(GND_net), .I1(n2408), .I2(VCC_net), 
            .I3(n4028), .O(n2473[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i6_1_lut (.I0(eeprom_counter[5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[5]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i7_1_lut (.I0(eeprom_counter[6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[6]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_1285_5_lut (.I0(GND_net), .I1(n1916), .I2(GND_net), 
            .I3(n3975), .O(n1978[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_5 (.CI(n3975), .I0(n1916), .I1(GND_net), .CO(n3976));
    SB_CARRY rem_4_unary_minus_2_add_3_9 (.CI(n4248), .I0(GND_net), .I1(n1_adj_357[7]), 
            .CO(n4249));
    SB_LUT4 rem_4_unary_minus_2_add_3_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[6]), .I3(n4247), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_2 (.CI(VCC_net), .I0(n3319), .I1(GND_net), 
            .CO(n4162));
    SB_CARRY rem_4_unary_minus_2_add_3_8 (.CI(n4247), .I0(GND_net), .I1(n1_adj_357[6]), 
            .CO(n4248));
    SB_LUT4 rem_4_add_2156_22_lut (.I0(n3232), .I1(n3199), .I2(VCC_net), 
            .I3(n4161), .O(n3298)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_22_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_unary_minus_2_add_3_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[5]), .I3(n4246), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_14 (.CI(n4083), .I0(n2807), .I1(VCC_net), 
            .CO(n4084));
    SB_CARRY rem_4_unary_minus_2_add_3_7 (.CI(n4246), .I0(GND_net), .I1(n1_adj_357[5]), 
            .CO(n4247));
    SB_LUT4 rem_4_add_2156_21_lut (.I0(GND_net), .I1(n3200), .I2(VCC_net), 
            .I3(n4160), .O(n3265[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[4]), .I3(n4245), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_13_lut (.I0(GND_net), .I1(n2808), .I2(VCC_net), 
            .I3(n4082), .O(n2869[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_6 (.CI(n4245), .I0(GND_net), .I1(n1_adj_357[4]), 
            .CO(n4246));
    SB_CARRY rem_4_add_1888_13 (.CI(n4082), .I0(n2808), .I1(VCC_net), 
            .CO(n4083));
    SB_CARRY rem_4_add_1620_13 (.CI(n4028), .I0(n2408), .I1(VCC_net), 
            .CO(n4029));
    SB_LUT4 rem_4_add_1285_4_lut (.I0(GND_net), .I1(n1917), .I2(GND_net), 
            .I3(n3974), .O(n1978[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_4 (.CI(n3974), .I0(n1917), .I1(GND_net), .CO(n3975));
    SB_LUT4 rem_4_add_1888_12_lut (.I0(GND_net), .I1(n2809), .I2(VCC_net), 
            .I3(n4081), .O(n2869[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_12_lut (.I0(GND_net), .I1(n2409), .I2(VCC_net), 
            .I3(n4027), .O(n2473[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1285_3_lut (.I0(GND_net), .I1(n1918), .I2(VCC_net), 
            .I3(n3973), .O(n1978[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2156_21 (.CI(n4160), .I0(n3200), .I1(VCC_net), 
            .CO(n4161));
    SB_CARRY rem_4_add_1888_12 (.CI(n4081), .I0(n2809), .I1(VCC_net), 
            .CO(n4082));
    SB_CARRY rem_4_add_1620_12 (.CI(n4027), .I0(n2409), .I1(VCC_net), 
            .CO(n4028));
    SB_LUT4 rem_4_add_1888_11_lut (.I0(GND_net), .I1(n2810), .I2(VCC_net), 
            .I3(n4080), .O(n2869[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_11_lut (.I0(GND_net), .I1(n2410), .I2(VCC_net), 
            .I3(n4026), .O(n2473[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_11 (.CI(n4080), .I0(n2810), .I1(VCC_net), 
            .CO(n4081));
    SB_LUT4 rem_4_add_2156_20_lut (.I0(GND_net), .I1(n3201), .I2(VCC_net), 
            .I3(n4159), .O(n3265[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[3]), .I3(n4244), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_3 (.CI(n3973), .I0(n1918), .I1(VCC_net), .CO(n3974));
    SB_LUT4 i4738_1_lut_2_lut (.I0(n3628), .I1(n1200[7]), .I2(GND_net), 
            .I3(GND_net), .O(n5568));   // verilog/eeprom.v(23[6:29])
    defparam i4738_1_lut_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_add_2156_20 (.CI(n4159), .I0(n3201), .I1(VCC_net), 
            .CO(n4160));
    SB_LUT4 rem_4_add_1285_2_lut (.I0(GND_net), .I1(n1919), .I2(GND_net), 
            .I3(VCC_net), .O(n1978[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_19_lut (.I0(GND_net), .I1(n3202), .I2(VCC_net), 
            .I3(n4158), .O(n3265[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_10_lut (.I0(GND_net), .I1(n2811), .I2(VCC_net), 
            .I3(n4079), .O(n2869[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2156_19 (.CI(n4158), .I0(n3202), .I1(VCC_net), 
            .CO(n4159));
    SB_CARRY rem_4_add_1620_11 (.CI(n4026), .I0(n2410), .I1(VCC_net), 
            .CO(n4027));
    SB_CARRY rem_4_add_1285_2 (.CI(VCC_net), .I0(n1919), .I1(GND_net), 
            .CO(n3973));
    SB_LUT4 add_823_9_lut (.I0(GND_net), .I1(n3612), .I2(VCC_net), .I3(n3972), 
            .O(n1200[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_5 (.CI(n4244), .I0(GND_net), .I1(n1_adj_357[3]), 
            .CO(n4245));
    SB_LUT4 rem_4_add_2156_18_lut (.I0(GND_net), .I1(n3203), .I2(VCC_net), 
            .I3(n4157), .O(n3265[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_10 (.CI(n4079), .I0(n2811), .I1(VCC_net), 
            .CO(n4080));
    SB_CARRY rem_4_add_2156_18 (.CI(n4157), .I0(n3203), .I1(VCC_net), 
            .CO(n4158));
    SB_LUT4 rem_4_add_1620_10_lut (.I0(GND_net), .I1(n2411), .I2(VCC_net), 
            .I3(n4025), .O(n2473[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_823_8_lut (.I0(GND_net), .I1(n3613), .I2(GND_net), .I3(n3971), 
            .O(n1200[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[2]), .I3(n4243), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_823_8 (.CI(n3971), .I0(n3613), .I1(GND_net), .CO(n3972));
    SB_LUT4 rem_4_add_2156_17_lut (.I0(GND_net), .I1(n3204), .I2(VCC_net), 
            .I3(n4156), .O(n3265[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_823_7_lut (.I0(GND_net), .I1(n3614), .I2(GND_net), .I3(n3970), 
            .O(n1200[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_4 (.CI(n4243), .I0(GND_net), .I1(n1_adj_357[2]), 
            .CO(n4244));
    SB_CARRY rem_4_add_2156_17 (.CI(n4156), .I0(n3204), .I1(VCC_net), 
            .CO(n4157));
    SB_LUT4 rem_4_mux_3_i11_3_lut (.I0(eeprom_counter[10]), .I1(n1[10]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3319));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[1]), .I3(n4242), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_16_lut (.I0(GND_net), .I1(n3205), .I2(VCC_net), 
            .I3(n4155), .O(n3265[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i8_1_lut (.I0(eeprom_counter[7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[7]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_mux_3_i19_3_lut (.I0(eeprom_counter[18]), .I1(n1[18]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2519));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_3 (.CI(n4242), .I0(GND_net), .I1(n1_adj_357[1]), 
            .CO(n4243));
    SB_CARRY rem_4_add_2156_16 (.CI(n4155), .I0(n3205), .I1(VCC_net), 
            .CO(n4156));
    SB_LUT4 rem_4_add_1888_9_lut (.I0(GND_net), .I1(n2812), .I2(VCC_net), 
            .I3(n4078), .O(n2869[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_10 (.CI(n4025), .I0(n2411), .I1(VCC_net), 
            .CO(n4026));
    SB_CARRY add_823_7 (.CI(n3970), .I0(n3614), .I1(GND_net), .CO(n3971));
    SB_LUT4 add_823_6_lut (.I0(GND_net), .I1(n3615), .I2(GND_net), .I3(n3969), 
            .O(n1200[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_823_6 (.CI(n3969), .I0(n3615), .I1(GND_net), .CO(n3970));
    SB_LUT4 add_823_5_lut (.I0(GND_net), .I1(n3616), .I2(GND_net), .I3(n3968), 
            .O(n1200[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_15_lut (.I0(GND_net), .I1(n3206), .I2(VCC_net), 
            .I3(n4154), .O(n3265[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2178_3_lut (.I0(n3219), .I1(n3265[11]), .I2(n3232), 
            .I3(GND_net), .O(n3318));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2178_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1888_9 (.CI(n4078), .I0(n2812), .I1(VCC_net), .CO(n4079));
    SB_LUT4 rem_4_add_1620_9_lut (.I0(GND_net), .I1(n2412), .I2(VCC_net), 
            .I3(n4024), .O(n2473[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1634_3_lut (.I0(n2419), .I1(n2473[19]), .I2(n2440), 
            .I3(GND_net), .O(n2518));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2177_3_lut (.I0(n3218), .I1(n3265[12]), .I2(n3232), 
            .I3(GND_net), .O(n3317));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2177_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_823_5 (.CI(n3968), .I0(n3616), .I1(GND_net), .CO(n3969));
    SB_LUT4 add_823_4_lut (.I0(GND_net), .I1(n3617), .I2(GND_net), .I3(n3967), 
            .O(n1200[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_823_4 (.CI(n3967), .I0(n3617), .I1(GND_net), .CO(n3968));
    SB_CARRY rem_4_unary_minus_2_add_3_2 (.CI(VCC_net), .I0(GND_net), .I1(n1_adj_357[0]), 
            .CO(n4242));
    SB_CARRY rem_4_add_2156_15 (.CI(n4154), .I0(n3206), .I1(VCC_net), 
            .CO(n4155));
    SB_LUT4 rem_4_add_2473_16_lut (.I0(n5568), .I1(n1_adj_357[31]), .I2(n3711), 
            .I3(n4241), .O(enable_N_60[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_16_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_14_lut (.I0(GND_net), .I1(n3207), .I2(VCC_net), 
            .I3(n4153), .O(n3265[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_15_lut (.I0(n5565), .I1(n1_adj_357[31]), .I2(n3712), 
            .I3(n4240), .O(enable_N_60[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_15_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_1620_9 (.CI(n4024), .I0(n2412), .I1(VCC_net), .CO(n4025));
    SB_LUT4 add_823_3_lut (.I0(GND_net), .I1(n3618), .I2(VCC_net), .I3(n3966), 
            .O(n1200[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2473_15 (.CI(n4240), .I0(n1_adj_357[31]), .I1(n3712), 
            .CO(n4241));
    SB_CARRY rem_4_add_2156_14 (.CI(n4153), .I0(n3207), .I1(VCC_net), 
            .CO(n4154));
    SB_LUT4 rem_4_add_1888_8_lut (.I0(GND_net), .I1(n2813), .I2(GND_net), 
            .I3(n4077), .O(n2869[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_8_lut (.I0(GND_net), .I1(n2413), .I2(GND_net), 
            .I3(n4023), .O(n2473[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_14_lut (.I0(n5562), .I1(n1_adj_357[31]), .I2(n3713), 
            .I3(n4239), .O(enable_N_60[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_14_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_13_lut (.I0(GND_net), .I1(n3208), .I2(VCC_net), 
            .I3(n4152), .O(n3265[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_8 (.CI(n4077), .I0(n2813), .I1(GND_net), .CO(n4078));
    SB_CARRY rem_4_add_1620_8 (.CI(n4023), .I0(n2413), .I1(GND_net), .CO(n4024));
    SB_CARRY rem_4_add_2473_14 (.CI(n4239), .I0(n1_adj_357[31]), .I1(n3713), 
            .CO(n4240));
    SB_CARRY rem_4_add_2156_13 (.CI(n4152), .I0(n3208), .I1(VCC_net), 
            .CO(n4153));
    SB_LUT4 rem_4_add_1888_7_lut (.I0(GND_net), .I1(n2814), .I2(GND_net), 
            .I3(n4076), .O(n2869[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_7_lut (.I0(GND_net), .I1(n2414), .I2(GND_net), 
            .I3(n4022), .O(n2473[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_13_lut (.I0(n5559), .I1(n1_adj_357[31]), .I2(n3714), 
            .I3(n4238), .O(enable_N_60[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_13_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_12_lut (.I0(GND_net), .I1(n3209), .I2(VCC_net), 
            .I3(n4151), .O(n3265[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2473_13 (.CI(n4238), .I0(n1_adj_357[31]), .I1(n3714), 
            .CO(n4239));
    SB_CARRY rem_4_add_1888_7 (.CI(n4076), .I0(n2814), .I1(GND_net), .CO(n4077));
    SB_CARRY rem_4_add_1620_7 (.CI(n4022), .I0(n2414), .I1(GND_net), .CO(n4023));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i9_1_lut (.I0(eeprom_counter[8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[8]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2473_12_lut (.I0(n5556), .I1(n1_adj_357[31]), .I2(n3715), 
            .I3(n4237), .O(enable_N_60[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_12_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_12 (.CI(n4237), .I0(n1_adj_357[31]), .I1(n3715), 
            .CO(n4238));
    SB_CARRY rem_4_add_2156_12 (.CI(n4151), .I0(n3209), .I1(VCC_net), 
            .CO(n4152));
    SB_LUT4 rem_4_add_1888_6_lut (.I0(GND_net), .I1(n2815), .I2(GND_net), 
            .I3(n4075), .O(n2869[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_6_lut (.I0(GND_net), .I1(n2415), .I2(GND_net), 
            .I3(n4021), .O(n2473[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_11_lut (.I0(GND_net), .I1(n3210), .I2(VCC_net), 
            .I3(n4150), .O(n3265[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_6 (.CI(n4075), .I0(n2815), .I1(GND_net), .CO(n4076));
    SB_CARRY rem_4_add_1620_6 (.CI(n4021), .I0(n2415), .I1(GND_net), .CO(n4022));
    SB_LUT4 rem_4_add_2473_11_lut (.I0(n5553), .I1(n1_adj_357[31]), .I2(n3716), 
            .I3(n4236), .O(enable_N_60[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_11_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_11 (.CI(n4150), .I0(n3210), .I1(VCC_net), 
            .CO(n4151));
    SB_CARRY rem_4_add_2473_11 (.CI(n4236), .I0(n1_adj_357[31]), .I1(n3716), 
            .CO(n4237));
    SB_LUT4 rem_4_add_2156_10_lut (.I0(GND_net), .I1(n3211), .I2(VCC_net), 
            .I3(n4149), .O(n3265[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_5_lut (.I0(GND_net), .I1(n2816), .I2(GND_net), 
            .I3(n4074), .O(n2869[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_5_lut (.I0(GND_net), .I1(n2416), .I2(GND_net), 
            .I3(n4020), .O(n2473[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_10_lut (.I0(n5550), .I1(n1_adj_357[31]), .I2(n3717), 
            .I3(n4235), .O(enable_N_60[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_10_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_1888_5 (.CI(n4074), .I0(n2816), .I1(GND_net), .CO(n4075));
    SB_CARRY rem_4_add_1620_5 (.CI(n4020), .I0(n2416), .I1(GND_net), .CO(n4021));
    SB_LUT4 rem_4_i2176_3_lut (.I0(n3217), .I1(n3265[13]), .I2(n3232), 
            .I3(GND_net), .O(n3316));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2176_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i10_1_lut (.I0(eeprom_counter[9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[9]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2473_10 (.CI(n4235), .I0(n1_adj_357[31]), .I1(n3717), 
            .CO(n4236));
    SB_CARRY rem_4_add_2156_10 (.CI(n4149), .I0(n3211), .I1(VCC_net), 
            .CO(n4150));
    SB_LUT4 rem_4_add_1888_4_lut (.I0(GND_net), .I1(n2817), .I2(GND_net), 
            .I3(n4073), .O(n2869[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_4_lut (.I0(GND_net), .I1(n2417), .I2(GND_net), 
            .I3(n4019), .O(n2473[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_4 (.CI(n4019), .I0(n2417), .I1(GND_net), .CO(n4020));
    SB_LUT4 rem_4_add_2473_9_lut (.I0(n5547), .I1(n1_adj_357[31]), .I2(n5362), 
            .I3(n4234), .O(enable_N_60[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_9_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_9 (.CI(n4234), .I0(n1_adj_357[31]), .I1(n5362), 
            .CO(n4235));
    SB_CARRY add_823_3 (.CI(n3966), .I0(n3618), .I1(VCC_net), .CO(n3967));
    SB_LUT4 add_823_2_lut (.I0(GND_net), .I1(n3619), .I2(GND_net), .I3(VCC_net), 
            .O(n1200[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_823_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i11_1_lut (.I0(eeprom_counter[10]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[10]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2175_3_lut (.I0(n3216), .I1(n3265[14]), .I2(n3232), 
            .I3(GND_net), .O(n3315));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2175_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i12_1_lut (.I0(eeprom_counter[11]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[11]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_mux_3_i20_3_lut (.I0(eeprom_counter[19]), .I1(n1[19]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2419));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_823_2 (.CI(VCC_net), .I0(n3619), .I1(GND_net), .CO(n3966));
    SB_LUT4 rem_4_add_2473_8_lut (.I0(eeprom_counter[6]), .I1(n1_adj_357[31]), 
            .I2(n3719), .I3(n4233), .O(enable_N_60[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_8_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_1888_4 (.CI(n4073), .I0(n2817), .I1(GND_net), .CO(n4074));
    SB_LUT4 rem_4_add_2156_9_lut (.I0(GND_net), .I1(n3212), .I2(VCC_net), 
            .I3(n4148), .O(n3265[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2473_8 (.CI(n4233), .I0(n1_adj_357[31]), .I1(n3719), 
            .CO(n4234));
    SB_CARRY rem_4_add_2156_9 (.CI(n4148), .I0(n3212), .I1(VCC_net), .CO(n4149));
    SB_LUT4 rem_4_add_1888_3_lut (.I0(GND_net), .I1(n2818), .I2(VCC_net), 
            .I3(n4072), .O(n2869[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_8_lut (.I0(GND_net), .I1(n3213), .I2(GND_net), 
            .I3(n4147), .O(n3265[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_3 (.CI(n4072), .I0(n2818), .I1(VCC_net), .CO(n4073));
    SB_LUT4 rem_4_add_2473_7_lut (.I0(eeprom_counter[5]), .I1(n1_adj_357[31]), 
            .I2(n3720), .I3(n4232), .O(enable_N_60[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_7_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_8 (.CI(n4147), .I0(n3213), .I1(GND_net), .CO(n4148));
    SB_LUT4 rem_4_add_1620_3_lut (.I0(GND_net), .I1(n2418), .I2(VCC_net), 
            .I3(n4018), .O(n2473[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_7_lut (.I0(GND_net), .I1(n3214), .I2(GND_net), 
            .I3(n4146), .O(n3265[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_3 (.CI(n4018), .I0(n2418), .I1(VCC_net), .CO(n4019));
    SB_CARRY rem_4_add_2473_7 (.CI(n4232), .I0(n1_adj_357[31]), .I1(n3720), 
            .CO(n4233));
    SB_LUT4 rem_4_add_2473_6_lut (.I0(eeprom_counter[4]), .I1(n1_adj_357[31]), 
            .I2(n3721), .I3(n4231), .O(enable_N_60[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_6_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_7 (.CI(n4146), .I0(n3214), .I1(GND_net), .CO(n4147));
    SB_LUT4 rem_4_add_1888_2_lut (.I0(GND_net), .I1(n2819), .I2(GND_net), 
            .I3(VCC_net), .O(n2869[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_2_lut (.I0(GND_net), .I1(n2419), .I2(GND_net), 
            .I3(VCC_net), .O(n2473[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_25 (.I0(n2417), .I1(n2415), .I2(GND_net), .I3(GND_net), 
            .O(n5071));
    defparam i1_2_lut_adj_25.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_add_2473_6 (.CI(n4231), .I0(n1_adj_357[31]), .I1(n3721), 
            .CO(n4232));
    SB_LUT4 rem_4_add_2473_5_lut (.I0(eeprom_counter[3]), .I1(n1_adj_357[31]), 
            .I2(n3722), .I3(n4230), .O(enable_N_60[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_5_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_6_lut (.I0(GND_net), .I1(n3215), .I2(GND_net), 
            .I3(n4145), .O(n3265[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_2 (.CI(VCC_net), .I0(n2819), .I1(GND_net), 
            .CO(n4072));
    SB_CARRY rem_4_add_1620_2 (.CI(VCC_net), .I0(n2419), .I1(GND_net), 
            .CO(n4018));
    SB_CARRY rem_4_add_2473_5 (.CI(n4230), .I0(n1_adj_357[31]), .I1(n3722), 
            .CO(n4231));
    SB_CARRY rem_4_add_2156_6 (.CI(n4145), .I0(n3215), .I1(GND_net), .CO(n4146));
    SB_LUT4 rem_4_add_1821_17_lut (.I0(n2704), .I1(n2704), .I2(n2737), 
            .I3(n4071), .O(n2803)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2156_5_lut (.I0(GND_net), .I1(n3216), .I2(GND_net), 
            .I3(n4144), .O(n3265[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_13_lut (.I0(n2308), .I1(n2308), .I2(n2341), 
            .I3(n4017), .O(n2407)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_13_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2473_4_lut (.I0(eeprom_counter[2]), .I1(n1_adj_357[31]), 
            .I2(n3723), .I3(n4229), .O(enable_N_60[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_4_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_5 (.CI(n4144), .I0(n3216), .I1(GND_net), .CO(n4145));
    SB_LUT4 rem_4_add_1821_16_lut (.I0(n2705), .I1(n2705), .I2(n2737), 
            .I3(n4070), .O(n2804)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_16_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2156_4_lut (.I0(GND_net), .I1(n3217), .I2(GND_net), 
            .I3(n4143), .O(n3265[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_12_lut (.I0(n2309), .I1(n2309), .I2(n2341), 
            .I3(n4016), .O(n2408)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY rem_4_add_2473_4 (.CI(n4229), .I0(n1_adj_357[31]), .I1(n3723), 
            .CO(n4230));
    SB_CARRY rem_4_add_2156_4 (.CI(n4143), .I0(n3217), .I1(GND_net), .CO(n4144));
    SB_LUT4 rem_4_add_2473_3_lut (.I0(eeprom_counter[1]), .I1(n1_adj_357[31]), 
            .I2(n3724), .I3(n4228), .O(enable_N_60[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_3_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_3_lut (.I0(GND_net), .I1(n3218), .I2(VCC_net), 
            .I3(n4142), .O(n3265[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_16 (.CI(n4070), .I0(n2705), .I1(n2737), .CO(n4071));
    SB_CARRY rem_4_add_1553_12 (.CI(n4016), .I0(n2309), .I1(n2341), .CO(n4017));
    SB_CARRY rem_4_add_2473_3 (.CI(n4228), .I0(n1_adj_357[31]), .I1(n3724), 
            .CO(n4229));
    SB_CARRY rem_4_add_2156_3 (.CI(n4142), .I0(n3218), .I1(VCC_net), .CO(n4143));
    SB_LUT4 rem_4_add_2473_2_lut (.I0(eeprom_counter[0]), .I1(n1_adj_357[31]), 
            .I2(n917), .I3(VCC_net), .O(enable_N_60[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_2_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_2_lut (.I0(GND_net), .I1(n3219), .I2(GND_net), 
            .I3(VCC_net), .O(n3265[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_15_lut (.I0(n2706), .I1(n2706), .I2(n2737), 
            .I3(n4069), .O(n2805)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_15_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_1553_11_lut (.I0(n2310), .I1(n2310), .I2(n2341), 
            .I3(n4015), .O(n2409)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY rem_4_add_2473_2 (.CI(VCC_net), .I0(n1_adj_357[31]), .I1(n917), 
            .CO(n4228));
    SB_LUT4 rem_4_add_2357_25_lut (.I0(n3529), .I1(n3496), .I2(VCC_net), 
            .I3(n4227), .O(n5355)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_25_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_2156_2 (.CI(VCC_net), .I0(n3219), .I1(GND_net), 
            .CO(n4142));
    SB_CARRY rem_4_add_1821_15 (.CI(n4069), .I0(n2706), .I1(n2737), .CO(n4070));
    SB_CARRY rem_4_add_1553_11 (.CI(n4015), .I0(n2310), .I1(n2341), .CO(n4016));
    SB_LUT4 rem_4_add_2357_24_lut (.I0(GND_net), .I1(n3497), .I2(VCC_net), 
            .I3(n4226), .O(n3562[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_14_lut (.I0(n2707), .I1(n2707), .I2(n2737), 
            .I3(n4068), .O(n2806)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_1553_10_lut (.I0(n2311), .I1(n2311), .I2(n2341), 
            .I3(n4014), .O(n2410)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2089_21_lut (.I0(n3133), .I1(n3100), .I2(VCC_net), 
            .I3(n4141), .O(n3199)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_21_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_1419_10 (.CI(n3995), .I0(n2111), .I1(VCC_net), 
            .CO(n3996));
    SB_CARRY rem_4_add_2357_24 (.CI(n4226), .I0(n3497), .I1(VCC_net), 
            .CO(n4227));
    SB_LUT4 rem_4_add_2357_23_lut (.I0(GND_net), .I1(n3498), .I2(VCC_net), 
            .I3(n4225), .O(n3562[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_20_lut (.I0(GND_net), .I1(n3101), .I2(VCC_net), 
            .I3(n4140), .O(n3166[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_14 (.CI(n4068), .I0(n2707), .I1(n2737), .CO(n4069));
    SB_CARRY rem_4_add_1553_10 (.CI(n4014), .I0(n2311), .I1(n2341), .CO(n4015));
    SB_CARRY rem_4_add_2357_23 (.CI(n4225), .I0(n3498), .I1(VCC_net), 
            .CO(n4226));
    SB_CARRY rem_4_add_2089_20 (.CI(n4140), .I0(n3101), .I1(VCC_net), 
            .CO(n4141));
    SB_LUT4 rem_4_add_1821_13_lut (.I0(n2708), .I1(n2708), .I2(n2737), 
            .I3(n4067), .O(n2807)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_13_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2089_19_lut (.I0(GND_net), .I1(n3102), .I2(VCC_net), 
            .I3(n4139), .O(n3166[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_9_lut (.I0(n2312), .I1(n2312), .I2(n2341), 
            .I3(n4013), .O(n2411)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2357_22_lut (.I0(GND_net), .I1(n3499), .I2(VCC_net), 
            .I3(n4224), .O(n3562[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1419_9_lut (.I0(GND_net), .I1(n2112), .I2(VCC_net), 
            .I3(n3994), .O(n2176[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_22 (.CI(n4224), .I0(n3499), .I1(VCC_net), 
            .CO(n4225));
    SB_CARRY rem_4_add_2089_19 (.CI(n4139), .I0(n3102), .I1(VCC_net), 
            .CO(n4140));
    SB_LUT4 rem_4_add_2357_21_lut (.I0(GND_net), .I1(n3500), .I2(VCC_net), 
            .I3(n4223), .O(n3562[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_18_lut (.I0(GND_net), .I1(n3103), .I2(VCC_net), 
            .I3(n4138), .O(n3166[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_13 (.CI(n4067), .I0(n2708), .I1(n2737), .CO(n4068));
    SB_CARRY rem_4_add_2357_21 (.CI(n4223), .I0(n3500), .I1(VCC_net), 
            .CO(n4224));
    SB_CARRY rem_4_add_2089_18 (.CI(n4138), .I0(n3103), .I1(VCC_net), 
            .CO(n4139));
    SB_LUT4 rem_4_add_2357_20_lut (.I0(GND_net), .I1(n3501), .I2(VCC_net), 
            .I3(n4222), .O(n3562[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_17_lut (.I0(GND_net), .I1(n3104), .I2(VCC_net), 
            .I3(n4137), .O(n3166[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_12_lut (.I0(n2709), .I1(n2709), .I2(n2737), 
            .I3(n4066), .O(n2808)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY rem_4_add_2357_20 (.CI(n4222), .I0(n3501), .I1(VCC_net), 
            .CO(n4223));
    SB_CARRY rem_4_add_2089_17 (.CI(n4137), .I0(n3104), .I1(VCC_net), 
            .CO(n4138));
    SB_CARRY rem_4_add_1821_12 (.CI(n4066), .I0(n2709), .I1(n2737), .CO(n4067));
    SB_CARRY rem_4_add_1553_9 (.CI(n4013), .I0(n2312), .I1(n2341), .CO(n4014));
    SB_LUT4 rem_4_add_2357_19_lut (.I0(GND_net), .I1(n3502), .I2(VCC_net), 
            .I3(n4221), .O(n3562[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_16_lut (.I0(GND_net), .I1(n3105), .I2(VCC_net), 
            .I3(n4136), .O(n3166[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_6 (.CI(n3991), .I0(n2115), .I1(GND_net), .CO(n3992));
    SB_CARRY rem_4_add_1419_9 (.CI(n3994), .I0(n2112), .I1(VCC_net), .CO(n3995));
    SB_CARRY rem_4_add_2357_19 (.CI(n4221), .I0(n3502), .I1(VCC_net), 
            .CO(n4222));
    SB_CARRY rem_4_add_2089_16 (.CI(n4136), .I0(n3105), .I1(VCC_net), 
            .CO(n4137));
    SB_LUT4 rem_4_add_2089_15_lut (.I0(GND_net), .I1(n3106), .I2(VCC_net), 
            .I3(n4135), .O(n3166[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_11_lut (.I0(n2710), .I1(n2710), .I2(n2737), 
            .I3(n4065), .O(n2809)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_1553_8_lut (.I0(n2313), .I1(n2313), .I2(n5576), 
            .I3(n4012), .O(n2412)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 rem_4_add_2357_18_lut (.I0(GND_net), .I1(n3503), .I2(VCC_net), 
            .I3(n4220), .O(n3562[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_15 (.CI(n4135), .I0(n3106), .I1(VCC_net), 
            .CO(n4136));
    SB_LUT4 rem_4_add_2089_14_lut (.I0(GND_net), .I1(n3107), .I2(VCC_net), 
            .I3(n4134), .O(n3166[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1419_8_lut (.I0(GND_net), .I1(n2113), .I2(GND_net), 
            .I3(n3993), .O(n2176[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_18 (.CI(n4220), .I0(n3503), .I1(VCC_net), 
            .CO(n4221));
    SB_CARRY rem_4_add_2089_14 (.CI(n4134), .I0(n3107), .I1(VCC_net), 
            .CO(n4135));
    SB_CARRY rem_4_add_1821_11 (.CI(n4065), .I0(n2710), .I1(n2737), .CO(n4066));
    SB_LUT4 rem_4_add_2089_13_lut (.I0(GND_net), .I1(n3108), .I2(VCC_net), 
            .I3(n4133), .O(n3166[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_10_lut (.I0(n2711), .I1(n2711), .I2(n2737), 
            .I3(n4064), .O(n2810)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2357_17_lut (.I0(GND_net), .I1(n3504), .I2(VCC_net), 
            .I3(n4219), .O(n3562[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_13 (.CI(n4133), .I0(n3108), .I1(VCC_net), 
            .CO(n4134));
    SB_CARRY rem_4_add_1821_10 (.CI(n4064), .I0(n2711), .I1(n2737), .CO(n4065));
    SB_CARRY rem_4_add_1553_8 (.CI(n4012), .I0(n2313), .I1(n5576), .CO(n4013));
    SB_LUT4 rem_4_add_2089_12_lut (.I0(GND_net), .I1(n3109), .I2(VCC_net), 
            .I3(n4132), .O(n3166[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_9_lut (.I0(n2712), .I1(n2712), .I2(n2737), 
            .I3(n4063), .O(n2811)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i5_4_lut (.I0(n5157), .I1(n2812), .I2(n2819), .I3(n2818), 
            .O(n16));   // verilog/eeprom.v(23[6:29])
    defparam i5_4_lut.LUT_INIT = 16'heeec;
    SB_CARRY rem_4_add_2357_17 (.CI(n4219), .I0(n3504), .I1(VCC_net), 
            .CO(n4220));
    SB_LUT4 rem_4_add_2357_16_lut (.I0(GND_net), .I1(n3505), .I2(VCC_net), 
            .I3(n4218), .O(n3562[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_8 (.CI(n3993), .I0(n2113), .I1(GND_net), .CO(n3994));
    SB_CARRY rem_4_add_2089_12 (.CI(n4132), .I0(n3109), .I1(VCC_net), 
            .CO(n4133));
    SB_CARRY rem_4_add_2357_16 (.CI(n4218), .I0(n3505), .I1(VCC_net), 
            .CO(n4219));
    SB_LUT4 rem_4_add_2357_15_lut (.I0(GND_net), .I1(n3506), .I2(VCC_net), 
            .I3(n4217), .O(n3562[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_11_lut (.I0(GND_net), .I1(n3110), .I2(VCC_net), 
            .I3(n4131), .O(n3166[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_9 (.CI(n4063), .I0(n2712), .I1(n2737), .CO(n4064));
    SB_LUT4 rem_4_add_1821_8_lut (.I0(n2713), .I1(n2713), .I2(n5575), 
            .I3(n4062), .O(n2812)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2089_11 (.CI(n4131), .I0(n3110), .I1(VCC_net), 
            .CO(n4132));
    SB_CARRY rem_4_add_1821_8 (.CI(n4062), .I0(n2713), .I1(n5575), .CO(n4063));
    SB_LUT4 rem_4_add_1821_7_lut (.I0(n2714), .I1(n2714), .I2(n5575), 
            .I3(n4061), .O(n2813)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2357_15 (.CI(n4217), .I0(n3506), .I1(VCC_net), 
            .CO(n4218));
    SB_LUT4 rem_4_add_2089_10_lut (.I0(GND_net), .I1(n3111), .I2(VCC_net), 
            .I3(n4130), .O(n3166[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_10 (.CI(n4130), .I0(n3111), .I1(VCC_net), 
            .CO(n4131));
    SB_LUT4 rem_4_add_1419_7_lut (.I0(GND_net), .I1(n2114), .I2(GND_net), 
            .I3(n3992), .O(n2176[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_7 (.CI(n4061), .I0(n2714), .I1(n5575), .CO(n4062));
    SB_LUT4 rem_4_add_2357_14_lut (.I0(GND_net), .I1(n3507), .I2(VCC_net), 
            .I3(n4216), .O(n3562[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_14 (.CI(n4216), .I0(n3507), .I1(VCC_net), 
            .CO(n4217));
    SB_LUT4 rem_4_add_2357_13_lut (.I0(GND_net), .I1(n3508), .I2(VCC_net), 
            .I3(n4215), .O(n3562[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_26 (.I0(n2414), .I1(n2413), .I2(n2416), .I3(GND_net), 
            .O(n5073));
    defparam i1_3_lut_adj_26.LUT_INIT = 16'h8080;
    SB_CARRY rem_4_add_2357_13 (.CI(n4215), .I0(n3508), .I1(VCC_net), 
            .CO(n4216));
    SB_LUT4 rem_4_add_2089_9_lut (.I0(GND_net), .I1(n3112), .I2(VCC_net), 
            .I3(n4129), .O(n3166[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_6_lut (.I0(n2715), .I1(n2715), .I2(n5575), 
            .I3(n4060), .O(n2814)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_1821_6 (.CI(n4060), .I0(n2715), .I1(n5575), .CO(n4061));
    SB_LUT4 rem_4_add_1553_7_lut (.I0(n2314), .I1(n2314), .I2(n5576), 
            .I3(n4011), .O(n2413)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_1553_7 (.CI(n4011), .I0(n2314), .I1(n5576), .CO(n4012));
    SB_CARRY rem_4_add_2089_9 (.CI(n4129), .I0(n3112), .I1(VCC_net), .CO(n4130));
    SB_LUT4 i1_2_lut_3_lut (.I0(n5328), .I1(n1256), .I2(n1915), .I3(GND_net), 
            .O(n5035));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 rem_4_add_1821_5_lut (.I0(n2716), .I1(n2716), .I2(n5575), 
            .I3(n4059), .O(n2815)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_1821_5 (.CI(n4059), .I0(n2716), .I1(n5575), .CO(n4060));
    SB_LUT4 rem_4_add_1553_6_lut (.I0(n2315), .I1(n2315), .I2(n5576), 
            .I3(n4010), .O(n2414)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_1553_6 (.CI(n4010), .I0(n2315), .I1(n5576), .CO(n4011));
    SB_LUT4 rem_4_add_2357_12_lut (.I0(GND_net), .I1(n3509), .I2(VCC_net), 
            .I3(n4214), .O(n3562[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_7 (.CI(n3992), .I0(n2114), .I1(GND_net), .CO(n3993));
    SB_LUT4 i1_4_lut_adj_27 (.I0(n5073), .I1(n2419), .I2(n5071), .I3(n2418), 
            .O(n4782));
    defparam i1_4_lut_adj_27.LUT_INIT = 16'ha080;
    SB_CARRY rem_4_add_2357_12 (.CI(n4214), .I0(n3509), .I1(VCC_net), 
            .CO(n4215));
    SB_LUT4 rem_4_add_2089_8_lut (.I0(GND_net), .I1(n3113), .I2(GND_net), 
            .I3(n4128), .O(n3166[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_4_lut (.I0(n2717), .I1(n2717), .I2(n5575), 
            .I3(n4058), .O(n2816)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2089_8 (.CI(n4128), .I0(n3113), .I1(GND_net), .CO(n4129));
    SB_CARRY rem_4_add_1821_4 (.CI(n4058), .I0(n2717), .I1(n5575), .CO(n4059));
    SB_LUT4 i5_4_lut_adj_28 (.I0(n2409), .I1(n4782), .I2(n2410), .I3(n2411), 
            .O(n12));   // verilog/eeprom.v(23[6:29])
    defparam i5_4_lut_adj_28.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_29 (.I0(n2811), .I1(n18_adj_290), .I2(n2804), 
            .I3(n2803), .O(n20_adj_291));   // verilog/eeprom.v(23[6:29])
    defparam i9_4_lut_adj_29.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_2357_11_lut (.I0(GND_net), .I1(n3510), .I2(VCC_net), 
            .I3(n4213), .O(n3562[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_7_lut (.I0(GND_net), .I1(n3114), .I2(GND_net), 
            .I3(n4127), .O(n3166[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_3_lut (.I0(n2718), .I1(n2718), .I2(n2737), 
            .I3(n4057), .O(n2817)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_3_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_1553_5_lut (.I0(n2316), .I1(n2316), .I2(n5576), 
            .I3(n4009), .O(n2415)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2089_7 (.CI(n4127), .I0(n3114), .I1(GND_net), .CO(n4128));
    SB_CARRY rem_4_add_1821_3 (.CI(n4057), .I0(n2718), .I1(n2737), .CO(n4058));
    SB_LUT4 rem_4_add_1419_6_lut (.I0(GND_net), .I1(n2115), .I2(GND_net), 
            .I3(n3991), .O(n2176[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut (.I0(n2412), .I1(n12), .I2(n2408), .I3(n2407), 
            .O(n2440));   // verilog/eeprom.v(23[6:29])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2357_11 (.CI(n4213), .I0(n3510), .I1(VCC_net), 
            .CO(n4214));
    SB_LUT4 rem_4_i1633_3_lut (.I0(n2418), .I1(n2473[20]), .I2(n2440), 
            .I3(GND_net), .O(n2517));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_10_lut (.I0(GND_net), .I1(n3511), .I2(VCC_net), 
            .I3(n4212), .O(n3562[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_6_lut (.I0(GND_net), .I1(n3115), .I2(GND_net), 
            .I3(n4126), .O(n3166[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_2_lut (.I0(n2719), .I1(n2719), .I2(n5575), 
            .I3(VCC_net), .O(n2818)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_1553_5 (.CI(n4009), .I0(n2316), .I1(n5576), .CO(n4010));
    SB_LUT4 rem_4_add_1553_4_lut (.I0(n2317), .I1(n2317), .I2(n5576), 
            .I3(n4008), .O(n2416)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2357_10 (.CI(n4212), .I0(n3511), .I1(VCC_net), 
            .CO(n4213));
    SB_CARRY rem_4_add_2089_6 (.CI(n4126), .I0(n3115), .I1(GND_net), .CO(n4127));
    SB_CARRY rem_4_add_1821_2 (.CI(VCC_net), .I0(n2719), .I1(n5575), .CO(n4057));
    SB_CARRY rem_4_add_1553_4 (.CI(n4008), .I0(n2317), .I1(n5576), .CO(n4009));
    SB_LUT4 rem_4_add_2089_5_lut (.I0(GND_net), .I1(n3116), .I2(GND_net), 
            .I3(n4125), .O(n3166[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_16_lut (.I0(n2638), .I1(n2605), .I2(VCC_net), 
            .I3(n4056), .O(n2704)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1553_3_lut (.I0(n2318), .I1(n2318), .I2(n2341), 
            .I3(n4007), .O(n2417)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_3_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2357_9_lut (.I0(GND_net), .I1(n3512), .I2(VCC_net), 
            .I3(n4211), .O(n3562[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_5 (.CI(n4125), .I0(n3116), .I1(GND_net), .CO(n4126));
    SB_LUT4 rem_4_add_1754_15_lut (.I0(GND_net), .I1(n2606), .I2(VCC_net), 
            .I3(n4055), .O(n2671[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1553_3 (.CI(n4007), .I0(n2318), .I1(n2341), .CO(n4008));
    SB_LUT4 eeprom_counter_228_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[31]), .I3(n3961), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i13_1_lut (.I0(eeprom_counter[12]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[12]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2089_4_lut (.I0(GND_net), .I1(n3117), .I2(GND_net), 
            .I3(n4124), .O(n3166[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_15 (.CI(n4055), .I0(n2606), .I1(VCC_net), 
            .CO(n4056));
    SB_LUT4 rem_4_add_1553_2_lut (.I0(n2319), .I1(n2319), .I2(n5576), 
            .I3(VCC_net), .O(n2418)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2357_9 (.CI(n4211), .I0(n3512), .I1(VCC_net), .CO(n4212));
    SB_LUT4 rem_4_add_1419_5_lut (.I0(GND_net), .I1(n2116), .I2(GND_net), 
            .I3(n3990), .O(n2176[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_4 (.CI(n4124), .I0(n3117), .I1(GND_net), .CO(n4125));
    SB_CARRY rem_4_add_1553_2 (.CI(VCC_net), .I0(n2319), .I1(n5576), .CO(n4007));
    SB_LUT4 rem_4_add_2357_8_lut (.I0(GND_net), .I1(n3513), .I2(GND_net), 
            .I3(n4210), .O(n3562[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_3_lut (.I0(GND_net), .I1(n3118), .I2(VCC_net), 
            .I3(n4123), .O(n3166[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_14_lut (.I0(GND_net), .I1(n2607), .I2(VCC_net), 
            .I3(n4054), .O(n2671[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_3 (.CI(n4123), .I0(n3118), .I1(VCC_net), .CO(n4124));
    SB_CARRY rem_4_add_1754_14 (.CI(n4054), .I0(n2607), .I1(VCC_net), 
            .CO(n4055));
    SB_LUT4 rem_4_mux_3_i23_3_lut (.I0(eeprom_counter[22]), .I1(n1[22]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2119));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4673_3_lut (.I0(n1137), .I1(n1191[4]), .I2(n1843), .I3(GND_net), 
            .O(n1914));   // verilog/eeprom.v(23[6:29])
    defparam i4673_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4674_3_lut (.I0(n1914), .I1(n1978[29]), .I2(n1945), .I3(GND_net), 
            .O(n2013));   // verilog/eeprom.v(23[6:29])
    defparam i4674_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_8 (.CI(n4210), .I0(n3513), .I1(GND_net), .CO(n4211));
    SB_LUT4 rem_4_add_2089_2_lut (.I0(GND_net), .I1(n3119), .I2(GND_net), 
            .I3(VCC_net), .O(n3166[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_13_lut (.I0(GND_net), .I1(n2608), .I2(VCC_net), 
            .I3(n4053), .O(n2671[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_12_lut (.I0(n2242), .I1(n2209), .I2(VCC_net), 
            .I3(n4006), .O(n2308)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_2089_2 (.CI(VCC_net), .I0(n3119), .I1(GND_net), 
            .CO(n4123));
    SB_CARRY rem_4_add_1754_13 (.CI(n4053), .I0(n2608), .I1(VCC_net), 
            .CO(n4054));
    SB_LUT4 rem_4_add_2357_7_lut (.I0(GND_net), .I1(n3514), .I2(GND_net), 
            .I3(n4209), .O(n3562[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut_adj_30 (.I0(n2807), .I1(n20_adj_291), .I2(n16), 
            .I3(n2810), .O(n2836));   // verilog/eeprom.v(23[6:29])
    defparam i10_4_lut_adj_30.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2357_7 (.CI(n4209), .I0(n3514), .I1(GND_net), .CO(n4210));
    SB_LUT4 rem_4_add_2022_20_lut (.I0(n3034), .I1(n3001), .I2(VCC_net), 
            .I3(n4122), .O(n3100)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2022_19_lut (.I0(GND_net), .I1(n3002), .I2(VCC_net), 
            .I3(n4121), .O(n3067[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_6_lut (.I0(GND_net), .I1(n3515), .I2(GND_net), 
            .I3(n4208), .O(n3562[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_19 (.CI(n4121), .I0(n3002), .I1(VCC_net), 
            .CO(n4122));
    SB_LUT4 rem_4_add_1486_11_lut (.I0(GND_net), .I1(n2210), .I2(VCC_net), 
            .I3(n4005), .O(n2275[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_18_lut (.I0(GND_net), .I1(n3003), .I2(VCC_net), 
            .I3(n4120), .O(n3067[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_11 (.CI(n4005), .I0(n2210), .I1(VCC_net), 
            .CO(n4006));
    SB_CARRY rem_4_add_2357_6 (.CI(n4208), .I0(n3515), .I1(GND_net), .CO(n4209));
    SB_CARRY rem_4_add_2022_18 (.CI(n4120), .I0(n3003), .I1(VCC_net), 
            .CO(n4121));
    SB_LUT4 rem_4_add_1754_12_lut (.I0(GND_net), .I1(n2609), .I2(VCC_net), 
            .I3(n4052), .O(n2671[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_17_lut (.I0(GND_net), .I1(n3004), .I2(VCC_net), 
            .I3(n4119), .O(n3067[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_12 (.CI(n4052), .I0(n2609), .I1(VCC_net), 
            .CO(n4053));
    SB_LUT4 rem_4_add_2357_5_lut (.I0(GND_net), .I1(n3516), .I2(GND_net), 
            .I3(n4207), .O(n3562[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2105_3_lut (.I0(n3114), .I1(n3166[17]), .I2(n3133), 
            .I3(GND_net), .O(n3213));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i15_1_lut (.I0(eeprom_counter[14]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[14]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i16_1_lut (.I0(eeprom_counter[15]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[15]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i17_1_lut (.I0(eeprom_counter[16]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[16]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i1898_3_lut (.I0(n2811), .I1(n2869[23]), .I2(n2836), 
            .I3(GND_net), .O(n2910));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1898_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_5 (.CI(n4207), .I0(n3516), .I1(GND_net), .CO(n4208));
    SB_LUT4 rem_4_add_2357_4_lut (.I0(GND_net), .I1(n3517), .I2(GND_net), 
            .I3(n4206), .O(n3562[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_4 (.CI(n4206), .I0(n3517), .I1(GND_net), .CO(n4207));
    SB_CARRY rem_4_add_2022_17 (.CI(n4119), .I0(n3004), .I1(VCC_net), 
            .CO(n4120));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i18_1_lut (.I0(eeprom_counter[17]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[17]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i19_1_lut (.I0(eeprom_counter[18]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[18]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2022_16_lut (.I0(GND_net), .I1(n3005), .I2(VCC_net), 
            .I3(n4118), .O(n3067[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_3_lut (.I0(GND_net), .I1(n3518), .I2(VCC_net), 
            .I3(n4205), .O(n3562[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_228_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[30]), .I3(n3960), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2174_3_lut (.I0(n3215), .I1(n3265[15]), .I2(n3232), 
            .I3(GND_net), .O(n3314));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2174_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i20_1_lut (.I0(eeprom_counter[19]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[19]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2098_3_lut (.I0(n3107), .I1(n3166[24]), .I2(n3133), 
            .I3(GND_net), .O(n3206));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2098_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i21_1_lut (.I0(eeprom_counter[20]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[20]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i22_1_lut (.I0(eeprom_counter[21]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[21]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2097_3_lut (.I0(n3106), .I1(n3166[25]), .I2(n3133), 
            .I3(GND_net), .O(n3205));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1895_3_lut (.I0(n2808), .I1(n2869[26]), .I2(n2836), 
            .I3(GND_net), .O(n2907));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1895_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1899_3_lut (.I0(n2812), .I1(n2869[22]), .I2(n2836), 
            .I3(GND_net), .O(n2911));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i23_1_lut (.I0(eeprom_counter[22]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[22]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_31 (.I0(n3213), .I1(n3215), .I2(GND_net), .I3(GND_net), 
            .O(n5205));
    defparam i1_2_lut_adj_31.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i2104_3_lut (.I0(n3113), .I1(n3166[18]), .I2(n3133), 
            .I3(GND_net), .O(n3212));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1419_3_lut (.I0(GND_net), .I1(n2118), .I2(VCC_net), 
            .I3(n3988), .O(n2176[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_32 (.CI(n3960), .I0(GND_net), .I1(eeprom_counter[30]), 
            .CO(n3961));
    SB_LUT4 i1_4_lut_adj_32 (.I0(n3214), .I1(n5205), .I2(n3217), .I3(n3216), 
            .O(n5209));
    defparam i1_4_lut_adj_32.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i2096_3_lut (.I0(n3105), .I1(n3166[26]), .I2(n3133), 
            .I3(GND_net), .O(n3204));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2096_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2094_3_lut (.I0(n3103), .I1(n3166[28]), .I2(n3133), 
            .I3(GND_net), .O(n3202));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2094_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2095_3_lut (.I0(n3104), .I1(n3166[27]), .I2(n3133), 
            .I3(GND_net), .O(n3203));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2095_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2093_3_lut (.I0(n3102), .I1(n3166[29]), .I2(n3133), 
            .I3(GND_net), .O(n3201));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2093_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1419_5 (.CI(n3990), .I0(n2116), .I1(GND_net), .CO(n3991));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i24_1_lut (.I0(eeprom_counter[23]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[23]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 eeprom_counter_228_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[29]), .I3(n3959), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_31 (.CI(n3959), .I0(GND_net), .I1(eeprom_counter[29]), 
            .CO(n3960));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i25_1_lut (.I0(eeprom_counter[24]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[24]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i26_1_lut (.I0(eeprom_counter[25]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[25]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i27_1_lut (.I0(eeprom_counter[26]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[26]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i1900_3_lut (.I0(n2813), .I1(n2869[21]), .I2(n2836), 
            .I3(GND_net), .O(n2912));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_33 (.I0(n2913), .I1(n2915), .I2(GND_net), .I3(GND_net), 
            .O(n5297));
    defparam i1_2_lut_adj_33.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_1419_4_lut (.I0(GND_net), .I1(n2117), .I2(GND_net), 
            .I3(n3989), .O(n2176[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_228_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[28]), .I3(n3958), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i28_1_lut (.I0(eeprom_counter[27]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[27]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i29_1_lut (.I0(eeprom_counter[28]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[28]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2108_3_lut (.I0(n3117), .I1(n3166[14]), .I2(n3133), 
            .I3(GND_net), .O(n3216));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2108_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_30 (.CI(n3958), .I0(GND_net), .I1(eeprom_counter[28]), 
            .CO(n3959));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i30_1_lut (.I0(eeprom_counter[29]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[29]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i31_1_lut (.I0(eeprom_counter[30]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[30]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_34 (.I0(n2914), .I1(n5297), .I2(n2917), .I3(n2916), 
            .O(n5301));
    defparam i1_4_lut_adj_34.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i2109_3_lut (.I0(n3118), .I1(n3166[13]), .I2(n3133), 
            .I3(GND_net), .O(n3217));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2103_3_lut (.I0(n3112), .I1(n3166[19]), .I2(n3133), 
            .I3(GND_net), .O(n3211));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[27]), .I3(n3957), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_35 (.I0(rw), .I1(enable_N_59), .I2(GND_net), 
            .I3(GND_net), .O(rw_N_75));
    defparam i1_2_lut_adj_35.LUT_INIT = 16'h6666;
    SB_CARRY eeprom_counter_228_add_4_29 (.CI(n3957), .I0(GND_net), .I1(eeprom_counter[27]), 
            .CO(n3958));
    SB_LUT4 i3_4_lut (.I0(n2906), .I1(n5301), .I2(n2919), .I3(n2918), 
            .O(n15_adj_300));
    defparam i3_4_lut.LUT_INIT = 16'heeea;
    SB_LUT4 eeprom_counter_228_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[26]), .I3(n3956), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_36 (.I0(n5209), .I1(n3207), .I2(n3219), .I3(n3218), 
            .O(n20_adj_301));   // verilog/eeprom.v(23[6:29])
    defparam i5_4_lut_adj_36.LUT_INIT = 16'heeec;
    SB_LUT4 i11_4_lut_adj_37 (.I0(n3208), .I1(n3210), .I2(n3209), .I3(n3211), 
            .O(n26_adj_302));   // verilog/eeprom.v(23[6:29])
    defparam i11_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_38 (.I0(n3200), .I1(n3199), .I2(GND_net), .I3(GND_net), 
            .O(n16_adj_303));   // verilog/eeprom.v(23[6:29])
    defparam i1_2_lut_adj_38.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut_adj_39 (.I0(n3201), .I1(n3203), .I2(n3202), .I3(n3204), 
            .O(n24_adj_304));   // verilog/eeprom.v(23[6:29])
    defparam i9_4_lut_adj_39.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_40 (.I0(n3205), .I1(n26_adj_302), .I2(n20_adj_301), 
            .I3(n3206), .O(n28_adj_305));   // verilog/eeprom.v(23[6:29])
    defparam i13_4_lut_adj_40.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(n3212), .I1(n28_adj_305), .I2(n24_adj_304), 
            .I3(n16_adj_303), .O(n3232));   // verilog/eeprom.v(23[6:29])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2106_3_lut (.I0(n3115), .I1(n3166[16]), .I2(n3133), 
            .I3(GND_net), .O(n3214));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2173_3_lut (.I0(n3214), .I1(n3265[16]), .I2(n3232), 
            .I3(GND_net), .O(n3313));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i14_1_lut (.I0(eeprom_counter[13]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[13]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i1288_3_lut (.I0(n1913), .I1(n1978[30]), .I2(n1945), 
            .I3(GND_net), .O(n2012));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1288_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1294_3_lut (.I0(n1919), .I1(n1978[24]), .I2(n1945), 
            .I3(GND_net), .O(n2018));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1294_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_41 (.I0(enable_N_60[2]), .I1(enable_N_60[1]), .I2(enable_N_60[0]), 
            .I3(GND_net), .O(n4847));   // verilog/eeprom.v(23[6:32])
    defparam i1_3_lut_adj_41.LUT_INIT = 16'hfefe;
    SB_LUT4 rem_4_i1290_3_lut (.I0(n1915), .I1(n1978[28]), .I2(n1945), 
            .I3(GND_net), .O(n2014));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1290_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i28_3_lut (.I0(eeprom_counter[27]), .I1(n1[27]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1139));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i401_2_lut (.I0(n1[31]), .I1(eeprom_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(n1135));
    defparam i401_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i1226_3_lut (.I0(n892), .I1(n1191[0]), .I2(n1843), .I3(GND_net), 
            .O(n1918));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i25_3_lut (.I0(eeprom_counter[24]), .I1(n1[24]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1919));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i27_3_lut (.I0(eeprom_counter[26]), .I1(n1[26]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1140));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1225_3_lut (.I0(n1140), .I1(n1191[1]), .I2(n1843), 
            .I3(GND_net), .O(n1917));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1225_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i30_3_lut (.I0(eeprom_counter[29]), .I1(n1[29]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1137));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i26_3_lut (.I0(eeprom_counter[25]), .I1(n1[25]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n892));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i31_3_lut (.I0(eeprom_counter[30]), .I1(n1[30]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1256));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_42 (.I0(n892), .I1(n1[27]), .I2(eeprom_counter[31]), 
            .I3(n1[26]), .O(n4977));
    defparam i1_4_lut_adj_42.LUT_INIT = 16'hc080;
    SB_LUT4 i1_4_lut_adj_43 (.I0(n1[31]), .I1(n1137), .I2(n1138), .I3(n4977), 
            .O(n4983));
    defparam i1_4_lut_adj_43.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_44 (.I0(n4983), .I1(n1256), .I2(GND_net), .I3(GND_net), 
            .O(n1843));
    defparam i1_2_lut_adj_44.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_45 (.I0(enable_N_60[5]), .I1(enable_N_60[4]), .I2(enable_N_60[3]), 
            .I3(n4847), .O(n4853));   // verilog/eeprom.v(23[6:32])
    defparam i1_4_lut_adj_45.LUT_INIT = 16'hfffe;
    SB_CARRY eeprom_counter_228_add_4_28 (.CI(n3956), .I0(GND_net), .I1(eeprom_counter[26]), 
            .CO(n3957));
    SB_LUT4 eeprom_counter_228_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[25]), .I3(n3955), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_27 (.CI(n3955), .I0(GND_net), .I1(eeprom_counter[25]), 
            .CO(n3956));
    SB_LUT4 eeprom_counter_228_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[24]), .I3(n3954), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_26 (.CI(n3954), .I0(GND_net), .I1(eeprom_counter[24]), 
            .CO(n3955));
    SB_LUT4 eeprom_counter_228_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[23]), .I3(n3953), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_46 (.I0(enable_N_60[8]), .I1(enable_N_60[7]), .I2(enable_N_60[6]), 
            .I3(n4853), .O(n4859));   // verilog/eeprom.v(23[6:32])
    defparam i1_4_lut_adj_46.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_47 (.I0(enable_N_60[11]), .I1(enable_N_60[10]), 
            .I2(enable_N_60[9]), .I3(n4859), .O(n4865));   // verilog/eeprom.v(23[6:32])
    defparam i1_4_lut_adj_47.LUT_INIT = 16'hfffe;
    SB_LUT4 i4699_4_lut (.I0(enable_N_60[13]), .I1(enable_N_60[14]), .I2(enable_N_60[12]), 
            .I3(n4865), .O(enable_N_59));   // verilog/eeprom.v(23[6:32])
    defparam i4699_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 rem_4_i2101_3_lut (.I0(n3110), .I1(n3166[21]), .I2(n3133), 
            .I3(GND_net), .O(n3209));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2102_3_lut (.I0(n3111), .I1(n3166[20]), .I2(n3133), 
            .I3(GND_net), .O(n3210));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2102_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eeprom_counter_228__i1 (.Q(eeprom_counter[1]), .C(CLK_N_keep), 
           .D(n133[1]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i2 (.Q(eeprom_counter[2]), .C(CLK_N_keep), 
           .D(n133[2]));   // verilog/eeprom.v(22[21:39])
    SB_CARRY eeprom_counter_228_add_4_25 (.CI(n3953), .I0(GND_net), .I1(eeprom_counter[23]), 
            .CO(n3954));
    SB_DFF eeprom_counter_228__i3 (.Q(eeprom_counter[3]), .C(CLK_N_keep), 
           .D(n133[3]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i4 (.Q(eeprom_counter[4]), .C(CLK_N_keep), 
           .D(n133[4]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i5 (.Q(eeprom_counter[5]), .C(CLK_N_keep), 
           .D(n133[5]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i6 (.Q(eeprom_counter[6]), .C(CLK_N_keep), 
           .D(n133[6]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i7 (.Q(eeprom_counter[7]), .C(CLK_N_keep), 
           .D(n133[7]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i8 (.Q(eeprom_counter[8]), .C(CLK_N_keep), 
           .D(n133[8]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i9 (.Q(eeprom_counter[9]), .C(CLK_N_keep), 
           .D(n133[9]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i10 (.Q(eeprom_counter[10]), .C(CLK_N_keep), 
           .D(n133[10]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i11 (.Q(eeprom_counter[11]), .C(CLK_N_keep), 
           .D(n133[11]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i12 (.Q(eeprom_counter[12]), .C(CLK_N_keep), 
           .D(n133[12]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i13 (.Q(eeprom_counter[13]), .C(CLK_N_keep), 
           .D(n133[13]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i14 (.Q(eeprom_counter[14]), .C(CLK_N_keep), 
           .D(n133[14]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i15 (.Q(eeprom_counter[15]), .C(CLK_N_keep), 
           .D(n133[15]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i16 (.Q(eeprom_counter[16]), .C(CLK_N_keep), 
           .D(n133[16]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i17 (.Q(eeprom_counter[17]), .C(CLK_N_keep), 
           .D(n133[17]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i18 (.Q(eeprom_counter[18]), .C(CLK_N_keep), 
           .D(n133[18]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i19 (.Q(eeprom_counter[19]), .C(CLK_N_keep), 
           .D(n133[19]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i20 (.Q(eeprom_counter[20]), .C(CLK_N_keep), 
           .D(n133[20]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i21 (.Q(eeprom_counter[21]), .C(CLK_N_keep), 
           .D(n133[21]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i22 (.Q(eeprom_counter[22]), .C(CLK_N_keep), 
           .D(n133[22]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i23 (.Q(eeprom_counter[23]), .C(CLK_N_keep), 
           .D(n133[23]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i24 (.Q(eeprom_counter[24]), .C(CLK_N_keep), 
           .D(n133[24]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i25 (.Q(eeprom_counter[25]), .C(CLK_N_keep), 
           .D(n133[25]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i26 (.Q(eeprom_counter[26]), .C(CLK_N_keep), 
           .D(n133[26]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i27 (.Q(eeprom_counter[27]), .C(CLK_N_keep), 
           .D(n133[27]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i28 (.Q(eeprom_counter[28]), .C(CLK_N_keep), 
           .D(n133[28]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i29 (.Q(eeprom_counter[29]), .C(CLK_N_keep), 
           .D(n133[29]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i30 (.Q(eeprom_counter[30]), .C(CLK_N_keep), 
           .D(n133[30]));   // verilog/eeprom.v(22[21:39])
    SB_DFF eeprom_counter_228__i31 (.Q(eeprom_counter[31]), .C(CLK_N_keep), 
           .D(n133[31]));   // verilog/eeprom.v(22[21:39])
    SB_LUT4 eeprom_counter_228_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[22]), .I3(n3952), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_24 (.CI(n3952), .I0(GND_net), .I1(eeprom_counter[22]), 
            .CO(n3953));
    SB_LUT4 eeprom_counter_228_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[21]), .I3(n3951), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2100_3_lut (.I0(n3109), .I1(n3166[22]), .I2(n3133), 
            .I3(GND_net), .O(n3208));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2100_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_3 (.CI(n4205), .I0(n3518), .I1(VCC_net), .CO(n4206));
    SB_CARRY rem_4_add_2022_16 (.CI(n4118), .I0(n3005), .I1(VCC_net), 
            .CO(n4119));
    SB_LUT4 rem_4_add_2357_2_lut (.I0(GND_net), .I1(n3519), .I2(GND_net), 
            .I3(VCC_net), .O(n3562[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_11_lut (.I0(GND_net), .I1(n2610), .I2(VCC_net), 
            .I3(n4051), .O(n2671[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2092_3_lut (.I0(n3101), .I1(n3166[30]), .I2(n3133), 
            .I3(GND_net), .O(n3200));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2092_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2110_3_lut (.I0(n3119), .I1(n3166[12]), .I2(n3133), 
            .I3(GND_net), .O(n3218));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i12_3_lut (.I0(eeprom_counter[11]), .I1(n1[11]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3219));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2099_3_lut (.I0(n3108), .I1(n3166[23]), .I2(n3133), 
            .I3(GND_net), .O(n3207));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2099_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2034_3_lut (.I0(n3011), .I1(n3067[21]), .I2(n3034), 
            .I3(GND_net), .O(n3110));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2036_3_lut (.I0(n3013), .I1(n3067[19]), .I2(n3034), 
            .I3(GND_net), .O(n3112));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2029_3_lut (.I0(n3006), .I1(n3067[26]), .I2(n3034), 
            .I3(GND_net), .O(n3105));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2028_3_lut (.I0(n3005), .I1(n3067[27]), .I2(n3034), 
            .I3(GND_net), .O(n3104));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2028_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2033_3_lut (.I0(n3010), .I1(n3067[22]), .I2(n3034), 
            .I3(GND_net), .O(n3109));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2035_3_lut (.I0(n3012), .I1(n3067[20]), .I2(n3034), 
            .I3(GND_net), .O(n3111));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2032_3_lut (.I0(n3009), .I1(n3067[23]), .I2(n3034), 
            .I3(GND_net), .O(n3108));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2031_3_lut (.I0(n3008), .I1(n3067[24]), .I2(n3034), 
            .I3(GND_net), .O(n3107));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i29_3_lut (.I0(eeprom_counter[28]), .I1(n1[28]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1138));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_23 (.CI(n3951), .I0(GND_net), .I1(eeprom_counter[21]), 
            .CO(n3952));
    SB_LUT4 rem_4_i2027_3_lut (.I0(n3004), .I1(n3067[28]), .I2(n3034), 
            .I3(GND_net), .O(n3103));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1223_3_lut (.I0(n1138), .I1(n1191[3]), .I2(n1843), 
            .I3(GND_net), .O(n1915));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1223_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2026_3_lut (.I0(n3003), .I1(n3067[29]), .I2(n3034), 
            .I3(GND_net), .O(n3102));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2025_3_lut (.I0(n3002), .I1(n3067[30]), .I2(n3034), 
            .I3(GND_net), .O(n3101));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2041_3_lut (.I0(n3018), .I1(n3067[14]), .I2(n3034), 
            .I3(GND_net), .O(n3117));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2038_3_lut (.I0(n3015), .I1(n3067[17]), .I2(n3034), 
            .I3(GND_net), .O(n3114));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1901_3_lut (.I0(n2814), .I1(n2869[20]), .I2(n2836), 
            .I3(GND_net), .O(n2913));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1966_3_lut (.I0(n2911), .I1(n2968[22]), .I2(n2935), 
            .I3(GND_net), .O(n3010));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4557_1_lut_4_lut (.I0(n1[31]), .I1(n1137), .I2(n1138), .I3(n4977), 
            .O(n5327));
    defparam i4557_1_lut_4_lut.LUT_INIT = 16'h7fff;
    SB_LUT4 eeprom_counter_228_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[20]), .I3(n3950), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4679_3_lut (.I0(n2217), .I1(n2275[23]), .I2(n2242), .I3(GND_net), 
            .O(n2316));   // verilog/eeprom.v(23[6:29])
    defparam i4679_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_22 (.CI(n3950), .I0(GND_net), .I1(eeprom_counter[20]), 
            .CO(n3951));
    SB_LUT4 eeprom_counter_228_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[19]), .I3(n3949), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4677_3_lut (.I0(n5400), .I1(n2017), .I2(n5501), .I3(GND_net), 
            .O(n2314));   // verilog/eeprom.v(23[6:29])
    defparam i4677_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 rem_4_i1968_3_lut (.I0(n2913), .I1(n2968[20]), .I2(n2935), 
            .I3(GND_net), .O(n3012));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4745_1_lut (.I0(n2737), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5575));
    defparam i4745_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2022_15_lut (.I0(GND_net), .I1(n3006), .I2(VCC_net), 
            .I3(n4117), .O(n3067[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4746_1_lut (.I0(n2341), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5576));
    defparam i4746_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_mux_3_i1_3_lut (.I0(eeprom_counter[0]), .I1(n1[0]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n917));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i1_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i2_3_lut (.I0(eeprom_counter[1]), .I1(n1[1]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3724));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i2_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i3_3_lut (.I0(eeprom_counter[2]), .I1(n1[2]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3723));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i3_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4671_3_lut (.I0(n2242), .I1(n2143), .I2(n2044), .I3(GND_net), 
            .O(n5501));
    defparam i4671_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 rem_4_i1360_rep_47_3_lut (.I0(n2077[25]), .I1(n2176[25]), .I2(n2143), 
            .I3(GND_net), .O(n5405));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1360_rep_47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1427_rep_42_3_lut (.I0(n5405), .I1(n2275[25]), .I2(n2242), 
            .I3(GND_net), .O(n5400));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1427_rep_42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1492_3_lut (.I0(n2213), .I1(n2275[27]), .I2(n2242), 
            .I3(GND_net), .O(n2312));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1492_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1498_3_lut (.I0(n2219), .I1(n2275[21]), .I2(n2242), 
            .I3(GND_net), .O(n2318));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i21_3_lut (.I0(eeprom_counter[20]), .I1(n1[20]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2319));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1490_3_lut (.I0(n2211), .I1(n2275[29]), .I2(n2242), 
            .I3(GND_net), .O(n2310));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1490_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1495_3_lut (.I0(n2216), .I1(n2275[24]), .I2(n2242), 
            .I3(GND_net), .O(n2315));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1493_3_lut (.I0(n2214), .I1(n2275[26]), .I2(n2242), 
            .I3(GND_net), .O(n2313));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1493_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1423_3_lut (.I0(n2112), .I1(n2176[29]), .I2(n2143), 
            .I3(GND_net), .O(n2211));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2042_3_lut (.I0(n3019), .I1(n3067[13]), .I2(n3034), 
            .I3(GND_net), .O(n3118));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2042_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_21 (.CI(n3949), .I0(GND_net), .I1(eeprom_counter[19]), 
            .CO(n3950));
    SB_LUT4 rem_4_mux_3_i13_3_lut (.I0(eeprom_counter[12]), .I1(n1[12]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3119));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2030_3_lut (.I0(n3007), .I1(n3067[25]), .I2(n3034), 
            .I3(GND_net), .O(n3106));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[18]), .I3(n3948), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1424_3_lut (.I0(n2113), .I1(n2176[28]), .I2(n2143), 
            .I3(GND_net), .O(n2212));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1424_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_20 (.CI(n3948), .I0(GND_net), .I1(eeprom_counter[18]), 
            .CO(n3949));
    SB_CARRY rem_4_add_1754_11 (.CI(n4051), .I0(n2610), .I1(VCC_net), 
            .CO(n4052));
    SB_LUT4 rem_4_i1964_3_lut (.I0(n2909), .I1(n2968[24]), .I2(n2935), 
            .I3(GND_net), .O(n3008));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1964_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2022_15 (.CI(n4117), .I0(n3006), .I1(VCC_net), 
            .CO(n4118));
    SB_LUT4 rem_4_i1962_3_lut (.I0(n2907), .I1(n2968[26]), .I2(n2935), 
            .I3(GND_net), .O(n3006));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1962_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[17]), .I3(n3947), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1491_3_lut (.I0(n2212), .I1(n2275[28]), .I2(n2242), 
            .I3(GND_net), .O(n2311));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1491_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1489_3_lut (.I0(n2210), .I1(n2275[30]), .I2(n2242), 
            .I3(GND_net), .O(n2309));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1489_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1422_3_lut (.I0(n2111), .I1(n2176[30]), .I2(n2143), 
            .I3(GND_net), .O(n2210));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1356_3_lut (.I0(n2013), .I1(n2077[29]), .I2(n2044), 
            .I3(GND_net), .O(n2112));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1356_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1905_3_lut (.I0(n2818), .I1(n2869[16]), .I2(n2836), 
            .I3(GND_net), .O(n2917));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1903_3_lut (.I0(n2816), .I1(n2869[18]), .I2(n2836), 
            .I3(GND_net), .O(n2915));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1891_3_lut (.I0(n2804), .I1(n2869[30]), .I2(n2836), 
            .I3(GND_net), .O(n2903));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1891_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1958_3_lut (.I0(n2903), .I1(n2968[30]), .I2(n2935), 
            .I3(GND_net), .O(n3002));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1958_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1355_3_lut (.I0(n2012), .I1(n2077[30]), .I2(n2044), 
            .I3(GND_net), .O(n2111));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1355_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1360_3_lut (.I0(n2017), .I1(n2077[25]), .I2(n2044), 
            .I3(GND_net), .O(n2116));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1360_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1361_3_lut (.I0(n2018), .I1(n2077[24]), .I2(n2044), 
            .I3(GND_net), .O(n2117));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1361_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1357_3_lut (.I0(n2014), .I1(n2077[28]), .I2(n2044), 
            .I3(GND_net), .O(n2113));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1357_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1967_3_lut (.I0(n2912), .I1(n2968[21]), .I2(n2935), 
            .I3(GND_net), .O(n3011));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1902_3_lut (.I0(n2815), .I1(n2869[19]), .I2(n2836), 
            .I3(GND_net), .O(n2914));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1904_3_lut (.I0(n2817), .I1(n2869[17]), .I2(n2836), 
            .I3(GND_net), .O(n2916));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1359_3_lut (.I0(n2016), .I1(n2077[26]), .I2(n2044), 
            .I3(GND_net), .O(n2115));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1359_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_48 (.I0(n2115), .I1(n2113), .I2(GND_net), .I3(GND_net), 
            .O(n5059));
    defparam i1_2_lut_adj_48.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_49 (.I0(n2114), .I1(n2117), .I2(n2116), .I3(GND_net), 
            .O(n5061));
    defparam i1_3_lut_adj_49.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_50 (.I0(n5061), .I1(n2119), .I2(n5059), .I3(n2118), 
            .O(n4788));
    defparam i1_4_lut_adj_50.LUT_INIT = 16'ha080;
    SB_LUT4 rem_4_i1971_3_lut (.I0(n2916), .I1(n2968[17]), .I2(n2935), 
            .I3(GND_net), .O(n3015));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1971_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1969_3_lut (.I0(n2914), .I1(n2968[19]), .I2(n2935), 
            .I3(GND_net), .O(n3013));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_51 (.I0(n4788), .I1(n2111), .I2(n2110), .I3(n2112), 
            .O(n2143));   // verilog/eeprom.v(23[6:29])
    defparam i3_4_lut_adj_51.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1358_3_lut (.I0(n2015), .I1(n2077[27]), .I2(n2044), 
            .I3(GND_net), .O(n2114));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1358_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1425_3_lut (.I0(n2114), .I1(n2176[27]), .I2(n2143), 
            .I3(GND_net), .O(n2213));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1425_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i22_3_lut (.I0(eeprom_counter[21]), .I1(n1[21]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2219));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i15_3_lut (.I0(eeprom_counter[14]), .I1(n1[14]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2919));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1428_3_lut (.I0(n2117), .I1(n2176[24]), .I2(n2143), 
            .I3(GND_net), .O(n2216));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1428_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1429_rep_44_3_lut (.I0(n2118), .I1(n2176[23]), .I2(n2143), 
            .I3(GND_net), .O(n2217));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1429_rep_44_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_19 (.CI(n3947), .I0(GND_net), .I1(eeprom_counter[17]), 
            .CO(n3948));
    SB_LUT4 i4676_3_lut (.I0(n2116), .I1(n2176[25]), .I2(n2143), .I3(GND_net), 
            .O(n2215));   // verilog/eeprom.v(23[6:29])
    defparam i4676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2022_14_lut (.I0(GND_net), .I1(n3007), .I2(VCC_net), 
            .I3(n4116), .O(n3067[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_2 (.CI(VCC_net), .I0(n3519), .I1(GND_net), 
            .CO(n4205));
    SB_LUT4 rem_4_i1426_3_lut (.I0(n2115), .I1(n2176[26]), .I2(n2143), 
            .I3(GND_net), .O(n2214));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1426_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_52 (.I0(n2214), .I1(n2215), .I2(n2217), .I3(n2216), 
            .O(n5045));
    defparam i1_4_lut_adj_52.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_53 (.I0(n2210), .I1(n2209), .I2(GND_net), .I3(GND_net), 
            .O(n6_adj_321));   // verilog/eeprom.v(23[6:29])
    defparam i1_2_lut_adj_53.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_54 (.I0(n2219), .I1(n2213), .I2(n5045), .I3(n2218), 
            .O(n4797));
    defparam i1_4_lut_adj_54.LUT_INIT = 16'hc080;
    SB_LUT4 rem_4_add_2290_24_lut (.I0(n3430), .I1(n3397), .I2(VCC_net), 
            .I3(n4204), .O(n3496)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4_4_lut_adj_55 (.I0(n2211), .I1(n2212), .I2(n4797), .I3(n6_adj_321), 
            .O(n2242));   // verilog/eeprom.v(23[6:29])
    defparam i4_4_lut_adj_55.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1430_3_lut (.I0(n2119), .I1(n2176[22]), .I2(n2143), 
            .I3(GND_net), .O(n2218));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1430_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1497_3_lut (.I0(n2218), .I1(n2275[22]), .I2(n2242), 
            .I3(GND_net), .O(n2317));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4559_2_lut (.I0(n5328), .I1(n1256), .I2(GND_net), .I3(GND_net), 
            .O(n1913));   // verilog/eeprom.v(23[6:29])
    defparam i4559_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_56 (.I0(n2313), .I1(n2315), .I2(GND_net), .I3(GND_net), 
            .O(n5081));
    defparam i1_2_lut_adj_56.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n2314), .I1(n5081), .I2(n2317), .I3(n2316), 
            .O(n5085));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'h8000;
    SB_LUT4 i2_2_lut (.I0(n2309), .I1(n2311), .I2(GND_net), .I3(GND_net), 
            .O(n8_adj_322));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_58 (.I0(n2310), .I1(n5085), .I2(n2319), .I3(n2318), 
            .O(n7_adj_323));
    defparam i1_4_lut_adj_58.LUT_INIT = 16'heeea;
    SB_LUT4 i5_4_lut_adj_59 (.I0(n2308), .I1(n7_adj_323), .I2(n2312), 
            .I3(n8_adj_322), .O(n2341));
    defparam i5_4_lut_adj_59.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1764_3_lut (.I0(n2613), .I1(n2671[23]), .I2(n2638), 
            .I3(GND_net), .O(n2712));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[16]), .I3(n3946), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1759_3_lut (.I0(n2608), .I1(n2671[28]), .I2(n2638), 
            .I3(GND_net), .O(n2707));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1759_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_18 (.CI(n3946), .I0(GND_net), .I1(eeprom_counter[16]), 
            .CO(n3947));
    SB_LUT4 rem_4_i1762_3_lut (.I0(n2611), .I1(n2671[25]), .I2(n2638), 
            .I3(GND_net), .O(n2710));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_23_lut (.I0(GND_net), .I1(n3398), .I2(VCC_net), 
            .I3(n4203), .O(n3463[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1760_3_lut (.I0(n2609), .I1(n2671[27]), .I2(n2638), 
            .I3(GND_net), .O(n2708));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1760_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2022_14 (.CI(n4116), .I0(n3007), .I1(VCC_net), 
            .CO(n4117));
    SB_CARRY rem_4_add_2290_23 (.CI(n4203), .I0(n3398), .I1(VCC_net), 
            .CO(n4204));
    SB_LUT4 rem_4_add_2290_22_lut (.I0(GND_net), .I1(n3399), .I2(VCC_net), 
            .I3(n4202), .O(n3463[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1761_3_lut (.I0(n2610), .I1(n2671[26]), .I2(n2638), 
            .I3(GND_net), .O(n2709));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1757_3_lut (.I0(n2606), .I1(n2671[30]), .I2(n2638), 
            .I3(GND_net), .O(n2705));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1763_3_lut (.I0(n2612), .I1(n2671[24]), .I2(n2638), 
            .I3(GND_net), .O(n2711));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1758_3_lut (.I0(n2607), .I1(n2671[29]), .I2(n2638), 
            .I3(GND_net), .O(n2706));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1770_3_lut (.I0(n2619), .I1(n2671[17]), .I2(n2638), 
            .I3(GND_net), .O(n2718));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1770_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i17_3_lut (.I0(eeprom_counter[16]), .I1(n1[16]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2719));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1768_3_lut (.I0(n2617), .I1(n2671[19]), .I2(n2638), 
            .I3(GND_net), .O(n2716));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1769_3_lut (.I0(n2618), .I1(n2671[18]), .I2(n2638), 
            .I3(GND_net), .O(n2717));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1766_3_lut (.I0(n2615), .I1(n2671[21]), .I2(n2638), 
            .I3(GND_net), .O(n2714));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1766_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1692_3_lut (.I0(n2509), .I1(n2572[28]), .I2(n2539), 
            .I3(GND_net), .O(n2608));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1692_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[15]), .I3(n3945), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1691_3_lut (.I0(n2508), .I1(n2572[29]), .I2(n2539), 
            .I3(GND_net), .O(n2607));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1691_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1695_3_lut (.I0(n2512), .I1(n2572[25]), .I2(n2539), 
            .I3(GND_net), .O(n2611));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1695_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_17 (.CI(n3945), .I0(GND_net), .I1(eeprom_counter[15]), 
            .CO(n3946));
    SB_LUT4 eeprom_counter_228_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[14]), .I3(n3944), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1974_3_lut (.I0(n2919), .I1(n2968[14]), .I2(n2935), 
            .I3(GND_net), .O(n3018));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1696_3_lut (.I0(n2513), .I1(n2572[24]), .I2(n2539), 
            .I3(GND_net), .O(n2612));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i14_3_lut (.I0(eeprom_counter[13]), .I1(n1[13]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3019));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1694_3_lut (.I0(n2511), .I1(n2572[26]), .I2(n2539), 
            .I3(GND_net), .O(n2610));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1694_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1965_3_lut (.I0(n2910), .I1(n2968[23]), .I2(n2935), 
            .I3(GND_net), .O(n3009));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1894_3_lut (.I0(n2807), .I1(n2869[27]), .I2(n2836), 
            .I3(GND_net), .O(n2906));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1894_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1702_3_lut (.I0(n2519), .I1(n2572[18]), .I2(n2539), 
            .I3(GND_net), .O(n2618));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1702_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1893_3_lut (.I0(n2806), .I1(n2869[28]), .I2(n2836), 
            .I3(GND_net), .O(n2905));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1893_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_22 (.CI(n4202), .I0(n3399), .I1(VCC_net), 
            .CO(n4203));
    SB_LUT4 rem_4_i1892_3_lut (.I0(n2805), .I1(n2869[29]), .I2(n2836), 
            .I3(GND_net), .O(n2904));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i18_3_lut (.I0(eeprom_counter[17]), .I1(n1[17]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2619));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1963_3_lut (.I0(n2908), .I1(n2968[25]), .I2(n2935), 
            .I3(GND_net), .O(n3007));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1960_3_lut (.I0(n2905), .I1(n2968[28]), .I2(n2935), 
            .I3(GND_net), .O(n3004));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1959_3_lut (.I0(n2904), .I1(n2968[29]), .I2(n2935), 
            .I3(GND_net), .O(n3003));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1961_3_lut (.I0(n2906), .I1(n2968[27]), .I2(n2935), 
            .I3(GND_net), .O(n3005));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1693_3_lut (.I0(n2510), .I1(n2572[27]), .I2(n2539), 
            .I3(GND_net), .O(n2609));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1693_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1690_3_lut (.I0(n2507), .I1(n2572[30]), .I2(n2539), 
            .I3(GND_net), .O(n2606));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1690_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1699_3_lut (.I0(n2516), .I1(n2572[21]), .I2(n2539), 
            .I3(GND_net), .O(n2615));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1697_3_lut (.I0(n2514), .I1(n2572[23]), .I2(n2539), 
            .I3(GND_net), .O(n2613));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1697_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i16_3_lut (.I0(eeprom_counter[15]), .I1(n1[15]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2819));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1897_3_lut (.I0(n2810), .I1(n2869[24]), .I2(n2836), 
            .I3(GND_net), .O(n2909));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1897_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1896_3_lut (.I0(n2809), .I1(n2869[25]), .I2(n2836), 
            .I3(GND_net), .O(n2908));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_60 (.I0(n2813), .I1(n2815), .I2(GND_net), .I3(GND_net), 
            .O(n5153));
    defparam i1_2_lut_adj_60.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_61 (.I0(n2814), .I1(n5153), .I2(n2817), .I3(n2816), 
            .O(n5157));
    defparam i1_4_lut_adj_61.LUT_INIT = 16'h8000;
    SB_LUT4 i7_4_lut (.I0(n2805), .I1(n2806), .I2(n2808), .I3(n2809), 
            .O(n18_adj_290));   // verilog/eeprom.v(23[6:29])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1627_3_lut (.I0(n2412), .I1(n2473[26]), .I2(n2440), 
            .I3(GND_net), .O(n2511));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1627_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1628_3_lut (.I0(n2413), .I1(n2473[25]), .I2(n2440), 
            .I3(GND_net), .O(n2512));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1625_3_lut (.I0(n2410), .I1(n2473[28]), .I2(n2440), 
            .I3(GND_net), .O(n2509));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1624_3_lut (.I0(n2409), .I1(n2473[29]), .I2(n2440), 
            .I3(GND_net), .O(n2508));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1623_3_lut (.I0(n2408), .I1(n2473[30]), .I2(n2440), 
            .I3(GND_net), .O(n2507));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1626_3_lut (.I0(n2411), .I1(n2473[27]), .I2(n2440), 
            .I3(GND_net), .O(n2510));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1632_3_lut (.I0(n2417), .I1(n2473[21]), .I2(n2440), 
            .I3(GND_net), .O(n2516));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1630_3_lut (.I0(n2415), .I1(n2473[23]), .I2(n2440), 
            .I3(GND_net), .O(n2514));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1630_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_16 (.CI(n3944), .I0(GND_net), .I1(eeprom_counter[14]), 
            .CO(n3945));
    SB_LUT4 eeprom_counter_228_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[13]), .I3(n3943), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1631_3_lut (.I0(n2416), .I1(n2473[22]), .I2(n2440), 
            .I3(GND_net), .O(n2515));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1631_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_21_lut (.I0(GND_net), .I1(n3400), .I2(VCC_net), 
            .I3(n4201), .O(n3463[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_4 (.CI(n3989), .I0(n2117), .I1(GND_net), .CO(n3990));
    SB_LUT4 rem_4_i1629_3_lut (.I0(n2414), .I1(n2473[24]), .I2(n2440), 
            .I3(GND_net), .O(n2513));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_4_lut_adj_62 (.I0(n2903), .I1(n2904), .I2(n2902), .I3(n2905), 
            .O(n19_adj_327));
    defparam i7_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_63 (.I0(n2513), .I1(n2515), .I2(GND_net), .I3(GND_net), 
            .O(n5169));
    defparam i1_2_lut_adj_63.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_64 (.I0(n2514), .I1(n5169), .I2(n2517), .I3(n2516), 
            .O(n5173));
    defparam i1_4_lut_adj_64.LUT_INIT = 16'h8000;
    SB_LUT4 i3_4_lut_adj_65 (.I0(n5173), .I1(n2510), .I2(n2519), .I3(n2518), 
            .O(n11_adj_328));
    defparam i3_4_lut_adj_65.LUT_INIT = 16'heeec;
    SB_LUT4 i5_4_lut_adj_66 (.I0(n2507), .I1(n2508), .I2(n2506), .I3(n2509), 
            .O(n13_adj_329));
    defparam i5_4_lut_adj_66.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_2_lut (.I0(n2912), .I1(n2911), .I2(GND_net), .I3(GND_net), 
            .O(n18_adj_330));
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut_adj_67 (.I0(n19_adj_327), .I1(n15_adj_300), .I2(n2907), 
            .I3(n2910), .O(n22_adj_331));
    defparam i10_4_lut_adj_67.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_68 (.I0(n2908), .I1(n22_adj_331), .I2(n18_adj_330), 
            .I3(n2909), .O(n2935));
    defparam i11_4_lut_adj_68.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1906_3_lut (.I0(n2819), .I1(n2869[15]), .I2(n2836), 
            .I3(GND_net), .O(n2918));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1973_3_lut (.I0(n2918), .I1(n2968[15]), .I2(n2935), 
            .I3(GND_net), .O(n3017));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1973_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_4_lut_adj_69 (.I0(n13_adj_329), .I1(n11_adj_328), .I2(n2512), 
            .I3(n2511), .O(n2539));
    defparam i7_4_lut_adj_69.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1701_3_lut (.I0(n2518), .I1(n2572[19]), .I2(n2539), 
            .I3(GND_net), .O(n2617));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1701_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1698_3_lut (.I0(n2515), .I1(n2572[22]), .I2(n2539), 
            .I3(GND_net), .O(n2614));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1698_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_15 (.CI(n3943), .I0(GND_net), .I1(eeprom_counter[13]), 
            .CO(n3944));
    SB_LUT4 i1_2_lut_adj_70 (.I0(n2613), .I1(n2615), .I2(GND_net), .I3(GND_net), 
            .O(n5101));
    defparam i1_2_lut_adj_70.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_71 (.I0(n2614), .I1(n5101), .I2(n2617), .I3(n2616), 
            .O(n5105));
    defparam i1_4_lut_adj_71.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_72 (.I0(n2606), .I1(n2605), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_332));   // verilog/eeprom.v(23[6:29])
    defparam i1_2_lut_adj_72.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_73 (.I0(n2609), .I1(n5105), .I2(n2619), .I3(n2618), 
            .O(n12_adj_333));   // verilog/eeprom.v(23[6:29])
    defparam i3_4_lut_adj_73.LUT_INIT = 16'heeea;
    SB_LUT4 i7_4_lut_adj_74 (.I0(n2610), .I1(n2612), .I2(n2611), .I3(n10_adj_332), 
            .O(n16_adj_334));   // verilog/eeprom.v(23[6:29])
    defparam i7_4_lut_adj_74.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_75 (.I0(n2607), .I1(n16_adj_334), .I2(n12_adj_333), 
            .I3(n2608), .O(n2638));   // verilog/eeprom.v(23[6:29])
    defparam i8_4_lut_adj_75.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1700_3_lut (.I0(n2517), .I1(n2572[20]), .I2(n2539), 
            .I3(GND_net), .O(n2616));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1700_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1970_3_lut (.I0(n2915), .I1(n2968[18]), .I2(n2935), 
            .I3(GND_net), .O(n3014));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1767_3_lut (.I0(n2616), .I1(n2671[20]), .I2(n2638), 
            .I3(GND_net), .O(n2715));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_76 (.I0(n3013), .I1(n3015), .I2(GND_net), .I3(GND_net), 
            .O(n5143));
    defparam i1_2_lut_adj_76.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_77 (.I0(n3014), .I1(n5143), .I2(n3017), .I3(n3016), 
            .O(n5147));
    defparam i1_4_lut_adj_77.LUT_INIT = 16'h8000;
    SB_LUT4 i5_4_lut_adj_78 (.I0(n3009), .I1(n5147), .I2(n3019), .I3(n3018), 
            .O(n18_adj_335));   // verilog/eeprom.v(23[6:29])
    defparam i5_4_lut_adj_78.LUT_INIT = 16'heeea;
    SB_LUT4 i8_4_lut_adj_79 (.I0(n3005), .I1(n3003), .I2(n3004), .I3(n3007), 
            .O(n21_adj_336));   // verilog/eeprom.v(23[6:29])
    defparam i8_4_lut_adj_79.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1765_3_lut (.I0(n2614), .I1(n2671[22]), .I2(n2638), 
            .I3(GND_net), .O(n2713));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1765_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_3_lut (.I0(n3011), .I1(n3002), .I2(n3001), .I3(GND_net), 
            .O(n20_adj_337));   // verilog/eeprom.v(23[6:29])
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_80 (.I0(n2713), .I1(n2715), .I2(GND_net), .I3(GND_net), 
            .O(n5213));
    defparam i1_2_lut_adj_80.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_81 (.I0(n2714), .I1(n2717), .I2(n2716), .I3(GND_net), 
            .O(n5215));
    defparam i1_3_lut_adj_81.LUT_INIT = 16'h8080;
    SB_LUT4 eeprom_counter_228_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[12]), .I3(n3942), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_14 (.CI(n3942), .I0(GND_net), .I1(eeprom_counter[12]), 
            .CO(n3943));
    SB_LUT4 i1_4_lut_adj_82 (.I0(n5215), .I1(n2719), .I2(n5213), .I3(n2718), 
            .O(n4830));
    defparam i1_4_lut_adj_82.LUT_INIT = 16'ha080;
    SB_LUT4 i6_4_lut_adj_83 (.I0(n4830), .I1(n2706), .I2(n2711), .I3(n2705), 
            .O(n16_adj_338));
    defparam i6_4_lut_adj_83.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_84 (.I0(n2704), .I1(n2709), .I2(n2708), .I3(n2710), 
            .O(n17_adj_339));
    defparam i7_4_lut_adj_84.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_85 (.I0(n21_adj_336), .I1(n3006), .I2(n18_adj_335), 
            .I3(n3008), .O(n24_adj_340));   // verilog/eeprom.v(23[6:29])
    defparam i11_4_lut_adj_85.LUT_INIT = 16'hfffe;
    SB_LUT4 eeprom_counter_228_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[11]), .I3(n3941), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9_4_lut_adj_86 (.I0(n17_adj_339), .I1(n2707), .I2(n16_adj_338), 
            .I3(n2712), .O(n2737));
    defparam i9_4_lut_adj_86.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_2022_13_lut (.I0(GND_net), .I1(n3008), .I2(VCC_net), 
            .I3(n4115), .O(n3067[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_21 (.CI(n4201), .I0(n3400), .I1(VCC_net), 
            .CO(n4202));
    SB_LUT4 rem_4_mux_3_i4_3_lut (.I0(eeprom_counter[3]), .I1(n1[3]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3722));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i4_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2290_20_lut (.I0(GND_net), .I1(n3401), .I2(VCC_net), 
            .I3(n4200), .O(n3463[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i5_3_lut (.I0(eeprom_counter[4]), .I1(n1[4]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3721));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i5_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i6_3_lut (.I0(eeprom_counter[5]), .I1(n1[5]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3720));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i6_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i1_4_lut_adj_87 (.I0(n1914), .I1(n5035), .I2(n1917), .I3(n1916), 
            .O(n5039));
    defparam i1_4_lut_adj_87.LUT_INIT = 16'h8000;
    SB_LUT4 i3487_4_lut (.I0(n5039), .I1(n1912), .I2(n1919), .I3(n1918), 
            .O(n1945));   // verilog/eeprom.v(23[6:29])
    defparam i3487_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 rem_4_mux_3_i7_3_lut (.I0(eeprom_counter[6]), .I1(n1[6]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3719));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i12_4_lut_adj_88 (.I0(n3012), .I1(n24_adj_340), .I2(n20_adj_337), 
            .I3(n3010), .O(n3034));   // verilog/eeprom.v(23[6:29])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hfffe;
    SB_LUT4 i4717_1_lut (.I0(n5362), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5547));   // verilog/eeprom.v(23[6:29])
    defparam i4717_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2450_rep_4_3_lut (.I0(n3619), .I1(n1200[0]), .I2(n3628), 
            .I3(GND_net), .O(n5362));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2450_rep_4_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i1224_3_lut (.I0(n1139), .I1(n1191[2]), .I2(n1843), 
            .I3(GND_net), .O(n1916));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1224_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1292_3_lut (.I0(n1917), .I1(n1978[26]), .I2(n1945), 
            .I3(GND_net), .O(n2016));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1292_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4720_1_lut (.I0(n3717), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5550));   // verilog/eeprom.v(23[6:29])
    defparam i4720_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i1972_3_lut (.I0(n2917), .I1(n2968[16]), .I2(n2935), 
            .I3(GND_net), .O(n3016));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1972_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2449_3_lut (.I0(n3618), .I1(n1200[1]), .I2(n3628), 
            .I3(GND_net), .O(n3717));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2449_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4723_1_lut (.I0(n3716), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5553));   // verilog/eeprom.v(23[6:29])
    defparam i4723_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2448_3_lut (.I0(n3617), .I1(n1200[2]), .I2(n3628), 
            .I3(GND_net), .O(n3716));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2448_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4726_1_lut (.I0(n3715), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5556));   // verilog/eeprom.v(23[6:29])
    defparam i4726_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2447_3_lut (.I0(n3616), .I1(n1200[3]), .I2(n3628), 
            .I3(GND_net), .O(n3715));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2447_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4729_1_lut (.I0(n3714), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5559));   // verilog/eeprom.v(23[6:29])
    defparam i4729_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2446_3_lut (.I0(n3615), .I1(n1200[4]), .I2(n3628), 
            .I3(GND_net), .O(n3714));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2446_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY eeprom_counter_228_add_4_13 (.CI(n3941), .I0(GND_net), .I1(eeprom_counter[11]), 
            .CO(n3942));
    SB_LUT4 rem_4_i1291_3_lut (.I0(n1916), .I1(n1978[27]), .I2(n1945), 
            .I3(GND_net), .O(n2015));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1291_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_228_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[10]), .I3(n3940), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4732_1_lut (.I0(n3713), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5562));   // verilog/eeprom.v(23[6:29])
    defparam i4732_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2445_3_lut (.I0(n3614), .I1(n1200[5]), .I2(n3628), 
            .I3(GND_net), .O(n3713));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2445_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4735_1_lut (.I0(n3712), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5565));   // verilog/eeprom.v(23[6:29])
    defparam i4735_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2444_3_lut (.I0(n3613), .I1(n1200[6]), .I2(n3628), 
            .I3(GND_net), .O(n3712));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2444_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2382_3_lut (.I0(n3519), .I1(n3562[8]), .I2(n3529), 
            .I3(GND_net), .O(n3618));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2382_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i8_3_lut (.I0(eeprom_counter[7]), .I1(n1[7]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3619));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_89 (.I0(n3613), .I1(n3615), .I2(GND_net), .I3(GND_net), 
            .O(n5221));
    defparam i1_2_lut_adj_89.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i2039_3_lut (.I0(n3016), .I1(n3067[16]), .I2(n3034), 
            .I3(GND_net), .O(n3115));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2037_3_lut (.I0(n3014), .I1(n3067[18]), .I2(n3034), 
            .I3(GND_net), .O(n3113));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2372_3_lut (.I0(n3509), .I1(n3562[18]), .I2(n3529), 
            .I3(GND_net), .O(n3608));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2372_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_90 (.I0(n3511), .I1(n3608), .I2(n3562[16]), .I3(n3529), 
            .O(n5175));
    defparam i1_4_lut_adj_90.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_i2373_3_lut (.I0(n3510), .I1(n3562[17]), .I2(n3529), 
            .I3(GND_net), .O(n3609));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2373_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_91 (.I0(n3508), .I1(n3609), .I2(n3562[19]), .I3(n3529), 
            .O(n5021));
    defparam i1_4_lut_adj_91.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_92 (.I0(n3507), .I1(n5021), .I2(n3562[20]), .I3(n3529), 
            .O(n5023));
    defparam i1_4_lut_adj_92.LUT_INIT = 16'hfcee;
    SB_CARRY rem_4_add_2290_20 (.CI(n4200), .I0(n3401), .I1(VCC_net), 
            .CO(n4201));
    SB_CARRY rem_4_add_2022_13 (.CI(n4115), .I0(n3008), .I1(VCC_net), 
            .CO(n4116));
    SB_LUT4 i1_4_lut_adj_93 (.I0(n3504), .I1(n5023), .I2(n3562[23]), .I3(n3529), 
            .O(n5025));
    defparam i1_4_lut_adj_93.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_add_2290_19_lut (.I0(GND_net), .I1(n3402), .I2(VCC_net), 
            .I3(n4199), .O(n3463[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_12_lut (.I0(GND_net), .I1(n3009), .I2(VCC_net), 
            .I3(n4114), .O(n3067[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_10_lut (.I0(GND_net), .I1(n2611), .I2(VCC_net), 
            .I3(n4050), .O(n2671[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_10_lut (.I0(GND_net), .I1(n2211), .I2(VCC_net), 
            .I3(n4004), .O(n2275[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_10 (.CI(n4050), .I0(n2611), .I1(VCC_net), 
            .CO(n4051));
    SB_CARRY rem_4_add_1486_10 (.CI(n4004), .I0(n2211), .I1(VCC_net), 
            .CO(n4005));
    SB_CARRY rem_4_add_2290_19 (.CI(n4199), .I0(n3402), .I1(VCC_net), 
            .CO(n4200));
    SB_CARRY rem_4_add_2022_12 (.CI(n4114), .I0(n3009), .I1(VCC_net), 
            .CO(n4115));
    SB_LUT4 rem_4_add_1754_9_lut (.I0(GND_net), .I1(n2612), .I2(VCC_net), 
            .I3(n4049), .O(n2671[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_94 (.I0(n3503), .I1(n5025), .I2(n3562[24]), .I3(n3529), 
            .O(n5027));
    defparam i1_4_lut_adj_94.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_add_2290_18_lut (.I0(GND_net), .I1(n3403), .I2(VCC_net), 
            .I3(n4198), .O(n3463[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_11_lut (.I0(GND_net), .I1(n3010), .I2(VCC_net), 
            .I3(n4113), .O(n3067[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_9 (.CI(n4049), .I0(n2612), .I1(VCC_net), .CO(n4050));
    SB_LUT4 i1_4_lut_adj_95 (.I0(n3501), .I1(n5027), .I2(n3562[26]), .I3(n3529), 
            .O(n5029));
    defparam i1_4_lut_adj_95.LUT_INIT = 16'hfcee;
    SB_CARRY eeprom_counter_228_add_4_12 (.CI(n3940), .I0(GND_net), .I1(eeprom_counter[10]), 
            .CO(n3941));
    SB_CARRY rem_4_add_2022_11 (.CI(n4113), .I0(n3010), .I1(VCC_net), 
            .CO(n4114));
    SB_LUT4 rem_4_add_1486_9_lut (.I0(GND_net), .I1(n2212), .I2(VCC_net), 
            .I3(n4003), .O(n2275[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_228_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[9]), .I3(n3939), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_96 (.I0(n5175), .I1(n3512), .I2(n3562[15]), .I3(n3529), 
            .O(n5177));
    defparam i1_4_lut_adj_96.LUT_INIT = 16'hfaee;
    SB_LUT4 rem_4_i2362_3_lut (.I0(n3499), .I1(n3562[28]), .I2(n3529), 
            .I3(GND_net), .O(n3598));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2362_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_11 (.CI(n3939), .I0(GND_net), .I1(eeprom_counter[9]), 
            .CO(n3940));
    SB_CARRY rem_4_add_1486_9 (.CI(n4003), .I0(n2212), .I1(VCC_net), .CO(n4004));
    SB_LUT4 i1_4_lut_adj_97 (.I0(n5177), .I1(n3505), .I2(n3562[22]), .I3(n3529), 
            .O(n31_adj_341));
    defparam i1_4_lut_adj_97.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_4_lut_adj_98 (.I0(n3500), .I1(n5029), .I2(n3562[27]), .I3(n3529), 
            .O(n5031));
    defparam i1_4_lut_adj_98.LUT_INIT = 16'hfcee;
    SB_CARRY rem_4_add_2290_18 (.CI(n4198), .I0(n3403), .I1(VCC_net), 
            .CO(n4199));
    SB_LUT4 i1_4_lut_adj_99 (.I0(n3614), .I1(n5221), .I2(n3617), .I3(n3616), 
            .O(n5225));
    defparam i1_4_lut_adj_99.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_add_2022_10_lut (.I0(GND_net), .I1(n3011), .I2(VCC_net), 
            .I3(n4112), .O(n3067[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_8_lut (.I0(GND_net), .I1(n2613), .I2(GND_net), 
            .I3(n4048), .O(n2671[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_8_lut (.I0(GND_net), .I1(n2213), .I2(GND_net), 
            .I3(n4002), .O(n2275[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2369_3_lut (.I0(n3506), .I1(n3562[21]), .I2(n3529), 
            .I3(GND_net), .O(n3605));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2369_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_100 (.I0(n3605), .I1(n5225), .I2(n3619), .I3(n3618), 
            .O(n5017));
    defparam i1_4_lut_adj_100.LUT_INIT = 16'heeea;
    SB_LUT4 rem_4_add_2290_17_lut (.I0(GND_net), .I1(n3404), .I2(VCC_net), 
            .I3(n4197), .O(n3463[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_101 (.I0(n3502), .I1(n5017), .I2(n3562[25]), 
            .I3(n3529), .O(n5019));
    defparam i1_4_lut_adj_101.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_102 (.I0(n5031), .I1(n31_adj_341), .I2(n3598), 
            .I3(n3612), .O(n5161));
    defparam i1_4_lut_adj_102.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2290_17 (.CI(n4197), .I0(n3404), .I1(VCC_net), 
            .CO(n4198));
    SB_CARRY rem_4_add_2022_10 (.CI(n4112), .I0(n3011), .I1(VCC_net), 
            .CO(n4113));
    SB_CARRY rem_4_add_1754_8 (.CI(n4048), .I0(n2613), .I1(GND_net), .CO(n4049));
    SB_CARRY rem_4_add_1486_8 (.CI(n4002), .I0(n2213), .I1(GND_net), .CO(n4003));
    SB_LUT4 eeprom_counter_228_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[8]), .I3(n3938), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_10 (.CI(n3938), .I0(GND_net), .I1(eeprom_counter[8]), 
            .CO(n3939));
    SB_LUT4 eeprom_counter_228_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[7]), .I3(n3937), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_9 (.CI(n3937), .I0(GND_net), .I1(eeprom_counter[7]), 
            .CO(n3938));
    SB_LUT4 rem_4_i2360_3_lut (.I0(n3497), .I1(n3562[30]), .I2(n3529), 
            .I3(GND_net), .O(n3596));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2360_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_16_lut (.I0(GND_net), .I1(n3405), .I2(VCC_net), 
            .I3(n4196), .O(n3463[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_9_lut (.I0(GND_net), .I1(n3012), .I2(VCC_net), 
            .I3(n4111), .O(n3067[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_103 (.I0(n5019), .I1(n3498), .I2(n3562[29]), 
            .I3(n3529), .O(n28_adj_342));
    defparam i1_4_lut_adj_103.LUT_INIT = 16'hfaee;
    SB_LUT4 eeprom_counter_228_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[6]), .I3(n3936), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_104 (.I0(n28_adj_342), .I1(n5355), .I2(n3596), 
            .I3(n5161), .O(n3628));
    defparam i1_4_lut_adj_104.LUT_INIT = 16'hfffe;
    SB_CARRY eeprom_counter_228_add_4_8 (.CI(n3936), .I0(GND_net), .I1(eeprom_counter[6]), 
            .CO(n3937));
    SB_LUT4 i4741_2_lut (.I0(n3628), .I1(n1200[7]), .I2(GND_net), .I3(GND_net), 
            .O(n3711));   // verilog/eeprom.v(23[6:29])
    defparam i4741_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 eeprom_counter_228_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[5]), .I3(n3935), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i32_1_lut (.I0(eeprom_counter[31]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1_adj_357[31]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2290_16 (.CI(n4196), .I0(n3405), .I1(VCC_net), 
            .CO(n4197));
    SB_CARRY rem_4_add_2022_9 (.CI(n4111), .I0(n3012), .I1(VCC_net), .CO(n4112));
    SB_DFF enable_14 (.Q(enable), .C(CLK_N_keep), .D(enable_N_59));   // verilog/eeprom.v(19[8] 27[4])
    SB_LUT4 rem_4_add_1754_7_lut (.I0(GND_net), .I1(n2614), .I2(GND_net), 
            .I3(n4047), .O(n2671[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_7_lut (.I0(GND_net), .I1(n2214), .I2(GND_net), 
            .I3(n4001), .O(n2275[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_8_lut (.I0(GND_net), .I1(n3013), .I2(GND_net), 
            .I3(n4110), .O(n3067[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2381_3_lut (.I0(n3518), .I1(n3562[9]), .I2(n3529), 
            .I3(GND_net), .O(n3617));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2381_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1293_3_lut (.I0(n1918), .I1(n1978[25]), .I2(n1945), 
            .I3(GND_net), .O(n2017));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1293_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_15_lut (.I0(GND_net), .I1(n3406), .I2(VCC_net), 
            .I3(n4195), .O(n3463[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_15 (.CI(n4195), .I0(n3406), .I1(VCC_net), 
            .CO(n4196));
    SB_CARRY rem_4_add_2022_8 (.CI(n4110), .I0(n3013), .I1(GND_net), .CO(n4111));
    SB_LUT4 rem_4_add_2290_14_lut (.I0(GND_net), .I1(n3407), .I2(VCC_net), 
            .I3(n4194), .O(n3463[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_7_lut (.I0(GND_net), .I1(n3014), .I2(GND_net), 
            .I3(n4109), .O(n3067[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_7 (.CI(n4047), .I0(n2614), .I1(GND_net), .CO(n4048));
    SB_LUT4 rem_4_add_1754_6_lut (.I0(GND_net), .I1(n2615), .I2(GND_net), 
            .I3(n4046), .O(n2671[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_7 (.CI(n4001), .I0(n2214), .I1(GND_net), .CO(n4002));
    SB_CARRY eeprom_counter_228_add_4_7 (.CI(n3935), .I0(GND_net), .I1(eeprom_counter[5]), 
            .CO(n3936));
    SB_LUT4 rem_4_add_1486_6_lut (.I0(GND_net), .I1(n2215), .I2(GND_net), 
            .I3(n4000), .O(n2275[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_228_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[4]), .I3(n3934), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i1_1_lut (.I0(eeprom_counter[0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[0]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2290_14 (.CI(n4194), .I0(n3407), .I1(VCC_net), 
            .CO(n4195));
    SB_CARRY rem_4_add_2022_7 (.CI(n4109), .I0(n3014), .I1(GND_net), .CO(n4110));
    SB_CARRY rem_4_add_1754_6 (.CI(n4046), .I0(n2615), .I1(GND_net), .CO(n4047));
    SB_CARRY rem_4_add_1486_6 (.CI(n4000), .I0(n2215), .I1(GND_net), .CO(n4001));
    SB_LUT4 rem_4_i2380_3_lut (.I0(n3517), .I1(n3562[10]), .I2(n3529), 
            .I3(GND_net), .O(n3616));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2380_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_6 (.CI(n3934), .I0(GND_net), .I1(eeprom_counter[4]), 
            .CO(n3935));
    SB_LUT4 rem_4_add_2290_13_lut (.I0(GND_net), .I1(n3408), .I2(VCC_net), 
            .I3(n4193), .O(n3463[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_228_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[3]), .I3(n3933), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_5 (.CI(n3933), .I0(GND_net), .I1(eeprom_counter[3]), 
            .CO(n3934));
    SB_LUT4 rem_4_i2379_3_lut (.I0(n3516), .I1(n3562[11]), .I2(n3529), 
            .I3(GND_net), .O(n3615));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2379_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF rw_16 (.Q(rw), .C(CLK_N_keep), .D(rw_N_75));   // verilog/eeprom.v(19[8] 27[4])
    SB_LUT4 rem_4_unary_minus_2_inv_0_i2_1_lut (.I0(eeprom_counter[1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[1]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2290_13 (.CI(n4193), .I0(n3408), .I1(VCC_net), 
            .CO(n4194));
    SB_LUT4 rem_4_add_2022_6_lut (.I0(GND_net), .I1(n3015), .I2(GND_net), 
            .I3(n4108), .O(n3067[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_5_lut (.I0(GND_net), .I1(n2616), .I2(GND_net), 
            .I3(n4045), .O(n2671[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2378_3_lut (.I0(n3515), .I1(n3562[12]), .I2(n3529), 
            .I3(GND_net), .O(n3614));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2378_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_12_lut (.I0(GND_net), .I1(n3409), .I2(VCC_net), 
            .I3(n4192), .O(n3463[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_5_lut (.I0(GND_net), .I1(n2216), .I2(GND_net), 
            .I3(n3999), .O(n2275[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i3_1_lut (.I0(eeprom_counter[2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_357[2]));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_unary_minus_2_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 eeprom_counter_228_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[2]), .I3(n3932), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2377_3_lut (.I0(n3514), .I1(n3562[13]), .I2(n3529), 
            .I3(GND_net), .O(n3613));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2377_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_4 (.CI(n3932), .I0(GND_net), .I1(eeprom_counter[2]), 
            .CO(n3933));
    SB_CARRY rem_4_add_2290_12 (.CI(n4192), .I0(n3409), .I1(VCC_net), 
            .CO(n4193));
    SB_LUT4 eeprom_counter_228_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[1]), .I3(n3931), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_228_add_4_3 (.CI(n3931), .I0(GND_net), .I1(eeprom_counter[1]), 
            .CO(n3932));
    SB_CARRY rem_4_add_2022_6 (.CI(n4108), .I0(n3015), .I1(GND_net), .CO(n4109));
    SB_CARRY rem_4_add_1754_5 (.CI(n4045), .I0(n2616), .I1(GND_net), .CO(n4046));
    SB_CARRY rem_4_add_1486_5 (.CI(n3999), .I0(n2216), .I1(GND_net), .CO(n4000));
    SB_LUT4 eeprom_counter_228_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[0]), .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_228_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2299_3_lut (.I0(n3404), .I1(n3463[24]), .I2(n3430), 
            .I3(GND_net), .O(n3503));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2299_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2297_3_lut (.I0(n3402), .I1(n3463[26]), .I2(n3430), 
            .I3(GND_net), .O(n3501));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2297_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2298_3_lut (.I0(n3403), .I1(n3463[25]), .I2(n3430), 
            .I3(GND_net), .O(n3502));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2298_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_11_lut (.I0(GND_net), .I1(n3410), .I2(VCC_net), 
            .I3(n4191), .O(n3463[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_5_lut (.I0(GND_net), .I1(n3016), .I2(GND_net), 
            .I3(n4107), .O(n3067[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_4_lut (.I0(GND_net), .I1(n2617), .I2(GND_net), 
            .I3(n4044), .O(n2671[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_4_lut (.I0(GND_net), .I1(n2217), .I2(GND_net), 
            .I3(n3998), .O(n2275[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_105 (.I0(n2017), .I1(n2015), .I2(n2016), .I3(GND_net), 
            .O(n5005));
    defparam i1_3_lut_adj_105.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_106 (.I0(n2019), .I1(n2014), .I2(n5005), .I3(n2018), 
            .O(n5009));
    defparam i1_4_lut_adj_106.LUT_INIT = 16'hc080;
    SB_CARRY rem_4_add_2290_11 (.CI(n4191), .I0(n3410), .I1(VCC_net), 
            .CO(n4192));
    SB_LUT4 i1_4_lut_adj_107 (.I0(n5009), .I1(n2011), .I2(n2012), .I3(n2013), 
            .O(n2044));
    defparam i1_4_lut_adj_107.LUT_INIT = 16'hfefc;
    SB_LUT4 rem_4_add_2290_10_lut (.I0(GND_net), .I1(n3411), .I2(VCC_net), 
            .I3(n4190), .O(n3463[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_5 (.CI(n4107), .I0(n3016), .I1(GND_net), .CO(n4108));
    SB_CARRY rem_4_add_1754_4 (.CI(n4044), .I0(n2617), .I1(GND_net), .CO(n4045));
    SB_LUT4 rem_4_i2296_3_lut (.I0(n3401), .I1(n3463[27]), .I2(n3430), 
            .I3(GND_net), .O(n3500));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2296_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_228_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(eeprom_counter[0]), 
            .CO(n3931));
    SB_CARRY rem_4_add_1486_4 (.CI(n3998), .I0(n2217), .I1(GND_net), .CO(n3999));
    SB_LUT4 rem_4_i2305_3_lut (.I0(n3410), .I1(n3463[18]), .I2(n3430), 
            .I3(GND_net), .O(n3509));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2305_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2307_3_lut (.I0(n3412), .I1(n3463[16]), .I2(n3430), 
            .I3(GND_net), .O(n3511));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2307_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_10 (.CI(n4190), .I0(n3411), .I1(VCC_net), 
            .CO(n4191));
    SB_LUT4 i4681_3_lut (.I0(n3312), .I1(n3364[17]), .I2(n3331), .I3(GND_net), 
            .O(n3411));   // verilog/eeprom.v(23[6:29])
    defparam i4681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i24_3_lut (.I0(eeprom_counter[23]), .I1(n1[23]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2019));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_822_8_lut (.I0(GND_net), .I1(n1135), .I2(GND_net), .I3(n4278), 
            .O(n1191[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_822_7_lut (.I0(n5327), .I1(n1256), .I2(GND_net), .I3(n4277), 
            .O(n5328)) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_7_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2290_9_lut (.I0(GND_net), .I1(n3412), .I2(VCC_net), 
            .I3(n4189), .O(n3463[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_9 (.CI(n4189), .I0(n3412), .I1(VCC_net), .CO(n4190));
    SB_LUT4 i4682_3_lut (.I0(n3411), .I1(n3463[17]), .I2(n3430), .I3(GND_net), 
            .O(n3510));   // verilog/eeprom.v(23[6:29])
    defparam i4682_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2022_4_lut (.I0(GND_net), .I1(n3017), .I2(GND_net), 
            .I3(n4106), .O(n3067[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_822_7 (.CI(n4277), .I0(n1256), .I1(GND_net), .CO(n4278));
    SB_LUT4 rem_4_i2303_3_lut (.I0(n3408), .I1(n3463[20]), .I2(n3430), 
            .I3(GND_net), .O(n3507));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2303_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2308_3_lut (.I0(n3413), .I1(n3463[15]), .I2(n3430), 
            .I3(GND_net), .O(n3512));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2308_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_822_6_lut (.I0(GND_net), .I1(n1137), .I2(GND_net), .I3(n4276), 
            .O(n1191[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_8_lut (.I0(GND_net), .I1(n3413), .I2(GND_net), 
            .I3(n4188), .O(n3463[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_8 (.CI(n4188), .I0(n3413), .I1(GND_net), .CO(n4189));
    SB_CARRY rem_4_add_2022_4 (.CI(n4106), .I0(n3017), .I1(GND_net), .CO(n4107));
    SB_LUT4 rem_4_add_2290_7_lut (.I0(GND_net), .I1(n3414), .I2(GND_net), 
            .I3(n4187), .O(n3463[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_3_lut (.I0(GND_net), .I1(n2618), .I2(VCC_net), 
            .I3(n4043), .O(n2671[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_822_6 (.CI(n4276), .I0(n1137), .I1(GND_net), .CO(n4277));
    SB_LUT4 rem_4_add_1486_3_lut (.I0(GND_net), .I1(n2218), .I2(VCC_net), 
            .I3(n3997), .O(n2275[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2300_3_lut (.I0(n3405), .I1(n3463[23]), .I2(n3430), 
            .I3(GND_net), .O(n3504));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2300_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_822_5_lut (.I0(GND_net), .I1(n1138), .I2(GND_net), .I3(n4275), 
            .O(n1191[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_7 (.CI(n4187), .I0(n3414), .I1(GND_net), .CO(n4188));
    SB_LUT4 rem_4_add_2022_3_lut (.I0(GND_net), .I1(n3018), .I2(VCC_net), 
            .I3(n4105), .O(n3067[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_822_5 (.CI(n4275), .I0(n1138), .I1(GND_net), .CO(n4276));
    SB_LUT4 rem_4_add_2290_6_lut (.I0(GND_net), .I1(n3415), .I2(GND_net), 
            .I3(n4186), .O(n3463[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_3 (.CI(n4105), .I0(n3018), .I1(VCC_net), .CO(n4106));
    SB_CARRY rem_4_add_1754_3 (.CI(n4043), .I0(n2618), .I1(VCC_net), .CO(n4044));
    SB_CARRY rem_4_add_1486_3 (.CI(n3997), .I0(n2218), .I1(VCC_net), .CO(n3998));
    SB_CARRY rem_4_add_2290_6 (.CI(n4186), .I0(n3415), .I1(GND_net), .CO(n4187));
    SB_LUT4 rem_4_i2301_3_lut (.I0(n3406), .I1(n3463[22]), .I2(n3430), 
            .I3(GND_net), .O(n3505));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2301_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2304_3_lut (.I0(n3409), .I1(n3463[19]), .I2(n3430), 
            .I3(GND_net), .O(n3508));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2304_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2302_3_lut (.I0(n3407), .I1(n3463[21]), .I2(n3430), 
            .I3(GND_net), .O(n3506));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2302_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_822_4_lut (.I0(GND_net), .I1(n1139), .I2(GND_net), .I3(n4274), 
            .O(n1191[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_5_lut (.I0(GND_net), .I1(n3416), .I2(GND_net), 
            .I3(n4185), .O(n3463[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_2_lut (.I0(GND_net), .I1(n3019), .I2(GND_net), 
            .I3(VCC_net), .O(n3067[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_2_lut (.I0(GND_net), .I1(n2619), .I2(GND_net), 
            .I3(VCC_net), .O(n2671[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2314_rep_5_3_lut (.I0(n3419), .I1(n3463[9]), .I2(n3430), 
            .I3(GND_net), .O(n3518));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2314_rep_5_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_822_4 (.CI(n4274), .I0(n1139), .I1(GND_net), .CO(n4275));
    SB_CARRY rem_4_add_2290_5 (.CI(n4185), .I0(n3416), .I1(GND_net), .CO(n4186));
    SB_LUT4 rem_4_mux_3_i9_3_lut (.I0(eeprom_counter[8]), .I1(n1[8]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3519));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2312_3_lut (.I0(n3417), .I1(n3463[11]), .I2(n3430), 
            .I3(GND_net), .O(n3516));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2312_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2313_3_lut (.I0(n3418), .I1(n3463[10]), .I2(n3430), 
            .I3(GND_net), .O(n3517));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2313_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2310_3_lut (.I0(n3415), .I1(n3463[13]), .I2(n3430), 
            .I3(GND_net), .O(n3514));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2310_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_822_3_lut (.I0(GND_net), .I1(n1140), .I2(VCC_net), .I3(n4273), 
            .O(n1191[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_822_3 (.CI(n4273), .I0(n1140), .I1(VCC_net), .CO(n4274));
    SB_LUT4 rem_4_i2311_3_lut (.I0(n3416), .I1(n3463[12]), .I2(n3430), 
            .I3(GND_net), .O(n3515));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2311_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_4_lut (.I0(GND_net), .I1(n3417), .I2(GND_net), 
            .I3(n4184), .O(n3463[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_2 (.CI(VCC_net), .I0(n3019), .I1(GND_net), 
            .CO(n4105));
    SB_CARRY rem_4_add_2290_4 (.CI(n4184), .I0(n3417), .I1(GND_net), .CO(n4185));
    SB_CARRY rem_4_add_1754_2 (.CI(VCC_net), .I0(n2619), .I1(GND_net), 
            .CO(n4043));
    SB_LUT4 add_822_2_lut (.I0(GND_net), .I1(n892), .I2(GND_net), .I3(VCC_net), 
            .O(n1191[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_822_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_3_lut (.I0(GND_net), .I1(n3418), .I2(VCC_net), 
            .I3(n4183), .O(n3463[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_3 (.CI(n4183), .I0(n3418), .I1(VCC_net), .CO(n4184));
    SB_LUT4 rem_4_i2230_3_lut (.I0(n3303), .I1(n3364[26]), .I2(n3331), 
            .I3(GND_net), .O(n3402));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_19_lut (.I0(n2935), .I1(n2902), .I2(VCC_net), 
            .I3(n4104), .O(n3001)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1687_15_lut (.I0(n2539), .I1(n2506), .I2(VCC_net), 
            .I3(n4042), .O(n2605)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_i2229_3_lut (.I0(n3302), .I1(n3364[27]), .I2(n3331), 
            .I3(GND_net), .O(n3401));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2229_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_822_2 (.CI(VCC_net), .I0(n892), .I1(GND_net), .CO(n4273));
    SB_LUT4 rem_4_unary_minus_2_add_3_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[31]), .I3(n4272), .O(n1[31])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_2_lut (.I0(GND_net), .I1(n3419), .I2(GND_net), 
            .I3(VCC_net), .O(n3463[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_2 (.CI(VCC_net), .I0(n3419), .I1(GND_net), 
            .CO(n4183));
    SB_LUT4 rem_4_add_1687_14_lut (.I0(GND_net), .I1(n2507), .I2(VCC_net), 
            .I3(n4041), .O(n2572[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_23_lut (.I0(n3331), .I1(n3298), .I2(VCC_net), 
            .I3(n4182), .O(n3397)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1955_18_lut (.I0(GND_net), .I1(n2903), .I2(VCC_net), 
            .I3(n4103), .O(n2968[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_2_lut (.I0(GND_net), .I1(n2219), .I2(GND_net), 
            .I3(VCC_net), .O(n2275[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2227_3_lut (.I0(n3300), .I1(n3364[29]), .I2(n3331), 
            .I3(GND_net), .O(n3399));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2238_3_lut (.I0(n3311), .I1(n3364[18]), .I2(n3331), 
            .I3(GND_net), .O(n3410));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2238_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2235_3_lut (.I0(n3308), .I1(n3364[21]), .I2(n3331), 
            .I3(GND_net), .O(n3407));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2235_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2240_3_lut (.I0(n3313), .I1(n3364[16]), .I2(n3331), 
            .I3(GND_net), .O(n3412));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2240_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[30]), .I3(n4271), .O(n1[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_22_lut (.I0(GND_net), .I1(n3299), .I2(VCC_net), 
            .I3(n4181), .O(n3364[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_18 (.CI(n4103), .I0(n2903), .I1(VCC_net), 
            .CO(n4104));
    SB_CARRY rem_4_unary_minus_2_add_3_32 (.CI(n4271), .I0(GND_net), .I1(n1_adj_357[30]), 
            .CO(n4272));
    SB_CARRY rem_4_add_2223_22 (.CI(n4181), .I0(n3299), .I1(VCC_net), 
            .CO(n4182));
    SB_LUT4 rem_4_add_1955_17_lut (.I0(GND_net), .I1(n2904), .I2(VCC_net), 
            .I3(n4102), .O(n2968[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_14 (.CI(n4041), .I0(n2507), .I1(VCC_net), 
            .CO(n4042));
    SB_CARRY rem_4_add_1486_2 (.CI(VCC_net), .I0(n2219), .I1(GND_net), 
            .CO(n3997));
    SB_LUT4 rem_4_unary_minus_2_add_3_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[29]), .I3(n4270), .O(n1[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2234_3_lut (.I0(n3307), .I1(n3364[22]), .I2(n3331), 
            .I3(GND_net), .O(n3406));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2234_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_17 (.CI(n4102), .I0(n2904), .I1(VCC_net), 
            .CO(n4103));
    SB_LUT4 rem_4_add_2223_21_lut (.I0(GND_net), .I1(n3300), .I2(VCC_net), 
            .I3(n4180), .O(n3364[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_13_lut (.I0(GND_net), .I1(n2508), .I2(VCC_net), 
            .I3(n4040), .O(n2572[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_13 (.CI(n4040), .I0(n2508), .I1(VCC_net), 
            .CO(n4041));
    SB_LUT4 rem_4_add_1419_11_lut (.I0(n2143), .I1(n2110), .I2(VCC_net), 
            .I3(n3996), .O(n2209)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1955_16_lut (.I0(GND_net), .I1(n2905), .I2(VCC_net), 
            .I3(n4101), .O(n2968[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_21 (.CI(n4180), .I0(n3300), .I1(VCC_net), 
            .CO(n4181));
    SB_CARRY rem_4_unary_minus_2_add_3_31 (.CI(n4270), .I0(GND_net), .I1(n1_adj_357[29]), 
            .CO(n4271));
    SB_LUT4 rem_4_add_1419_10_lut (.I0(GND_net), .I1(n2111), .I2(VCC_net), 
            .I3(n3995), .O(n2176[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_20_lut (.I0(GND_net), .I1(n3301), .I2(VCC_net), 
            .I3(n4179), .O(n3364[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_16 (.CI(n4101), .I0(n2905), .I1(VCC_net), 
            .CO(n4102));
    SB_LUT4 rem_4_add_1955_15_lut (.I0(GND_net), .I1(n2906), .I2(VCC_net), 
            .I3(n4100), .O(n2968[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[28]), .I3(n4269), .O(n1[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_12_lut (.I0(GND_net), .I1(n2509), .I2(VCC_net), 
            .I3(n4039), .O(n2572[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_20 (.CI(n4179), .I0(n3301), .I1(VCC_net), 
            .CO(n4180));
    SB_CARRY rem_4_unary_minus_2_add_3_30 (.CI(n4269), .I0(GND_net), .I1(n1_adj_357[28]), 
            .CO(n4270));
    SB_LUT4 rem_4_i2232_3_lut (.I0(n3305), .I1(n3364[24]), .I2(n3331), 
            .I3(GND_net), .O(n3404));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_19_lut (.I0(GND_net), .I1(n3302), .I2(VCC_net), 
            .I3(n4178), .O(n3364[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_15 (.CI(n4100), .I0(n2906), .I1(VCC_net), 
            .CO(n4101));
    SB_LUT4 rem_4_add_1955_14_lut (.I0(GND_net), .I1(n2907), .I2(VCC_net), 
            .I3(n4099), .O(n2968[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[27]), .I3(n4268), .O(n1[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_12 (.CI(n4039), .I0(n2509), .I1(VCC_net), 
            .CO(n4040));
    SB_CARRY rem_4_unary_minus_2_add_3_29 (.CI(n4268), .I0(GND_net), .I1(n1_adj_357[27]), 
            .CO(n4269));
    SB_CARRY rem_4_add_2223_19 (.CI(n4178), .I0(n3302), .I1(VCC_net), 
            .CO(n4179));
    SB_CARRY rem_4_add_1955_14 (.CI(n4099), .I0(n2907), .I1(VCC_net), 
            .CO(n4100));
    SB_LUT4 rem_4_add_2223_18_lut (.I0(GND_net), .I1(n3303), .I2(VCC_net), 
            .I3(n4177), .O(n3364[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_13_lut (.I0(GND_net), .I1(n2908), .I2(VCC_net), 
            .I3(n4098), .O(n2968[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2233_3_lut (.I0(n3306), .I1(n3364[23]), .I2(n3331), 
            .I3(GND_net), .O(n3405));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2231_3_lut (.I0(n3304), .I1(n3364[25]), .I2(n3331), 
            .I3(GND_net), .O(n3403));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[26]), .I3(n4267), .O(n1[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_18 (.CI(n4177), .I0(n3303), .I1(VCC_net), 
            .CO(n4178));
    SB_LUT4 rem_4_i1362_3_lut (.I0(n2019), .I1(n2077[23]), .I2(n2044), 
            .I3(GND_net), .O(n2118));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i1362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2237_3_lut (.I0(n3310), .I1(n3364[19]), .I2(n3331), 
            .I3(GND_net), .O(n3409));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2237_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_13 (.CI(n4098), .I0(n2908), .I1(VCC_net), 
            .CO(n4099));
    SB_LUT4 rem_4_i2236_3_lut (.I0(n3309), .I1(n3364[20]), .I2(n3331), 
            .I3(GND_net), .O(n3408));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1687_11_lut (.I0(GND_net), .I1(n2510), .I2(VCC_net), 
            .I3(n4038), .O(n2572[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2246_3_lut (.I0(n3319), .I1(n3364[10]), .I2(n3331), 
            .I3(GND_net), .O(n3418));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2246_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_12_lut (.I0(GND_net), .I1(n2909), .I2(VCC_net), 
            .I3(n4097), .O(n2968[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i10_3_lut (.I0(eeprom_counter[9]), .I1(n1[9]), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3419));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_mux_3_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_28 (.CI(n4267), .I0(GND_net), .I1(n1_adj_357[26]), 
            .CO(n4268));
    SB_LUT4 rem_4_i2244_3_lut (.I0(n3317), .I1(n3364[12]), .I2(n3331), 
            .I3(GND_net), .O(n3416));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2244_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[25]), .I3(n4266), .O(n1[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_27 (.CI(n4266), .I0(GND_net), .I1(n1_adj_357[25]), 
            .CO(n4267));
    SB_LUT4 rem_4_unary_minus_2_add_3_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[24]), .I3(n4265), .O(n1[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2245_3_lut (.I0(n3318), .I1(n3364[11]), .I2(n3331), 
            .I3(GND_net), .O(n3417));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2245_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_17_lut (.I0(GND_net), .I1(n3304), .I2(VCC_net), 
            .I3(n4176), .O(n3364[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_12 (.CI(n4097), .I0(n2909), .I1(VCC_net), 
            .CO(n4098));
    SB_CARRY rem_4_add_1687_11 (.CI(n4038), .I0(n2510), .I1(VCC_net), 
            .CO(n4039));
    SB_LUT4 rem_4_add_1687_10_lut (.I0(GND_net), .I1(n2511), .I2(VCC_net), 
            .I3(n4037), .O(n2572[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_17 (.CI(n4176), .I0(n3304), .I1(VCC_net), 
            .CO(n4177));
    SB_LUT4 rem_4_add_2223_16_lut (.I0(GND_net), .I1(n3305), .I2(VCC_net), 
            .I3(n4175), .O(n3364[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_26 (.CI(n4265), .I0(GND_net), .I1(n1_adj_357[24]), 
            .CO(n4266));
    SB_LUT4 rem_4_add_1955_11_lut (.I0(GND_net), .I1(n2910), .I2(VCC_net), 
            .I3(n4096), .O(n2968[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[23]), .I3(n4264), .O(n1[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2242_3_lut (.I0(n3315), .I1(n3364[14]), .I2(n3331), 
            .I3(GND_net), .O(n3414));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2242_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_25 (.CI(n4264), .I0(GND_net), .I1(n1_adj_357[23]), 
            .CO(n4265));
    SB_CARRY rem_4_add_2223_16 (.CI(n4175), .I0(n3305), .I1(VCC_net), 
            .CO(n4176));
    SB_CARRY rem_4_add_1955_11 (.CI(n4096), .I0(n2910), .I1(VCC_net), 
            .CO(n4097));
    SB_LUT4 rem_4_unary_minus_2_add_3_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[22]), .I3(n4263), .O(n1[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_15_lut (.I0(GND_net), .I1(n3306), .I2(VCC_net), 
            .I3(n4174), .O(n3364[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_10_lut (.I0(GND_net), .I1(n2911), .I2(VCC_net), 
            .I3(n4095), .O(n2968[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_10 (.CI(n4037), .I0(n2511), .I1(VCC_net), 
            .CO(n4038));
    SB_LUT4 rem_4_i2161_3_lut (.I0(n3202), .I1(n3265[28]), .I2(n3232), 
            .I3(GND_net), .O(n3301));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2160_3_lut (.I0(n3201), .I1(n3265[29]), .I2(n3232), 
            .I3(GND_net), .O(n3300));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2159_3_lut (.I0(n3200), .I1(n3265[30]), .I2(n3232), 
            .I3(GND_net), .O(n3299));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2159_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_24 (.CI(n4263), .I0(GND_net), .I1(n1_adj_357[22]), 
            .CO(n4264));
    SB_LUT4 rem_4_i2168_3_lut (.I0(n3209), .I1(n3265[21]), .I2(n3232), 
            .I3(GND_net), .O(n3308));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2168_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_10 (.CI(n4095), .I0(n2911), .I1(VCC_net), 
            .CO(n4096));
    SB_LUT4 rem_4_unary_minus_2_add_3_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[21]), .I3(n4262), .O(n1[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_15 (.CI(n4174), .I0(n3306), .I1(VCC_net), 
            .CO(n4175));
    SB_LUT4 rem_4_add_1955_9_lut (.I0(GND_net), .I1(n2912), .I2(VCC_net), 
            .I3(n4094), .O(n2968[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_23 (.CI(n4262), .I0(GND_net), .I1(n1_adj_357[21]), 
            .CO(n4263));
    SB_LUT4 rem_4_unary_minus_2_add_3_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[20]), .I3(n4261), .O(n1[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_14_lut (.I0(GND_net), .I1(n3307), .I2(VCC_net), 
            .I3(n4173), .O(n3364[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_14 (.CI(n4173), .I0(n3307), .I1(VCC_net), 
            .CO(n4174));
    SB_CARRY rem_4_unary_minus_2_add_3_22 (.CI(n4261), .I0(GND_net), .I1(n1_adj_357[20]), 
            .CO(n4262));
    SB_CARRY rem_4_add_1955_9 (.CI(n4094), .I0(n2912), .I1(VCC_net), .CO(n4095));
    SB_LUT4 rem_4_i2166_3_lut (.I0(n3207), .I1(n3265[23]), .I2(n3232), 
            .I3(GND_net), .O(n3306));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1687_9_lut (.I0(GND_net), .I1(n2512), .I2(VCC_net), 
            .I3(n4036), .O(n2572[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[19]), .I3(n4260), .O(n1[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_8_lut (.I0(GND_net), .I1(n2913), .I2(GND_net), 
            .I3(n4093), .O(n2968[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_13_lut (.I0(GND_net), .I1(n3308), .I2(VCC_net), 
            .I3(n4172), .O(n3364[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_9 (.CI(n4036), .I0(n2512), .I1(VCC_net), .CO(n4037));
    SB_CARRY rem_4_add_2223_13 (.CI(n4172), .I0(n3308), .I1(VCC_net), 
            .CO(n4173));
    SB_CARRY rem_4_add_1955_8 (.CI(n4093), .I0(n2913), .I1(GND_net), .CO(n4094));
    SB_LUT4 rem_4_i2170_3_lut (.I0(n3211), .I1(n3265[19]), .I2(n3232), 
            .I3(GND_net), .O(n3310));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2170_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2165_3_lut (.I0(n3206), .I1(n3265[24]), .I2(n3232), 
            .I3(GND_net), .O(n3305));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2163_3_lut (.I0(n3204), .I1(n3265[26]), .I2(n3232), 
            .I3(GND_net), .O(n3303));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2164_3_lut (.I0(n3205), .I1(n3265[25]), .I2(n3232), 
            .I3(GND_net), .O(n3304));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2162_3_lut (.I0(n3203), .I1(n3265[27]), .I2(n3232), 
            .I3(GND_net), .O(n3302));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2162_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_21 (.CI(n4260), .I0(GND_net), .I1(n1_adj_357[19]), 
            .CO(n4261));
    SB_LUT4 rem_4_add_2223_12_lut (.I0(GND_net), .I1(n3309), .I2(VCC_net), 
            .I3(n4171), .O(n3364[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2169_3_lut (.I0(n3210), .I1(n3265[20]), .I2(n3232), 
            .I3(GND_net), .O(n3309));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2169_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_7_lut (.I0(GND_net), .I1(n2914), .I2(GND_net), 
            .I3(n4092), .O(n2968[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_8_lut (.I0(GND_net), .I1(n2513), .I2(GND_net), 
            .I3(n4035), .O(n2572[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2172_rep_14_3_lut (.I0(n3213), .I1(n3265[17]), .I2(n3232), 
            .I3(GND_net), .O(n3312));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2172_rep_14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[18]), .I3(n4259), .O(n1[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_8 (.CI(n4035), .I0(n2513), .I1(GND_net), .CO(n4036));
    SB_CARRY rem_4_unary_minus_2_add_3_20 (.CI(n4259), .I0(GND_net), .I1(n1_adj_357[18]), 
            .CO(n4260));
    SB_CARRY rem_4_add_2223_12 (.CI(n4171), .I0(n3309), .I1(VCC_net), 
            .CO(n4172));
    SB_LUT4 rem_4_unary_minus_2_add_3_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[17]), .I3(n4258), .O(n1[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_11_lut (.I0(GND_net), .I1(n3310), .I2(VCC_net), 
            .I3(n4170), .O(n3364[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2167_3_lut (.I0(n3208), .I1(n3265[22]), .I2(n3232), 
            .I3(GND_net), .O(n3307));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2167_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_7 (.CI(n4092), .I0(n2914), .I1(GND_net), .CO(n4093));
    SB_LUT4 rem_4_add_1687_7_lut (.I0(GND_net), .I1(n2514), .I2(GND_net), 
            .I3(n4034), .O(n2572[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_11 (.CI(n4170), .I0(n3310), .I1(VCC_net), 
            .CO(n4171));
    SB_LUT4 rem_4_add_1955_6_lut (.I0(GND_net), .I1(n2915), .I2(GND_net), 
            .I3(n4091), .O(n2968[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_7 (.CI(n4034), .I0(n2514), .I1(GND_net), .CO(n4035));
    SB_LUT4 rem_4_add_2223_10_lut (.I0(GND_net), .I1(n3311), .I2(VCC_net), 
            .I3(n4169), .O(n3364[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_6 (.CI(n4091), .I0(n2915), .I1(GND_net), .CO(n4092));
    SB_LUT4 rem_4_add_1687_6_lut (.I0(GND_net), .I1(n2515), .I2(GND_net), 
            .I3(n4033), .O(n2572[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2171_3_lut (.I0(n3212), .I1(n3265[18]), .I2(n3232), 
            .I3(GND_net), .O(n3311));   // verilog/eeprom.v(23[6:29])
    defparam rem_4_i2171_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_108 (.I0(n3313), .I1(n3315), .I2(GND_net), .I3(GND_net), 
            .O(n5313));
    defparam i1_2_lut_adj_108.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_unary_minus_2_add_3_19 (.CI(n4258), .I0(GND_net), .I1(n1_adj_357[17]), 
            .CO(n4259));
    SB_CARRY rem_4_add_2223_10 (.CI(n4169), .I0(n3311), .I1(VCC_net), 
            .CO(n4170));
    SB_LUT4 rem_4_i1220_3_lut_4_lut (.I0(n1[31]), .I1(eeprom_counter[31]), 
            .I2(n1843), .I3(n1191[6]), .O(n1912));
    defparam rem_4_i1220_3_lut_4_lut.LUT_INIT = 16'hf808;
    SB_LUT4 i1_3_lut_adj_109 (.I0(n3314), .I1(n3317), .I2(n3316), .I3(GND_net), 
            .O(n5315));
    defparam i1_3_lut_adj_109.LUT_INIT = 16'h8080;
    SB_LUT4 rem_4_add_1955_5_lut (.I0(GND_net), .I1(n2916), .I2(GND_net), 
            .I3(n4090), .O(n2968[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_5 (.CI(n4090), .I0(n2916), .I1(GND_net), .CO(n4091));
    SB_CARRY rem_4_add_1687_6 (.CI(n4033), .I0(n2515), .I1(GND_net), .CO(n4034));
    SB_LUT4 rem_4_unary_minus_2_add_3_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[16]), .I3(n4257), .O(n1[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_110 (.I0(n5315), .I1(n3319), .I2(n5313), .I3(n3318), 
            .O(n4820));
    defparam i1_4_lut_adj_110.LUT_INIT = 16'ha080;
    SB_LUT4 i12_4_lut_adj_111 (.I0(n3311), .I1(n3307), .I2(n3312), .I3(n3309), 
            .O(n28));
    defparam i12_4_lut_adj_111.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_unary_minus_2_add_3_18 (.CI(n4257), .I0(GND_net), .I1(n1_adj_357[16]), 
            .CO(n4258));
    SB_LUT4 rem_4_unary_minus_2_add_3_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[15]), .I3(n4256), .O(n1[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_17 (.CI(n4256), .I0(GND_net), .I1(n1_adj_357[15]), 
            .CO(n4257));
    SB_LUT4 rem_4_add_2223_9_lut (.I0(GND_net), .I1(n3312), .I2(VCC_net), 
            .I3(n4168), .O(n3364[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_4_lut (.I0(GND_net), .I1(n2917), .I2(GND_net), 
            .I3(n4089), .O(n2968[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_5_lut (.I0(GND_net), .I1(n2516), .I2(GND_net), 
            .I3(n4032), .O(n2572[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_4 (.CI(n4089), .I0(n2917), .I1(GND_net), .CO(n4090));
    SB_CARRY rem_4_add_1687_5 (.CI(n4032), .I0(n2516), .I1(GND_net), .CO(n4033));
    SB_LUT4 i10_4_lut_adj_112 (.I0(n3302), .I1(n3304), .I2(n3303), .I3(n4820), 
            .O(n26));
    defparam i10_4_lut_adj_112.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1_adj_357[14]), .I3(n4255), .O(n1[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_16 (.CI(n4255), .I0(GND_net), .I1(n1_adj_357[14]), 
            .CO(n4256));
    SB_CARRY rem_4_add_2223_9 (.CI(n4168), .I0(n3312), .I1(VCC_net), .CO(n4169));
    SB_LUT4 rem_4_add_2223_8_lut (.I0(GND_net), .I1(n3313), .I2(GND_net), 
            .I3(n4167), .O(n3364[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_113 (.I0(n3305), .I1(n3310), .I2(n3306), .I3(n3308), 
            .O(n27));
    defparam i11_4_lut_adj_113.LUT_INIT = 16'hfffe;
    i2c_controller i2c (.CLK_N_keep(CLK_N_keep), .scl_enable(scl_enable), 
            .n1927(n1927), .data({data}), .n1926(n1926), .\state[2] (\state[2] ), 
            .\state[3] (\state[3] ), .n4(n4), .n4733(n4733), .VCC_net(VCC_net), 
            .GND_net(GND_net), .n15(n15), .\state[1] (\state[1] ), .n1814(n1814), 
            .n3595(n3595), .n471(n471), .\state[0] (\state[0] ), .ready_N_228(ready_N_228), 
            .n4_adj_1(n4_adj_6), .n10(n10), .n11(n11), .n10_adj_2(n10_adj_7), 
            .n6(n6), .n3585(n3585), .enable(enable), .\state_7__N_162[3] (\state_7__N_162[3] ), 
            .n22(n22), .n4_adj_3(n4_adj_8), .n5(n5), .n1921(n1921), 
            .\saved_addr[0] (\saved_addr[0] ), .n4495(n4495), .n1935(n1935), 
            .n8(n8), .n4_adj_4(n4_adj_9), .n5361(n5361), .sda_enable(sda_enable), 
            .n1932(n1932), .\state_7__N_146[0] (\state_7__N_146[0] ), .n1931(n1931), 
            .n1930(n1930), .n1929(n1929), .n1928(n1928), .n3587(n3587), 
            .n3581(n3581), .n1805(n1805), .n1800(n1800), .n5458(n5458), 
            .n11_adj_5(n11_adj_10), .n178({n178})) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(29[16] 43[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (CLK_N_keep, scl_enable, n1927, data, n1926, 
            \state[2] , \state[3] , n4, n4733, VCC_net, GND_net, 
            n15, \state[1] , n1814, n3595, n471, \state[0] , ready_N_228, 
            n4_adj_1, n10, n11, n10_adj_2, n6, n3585, enable, 
            \state_7__N_162[3] , n22, n4_adj_3, n5, n1921, \saved_addr[0] , 
            n4495, n1935, n8, n4_adj_4, n5361, sda_enable, n1932, 
            \state_7__N_146[0] , n1931, n1930, n1929, n1928, n3587, 
            n3581, n1805, n1800, n5458, n11_adj_5, n178) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input CLK_N_keep;
    output scl_enable;
    input n1927;
    output [7:0]data;
    input n1926;
    output \state[2] ;
    output \state[3] ;
    input n4;
    output n4733;
    input VCC_net;
    input GND_net;
    input n15;
    output \state[1] ;
    output n1814;
    output n3595;
    output n471;
    output \state[0] ;
    output ready_N_228;
    output n4_adj_1;
    output n10;
    output n11;
    output n10_adj_2;
    output n6;
    output n3585;
    input enable;
    output \state_7__N_162[3] ;
    output n22;
    output n4_adj_3;
    input n5;
    input n1921;
    output \saved_addr[0] ;
    input n4495;
    input n1935;
    input n8;
    output n4_adj_4;
    output n5361;
    output sda_enable;
    input n1932;
    output \state_7__N_146[0] ;
    input n1931;
    input n1930;
    input n1929;
    input n1928;
    output n3587;
    output n3581;
    output n1805;
    output n1800;
    output n5458;
    output n11_adj_5;
    output [0:0]n178;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    
    wire i2c_clk_N_238, scl_enable_N_239, n9;
    wire [7:0]n179;
    
    wire n1829;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n1913, n3905, n3904, n3903;
    wire [4:0]n25;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire counter2_7__N_133, n3902, n3901, n3965, n3964, n12, n3963, 
        n3962, n464, n4579, n534, n37, n407, n6_adj_255, n1832, 
        n3900, n3899, n39, n13, n4513, n5464, n5451;
    wire [0:0]n443;
    
    wire n1179, n33, n1901, n524, n1183, sda_out;
    
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(CLK_N_keep), .D(i2c_clk_N_238));   // verilog/i2c_controller.v(58[9] 70[5])
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_239));   // verilog/i2c_controller.v(75[12] 81[6])
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n1927));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n1926));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n4), 
            .I3(n9), .O(n4733));   // verilog/i2c_controller.v(136[9:14])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hf0f4;
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1829), .D(n179[3]), 
            .R(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1829), .D(n179[2]), 
            .S(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1829), .D(n179[1]), 
            .S(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1829), .D(n179[5]), 
            .R(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1829), .D(n179[4]), 
            .R(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 sub_25_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n3905), .O(n179[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_25_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n3904), .O(n179[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_25_add_2_8 (.CI(n3904), .I0(counter[6]), .I1(VCC_net), 
            .CO(n3905));
    SB_LUT4 sub_25_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n3903), .O(n179[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR counter2_229_230__i1 (.Q(counter2[0]), .C(CLK_N_keep), .D(n25[0]), 
            .R(counter2_7__N_133));   // verilog/i2c_controller.v(69[20:32])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1829), .D(n179[6]), 
            .R(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_CARRY sub_25_add_2_7 (.CI(n3903), .I0(counter[5]), .I1(VCC_net), 
            .CO(n3904));
    SB_DFFE state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(VCC_net), .D(n15));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 sub_25_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n3902), .O(n179[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_25_add_2_6 (.CI(n3902), .I0(counter[4]), .I1(VCC_net), 
            .CO(n3903));
    SB_LUT4 i1_3_lut (.I0(\state[3] ), .I1(n1814), .I2(n3595), .I3(GND_net), 
            .O(n471));
    defparam i1_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i4695_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(ready_N_228));   // verilog/i2c_controller.v(76[27:43])
    defparam i4695_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 sub_25_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n3901), .O(n179[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_229_230_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[4]), 
            .I3(n3965), .O(n25[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_229_230_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_229_230_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[3]), 
            .I3(n3964), .O(n25[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_229_230_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_229_230_add_4_5 (.CI(n3964), .I0(GND_net), .I1(counter2[3]), 
            .CO(n3965));
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(116[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 counter2_229_230_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n3963), .O(n25[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_229_230_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_229_230_add_4_4 (.CI(n3963), .I0(GND_net), .I1(counter2[2]), 
            .CO(n3964));
    SB_LUT4 counter2_229_230_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n3962), .O(n25[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_229_230_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_229_230_add_4_3 (.CI(n3962), .I0(GND_net), .I1(counter2[1]), 
            .CO(n3963));
    SB_LUT4 counter2_229_230_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n25[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_229_230_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_229_230_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n3962));
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n4_adj_1), 
            .O(n464));   // verilog/i2c_controller.v(116[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 state_7__I_0_137_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(93[5:9])
    defparam state_7__I_0_137_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 state_7__I_0_140_i11_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11));
    defparam state_7__I_0_140_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i20_4_lut (.I0(n464), .I1(n4579), .I2(n534), .I3(n37), .O(n1829));
    defparam i20_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 state_7__I_0_143_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_2));   // verilog/i2c_controller.v(140[5:14])
    defparam state_7__I_0_143_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 state_7__I_0_144_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(146[5:14])
    defparam state_7__I_0_144_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n6));   // verilog/i2c_controller.v(115[5:12])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdfb;
    SB_LUT4 i3_4_lut_4_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(\state[3] ), .O(n407));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h0144;
    SB_LUT4 i3200_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3585));
    defparam i3200_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(scl_enable_N_239));
    defparam i2_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_2_lut (.I0(counter2[0]), .I1(counter2[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_255));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(counter2[1]), .I1(counter2[4]), .I2(counter2[2]), 
            .I3(n6_adj_255), .O(counter2_7__N_133));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_6 (.I0(i2c_clk), .I1(counter2_7__N_133), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_238));
    defparam i1_2_lut_adj_6.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(enable), 
            .I3(\state_7__N_162[3] ), .O(n22));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdd5d;
    SB_CARRY sub_25_add_2_5 (.CI(n3901), .I0(counter[3]), .I1(VCC_net), 
            .CO(n3902));
    SB_LUT4 i3210_2_lut_3_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(GND_net), .O(n3595));
    defparam i3210_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 equal_36_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_3));   // verilog/i2c_controller.v(147[6:23])
    defparam equal_36_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 equal_41_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_1));   // verilog/i2c_controller.v(147[6:23])
    defparam equal_41_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(\state[3] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n37));
    defparam i1_4_lut.LUT_INIT = 16'h1514;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable), .I1(i2c_clk), .I2(counter2_7__N_133), 
            .I3(GND_net), .O(n1832));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_DFFE state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(VCC_net), .D(n5));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1921));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFE state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(VCC_net), .D(n4495));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFSR counter2_229_230__i2 (.Q(counter2[1]), .C(CLK_N_keep), .D(n25[1]), 
            .R(counter2_7__N_133));   // verilog/i2c_controller.v(69[20:32])
    SB_DFFSR counter2_229_230__i3 (.Q(counter2[2]), .C(CLK_N_keep), .D(n25[2]), 
            .R(counter2_7__N_133));   // verilog/i2c_controller.v(69[20:32])
    SB_DFFSR counter2_229_230__i4 (.Q(counter2[3]), .C(CLK_N_keep), .D(n25[3]), 
            .R(counter2_7__N_133));   // verilog/i2c_controller.v(69[20:32])
    SB_DFFSR counter2_229_230__i5 (.Q(counter2[4]), .C(CLK_N_keep), .D(n25[4]), 
            .R(counter2_7__N_133));   // verilog/i2c_controller.v(69[20:32])
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n1935));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 sub_25_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n3900), .O(n179[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_25_add_2_4 (.CI(n3900), .I0(counter[2]), .I1(VCC_net), 
            .CO(n3901));
    SB_LUT4 sub_25_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n3899), .O(n179[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4684_4_lut (.I0(\state[1] ), .I1(n39), .I2(\state[2] ), .I3(n13), 
            .O(n4513));
    defparam i4684_4_lut.LUT_INIT = 16'h444c;
    SB_CARRY sub_25_add_2_3 (.CI(n3899), .I0(counter[1]), .I1(VCC_net), 
            .CO(n3900));
    SB_LUT4 sub_25_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n179[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_25_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4645_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n5464));   // verilog/i2c_controller.v(189[28:35])
    defparam i4645_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n8));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 i4644_4_lut (.I0(n5464), .I1(\state[1] ), .I2(counter[0]), 
            .I3(counter[2]), .O(n5451));   // verilog/i2c_controller.v(172[4] 205[11])
    defparam i4644_4_lut.LUT_INIT = 16'hc008;
    SB_LUT4 mux_161_i1_4_lut (.I0(n5451), .I1(\state[0] ), .I2(n407), 
            .I3(\state[2] ), .O(n443[0]));   // verilog/i2c_controller.v(172[4] 205[11])
    defparam mux_161_i1_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 equal_38_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_4));   // verilog/i2c_controller.v(147[6:23])
    defparam equal_38_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i4690_2_lut (.I0(i2c_clk), .I1(counter2_7__N_133), .I2(GND_net), 
            .I3(GND_net), .O(n1179));   // verilog/i2c_controller.v(69[8:33])
    defparam i4690_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i1_3_lut_adj_7 (.I0(\state[1] ), .I1(n37), .I2(n33), .I3(GND_net), 
            .O(n39));
    defparam i1_3_lut_adj_7.LUT_INIT = 16'hdcdc;
    SB_LUT4 i56_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 i1_3_lut_adj_8 (.I0(\state[1] ), .I1(n33), .I2(n37), .I3(GND_net), 
            .O(n1901));
    defparam i1_3_lut_adj_8.LUT_INIT = 16'h5454;
    SB_LUT4 i4692_4_lut (.I0(n407), .I1(n39), .I2(\state[2] ), .I3(\state[1] ), 
            .O(n524));
    defparam i4692_4_lut.LUT_INIT = 16'hc8cc;
    SB_LUT4 i4743_2_lut (.I0(\state[0] ), .I1(n407), .I2(GND_net), .I3(GND_net), 
            .O(n1183));   // verilog/i2c_controller.v(172[4] 205[11])
    defparam i4743_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_3_lut_3_lut (.I0(\state[0] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n13));
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4589_3_lut_4_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n5361));   // verilog/i2c_controller.v(136[9:14])
    defparam i4589_3_lut_4_lut_4_lut.LUT_INIT = 16'hff9f;
    SB_LUT4 i3794_2_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(n4579), .O(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    defparam i3794_2_lut_4_lut.LUT_INIT = 16'h0010;
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n524), 
            .D(n1183), .S(n1901));   // verilog/i2c_controller.v(171[12] 206[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n1932));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_CARRY sub_25_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n3899));
    SB_DFFESS enable_slow_121 (.Q(\state_7__N_146[0] ), .C(CLK_N_keep), 
            .E(n1832), .D(n1179), .S(enable));   // verilog/i2c_controller.v(58[9] 70[5])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n1931));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFFNE sda_out_133 (.Q(sda_out), .C(i2c_clk), .E(n4513), .D(n443[0]));   // verilog/i2c_controller.v(171[12] 206[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1829), .D(n179[0]), 
            .S(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n1930));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n1929));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n1928));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 i321_2_lut (.I0(sda_out), .I1(sda_enable), .I2(GND_net), .I3(GND_net), 
            .O(\state_7__N_162[3] ));   // verilog/i2c_controller.v(46[9:16])
    defparam i321_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i3258_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n3587));
    defparam i3258_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_3_lut_4_lut (.I0(n9), .I1(n10), .I2(n3587), .I3(n464), 
            .O(n1814));   // verilog/i2c_controller.v(115[5:12])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h1f00;
    SB_LUT4 i1_2_lut_3_lut_adj_9 (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n534));   // verilog/i2c_controller.v(76[27:43])
    defparam i1_2_lut_3_lut_adj_9.LUT_INIT = 16'h1010;
    SB_LUT4 i3196_2_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n3581));
    defparam i3196_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3809_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n10), 
            .I3(\state_7__N_162[3] ), .O(n4579));   // verilog/i2c_controller.v(136[9:14])
    defparam i3809_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1829), .D(n179[7]), 
            .R(n1913));   // verilog/i2c_controller.v(90[8] 164[6])
    SB_LUT4 i1_2_lut_3_lut_adj_10 (.I0(n9), .I1(n10_adj_2), .I2(counter[0]), 
            .I3(GND_net), .O(n1805));   // verilog/i2c_controller.v(146[5:14])
    defparam i1_2_lut_3_lut_adj_10.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_3_lut_adj_11 (.I0(n9), .I1(n10_adj_2), .I2(counter[0]), 
            .I3(GND_net), .O(n1800));   // verilog/i2c_controller.v(146[5:14])
    defparam i1_2_lut_3_lut_adj_11.LUT_INIT = 16'hfefe;
    SB_LUT4 i4657_3_lut_4_lut (.I0(n9), .I1(n10_adj_2), .I2(\state_7__N_162[3] ), 
            .I3(n11), .O(n5458));   // verilog/i2c_controller.v(146[5:14])
    defparam i4657_3_lut_4_lut.LUT_INIT = 16'heee0;
    SB_LUT4 state_7__I_0_142_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n11_adj_5));   // verilog/i2c_controller.v(136[9:14])
    defparam state_7__I_0_142_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i3188_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(n178[0]));   // verilog/i2c_controller.v(45[19:55])
    defparam i3188_2_lut.LUT_INIT = 16'hbbbb;
    
endmodule
