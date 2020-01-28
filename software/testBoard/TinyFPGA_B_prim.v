// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Jan 28 14:29:29 2020
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
    
    wire CLK_N /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n142, VCC_net, LED_c, CS_MISO_N;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n144, n146, n148, n150, n152, n154, n156, n158, n160, 
        n162, n164, n166, n168, CS_adj, n1000;
    wire [15:0]di_i;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(191[9:13])
    
    wire wren_N_keep, n368, n370, spi_2x_ce;
    wire [15:0]di_reg;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(248[12:18])
    
    wire n1004, n1016, n1015, n1003, n1014, n1013, n1002, n1012, 
        n1011, n135, n134, n133, n132, n131, n130, n129, n128, 
        n127, n126, n125, n1083, n1001, n998, n124, n996, n123, 
        n1010, n1009, n122, n121, n120, n119, n118, n117, n1008, 
        n116, n115, n114, n113, n995, n112, n111, n26, n110, 
        n25, n24, n23, n22, n21, n20, n19, n18, n17, n16, 
        n15, n14, n13, n12, n11, n10, n9, n8, n7, n6, n993, 
        n1007, n1006, n994, n999, n884, n1005, n997, n992, n872, 
        n1084, n871;
    
    VCC i2 (.Y(VCC_net));
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_182__i0 (.Q(n26), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_CARRY blink_counter_182_add_4_15 (.CI(n1004), .I0(n142), .I1(n13), 
            .CO(n1005));
    SB_LUT4 blink_counter_182_add_4_14_lut (.I0(n142), .I1(n142), .I2(n14), 
            .I3(n1003), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_14 (.CI(n1003), .I0(n142), .I1(n14), 
            .CO(n1004));
    SB_LUT4 i557_3_lut (.I0(di_reg[15]), .I1(di_i[15]), .I2(wren_N_keep), 
            .I3(n142), .O(n871));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(439[9] 443[17])
    defparam i557_3_lut.LUT_INIT = 16'hcaca;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_MISO_pad (.PACKAGE_PIN(CS_MISO), .OUTPUT_ENABLE(VCC_net), .D_IN_0(CS_MISO_N));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_MISO_pad.PIN_TYPE = 6'b000001;
    defparam CS_MISO_pad.PULLUP = 1'b0;
    defparam CS_MISO_pad.NEG_TRIGGER = 1'b0;
    defparam CS_MISO_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i558_3_lut (.I0(n368), .I1(n370), .I2(spi_2x_ce), .I3(n142), 
            .O(n872));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    defparam i558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i570_2_lut (.I0(spi_2x_ce), .I1(n370), .I2(n142), .I3(n142), 
            .O(n884));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    defparam i570_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 blink_counter_182_add_4_13_lut (.I0(n142), .I1(n142), .I2(n15), 
            .I3(n1002), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i714_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n1084));
    defparam i714_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i713_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n1083));
    defparam i713_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i715_3_lut (.I0(n1083), .I1(n1084), .I2(blink_counter[25]), 
            .I3(n142), .O(LED_c));
    defparam i715_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 blink_counter_182_add_4_27_lut (.I0(n142), .I1(n142), .I2(blink_counter[25]), 
            .I3(n1016), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_182_add_4_26_lut (.I0(n142), .I1(n142), .I2(blink_counter[24]), 
            .I3(n1015), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_26 (.CI(n1015), .I0(n142), .I1(blink_counter[24]), 
            .CO(n1016));
    SB_LUT4 blink_counter_182_add_4_25_lut (.I0(n142), .I1(n142), .I2(blink_counter[23]), 
            .I3(n1014), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_25 (.CI(n1014), .I0(n142), .I1(blink_counter[23]), 
            .CO(n1015));
    SB_LUT4 blink_counter_182_add_4_24_lut (.I0(n142), .I1(n142), .I2(blink_counter[22]), 
            .I3(n1013), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_24 (.CI(n1013), .I0(n142), .I1(blink_counter[22]), 
            .CO(n1014));
    SB_LUT4 blink_counter_182_add_4_23_lut (.I0(n142), .I1(n142), .I2(blink_counter[21]), 
            .I3(n1012), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_23 (.CI(n1012), .I0(n142), .I1(blink_counter[21]), 
            .CO(n1013));
    SB_LUT4 blink_counter_182_add_4_22_lut (.I0(n142), .I1(n142), .I2(n6), 
            .I3(n1011), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_22 (.CI(n1011), .I0(n142), .I1(n6), 
            .CO(n1012));
    SB_CARRY blink_counter_182_add_4_13 (.CI(n1002), .I0(n142), .I1(n15), 
            .CO(n1003));
    SB_LUT4 blink_counter_182_add_4_6_lut (.I0(n142), .I1(n142), .I2(n22), 
            .I3(n995), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_N));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_182_add_4_12_lut (.I0(n142), .I1(n142), .I2(n16), 
            .I3(n1001), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_182__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_CARRY blink_counter_182_add_4_12 (.CI(n1001), .I0(n142), .I1(n16), 
            .CO(n1002));
    SB_CARRY blink_counter_182_add_4_6 (.CI(n995), .I0(n142), .I1(n22), 
            .CO(n996));
    SB_LUT4 blink_counter_182_add_4_5_lut (.I0(n142), .I1(n142), .I2(n23), 
            .I3(n994), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_3 (.CI(n992), .I0(n142), .I1(n25), 
            .CO(n993));
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_182__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_CARRY blink_counter_182_add_4_4 (.CI(n993), .I0(n142), .I1(n24), 
            .CO(n994));
    SB_CARRY blink_counter_182_add_4_2 (.CI(VCC_net), .I0(n142), .I1(n26), 
            .CO(n992));
    SB_LUT4 blink_counter_182_add_4_2_lut (.I0(n142), .I1(n142), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_5 (.CI(n994), .I0(n142), .I1(n23), 
            .CO(n995));
    SB_LUT4 blink_counter_182_add_4_3_lut (.I0(n142), .I1(n142), .I2(n25), 
            .I3(n992), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_182__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i20 (.Q(n6), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_182__i19 (.Q(n7), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i18 (.Q(n8), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i17 (.Q(n9), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i16 (.Q(n10), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i15 (.Q(n11), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i14 (.Q(n12), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i13 (.Q(n13), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i12 (.Q(n14), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i11 (.Q(n15), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i10 (.Q(n16), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_182__i9 (.Q(n17), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i8 (.Q(n18), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i7 (.Q(n19), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i6 (.Q(n20), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i5 (.Q(n21), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i4 (.Q(n22), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i3 (.Q(n23), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i2 (.Q(n24), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_182__i1 (.Q(n25), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_182_add_4_11_lut (.I0(n142), .I1(n142), .I2(n17), 
            .I3(n1000), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_11 (.CI(n1000), .I0(n142), .I1(n17), 
            .CO(n1001));
    SB_LUT4 blink_counter_182_add_4_10_lut (.I0(n142), .I1(n142), .I2(n18), 
            .I3(n999), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_10 (.CI(n999), .I0(n142), .I1(n18), 
            .CO(n1000));
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_182_add_4_9_lut (.I0(n142), .I1(n142), .I2(n19), 
            .I3(n998), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_182_add_4_21_lut (.I0(n142), .I1(n142), .I2(n7), 
            .I3(n1010), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_21 (.CI(n1010), .I0(n142), .I1(n7), 
            .CO(n1011));
    SB_LUT4 blink_counter_182_add_4_20_lut (.I0(n142), .I1(n142), .I2(n8), 
            .I3(n1009), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_20 (.CI(n1009), .I0(n142), .I1(n8), 
            .CO(n1010));
    SB_LUT4 blink_counter_182_add_4_19_lut (.I0(n142), .I1(n142), .I2(n9), 
            .I3(n1008), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_19 (.CI(n1008), .I0(n142), .I1(n9), 
            .CO(n1009));
    SB_LUT4 blink_counter_182_add_4_18_lut (.I0(n142), .I1(n142), .I2(n10), 
            .I3(n1007), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_18 (.CI(n1007), .I0(n142), .I1(n10), 
            .CO(n1008));
    SB_LUT4 blink_counter_182_add_4_17_lut (.I0(n142), .I1(n142), .I2(n11), 
            .I3(n1006), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_182_add_4_17 (.CI(n1006), .I0(n142), .I1(n11), 
            .CO(n1007));
    SB_LUT4 blink_counter_182_add_4_16_lut (.I0(n142), .I1(n142), .I2(n12), 
            .I3(n1005), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_16 (.CI(n1005), .I0(n142), .I1(n12), 
            .CO(n1006));
    SB_LUT4 blink_counter_182_add_4_15_lut (.I0(n142), .I1(n142), .I2(n13), 
            .I3(n1004), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_182_add_4_9 (.CI(n998), .I0(n142), .I1(n19), 
            .CO(n999));
    SB_LUT4 blink_counter_182_add_4_8_lut (.I0(n142), .I1(n142), .I2(n20), 
            .I3(n997), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_IO SCL_pad (.PACKAGE_PIN(SCL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam SCL_pad.PIN_TYPE = 6'b011001;
    defparam SCL_pad.PULLUP = 1'b0;
    defparam SCL_pad.NEG_TRIGGER = 1'b0;
    defparam SCL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_182_add_4_8 (.CI(n997), .I0(n142), .I1(n20), 
            .CO(n998));
    GND i1 (.Y(n142));
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(n142));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    TLI4970 tli (.CLK_N_keep(CLK_N), .CS_adj(CS_adj), .VCC_net(VCC_net), 
            .GND_net(n142), .\di_reg[15] (di_reg[15]), .CS_MISO_N_keep(CS_MISO_N), 
            .di_i({di_i[15], Open_0, Open_1, Open_2, Open_3, Open_4, 
            Open_5, Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, 
            Open_12, Open_13, Open_14}), .wren_N_keep(wren_N_keep), 
            .n368(n368), .n370(n370), .n160(n160), .n166(n166), .n164(n164), 
            .n162(n162), .n158(n158), .n156(n156), .n154(n154), .n152(n152), 
            .n150(n150), .n148(n148), .n146(n146), .n168(n168), .n144(n144), 
            .spi_2x_ce(spi_2x_ce), .n884(n884), .n872(n872), .n871(n871)) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(83[13] 89[8])
    SB_LUT4 blink_counter_182_add_4_4_lut (.I0(n142), .I1(n142), .I2(n24), 
            .I3(n993), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_182_add_4_7_lut (.I0(n142), .I1(n142), .I2(n21), 
            .I3(n996), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_182_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(CS_adj));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_182_add_4_7 (.CI(n996), .I0(n142), .I1(n21), 
            .CO(n997));
    
endmodule
//
// Verilog Description of module TLI4970
//

module TLI4970 (CLK_N_keep, CS_adj, VCC_net, GND_net, \di_reg[15] , 
            CS_MISO_N_keep, di_i, wren_N_keep, n368, n370, n160, 
            n166, n164, n162, n158, n156, n154, n152, n150, 
            n148, n146, n168, n144, spi_2x_ce, n884, n872, n871) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;
    input CLK_N_keep;
    output CS_adj;
    input VCC_net;
    input GND_net;
    output \di_reg[15] ;
    input CS_MISO_N_keep;
    output [15:0]di_i;
    output wren_N_keep;
    output n368;
    output n370;
    output n160;
    output n166;
    output n164;
    output n162;
    output n158;
    output n156;
    output n154;
    output n152;
    output n150;
    output n148;
    output n146;
    output n168;
    output n144;
    output spi_2x_ce;
    input n884;
    input n872;
    input n871;
    
    wire [31:0]delay_counter;   // verilog/tli4970.v(14[11:24])
    
    wire n374, n372, n1025, n1026;
    wire [31:0]n133;
    
    wire n1023, n804, n841, n1024, n1039, n1040, n1022, n1021, 
        n1020, n1038, n1019, n1017, n1018, n882, n10, n886, 
        n885, n883, n16, n881, n880, n879, n878, n877, n876, 
        n15, n875, n874, n873, n1037, n22, n10_adj_301, n26, 
        n17, n28, n27, n29, current_14__N_89, n1036, n1047, n1035, 
        n1046, n1045, n1044, n1043, n1042, n1041, n1034, n1033, 
        n1032, n1031, n1030, n1029, n1028, n1027;
    
    assign CS_adj = VCC_net;
    SB_CARRY delay_counter_183_add_4_11 (.CI(n1025), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n1026));
    SB_LUT4 delay_counter_183_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[7]), 
            .I3(n1023), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i3 (.Q(delay_counter[3]), .C(CLK_N_keep), 
            .E(n804), .D(n133[3]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i2 (.Q(delay_counter[2]), .C(CLK_N_keep), 
            .E(n804), .D(n133[2]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i4 (.Q(delay_counter[4]), .C(CLK_N_keep), 
            .E(n804), .D(n133[4]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_CARRY delay_counter_183_add_4_9 (.CI(n1023), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n1024));
    SB_LUT4 delay_counter_183_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n1039), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_25 (.CI(n1039), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n1040));
    SB_LUT4 delay_counter_183_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n1024), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i0 (.Q(delay_counter[0]), .C(CLK_N_keep), 
            .E(n804), .D(n133[0]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[6]), 
            .I3(n1022), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i5 (.Q(delay_counter[5]), .C(CLK_N_keep), 
            .E(n804), .D(n133[5]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_CARRY delay_counter_183_add_4_8 (.CI(n1022), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n1023));
    SB_DFFESR delay_counter_183__i6 (.Q(delay_counter[6]), .C(CLK_N_keep), 
            .E(n804), .D(n133[6]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[5]), 
            .I3(n1021), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i7 (.Q(delay_counter[7]), .C(CLK_N_keep), 
            .E(n804), .D(n133[7]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i8 (.Q(delay_counter[8]), .C(CLK_N_keep), 
            .E(n804), .D(n133[8]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_CARRY delay_counter_183_add_4_7 (.CI(n1021), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n1022));
    SB_LUT4 delay_counter_183_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[4]), 
            .I3(n1020), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_6 (.CI(n1020), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n1021));
    SB_LUT4 delay_counter_183_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n1038), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_183_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[3]), 
            .I3(n1019), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_2 (.CI(CS_adj), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n1017));
    SB_DFFESR delay_counter_183__i9 (.Q(delay_counter[9]), .C(CLK_N_keep), 
            .E(n804), .D(n133[9]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_CARRY delay_counter_183_add_4_24 (.CI(n1038), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n1039));
    SB_CARRY delay_counter_183_add_4_5 (.CI(n1019), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n1020));
    SB_DFF wren_18 (.Q(wren_N_keep), .C(CLK_N_keep), .D(n841));   // verilog/tli4970.v(18[10] 33[6])
    SB_LUT4 delay_counter_183_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[2]), 
            .I3(n1018), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i568_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n160), 
            .O(n882));   // verilog/tli4970.v(29[14] 32[8])
    defparam i568_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_2_lut (.I0(delay_counter[5]), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(GND_net), .O(n10));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_DFF current__i2 (.Q(n166), .C(CLK_N_keep), .D(n886));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i3 (.Q(n164), .C(CLK_N_keep), .D(n885));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFFESR delay_counter_183__i10 (.Q(delay_counter[10]), .C(CLK_N_keep), 
            .E(n804), .D(n133[10]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFF current__i4 (.Q(n162), .C(CLK_N_keep), .D(n883));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i5 (.Q(n160), .C(CLK_N_keep), .D(n882));   // verilog/tli4970.v(18[10] 33[6])
    SB_LUT4 i7_4_lut (.I0(delay_counter[7]), .I1(delay_counter[3]), .I2(delay_counter[0]), 
            .I3(n10), .O(n16));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF current__i6 (.Q(n158), .C(CLK_N_keep), .D(n881));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i7 (.Q(n156), .C(CLK_N_keep), .D(n880));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFFESR delay_counter_183__i11 (.Q(delay_counter[11]), .C(CLK_N_keep), 
            .E(n804), .D(n133[11]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i12 (.Q(delay_counter[12]), .C(CLK_N_keep), 
            .E(n804), .D(n133[12]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_CARRY delay_counter_183_add_4_4 (.CI(n1018), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n1019));
    SB_DFF current__i8 (.Q(n154), .C(CLK_N_keep), .D(n879));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i9 (.Q(n152), .C(CLK_N_keep), .D(n878));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i10 (.Q(n150), .C(CLK_N_keep), .D(n877));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i11 (.Q(n148), .C(CLK_N_keep), .D(n876));   // verilog/tli4970.v(18[10] 33[6])
    SB_LUT4 i6_4_lut (.I0(delay_counter[1]), .I1(delay_counter[2]), .I2(delay_counter[6]), 
            .I3(delay_counter[8]), .O(n15));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF current__i12 (.Q(n146), .C(CLK_N_keep), .D(n875));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i1 (.Q(n168), .C(CLK_N_keep), .D(n874));   // verilog/tli4970.v(18[10] 33[6])
    SB_DFF current__i13 (.Q(n144), .C(CLK_N_keep), .D(n873));   // verilog/tli4970.v(18[10] 33[6])
    SB_LUT4 delay_counter_183_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n1037), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i13 (.Q(delay_counter[13]), .C(CLK_N_keep), 
            .E(n804), .D(n133[13]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 i421_4_lut (.I0(n15), .I1(delay_counter[10]), .I2(delay_counter[9]), 
            .I3(n16), .O(n22));
    defparam i421_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i4_4_lut (.I0(di_i[15]), .I1(delay_counter[13]), .I2(delay_counter[12]), 
            .I3(delay_counter[11]), .O(n10_adj_301));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 delay_counter_183_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[1]), 
            .I3(n1017), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut (.I0(delay_counter[19]), .I1(delay_counter[17]), .I2(delay_counter[23]), 
            .I3(delay_counter[26]), .O(n26));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY delay_counter_183_add_4_23 (.CI(n1037), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n1038));
    SB_LUT4 i1_4_lut (.I0(delay_counter[14]), .I1(delay_counter[16]), .I2(n10_adj_301), 
            .I3(n22), .O(n17));
    defparam i1_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i12_4_lut (.I0(delay_counter[21]), .I1(delay_counter[24]), .I2(delay_counter[20]), 
            .I3(delay_counter[18]), .O(n28));
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(delay_counter[28]), .I1(delay_counter[30]), .I2(delay_counter[25]), 
            .I3(delay_counter[27]), .O(n27));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(n17), .I1(n26), .I2(delay_counter[22]), .I3(delay_counter[29]), 
            .O(n29));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_183__i14 (.Q(delay_counter[14]), .C(CLK_N_keep), 
            .E(n804), .D(n133[14]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 i620_4_lut (.I0(n29), .I1(delay_counter[31]), .I2(n27), .I3(n28), 
            .O(current_14__N_89));   // verilog/tli4970.v(21[8:28])
    defparam i620_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i1_2_lut_adj_5 (.I0(current_14__N_89), .I1(CS_adj), .I2(GND_net), 
            .I3(GND_net), .O(n841));   // verilog/tli4970.v(29[14] 32[8])
    defparam i1_2_lut_adj_5.LUT_INIT = 16'h8888;
    SB_CARRY delay_counter_183_add_4_3 (.CI(n1017), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n1018));
    SB_LUT4 i569_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n162), 
            .O(n883));   // verilog/tli4970.v(29[14] 32[8])
    defparam i569_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_DFFESR delay_counter_183__i15 (.Q(di_i[15]), .C(CLK_N_keep), .E(n804), 
            .D(n133[15]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 i571_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n164), 
            .O(n885));   // verilog/tli4970.v(29[14] 32[8])
    defparam i571_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 delay_counter_183_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n1036), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i559_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n144), 
            .O(n873));   // verilog/tli4970.v(29[14] 32[8])
    defparam i559_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 delay_counter_183_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[0]), 
            .I3(CS_adj), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i16 (.Q(delay_counter[16]), .C(CLK_N_keep), 
            .E(n804), .D(n133[16]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 i572_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n166), 
            .O(n886));   // verilog/tli4970.v(29[14] 32[8])
    defparam i572_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i560_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n168), 
            .O(n874));   // verilog/tli4970.v(29[14] 32[8])
    defparam i560_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY delay_counter_183_add_4_22 (.CI(n1036), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n1037));
    SB_LUT4 delay_counter_183_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n1047), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_6 (.I0(CS_adj), .I1(current_14__N_89), .I2(GND_net), 
            .I3(GND_net), .O(n804));
    defparam i1_2_lut_adj_6.LUT_INIT = 16'hbbbb;
    SB_DFFESR delay_counter_183__i17 (.Q(delay_counter[17]), .C(CLK_N_keep), 
            .E(n804), .D(n133[17]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n1035), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i18 (.Q(delay_counter[18]), .C(CLK_N_keep), 
            .E(n804), .D(n133[18]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i19 (.Q(delay_counter[19]), .C(CLK_N_keep), 
            .E(n804), .D(n133[19]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i20 (.Q(delay_counter[20]), .C(CLK_N_keep), 
            .E(n804), .D(n133[20]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n1046), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_21 (.CI(n1035), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n1036));
    SB_CARRY delay_counter_183_add_4_32 (.CI(n1046), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n1047));
    SB_LUT4 delay_counter_183_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n1045), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i561_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n146), 
            .O(n875));   // verilog/tli4970.v(29[14] 32[8])
    defparam i561_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY delay_counter_183_add_4_31 (.CI(n1045), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n1046));
    SB_LUT4 delay_counter_183_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n1044), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_30 (.CI(n1044), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n1045));
    SB_LUT4 delay_counter_183_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n1043), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_29 (.CI(n1043), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n1044));
    SB_LUT4 delay_counter_183_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n1042), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_28 (.CI(n1042), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n1043));
    SB_LUT4 delay_counter_183_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n1041), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_27 (.CI(n1041), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n1042));
    SB_LUT4 delay_counter_183_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n1040), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i562_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n148), 
            .O(n876));   // verilog/tli4970.v(29[14] 32[8])
    defparam i562_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY delay_counter_183_add_4_26 (.CI(n1040), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n1041));
    SB_DFFESR delay_counter_183__i21 (.Q(delay_counter[21]), .C(CLK_N_keep), 
            .E(n804), .D(n133[21]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i22 (.Q(delay_counter[22]), .C(CLK_N_keep), 
            .E(n804), .D(n133[22]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i23 (.Q(delay_counter[23]), .C(CLK_N_keep), 
            .E(n804), .D(n133[23]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i24 (.Q(delay_counter[24]), .C(CLK_N_keep), 
            .E(n804), .D(n133[24]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i25 (.Q(delay_counter[25]), .C(CLK_N_keep), 
            .E(n804), .D(n133[25]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i26 (.Q(delay_counter[26]), .C(CLK_N_keep), 
            .E(n804), .D(n133[26]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i27 (.Q(delay_counter[27]), .C(CLK_N_keep), 
            .E(n804), .D(n133[27]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i28 (.Q(delay_counter[28]), .C(CLK_N_keep), 
            .E(n804), .D(n133[28]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i29 (.Q(delay_counter[29]), .C(CLK_N_keep), 
            .E(n804), .D(n133[29]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n1034), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_183__i30 (.Q(delay_counter[30]), .C(CLK_N_keep), 
            .E(n804), .D(n133[30]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_DFFESR delay_counter_183__i31 (.Q(delay_counter[31]), .C(CLK_N_keep), 
            .E(n804), .D(n133[31]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 i563_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n150), 
            .O(n877));   // verilog/tli4970.v(29[14] 32[8])
    defparam i563_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i564_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n152), 
            .O(n878));   // verilog/tli4970.v(29[14] 32[8])
    defparam i564_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY delay_counter_183_add_4_20 (.CI(n1034), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n1035));
    SB_LUT4 i565_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n154), 
            .O(n879));   // verilog/tli4970.v(29[14] 32[8])
    defparam i565_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_DFFESR delay_counter_183__i1 (.Q(delay_counter[1]), .C(CLK_N_keep), 
            .E(n804), .D(n133[1]), .R(n841));   // verilog/tli4970.v(30[24:39])
    SB_LUT4 delay_counter_183_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n1033), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_19 (.CI(n1033), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n1034));
    SB_LUT4 delay_counter_183_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n1032), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_18 (.CI(n1032), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n1033));
    SB_LUT4 delay_counter_183_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(di_i[15]), .I3(n1031), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_17 (.CI(n1031), .I0(GND_net), .I1(di_i[15]), 
            .CO(n1032));
    SB_LUT4 delay_counter_183_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n1030), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_10 (.CI(n1024), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n1025));
    SB_CARRY delay_counter_183_add_4_16 (.CI(n1030), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n1031));
    SB_LUT4 delay_counter_183_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n1029), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_15 (.CI(n1029), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n1030));
    SB_LUT4 i566_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n156), 
            .O(n880));   // verilog/tli4970.v(29[14] 32[8])
    defparam i566_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 delay_counter_183_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n1028), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_14 (.CI(n1028), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n1029));
    SB_LUT4 i567_3_lut_4_lut (.I0(GND_net), .I1(n841), .I2(GND_net), .I3(n158), 
            .O(n881));   // verilog/tli4970.v(29[14] 32[8])
    defparam i567_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 delay_counter_183_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n1027), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_13 (.CI(n1027), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n1028));
    SB_LUT4 delay_counter_183_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n1026), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_183_add_4_12 (.CI(n1026), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n1027));
    SB_LUT4 delay_counter_183_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n1025), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_183_add_4_11_lut.LUT_INIT = 16'hC33C;
    \spi_master(16,'U','X',2,16)  spi (.spi_2x_ce(spi_2x_ce), .clk_N_keep(CLK_N_keep), 
            .GND_net(GND_net), .n370(n370), .n884(n884), .n372(n372), 
            .n872(n872), .n368(n368), .n871(n871), .\di_reg[15] (\di_reg[15] ), 
            .n352(n374)) /* synthesis lattice_noprune=1 */ ;   // verilog/tli4970.v(36[39] 50[4])
    
endmodule
//
// Verilog Description of module \spi_master(16,'U','X',2,16) 
//

module \spi_master(16,'U','X',2,16)  (spi_2x_ce, clk_N_keep, GND_net, 
            n370, n884, n372, n872, n368, n871, \di_reg[15] , 
            n352) /* synthesis lattice_noprune=1 */ ;
    output spi_2x_ce;
    input clk_N_keep;
    input GND_net;
    output n370;
    input n884;
    output n372;
    input n872;
    output n368;
    input n871;
    output \di_reg[15] ;
    output n352;
    
    
    wire \spi_2x_ce_gen_proc.clk_cnt_3__N_259 ;
    wire [3:0]\spi_2x_ce_gen_proc.clk_cnt ;   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(322[18:25])
    wire [3:0]n21;
    
    wire core_n_clk_o_N_273, n427, core_n_clk_o_N_272;
    
    SB_DFF spi_2x_ce_98 (.Q(spi_2x_ce), .C(clk_N_keep), .D(\spi_2x_ce_gen_proc.clk_cnt_3__N_259 ));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(324[9] 332[16])
    SB_LUT4 i658_2_lut (.I0(\spi_2x_ce_gen_proc.clk_cnt [1]), .I1(\spi_2x_ce_gen_proc.clk_cnt [0]), 
            .I2(GND_net), .I3(GND_net), .O(n21[1]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    defparam i658_2_lut.LUT_INIT = 16'h6666;
    SB_DFF \spi_2x_ce_gen_proc.clk_cnt_184__i3  (.Q(\spi_2x_ce_gen_proc.clk_cnt [3]), 
           .C(clk_N_keep), .D(n21[3]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    SB_LUT4 core_n_clk_o_I_0_143_2_lut (.I0(n370), .I1(spi_2x_ce), .I2(GND_net), 
            .I3(GND_net), .O(core_n_clk_o_N_273));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(339[13] 349[20])
    defparam core_n_clk_o_I_0_143_2_lut.LUT_INIT = 16'h6666;
    SB_DFF \spi_2x_ce_gen_proc.clk_cnt_184__i2  (.Q(\spi_2x_ce_gen_proc.clk_cnt [2]), 
           .C(clk_N_keep), .D(n21[2]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    SB_LUT4 i267_1_lut (.I0(spi_2x_ce), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n427));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(324[9] 332[16])
    defparam i267_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 core_n_clk_o_I_0_145_1_lut (.I0(n370), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(core_n_clk_o_N_272));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(345[30:44])
    defparam core_n_clk_o_I_0_145_1_lut.LUT_INIT = 16'h5555;
    SB_DFF \spi_2x_ce_gen_proc.clk_cnt_184__i1  (.Q(\spi_2x_ce_gen_proc.clk_cnt [1]), 
           .C(clk_N_keep), .D(n21[1]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    SB_LUT4 i3_4_lut (.I0(\spi_2x_ce_gen_proc.clk_cnt [0]), .I1(\spi_2x_ce_gen_proc.clk_cnt [2]), 
            .I2(\spi_2x_ce_gen_proc.clk_cnt [3]), .I3(\spi_2x_ce_gen_proc.clk_cnt [1]), 
            .O(\spi_2x_ce_gen_proc.clk_cnt_3__N_259 ));
    defparam i3_4_lut.LUT_INIT = 16'h8000;
    SB_DFF core_ce_102 (.Q(n372), .C(clk_N_keep), .D(n884));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    SB_DFF core_clk_100 (.Q(n368), .C(clk_N_keep), .D(n872));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    SB_DFF i275 (.Q(\di_reg[15] ), .C(clk_N_keep), .D(n871));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(439[9] 443[17])
    SB_LUT4 i665_2_lut_3_lut (.I0(\spi_2x_ce_gen_proc.clk_cnt [1]), .I1(\spi_2x_ce_gen_proc.clk_cnt [0]), 
            .I2(\spi_2x_ce_gen_proc.clk_cnt [2]), .I3(GND_net), .O(n21[2]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    defparam i665_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i672_3_lut_4_lut (.I0(\spi_2x_ce_gen_proc.clk_cnt [1]), .I1(\spi_2x_ce_gen_proc.clk_cnt [0]), 
            .I2(\spi_2x_ce_gen_proc.clk_cnt [2]), .I3(\spi_2x_ce_gen_proc.clk_cnt [3]), 
            .O(n21[3]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    defparam i672_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFF \spi_2x_ce_gen_proc.clk_cnt_184__i0  (.Q(\spi_2x_ce_gen_proc.clk_cnt [0]), 
           .C(clk_N_keep), .D(n21[0]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    SB_DFFSR core_n_ce_103 (.Q(n352), .C(clk_N_keep), .D(core_n_clk_o_N_272), 
            .R(n427));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    SB_LUT4 i656_1_lut (.I0(\spi_2x_ce_gen_proc.clk_cnt [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n21[0]));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(330[28:35])
    defparam i656_1_lut.LUT_INIT = 16'h5555;
    SB_DFF core_n_clk_101 (.Q(n370), .C(clk_N_keep), .D(core_n_clk_o_N_273));   // vhdl/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd(338[9] 350[16])
    
endmodule
