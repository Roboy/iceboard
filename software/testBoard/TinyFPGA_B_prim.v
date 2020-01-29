// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jan 29 12:26:21 2020
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
    
    wire CLK_N /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire scl_enable, VCC_net, LED_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire sda_enable, n135, n134, n133, n132, n131, n130, n129, 
        n128, n127, n126, n125, n124, n123, n122, n121, n120, 
        n119, n118, n117, n116, n115, n114, n113, n112, n111, 
        n110, n26, n25, n24, n23, n22, n21, n20, n19, n18, 
        n17, n16, n15, n14, n13, n12, n11, n10, n9, n8, 
        n7, n6, n4826, n4825, n3509, n3508, n3507, n3506, n3505, 
        n3504, n3503, n3502, n3501, n3500, n3499, n3498, n3497, 
        n3496, n3495, n3494, n3493, n3492, n3491, n3490, n3489, 
        n3488, n3487, n3486, n3485;
    
    VCC i2 (.Y(VCC_net));
    EEPROM eeprom (.GND_net(scl_enable), .sda_enable(sda_enable), .CLK_N_keep(CLK_N), 
           .VCC_net(VCC_net)) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(117[12] 126[8])
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(scl_enable), 
          .INPUT_CLK(scl_enable), .OUTPUT_CLK(scl_enable), .OUTPUT_ENABLE(scl_enable), 
          .D_OUT_1(scl_enable), .D_OUT_0(scl_enable)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(scl_enable), 
          .INPUT_CLK(scl_enable), .OUTPUT_CLK(scl_enable), .OUTPUT_ENABLE(sda_enable), 
          .D_OUT_1(scl_enable), .D_OUT_0(scl_enable)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_287__i0 (.Q(n26), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(scl_enable));
    SB_LUT4 blink_counter_287_add_4_27_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(blink_counter[25]), .I3(n3509), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 blink_counter_287_add_4_26_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(blink_counter[24]), .I3(n3508), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_26 (.CI(n3508), .I0(scl_enable), .I1(blink_counter[24]), 
            .CO(n3509));
    SB_LUT4 blink_counter_287_add_4_25_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(blink_counter[23]), .I3(n3507), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_25 (.CI(n3507), .I0(scl_enable), .I1(blink_counter[23]), 
            .CO(n3508));
    SB_LUT4 blink_counter_287_add_4_24_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(blink_counter[22]), .I3(n3506), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_24 (.CI(n3506), .I0(scl_enable), .I1(blink_counter[22]), 
            .CO(n3507));
    SB_LUT4 blink_counter_287_add_4_23_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(blink_counter[21]), .I3(n3505), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_23 (.CI(n3505), .I0(scl_enable), .I1(blink_counter[21]), 
            .CO(n3506));
    SB_LUT4 blink_counter_287_add_4_22_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n6), .I3(n3504), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_22 (.CI(n3504), .I0(scl_enable), .I1(n6), 
            .CO(n3505));
    SB_LUT4 blink_counter_287_add_4_21_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n7), .I3(n3503), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_IO TX_pad (.PACKAGE_PIN(TX), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam TX_pad.PIN_TYPE = 6'b011001;
    defparam TX_pad.PULLUP = 1'b0;
    defparam TX_pad.NEG_TRIGGER = 1'b0;
    defparam TX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(scl_enable));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_N));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY blink_counter_287_add_4_21 (.CI(n3503), .I0(scl_enable), .I1(n7), 
            .CO(n3504));
    SB_LUT4 blink_counter_287_add_4_20_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n8), .I3(n3502), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_20 (.CI(n3502), .I0(scl_enable), .I1(n8), 
            .CO(n3503));
    SB_LUT4 blink_counter_287_add_4_19_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n9), .I3(n3501), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_19 (.CI(n3501), .I0(scl_enable), .I1(n9), 
            .CO(n3502));
    SB_LUT4 blink_counter_287_add_4_18_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n10), .I3(n3500), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_18 (.CI(n3500), .I0(scl_enable), .I1(n10), 
            .CO(n3501));
    SB_LUT4 blink_counter_287_add_4_17_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n11), .I3(n3499), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_17 (.CI(n3499), .I0(scl_enable), .I1(n11), 
            .CO(n3500));
    SB_LUT4 blink_counter_287_add_4_16_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n12), .I3(n3498), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_16 (.CI(n3498), .I0(scl_enable), .I1(n12), 
            .CO(n3499));
    SB_LUT4 blink_counter_287_add_4_15_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n13), .I3(n3497), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_15 (.CI(n3497), .I0(scl_enable), .I1(n13), 
            .CO(n3498));
    SB_LUT4 blink_counter_287_add_4_14_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n14), .I3(n3496), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_14 (.CI(n3496), .I0(scl_enable), .I1(n14), 
            .CO(n3497));
    SB_LUT4 blink_counter_287_add_4_13_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n15), .I3(n3495), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_13 (.CI(n3495), .I0(scl_enable), .I1(n15), 
            .CO(n3496));
    SB_LUT4 blink_counter_287_add_4_12_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n16), .I3(n3494), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_12 (.CI(n3494), .I0(scl_enable), .I1(n16), 
            .CO(n3495));
    SB_LUT4 blink_counter_287_add_4_11_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n17), .I3(n3493), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_11 (.CI(n3493), .I0(scl_enable), .I1(n17), 
            .CO(n3494));
    SB_LUT4 blink_counter_287_add_4_10_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n18), .I3(n3492), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_10 (.CI(n3492), .I0(scl_enable), .I1(n18), 
            .CO(n3493));
    SB_LUT4 blink_counter_287_add_4_9_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n19), .I3(n3491), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_9 (.CI(n3491), .I0(scl_enable), .I1(n19), 
            .CO(n3492));
    SB_LUT4 blink_counter_287_add_4_8_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n20), .I3(n3490), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_8 (.CI(n3490), .I0(scl_enable), .I1(n20), 
            .CO(n3491));
    SB_LUT4 blink_counter_287_add_4_7_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n21), .I3(n3489), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_7 (.CI(n3489), .I0(scl_enable), .I1(n21), 
            .CO(n3490));
    SB_LUT4 blink_counter_287_add_4_6_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n22), .I3(n3488), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_6 (.CI(n3488), .I0(scl_enable), .I1(n22), 
            .CO(n3489));
    SB_LUT4 blink_counter_287_add_4_5_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n23), .I3(n3487), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_5 (.CI(n3487), .I0(scl_enable), .I1(n23), 
            .CO(n3488));
    SB_LUT4 blink_counter_287_add_4_4_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n24), .I3(n3486), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_4 (.CI(n3486), .I0(scl_enable), .I1(n24), 
            .CO(n3487));
    SB_LUT4 blink_counter_287_add_4_3_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n25), .I3(n3485), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_3 (.CI(n3485), .I0(scl_enable), .I1(n25), 
            .CO(n3486));
    SB_LUT4 blink_counter_287_add_4_2_lut (.I0(scl_enable), .I1(scl_enable), 
            .I2(n26), .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_287_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_287_add_4_2 (.CI(VCC_net), .I0(scl_enable), .I1(n26), 
            .CO(n3485));
    SB_DFF blink_counter_287__i1 (.Q(n25), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i2 (.Q(n24), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i3 (.Q(n23), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i4 (.Q(n22), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i5 (.Q(n21), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i6 (.Q(n20), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i7 (.Q(n19), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i8 (.Q(n18), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i9 (.Q(n17), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i10 (.Q(n16), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i11 (.Q(n15), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i12 (.Q(n14), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i13 (.Q(n13), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i14 (.Q(n12), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i15 (.Q(n11), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i16 (.Q(n10), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i17 (.Q(n9), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i18 (.Q(n8), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i19 (.Q(n7), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i20 (.Q(n6), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_287__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i3982_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4826));
    defparam i3982_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i3981_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4825));
    defparam i3981_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i3983_3_lut (.I0(n4825), .I1(n4826), .I2(blink_counter[25]), 
            .I3(scl_enable), .O(LED_c));
    defparam i3983_3_lut.LUT_INIT = 16'h3535;
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, sda_enable, CLK_N_keep, VCC_net) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    output sda_enable;
    input CLK_N_keep;
    input VCC_net;
    
    
    wire n3009;
    wire [31:0]n3067;
    
    wire n3034, n3108, n3004, n3103, number_of_bytes_7__N_67, n3773;
    wire [31:0]n1;
    
    wire n3723_adj_334, n3774;
    wire [31:0]n3265;
    
    wire n3211, n3693;
    wire [14:0]number_of_bytes_7__N_68;
    
    wire n3724_adj_335, n3772;
    wire [31:0]delay_counter;   // verilog/eeprom.v(21[9:22])
    
    wire n3694, n3212, n3692;
    wire [31:0]n2869;
    
    wire n2815, n3619, n3565, n2415, n3566, n3213, n3691, n3003, 
        n3102, n3002, n3101, n1166, n3620, n1919, n3517, n3011, 
        n3110, n4765, n3496, n3771, n3529_adj_336, n3214, n3690;
    wire [31:0]n34;
    
    wire n3497, n3770, n3012, n3111, n3498, n3769, n3010, n3109, 
        n3008, n3107, n3019, n3118;
    wire [31:0]n1_adj_498;
    
    wire n3119;
    wire [7:0]n1345;
    
    wire n3612_adj_339, n3516, n3007, n3106, n2719, n3448, n1140, 
        n3449;
    wire [31:0]n2770;
    
    wire n2737, n2818, n2836, n2917;
    wire [6:0]n1336;
    
    wire n1141, n3499, n3768, n3215, n3689, n2816, n3618;
    wire [31:0]n2473;
    
    wire n2416, n3564, n2419, n2440, n2518;
    wire [31:0]n2572;
    
    wire n2539, n2617, n3500, n3767;
    wire [31:0]n2671;
    
    wire n2638, n2716, n2607, n16, n12, n2608, n3613_adj_342, 
        n3515, n3216, n3688, n2914, n2119, n3614_adj_343, n3514;
    wire [31:0]n2176;
    
    wire n2143, n2218;
    wire [31:0]n2275;
    
    wire n2242, n2317, n15, n20, n2810, n2812;
    wire [31:0]n2374;
    
    wire n2341, n2515, n2614, n3615_adj_344, n3513, n2817, n3617, 
        n2019, n3524, n3616_adj_345, n3512, n2417, n3563, n2011, 
        n1912, n3523, n1945, n3617_adj_346, n3511, n3501, n3766, 
        n3217, n3687;
    wire [31:0]n133;
    
    wire n3502, n3765, n3218, n3686, n3616, n3503, n3764, n2713, 
        n2418, n3562;
    wire [31:0]n1978;
    
    wire n1913, n3522, n3618_adj_350, n3510, n2219, n3619_adj_352, 
        n3219, n2318, n2819, n3199, n3100, n3685, n3133, n2516, 
        n1914, n3521, n2803, n2704, n3615, n2705, n3614, n2407, 
        n2308, n3561, n2615, n2714, n3504, n3763;
    wire [31:0]n3166;
    
    wire n3684, n2706, n3613, n2309, n3560, n2813, n2912, n2911, 
        n3505, n3762;
    wire [31:0]n2968;
    
    wire n2935, n2310, n3559, n2707, n3612, n3506, n3761, n3683, 
        n2311, n3558, n2708, n3611, n3682, n3507, n3760, n2312, 
        n3557;
    wire [31:0]n2077;
    
    wire n2044, n2118, n2709, n3610, n3508, n3759, n2217, n3104, 
        n3681, n3509, n3758, n2316, n3105, n3680, n2710, n3609, 
        n2313, n3556, n3510_adj_360, n3757, n2514, n2613, n3511_adj_362, 
        n3756, n3679, n2711, n3608, n3512_adj_364, n3755, n3678, 
        n3513_adj_366, n3754, n3677, n2712, n3607, n2314, n3555, 
        n3514_adj_368, n3753, n2811, n3606, n3515_adj_370, n3752, 
        n3676, n2315, n3554, n3516_adj_372, n3751, n3675, n2018, 
        n2117, n3605, n3553, n2216, n3517_adj_374, n3750, n3674, 
        n3518_adj_376, n3749, n3112, n3673, n2715, n3604, n3552, 
        n2619, n3519_adj_379, n3113, n3672, n3397, n3748, n3430, 
        n3603;
    wire [31:0]n35;
    
    wire n3398, n3747, n3114, n3671, n3551, n3399, n3746, n3115, 
        n3670, n2717, n3602, n2319, n3116, n3669, n2718, n3601, 
        n3400, n3745, n2209, n3550, n3117, n3668, n2210, n3549, 
        n2113, n2115, n4461, n3401, n3744, n3402, n3743, n3667, 
        n2605, n3600, n1915, n3520, n3403, n3742, n2606, n3599, 
        n3404, n3741, n2211, n3548, n3001, n3666, n3405, n3740, 
        n3598, n2114, n2116, n4463, n4225, n2414, n3665, n3406, 
        n3739, n1916, n3519, n3597, n3664, n3407, n3738, n2111, 
        n2110, n2112, n3663, n2212, n3547, n3408, n3737, n2609, 
        n3596, n3005, n3662, n3409, n3736, n2610, n3595, n3006, 
        n3661, n3410, n3735, n3660, n2213, n3546, n2513, n2612, 
        n1917, n3518, n3411, n3734, n3659, n2909, n2611, n3594, 
        n3412, n3733, n3658, n3816, n2214, n3545, n2014, n3484, 
        n3815, n3814, n3413, n3732, n3657, n2215, n4447, n2910, 
        n3483, n1918, n3414, n3731, n3593, n3544, n3813, n3656, 
        n6, n3415, n3730, n3592, n3543, n3812, n3655, n3416, 
        n3729, n3811, n3417, n3728, n3591, n3542, n3013, n3654, 
        n3810, n3418, n3727, n3014, n3653, n3590, n3541, n4218, 
        n3419, n3809, n3298, n3726, n3331, n2616, n3589, n3808;
    wire [31:0]n3364;
    
    wire n3299, n3725, n3015, n3652, n3588, n3016, n3651, n3300, 
        n3724, n3540, n3482, n3017, n3650, n3539, n3807, n3301, 
        n3723, n2618, n3587, n3806, n3302, n3722, n3018, n3649, 
        n3538, n3805, n3481, n3303, n3721, n2902, n3648, n3537, 
        n3804, n2903, n3647, n3304, n3720, n2506, n3586, n2904, 
        n3646, n3305, n3719, n2507, n3585, n3536, n3480, n2517, 
        n3803, n3306, n3718, n2905, n3645, n2913, n2915, n4703, 
        n3479, n2916, n4707, n2508, n3584, n16_adj_416, n4695, 
        n4699, n18, n13_adj_417, n2805, n2807, n2806, n2808, n18_adj_418, 
        n4529, n2814, n4533, n2804, n2809, n2906, n2919, n2918, 
        n15_adj_419, n19, n18_adj_420, n2907, n22, n2908, n4559, 
        n4563, n17_adj_421, n21_adj_422, n20_adj_423, n24, n3535, 
        n3478, n3477, n3802, n3307, n3717, n3644, n3801, n3308, 
        n3716, n2509, n3583, n3643, n3534, n4711, n4715, n3800, 
        n3309, n3715, n3642, n3310, n3714, n3799, n3641, n2510, 
        n3582, n4505, n3311, n3713, n3640, n3798, n18_adj_432, 
        n3476, n1256, n4734, n2012, n2408, n3475, n3312, n3712, 
        n3474, n2511, n3581, n3533, n1137, n2013, n2409, n3473, 
        n3639, n2411, n3722_adj_433, n3721_adj_434, n3720_adj_435, 
        n3719_adj_436, n4766, n4903, n3628_adj_437, n2412, n3717_adj_438, 
        n4906, n3472, n3471, n3716_adj_439, n4909, n3797, n3313, 
        n3711, n3715_adj_441, n4912, n3714_adj_442, n4915, n4399, 
        n1138, n4405, n4733, n3713_adj_443, n4918, n3712_adj_444, 
        n4921, n3609_adj_445, n3470, n3606_adj_446, n4509, n2410, 
        n3796, n3314, n3710, n4451, n3600_adj_449, n4429, n3599_adj_450, 
        n4453, n3608_adj_451, n4581, n4583, n3598_adj_452, n2512, 
        n31, n4433, n4619, n3605_adj_453, n4623, n3469, n4425, 
        n3638, n4427, n3580, n4567, n3579, n3596_adj_454, n28_adj_455, 
        n3711_adj_456, n4437, n4441, n24_adj_459, n3468, n3795, 
        n22_adj_465, n3637, n3578, n2017, n2015, n2016, n4415, 
        n3467, n3315, n3709, n26_adj_466, n3466, n3316, n3708, 
        n3794, n3636, n4419, n1139, n4872, n4801, n4799, n3465, 
        n8_adj_468, n3577, n3532, n3576, n3317, n3707, n1135, 
        n4924, n3464, n7_adj_470, n3793, n2413, n4477, n4479, 
        n3635, n3575, n3463, n3792, n3318, n3706, n3634, n3574, 
        n4133, n12_adj_472, n3462, n3461, n3791, n3319, n3633, 
        n3531, n3530, n3790, n3206, n3460, n2519, n3632, n3232, 
        n3207, n3529, n4575, n4579, n3789, n3705, n3210, n3208, 
        n11_adj_473, n13_adj_474, n3209, n3202, n3201, n3200, n3459, 
        n3573, n3458, n3203, n3204, n3572, n3528, n3704, n4497, 
        n3205, n4501, n10_adj_475, n3457, n3788, n3631, n3630, 
        n3571, n3787, n3703, n3527, n4611, n3456, n3629, n4615, 
        n3570, n21_adj_477, n25_adj_478, n16_adj_479, n3786, n24_adj_481, 
        n28_adj_482, n3702, n3628, n3455, n4719, n4721, n3785, 
        n4151, n3627, n28_adj_484, n3526, n26_adj_485, n27_adj_486, 
        n3784, n3701, n3626, n25_adj_487, n3454, n3569, n18_adj_488, 
        n3783, n4687, n4689, n4144, n30_adj_489, n28_adj_490, n29_adj_491, 
        n27_adj_492, n3453, n28_adj_493, n4727, n3452, n3700, n4295, 
        n3699, n4301, n4729, n3782, n4137, n3625, n3698, n3781, 
        n3624, n32_adj_494, n3780, n3779, n3568, n3525, n30_adj_495, 
        n3778, n3697, n31_adj_496, n3623, n3567, n3777, n3451, 
        n29_adj_497, n4307, n3696, n3622, n3450, n3776, n3695, 
        n3775, n3621, n4313;
    
    SB_LUT4 rem_4_i2032_3_lut (.I0(n3009), .I1(n3067[23]), .I2(n3034), 
            .I3(GND_net), .O(n3108));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2027_3_lut (.I0(n3004), .I1(n3067[28]), .I2(n3034), 
            .I3(GND_net), .O(n3103));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2027_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF ena_12 (.Q(sda_enable), .C(CLK_N_keep), .D(number_of_bytes_7__N_67));   // verilog/eeprom.v(23[8] 31[4])
    SB_CARRY rem_4_add_2473_4 (.CI(n3773), .I0(n1[31]), .I1(n3723_adj_334), 
            .CO(n3774));
    SB_LUT4 rem_4_add_2156_10_lut (.I0(GND_net), .I1(n3211), .I2(VCC_net), 
            .I3(n3693), .O(n3265[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_3_lut (.I0(delay_counter[1]), .I1(n1[31]), .I2(n3724_adj_335), 
            .I3(n3772), .O(number_of_bytes_7__N_68[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_3_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_10 (.CI(n3693), .I0(n3211), .I1(VCC_net), 
            .CO(n3694));
    SB_LUT4 rem_4_add_2156_9_lut (.I0(GND_net), .I1(n3212), .I2(VCC_net), 
            .I3(n3692), .O(n3265[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_6_lut (.I0(GND_net), .I1(n2815), .I2(GND_net), 
            .I3(n3619), .O(n2869[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_6 (.CI(n3565), .I0(n2415), .I1(GND_net), .CO(n3566));
    SB_CARRY rem_4_add_2473_3 (.CI(n3772), .I0(n1[31]), .I1(n3724_adj_335), 
            .CO(n3773));
    SB_CARRY rem_4_add_2156_9 (.CI(n3692), .I0(n3212), .I1(VCC_net), .CO(n3693));
    SB_LUT4 rem_4_add_2156_8_lut (.I0(GND_net), .I1(n3213), .I2(GND_net), 
            .I3(n3691), .O(n3265[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2026_3_lut (.I0(n3003), .I1(n3067[29]), .I2(n3034), 
            .I3(GND_net), .O(n3102));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2025_3_lut (.I0(n3002), .I1(n3067[30]), .I2(n3034), 
            .I3(GND_net), .O(n3101));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2473_2_lut (.I0(delay_counter[0]), .I1(n1[31]), .I2(n1166), 
            .I3(VCC_net), .O(number_of_bytes_7__N_68[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_2_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_8 (.CI(n3691), .I0(n3213), .I1(GND_net), .CO(n3692));
    SB_CARRY rem_4_add_1888_6 (.CI(n3619), .I0(n2815), .I1(GND_net), .CO(n3620));
    SB_CARRY rem_4_add_1285_2 (.CI(VCC_net), .I0(n1919), .I1(GND_net), 
            .CO(n3517));
    SB_CARRY rem_4_add_2473_2 (.CI(VCC_net), .I0(n1[31]), .I1(n1166), 
            .CO(n3772));
    SB_LUT4 rem_4_i2034_3_lut (.I0(n3011), .I1(n3067[21]), .I2(n3034), 
            .I3(GND_net), .O(n3110));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_25_lut (.I0(n3529_adj_336), .I1(n3496), .I2(VCC_net), 
            .I3(n3771), .O(n4765)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_25_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2156_7_lut (.I0(GND_net), .I1(n3214), .I2(GND_net), 
            .I3(n3690), .O(n3265[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_24_lut (.I0(GND_net), .I1(n3497), .I2(VCC_net), 
            .I3(n3770), .O(n34[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_24 (.CI(n3770), .I0(n3497), .I1(VCC_net), 
            .CO(n3771));
    SB_LUT4 rem_4_i2035_3_lut (.I0(n3012), .I1(n3067[20]), .I2(n3034), 
            .I3(GND_net), .O(n3111));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_23_lut (.I0(GND_net), .I1(n3498), .I2(VCC_net), 
            .I3(n3769), .O(n34[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2033_3_lut (.I0(n3010), .I1(n3067[22]), .I2(n3034), 
            .I3(GND_net), .O(n3109));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2031_3_lut (.I0(n3008), .I1(n3067[24]), .I2(n3034), 
            .I3(GND_net), .O(n3107));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2031_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_23 (.CI(n3769), .I0(n3498), .I1(VCC_net), 
            .CO(n3770));
    SB_LUT4 rem_4_i2042_3_lut (.I0(n3019), .I1(n3067[13]), .I2(n3034), 
            .I3(GND_net), .O(n3118));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i13_3_lut (.I0(delay_counter[12]), .I1(n1_adj_498[12]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3119));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_938_9_lut (.I0(GND_net), .I1(n3612_adj_339), .I2(VCC_net), 
            .I3(n3516), .O(n1345[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2030_3_lut (.I0(n3007), .I1(n3067[25]), .I2(n3034), 
            .I3(GND_net), .O(n3106));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i17_3_lut (.I0(delay_counter[16]), .I1(n1_adj_498[16]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2719));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_937_3 (.CI(n3448), .I0(n1140), .I1(VCC_net), .CO(n3449));
    SB_LUT4 rem_4_i1838_3_lut (.I0(n2719), .I1(n2770[16]), .I2(n2737), 
            .I3(GND_net), .O(n2818));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1838_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2156_7 (.CI(n3690), .I0(n3214), .I1(GND_net), .CO(n3691));
    SB_LUT4 rem_4_i1905_3_lut (.I0(n2818), .I1(n2869[16]), .I2(n2836), 
            .I3(GND_net), .O(n2917));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_937_2_lut (.I0(GND_net), .I1(n1141), .I2(GND_net), .I3(VCC_net), 
            .O(n1336[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_22_lut (.I0(GND_net), .I1(n3499), .I2(VCC_net), 
            .I3(n3768), .O(n34[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_6_lut (.I0(GND_net), .I1(n3215), .I2(GND_net), 
            .I3(n3689), .O(n3265[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_5_lut (.I0(GND_net), .I1(n2816), .I2(GND_net), 
            .I3(n3618), .O(n2869[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_5_lut (.I0(GND_net), .I1(n2416), .I2(GND_net), 
            .I3(n3564), .O(n2473[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i20_3_lut (.I0(delay_counter[19]), .I1(n1_adj_498[19]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2419));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1634_3_lut (.I0(n2419), .I1(n2473[19]), .I2(n2440), 
            .I3(GND_net), .O(n2518));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1701_3_lut (.I0(n2518), .I1(n2572[19]), .I2(n2539), 
            .I3(GND_net), .O(n2617));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1701_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_22 (.CI(n3768), .I0(n3499), .I1(VCC_net), 
            .CO(n3769));
    SB_CARRY rem_4_add_2156_6 (.CI(n3689), .I0(n3215), .I1(GND_net), .CO(n3690));
    SB_LUT4 rem_4_add_2357_21_lut (.I0(GND_net), .I1(n3500), .I2(VCC_net), 
            .I3(n3767), .O(n34[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1768_3_lut (.I0(n2617), .I1(n2671[19]), .I2(n2638), 
            .I3(GND_net), .O(n2716));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_4_lut (.I0(n2607), .I1(n16), .I2(n12), .I3(n2608), .O(n2638));   // verilog/eeprom.v(27[6:28])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_938_8_lut (.I0(GND_net), .I1(n3613_adj_342), .I2(GND_net), 
            .I3(n3515), .O(n1345[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1835_3_lut (.I0(n2716), .I1(n2770[19]), .I2(n2737), 
            .I3(GND_net), .O(n2815));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1835_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_938_8 (.CI(n3515), .I0(n3613_adj_342), .I1(GND_net), 
            .CO(n3516));
    SB_LUT4 rem_4_add_2156_5_lut (.I0(GND_net), .I1(n3216), .I2(GND_net), 
            .I3(n3688), .O(n3265[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1902_3_lut (.I0(n2815), .I1(n2869[19]), .I2(n2836), 
            .I3(GND_net), .O(n2914));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i23_3_lut (.I0(delay_counter[22]), .I1(n1_adj_498[22]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2119));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_938_7_lut (.I0(GND_net), .I1(n3614_adj_343), .I2(GND_net), 
            .I3(n3514), .O(n1345[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1430_3_lut (.I0(n2119), .I1(n2176[22]), .I2(n2143), 
            .I3(GND_net), .O(n2218));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1430_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1497_3_lut (.I0(n2218), .I1(n2275[22]), .I2(n2242), 
            .I3(GND_net), .O(n2317));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut (.I0(n15), .I1(n20), .I2(n2810), .I3(n2812), .O(n2836));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_1888_5 (.CI(n3618), .I0(n2816), .I1(GND_net), .CO(n3619));
    SB_LUT4 rem_4_i1564_3_lut (.I0(n2317), .I1(n2374[22]), .I2(n2341), 
            .I3(GND_net), .O(n2416));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1564_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2156_5 (.CI(n3688), .I0(n3216), .I1(GND_net), .CO(n3689));
    SB_LUT4 rem_4_i1631_3_lut (.I0(n2416), .I1(n2473[22]), .I2(n2440), 
            .I3(GND_net), .O(n2515));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1631_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_21 (.CI(n3767), .I0(n3500), .I1(VCC_net), 
            .CO(n3768));
    SB_LUT4 rem_4_i1698_3_lut (.I0(n2515), .I1(n2572[22]), .I2(n2539), 
            .I3(GND_net), .O(n2614));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1698_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_938_7 (.CI(n3514), .I0(n3614_adj_343), .I1(GND_net), 
            .CO(n3515));
    SB_LUT4 add_938_6_lut (.I0(GND_net), .I1(n3615_adj_344), .I2(GND_net), 
            .I3(n3513), .O(n1345[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_938_6 (.CI(n3513), .I0(n3615_adj_344), .I1(GND_net), 
            .CO(n3514));
    SB_LUT4 rem_4_add_1888_4_lut (.I0(GND_net), .I1(n2817), .I2(GND_net), 
            .I3(n3617), .O(n2869[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_5 (.CI(n3564), .I0(n2416), .I1(GND_net), .CO(n3565));
    SB_CARRY rem_4_add_1352_2 (.CI(VCC_net), .I0(n2019), .I1(GND_net), 
            .CO(n3524));
    SB_LUT4 add_938_5_lut (.I0(GND_net), .I1(n3616_adj_345), .I2(GND_net), 
            .I3(n3512), .O(n1345[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_4_lut (.I0(GND_net), .I1(n2417), .I2(GND_net), 
            .I3(n3563), .O(n2473[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1285_9_lut (.I0(n1945), .I1(n1912), .I2(VCC_net), 
            .I3(n3523), .O(n2011)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_938_5 (.CI(n3512), .I0(n3616_adj_345), .I1(GND_net), 
            .CO(n3513));
    SB_LUT4 add_938_4_lut (.I0(GND_net), .I1(n3617_adj_346), .I2(GND_net), 
            .I3(n3511), .O(n1345[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_20_lut (.I0(GND_net), .I1(n3501), .I2(VCC_net), 
            .I3(n3766), .O(n34[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_4_lut (.I0(GND_net), .I1(n3217), .I2(GND_net), 
            .I3(n3687), .O(n3265[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_4 (.CI(n3617), .I0(n2817), .I1(GND_net), .CO(n3618));
    SB_CARRY rem_4_add_1620_4 (.CI(n3563), .I0(n2417), .I1(GND_net), .CO(n3564));
    SB_CARRY rem_4_add_2357_20 (.CI(n3766), .I0(n3501), .I1(VCC_net), 
            .CO(n3767));
    SB_CARRY rem_4_add_2156_4 (.CI(n3687), .I0(n3217), .I1(GND_net), .CO(n3688));
    SB_DFF delay_counter_288__i1 (.Q(delay_counter[1]), .C(CLK_N_keep), 
           .D(n133[1]));   // verilog/eeprom.v(26[20:37])
    SB_CARRY add_938_4 (.CI(n3511), .I0(n3617_adj_346), .I1(GND_net), 
            .CO(n3512));
    SB_LUT4 rem_4_add_2357_19_lut (.I0(GND_net), .I1(n3502), .I2(VCC_net), 
            .I3(n3765), .O(n34[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_19 (.CI(n3765), .I0(n3502), .I1(VCC_net), 
            .CO(n3766));
    SB_LUT4 rem_4_add_2156_3_lut (.I0(GND_net), .I1(n3218), .I2(VCC_net), 
            .I3(n3686), .O(n3265[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1888_3_lut (.I0(GND_net), .I1(n2818), .I2(VCC_net), 
            .I3(n3616), .O(n2869[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_18_lut (.I0(GND_net), .I1(n3503), .I2(VCC_net), 
            .I3(n3764), .O(n34[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1765_3_lut (.I0(n2614), .I1(n2671[22]), .I2(n2638), 
            .I3(GND_net), .O(n2713));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1765_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1620_3_lut (.I0(GND_net), .I1(n2418), .I2(VCC_net), 
            .I3(n3562), .O(n2473[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF delay_counter_288__i2 (.Q(delay_counter[2]), .C(CLK_N_keep), 
           .D(n133[2]));   // verilog/eeprom.v(26[20:37])
    SB_CARRY rem_4_add_2156_3 (.CI(n3686), .I0(n3218), .I1(VCC_net), .CO(n3687));
    SB_LUT4 rem_4_add_1285_8_lut (.I0(GND_net), .I1(n1913), .I2(GND_net), 
            .I3(n3522), .O(n1978[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_938_3_lut (.I0(GND_net), .I1(n3618_adj_350), .I2(VCC_net), 
            .I3(n3510), .O(n1345[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_8 (.CI(n3522), .I0(n1913), .I1(GND_net), .CO(n3523));
    SB_CARRY add_938_3 (.CI(n3510), .I0(n3618_adj_350), .I1(VCC_net), 
            .CO(n3511));
    SB_LUT4 rem_4_i1832_3_lut (.I0(n2713), .I1(n2770[22]), .I2(n2737), 
            .I3(GND_net), .O(n2812));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i22_3_lut (.I0(delay_counter[21]), .I1(n1_adj_498[21]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2219));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_938_2_lut (.I0(GND_net), .I1(n3619_adj_352), .I2(GND_net), 
            .I3(VCC_net), .O(n1345[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_938_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_18 (.CI(n3764), .I0(n3503), .I1(VCC_net), 
            .CO(n3765));
    SB_CARRY add_938_2 (.CI(VCC_net), .I0(n3619_adj_352), .I1(GND_net), 
            .CO(n3510));
    SB_LUT4 rem_4_add_2156_2_lut (.I0(GND_net), .I1(n3219), .I2(GND_net), 
            .I3(VCC_net), .O(n3265[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2156_2 (.CI(VCC_net), .I0(n3219), .I1(GND_net), 
            .CO(n3686));
    SB_CARRY rem_4_add_1888_3 (.CI(n3616), .I0(n2818), .I1(VCC_net), .CO(n3617));
    SB_LUT4 rem_4_i1498_3_lut (.I0(n2219), .I1(n2275[21]), .I2(n2242), 
            .I3(GND_net), .O(n2318));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1620_3 (.CI(n3562), .I0(n2418), .I1(VCC_net), .CO(n3563));
    SB_LUT4 rem_4_i1565_3_lut (.I0(n2318), .I1(n2374[21]), .I2(n2341), 
            .I3(GND_net), .O(n2417));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1565_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1888_2_lut (.I0(GND_net), .I1(n2819), .I2(GND_net), 
            .I3(VCC_net), .O(n2869[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_2_lut (.I0(GND_net), .I1(n2419), .I2(GND_net), 
            .I3(VCC_net), .O(n2473[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_2 (.CI(VCC_net), .I0(n2819), .I1(GND_net), 
            .CO(n3616));
    SB_LUT4 rem_4_add_2089_21_lut (.I0(n3133), .I1(n3100), .I2(VCC_net), 
            .I3(n3685), .O(n3199)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_21_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_i1632_3_lut (.I0(n2417), .I1(n2473[21]), .I2(n2440), 
            .I3(GND_net), .O(n2516));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1285_7_lut (.I0(GND_net), .I1(n1914), .I2(GND_net), 
            .I3(n3521), .O(n1978[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1620_2 (.CI(VCC_net), .I0(n2419), .I1(GND_net), 
            .CO(n3562));
    SB_LUT4 rem_4_add_1821_17_lut (.I0(n2737), .I1(n2704), .I2(VCC_net), 
            .I3(n3615), .O(n2803)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1821_16_lut (.I0(GND_net), .I1(n2705), .I2(VCC_net), 
            .I3(n3614), .O(n2770[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_16 (.CI(n3614), .I0(n2705), .I1(VCC_net), 
            .CO(n3615));
    SB_LUT4 rem_4_add_1553_13_lut (.I0(n2341), .I1(n2308), .I2(VCC_net), 
            .I3(n3561), .O(n2407)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_i1699_3_lut (.I0(n2516), .I1(n2572[21]), .I2(n2539), 
            .I3(GND_net), .O(n2615));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1766_3_lut (.I0(n2615), .I1(n2671[21]), .I2(n2638), 
            .I3(GND_net), .O(n2714));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1766_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_17_lut (.I0(GND_net), .I1(n3504), .I2(VCC_net), 
            .I3(n3763), .O(n34[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_20_lut (.I0(GND_net), .I1(n3101), .I2(VCC_net), 
            .I3(n3684), .O(n3166[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_15_lut (.I0(GND_net), .I1(n2706), .I2(VCC_net), 
            .I3(n3613), .O(n2770[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_12_lut (.I0(GND_net), .I1(n2309), .I2(VCC_net), 
            .I3(n3560), .O(n2374[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1833_3_lut (.I0(n2714), .I1(n2770[21]), .I2(n2737), 
            .I3(GND_net), .O(n2813));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1900_3_lut (.I0(n2813), .I1(n2869[21]), .I2(n2836), 
            .I3(GND_net), .O(n2912));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1553_12 (.CI(n3560), .I0(n2309), .I1(VCC_net), 
            .CO(n3561));
    SB_CARRY rem_4_add_1821_15 (.CI(n3613), .I0(n2706), .I1(VCC_net), 
            .CO(n3614));
    SB_CARRY rem_4_add_2089_20 (.CI(n3684), .I0(n3101), .I1(VCC_net), 
            .CO(n3685));
    SB_CARRY rem_4_add_2357_17 (.CI(n3763), .I0(n3504), .I1(VCC_net), 
            .CO(n3764));
    SB_LUT4 rem_4_i1899_3_lut (.I0(n2812), .I1(n2869[22]), .I2(n2836), 
            .I3(GND_net), .O(n2911));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_16_lut (.I0(GND_net), .I1(n3505), .I2(VCC_net), 
            .I3(n3762), .O(n34[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1967_3_lut (.I0(n2912), .I1(n2968[21]), .I2(n2935), 
            .I3(GND_net), .O(n3011));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1966_3_lut (.I0(n2911), .I1(n2968[22]), .I2(n2935), 
            .I3(GND_net), .O(n3010));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1553_11_lut (.I0(GND_net), .I1(n2310), .I2(VCC_net), 
            .I3(n3559), .O(n2374[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_14_lut (.I0(GND_net), .I1(n2707), .I2(VCC_net), 
            .I3(n3612), .O(n2770[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_16 (.CI(n3762), .I0(n3505), .I1(VCC_net), 
            .CO(n3763));
    SB_LUT4 rem_4_add_2357_15_lut (.I0(GND_net), .I1(n3506), .I2(VCC_net), 
            .I3(n3761), .O(n34[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_19_lut (.I0(GND_net), .I1(n3102), .I2(VCC_net), 
            .I3(n3683), .O(n3166[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_14 (.CI(n3612), .I0(n2707), .I1(VCC_net), 
            .CO(n3613));
    SB_CARRY rem_4_add_1553_11 (.CI(n3559), .I0(n2310), .I1(VCC_net), 
            .CO(n3560));
    SB_CARRY rem_4_add_2357_15 (.CI(n3761), .I0(n3506), .I1(VCC_net), 
            .CO(n3762));
    SB_CARRY rem_4_add_2089_19 (.CI(n3683), .I0(n3102), .I1(VCC_net), 
            .CO(n3684));
    SB_LUT4 rem_4_add_1553_10_lut (.I0(GND_net), .I1(n2311), .I2(VCC_net), 
            .I3(n3558), .O(n2374[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_13_lut (.I0(GND_net), .I1(n2708), .I2(VCC_net), 
            .I3(n3611), .O(n2770[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_18_lut (.I0(GND_net), .I1(n3103), .I2(VCC_net), 
            .I3(n3682), .O(n3166[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_14_lut (.I0(GND_net), .I1(n3507), .I2(VCC_net), 
            .I3(n3760), .O(n34[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i24_3_lut (.I0(delay_counter[23]), .I1(n1_adj_498[23]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2019));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1553_10 (.CI(n3558), .I0(n2311), .I1(VCC_net), 
            .CO(n3559));
    SB_CARRY rem_4_add_1821_13 (.CI(n3611), .I0(n2708), .I1(VCC_net), 
            .CO(n3612));
    SB_LUT4 rem_4_add_1553_9_lut (.I0(GND_net), .I1(n2312), .I2(VCC_net), 
            .I3(n3557), .O(n2374[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1362_3_lut (.I0(n2019), .I1(n2077[23]), .I2(n2044), 
            .I3(GND_net), .O(n2118));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1821_12_lut (.I0(GND_net), .I1(n2709), .I2(VCC_net), 
            .I3(n3610), .O(n2770[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_18 (.CI(n3682), .I0(n3103), .I1(VCC_net), 
            .CO(n3683));
    SB_CARRY rem_4_add_2357_14 (.CI(n3760), .I0(n3507), .I1(VCC_net), 
            .CO(n3761));
    SB_LUT4 rem_4_add_2357_13_lut (.I0(GND_net), .I1(n3508), .I2(VCC_net), 
            .I3(n3759), .O(n34[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1429_rep_30_3_lut (.I0(n2118), .I1(n2176[23]), .I2(n2143), 
            .I3(GND_net), .O(n2217));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1429_rep_30_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_13 (.CI(n3759), .I0(n3508), .I1(VCC_net), 
            .CO(n3760));
    SB_LUT4 rem_4_add_2089_17_lut (.I0(GND_net), .I1(n3104), .I2(VCC_net), 
            .I3(n3681), .O(n3166[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_12 (.CI(n3610), .I0(n2709), .I1(VCC_net), 
            .CO(n3611));
    SB_CARRY rem_4_add_1553_9 (.CI(n3557), .I0(n2312), .I1(VCC_net), .CO(n3558));
    SB_LUT4 rem_4_add_2357_12_lut (.I0(GND_net), .I1(n3509), .I2(VCC_net), 
            .I3(n3758), .O(n34[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_17 (.CI(n3681), .I0(n3104), .I1(VCC_net), 
            .CO(n3682));
    SB_LUT4 i4036_3_lut (.I0(n2217), .I1(n2275[23]), .I2(n2242), .I3(GND_net), 
            .O(n2316));   // verilog/eeprom.v(27[6:28])
    defparam i4036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4037_3_lut (.I0(n2316), .I1(n2374[23]), .I2(n2341), .I3(GND_net), 
            .O(n2415));   // verilog/eeprom.v(27[6:28])
    defparam i4037_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_12 (.CI(n3758), .I0(n3509), .I1(VCC_net), 
            .CO(n3759));
    SB_LUT4 rem_4_add_2089_16_lut (.I0(GND_net), .I1(n3105), .I2(VCC_net), 
            .I3(n3680), .O(n3166[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_11_lut (.I0(GND_net), .I1(n2710), .I2(VCC_net), 
            .I3(n3609), .O(n2770[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_8_lut (.I0(GND_net), .I1(n2313), .I2(GND_net), 
            .I3(n3556), .O(n2374[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_11_lut (.I0(GND_net), .I1(n3510_adj_360), .I2(VCC_net), 
            .I3(n3757), .O(n34[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1630_3_lut (.I0(n2415), .I1(n2473[23]), .I2(n2440), 
            .I3(GND_net), .O(n2514));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1630_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_11 (.CI(n3757), .I0(n3510_adj_360), .I1(VCC_net), 
            .CO(n3758));
    SB_CARRY rem_4_add_2089_16 (.CI(n3680), .I0(n3105), .I1(VCC_net), 
            .CO(n3681));
    SB_CARRY rem_4_add_1821_11 (.CI(n3609), .I0(n2710), .I1(VCC_net), 
            .CO(n3610));
    SB_LUT4 rem_4_i1697_3_lut (.I0(n2514), .I1(n2572[23]), .I2(n2539), 
            .I3(GND_net), .O(n2613));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1697_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_10_lut (.I0(GND_net), .I1(n3511_adj_362), .I2(VCC_net), 
            .I3(n3756), .O(n34[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_15_lut (.I0(GND_net), .I1(n3106), .I2(VCC_net), 
            .I3(n3679), .O(n3166[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_10 (.CI(n3756), .I0(n3511_adj_362), .I1(VCC_net), 
            .CO(n3757));
    SB_CARRY rem_4_add_2089_15 (.CI(n3679), .I0(n3106), .I1(VCC_net), 
            .CO(n3680));
    SB_LUT4 rem_4_add_1821_10_lut (.I0(GND_net), .I1(n2711), .I2(VCC_net), 
            .I3(n3608), .O(n2770[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_9_lut (.I0(GND_net), .I1(n3512_adj_364), .I2(VCC_net), 
            .I3(n3755), .O(n34[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_10 (.CI(n3608), .I0(n2711), .I1(VCC_net), 
            .CO(n3609));
    SB_CARRY rem_4_add_2357_9 (.CI(n3755), .I0(n3512_adj_364), .I1(VCC_net), 
            .CO(n3756));
    SB_LUT4 rem_4_add_2089_14_lut (.I0(GND_net), .I1(n3107), .I2(VCC_net), 
            .I3(n3678), .O(n3166[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1553_8 (.CI(n3556), .I0(n2313), .I1(GND_net), .CO(n3557));
    SB_CARRY rem_4_add_2089_14 (.CI(n3678), .I0(n3107), .I1(VCC_net), 
            .CO(n3679));
    SB_LUT4 rem_4_add_2357_8_lut (.I0(GND_net), .I1(n3513_adj_366), .I2(GND_net), 
            .I3(n3754), .O(n34[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_13_lut (.I0(GND_net), .I1(n3108), .I2(VCC_net), 
            .I3(n3677), .O(n3166[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_9_lut (.I0(GND_net), .I1(n2712), .I2(VCC_net), 
            .I3(n3607), .O(n2770[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_7_lut (.I0(GND_net), .I1(n2314), .I2(GND_net), 
            .I3(n3555), .O(n2374[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_8 (.CI(n3754), .I0(n3513_adj_366), .I1(GND_net), 
            .CO(n3755));
    SB_LUT4 rem_4_add_2357_7_lut (.I0(GND_net), .I1(n3514_adj_368), .I2(GND_net), 
            .I3(n3753), .O(n34[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_9 (.CI(n3607), .I0(n2712), .I1(VCC_net), .CO(n3608));
    SB_CARRY rem_4_add_2357_7 (.CI(n3753), .I0(n3514_adj_368), .I1(GND_net), 
            .CO(n3754));
    SB_LUT4 rem_4_i1764_3_lut (.I0(n2613), .I1(n2671[23]), .I2(n2638), 
            .I3(GND_net), .O(n2712));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1764_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1553_7 (.CI(n3555), .I0(n2314), .I1(GND_net), .CO(n3556));
    SB_LUT4 rem_4_i1831_3_lut (.I0(n2712), .I1(n2770[23]), .I2(n2737), 
            .I3(GND_net), .O(n2811));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2089_13 (.CI(n3677), .I0(n3108), .I1(VCC_net), 
            .CO(n3678));
    SB_LUT4 rem_4_add_1821_8_lut (.I0(GND_net), .I1(n2713), .I2(GND_net), 
            .I3(n3606), .O(n2770[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i25_3_lut (.I0(delay_counter[24]), .I1(n1_adj_498[24]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1919));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_6_lut (.I0(GND_net), .I1(n3515_adj_370), .I2(GND_net), 
            .I3(n3752), .O(n34[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_12_lut (.I0(GND_net), .I1(n3109), .I2(VCC_net), 
            .I3(n3676), .O(n3166[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_8 (.CI(n3606), .I0(n2713), .I1(GND_net), .CO(n3607));
    SB_CARRY rem_4_add_2357_6 (.CI(n3752), .I0(n3515_adj_370), .I1(GND_net), 
            .CO(n3753));
    SB_CARRY rem_4_add_2089_12 (.CI(n3676), .I0(n3109), .I1(VCC_net), 
            .CO(n3677));
    SB_LUT4 rem_4_add_1553_6_lut (.I0(GND_net), .I1(n2315), .I2(GND_net), 
            .I3(n3554), .O(n2374[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2357_5_lut (.I0(GND_net), .I1(n3516_adj_372), .I2(GND_net), 
            .I3(n3751), .O(n34[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_11_lut (.I0(GND_net), .I1(n3110), .I2(VCC_net), 
            .I3(n3675), .O(n3166[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1553_6 (.CI(n3554), .I0(n2315), .I1(GND_net), .CO(n3555));
    SB_LUT4 rem_4_i1294_3_lut (.I0(n1919), .I1(n1978[24]), .I2(n1945), 
            .I3(GND_net), .O(n2018));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1294_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1361_3_lut (.I0(n2018), .I1(n2077[24]), .I2(n2044), 
            .I3(GND_net), .O(n2117));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1361_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2357_5 (.CI(n3751), .I0(n3516_adj_372), .I1(GND_net), 
            .CO(n3752));
    SB_CARRY rem_4_add_2089_11 (.CI(n3675), .I0(n3110), .I1(VCC_net), 
            .CO(n3676));
    SB_LUT4 rem_4_add_1821_7_lut (.I0(GND_net), .I1(n2714), .I2(GND_net), 
            .I3(n3605), .O(n2770[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_5_lut (.I0(GND_net), .I1(n2316), .I2(GND_net), 
            .I3(n3553), .O(n2374[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1428_3_lut (.I0(n2117), .I1(n2176[24]), .I2(n2143), 
            .I3(GND_net), .O(n2216));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1428_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_4_lut (.I0(GND_net), .I1(n3517_adj_374), .I2(GND_net), 
            .I3(n3750), .O(n34[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_10_lut (.I0(GND_net), .I1(n3111), .I2(VCC_net), 
            .I3(n3674), .O(n3166[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1821_7 (.CI(n3605), .I0(n2714), .I1(GND_net), .CO(n3606));
    SB_CARRY rem_4_add_2357_4 (.CI(n3750), .I0(n3517_adj_374), .I1(GND_net), 
            .CO(n3751));
    SB_CARRY rem_4_add_2089_10 (.CI(n3674), .I0(n3111), .I1(VCC_net), 
            .CO(n3675));
    SB_CARRY rem_4_add_1553_5 (.CI(n3553), .I0(n2316), .I1(GND_net), .CO(n3554));
    SB_LUT4 rem_4_add_2357_3_lut (.I0(GND_net), .I1(n3518_adj_376), .I2(VCC_net), 
            .I3(n3749), .O(n34[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_9_lut (.I0(GND_net), .I1(n3112), .I2(VCC_net), 
            .I3(n3673), .O(n3166[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_3 (.CI(n3749), .I0(n3518_adj_376), .I1(VCC_net), 
            .CO(n3750));
    SB_CARRY rem_4_add_2089_9 (.CI(n3673), .I0(n3112), .I1(VCC_net), .CO(n3674));
    SB_LUT4 rem_4_add_1821_6_lut (.I0(GND_net), .I1(n2715), .I2(GND_net), 
            .I3(n3604), .O(n2770[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_4_lut (.I0(GND_net), .I1(n2317), .I2(GND_net), 
            .I3(n3552), .O(n2374[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i18_3_lut (.I0(delay_counter[17]), .I1(n1_adj_498[17]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2619));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2357_2_lut (.I0(GND_net), .I1(n3519_adj_379), .I2(GND_net), 
            .I3(VCC_net), .O(n34[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2357_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_8_lut (.I0(GND_net), .I1(n3113), .I2(GND_net), 
            .I3(n3672), .O(n3166[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2357_2 (.CI(VCC_net), .I0(n3519_adj_379), .I1(GND_net), 
            .CO(n3749));
    SB_CARRY rem_4_add_2089_8 (.CI(n3672), .I0(n3113), .I1(GND_net), .CO(n3673));
    SB_CARRY rem_4_add_1821_6 (.CI(n3604), .I0(n2715), .I1(GND_net), .CO(n3605));
    SB_LUT4 rem_4_add_2290_24_lut (.I0(n3430), .I1(n3397), .I2(VCC_net), 
            .I3(n3748), .O(n3496)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1821_5_lut (.I0(GND_net), .I1(n2716), .I2(GND_net), 
            .I3(n3603), .O(n2770[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1553_4 (.CI(n3552), .I0(n2317), .I1(GND_net), .CO(n3553));
    SB_LUT4 rem_4_add_2290_23_lut (.I0(GND_net), .I1(n3398), .I2(VCC_net), 
            .I3(n3747), .O(n35[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_7_lut (.I0(GND_net), .I1(n3114), .I2(GND_net), 
            .I3(n3671), .O(n3166[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_3_lut (.I0(GND_net), .I1(n2318), .I2(VCC_net), 
            .I3(n3551), .O(n2374[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_23 (.CI(n3747), .I0(n3398), .I1(VCC_net), 
            .CO(n3748));
    SB_CARRY rem_4_add_2089_7 (.CI(n3671), .I0(n3114), .I1(GND_net), .CO(n3672));
    SB_CARRY rem_4_add_1821_5 (.CI(n3603), .I0(n2716), .I1(GND_net), .CO(n3604));
    SB_CARRY rem_4_add_1553_3 (.CI(n3551), .I0(n2318), .I1(VCC_net), .CO(n3552));
    SB_LUT4 rem_4_add_2290_22_lut (.I0(GND_net), .I1(n3399), .I2(VCC_net), 
            .I3(n3746), .O(n35[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_6_lut (.I0(GND_net), .I1(n3115), .I2(GND_net), 
            .I3(n3670), .O(n3166[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_4_lut (.I0(GND_net), .I1(n2717), .I2(GND_net), 
            .I3(n3602), .O(n2770[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1553_2_lut (.I0(GND_net), .I1(n2319), .I2(GND_net), 
            .I3(VCC_net), .O(n2374[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1553_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_6 (.CI(n3670), .I0(n3115), .I1(GND_net), .CO(n3671));
    SB_CARRY rem_4_add_1821_4 (.CI(n3602), .I0(n2717), .I1(GND_net), .CO(n3603));
    SB_CARRY rem_4_add_2290_22 (.CI(n3746), .I0(n3399), .I1(VCC_net), 
            .CO(n3747));
    SB_LUT4 rem_4_add_2089_5_lut (.I0(GND_net), .I1(n3116), .I2(GND_net), 
            .I3(n3669), .O(n3166[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_3_lut (.I0(GND_net), .I1(n2718), .I2(VCC_net), 
            .I3(n3601), .O(n2770[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1553_2 (.CI(VCC_net), .I0(n2319), .I1(GND_net), 
            .CO(n3551));
    SB_LUT4 rem_4_add_2290_21_lut (.I0(GND_net), .I1(n3400), .I2(VCC_net), 
            .I3(n3745), .O(n35[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_5 (.CI(n3669), .I0(n3116), .I1(GND_net), .CO(n3670));
    SB_CARRY rem_4_add_1821_3 (.CI(n3601), .I0(n2718), .I1(VCC_net), .CO(n3602));
    SB_LUT4 rem_4_add_1486_12_lut (.I0(n2242), .I1(n2209), .I2(VCC_net), 
            .I3(n3550), .O(n2308)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_1285_7 (.CI(n3521), .I0(n1914), .I1(GND_net), .CO(n3522));
    SB_CARRY rem_4_add_2290_21 (.CI(n3745), .I0(n3400), .I1(VCC_net), 
            .CO(n3746));
    SB_LUT4 rem_4_add_2089_4_lut (.I0(GND_net), .I1(n3117), .I2(GND_net), 
            .I3(n3668), .O(n3166[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1821_2_lut (.I0(GND_net), .I1(n2719), .I2(GND_net), 
            .I3(VCC_net), .O(n2770[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1821_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_11_lut (.I0(GND_net), .I1(n2210), .I2(VCC_net), 
            .I3(n3549), .O(n2275[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2089_4 (.CI(n3668), .I0(n3117), .I1(GND_net), .CO(n3669));
    SB_CARRY rem_4_add_1821_2 (.CI(VCC_net), .I0(n2719), .I1(GND_net), 
            .CO(n3601));
    SB_LUT4 i1_2_lut (.I0(n2113), .I1(n2115), .I2(GND_net), .I3(GND_net), 
            .O(n4461));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_2290_20_lut (.I0(GND_net), .I1(n3401), .I2(VCC_net), 
            .I3(n3744), .O(n35[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_20 (.CI(n3744), .I0(n3401), .I1(VCC_net), 
            .CO(n3745));
    SB_LUT4 rem_4_add_2290_19_lut (.I0(GND_net), .I1(n3402), .I2(VCC_net), 
            .I3(n3743), .O(n35[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_19 (.CI(n3743), .I0(n3402), .I1(VCC_net), 
            .CO(n3744));
    SB_LUT4 rem_4_add_1285_2_lut (.I0(GND_net), .I1(n1919), .I2(GND_net), 
            .I3(VCC_net), .O(n1978[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2089_3_lut (.I0(GND_net), .I1(n3118), .I2(VCC_net), 
            .I3(n3667), .O(n3166[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_16_lut (.I0(n2638), .I1(n2605), .I2(VCC_net), 
            .I3(n3600), .O(n2704)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_2089_3 (.CI(n3667), .I0(n3118), .I1(VCC_net), .CO(n3668));
    SB_LUT4 rem_4_add_1285_6_lut (.I0(GND_net), .I1(n1915), .I2(GND_net), 
            .I3(n3520), .O(n1978[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_18_lut (.I0(GND_net), .I1(n3403), .I2(VCC_net), 
            .I3(n3742), .O(n35[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_18 (.CI(n3742), .I0(n3403), .I1(VCC_net), 
            .CO(n3743));
    SB_LUT4 rem_4_add_2089_2_lut (.I0(GND_net), .I1(n3119), .I2(GND_net), 
            .I3(VCC_net), .O(n3166[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2089_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_15_lut (.I0(GND_net), .I1(n2606), .I2(VCC_net), 
            .I3(n3599), .O(n2671[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_11 (.CI(n3549), .I0(n2210), .I1(VCC_net), 
            .CO(n3550));
    SB_LUT4 rem_4_add_2290_17_lut (.I0(GND_net), .I1(n3404), .I2(VCC_net), 
            .I3(n3741), .O(n35[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_6 (.CI(n3520), .I0(n1915), .I1(GND_net), .CO(n3521));
    SB_CARRY rem_4_add_2089_2 (.CI(VCC_net), .I0(n3119), .I1(GND_net), 
            .CO(n3667));
    SB_CARRY rem_4_add_1754_15 (.CI(n3599), .I0(n2606), .I1(VCC_net), 
            .CO(n3600));
    SB_LUT4 rem_4_add_1486_10_lut (.I0(GND_net), .I1(n2211), .I2(VCC_net), 
            .I3(n3548), .O(n2275[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1495_3_lut (.I0(n2216), .I1(n2275[24]), .I2(n2242), 
            .I3(GND_net), .O(n2315));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_17 (.CI(n3741), .I0(n3404), .I1(VCC_net), 
            .CO(n3742));
    SB_LUT4 rem_4_add_2022_20_lut (.I0(n3034), .I1(n3001), .I2(VCC_net), 
            .I3(n3666), .O(n3100)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2290_16_lut (.I0(GND_net), .I1(n3405), .I2(VCC_net), 
            .I3(n3740), .O(n35[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_14_lut (.I0(GND_net), .I1(n2607), .I2(VCC_net), 
            .I3(n3598), .O(n2671[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut (.I0(n2114), .I1(n2117), .I2(n2116), .I3(GND_net), 
            .O(n4463));
    defparam i1_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut (.I0(n4463), .I1(n2119), .I2(n4461), .I3(n2118), 
            .O(n4225));
    defparam i1_4_lut.LUT_INIT = 16'ha080;
    SB_LUT4 rem_4_i1562_3_lut (.I0(n2315), .I1(n2374[24]), .I2(n2341), 
            .I3(GND_net), .O(n2414));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1562_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_16 (.CI(n3740), .I0(n3405), .I1(VCC_net), 
            .CO(n3741));
    SB_LUT4 rem_4_add_2022_19_lut (.I0(GND_net), .I1(n3002), .I2(VCC_net), 
            .I3(n3665), .O(n3067[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_15_lut (.I0(GND_net), .I1(n3406), .I2(VCC_net), 
            .I3(n3739), .O(n35[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_14 (.CI(n3598), .I0(n2607), .I1(VCC_net), 
            .CO(n3599));
    SB_LUT4 rem_4_add_1285_5_lut (.I0(GND_net), .I1(n1916), .I2(GND_net), 
            .I3(n3519), .O(n1978[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_15 (.CI(n3739), .I0(n3406), .I1(VCC_net), 
            .CO(n3740));
    SB_CARRY rem_4_add_2022_19 (.CI(n3665), .I0(n3002), .I1(VCC_net), 
            .CO(n3666));
    SB_LUT4 rem_4_add_1754_13_lut (.I0(GND_net), .I1(n2608), .I2(VCC_net), 
            .I3(n3597), .O(n2671[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_18_lut (.I0(GND_net), .I1(n3003), .I2(VCC_net), 
            .I3(n3664), .O(n3067[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_10 (.CI(n3548), .I0(n2211), .I1(VCC_net), 
            .CO(n3549));
    SB_LUT4 rem_4_add_2290_14_lut (.I0(GND_net), .I1(n3407), .I2(VCC_net), 
            .I3(n3738), .O(n35[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_4_lut (.I0(n4225), .I1(n2111), .I2(n2110), .I3(n2112), 
            .O(n2143));
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2022_18 (.CI(n3664), .I0(n3003), .I1(VCC_net), 
            .CO(n3665));
    SB_CARRY rem_4_add_1754_13 (.CI(n3597), .I0(n2608), .I1(VCC_net), 
            .CO(n3598));
    SB_LUT4 rem_4_add_2022_17_lut (.I0(GND_net), .I1(n3004), .I2(VCC_net), 
            .I3(n3663), .O(n3067[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_9_lut (.I0(GND_net), .I1(n2212), .I2(VCC_net), 
            .I3(n3547), .O(n2275[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_5 (.CI(n3519), .I0(n1916), .I1(GND_net), .CO(n3520));
    SB_CARRY rem_4_add_2290_14 (.CI(n3738), .I0(n3407), .I1(VCC_net), 
            .CO(n3739));
    SB_CARRY rem_4_add_2022_17 (.CI(n3663), .I0(n3004), .I1(VCC_net), 
            .CO(n3664));
    SB_LUT4 rem_4_add_2290_13_lut (.I0(GND_net), .I1(n3408), .I2(VCC_net), 
            .I3(n3737), .O(n35[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_12_lut (.I0(GND_net), .I1(n2609), .I2(VCC_net), 
            .I3(n3596), .O(n2671[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_13 (.CI(n3737), .I0(n3408), .I1(VCC_net), 
            .CO(n3738));
    SB_LUT4 rem_4_add_2022_16_lut (.I0(GND_net), .I1(n3005), .I2(VCC_net), 
            .I3(n3662), .O(n3067[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_12_lut (.I0(GND_net), .I1(n3409), .I2(VCC_net), 
            .I3(n3736), .O(n35[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_12 (.CI(n3596), .I0(n2609), .I1(VCC_net), 
            .CO(n3597));
    SB_CARRY rem_4_add_2290_12 (.CI(n3736), .I0(n3409), .I1(VCC_net), 
            .CO(n3737));
    SB_CARRY rem_4_add_2022_16 (.CI(n3662), .I0(n3005), .I1(VCC_net), 
            .CO(n3663));
    SB_LUT4 rem_4_add_1754_11_lut (.I0(GND_net), .I1(n2610), .I2(VCC_net), 
            .I3(n3595), .O(n2671[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_15_lut (.I0(GND_net), .I1(n3006), .I2(VCC_net), 
            .I3(n3661), .O(n3067[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_9 (.CI(n3547), .I0(n2212), .I1(VCC_net), .CO(n3548));
    SB_LUT4 rem_4_add_2290_11_lut (.I0(GND_net), .I1(n3410), .I2(VCC_net), 
            .I3(n3735), .O(n35[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_15 (.CI(n3661), .I0(n3006), .I1(VCC_net), 
            .CO(n3662));
    SB_CARRY rem_4_add_1754_11 (.CI(n3595), .I0(n2610), .I1(VCC_net), 
            .CO(n3596));
    SB_LUT4 rem_4_add_2022_14_lut (.I0(GND_net), .I1(n3007), .I2(VCC_net), 
            .I3(n3660), .O(n3067[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_8_lut (.I0(GND_net), .I1(n2213), .I2(GND_net), 
            .I3(n3546), .O(n2275[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1629_3_lut (.I0(n2414), .I1(n2473[24]), .I2(n2440), 
            .I3(GND_net), .O(n2513));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1696_3_lut (.I0(n2513), .I1(n2572[24]), .I2(n2539), 
            .I3(GND_net), .O(n2612));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1285_4_lut (.I0(GND_net), .I1(n1917), .I2(GND_net), 
            .I3(n3518), .O(n1978[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1763_3_lut (.I0(n2612), .I1(n2671[24]), .I2(n2638), 
            .I3(GND_net), .O(n2711));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1763_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_11 (.CI(n3735), .I0(n3410), .I1(VCC_net), 
            .CO(n3736));
    SB_CARRY rem_4_add_2022_14 (.CI(n3660), .I0(n3007), .I1(VCC_net), 
            .CO(n3661));
    SB_LUT4 rem_4_i1830_3_lut (.I0(n2711), .I1(n2770[24]), .I2(n2737), 
            .I3(GND_net), .O(n2810));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2290_10_lut (.I0(GND_net), .I1(n3411), .I2(VCC_net), 
            .I3(n3734), .O(n35[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_13_lut (.I0(GND_net), .I1(n3008), .I2(VCC_net), 
            .I3(n3659), .O(n3067[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1897_3_lut (.I0(n2810), .I1(n2869[24]), .I2(n2836), 
            .I3(GND_net), .O(n2909));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1897_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2290_10 (.CI(n3734), .I0(n3411), .I1(VCC_net), 
            .CO(n3735));
    SB_CARRY rem_4_add_2022_13 (.CI(n3659), .I0(n3008), .I1(VCC_net), 
            .CO(n3660));
    SB_LUT4 rem_4_add_1754_10_lut (.I0(GND_net), .I1(n2611), .I2(VCC_net), 
            .I3(n3594), .O(n2671[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1486_8 (.CI(n3546), .I0(n2213), .I1(GND_net), .CO(n3547));
    SB_LUT4 rem_4_add_2290_9_lut (.I0(GND_net), .I1(n3412), .I2(VCC_net), 
            .I3(n3733), .O(n35[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_12_lut (.I0(GND_net), .I1(n3009), .I2(VCC_net), 
            .I3(n3658), .O(n3067[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[31]), .I3(n3816), .O(n1_adj_498[31])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_10 (.CI(n3594), .I0(n2611), .I1(VCC_net), 
            .CO(n3595));
    SB_LUT4 rem_4_add_1486_7_lut (.I0(GND_net), .I1(n2214), .I2(GND_net), 
            .I3(n3545), .O(n2275[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1357_3_lut (.I0(n2014), .I1(n2077[28]), .I2(n2044), 
            .I3(GND_net), .O(n2113));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1357_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n3484), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1285_4 (.CI(n3518), .I0(n1917), .I1(GND_net), .CO(n3519));
    SB_LUT4 rem_4_unary_minus_2_add_3_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[30]), .I3(n3815), .O(n1_adj_498[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_9 (.CI(n3733), .I0(n3412), .I1(VCC_net), .CO(n3734));
    SB_CARRY rem_4_unary_minus_2_add_3_32 (.CI(n3815), .I0(GND_net), .I1(n1[30]), 
            .CO(n3816));
    SB_CARRY rem_4_add_2022_12 (.CI(n3658), .I0(n3009), .I1(VCC_net), 
            .CO(n3659));
    SB_LUT4 rem_4_unary_minus_2_add_3_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[29]), .I3(n3814), .O(n1_adj_498[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_8_lut (.I0(GND_net), .I1(n3413), .I2(GND_net), 
            .I3(n3732), .O(n35[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_11_lut (.I0(GND_net), .I1(n3010), .I2(VCC_net), 
            .I3(n3657), .O(n3067[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_8 (.CI(n3732), .I0(n3413), .I1(GND_net), .CO(n3733));
    SB_CARRY rem_4_add_1486_7 (.CI(n3545), .I0(n2214), .I1(GND_net), .CO(n3546));
    SB_LUT4 i1_4_lut_adj_24 (.I0(n2214), .I1(n2215), .I2(n2217), .I3(n2216), 
            .O(n4447));
    defparam i1_4_lut_adj_24.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i1898_3_lut (.I0(n2811), .I1(n2869[23]), .I2(n2836), 
            .I3(GND_net), .O(n2910));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1898_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n3483), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1285_3_lut (.I0(GND_net), .I1(n1918), .I2(VCC_net), 
            .I3(n3517), .O(n1978[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1285_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_31 (.CI(n3814), .I0(GND_net), .I1(n1[29]), 
            .CO(n3815));
    SB_LUT4 rem_4_add_2290_7_lut (.I0(GND_net), .I1(n3414), .I2(GND_net), 
            .I3(n3731), .O(n35[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_11 (.CI(n3657), .I0(n3010), .I1(VCC_net), 
            .CO(n3658));
    SB_LUT4 rem_4_add_1754_9_lut (.I0(GND_net), .I1(n2612), .I2(VCC_net), 
            .I3(n3593), .O(n2671[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_6_lut (.I0(GND_net), .I1(n2215), .I2(GND_net), 
            .I3(n3544), .O(n2275[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[28]), .I3(n3813), .O(n1_adj_498[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_7 (.CI(n3731), .I0(n3414), .I1(GND_net), .CO(n3732));
    SB_LUT4 rem_4_add_2022_10_lut (.I0(GND_net), .I1(n3011), .I2(VCC_net), 
            .I3(n3656), .O(n3067[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_9 (.CI(n3593), .I0(n2612), .I1(VCC_net), .CO(n3594));
    SB_CARRY rem_4_add_1486_6 (.CI(n3544), .I0(n2215), .I1(GND_net), .CO(n3545));
    SB_LUT4 i1_2_lut_adj_25 (.I0(n2210), .I1(n2209), .I2(GND_net), .I3(GND_net), 
            .O(n6));
    defparam i1_2_lut_adj_25.LUT_INIT = 16'heeee;
    SB_CARRY rem_4_unary_minus_2_add_3_30 (.CI(n3813), .I0(GND_net), .I1(n1[28]), 
            .CO(n3814));
    SB_LUT4 rem_4_add_2290_6_lut (.I0(GND_net), .I1(n3415), .I2(GND_net), 
            .I3(n3730), .O(n35[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_10 (.CI(n3656), .I0(n3011), .I1(VCC_net), 
            .CO(n3657));
    SB_LUT4 rem_4_add_1754_8_lut (.I0(GND_net), .I1(n2613), .I2(GND_net), 
            .I3(n3592), .O(n2671[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_5_lut (.I0(GND_net), .I1(n2216), .I2(GND_net), 
            .I3(n3543), .O(n2275[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[27]), .I3(n3812), .O(n1_adj_498[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_6 (.CI(n3730), .I0(n3415), .I1(GND_net), .CO(n3731));
    SB_LUT4 rem_4_add_2022_9_lut (.I0(GND_net), .I1(n3012), .I2(VCC_net), 
            .I3(n3655), .O(n3067[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_5_lut (.I0(GND_net), .I1(n3416), .I2(GND_net), 
            .I3(n3729), .O(n35[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_8 (.CI(n3592), .I0(n2613), .I1(GND_net), .CO(n3593));
    SB_CARRY rem_4_add_1486_5 (.CI(n3543), .I0(n2216), .I1(GND_net), .CO(n3544));
    SB_CARRY rem_4_unary_minus_2_add_3_29 (.CI(n3812), .I0(GND_net), .I1(n1[27]), 
            .CO(n3813));
    SB_LUT4 rem_4_i1965_3_lut (.I0(n2910), .I1(n2968[23]), .I2(n2935), 
            .I3(GND_net), .O(n3009));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[26]), .I3(n3811), .O(n1_adj_498[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_5 (.CI(n3729), .I0(n3416), .I1(GND_net), .CO(n3730));
    SB_LUT4 rem_4_add_2290_4_lut (.I0(GND_net), .I1(n3417), .I2(GND_net), 
            .I3(n3728), .O(n35[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_9 (.CI(n3655), .I0(n3012), .I1(VCC_net), .CO(n3656));
    SB_LUT4 rem_4_add_1754_7_lut (.I0(GND_net), .I1(n2614), .I2(GND_net), 
            .I3(n3591), .O(n2671[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_4_lut (.I0(GND_net), .I1(n2217), .I2(GND_net), 
            .I3(n3542), .O(n2275[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_8_lut (.I0(GND_net), .I1(n3013), .I2(GND_net), 
            .I3(n3654), .O(n3067[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_7 (.CI(n3591), .I0(n2614), .I1(GND_net), .CO(n3592));
    SB_CARRY rem_4_add_1486_4 (.CI(n3542), .I0(n2217), .I1(GND_net), .CO(n3543));
    SB_LUT4 rem_4_i1964_3_lut (.I0(n2909), .I1(n2968[24]), .I2(n2935), 
            .I3(GND_net), .O(n3008));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1964_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_28 (.CI(n3811), .I0(GND_net), .I1(n1[26]), 
            .CO(n3812));
    SB_CARRY rem_4_add_2290_4 (.CI(n3728), .I0(n3417), .I1(GND_net), .CO(n3729));
    SB_CARRY rem_4_add_2022_8 (.CI(n3654), .I0(n3013), .I1(GND_net), .CO(n3655));
    SB_LUT4 rem_4_unary_minus_2_add_3_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[25]), .I3(n3810), .O(n1_adj_498[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2290_3_lut (.I0(GND_net), .I1(n3418), .I2(VCC_net), 
            .I3(n3727), .O(n35[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_7_lut (.I0(GND_net), .I1(n3014), .I2(GND_net), 
            .I3(n3653), .O(n3067[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1754_6_lut (.I0(GND_net), .I1(n2615), .I2(GND_net), 
            .I3(n3590), .O(n2671[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_3_lut (.I0(GND_net), .I1(n2218), .I2(VCC_net), 
            .I3(n3541), .O(n2275[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_26 (.I0(n2219), .I1(n2213), .I2(n4447), .I3(n2218), 
            .O(n4218));
    defparam i1_4_lut_adj_26.LUT_INIT = 16'hc080;
    SB_CARRY rem_4_add_2290_3 (.CI(n3727), .I0(n3418), .I1(VCC_net), .CO(n3728));
    SB_CARRY rem_4_add_1754_6 (.CI(n3590), .I0(n2615), .I1(GND_net), .CO(n3591));
    SB_CARRY rem_4_add_1486_3 (.CI(n3541), .I0(n2218), .I1(VCC_net), .CO(n3542));
    SB_LUT4 rem_4_mux_3_i21_3_lut (.I0(delay_counter[20]), .I1(n1_adj_498[20]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2319));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_27 (.CI(n3810), .I0(GND_net), .I1(n1[25]), 
            .CO(n3811));
    SB_LUT4 rem_4_add_2290_2_lut (.I0(GND_net), .I1(n3419), .I2(GND_net), 
            .I3(VCC_net), .O(n35[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2290_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[24]), .I3(n3809), .O(n1_adj_498[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2290_2 (.CI(VCC_net), .I0(n3419), .I1(GND_net), 
            .CO(n3727));
    SB_CARRY rem_4_unary_minus_2_add_3_26 (.CI(n3809), .I0(GND_net), .I1(n1[24]), 
            .CO(n3810));
    SB_LUT4 rem_4_add_2223_23_lut (.I0(n3331), .I1(n3298), .I2(VCC_net), 
            .I3(n3726), .O(n3397)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_23_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_2022_7 (.CI(n3653), .I0(n3014), .I1(GND_net), .CO(n3654));
    SB_LUT4 rem_4_add_1754_5_lut (.I0(GND_net), .I1(n2616), .I2(GND_net), 
            .I3(n3589), .O(n2671[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1486_2_lut (.I0(GND_net), .I1(n2219), .I2(GND_net), 
            .I3(VCC_net), .O(n2275[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1486_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_32 (.CI(n3483), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n3484));
    SB_LUT4 rem_4_unary_minus_2_add_3_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[23]), .I3(n3808), .O(n1_adj_498[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_22_lut (.I0(GND_net), .I1(n3299), .I2(VCC_net), 
            .I3(n3725), .O(n3364[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_6_lut (.I0(GND_net), .I1(n3015), .I2(GND_net), 
            .I3(n3652), .O(n3067[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_5 (.CI(n3589), .I0(n2616), .I1(GND_net), .CO(n3590));
    SB_CARRY rem_4_add_1285_3 (.CI(n3517), .I0(n1918), .I1(VCC_net), .CO(n3518));
    SB_CARRY rem_4_add_1486_2 (.CI(VCC_net), .I0(n2219), .I1(GND_net), 
            .CO(n3541));
    SB_CARRY rem_4_unary_minus_2_add_3_25 (.CI(n3808), .I0(GND_net), .I1(n1[23]), 
            .CO(n3809));
    SB_CARRY rem_4_add_2223_22 (.CI(n3725), .I0(n3299), .I1(VCC_net), 
            .CO(n3726));
    SB_CARRY rem_4_add_2022_6 (.CI(n3652), .I0(n3015), .I1(GND_net), .CO(n3653));
    SB_LUT4 rem_4_add_1754_4_lut (.I0(GND_net), .I1(n2617), .I2(GND_net), 
            .I3(n3588), .O(n2671[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_5_lut (.I0(GND_net), .I1(n3016), .I2(GND_net), 
            .I3(n3651), .O(n3067[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_4 (.CI(n3588), .I0(n2617), .I1(GND_net), .CO(n3589));
    SB_LUT4 rem_4_add_2223_21_lut (.I0(GND_net), .I1(n3300), .I2(VCC_net), 
            .I3(n3724), .O(n3364[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_5 (.CI(n3651), .I0(n3016), .I1(GND_net), .CO(n3652));
    SB_LUT4 rem_4_add_1419_11_lut (.I0(n2143), .I1(n2110), .I2(VCC_net), 
            .I3(n3540), .O(n2209)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4_4_lut (.I0(n2211), .I1(n2212), .I2(n4218), .I3(n6), .O(n2242));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1424_3_lut (.I0(n2113), .I1(n2176[28]), .I2(n2143), 
            .I3(GND_net), .O(n2212));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1424_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n3482), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_4_lut (.I0(GND_net), .I1(n3017), .I2(GND_net), 
            .I3(n3650), .O(n3067[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1419_10_lut (.I0(GND_net), .I1(n2111), .I2(VCC_net), 
            .I3(n3539), .O(n2176[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[22]), .I3(n3807), .O(n1_adj_498[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_21 (.CI(n3724), .I0(n3300), .I1(VCC_net), 
            .CO(n3725));
    SB_CARRY rem_4_unary_minus_2_add_3_24 (.CI(n3807), .I0(GND_net), .I1(n1[22]), 
            .CO(n3808));
    SB_LUT4 rem_4_add_2223_20_lut (.I0(GND_net), .I1(n3301), .I2(VCC_net), 
            .I3(n3723), .O(n3364[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_4 (.CI(n3650), .I0(n3017), .I1(GND_net), .CO(n3651));
    SB_LUT4 rem_4_add_1754_3_lut (.I0(GND_net), .I1(n2618), .I2(VCC_net), 
            .I3(n3587), .O(n2671[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_10 (.CI(n3539), .I0(n2111), .I1(VCC_net), 
            .CO(n3540));
    SB_CARRY delay_counter_288_add_4_31 (.CI(n3482), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n3483));
    SB_LUT4 rem_4_unary_minus_2_add_3_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[21]), .I3(n3806), .O(n1_adj_498[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_20 (.CI(n3723), .I0(n3301), .I1(VCC_net), 
            .CO(n3724));
    SB_CARRY rem_4_unary_minus_2_add_3_23 (.CI(n3806), .I0(GND_net), .I1(n1[21]), 
            .CO(n3807));
    SB_LUT4 rem_4_add_2223_19_lut (.I0(GND_net), .I1(n3302), .I2(VCC_net), 
            .I3(n3722), .O(n3364[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_3_lut (.I0(GND_net), .I1(n3018), .I2(VCC_net), 
            .I3(n3649), .O(n3067[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1754_3 (.CI(n3587), .I0(n2618), .I1(VCC_net), .CO(n3588));
    SB_LUT4 rem_4_add_1419_9_lut (.I0(GND_net), .I1(n2112), .I2(VCC_net), 
            .I3(n3538), .O(n2176[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[20]), .I3(n3805), .O(n1_adj_498[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_19 (.CI(n3722), .I0(n3302), .I1(VCC_net), 
            .CO(n3723));
    SB_CARRY rem_4_add_2022_3 (.CI(n3649), .I0(n3018), .I1(VCC_net), .CO(n3650));
    SB_LUT4 rem_4_add_1754_2_lut (.I0(GND_net), .I1(n2619), .I2(GND_net), 
            .I3(VCC_net), .O(n2671[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1754_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2022_2_lut (.I0(GND_net), .I1(n3019), .I2(GND_net), 
            .I3(VCC_net), .O(n3067[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2022_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_9 (.CI(n3538), .I0(n2112), .I1(VCC_net), .CO(n3539));
    SB_LUT4 delay_counter_288_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n3481), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_22 (.CI(n3805), .I0(GND_net), .I1(n1[20]), 
            .CO(n3806));
    SB_LUT4 rem_4_add_2223_18_lut (.I0(GND_net), .I1(n3303), .I2(VCC_net), 
            .I3(n3721), .O(n3364[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2022_2 (.CI(VCC_net), .I0(n3019), .I1(GND_net), 
            .CO(n3649));
    SB_CARRY rem_4_add_1754_2 (.CI(VCC_net), .I0(n2619), .I1(GND_net), 
            .CO(n3587));
    SB_LUT4 rem_4_add_1955_19_lut (.I0(n2935), .I1(n2902), .I2(VCC_net), 
            .I3(n3648), .O(n3001)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1419_8_lut (.I0(GND_net), .I1(n2113), .I2(GND_net), 
            .I3(n3537), .O(n2176[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[19]), .I3(n3804), .O(n1_adj_498[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_18 (.CI(n3721), .I0(n3303), .I1(VCC_net), 
            .CO(n3722));
    SB_LUT4 rem_4_add_1955_18_lut (.I0(GND_net), .I1(n2903), .I2(VCC_net), 
            .I3(n3647), .O(n2968[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_21 (.CI(n3804), .I0(GND_net), .I1(n1[19]), 
            .CO(n3805));
    SB_LUT4 rem_4_add_2223_17_lut (.I0(GND_net), .I1(n3304), .I2(VCC_net), 
            .I3(n3720), .O(n3364[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_18 (.CI(n3647), .I0(n2903), .I1(VCC_net), 
            .CO(n3648));
    SB_LUT4 rem_4_add_1687_15_lut (.I0(n2539), .I1(n2506), .I2(VCC_net), 
            .I3(n3586), .O(n2605)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_1419_8 (.CI(n3537), .I0(n2113), .I1(GND_net), .CO(n3538));
    SB_LUT4 rem_4_i1566_3_lut (.I0(n2319), .I1(n2374[20]), .I2(n2341), 
            .I3(GND_net), .O(n2418));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1566_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_30 (.CI(n3481), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n3482));
    SB_CARRY rem_4_add_2223_17 (.CI(n3720), .I0(n3304), .I1(VCC_net), 
            .CO(n3721));
    SB_LUT4 rem_4_add_1955_17_lut (.I0(GND_net), .I1(n2904), .I2(VCC_net), 
            .I3(n3646), .O(n2968[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_16_lut (.I0(GND_net), .I1(n3305), .I2(VCC_net), 
            .I3(n3719), .O(n3364[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1837_3_lut (.I0(n2718), .I1(n2770[17]), .I2(n2737), 
            .I3(GND_net), .O(n2817));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1837_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_17 (.CI(n3646), .I0(n2904), .I1(VCC_net), 
            .CO(n3647));
    SB_LUT4 rem_4_add_1687_14_lut (.I0(GND_net), .I1(n2507), .I2(VCC_net), 
            .I3(n3585), .O(n2572[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1419_7_lut (.I0(GND_net), .I1(n2114), .I2(GND_net), 
            .I3(n3536), .O(n2176[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_288_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n3480), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1633_3_lut (.I0(n2418), .I1(n2473[20]), .I2(n2440), 
            .I3(GND_net), .O(n2517));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[18]), .I3(n3803), .O(n1_adj_498[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_16 (.CI(n3719), .I0(n3305), .I1(VCC_net), 
            .CO(n3720));
    SB_LUT4 rem_4_add_2223_15_lut (.I0(GND_net), .I1(n3306), .I2(VCC_net), 
            .I3(n3718), .O(n3364[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_16_lut (.I0(GND_net), .I1(n2905), .I2(VCC_net), 
            .I3(n3645), .O(n2968[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_14 (.CI(n3585), .I0(n2507), .I1(VCC_net), 
            .CO(n3586));
    SB_CARRY rem_4_add_1419_7 (.CI(n3536), .I0(n2114), .I1(GND_net), .CO(n3537));
    SB_CARRY delay_counter_288_add_4_29 (.CI(n3480), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n3481));
    SB_LUT4 i1_2_lut_adj_27 (.I0(n2913), .I1(n2915), .I2(GND_net), .I3(GND_net), 
            .O(n4703));
    defparam i1_2_lut_adj_27.LUT_INIT = 16'h8888;
    SB_LUT4 delay_counter_288_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n3479), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_28 (.I0(n2914), .I1(n4703), .I2(n2917), .I3(n2916), 
            .O(n4707));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i1492_3_lut (.I0(n2213), .I1(n2275[27]), .I2(n2242), 
            .I3(GND_net), .O(n2312));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1492_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_28 (.CI(n3479), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n3480));
    SB_CARRY rem_4_unary_minus_2_add_3_20 (.CI(n3803), .I0(GND_net), .I1(n1[18]), 
            .CO(n3804));
    SB_CARRY rem_4_add_2223_15 (.CI(n3718), .I0(n3306), .I1(VCC_net), 
            .CO(n3719));
    SB_LUT4 rem_4_add_1687_13_lut (.I0(GND_net), .I1(n2508), .I2(VCC_net), 
            .I3(n3584), .O(n2572[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut (.I0(n2705), .I1(n2706), .I2(n2704), .I3(n2707), 
            .O(n16_adj_416));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_29 (.I0(n2713), .I1(n2715), .I2(GND_net), .I3(GND_net), 
            .O(n4695));
    defparam i1_2_lut_adj_29.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_30 (.I0(n2714), .I1(n4695), .I2(n2717), .I3(n2716), 
            .O(n4699));
    defparam i1_4_lut_adj_30.LUT_INIT = 16'h8000;
    SB_LUT4 i8_3_lut (.I0(n2712), .I1(n16_adj_416), .I2(n2710), .I3(GND_net), 
            .O(n18));
    defparam i8_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut_adj_31 (.I0(n4699), .I1(n2708), .I2(n2719), .I3(n2718), 
            .O(n13_adj_417));
    defparam i3_4_lut_adj_31.LUT_INIT = 16'heeec;
    SB_LUT4 i9_4_lut (.I0(n13_adj_417), .I1(n18), .I2(n2711), .I3(n2709), 
            .O(n2737));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1770_3_lut (.I0(n2619), .I1(n2671[17]), .I2(n2638), 
            .I3(GND_net), .O(n2718));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1770_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_4_lut (.I0(n2805), .I1(n2807), .I2(n2806), .I3(n2808), 
            .O(n18_adj_418));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_32 (.I0(n2813), .I1(n2815), .I2(GND_net), .I3(GND_net), 
            .O(n4529));
    defparam i1_2_lut_adj_32.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n2814), .I1(n4529), .I2(n2817), .I3(n2816), 
            .O(n4533));
    defparam i1_4_lut_adj_33.LUT_INIT = 16'h8000;
    SB_LUT4 i9_4_lut_adj_34 (.I0(n2811), .I1(n18_adj_418), .I2(n2804), 
            .I3(n2803), .O(n20));
    defparam i9_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_4_lut_adj_35 (.I0(n4533), .I1(n2809), .I2(n2819), .I3(n2818), 
            .O(n15));
    defparam i4_4_lut_adj_35.LUT_INIT = 16'heeec;
    SB_LUT4 i3_4_lut_adj_36 (.I0(n2906), .I1(n4707), .I2(n2919), .I3(n2918), 
            .O(n15_adj_419));
    defparam i3_4_lut_adj_36.LUT_INIT = 16'heeea;
    SB_LUT4 i7_4_lut_adj_37 (.I0(n2903), .I1(n2904), .I2(n2902), .I3(n2905), 
            .O(n19));
    defparam i7_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_2_lut (.I0(n2909), .I1(n2910), .I2(GND_net), .I3(GND_net), 
            .O(n18_adj_420));
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut_adj_38 (.I0(n19), .I1(n15_adj_419), .I2(n2907), 
            .I3(n2912), .O(n22));
    defparam i10_4_lut_adj_38.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(n2908), .I1(n22), .I2(n18_adj_420), .I3(n2911), 
            .O(n2935));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1904_3_lut (.I0(n2817), .I1(n2869[17]), .I2(n2836), 
            .I3(GND_net), .O(n2916));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1971_3_lut (.I0(n2916), .I1(n2968[17]), .I2(n2935), 
            .I3(GND_net), .O(n3015));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1971_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1969_3_lut (.I0(n2914), .I1(n2968[19]), .I2(n2935), 
            .I3(GND_net), .O(n3013));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_39 (.I0(n3013), .I1(n3015), .I2(GND_net), .I3(GND_net), 
            .O(n4559));
    defparam i1_2_lut_adj_39.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_40 (.I0(n3014), .I1(n4559), .I2(n3017), .I3(n3016), 
            .O(n4563));
    defparam i1_4_lut_adj_40.LUT_INIT = 16'h8000;
    SB_LUT4 i4_4_lut_adj_41 (.I0(n3007), .I1(n4563), .I2(n3019), .I3(n3018), 
            .O(n17_adj_421));   // verilog/eeprom.v(27[6:28])
    defparam i4_4_lut_adj_41.LUT_INIT = 16'heeea;
    SB_LUT4 i8_4_lut_adj_42 (.I0(n3003), .I1(n3005), .I2(n3004), .I3(n3006), 
            .O(n21_adj_422));   // verilog/eeprom.v(27[6:28])
    defparam i8_4_lut_adj_42.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut (.I0(n3012), .I1(n3002), .I2(n3001), .I3(GND_net), 
            .O(n20_adj_423));   // verilog/eeprom.v(27[6:28])
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut_adj_43 (.I0(n21_adj_422), .I1(n17_adj_421), .I2(n3008), 
            .I3(n3009), .O(n24));   // verilog/eeprom.v(27[6:28])
    defparam i11_4_lut_adj_43.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut (.I0(n3010), .I1(n24), .I2(n20_adj_423), .I3(n3011), 
            .O(n3034));   // verilog/eeprom.v(27[6:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1972_3_lut (.I0(n2917), .I1(n2968[16]), .I2(n2935), 
            .I3(GND_net), .O(n3016));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1972_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2039_3_lut (.I0(n3016), .I1(n3067[16]), .I2(n3034), 
            .I3(GND_net), .O(n3115));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2037_3_lut (.I0(n3014), .I1(n3067[18]), .I2(n3034), 
            .I3(GND_net), .O(n3113));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1419_6_lut (.I0(GND_net), .I1(n2115), .I2(GND_net), 
            .I3(n3535), .O(n2176[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_16 (.CI(n3645), .I0(n2905), .I1(VCC_net), 
            .CO(n3646));
    SB_LUT4 delay_counter_288_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n3478), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_27 (.CI(n3478), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n3479));
    SB_LUT4 delay_counter_288_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n3477), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_26 (.CI(n3477), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n3478));
    SB_LUT4 rem_4_unary_minus_2_add_3_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[17]), .I3(n3802), .O(n1_adj_498[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_14_lut (.I0(GND_net), .I1(n3307), .I2(VCC_net), 
            .I3(n3717), .O(n3364[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_19 (.CI(n3802), .I0(GND_net), .I1(n1[17]), 
            .CO(n3803));
    SB_CARRY rem_4_add_2223_14 (.CI(n3717), .I0(n3307), .I1(VCC_net), 
            .CO(n3718));
    SB_LUT4 rem_4_add_1955_15_lut (.I0(GND_net), .I1(n2906), .I2(VCC_net), 
            .I3(n3644), .O(n2968[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_13 (.CI(n3584), .I0(n2508), .I1(VCC_net), 
            .CO(n3585));
    SB_CARRY rem_4_add_1419_6 (.CI(n3535), .I0(n2115), .I1(GND_net), .CO(n3536));
    SB_LUT4 rem_4_i1491_3_lut (.I0(n2212), .I1(n2275[28]), .I2(n2242), 
            .I3(GND_net), .O(n2311));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1491_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[16]), .I3(n3801), .O(n1_adj_498[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_13_lut (.I0(GND_net), .I1(n3308), .I2(VCC_net), 
            .I3(n3716), .O(n3364[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_15 (.CI(n3644), .I0(n2906), .I1(VCC_net), 
            .CO(n3645));
    SB_LUT4 rem_4_add_1687_12_lut (.I0(GND_net), .I1(n2509), .I2(VCC_net), 
            .I3(n3583), .O(n2572[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_14_lut (.I0(GND_net), .I1(n2907), .I2(VCC_net), 
            .I3(n3643), .O(n2968[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1419_5_lut (.I0(GND_net), .I1(n2116), .I2(GND_net), 
            .I3(n3534), .O(n2176[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_44 (.I0(n3113), .I1(n3115), .I2(GND_net), .I3(GND_net), 
            .O(n4711));
    defparam i1_2_lut_adj_44.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_unary_minus_2_add_3_18 (.CI(n3801), .I0(GND_net), .I1(n1[16]), 
            .CO(n3802));
    SB_CARRY rem_4_add_2223_13 (.CI(n3716), .I0(n3308), .I1(VCC_net), 
            .CO(n3717));
    SB_LUT4 i1_4_lut_adj_45 (.I0(n3114), .I1(n4711), .I2(n3117), .I3(n3116), 
            .O(n4715));
    defparam i1_4_lut_adj_45.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_unary_minus_2_add_3_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[15]), .I3(n3800), .O(n1_adj_498[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_12_lut (.I0(GND_net), .I1(n3309), .I2(VCC_net), 
            .I3(n3715), .O(n3364[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_14 (.CI(n3643), .I0(n2907), .I1(VCC_net), 
            .CO(n3644));
    SB_DFF delay_counter_288__i3 (.Q(delay_counter[3]), .C(CLK_N_keep), 
           .D(n133[3]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i4 (.Q(delay_counter[4]), .C(CLK_N_keep), 
           .D(n133[4]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i5 (.Q(delay_counter[5]), .C(CLK_N_keep), 
           .D(n133[5]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i6 (.Q(delay_counter[6]), .C(CLK_N_keep), 
           .D(n133[6]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i7 (.Q(delay_counter[7]), .C(CLK_N_keep), 
           .D(n133[7]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i8 (.Q(delay_counter[8]), .C(CLK_N_keep), 
           .D(n133[8]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i9 (.Q(delay_counter[9]), .C(CLK_N_keep), 
           .D(n133[9]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i10 (.Q(delay_counter[10]), .C(CLK_N_keep), 
           .D(n133[10]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i11 (.Q(delay_counter[11]), .C(CLK_N_keep), 
           .D(n133[11]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i12 (.Q(delay_counter[12]), .C(CLK_N_keep), 
           .D(n133[12]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i13 (.Q(delay_counter[13]), .C(CLK_N_keep), 
           .D(n133[13]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i14 (.Q(delay_counter[14]), .C(CLK_N_keep), 
           .D(n133[14]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i15 (.Q(delay_counter[15]), .C(CLK_N_keep), 
           .D(n133[15]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i16 (.Q(delay_counter[16]), .C(CLK_N_keep), 
           .D(n133[16]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i17 (.Q(delay_counter[17]), .C(CLK_N_keep), 
           .D(n133[17]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i18 (.Q(delay_counter[18]), .C(CLK_N_keep), 
           .D(n133[18]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i19 (.Q(delay_counter[19]), .C(CLK_N_keep), 
           .D(n133[19]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i20 (.Q(delay_counter[20]), .C(CLK_N_keep), 
           .D(n133[20]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i21 (.Q(delay_counter[21]), .C(CLK_N_keep), 
           .D(n133[21]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i22 (.Q(delay_counter[22]), .C(CLK_N_keep), 
           .D(n133[22]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i23 (.Q(delay_counter[23]), .C(CLK_N_keep), 
           .D(n133[23]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i24 (.Q(delay_counter[24]), .C(CLK_N_keep), 
           .D(n133[24]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i25 (.Q(delay_counter[25]), .C(CLK_N_keep), 
           .D(n133[25]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i26 (.Q(delay_counter[26]), .C(CLK_N_keep), 
           .D(n133[26]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i27 (.Q(delay_counter[27]), .C(CLK_N_keep), 
           .D(n133[27]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i28 (.Q(delay_counter[28]), .C(CLK_N_keep), 
           .D(n133[28]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i29 (.Q(delay_counter[29]), .C(CLK_N_keep), 
           .D(n133[29]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i30 (.Q(delay_counter[30]), .C(CLK_N_keep), 
           .D(n133[30]));   // verilog/eeprom.v(26[20:37])
    SB_DFF delay_counter_288__i31 (.Q(delay_counter[31]), .C(CLK_N_keep), 
           .D(n133[31]));   // verilog/eeprom.v(26[20:37])
    SB_CARRY rem_4_unary_minus_2_add_3_17 (.CI(n3800), .I0(GND_net), .I1(n1[15]), 
            .CO(n3801));
    SB_CARRY rem_4_add_2223_12 (.CI(n3715), .I0(n3309), .I1(VCC_net), 
            .CO(n3716));
    SB_LUT4 rem_4_add_1955_13_lut (.I0(GND_net), .I1(n2908), .I2(VCC_net), 
            .I3(n3642), .O(n2968[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_12 (.CI(n3583), .I0(n2509), .I1(VCC_net), 
            .CO(n3584));
    SB_LUT4 rem_4_add_2223_11_lut (.I0(GND_net), .I1(n3310), .I2(VCC_net), 
            .I3(n3714), .O(n3364[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_13 (.CI(n3642), .I0(n2908), .I1(VCC_net), 
            .CO(n3643));
    SB_LUT4 rem_4_unary_minus_2_add_3_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[14]), .I3(n3799), .O(n1_adj_498[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_11 (.CI(n3714), .I0(n3310), .I1(VCC_net), 
            .CO(n3715));
    SB_LUT4 rem_4_add_1955_12_lut (.I0(GND_net), .I1(n2909), .I2(VCC_net), 
            .I3(n3641), .O(n2968[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_11_lut (.I0(GND_net), .I1(n2510), .I2(VCC_net), 
            .I3(n3582), .O(n2572[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_46 (.I0(n2313), .I1(n2315), .I2(GND_net), .I3(GND_net), 
            .O(n4505));
    defparam i1_2_lut_adj_46.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_unary_minus_2_add_3_16 (.CI(n3799), .I0(GND_net), .I1(n1[14]), 
            .CO(n3800));
    SB_LUT4 rem_4_add_2223_10_lut (.I0(GND_net), .I1(n3311), .I2(VCC_net), 
            .I3(n3713), .O(n3364[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_12 (.CI(n3641), .I0(n2909), .I1(VCC_net), 
            .CO(n3642));
    SB_CARRY rem_4_add_1687_11 (.CI(n3582), .I0(n2510), .I1(VCC_net), 
            .CO(n3583));
    SB_CARRY rem_4_add_1419_5 (.CI(n3534), .I0(n2116), .I1(GND_net), .CO(n3535));
    SB_DFF delay_counter_288__i0 (.Q(delay_counter[0]), .C(CLK_N_keep), 
           .D(n133[0]));   // verilog/eeprom.v(26[20:37])
    SB_CARRY rem_4_add_2223_10 (.CI(n3713), .I0(n3311), .I1(VCC_net), 
            .CO(n3714));
    SB_LUT4 rem_4_add_1955_11_lut (.I0(GND_net), .I1(n2910), .I2(VCC_net), 
            .I3(n3640), .O(n2968[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[13]), .I3(n3798), .O(n1_adj_498[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_15 (.CI(n3798), .I0(GND_net), .I1(n1[13]), 
            .CO(n3799));
    SB_LUT4 i4_4_lut_adj_47 (.I0(n4715), .I1(n3106), .I2(n3119), .I3(n3118), 
            .O(n18_adj_432));
    defparam i4_4_lut_adj_47.LUT_INIT = 16'heeec;
    SB_LUT4 rem_4_i1700_3_lut (.I0(n2517), .I1(n2572[20]), .I2(n2539), 
            .I3(GND_net), .O(n2616));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1700_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n3476), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1767_3_lut (.I0(n2616), .I1(n2671[20]), .I2(n2638), 
            .I3(GND_net), .O(n2715));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1767_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_25 (.CI(n3476), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n3477));
    SB_LUT4 rem_4_i1834_3_lut (.I0(n2715), .I1(n2770[20]), .I2(n2737), 
            .I3(GND_net), .O(n2814));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i31_3_lut (.I0(delay_counter[30]), .I1(n1_adj_498[30]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1256));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3950_2_lut (.I0(n4734), .I1(n1256), .I2(GND_net), .I3(GND_net), 
            .O(n1913));   // verilog/eeprom.v(27[6:28])
    defparam i3950_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i1288_3_lut (.I0(n1913), .I1(n1978[30]), .I2(n1945), 
            .I3(GND_net), .O(n2012));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1288_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1355_3_lut (.I0(n2012), .I1(n2077[30]), .I2(n2044), 
            .I3(GND_net), .O(n2111));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1355_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1422_3_lut (.I0(n2111), .I1(n2176[30]), .I2(n2143), 
            .I3(GND_net), .O(n2210));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1489_3_lut (.I0(n2210), .I1(n2275[30]), .I2(n2242), 
            .I3(GND_net), .O(n2309));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1489_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1556_3_lut (.I0(n2309), .I1(n2374[30]), .I2(n2341), 
            .I3(GND_net), .O(n2408));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1556_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n3475), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1623_3_lut (.I0(n2408), .I1(n2473[30]), .I2(n2440), 
            .I3(GND_net), .O(n2507));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1690_3_lut (.I0(n2507), .I1(n2572[30]), .I2(n2539), 
            .I3(GND_net), .O(n2606));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1690_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_24 (.CI(n3475), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n3476));
    SB_LUT4 rem_4_i1757_3_lut (.I0(n2606), .I1(n2671[30]), .I2(n2638), 
            .I3(GND_net), .O(n2705));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_9_lut (.I0(GND_net), .I1(n3312), .I2(VCC_net), 
            .I3(n3712), .O(n3364[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_11 (.CI(n3640), .I0(n2910), .I1(VCC_net), 
            .CO(n3641));
    SB_LUT4 delay_counter_288_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n3474), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1687_10_lut (.I0(GND_net), .I1(n2511), .I2(VCC_net), 
            .I3(n3581), .O(n2572[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1824_3_lut (.I0(n2705), .I1(n2770[30]), .I2(n2737), 
            .I3(GND_net), .O(n2804));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1419_4_lut (.I0(GND_net), .I1(n2117), .I2(GND_net), 
            .I3(n3533), .O(n2176[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1891_3_lut (.I0(n2804), .I1(n2869[30]), .I2(n2836), 
            .I3(GND_net), .O(n2903));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1891_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1901_3_lut (.I0(n2814), .I1(n2869[20]), .I2(n2836), 
            .I3(GND_net), .O(n2913));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1958_3_lut (.I0(n2903), .I1(n2968[30]), .I2(n2935), 
            .I3(GND_net), .O(n3002));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1958_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1968_3_lut (.I0(n2913), .I1(n2968[20]), .I2(n2935), 
            .I3(GND_net), .O(n3012));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1694_3_lut (.I0(n2511), .I1(n2572[26]), .I2(n2539), 
            .I3(GND_net), .O(n2610));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1694_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1761_3_lut (.I0(n2610), .I1(n2671[26]), .I2(n2638), 
            .I3(GND_net), .O(n2709));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1828_3_lut (.I0(n2709), .I1(n2770[26]), .I2(n2737), 
            .I3(GND_net), .O(n2808));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i30_3_lut (.I0(delay_counter[29]), .I1(n1_adj_498[29]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1137));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4031_3_lut (.I0(n1914), .I1(n1978[29]), .I2(n1945), .I3(GND_net), 
            .O(n2013));   // verilog/eeprom.v(27[6:28])
    defparam i4031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1356_3_lut (.I0(n2013), .I1(n2077[29]), .I2(n2044), 
            .I3(GND_net), .O(n2112));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1356_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1423_3_lut (.I0(n2112), .I1(n2176[29]), .I2(n2143), 
            .I3(GND_net), .O(n2211));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1490_3_lut (.I0(n2211), .I1(n2275[29]), .I2(n2242), 
            .I3(GND_net), .O(n2310));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1490_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1557_3_lut (.I0(n2310), .I1(n2374[29]), .I2(n2341), 
            .I3(GND_net), .O(n2409));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1557_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1624_3_lut (.I0(n2409), .I1(n2473[29]), .I2(n2440), 
            .I3(GND_net), .O(n2508));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1624_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_23 (.CI(n3474), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n3475));
    SB_LUT4 delay_counter_288_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n3473), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_10_lut (.I0(GND_net), .I1(n2911), .I2(VCC_net), 
            .I3(n3639), .O(n2968[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1691_3_lut (.I0(n2508), .I1(n2572[29]), .I2(n2539), 
            .I3(GND_net), .O(n2607));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1691_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1687_10 (.CI(n3581), .I0(n2511), .I1(VCC_net), 
            .CO(n3582));
    SB_LUT4 rem_4_i1758_3_lut (.I0(n2607), .I1(n2671[29]), .I2(n2638), 
            .I3(GND_net), .O(n2706));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1825_3_lut (.I0(n2706), .I1(n2770[29]), .I2(n2737), 
            .I3(GND_net), .O(n2805));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_22 (.CI(n3473), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n3474));
    SB_LUT4 rem_4_i1892_3_lut (.I0(n2805), .I1(n2869[29]), .I2(n2836), 
            .I3(GND_net), .O(n2904));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1559_3_lut (.I0(n2312), .I1(n2374[27]), .I2(n2341), 
            .I3(GND_net), .O(n2411));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1559_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1626_3_lut (.I0(n2411), .I1(n2473[27]), .I2(n2440), 
            .I3(GND_net), .O(n2510));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i4_3_lut (.I0(delay_counter[3]), .I1(n1_adj_498[3]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3722_adj_433));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i4_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i5_3_lut (.I0(delay_counter[4]), .I1(n1_adj_498[4]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3721_adj_434));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i5_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i6_3_lut (.I0(delay_counter[5]), .I1(n1_adj_498[5]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3720_adj_435));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i6_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i7_3_lut (.I0(delay_counter[6]), .I1(n1_adj_498[6]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3719_adj_436));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4059_1_lut (.I0(n4766), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4903));   // verilog/eeprom.v(27[6:28])
    defparam i4059_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2450_rep_1_3_lut (.I0(n3619_adj_352), .I1(n1345[0]), 
            .I2(n3628_adj_437), .I3(GND_net), .O(n4766));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2450_rep_1_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i1560_3_lut (.I0(n2313), .I1(n2374[26]), .I2(n2341), 
            .I3(GND_net), .O(n2412));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1560_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4062_1_lut (.I0(n3717_adj_438), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4906));   // verilog/eeprom.v(27[6:28])
    defparam i4062_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2449_3_lut (.I0(n3618_adj_350), .I1(n1345[1]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3717_adj_438));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2449_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 delay_counter_288_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n3472), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_21 (.CI(n3472), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n3473));
    SB_LUT4 rem_4_i1693_3_lut (.I0(n2510), .I1(n2572[27]), .I2(n2539), 
            .I3(GND_net), .O(n2609));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1693_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n3471), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1760_3_lut (.I0(n2609), .I1(n2671[27]), .I2(n2638), 
            .I3(GND_net), .O(n2708));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1760_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4065_1_lut (.I0(n3716_adj_439), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4909));   // verilog/eeprom.v(27[6:28])
    defparam i4065_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_add_3_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[12]), .I3(n3797), .O(n1_adj_498[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_9 (.CI(n3712), .I0(n3312), .I1(VCC_net), .CO(n3713));
    SB_LUT4 rem_4_i2448_3_lut (.I0(n3617_adj_346), .I1(n1345[2]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3716_adj_439));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2448_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2223_8_lut (.I0(GND_net), .I1(n3313), .I2(GND_net), 
            .I3(n3711), .O(n3364[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4068_1_lut (.I0(n3715_adj_441), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4912));   // verilog/eeprom.v(27[6:28])
    defparam i4068_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2447_3_lut (.I0(n3616_adj_345), .I1(n1345[3]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3715_adj_441));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2447_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4071_1_lut (.I0(n3714_adj_442), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4915));   // verilog/eeprom.v(27[6:28])
    defparam i4071_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2446_3_lut (.I0(n3615_adj_344), .I1(n1345[4]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3714_adj_442));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2446_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i1_4_lut_adj_48 (.I0(n1141), .I1(n1_adj_498[27]), .I2(delay_counter[31]), 
            .I3(n1_adj_498[26]), .O(n4399));
    defparam i1_4_lut_adj_48.LUT_INIT = 16'hc080;
    SB_LUT4 i1_4_lut_adj_49 (.I0(n1_adj_498[31]), .I1(n1137), .I2(n1138), 
            .I3(n4399), .O(n4405));
    defparam i1_4_lut_adj_49.LUT_INIT = 16'h8000;
    SB_LUT4 i3948_1_lut (.I0(n4405), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4733));
    defparam i3948_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i4074_1_lut (.I0(n3713_adj_443), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4918));   // verilog/eeprom.v(27[6:28])
    defparam i4074_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2445_3_lut (.I0(n3614_adj_343), .I1(n1345[5]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3713_adj_443));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2445_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4077_1_lut (.I0(n3712_adj_444), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4921));   // verilog/eeprom.v(27[6:28])
    defparam i4077_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY delay_counter_288_add_4_20 (.CI(n3471), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n3472));
    SB_LUT4 rem_4_i2444_3_lut (.I0(n3613_adj_342), .I1(n1345[6]), .I2(n3628_adj_437), 
            .I3(GND_net), .O(n3712_adj_444));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2444_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2373_3_lut (.I0(n3510_adj_360), .I1(n34[17]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3609_adj_445));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2373_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1827_3_lut (.I0(n2708), .I1(n2770[27]), .I2(n2737), 
            .I3(GND_net), .O(n2807));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n3470), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2370_3_lut (.I0(n3507), .I1(n34[20]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3606_adj_446));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2370_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_10 (.CI(n3639), .I0(n2911), .I1(VCC_net), 
            .CO(n3640));
    SB_LUT4 rem_4_i1894_3_lut (.I0(n2807), .I1(n2869[27]), .I2(n2836), 
            .I3(GND_net), .O(n2906));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1894_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_14 (.CI(n3797), .I0(GND_net), .I1(n1[12]), 
            .CO(n3798));
    SB_LUT4 i1_4_lut_adj_50 (.I0(n2314), .I1(n4505), .I2(n2317), .I3(n2316), 
            .O(n4509));
    defparam i1_4_lut_adj_50.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i1558_3_lut (.I0(n2311), .I1(n2374[28]), .I2(n2341), 
            .I3(GND_net), .O(n2410));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[11]), .I3(n3796), .O(n1_adj_498[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1625_3_lut (.I0(n2410), .I1(n2473[28]), .I2(n2440), 
            .I3(GND_net), .O(n2509));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1692_3_lut (.I0(n2509), .I1(n2572[28]), .I2(n2539), 
            .I3(GND_net), .O(n2608));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1692_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2223_8 (.CI(n3711), .I0(n3313), .I1(GND_net), .CO(n3712));
    SB_LUT4 rem_4_i1759_3_lut (.I0(n2608), .I1(n2671[28]), .I2(n2638), 
            .I3(GND_net), .O(n2707));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_7_lut (.I0(GND_net), .I1(n3314), .I2(GND_net), 
            .I3(n3710), .O(n3364[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1826_3_lut (.I0(n2707), .I1(n2770[28]), .I2(n2737), 
            .I3(GND_net), .O(n2806));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_51 (.I0(n3504), .I1(n3606_adj_446), .I2(n34[23]), 
            .I3(n3529_adj_336), .O(n4451));
    defparam i1_4_lut_adj_51.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_i2364_3_lut (.I0(n3501), .I1(n34[26]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3600_adj_449));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2364_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_52 (.I0(n3508), .I1(n3609_adj_445), .I2(n34[19]), 
            .I3(n3529_adj_336), .O(n4429));
    defparam i1_4_lut_adj_52.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_i2363_3_lut (.I0(n3500), .I1(n34[27]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3599_adj_450));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2363_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1893_3_lut (.I0(n2806), .I1(n2869[28]), .I2(n2836), 
            .I3(GND_net), .O(n2905));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1895_3_lut (.I0(n2808), .I1(n2869[26]), .I2(n2836), 
            .I3(GND_net), .O(n2907));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1895_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1962_3_lut (.I0(n2907), .I1(n2968[26]), .I2(n2935), 
            .I3(GND_net), .O(n3006));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1962_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1960_3_lut (.I0(n2905), .I1(n2968[28]), .I2(n2935), 
            .I3(GND_net), .O(n3004));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_53 (.I0(n3503), .I1(n4451), .I2(n34[24]), .I3(n3529_adj_336), 
            .O(n4453));
    defparam i1_4_lut_adj_53.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_i2372_3_lut (.I0(n3509), .I1(n34[18]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3608_adj_451));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2372_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_54 (.I0(n3511_adj_362), .I1(n3608_adj_451), .I2(n34[16]), 
            .I3(n3529_adj_336), .O(n4581));
    defparam i1_4_lut_adj_54.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_55 (.I0(n4581), .I1(n3512_adj_364), .I2(n34[15]), 
            .I3(n3529_adj_336), .O(n4583));
    defparam i1_4_lut_adj_55.LUT_INIT = 16'hfaee;
    SB_LUT4 rem_4_i2362_3_lut (.I0(n3499), .I1(n34[28]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3598_adj_452));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1961_3_lut (.I0(n2906), .I1(n2968[27]), .I2(n2935), 
            .I3(GND_net), .O(n3005));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1959_3_lut (.I0(n2904), .I1(n2968[29]), .I2(n2935), 
            .I3(GND_net), .O(n3003));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1695_3_lut (.I0(n2512), .I1(n2572[25]), .I2(n2539), 
            .I3(GND_net), .O(n2611));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1695_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_56 (.I0(n4583), .I1(n3505), .I2(n34[22]), .I3(n3529_adj_336), 
            .O(n31));
    defparam i1_4_lut_adj_56.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n4453), .I1(n3599_adj_450), .I2(n4429), 
            .I3(n3600_adj_449), .O(n4433));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_58 (.I0(n3613_adj_342), .I1(n3615_adj_344), .I2(GND_net), 
            .I3(GND_net), .O(n4619));
    defparam i1_2_lut_adj_58.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i2369_3_lut (.I0(n3506), .I1(n34[21]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3605_adj_453));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2369_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_59 (.I0(n3614_adj_343), .I1(n4619), .I2(n3617_adj_346), 
            .I3(n3616_adj_345), .O(n4623));
    defparam i1_4_lut_adj_59.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i1762_3_lut (.I0(n2611), .I1(n2671[25]), .I2(n2638), 
            .I3(GND_net), .O(n2710));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1829_3_lut (.I0(n2710), .I1(n2770[25]), .I2(n2737), 
            .I3(GND_net), .O(n2809));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_19 (.CI(n3470), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n3471));
    SB_LUT4 delay_counter_288_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n3469), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_60 (.I0(n4623), .I1(n3605_adj_453), .I2(n3619_adj_352), 
            .I3(n3618_adj_350), .O(n4425));
    defparam i1_4_lut_adj_60.LUT_INIT = 16'heeec;
    SB_LUT4 rem_4_add_1955_9_lut (.I0(GND_net), .I1(n2912), .I2(VCC_net), 
            .I3(n3638), .O(n2968[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_61 (.I0(n3502), .I1(n4425), .I2(n34[25]), .I3(n3529_adj_336), 
            .O(n4427));
    defparam i1_4_lut_adj_61.LUT_INIT = 16'hfcee;
    SB_LUT4 rem_4_add_1687_9_lut (.I0(GND_net), .I1(n2512), .I2(VCC_net), 
            .I3(n3580), .O(n2572[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_9 (.CI(n3580), .I0(n2512), .I1(VCC_net), .CO(n3581));
    SB_CARRY rem_4_add_1955_9 (.CI(n3638), .I0(n2912), .I1(VCC_net), .CO(n3639));
    SB_LUT4 i1_4_lut_adj_62 (.I0(n4433), .I1(n31), .I2(n3598_adj_452), 
            .I3(n3612_adj_339), .O(n4567));
    defparam i1_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1687_8_lut (.I0(GND_net), .I1(n2513), .I2(GND_net), 
            .I3(n3579), .O(n2572[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2360_3_lut (.I0(n3497), .I1(n34[30]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3596_adj_454));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2360_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1687_8 (.CI(n3579), .I0(n2513), .I1(GND_net), .CO(n3580));
    SB_CARRY rem_4_unary_minus_2_add_3_13 (.CI(n3796), .I0(GND_net), .I1(n1[11]), 
            .CO(n3797));
    SB_LUT4 i1_4_lut_adj_63 (.I0(n4427), .I1(n3498), .I2(n34[29]), .I3(n3529_adj_336), 
            .O(n28_adj_455));
    defparam i1_4_lut_adj_63.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_4_lut_adj_64 (.I0(n28_adj_455), .I1(n4765), .I2(n3596_adj_454), 
            .I3(n4567), .O(n3628_adj_437));
    defparam i1_4_lut_adj_64.LUT_INIT = 16'hfffe;
    SB_LUT4 i4083_2_lut (.I0(n3628_adj_437), .I1(n1345[7]), .I2(GND_net), 
            .I3(GND_net), .O(n3711_adj_456));   // verilog/eeprom.v(27[6:28])
    defparam i4083_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 rem_4_i1896_3_lut (.I0(n2809), .I1(n2869[25]), .I2(n2836), 
            .I3(GND_net), .O(n2908));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i1_1_lut (.I0(delay_counter[0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i2_1_lut (.I0(delay_counter[1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i3_1_lut (.I0(delay_counter[2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i4_1_lut (.I0(delay_counter[3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_mux_3_i15_3_lut (.I0(delay_counter[14]), .I1(n1_adj_498[14]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2919));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1974_3_lut (.I0(n2919), .I1(n2968[14]), .I2(n2935), 
            .I3(GND_net), .O(n3018));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i14_3_lut (.I0(delay_counter[13]), .I1(n1_adj_498[13]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3019));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1963_3_lut (.I0(n2908), .I1(n2968[25]), .I2(n2935), 
            .I3(GND_net), .O(n3007));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i29_3_lut (.I0(delay_counter[28]), .I1(n1_adj_498[28]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1138));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_65 (.I0(n1914), .I1(n4437), .I2(n1917), .I3(n1916), 
            .O(n4441));
    defparam i1_4_lut_adj_65.LUT_INIT = 16'h8000;
    SB_LUT4 i10_4_lut_adj_66 (.I0(n3107), .I1(n3109), .I2(n3111), .I3(n3110), 
            .O(n24_adj_459));
    defparam i10_4_lut_adj_66.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i5_1_lut (.I0(delay_counter[4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i6_1_lut (.I0(delay_counter[5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i7_1_lut (.I0(delay_counter[6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i8_1_lut (.I0(delay_counter[7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i9_1_lut (.I0(delay_counter[8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i10_1_lut (.I0(delay_counter[9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i11_1_lut (.I0(delay_counter[10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY delay_counter_288_add_4_18 (.CI(n3469), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n3470));
    SB_LUT4 delay_counter_288_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[15]), .I3(n3468), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_17 (.CI(n3468), .I0(GND_net), .I1(delay_counter[15]), 
            .CO(n3469));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i12_1_lut (.I0(delay_counter[11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i13_1_lut (.I0(delay_counter[12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_add_3_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[10]), .I3(n3795), .O(n1_adj_498[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i14_1_lut (.I0(delay_counter[13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i8_4_lut_adj_67 (.I0(n3101), .I1(n3102), .I2(n3100), .I3(n3103), 
            .O(n22_adj_465));
    defparam i8_4_lut_adj_67.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i15_1_lut (.I0(delay_counter[14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2223_7 (.CI(n3710), .I0(n3314), .I1(GND_net), .CO(n3711));
    SB_LUT4 rem_4_add_1955_8_lut (.I0(GND_net), .I1(n2913), .I2(GND_net), 
            .I3(n3637), .O(n2968[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_8 (.CI(n3637), .I0(n2913), .I1(GND_net), .CO(n3638));
    SB_LUT4 rem_4_add_1687_7_lut (.I0(GND_net), .I1(n2514), .I2(GND_net), 
            .I3(n3578), .O(n2572[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i16_1_lut (.I0(delay_counter[15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i1360_3_lut (.I0(n2017), .I1(n2077[25]), .I2(n2044), 
            .I3(GND_net), .O(n2116));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1360_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i17_1_lut (.I0(delay_counter[16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i18_1_lut (.I0(delay_counter[17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i19_1_lut (.I0(delay_counter[18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3028_4_lut (.I0(n4441), .I1(n1912), .I2(n1919), .I3(n1918), 
            .O(n1945));   // verilog/eeprom.v(27[6:28])
    defparam i3028_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i20_1_lut (.I0(delay_counter[19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i21_1_lut (.I0(delay_counter[20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i22_1_lut (.I0(delay_counter[21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i23_1_lut (.I0(delay_counter[22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_3_lut_adj_68 (.I0(n2017), .I1(n2015), .I2(n2016), .I3(GND_net), 
            .O(n4415));
    defparam i1_3_lut_adj_68.LUT_INIT = 16'h8080;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i24_1_lut (.I0(delay_counter[23]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i25_1_lut (.I0(delay_counter[24]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 delay_counter_288_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n3467), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i26_1_lut (.I0(delay_counter[25]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY delay_counter_288_add_4_16 (.CI(n3467), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n3468));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i27_1_lut (.I0(delay_counter[26]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i28_1_lut (.I0(delay_counter[27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i29_1_lut (.I0(delay_counter[28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2223_6_lut (.I0(GND_net), .I1(n3315), .I2(GND_net), 
            .I3(n3709), .O(n3364[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_69 (.I0(n3104), .I1(n24_adj_459), .I2(n18_adj_432), 
            .I3(n3105), .O(n26_adj_466));
    defparam i12_4_lut_adj_69.LUT_INIT = 16'hfffe;
    SB_LUT4 delay_counter_288_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n3466), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_12 (.CI(n3795), .I0(GND_net), .I1(n1[10]), 
            .CO(n3796));
    SB_CARRY rem_4_add_2223_6 (.CI(n3709), .I0(n3315), .I1(GND_net), .CO(n3710));
    SB_LUT4 i4033_3_lut (.I0(n2116), .I1(n2176[25]), .I2(n2143), .I3(GND_net), 
            .O(n2215));   // verilog/eeprom.v(27[6:28])
    defparam i4033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_5_lut (.I0(GND_net), .I1(n3316), .I2(GND_net), 
            .I3(n3708), .O(n3364[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i30_1_lut (.I0(delay_counter[29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_add_3_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[9]), .I3(n3794), .O(n1_adj_498[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i31_1_lut (.I0(delay_counter[30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2223_5 (.CI(n3708), .I0(n3316), .I1(GND_net), .CO(n3709));
    SB_LUT4 rem_4_i1291_3_lut (.I0(n1916), .I1(n1978[27]), .I2(n1945), 
            .I3(GND_net), .O(n2015));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1291_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_7_lut (.I0(GND_net), .I1(n2914), .I2(GND_net), 
            .I3(n3636), .O(n2968[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_70 (.I0(n2019), .I1(n2014), .I2(n4415), .I3(n2018), 
            .O(n4419));
    defparam i1_4_lut_adj_70.LUT_INIT = 16'hc080;
    SB_CARRY rem_4_add_1687_7 (.CI(n3578), .I0(n2514), .I1(GND_net), .CO(n3579));
    SB_LUT4 rem_4_i1358_3_lut (.I0(n2015), .I1(n2077[27]), .I2(n2044), 
            .I3(GND_net), .O(n2114));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1358_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1425_3_lut (.I0(n2114), .I1(n2176[27]), .I2(n2143), 
            .I3(GND_net), .O(n2213));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1425_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i28_3_lut (.I0(delay_counter[27]), .I1(n1_adj_498[27]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1139));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4028_3_lut (.I0(n2242), .I1(n2143), .I2(n2044), .I3(GND_net), 
            .O(n4872));
    defparam i4028_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 rem_4_i1293_3_lut (.I0(n1918), .I1(n1978[25]), .I2(n1945), 
            .I3(GND_net), .O(n2017));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1293_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1360_rep_36_3_lut (.I0(n2077[25]), .I1(n2176[25]), .I2(n2143), 
            .I3(GND_net), .O(n4801));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1360_rep_36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1427_rep_34_3_lut (.I0(n4801), .I1(n2275[25]), .I2(n2242), 
            .I3(GND_net), .O(n4799));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1427_rep_34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1494_3_lut (.I0(n4799), .I1(n2017), .I2(n4872), .I3(GND_net), 
            .O(n2314));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1494_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_71 (.I0(n4419), .I1(n2011), .I2(n2012), .I3(n2013), 
            .O(n2044));
    defparam i1_4_lut_adj_71.LUT_INIT = 16'hfefc;
    SB_LUT4 rem_4_i1290_3_lut (.I0(n1915), .I1(n1978[28]), .I2(n1945), 
            .I3(GND_net), .O(n2014));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1290_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_15 (.CI(n3466), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n3467));
    SB_LUT4 rem_4_i1292_3_lut (.I0(n1917), .I1(n1978[26]), .I2(n1945), 
            .I3(GND_net), .O(n2016));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1292_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1359_3_lut (.I0(n2016), .I1(n2077[26]), .I2(n2044), 
            .I3(GND_net), .O(n2115));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1359_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1426_3_lut (.I0(n2115), .I1(n2176[26]), .I2(n2143), 
            .I3(GND_net), .O(n2214));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1426_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n3465), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(n2310), .I1(n4509), .I2(n2319), .I3(n2318), 
            .O(n8_adj_468));
    defparam i2_4_lut.LUT_INIT = 16'heeea;
    SB_LUT4 rem_4_add_1687_6_lut (.I0(GND_net), .I1(n2515), .I2(GND_net), 
            .I3(n3577), .O(n2572[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1493_3_lut (.I0(n2214), .I1(n2275[26]), .I2(n2242), 
            .I3(GND_net), .O(n2313));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1493_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1419_4 (.CI(n3533), .I0(n2117), .I1(GND_net), .CO(n3534));
    SB_LUT4 rem_4_add_1419_3_lut (.I0(GND_net), .I1(n2118), .I2(VCC_net), 
            .I3(n3532), .O(n2176[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut (.I0(n4734), .I1(n1256), .I2(n1915), .I3(GND_net), 
            .O(n4437));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_CARRY rem_4_add_1955_7 (.CI(n3636), .I0(n2914), .I1(GND_net), .CO(n3637));
    SB_CARRY rem_4_add_1687_6 (.CI(n3577), .I0(n2515), .I1(GND_net), .CO(n3578));
    SB_LUT4 rem_4_add_1687_5_lut (.I0(GND_net), .I1(n2516), .I2(GND_net), 
            .I3(n3576), .O(n2572[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1419_3 (.CI(n3532), .I0(n2118), .I1(VCC_net), .CO(n3533));
    SB_LUT4 rem_4_add_1419_2_lut (.I0(GND_net), .I1(n2119), .I2(GND_net), 
            .I3(VCC_net), .O(n2176[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1419_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2223_4_lut (.I0(GND_net), .I1(n3317), .I2(GND_net), 
            .I3(n3707), .O(n3364[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i8_3_lut (.I0(delay_counter[7]), .I1(n1_adj_498[7]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3619_adj_352));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2382_3_lut (.I0(n3519_adj_379), .I1(n34[8]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3618_adj_350));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2382_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2381_3_lut (.I0(n3518_adj_376), .I1(n34[9]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3617_adj_346));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2381_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i520_2_lut (.I0(n1_adj_498[31]), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(n1135));
    defparam i520_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4080_1_lut_2_lut (.I0(n3628_adj_437), .I1(n1345[7]), .I2(GND_net), 
            .I3(GND_net), .O(n4924));   // verilog/eeprom.v(27[6:28])
    defparam i4080_1_lut_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i2380_3_lut (.I0(n3517_adj_374), .I1(n34[10]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3616_adj_345));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2380_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_14 (.CI(n3465), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n3466));
    SB_LUT4 rem_4_i2379_3_lut (.I0(n3516_adj_372), .I1(n34[11]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3615_adj_344));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2378_3_lut (.I0(n3515_adj_370), .I1(n34[12]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3614_adj_343));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2378_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n3464), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2377_3_lut (.I0(n3514_adj_368), .I1(n34[13]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3613_adj_342));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2377_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_11 (.CI(n3794), .I0(GND_net), .I1(n1[9]), 
            .CO(n3795));
    SB_LUT4 i1_2_lut_adj_72 (.I0(n2309), .I1(n2308), .I2(GND_net), .I3(GND_net), 
            .O(n7_adj_470));
    defparam i1_2_lut_adj_72.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(n2311), .I1(n7_adj_470), .I2(n2312), .I3(n8_adj_468), 
            .O(n2341));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[8]), .I3(n3793), .O(n1_adj_498[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_73 (.I0(n2413), .I1(n2415), .I2(GND_net), .I3(GND_net), 
            .O(n4477));
    defparam i1_2_lut_adj_73.LUT_INIT = 16'h8888;
    SB_CARRY rem_4_add_2223_4 (.CI(n3707), .I0(n3317), .I1(GND_net), .CO(n3708));
    SB_LUT4 i1_3_lut_adj_74 (.I0(n2414), .I1(n2417), .I2(n2416), .I3(GND_net), 
            .O(n4479));
    defparam i1_3_lut_adj_74.LUT_INIT = 16'h8080;
    SB_LUT4 rem_4_add_1955_6_lut (.I0(GND_net), .I1(n2915), .I2(GND_net), 
            .I3(n3635), .O(n2968[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_5 (.CI(n3576), .I0(n2516), .I1(GND_net), .CO(n3577));
    SB_CARRY rem_4_add_1955_6 (.CI(n3635), .I0(n2915), .I1(GND_net), .CO(n3636));
    SB_LUT4 rem_4_add_1687_4_lut (.I0(GND_net), .I1(n2517), .I2(GND_net), 
            .I3(n3575), .O(n2572[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i26_3_lut (.I0(delay_counter[25]), .I1(n1_adj_498[25]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1141));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i27_3_lut (.I0(delay_counter[26]), .I1(n1_adj_498[26]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1140));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2376_3_lut (.I0(n3513_adj_366), .I1(n34[14]), .I2(n3529_adj_336), 
            .I3(GND_net), .O(n3612_adj_339));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2299_3_lut (.I0(n3404), .I1(n35[24]), .I2(n3430), .I3(GND_net), 
            .O(n3503));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2299_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2297_3_lut (.I0(n3402), .I1(n35[26]), .I2(n3430), .I3(GND_net), 
            .O(n3501));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2297_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_13 (.CI(n3464), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n3465));
    SB_LUT4 rem_4_i2298_3_lut (.I0(n3403), .I1(n35[25]), .I2(n3430), .I3(GND_net), 
            .O(n3502));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2298_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2296_3_lut (.I0(n3401), .I1(n35[27]), .I2(n3430), .I3(GND_net), 
            .O(n3500));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2296_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n3463), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_12 (.CI(n3463), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n3464));
    SB_LUT4 rem_4_i2305_3_lut (.I0(n3410), .I1(n35[18]), .I2(n3430), .I3(GND_net), 
            .O(n3509));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2305_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_10 (.CI(n3793), .I0(GND_net), .I1(n1[8]), 
            .CO(n3794));
    SB_LUT4 rem_4_unary_minus_2_add_3_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[7]), .I3(n3792), .O(n1_adj_498[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2306_3_lut (.I0(n3411), .I1(n35[17]), .I2(n3430), .I3(GND_net), 
            .O(n3510_adj_360));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2306_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_3_lut (.I0(GND_net), .I1(n3318), .I2(VCC_net), 
            .I3(n3706), .O(n3364[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2302_3_lut (.I0(n3407), .I1(n35[21]), .I2(n3430), .I3(GND_net), 
            .O(n3506));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2302_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_5_lut (.I0(GND_net), .I1(n2916), .I2(GND_net), 
            .I3(n3634), .O(n2968[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_4 (.CI(n3575), .I0(n2517), .I1(GND_net), .CO(n3576));
    SB_CARRY rem_4_add_1419_2 (.CI(VCC_net), .I0(n2119), .I1(GND_net), 
            .CO(n3532));
    SB_CARRY rem_4_add_1955_5 (.CI(n3634), .I0(n2916), .I1(GND_net), .CO(n3635));
    SB_LUT4 rem_4_i2301_3_lut (.I0(n3406), .I1(n35[22]), .I2(n3430), .I3(GND_net), 
            .O(n3505));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2301_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1687_3_lut (.I0(GND_net), .I1(n2518), .I2(VCC_net), 
            .I3(n3574), .O(n2572[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2307_3_lut (.I0(n3412), .I1(n35[16]), .I2(n3430), .I3(GND_net), 
            .O(n3511_adj_362));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2307_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2300_3_lut (.I0(n3405), .I1(n35[23]), .I2(n3430), .I3(GND_net), 
            .O(n3504));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2300_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4038_3_lut (.I0(n3309), .I1(n3364[20]), .I2(n3331), .I3(GND_net), 
            .O(n3408));   // verilog/eeprom.v(27[6:28])
    defparam i4038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4039_3_lut (.I0(n3408), .I1(n35[20]), .I2(n3430), .I3(GND_net), 
            .O(n3507));   // verilog/eeprom.v(27[6:28])
    defparam i4039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2308_3_lut (.I0(n3413), .I1(n35[15]), .I2(n3430), .I3(GND_net), 
            .O(n3512_adj_364));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2308_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_75 (.I0(n4479), .I1(n2419), .I2(n4477), .I3(n2418), 
            .O(n4133));
    defparam i1_4_lut_adj_75.LUT_INIT = 16'ha080;
    SB_LUT4 i5_4_lut_adj_76 (.I0(n2409), .I1(n4133), .I2(n2410), .I3(n2411), 
            .O(n12_adj_472));   // verilog/eeprom.v(27[6:28])
    defparam i5_4_lut_adj_76.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2304_3_lut (.I0(n3409), .I1(n35[19]), .I2(n3430), .I3(GND_net), 
            .O(n3508));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2304_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2312_3_lut (.I0(n3417), .I1(n35[11]), .I2(n3430), .I3(GND_net), 
            .O(n3516_adj_372));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2312_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2313_3_lut (.I0(n3418), .I1(n35[10]), .I2(n3430), .I3(GND_net), 
            .O(n3517_adj_374));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2313_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2310_3_lut (.I0(n3415), .I1(n35[13]), .I2(n3430), .I3(GND_net), 
            .O(n3514_adj_368));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2310_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2311_3_lut (.I0(n3416), .I1(n35[12]), .I2(n3430), .I3(GND_net), 
            .O(n3515_adj_370));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2311_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2309_3_lut (.I0(n3414), .I1(n35[14]), .I2(n3430), .I3(GND_net), 
            .O(n3513_adj_366));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2309_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2314_3_lut (.I0(n3419), .I1(n35[9]), .I2(n3430), .I3(GND_net), 
            .O(n3518_adj_376));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2314_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i9_3_lut (.I0(delay_counter[8]), .I1(n1_adj_498[8]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3519_adj_379));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2238_3_lut (.I0(n3311), .I1(n3364[18]), .I2(n3331), 
            .I3(GND_net), .O(n3410));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2238_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n3462), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_11 (.CI(n3462), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n3463));
    SB_LUT4 rem_4_i2235_3_lut (.I0(n3308), .I1(n3364[21]), .I2(n3331), 
            .I3(GND_net), .O(n3407));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2235_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2234_3_lut (.I0(n3307), .I1(n3364[22]), .I2(n3331), 
            .I3(GND_net), .O(n3406));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2234_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_9 (.CI(n3792), .I0(GND_net), .I1(n1[7]), 
            .CO(n3793));
    SB_LUT4 delay_counter_288_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n3461), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_3 (.CI(n3706), .I0(n3318), .I1(VCC_net), .CO(n3707));
    SB_LUT4 rem_4_unary_minus_2_add_3_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[6]), .I3(n3791), .O(n1_adj_498[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2230_3_lut (.I0(n3303), .I1(n3364[26]), .I2(n3331), 
            .I3(GND_net), .O(n3402));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2229_3_lut (.I0(n3302), .I1(n3364[27]), .I2(n3331), 
            .I3(GND_net), .O(n3401));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2227_3_lut (.I0(n3300), .I1(n3364[29]), .I2(n3331), 
            .I3(GND_net), .O(n3399));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2240_3_lut (.I0(n3313), .I1(n3364[16]), .I2(n3331), 
            .I3(GND_net), .O(n3412));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2240_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_8 (.CI(n3791), .I0(GND_net), .I1(n1[6]), 
            .CO(n3792));
    SB_LUT4 rem_4_i2237_3_lut (.I0(n3310), .I1(n3364[19]), .I2(n3331), 
            .I3(GND_net), .O(n3409));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2237_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2223_2_lut (.I0(GND_net), .I1(n3319), .I2(GND_net), 
            .I3(VCC_net), .O(n3364[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2223_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1955_4_lut (.I0(GND_net), .I1(n2917), .I2(GND_net), 
            .I3(n3633), .O(n2968[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1687_3 (.CI(n3574), .I0(n2518), .I1(VCC_net), .CO(n3575));
    SB_LUT4 i6_4_lut_adj_77 (.I0(n2412), .I1(n12_adj_472), .I2(n2408), 
            .I3(n2407), .O(n2440));   // verilog/eeprom.v(27[6:28])
    defparam i6_4_lut_adj_77.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1352_10_lut (.I0(n2044), .I1(n2011), .I2(VCC_net), 
            .I3(n3531), .O(n2110)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_1352_9_lut (.I0(GND_net), .I1(n2012), .I2(VCC_net), 
            .I3(n3530), .O(n2077[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[5]), .I3(n3790), .O(n1_adj_498[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2223_2 (.CI(VCC_net), .I0(n3319), .I1(GND_net), 
            .CO(n3706));
    SB_LUT4 rem_4_i2239_3_lut (.I0(n3312), .I1(n3364[17]), .I2(n3331), 
            .I3(GND_net), .O(n3411));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2239_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2232_3_lut (.I0(n3305), .I1(n3364[24]), .I2(n3331), 
            .I3(GND_net), .O(n3404));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2233_3_lut (.I0(n3306), .I1(n3364[23]), .I2(n3331), 
            .I3(GND_net), .O(n3405));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2231_3_lut (.I0(n3304), .I1(n3364[25]), .I2(n3331), 
            .I3(GND_net), .O(n3403));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2243_3_lut (.I0(n3316), .I1(n3364[13]), .I2(n3331), 
            .I3(GND_net), .O(n3415));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2243_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2241_3_lut (.I0(n3314), .I1(n3364[15]), .I2(n3331), 
            .I3(GND_net), .O(n3413));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2241_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2246_3_lut (.I0(n3319), .I1(n3364[10]), .I2(n3331), 
            .I3(GND_net), .O(n3418));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2246_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i10_3_lut (.I0(delay_counter[9]), .I1(n1_adj_498[9]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3419));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2110_3_lut (.I0(n3119), .I1(n3166[12]), .I2(n3133), 
            .I3(GND_net), .O(n3218));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2098_3_lut (.I0(n3107), .I1(n3166[24]), .I2(n3133), 
            .I3(GND_net), .O(n3206));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2098_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_10 (.CI(n3461), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n3462));
    SB_LUT4 i4035_3_lut (.I0(n2314), .I1(n2374[25]), .I2(n2341), .I3(GND_net), 
            .O(n2413));   // verilog/eeprom.v(27[6:28])
    defparam i4035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[7]), 
            .I3(n3460), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1627_3_lut (.I0(n2412), .I1(n2473[26]), .I2(n2440), 
            .I3(GND_net), .O(n2511));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1627_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_4 (.CI(n3633), .I0(n2917), .I1(GND_net), .CO(n3634));
    SB_LUT4 rem_4_add_1687_2_lut (.I0(GND_net), .I1(n2519), .I2(GND_net), 
            .I3(VCC_net), .O(n2572[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1687_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i1628_3_lut (.I0(n2413), .I1(n2473[25]), .I2(n2440), 
            .I3(GND_net), .O(n2512));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1628_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1352_9 (.CI(n3530), .I0(n2012), .I1(VCC_net), .CO(n3531));
    SB_LUT4 rem_4_add_1955_3_lut (.I0(GND_net), .I1(n2918), .I2(VCC_net), 
            .I3(n3632), .O(n2968[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2170_3_lut (.I0(n3211), .I1(n3265[19]), .I2(n3232), 
            .I3(GND_net), .O(n3310));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2170_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1687_2 (.CI(VCC_net), .I0(n2519), .I1(GND_net), 
            .CO(n3574));
    SB_LUT4 rem_4_i2166_3_lut (.I0(n3207), .I1(n3265[23]), .I2(n3232), 
            .I3(GND_net), .O(n3306));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1352_8_lut (.I0(GND_net), .I1(n2013), .I2(GND_net), 
            .I3(n3529), .O(n2077[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_78 (.I0(n2513), .I1(n2515), .I2(GND_net), .I3(GND_net), 
            .O(n4575));
    defparam i1_2_lut_adj_78.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_79 (.I0(n2514), .I1(n4575), .I2(n2517), .I3(n2516), 
            .O(n4579));
    defparam i1_4_lut_adj_79.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_i2171_3_lut (.I0(n3212), .I1(n3265[18]), .I2(n3232), 
            .I3(GND_net), .O(n3311));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2171_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_7 (.CI(n3790), .I0(GND_net), .I1(n1[5]), 
            .CO(n3791));
    SB_LUT4 rem_4_i2165_3_lut (.I0(n3206), .I1(n3265[24]), .I2(n3232), 
            .I3(GND_net), .O(n3305));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[4]), .I3(n3789), .O(n1_adj_498[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_22_lut (.I0(n3232), .I1(n3199), .I2(VCC_net), 
            .I3(n3705), .O(n3298)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_22_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_i2102_3_lut (.I0(n3111), .I1(n3166[20]), .I2(n3133), 
            .I3(GND_net), .O(n3210));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2102_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1955_3 (.CI(n3632), .I0(n2918), .I1(VCC_net), .CO(n3633));
    SB_LUT4 rem_4_i2100_3_lut (.I0(n3109), .I1(n3166[22]), .I2(n3133), 
            .I3(GND_net), .O(n3208));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2100_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2167_3_lut (.I0(n3208), .I1(n3265[22]), .I2(n3232), 
            .I3(GND_net), .O(n3307));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2172_3_lut (.I0(n3213), .I1(n3265[17]), .I2(n3232), 
            .I3(GND_net), .O(n3312));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_80 (.I0(n4579), .I1(n2510), .I2(n2519), .I3(n2518), 
            .O(n11_adj_473));   // verilog/eeprom.v(27[6:28])
    defparam i3_4_lut_adj_80.LUT_INIT = 16'heeec;
    SB_LUT4 i5_4_lut_adj_81 (.I0(n2507), .I1(n2508), .I2(n2506), .I3(n2509), 
            .O(n13_adj_474));   // verilog/eeprom.v(27[6:28])
    defparam i5_4_lut_adj_81.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_82 (.I0(n13_adj_474), .I1(n11_adj_473), .I2(n2512), 
            .I3(n2511), .O(n2539));   // verilog/eeprom.v(27[6:28])
    defparam i7_4_lut_adj_82.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2168_3_lut (.I0(n3209), .I1(n3265[21]), .I2(n3232), 
            .I3(GND_net), .O(n3308));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2168_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2169_rep_54_3_lut (.I0(n3210), .I1(n3265[20]), .I2(n3232), 
            .I3(GND_net), .O(n3309));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2169_rep_54_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2107_3_lut (.I0(n3116), .I1(n3166[15]), .I2(n3133), 
            .I3(GND_net), .O(n3215));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2161_3_lut (.I0(n3202), .I1(n3265[28]), .I2(n3232), 
            .I3(GND_net), .O(n3301));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2160_3_lut (.I0(n3201), .I1(n3265[29]), .I2(n3232), 
            .I3(GND_net), .O(n3300));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2159_3_lut (.I0(n3200), .I1(n3265[30]), .I2(n3232), 
            .I3(GND_net), .O(n3299));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2159_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i19_3_lut (.I0(delay_counter[18]), .I1(n1_adj_498[18]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2519));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1702_3_lut (.I0(n2519), .I1(n2572[18]), .I2(n2539), 
            .I3(GND_net), .O(n2618));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1702_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_9 (.CI(n3460), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n3461));
    SB_LUT4 rem_4_i1769_3_lut (.I0(n2618), .I1(n2671[18]), .I2(n2638), 
            .I3(GND_net), .O(n2717));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1836_3_lut (.I0(n2717), .I1(n2770[18]), .I2(n2737), 
            .I3(GND_net), .O(n2816));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[6]), 
            .I3(n3459), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i16_3_lut (.I0(delay_counter[15]), .I1(n1_adj_498[15]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n2819));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1906_3_lut (.I0(n2819), .I1(n2869[15]), .I2(n2836), 
            .I3(GND_net), .O(n2918));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1903_3_lut (.I0(n2816), .I1(n2869[18]), .I2(n2836), 
            .I3(GND_net), .O(n2915));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1620_14_lut (.I0(n2440), .I1(n2407), .I2(VCC_net), 
            .I3(n3573), .O(n2506)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY rem_4_add_1352_8 (.CI(n3529), .I0(n2013), .I1(GND_net), .CO(n3530));
    SB_CARRY delay_counter_288_add_4_8 (.CI(n3459), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n3460));
    SB_LUT4 rem_4_i1973_3_lut (.I0(n2918), .I1(n2968[15]), .I2(n2935), 
            .I3(GND_net), .O(n3017));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1973_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[5]), 
            .I3(n3458), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2095_3_lut (.I0(n3104), .I1(n3166[27]), .I2(n3133), 
            .I3(GND_net), .O(n3203));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2095_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1955_2_lut (.I0(GND_net), .I1(n2919), .I2(GND_net), 
            .I3(VCC_net), .O(n2968[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1955_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2096_3_lut (.I0(n3105), .I1(n3166[26]), .I2(n3133), 
            .I3(GND_net), .O(n3204));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2096_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1620_13_lut (.I0(GND_net), .I1(n2408), .I2(VCC_net), 
            .I3(n3572), .O(n2473[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1352_7_lut (.I0(GND_net), .I1(n2014), .I2(GND_net), 
            .I3(n3528), .O(n2077[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_21_lut (.I0(GND_net), .I1(n3200), .I2(VCC_net), 
            .I3(n3704), .O(n3265[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1955_2 (.CI(VCC_net), .I0(n2919), .I1(GND_net), 
            .CO(n3632));
    SB_CARRY rem_4_add_1352_7 (.CI(n3528), .I0(n2014), .I1(GND_net), .CO(n3529));
    SB_LUT4 rem_4_i1970_3_lut (.I0(n2915), .I1(n2968[18]), .I2(n2935), 
            .I3(GND_net), .O(n3014));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i1970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_83 (.I0(n2613), .I1(n2615), .I2(GND_net), .I3(GND_net), 
            .O(n4497));
    defparam i1_2_lut_adj_83.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_i2097_3_lut (.I0(n3106), .I1(n3166[25]), .I2(n3133), 
            .I3(GND_net), .O(n3205));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2163_3_lut (.I0(n3204), .I1(n3265[26]), .I2(n3232), 
            .I3(GND_net), .O(n3303));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2164_3_lut (.I0(n3205), .I1(n3265[25]), .I2(n3232), 
            .I3(GND_net), .O(n3304));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2162_3_lut (.I0(n3203), .I1(n3265[27]), .I2(n3232), 
            .I3(GND_net), .O(n3302));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2162_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2106_3_lut (.I0(n3115), .I1(n3166[16]), .I2(n3133), 
            .I3(GND_net), .O(n3214));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2108_3_lut (.I0(n3117), .I1(n3166[14]), .I2(n3133), 
            .I3(GND_net), .O(n3216));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2108_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2175_3_lut (.I0(n3216), .I1(n3265[14]), .I2(n3232), 
            .I3(GND_net), .O(n3315));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2175_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2173_3_lut (.I0(n3214), .I1(n3265[16]), .I2(n3232), 
            .I3(GND_net), .O(n3313));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_84 (.I0(n2614), .I1(n4497), .I2(n2617), .I3(n2616), 
            .O(n4501));
    defparam i1_4_lut_adj_84.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_85 (.I0(n2606), .I1(n2605), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_475));   // verilog/eeprom.v(27[6:28])
    defparam i1_2_lut_adj_85.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_86 (.I0(n2609), .I1(n4501), .I2(n2619), .I3(n2618), 
            .O(n12));   // verilog/eeprom.v(27[6:28])
    defparam i3_4_lut_adj_86.LUT_INIT = 16'heeea;
    SB_LUT4 i7_4_lut_adj_87 (.I0(n2610), .I1(n2612), .I2(n2611), .I3(n10_adj_475), 
            .O(n16));   // verilog/eeprom.v(27[6:28])
    defparam i7_4_lut_adj_87.LUT_INIT = 16'hfffe;
    SB_CARRY delay_counter_288_add_4_7 (.CI(n3458), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n3459));
    SB_LUT4 rem_4_mux_3_i12_3_lut (.I0(delay_counter[11]), .I1(n1_adj_498[11]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3219));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[4]), 
            .I3(n3457), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_6 (.CI(n3789), .I0(GND_net), .I1(n1[4]), 
            .CO(n3790));
    SB_LUT4 rem_4_unary_minus_2_add_3_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[3]), .I3(n3788), .O(n1_adj_498[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2156_21 (.CI(n3704), .I0(n3200), .I1(VCC_net), 
            .CO(n3705));
    SB_LUT4 rem_4_add_1888_18_lut (.I0(n2836), .I1(n2803), .I2(VCC_net), 
            .I3(n3631), .O(n2902)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_18_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_i2178_3_lut (.I0(n3219), .I1(n3265[11]), .I2(n3232), 
            .I3(GND_net), .O(n3318));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2178_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1620_13 (.CI(n3572), .I0(n2408), .I1(VCC_net), 
            .CO(n3573));
    SB_LUT4 rem_4_mux_3_i11_3_lut (.I0(delay_counter[10]), .I1(n1_adj_498[10]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3319));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1888_17_lut (.I0(GND_net), .I1(n2804), .I2(VCC_net), 
            .I3(n3630), .O(n2869[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_12_lut (.I0(GND_net), .I1(n2409), .I2(VCC_net), 
            .I3(n3571), .O(n2473[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2101_3_lut (.I0(n3110), .I1(n3166[21]), .I2(n3133), 
            .I3(GND_net), .O(n3209));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2101_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_5 (.CI(n3788), .I0(GND_net), .I1(n1[3]), 
            .CO(n3789));
    SB_LUT4 rem_4_unary_minus_2_add_3_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[2]), .I3(n3787), .O(n1_adj_498[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_20_lut (.I0(GND_net), .I1(n3201), .I2(VCC_net), 
            .I3(n3703), .O(n3265[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_17 (.CI(n3630), .I0(n2804), .I1(VCC_net), 
            .CO(n3631));
    SB_CARRY rem_4_add_1620_12 (.CI(n3571), .I0(n2409), .I1(VCC_net), 
            .CO(n3572));
    SB_LUT4 rem_4_add_1352_6_lut (.I0(GND_net), .I1(n2015), .I2(GND_net), 
            .I3(n3527), .O(n2077[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2099_3_lut (.I0(n3108), .I1(n3166[23]), .I2(n3133), 
            .I3(GND_net), .O(n3207));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2099_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_4_lut (.I0(n3112), .I1(n26_adj_466), .I2(n22_adj_465), 
            .I3(n3108), .O(n3133));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2094_3_lut (.I0(n3103), .I1(n3166[28]), .I2(n3133), 
            .I3(GND_net), .O(n3202));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2094_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2093_3_lut (.I0(n3102), .I1(n3166[29]), .I2(n3133), 
            .I3(GND_net), .O(n3201));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2093_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2092_3_lut (.I0(n3101), .I1(n3166[30]), .I2(n3133), 
            .I3(GND_net), .O(n3200));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2092_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1220_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[6]), 
            .I3(n1135), .O(n1912));
    defparam rem_4_i1220_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY delay_counter_288_add_4_6 (.CI(n3457), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n3458));
    SB_LUT4 i1_2_lut_adj_88 (.I0(n3213), .I1(n3215), .I2(GND_net), .I3(GND_net), 
            .O(n4611));
    defparam i1_2_lut_adj_88.LUT_INIT = 16'h8888;
    SB_LUT4 delay_counter_288_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[3]), 
            .I3(n3456), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_288_add_4_5 (.CI(n3456), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n3457));
    SB_LUT4 rem_4_add_1888_16_lut (.I0(GND_net), .I1(n2805), .I2(VCC_net), 
            .I3(n3629), .O(n2869[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_89 (.I0(n3214), .I1(n4611), .I2(n3217), .I3(n3216), 
            .O(n4615));
    defparam i1_4_lut_adj_89.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_add_1620_11_lut (.I0(GND_net), .I1(n2410), .I2(VCC_net), 
            .I3(n3570), .O(n2473[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut_adj_90 (.I0(n4615), .I1(n3210), .I2(n3219), .I3(n3218), 
            .O(n21_adj_477));   // verilog/eeprom.v(27[6:28])
    defparam i6_4_lut_adj_90.LUT_INIT = 16'heeec;
    SB_LUT4 i10_4_lut_adj_91 (.I0(n3203), .I1(n3204), .I2(n3208), .I3(n3206), 
            .O(n25_adj_478));   // verilog/eeprom.v(27[6:28])
    defparam i10_4_lut_adj_91.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_unary_minus_2_add_3_4 (.CI(n3787), .I0(GND_net), .I1(n1[2]), 
            .CO(n3788));
    SB_LUT4 i1_2_lut_adj_92 (.I0(n3205), .I1(n3199), .I2(GND_net), .I3(GND_net), 
            .O(n16_adj_479));   // verilog/eeprom.v(27[6:28])
    defparam i1_2_lut_adj_92.LUT_INIT = 16'heeee;
    SB_LUT4 rem_4_unary_minus_2_add_3_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[1]), .I3(n3786), .O(n1_adj_498[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2156_20 (.CI(n3703), .I0(n3201), .I1(VCC_net), 
            .CO(n3704));
    SB_LUT4 i9_4_lut_adj_93 (.I0(n3200), .I1(n3201), .I2(n3202), .I3(n3207), 
            .O(n24_adj_481));   // verilog/eeprom.v(27[6:28])
    defparam i9_4_lut_adj_93.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_unary_minus_2_add_3_3 (.CI(n3786), .I0(GND_net), .I1(n1[1]), 
            .CO(n3787));
    SB_LUT4 i13_4_lut_adj_94 (.I0(n25_adj_478), .I1(n21_adj_477), .I2(n3212), 
            .I3(n3209), .O(n28_adj_482));   // verilog/eeprom.v(27[6:28])
    defparam i13_4_lut_adj_94.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[0]), .I3(VCC_net), .O(n1_adj_498[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2156_19_lut (.I0(GND_net), .I1(n3202), .I2(VCC_net), 
            .I3(n3702), .O(n3265[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_16 (.CI(n3629), .I0(n2805), .I1(VCC_net), 
            .CO(n3630));
    SB_LUT4 rem_4_add_1888_15_lut (.I0(GND_net), .I1(n2806), .I2(VCC_net), 
            .I3(n3628), .O(n2869[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_4_lut (.I0(n3211), .I1(n28_adj_482), .I2(n24_adj_481), 
            .I3(n16_adj_479), .O(n3232));   // verilog/eeprom.v(27[6:28])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2036_3_lut (.I0(n3013), .I1(n3067[19]), .I2(n3034), 
            .I3(GND_net), .O(n3112));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2109_3_lut (.I0(n3118), .I1(n3166[13]), .I2(n3133), 
            .I3(GND_net), .O(n3217));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1224_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[2]), 
            .I3(n1139), .O(n1916));
    defparam rem_4_i1224_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 rem_4_i2176_3_lut (.I0(n3217), .I1(n3265[13]), .I2(n3232), 
            .I3(GND_net), .O(n3316));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2176_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2174_3_lut (.I0(n3215), .I1(n3265[15]), .I2(n3232), 
            .I3(GND_net), .O(n3314));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2174_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4030_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[4]), 
            .I3(n1137), .O(n1914));
    defparam i4030_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 delay_counter_288_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[2]), 
            .I3(n3455), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_95 (.I0(n3313), .I1(n3315), .I2(GND_net), .I3(GND_net), 
            .O(n4719));
    defparam i1_2_lut_adj_95.LUT_INIT = 16'h8888;
    SB_CARRY delay_counter_288_add_4_4 (.CI(n3455), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n3456));
    SB_LUT4 rem_4_i1225_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[1]), 
            .I3(n1140), .O(n1917));
    defparam rem_4_i1225_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut_adj_96 (.I0(n3314), .I1(n3317), .I2(n3316), .I3(GND_net), 
            .O(n4721));
    defparam i1_3_lut_adj_96.LUT_INIT = 16'h8080;
    SB_CARRY rem_4_unary_minus_2_add_3_2 (.CI(VCC_net), .I0(GND_net), .I1(n1[0]), 
            .CO(n3786));
    SB_LUT4 rem_4_add_2473_16_lut (.I0(n4924), .I1(n1[31]), .I2(n3711_adj_456), 
            .I3(n3785), .O(number_of_bytes_7__N_68[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_16_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_19 (.CI(n3702), .I0(n3202), .I1(VCC_net), 
            .CO(n3703));
    SB_LUT4 i1_4_lut_adj_97 (.I0(n4721), .I1(n3319), .I2(n4719), .I3(n3318), 
            .O(n4151));
    defparam i1_4_lut_adj_97.LUT_INIT = 16'ha080;
    SB_CARRY rem_4_add_1888_15 (.CI(n3628), .I0(n2806), .I1(VCC_net), 
            .CO(n3629));
    SB_CARRY rem_4_add_1352_6 (.CI(n3527), .I0(n2015), .I1(GND_net), .CO(n3528));
    SB_LUT4 rem_4_add_1888_14_lut (.I0(GND_net), .I1(n2807), .I2(VCC_net), 
            .I3(n3627), .O(n2869[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_98 (.I0(n3309), .I1(n3308), .I2(n3312), .I3(n3307), 
            .O(n28_adj_484));
    defparam i12_4_lut_adj_98.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_1352_5_lut (.I0(GND_net), .I1(n2016), .I2(GND_net), 
            .I3(n3526), .O(n2077[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut_adj_99 (.I0(n3302), .I1(n3304), .I2(n3303), .I3(n4151), 
            .O(n26_adj_485));
    defparam i10_4_lut_adj_99.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_100 (.I0(n3305), .I1(n3311), .I2(n3306), .I3(n3310), 
            .O(n27_adj_486));
    defparam i11_4_lut_adj_100.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_2473_15_lut (.I0(n4921), .I1(n1[31]), .I2(n3712_adj_444), 
            .I3(n3784), .O(number_of_bytes_7__N_68[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_15_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_15 (.CI(n3784), .I0(n1[31]), .I1(n3712_adj_444), 
            .CO(n3785));
    SB_LUT4 rem_4_add_2156_18_lut (.I0(GND_net), .I1(n3203), .I2(VCC_net), 
            .I3(n3701), .O(n3265[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_14 (.CI(n3627), .I0(n2807), .I1(VCC_net), 
            .CO(n3628));
    SB_CARRY rem_4_add_1620_11 (.CI(n3570), .I0(n2410), .I1(VCC_net), 
            .CO(n3571));
    SB_LUT4 rem_4_add_1888_13_lut (.I0(GND_net), .I1(n2808), .I2(VCC_net), 
            .I3(n3626), .O(n2869[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9_4_lut_adj_101 (.I0(n3299), .I1(n3300), .I2(n3298), .I3(n3301), 
            .O(n25_adj_487));
    defparam i9_4_lut_adj_101.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25_adj_487), .I1(n27_adj_486), .I2(n26_adj_485), 
            .I3(n28_adj_484), .O(n3331));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2177_3_lut (.I0(n3218), .I1(n3265[12]), .I2(n3232), 
            .I3(GND_net), .O(n3317));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2244_3_lut (.I0(n3317), .I1(n3364[12]), .I2(n3331), 
            .I3(GND_net), .O(n3416));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2244_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 delay_counter_288_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[1]), 
            .I3(n3454), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2245_3_lut (.I0(n3318), .I1(n3364[11]), .I2(n3331), 
            .I3(GND_net), .O(n3417));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2245_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_3 (.CI(n3454), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n3455));
    SB_LUT4 delay_counter_288_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_288_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2242_3_lut (.I0(n3315), .I1(n3364[14]), .I2(n3331), 
            .I3(GND_net), .O(n3414));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2242_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1620_10_lut (.I0(GND_net), .I1(n2411), .I2(VCC_net), 
            .I3(n3569), .O(n2473[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2226_3_lut (.I0(n3299), .I1(n3364[30]), .I2(n3331), 
            .I3(GND_net), .O(n3398));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_102 (.I0(n3398), .I1(n3397), .I2(GND_net), .I3(GND_net), 
            .O(n18_adj_488));   // verilog/eeprom.v(27[6:28])
    defparam i1_2_lut_adj_102.LUT_INIT = 16'heeee;
    SB_LUT4 rem_4_add_2473_14_lut (.I0(n4918), .I1(n1[31]), .I2(n3713_adj_443), 
            .I3(n3783), .O(number_of_bytes_7__N_68[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_14_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_18 (.CI(n3701), .I0(n3203), .I1(VCC_net), 
            .CO(n3702));
    SB_LUT4 i1_2_lut_adj_103 (.I0(n3413), .I1(n3415), .I2(GND_net), .I3(GND_net), 
            .O(n4687));
    defparam i1_2_lut_adj_103.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_104 (.I0(n3414), .I1(n3417), .I2(n3416), .I3(GND_net), 
            .O(n4689));
    defparam i1_3_lut_adj_104.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_105 (.I0(n4689), .I1(n3419), .I2(n4687), .I3(n3418), 
            .O(n4144));
    defparam i1_4_lut_adj_105.LUT_INIT = 16'ha080;
    SB_LUT4 i13_4_lut_adj_106 (.I0(n3411), .I1(n3409), .I2(n3412), .I3(n18_adj_488), 
            .O(n30_adj_489));   // verilog/eeprom.v(27[6:28])
    defparam i13_4_lut_adj_106.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_107 (.I0(n3403), .I1(n3405), .I2(n3404), .I3(n4144), 
            .O(n28_adj_490));   // verilog/eeprom.v(27[6:28])
    defparam i11_4_lut_adj_107.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_108 (.I0(n3406), .I1(n3407), .I2(n3408), .I3(n3410), 
            .O(n29_adj_491));   // verilog/eeprom.v(27[6:28])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i1226_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[0]), 
            .I3(n1141), .O(n1918));
    defparam rem_4_i1226_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i10_4_lut_adj_109 (.I0(n3399), .I1(n3401), .I2(n3400), .I3(n3402), 
            .O(n27_adj_492));   // verilog/eeprom.v(27[6:28])
    defparam i10_4_lut_adj_109.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut (.I0(n27_adj_492), .I1(n29_adj_491), .I2(n28_adj_490), 
            .I3(n30_adj_489), .O(n3430));   // verilog/eeprom.v(27[6:28])
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2228_3_lut (.I0(n3301), .I1(n3364[28]), .I2(n3331), 
            .I3(GND_net), .O(n3400));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2295_3_lut (.I0(n3400), .I1(n35[28]), .I2(n3430), .I3(GND_net), 
            .O(n3499));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2295_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2294_3_lut (.I0(n3399), .I1(n35[29]), .I2(n3430), .I3(GND_net), 
            .O(n3498));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2294_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2103_3_lut (.I0(n3112), .I1(n3166[19]), .I2(n3133), 
            .I3(GND_net), .O(n3211));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i3_3_lut (.I0(delay_counter[2]), .I1(n1_adj_498[2]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3723_adj_334));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i3_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2293_3_lut (.I0(n3398), .I1(n35[30]), .I2(n3430), .I3(GND_net), 
            .O(n3497));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2293_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY delay_counter_288_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n3454));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i32_1_lut (.I0(delay_counter[31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_unary_minus_2_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_937_8_lut (.I0(GND_net), .I1(n1135), .I2(GND_net), .I3(n3453), 
            .O(n1336[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut_adj_110 (.I0(n3497), .I1(n3498), .I2(n3496), .I3(n3499), 
            .O(n28_adj_493));   // verilog/eeprom.v(27[6:28])
    defparam i10_4_lut_adj_110.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_111 (.I0(n3513_adj_366), .I1(n3515_adj_370), .I2(GND_net), 
            .I3(GND_net), .O(n4727));
    defparam i1_2_lut_adj_111.LUT_INIT = 16'h8888;
    SB_LUT4 add_937_7_lut (.I0(n4733), .I1(n1256), .I2(GND_net), .I3(n3452), 
            .O(n4734)) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_7_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2156_17_lut (.I0(GND_net), .I1(n3204), .I2(VCC_net), 
            .I3(n3700), .O(n3265[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_112 (.I0(number_of_bytes_7__N_68[2]), .I1(number_of_bytes_7__N_68[1]), 
            .I2(number_of_bytes_7__N_68[0]), .I3(GND_net), .O(n4295));   // verilog/eeprom.v(27[6:31])
    defparam i1_3_lut_adj_112.LUT_INIT = 16'hfefe;
    SB_CARRY rem_4_add_2156_17 (.CI(n3700), .I0(n3204), .I1(VCC_net), 
            .CO(n3701));
    SB_LUT4 rem_4_add_2156_16_lut (.I0(GND_net), .I1(n3205), .I2(VCC_net), 
            .I3(n3699), .O(n3265[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_113 (.I0(number_of_bytes_7__N_68[5]), .I1(number_of_bytes_7__N_68[4]), 
            .I2(number_of_bytes_7__N_68[3]), .I3(n4295), .O(n4301));   // verilog/eeprom.v(27[6:31])
    defparam i1_4_lut_adj_113.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_114 (.I0(n3514_adj_368), .I1(n3517_adj_374), .I2(n3516_adj_372), 
            .I3(GND_net), .O(n4729));
    defparam i1_3_lut_adj_114.LUT_INIT = 16'h8080;
    SB_CARRY rem_4_add_1888_13 (.CI(n3626), .I0(n2808), .I1(VCC_net), 
            .CO(n3627));
    SB_CARRY rem_4_add_2473_14 (.CI(n3783), .I0(n1[31]), .I1(n3713_adj_443), 
            .CO(n3784));
    SB_LUT4 rem_4_add_2473_13_lut (.I0(n4915), .I1(n1[31]), .I2(n3714_adj_442), 
            .I3(n3782), .O(number_of_bytes_7__N_68[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_13_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_4_lut_adj_115 (.I0(n4729), .I1(n3519_adj_379), .I2(n4727), 
            .I3(n3518_adj_376), .O(n4137));
    defparam i1_4_lut_adj_115.LUT_INIT = 16'ha080;
    SB_CARRY rem_4_add_2473_13 (.CI(n3782), .I0(n1[31]), .I1(n3714_adj_442), 
            .CO(n3783));
    SB_CARRY rem_4_add_2156_16 (.CI(n3699), .I0(n3205), .I1(VCC_net), 
            .CO(n3700));
    SB_LUT4 rem_4_add_1888_12_lut (.I0(GND_net), .I1(n2809), .I2(VCC_net), 
            .I3(n3625), .O(n2869[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_12 (.CI(n3625), .I0(n2809), .I1(VCC_net), 
            .CO(n3626));
    SB_LUT4 rem_4_add_2156_15_lut (.I0(GND_net), .I1(n3206), .I2(VCC_net), 
            .I3(n3698), .O(n3265[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_12_lut (.I0(n4912), .I1(n1[31]), .I2(n3715_adj_441), 
            .I3(n3781), .O(number_of_bytes_7__N_68[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_12_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_12 (.CI(n3781), .I0(n1[31]), .I1(n3715_adj_441), 
            .CO(n3782));
    SB_CARRY rem_4_add_2156_15 (.CI(n3698), .I0(n3206), .I1(VCC_net), 
            .CO(n3699));
    SB_LUT4 rem_4_add_1888_11_lut (.I0(GND_net), .I1(n2810), .I2(VCC_net), 
            .I3(n3624), .O(n2869[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_3_lut (.I0(n3508), .I1(n28_adj_493), .I2(n3512_adj_364), 
            .I3(GND_net), .O(n32_adj_494));   // verilog/eeprom.v(27[6:28])
    defparam i14_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY rem_4_add_1620_10 (.CI(n3569), .I0(n2411), .I1(VCC_net), 
            .CO(n3570));
    SB_CARRY rem_4_add_1352_5 (.CI(n3526), .I0(n2016), .I1(GND_net), .CO(n3527));
    SB_LUT4 rem_4_add_2473_11_lut (.I0(n4909), .I1(n1[31]), .I2(n3716_adj_439), 
            .I3(n3780), .O(number_of_bytes_7__N_68[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_11_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_11 (.CI(n3780), .I0(n1[31]), .I1(n3716_adj_439), 
            .CO(n3781));
    SB_LUT4 rem_4_add_2473_10_lut (.I0(n4906), .I1(n1[31]), .I2(n3717_adj_438), 
            .I3(n3779), .O(number_of_bytes_7__N_68[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_10_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_1620_9_lut (.I0(GND_net), .I1(n2412), .I2(VCC_net), 
            .I3(n3568), .O(n2473[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2473_10 (.CI(n3779), .I0(n1[31]), .I1(n3717_adj_438), 
            .CO(n3780));
    SB_LUT4 rem_4_add_1352_4_lut (.I0(GND_net), .I1(n2017), .I2(GND_net), 
            .I3(n3525), .O(n2077[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_116 (.I0(n4137), .I1(n3507), .I2(n3504), .I3(n3511_adj_362), 
            .O(n30_adj_495));   // verilog/eeprom.v(27[6:28])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_2473_9_lut (.I0(n4903), .I1(n1[31]), .I2(n4766), 
            .I3(n3778), .O(number_of_bytes_7__N_68[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_9_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2156_14_lut (.I0(GND_net), .I1(n3207), .I2(VCC_net), 
            .I3(n3697), .O(n3265[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1888_11 (.CI(n3624), .I0(n2810), .I1(VCC_net), 
            .CO(n3625));
    SB_CARRY rem_4_add_1620_9 (.CI(n3568), .I0(n2412), .I1(VCC_net), .CO(n3569));
    SB_LUT4 i13_4_lut_adj_117 (.I0(n3505), .I1(n3506), .I2(n3510_adj_360), 
            .I3(n3509), .O(n31_adj_496));   // verilog/eeprom.v(27[6:28])
    defparam i13_4_lut_adj_117.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2473_9 (.CI(n3778), .I0(n1[31]), .I1(n4766), .CO(n3779));
    SB_CARRY rem_4_add_2156_14 (.CI(n3697), .I0(n3207), .I1(VCC_net), 
            .CO(n3698));
    SB_LUT4 rem_4_add_1888_10_lut (.I0(GND_net), .I1(n2811), .I2(VCC_net), 
            .I3(n3623), .O(n2869[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_8_lut (.I0(GND_net), .I1(n2413), .I2(GND_net), 
            .I3(n3567), .O(n2473[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_937_7 (.CI(n3452), .I0(n1256), .I1(GND_net), .CO(n3453));
    SB_LUT4 rem_4_add_2473_8_lut (.I0(delay_counter[6]), .I1(n1[31]), .I2(n3719_adj_436), 
            .I3(n3777), .O(number_of_bytes_7__N_68[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_8_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_1888_10 (.CI(n3623), .I0(n2811), .I1(VCC_net), 
            .CO(n3624));
    SB_LUT4 add_937_6_lut (.I0(GND_net), .I1(n1137), .I2(GND_net), .I3(n3451), 
            .O(n1336[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_118 (.I0(n3500), .I1(n3502), .I2(n3501), .I3(n3503), 
            .O(n29_adj_497));   // verilog/eeprom.v(27[6:28])
    defparam i11_4_lut_adj_118.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_119 (.I0(number_of_bytes_7__N_68[8]), .I1(number_of_bytes_7__N_68[7]), 
            .I2(number_of_bytes_7__N_68[6]), .I3(n4301), .O(n4307));   // verilog/eeprom.v(27[6:31])
    defparam i1_4_lut_adj_119.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(n29_adj_497), .I1(n31_adj_496), .I2(n30_adj_495), 
            .I3(n32_adj_494), .O(n3529_adj_336));   // verilog/eeprom.v(27[6:28])
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2473_8 (.CI(n3777), .I0(n1[31]), .I1(n3719_adj_436), 
            .CO(n3778));
    SB_LUT4 rem_4_mux_3_i1_3_lut (.I0(delay_counter[0]), .I1(n1_adj_498[0]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n1166));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i1_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY add_937_6 (.CI(n3451), .I0(n1137), .I1(GND_net), .CO(n3452));
    SB_LUT4 rem_4_add_2156_13_lut (.I0(GND_net), .I1(n3208), .I2(VCC_net), 
            .I3(n3696), .O(n3265[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_1352_4 (.CI(n3525), .I0(n2017), .I1(GND_net), .CO(n3526));
    SB_LUT4 rem_4_add_1888_9_lut (.I0(GND_net), .I1(n2812), .I2(VCC_net), 
            .I3(n3622), .O(n2869[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_937_5_lut (.I0(GND_net), .I1(n1138), .I2(GND_net), .I3(n3450), 
            .O(n1336[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_937_5 (.CI(n3450), .I0(n1138), .I1(GND_net), .CO(n3451));
    SB_LUT4 rem_4_i2105_3_lut (.I0(n3114), .I1(n3166[17]), .I2(n3133), 
            .I3(GND_net), .O(n3213));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_1352_3_lut (.I0(GND_net), .I1(n2018), .I2(VCC_net), 
            .I3(n3524), .O(n2077[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2104_3_lut (.I0(n3113), .I1(n3166[18]), .I2(n3133), 
            .I3(GND_net), .O(n3212));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i1223_3_lut_4_lut (.I0(n4405), .I1(n1256), .I2(n1336[3]), 
            .I3(n1138), .O(n1915));
    defparam rem_4_i1223_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 rem_4_mux_3_i2_3_lut (.I0(delay_counter[1]), .I1(n1_adj_498[1]), 
            .I2(delay_counter[31]), .I3(GND_net), .O(n3724_adj_335));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_mux_3_i2_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2156_13 (.CI(n3696), .I0(n3208), .I1(VCC_net), 
            .CO(n3697));
    SB_CARRY rem_4_add_1620_8 (.CI(n3567), .I0(n2413), .I1(GND_net), .CO(n3568));
    SB_LUT4 rem_4_i2029_3_lut (.I0(n3006), .I1(n3067[26]), .I2(n3034), 
            .I3(GND_net), .O(n3105));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2029_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1888_9 (.CI(n3622), .I0(n2812), .I1(VCC_net), .CO(n3623));
    SB_LUT4 rem_4_add_2473_7_lut (.I0(delay_counter[5]), .I1(n1[31]), .I2(n3720_adj_435), 
            .I3(n3776), .O(number_of_bytes_7__N_68[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_7_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2473_7 (.CI(n3776), .I0(n1[31]), .I1(n3720_adj_435), 
            .CO(n3777));
    SB_LUT4 rem_4_add_2156_12_lut (.I0(GND_net), .I1(n3209), .I2(VCC_net), 
            .I3(n3695), .O(n3265[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2473_6_lut (.I0(delay_counter[4]), .I1(n1[31]), .I2(n3721_adj_434), 
            .I3(n3775), .O(number_of_bytes_7__N_68[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_6_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_1888_8_lut (.I0(GND_net), .I1(n2813), .I2(GND_net), 
            .I3(n3621), .O(n2869[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_1620_7_lut (.I0(GND_net), .I1(n2414), .I2(GND_net), 
            .I3(n3566), .O(n2473[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2028_3_lut (.I0(n3005), .I1(n3067[27]), .I2(n3034), 
            .I3(GND_net), .O(n3104));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2028_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1352_3 (.CI(n3524), .I0(n2018), .I1(VCC_net), .CO(n3525));
    SB_CARRY rem_4_add_1620_7 (.CI(n3566), .I0(n2414), .I1(GND_net), .CO(n3567));
    SB_LUT4 rem_4_i2040_3_lut (.I0(n3017), .I1(n3067[15]), .I2(n3034), 
            .I3(GND_net), .O(n3116));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2040_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_1888_8 (.CI(n3621), .I0(n2813), .I1(GND_net), .CO(n3622));
    SB_LUT4 rem_4_add_1888_7_lut (.I0(GND_net), .I1(n2814), .I2(GND_net), 
            .I3(n3620), .O(n2869[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1888_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2041_3_lut (.I0(n3018), .I1(n3067[14]), .I2(n3034), 
            .I3(GND_net), .O(n3117));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2041_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2156_12 (.CI(n3695), .I0(n3209), .I1(VCC_net), 
            .CO(n3696));
    SB_CARRY rem_4_add_2473_6 (.CI(n3775), .I0(n1[31]), .I1(n3721_adj_434), 
            .CO(n3776));
    SB_LUT4 rem_4_i2038_3_lut (.I0(n3015), .I1(n3067[17]), .I2(n3034), 
            .I3(GND_net), .O(n3114));   // verilog/eeprom.v(27[6:28])
    defparam rem_4_i2038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2156_11_lut (.I0(GND_net), .I1(n3210), .I2(VCC_net), 
            .I3(n3694), .O(n3265[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2156_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_120 (.I0(number_of_bytes_7__N_68[11]), .I1(number_of_bytes_7__N_68[10]), 
            .I2(number_of_bytes_7__N_68[9]), .I3(n4307), .O(n4313));   // verilog/eeprom.v(27[6:31])
    defparam i1_4_lut_adj_120.LUT_INIT = 16'hfffe;
    SB_LUT4 i4042_4_lut (.I0(number_of_bytes_7__N_68[13]), .I1(number_of_bytes_7__N_68[14]), 
            .I2(number_of_bytes_7__N_68[12]), .I3(n4313), .O(number_of_bytes_7__N_67));   // verilog/eeprom.v(27[6:31])
    defparam i4042_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 rem_4_add_2473_5_lut (.I0(delay_counter[3]), .I1(n1[31]), .I2(n3722_adj_433), 
            .I3(n3774), .O(number_of_bytes_7__N_68[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_5_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2156_11 (.CI(n3694), .I0(n3210), .I1(VCC_net), 
            .CO(n3695));
    SB_CARRY rem_4_add_1888_7 (.CI(n3620), .I0(n2814), .I1(GND_net), .CO(n3621));
    SB_LUT4 rem_4_add_1620_6_lut (.I0(GND_net), .I1(n2415), .I2(GND_net), 
            .I3(n3565), .O(n2473[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1620_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2473_5 (.CI(n3774), .I0(n1[31]), .I1(n3722_adj_433), 
            .CO(n3775));
    SB_LUT4 rem_4_add_1352_2_lut (.I0(GND_net), .I1(n2019), .I2(GND_net), 
            .I3(VCC_net), .O(n2077[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_1352_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_937_4_lut (.I0(GND_net), .I1(n1139), .I2(GND_net), .I3(n3449), 
            .O(n1336[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_937_4 (.CI(n3449), .I0(n1139), .I1(GND_net), .CO(n3450));
    SB_LUT4 add_937_3_lut (.I0(GND_net), .I1(n1140), .I2(VCC_net), .I3(n3448), 
            .O(n1336[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_937_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_937_2 (.CI(VCC_net), .I0(n1141), .I1(GND_net), .CO(n3448));
    SB_LUT4 rem_4_add_2473_4_lut (.I0(delay_counter[2]), .I1(n1[31]), .I2(n3723_adj_334), 
            .I3(n3773), .O(number_of_bytes_7__N_68[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2473_4_lut.LUT_INIT = 16'h8BB8;
    
endmodule
