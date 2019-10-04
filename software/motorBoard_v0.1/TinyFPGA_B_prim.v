// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Oct  4 18:46:44 2019
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
    input PIN_3 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(8[9:14])
    input PIN_4 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(9[9:14])
    input PIN_5 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    output PIN_6 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    output PIN_7 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    output PIN_8 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(13[9:14])
    output PIN_9 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(14[9:14])
    output PIN_10 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(15[9:15])
    output PIN_11 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(16[9:15])
    inout PIN_12 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(17[9:15])
    input PIN_13 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(18[9:15])
    input PIN_14 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(19[9:15])
    input PIN_15 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(20[9:15])
    input PIN_16 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(21[9:15])
    input PIN_17 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(22[9:15])
    input PIN_18 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(23[9:15])
    input PIN_19 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(24[9:15])
    inout PIN_20 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(25[9:15])
    inout PIN_21 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(26[9:15])
    inout PIN_22 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(27[9:15])
    input PIN_23 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(28[9:15])
    input PIN_24 /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(29[9:15])
    
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(34[8:16])
    
    wire GND_net, VCC_net, CLK_c, LED_c, PIN_6_c_0, PIN_7_c_1, PIN_8_c_2, 
        PIN_9_c_3, PIN_10_c_4, PIN_11_c_5, PIN_13_c, hall1, hall2, 
        hall3;
    
    VCC i2 (.Y(VCC_net));
    pll32MHz pll32MHz_inst (.GND_net(GND_net), .CLK_c(CLK_c), .VCC_net(VCC_net), 
            .clk32MHz(clk32MHz)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;   // verilog/TinyFPGA_B.v(35[12] 38[39])
    SB_IO hall1_input (.PACKAGE_PIN(PIN_20), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall2_input (.PACKAGE_PIN(PIN_21), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall2)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall2_input.PIN_TYPE = 6'b000001;
    defparam hall2_input.PULLUP = 1'b1;
    defparam hall2_input.NEG_TRIGGER = 1'b0;
    defparam hall2_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall3_input (.PACKAGE_PIN(PIN_22), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall3)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO tx_output (.PACKAGE_PIN(PIN_12), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net)) /* synthesis lattice_noprune=1, syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_output.PIN_TYPE = 6'b101001;
    defparam tx_output.PULLUP = 1'b1;
    defparam tx_output.NEG_TRIGGER = 1'b0;
    defparam tx_output.IO_STANDARD = "SB_LVCMOS";
    motorControl control (.hall3(hall3), .GND_net(GND_net), .hall1(hall1), 
            .hall2(hall2), .clk32MHz(clk32MHz), .VCC_net(VCC_net), .PIN_11_c_5(PIN_11_c_5), 
            .PIN_10_c_4(PIN_10_c_4), .PIN_9_c_3(PIN_9_c_3), .PIN_8_c_2(PIN_8_c_2), 
            .PIN_6_c_0(PIN_6_c_0), .PIN_7_c_1(PIN_7_c_1)) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;   // verilog/TinyFPGA_B.v(153[16] 169[4])
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 PIN_13_I_0_1_lut (.I0(PIN_13_c), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(LED_c));   // verilog/TinyFPGA_B.v(64[16:21])
    defparam PIN_13_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_IO PIN_13_pad (.PACKAGE_PIN(PIN_13), .OUTPUT_ENABLE(VCC_net), .D_IN_0(PIN_13_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_13_pad.PIN_TYPE = 6'b000001;
    defparam PIN_13_pad.PULLUP = 1'b0;
    defparam PIN_13_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_13_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .D_IN_0(CLK_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_11_pad (.PACKAGE_PIN(PIN_11), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_11_c_5));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_11_pad.PIN_TYPE = 6'b011001;
    defparam PIN_11_pad.PULLUP = 1'b0;
    defparam PIN_11_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_11_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_10_pad (.PACKAGE_PIN(PIN_10), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_10_c_4));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_10_pad.PIN_TYPE = 6'b011001;
    defparam PIN_10_pad.PULLUP = 1'b0;
    defparam PIN_10_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_10_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_9_pad (.PACKAGE_PIN(PIN_9), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_9_c_3));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_9_pad.PIN_TYPE = 6'b011001;
    defparam PIN_9_pad.PULLUP = 1'b0;
    defparam PIN_9_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_9_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_8_pad (.PACKAGE_PIN(PIN_8), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_8_c_2));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_8_pad.PIN_TYPE = 6'b011001;
    defparam PIN_8_pad.PULLUP = 1'b0;
    defparam PIN_8_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_8_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_7_pad (.PACKAGE_PIN(PIN_7), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_7_c_1));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_7_pad.PIN_TYPE = 6'b011001;
    defparam PIN_7_pad.PULLUP = 1'b0;
    defparam PIN_7_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_7_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO PIN_6_pad (.PACKAGE_PIN(PIN_6), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(PIN_6_c_0));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PIN_6_pad.PIN_TYPE = 6'b011001;
    defparam PIN_6_pad.PULLUP = 1'b0;
    defparam PIN_6_pad.NEG_TRIGGER = 1'b0;
    defparam PIN_6_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(GND_net));
    
endmodule
//
// Verilog Description of module pll32MHz
//

module pll32MHz (GND_net, CLK_c, VCC_net, clk32MHz) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;
    input GND_net;
    input CLK_c;
    input VCC_net;
    output clk32MHz;
    
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(34[8:16])
    
    SB_PLL40_CORE pll32MHz_inst (.REFERENCECLK(CLK_c), .PLLOUTGLOBAL(clk32MHz), 
            .BYPASS(GND_net), .RESETB(VCC_net)) /* synthesis lattice_noprune=1, syn_instantiated=1, LSE_LINE_FILE_ID=47, LSE_LCOL=12, LSE_RCOL=39, LSE_LLINE=35, LSE_RLINE=38, syn_preserve=0 */ ;   // verilog/TinyFPGA_B.v(35[12] 38[39])
    defparam pll32MHz_inst.FEEDBACK_PATH = "PHASE_AND_DELAY";
    defparam pll32MHz_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam pll32MHz_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam pll32MHz_inst.SHIFTREG_DIV_MODE = 2'b00;
    defparam pll32MHz_inst.FDA_FEEDBACK = 4'b0000;
    defparam pll32MHz_inst.FDA_RELATIVE = 4'b0000;
    defparam pll32MHz_inst.PLLOUT_SELECT = "SHIFTREG_0deg";
    defparam pll32MHz_inst.DIVR = 4'b0000;
    defparam pll32MHz_inst.DIVF = 7'b0000001;
    defparam pll32MHz_inst.DIVQ = 3'b011;
    defparam pll32MHz_inst.FILTER_RANGE = 3'b001;
    defparam pll32MHz_inst.ENABLE_ICEGATE = 1'b0;
    defparam pll32MHz_inst.TEST_MODE = 1'b0;
    defparam pll32MHz_inst.EXTERNAL_DIVIDE_FACTOR = 1;
    
endmodule
//
// Verilog Description of module motorControl
//

module motorControl (hall3, GND_net, hall1, hall2, clk32MHz, VCC_net, 
            PIN_11_c_5, PIN_10_c_4, PIN_9_c_3, PIN_8_c_2, PIN_6_c_0, 
            PIN_7_c_1) /* synthesis lattice_noprune=1, syn_preserve=0, syn_module_defined=1, syn_noprune=0 */ ;
    input hall3;
    input GND_net;
    input hall1;
    input hall2;
    input clk32MHz;
    input VCC_net;
    output PIN_11_c_5;
    output PIN_10_c_4;
    output PIN_9_c_3;
    output PIN_8_c_2;
    output PIN_6_c_0;
    output PIN_7_c_1;
    
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(34[8:16])
    wire [5:0]GATES_5__N_83;
    
    wire n213, n218, n372;
    wire [8:0]pwm_count;   // verilog/motorControl.v(63[13:22])
    
    wire n373, n378, n408, n400;
    wire [8:0]n41;
    
    wire n371;
    wire [8:0]n72;
    
    wire n111, n412, n404, n370, n369, n375, n368, n374, n4, 
        n402, n306, n406;
    
    SB_LUT4 i96_3_lut (.I0(GATES_5__N_83[5]), .I1(n213), .I2(hall3), .I3(GND_net), 
            .O(n218));   // verilog/motorControl.v(65[10] 110[6])
    defparam i96_3_lut.LUT_INIT = 16'hecec;
    SB_CARRY pwm_count_74_add_4_7 (.CI(n372), .I0(GND_net), .I1(pwm_count[5]), 
            .CO(n373));
    SB_LUT4 i213_2_lut (.I0(n378), .I1(pwm_count[8]), .I2(GND_net), .I3(GND_net), 
            .O(n213));
    defparam i213_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i259_2_lut_4_lut (.I0(n378), .I1(pwm_count[8]), .I2(hall1), 
            .I3(hall2), .O(n408));
    defparam i259_2_lut_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i1_2_lut (.I0(hall1), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n400));   // verilog/motorControl.v(74[16] 86[10])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 pwm_count_74_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[4]), 
            .I3(n371), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_74__i0 (.Q(n72[0]), .C(clk32MHz), .D(n41[0]));   // verilog/motorControl.v(109[18:29])
    SB_DFFESR GATES__i6 (.Q(PIN_11_c_5), .C(clk32MHz), .E(VCC_net), .D(GATES_5__N_83[5]), 
            .R(n213));   // verilog/motorControl.v(65[10] 110[6])
    SB_DFFESR GATES__i5 (.Q(PIN_10_c_4), .C(clk32MHz), .E(VCC_net), .D(n111), 
            .R(n412));   // verilog/motorControl.v(65[10] 110[6])
    SB_DFFESR GATES__i4 (.Q(PIN_9_c_3), .C(clk32MHz), .E(VCC_net), .D(n404), 
            .R(n408));   // verilog/motorControl.v(65[10] 110[6])
    SB_DFFESR GATES__i3 (.Q(PIN_8_c_2), .C(clk32MHz), .E(VCC_net), .D(GATES_5__N_83[2]), 
            .R(n213));   // verilog/motorControl.v(65[10] 110[6])
    SB_CARRY pwm_count_74_add_4_6 (.CI(n371), .I0(GND_net), .I1(pwm_count[4]), 
            .CO(n372));
    SB_DFF pwm_count_74__i7 (.Q(pwm_count[7]), .C(clk32MHz), .D(n41[7]));   // verilog/motorControl.v(109[18:29])
    SB_LUT4 i14_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(GATES_5__N_83[5]));   // verilog/motorControl.v(71[19:34])
    defparam i14_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 pwm_count_74_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[3]), 
            .I3(n370), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_74_add_4_5 (.CI(n370), .I0(GND_net), .I1(pwm_count[3]), 
            .CO(n371));
    SB_LUT4 pwm_count_74_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n72[2]), 
            .I3(n369), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 pwm_count_74_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[8]), 
            .I3(n375), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_74__i8 (.Q(pwm_count[8]), .C(clk32MHz), .D(n41[8]));   // verilog/motorControl.v(109[18:29])
    SB_CARRY pwm_count_74_add_4_4 (.CI(n369), .I0(GND_net), .I1(n72[2]), 
            .CO(n370));
    SB_LUT4 i1_2_lut_adj_3 (.I0(hall2), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(GATES_5__N_83[2]));   // verilog/motorControl.v(71[16] 86[10])
    defparam i1_2_lut_adj_3.LUT_INIT = 16'h4444;
    SB_DFF pwm_count_74__i6 (.Q(pwm_count[6]), .C(clk32MHz), .D(n41[6]));   // verilog/motorControl.v(109[18:29])
    SB_DFF pwm_count_74__i5 (.Q(pwm_count[5]), .C(clk32MHz), .D(n41[5]));   // verilog/motorControl.v(109[18:29])
    SB_DFF pwm_count_74__i4 (.Q(pwm_count[4]), .C(clk32MHz), .D(n41[4]));   // verilog/motorControl.v(109[18:29])
    SB_LUT4 pwm_count_74_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n72[1]), 
            .I3(n368), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF pwm_count_74__i3 (.Q(pwm_count[3]), .C(clk32MHz), .D(n41[3]));   // verilog/motorControl.v(109[18:29])
    SB_DFF pwm_count_74__i2 (.Q(n72[2]), .C(clk32MHz), .D(n41[2]));   // verilog/motorControl.v(109[18:29])
    SB_DFF pwm_count_74__i1 (.Q(n72[1]), .C(clk32MHz), .D(n41[1]));   // verilog/motorControl.v(109[18:29])
    SB_LUT4 pwm_count_74_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[7]), 
            .I3(n374), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR GATES__i1 (.Q(PIN_6_c_0), .C(clk32MHz), .E(VCC_net), .D(n400), 
            .R(n218));   // verilog/motorControl.v(65[10] 110[6])
    SB_CARRY pwm_count_74_add_4_8 (.CI(n373), .I0(GND_net), .I1(pwm_count[6]), 
            .CO(n374));
    SB_CARRY pwm_count_74_add_4_9 (.CI(n374), .I0(GND_net), .I1(pwm_count[7]), 
            .CO(n375));
    SB_CARRY pwm_count_74_add_4_3 (.CI(n368), .I0(GND_net), .I1(n72[1]), 
            .CO(n369));
    SB_LUT4 i25_2_lut (.I0(hall1), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n111));   // verilog/motorControl.v(80[19:34])
    defparam i25_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_adj_4 (.I0(pwm_count[5]), .I1(pwm_count[3]), .I2(GND_net), 
            .I3(GND_net), .O(n4));
    defparam i1_2_lut_adj_4.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut (.I0(pwm_count[6]), .I1(pwm_count[7]), .I2(pwm_count[4]), 
            .I3(n4), .O(n378));
    defparam i2_4_lut.LUT_INIT = 16'h8880;
    SB_DFFESR GATES__i2 (.Q(PIN_7_c_1), .C(clk32MHz), .E(VCC_net), .D(n402), 
            .R(n306));   // verilog/motorControl.v(65[10] 110[6])
    SB_LUT4 i1_2_lut_adj_5 (.I0(hall3), .I1(hall2), .I2(GND_net), .I3(GND_net), 
            .O(n404));   // verilog/motorControl.v(77[16] 86[10])
    defparam i1_2_lut_adj_5.LUT_INIT = 16'h4444;
    SB_LUT4 pwm_count_74_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[5]), 
            .I3(n372), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_6 (.I0(n218), .I1(hall3), .I2(hall2), .I3(hall1), 
            .O(n306));   // verilog/motorControl.v(65[10] 110[6])
    defparam i2_4_lut_adj_6.LUT_INIT = 16'hbbba;
    SB_LUT4 i1_2_lut_adj_7 (.I0(hall1), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n402));   // verilog/motorControl.v(83[16] 86[10])
    defparam i1_2_lut_adj_7.LUT_INIT = 16'h4444;
    SB_LUT4 i257_2_lut (.I0(hall2), .I1(hall3), .I2(GND_net), .I3(GND_net), 
            .O(n406));
    defparam i257_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 pwm_count_74_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(pwm_count[6]), 
            .I3(n373), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_8 (.I0(pwm_count[8]), .I1(hall1), .I2(n378), 
            .I3(n406), .O(n412));   // verilog/motorControl.v(65[10] 110[6])
    defparam i2_4_lut_adj_8.LUT_INIT = 16'hfafe;
    SB_LUT4 pwm_count_74_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n72[0]), 
            .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_count_74_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY pwm_count_74_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n72[0]), 
            .CO(n368));
    
endmodule
