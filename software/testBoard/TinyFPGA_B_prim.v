// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jan 29 16:49:39 2020
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
    
    wire GND_net, VCC_net, LED_c, n3748;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[16:29])
    
    wire n3747, n166, n164, n162, n160, n158, scl, n168, n170, 
        n172, n3746, sda_enable, scl_enable, n26, n25, n24, n23, 
        n22, n21, n20, n19, n18, n17, n16, n15, n14, n13, 
        n12, n11, n10, n9, n8, n7, n6;
    wire [7:0]state;   // verilog/i2c_controller.v(32[12:17])
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(33[12:22])
    
    wire sda_out, n174, n4281, n3745, n1731, scl_enable_N_248;
    wire [7:0]state_7__N_155;
    
    wire n4;
    wire [7:0]state_7__N_171;
    
    wire n3744, n3743, n3742, n1616, n1730, n1729, n1728, n1727, 
        n1726, n1725, n4213, n3741, n3740, n1621, n135, n134, 
        n133, n132, n131, n130, n129, n128, n127, n126, n125, 
        n124, n123, n122, n121, n120, n119, n118, n117, n116, 
        n652, n4_adj_395, n3739, n115, n114, n113, n112, n111, 
        n110, n3738, n1722, n4_adj_396, n3737, n4273, n4323, n3379, 
        n11_adj_397, n4239, n4219, n3736, n28, n4831, n4862, n4860, 
        n4859, n51, n3735, n4271, n4278, n4798, n4797, n4863, 
        n4852, n1737, n4433, n1734, n4211, n3756, n3755, n3754, 
        n3753, n3752, n3751, n3750, n3749, n3734, n3733, n3732;
    
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
          .D_OUT_0(state_7__N_171[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF blink_counter_307__i0 (.Q(n26), .C(CLK_N), .D(n135));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i1095_4_lut (.I0(scl_enable_N_248), .I1(n4852), .I2(state[3]), 
            .I3(n4273), .O(n1737));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1095_4_lut.LUT_INIT = 16'ha0a8;
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i19_4_lut (.I0(n4271), .I1(n4323), .I2(state[2]), .I3(state[0]), 
            .O(n4219));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i19_4_lut.LUT_INIT = 16'hc2f0;
    SB_LUT4 blink_counter_307_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n3737), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1080_4_lut (.I0(saved_addr[0]), .I1(n4281), .I2(n11_adj_397), 
            .I3(scl_enable_N_248), .O(n1722));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1080_4_lut.LUT_INIT = 16'haa3a;
    SB_CARRY blink_counter_307_add_4_8 (.CI(n3737), .I0(GND_net), .I1(n20), 
            .CO(n3738));
    SB_LUT4 blink_counter_307_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n3736), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_7 (.CI(n3736), .I0(GND_net), .I1(n21), 
            .CO(n3737));
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
    SB_LUT4 i54_4_lut (.I0(state[1]), .I1(n4271), .I2(state[2]), .I3(state[3]), 
            .O(n51));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i54_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i53_4_lut (.I0(n4831), .I1(n51), .I2(state[0]), .I3(n4323), 
            .O(n4211));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i53_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i3826_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4798));
    defparam i3826_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i3825_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n4797));
    defparam i3825_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 blink_counter_307_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22), 
            .I3(n3735), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3827_3_lut (.I0(n4797), .I1(n4798), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i3827_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY blink_counter_307_add_4_6 (.CI(n3735), .I0(GND_net), .I1(n22), 
            .CO(n3736));
    SB_LUT4 blink_counter_307_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n3734), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_5 (.CI(n3734), .I0(GND_net), .I1(n23), 
            .CO(n3735));
    SB_LUT4 i3930_2_lut (.I0(state[3]), .I1(state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n4859));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3930_2_lut.LUT_INIT = 16'h4444;
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
    SB_LUT4 i3899_3_lut (.I0(state[0]), .I1(n4323), .I2(n652), .I3(GND_net), 
            .O(n4863));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3899_3_lut.LUT_INIT = 16'hdcdc;
    SB_LUT4 i1087_4_lut (.I0(state_7__N_171[3]), .I1(n166), .I2(n4), .I3(n1621), 
            .O(n1729));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1087_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i3893_4_lut (.I0(n652), .I1(state[2]), .I2(state[0]), .I3(n4323), 
            .O(n4862));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3893_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i1_4_lut (.I0(state[2]), .I1(n4859), .I2(n4860), .I3(state[1]), 
            .O(n28));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1_4_lut_adj_43 (.I0(n28), .I1(n4862), .I2(n4863), .I3(state[1]), 
            .O(n4213));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_4_lut_adj_43.LUT_INIT = 16'hfaee;
    SB_LUT4 i1083_4_lut (.I0(state_7__N_171[3]), .I1(n158), .I2(n3379), 
            .I3(n1621), .O(n1725));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1083_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1084_4_lut (.I0(state_7__N_171[3]), .I1(n160), .I2(n3379), 
            .I3(n1616), .O(n1726));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1084_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1085_4_lut (.I0(state_7__N_171[3]), .I1(n162), .I2(n4_adj_395), 
            .I3(n1621), .O(n1727));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1085_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1086_4_lut (.I0(state_7__N_171[3]), .I1(n164), .I2(n4_adj_395), 
            .I3(n1616), .O(n1728));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1086_4_lut.LUT_INIT = 16'hccca;
    SB_DFF blink_counter_307__i1 (.Q(n25), .C(CLK_N), .D(n134));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 i1089_4_lut (.I0(state_7__N_171[3]), .I1(n170), .I2(n4_adj_396), 
            .I3(n1621), .O(n1731));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1089_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i3932_3_lut_4_lut (.I0(sda_out), .I1(sda_enable), .I2(state[0]), 
            .I3(saved_addr[0]), .O(n4860));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3932_3_lut_4_lut.LUT_INIT = 16'h7f0f;
    SB_LUT4 i1_4_lut_adj_44 (.I0(n4281), .I1(saved_addr[7]), .I2(n4433), 
            .I3(n4278), .O(n4239));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_4_lut_adj_44.LUT_INIT = 16'h5fdd;
    SB_LUT4 i1_2_lut_3_lut (.I0(state[1]), .I1(sda_out), .I2(sda_enable), 
            .I3(GND_net), .O(n4271));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_DFF blink_counter_307__i2 (.Q(n24), .C(CLK_N), .D(n133));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i3 (.Q(n23), .C(CLK_N), .D(n132));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i4 (.Q(n22), .C(CLK_N), .D(n131));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i5 (.Q(n21), .C(CLK_N), .D(n130));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i6 (.Q(n20), .C(CLK_N), .D(n129));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i7 (.Q(n19), .C(CLK_N), .D(n128));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i8 (.Q(n18), .C(CLK_N), .D(n127));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i9 (.Q(n17), .C(CLK_N), .D(n126));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i10 (.Q(n16), .C(CLK_N), .D(n125));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i11 (.Q(n15), .C(CLK_N), .D(n124));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i12 (.Q(n14), .C(CLK_N), .D(n123));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i13 (.Q(n13), .C(CLK_N), .D(n122));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i14 (.Q(n12), .C(CLK_N), .D(n121));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i15 (.Q(n11), .C(CLK_N), .D(n120));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i16 (.Q(n10), .C(CLK_N), .D(n119));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i17 (.Q(n9), .C(CLK_N), .D(n118));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i18 (.Q(n8), .C(CLK_N), .D(n117));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i19 (.Q(n7), .C(CLK_N), .D(n116));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i20 (.Q(n6), .C(CLK_N), .D(n115));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i21 (.Q(blink_counter[21]), .C(CLK_N), .D(n114));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i22 (.Q(blink_counter[22]), .C(CLK_N), .D(n113));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i23 (.Q(blink_counter[23]), .C(CLK_N), .D(n112));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i24 (.Q(blink_counter[24]), .C(CLK_N), .D(n111));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_DFF blink_counter_307__i25 (.Q(blink_counter[25]), .C(CLK_N), .D(n110));   // verilog/TinyFPGA_B.v(45[26:43])
    SB_LUT4 blink_counter_307_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n3733), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_4 (.CI(n3733), .I0(GND_net), .I1(n24), 
            .CO(n3734));
    SB_LUT4 blink_counter_307_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n3732), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_3 (.CI(n3732), .I0(GND_net), .I1(n25), 
            .CO(n3733));
    SB_LUT4 blink_counter_307_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26), 
            .I3(VCC_net), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n3732));
    SB_LUT4 i1088_4_lut (.I0(state_7__N_171[3]), .I1(n168), .I2(n4), .I3(n1616), 
            .O(n1730));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1088_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 blink_counter_307_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n3756), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_307_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n3755), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_26 (.CI(n3755), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n3756));
    SB_LUT4 blink_counter_307_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n3754), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_25 (.CI(n3754), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n3755));
    SB_LUT4 blink_counter_307_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n3753), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_24 (.CI(n3753), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n3754));
    SB_LUT4 blink_counter_307_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n3752), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_23 (.CI(n3752), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n3753));
    SB_LUT4 blink_counter_307_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6), .I3(n3751), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_22 (.CI(n3751), .I0(GND_net), .I1(n6), 
            .CO(n3752));
    SB_LUT4 blink_counter_307_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n3750), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(state_7__N_155[0]), .I1(scl_enable_N_248), 
            .I2(state[3]), .I3(state[0]), .O(n4278));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h2002;
    SB_CARRY blink_counter_307_add_4_21 (.CI(n3750), .I0(GND_net), .I1(n7), 
            .CO(n3751));
    SB_LUT4 blink_counter_307_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n3749), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_20 (.CI(n3749), .I0(GND_net), .I1(n8), 
            .CO(n3750));
    SB_LUT4 blink_counter_307_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n3748), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_19 (.CI(n3748), .I0(GND_net), .I1(n9), 
            .CO(n3749));
    SB_LUT4 blink_counter_307_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10), .I3(n3747), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3896_4_lut_4_lut (.I0(state_7__N_155[0]), .I1(scl_enable_N_248), 
            .I2(state[3]), .I3(n652), .O(n4831));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3896_4_lut_4_lut.LUT_INIT = 16'h020e;
    SB_CARRY blink_counter_307_add_4_18 (.CI(n3747), .I0(GND_net), .I1(n10), 
            .CO(n3748));
    SB_LUT4 blink_counter_307_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n3746), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_17 (.CI(n3746), .I0(GND_net), .I1(n11), 
            .CO(n3747));
    SB_LUT4 blink_counter_307_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n3745), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_16 (.CI(n3745), .I0(GND_net), .I1(n12), 
            .CO(n3746));
    SB_LUT4 blink_counter_307_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n3744), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_15 (.CI(n3744), .I0(GND_net), .I1(n13), 
            .CO(n3745));
    SB_LUT4 blink_counter_307_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14), .I3(n3743), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3892_3_lut_4_lut (.I0(state[2]), .I1(state[0]), .I2(sda_out), 
            .I3(sda_enable), .O(n4852));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3892_3_lut_4_lut.LUT_INIT = 16'hc888;
    SB_CARRY blink_counter_307_add_4_14 (.CI(n3743), .I0(GND_net), .I1(n14), 
            .CO(n3744));
    SB_LUT4 blink_counter_307_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n3742), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_13 (.CI(n3742), .I0(GND_net), .I1(n15), 
            .CO(n3743));
    SB_LUT4 blink_counter_307_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n3741), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_12 (.CI(n3741), .I0(GND_net), .I1(n16), 
            .CO(n3742));
    GND i1 (.Y(GND_net));
    SB_LUT4 blink_counter_307_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n3740), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_11 (.CI(n3740), .I0(GND_net), .I1(n17), 
            .CO(n3741));
    SB_LUT4 blink_counter_307_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n3739), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_10 (.CI(n3739), .I0(GND_net), .I1(n18), 
            .CO(n3740));
    SB_LUT4 blink_counter_307_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19), 
            .I3(n3738), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_307_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_307_add_4_9 (.CI(n3738), .I0(GND_net), .I1(n19), 
            .CO(n3739));
    SB_LUT4 i1092_4_lut (.I0(state_7__N_171[3]), .I1(n172), .I2(n4_adj_396), 
            .I3(n1616), .O(n1734));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1092_4_lut.LUT_INIT = 16'hccca;
    EEPROM eeprom (.GND_net(GND_net), .CLK_N_keep(CLK_N), .VCC_net(VCC_net), 
           .\state[0] (state[0]), .n652(n652), .n4273(n4273), .\state[2] (state[2]), 
           .\state[3] (state[3]), .scl_enable_N_248(scl_enable_N_248), .scl_enable(scl_enable), 
           .n1730(n1730), .data({n158, n160, n162, n164, n166, n168, 
           n170, n172}), .\state[1] (state[1]), .n4433(n4433), .\state_7__N_155[0] (state_7__N_155[0]), 
           .n11(n11_adj_397), .n1729(n1729), .\state_7__N_171[3] (state_7__N_171[3]), 
           .n1621(n1621), .n3379(n3379), .n4(n4_adj_395), .\saved_addr[0] (saved_addr[0]), 
           .\saved_addr[7] (saved_addr[7]), .n4323(n4323), .n4_adj_3(n4_adj_396), 
           .n4281(n4281), .n1616(n1616), .n4_adj_4(n4), .n1728(n1728), 
           .n1727(n1727), .n1726(n1726), .n1725(n1725), .n4213(n4213), 
           .n4211(n4211), .n1722(n1722), .n4219(n4219), .n1737(n1737), 
           .n1734(n1734), .sda_enable(sda_enable), .sda_out(sda_out), 
           .n4239(n4239), .n1731(n1731), .n178({scl}), .ready_N_237(n174)) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(121[12] 130[8])
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, CLK_N_keep, VCC_net, \state[0] , n652, n4273, 
            \state[2] , \state[3] , scl_enable_N_248, scl_enable, n1730, 
            data, \state[1] , n4433, \state_7__N_155[0] , n11, n1729, 
            \state_7__N_171[3] , n1621, n3379, n4, \saved_addr[0] , 
            \saved_addr[7] , n4323, n4_adj_3, n4281, n1616, n4_adj_4, 
            n1728, n1727, n1726, n1725, n4213, n4211, n1722, n4219, 
            n1737, n1734, sda_enable, sda_out, n4239, n1731, n178, 
            ready_N_237) /* synthesis lattice_noprune=1, syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input CLK_N_keep;
    input VCC_net;
    output \state[0] ;
    output n652;
    output n4273;
    output \state[2] ;
    output \state[3] ;
    output scl_enable_N_248;
    output scl_enable;
    input n1730;
    output [7:0]data;
    output \state[1] ;
    output n4433;
    output \state_7__N_155[0] ;
    output n11;
    input n1729;
    output \state_7__N_171[3] ;
    output n1621;
    output n3379;
    output n4;
    output \saved_addr[0] ;
    output \saved_addr[7] ;
    output n4323;
    output n4_adj_3;
    output n4281;
    output n1616;
    output n4_adj_4;
    input n1728;
    input n1727;
    input n1726;
    input n1725;
    input n4213;
    input n4211;
    input n1722;
    input n4219;
    input n1737;
    input n1734;
    output sda_enable;
    output sda_out;
    input n4239;
    input n1731;
    output [0:0]n178;
    output ready_N_237;
    
    wire [31:0]n3603;
    
    wire n3540, n3819;
    wire [31:0]eeprom_counter;   // verilog/eeprom.v(16[9:23])
    wire [31:0]n1;
    
    wire n3820, n3541, n3818, n3967, n3968, n3951_adj_267;
    wire [31:0]n3999;
    
    wire n3966_adj_268, n4762, n3543, n3570, n3642;
    wire [31:0]n133;
    
    wire n3750;
    wire [31:0]n34;
    
    wire n3768_adj_270, n3849_adj_271, n3545, n3644;
    wire [31:0]n1_adj_394;
    
    wire n3966, n3551, n3549, n3550, n4398, n3542, n3817, n3965, 
        n3816, n3950_adj_274, n4049, n3547, n3544, n3546, n4591, 
        n3815, n3964;
    wire [31:0]n4098;
    
    wire n4046, n3893, n3836, n3637, n3837, n3548, n3659, n3814, 
        n3539, n3538, n4579, n3813, n3812, n3949_adj_277, n4048, 
        n3811, n3948_adj_279, n4047, n3537, n4237;
    wire [14:0]n1305;
    
    wire n4263, n5008, n3894;
    wire [31:0]n3702;
    
    wire n3638, n3835, n3848_adj_280, n4741, n3851_adj_281, n3581, 
        n3963, n3892, n3962, n3847_adj_284, n3845_adj_285, n3844_adj_286, 
        n3846_adj_287, n4609, n3961, n3810, n3891, n3960, n3890, 
        n3639, n3834, n3889, n3640, n3833, n3809, n3838_adj_290;
    wire [31:0]n35;
    
    wire n3867_adj_292, n3937_adj_293, n3837_adj_294, n3936_adj_296, 
        n3835_adj_297, n3934_adj_299, n3839_adj_300, n3938_adj_302, 
        n3836_adj_303, n4740, n3943_adj_306, n3843_adj_307, n3942_adj_309, 
        n3842_adj_310, n3653, n3941_adj_312, n3841_adj_313, n3940_adj_315, 
        n3959, n3840_adj_317, n3939_adj_319, n3958, n3957, n3946_adj_323, 
        n4051, n3956, n3944_adj_326, n4032, n3933_adj_327, n3888, 
        n3887, n3945_adj_329, n3955, n3739, n3954, n3737, n3736, 
        n3953, n3738, n3886, n3742, n3952, n3808, n3641, n3832, 
        n3885, n3741;
    wire [24:0]enable_N_60;
    
    wire n4336, n3951, n3831, n3884, n3740, n4337, n3950, n5005, 
        n3645, n4338, n3949, n5002, n4339, n3948, n4999, n4340, 
        n3947, n4996, n3883, n3882, n3643, n3830, n3669_adj_342, 
        n3744, n3006, n2888, n2767, n4341, n3946, n4993, n3743, 
        n2117, n4342, n3945, n4990, n1978, n2253, n4238, n3807, 
        n2643, n3881, n4343, n3944, n4987, n2516, n2386, n3448, 
        n4344, n3943, n4984, n3880, n3829, n3233, n3121, n3342, 
        n3599, n4597, n8_adj_355, n3879, n4345, n3942, n4981, 
        n4239_adj_356, n3806, n10_adj_358, n3468, n4346, n3941, 
        n4978, n5011, n3878, n3828, n4240, n3805, n1836, n4347, 
        n3940, n4975, n796, n4359, n3747, n3646, n4348, n3939, 
        n4972, n3877, n4241, n3804, n4358, n4357, n3827, n3876, 
        n4356, n4349, n3938, n4969, n4242, n3803, n3647, n3826, 
        n4355, n4350, n3937, n4966, n4354, n4353, n3648, n3825, 
        n3745, n4352, n4351_adj_360, n3936, n3875, n4243, n3802, 
        n4251, n3935, n3947_adj_361, n3874, n3649_adj_362, n3824, 
        n3873, n4250, n3934, n3872, n4244, n3801, n4249, n3933, 
        n3650, n3823, n3871, n3651_adj_363, n4248, n3932, n3636, 
        n3822, n4245, n3800, n3931, n4247, n3834_adj_364, n3870, 
        n3821, n3930, n3869, n4603, n4246, n3799, n3798, n3868, 
        n3797, n3929, n3867, n3928, n3866, n3796, n3795, n4765, 
        n3748, n3865, n4836, n4131, n3927, n4837, n4132, n3926, 
        n4531, n3864, n3863, n4133, n3925, n4529, n3862, n4134, 
        n3924, n4527, n3861, n3860, n4135, n3923, n4525, n3859, 
        n4136, n3922, n4523, n4137, n3921;
    wire [31:0]n4197;
    
    wire n3858, n4139, n4164, n4138, n3920, n3857, n4142, n4141, 
        n3919, n3856, n4140, n3787, n4144, n3995, n3918, n3855, 
        n3994, n3786, n4143, n3917, n4147, n3993, n3854, n3916, 
        n4145, n4146, n3915, n4148, n3992, n3735, n3853, n3914, 
        n3852, n4151, n3991, n3851, n3990, n3785, n4497, n3913, 
        n8_adj_375, n4499, n4149, n3579, n4663, n4667, n3651, 
        n8_adj_376, n4150, n3611, n4505, n4697, n3989, n3912, 
        n3850, n4842, n4511, n4839, n4689, n4436, n3665, n4517, 
        n4351, n4451, enable_N_59, n3988, n3911, n3849, n3784, 
        n3987, n3910, n3848, n3986, n3783, n3782, n3985, n3909, 
        n3847, n3781, n3908, n4034, n4065, n3846, n3984, n3983, 
        n3845, n3780, n4033, n7_adj_377, n4035, n3907, n4038, 
        n4037, n3982, n3981, n3906, n4036, n3980, n4041, n3905, 
        n3979, n3978, n3749, n3904, n3844, n4040, n4042, n3977, 
        n3976, n3903, n4044, n4043, n3975, n3902, n3974, n3973, 
        n3901, n3843, n4045, n3779, n4039, n3900, n3842, n3627, 
        n4585, n3683, n4569, n3751, n3601, n4623, n3679, n6_adj_379, 
        n4629, n3972, n3899, n3898, n3841, n3840, n3778, n3777, 
        n3776, n3775, n3774, n3773, n3772, n3771, n3770, n3769, 
        n3768, n3767, n4367, n3766, n4649, n3765, n4641, n3764, 
        n3649, n4461, n12_adj_386, n3763, n3762, n3761, n3971, 
        n3760, n3759, n3897, n3839, n3758, n3757, n3970, n3969, 
        n3838, n3615, n3896, n4709, n3669, enable, n4677, n4703, 
        n4681, n3895;
    
    SB_LUT4 rem_4_add_2365_13_lut (.I0(GND_net), .I1(n3540), .I2(GND_net), 
            .I3(n3819), .O(n3603[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i8_1_lut (.I0(eeprom_counter[7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2365_13 (.CI(n3819), .I0(n3540), .I1(GND_net), 
            .CO(n3820));
    SB_LUT4 rem_4_add_2365_12_lut (.I0(GND_net), .I1(n3541), .I2(GND_net), 
            .I3(n3818), .O(n3603[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i9_1_lut (.I0(eeprom_counter[8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_unary_minus_2_add_3_18 (.CI(n3967), .I0(GND_net), .I1(n1[16]), 
            .CO(n3968));
    SB_LUT4 rem_4_i2653_rep_28_3_lut (.I0(n3951_adj_267), .I1(n3999[13]), 
            .I2(n3966_adj_268), .I3(GND_net), .O(n4762));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2653_rep_28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2373_3_lut (.I0(n3543), .I1(n3603[25]), .I2(n3570), 
            .I3(GND_net), .O(n3642));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2373_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eeprom_counter_308__i0 (.Q(eeprom_counter[0]), .C(CLK_N_keep), 
           .D(n133[0]));   // verilog/eeprom.v(23[21:39])
    SB_CARRY rem_4_add_2365_12 (.CI(n3818), .I0(n3541), .I1(GND_net), 
            .CO(n3819));
    SB_LUT4 rem_4_i2516_3_lut (.I0(n3750), .I1(n34[16]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3849_adj_271));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2516_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2375_3_lut (.I0(n3545), .I1(n3603[23]), .I2(n3570), 
            .I3(GND_net), .O(n3644));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2375_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[15]), .I3(n3966), .O(n1_adj_394[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i18_3_lut (.I0(eeprom_counter[17]), .I1(n1_adj_394[17]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3551));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(n3549), .I1(n3550), .I2(n3551), .I3(GND_net), 
            .O(n4398));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 rem_4_add_2365_11_lut (.I0(GND_net), .I1(n3542), .I2(VCC_net), 
            .I3(n3817), .O(n3603[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_17 (.CI(n3966), .I0(GND_net), .I1(n1[15]), 
            .CO(n3967));
    SB_LUT4 rem_4_unary_minus_2_add_3_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[14]), .I3(n3965), .O(n1_adj_394[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2365_11 (.CI(n3817), .I0(n3542), .I1(VCC_net), 
            .CO(n3818));
    SB_LUT4 rem_4_add_2365_10_lut (.I0(GND_net), .I1(n3543), .I2(GND_net), 
            .I3(n3816), .O(n3603[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2652_3_lut (.I0(n3950_adj_274), .I1(n3999[14]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4049));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2652_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n3547), .I1(n3545), .I2(n3544), .I3(n3546), 
            .O(n4591));
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2365_10 (.CI(n3816), .I0(n3543), .I1(GND_net), 
            .CO(n3817));
    SB_CARRY rem_4_unary_minus_2_add_3_16 (.CI(n3965), .I0(GND_net), .I1(n1[14]), 
            .CO(n3966));
    SB_LUT4 rem_4_add_2365_9_lut (.I0(GND_net), .I1(n3544), .I2(VCC_net), 
            .I3(n3815), .O(n3603[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i10_1_lut (.I0(eeprom_counter[9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_add_3_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[13]), .I3(n3964), .O(n1_adj_394[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_7_lut (.I0(GND_net), .I1(n4046), .I2(VCC_net), 
            .I3(n3893), .O(n4098[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_16 (.CI(n3836), .I0(n3637), .I1(VCC_net), 
            .CO(n3837));
    SB_LUT4 i3013_4_lut (.I0(n4591), .I1(n3543), .I2(n4398), .I3(n3548), 
            .O(n3659));
    defparam i3013_4_lut.LUT_INIT = 16'hc888;
    SB_CARRY rem_4_add_2365_9 (.CI(n3815), .I0(n3544), .I1(VCC_net), .CO(n3816));
    SB_LUT4 rem_4_add_2365_8_lut (.I0(GND_net), .I1(n3545), .I2(VCC_net), 
            .I3(n3814), .O(n3603[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2365_8 (.CI(n3814), .I0(n3545), .I1(VCC_net), .CO(n3815));
    SB_LUT4 i1_4_lut_adj_11 (.I0(n3541), .I1(n3539), .I2(n3538), .I3(n3540), 
            .O(n4579));
    defparam i1_4_lut_adj_11.LUT_INIT = 16'h8000;
    SB_LUT4 rem_4_add_2365_7_lut (.I0(GND_net), .I1(n3546), .I2(VCC_net), 
            .I3(n3813), .O(n3603[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2365_7 (.CI(n3813), .I0(n3546), .I1(VCC_net), .CO(n3814));
    SB_LUT4 rem_4_add_2365_6_lut (.I0(GND_net), .I1(n3547), .I2(VCC_net), 
            .I3(n3812), .O(n3603[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2651_3_lut (.I0(n3949_adj_277), .I1(n3999[15]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4048));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2651_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2365_6 (.CI(n3812), .I0(n3547), .I1(VCC_net), .CO(n3813));
    SB_LUT4 rem_4_add_2365_5_lut (.I0(GND_net), .I1(n3548), .I2(GND_net), 
            .I3(n3811), .O(n3603[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i11_1_lut (.I0(eeprom_counter[10]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i12_1_lut (.I0(eeprom_counter[11]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2650_rep_25_3_lut (.I0(n3948_adj_279), .I1(n3999[16]), 
            .I2(n3966_adj_268), .I3(GND_net), .O(n4047));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2650_rep_25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i13_1_lut (.I0(eeprom_counter[12]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3059_4_lut (.I0(n4579), .I1(n3537), .I2(n3659), .I3(n3542), 
            .O(n3570));
    defparam i3059_4_lut.LUT_INIT = 16'heeec;
    SB_CARRY rem_4_add_2365_5 (.CI(n3811), .I0(n3548), .I1(GND_net), .CO(n3812));
    SB_LUT4 i4036_1_lut_3_lut (.I0(n4237), .I1(n1305[14]), .I2(n4263), 
            .I3(GND_net), .O(n5008));   // verilog/eeprom.v(24[6:33])
    defparam i4036_1_lut_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_15 (.CI(n3964), .I0(GND_net), .I1(n1[13]), 
            .CO(n3965));
    SB_CARRY rem_4_add_2700_7 (.CI(n3893), .I0(n4046), .I1(VCC_net), .CO(n3894));
    SB_LUT4 rem_4_add_2432_15_lut (.I0(GND_net), .I1(n3638), .I2(GND_net), 
            .I3(n3835), .O(n3702[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2937_4_lut (.I0(n3849_adj_271), .I1(n3848_adj_280), .I2(n4741), 
            .I3(n3851_adj_281), .O(n3581));
    defparam i2937_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 rem_4_unary_minus_2_add_3_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[12]), .I3(n3963), .O(n1_adj_394[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_6_lut (.I0(GND_net), .I1(n4047), .I2(VCC_net), 
            .I3(n3892), .O(n4098[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_14 (.CI(n3963), .I0(GND_net), .I1(n1[12]), 
            .CO(n3964));
    SB_CARRY rem_4_add_2700_6 (.CI(n3892), .I0(n4047), .I1(VCC_net), .CO(n3893));
    SB_LUT4 rem_4_unary_minus_2_add_3_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[11]), .I3(n3962), .O(n1_adj_394[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_13 (.CI(n3962), .I0(GND_net), .I1(n1[11]), 
            .CO(n3963));
    SB_LUT4 i1_4_lut_adj_12 (.I0(n3847_adj_284), .I1(n3845_adj_285), .I2(n3844_adj_286), 
            .I3(n3846_adj_287), .O(n4609));
    defparam i1_4_lut_adj_12.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_unary_minus_2_add_3_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[10]), .I3(n3961), .O(n1_adj_394[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2365_4_lut (.I0(GND_net), .I1(n3549), .I2(VCC_net), 
            .I3(n3810), .O(n3603[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_5_lut (.I0(GND_net), .I1(n4048), .I2(GND_net), 
            .I3(n3891), .O(n4098[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_12 (.CI(n3961), .I0(GND_net), .I1(n1[10]), 
            .CO(n3962));
    SB_CARRY rem_4_add_2700_5 (.CI(n3891), .I0(n4048), .I1(GND_net), .CO(n3892));
    SB_CARRY rem_4_add_2365_4 (.CI(n3810), .I0(n3549), .I1(VCC_net), .CO(n3811));
    SB_LUT4 rem_4_unary_minus_2_add_3_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[9]), .I3(n3960), .O(n1_adj_394[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_4_lut (.I0(GND_net), .I1(n4049), .I2(VCC_net), 
            .I3(n3890), .O(n4098[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_15 (.CI(n3835), .I0(n3638), .I1(GND_net), 
            .CO(n3836));
    SB_LUT4 rem_4_add_2432_14_lut (.I0(GND_net), .I1(n3639), .I2(GND_net), 
            .I3(n3834), .O(n3702[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_4 (.CI(n3890), .I0(n4049), .I1(VCC_net), .CO(n3891));
    SB_CARRY rem_4_unary_minus_2_add_3_11 (.CI(n3960), .I0(GND_net), .I1(n1[9]), 
            .CO(n3961));
    SB_LUT4 rem_4_add_2700_3_lut (.I0(GND_net), .I1(n4762), .I2(VCC_net), 
            .I3(n3889), .O(n4098[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_14 (.CI(n3834), .I0(n3639), .I1(GND_net), 
            .CO(n3835));
    SB_LUT4 rem_4_add_2432_13_lut (.I0(GND_net), .I1(n3640), .I2(GND_net), 
            .I3(n3833), .O(n3702[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_3 (.CI(n3889), .I0(n4762), .I1(VCC_net), .CO(n3890));
    SB_LUT4 rem_4_add_2365_3_lut (.I0(GND_net), .I1(n3550), .I2(VCC_net), 
            .I3(n3809), .O(n3603[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2365_3 (.CI(n3809), .I0(n3550), .I1(VCC_net), .CO(n3810));
    SB_LUT4 rem_4_add_2365_2_lut (.I0(GND_net), .I1(n3551), .I2(GND_net), 
            .I3(VCC_net), .O(n3603[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2365_2 (.CI(VCC_net), .I0(n3551), .I1(GND_net), 
            .CO(n3809));
    SB_LUT4 rem_4_i2572_3_lut (.I0(n3838_adj_290), .I1(n35[27]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3937_adj_293));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2572_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2571_3_lut (.I0(n3837_adj_294), .I1(n35[28]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3936_adj_296));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2571_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2569_rep_18_3_lut (.I0(n3835_adj_297), .I1(n35[30]), 
            .I2(n3867_adj_292), .I3(GND_net), .O(n3934_adj_299));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2569_rep_18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2573_3_lut (.I0(n3839_adj_300), .I1(n35[26]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3938_adj_302));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2573_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2570_rep_6_3_lut (.I0(n3836_adj_303), .I1(n35[29]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n4740));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2570_rep_6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2578_3_lut (.I0(n3844_adj_286), .I1(n35[21]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3943_adj_306));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2578_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2577_3_lut (.I0(n3843_adj_307), .I1(n35[22]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3942_adj_309));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2577_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3007_4_lut (.I0(n4609), .I1(n3842_adj_310), .I2(n3843_adj_307), 
            .I3(n3581), .O(n3653));
    defparam i3007_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 rem_4_i2576_3_lut (.I0(n3842_adj_310), .I1(n35[23]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3941_adj_312));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2576_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2575_3_lut (.I0(n3841_adj_313), .I1(n35[24]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3940_adj_315));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2575_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[8]), .I3(n3959), .O(n1_adj_394[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2574_3_lut (.I0(n3840_adj_317), .I1(n35[25]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3939_adj_319));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2574_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_10 (.CI(n3959), .I0(GND_net), .I1(n1[8]), 
            .CO(n3960));
    SB_LUT4 rem_4_unary_minus_2_add_3_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[7]), .I3(n3958), .O(n1_adj_394[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_9 (.CI(n3958), .I0(GND_net), .I1(n1[7]), 
            .CO(n3959));
    SB_LUT4 rem_4_unary_minus_2_add_3_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[6]), .I3(n3957), .O(n1_adj_394[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2581_3_lut (.I0(n3847_adj_284), .I1(n35[18]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3946_adj_323));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2581_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_8 (.CI(n3957), .I0(GND_net), .I1(n1[6]), 
            .CO(n3958));
    SB_LUT4 rem_4_add_2700_2_lut (.I0(GND_net), .I1(n4051), .I2(GND_net), 
            .I3(VCC_net), .O(n4098[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[5]), .I3(n3956), .O(n1_adj_394[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_2 (.CI(VCC_net), .I0(n4051), .I1(GND_net), 
            .CO(n3889));
    SB_LUT4 rem_4_i2579_3_lut (.I0(n3845_adj_285), .I1(n35[20]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3944_adj_326));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2579_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_7 (.CI(n3956), .I0(GND_net), .I1(n1[5]), 
            .CO(n3957));
    SB_LUT4 rem_4_add_2633_20_lut (.I0(n3966_adj_268), .I1(n3933_adj_327), 
            .I2(VCC_net), .I3(n3888), .O(n4032)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2633_19_lut (.I0(GND_net), .I1(n3934_adj_299), .I2(VCC_net), 
            .I3(n3887), .O(n3999[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2580_3_lut (.I0(n3846_adj_287), .I1(n35[19]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3945_adj_329));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[4]), .I3(n3955), .O(n1_adj_394[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2505_3_lut (.I0(n3739), .I1(n34[27]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3838_adj_290));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2505_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_6 (.CI(n3955), .I0(GND_net), .I1(n1[4]), 
            .CO(n3956));
    SB_LUT4 rem_4_unary_minus_2_add_3_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[3]), .I3(n3954), .O(n1_adj_394[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_5 (.CI(n3954), .I0(GND_net), .I1(n1[3]), 
            .CO(n3955));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i22_1_lut (.I0(eeprom_counter[21]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i23_1_lut (.I0(eeprom_counter[22]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i24_1_lut (.I0(eeprom_counter[23]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2503_3_lut (.I0(n3737), .I1(n34[29]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3836_adj_303));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2502_3_lut (.I0(n3736), .I1(n34[30]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3835_adj_297));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[2]), .I3(n3953), .O(n1_adj_394[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2504_3_lut (.I0(n3738), .I1(n34[28]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3837_adj_294));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2504_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_4 (.CI(n3953), .I0(GND_net), .I1(n1[2]), 
            .CO(n3954));
    SB_CARRY rem_4_add_2633_19 (.CI(n3887), .I0(n3934_adj_299), .I1(VCC_net), 
            .CO(n3888));
    SB_LUT4 rem_4_add_2633_18_lut (.I0(GND_net), .I1(n4740), .I2(VCC_net), 
            .I3(n3886), .O(n3999[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2508_3_lut (.I0(n3742), .I1(n34[24]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3841_adj_313));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2508_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[1]), .I3(n3952), .O(n1_adj_394[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i25_1_lut (.I0(eeprom_counter[24]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_unary_minus_2_add_3_3 (.CI(n3952), .I0(GND_net), .I1(n1[1]), 
            .CO(n3953));
    SB_CARRY rem_4_add_2633_18 (.CI(n3886), .I0(n4740), .I1(VCC_net), 
            .CO(n3887));
    SB_CARRY rem_4_add_2432_13 (.CI(n3833), .I0(n3640), .I1(GND_net), 
            .CO(n3834));
    SB_LUT4 add_682_16_lut (.I0(GND_net), .I1(n4237), .I2(VCC_net), .I3(n3808), 
            .O(n1305[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2432_12_lut (.I0(GND_net), .I1(n3641), .I2(GND_net), 
            .I3(n3832), .O(n3702[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[0]), .I3(VCC_net), .O(n1_adj_394[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2633_17_lut (.I0(GND_net), .I1(n3936_adj_296), .I2(VCC_net), 
            .I3(n3885), .O(n3999[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_12 (.CI(n3832), .I0(n3641), .I1(GND_net), 
            .CO(n3833));
    SB_CARRY rem_4_unary_minus_2_add_3_2 (.CI(VCC_net), .I0(GND_net), .I1(n1[0]), 
            .CO(n3952));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i26_1_lut (.I0(eeprom_counter[25]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2507_3_lut (.I0(n3741), .I1(n34[25]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3840_adj_317));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2507_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2893_26_lut (.I0(n5008), .I1(n1[31]), .I2(n4336), 
            .I3(n3951), .O(enable_N_60[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_26_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_17 (.CI(n3885), .I0(n3936_adj_296), .I1(VCC_net), 
            .CO(n3886));
    SB_LUT4 rem_4_add_2432_11_lut (.I0(GND_net), .I1(n3642), .I2(VCC_net), 
            .I3(n3831), .O(n3702[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2633_16_lut (.I0(GND_net), .I1(n3937_adj_293), .I2(VCC_net), 
            .I3(n3884), .O(n3999[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_11 (.CI(n3831), .I0(n3642), .I1(VCC_net), 
            .CO(n3832));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i27_1_lut (.I0(eeprom_counter[26]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2506_3_lut (.I0(n3740), .I1(n34[26]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3839_adj_300));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2893_25_lut (.I0(n5005), .I1(n1[31]), .I2(n4337), 
            .I3(n3950), .O(enable_N_60[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_25_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i3956_3_lut (.I0(n3546), .I1(n3603[22]), .I2(n3570), .I3(GND_net), 
            .O(n3645));   // verilog/eeprom.v(24[6:33])
    defparam i3956_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_25 (.CI(n3950), .I0(n1[31]), .I1(n4337), .CO(n3951));
    SB_CARRY rem_4_add_2633_16 (.CI(n3884), .I0(n3937_adj_293), .I1(VCC_net), 
            .CO(n3885));
    SB_LUT4 rem_4_add_2893_24_lut (.I0(n5002), .I1(n1[31]), .I2(n4338), 
            .I3(n3949), .O(enable_N_60[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_24_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2893_24 (.CI(n3949), .I0(n1[31]), .I1(n4338), .CO(n3950));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i28_1_lut (.I0(eeprom_counter[27]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i29_1_lut (.I0(eeprom_counter[28]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2893_23_lut (.I0(n4999), .I1(n1[31]), .I2(n4339), 
            .I3(n3948), .O(enable_N_60[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_23_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2893_23 (.CI(n3948), .I0(n1[31]), .I1(n4339), .CO(n3949));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i30_1_lut (.I0(eeprom_counter[29]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2893_22_lut (.I0(n4996), .I1(n1[31]), .I2(n4340), 
            .I3(n3947), .O(enable_N_60[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_22_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2633_15_lut (.I0(GND_net), .I1(n3938_adj_302), .I2(GND_net), 
            .I3(n3883), .O(n3999[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2893_22 (.CI(n3947), .I0(n1[31]), .I1(n4340), .CO(n3948));
    SB_CARRY rem_4_add_2633_15 (.CI(n3883), .I0(n3938_adj_302), .I1(GND_net), 
            .CO(n3884));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i31_1_lut (.I0(eeprom_counter[30]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2633_14_lut (.I0(GND_net), .I1(n3939_adj_319), .I2(GND_net), 
            .I3(n3882), .O(n3999[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2432_10_lut (.I0(GND_net), .I1(n3643), .I2(GND_net), 
            .I3(n3830), .O(n3702[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2633_14 (.CI(n3882), .I0(n3939_adj_319), .I1(GND_net), 
            .CO(n3883));
    SB_LUT4 i3957_3_lut (.I0(n3645), .I1(n3702[22]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3744));   // verilog/eeprom.v(24[6:33])
    defparam i3957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3949_3_lut (.I0(n3744), .I1(n34[22]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3843_adj_307));   // verilog/eeprom.v(24[6:33])
    defparam i3949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i23_3_lut (.I0(eeprom_counter[22]), .I1(n1_adj_394[22]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3006));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i24_3_lut (.I0(eeprom_counter[23]), .I1(n1_adj_394[23]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2888));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i25_3_lut (.I0(eeprom_counter[24]), .I1(n1_adj_394[24]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2767));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2893_21_lut (.I0(n4993), .I1(n1[31]), .I2(n4341), 
            .I3(n3946), .O(enable_N_60[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_21_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_i2509_3_lut (.I0(n3743), .I1(n34[23]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3842_adj_310));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2509_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i30_3_lut (.I0(eeprom_counter[29]), .I1(n1_adj_394[29]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2117));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_21 (.CI(n3946), .I0(n1[31]), .I1(n4341), .CO(n3947));
    SB_LUT4 rem_4_add_2893_20_lut (.I0(n4990), .I1(n1[31]), .I2(n4342), 
            .I3(n3945), .O(enable_N_60[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_20_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_mux_3_i31_3_lut (.I0(eeprom_counter[30]), .I1(n1_adj_394[30]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n1978));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i29_3_lut (.I0(eeprom_counter[28]), .I1(n1_adj_394[28]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2253));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_682_15_lut (.I0(GND_net), .I1(n4238), .I2(GND_net), .I3(n3807), 
            .O(n1305[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i26_3_lut (.I0(eeprom_counter[25]), .I1(n1_adj_394[25]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2643));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_20 (.CI(n3945), .I0(n1[31]), .I1(n4342), .CO(n3946));
    SB_LUT4 rem_4_add_2633_13_lut (.I0(GND_net), .I1(n3940_adj_315), .I2(GND_net), 
            .I3(n3881), .O(n3999[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2893_19_lut (.I0(n4987), .I1(n1[31]), .I2(n4343), 
            .I3(n3944), .O(enable_N_60[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_19_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_13 (.CI(n3881), .I0(n3940_adj_315), .I1(GND_net), 
            .CO(n3882));
    SB_LUT4 rem_4_mux_3_i27_3_lut (.I0(eeprom_counter[26]), .I1(n1_adj_394[26]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2516));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i28_3_lut (.I0(eeprom_counter[27]), .I1(n1_adj_394[27]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n2386));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i19_3_lut (.I0(eeprom_counter[18]), .I1(n1_adj_394[18]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3448));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_19 (.CI(n3944), .I0(n1[31]), .I1(n4343), .CO(n3945));
    SB_LUT4 rem_4_add_2893_18_lut (.I0(n4984), .I1(n1[31]), .I2(n4344), 
            .I3(n3943), .O(enable_N_60[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_18_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2633_12_lut (.I0(GND_net), .I1(n3941_adj_312), .I2(GND_net), 
            .I3(n3880), .O(n3999[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_10 (.CI(n3830), .I0(n3643), .I1(GND_net), 
            .CO(n3831));
    SB_CARRY rem_4_add_2633_12 (.CI(n3880), .I0(n3941_adj_312), .I1(GND_net), 
            .CO(n3881));
    SB_LUT4 rem_4_add_2432_9_lut (.I0(GND_net), .I1(n3644), .I2(VCC_net), 
            .I3(n3829), .O(n3702[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i21_3_lut (.I0(eeprom_counter[20]), .I1(n1_adj_394[20]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3233));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i22_3_lut (.I0(eeprom_counter[21]), .I1(n1_adj_394[21]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3121));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i20_3_lut (.I0(eeprom_counter[19]), .I1(n1_adj_394[19]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3342));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2955_4_lut (.I0(n3342), .I1(n3121), .I2(n3233), .I3(n3448), 
            .O(n3599));
    defparam i2955_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_adj_13 (.I0(n1_adj_394[24]), .I1(n3599), .I2(n1_adj_394[23]), 
            .I3(n1_adj_394[22]), .O(n4597));
    defparam i1_4_lut_adj_13.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_14 (.I0(n2386), .I1(n2516), .I2(n4597), .I3(n2643), 
            .O(n8_adj_355));
    defparam i1_4_lut_adj_14.LUT_INIT = 16'heeea;
    SB_CARRY rem_4_add_2893_18 (.CI(n3943), .I0(n1[31]), .I1(n4344), .CO(n3944));
    SB_LUT4 rem_4_add_2633_11_lut (.I0(GND_net), .I1(n3942_adj_309), .I2(VCC_net), 
            .I3(n3879), .O(n3999[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2893_17_lut (.I0(n4981), .I1(n1[31]), .I2(n4345), 
            .I3(n3942), .O(enable_N_60[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_17_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_11 (.CI(n3879), .I0(n3942_adj_309), .I1(VCC_net), 
            .CO(n3880));
    SB_CARRY rem_4_add_2432_9 (.CI(n3829), .I0(n3644), .I1(VCC_net), .CO(n3830));
    SB_CARRY add_682_15 (.CI(n3807), .I0(n4238), .I1(GND_net), .CO(n3808));
    SB_LUT4 add_682_14_lut (.I0(GND_net), .I1(n4239_adj_356), .I2(GND_net), 
            .I3(n3806), .O(n1305[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_14 (.CI(n3806), .I0(n4239_adj_356), .I1(GND_net), 
            .CO(n3807));
    SB_LUT4 i4_4_lut (.I0(n1_adj_394[30]), .I1(n2253), .I2(n1_adj_394[31]), 
            .I3(n8_adj_355), .O(n10_adj_358));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(n1_adj_394[29]), .I1(n10_adj_358), .I2(eeprom_counter[31]), 
            .I3(GND_net), .O(n3468));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_CARRY rem_4_add_2893_17 (.CI(n3942), .I0(n1[31]), .I1(n4345), .CO(n3943));
    SB_LUT4 rem_4_add_2893_16_lut (.I0(n4978), .I1(n1[31]), .I2(n4346), 
            .I3(n3941), .O(enable_N_60[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_16_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i4039_1_lut (.I0(n3468), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5011));
    defparam i4039_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2893_16 (.CI(n3941), .I0(n1[31]), .I1(n4346), .CO(n3942));
    SB_LUT4 rem_4_add_2633_10_lut (.I0(GND_net), .I1(n3943_adj_306), .I2(GND_net), 
            .I3(n3878), .O(n3999[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2432_8_lut (.I0(GND_net), .I1(n3645), .I2(VCC_net), 
            .I3(n3828), .O(n3702[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_682_13_lut (.I0(GND_net), .I1(n4240), .I2(GND_net), .I3(n3805), 
            .O(n1305[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_13 (.CI(n3805), .I0(n4240), .I1(GND_net), .CO(n3806));
    SB_LUT4 i524_2_lut (.I0(n1_adj_394[31]), .I1(eeprom_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(n1836));
    defparam i524_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 rem_4_add_2893_15_lut (.I0(n4975), .I1(n1[31]), .I2(n4347), 
            .I3(n3940), .O(enable_N_60[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_15_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_mux_3_i1_3_lut (.I0(eeprom_counter[0]), .I1(n1_adj_394[0]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n796));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i1_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i2_3_lut (.I0(eeprom_counter[1]), .I1(n1_adj_394[1]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4359));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i2_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2513_3_lut (.I0(n3747), .I1(n34[19]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3846_adj_287));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3958_3_lut (.I0(n3547), .I1(n3603[21]), .I2(n3570), .I3(GND_net), 
            .O(n3646));   // verilog/eeprom.v(24[6:33])
    defparam i3958_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_15 (.CI(n3940), .I0(n1[31]), .I1(n4347), .CO(n3941));
    SB_CARRY rem_4_add_2633_10 (.CI(n3878), .I0(n3943_adj_306), .I1(GND_net), 
            .CO(n3879));
    SB_LUT4 rem_4_add_2893_14_lut (.I0(n4972), .I1(n1[31]), .I2(n4348), 
            .I3(n3939), .O(enable_N_60[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_14_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2633_9_lut (.I0(GND_net), .I1(n3944_adj_326), .I2(VCC_net), 
            .I3(n3877), .O(n3999[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_8 (.CI(n3828), .I0(n3645), .I1(VCC_net), .CO(n3829));
    SB_LUT4 add_682_12_lut (.I0(GND_net), .I1(n4241), .I2(GND_net), .I3(n3804), 
            .O(n1305[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i3_3_lut (.I0(eeprom_counter[2]), .I1(n1_adj_394[2]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4358));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i3_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i4_3_lut (.I0(eeprom_counter[3]), .I1(n1_adj_394[3]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4357));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i4_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2633_9 (.CI(n3877), .I0(n3944_adj_326), .I1(VCC_net), 
            .CO(n3878));
    SB_LUT4 rem_4_add_2432_7_lut (.I0(GND_net), .I1(n3646), .I2(VCC_net), 
            .I3(n3827), .O(n3702[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_12 (.CI(n3804), .I0(n4241), .I1(GND_net), .CO(n3805));
    SB_CARRY rem_4_add_2893_14 (.CI(n3939), .I0(n1[31]), .I1(n4348), .CO(n3940));
    SB_LUT4 rem_4_add_2633_8_lut (.I0(GND_net), .I1(n3945_adj_329), .I2(VCC_net), 
            .I3(n3876), .O(n3999[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i5_3_lut (.I0(eeprom_counter[4]), .I1(n1_adj_394[4]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4356));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i5_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_13_lut (.I0(n4969), .I1(n1[31]), .I2(n4349), 
            .I3(n3938), .O(enable_N_60[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_13_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_8 (.CI(n3876), .I0(n3945_adj_329), .I1(VCC_net), 
            .CO(n3877));
    SB_CARRY rem_4_add_2432_7 (.CI(n3827), .I0(n3646), .I1(VCC_net), .CO(n3828));
    SB_LUT4 add_682_11_lut (.I0(GND_net), .I1(n4242), .I2(VCC_net), .I3(n3803), 
            .O(n1305[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2893_13 (.CI(n3938), .I0(n1[31]), .I1(n4349), .CO(n3939));
    SB_LUT4 rem_4_add_2432_6_lut (.I0(GND_net), .I1(n3647), .I2(VCC_net), 
            .I3(n3826), .O(n3702[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i6_3_lut (.I0(eeprom_counter[5]), .I1(n1_adj_394[5]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4355));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i6_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_12_lut (.I0(n4966), .I1(n1[31]), .I2(n4350), 
            .I3(n3937), .O(enable_N_60[10])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_12_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2432_6 (.CI(n3826), .I0(n3647), .I1(VCC_net), .CO(n3827));
    SB_LUT4 rem_4_mux_3_i7_3_lut (.I0(eeprom_counter[6]), .I1(n1_adj_394[6]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4354));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_mux_3_i8_3_lut (.I0(eeprom_counter[7]), .I1(n1_adj_394[7]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4353));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i8_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2893_12 (.CI(n3937), .I0(n1[31]), .I1(n4350), .CO(n3938));
    SB_LUT4 rem_4_add_2432_5_lut (.I0(GND_net), .I1(n3648), .I2(GND_net), 
            .I3(n3825), .O(n3702[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_11 (.CI(n3803), .I0(n4242), .I1(VCC_net), .CO(n3804));
    SB_LUT4 i3959_3_lut (.I0(n3646), .I1(n3702[21]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3745));   // verilog/eeprom.v(24[6:33])
    defparam i3959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i9_3_lut (.I0(eeprom_counter[8]), .I1(n1_adj_394[8]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4352));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i9_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_11_lut (.I0(eeprom_counter[9]), .I1(n1[31]), 
            .I2(n4351_adj_360), .I3(n3936), .O(enable_N_60[9])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_11_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2633_7_lut (.I0(GND_net), .I1(n3946_adj_323), .I2(VCC_net), 
            .I3(n3875), .O(n3999[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2893_11 (.CI(n3936), .I0(n1[31]), .I1(n4351_adj_360), 
            .CO(n3937));
    SB_CARRY rem_4_add_2633_7 (.CI(n3875), .I0(n3946_adj_323), .I1(VCC_net), 
            .CO(n3876));
    SB_LUT4 add_682_10_lut (.I0(GND_net), .I1(n4243), .I2(GND_net), .I3(n3802), 
            .O(n1305[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i10_3_lut (.I0(eeprom_counter[9]), .I1(n1_adj_394[9]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4351_adj_360));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i10_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i3994_1_lut (.I0(n4350), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4966));   // verilog/eeprom.v(24[6:33])
    defparam i3994_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2857_3_lut (.I0(n4251), .I1(n1305[0]), .I2(n4263), 
            .I3(GND_net), .O(n4350));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2857_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_10_lut (.I0(eeprom_counter[8]), .I1(n1[31]), 
            .I2(n4352), .I3(n3935), .O(enable_N_60[8])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_10_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2633_6_lut (.I0(GND_net), .I1(n3947_adj_361), .I2(VCC_net), 
            .I3(n3874), .O(n3999[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3997_1_lut (.I0(n4349), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4969));   // verilog/eeprom.v(24[6:33])
    defparam i3997_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2893_10 (.CI(n3935), .I0(n1[31]), .I1(n4352), .CO(n3936));
    SB_CARRY rem_4_add_2633_6 (.CI(n3874), .I0(n3947_adj_361), .I1(VCC_net), 
            .CO(n3875));
    SB_CARRY rem_4_add_2432_5 (.CI(n3825), .I0(n3648), .I1(GND_net), .CO(n3826));
    SB_CARRY add_682_10 (.CI(n3802), .I0(n4243), .I1(GND_net), .CO(n3803));
    SB_LUT4 rem_4_add_2432_4_lut (.I0(GND_net), .I1(n3649_adj_362), .I2(VCC_net), 
            .I3(n3824), .O(n3702[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2633_5_lut (.I0(GND_net), .I1(n3948_adj_279), .I2(GND_net), 
            .I3(n3873), .O(n3999[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2856_3_lut (.I0(n4250), .I1(n1305[1]), .I2(n4263), 
            .I3(GND_net), .O(n4349));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2856_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_9_lut (.I0(eeprom_counter[7]), .I1(n1[31]), .I2(n4353), 
            .I3(n3934), .O(enable_N_60[7])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_9_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_5 (.CI(n3873), .I0(n3948_adj_279), .I1(GND_net), 
            .CO(n3874));
    SB_CARRY rem_4_add_2893_9 (.CI(n3934), .I0(n1[31]), .I1(n4353), .CO(n3935));
    SB_LUT4 rem_4_add_2633_4_lut (.I0(GND_net), .I1(n3949_adj_277), .I2(VCC_net), 
            .I3(n3872), .O(n3999[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_4 (.CI(n3824), .I0(n3649_adj_362), .I1(VCC_net), 
            .CO(n3825));
    SB_LUT4 add_682_9_lut (.I0(GND_net), .I1(n4244), .I2(VCC_net), .I3(n3801), 
            .O(n1305[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4000_1_lut (.I0(n4348), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4972));   // verilog/eeprom.v(24[6:33])
    defparam i4000_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2855_3_lut (.I0(n4249), .I1(n1305[2]), .I2(n4263), 
            .I3(GND_net), .O(n4348));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2855_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4003_1_lut (.I0(n4347), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4975));   // verilog/eeprom.v(24[6:33])
    defparam i4003_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2893_8_lut (.I0(eeprom_counter[6]), .I1(n1[31]), .I2(n4354), 
            .I3(n3933), .O(enable_N_60[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_8_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_4 (.CI(n3872), .I0(n3949_adj_277), .I1(VCC_net), 
            .CO(n3873));
    SB_LUT4 rem_4_add_2432_3_lut (.I0(GND_net), .I1(n3650), .I2(VCC_net), 
            .I3(n3823), .O(n3702[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2893_8 (.CI(n3933), .I0(n1[31]), .I1(n4354), .CO(n3934));
    SB_LUT4 rem_4_add_2633_3_lut (.I0(GND_net), .I1(n3950_adj_274), .I2(VCC_net), 
            .I3(n3871), .O(n3999[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2432_3 (.CI(n3823), .I0(n3650), .I1(VCC_net), .CO(n3824));
    SB_CARRY add_682_9 (.CI(n3801), .I0(n4244), .I1(VCC_net), .CO(n3802));
    SB_LUT4 rem_4_add_2432_2_lut (.I0(GND_net), .I1(n3651_adj_363), .I2(GND_net), 
            .I3(VCC_net), .O(n3702[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2854_3_lut (.I0(n4248), .I1(n1305[3]), .I2(n4263), 
            .I3(GND_net), .O(n4347));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2854_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_7_lut (.I0(eeprom_counter[5]), .I1(n1[31]), .I2(n4355), 
            .I3(n3932), .O(enable_N_60[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_7_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2633_3 (.CI(n3871), .I0(n3950_adj_274), .I1(VCC_net), 
            .CO(n3872));
    SB_CARRY rem_4_add_2432_2 (.CI(VCC_net), .I0(n3651_adj_363), .I1(GND_net), 
            .CO(n3823));
    SB_LUT4 rem_4_add_2633_2_lut (.I0(GND_net), .I1(n3951_adj_267), .I2(GND_net), 
            .I3(VCC_net), .O(n3999[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2633_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2365_16_lut (.I0(n3570), .I1(n3537), .I2(VCC_net), 
            .I3(n3822), .O(n3636)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_682_8_lut (.I0(GND_net), .I1(n4245), .I2(VCC_net), .I3(n3800), 
            .O(n1305[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2893_7 (.CI(n3932), .I0(n1[31]), .I1(n4355), .CO(n3933));
    SB_CARRY rem_4_add_2633_2 (.CI(VCC_net), .I0(n3951_adj_267), .I1(GND_net), 
            .CO(n3871));
    SB_LUT4 rem_4_add_2893_6_lut (.I0(eeprom_counter[4]), .I1(n1[31]), .I2(n4356), 
            .I3(n3931), .O(enable_N_60[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_6_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 i4006_1_lut (.I0(n4346), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4978));   // verilog/eeprom.v(24[6:33])
    defparam i4006_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2853_3_lut (.I0(n4247), .I1(n1305[4]), .I2(n4263), 
            .I3(GND_net), .O(n4346));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2853_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2893_6 (.CI(n3931), .I0(n1[31]), .I1(n4356), .CO(n3932));
    SB_LUT4 rem_4_add_2566_19_lut (.I0(n3867_adj_292), .I1(n3834_adj_364), 
            .I2(VCC_net), .I3(n3870), .O(n3933_adj_327)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2365_15_lut (.I0(GND_net), .I1(n3538), .I2(GND_net), 
            .I3(n3821), .O(n3603[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4009_1_lut (.I0(n4345), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4981));   // verilog/eeprom.v(24[6:33])
    defparam i4009_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2893_5_lut (.I0(eeprom_counter[3]), .I1(n1[31]), .I2(n4357), 
            .I3(n3930), .O(enable_N_60[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_5_lut.LUT_INIT = 16'h8BB8;
    SB_LUT4 rem_4_add_2566_18_lut (.I0(GND_net), .I1(n3835_adj_297), .I2(VCC_net), 
            .I3(n3869), .O(n35[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_15 (.I0(n3653), .I1(n3839_adj_300), .I2(n3840_adj_317), 
            .I3(n3841_adj_313), .O(n4603));
    defparam i1_4_lut_adj_15.LUT_INIT = 16'h8000;
    SB_CARRY add_682_8 (.CI(n3800), .I0(n4245), .I1(VCC_net), .CO(n3801));
    SB_LUT4 add_682_7_lut (.I0(GND_net), .I1(n4246), .I2(VCC_net), .I3(n3799), 
            .O(n1305[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_7 (.CI(n3799), .I0(n4246), .I1(VCC_net), .CO(n3800));
    SB_LUT4 rem_4_i2852_3_lut (.I0(n4246), .I1(n1305[5]), .I2(n4263), 
            .I3(GND_net), .O(n4345));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2852_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2893_5 (.CI(n3930), .I0(n1[31]), .I1(n4357), .CO(n3931));
    SB_CARRY rem_4_add_2566_18 (.CI(n3869), .I0(n3835_adj_297), .I1(VCC_net), 
            .CO(n3870));
    SB_LUT4 add_682_6_lut (.I0(GND_net), .I1(n4247), .I2(VCC_net), .I3(n3798), 
            .O(n1305[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2566_17_lut (.I0(GND_net), .I1(n3836_adj_303), .I2(VCC_net), 
            .I3(n3868), .O(n35[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_6 (.CI(n3798), .I0(n4247), .I1(VCC_net), .CO(n3799));
    SB_LUT4 add_682_5_lut (.I0(GND_net), .I1(n4248), .I2(GND_net), .I3(n3797), 
            .O(n1305[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_5 (.CI(n3797), .I0(n4248), .I1(GND_net), .CO(n3798));
    SB_LUT4 i4012_1_lut (.I0(n4344), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4984));   // verilog/eeprom.v(24[6:33])
    defparam i4012_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2893_4_lut (.I0(eeprom_counter[2]), .I1(n1[31]), .I2(n4358), 
            .I3(n3929), .O(enable_N_60[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_4_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2566_17 (.CI(n3868), .I0(n3836_adj_303), .I1(VCC_net), 
            .CO(n3869));
    SB_LUT4 rem_4_i2851_3_lut (.I0(n4245), .I1(n1305[6]), .I2(n4263), 
            .I3(GND_net), .O(n4344));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2851_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY rem_4_add_2893_4 (.CI(n3929), .I0(n1[31]), .I1(n4358), .CO(n3930));
    SB_LUT4 rem_4_add_2566_16_lut (.I0(GND_net), .I1(n3837_adj_294), .I2(VCC_net), 
            .I3(n3867), .O(n35[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2893_3_lut (.I0(eeprom_counter[1]), .I1(n1[31]), .I2(n4359), 
            .I3(n3928), .O(enable_N_60[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_3_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2566_16 (.CI(n3867), .I0(n3837_adj_294), .I1(VCC_net), 
            .CO(n3868));
    SB_CARRY rem_4_add_2893_3 (.CI(n3928), .I0(n1[31]), .I1(n4359), .CO(n3929));
    SB_LUT4 rem_4_add_2566_15_lut (.I0(GND_net), .I1(n3838_adj_290), .I2(GND_net), 
            .I3(n3866), .O(n35[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4015_1_lut (.I0(n4343), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4987));   // verilog/eeprom.v(24[6:33])
    defparam i4015_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_682_4_lut (.I0(GND_net), .I1(n4249), .I2(VCC_net), .I3(n3796), 
            .O(n1305[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_4 (.CI(n3796), .I0(n4249), .I1(VCC_net), .CO(n3797));
    SB_LUT4 add_682_3_lut (.I0(GND_net), .I1(n4250), .I2(VCC_net), .I3(n3795), 
            .O(n1305[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2850_3_lut (.I0(n4244), .I1(n1305[7]), .I2(n4263), 
            .I3(GND_net), .O(n4343));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2850_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2893_2_lut (.I0(eeprom_counter[0]), .I1(n1[31]), .I2(n796), 
            .I3(VCC_net), .O(enable_N_60[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2893_2_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY rem_4_add_2566_15 (.CI(n3866), .I0(n3838_adj_290), .I1(GND_net), 
            .CO(n3867));
    SB_CARRY add_682_3 (.CI(n3795), .I0(n4250), .I1(VCC_net), .CO(n3796));
    SB_LUT4 i3951_3_lut (.I0(n3745), .I1(n34[21]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3844_adj_286));   // verilog/eeprom.v(24[6:33])
    defparam i3951_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2512_3_lut (.I0(n4765), .I1(n34[20]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3845_adj_285));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2512_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2514_3_lut (.I0(n3748), .I1(n34[18]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3847_adj_284));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2514_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2893_2 (.CI(VCC_net), .I0(n1[31]), .I1(n796), .CO(n3928));
    SB_LUT4 rem_4_add_2566_14_lut (.I0(GND_net), .I1(n3839_adj_300), .I2(GND_net), 
            .I3(n3865), .O(n35[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4018_1_lut (.I0(n4342), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4990));   // verilog/eeprom.v(24[6:33])
    defparam i4018_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_add_2767_22_lut (.I0(n4837), .I1(n4131), .I2(VCC_net), 
            .I3(n3927), .O(n4836)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_22_lut.LUT_INIT = 16'hebbe;
    SB_CARRY rem_4_add_2566_14 (.CI(n3865), .I0(n3839_adj_300), .I1(GND_net), 
            .CO(n3866));
    SB_LUT4 add_682_2_lut (.I0(GND_net), .I1(n4251), .I2(GND_net), .I3(VCC_net), 
            .O(n1305[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_682_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2767_21_lut (.I0(n4531), .I1(n4132), .I2(VCC_net), 
            .I3(n3926), .O(n4837)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2566_13_lut (.I0(GND_net), .I1(n3840_adj_317), .I2(GND_net), 
            .I3(n3864), .O(n35[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_682_2 (.CI(VCC_net), .I0(n4251), .I1(GND_net), .CO(n3795));
    SB_CARRY rem_4_add_2566_13 (.CI(n3864), .I0(n3840_adj_317), .I1(GND_net), 
            .CO(n3865));
    SB_CARRY rem_4_add_2767_21 (.CI(n3926), .I0(n4132), .I1(VCC_net), 
            .CO(n3927));
    SB_LUT4 rem_4_add_2566_12_lut (.I0(GND_net), .I1(n3841_adj_313), .I2(GND_net), 
            .I3(n3863), .O(n35[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2566_12 (.CI(n3863), .I0(n3841_adj_313), .I1(GND_net), 
            .CO(n3864));
    SB_LUT4 rem_4_i2849_3_lut (.I0(n4243), .I1(n1305[8]), .I2(n4263), 
            .I3(GND_net), .O(n4342));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2849_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4021_1_lut (.I0(n4341), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4993));   // verilog/eeprom.v(24[6:33])
    defparam i4021_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2436_3_lut (.I0(n3638), .I1(n3702[29]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3737));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2436_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2767_20_lut (.I0(n4529), .I1(n4133), .I2(VCC_net), 
            .I3(n3925), .O(n4531)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_20_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2566_11_lut (.I0(GND_net), .I1(n3842_adj_310), .I2(VCC_net), 
            .I3(n3862), .O(n35[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2767_20 (.CI(n3925), .I0(n4133), .I1(VCC_net), 
            .CO(n3926));
    SB_CARRY rem_4_add_2566_11 (.CI(n3862), .I0(n3842_adj_310), .I1(VCC_net), 
            .CO(n3863));
    SB_LUT4 rem_4_i2848_3_lut (.I0(n4242), .I1(n1305[9]), .I2(n4263), 
            .I3(GND_net), .O(n4341));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2848_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_add_2767_19_lut (.I0(n4527), .I1(n4134), .I2(VCC_net), 
            .I3(n3924), .O(n4529)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_19_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2566_10_lut (.I0(GND_net), .I1(n3843_adj_307), .I2(GND_net), 
            .I3(n3861), .O(n35[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4024_1_lut (.I0(n4340), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4996));   // verilog/eeprom.v(24[6:33])
    defparam i4024_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2847_3_lut (.I0(n4241), .I1(n1305[10]), .I2(n4263), 
            .I3(GND_net), .O(n4340));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2847_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4027_1_lut (.I0(n4339), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n4999));   // verilog/eeprom.v(24[6:33])
    defparam i4027_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2767_19 (.CI(n3924), .I0(n4134), .I1(VCC_net), 
            .CO(n3925));
    SB_CARRY rem_4_add_2566_10 (.CI(n3861), .I0(n3843_adj_307), .I1(GND_net), 
            .CO(n3862));
    SB_LUT4 rem_4_add_2566_9_lut (.I0(GND_net), .I1(n3844_adj_286), .I2(VCC_net), 
            .I3(n3860), .O(n35[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2767_18_lut (.I0(n4525), .I1(n4135), .I2(VCC_net), 
            .I3(n3923), .O(n4527)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_18_lut.LUT_INIT = 16'hebbe;
    SB_CARRY rem_4_add_2566_9 (.CI(n3860), .I0(n3844_adj_286), .I1(VCC_net), 
            .CO(n3861));
    SB_CARRY rem_4_add_2767_18 (.CI(n3923), .I0(n4135), .I1(VCC_net), 
            .CO(n3924));
    SB_LUT4 rem_4_add_2566_8_lut (.I0(GND_net), .I1(n3845_adj_285), .I2(VCC_net), 
            .I3(n3859), .O(n35[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2767_17_lut (.I0(n4523), .I1(n4136), .I2(VCC_net), 
            .I3(n3922), .O(n4525)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_17_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_i2846_3_lut (.I0(n4240), .I1(n1305[11]), .I2(n4263), 
            .I3(GND_net), .O(n4339));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2846_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4030_1_lut (.I0(n4338), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5002));   // verilog/eeprom.v(24[6:33])
    defparam i4030_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2845_3_lut (.I0(n4239_adj_356), .I1(n1305[12]), .I2(n4263), 
            .I3(GND_net), .O(n4338));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2845_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2435_3_lut (.I0(n3637), .I1(n3702[30]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3736));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4033_1_lut (.I0(n4337), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n5005));   // verilog/eeprom.v(24[6:33])
    defparam i4033_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2440_3_lut (.I0(n3642), .I1(n3702[25]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3741));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2440_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2767_17 (.CI(n3922), .I0(n4136), .I1(VCC_net), 
            .CO(n3923));
    SB_CARRY rem_4_add_2566_8 (.CI(n3859), .I0(n3845_adj_285), .I1(VCC_net), 
            .CO(n3860));
    SB_LUT4 rem_4_add_2767_16_lut (.I0(n4197[24]), .I1(n4137), .I2(VCC_net), 
            .I3(n3921), .O(n4523)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_16_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 rem_4_add_2566_7_lut (.I0(GND_net), .I1(n3846_adj_287), .I2(VCC_net), 
            .I3(n3858), .O(n35[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2439_3_lut (.I0(n3641), .I1(n3702[26]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3740));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2439_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2767_16 (.CI(n3921), .I0(n4137), .I1(VCC_net), 
            .CO(n3922));
    SB_LUT4 rem_4_i2844_3_lut (.I0(n4238), .I1(n1305[13]), .I2(n4263), 
            .I3(GND_net), .O(n4337));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2844_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 rem_4_i2777_3_lut (.I0(n4139), .I1(n4197[23]), .I2(n4164), 
            .I3(GND_net), .O(n4238));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2777_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2767_15_lut (.I0(GND_net), .I1(n4138), .I2(GND_net), 
            .I3(n3920), .O(n4197[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2566_7 (.CI(n3858), .I0(n3846_adj_287), .I1(VCC_net), 
            .CO(n3859));
    SB_LUT4 rem_4_add_2566_6_lut (.I0(GND_net), .I1(n3847_adj_284), .I2(VCC_net), 
            .I3(n3857), .O(n35[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2767_15 (.CI(n3920), .I0(n4138), .I1(GND_net), 
            .CO(n3921));
    SB_CARRY rem_4_add_2566_6 (.CI(n3857), .I0(n3847_adj_284), .I1(VCC_net), 
            .CO(n3858));
    SB_LUT4 rem_4_i2780_3_lut (.I0(n4142), .I1(n4197[20]), .I2(n4164), 
            .I3(GND_net), .O(n4241));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2780_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2779_3_lut (.I0(n4141), .I1(n4197[21]), .I2(n4164), 
            .I3(GND_net), .O(n4240));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2779_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2767_14_lut (.I0(GND_net), .I1(n4139), .I2(GND_net), 
            .I3(n3919), .O(n4197[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2566_5_lut (.I0(GND_net), .I1(n3848_adj_280), .I2(GND_net), 
            .I3(n3856), .O(n35[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2778_3_lut (.I0(n4140), .I1(n4197[22]), .I2(n4164), 
            .I3(GND_net), .O(n4239_adj_356));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2778_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2767_14 (.CI(n3919), .I0(n4139), .I1(GND_net), 
            .CO(n3920));
    SB_CARRY rem_4_add_2566_5 (.CI(n3856), .I0(n3848_adj_280), .I1(GND_net), 
            .CO(n3857));
    SB_LUT4 eeprom_counter_308_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[31]), .I3(n3787), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2782_3_lut (.I0(n4144), .I1(n4197[18]), .I2(n4164), 
            .I3(GND_net), .O(n4243));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2782_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_681_15_lut (.I0(n1836), .I1(n1836), .I2(n5011), .I3(n3995), 
            .O(n3537)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 rem_4_add_2767_13_lut (.I0(GND_net), .I1(n4140), .I2(GND_net), 
            .I3(n3918), .O(n4197[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2566_4_lut (.I0(GND_net), .I1(n3849_adj_271), .I2(VCC_net), 
            .I3(n3855), .O(n35[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_681_14_lut (.I0(n1978), .I1(n1978), .I2(n5011), .I3(n3994), 
            .O(n3538)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2566_4 (.CI(n3855), .I0(n3849_adj_271), .I1(VCC_net), 
            .CO(n3856));
    SB_LUT4 eeprom_counter_308_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[30]), .I3(n3786), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2767_13 (.CI(n3918), .I0(n4140), .I1(GND_net), 
            .CO(n3919));
    SB_LUT4 rem_4_i2781_3_lut (.I0(n4143), .I1(n4197[19]), .I2(n4164), 
            .I3(GND_net), .O(n4242));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2781_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_681_14 (.CI(n3994), .I0(n1978), .I1(n5011), .CO(n3995));
    SB_LUT4 rem_4_add_2767_12_lut (.I0(GND_net), .I1(n4141), .I2(GND_net), 
            .I3(n3917), .O(n4197[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2785_3_lut (.I0(n4147), .I1(n4197[15]), .I2(n4164), 
            .I3(GND_net), .O(n4246));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2785_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_681_13_lut (.I0(n2117), .I1(n2117), .I2(n5011), .I3(n3993), 
            .O(n3539)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_13_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2767_12 (.CI(n3917), .I0(n4141), .I1(GND_net), 
            .CO(n3918));
    SB_LUT4 rem_4_add_2566_3_lut (.I0(GND_net), .I1(n4741), .I2(VCC_net), 
            .I3(n3854), .O(n35[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2566_3 (.CI(n3854), .I0(n4741), .I1(VCC_net), .CO(n3855));
    SB_LUT4 rem_4_add_2767_11_lut (.I0(GND_net), .I1(n4142), .I2(VCC_net), 
            .I3(n3916), .O(n4197[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2783_3_lut (.I0(n4145), .I1(n4197[17]), .I2(n4164), 
            .I3(GND_net), .O(n4244));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2783_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_681_13 (.CI(n3993), .I0(n2117), .I1(n5011), .CO(n3994));
    SB_CARRY rem_4_add_2767_11 (.CI(n3916), .I0(n4142), .I1(VCC_net), 
            .CO(n3917));
    SB_LUT4 rem_4_add_2566_2_lut (.I0(GND_net), .I1(n3851_adj_281), .I2(GND_net), 
            .I3(VCC_net), .O(n35[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2566_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2784_3_lut (.I0(n4146), .I1(n4197[16]), .I2(n4164), 
            .I3(GND_net), .O(n4245));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2784_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2767_10_lut (.I0(GND_net), .I1(n4143), .I2(GND_net), 
            .I3(n3915), .O(n4197[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2566_2 (.CI(VCC_net), .I0(n3851_adj_281), .I1(GND_net), 
            .CO(n3854));
    SB_CARRY eeprom_counter_308_add_4_32 (.CI(n3786), .I0(GND_net), .I1(eeprom_counter[30]), 
            .CO(n3787));
    SB_LUT4 rem_4_i2786_3_lut (.I0(n4148), .I1(n4197[14]), .I2(n4164), 
            .I3(GND_net), .O(n4247));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_681_12_lut (.I0(n2253), .I1(n2253), .I2(n5011), .I3(n3992), 
            .O(n3540)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_12_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2767_10 (.CI(n3915), .I0(n4143), .I1(GND_net), 
            .CO(n3916));
    SB_LUT4 rem_4_add_2499_18_lut (.I0(n3768_adj_270), .I1(n3735), .I2(VCC_net), 
            .I3(n3853), .O(n3834_adj_364)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_18_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_mux_3_i11_3_lut (.I0(eeprom_counter[10]), .I1(n1_adj_394[10]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4251));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_681_12 (.CI(n3992), .I0(n2253), .I1(n5011), .CO(n3993));
    SB_LUT4 rem_4_add_2767_9_lut (.I0(GND_net), .I1(n4144), .I2(VCC_net), 
            .I3(n3914), .O(n4197[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_17_lut (.I0(GND_net), .I1(n3736), .I2(VCC_net), 
            .I3(n3852), .O(n34[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2789_3_lut (.I0(n4151), .I1(n4197[11]), .I2(n4164), 
            .I3(GND_net), .O(n4250));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2789_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2499_17 (.CI(n3852), .I0(n3736), .I1(VCC_net), 
            .CO(n3853));
    SB_LUT4 rem_4_i2438_3_lut (.I0(n3640), .I1(n3702[27]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3739));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2438_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_681_11_lut (.I0(n2386), .I1(n2386), .I2(n3468), .I3(n3991), 
            .O(n3541)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i18_1_lut (.I0(eeprom_counter[17]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_681_11 (.CI(n3991), .I0(n2386), .I1(n3468), .CO(n3992));
    SB_CARRY rem_4_add_2767_9 (.CI(n3914), .I0(n4144), .I1(VCC_net), .CO(n3915));
    SB_LUT4 rem_4_add_2499_16_lut (.I0(GND_net), .I1(n3737), .I2(VCC_net), 
            .I3(n3851), .O(n34[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_681_10_lut (.I0(n2516), .I1(n2516), .I2(n5011), .I3(n3990), 
            .O(n3542)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2499_16 (.CI(n3851), .I0(n3737), .I1(VCC_net), 
            .CO(n3852));
    SB_LUT4 eeprom_counter_308_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[29]), .I3(n3785), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_16 (.I0(enable_N_60[7]), .I1(enable_N_60[3]), .I2(enable_N_60[1]), 
            .I3(enable_N_60[0]), .O(n4497));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hfffe;
    SB_CARRY add_681_10 (.CI(n3990), .I0(n2516), .I1(n5011), .CO(n3991));
    SB_LUT4 rem_4_add_2767_8_lut (.I0(GND_net), .I1(n4145), .I2(VCC_net), 
            .I3(n3913), .O(n4197[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2767_8 (.CI(n3913), .I0(n4145), .I1(VCC_net), .CO(n3914));
    SB_LUT4 i3_3_lut (.I0(n3837_adj_294), .I1(n3835_adj_297), .I2(n3834_adj_364), 
            .I3(GND_net), .O(n8_adj_375));   // verilog/eeprom.v(24[6:33])
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_17 (.I0(enable_N_60[6]), .I1(n4497), .I2(enable_N_60[8]), 
            .I3(enable_N_60[5]), .O(n4499));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_17.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2787_3_lut (.I0(n4149), .I1(n4197[13]), .I2(n4164), 
            .I3(GND_net), .O(n4248));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_18 (.I0(n3836_adj_303), .I1(n8_adj_375), .I2(n4603), 
            .I3(n3838_adj_290), .O(n3867_adj_292));   // verilog/eeprom.v(24[6:33])
    defparam i4_4_lut_adj_18.LUT_INIT = 16'hfeee;
    SB_LUT4 rem_4_mux_3_i15_3_lut (.I0(eeprom_counter[14]), .I1(n1_adj_394[14]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3851_adj_281));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_mux_3_i14_3_lut (.I0(eeprom_counter[13]), .I1(n1_adj_394[13]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3951_adj_267));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2585_rep_14_3_lut (.I0(n3851_adj_281), .I1(n35[14]), 
            .I2(n3867_adj_292), .I3(GND_net), .O(n3950_adj_274));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2585_rep_14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3955_3_lut (.I0(n3849_adj_271), .I1(n35[16]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3948_adj_279));   // verilog/eeprom.v(24[6:33])
    defparam i3955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2584_3_lut (.I0(n4741), .I1(n35[15]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3949_adj_277));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2935_4_lut (.I0(n3949_adj_277), .I1(n3948_adj_279), .I2(n3950_adj_274), 
            .I3(n3951_adj_267), .O(n3579));
    defparam i2935_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_adj_19 (.I0(n3947_adj_361), .I1(n3945_adj_329), .I2(n3944_adj_326), 
            .I3(n3946_adj_323), .O(n4663));
    defparam i1_4_lut_adj_19.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_20 (.I0(n3939_adj_319), .I1(n3940_adj_315), .I2(n3941_adj_312), 
            .I3(GND_net), .O(n4667));
    defparam i1_3_lut_adj_20.LUT_INIT = 16'h8080;
    SB_LUT4 i3005_4_lut (.I0(n4663), .I1(n3942_adj_309), .I2(n3943_adj_306), 
            .I3(n3579), .O(n3651));
    defparam i3005_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i2_4_lut (.I0(n4740), .I1(n3938_adj_302), .I2(n3651), .I3(n4667), 
            .O(n8_adj_376));
    defparam i2_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 rem_4_i2788_3_lut (.I0(n4150), .I1(n4197[12]), .I2(n4164), 
            .I3(GND_net), .O(n4249));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2965_4_lut (.I0(n4249), .I1(n4248), .I2(n4250), .I3(n4251), 
            .O(n3611));
    defparam i2965_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_adj_21 (.I0(enable_N_60[12]), .I1(enable_N_60[11]), 
            .I2(enable_N_60[10]), .I3(n4499), .O(n4505));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_21.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_22 (.I0(n4247), .I1(n4245), .I2(n4244), .I3(n4246), 
            .O(n4697));
    defparam i1_4_lut_adj_22.LUT_INIT = 16'hfffe;
    SB_LUT4 add_681_9_lut (.I0(n2643), .I1(n2643), .I2(n3468), .I3(n3989), 
            .O(n3543)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2767_7_lut (.I0(GND_net), .I1(n4146), .I2(VCC_net), 
            .I3(n3912), .O(n4197[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_15_lut (.I0(GND_net), .I1(n3738), .I2(GND_net), 
            .I3(n3850), .O(n34[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3907_3_lut (.I0(n4137), .I1(n4136), .I2(n4138), .I3(GND_net), 
            .O(n4842));
    defparam i3907_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY rem_4_add_2767_7 (.CI(n3912), .I0(n4146), .I1(VCC_net), .CO(n3913));
    SB_CARRY rem_4_add_2499_15 (.CI(n3850), .I0(n3738), .I1(GND_net), 
            .CO(n3851));
    SB_CARRY eeprom_counter_308_add_4_31 (.CI(n3785), .I0(GND_net), .I1(eeprom_counter[29]), 
            .CO(n3786));
    SB_LUT4 i1_4_lut_adj_23 (.I0(enable_N_60[16]), .I1(enable_N_60[15]), 
            .I2(enable_N_60[14]), .I3(n4505), .O(n4511));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_23.LUT_INIT = 16'hfffe;
    SB_LUT4 i3904_4_lut (.I0(n4842), .I1(n4133), .I2(n4134), .I3(n4135), 
            .O(n4839));
    defparam i3904_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_24 (.I0(n4239_adj_356), .I1(n4240), .I2(n4241), 
            .I3(GND_net), .O(n4689));
    defparam i1_3_lut_adj_24.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_25 (.I0(enable_N_60[13]), .I1(enable_N_60[18]), 
            .I2(enable_N_60[9]), .I3(enable_N_60[2]), .O(n4436));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_25.LUT_INIT = 16'hfffe;
    SB_LUT4 i3019_4_lut (.I0(n4697), .I1(n4242), .I2(n4243), .I3(n3611), 
            .O(n3665));
    defparam i3019_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_4_lut_adj_26 (.I0(enable_N_60[20]), .I1(n4436), .I2(enable_N_60[19]), 
            .I3(n4511), .O(n4517));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_26.LUT_INIT = 16'hfffe;
    SB_LUT4 i137_4_lut (.I0(n4839), .I1(n4836), .I2(n4164), .I3(n4132), 
            .O(n4351));
    defparam i137_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i1_4_lut_adj_27 (.I0(enable_N_60[22]), .I1(enable_N_60[23]), 
            .I2(enable_N_60[17]), .I3(enable_N_60[4]), .O(n4451));   // verilog/eeprom.v(24[6:36])
    defparam i1_4_lut_adj_27.LUT_INIT = 16'hfffe;
    SB_CARRY rem_4_add_2365_15 (.CI(n3821), .I0(n3538), .I1(GND_net), 
            .CO(n3822));
    SB_CARRY add_681_9 (.CI(n3989), .I0(n2643), .I1(n3468), .CO(n3990));
    SB_LUT4 i3968_4_lut (.I0(enable_N_60[24]), .I1(n4451), .I2(enable_N_60[21]), 
            .I3(n4517), .O(enable_N_59));   // verilog/eeprom.v(24[6:36])
    defparam i3968_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 add_681_8_lut (.I0(n2767), .I1(n2767), .I2(n3468), .I3(n3988), 
            .O(n3544)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_8_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2767_6_lut (.I0(GND_net), .I1(n4147), .I2(VCC_net), 
            .I3(n3911), .O(n4197[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_14_lut (.I0(GND_net), .I1(n3739), .I2(GND_net), 
            .I3(n3849), .O(n34[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3441_4_lut (.I0(n4351), .I1(n4238), .I2(n3665), .I3(n4689), 
            .O(n4263));
    defparam i3441_4_lut.LUT_INIT = 16'heaaa;
    SB_CARRY add_681_8 (.CI(n3988), .I0(n2767), .I1(n3468), .CO(n3989));
    SB_CARRY rem_4_add_2499_14 (.CI(n3849), .I0(n3739), .I1(GND_net), 
            .CO(n3850));
    SB_LUT4 eeprom_counter_308_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[28]), .I3(n3784), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2767_6 (.CI(n3911), .I0(n4147), .I1(VCC_net), .CO(n3912));
    SB_LUT4 add_681_7_lut (.I0(n2888), .I1(n2888), .I2(n3468), .I3(n3987), 
            .O(n3545)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_7_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_i2843_3_lut (.I0(n4237), .I1(n1305[14]), .I2(n4263), 
            .I3(GND_net), .O(n4336));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2843_3_lut.LUT_INIT = 16'h3535;
    SB_CARRY add_681_7 (.CI(n3987), .I0(n2888), .I1(n3468), .CO(n3988));
    SB_LUT4 rem_4_add_2767_5_lut (.I0(GND_net), .I1(n4148), .I2(GND_net), 
            .I3(n3910), .O(n4197[14])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_13_lut (.I0(GND_net), .I1(n3740), .I2(GND_net), 
            .I3(n3848), .O(n34[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_30 (.CI(n3784), .I0(GND_net), .I1(eeprom_counter[28]), 
            .CO(n3785));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i32_1_lut (.I0(eeprom_counter[31]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i1_1_lut (.I0(eeprom_counter[0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_681_6_lut (.I0(n3006), .I1(n3006), .I2(n3468), .I3(n3986), 
            .O(n3546)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY rem_4_add_2499_13 (.CI(n3848), .I0(n3740), .I1(GND_net), 
            .CO(n3849));
    SB_LUT4 eeprom_counter_308_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[27]), .I3(n3783), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_29 (.CI(n3783), .I0(GND_net), .I1(eeprom_counter[27]), 
            .CO(n3784));
    SB_LUT4 eeprom_counter_308_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[26]), .I3(n3782), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2365_14_lut (.I0(GND_net), .I1(n3539), .I2(GND_net), 
            .I3(n3820), .O(n3603[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2365_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_681_6 (.CI(n3986), .I0(n3006), .I1(n3468), .CO(n3987));
    SB_CARRY rem_4_add_2767_5 (.CI(n3910), .I0(n4148), .I1(GND_net), .CO(n3911));
    SB_LUT4 add_681_5_lut (.I0(n3121), .I1(n3121), .I2(n5011), .I3(n3985), 
            .O(n3547)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 rem_4_add_2767_4_lut (.I0(GND_net), .I1(n4149), .I2(VCC_net), 
            .I3(n3909), .O(n4197[13])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_12_lut (.I0(GND_net), .I1(n3741), .I2(GND_net), 
            .I3(n3847), .O(n34[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_28 (.CI(n3782), .I0(GND_net), .I1(eeprom_counter[26]), 
            .CO(n3783));
    SB_LUT4 eeprom_counter_308_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[25]), .I3(n3781), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_681_5 (.CI(n3985), .I0(n3121), .I1(n5011), .CO(n3986));
    SB_CARRY rem_4_add_2767_4 (.CI(n3909), .I0(n4149), .I1(VCC_net), .CO(n3910));
    SB_CARRY eeprom_counter_308_add_4_27 (.CI(n3781), .I0(GND_net), .I1(eeprom_counter[25]), 
            .CO(n3782));
    SB_LUT4 rem_4_add_2767_3_lut (.I0(GND_net), .I1(n4150), .I2(VCC_net), 
            .I3(n3908), .O(n4197[12])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2499_12 (.CI(n3847), .I0(n3741), .I1(GND_net), 
            .CO(n3848));
    SB_LUT4 rem_4_i2704_3_lut (.I0(n4034), .I1(n4098[29]), .I2(n4065), 
            .I3(GND_net), .O(n4133));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2704_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_add_2499_11_lut (.I0(GND_net), .I1(n3742), .I2(VCC_net), 
            .I3(n3846), .O(n34[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_681_4_lut (.I0(n3233), .I1(n3233), .I2(n3468), .I3(n3984), 
            .O(n3548)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_4_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_681_4 (.CI(n3984), .I0(n3233), .I1(n3468), .CO(n3985));
    SB_CARRY rem_4_add_2767_3 (.CI(n3908), .I0(n4150), .I1(VCC_net), .CO(n3909));
    SB_CARRY rem_4_add_2499_11 (.CI(n3846), .I0(n3742), .I1(VCC_net), 
            .CO(n3847));
    SB_LUT4 add_681_3_lut (.I0(n3342), .I1(n3342), .I2(n3468), .I3(n3983), 
            .O(n3549)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_3_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 rem_4_add_2499_10_lut (.I0(GND_net), .I1(n3743), .I2(GND_net), 
            .I3(n3845), .O(n34[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eeprom_counter_308_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[24]), .I3(n3780), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3944_3_lut (.I0(n3934_adj_299), .I1(n3999[30]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4033));   // verilog/eeprom.v(24[6:33])
    defparam i3944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3945_3_lut (.I0(n4033), .I1(n4098[30]), .I2(n4065), .I3(GND_net), 
            .O(n4132));   // verilog/eeprom.v(24[6:33])
    defparam i3945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(n3934_adj_299), .I1(n3933_adj_327), .I2(GND_net), 
            .I3(GND_net), .O(n7_adj_377));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_681_3 (.CI(n3983), .I0(n3342), .I1(n3468), .CO(n3984));
    SB_LUT4 rem_4_add_2767_2_lut (.I0(GND_net), .I1(n4151), .I2(GND_net), 
            .I3(VCC_net), .O(n4197[11])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2767_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2705_3_lut (.I0(n4035), .I1(n4098[28]), .I2(n4065), 
            .I3(GND_net), .O(n4134));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2705_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_681_2_lut (.I0(n3448), .I1(n3448), .I2(n5011), .I3(VCC_net), 
            .O(n3550)) /* synthesis syn_instantiated=1 */ ;
    defparam add_681_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY rem_4_add_2767_2 (.CI(VCC_net), .I0(n4151), .I1(GND_net), 
            .CO(n3908));
    SB_CARRY rem_4_add_2499_10 (.CI(n3845), .I0(n3743), .I1(GND_net), 
            .CO(n3846));
    SB_LUT4 rem_4_mux_3_i17_3_lut (.I0(eeprom_counter[16]), .I1(n1_adj_394[16]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3651_adj_363));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_681_2 (.CI(VCC_net), .I0(n3448), .I1(n5011), .CO(n3983));
    SB_LUT4 rem_4_add_2700_21_lut (.I0(n4065), .I1(n4032), .I2(VCC_net), 
            .I3(n3907), .O(n4131)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_21_lut.LUT_INIT = 16'h8228;
    SB_CARRY eeprom_counter_308_add_4_26 (.CI(n3780), .I0(GND_net), .I1(eeprom_counter[24]), 
            .CO(n3781));
    SB_LUT4 rem_4_i2708_3_lut (.I0(n4038), .I1(n4098[25]), .I2(n4065), 
            .I3(GND_net), .O(n4137));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2708_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2437_3_lut (.I0(n3639), .I1(n3702[28]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3738));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2437_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2707_3_lut (.I0(n4037), .I1(n4098[26]), .I2(n4065), 
            .I3(GND_net), .O(n4136));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2707_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[31]), .I3(n3982), .O(n1_adj_394[31])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3937_3_lut (.I0(n3644), .I1(n3702[23]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3743));   // verilog/eeprom.v(24[6:33])
    defparam i3937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2441_3_lut (.I0(n3643), .I1(n3702[24]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3742));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2441_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[30]), .I3(n3981), .O(n1_adj_394[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_32 (.CI(n3981), .I0(GND_net), .I1(n1[30]), 
            .CO(n3982));
    SB_LUT4 rem_4_add_2700_20_lut (.I0(GND_net), .I1(n4033), .I2(VCC_net), 
            .I3(n3906), .O(n4098[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2706_3_lut (.I0(n4036), .I1(n4098[27]), .I2(n4065), 
            .I3(GND_net), .O(n4135));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2706_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[29]), .I3(n3980), .O(n1_adj_394[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_20 (.CI(n3906), .I0(n4033), .I1(VCC_net), 
            .CO(n3907));
    SB_LUT4 rem_4_i2449_3_lut (.I0(n3651_adj_363), .I1(n3702[16]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3750));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2449_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2711_3_lut (.I0(n4041), .I1(n4098[22]), .I2(n4065), 
            .I3(GND_net), .O(n4140));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2711_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3942_3_lut (.I0(n3550), .I1(n3603[18]), .I2(n3570), .I3(GND_net), 
            .O(n3649_adj_362));   // verilog/eeprom.v(24[6:33])
    defparam i3942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3943_3_lut (.I0(n3649_adj_362), .I1(n3702[18]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3748));   // verilog/eeprom.v(24[6:33])
    defparam i3943_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_31 (.CI(n3980), .I0(GND_net), .I1(n1[29]), 
            .CO(n3981));
    SB_LUT4 rem_4_add_2700_19_lut (.I0(GND_net), .I1(n4034), .I2(VCC_net), 
            .I3(n3905), .O(n4098[29])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_add_3_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[28]), .I3(n3979), .O(n1_adj_394[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_30 (.CI(n3979), .I0(GND_net), .I1(n1[28]), 
            .CO(n3980));
    SB_CARRY rem_4_add_2700_19 (.CI(n3905), .I0(n4034), .I1(VCC_net), 
            .CO(n3906));
    SB_LUT4 rem_4_unary_minus_2_add_3_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[27]), .I3(n3978), .O(n1_adj_394[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2448_3_lut (.I0(n3650), .I1(n3702[17]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3749));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2448_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_29 (.CI(n3978), .I0(GND_net), .I1(n1[27]), 
            .CO(n3979));
    SB_LUT4 rem_4_add_2700_18_lut (.I0(GND_net), .I1(n4035), .I2(VCC_net), 
            .I3(n3904), .O(n4098[28])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_9_lut (.I0(GND_net), .I1(n3744), .I2(VCC_net), 
            .I3(n3844), .O(n34[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_18 (.CI(n3904), .I0(n4035), .I1(VCC_net), 
            .CO(n3905));
    SB_CARRY rem_4_add_2499_9 (.CI(n3844), .I0(n3744), .I1(VCC_net), .CO(n3845));
    SB_LUT4 rem_4_i2710_3_lut (.I0(n4040), .I1(n4098[23]), .I2(n4065), 
            .I3(GND_net), .O(n4139));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2710_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2369_3_lut (.I0(n3539), .I1(n3603[29]), .I2(n3570), 
            .I3(GND_net), .O(n3638));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2369_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_add_2365_14 (.CI(n3820), .I0(n3539), .I1(GND_net), 
            .CO(n3821));
    SB_LUT4 rem_4_i2712_3_lut (.I0(n4042), .I1(n4098[21]), .I2(n4065), 
            .I3(GND_net), .O(n4141));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2712_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2368_3_lut (.I0(n3538), .I1(n3603[30]), .I2(n3570), 
            .I3(GND_net), .O(n3637));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2368_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[26]), .I3(n3977), .O(n1_adj_394[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_28 (.CI(n3977), .I0(GND_net), .I1(n1[26]), 
            .CO(n3978));
    SB_LUT4 rem_4_i2372_3_lut (.I0(n3542), .I1(n3603[26]), .I2(n3570), 
            .I3(GND_net), .O(n3641));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2372_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[25]), .I3(n3976), .O(n1_adj_394[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_17_lut (.I0(GND_net), .I1(n4036), .I2(VCC_net), 
            .I3(n3903), .O(n4098[27])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_27 (.CI(n3976), .I0(GND_net), .I1(n1[25]), 
            .CO(n3977));
    SB_CARRY rem_4_add_2700_17 (.CI(n3903), .I0(n4036), .I1(VCC_net), 
            .CO(n3904));
    SB_LUT4 rem_4_i2371_3_lut (.I0(n3541), .I1(n3603[27]), .I2(n3570), 
            .I3(GND_net), .O(n3640));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2371_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_4_lut (.I0(n3936_adj_296), .I1(n7_adj_377), .I2(n3937_adj_293), 
            .I3(n8_adj_376), .O(n3966_adj_268));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2370_3_lut (.I0(n3540), .I1(n3603[28]), .I2(n3570), 
            .I3(GND_net), .O(n3639));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2370_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2582_3_lut (.I0(n3848_adj_280), .I1(n35[17]), .I2(n3867_adj_292), 
            .I3(GND_net), .O(n3947_adj_361));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2714_3_lut (.I0(n4044), .I1(n4098[19]), .I2(n4065), 
            .I3(GND_net), .O(n4143));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2714_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2374_3_lut (.I0(n3544), .I1(n3603[24]), .I2(n3570), 
            .I3(GND_net), .O(n3643));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2374_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2713_3_lut (.I0(n4043), .I1(n4098[20]), .I2(n4065), 
            .I3(GND_net), .O(n4142));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2713_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2717_3_lut (.I0(n4047), .I1(n4098[16]), .I2(n4065), 
            .I3(GND_net), .O(n4146));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2717_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[24]), .I3(n3975), .O(n1_adj_394[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_16_lut (.I0(GND_net), .I1(n4037), .I2(VCC_net), 
            .I3(n3902), .O(n4098[26])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_26 (.CI(n3975), .I0(GND_net), .I1(n1[24]), 
            .CO(n3976));
    SB_LUT4 rem_4_unary_minus_2_add_3_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[23]), .I3(n3974), .O(n1_adj_394[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_16 (.CI(n3902), .I0(n4037), .I1(VCC_net), 
            .CO(n3903));
    SB_CARRY rem_4_unary_minus_2_add_3_25 (.CI(n3974), .I0(GND_net), .I1(n1[23]), 
            .CO(n3975));
    SB_LUT4 rem_4_unary_minus_2_add_3_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[22]), .I3(n3973), .O(n1_adj_394[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_15_lut (.I0(GND_net), .I1(n4038), .I2(GND_net), 
            .I3(n3901), .O(n4098[25])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_8_lut (.I0(GND_net), .I1(n3745), .I2(VCC_net), 
            .I3(n3843), .O(n34[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_15 (.CI(n3901), .I0(n4038), .I1(GND_net), 
            .CO(n3902));
    SB_CARRY rem_4_add_2499_8 (.CI(n3843), .I0(n3745), .I1(VCC_net), .CO(n3844));
    SB_LUT4 rem_4_i2715_3_lut (.I0(n4045), .I1(n4098[18]), .I2(n4065), 
            .I3(GND_net), .O(n4144));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2715_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2716_3_lut (.I0(n4046), .I1(n4098[17]), .I2(n4065), 
            .I3(GND_net), .O(n4145));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2716_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_308_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[23]), .I3(n3779), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2718_3_lut (.I0(n4048), .I1(n4098[15]), .I2(n4065), 
            .I3(GND_net), .O(n4147));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2718_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2645_3_lut (.I0(n3943_adj_306), .I1(n3999[21]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4042));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2645_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_24 (.CI(n3973), .I0(GND_net), .I1(n1[22]), 
            .CO(n3974));
    SB_LUT4 rem_4_add_2700_14_lut (.I0(GND_net), .I1(n4039), .I2(GND_net), 
            .I3(n3900), .O(n4098[24])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_7_lut (.I0(GND_net), .I1(n4765), .I2(VCC_net), 
            .I3(n3842), .O(n34[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2381_3_lut (.I0(n3551), .I1(n3603[17]), .I2(n3570), 
            .I3(GND_net), .O(n3650));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2381_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2379_3_lut (.I0(n3549), .I1(n3603[19]), .I2(n3570), 
            .I3(GND_net), .O(n3648));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2981_4_lut (.I0(n3649_adj_362), .I1(n3648), .I2(n3650), .I3(n3651_adj_363), 
            .O(n3627));
    defparam i2981_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_adj_28 (.I0(n3647), .I1(n3645), .I2(n3644), .I3(n3646), 
            .O(n4585));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'hfffe;
    SB_LUT4 i3037_4_lut (.I0(n4585), .I1(n3642), .I2(n3643), .I3(n3627), 
            .O(n3683));
    defparam i3037_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_4_lut_adj_29 (.I0(n3683), .I1(n3639), .I2(n3640), .I3(n3641), 
            .O(n4569));
    defparam i1_4_lut_adj_29.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut_adj_30 (.I0(n4569), .I1(n3636), .I2(n3637), .I3(n3638), 
            .O(n3669_adj_342));
    defparam i1_4_lut_adj_30.LUT_INIT = 16'hfefc;
    SB_LUT4 rem_4_i2378_3_lut (.I0(n3548), .I1(n3603[20]), .I2(n3570), 
            .I3(GND_net), .O(n3647));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2378_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2445_rep_31_3_lut (.I0(n3647), .I1(n3702[20]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n4765));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2445_rep_31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2446_rep_32_3_lut (.I0(n3648), .I1(n3702[19]), .I2(n3669_adj_342), 
            .I3(GND_net), .O(n3747));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2446_rep_32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2957_4_lut (.I0(n3749), .I1(n3748), .I2(n3750), .I3(n3751), 
            .O(n3601));
    defparam i2957_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_adj_31 (.I0(n3747), .I1(n3745), .I2(n3744), .I3(n4765), 
            .O(n4623));
    defparam i1_4_lut_adj_31.LUT_INIT = 16'hfffe;
    SB_LUT4 i3033_4_lut (.I0(n4623), .I1(n3742), .I2(n3743), .I3(n3601), 
            .O(n3679));
    defparam i3033_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i2_2_lut (.I0(n3736), .I1(n3737), .I2(GND_net), .I3(GND_net), 
            .O(n6_adj_379));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_32 (.I0(n3738), .I1(n3739), .I2(n3740), .I3(n3741), 
            .O(n4629));
    defparam i1_4_lut_adj_32.LUT_INIT = 16'h8000;
    SB_LUT4 i3_4_lut (.I0(n4629), .I1(n6_adj_379), .I2(n3735), .I3(n3679), 
            .O(n3768_adj_270));
    defparam i3_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 rem_4_mux_3_i16_3_lut (.I0(eeprom_counter[15]), .I1(n1_adj_394[15]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n3751));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2517_rep_7_3_lut (.I0(n3751), .I1(n34[15]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n4741));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2517_rep_7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3953_3_lut (.I0(n3749), .I1(n34[17]), .I2(n3768_adj_270), 
            .I3(GND_net), .O(n3848_adj_280));   // verilog/eeprom.v(24[6:33])
    defparam i3953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2649_rep_27_3_lut (.I0(n3947_adj_361), .I1(n3999[17]), 
            .I2(n3966_adj_268), .I3(GND_net), .O(n4046));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2649_rep_27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i14_1_lut (.I0(eeprom_counter[13]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i15_1_lut (.I0(eeprom_counter[14]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i16_1_lut (.I0(eeprom_counter[15]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY eeprom_counter_308_add_4_25 (.CI(n3779), .I0(GND_net), .I1(eeprom_counter[23]), 
            .CO(n3780));
    SB_CARRY rem_4_add_2700_14 (.CI(n3900), .I0(n4039), .I1(GND_net), 
            .CO(n3901));
    SB_LUT4 rem_4_unary_minus_2_add_3_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[21]), .I3(n3972), .O(n1_adj_394[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_13_lut (.I0(GND_net), .I1(n4040), .I2(GND_net), 
            .I3(n3899), .O(n4098[23])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2499_7 (.CI(n3842), .I0(n4765), .I1(VCC_net), .CO(n3843));
    SB_CARRY rem_4_add_2700_13 (.CI(n3899), .I0(n4040), .I1(GND_net), 
            .CO(n3900));
    SB_LUT4 rem_4_i2641_3_lut (.I0(n3939_adj_319), .I1(n3999[25]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4038));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2641_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_23 (.CI(n3972), .I0(GND_net), .I1(n1[21]), 
            .CO(n3973));
    SB_LUT4 rem_4_add_2700_12_lut (.I0(GND_net), .I1(n4041), .I2(GND_net), 
            .I3(n3898), .O(n4098[22])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_6_lut (.I0(GND_net), .I1(n3747), .I2(VCC_net), 
            .I3(n3841), .O(n34[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2499_6 (.CI(n3841), .I0(n3747), .I1(VCC_net), .CO(n3842));
    SB_CARRY rem_4_add_2700_12 (.CI(n3898), .I0(n4041), .I1(GND_net), 
            .CO(n3899));
    SB_LUT4 rem_4_add_2499_5_lut (.I0(GND_net), .I1(n3748), .I2(GND_net), 
            .I3(n3840), .O(n34[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2499_5 (.CI(n3840), .I0(n3748), .I1(GND_net), .CO(n3841));
    SB_DFF eeprom_counter_308__i1 (.Q(eeprom_counter[1]), .C(CLK_N_keep), 
           .D(n133[1]));   // verilog/eeprom.v(23[21:39])
    SB_LUT4 eeprom_counter_308_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[22]), .I3(n3778), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_24 (.CI(n3778), .I0(GND_net), .I1(eeprom_counter[22]), 
            .CO(n3779));
    SB_LUT4 eeprom_counter_308_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[21]), .I3(n3777), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_23 (.CI(n3777), .I0(GND_net), .I1(eeprom_counter[21]), 
            .CO(n3778));
    SB_LUT4 eeprom_counter_308_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[20]), .I3(n3776), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_22 (.CI(n3776), .I0(GND_net), .I1(eeprom_counter[20]), 
            .CO(n3777));
    SB_LUT4 eeprom_counter_308_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[19]), .I3(n3775), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFF eeprom_counter_308__i2 (.Q(eeprom_counter[2]), .C(CLK_N_keep), 
           .D(n133[2]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i3 (.Q(eeprom_counter[3]), .C(CLK_N_keep), 
           .D(n133[3]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i4 (.Q(eeprom_counter[4]), .C(CLK_N_keep), 
           .D(n133[4]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i5 (.Q(eeprom_counter[5]), .C(CLK_N_keep), 
           .D(n133[5]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i6 (.Q(eeprom_counter[6]), .C(CLK_N_keep), 
           .D(n133[6]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i7 (.Q(eeprom_counter[7]), .C(CLK_N_keep), 
           .D(n133[7]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i8 (.Q(eeprom_counter[8]), .C(CLK_N_keep), 
           .D(n133[8]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i9 (.Q(eeprom_counter[9]), .C(CLK_N_keep), 
           .D(n133[9]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i10 (.Q(eeprom_counter[10]), .C(CLK_N_keep), 
           .D(n133[10]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i11 (.Q(eeprom_counter[11]), .C(CLK_N_keep), 
           .D(n133[11]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i12 (.Q(eeprom_counter[12]), .C(CLK_N_keep), 
           .D(n133[12]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i13 (.Q(eeprom_counter[13]), .C(CLK_N_keep), 
           .D(n133[13]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i14 (.Q(eeprom_counter[14]), .C(CLK_N_keep), 
           .D(n133[14]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i15 (.Q(eeprom_counter[15]), .C(CLK_N_keep), 
           .D(n133[15]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i16 (.Q(eeprom_counter[16]), .C(CLK_N_keep), 
           .D(n133[16]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i17 (.Q(eeprom_counter[17]), .C(CLK_N_keep), 
           .D(n133[17]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i18 (.Q(eeprom_counter[18]), .C(CLK_N_keep), 
           .D(n133[18]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i19 (.Q(eeprom_counter[19]), .C(CLK_N_keep), 
           .D(n133[19]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i20 (.Q(eeprom_counter[20]), .C(CLK_N_keep), 
           .D(n133[20]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i21 (.Q(eeprom_counter[21]), .C(CLK_N_keep), 
           .D(n133[21]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i22 (.Q(eeprom_counter[22]), .C(CLK_N_keep), 
           .D(n133[22]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i23 (.Q(eeprom_counter[23]), .C(CLK_N_keep), 
           .D(n133[23]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i24 (.Q(eeprom_counter[24]), .C(CLK_N_keep), 
           .D(n133[24]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i25 (.Q(eeprom_counter[25]), .C(CLK_N_keep), 
           .D(n133[25]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i26 (.Q(eeprom_counter[26]), .C(CLK_N_keep), 
           .D(n133[26]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i27 (.Q(eeprom_counter[27]), .C(CLK_N_keep), 
           .D(n133[27]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i28 (.Q(eeprom_counter[28]), .C(CLK_N_keep), 
           .D(n133[28]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i29 (.Q(eeprom_counter[29]), .C(CLK_N_keep), 
           .D(n133[29]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i30 (.Q(eeprom_counter[30]), .C(CLK_N_keep), 
           .D(n133[30]));   // verilog/eeprom.v(23[21:39])
    SB_DFF eeprom_counter_308__i31 (.Q(eeprom_counter[31]), .C(CLK_N_keep), 
           .D(n133[31]));   // verilog/eeprom.v(23[21:39])
    SB_LUT4 rem_4_i2640_3_lut (.I0(n3938_adj_302), .I1(n3999[26]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4037));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2640_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_21 (.CI(n3775), .I0(GND_net), .I1(eeprom_counter[19]), 
            .CO(n3776));
    SB_LUT4 rem_4_i2646_3_lut (.I0(n3944_adj_326), .I1(n3999[20]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4043));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2646_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_308_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[18]), .I3(n3774), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_20 (.CI(n3774), .I0(GND_net), .I1(eeprom_counter[18]), 
            .CO(n3775));
    SB_LUT4 eeprom_counter_308_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[17]), .I3(n3773), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2639_3_lut (.I0(n3937_adj_293), .I1(n3999[27]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4036));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2638_3_lut (.I0(n3936_adj_296), .I1(n3999[28]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4035));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2638_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_19 (.CI(n3773), .I0(GND_net), .I1(eeprom_counter[17]), 
            .CO(n3774));
    SB_LUT4 eeprom_counter_308_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[16]), .I3(n3772), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2637_3_lut (.I0(n4740), .I1(n3999[29]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4034));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2637_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_18 (.CI(n3772), .I0(GND_net), .I1(eeprom_counter[16]), 
            .CO(n3773));
    SB_LUT4 eeprom_counter_308_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[15]), .I3(n3771), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_17 (.CI(n3771), .I0(GND_net), .I1(eeprom_counter[15]), 
            .CO(n3772));
    SB_LUT4 eeprom_counter_308_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[14]), .I3(n3770), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2644_3_lut (.I0(n3942_adj_309), .I1(n3999[22]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4041));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2644_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_16 (.CI(n3770), .I0(GND_net), .I1(eeprom_counter[14]), 
            .CO(n3771));
    SB_LUT4 eeprom_counter_308_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[13]), .I3(n3769), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_15 (.CI(n3769), .I0(GND_net), .I1(eeprom_counter[13]), 
            .CO(n3770));
    SB_LUT4 rem_4_i2643_3_lut (.I0(n3941_adj_312), .I1(n3999[23]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4040));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2643_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_308_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[12]), .I3(n3768), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_14 (.CI(n3768), .I0(GND_net), .I1(eeprom_counter[12]), 
            .CO(n3769));
    SB_LUT4 rem_4_i2642_3_lut (.I0(n3940_adj_315), .I1(n3999[24]), .I2(n3966_adj_268), 
            .I3(GND_net), .O(n4039));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2642_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2647_rep_29_3_lut (.I0(n3945_adj_329), .I1(n3999[19]), 
            .I2(n3966_adj_268), .I3(GND_net), .O(n4044));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2647_rep_29_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eeprom_counter_308_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[11]), .I3(n3767), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_i2648_rep_26_3_lut (.I0(n3946_adj_323), .I1(n3999[18]), 
            .I2(n3966_adj_268), .I3(GND_net), .O(n4045));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2648_rep_26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_13 (.CI(n3767), .I0(GND_net), .I1(eeprom_counter[11]), 
            .CO(n3768));
    SB_LUT4 i1_3_lut_adj_33 (.I0(n4049), .I1(n4762), .I2(n4051), .I3(GND_net), 
            .O(n4367));
    defparam i1_3_lut_adj_33.LUT_INIT = 16'hfefe;
    SB_LUT4 eeprom_counter_308_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[10]), .I3(n3766), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_34 (.I0(n4047), .I1(n4045), .I2(n4044), .I3(n4046), 
            .O(n4649));
    defparam i1_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_CARRY eeprom_counter_308_add_4_12 (.CI(n3766), .I0(GND_net), .I1(eeprom_counter[10]), 
            .CO(n3767));
    SB_LUT4 eeprom_counter_308_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[9]), .I3(n3765), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_35 (.I0(n4039), .I1(n4040), .I2(n4041), .I3(GND_net), 
            .O(n4641));
    defparam i1_3_lut_adj_35.LUT_INIT = 16'h8080;
    SB_CARRY eeprom_counter_308_add_4_11 (.CI(n3765), .I0(GND_net), .I1(eeprom_counter[9]), 
            .CO(n3766));
    SB_LUT4 eeprom_counter_308_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[8]), .I3(n3764), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3003_4_lut (.I0(n4649), .I1(n4043), .I2(n4367), .I3(n4048), 
            .O(n3649));
    defparam i3003_4_lut.LUT_INIT = 16'hc888;
    SB_LUT4 i1_4_lut_adj_36 (.I0(n4038), .I1(n3649), .I2(n4641), .I3(n4042), 
            .O(n4461));
    defparam i1_4_lut_adj_36.LUT_INIT = 16'ha080;
    SB_LUT4 i5_4_lut_adj_37 (.I0(n4034), .I1(n4461), .I2(n4035), .I3(n4036), 
            .O(n12_adj_386));   // verilog/eeprom.v(24[6:33])
    defparam i5_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_CARRY eeprom_counter_308_add_4_10 (.CI(n3764), .I0(GND_net), .I1(eeprom_counter[8]), 
            .CO(n3765));
    SB_LUT4 eeprom_counter_308_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[7]), .I3(n3763), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_9 (.CI(n3763), .I0(GND_net), .I1(eeprom_counter[7]), 
            .CO(n3764));
    SB_LUT4 eeprom_counter_308_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[6]), .I3(n3762), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_8 (.CI(n3762), .I0(GND_net), .I1(eeprom_counter[6]), 
            .CO(n3763));
    SB_LUT4 eeprom_counter_308_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[5]), .I3(n3761), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_7 (.CI(n3761), .I0(GND_net), .I1(eeprom_counter[5]), 
            .CO(n3762));
    SB_LUT4 rem_4_unary_minus_2_add_3_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[20]), .I3(n3971), .O(n1_adj_394[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_22 (.CI(n3971), .I0(GND_net), .I1(n1[20]), 
            .CO(n3972));
    SB_LUT4 eeprom_counter_308_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[4]), .I3(n3760), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_6 (.CI(n3760), .I0(GND_net), .I1(eeprom_counter[4]), 
            .CO(n3761));
    SB_LUT4 eeprom_counter_308_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[3]), .I3(n3759), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6_4_lut (.I0(n4037), .I1(n12_adj_386), .I2(n4033), .I3(n4032), 
            .O(n4065));   // verilog/eeprom.v(24[6:33])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_add_2700_11_lut (.I0(GND_net), .I1(n4042), .I2(VCC_net), 
            .I3(n3897), .O(n4098[21])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_4_lut (.I0(GND_net), .I1(n3749), .I2(VCC_net), 
            .I3(n3839), .O(n34[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_mux_3_i12_3_lut (.I0(eeprom_counter[11]), .I1(n1_adj_394[11]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4151));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY eeprom_counter_308_add_4_5 (.CI(n3759), .I0(GND_net), .I1(eeprom_counter[3]), 
            .CO(n3760));
    SB_CARRY rem_4_add_2499_4 (.CI(n3839), .I0(n3749), .I1(VCC_net), .CO(n3840));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i17_1_lut (.I0(eeprom_counter[16]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 eeprom_counter_308_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[2]), .I3(n3758), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_4 (.CI(n3758), .I0(GND_net), .I1(eeprom_counter[2]), 
            .CO(n3759));
    SB_LUT4 eeprom_counter_308_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[1]), .I3(n3757), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_3 (.CI(n3757), .I0(GND_net), .I1(eeprom_counter[1]), 
            .CO(n3758));
    SB_LUT4 eeprom_counter_308_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(eeprom_counter[0]), .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam eeprom_counter_308_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY eeprom_counter_308_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(eeprom_counter[0]), 
            .CO(n3757));
    SB_LUT4 rem_4_i2721_3_lut (.I0(n4051), .I1(n4098[12]), .I2(n4065), 
            .I3(GND_net), .O(n4150));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2721_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[19]), .I3(n3970), .O(n1_adj_394[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_unary_minus_2_add_3_21 (.CI(n3970), .I0(GND_net), .I1(n1[19]), 
            .CO(n3971));
    SB_LUT4 rem_4_unary_minus_2_add_3_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[18]), .I3(n3969), .O(n1_adj_394[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_11 (.CI(n3897), .I0(n4042), .I1(VCC_net), 
            .CO(n3898));
    SB_LUT4 rem_4_add_2499_3_lut (.I0(GND_net), .I1(n3750), .I2(VCC_net), 
            .I3(n3838), .O(n34[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2499_3 (.CI(n3838), .I0(n3750), .I1(VCC_net), .CO(n3839));
    SB_LUT4 i3947_3_lut (.I0(n4049), .I1(n4098[14]), .I2(n4065), .I3(GND_net), 
            .O(n4148));   // verilog/eeprom.v(24[6:33])
    defparam i3947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_i2720_3_lut (.I0(n4762), .I1(n4098[13]), .I2(n4065), 
            .I3(GND_net), .O(n4149));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2720_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2969_4_lut (.I0(n4149), .I1(n4148), .I2(n4150), .I3(n4151), 
            .O(n3615));
    defparam i2969_4_lut.LUT_INIT = 16'hccc8;
    SB_CARRY rem_4_unary_minus_2_add_3_20 (.CI(n3969), .I0(GND_net), .I1(n1[18]), 
            .CO(n3970));
    SB_LUT4 rem_4_add_2700_10_lut (.I0(GND_net), .I1(n4043), .I2(GND_net), 
            .I3(n3896), .O(n4098[20])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2499_2_lut (.I0(GND_net), .I1(n3751), .I2(GND_net), 
            .I3(VCC_net), .O(n34[15])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2499_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_38 (.I0(n4147), .I1(n4145), .I2(n4144), .I3(n4146), 
            .O(n4709));
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hfffe;
    SB_LUT4 i3023_4_lut (.I0(n4709), .I1(n4142), .I2(n4143), .I3(n3615), 
            .O(n3669));
    defparam i3023_4_lut.LUT_INIT = 16'hfcec;
    SB_CARRY rem_4_add_2700_10 (.CI(n3896), .I0(n4043), .I1(GND_net), 
            .CO(n3897));
    SB_CARRY rem_4_add_2499_2 (.CI(VCC_net), .I0(n3751), .I1(GND_net), 
            .CO(n3838));
    SB_DFF enable_13 (.Q(enable), .C(CLK_N_keep), .D(enable_N_59));   // verilog/eeprom.v(20[8] 28[4])
    SB_LUT4 i1_3_lut_adj_39 (.I0(n4135), .I1(n4136), .I2(n4137), .I3(GND_net), 
            .O(n4677));
    defparam i1_3_lut_adj_39.LUT_INIT = 16'hfefe;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i19_1_lut (.I0(eeprom_counter[18]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_40 (.I0(n4138), .I1(n4141), .I2(n4139), .I3(n4140), 
            .O(n4703));
    defparam i1_4_lut_adj_40.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut_adj_41 (.I0(n4134), .I1(n4703), .I2(n4677), .I3(n3669), 
            .O(n4681));
    defparam i1_4_lut_adj_41.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_4_lut_adj_42 (.I0(n4132), .I1(n4131), .I2(n4133), .I3(n4681), 
            .O(n4164));
    defparam i1_4_lut_adj_42.LUT_INIT = 16'hfffe;
    SB_LUT4 rem_4_i2709_3_lut (.I0(n4039), .I1(n4098[24]), .I2(n4065), 
            .I3(GND_net), .O(n4138));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2709_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_add_3_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[17]), .I3(n3968), .O(n1_adj_394[17])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i20_1_lut (.I0(eeprom_counter[19]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_i2776_3_lut (.I0(n4138), .I1(n4197[24]), .I2(n4164), 
            .I3(GND_net), .O(n4237));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_i2776_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY rem_4_unary_minus_2_add_3_19 (.CI(n3968), .I0(GND_net), .I1(n1[17]), 
            .CO(n3969));
    SB_LUT4 rem_4_add_2700_9_lut (.I0(GND_net), .I1(n4044), .I2(VCC_net), 
            .I3(n3895), .O(n4098[19])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2432_17_lut (.I0(n3669_adj_342), .I1(n3636), .I2(VCC_net), 
            .I3(n3837), .O(n3735)) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 rem_4_add_2432_16_lut (.I0(GND_net), .I1(n3637), .I2(VCC_net), 
            .I3(n3836), .O(n3702[30])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2432_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i2_1_lut (.I0(eeprom_counter[1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY rem_4_add_2700_9 (.CI(n3895), .I0(n4044), .I1(VCC_net), .CO(n3896));
    SB_LUT4 rem_4_unary_minus_2_inv_0_i3_1_lut (.I0(eeprom_counter[2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i4_1_lut (.I0(eeprom_counter[3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i5_1_lut (.I0(eeprom_counter[4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i6_1_lut (.I0(eeprom_counter[5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i21_1_lut (.I0(eeprom_counter[20]), 
            .I1(GND_net), .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 rem_4_unary_minus_2_add_3_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n1[16]), .I3(n3967), .O(n1_adj_394[16])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_unary_minus_2_add_3_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rem_4_add_2700_8_lut (.I0(GND_net), .I1(n4045), .I2(VCC_net), 
            .I3(n3894), .O(n4098[18])) /* synthesis syn_instantiated=1 */ ;
    defparam rem_4_add_2700_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rem_4_add_2700_8 (.CI(n3894), .I0(n4045), .I1(VCC_net), .CO(n3895));
    SB_LUT4 rem_4_mux_3_i13_3_lut (.I0(eeprom_counter[12]), .I1(n1_adj_394[12]), 
            .I2(eeprom_counter[31]), .I3(GND_net), .O(n4051));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_mux_3_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 rem_4_unary_minus_2_inv_0_i7_1_lut (.I0(eeprom_counter[6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/eeprom.v(24[6:33])
    defparam rem_4_unary_minus_2_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    i2c_controller i2c (.\state[0] (\state[0] ), .n652(n652), .n4273(n4273), 
            .GND_net(GND_net), .\state[2] (\state[2] ), .\state[3] (\state[3] ), 
            .scl_enable_N_248(scl_enable_N_248), .scl_enable(scl_enable), 
            .n1730(n1730), .data({data}), .\state[1] (\state[1] ), .n4433(n4433), 
            .enable(enable), .CLK_N_keep(CLK_N_keep), .\state_7__N_155[0] (\state_7__N_155[0] ), 
            .n11(n11), .n1729(n1729), .\state_7__N_171[3] (\state_7__N_171[3] ), 
            .n1621(n1621), .n3379(n3379), .n4(n4), .VCC_net(VCC_net), 
            .\saved_addr[0] (\saved_addr[0] ), .\saved_addr[7] (\saved_addr[7] ), 
            .n4323(n4323), .n4_adj_1(n4_adj_3), .n4281(n4281), .n1616(n1616), 
            .n4_adj_2(n4_adj_4), .n1728(n1728), .n1727(n1727), .n1726(n1726), 
            .n1725(n1725), .n4213(n4213), .n4211(n4211), .n1722(n1722), 
            .n4219(n4219), .n1737(n1737), .n1734(n1734), .sda_enable(sda_enable), 
            .sda_out(sda_out), .n4239(n4239), .n1731(n1731), .n178({n178}), 
            .ready_N_237(ready_N_237)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(30[16] 44[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\state[0] , n652, n4273, GND_net, \state[2] , 
            \state[3] , scl_enable_N_248, scl_enable, n1730, data, 
            \state[1] , n4433, enable, CLK_N_keep, \state_7__N_155[0] , 
            n11, n1729, \state_7__N_171[3] , n1621, n3379, n4, VCC_net, 
            \saved_addr[0] , \saved_addr[7] , n4323, n4_adj_1, n4281, 
            n1616, n4_adj_2, n1728, n1727, n1726, n1725, n4213, 
            n4211, n1722, n4219, n1737, n1734, sda_enable, sda_out, 
            n4239, n1731, n178, ready_N_237) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \state[0] ;
    output n652;
    output n4273;
    input GND_net;
    output \state[2] ;
    output \state[3] ;
    output scl_enable_N_248;
    output scl_enable;
    input n1730;
    output [7:0]data;
    output \state[1] ;
    output n4433;
    input enable;
    input CLK_N_keep;
    output \state_7__N_155[0] ;
    output n11;
    input n1729;
    output \state_7__N_171[3] ;
    output n1621;
    output n3379;
    output n4;
    input VCC_net;
    output \saved_addr[0] ;
    output \saved_addr[7] ;
    output n4323;
    output n4_adj_1;
    output n4281;
    output n1616;
    output n4_adj_2;
    input n1728;
    input n1727;
    input n1726;
    input n1725;
    input n4213;
    input n4211;
    input n1722;
    input n4219;
    input n1737;
    input n1734;
    output sda_enable;
    output sda_out;
    input n4239;
    input n1731;
    output [0:0]n178;
    output ready_N_237;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(40[6:13])
    
    wire n697, n36, counter2_7__N_143, n1648;
    wire [2:0]n17;
    wire [7:0]counter2;   // verilog/i2c_controller.v(36[12:20])
    
    wire n1700;
    wire [7:0]n179;
    
    wire n1645;
    wire [7:0]counter;   // verilog/i2c_controller.v(35[12:19])
    
    wire n1714, n9, n4343, n609, n3794, n3793, n3792, n3791, 
        n3790, n3789, n3788, i2c_clk_N_247, n4847, n9_adj_264, n10, 
        n4245, n12, n1280, n4431, n3570, n676, n3731, n3730;
    
    SB_LUT4 i1_2_lut (.I0(\state[0] ), .I1(n652), .I2(GND_net), .I3(GND_net), 
            .O(n4273));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i6_2_lut_3_lut (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n697));
    defparam i6_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFN i2c_scl_enable_121 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_248));   // verilog/i2c_controller.v(74[12] 80[6])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n1730));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[0] ), .O(n36));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h0554;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n4433));   // verilog/i2c_controller.v(92[5:9])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable), .I1(i2c_clk), .I2(counter2_7__N_143), 
            .I3(GND_net), .O(n1648));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_DFFSR counter2_309_310__i1 (.Q(counter2[0]), .C(CLK_N_keep), .D(n17[0]), 
            .R(counter2_7__N_143));   // verilog/i2c_controller.v(68[20:32])
    SB_LUT4 i31_3_lut_4_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n1700));
    defparam i31_3_lut_4_lut.LUT_INIT = 16'h1156;
    SB_LUT4 i22_3_lut (.I0(\state_7__N_155[0] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n11));
    defparam i22_3_lut.LUT_INIT = 16'hc2c2;
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n1645), .D(n179[7]), 
            .R(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n1645), .D(n179[5]), 
            .R(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n1729));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n1645), .D(n179[6]), 
            .R(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n1645), .D(n179[4]), 
            .R(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i3432_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n9), 
            .I3(\state_7__N_171[3] ), .O(n4343));   // verilog/i2c_controller.v(92[5:9])
    defparam i3432_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i1_2_lut_adj_7 (.I0(n609), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n1621));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_2_lut_adj_7.LUT_INIT = 16'hbbbb;
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n1645), .D(n179[3]), 
            .R(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i2737_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3379));
    defparam i2737_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 equal_36_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(140[6:23])
    defparam equal_36_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 sub_26_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n3794), .O(n179[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_26_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n3793), .O(n179[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_8 (.CI(n3793), .I0(counter[6]), .I1(VCC_net), 
            .CO(n3794));
    SB_LUT4 sub_26_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n3792), .O(n179[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_7 (.CI(n3792), .I0(counter[5]), .I1(VCC_net), 
            .CO(n3793));
    SB_LUT4 sub_26_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n3791), .O(n179[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_6 (.CI(n3791), .I0(counter[4]), .I1(VCC_net), 
            .CO(n3792));
    SB_LUT4 sub_26_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n3790), .O(n179[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_5 (.CI(n3790), .I0(counter[3]), .I1(VCC_net), 
            .CO(n3791));
    SB_LUT4 sub_26_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n3789), .O(n179[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_4 (.CI(n3789), .I0(counter[2]), .I1(VCC_net), 
            .CO(n3790));
    SB_LUT4 sub_26_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n3788), .O(n179[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_3 (.CI(n3788), .I0(counter[1]), .I1(VCC_net), 
            .CO(n3789));
    SB_LUT4 sub_26_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n179[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_26_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_26_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n3788));
    SB_LUT4 i1_2_lut_adj_8 (.I0(i2c_clk), .I1(counter2_7__N_143), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_247));
    defparam i1_2_lut_adj_8.LUT_INIT = 16'h6666;
    SB_LUT4 i3925_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n4847));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i3925_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i22_4_lut (.I0(n4847), .I1(\saved_addr[7] ), .I2(counter[2]), 
            .I3(counter[0]), .O(n9_adj_264));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i22_4_lut.LUT_INIT = 16'hc00a;
    SB_LUT4 i1_4_lut (.I0(\state[1] ), .I1(n10), .I2(n9_adj_264), .I3(\state[0] ), 
            .O(n4245));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i1_4_lut.LUT_INIT = 16'h5575;
    SB_LUT4 i3392_2_lut_3_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n4323));
    defparam i3392_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 equal_39_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_1));   // verilog/i2c_controller.v(140[6:23])
    defparam equal_39_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[4]), .I2(counter[5]), 
            .I3(counter[0]), .O(n12));   // verilog/i2c_controller.v(112[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n4_adj_1), 
            .O(n652));   // verilog/i2c_controller.v(112[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n4281));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 state_7__I_0_134_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/i2c_controller.v(101[9:16])
    defparam state_7__I_0_134_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i20_4_lut (.I0(n36), .I1(n4343), .I2(n697), .I3(n652), .O(n1645));
    defparam i20_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i2_3_lut (.I0(counter2[0]), .I1(counter2[2]), .I2(counter2[1]), 
            .I3(GND_net), .O(counter2_7__N_143));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3_4_lut (.I0(\state[0] ), .I1(\state[3] ), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n609));   // verilog/i2c_controller.v(139[5:14])
    defparam i3_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i1_2_lut_adj_9 (.I0(counter[0]), .I1(n609), .I2(GND_net), 
            .I3(GND_net), .O(n1616));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i1_2_lut_adj_9.LUT_INIT = 16'heeee;
    SB_LUT4 equal_38_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_2));   // verilog/i2c_controller.v(140[6:23])
    defparam equal_38_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n1728));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i3963_2_lut (.I0(i2c_clk), .I1(counter2_7__N_143), .I2(GND_net), 
            .I3(GND_net), .O(n1280));   // verilog/i2c_controller.v(68[8:33])
    defparam i3963_2_lut.LUT_INIT = 16'h7777;
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n1727));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n1726));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n1725));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF state__i2 (.Q(\state[1] ), .C(i2c_clk), .D(n4213));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF state__i1 (.Q(\state[0] ), .C(i2c_clk), .D(n4211));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n1722));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFSR counter2_309_310__i2 (.Q(counter2[1]), .C(CLK_N_keep), .D(n17[1]), 
            .R(counter2_7__N_143));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFSR counter2_309_310__i3 (.Q(counter2[2]), .C(CLK_N_keep), .D(n17[2]), 
            .R(counter2_7__N_143));   // verilog/i2c_controller.v(68[20:32])
    SB_DFFE state__i3 (.Q(\state[2] ), .C(i2c_clk), .E(VCC_net), .D(n4219));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i2_3_lut_4_lut_adj_10 (.I0(\state[0] ), .I1(\state[3] ), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n4431));
    defparam i2_3_lut_4_lut_adj_10.LUT_INIT = 16'h003a;
    SB_DFFE state__i4 (.Q(\state[3] ), .C(i2c_clk), .E(VCC_net), .D(n1737));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n1645), .D(n179[2]), 
            .S(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n1645), .D(n179[1]), 
            .S(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n1734));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i3415_2_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(scl_enable_N_248));
    defparam i3415_2_lut.LUT_INIT = 16'heeee;
    SB_DFFNE write_enable_128 (.Q(sda_enable), .C(i2c_clk), .E(n676), 
            .D(n3570));   // verilog/i2c_controller.v(160[12] 200[6])
    SB_LUT4 i388_2_lut (.I0(sda_out), .I1(sda_enable), .I2(GND_net), .I3(GND_net), 
            .O(\state_7__N_171[3] ));   // verilog/i2c_controller.v(45[9:16])
    defparam i388_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 equal_22_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(75[27:43])
    defparam equal_22_i10_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESS enable_slow_118 (.Q(\state_7__N_155[0] ), .C(CLK_N_keep), 
            .E(n1648), .D(n1280), .S(enable));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_DFFE saved_addr__i2 (.Q(\saved_addr[7] ), .C(i2c_clk), .E(VCC_net), 
            .D(n4239));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFFNESR sda_out_129 (.Q(sda_out), .C(i2c_clk), .E(n1700), .D(n4245), 
            .R(n4431));   // verilog/i2c_controller.v(160[12] 200[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n1645), .D(n179[0]), 
            .S(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n1731));   // verilog/i2c_controller.v(89[8] 153[6])
    SB_LUT4 i2740_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(n178[0]));   // verilog/i2c_controller.v(44[19:55])
    defparam i2740_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 counter2_309_310_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[2]), 
            .I3(n3731), .O(n17[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_309_310_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_309_310_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[1]), 
            .I3(n3730), .O(n17[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_309_310_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_309_310_add_4_3 (.CI(n3730), .I0(GND_net), .I1(counter2[1]), 
            .CO(n3731));
    SB_LUT4 counter2_309_310_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter2[0]), 
            .I3(VCC_net), .O(n17[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_309_310_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2928_3_lut_4_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n3570));   // verilog/i2c_controller.v(161[4] 199[11])
    defparam i2928_3_lut_4_lut_4_lut.LUT_INIT = 16'h0b0f;
    SB_DFF i2c_clk_119 (.Q(i2c_clk), .C(CLK_N_keep), .D(i2c_clk_N_247));   // verilog/i2c_controller.v(57[9] 69[5])
    SB_CARRY counter2_309_310_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n3730));
    SB_LUT4 i3971_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(ready_N_237));   // verilog/i2c_controller.v(43[32:47])
    defparam i3971_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i3965_4_lut_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n676));
    defparam i3965_4_lut_4_lut.LUT_INIT = 16'h1572;
    SB_LUT4 i3396_2_lut_4_lut (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(n4343), .O(n1714));   // verilog/i2c_controller.v(89[8] 153[6])
    defparam i3396_2_lut_4_lut.LUT_INIT = 16'h0002;
    
endmodule
