// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Feb 24 16:33:24 2020
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, LED, USBPU, ENCODER0_A, ENCODER0_B, ENCODER1_A, 
            ENCODER1_B, HALL1, HALL2, HALL3, FAULT_N, NEOPXL, DE, 
            TX, RX, CS_CLK, CS, CS_MISO, SCL, SDA, INLC, INHC, 
            INLB, INHB, INLA, INHA) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output LED;   // verilog/TinyFPGA_B.v(4[10:13])
    inout USBPU /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(5[9:14])
    inout ENCODER0_A /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(6[9:19])
    inout ENCODER0_B /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(7[9:19])
    inout ENCODER1_A /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(8[9:19])
    inout ENCODER1_B /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(9[9:19])
    inout HALL1 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    inout HALL2 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    inout HALL3 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(12[9:14])
    inout FAULT_N /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(13[9:16])
    output NEOPXL /* synthesis .original_dir=IN_OUT */ ;   // verilog/TinyFPGA_B.v(14[9:15])
    inout DE /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(15[9:11])
    inout TX /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(16[9:11])
    inout RX /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(17[9:11])
    inout CS_CLK /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(18[9:15])
    inout CS /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(19[9:11])
    inout CS_MISO /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(20[9:16])
    inout SCL /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(21[9:12])
    inout SDA /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(22[9:12])
    inout INLC /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(23[9:13])
    inout INHC /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(24[9:13])
    inout INLB /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(25[9:13])
    inout INHB /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(26[9:13])
    inout INLA /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(27[9:13])
    inout INHA /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(28[9:13])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire GND_net, VCC_net, n2161, LED_c, NEOPXL_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[12:25])
    
    wire n19, n7294, n12171, update_color;
    wire [23:0]neopxl_color;   // verilog/TinyFPGA_B.v(52[12:24])
    
    wire n10572, n7442;
    wire [23:0]neopxl_color_prev;   // verilog/TinyFPGA_B.v(53[12:29])
    
    wire n10520;
    wire [22:0]pin_out;   // verilog/TinyFPGA_B.v(63[13:20])
    wire [22:0]pin_in;   // verilog/TinyFPGA_B.v(64[13:19])
    wire [22:0]pin_oe;   // verilog/TinyFPGA_B.v(65[13:19])
    
    wire n139, n138, n133, n136, n134, n10571;
    wire [7:0]state;   // verilog/TinyFPGA_B.v(96[11:16])
    wire [7:0]current_pin;   // verilog/TinyFPGA_B.v(97[11:22])
    wire [7:0]counter;   // verilog/TinyFPGA_B.v(101[11:18])
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(102[9:22])
    
    wire n120, n7290, n129, n7591, n10570, update_color_N_270, n10519, 
        n10569, n7286, n10568, n149, n150, n7590, n148, n10518, 
        n10517, n7282, n7278, n7274, n7270, n7298, n11481, n7266, 
        n7262, n7589, n6150, n7258, n7254, n10567, n7588, n7249, 
        n7401, n10566, n10978, n15, n14, n7239, n21, n13152, 
        n7587, n7, n12123, n7236, n13170, n7586, n7585, n160, 
        n145, n7584, n7232, n24, n137, n7231, n16, n8, n10565, 
        n7583, n124, n21_adj_714, n7582, n19_adj_715, n9, n7395, 
        n134_adj_716, n7223, n6188, n135, n10564, n6180, n122, 
        n10563, n11, n132, n6190, n10516, n7155, n127, n18, 
        n10515, n140, n10514, n14_adj_717, n130, n19_adj_718, n10562, 
        n119, n162, n10561;
    wire [31:0]timer;   // verilog/neopixel.v(9[12:17])
    
    wire n10513, n10560, n125, n6172, n123, n10512, n7581, n131;
    wire [7:0]state_7__N_167;
    
    wire n7580, n6, n22, n7579, n7578, n7_adj_719, n7577, n11217, 
        n10559, n10511, n10558, n6186, n10510, current_pin_7__N_154, 
        current_pin_7__N_155, current_pin_7__N_157, n24_adj_720, n7576, 
        n7302, n15_adj_721, n141, n6170, n156, n9426, n135_adj_722, 
        n142, n152, n8_adj_723, n7575, n7574, n7573, n22_adj_724, 
        n6184, n19_adj_725, n2160, n2159, n2162, n2163, n2164, 
        n2165, n2166;
    wire [3:0]state_adj_781;   // verilog/neopixel.v(16[20:25])
    
    wire n7409;
    wire [31:0]\neo_pixel_transmitter.t0 ;   // verilog/neopixel.v(28[14:16])
    
    wire n7572, n22_adj_728, n6182, n19_adj_729, n20, n22_adj_730, 
        n158, n19_adj_731, n7571, n22_adj_732, n6166, n10557, n9_adj_733, 
        n13176, n10556, n7570, n11_adj_734, n7569;
    wire [3:0]state_3__N_377;
    
    wire n7568, n23, n19_adj_735, n11211, n7567, n165, n164, n7318, 
        n10, n13146, n144, n10555, n10554, n10553, n10_adj_736, 
        n10389, n10552, n10388, n10385, n7145, n7566, n7565, n7564, 
        n7563, n7562, n7561, n7560, n7559, n7558, n7166, n10551, 
        n17, n21_adj_737, n150_adj_738, n11_adj_739, n26, n7545, 
        n6971, n7142, n147, n10550, n10387, n22_adj_740, n21_adj_741, 
        n18_adj_742, n143, n11_adj_743, n151, n10549, n9415, n126, 
        n8_adj_744, n25, n155, n7306, n55, n14_adj_745, n117, 
        n12, n116, n54, n121, n8_adj_746, n154, n6174, n6176, 
        n53, n52, n8_adj_747, n13161, n6_adj_748, n163, n51, n2289, 
        n2313, n2325, n15_adj_749, n2337, n2343, n3033, n2355, 
        n2361, n15_adj_750, n2367, n2373, n50, n2379, n8_adj_751, 
        n2385, n7314, n49, n48, n45, n2421, n14_adj_752, n6178, 
        n7_adj_753, n128, n146, n149_adj_754, n153, n159, n157, 
        n115, n8_adj_755, n113, n6_adj_756, n10_adj_757, n161, n111, 
        n11_adj_758, n13, n7619, n7500, n10548, n10547, n10546, 
        n118, n36, n7150, n7607, n7603, n9456, n15_adj_759, n11205, 
        n10545, n61, n114, n112, n4, n7496, n110, n7494, n11612, 
        n55_adj_760, n10544, n5907, n7135, n10543, n6_adj_761, n10542, 
        n7128, n10541, n10540, n6152, n6154, n6156, n6158, n6162, 
        n6164, n13264, n13279, n13483, n13480, n13477, n13474, 
        n13471, n13468, n13465, n13273, n13462, n13453, n13450, 
        n13447, n13444, n13441, n13438, n10_adj_762, n8_adj_763, 
        n16_adj_764, n17_adj_765, n10539, n10384, n13177, n13360, 
        n13171, n13168, n13165, n10386, n13162, n13153, n13362, 
        n13147, n13144, n10538, n6_adj_766, n13142, n13141, n1, 
        n55_adj_767, n54_adj_768, n53_adj_769, n52_adj_770, n11683, 
        n48_adj_771, n45_adj_772, n43, n10537, n42, n41, n40, 
        n39, n37, n36_adj_773, n33, n30, n12_adj_774, n11_adj_775, 
        n10536, n10390, n10535, n10_adj_776, n73, n9_adj_777, n11337, 
        n4_adj_778, n11331, n10_adj_779, n11307, n11301, n10534, 
        n11295, n10533, n10532, n11289, n11283, n10531, n12135, 
        n11277, n10530, n11271, n10529, n11265, n11259, n10528, 
        n10527, n11253, n13048, n11247, n10526, n8_adj_780, n11241, 
        n11235, n13037, n11229, n11898, n10525, n10524, n10523, 
        n10522, n10521, n12091, n7334, n7330, n7326, n7322, n13167, 
        n13164, n12208, n11223, n13364, n7310;
    
    VCC i2 (.Y(VCC_net));
    \neopixel(CLOCK_SPEED_HZ=16000000)  nx (.GND_net(GND_net), .VCC_net(VCC_net), 
            .timer({timer}), .n7591(n7591), .\neo_pixel_transmitter.t0 ({\neo_pixel_transmitter.t0 }), 
            .CLK_c(CLK_c), .n7590(n7590), .n7589(n7589), .n7588(n7588), 
            .n7587(n7587), .n7586(n7586), .n7585(n7585), .n7584(n7584), 
            .n7239(n7239), .\state[0] (state_adj_781[0]), .n7583(n7583), 
            .n7582(n7582), .n7581(n7581), .n7580(n7580), .n7579(n7579), 
            .n7578(n7578), .n7577(n7577), .n7576(n7576), .n7575(n7575), 
            .n7574(n7574), .n7573(n7573), .n7572(n7572), .n7571(n7571), 
            .n7570(n7570), .NEOPXL_c(NEOPXL_c), .n7569(n7569), .n7568(n7568), 
            .n7567(n7567), .n7566(n7566), .n7565(n7565), .n7564(n7564), 
            .n7563(n7563), .n7562(n7562), .n7561(n7561), .\state[1] (state_adj_781[1]), 
            .\state_3__N_377[1] (state_3__N_377[1]), .update_color(update_color), 
            .\neopxl_color[4] (neopxl_color[4]), .\neopxl_color[5] (neopxl_color[5]), 
            .\neopxl_color[6] (neopxl_color[6]), .\neopxl_color[7] (neopxl_color[7]), 
            .\neopxl_color[14] (neopxl_color[14]), .\neopxl_color[15] (neopxl_color[15]), 
            .\neopxl_color[12] (neopxl_color[12]), .\neopxl_color[13] (neopxl_color[13]), 
            .n7496(n7496), .n7494(n7494), .n11683(n11683)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(55[24] 61[2])
    SB_DFFESR delay_counter_1104__i15 (.Q(delay_counter[15]), .C(CLK_c), 
            .E(n7232), .D(n150_adj_738), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_IO pin1 (.PACKAGE_PIN(ENCODER0_A), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[1]), .D_IN_0(pin_in[1])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin1.PIN_TYPE = 6'b101001;
    defparam pin1.PULLUP = 1'b1;
    defparam pin1.NEG_TRIGGER = 1'b0;
    defparam pin1.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin2 (.PACKAGE_PIN(ENCODER0_B), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[2]), .D_IN_0(pin_in[2])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin2.PIN_TYPE = 6'b101001;
    defparam pin2.PULLUP = 1'b1;
    defparam pin2.NEG_TRIGGER = 1'b0;
    defparam pin2.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin3 (.PACKAGE_PIN(ENCODER1_A), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[3]), .D_IN_0(pin_in[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin3.PIN_TYPE = 6'b101001;
    defparam pin3.PULLUP = 1'b1;
    defparam pin3.NEG_TRIGGER = 1'b0;
    defparam pin3.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin4 (.PACKAGE_PIN(ENCODER1_B), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[4]), .D_IN_0(pin_in[4])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin4.PIN_TYPE = 6'b101001;
    defparam pin4.PULLUP = 1'b1;
    defparam pin4.NEG_TRIGGER = 1'b0;
    defparam pin4.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin5 (.PACKAGE_PIN(HALL1), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[5]), .D_IN_0(pin_in[5])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin5.PIN_TYPE = 6'b101001;
    defparam pin5.PULLUP = 1'b1;
    defparam pin5.NEG_TRIGGER = 1'b0;
    defparam pin5.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin6 (.PACKAGE_PIN(HALL2), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[6]), .D_IN_0(pin_in[6])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin6.PIN_TYPE = 6'b101001;
    defparam pin6.PULLUP = 1'b1;
    defparam pin6.NEG_TRIGGER = 1'b0;
    defparam pin6.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin7 (.PACKAGE_PIN(HALL3), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[7]), .D_IN_0(pin_in[7])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin7.PIN_TYPE = 6'b101001;
    defparam pin7.PULLUP = 1'b1;
    defparam pin7.NEG_TRIGGER = 1'b0;
    defparam pin7.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin8 (.PACKAGE_PIN(FAULT_N), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[8]), .D_IN_0(pin_in[8])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin8.PIN_TYPE = 6'b101001;
    defparam pin8.PULLUP = 1'b1;
    defparam pin8.NEG_TRIGGER = 1'b0;
    defparam pin8.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin9 (.PACKAGE_PIN(DE), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[9]), .D_IN_0(pin_in[9])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin9.PIN_TYPE = 6'b101001;
    defparam pin9.PULLUP = 1'b1;
    defparam pin9.NEG_TRIGGER = 1'b0;
    defparam pin9.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin10 (.PACKAGE_PIN(TX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[10]), .D_IN_0(pin_in[10])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin10.PIN_TYPE = 6'b101001;
    defparam pin10.PULLUP = 1'b1;
    defparam pin10.NEG_TRIGGER = 1'b0;
    defparam pin10.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin11 (.PACKAGE_PIN(RX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[11]), .D_IN_0(pin_in[11])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin11.PIN_TYPE = 6'b101001;
    defparam pin11.PULLUP = 1'b1;
    defparam pin11.NEG_TRIGGER = 1'b0;
    defparam pin11.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin12 (.PACKAGE_PIN(CS_CLK), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[12]), .D_IN_0(pin_in[12])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin12.PIN_TYPE = 6'b101001;
    defparam pin12.PULLUP = 1'b1;
    defparam pin12.NEG_TRIGGER = 1'b0;
    defparam pin12.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin13 (.PACKAGE_PIN(CS), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[13]), .D_IN_0(pin_in[13])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin13.PIN_TYPE = 6'b101001;
    defparam pin13.PULLUP = 1'b1;
    defparam pin13.NEG_TRIGGER = 1'b0;
    defparam pin13.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin14 (.PACKAGE_PIN(CS_MISO), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[14]), .D_IN_0(pin_in[14])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin14.PIN_TYPE = 6'b101001;
    defparam pin14.PULLUP = 1'b1;
    defparam pin14.NEG_TRIGGER = 1'b0;
    defparam pin14.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin15 (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[15]), .D_IN_0(pin_in[15])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin15.PIN_TYPE = 6'b101001;
    defparam pin15.PULLUP = 1'b1;
    defparam pin15.NEG_TRIGGER = 1'b0;
    defparam pin15.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin16 (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[16]), .D_IN_0(pin_in[16])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin16.PIN_TYPE = 6'b101001;
    defparam pin16.PULLUP = 1'b1;
    defparam pin16.NEG_TRIGGER = 1'b0;
    defparam pin16.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin17 (.PACKAGE_PIN(INLC), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[17]), .D_IN_0(pin_in[17])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin17.PIN_TYPE = 6'b101001;
    defparam pin17.PULLUP = 1'b1;
    defparam pin17.NEG_TRIGGER = 1'b0;
    defparam pin17.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin18 (.PACKAGE_PIN(INHC), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[18]), .D_IN_0(pin_in[18])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin18.PIN_TYPE = 6'b101001;
    defparam pin18.PULLUP = 1'b1;
    defparam pin18.NEG_TRIGGER = 1'b0;
    defparam pin18.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin19 (.PACKAGE_PIN(INLB), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[19]), .D_IN_0(pin_in[19])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin19.PIN_TYPE = 6'b101001;
    defparam pin19.PULLUP = 1'b1;
    defparam pin19.NEG_TRIGGER = 1'b0;
    defparam pin19.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin20 (.PACKAGE_PIN(INHB), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[20]), .D_IN_0(pin_in[20])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin20.PIN_TYPE = 6'b101001;
    defparam pin20.PULLUP = 1'b1;
    defparam pin20.NEG_TRIGGER = 1'b0;
    defparam pin20.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin21 (.PACKAGE_PIN(INLA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[21]), .D_IN_0(pin_in[21])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin21.PIN_TYPE = 6'b101001;
    defparam pin21.PULLUP = 1'b1;
    defparam pin21.NEG_TRIGGER = 1'b0;
    defparam pin21.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin22 (.PACKAGE_PIN(INHA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[22]), .D_IN_0(pin_in[22])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin22.PIN_TYPE = 6'b101001;
    defparam pin22.PULLUP = 1'b1;
    defparam pin22.NEG_TRIGGER = 1'b0;
    defparam pin22.IO_STANDARD = "SB_LVCMOS";
    SB_DFF neopxl_color_prev_i4 (.Q(neopxl_color_prev[4]), .C(CLK_c), .D(neopxl_color[4]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 delay_counter_1104_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n10545), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_31 (.CI(n10545), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n10546));
    SB_IO pin0 (.PACKAGE_PIN(USBPU), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[22]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[0]), .D_IN_0(pin_in[0])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin0.PIN_TYPE = 6'b101001;
    defparam pin0.PULLUP = 1'b1;
    defparam pin0.NEG_TRIGGER = 1'b0;
    defparam pin0.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_1104_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[4]), .I3(n10520), .O(n161)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF neopxl_color_prev_i15 (.Q(neopxl_color_prev[15]), .C(CLK_c), 
           .D(neopxl_color[15]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_CARRY delay_counter_1104_add_4_6 (.CI(n10520), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n10521));
    SB_DFFESR delay_counter_1104__i14 (.Q(delay_counter[14]), .C(CLK_c), 
            .E(n7232), .D(n151), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i13 (.Q(delay_counter[13]), .C(CLK_c), 
            .E(n7232), .D(n152), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_LUT4 blink_counter_1105_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7), .I3(n10566), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_1104__i17 (.Q(delay_counter[17]), .C(CLK_c), 
            .E(n7232), .D(n148), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i20 (.Q(delay_counter[20]), .C(CLK_c), 
            .E(n7232), .D(n145), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i28 (.Q(delay_counter[28]), .C(CLK_c), 
            .E(n7232), .D(n137), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i27 (.Q(delay_counter[27]), .C(CLK_c), 
            .E(n7232), .D(n138), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i26 (.Q(delay_counter[26]), .C(CLK_c), 
            .E(n7232), .D(n139), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_LUT4 delay_counter_1104_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n10544), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_21 (.CI(n10566), .I0(GND_net), .I1(n7), 
            .CO(n10567));
    SB_LUT4 delay_counter_1104_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[3]), .I3(n10519), .O(n162)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_1104__i19 (.Q(delay_counter[19]), .C(CLK_c), 
            .E(n7232), .D(n146), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i25 (.Q(delay_counter[25]), .C(CLK_c), 
            .E(n7232), .D(n140), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i24 (.Q(delay_counter[24]), .C(CLK_c), 
            .E(n7232), .D(n141), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_CARRY delay_counter_1104_add_4_5 (.CI(n10519), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n10520));
    SB_DFFESR delay_counter_1104__i18 (.Q(delay_counter[18]), .C(CLK_c), 
            .E(n7232), .D(n147), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_CARRY delay_counter_1104_add_4_30 (.CI(n10544), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n10545));
    SB_DFFESR delay_counter_1104__i23 (.Q(delay_counter[23]), .C(CLK_c), 
            .E(n7232), .D(n142), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFF neopxl_color_prev_i5 (.Q(neopxl_color_prev[5]), .C(CLK_c), .D(neopxl_color[5]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFFESR delay_counter_1104__i22 (.Q(delay_counter[22]), .C(CLK_c), 
            .E(n7232), .D(n143), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(NEOPXL_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 delay_counter_1104_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n10543), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFFESR current_pin_i0_i2 (.Q(current_pin[2]), .C(CLK_c), .E(n7223), 
            .D(n2164), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR current_pin_i0_i1 (.Q(current_pin[1]), .C(CLK_c), .E(n7223), 
            .D(n2165), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_prev_i14 (.Q(neopxl_color_prev[14]), .C(CLK_c), 
           .D(neopxl_color[14]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n7232), 
            .D(n165), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR state__i0 (.Q(state[0]), .C(CLK_c), .E(n7249), .D(n61), 
            .R(n7395));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR current_pin_i0_i0 (.Q(current_pin[0]), .C(CLK_c), .E(n7223), 
            .D(n2166), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_prev_i13 (.Q(neopxl_color_prev[13]), .C(CLK_c), 
           .D(neopxl_color[13]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i21 (.Q(delay_counter[21]), .C(CLK_c), 
            .E(n7232), .D(n144), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_LUT4 delay_counter_1104_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[2]), .I3(n10518), .O(n163)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE pin_output_enable__i1 (.Q(pin_oe[22]), .C(CLK_c), .E(n36), 
            .D(current_pin_7__N_154));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i12 (.Q(delay_counter[12]), .C(CLK_c), 
            .E(n7232), .D(n153), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_LUT4 blink_counter_1105_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8_adj_755), .I3(n10565), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_29 (.CI(n10543), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n10544));
    SB_LUT4 i2946_3_lut_4_lut (.I0(n21), .I1(n7_adj_753), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6166));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2946_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_DFF neopxl_color_prev_i12 (.Q(neopxl_color_prev[12]), .C(CLK_c), 
           .D(neopxl_color[12]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i11 (.Q(delay_counter[11]), .C(CLK_c), 
            .E(n7232), .D(n154), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_CARRY delay_counter_1104_add_4_4 (.CI(n10518), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n10519));
    SB_DFFSS update_color_195 (.Q(update_color), .C(CLK_c), .D(update_color_N_270), 
            .S(n73));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 delay_counter_1104_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n10542), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[1]), .I3(n10517), .O(n164)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_20 (.CI(n10565), .I0(GND_net), .I1(n8_adj_755), 
            .CO(n10566));
    SB_LUT4 blink_counter_1105_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9), .I3(n10564), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_28 (.CI(n10542), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n10543));
    SB_CARRY blink_counter_1105_add_4_19 (.CI(n10564), .I0(GND_net), .I1(n9), 
            .CO(n10565));
    SB_LUT4 delay_counter_1104_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n10541), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_757), .I3(n10563), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_27 (.CI(n10541), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n10542));
    SB_LUT4 delay_counter_1104_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n10540), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_3 (.CI(n10517), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n10518));
    SB_LUT4 i1_3_lut_4_lut (.I0(n9456), .I1(n22_adj_740), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n8_adj_780));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_CARRY delay_counter_1104_add_4_26 (.CI(n10540), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n10541));
    SB_LUT4 delay_counter_1104_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[0]), .I3(VCC_net), .O(n165)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n10517));
    SB_LUT4 delay_counter_1104_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n10539), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_1103_add_4_9_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[7]), .I3(n10516), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_9_lut.LUT_INIT = 16'hE22E;
    SB_CARRY delay_counter_1104_add_4_25 (.CI(n10539), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n10540));
    SB_LUT4 counter_1103_add_4_8_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[6]), .I3(n10515), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_8_lut.LUT_INIT = 16'hE22E;
    SB_CARRY blink_counter_1105_add_4_18 (.CI(n10563), .I0(GND_net), .I1(n10_adj_757), 
            .CO(n10564));
    SB_LUT4 delay_counter_1104_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n10538), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11_adj_758), .I3(n10562), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_17 (.CI(n10562), .I0(GND_net), .I1(n11_adj_758), 
            .CO(n10563));
    SB_CARRY delay_counter_1104_add_4_24 (.CI(n10538), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n10539));
    SB_CARRY counter_1103_add_4_8 (.CI(n10515), .I0(current_pin_7__N_155), 
            .I1(counter[6]), .CO(n10516));
    SB_LUT4 blink_counter_1105_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n10561), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_1103_add_4_7_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[5]), .I3(n10514), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_7_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 delay_counter_1104_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n10537), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_1103_add_4_7 (.CI(n10514), .I0(current_pin_7__N_155), 
            .I1(counter[5]), .CO(n10515));
    SB_DFFESR delay_counter_1104__i10 (.Q(delay_counter[10]), .C(CLK_c), 
            .E(n7232), .D(n155), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n7232), 
            .D(n156), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n7232), 
            .D(n157), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n7232), 
            .D(n158), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n7232), 
            .D(n159), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n7232), 
            .D(n160), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n7232), 
            .D(n161), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n7232), 
            .D(n162), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFSS neopxl_color_i7 (.Q(neopxl_color[7]), .C(CLK_c), .D(n19_adj_725), 
            .S(n22_adj_724));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n7232), 
            .D(n163), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR delay_counter_1104__i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n7232), 
            .D(n164), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFSS neopxl_color_i6 (.Q(neopxl_color[6]), .C(CLK_c), .D(n19_adj_729), 
            .S(n22_adj_728));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFSS neopxl_color_i5 (.Q(neopxl_color[5]), .C(CLK_c), .D(n19_adj_731), 
            .S(n22_adj_730));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFSS neopxl_color_i4 (.Q(neopxl_color[4]), .C(CLK_c), .D(n19), 
            .S(n22_adj_732));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_CARRY delay_counter_1104_add_4_23 (.CI(n10537), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n10538));
    SB_LUT4 counter_1103_add_4_6_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[4]), .I3(n10513), .O(n51)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_6_lut.LUT_INIT = 16'hE22E;
    SB_DFFE counter_1103__i0 (.Q(counter[0]), .C(CLK_c), .E(n7231), .D(n55));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_CARRY blink_counter_1105_add_4_16 (.CI(n10561), .I0(GND_net), .I1(n12), 
            .CO(n10562));
    SB_DFFESR state__i2 (.Q(state[2]), .C(CLK_c), .E(n7249), .D(n55_adj_760), 
            .R(n7409));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF blink_counter_1105__i0 (.Q(n26), .C(CLK_c), .D(n135_adj_722));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 delay_counter_1104_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n10536), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_DFF neopxl_color_i12 (.Q(neopxl_color[12]), .C(CLK_c), .D(n7560));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_CARRY counter_1103_add_4_6 (.CI(n10513), .I0(current_pin_7__N_155), 
            .I1(counter[4]), .CO(n10514));
    SB_DFF neopxl_color_prev_i7 (.Q(neopxl_color_prev[7]), .C(CLK_c), .D(neopxl_color[7]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_i13 (.Q(neopxl_color[13]), .C(CLK_c), .D(n7559));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_i14 (.Q(neopxl_color[14]), .C(CLK_c), .D(n7558));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_i15 (.Q(neopxl_color[15]), .C(CLK_c), .D(n7545));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 blink_counter_1105_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n10560), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_216_8 (.CI(n10389), .I0(current_pin[6]), .I1(GND_net), 
            .CO(n10390));
    SB_DFFESR delay_counter_1104__i31 (.Q(delay_counter[31]), .C(CLK_c), 
            .E(n7232), .D(n134), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_CARRY blink_counter_1105_add_4_15 (.CI(n10560), .I0(GND_net), .I1(n13), 
            .CO(n10561));
    SB_LUT4 blink_counter_1105_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_745), .I3(n10559), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_216_7_lut (.I0(GND_net), .I1(current_pin[5]), .I2(GND_net), 
            .I3(n10388), .O(n2161)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_216_4_lut (.I0(GND_net), .I1(current_pin[2]), .I2(GND_net), 
            .I3(n10385), .O(n2164)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_216_4 (.CI(n10385), .I0(current_pin[2]), .I1(GND_net), 
            .CO(n10386));
    SB_LUT4 add_216_2_lut (.I0(GND_net), .I1(current_pin[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n2166)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR state__i1 (.Q(state[1]), .C(CLK_c), .E(n7249), .D(n3033), 
            .R(n7395));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF neopxl_color_prev_i6 (.Q(neopxl_color_prev[6]), .C(CLK_c), .D(neopxl_color[6]));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_CARRY add_216_7 (.CI(n10388), .I0(current_pin[5]), .I1(GND_net), 
            .CO(n10389));
    SB_LUT4 add_216_3_lut (.I0(GND_net), .I1(current_pin[1]), .I2(GND_net), 
            .I3(n10384), .O(n2165)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_216_2 (.CI(VCC_net), .I0(current_pin[0]), .I1(GND_net), 
            .CO(n10384));
    SB_DFFESR current_pin_i0_i7 (.Q(current_pin[7]), .C(CLK_c), .E(n7223), 
            .D(n2159), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_CARRY delay_counter_1104_add_4_22 (.CI(n10536), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n10537));
    SB_CARRY blink_counter_1105_add_4_14 (.CI(n10559), .I0(GND_net), .I1(n14_adj_745), 
            .CO(n10560));
    SB_LUT4 i2942_3_lut_4_lut (.I0(n9456), .I1(n22_adj_740), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6162));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2942_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_LUT4 delay_counter_1104_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n10535), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9320_3_lut (.I0(pin_in[0]), .I1(pin_in[1]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13167));
    defparam i9320_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9321_3_lut (.I0(pin_in[2]), .I1(pin_in[3]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13168));
    defparam i9321_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9324_3_lut (.I0(pin_in[6]), .I1(pin_in[7]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13171));
    defparam i9324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9323_3_lut (.I0(pin_in[4]), .I1(pin_in[5]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13170));
    defparam i9323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 counter_1103_add_4_5_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[3]), .I3(n10512), .O(n52)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_5_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 i1_4_lut (.I0(n9_adj_733), .I1(n7231), .I2(n6156), .I3(n8_adj_744), 
            .O(n7266));
    defparam i1_4_lut.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut (.I0(pin_out[4]), .I1(n6156), .I2(n7266), .I3(n149), 
            .O(n11331));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_3_lut (.I0(n21_adj_741), .I1(n22_adj_740), .I2(n18_adj_742), 
            .I3(GND_net), .O(n7128));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_159 (.I0(n6), .I1(n7231), .I2(n6158), .I3(n8_adj_744), 
            .O(n7270));
    defparam i1_4_lut_adj_159.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_160 (.I0(pin_out[5]), .I1(n6158), .I2(n7270), 
            .I3(n149), .O(n11337));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'h0aca;
    SB_LUT4 current_pin_0__bdd_4_lut (.I0(current_pin[0]), .I1(pin_in[10]), 
            .I2(pin_in[11]), .I3(current_pin[1]), .O(n13480));
    defparam current_pin_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n13480_bdd_4_lut (.I0(n13480), .I1(pin_in[9]), .I2(pin_in[8]), 
            .I3(current_pin[1]), .O(n13483));
    defparam n13480_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_161 (.I0(n6_adj_748), .I1(n7231), .I2(n8_adj_780), 
            .I3(n8_adj_744), .O(n7274));
    defparam i1_4_lut_adj_161.LUT_INIT = 16'h0c4c;
    SB_LUT4 i1_4_lut_adj_162 (.I0(pin_out[6]), .I1(n8_adj_780), .I2(n149), 
            .I3(n7274), .O(n7603));   // verilog/TinyFPGA_B.v(97[11:22])
    defparam i1_4_lut_adj_162.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_163 (.I0(n9426), .I1(n7231), .I2(n6162), .I3(n8_adj_744), 
            .O(n7278));
    defparam i1_4_lut_adj_163.LUT_INIT = 16'h0c8c;
    SB_LUT4 i12_4_lut_adj_164 (.I0(pin_out[7]), .I1(n6162), .I2(n7278), 
            .I3(n149), .O(n11211));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_165 (.I0(n9_adj_733), .I1(n7231), .I2(n6164), 
            .I3(n8_adj_751), .O(n7282));
    defparam i1_4_lut_adj_165.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_166 (.I0(pin_out[8]), .I1(n6164), .I2(n7282), 
            .I3(n149), .O(n11217));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_167 (.I0(n6), .I1(n7231), .I2(n6166), .I3(n8_adj_751), 
            .O(n7286));
    defparam i1_4_lut_adj_167.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_168 (.I0(pin_out[9]), .I1(n6166), .I2(n7286), 
            .I3(n149), .O(n11223));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_169 (.I0(n6_adj_748), .I1(n7231), .I2(n10_adj_779), 
            .I3(n8_adj_751), .O(n7290));
    defparam i1_4_lut_adj_169.LUT_INIT = 16'h0c4c;
    SB_LUT4 i9575_2_lut_3_lut (.I0(state[2]), .I1(state[1]), .I2(state[0]), 
            .I3(GND_net), .O(n73));
    defparam i9575_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i1_4_lut_adj_170 (.I0(pin_out[10]), .I1(n10_adj_779), .I2(n149), 
            .I3(n7290), .O(n7607));   // verilog/TinyFPGA_B.v(97[11:22])
    defparam i1_4_lut_adj_170.LUT_INIT = 16'h0caa;
    SB_LUT4 i9261_4_lut_4_lut (.I0(state[1]), .I1(state[0]), .I2(state[2]), 
            .I3(n6_adj_766), .O(n13037));
    defparam i9261_4_lut_4_lut.LUT_INIT = 16'he8e0;
    SB_LUT4 i1_4_lut_adj_171 (.I0(n9426), .I1(n7231), .I2(n6170), .I3(n8_adj_751), 
            .O(n7294));
    defparam i1_4_lut_adj_171.LUT_INIT = 16'h0c8c;
    SB_LUT4 i12_4_lut_adj_172 (.I0(pin_out[11]), .I1(n6170), .I2(n7294), 
            .I3(n149), .O(n11229));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(current_pin[0]), .O(n4));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i1_4_lut_adj_173 (.I0(n9_adj_733), .I1(n7231), .I2(n6172), 
            .I3(n8_adj_747), .O(n7298));
    defparam i1_4_lut_adj_173.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_174 (.I0(pin_out[12]), .I1(n6172), .I2(n7298), 
            .I3(n149), .O(n11235));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'h0aca;
    SB_LUT4 i4158_2_lut_4_lut (.I0(n7249), .I1(state[2]), .I2(state[1]), 
            .I3(state[0]), .O(n7395));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4158_2_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i1_2_lut_3_lut (.I0(state[2]), .I1(state[1]), .I2(state[0]), 
            .I3(GND_net), .O(current_pin_7__N_157));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_175 (.I0(current_pin[1]), .I1(n7231), .I2(n6174), 
            .I3(n4), .O(n7302));
    defparam i1_4_lut_adj_175.LUT_INIT = 16'h4c0c;
    SB_LUT4 i12_4_lut_adj_176 (.I0(pin_out[13]), .I1(n6174), .I2(n7302), 
            .I3(n149), .O(n11241));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_887_i11_2_lut_4_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(current_pin[2]), .I3(current_pin[3]), .O(n11_adj_734));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_887_i11_2_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_4_lut_adj_177 (.I0(n6_adj_748), .I1(n7231), .I2(n6176), 
            .I3(n8_adj_747), .O(n7306));
    defparam i1_4_lut_adj_177.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_178 (.I0(pin_out[14]), .I1(n6176), .I2(n7306), 
            .I3(n149), .O(n11247));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'h0aca;
    SB_LUT4 i9564_2_lut_3_lut (.I0(n18_adj_742), .I1(counter[7]), .I2(counter[6]), 
            .I3(GND_net), .O(state_7__N_167[0]));
    defparam i9564_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 equal_282_i7_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_753));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_282_i7_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_903_i11_2_lut_4_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(current_pin[2]), .I3(current_pin[3]), .O(n11_adj_743));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_903_i11_2_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i1_4_lut_adj_179 (.I0(n9426), .I1(n7231), .I2(n6178), .I3(n8_adj_747), 
            .O(n7310));
    defparam i1_4_lut_adj_179.LUT_INIT = 16'h0c8c;
    SB_LUT4 i12_4_lut_adj_180 (.I0(pin_out[15]), .I1(n6178), .I2(n7310), 
            .I3(n149), .O(n11253));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_895_i11_2_lut_4_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(current_pin[2]), .I3(current_pin[3]), .O(n11_adj_739));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_895_i11_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_4_lut_adj_181 (.I0(n9_adj_733), .I1(n7231), .I2(n6180), 
            .I3(n8_adj_746), .O(n7314));
    defparam i1_4_lut_adj_181.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_182 (.I0(pin_out[16]), .I1(n6180), .I2(n7314), 
            .I3(n149), .O(n11259));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_783_i11_2_lut_4_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(current_pin[2]), .I3(current_pin[3]), .O(n11));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_783_i11_2_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_3_lut_adj_183 (.I0(state[1]), .I1(state[0]), .I2(state[2]), 
            .I3(GND_net), .O(n1));
    defparam i1_2_lut_3_lut_adj_183.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_4_lut_adj_184 (.I0(n6), .I1(n7231), .I2(n6182), .I3(n8_adj_746), 
            .O(n7318));
    defparam i1_4_lut_adj_184.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_185 (.I0(pin_out[17]), .I1(n6182), .I2(n7318), 
            .I3(n149), .O(n11265));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_186 (.I0(n6_adj_748), .I1(n7231), .I2(n6184), 
            .I3(n8_adj_746), .O(n7322));
    defparam i1_4_lut_adj_186.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_187 (.I0(pin_out[18]), .I1(n6184), .I2(n7322), 
            .I3(n149), .O(n11271));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_188 (.I0(current_pin[0]), .I1(counter[7]), 
            .I2(counter[6]), .I3(n18_adj_742), .O(n7166));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut_4_lut_adj_188.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_189 (.I0(current_pin[0]), .I1(counter[7]), 
            .I2(counter[6]), .I3(n18_adj_742), .O(n7155));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut_4_lut_adj_189.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_4_lut_adj_190 (.I0(n9426), .I1(n7231), .I2(n6186), .I3(n8_adj_746), 
            .O(n7326));
    defparam i1_4_lut_adj_190.LUT_INIT = 16'h0c8c;
    SB_LUT4 i12_4_lut_adj_191 (.I0(pin_out[19]), .I1(n6186), .I2(n7326), 
            .I3(n149), .O(n11277));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_4_lut_adj_192 (.I0(state[2]), .I1(neopxl_color[7]), 
            .I2(state[0]), .I3(state[1]), .O(n19_adj_725));
    defparam i1_3_lut_4_lut_adj_192.LUT_INIT = 16'h5444;
    SB_LUT4 i1_4_lut_adj_193 (.I0(n9_adj_733), .I1(n7231), .I2(n6188), 
            .I3(n8_adj_723), .O(n7330));
    defparam i1_4_lut_adj_193.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_194 (.I0(pin_out[20]), .I1(n6188), .I2(n7330), 
            .I3(n149), .O(n11283));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_1100_i21_2_lut (.I0(current_pin[1]), .I1(current_pin[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_741));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_1100_i21_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_3_lut_adj_195 (.I0(state[1]), .I1(state[0]), .I2(neopxl_color[7]), 
            .I3(GND_net), .O(n22_adj_724));
    defparam i1_2_lut_3_lut_adj_195.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_3_lut_4_lut_adj_196 (.I0(state[2]), .I1(neopxl_color[6]), 
            .I2(state[0]), .I3(state[1]), .O(n19_adj_729));
    defparam i1_3_lut_4_lut_adj_196.LUT_INIT = 16'h5444;
    SB_LUT4 i1_4_lut_adj_197 (.I0(n6), .I1(n7231), .I2(n6190), .I3(n8_adj_723), 
            .O(n7334));
    defparam i1_4_lut_adj_197.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_198 (.I0(pin_out[21]), .I1(n6190), .I2(n7334), 
            .I3(n149), .O(n11289));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_273_i7_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_719));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_273_i7_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i6234_2_lut (.I0(current_pin[1]), .I1(current_pin[2]), .I2(GND_net), 
            .I3(GND_net), .O(n9456));
    defparam i6234_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut (.I0(n9456), .I1(n4_adj_778), .I2(n7_adj_719), .I3(n7166), 
            .O(n12135));
    defparam i2_4_lut.LUT_INIT = 16'hccc4;
    SB_LUT4 i2_3_lut_adj_199 (.I0(n7_adj_719), .I1(n9456), .I2(n7166), 
            .I3(GND_net), .O(n12208));
    defparam i2_3_lut_adj_199.LUT_INIT = 16'h0404;
    SB_LUT4 i4263_4_lut (.I0(pin_out[22]), .I1(n149), .I2(n12135), .I3(n7231), 
            .O(n7500));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4263_4_lut.LUT_INIT = 16'ha3aa;
    SB_LUT4 i1_4_lut_adj_200 (.I0(n7500), .I1(n7231), .I2(n12208), .I3(n15_adj_721), 
            .O(n7619));   // verilog/TinyFPGA_B.v(97[11:22])
    defparam i1_4_lut_adj_200.LUT_INIT = 16'h222a;
    SB_LUT4 i1_2_lut_3_lut_adj_201 (.I0(state[1]), .I1(state[0]), .I2(neopxl_color[6]), 
            .I3(GND_net), .O(n22_adj_728));
    defparam i1_2_lut_3_lut_adj_201.LUT_INIT = 16'he0e0;
    GND i1 (.Y(GND_net));
    SB_DFFESR current_pin_i0_i6 (.Q(current_pin[6]), .C(CLK_c), .E(n7223), 
            .D(n2160), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFFESR delay_counter_1104__i30 (.Q(delay_counter[30]), .C(CLK_c), 
            .E(n7232), .D(n135), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_DFFESR current_pin_i0_i5 (.Q(current_pin[5]), .C(CLK_c), .E(n7223), 
            .D(n2161), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 i1_4_lut_adj_202 (.I0(n9_adj_733), .I1(n7231), .I2(n5907), 
            .I3(n8), .O(n7236));
    defparam i1_4_lut_adj_202.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_203 (.I0(pin_out[0]), .I1(n5907), .I2(n7236), 
            .I3(n149), .O(n11295));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_1096_i21_2_lut (.I0(current_pin[1]), .I1(current_pin[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_1096_i21_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_4_lut_adj_204 (.I0(state[2]), .I1(neopxl_color[5]), 
            .I2(state[0]), .I3(state[1]), .O(n19_adj_731));
    defparam i1_3_lut_4_lut_adj_204.LUT_INIT = 16'h5444;
    SB_LUT4 i1_2_lut_3_lut_adj_205 (.I0(state[1]), .I1(state[0]), .I2(neopxl_color[5]), 
            .I3(GND_net), .O(n22_adj_730));
    defparam i1_2_lut_3_lut_adj_205.LUT_INIT = 16'he0e0;
    SB_DFFESR delay_counter_1104__i29 (.Q(delay_counter[29]), .C(CLK_c), 
            .E(n7232), .D(n136), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_CARRY delay_counter_1104_add_4_21 (.CI(n10535), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n10536));
    SB_CARRY counter_1103_add_4_5 (.CI(n10512), .I0(current_pin_7__N_155), 
            .I1(counter[3]), .CO(n10513));
    SB_LUT4 counter_1103_add_4_4_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[2]), .I3(n10511), .O(n53)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_4_lut.LUT_INIT = 16'hE22E;
    SB_CARRY counter_1103_add_4_4 (.CI(n10511), .I0(current_pin_7__N_155), 
            .I1(counter[2]), .CO(n10512));
    SB_LUT4 i1_4_lut_adj_206 (.I0(n6), .I1(n7231), .I2(n6150), .I3(n8), 
            .O(n7254));
    defparam i1_4_lut_adj_206.LUT_INIT = 16'h0c4c;
    SB_DFFESR current_pin_i0_i4 (.Q(current_pin[4]), .C(CLK_c), .E(n7223), 
            .D(n2162), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 blink_counter_1105_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15_adj_759), .I3(n10558), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_207 (.I0(pin_out[1]), .I1(n6150), .I2(n7254), 
            .I3(n149), .O(n11301));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_4_lut_adj_208 (.I0(state[2]), .I1(neopxl_color[4]), 
            .I2(state[0]), .I3(state[1]), .O(n19));
    defparam i1_3_lut_4_lut_adj_208.LUT_INIT = 16'h5444;
    SB_LUT4 i1_2_lut_3_lut_adj_209 (.I0(state[1]), .I1(state[0]), .I2(neopxl_color[4]), 
            .I3(GND_net), .O(n22_adj_732));
    defparam i1_2_lut_3_lut_adj_209.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_4_lut_adj_210 (.I0(n6_adj_748), .I1(n7231), .I2(n6152), 
            .I3(n8), .O(n7258));
    defparam i1_4_lut_adj_210.LUT_INIT = 16'h0c4c;
    SB_LUT4 i12_4_lut_adj_211 (.I0(pin_out[2]), .I1(n6152), .I2(n7258), 
            .I3(n149), .O(n11307));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_1098_i21_2_lut (.I0(current_pin[1]), .I1(current_pin[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_714));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_1098_i21_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 delay_counter_1104_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n10534), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.I0(current_pin[4]), .I1(n7142), 
            .I2(current_pin[3]), .I3(current_pin[2]), .O(n7145));
    defparam i1_2_lut_3_lut_4_lut_adj_212.LUT_INIT = 16'hefff;
    SB_LUT4 equal_1101_i22_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n22_adj_740));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_1101_i22_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4323_4_lut_4_lut (.I0(neopxl_color[12]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n7560));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4323_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i1_4_lut_adj_213 (.I0(n9426), .I1(n7231), .I2(n6154), .I3(n8), 
            .O(n7262));
    defparam i1_4_lut_adj_213.LUT_INIT = 16'h0c8c;
    SB_LUT4 i12_4_lut_adj_214 (.I0(pin_out[3]), .I1(n6154), .I2(n7262), 
            .I3(n149), .O(n11205));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'h0aca;
    SB_LUT4 i4257_3_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(timer[0]), 
            .I2(n11683), .I3(GND_net), .O(n7494));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4257_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9299_3_lut (.I0(pin_out[0]), .I1(pin_out[1]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13146));
    defparam i9299_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9300_3_lut (.I0(pin_out[2]), .I1(pin_out[3]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13147));
    defparam i9300_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9306_3_lut (.I0(pin_out[6]), .I1(pin_out[7]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13153));
    defparam i9306_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9305_3_lut (.I0(pin_out[4]), .I1(pin_out[5]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13152));
    defparam i9305_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9314_3_lut (.I0(pin_out[8]), .I1(pin_out[9]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13161));
    defparam i9314_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9315_3_lut (.I0(pin_out[10]), .I1(pin_out[11]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13162));
    defparam i9315_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9318_3_lut (.I0(pin_out[14]), .I1(pin_out[15]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13165));
    defparam i9318_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9317_3_lut (.I0(pin_out[12]), .I1(pin_out[13]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13164));
    defparam i9317_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 counter_1103_add_4_3_lut (.I0(n6971), .I1(current_pin_7__N_155), 
            .I2(counter[1]), .I3(n10510), .O(n54)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_3_lut.LUT_INIT = 16'hE22E;
    SB_DFFESR current_pin_i0_i3 (.Q(current_pin[3]), .C(CLK_c), .E(n7223), 
            .D(n2163), .R(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 current_pin_0__bdd_4_lut_9624 (.I0(current_pin[0]), .I1(pin_in[14]), 
            .I2(pin_in[15]), .I3(current_pin[1]), .O(n13474));
    defparam current_pin_0__bdd_4_lut_9624.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_215 (.I0(current_pin[4]), .I1(n7142), 
            .I2(current_pin[3]), .I3(current_pin[2]), .O(n7150));
    defparam i1_2_lut_3_lut_4_lut_adj_215.LUT_INIT = 16'hffef;
    SB_LUT4 i5461_4_lut (.I0(n13273), .I1(state[1]), .I2(state[0]), .I3(n11481), 
            .O(n3033));   // verilog/TinyFPGA_B.v(96[11:16])
    defparam i5461_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i4324_3_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(timer[31]), 
            .I2(n11683), .I3(GND_net), .O(n7561));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4324_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4172_2_lut (.I0(n7249), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n7409));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4172_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut (.I0(state[2]), .I1(state[1]), .I2(state[0]), .I3(GND_net), 
            .O(n7231));
    defparam i1_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 counter_1103_mux_6_i1_3_lut (.I0(n45), .I1(n6971), .I2(n15_adj_721), 
            .I3(GND_net), .O(n55));   // verilog/TinyFPGA_B.v(142[20:30])
    defparam counter_1103_mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4325_3_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(timer[30]), 
            .I2(n11683), .I3(GND_net), .O(n7562));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4325_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4326_3_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(timer[29]), 
            .I2(n11683), .I3(GND_net), .O(n7563));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4326_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4327_3_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(timer[28]), 
            .I2(n11683), .I3(GND_net), .O(n7564));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4327_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4328_3_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(timer[27]), 
            .I2(n11683), .I3(GND_net), .O(n7565));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4328_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4329_3_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(timer[26]), 
            .I2(n11683), .I3(GND_net), .O(n7566));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4329_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4330_3_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(timer[25]), 
            .I2(n11683), .I3(GND_net), .O(n7567));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4330_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut_adj_216 (.I0(current_pin[5]), .I1(current_pin[6]), 
            .I2(current_pin[7]), .I3(GND_net), .O(n7142));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut_adj_216.LUT_INIT = 16'hfefe;
    SB_LUT4 i4331_3_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(timer[24]), 
            .I2(n11683), .I3(GND_net), .O(n7568));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4331_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4332_3_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(timer[23]), 
            .I2(n11683), .I3(GND_net), .O(n7569));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4332_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4333_3_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(timer[22]), 
            .I2(n11683), .I3(GND_net), .O(n7570));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4333_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9434_3_lut_4_lut (.I0(current_pin[5]), .I1(current_pin[6]), 
            .I2(current_pin[7]), .I3(n9415), .O(n13273));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i9434_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4334_3_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(timer[21]), 
            .I2(n11683), .I3(GND_net), .O(n7571));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4334_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4335_3_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(timer[20]), 
            .I2(n11683), .I3(GND_net), .O(n7572));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4335_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4336_3_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(timer[19]), 
            .I2(n11683), .I3(GND_net), .O(n7573));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4336_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4337_3_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(timer[18]), 
            .I2(n11683), .I3(GND_net), .O(n7574));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4337_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_217 (.I0(state[1]), .I1(n18_adj_742), 
            .I2(counter[7]), .I3(counter[6]), .O(n11481));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut_4_lut_adj_217.LUT_INIT = 16'h0002;
    SB_LUT4 i4338_3_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(timer[17]), 
            .I2(n11683), .I3(GND_net), .O(n7575));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4338_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY blink_counter_1105_add_4_13 (.CI(n10558), .I0(GND_net), .I1(n15_adj_759), 
            .CO(n10559));
    SB_DFFE counter_1103__i1 (.Q(counter[1]), .C(CLK_c), .E(n7231), .D(n54));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i2 (.Q(counter[2]), .C(CLK_c), .E(n7231), .D(n53));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i3 (.Q(counter[3]), .C(CLK_c), .E(n7231), .D(n52));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i4 (.Q(counter[4]), .C(CLK_c), .E(n7231), .D(n51));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i5 (.Q(counter[5]), .C(CLK_c), .E(n7231), .D(n50));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i6 (.Q(counter[6]), .C(CLK_c), .E(n7231), .D(n49));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFFE counter_1103__i7 (.Q(counter[7]), .C(CLK_c), .E(n7231), .D(n48));   // verilog/TinyFPGA_B.v(142[20:30])
    SB_DFF blink_counter_1105__i1 (.Q(n25), .C(CLK_c), .D(n134_adj_716));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 n13474_bdd_4_lut (.I0(n13474), .I1(pin_in[13]), .I2(pin_in[12]), 
            .I3(current_pin[1]), .O(n13477));
    defparam n13474_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 current_pin_1__bdd_4_lut (.I0(current_pin[1]), .I1(n13164), 
            .I2(n13165), .I3(current_pin[2]), .O(n13468));
    defparam current_pin_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n13468_bdd_4_lut (.I0(n13468), .I1(n13162), .I2(n13161), .I3(current_pin[2]), 
            .O(n13471));
    defparam n13468_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 current_pin_1__bdd_4_lut_9614 (.I0(current_pin[1]), .I1(n13152), 
            .I2(n13153), .I3(current_pin[2]), .O(n13462));
    defparam current_pin_1__bdd_4_lut_9614.LUT_INIT = 16'he4aa;
    SB_LUT4 n13462_bdd_4_lut (.I0(n13462), .I1(n13147), .I2(n13146), .I3(current_pin[2]), 
            .O(n13465));
    defparam n13462_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i356_3_lut_4_lut (.I0(n9_adj_733), .I1(n10_adj_736), .I2(n14_adj_717), 
            .I3(pin_in[0]), .O(n2289));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam i356_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i452_3_lut_4_lut (.I0(n9_adj_733), .I1(n10_adj_736), .I2(n14_adj_752), 
            .I3(pin_in[16]), .O(n2385));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam i452_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i1_2_lut_3_lut_adj_218 (.I0(state[2]), .I1(state[1]), .I2(state[0]), 
            .I3(GND_net), .O(n15_adj_721));   // verilog/TinyFPGA_B.v(154[5:12])
    defparam i1_2_lut_3_lut_adj_218.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_2_lut_3_lut_adj_219 (.I0(state[2]), .I1(state[1]), .I2(state[0]), 
            .I3(GND_net), .O(n7232));   // verilog/TinyFPGA_B.v(154[5:12])
    defparam i1_2_lut_3_lut_adj_219.LUT_INIT = 16'h4040;
    SB_LUT4 i2932_3_lut_4_lut (.I0(n21_adj_714), .I1(n22_adj_740), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6152));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2932_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2934_3_lut_4_lut (.I0(n21_adj_714), .I1(n22_adj_740), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6154));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2934_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2938_3_lut_4_lut (.I0(current_pin[0]), .I1(n7135), .I2(n7128), 
            .I3(current_pin_7__N_155), .O(n6158));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i2938_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_LUT4 i2936_3_lut_4_lut (.I0(current_pin[0]), .I1(n7135), .I2(n7128), 
            .I3(current_pin_7__N_155), .O(n6156));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i2936_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i4339_3_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(timer[16]), 
            .I2(n11683), .I3(GND_net), .O(n7576));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4339_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4340_3_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(timer[15]), 
            .I2(n11683), .I3(GND_net), .O(n7577));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4340_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4341_3_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(timer[14]), 
            .I2(n11683), .I3(GND_net), .O(n7578));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4341_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4342_3_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(timer[13]), 
            .I2(n11683), .I3(GND_net), .O(n7579));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4342_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4343_3_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(timer[12]), 
            .I2(n11683), .I3(GND_net), .O(n7580));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4343_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4344_3_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(timer[11]), 
            .I2(n11683), .I3(GND_net), .O(n7581));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4344_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 blink_counter_1105_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n10557), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_1103_add_4_3 (.CI(n10510), .I0(current_pin_7__N_155), 
            .I1(counter[1]), .CO(n10511));
    SB_CARRY delay_counter_1104_add_4_20 (.CI(n10534), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n10535));
    SB_LUT4 counter_1103_add_4_2_lut (.I0(GND_net), .I1(state_7__N_167[0]), 
            .I2(counter[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1103_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n10533), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_1105__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i4 (.Q(n22), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i5 (.Q(n21_adj_737), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i7 (.Q(n19_adj_718), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i11 (.Q(n15_adj_759), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i12 (.Q(n14_adj_745), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i15 (.Q(n11_adj_758), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i16 (.Q(n10_adj_757), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i17 (.Q(n9), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i18 (.Q(n8_adj_755), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i19 (.Q(n7), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i20 (.Q(n6_adj_756), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_1105__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 i4345_3_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(timer[10]), 
            .I2(n11683), .I3(GND_net), .O(n7582));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4345_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY delay_counter_1104_add_4_19 (.CI(n10533), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n10534));
    SB_DFF pin_output_i0_i3 (.Q(pin_out[3]), .C(CLK_c), .D(n11205));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 i2_3_lut_adj_220 (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(n6971));
    defparam i2_3_lut_adj_220.LUT_INIT = 16'h0202;
    SB_LUT4 state_7__I_0_205_i16_1_lut (.I0(n15_adj_721), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(current_pin_7__N_155));   // verilog/TinyFPGA_B.v(129[5:11])
    defparam state_7__I_0_205_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i4346_3_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(timer[9]), 
            .I2(n11683), .I3(GND_net), .O(n7583));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4346_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4_4_lut (.I0(neopxl_color[12]), .I1(neopxl_color[14]), .I2(neopxl_color_prev[12]), 
            .I3(neopxl_color_prev[14]), .O(n12_adj_774));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 delay_counter_1104_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n10532), .O(n149_adj_754)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_221 (.I0(neopxl_color[13]), .I1(neopxl_color[5]), 
            .I2(neopxl_color_prev[13]), .I3(neopxl_color_prev[5]), .O(n10_adj_776));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i2_4_lut_adj_221.LUT_INIT = 16'h7bde;
    SB_CARRY blink_counter_1105_add_4_12 (.CI(n10557), .I0(GND_net), .I1(n16), 
            .CO(n10558));
    SB_CARRY delay_counter_1104_add_4_18 (.CI(n10532), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n10533));
    SB_CARRY counter_1103_add_4_2 (.CI(VCC_net), .I0(state_7__N_167[0]), 
            .I1(counter[0]), .CO(n10510));
    SB_LUT4 blink_counter_1105_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n10556), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_11 (.CI(n10556), .I0(GND_net), .I1(n17), 
            .CO(n10557));
    SB_LUT4 delay_counter_1104_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[15]), .I3(n10531), .O(n150_adj_738)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n10555), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_17 (.CI(n10531), .I0(GND_net), .I1(delay_counter[15]), 
            .CO(n10532));
    SB_DFF pin_output_i0_i2 (.Q(pin_out[2]), .C(CLK_c), .D(n11307));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i1 (.Q(pin_out[1]), .C(CLK_c), .D(n11301));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i0 (.Q(pin_out[0]), .C(CLK_c), .D(n11295));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i22 (.Q(pin_out[22]), .C(CLK_c), .D(n7619));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i21 (.Q(pin_out[21]), .C(CLK_c), .D(n11289));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i20 (.Q(pin_out[20]), .C(CLK_c), .D(n11283));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i19 (.Q(pin_out[19]), .C(CLK_c), .D(n11277));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i18 (.Q(pin_out[18]), .C(CLK_c), .D(n11271));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i17 (.Q(pin_out[17]), .C(CLK_c), .D(n11265));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i16 (.Q(pin_out[16]), .C(CLK_c), .D(n11259));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i15 (.Q(pin_out[15]), .C(CLK_c), .D(n11253));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i14 (.Q(pin_out[14]), .C(CLK_c), .D(n11247));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i13 (.Q(pin_out[13]), .C(CLK_c), .D(n11241));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i12 (.Q(pin_out[12]), .C(CLK_c), .D(n11235));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i11 (.Q(pin_out[11]), .C(CLK_c), .D(n11229));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i10 (.Q(pin_out[10]), .C(CLK_c), .D(n7607));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i9 (.Q(pin_out[9]), .C(CLK_c), .D(n11223));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i8 (.Q(pin_out[8]), .C(CLK_c), .D(n11217));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i7 (.Q(pin_out[7]), .C(CLK_c), .D(n11211));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i6 (.Q(pin_out[6]), .C(CLK_c), .D(n7603));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i5 (.Q(pin_out[5]), .C(CLK_c), .D(n11337));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_DFF pin_output_i0_i4 (.Q(pin_out[4]), .C(CLK_c), .D(n11331));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    SB_LUT4 add_216_6_lut (.I0(GND_net), .I1(current_pin[4]), .I2(GND_net), 
            .I3(n10387), .O(n2162)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_1104__i16 (.Q(delay_counter[16]), .C(CLK_c), 
            .E(n7232), .D(n149_adj_754), .R(n7442));   // verilog/TinyFPGA_B.v(156[24:39])
    SB_LUT4 i3_4_lut (.I0(neopxl_color[6]), .I1(neopxl_color[15]), .I2(neopxl_color_prev[6]), 
            .I3(neopxl_color_prev[15]), .O(n11_adj_775));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_222 (.I0(neopxl_color[4]), .I1(neopxl_color[7]), 
            .I2(neopxl_color_prev[4]), .I3(neopxl_color_prev[7]), .O(n9_adj_777));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i1_4_lut_adj_222.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9_adj_777), .I1(n11_adj_775), .I2(n10_adj_776), 
            .I3(n12_adj_774), .O(update_color_N_270));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_216_3 (.CI(n10384), .I0(current_pin[1]), .I1(GND_net), 
            .CO(n10385));
    SB_CARRY add_216_6 (.CI(n10387), .I0(current_pin[4]), .I1(GND_net), 
            .CO(n10388));
    SB_LUT4 add_216_5_lut (.I0(GND_net), .I1(current_pin[3]), .I2(GND_net), 
            .I3(n10386), .O(n2163)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_216_9_lut (.I0(GND_net), .I1(current_pin[7]), .I2(GND_net), 
            .I3(n10390), .O(n2159)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n10530), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_10 (.CI(n10555), .I0(GND_net), .I1(n18), 
            .CO(n10556));
    SB_LUT4 blink_counter_1105_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n19_adj_718), .I3(n10554), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_16 (.CI(n10530), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n10531));
    SB_CARRY blink_counter_1105_add_4_9 (.CI(n10554), .I0(GND_net), .I1(n19_adj_718), 
            .CO(n10555));
    SB_LUT4 delay_counter_1104_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n10529), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n20), .I3(n10553), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_15 (.CI(n10529), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n10530));
    SB_CARRY blink_counter_1105_add_4_8 (.CI(n10553), .I0(GND_net), .I1(n20), 
            .CO(n10554));
    SB_LUT4 delay_counter_1104_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n10528), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n10572), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n21_adj_737), .I3(n10552), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_14 (.CI(n10528), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n10529));
    SB_CARRY blink_counter_1105_add_4_7 (.CI(n10552), .I0(GND_net), .I1(n21_adj_737), 
            .CO(n10553));
    SB_LUT4 blink_counter_1105_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n10571), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n10527), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n22), .I3(n10551), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_6 (.CI(n10551), .I0(GND_net), .I1(n22), 
            .CO(n10552));
    SB_LUT4 blink_counter_1105_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n23), .I3(n10550), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_26 (.CI(n10571), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n10572));
    SB_CARRY add_216_5 (.CI(n10386), .I0(current_pin[3]), .I1(GND_net), 
            .CO(n10387));
    SB_LUT4 add_216_8_lut (.I0(GND_net), .I1(current_pin[6]), .I2(GND_net), 
            .I3(n10389), .O(n2160)) /* synthesis syn_instantiated=1 */ ;
    defparam add_216_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4322_4_lut_4_lut (.I0(neopxl_color[13]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n7559));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4322_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_CARRY delay_counter_1104_add_4_13 (.CI(n10527), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n10528));
    SB_LUT4 blink_counter_1105_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n10570), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n10526), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_12 (.CI(n10526), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n10527));
    SB_LUT4 delay_counter_1104_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n10525), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_11 (.CI(n10525), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n10526));
    SB_CARRY blink_counter_1105_add_4_25 (.CI(n10570), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n10571));
    SB_CARRY blink_counter_1105_add_4_5 (.CI(n10550), .I0(GND_net), .I1(n23), 
            .CO(n10551));
    SB_LUT4 delay_counter_1104_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n10524), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n24), .I3(n10549), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_10 (.CI(n10524), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n10525));
    SB_LUT4 blink_counter_1105_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n10569), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_4 (.CI(n10549), .I0(GND_net), .I1(n24), 
            .CO(n10550));
    SB_LUT4 blink_counter_1105_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n25), .I3(n10548), .O(n134_adj_716)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_3 (.CI(n10548), .I0(GND_net), .I1(n25), 
            .CO(n10549));
    SB_LUT4 delay_counter_1104_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[7]), .I3(n10523), .O(n158)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_1105_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n26), .I3(VCC_net), .O(n135_adj_722)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_9 (.CI(n10523), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n10524));
    SB_LUT4 i2_3_lut_adj_223 (.I0(delay_counter[31]), .I1(n7232), .I2(n11612), 
            .I3(GND_net), .O(n7442));   // verilog/TinyFPGA_B.v(157[10:33])
    defparam i2_3_lut_adj_223.LUT_INIT = 16'h4040;
    SB_LUT4 delay_counter_1104_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[6]), .I3(n10522), .O(n159)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_1105_add_4_24 (.CI(n10569), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n10570));
    SB_CARRY blink_counter_1105_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26), 
            .CO(n10548));
    SB_LUT4 blink_counter_1105_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n10568), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n10547), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_8 (.CI(n10522), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n10523));
    SB_LUT4 delay_counter_1104_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[5]), .I3(n10521), .O(n160)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1104_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n10546), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1104_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1104_add_4_7 (.CI(n10521), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n10522));
    SB_LUT4 i4321_4_lut_4_lut (.I0(neopxl_color[14]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n7558));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4321_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i4347_3_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(timer[8]), 
            .I2(n11683), .I3(GND_net), .O(n7584));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4347_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i6193_2_lut (.I0(current_pin[4]), .I1(current_pin[3]), .I2(GND_net), 
            .I3(GND_net), .O(n9415));
    defparam i6193_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9272_2_lut (.I0(current_pin[7]), .I1(current_pin[6]), .I2(GND_net), 
            .I3(GND_net), .O(n13048));
    defparam i9272_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY blink_counter_1105_add_4_23 (.CI(n10568), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n10569));
    SB_LUT4 blink_counter_1105_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_756), .I3(n10567), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_1105_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9443_4_lut (.I0(n13048), .I1(n9415), .I2(current_pin[5]), 
            .I3(n11481), .O(n13264));
    defparam i9443_4_lut.LUT_INIT = 16'h0100;
    SB_CARRY blink_counter_1105_add_4_22 (.CI(n10567), .I0(GND_net), .I1(n6_adj_756), 
            .CO(n10568));
    SB_LUT4 i1_4_lut_adj_224 (.I0(state[2]), .I1(n13264), .I2(state[1]), 
            .I3(state[0]), .O(n36));
    defparam i1_4_lut_adj_224.LUT_INIT = 16'h0544;
    SB_LUT4 i2691_3_lut_4_lut (.I0(n21), .I1(n22_adj_740), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n5907));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2691_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_CARRY delay_counter_1104_add_4_32 (.CI(n10546), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n10547));
    SB_LUT4 i2930_3_lut_4_lut (.I0(n21), .I1(n22_adj_740), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6150));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2930_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i4308_4_lut_4_lut (.I0(neopxl_color[15]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n7545));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4308_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i2968_3_lut_4_lut (.I0(n21_adj_741), .I1(n7_adj_719), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6188));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2968_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2970_3_lut_4_lut (.I0(n21_adj_741), .I1(n7_adj_719), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6190));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2970_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2964_3_lut_4_lut (.I0(n21_adj_714), .I1(n7_adj_719), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6184));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2964_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 current_pin_1__bdd_4_lut_9609 (.I0(current_pin[1]), .I1(n13170), 
            .I2(n13171), .I3(current_pin[2]), .O(n13450));
    defparam current_pin_1__bdd_4_lut_9609.LUT_INIT = 16'he4aa;
    SB_LUT4 n13450_bdd_4_lut (.I0(n13450), .I1(n13168), .I2(n13167), .I3(current_pin[2]), 
            .O(n13453));
    defparam n13450_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2966_3_lut_4_lut (.I0(n21_adj_714), .I1(n7_adj_719), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6186));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2966_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2_3_lut_adj_225 (.I0(state[1]), .I1(state[2]), .I2(state[0]), 
            .I3(GND_net), .O(current_pin_7__N_154));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i2_3_lut_adj_225.LUT_INIT = 16'h1010;
    SB_LUT4 i5_3_lut (.I0(delay_counter[3]), .I1(delay_counter[5]), .I2(delay_counter[4]), 
            .I3(GND_net), .O(n14));
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6_4_lut (.I0(delay_counter[8]), .I1(delay_counter[7]), .I2(delay_counter[1]), 
            .I3(delay_counter[0]), .O(n15));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(n15), .I1(delay_counter[2]), .I2(n14), .I3(delay_counter[6]), 
            .O(n12091));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1390_4_lut (.I0(n12091), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24_adj_720));
    defparam i1390_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i1_2_lut (.I0(delay_counter[16]), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_761));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_226 (.I0(n24_adj_720), .I1(delay_counter[14]), 
            .I2(delay_counter[12]), .I3(delay_counter[13]), .O(n11898));
    defparam i2_4_lut_adj_226.LUT_INIT = 16'hc800;
    SB_LUT4 i6_4_lut_adj_227 (.I0(delay_counter[29]), .I1(delay_counter[25]), 
            .I2(delay_counter[30]), .I3(delay_counter[27]), .O(n16_adj_764));
    defparam i6_4_lut_adj_227.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_228 (.I0(delay_counter[23]), .I1(delay_counter[28]), 
            .I2(delay_counter[26]), .I3(delay_counter[22]), .O(n17_adj_765));
    defparam i7_4_lut_adj_228.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_4_lut_adj_229 (.I0(delay_counter[17]), .I1(delay_counter[15]), 
            .I2(n11898), .I3(n6_adj_761), .O(n12171));
    defparam i4_4_lut_adj_229.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(n17_adj_765), .I1(delay_counter[24]), .I2(n16_adj_764), 
            .I3(delay_counter[21]), .O(n10978));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7849_4_lut (.I0(n10978), .I1(n12171), .I2(delay_counter[20]), 
            .I3(delay_counter[19]), .O(n11612));
    defparam i7849_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i6204_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9426));
    defparam i6204_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_230 (.I0(counter[7]), .I1(counter[6]), .I2(GND_net), 
            .I3(GND_net), .O(n7135));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i1_2_lut_adj_230.LUT_INIT = 16'heeee;
    SB_LUT4 i4259_4_lut_4_lut (.I0(n7239), .I1(state_adj_781[0]), .I2(state_adj_781[1]), 
            .I3(state_3__N_377[1]), .O(n7496));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4259_4_lut_4_lut.LUT_INIT = 16'hfa7a;
    SB_LUT4 equal_879_i9_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_733));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_879_i9_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 equal_290_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_290_i8_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 equal_927_i10_2_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(GND_net), .I3(GND_net), .O(n10));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_927_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_2_lut_adj_231 (.I0(current_pin[4]), .I1(n7142), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_752));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam i1_2_lut_adj_231.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_280_i6_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_748));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_280_i6_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 equal_751_i10_2_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_736));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_751_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_232 (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n6));   // verilog/TinyFPGA_B.v(97[11:22])
    defparam i1_2_lut_adj_232.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_3_lut_4_lut_adj_233 (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(n15_adj_721), .I3(n8_adj_723), .O(n4_adj_778));
    defparam i1_3_lut_4_lut_adj_233.LUT_INIT = 16'h0f0b;
    SB_LUT4 equal_270_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8_adj_723));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_270_i8_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_2_lut_adj_234 (.I0(current_pin[4]), .I1(n7142), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_717));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam i1_2_lut_adj_234.LUT_INIT = 16'heeee;
    SB_LUT4 equal_274_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8_adj_746));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_274_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 equal_276_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8_adj_747));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_276_i8_2_lut_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 Mux_35_i19_3_lut (.I0(pin_out[20]), .I1(pin_out[21]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n19_adj_735));   // verilog/TinyFPGA_B.v(132[44:55])
    defparam Mux_35_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9294_4_lut (.I0(n19_adj_735), .I1(pin_out[22]), .I2(current_pin[1]), 
            .I3(current_pin[0]), .O(n13141));
    defparam i9294_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i9295_3_lut (.I0(n13441), .I1(n13141), .I2(current_pin[2]), 
            .I3(GND_net), .O(n13142));
    defparam i9295_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9513_3_lut (.I0(n13465), .I1(n13471), .I2(current_pin[3]), 
            .I3(GND_net), .O(n13362));   // verilog/TinyFPGA_B.v(132[44:55])
    defparam i9513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9514_4_lut (.I0(n13362), .I1(n13142), .I2(current_pin[4]), 
            .I3(current_pin[3]), .O(n149));   // verilog/TinyFPGA_B.v(132[44:55])
    defparam i9514_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i9511_3_lut (.I0(n13483), .I1(n13477), .I2(current_pin[2]), 
            .I3(GND_net), .O(n13360));
    defparam i9511_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 Mux_34_i19_3_lut (.I0(pin_in[20]), .I1(pin_in[21]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n19_adj_715));   // verilog/TinyFPGA_B.v(132[19:30])
    defparam Mux_34_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9297_4_lut (.I0(n19_adj_715), .I1(pin_in[22]), .I2(current_pin[1]), 
            .I3(current_pin[0]), .O(n13144));
    defparam i9297_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i9442_4_lut (.I0(n13447), .I1(current_pin[3]), .I2(n13144), 
            .I3(current_pin[2]), .O(n13279));
    defparam i9442_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i9515_3_lut (.I0(n13453), .I1(n13360), .I2(current_pin[3]), 
            .I3(GND_net), .O(n13364));   // verilog/TinyFPGA_B.v(132[19:30])
    defparam i9515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i37_4_lut (.I0(n13364), .I1(n149), .I2(n13279), .I3(current_pin[4]), 
            .O(n150));   // verilog/TinyFPGA_B.v(132[12:56])
    defparam i37_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_4_lut_adj_235 (.I0(pin_in[12]), .I1(current_pin[0]), .I2(n7145), 
            .I3(current_pin[1]), .O(n2361));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i1_4_lut_adj_235.LUT_INIT = 16'haaa8;
    SB_LUT4 i446_4_lut (.I0(pin_in[15]), .I1(current_pin[0]), .I2(n7145), 
            .I3(current_pin[1]), .O(n2379));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i446_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i1_4_lut_adj_236 (.I0(n7145), .I1(pin_in[13]), .I2(current_pin[0]), 
            .I3(current_pin[1]), .O(n2367));   // verilog/TinyFPGA_B.v(97[11:22])
    defparam i1_4_lut_adj_236.LUT_INIT = 16'hcc8c;
    SB_LUT4 i4_4_lut_adj_237 (.I0(pin_in[1]), .I1(n2361), .I2(n11_adj_734), 
            .I3(n14_adj_717), .O(n33));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i4_4_lut_adj_237.LUT_INIT = 16'heeec;
    SB_LUT4 i16_4_lut (.I0(current_pin_7__N_157), .I1(n150), .I2(state_7__N_167[0]), 
            .I3(state[0]), .O(n45_adj_772));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i422_4_lut (.I0(pin_in[11]), .I1(current_pin[0]), .I2(n7150), 
            .I3(current_pin[1]), .O(n2355));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i422_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i488_4_lut (.I0(pin_in[22]), .I1(n6_adj_748), .I2(n14_adj_752), 
            .I3(n10), .O(n2421));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i488_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i440_3_lut (.I0(pin_in[14]), .I1(n6_adj_748), .I2(n7145), 
            .I3(GND_net), .O(n2373));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i440_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i13_4_lut (.I0(n2421), .I1(pin_in[19]), .I2(n11_adj_743), 
            .I3(n14_adj_752), .O(n42));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i13_4_lut.LUT_INIT = 16'heeea;
    SB_LUT4 i11_4_lut (.I0(pin_in[18]), .I1(n2373), .I2(n11_adj_739), 
            .I3(n14_adj_752), .O(n40));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i11_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 i12_4_lut_adj_238 (.I0(n2355), .I1(pin_in[2]), .I2(n11_adj_739), 
            .I3(n14_adj_717), .O(n41));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'heeea;
    SB_LUT4 i10_4_lut (.I0(pin_in[10]), .I1(n2289), .I2(n6_adj_748), .I3(n7150), 
            .O(n39));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i10_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 equal_791_i15_4_lut (.I0(current_pin[0]), .I1(n14_adj_717), 
            .I2(n10), .I3(current_pin[1]), .O(n15_adj_750));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_791_i15_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 equal_919_i15_4_lut (.I0(current_pin[0]), .I1(n14_adj_752), 
            .I2(n10), .I3(current_pin[1]), .O(n15_adj_749));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam equal_919_i15_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i2_4_lut_adj_239 (.I0(current_pin[0]), .I1(n14_adj_717), .I2(current_pin[1]), 
            .I3(n10), .O(n12123));   // verilog/TinyFPGA_B.v(136[14:28])
    defparam i2_4_lut_adj_239.LUT_INIT = 16'hffdf;
    SB_LUT4 equal_282_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8_adj_751));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_282_i8_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i8_4_lut_adj_240 (.I0(pin_in[21]), .I1(pin_in[5]), .I2(n15_adj_749), 
            .I3(n15_adj_750), .O(n37));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i8_4_lut_adj_240.LUT_INIT = 16'heca0;
    SB_LUT4 i380_3_lut (.I0(pin_in[4]), .I1(n11), .I2(n14_adj_717), .I3(GND_net), 
            .O(n2313));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i380_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i410_4_lut (.I0(pin_in[9]), .I1(current_pin[0]), .I2(n7150), 
            .I3(current_pin[1]), .O(n2343));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i410_4_lut.LUT_INIT = 16'haaa2;
    SB_LUT4 i7_4_lut_adj_241 (.I0(pin_in[17]), .I1(n2313), .I2(n11_adj_734), 
            .I3(n14_adj_752), .O(n36_adj_773));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i7_4_lut_adj_241.LUT_INIT = 16'heeec;
    SB_LUT4 i19_4_lut (.I0(n37), .I1(pin_in[7]), .I2(n2385), .I3(n12123), 
            .O(n48_adj_771));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i19_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i404_4_lut (.I0(pin_in[8]), .I1(current_pin[0]), .I2(n7150), 
            .I3(current_pin[1]), .O(n2337));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i404_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i2_3_lut_adj_242 (.I0(n11612), .I1(state[2]), .I2(delay_counter[31]), 
            .I3(GND_net), .O(n6_adj_766));
    defparam i2_3_lut_adj_242.LUT_INIT = 16'h3131;
    SB_LUT4 i392_4_lut (.I0(pin_in[6]), .I1(n6_adj_748), .I2(n14_adj_717), 
            .I3(n10), .O(n2325));   // verilog/TinyFPGA_B.v(136[11] 140[14])
    defparam i392_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_4_lut_adj_243 (.I0(state[1]), .I1(pin_in[20]), .I2(n11), 
            .I3(n14_adj_752), .O(n30));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i1_4_lut_adj_243.LUT_INIT = 16'hddd5;
    SB_LUT4 i23_4_lut (.I0(n45_adj_772), .I1(n33), .I2(n2367), .I3(n2379), 
            .O(n52_adj_770));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(n2325), .I1(pin_in[3]), .I2(n11_adj_743), .I3(n14_adj_717), 
            .O(n43));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i14_4_lut.LUT_INIT = 16'heeea;
    SB_LUT4 i25_4_lut (.I0(n39), .I1(n41), .I2(n40), .I3(n42), .O(n54_adj_768));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_4_lut (.I0(n2337), .I1(n48_adj_771), .I2(n36_adj_773), 
            .I3(n2343), .O(n53_adj_769));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2962_3_lut_4_lut (.I0(n21), .I1(n7_adj_719), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6182));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2962_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i26_4_lut (.I0(n43), .I1(n52_adj_770), .I2(n1), .I3(n30), 
            .O(n55_adj_767));   // verilog/TinyFPGA_B.v(137[13] 139[16])
    defparam i26_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_4_lut_adj_244 (.I0(n55_adj_767), .I1(n13037), .I2(n53_adj_769), 
            .I3(n54_adj_768), .O(n7249));
    defparam i2_4_lut_adj_244.LUT_INIT = 16'h3332;
    SB_LUT4 i2960_3_lut_4_lut (.I0(n21), .I1(n7_adj_719), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6180));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2960_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2956_3_lut_4_lut (.I0(n9456), .I1(n7_adj_753), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6176));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2956_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_LUT4 i2958_3_lut_4_lut (.I0(n9456), .I1(n7_adj_753), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6178));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2958_3_lut_4_lut.LUT_INIT = 16'hfd00;
    SB_LUT4 i2954_3_lut_4_lut (.I0(n21_adj_741), .I1(n7_adj_753), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6174));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2954_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2952_3_lut_4_lut (.I0(n21_adj_741), .I1(n7_adj_753), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6172));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2952_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i1_3_lut_4_lut_adj_245 (.I0(n21_adj_714), .I1(n7_adj_753), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n10_adj_779));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i1_3_lut_4_lut_adj_245.LUT_INIT = 16'hfe00;
    SB_LUT4 i2950_3_lut_4_lut (.I0(n21_adj_714), .I1(n7_adj_753), .I2(n7155), 
            .I3(current_pin_7__N_155), .O(n6170));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2950_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2944_3_lut_4_lut (.I0(n21), .I1(n7_adj_753), .I2(n7166), 
            .I3(current_pin_7__N_155), .O(n6164));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i2944_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 current_pin_0__bdd_4_lut_9619 (.I0(current_pin[0]), .I1(pin_in[18]), 
            .I2(pin_in[19]), .I3(current_pin[1]), .O(n13444));
    defparam current_pin_0__bdd_4_lut_9619.LUT_INIT = 16'he4aa;
    SB_LUT4 n13444_bdd_4_lut (.I0(n13444), .I1(pin_in[17]), .I2(pin_in[16]), 
            .I3(current_pin[1]), .O(n13447));
    defparam n13444_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 current_pin_0__bdd_4_lut_9596 (.I0(current_pin[0]), .I1(pin_out[18]), 
            .I2(pin_out[19]), .I3(current_pin[1]), .O(n13438));
    defparam current_pin_0__bdd_4_lut_9596.LUT_INIT = 16'he4aa;
    SB_LUT4 n13438_bdd_4_lut (.I0(n13438), .I1(pin_out[17]), .I2(pin_out[16]), 
            .I3(current_pin[1]), .O(n13441));
    defparam n13438_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9582_3_lut (.I0(state[0]), .I1(state_7__N_167[0]), .I2(state[1]), 
            .I3(GND_net), .O(n61));
    defparam i9582_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 equal_284_i8_2_lut_3_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(GND_net), .O(n8_adj_744));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam equal_284_i8_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i4_4_lut_adj_246 (.I0(counter[2]), .I1(counter[4]), .I2(counter[3]), 
            .I3(counter[0]), .O(n10_adj_762));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i4_4_lut_adj_246.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_3_lut_adj_247 (.I0(counter[5]), .I1(n10_adj_762), .I2(counter[1]), 
            .I3(GND_net), .O(n18_adj_742));   // verilog/TinyFPGA_B.v(130[7:30])
    defparam i5_3_lut_adj_247.LUT_INIT = 16'hfefe;
    SB_LUT4 i4169_2_lut (.I0(n7223), .I1(n15_adj_721), .I2(GND_net), .I3(GND_net), 
            .O(n7401));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i4169_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i3_3_lut (.I0(counter[6]), .I1(state[0]), .I2(n18_adj_742), 
            .I3(GND_net), .O(n8_adj_763));
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i9579_4_lut (.I0(state[2]), .I1(n73), .I2(n8_adj_763), .I3(counter[7]), 
            .O(n7223));
    defparam i9579_4_lut.LUT_INIT = 16'hcccd;
    SB_LUT4 i9330_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n13177));
    defparam i9330_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i9329_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n13176));
    defparam i9329_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i9331_3_lut (.I0(n13176), .I1(n13177), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i9331_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i4348_3_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(timer[7]), 
            .I2(n11683), .I3(GND_net), .O(n7585));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4348_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4349_3_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(timer[6]), 
            .I2(n11683), .I3(GND_net), .O(n7586));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4349_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4350_3_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(timer[5]), 
            .I2(n11683), .I3(GND_net), .O(n7587));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4350_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4351_3_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(timer[4]), 
            .I2(n11683), .I3(GND_net), .O(n7588));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4351_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4352_3_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(timer[3]), 
            .I2(n11683), .I3(GND_net), .O(n7589));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4352_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4353_3_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(timer[2]), 
            .I2(n11683), .I3(GND_net), .O(n7590));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4353_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4354_3_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(timer[1]), 
            .I2(n11683), .I3(GND_net), .O(n7591));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4354_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_248 (.I0(state[0]), .I1(n18_adj_742), 
            .I2(counter[7]), .I3(counter[6]), .O(n55_adj_760));   // verilog/TinyFPGA_B.v(107[8] 167[4])
    defparam i1_2_lut_3_lut_4_lut_adj_248.LUT_INIT = 16'h5554;
    
endmodule
//
// Verilog Description of module \neopixel(CLOCK_SPEED_HZ=16000000) 
//

module \neopixel(CLOCK_SPEED_HZ=16000000)  (GND_net, VCC_net, timer, n7591, 
            \neo_pixel_transmitter.t0 , CLK_c, n7590, n7589, n7588, 
            n7587, n7586, n7585, n7584, n7239, \state[0] , n7583, 
            n7582, n7581, n7580, n7579, n7578, n7577, n7576, n7575, 
            n7574, n7573, n7572, n7571, n7570, NEOPXL_c, n7569, 
            n7568, n7567, n7566, n7565, n7564, n7563, n7562, n7561, 
            \state[1] , \state_3__N_377[1] , update_color, \neopxl_color[4] , 
            \neopxl_color[5] , \neopxl_color[6] , \neopxl_color[7] , \neopxl_color[14] , 
            \neopxl_color[15] , \neopxl_color[12] , \neopxl_color[13] , 
            n7496, n7494, n11683) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output [31:0]timer;
    input n7591;
    output [31:0]\neo_pixel_transmitter.t0 ;
    input CLK_c;
    input n7590;
    input n7589;
    input n7588;
    input n7587;
    input n7586;
    input n7585;
    input n7584;
    output n7239;
    output \state[0] ;
    input n7583;
    input n7582;
    input n7581;
    input n7580;
    input n7579;
    input n7578;
    input n7577;
    input n7576;
    input n7575;
    input n7574;
    input n7573;
    input n7572;
    input n7571;
    input n7570;
    output NEOPXL_c;
    input n7569;
    input n7568;
    input n7567;
    input n7566;
    input n7565;
    input n7564;
    input n7563;
    input n7562;
    input n7561;
    output \state[1] ;
    output \state_3__N_377[1] ;
    input update_color;
    input \neopxl_color[4] ;
    input \neopxl_color[5] ;
    input \neopxl_color[6] ;
    input \neopxl_color[7] ;
    input \neopxl_color[14] ;
    input \neopxl_color[15] ;
    input \neopxl_color[12] ;
    input \neopxl_color[13] ;
    input n7496;
    input n7494;
    output n11683;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    wire [31:0]n971;
    
    wire n7082, n10474, n2001, n1902, n1928, n10649, n10650;
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire n10837, n10775, n2602, n10776;
    wire [31:0]n2654;
    
    wire n2603, n10774, n2885, n2786, n10836, n2819, n2688;
    wire [31:0]n2753;
    
    wire n2720, n2787, n2002, n1903, n10648, n2706, n2805, n2699, 
        n2798, n1307;
    wire [31:0]n1367;
    
    wire n1334, n1406, n2702, n2801;
    wire [31:0]n2852;
    
    wire n10835, n12979;
    wire [31:0]n1;
    
    wire n10450, n12977, n2703, n2802, n2788, n10834, n10714, 
        n2303, n10715, n2589, n2621, n10475;
    wire [31:0]n2357;
    
    wire n2304, n10713, n2789, n10833, n2604, n10773, n2305, n10712, 
        n2600, n2306, n10711, n2790, n10832, n2605, n10772, n2606, 
        n10771, n10497, n10498, n2791, n10831, n2792, n10830, 
        n2607, n10770, n2793, n10829, n2794, n10828;
    wire [31:0]n133;
    
    wire n10496, n2694, n2692, n2693, n10451, n1103, n4_adj_596, 
        n10473, n1037;
    wire [31:0]n1070;
    
    wire n1005, n10472, n10495, n10430, n10431, n2691, n2690, 
        n10449, n12975, n10584, n1407, n10585, n2307, n10710, 
        n2689, n2308, n10709, n2003, n1904, n10647, n10494, n2596, 
        n2695;
    wire [31:0]n1466;
    
    wire n1408, n10583, n2594, n2004, n1905, n10646;
    wire [31:0]one_wire_N_528;
    
    wire n10429, \neo_pixel_transmitter.done_N_585 , n13491, \neo_pixel_transmitter.done , 
        start_N_576, n7, start;
    wire [31:0]n255;
    
    wire n10413, n2598, n2697, n2309, n10708, n2595, n2705, n2795, 
        n10827, n2701, n2599, n2698, n2709, n2608, n2707, n1006, 
        n10471, n10769, n2601, n2700, n2704, n2597, n2696, n2406;
    wire [31:0]n2456;
    
    wire n2423, n2505;
    wire [31:0]n2555;
    
    wire n2522, n1409, n2497, n7230, n7411, n1433, n1508, n10994, 
        n1009, n2401, n2500, n10401, n10402, n2796, n10826, n2407, 
        n2506, n2509, n2797, n10825, n2403, n2502, n2492, n2591, 
        n2005, n1906, n10645, n2491, n2590, n2490, n2402, n2501, 
        n2499, n2609, n10768, n2507, n2508, n2496;
    wire [3:0]state_3__N_377;
    
    wire n7392, n1505, n2494, n2593, n10448, n12973, n10428, n2006, 
        n1907, n10644, n2588, n2489, n10767, n2291, n2192, n10707, 
        n2225, n10824, n10766, n2495, n10765;
    wire [31:0]n2258;
    
    wire n2193, n10706, n1007, n10470, n2194, n10705, n2498, n2799, 
        n10823, n10493, n10764, n2800, n10822, n2195, n10704, 
        n2493, n10763, n10821, n10820, n1008, n10469, n10762, 
        n2196, n10703, n2201, n2199, n2206, n2203, n30, n10447, 
        n12971, n10414, n10468, n10761, n2197, n10702, n10446, 
        n12969, n10582, n2803, n10819;
    wire [31:0]n1565;
    
    wire n1532, n1604, n2198, n10701, n10760, n2804, n10818, n10427, 
        n10759, n10700, n2200, n10699, n10445, n12967, n10412, 
        n10492, n10817, n10426, n10400, n2806, n10816, n10698, 
        n10491, n10758, n10425, n10444, n12965, n2807, n10815, 
        n10411, n10410, n10443, n12963, n10395, n10757, n2202, 
        n10697, n10756, n10755, n2808, n10814, n10424, n2809, 
        n10813, n10696, n10754, n2687, n10812, n10811, n10810, 
        n10409, n2204, n10695, n10490, n10396, n10809, n28_adj_599, 
        n2592, n35, \neo_pixel_transmitter.done_N_591 , n11692, n12204, 
        n10808, n1202, n10467, n1136, n2503, n10753, n1607, n2504, 
        n10752, n10807, n2007, n1908, n10643, n2205, n10694, n10442, 
        n12961;
    wire [31:0]n1169;
    
    wire n1104, n10466, n1400, n1301, n10581, n10693, n10392, 
        n10393, n10391, n10806, n1302, n10580, n23, n19, n1805, 
        n1803, n26_adj_600, n2008, n1909, n13435, n10642, n10751, 
        n10805, n2207, n10692, n31, n28_adj_601, n34, n10489, 
        n10804, n1807, n22, n1808, n1829, n1599, n1600, n1598, 
        n1601, n19_adj_602;
    wire [31:0]n1862;
    
    wire n2009, n10803, n10750, n1895, n1796, n10641, n34_adj_603, 
        n1797, n10640, n1798, n10639, n40, n1799, n10638, n10408, 
        n1800, n10637, n38, n39, n10399, n21, n10394, n37, n1801, 
        n10636, n11771, n739, n11559, n22_adj_604, n1802, n10635, 
        n10634, n1804, n10633, n22_adj_605, n1896, n1900, n25_adj_606, 
        n1608, n1605, n18, n1107, n1206, n10632, n1899, n16, 
        n1806, n10631, n10630, n1306, n1405, n29_adj_607, n37_adj_608, 
        n36, n42, n2708, n40_adj_609, n41, n39_adj_610, n33, n26_adj_611, 
        n38_adj_612, n31_adj_613, n39_adj_614, n1507, n608, n2300, 
        n708, n11738, n9618;
    wire [31:0]n1268;
    
    wire n1235, n1305, n26_adj_615, n807, n7084, n838, n5260, 
        n906, n11674, n13064, n12595, n11617, n7_adj_616, n1105, 
        n1401, n7342, n13425, n1106, n1108, n10_adj_619, n2126, 
        n13436, n1109, n12_adj_621, n1208, n1209, n11_adj_624, n1203, 
        n1204, n1205, n13, n1207, n38_adj_625, n10_adj_626, n1308, 
        n16_adj_627, n1303, n1309, n11_adj_628, n1304, n1402, n1403, 
        n16_adj_629, n18_adj_630, n1404, n13_adj_631, n1500, n1506, 
        n1509, n9672, n1501, n1502, n1503, n18_adj_632, n16_adj_633, 
        n1499, n20_adj_634, n1504, n1609, n44, n1603, n42_adj_635, 
        n43, n36_adj_636, n22_adj_637, n37_adj_638, n35_adj_639, n2301, 
        n2293, n2295, n2294, n2296, n30_adj_640, n9650, n2292, 
        n34_adj_641, n7120, n4_adj_642, n13262, n41_adj_643, n32, 
        n2302, n33_adj_644, n2297, n2298, n2299, n31_adj_645, n2324, 
        n2404, n2408, n2405, n2400, n2397, n2393, n2392, n2399, 
        n2395, n2394, n2391, n2409, n1901, n1897, n10629, n1602, 
        n16_adj_646, n1606, n22_adj_647, n9700, n12117, n1809, n10628, 
        n1898, n24_adj_648, n10802, n1697, n10627, n1730, n10465, 
        n2208, n10691, n10579, n10488, n10578, n10441, n12959, 
        n10440, n12957, n10749, n10487, n10423, n10407, n10801, 
        n10577;
    wire [31:0]n1763;
    
    wire n1698, n10626, n10464, n10439, n12955, n11533, n10422, 
        n10486, n2396, n2398, n13325, n13326, n10463, n10421, 
        n2209, n10690, n10800, n10748, n10420, n10799, n10_adj_653, 
        n13155, n13156, n10947, n10975, n13159, n13158;
    wire [31:0]n2060;
    
    wire n2027, n2101, n1997, n2096, n1998, n2097, n2100, n2103, 
        n2000, n2099, n24_adj_654, n1999, n2098, n2107, n2390, 
        n31_adj_655, n2106, n36_adj_656, n34_adj_657, n35_adj_658, 
        n33_adj_659, n1707, n28_adj_660, n2108, n10438, n12953, 
        n2093, n10689, n10462, n1995, n2094, n2109, n2102, n22_adj_662, 
        n28_adj_663, n26_adj_664, n27_adj_665, n1996, n1994, n25_adj_666, 
        n2104, n2095, n2105, n26_adj_667, n30_adj_668, n28_adj_669, 
        n29_adj_670, n27_adj_671, n10747, n1709, n1708, n10461, 
        n3739, n13263, n10406, n1699, n10625, n11535, n10918, 
        n11672, n1704, n10798, n1706, n1700, n1631;
    wire [31:0]n1664;
    
    wire n1702, n13456, n13459, n1703, n10485, n10576, n10484, 
        n10575, n10437, n12951, n10574, n10624, n1701, n10623, 
        n10622, n10621, n10509, n10508, n10419, n10405, n10398, 
        n10688, n3009;
    wire [31:0]n3050;
    
    wire n3017, n3108, n2999, n3098, n2998, n3097, n3007, n3106, 
        n10687, n16_adj_672, n3004, n3103, n2901;
    wire [31:0]n2951;
    
    wire n2918, n3000, n2985, n3084, n3099, n2993, n3092, n2992, 
        n3091, n2904, n3003, n3109, n3102, n2991, n3090, n3005, 
        n3104, n2990, n3089, n2989, n3088, n2987, n3086, n3002, 
        n3101, n2988, n3087, n2986, n3085, n3001, n3100, n2996, 
        n3095, n3008, n3107, n3006, n3105, n2908, n2905, n1705, 
        n22_adj_673, n2892, n2890, n2891, n2889, n2897, n2900, 
        n2909, n2902, n2895, n2994, n2894, n2903, n2893, n2888, 
        n2887, n2886, n2898, n2899, n2907, n2896, n32_adj_674, 
        n2906, n42_adj_675, n38_adj_676, n43_adj_677, n40_adj_678, 
        n46, n39_adj_679, n20_adj_680, n47, n10797, n2997, n10686, 
        n10620, n10436, n12949, n10796, n10746, n10745, n10685, 
        n10619, n10483, n10460, n10795, n10684, n10744, n10397, 
        n10618, n10794, n10683, n10743, n10617, n10616, n10793, 
        n10682, n10742, n10681, n10615, n10573, n10507, n10418, 
        n10680, n10459, n10741, n10792, n10404, n44_adj_681, n10679, 
        n10435, n12947, n2995, n33_adj_682, n10506, n10482, n2984, 
        n40_adj_683, n45, n10417, n42_adj_684, n48, n10458, n10434, 
        n12945, n10740, n10678, n10505, n10791, n10677, n10739, 
        n24_adj_685, n10457, n10676, n10738, n41_adj_686, n10790, 
        n49, n10504, n3094, n10675, n3093, n10674, n36_adj_687, 
        n46_adj_688, n42_adj_689, n10481, n44_adj_690, n10737, n31_adj_691, 
        n10673, n50, n3083, n48_adj_692, n10614, n49_adj_693, n3096, 
        n47_adj_694, n10613, n10456, n10612, n10403, n10503, n3116, 
        n10736, n10611, n10480;
    wire [31:0]n3149;
    
    wire n37_adj_695, n10789, n10788, n13_adj_696, n10502, n29_adj_697, 
        n10787, n10455, n19_adj_698, n10479, n35_adj_699, n10735, 
        n10610, n10501, n10454, n12333, n10609, n12335, n10433, 
        n10786, n12337, n10453, n10416, n10432, n10672, n10671, 
        n10608, n10670, n10734, n12331, n10415, n10785, n10500, 
        n10607, n10478, n23_adj_700, n10669, n10784, n10651, n10652, 
        n10477, n10733, n12327, n10783, n21_adj_701, n10732, n10606, 
        n7181, n10452, n12981, n10499, n10668, n10605, n10653, 
        n10782, n10604, n10731, n10667, n10476, n12325, n10730, 
        n12339, n31_adj_702, n12347, n10603, n12349, n10654, n3209, 
        n12353, n10666, n10781, n10729, n10665, n10780, n10655, 
        n10728, n12355, n10727, n12357, n12359, n10602, n10664, 
        n12361, n12363, n12365, n12367, n10663, n10656, n12369, 
        n12371, n10657, n59, n61, n10779, n10601, n13042, n10600, 
        n10914, n10913, n10912, n10911, n10910, n10909, n10908, 
        n10907, n10599, n10906, n10905, n10904, n10903, n10902, 
        n10901, n10598, n10900, n10597, n10899, n10898, n10897, 
        n10896, n10895, n10894, n10893, n10892, n10891, n10890, 
        n10889, n10888, n10658, n10887, n10886, n10596, n10885, 
        n10595, n10884, n9702, n7131, n10662, n10659, n10883, 
        n10726, n10594, n10882, n10725, n10778, n10724, n10881, 
        n10661, n10723, n10880, n10879, n10878, n10877, n10876, 
        n10875;
    wire [4:0]color_bit_N_571;
    
    wire n10593, n10874, n10873, n10872, n10871, n10870, n10869, 
        n10868, n10867, n10866, n10865, n10864, n10863, n10862, 
        n10722, n10721, n10592, n10720, n10777, n10861, n10860, 
        n10859, n10858, n10719, n10718, n10857, n10660, n10856, 
        n10717, n10855, n10716, n10854, n10591, n10853, n10590, 
        n10852, n10851, n10850, n10849, n10848, n10589, n10847, 
        n10588, n10587, n10846, n10845, n10844, n10843, n10586, 
        n10842, n10841, n10840, n10839, n10838, n30_adj_703, n48_adj_704, 
        n46_adj_705, n47_adj_706, n45_adj_707, n44_adj_708, n43_adj_709, 
        n54, n49_adj_710, n13271, n11606, n11487, n103, n18_adj_711, 
        n20_adj_712, n7_adj_713, n12933, n12939, n11696;
    
    SB_LUT4 mod_5_add_669_3_lut (.I0(GND_net), .I1(n7082), .I2(GND_net), 
            .I3(n10474), .O(n971[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_10_lut (.I0(n1902), .I1(n1902), .I2(n1928), 
            .I3(n10649), .O(n2001)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1339_10 (.CI(n10649), .I0(n1902), .I1(n1928), .CO(n10650));
    SB_CARRY mod_5_add_2009_2 (.CI(VCC_net), .I0(bit_ctr[6]), .I1(GND_net), 
            .CO(n10837));
    SB_CARRY mod_5_add_1808_10 (.CI(n10775), .I0(n2602), .I1(VCC_net), 
            .CO(n10776));
    SB_LUT4 mod_5_add_1808_9_lut (.I0(GND_net), .I1(n2603), .I2(VCC_net), 
            .I3(n10774), .O(n2654[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_26_lut (.I0(n2819), .I1(n2786), .I2(VCC_net), 
            .I3(n10836), .O(n2885)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_26_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_i1878_3_lut (.I0(n2688), .I1(n2753[30]), .I2(n2720), 
            .I3(GND_net), .O(n2787));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1339_9_lut (.I0(n1903), .I1(n1903), .I2(n1928), 
            .I3(n10648), .O(n2002)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1896_3_lut (.I0(n2706), .I1(n2753[12]), .I2(n2720), 
            .I3(GND_net), .O(n2805));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1889_3_lut (.I0(n2699), .I1(n2753[19]), .I2(n2720), 
            .I3(GND_net), .O(n2798));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i945_3_lut (.I0(n1307), .I1(n1367[25]), .I2(n1334), 
            .I3(GND_net), .O(n1406));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1892_3_lut (.I0(n2702), .I1(n2753[16]), .I2(n2720), 
            .I3(GND_net), .O(n2801));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1942_25_lut (.I0(GND_net), .I1(n2787), .I2(VCC_net), 
            .I3(n10835), .O(n2852[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_9 (.CI(n10774), .I0(n2603), .I1(VCC_net), 
            .CO(n10775));
    SB_CARRY mod_5_add_1942_25 (.CI(n10835), .I0(n2787), .I1(VCC_net), 
            .CO(n10836));
    SB_LUT4 sub_14_add_2_31_lut (.I0(n12977), .I1(timer[29]), .I2(n1[29]), 
            .I3(n10450), .O(n12979)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_31_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_i1893_3_lut (.I0(n2703), .I1(n2753[15]), .I2(n2720), 
            .I3(GND_net), .O(n2802));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1893_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_9 (.CI(n10648), .I0(n1903), .I1(n1928), .CO(n10649));
    SB_LUT4 mod_5_add_1942_24_lut (.I0(GND_net), .I1(n2788), .I2(VCC_net), 
            .I3(n10834), .O(n2852[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_9 (.CI(n10714), .I0(n2303), .I1(VCC_net), 
            .CO(n10715));
    SB_LUT4 mod_5_i1811_3_lut (.I0(n2589), .I1(n2654[30]), .I2(n2621), 
            .I3(GND_net), .O(n2688));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1811_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_24 (.CI(n10834), .I0(n2788), .I1(VCC_net), 
            .CO(n10835));
    SB_CARRY mod_5_add_669_3 (.CI(n10474), .I0(n7082), .I1(GND_net), .CO(n10475));
    SB_LUT4 mod_5_add_1607_8_lut (.I0(GND_net), .I1(n2304), .I2(VCC_net), 
            .I3(n10713), .O(n2357[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_23_lut (.I0(GND_net), .I1(n2789), .I2(VCC_net), 
            .I3(n10833), .O(n2852[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_8_lut (.I0(GND_net), .I1(n2604), .I2(VCC_net), 
            .I3(n10773), .O(n2654[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_8 (.CI(n10713), .I0(n2304), .I1(VCC_net), 
            .CO(n10714));
    SB_LUT4 mod_5_add_1607_7_lut (.I0(GND_net), .I1(n2305), .I2(VCC_net), 
            .I3(n10712), .O(n2357[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_8 (.CI(n10773), .I0(n2604), .I1(VCC_net), 
            .CO(n10774));
    SB_CARRY mod_5_add_1942_23 (.CI(n10833), .I0(n2789), .I1(VCC_net), 
            .CO(n10834));
    SB_LUT4 mod_5_i1822_3_lut (.I0(n2600), .I1(n2654[19]), .I2(n2621), 
            .I3(GND_net), .O(n2699));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1607_7 (.CI(n10712), .I0(n2305), .I1(VCC_net), 
            .CO(n10713));
    SB_LUT4 mod_5_add_1607_6_lut (.I0(GND_net), .I1(n2306), .I2(VCC_net), 
            .I3(n10711), .O(n2357[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_6 (.CI(n10711), .I0(n2306), .I1(VCC_net), 
            .CO(n10712));
    SB_LUT4 mod_5_add_1942_22_lut (.I0(GND_net), .I1(n2790), .I2(VCC_net), 
            .I3(n10832), .O(n2852[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_7_lut (.I0(GND_net), .I1(n2605), .I2(VCC_net), 
            .I3(n10772), .O(n2654[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_7 (.CI(n10772), .I0(n2605), .I1(VCC_net), 
            .CO(n10773));
    SB_LUT4 mod_5_add_1808_6_lut (.I0(GND_net), .I1(n2606), .I2(VCC_net), 
            .I3(n10771), .O(n2654[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_21 (.CI(n10497), .I0(GND_net), .I1(timer[19]), 
            .CO(n10498));
    SB_CARRY mod_5_add_1942_22 (.CI(n10832), .I0(n2790), .I1(VCC_net), 
            .CO(n10833));
    SB_LUT4 mod_5_add_1942_21_lut (.I0(GND_net), .I1(n2791), .I2(VCC_net), 
            .I3(n10831), .O(n2852[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_21 (.CI(n10831), .I0(n2791), .I1(VCC_net), 
            .CO(n10832));
    SB_LUT4 mod_5_add_1942_20_lut (.I0(GND_net), .I1(n2792), .I2(VCC_net), 
            .I3(n10830), .O(n2852[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_6 (.CI(n10771), .I0(n2606), .I1(VCC_net), 
            .CO(n10772));
    SB_LUT4 mod_5_add_1808_5_lut (.I0(GND_net), .I1(n2607), .I2(VCC_net), 
            .I3(n10770), .O(n2654[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_669_2_lut (.I0(GND_net), .I1(bit_ctr[26]), .I2(GND_net), 
            .I3(VCC_net), .O(n971[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_20 (.CI(n10830), .I0(n2792), .I1(VCC_net), 
            .CO(n10831));
    SB_LUT4 mod_5_add_1942_19_lut (.I0(GND_net), .I1(n2793), .I2(VCC_net), 
            .I3(n10829), .O(n2852[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_19 (.CI(n10829), .I0(n2793), .I1(VCC_net), 
            .CO(n10830));
    SB_LUT4 mod_5_add_1942_18_lut (.I0(GND_net), .I1(n2794), .I2(VCC_net), 
            .I3(n10828), .O(n2852[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(timer[18]), 
            .I3(n10496), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1884_3_lut (.I0(n2694), .I1(n2753[24]), .I2(n2720), 
            .I3(GND_net), .O(n2793));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1884_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1882_3_lut (.I0(n2692), .I1(n2753[26]), .I2(n2720), 
            .I3(GND_net), .O(n2791));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1882_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_1102_add_4_20 (.CI(n10496), .I0(GND_net), .I1(timer[18]), 
            .CO(n10497));
    SB_CARRY mod_5_add_669_2 (.CI(VCC_net), .I0(bit_ctr[26]), .I1(GND_net), 
            .CO(n10474));
    SB_LUT4 mod_5_i1883_3_lut (.I0(n2693), .I1(n2753[25]), .I2(n2720), 
            .I3(GND_net), .O(n2792));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1883_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_31 (.CI(n10450), .I0(timer[29]), .I1(n1[29]), 
            .CO(n10451));
    SB_LUT4 mod_5_add_736_8_lut (.I0(n1037), .I1(n4_adj_596), .I2(VCC_net), 
            .I3(n10473), .O(n1103)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_736_7_lut (.I0(GND_net), .I1(n1005), .I2(VCC_net), 
            .I3(n10472), .O(n1070[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(timer[17]), 
            .I3(n10495), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_11 (.CI(n10430), .I0(timer[9]), .I1(n1[9]), 
            .CO(n10431));
    SB_LUT4 mod_5_i1881_3_lut (.I0(n2691), .I1(n2753[27]), .I2(n2720), 
            .I3(GND_net), .O(n2790));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1880_3_lut (.I0(n2690), .I1(n2753[28]), .I2(n2720), 
            .I3(GND_net), .O(n2789));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1880_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_1102_add_4_19 (.CI(n10495), .I0(GND_net), .I1(timer[17]), 
            .CO(n10496));
    SB_CARRY mod_5_add_1942_18 (.CI(n10828), .I0(n2794), .I1(VCC_net), 
            .CO(n10829));
    SB_LUT4 sub_14_add_2_30_lut (.I0(n12975), .I1(timer[28]), .I2(n1[28]), 
            .I3(n10449), .O(n12977)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_30_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1004_5 (.CI(n10584), .I0(n1407), .I1(VCC_net), 
            .CO(n10585));
    SB_LUT4 mod_5_add_1607_5_lut (.I0(GND_net), .I1(n2307), .I2(VCC_net), 
            .I3(n10710), .O(n2357[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_5 (.CI(n10710), .I0(n2307), .I1(VCC_net), 
            .CO(n10711));
    SB_LUT4 mod_5_i1879_3_lut (.I0(n2689), .I1(n2753[29]), .I2(n2720), 
            .I3(GND_net), .O(n2788));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1879_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF \neo_pixel_transmitter.t0_i0_i1  (.Q(\neo_pixel_transmitter.t0 [1]), 
           .C(CLK_c), .D(n7591));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1607_4_lut (.I0(GND_net), .I1(n2308), .I2(VCC_net), 
            .I3(n10709), .O(n2357[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_8_lut (.I0(n1904), .I1(n1904), .I2(n1928), 
            .I3(n10647), .O(n2003)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_8_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 timer_1102_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(timer[16]), 
            .I3(n10494), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1818_3_lut (.I0(n2596), .I1(n2654[23]), .I2(n2621), 
            .I3(GND_net), .O(n2695));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1818_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1004_4_lut (.I0(GND_net), .I1(n1408), .I2(VCC_net), 
            .I3(n10583), .O(n1466[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_8 (.CI(n10647), .I0(n1904), .I1(n1928), .CO(n10648));
    SB_CARRY mod_5_add_1808_5 (.CI(n10770), .I0(n2607), .I1(VCC_net), 
            .CO(n10771));
    SB_DFF \neo_pixel_transmitter.t0_i0_i2  (.Q(\neo_pixel_transmitter.t0 [2]), 
           .C(CLK_c), .D(n7590));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_736_7 (.CI(n10472), .I0(n1005), .I1(VCC_net), .CO(n10473));
    SB_CARRY mod_5_add_1607_4 (.CI(n10709), .I0(n2308), .I1(VCC_net), 
            .CO(n10710));
    SB_LUT4 mod_5_i1816_3_lut (.I0(n2594), .I1(n2654[25]), .I2(n2621), 
            .I3(GND_net), .O(n2693));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1816_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1339_7_lut (.I0(n1905), .I1(n1905), .I2(n1928), 
            .I3(n10646), .O(n2004)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_7_lut.LUT_INIT = 16'hCA3A;
    SB_DFF \neo_pixel_transmitter.t0_i0_i3  (.Q(\neo_pixel_transmitter.t0 [3]), 
           .C(CLK_c), .D(n7589));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_30 (.CI(n10449), .I0(timer[28]), .I1(n1[28]), 
            .CO(n10450));
    SB_DFF \neo_pixel_transmitter.t0_i0_i4  (.Q(\neo_pixel_transmitter.t0 [4]), 
           .C(CLK_c), .D(n7588));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i5  (.Q(\neo_pixel_transmitter.t0 [5]), 
           .C(CLK_c), .D(n7587));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i6  (.Q(\neo_pixel_transmitter.t0 [6]), 
           .C(CLK_c), .D(n7586));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_add_2_10_lut (.I0(GND_net), .I1(timer[8]), .I2(n1[8]), 
            .I3(n10429), .O(one_wire_N_528[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE \neo_pixel_transmitter.done_104  (.Q(\neo_pixel_transmitter.done ), 
            .C(CLK_c), .E(n13491), .D(\neo_pixel_transmitter.done_N_585 ));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFE start_103 (.Q(start), .C(CLK_c), .E(n7), .D(start_N_576));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i7  (.Q(\neo_pixel_transmitter.t0 [7]), 
           .C(CLK_c), .D(n7585));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 add_21_25_lut (.I0(GND_net), .I1(bit_ctr[23]), .I2(GND_net), 
            .I3(n10413), .O(n255[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1820_3_lut (.I0(n2598), .I1(n2654[21]), .I2(n2621), 
            .I3(GND_net), .O(n2697));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1820_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1607_3_lut (.I0(GND_net), .I1(n2309), .I2(GND_net), 
            .I3(n10708), .O(n2357[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1817_3_lut (.I0(n2595), .I1(n2654[24]), .I2(n2621), 
            .I3(GND_net), .O(n2694));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1817_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1828_3_lut (.I0(n2606), .I1(n2654[13]), .I2(n2621), 
            .I3(GND_net), .O(n2705));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1942_17_lut (.I0(GND_net), .I1(n2795), .I2(VCC_net), 
            .I3(n10827), .O(n2852[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1824_3_lut (.I0(n2602), .I1(n2654[17]), .I2(n2621), 
            .I3(GND_net), .O(n2701));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1826_3_lut (.I0(n2604), .I1(n2654[15]), .I2(n2621), 
            .I3(GND_net), .O(n2703));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1821_3_lut (.I0(n2599), .I1(n2654[20]), .I2(n2621), 
            .I3(GND_net), .O(n2698));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1821_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1832_3_lut (.I0(bit_ctr[9]), .I1(n2654[9]), .I2(n2621), 
            .I3(GND_net), .O(n2709));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1830_3_lut (.I0(n2608), .I1(n2654[11]), .I2(n2621), 
            .I3(GND_net), .O(n2707));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_17 (.CI(n10827), .I0(n2795), .I1(VCC_net), 
            .CO(n10828));
    SB_LUT4 mod_5_i1829_3_lut (.I0(n2607), .I1(n2654[12]), .I2(n2621), 
            .I3(GND_net), .O(n2706));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_736_6_lut (.I0(GND_net), .I1(n1006), .I2(VCC_net), 
            .I3(n10471), .O(n1070[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_4_lut (.I0(GND_net), .I1(n2608), .I2(VCC_net), 
            .I3(n10769), .O(n2654[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1825_3_lut (.I0(n2603), .I1(n2654[16]), .I2(n2621), 
            .I3(GND_net), .O(n2702));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1823_3_lut (.I0(n2601), .I1(n2654[18]), .I2(n2621), 
            .I3(GND_net), .O(n2700));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1827_3_lut (.I0(n2605), .I1(n2654[14]), .I2(n2621), 
            .I3(GND_net), .O(n2704));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1819_3_lut (.I0(n2597), .I1(n2654[22]), .I2(n2621), 
            .I3(GND_net), .O(n2696));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1819_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1607_3 (.CI(n10708), .I0(n2309), .I1(GND_net), 
            .CO(n10709));
    SB_LUT4 i9529_3_lut (.I0(n2406), .I1(n2456[15]), .I2(n2423), .I3(GND_net), 
            .O(n2505));   // verilog/neopixel.v(22[26:36])
    defparam i9529_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_7 (.CI(n10646), .I0(n1905), .I1(n1928), .CO(n10647));
    SB_LUT4 i9530_3_lut (.I0(n2505), .I1(n2555[15]), .I2(n2522), .I3(GND_net), 
            .O(n2604));   // verilog/neopixel.v(22[26:36])
    defparam i9530_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i948_3_lut (.I0(bit_ctr[22]), .I1(n1367[22]), .I2(n1334), 
            .I3(GND_net), .O(n1409));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1751_3_lut (.I0(n2497), .I1(n2555[23]), .I2(n2522), 
            .I3(GND_net), .O(n2596));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i0 (.Q(bit_ctr[0]), .C(CLK_c), .E(n7230), .D(n255[0]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1015_3_lut (.I0(n1409), .I1(n1466[22]), .I2(n1433), 
            .I3(GND_net), .O(n1508));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i676_3_lut (.I0(bit_ctr[26]), .I1(n971[26]), .I2(n10994), 
            .I3(GND_net), .O(n1009));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i676_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9544_3_lut (.I0(n2401), .I1(n2456[20]), .I2(n2423), .I3(GND_net), 
            .O(n2500));   // verilog/neopixel.v(22[26:36])
    defparam i9544_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_13 (.CI(n10401), .I0(bit_ctr[11]), .I1(GND_net), .CO(n10402));
    SB_LUT4 i9520_3_lut (.I0(n2500), .I1(n2555[20]), .I2(n2522), .I3(GND_net), 
            .O(n2599));   // verilog/neopixel.v(22[26:36])
    defparam i9520_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1942_16_lut (.I0(GND_net), .I1(n2796), .I2(VCC_net), 
            .I3(n10826), .O(n2852[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9534_3_lut (.I0(n2407), .I1(n2456[14]), .I2(n2423), .I3(GND_net), 
            .O(n2506));   // verilog/neopixel.v(22[26:36])
    defparam i9534_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9532_3_lut (.I0(n2506), .I1(n2555[14]), .I2(n2522), .I3(GND_net), 
            .O(n2605));   // verilog/neopixel.v(22[26:36])
    defparam i9532_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1763_3_lut (.I0(n2509), .I1(n2555[11]), .I2(n2522), 
            .I3(GND_net), .O(n2608));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1763_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_16 (.CI(n10826), .I0(n2796), .I1(VCC_net), 
            .CO(n10827));
    SB_LUT4 mod_5_add_1942_15_lut (.I0(GND_net), .I1(n2797), .I2(VCC_net), 
            .I3(n10825), .O(n2852[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_15 (.CI(n10825), .I0(n2797), .I1(VCC_net), 
            .CO(n10826));
    SB_LUT4 i9540_3_lut (.I0(n2403), .I1(n2456[18]), .I2(n2423), .I3(GND_net), 
            .O(n2502));   // verilog/neopixel.v(22[26:36])
    defparam i9540_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9524_3_lut (.I0(n2502), .I1(n2555[18]), .I2(n2522), .I3(GND_net), 
            .O(n2601));   // verilog/neopixel.v(22[26:36])
    defparam i9524_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1746_3_lut (.I0(n2492), .I1(n2555[28]), .I2(n2522), 
            .I3(GND_net), .O(n2591));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1339_6_lut (.I0(n1906), .I1(n1906), .I2(n1928), 
            .I3(n10645), .O(n2005)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_6_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1745_3_lut (.I0(n2491), .I1(n2555[29]), .I2(n2522), 
            .I3(GND_net), .O(n2590));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1744_3_lut (.I0(n2490), .I1(n2555[30]), .I2(n2522), 
            .I3(GND_net), .O(n2589));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1808_4 (.CI(n10769), .I0(n2608), .I1(VCC_net), 
            .CO(n10770));
    SB_CARRY mod_5_add_1339_6 (.CI(n10645), .I0(n1906), .I1(n1928), .CO(n10646));
    SB_LUT4 i9542_3_lut (.I0(n2402), .I1(n2456[19]), .I2(n2423), .I3(GND_net), 
            .O(n2501));   // verilog/neopixel.v(22[26:36])
    defparam i9542_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9522_3_lut (.I0(n2501), .I1(n2555[19]), .I2(n2522), .I3(GND_net), 
            .O(n2600));   // verilog/neopixel.v(22[26:36])
    defparam i9522_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1753_3_lut (.I0(n2499), .I1(n2555[21]), .I2(n2522), 
            .I3(GND_net), .O(n2598));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1808_3_lut (.I0(GND_net), .I1(n2609), .I2(GND_net), 
            .I3(n10768), .O(n2654[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_2_lut (.I0(GND_net), .I1(bit_ctr[12]), .I2(GND_net), 
            .I3(VCC_net), .O(n2357[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i8  (.Q(\neo_pixel_transmitter.t0 [8]), 
           .C(CLK_c), .D(n7584));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1607_2 (.CI(VCC_net), .I0(bit_ctr[12]), .I1(GND_net), 
            .CO(n10708));
    SB_LUT4 mod_5_i1761_3_lut (.I0(n2507), .I1(n2555[13]), .I2(n2522), 
            .I3(GND_net), .O(n2606));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1762_3_lut (.I0(n2508), .I1(n2555[12]), .I2(n2522), 
            .I3(GND_net), .O(n2607));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1750_3_lut (.I0(n2496), .I1(n2555[24]), .I2(n2522), 
            .I3(GND_net), .O(n2595));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_10 (.CI(n10429), .I0(timer[8]), .I1(n1[8]), 
            .CO(n10430));
    SB_DFFESS state_i0 (.Q(\state[0] ), .C(CLK_c), .E(n7239), .D(state_3__N_377[0]), 
            .S(n7392));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1808_3 (.CI(n10768), .I0(n2609), .I1(GND_net), 
            .CO(n10769));
    SB_LUT4 mod_5_i1012_3_lut (.I0(n1406), .I1(n1466[25]), .I2(n1433), 
            .I3(GND_net), .O(n1505));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1748_3_lut (.I0(n2494), .I1(n2555[26]), .I2(n2522), 
            .I3(GND_net), .O(n2593));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF \neo_pixel_transmitter.t0_i0_i9  (.Q(\neo_pixel_transmitter.t0 [9]), 
           .C(CLK_c), .D(n7583));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_add_2_29_lut (.I0(n12973), .I1(timer[27]), .I2(n1[27]), 
            .I3(n10448), .O(n12975)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_29_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_14_add_2_9_lut (.I0(GND_net), .I1(timer[7]), .I2(n1[7]), 
            .I3(n10428), .O(one_wire_N_528[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_2_lut (.I0(GND_net), .I1(bit_ctr[9]), .I2(GND_net), 
            .I3(VCC_net), .O(n2654[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_5_lut (.I0(n1907), .I1(n1907), .I2(n1928), 
            .I3(n10644), .O(n2006)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1808_2 (.CI(VCC_net), .I0(bit_ctr[9]), .I1(GND_net), 
            .CO(n10768));
    SB_LUT4 mod_5_add_1741_23_lut (.I0(n2522), .I1(n2489), .I2(VCC_net), 
            .I3(n10767), .O(n2588)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1540_20_lut (.I0(n2225), .I1(n2192), .I2(VCC_net), 
            .I3(n10707), .O(n2291)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1942_14_lut (.I0(GND_net), .I1(n2798), .I2(VCC_net), 
            .I3(n10824), .O(n2852[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_22_lut (.I0(GND_net), .I1(n2490), .I2(VCC_net), 
            .I3(n10766), .O(n2555[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_22 (.CI(n10766), .I0(n2490), .I1(VCC_net), 
            .CO(n10767));
    SB_LUT4 mod_5_i1749_3_lut (.I0(n2495), .I1(n2555[25]), .I2(n2522), 
            .I3(GND_net), .O(n2594));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_736_6 (.CI(n10471), .I0(n1006), .I1(VCC_net), .CO(n10472));
    SB_LUT4 mod_5_i1764_3_lut (.I0(bit_ctr[10]), .I1(n2555[10]), .I2(n2522), 
            .I3(GND_net), .O(n2609));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1764_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_14 (.CI(n10824), .I0(n2798), .I1(VCC_net), 
            .CO(n10825));
    SB_LUT4 mod_5_add_1741_21_lut (.I0(GND_net), .I1(n2491), .I2(VCC_net), 
            .I3(n10765), .O(n2555[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_19_lut (.I0(GND_net), .I1(n2193), .I2(VCC_net), 
            .I3(n10706), .O(n2258[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_736_5_lut (.I0(GND_net), .I1(n1007), .I2(VCC_net), 
            .I3(n10470), .O(n1070[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_19 (.CI(n10706), .I0(n2193), .I1(VCC_net), 
            .CO(n10707));
    SB_LUT4 mod_5_add_1540_18_lut (.I0(GND_net), .I1(n2194), .I2(VCC_net), 
            .I3(n10705), .O(n2258[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1752_3_lut (.I0(n2498), .I1(n2555[22]), .I2(n2522), 
            .I3(GND_net), .O(n2597));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_29 (.CI(n10448), .I0(timer[27]), .I1(n1[27]), 
            .CO(n10449));
    SB_CARRY timer_1102_add_4_18 (.CI(n10494), .I0(GND_net), .I1(timer[16]), 
            .CO(n10495));
    SB_LUT4 mod_5_add_1942_13_lut (.I0(GND_net), .I1(n2799), .I2(VCC_net), 
            .I3(n10823), .O(n2852[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_21 (.CI(n10765), .I0(n2491), .I1(VCC_net), 
            .CO(n10766));
    SB_LUT4 timer_1102_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(timer[15]), 
            .I3(n10493), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_18 (.CI(n10705), .I0(n2194), .I1(VCC_net), 
            .CO(n10706));
    SB_CARRY mod_5_add_736_5 (.CI(n10470), .I0(n1007), .I1(VCC_net), .CO(n10471));
    SB_CARRY mod_5_add_1942_13 (.CI(n10823), .I0(n2799), .I1(VCC_net), 
            .CO(n10824));
    SB_LUT4 mod_5_add_1741_20_lut (.I0(GND_net), .I1(n2492), .I2(VCC_net), 
            .I3(n10764), .O(n2555[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_12_lut (.I0(GND_net), .I1(n2800), .I2(VCC_net), 
            .I3(n10822), .O(n2852[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_12 (.CI(n10822), .I0(n2800), .I1(VCC_net), 
            .CO(n10823));
    SB_LUT4 mod_5_add_1540_17_lut (.I0(GND_net), .I1(n2195), .I2(VCC_net), 
            .I3(n10704), .O(n2258[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_20 (.CI(n10764), .I0(n2492), .I1(VCC_net), 
            .CO(n10765));
    SB_CARRY mod_5_add_1540_17 (.CI(n10704), .I0(n2195), .I1(VCC_net), 
            .CO(n10705));
    SB_LUT4 mod_5_add_1741_19_lut (.I0(GND_net), .I1(n2493), .I2(VCC_net), 
            .I3(n10763), .O(n2555[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_11_lut (.I0(GND_net), .I1(n2801), .I2(VCC_net), 
            .I3(n10821), .O(n2852[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_11 (.CI(n10821), .I0(n2801), .I1(VCC_net), 
            .CO(n10822));
    SB_LUT4 mod_5_add_1942_10_lut (.I0(GND_net), .I1(n2802), .I2(VCC_net), 
            .I3(n10820), .O(n2852[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_10 (.CI(n10820), .I0(n2802), .I1(VCC_net), 
            .CO(n10821));
    SB_LUT4 mod_5_add_736_4_lut (.I0(GND_net), .I1(n1008), .I2(VCC_net), 
            .I3(n10469), .O(n1070[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_19 (.CI(n10763), .I0(n2493), .I1(VCC_net), 
            .CO(n10764));
    SB_CARRY sub_14_add_2_9 (.CI(n10428), .I0(timer[7]), .I1(n1[7]), .CO(n10429));
    SB_LUT4 mod_5_add_1741_18_lut (.I0(GND_net), .I1(n2494), .I2(VCC_net), 
            .I3(n10762), .O(n2555[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_16_lut (.I0(GND_net), .I1(n2196), .I2(VCC_net), 
            .I3(n10703), .O(n2258[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut (.I0(n2201), .I1(n2199), .I2(n2206), .I3(n2203), 
            .O(n30));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_add_2_28_lut (.I0(n12971), .I1(timer[26]), .I2(n1[26]), 
            .I3(n10447), .O(n12973)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_28_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1741_18 (.CI(n10762), .I0(n2494), .I1(VCC_net), 
            .CO(n10763));
    SB_CARRY timer_1102_add_4_17 (.CI(n10493), .I0(GND_net), .I1(timer[15]), 
            .CO(n10494));
    SB_CARRY mod_5_add_736_4 (.CI(n10469), .I0(n1008), .I1(VCC_net), .CO(n10470));
    SB_CARRY add_21_25 (.CI(n10413), .I0(bit_ctr[23]), .I1(GND_net), .CO(n10414));
    SB_LUT4 mod_5_add_736_3_lut (.I0(GND_net), .I1(n1009), .I2(GND_net), 
            .I3(n10468), .O(n1070[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_5 (.CI(n10644), .I0(n1907), .I1(n1928), .CO(n10645));
    SB_CARRY mod_5_add_1540_16 (.CI(n10703), .I0(n2196), .I1(VCC_net), 
            .CO(n10704));
    SB_CARRY mod_5_add_1004_4 (.CI(n10583), .I0(n1408), .I1(VCC_net), 
            .CO(n10584));
    SB_CARRY mod_5_add_736_3 (.CI(n10468), .I0(n1009), .I1(GND_net), .CO(n10469));
    SB_LUT4 mod_5_add_1741_17_lut (.I0(GND_net), .I1(n2495), .I2(VCC_net), 
            .I3(n10761), .O(n2555[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_15_lut (.I0(GND_net), .I1(n2197), .I2(VCC_net), 
            .I3(n10702), .O(n2258[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_17 (.CI(n10761), .I0(n2495), .I1(VCC_net), 
            .CO(n10762));
    SB_CARRY sub_14_add_2_28 (.CI(n10447), .I0(timer[26]), .I1(n1[26]), 
            .CO(n10448));
    SB_LUT4 sub_14_add_2_27_lut (.I0(n12969), .I1(timer[25]), .I2(n1[25]), 
            .I3(n10446), .O(n12971)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_27_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_1004_3_lut (.I0(GND_net), .I1(n1409), .I2(GND_net), 
            .I3(n10582), .O(n1466[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_9_lut (.I0(GND_net), .I1(n2803), .I2(VCC_net), 
            .I3(n10819), .O(n2852[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1079_3_lut (.I0(n1505), .I1(n1565[25]), .I2(n1532), 
            .I3(GND_net), .O(n1604));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1079_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1540_15 (.CI(n10702), .I0(n2197), .I1(VCC_net), 
            .CO(n10703));
    SB_LUT4 mod_5_add_1540_14_lut (.I0(GND_net), .I1(n2198), .I2(VCC_net), 
            .I3(n10701), .O(n2258[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_16_lut (.I0(GND_net), .I1(n2496), .I2(VCC_net), 
            .I3(n10760), .O(n2555[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_9 (.CI(n10819), .I0(n2803), .I1(VCC_net), 
            .CO(n10820));
    SB_LUT4 mod_5_add_1942_8_lut (.I0(GND_net), .I1(n2804), .I2(VCC_net), 
            .I3(n10818), .O(n2852[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_16 (.CI(n10760), .I0(n2496), .I1(VCC_net), 
            .CO(n10761));
    SB_CARRY mod_5_add_1540_14 (.CI(n10701), .I0(n2198), .I1(VCC_net), 
            .CO(n10702));
    SB_LUT4 sub_14_add_2_8_lut (.I0(GND_net), .I1(timer[6]), .I2(n1[6]), 
            .I3(n10427), .O(one_wire_N_528[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_8 (.CI(n10427), .I0(timer[6]), .I1(n1[6]), .CO(n10428));
    SB_CARRY sub_14_add_2_27 (.CI(n10446), .I0(timer[25]), .I1(n1[25]), 
            .CO(n10447));
    SB_LUT4 mod_5_add_1741_15_lut (.I0(GND_net), .I1(n2497), .I2(VCC_net), 
            .I3(n10759), .O(n2555[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_13_lut (.I0(GND_net), .I1(n2199), .I2(VCC_net), 
            .I3(n10700), .O(n2258[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_3 (.CI(n10582), .I0(n1409), .I1(GND_net), 
            .CO(n10583));
    SB_CARRY mod_5_add_1540_13 (.CI(n10700), .I0(n2199), .I1(VCC_net), 
            .CO(n10701));
    SB_LUT4 mod_5_add_1540_12_lut (.I0(GND_net), .I1(n2200), .I2(VCC_net), 
            .I3(n10699), .O(n2258[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_26_lut (.I0(n12967), .I1(timer[24]), .I2(n1[24]), 
            .I3(n10445), .O(n12969)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_26_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_21_24_lut (.I0(GND_net), .I1(bit_ctr[22]), .I2(GND_net), 
            .I3(n10412), .O(n255[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_8 (.CI(n10818), .I0(n2804), .I1(VCC_net), 
            .CO(n10819));
    SB_CARRY add_21_24 (.CI(n10412), .I0(bit_ctr[22]), .I1(GND_net), .CO(n10413));
    SB_LUT4 timer_1102_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(timer[14]), 
            .I3(n10492), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_15 (.CI(n10759), .I0(n2497), .I1(VCC_net), 
            .CO(n10760));
    SB_CARRY mod_5_add_1540_12 (.CI(n10699), .I0(n2200), .I1(VCC_net), 
            .CO(n10700));
    SB_LUT4 mod_5_add_1942_7_lut (.I0(GND_net), .I1(n2805), .I2(VCC_net), 
            .I3(n10817), .O(n2852[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_7 (.CI(n10817), .I0(n2805), .I1(VCC_net), 
            .CO(n10818));
    SB_CARRY timer_1102_add_4_16 (.CI(n10492), .I0(GND_net), .I1(timer[14]), 
            .CO(n10493));
    SB_LUT4 sub_14_add_2_7_lut (.I0(GND_net), .I1(timer[5]), .I2(n1[5]), 
            .I3(n10426), .O(one_wire_N_528[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_12_lut (.I0(GND_net), .I1(bit_ctr[10]), .I2(GND_net), 
            .I3(n10400), .O(n255[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_6_lut (.I0(GND_net), .I1(n2806), .I2(VCC_net), 
            .I3(n10816), .O(n2852[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_6 (.CI(n10816), .I0(n2806), .I1(VCC_net), 
            .CO(n10817));
    SB_LUT4 mod_5_add_1540_11_lut (.I0(GND_net), .I1(n2201), .I2(VCC_net), 
            .I3(n10698), .O(n2258[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(timer[13]), 
            .I3(n10491), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_7 (.CI(n10426), .I0(timer[5]), .I1(n1[5]), .CO(n10427));
    SB_LUT4 mod_5_add_736_2_lut (.I0(GND_net), .I1(bit_ctr[25]), .I2(GND_net), 
            .I3(VCC_net), .O(n1070[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_26 (.CI(n10445), .I0(timer[24]), .I1(n1[24]), 
            .CO(n10446));
    SB_CARRY mod_5_add_1540_11 (.CI(n10698), .I0(n2201), .I1(VCC_net), 
            .CO(n10699));
    SB_LUT4 mod_5_add_1741_14_lut (.I0(GND_net), .I1(n2498), .I2(VCC_net), 
            .I3(n10758), .O(n2555[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_6_lut (.I0(GND_net), .I1(timer[4]), .I2(n1[4]), 
            .I3(n10425), .O(one_wire_N_528[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_25_lut (.I0(n12965), .I1(timer[23]), .I2(n1[23]), 
            .I3(n10444), .O(n12967)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_1942_5_lut (.I0(GND_net), .I1(n2807), .I2(VCC_net), 
            .I3(n10815), .O(n2852[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_736_2 (.CI(VCC_net), .I0(bit_ctr[25]), .I1(GND_net), 
            .CO(n10468));
    SB_LUT4 add_21_23_lut (.I0(GND_net), .I1(bit_ctr[21]), .I2(GND_net), 
            .I3(n10411), .O(n255[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_12 (.CI(n10400), .I0(bit_ctr[10]), .I1(GND_net), .CO(n10401));
    SB_LUT4 mod_5_add_1004_2_lut (.I0(GND_net), .I1(bit_ctr[21]), .I2(GND_net), 
            .I3(VCC_net), .O(n1466[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_23 (.CI(n10411), .I0(bit_ctr[21]), .I1(GND_net), .CO(n10412));
    SB_LUT4 add_21_22_lut (.I0(GND_net), .I1(bit_ctr[20]), .I2(GND_net), 
            .I3(n10410), .O(n255[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_25 (.CI(n10444), .I0(timer[23]), .I1(n1[23]), 
            .CO(n10445));
    SB_LUT4 sub_14_add_2_24_lut (.I0(n12963), .I1(timer[22]), .I2(n1[22]), 
            .I3(n10443), .O(n12965)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1741_14 (.CI(n10758), .I0(n2498), .I1(VCC_net), 
            .CO(n10759));
    SB_LUT4 add_21_7_lut (.I0(GND_net), .I1(bit_ctr[5]), .I2(GND_net), 
            .I3(n10395), .O(n255[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_13_lut (.I0(GND_net), .I1(n2499), .I2(VCC_net), 
            .I3(n10757), .O(n2555[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_10_lut (.I0(GND_net), .I1(n2202), .I2(VCC_net), 
            .I3(n10697), .O(n2258[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_13 (.CI(n10757), .I0(n2499), .I1(VCC_net), 
            .CO(n10758));
    SB_CARRY sub_14_add_2_24 (.CI(n10443), .I0(timer[22]), .I1(n1[22]), 
            .CO(n10444));
    SB_LUT4 mod_5_add_1741_12_lut (.I0(GND_net), .I1(n2500), .I2(VCC_net), 
            .I3(n10756), .O(n2555[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_12 (.CI(n10756), .I0(n2500), .I1(VCC_net), 
            .CO(n10757));
    SB_LUT4 mod_5_add_1741_11_lut (.I0(GND_net), .I1(n2501), .I2(VCC_net), 
            .I3(n10755), .O(n2555[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_6 (.CI(n10425), .I0(timer[4]), .I1(n1[4]), .CO(n10426));
    SB_CARRY timer_1102_add_4_15 (.CI(n10491), .I0(GND_net), .I1(timer[13]), 
            .CO(n10492));
    SB_CARRY mod_5_add_1942_5 (.CI(n10815), .I0(n2807), .I1(VCC_net), 
            .CO(n10816));
    SB_CARRY mod_5_add_1004_2 (.CI(VCC_net), .I0(bit_ctr[21]), .I1(GND_net), 
            .CO(n10582));
    SB_LUT4 mod_5_add_1942_4_lut (.I0(GND_net), .I1(n2808), .I2(VCC_net), 
            .I3(n10814), .O(n2852[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_22 (.CI(n10410), .I0(bit_ctr[20]), .I1(GND_net), .CO(n10411));
    SB_CARRY mod_5_add_1540_10 (.CI(n10697), .I0(n2202), .I1(VCC_net), 
            .CO(n10698));
    SB_LUT4 sub_14_add_2_5_lut (.I0(GND_net), .I1(timer[3]), .I2(n1[3]), 
            .I3(n10424), .O(one_wire_N_528[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_4 (.CI(n10814), .I0(n2808), .I1(VCC_net), 
            .CO(n10815));
    SB_LUT4 mod_5_add_1942_3_lut (.I0(GND_net), .I1(n2809), .I2(GND_net), 
            .I3(n10813), .O(n2852[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_3 (.CI(n10813), .I0(n2809), .I1(GND_net), 
            .CO(n10814));
    SB_LUT4 mod_5_add_1942_2_lut (.I0(GND_net), .I1(bit_ctr[7]), .I2(GND_net), 
            .I3(VCC_net), .O(n2852[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_11 (.CI(n10755), .I0(n2501), .I1(VCC_net), 
            .CO(n10756));
    SB_CARRY mod_5_add_1942_2 (.CI(VCC_net), .I0(bit_ctr[7]), .I1(GND_net), 
            .CO(n10813));
    SB_LUT4 mod_5_add_1540_9_lut (.I0(GND_net), .I1(n2203), .I2(VCC_net), 
            .I3(n10696), .O(n2258[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_10_lut (.I0(GND_net), .I1(n2502), .I2(VCC_net), 
            .I3(n10754), .O(n2555[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_25_lut (.I0(n2720), .I1(n2687), .I2(VCC_net), 
            .I3(n10812), .O(n2786)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_25_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1875_24_lut (.I0(GND_net), .I1(n2688), .I2(VCC_net), 
            .I3(n10811), .O(n2753[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_24 (.CI(n10811), .I0(n2688), .I1(VCC_net), 
            .CO(n10812));
    SB_LUT4 mod_5_add_1875_23_lut (.I0(GND_net), .I1(n2689), .I2(VCC_net), 
            .I3(n10810), .O(n2753[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_9 (.CI(n10696), .I0(n2203), .I1(VCC_net), 
            .CO(n10697));
    SB_LUT4 add_21_21_lut (.I0(GND_net), .I1(bit_ctr[19]), .I2(GND_net), 
            .I3(n10409), .O(n255[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_8_lut (.I0(GND_net), .I1(n2204), .I2(VCC_net), 
            .I3(n10695), .O(n2258[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(timer[12]), 
            .I3(n10490), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_7 (.CI(n10395), .I0(bit_ctr[5]), .I1(GND_net), .CO(n10396));
    SB_CARRY mod_5_add_1875_23 (.CI(n10810), .I0(n2689), .I1(VCC_net), 
            .CO(n10811));
    SB_CARRY mod_5_add_1741_10 (.CI(n10754), .I0(n2502), .I1(VCC_net), 
            .CO(n10755));
    SB_DFF \neo_pixel_transmitter.t0_i0_i10  (.Q(\neo_pixel_transmitter.t0 [10]), 
           .C(CLK_c), .D(n7582));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1875_22_lut (.I0(GND_net), .I1(n2690), .I2(VCC_net), 
            .I3(n10809), .O(n2753[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_22_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i11  (.Q(\neo_pixel_transmitter.t0 [11]), 
           .C(CLK_c), .D(n7581));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i12  (.Q(\neo_pixel_transmitter.t0 [12]), 
           .C(CLK_c), .D(n7580));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i13  (.Q(\neo_pixel_transmitter.t0 [13]), 
           .C(CLK_c), .D(n7579));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i14  (.Q(\neo_pixel_transmitter.t0 [14]), 
           .C(CLK_c), .D(n7578));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i15  (.Q(\neo_pixel_transmitter.t0 [15]), 
           .C(CLK_c), .D(n7577));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i16  (.Q(\neo_pixel_transmitter.t0 [16]), 
           .C(CLK_c), .D(n7576));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i17  (.Q(\neo_pixel_transmitter.t0 [17]), 
           .C(CLK_c), .D(n7575));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i31 (.Q(bit_ctr[31]), .C(CLK_c), .E(n7230), .D(n255[31]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i30 (.Q(bit_ctr[30]), .C(CLK_c), .E(n7230), .D(n255[30]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i29 (.Q(bit_ctr[29]), .C(CLK_c), .E(n7230), .D(n255[29]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i6_3_lut (.I0(bit_ctr[9]), .I1(n2597), .I2(n2609), .I3(GND_net), 
            .O(n28_adj_599));   // verilog/neopixel.v(22[26:36])
    defparam i6_3_lut.LUT_INIT = 16'hecec;
    SB_DFFESR bit_ctr__i28 (.Q(bit_ctr[28]), .C(CLK_c), .E(n7230), .D(n255[28]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i27 (.Q(bit_ctr[27]), .C(CLK_c), .E(n7230), .D(n255[27]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i18  (.Q(\neo_pixel_transmitter.t0 [18]), 
           .C(CLK_c), .D(n7574));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i13_4_lut (.I0(n2592), .I1(n2594), .I2(n2593), .I3(n2595), 
            .O(n35));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF \neo_pixel_transmitter.t0_i0_i19  (.Q(\neo_pixel_transmitter.t0 [19]), 
           .C(CLK_c), .D(n7573));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF timer_1102__i0 (.Q(timer[0]), .C(CLK_c), .D(n133[0]));   // verilog/neopixel.v(12[12:21])
    SB_DFF \neo_pixel_transmitter.t0_i0_i20  (.Q(\neo_pixel_transmitter.t0 [20]), 
           .C(CLK_c), .D(n7572));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i21  (.Q(\neo_pixel_transmitter.t0 [21]), 
           .C(CLK_c), .D(n7571));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i22  (.Q(\neo_pixel_transmitter.t0 [22]), 
           .C(CLK_c), .D(n7570));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1875_22 (.CI(n10809), .I0(n2690), .I1(VCC_net), 
            .CO(n10810));
    SB_DFFESR one_wire_108 (.Q(NEOPXL_c), .C(CLK_c), .E(n11692), .D(\neo_pixel_transmitter.done_N_591 ), 
            .R(n12204));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1875_21_lut (.I0(GND_net), .I1(n2691), .I2(VCC_net), 
            .I3(n10808), .O(n2753[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_21_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i23  (.Q(\neo_pixel_transmitter.t0 [23]), 
           .C(CLK_c), .D(n7569));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i24  (.Q(\neo_pixel_transmitter.t0 [24]), 
           .C(CLK_c), .D(n7568));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i25  (.Q(\neo_pixel_transmitter.t0 [25]), 
           .C(CLK_c), .D(n7567));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_803_9_lut (.I0(n1136), .I1(n1103), .I2(VCC_net), 
            .I3(n10467), .O(n1202)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_9_lut.LUT_INIT = 16'h8228;
    SB_DFF \neo_pixel_transmitter.t0_i0_i26  (.Q(\neo_pixel_transmitter.t0 [26]), 
           .C(CLK_c), .D(n7566));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1875_21 (.CI(n10808), .I0(n2691), .I1(VCC_net), 
            .CO(n10809));
    SB_DFF \neo_pixel_transmitter.t0_i0_i27  (.Q(\neo_pixel_transmitter.t0 [27]), 
           .C(CLK_c), .D(n7565));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1741_9_lut (.I0(GND_net), .I1(n2503), .I2(VCC_net), 
            .I3(n10753), .O(n2555[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i28  (.Q(\neo_pixel_transmitter.t0 [28]), 
           .C(CLK_c), .D(n7564));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i29  (.Q(\neo_pixel_transmitter.t0 [29]), 
           .C(CLK_c), .D(n7563));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1540_8 (.CI(n10695), .I0(n2204), .I1(VCC_net), 
            .CO(n10696));
    SB_DFF \neo_pixel_transmitter.t0_i0_i30  (.Q(\neo_pixel_transmitter.t0 [30]), 
           .C(CLK_c), .D(n7562));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1082_3_lut (.I0(n1508), .I1(n1565[22]), .I2(n1532), 
            .I3(GND_net), .O(n1607));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1082_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1741_9 (.CI(n10753), .I0(n2503), .I1(VCC_net), 
            .CO(n10754));
    SB_LUT4 mod_5_add_1741_8_lut (.I0(GND_net), .I1(n2504), .I2(VCC_net), 
            .I3(n10752), .O(n2555[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_20_lut (.I0(GND_net), .I1(n2692), .I2(VCC_net), 
            .I3(n10807), .O(n2753[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_4_lut (.I0(n1908), .I1(n1908), .I2(n1928), 
            .I3(n10643), .O(n2007)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_4_lut.LUT_INIT = 16'hCA3A;
    SB_DFFESR bit_ctr__i26 (.Q(bit_ctr[26]), .C(CLK_c), .E(n7230), .D(n255[26]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1540_7_lut (.I0(GND_net), .I1(n2205), .I2(VCC_net), 
            .I3(n10694), .O(n2258[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_7 (.CI(n10694), .I0(n2205), .I1(VCC_net), 
            .CO(n10695));
    SB_LUT4 sub_14_add_2_23_lut (.I0(n12961), .I1(timer[21]), .I2(n1[21]), 
            .I3(n10442), .O(n12963)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_5 (.CI(n10424), .I0(timer[3]), .I1(n1[3]), .CO(n10425));
    SB_LUT4 mod_5_add_803_8_lut (.I0(GND_net), .I1(n1104), .I2(VCC_net), 
            .I3(n10466), .O(n1169[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i31  (.Q(\neo_pixel_transmitter.t0 [31]), 
           .C(CLK_c), .D(n7561));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_937_11_lut (.I0(n1334), .I1(n1301), .I2(VCC_net), 
            .I3(n10581), .O(n1400)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1540_6_lut (.I0(GND_net), .I1(n2206), .I2(VCC_net), 
            .I3(n10693), .O(n2258[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_21 (.CI(n10409), .I0(bit_ctr[19]), .I1(GND_net), .CO(n10410));
    SB_CARRY mod_5_add_1875_20 (.CI(n10807), .I0(n2692), .I1(VCC_net), 
            .CO(n10808));
    SB_CARRY add_21_4 (.CI(n10392), .I0(bit_ctr[2]), .I1(GND_net), .CO(n10393));
    SB_CARRY mod_5_add_1339_4 (.CI(n10643), .I0(n1908), .I1(n1928), .CO(n10644));
    SB_LUT4 add_21_3_lut (.I0(GND_net), .I1(bit_ctr[1]), .I2(GND_net), 
            .I3(n10391), .O(n255[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_19_lut (.I0(GND_net), .I1(n2693), .I2(VCC_net), 
            .I3(n10806), .O(n2753[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_937_10_lut (.I0(GND_net), .I1(n1302), .I2(VCC_net), 
            .I3(n10580), .O(n1367[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_19 (.CI(n10806), .I0(n2693), .I1(VCC_net), 
            .CO(n10807));
    SB_CARRY mod_5_add_1741_8 (.CI(n10752), .I0(n2504), .I1(VCC_net), 
            .CO(n10753));
    SB_LUT4 i12_4_lut_adj_15 (.I0(n23), .I1(n19), .I2(n1805), .I3(n1803), 
            .O(n26_adj_600));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_15.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1339_3_lut (.I0(n1909), .I1(n1909), .I2(n13435), 
            .I3(n10642), .O(n2008)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_1741_7_lut (.I0(GND_net), .I1(n2505), .I2(VCC_net), 
            .I3(n10751), .O(n2555[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_18_lut (.I0(GND_net), .I1(n2694), .I2(VCC_net), 
            .I3(n10805), .O(n2753[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_14 (.CI(n10490), .I0(GND_net), .I1(timer[12]), 
            .CO(n10491));
    SB_CARRY mod_5_add_1540_6 (.CI(n10693), .I0(n2206), .I1(VCC_net), 
            .CO(n10694));
    SB_CARRY mod_5_add_1875_18 (.CI(n10805), .I0(n2694), .I1(VCC_net), 
            .CO(n10806));
    SB_CARRY mod_5_add_1741_7 (.CI(n10751), .I0(n2505), .I1(VCC_net), 
            .CO(n10752));
    SB_LUT4 mod_5_add_1540_5_lut (.I0(GND_net), .I1(n2207), .I2(VCC_net), 
            .I3(n10692), .O(n2258[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16_4_lut (.I0(n31), .I1(n2205), .I2(n28_adj_601), .I3(n2204), 
            .O(n34));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 timer_1102_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(timer[11]), 
            .I3(n10489), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_17_lut (.I0(GND_net), .I1(n2695), .I2(VCC_net), 
            .I3(n10804), .O(n2753[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_3 (.CI(n10642), .I0(n1909), .I1(n13435), .CO(n10643));
    SB_LUT4 i13_4_lut_adj_16 (.I0(n1807), .I1(n26_adj_600), .I2(n22), 
            .I3(n1808), .O(n1829));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut_adj_16.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n1599), .I1(n1600), .I2(n1598), .I3(n1601), 
            .O(n19_adj_602));   // verilog/neopixel.v(22[26:36])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1288_3_lut (.I0(bit_ctr[17]), .I1(n1862[17]), .I2(n1829), 
            .I3(GND_net), .O(n1909));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1288_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1339_2_lut (.I0(bit_ctr[16]), .I1(bit_ctr[16]), .I2(n13435), 
            .I3(VCC_net), .O(n2009)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_i1285_3_lut (.I0(n1807), .I1(n1862[20]), .I2(n1829), 
            .I3(GND_net), .O(n1906));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1285_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_2 (.CI(VCC_net), .I0(bit_ctr[16]), .I1(n13435), 
            .CO(n10642));
    SB_CARRY mod_5_add_1875_17 (.CI(n10804), .I0(n2695), .I1(VCC_net), 
            .CO(n10805));
    SB_LUT4 mod_5_add_1875_16_lut (.I0(GND_net), .I1(n2696), .I2(VCC_net), 
            .I3(n10803), .O(n2753[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_16 (.CI(n10803), .I0(n2696), .I1(VCC_net), 
            .CO(n10804));
    SB_LUT4 mod_5_add_1741_6_lut (.I0(GND_net), .I1(n2506), .I2(VCC_net), 
            .I3(n10750), .O(n2555[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_5 (.CI(n10692), .I0(n2207), .I1(VCC_net), 
            .CO(n10693));
    SB_LUT4 mod_5_add_1272_16_lut (.I0(n1829), .I1(n1796), .I2(VCC_net), 
            .I3(n10641), .O(n1895)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12_4_lut_adj_17 (.I0(n2589), .I1(n2590), .I2(n2588), .I3(n2591), 
            .O(n34_adj_603));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_17.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1272_15_lut (.I0(GND_net), .I1(n1797), .I2(VCC_net), 
            .I3(n10640), .O(n1862[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_15 (.CI(n10640), .I0(n1797), .I1(VCC_net), 
            .CO(n10641));
    SB_LUT4 mod_5_add_1272_14_lut (.I0(GND_net), .I1(n1798), .I2(VCC_net), 
            .I3(n10639), .O(n1862[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18_4_lut (.I0(n35), .I1(n2601), .I2(n28_adj_599), .I3(n2608), 
            .O(n40));   // verilog/neopixel.v(22[26:36])
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1272_14 (.CI(n10639), .I0(n1798), .I1(VCC_net), 
            .CO(n10640));
    SB_DFFESR bit_ctr__i25 (.Q(bit_ctr[25]), .C(CLK_c), .E(n7230), .D(n255[25]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1272_13_lut (.I0(GND_net), .I1(n1799), .I2(VCC_net), 
            .I3(n10638), .O(n1862[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i24 (.Q(bit_ctr[24]), .C(CLK_c), .E(n7230), .D(n255[24]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1272_13 (.CI(n10638), .I0(n1799), .I1(VCC_net), 
            .CO(n10639));
    SB_LUT4 add_21_20_lut (.I0(GND_net), .I1(bit_ctr[18]), .I2(GND_net), 
            .I3(n10408), .O(n255[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_12_lut (.I0(GND_net), .I1(n1800), .I2(VCC_net), 
            .I3(n10637), .O(n1862[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16_4_lut_adj_18 (.I0(n2602), .I1(n2607), .I2(n2606), .I3(n2598), 
            .O(n38));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut_adj_18.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_3_lut (.I0(n2603), .I1(n34_adj_603), .I2(n2600), .I3(GND_net), 
            .O(n39));   // verilog/neopixel.v(22[26:36])
    defparam i17_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 add_21_11_lut (.I0(GND_net), .I1(bit_ctr[9]), .I2(GND_net), 
            .I3(n10399), .O(n255[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_2_lut (.I0(n2196), .I1(n2197), .I2(GND_net), .I3(GND_net), 
            .O(n21));   // verilog/neopixel.v(22[26:36])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_21_6_lut (.I0(GND_net), .I1(bit_ctr[4]), .I2(GND_net), 
            .I3(n10394), .O(n255[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut (.I0(n2605), .I1(n2599), .I2(n2596), .I3(n2604), 
            .O(n37));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1272_12 (.CI(n10637), .I0(n1800), .I1(VCC_net), 
            .CO(n10638));
    SB_CARRY add_21_3 (.CI(n10391), .I0(bit_ctr[1]), .I1(GND_net), .CO(n10392));
    SB_LUT4 mod_5_add_1272_11_lut (.I0(GND_net), .I1(n1801), .I2(VCC_net), 
            .I3(n10636), .O(n1862[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9479_4_lut (.I0(n11771), .I1(bit_ctr[29]), .I2(bit_ctr[28]), 
            .I3(n739), .O(n11559));   // verilog/neopixel.v(22[26:36])
    defparam i9479_4_lut.LUT_INIT = 16'h6696;
    SB_LUT4 i17_4_lut (.I0(n21), .I1(n34), .I2(n30), .I3(n22_adj_604), 
            .O(n2225));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_937_10 (.CI(n10580), .I0(n1302), .I1(VCC_net), 
            .CO(n10581));
    SB_CARRY mod_5_add_1272_11 (.CI(n10636), .I0(n1801), .I1(VCC_net), 
            .CO(n10637));
    SB_LUT4 mod_5_add_1272_10_lut (.I0(GND_net), .I1(n1802), .I2(VCC_net), 
            .I3(n10635), .O(n1862[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_10 (.CI(n10635), .I0(n1802), .I1(VCC_net), 
            .CO(n10636));
    SB_LUT4 mod_5_add_1272_9_lut (.I0(GND_net), .I1(n1803), .I2(VCC_net), 
            .I3(n10634), .O(n1862[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_9 (.CI(n10634), .I0(n1803), .I1(VCC_net), 
            .CO(n10635));
    SB_LUT4 mod_5_add_1272_8_lut (.I0(GND_net), .I1(n1804), .I2(VCC_net), 
            .I3(n10633), .O(n1862[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7_3_lut (.I0(n1906), .I1(bit_ctr[16]), .I2(n1909), .I3(GND_net), 
            .O(n22_adj_605));
    defparam i7_3_lut.LUT_INIT = 16'heaea;
    SB_CARRY mod_5_add_1272_8 (.CI(n10633), .I0(n1804), .I1(VCC_net), 
            .CO(n10634));
    SB_LUT4 i10_4_lut (.I0(n1896), .I1(n1895), .I2(n1905), .I3(n1900), 
            .O(n25_adj_606));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_2_lut (.I0(n1608), .I1(n1605), .I2(GND_net), .I3(GND_net), 
            .O(n18));   // verilog/neopixel.v(22[26:36])
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mod_5_i809_3_lut (.I0(n1107), .I1(n1169[27]), .I2(n1136), 
            .I3(GND_net), .O(n1206));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i809_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i23 (.Q(bit_ctr[23]), .C(CLK_c), .E(n7230), .D(n255[23]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1272_7_lut (.I0(GND_net), .I1(n1805), .I2(VCC_net), 
            .I3(n10632), .O(n1862[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_7 (.CI(n10632), .I0(n1805), .I1(VCC_net), 
            .CO(n10633));
    SB_LUT4 i1_2_lut (.I0(n1904), .I1(n1899), .I2(GND_net), .I3(GND_net), 
            .O(n16));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY mod_5_add_1741_6 (.CI(n10750), .I0(n2506), .I1(VCC_net), 
            .CO(n10751));
    SB_LUT4 mod_5_add_1272_6_lut (.I0(GND_net), .I1(n1806), .I2(VCC_net), 
            .I3(n10631), .O(n1862[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_6 (.CI(n10631), .I0(n1806), .I1(VCC_net), 
            .CO(n10632));
    SB_DFFESR bit_ctr__i22 (.Q(bit_ctr[22]), .C(CLK_c), .E(n7230), .D(n255[22]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1272_5_lut (.I0(GND_net), .I1(n1807), .I2(VCC_net), 
            .I3(n10630), .O(n1862[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i21_4_lut (.I0(n37), .I1(n39), .I2(n38), .I3(n40), .O(n2621));   // verilog/neopixel.v(22[26:36])
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1272_5 (.CI(n10630), .I0(n1807), .I1(VCC_net), 
            .CO(n10631));
    SB_LUT4 mod_5_i944_3_lut (.I0(n1306), .I1(n1367[26]), .I2(n1334), 
            .I3(GND_net), .O(n1405));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1747_3_lut (.I0(n2493), .I1(n2555[27]), .I2(n2522), 
            .I3(GND_net), .O(n2592));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_803_8 (.CI(n10466), .I0(n1104), .I1(VCC_net), .CO(n10467));
    SB_LUT4 mod_5_i1813_3_lut (.I0(n2591), .I1(n2654[28]), .I2(n2621), 
            .I3(GND_net), .O(n2690));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1813_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1815_3_lut (.I0(n2593), .I1(n2654[26]), .I2(n2621), 
            .I3(GND_net), .O(n2692));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1815_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1814_3_lut (.I0(n2592), .I1(n2654[27]), .I2(n2621), 
            .I3(GND_net), .O(n2691));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1814_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1812_rep_23_3_lut (.I0(n2590), .I1(n2654[29]), .I2(n2621), 
            .I3(GND_net), .O(n2689));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1812_rep_23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_19 (.I0(bit_ctr[8]), .I1(n2707), .I2(n2709), 
            .I3(GND_net), .O(n29_adj_607));
    defparam i6_3_lut_adj_19.LUT_INIT = 16'hecec;
    SB_LUT4 i14_4_lut (.I0(n2694), .I1(n2697), .I2(n2693), .I3(n2695), 
            .O(n37_adj_608));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_20 (.I0(n2689), .I1(n2691), .I2(n2692), .I3(n2690), 
            .O(n36));
    defparam i13_4_lut_adj_20.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut (.I0(n37_adj_608), .I1(n29_adj_607), .I2(n2696), 
            .I3(n2704), .O(n42));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_21 (.I0(n2700), .I1(n2702), .I2(n2708), .I3(n2706), 
            .O(n40_adj_609));
    defparam i17_4_lut_adj_21.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_22 (.I0(n2699), .I1(n36), .I2(n2688), .I3(n2687), 
            .O(n41));
    defparam i18_4_lut_adj_22.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_23 (.I0(n2698), .I1(n2703), .I2(n2701), .I3(n2705), 
            .O(n39_adj_610));
    defparam i16_4_lut_adj_23.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_24 (.I0(n33), .I1(n2495), .I2(n26_adj_611), 
            .I3(n2496), .O(n38_adj_612));
    defparam i17_4_lut_adj_24.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut (.I0(n39_adj_610), .I1(n41), .I2(n40_adj_609), .I3(n42), 
            .O(n2720));
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1831_3_lut (.I0(n2609), .I1(n2654[10]), .I2(n2621), 
            .I3(GND_net), .O(n2708));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1898_3_lut (.I0(n2708), .I1(n2753[10]), .I2(n2720), 
            .I3(GND_net), .O(n2807));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1898_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1890_rep_19_3_lut (.I0(n2700), .I1(n2753[18]), .I2(n2720), 
            .I3(GND_net), .O(n2799));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1890_rep_19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1886_3_lut (.I0(n2696), .I1(n2753[22]), .I2(n2720), 
            .I3(GND_net), .O(n2795));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1886_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1885_3_lut (.I0(n2695), .I1(n2753[23]), .I2(n2720), 
            .I3(GND_net), .O(n2794));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1900_3_lut (.I0(bit_ctr[8]), .I1(n2753[8]), .I2(n2720), 
            .I3(GND_net), .O(n2809));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1887_3_lut (.I0(n2697), .I1(n2753[21]), .I2(n2720), 
            .I3(GND_net), .O(n2796));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1887_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_3_lut_adj_25 (.I0(bit_ctr[7]), .I1(n2796), .I2(n2809), 
            .I3(GND_net), .O(n31_adj_613));   // verilog/neopixel.v(22[26:36])
    defparam i7_3_lut_adj_25.LUT_INIT = 16'hecec;
    SB_LUT4 i15_4_lut_adj_26 (.I0(n2794), .I1(n2795), .I2(n2799), .I3(n2807), 
            .O(n39_adj_614));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_26.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1014_3_lut (.I0(n1408), .I1(n1466[23]), .I2(n1433), 
            .I3(GND_net), .O(n1507));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6377_2_lut (.I0(bit_ctr[30]), .I1(bit_ctr[31]), .I2(GND_net), 
            .I3(GND_net), .O(n608));   // verilog/neopixel.v(22[26:36])
    defparam i6377_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 mod_5_i1551_3_lut (.I0(n2201), .I1(n2258[22]), .I2(n2225), 
            .I3(GND_net), .O(n2300));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1551_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n708), .I1(n11738), .I2(n608), .I3(n9618), 
            .O(n739));
    defparam i1_4_lut.LUT_INIT = 16'h0111;
    SB_LUT4 mod_5_i876_3_lut (.I0(n1206), .I1(n1268[27]), .I2(n1235), 
            .I3(GND_net), .O(n1305));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut (.I0(n2788), .I1(n2789), .I2(GND_net), .I3(GND_net), 
            .O(n26_adj_615));   // verilog/neopixel.v(22[26:36])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_27 (.I0(n807), .I1(n11559), .I2(bit_ctr[27]), 
            .I3(n7084), .O(n838));
    defparam i1_4_lut_adj_27.LUT_INIT = 16'h1101;
    SB_LUT4 mod_5_i538_3_lut (.I0(n708), .I1(n11738), .I2(n739), .I3(GND_net), 
            .O(n807));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i538_3_lut.LUT_INIT = 16'ha9a9;
    SB_LUT4 mod_5_i605_4_lut (.I0(n807), .I1(n11559), .I2(n838), .I3(n5260), 
            .O(n906));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i605_4_lut.LUT_INIT = 16'haaa9;
    SB_LUT4 mod_5_i606_3_lut (.I0(n11559), .I1(n5260), .I2(n838), .I3(GND_net), 
            .O(n11674));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i606_3_lut.LUT_INIT = 16'ha9a9;
    SB_LUT4 i9585_4_lut (.I0(n807), .I1(n838), .I2(n5260), .I3(n11559), 
            .O(n13064));
    defparam i9585_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_4_lut_adj_28 (.I0(n13064), .I1(n11674), .I2(n906), .I3(n12595), 
            .O(n10994));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'h0100;
    SB_LUT4 i7853_3_lut (.I0(n10994), .I1(n971[28]), .I2(n971[29]), .I3(GND_net), 
            .O(n11617));
    defparam i7853_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i2_3_lut (.I0(n1005), .I1(bit_ctr[25]), .I2(n1009), .I3(GND_net), 
            .O(n7_adj_616));   // verilog/neopixel.v(22[26:36])
    defparam i2_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i4_4_lut (.I0(n7_adj_616), .I1(n1008), .I2(n11617), .I3(n4_adj_596), 
            .O(n1037));   // verilog/neopixel.v(22[26:36])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i9569_2_lut (.I0(n10994), .I1(n971[29]), .I2(GND_net), .I3(GND_net), 
            .O(n1006));   // verilog/neopixel.v(22[26:36])
    defparam i9569_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 mod_5_i742_3_lut (.I0(n1008), .I1(n1070[27]), .I2(n1037), 
            .I3(GND_net), .O(n1107));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i740_3_lut (.I0(n1006), .I1(n1070[29]), .I2(n1037), 
            .I3(GND_net), .O(n1105));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_29 (.I0(bit_ctr[28]), .I1(n739), .I2(GND_net), 
            .I3(GND_net), .O(n7084));
    defparam i1_2_lut_adj_29.LUT_INIT = 16'h6666;
    SB_LUT4 mod_5_i940_3_lut (.I0(n1302), .I1(n1367[30]), .I2(n1334), 
            .I3(GND_net), .O(n1401));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i940_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9228_4_lut (.I0(n739), .I1(bit_ctr[28]), .I2(bit_ctr[27]), 
            .I3(n838), .O(n7342));   // verilog/neopixel.v(22[26:36])
    defparam i9228_4_lut.LUT_INIT = 16'h9969;
    SB_LUT4 sub_14_inv_0_i31_1_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i32_1_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i11_1_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9576_1_lut (.I0(n10994), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13425));   // verilog/neopixel.v(22[26:36])
    defparam i9576_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i12_1_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3_2_lut_adj_30 (.I0(n1106), .I1(n1108), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_619));   // verilog/neopixel.v(22[26:36])
    defparam i3_2_lut_adj_30.LUT_INIT = 16'heeee;
    SB_LUT4 sub_14_inv_0_i13_1_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9587_1_lut (.I0(n2126), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13436));
    defparam i9587_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5_4_lut (.I0(bit_ctr[24]), .I1(n10_adj_619), .I2(n1104), 
            .I3(n1109), .O(n12_adj_621));   // verilog/neopixel.v(22[26:36])
    defparam i5_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 sub_14_inv_0_i14_1_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i15_1_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i6_4_lut (.I0(n1105), .I1(n12_adj_621), .I2(n1107), .I3(n1103), 
            .O(n1136));   // verilog/neopixel.v(22[26:36])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_inv_0_i16_1_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3_3_lut (.I0(bit_ctr[23]), .I1(n1208), .I2(n1209), .I3(GND_net), 
            .O(n11_adj_624));
    defparam i3_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i5_4_lut_adj_31 (.I0(n1203), .I1(n1204), .I2(n1202), .I3(n1205), 
            .O(n13));
    defparam i5_4_lut_adj_31.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_32 (.I0(n13), .I1(n11_adj_624), .I2(n1206), .I3(n1207), 
            .O(n1235));
    defparam i7_4_lut_adj_32.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_33 (.I0(n2790), .I1(n2792), .I2(n2791), .I3(n2793), 
            .O(n38_adj_625));   // verilog/neopixel.v(22[26:36])
    defparam i14_4_lut_adj_33.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i812_3_lut (.I0(bit_ctr[24]), .I1(n1169[24]), .I2(n1136), 
            .I3(GND_net), .O(n1209));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i812_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_34 (.I0(n1302), .I1(n1301), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_626));
    defparam i1_2_lut_adj_34.LUT_INIT = 16'heeee;
    SB_LUT4 i7_4_lut_adj_35 (.I0(n1306), .I1(n1307), .I2(n1308), .I3(n10_adj_626), 
            .O(n16_adj_627));
    defparam i7_4_lut_adj_35.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_adj_36 (.I0(bit_ctr[22]), .I1(n1303), .I2(n1309), 
            .I3(GND_net), .O(n11_adj_628));
    defparam i2_3_lut_adj_36.LUT_INIT = 16'hecec;
    SB_LUT4 i8_4_lut (.I0(n11_adj_628), .I1(n16_adj_627), .I2(n1305), 
            .I3(n1304), .O(n1334));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i879_3_lut (.I0(n1209), .I1(n1268[24]), .I2(n1235), 
            .I3(GND_net), .O(n1308));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_37 (.I0(n1401), .I1(n1402), .I2(n1400), .I3(n1403), 
            .O(n16_adj_629));   // verilog/neopixel.v(22[26:36])
    defparam i6_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_3_lut (.I0(n1406), .I1(n16_adj_629), .I2(n1408), .I3(GND_net), 
            .O(n18_adj_630));   // verilog/neopixel.v(22[26:36])
    defparam i8_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_3_lut_adj_38 (.I0(bit_ctr[21]), .I1(n1404), .I2(n1409), 
            .I3(GND_net), .O(n13_adj_631));   // verilog/neopixel.v(22[26:36])
    defparam i3_3_lut_adj_38.LUT_INIT = 16'hecec;
    SB_LUT4 i9_4_lut (.I0(n13_adj_631), .I1(n18_adj_630), .I2(n1405), 
            .I3(n1407), .O(n1433));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i946_3_lut (.I0(n1308), .I1(n1367[24]), .I2(n1334), 
            .I3(GND_net), .O(n1407));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1007_3_lut (.I0(n1401), .I1(n1466[30]), .I2(n1433), 
            .I3(GND_net), .O(n1500));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1007_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1013_3_lut (.I0(n1407), .I1(n1466[24]), .I2(n1433), 
            .I3(GND_net), .O(n1506));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6448_2_lut (.I0(bit_ctr[20]), .I1(n1509), .I2(GND_net), .I3(GND_net), 
            .O(n9672));
    defparam i6448_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7_4_lut_adj_39 (.I0(n1501), .I1(n1502), .I2(n9672), .I3(n1503), 
            .O(n18_adj_632));   // verilog/neopixel.v(22[26:36])
    defparam i7_4_lut_adj_39.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_2_lut (.I0(n1505), .I1(n1508), .I2(GND_net), .I3(GND_net), 
            .O(n16_adj_633));   // verilog/neopixel.v(22[26:36])
    defparam i5_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut_adj_40 (.I0(n1506), .I1(n18_adj_632), .I2(n1500), 
            .I3(n1499), .O(n20_adj_634));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_40.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_41 (.I0(n1507), .I1(n20_adj_634), .I2(n16_adj_633), 
            .I3(n1504), .O(n1532));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_41.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1084_3_lut (.I0(bit_ctr[20]), .I1(n1565[20]), .I2(n1532), 
            .I3(GND_net), .O(n1609));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1084_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20_4_lut (.I0(n39_adj_614), .I1(n31_adj_613), .I2(n2800), 
            .I3(n2808), .O(n44));   // verilog/neopixel.v(22[26:36])
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1078_3_lut (.I0(n1504), .I1(n1565[26]), .I2(n1532), 
            .I3(GND_net), .O(n1603));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1078_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18_4_lut_adj_42 (.I0(n2802), .I1(n2801), .I2(n2798), .I3(n2805), 
            .O(n42_adj_635));   // verilog/neopixel.v(22[26:36])
    defparam i18_4_lut_adj_42.LUT_INIT = 16'hfffe;
    SB_CARRY timer_1102_add_4_13 (.CI(n10489), .I0(GND_net), .I1(timer[11]), 
            .CO(n10490));
    SB_LUT4 i19_4_lut_adj_43 (.I0(n2787), .I1(n38_adj_625), .I2(n26_adj_615), 
            .I3(n2786), .O(n43));   // verilog/neopixel.v(22[26:36])
    defparam i19_4_lut_adj_43.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_44 (.I0(n2503), .I1(n2506), .I2(n2508), .I3(n2502), 
            .O(n36_adj_636));
    defparam i15_4_lut_adj_44.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i943_3_lut (.I0(n1305), .I1(n1367[27]), .I2(n1334), 
            .I3(GND_net), .O(n1404));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16_4_lut_adj_45 (.I0(n2507), .I1(n2500), .I2(n2504), .I3(n22_adj_637), 
            .O(n37_adj_638));
    defparam i16_4_lut_adj_45.LUT_INIT = 16'hfffe;
    SB_LUT4 i6508_rep_3_2_lut_3_lut (.I0(n9618), .I1(bit_ctr[30]), .I2(bit_ctr[31]), 
            .I3(GND_net), .O(n11771));   // verilog/neopixel.v(22[26:36])
    defparam i6508_rep_3_2_lut_3_lut.LUT_INIT = 16'hbaba;
    SB_LUT4 i14_4_lut_adj_46 (.I0(n2498), .I1(n2501), .I2(n2505), .I3(n2499), 
            .O(n35_adj_639));
    defparam i14_4_lut_adj_46.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1552_3_lut (.I0(n2202), .I1(n2258[21]), .I2(n2225), 
            .I3(GND_net), .O(n2301));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1552_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1557_3_lut (.I0(n2207), .I1(n2258[16]), .I2(n2225), 
            .I3(GND_net), .O(n2306));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1557_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1560_3_lut (.I0(bit_ctr[13]), .I1(n2258[13]), .I2(n2225), 
            .I3(GND_net), .O(n2309));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1560_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut (.I0(n2293), .I1(n2295), .I2(n2294), .I3(n2296), 
            .O(n30_adj_640));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6426_2_lut (.I0(bit_ctr[12]), .I1(n2309), .I2(GND_net), .I3(GND_net), 
            .O(n9650));
    defparam i6426_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i15_4_lut_adj_47 (.I0(n2303), .I1(n30_adj_640), .I2(n2292), 
            .I3(n2291), .O(n34_adj_641));
    defparam i15_4_lut_adj_47.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut_adj_48 (.I0(n35_adj_639), .I1(n37_adj_638), .I2(n36_adj_636), 
            .I3(n38_adj_612), .O(n2522));
    defparam i20_4_lut_adj_48.LUT_INIT = 16'hfffe;
    SB_LUT4 i9469_3_lut_4_lut (.I0(n7120), .I1(\neo_pixel_transmitter.done ), 
            .I2(start), .I3(n4_adj_642), .O(n13262));
    defparam i9469_3_lut_4_lut.LUT_INIT = 16'hf3f7;
    SB_LUT4 i17_4_lut_adj_49 (.I0(n2804), .I1(n2797), .I2(n2803), .I3(n2806), 
            .O(n41_adj_643));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut_adj_49.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_50 (.I0(n2306), .I1(n2301), .I2(n2305), .I3(n2300), 
            .O(n32));
    defparam i13_4_lut_adj_50.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_51 (.I0(n2302), .I1(n2308), .I2(n2304), .I3(n2307), 
            .O(n33_adj_644));
    defparam i14_4_lut_adj_51.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_52 (.I0(n2297), .I1(n9650), .I2(n2298), .I3(n2299), 
            .O(n31_adj_645));
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_53 (.I0(n31_adj_645), .I1(n33_adj_644), .I2(n32), 
            .I3(n34_adj_641), .O(n2324));
    defparam i18_4_lut_adj_53.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1556_3_lut (.I0(n2206), .I1(n2258[17]), .I2(n2225), 
            .I3(GND_net), .O(n2305));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1556_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9538_3_lut (.I0(n2404), .I1(n2456[17]), .I2(n2423), .I3(GND_net), 
            .O(n2503));   // verilog/neopixel.v(22[26:36])
    defparam i9538_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i23_4_lut (.I0(n41_adj_643), .I1(n43), .I2(n42_adj_635), .I3(n44), 
            .O(n2819));   // verilog/neopixel.v(22[26:36])
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1627_3_lut (.I0(n2309), .I1(n2357[13]), .I2(n2324), 
            .I3(GND_net), .O(n2408));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1627_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9536_3_lut (.I0(n2405), .I1(n2456[16]), .I2(n2423), .I3(GND_net), 
            .O(n2504));   // verilog/neopixel.v(22[26:36])
    defparam i9536_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9528_3_lut (.I0(n2504), .I1(n2555[16]), .I2(n2522), .I3(GND_net), 
            .O(n2603));   // verilog/neopixel.v(22[26:36])
    defparam i9528_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1686_3_lut (.I0(n2400), .I1(n2456[21]), .I2(n2423), 
            .I3(GND_net), .O(n2499));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1686_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1616_3_lut (.I0(n2298), .I1(n2357[24]), .I2(n2324), 
            .I3(GND_net), .O(n2397));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1612_3_lut (.I0(n2294), .I1(n2357[28]), .I2(n2324), 
            .I3(GND_net), .O(n2393));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1611_3_lut (.I0(n2293), .I1(n2357[29]), .I2(n2324), 
            .I3(GND_net), .O(n2392));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1611_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1685_3_lut (.I0(n2399), .I1(n2456[22]), .I2(n2423), 
            .I3(GND_net), .O(n2498));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1685_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1681_3_lut (.I0(n2395), .I1(n2456[26]), .I2(n2423), 
            .I3(GND_net), .O(n2494));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1679_3_lut (.I0(n2393), .I1(n2456[28]), .I2(n2423), 
            .I3(GND_net), .O(n2492));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1679_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1680_3_lut (.I0(n2394), .I1(n2456[27]), .I2(n2423), 
            .I3(GND_net), .O(n2493));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1680_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1678_3_lut (.I0(n2392), .I1(n2456[29]), .I2(n2423), 
            .I3(GND_net), .O(n2491));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1678_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9497_3_lut (.I0(n2306), .I1(n2357[16]), .I2(n2324), .I3(GND_net), 
            .O(n2405));   // verilog/neopixel.v(22[26:36])
    defparam i9497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9489_3_lut (.I0(n2302), .I1(n2357[20]), .I2(n2324), .I3(GND_net), 
            .O(n2401));   // verilog/neopixel.v(22[26:36])
    defparam i9489_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1610_3_lut (.I0(n2292), .I1(n2357[30]), .I2(n2324), 
            .I3(GND_net), .O(n2391));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1610_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1694_3_lut (.I0(n2408), .I1(n2456[13]), .I2(n2423), 
            .I3(GND_net), .O(n2507));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1694_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1695_rep_30_3_lut (.I0(n2409), .I1(n2456[12]), .I2(n2423), 
            .I3(GND_net), .O(n2508));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1695_rep_30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9526_3_lut (.I0(n2503), .I1(n2555[17]), .I2(n2522), .I3(GND_net), 
            .O(n2602));   // verilog/neopixel.v(22[26:36])
    defparam i9526_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1280_3_lut (.I0(n1802), .I1(n1862[25]), .I2(n1829), 
            .I3(GND_net), .O(n1901));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1280_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1282_3_lut (.I0(n1804), .I1(n1862[23]), .I2(n1829), 
            .I3(GND_net), .O(n1903));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1282_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1276_3_lut (.I0(n1798), .I1(n1862[29]), .I2(n1829), 
            .I3(GND_net), .O(n1897));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1276_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1272_4_lut (.I0(GND_net), .I1(n1808), .I2(VCC_net), 
            .I3(n10629), .O(n1862[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1622_3_lut (.I0(n2304), .I1(n2357[18]), .I2(n2324), 
            .I3(GND_net), .O(n2403));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1625_rep_47_3_lut (.I0(n2307), .I1(n2357[15]), .I2(n2324), 
            .I3(GND_net), .O(n2406));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1625_rep_47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut_adj_54 (.I0(n19_adj_602), .I1(n1602), .I2(n16_adj_646), 
            .I3(n1606), .O(n22_adj_647));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_54.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1621_3_lut (.I0(n2303), .I1(n2357[19]), .I2(n2324), 
            .I3(GND_net), .O(n2402));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1619_3_lut (.I0(n2301), .I1(n2357[21]), .I2(n2324), 
            .I3(GND_net), .O(n2400));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1619_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\neo_pixel_transmitter.done ), 
            .I3(n9700), .O(n12117));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hdfdd;
    SB_LUT4 mod_5_i1618_3_lut (.I0(n2300), .I1(n2357[22]), .I2(n2324), 
            .I3(GND_net), .O(n2399));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1618_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i21 (.Q(bit_ctr[21]), .C(CLK_c), .E(n7230), .D(n255[21]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1286_3_lut (.I0(n1808), .I1(n1862[19]), .I2(n1829), 
            .I3(GND_net), .O(n1907));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1286_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1272_4 (.CI(n10629), .I0(n1808), .I1(VCC_net), 
            .CO(n10630));
    SB_LUT4 mod_5_add_1272_3_lut (.I0(GND_net), .I1(n1809), .I2(GND_net), 
            .I3(n10628), .O(n1862[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_3 (.CI(n10628), .I0(n1809), .I1(GND_net), 
            .CO(n10629));
    SB_DFFESR bit_ctr__i20 (.Q(bit_ctr[20]), .C(CLK_c), .E(n7230), .D(n255[20]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i9_4_lut_adj_55 (.I0(n1908), .I1(n1902), .I2(n1898), .I3(n1907), 
            .O(n24_adj_648));
    defparam i9_4_lut_adj_55.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1272_2_lut (.I0(GND_net), .I1(bit_ctr[17]), .I2(GND_net), 
            .I3(VCC_net), .O(n1862[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_2 (.CI(VCC_net), .I0(bit_ctr[17]), .I1(GND_net), 
            .CO(n10628));
    SB_LUT4 mod_5_i1277_3_lut (.I0(n1799), .I1(n1862[28]), .I2(n1829), 
            .I3(GND_net), .O(n1898));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1277_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1875_15_lut (.I0(GND_net), .I1(n2697), .I2(VCC_net), 
            .I3(n10802), .O(n2753[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1010_3_lut (.I0(n1404), .I1(n1466[27]), .I2(n1433), 
            .I3(GND_net), .O(n1503));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1010_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i19 (.Q(bit_ctr[19]), .C(CLK_c), .E(n7230), .D(n255[19]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i18 (.Q(bit_ctr[18]), .C(CLK_c), .E(n7230), .D(n255[18]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1205_15_lut (.I0(n1730), .I1(n1697), .I2(VCC_net), 
            .I3(n10627), .O(n1796)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_803_7_lut (.I0(GND_net), .I1(n1105), .I2(VCC_net), 
            .I3(n10465), .O(n1169[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_4_lut (.I0(GND_net), .I1(n2208), .I2(VCC_net), 
            .I3(n10691), .O(n2258[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_937_9_lut (.I0(GND_net), .I1(n1303), .I2(VCC_net), 
            .I3(n10579), .O(n1367[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(timer[10]), 
            .I3(n10488), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_9 (.CI(n10579), .I0(n1303), .I1(VCC_net), .CO(n10580));
    SB_CARRY mod_5_add_1875_15 (.CI(n10802), .I0(n2697), .I1(VCC_net), 
            .CO(n10803));
    SB_LUT4 mod_5_add_937_8_lut (.I0(GND_net), .I1(n1304), .I2(VCC_net), 
            .I3(n10578), .O(n1367[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_23 (.CI(n10442), .I0(timer[21]), .I1(n1[21]), 
            .CO(n10443));
    SB_CARRY mod_5_add_803_7 (.CI(n10465), .I0(n1105), .I1(VCC_net), .CO(n10466));
    SB_LUT4 sub_14_add_2_22_lut (.I0(n12959), .I1(timer[20]), .I2(n1[20]), 
            .I3(n10441), .O(n12961)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_937_8 (.CI(n10578), .I0(n1304), .I1(VCC_net), .CO(n10579));
    SB_CARRY sub_14_add_2_22 (.CI(n10441), .I0(timer[20]), .I1(n1[20]), 
            .CO(n10442));
    SB_LUT4 sub_14_add_2_21_lut (.I0(n12957), .I1(timer[19]), .I2(n1[19]), 
            .I3(n10440), .O(n12959)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_21_20 (.CI(n10408), .I0(bit_ctr[18]), .I1(GND_net), .CO(n10409));
    SB_LUT4 mod_5_add_1741_5_lut (.I0(GND_net), .I1(n2507), .I2(VCC_net), 
            .I3(n10749), .O(n2555[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_4 (.CI(n10691), .I0(n2208), .I1(VCC_net), 
            .CO(n10692));
    SB_CARRY timer_1102_add_4_12 (.CI(n10488), .I0(GND_net), .I1(timer[10]), 
            .CO(n10489));
    SB_LUT4 timer_1102_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(timer[9]), 
            .I3(n10487), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_4_lut (.I0(GND_net), .I1(timer[2]), .I2(n1[2]), 
            .I3(n10423), .O(one_wire_N_528[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_4 (.CI(n10423), .I0(timer[2]), .I1(n1[2]), .CO(n10424));
    SB_LUT4 add_21_19_lut (.I0(GND_net), .I1(bit_ctr[17]), .I2(GND_net), 
            .I3(n10407), .O(n255[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_21 (.CI(n10440), .I0(timer[19]), .I1(n1[19]), 
            .CO(n10441));
    SB_LUT4 mod_5_add_1875_14_lut (.I0(GND_net), .I1(n2698), .I2(VCC_net), 
            .I3(n10801), .O(n2753[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_937_7_lut (.I0(GND_net), .I1(n1305), .I2(VCC_net), 
            .I3(n10577), .O(n1367[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_11 (.CI(n10487), .I0(GND_net), .I1(timer[9]), 
            .CO(n10488));
    SB_LUT4 mod_5_add_1205_14_lut (.I0(GND_net), .I1(n1698), .I2(VCC_net), 
            .I3(n10626), .O(n1763[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i17 (.Q(bit_ctr[17]), .C(CLK_c), .E(n7230), .D(n255[17]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_803_6_lut (.I0(GND_net), .I1(n1106), .I2(VCC_net), 
            .I3(n10464), .O(n1169[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_7 (.CI(n10577), .I0(n1305), .I1(VCC_net), .CO(n10578));
    SB_DFFESR bit_ctr__i16 (.Q(bit_ctr[16]), .C(CLK_c), .E(n7230), .D(n255[16]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_add_2_20_lut (.I0(n12955), .I1(timer[18]), .I2(n1[18]), 
            .I3(n10439), .O(n12957)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_20_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_14_add_2_3_lut (.I0(one_wire_N_528[3]), .I1(timer[1]), .I2(n1[1]), 
            .I3(n10422), .O(n11533)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_i1683_3_lut (.I0(n2397), .I1(n2456[24]), .I2(n2423), 
            .I3(GND_net), .O(n2496));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1683_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_3 (.CI(n10422), .I0(timer[1]), .I1(n1[1]), .CO(n10423));
    SB_CARRY add_21_19 (.CI(n10407), .I0(bit_ctr[17]), .I1(GND_net), .CO(n10408));
    SB_LUT4 timer_1102_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(timer[8]), 
            .I3(n10486), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_14 (.CI(n10626), .I0(n1698), .I1(VCC_net), 
            .CO(n10627));
    SB_LUT4 mod_5_i1682_3_lut (.I0(n2396), .I1(n2456[25]), .I2(n2423), 
            .I3(GND_net), .O(n2495));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1682_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1677_3_lut (.I0(n2391), .I1(n2456[30]), .I2(n2423), 
            .I3(GND_net), .O(n2490));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1677_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1696_3_lut (.I0(bit_ctr[11]), .I1(n2456[11]), .I2(n2423), 
            .I3(GND_net), .O(n2509));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1684_3_lut (.I0(n2398), .I1(n2456[23]), .I2(n2423), 
            .I3(GND_net), .O(n2497));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1684_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9478_3_lut_4_lut (.I0(\state[1] ), .I1(n13325), .I2(start), 
            .I3(n7120), .O(n13326));
    defparam i9478_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_inv_0_i17_1_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1626_3_lut (.I0(n2308), .I1(n2357[14]), .I2(n2324), 
            .I3(GND_net), .O(n2407));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut (.I0(n2497), .I1(bit_ctr[10]), .I2(n2509), .I3(GND_net), 
            .O(n26_adj_611));
    defparam i5_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i12_4_lut_adj_56 (.I0(n2491), .I1(n2493), .I2(n2492), .I3(n2494), 
            .O(n33));
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_57 (.I0(n2490), .I1(n2489), .I2(GND_net), .I3(GND_net), 
            .O(n22_adj_637));
    defparam i1_2_lut_adj_57.LUT_INIT = 16'heeee;
    SB_CARRY sub_14_add_2_2 (.CI(VCC_net), .I0(timer[0]), .I1(n1[0]), 
            .CO(n10422));
    SB_DFFESR bit_ctr__i15 (.Q(bit_ctr[15]), .C(CLK_c), .E(n7230), .D(n255[15]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF timer_1102__i1 (.Q(timer[1]), .C(CLK_c), .D(n133[1]));   // verilog/neopixel.v(12[12:21])
    SB_CARRY mod_5_add_1741_5 (.CI(n10749), .I0(n2507), .I1(VCC_net), 
            .CO(n10750));
    SB_CARRY sub_14_add_2_20 (.CI(n10439), .I0(timer[18]), .I1(n1[18]), 
            .CO(n10440));
    SB_CARRY mod_5_add_803_6 (.CI(n10464), .I0(n1106), .I1(VCC_net), .CO(n10465));
    SB_LUT4 i3_4_lut_4_lut (.I0(n9700), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\neo_pixel_transmitter.done ), .O(n12204));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 mod_5_i1617_3_lut (.I0(n2299), .I1(n2357[23]), .I2(n2324), 
            .I3(GND_net), .O(n2398));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1617_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i14 (.Q(bit_ctr[14]), .C(CLK_c), .E(n7230), .D(n255[14]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_803_5_lut (.I0(GND_net), .I1(n1107), .I2(VCC_net), 
            .I3(n10463), .O(n1169[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_14 (.CI(n10801), .I0(n2698), .I1(VCC_net), 
            .CO(n10802));
    SB_LUT4 add_21_33_lut (.I0(GND_net), .I1(bit_ctr[31]), .I2(GND_net), 
            .I3(n10421), .O(n255[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_3_lut (.I0(GND_net), .I1(n2209), .I2(GND_net), 
            .I3(n10690), .O(n2258[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_13_lut (.I0(GND_net), .I1(n2699), .I2(VCC_net), 
            .I3(n10800), .O(n2753[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_13 (.CI(n10800), .I0(n2699), .I1(VCC_net), 
            .CO(n10801));
    SB_LUT4 mod_5_add_1741_4_lut (.I0(GND_net), .I1(n2508), .I2(VCC_net), 
            .I3(n10748), .O(n2555[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_32_lut (.I0(GND_net), .I1(bit_ctr[30]), .I2(GND_net), 
            .I3(n10420), .O(n255[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_3 (.CI(n10690), .I0(n2209), .I1(GND_net), 
            .CO(n10691));
    SB_CARRY mod_5_add_1741_4 (.CI(n10748), .I0(n2508), .I1(VCC_net), 
            .CO(n10749));
    SB_LUT4 mod_5_add_1875_12_lut (.I0(GND_net), .I1(n2700), .I2(VCC_net), 
            .I3(n10799), .O(n2753[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_2_lut (.I0(GND_net), .I1(bit_ctr[13]), .I2(GND_net), 
            .I3(VCC_net), .O(n2258[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_2 (.CI(VCC_net), .I0(bit_ctr[13]), .I1(GND_net), 
            .CO(n10690));
    SB_LUT4 i4_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state_3__N_377[1] ), 
            .I3(update_color), .O(n10_adj_653));
    defparam i4_4_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 mod_5_i1287_3_lut (.I0(n1809), .I1(n1862[18]), .I2(n1829), 
            .I3(GND_net), .O(n1908));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1287_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1623_3_lut (.I0(n2305), .I1(n2357[17]), .I2(n2324), 
            .I3(GND_net), .O(n2404));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9308_3_lut (.I0(\neopxl_color[4] ), .I1(\neopxl_color[5] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13155));
    defparam i9308_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9309_3_lut (.I0(\neopxl_color[6] ), .I1(\neopxl_color[7] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13156));
    defparam i9309_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_58 (.I0(bit_ctr[3]), .I1(n10947), .I2(GND_net), 
            .I3(GND_net), .O(n10975));
    defparam i1_2_lut_adj_58.LUT_INIT = 16'h6666;
    SB_LUT4 i9312_3_lut (.I0(\neopxl_color[14] ), .I1(\neopxl_color[15] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13159));
    defparam i9312_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9311_3_lut (.I0(\neopxl_color[12] ), .I1(\neopxl_color[13] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13158));
    defparam i9311_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1614_3_lut (.I0(n2296), .I1(n2357[26]), .I2(n2324), 
            .I3(GND_net), .O(n2395));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1614_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1416_3_lut (.I0(n2002), .I1(n2060[23]), .I2(n2027), 
            .I3(GND_net), .O(n2101));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1411_3_lut (.I0(n1997), .I1(n2060[28]), .I2(n2027), 
            .I3(GND_net), .O(n2096));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1613_3_lut (.I0(n2295), .I1(n2357[27]), .I2(n2324), 
            .I3(GND_net), .O(n2394));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1613_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1412_3_lut (.I0(n1998), .I1(n2060[27]), .I2(n2027), 
            .I3(GND_net), .O(n2097));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1628_3_lut (.I0(bit_ctr[12]), .I1(n2357[12]), .I2(n2324), 
            .I3(GND_net), .O(n2409));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1415_3_lut (.I0(n2001), .I1(n2060[24]), .I2(n2027), 
            .I3(GND_net), .O(n2100));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1418_3_lut (.I0(n2004), .I1(n2060[21]), .I2(n2027), 
            .I3(GND_net), .O(n2103));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1615_3_lut (.I0(n2297), .I1(n2357[25]), .I2(n2324), 
            .I3(GND_net), .O(n2396));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1615_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1414_3_lut (.I0(n2000), .I1(n2060[25]), .I2(n2027), 
            .I3(GND_net), .O(n2099));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_3_lut (.I0(n2396), .I1(bit_ctr[11]), .I2(n2409), .I3(GND_net), 
            .O(n24_adj_654));   // verilog/neopixel.v(22[26:36])
    defparam i4_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 mod_5_i1413_3_lut (.I0(n1999), .I1(n2060[26]), .I2(n2027), 
            .I3(GND_net), .O(n2098));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1422_3_lut (.I0(n2008), .I1(n2060[17]), .I2(n2027), 
            .I3(GND_net), .O(n2107));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_59 (.I0(n2391), .I1(n2392), .I2(n2390), .I3(n2393), 
            .O(n31_adj_655));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_59.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1421_3_lut (.I0(n2007), .I1(n2060[18]), .I2(n2027), 
            .I3(GND_net), .O(n2106));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1421_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1278_3_lut (.I0(n1800), .I1(n1862[27]), .I2(n1829), 
            .I3(GND_net), .O(n1899));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1278_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1283_3_lut (.I0(n1805), .I1(n1862[22]), .I2(n1829), 
            .I3(GND_net), .O(n1904));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1283_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1279_3_lut (.I0(n1801), .I1(n1862[26]), .I2(n1829), 
            .I3(GND_net), .O(n1900));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1279_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16_4_lut_adj_60 (.I0(n31_adj_655), .I1(n2394), .I2(n24_adj_654), 
            .I3(n2395), .O(n36_adj_656));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut_adj_60.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_61 (.I0(n2404), .I1(n2398), .I2(n2407), .I3(n2399), 
            .O(n34_adj_657));   // verilog/neopixel.v(22[26:36])
    defparam i14_4_lut_adj_61.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_62 (.I0(n2400), .I1(n2402), .I2(n2406), .I3(n2403), 
            .O(n35_adj_658));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_63 (.I0(n2397), .I1(n2405), .I2(n2401), .I3(n2408), 
            .O(n33_adj_659));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut_adj_63.LUT_INIT = 16'hfffe;
    SB_LUT4 i9517_3_lut (.I0(n1707), .I1(n1763[21]), .I2(n1730), .I3(GND_net), 
            .O(n1806));   // verilog/neopixel.v(22[26:36])
    defparam i9517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_4_lut_adj_64 (.I0(n25_adj_606), .I1(n1897), .I2(n22_adj_605), 
            .I3(n1903), .O(n28_adj_660));
    defparam i13_4_lut_adj_64.LUT_INIT = 16'hfffe;
    SB_LUT4 i9518_3_lut (.I0(n1806), .I1(n1862[21]), .I2(n1829), .I3(GND_net), 
            .O(n1905));   // verilog/neopixel.v(22[26:36])
    defparam i9518_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1275_3_lut (.I0(n1797), .I1(n1862[30]), .I2(n1829), 
            .I3(GND_net), .O(n1896));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1275_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_4_lut_adj_65 (.I0(n33_adj_659), .I1(n35_adj_658), .I2(n34_adj_657), 
            .I3(n36_adj_656), .O(n2423));   // verilog/neopixel.v(22[26:36])
    defparam i19_4_lut_adj_65.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1550_3_lut (.I0(n2200), .I1(n2258[23]), .I2(n2225), 
            .I3(GND_net), .O(n2299));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1550_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1423_3_lut (.I0(n2009), .I1(n2060[16]), .I2(n2027), 
            .I3(GND_net), .O(n2108));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_19_lut (.I0(n12953), .I1(timer[17]), .I2(n1[17]), 
            .I3(n10438), .O(n12955)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_803_5 (.CI(n10463), .I0(n1107), .I1(VCC_net), .CO(n10464));
    SB_LUT4 mod_5_add_1473_19_lut (.I0(n2093), .I1(n2093), .I2(n2126), 
            .I3(n10689), .O(n2192)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_19_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_803_4_lut (.I0(GND_net), .I1(n1108), .I2(VCC_net), 
            .I3(n10462), .O(n1169[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1409_3_lut (.I0(n1995), .I1(n2060[30]), .I2(n2027), 
            .I3(GND_net), .O(n2094));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1424_3_lut (.I0(bit_ctr[15]), .I1(n2060[15]), .I2(n2027), 
            .I3(GND_net), .O(n2109));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1424_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1417_3_lut (.I0(n2003), .I1(n2060[22]), .I2(n2027), 
            .I3(GND_net), .O(n2102));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_2_lut_adj_66 (.I0(n2002), .I1(n2007), .I2(GND_net), .I3(GND_net), 
            .O(n22_adj_662));   // verilog/neopixel.v(22[26:36])
    defparam i6_2_lut_adj_66.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_67 (.I0(n2006), .I1(n2005), .I2(n2004), .I3(n2008), 
            .O(n28_adj_663));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_68 (.I0(n1998), .I1(n2001), .I2(n1999), .I3(n2000), 
            .O(n26_adj_664));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_68.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_69 (.I0(bit_ctr[15]), .I1(n22_adj_662), .I2(n2003), 
            .I3(n2009), .O(n27_adj_665));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_69.LUT_INIT = 16'hfefc;
    SB_LUT4 mod_5_i1549_3_lut (.I0(n2199), .I1(n2258[24]), .I2(n2225), 
            .I3(GND_net), .O(n2298));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1549_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9_4_lut_adj_70 (.I0(n1995), .I1(n1996), .I2(n1994), .I3(n1997), 
            .O(n25_adj_666));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_70.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_71 (.I0(n25_adj_666), .I1(n27_adj_665), .I2(n26_adj_664), 
            .I3(n28_adj_663), .O(n2027));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_71.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1419_3_lut (.I0(n2005), .I1(n2060[20]), .I2(n2027), 
            .I3(GND_net), .O(n2104));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1410_3_lut (.I0(n1996), .I1(n2060[29]), .I2(n2027), 
            .I3(GND_net), .O(n2095));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1420_3_lut (.I0(n2006), .I1(n2060[19]), .I2(n2027), 
            .I3(GND_net), .O(n2105));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1420_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9_3_lut (.I0(n2105), .I1(n2095), .I2(n2104), .I3(GND_net), 
            .O(n26_adj_667));
    defparam i9_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i13_4_lut_adj_72 (.I0(bit_ctr[14]), .I1(n26_adj_667), .I2(n2102), 
            .I3(n2109), .O(n30_adj_668));
    defparam i13_4_lut_adj_72.LUT_INIT = 16'hfefc;
    SB_LUT4 i11_4_lut_adj_73 (.I0(n2098), .I1(n2099), .I2(n2103), .I3(n2100), 
            .O(n28_adj_669));
    defparam i11_4_lut_adj_73.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_74 (.I0(n2094), .I1(n2108), .I2(n2106), .I3(n2107), 
            .O(n29_adj_670));
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1548_3_lut (.I0(n2198), .I1(n2258[25]), .I2(n2225), 
            .I3(GND_net), .O(n2297));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1548_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1558_3_lut (.I0(n2208), .I1(n2258[15]), .I2(n2225), 
            .I3(GND_net), .O(n2307));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1555_3_lut (.I0(n2205), .I1(n2258[18]), .I2(n2225), 
            .I3(GND_net), .O(n2304));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1555_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut_adj_75 (.I0(n2097), .I1(n2093), .I2(n2096), .I3(n2101), 
            .O(n27_adj_671));
    defparam i10_4_lut_adj_75.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_76 (.I0(n27_adj_671), .I1(n29_adj_670), .I2(n28_adj_669), 
            .I3(n30_adj_668), .O(n2126));
    defparam i16_4_lut_adj_76.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1559_3_lut (.I0(n2209), .I1(n2258[14]), .I2(n2225), 
            .I3(GND_net), .O(n2308));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1559_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i18_1_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1553_3_lut (.I0(n2203), .I1(n2258[20]), .I2(n2225), 
            .I3(GND_net), .O(n2302));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1553_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1543_3_lut (.I0(n2193), .I1(n2258[30]), .I2(n2225), 
            .I3(GND_net), .O(n2292));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1543_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i1_1_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i2_1_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1554_3_lut (.I0(n2204), .I1(n2258[19]), .I2(n2225), 
            .I3(GND_net), .O(n2303));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i19_1_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i3_1_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1547_3_lut (.I0(n2197), .I1(n2258[26]), .I2(n2225), 
            .I3(GND_net), .O(n2296));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1547_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i20_1_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i21_1_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1081_3_lut (.I0(n1507), .I1(n1565[23]), .I2(n1532), 
            .I3(GND_net), .O(n1606));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1081_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_803_4 (.CI(n10462), .I0(n1108), .I1(VCC_net), .CO(n10463));
    SB_CARRY mod_5_add_1875_12 (.CI(n10799), .I0(n2700), .I1(VCC_net), 
            .CO(n10800));
    SB_LUT4 mod_5_add_1741_3_lut (.I0(GND_net), .I1(n2509), .I2(GND_net), 
            .I3(n10747), .O(n2555[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1545_3_lut (.I0(n2195), .I1(n2258[28]), .I2(n2225), 
            .I3(GND_net), .O(n2294));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1545_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1546_3_lut (.I0(n2196), .I1(n2258[27]), .I2(n2225), 
            .I3(GND_net), .O(n2295));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1544_3_lut (.I0(n2194), .I1(n2258[29]), .I2(n2225), 
            .I3(GND_net), .O(n2293));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1544_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1219_3_lut (.I0(n1709), .I1(n1763[19]), .I2(n1730), 
            .I3(GND_net), .O(n1808));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1219_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1218_3_lut (.I0(n1708), .I1(n1763[20]), .I2(n1730), 
            .I3(GND_net), .O(n1807));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1218_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_1102_add_4_10 (.CI(n10486), .I0(GND_net), .I1(timer[8]), 
            .CO(n10487));
    SB_LUT4 mod_5_add_803_3_lut (.I0(GND_net), .I1(n1109), .I2(GND_net), 
            .I3(n10461), .O(n1169[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9586_1_lut (.I0(n1928), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13435));
    defparam i9586_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i806_3_lut (.I0(n1104), .I1(n1169[30]), .I2(n1136), 
            .I3(GND_net), .O(n1203));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i806_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i873_3_lut (.I0(n1203), .I1(n1268[30]), .I2(n1235), 
            .I3(GND_net), .O(n1302));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9551_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(n3739), 
            .I3(n13263), .O(n7230));
    defparam i9551_4_lut_4_lut.LUT_INIT = 16'h0c1d;
    SB_LUT4 i10_4_lut_adj_77 (.I0(n2193), .I1(n2194), .I2(n2192), .I3(n2195), 
            .O(n28_adj_601));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_77.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_78 (.I0(n2207), .I1(n2208), .I2(n2200), .I3(n2202), 
            .O(n31));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut_adj_78.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_3_lut_adj_79 (.I0(bit_ctr[13]), .I1(n2198), .I2(n2209), 
            .I3(GND_net), .O(n22_adj_604));   // verilog/neopixel.v(22[26:36])
    defparam i4_3_lut_adj_79.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_i739_3_lut (.I0(n1005), .I1(n1070[30]), .I2(n1037), 
            .I3(GND_net), .O(n1104));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i739_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i22_1_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1077_3_lut (.I0(n1503), .I1(n1565[27]), .I2(n1532), 
            .I3(GND_net), .O(n1602));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1077_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_18_lut (.I0(GND_net), .I1(bit_ctr[16]), .I2(GND_net), 
            .I3(n10406), .O(n255[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_13_lut (.I0(GND_net), .I1(n1699), .I2(VCC_net), 
            .I3(n10625), .O(n1763[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1016_3_lut (.I0(bit_ctr[21]), .I1(n1466[21]), .I2(n1433), 
            .I3(GND_net), .O(n1509));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7775_2_lut (.I0(start), .I1(n7120), .I2(GND_net), .I3(GND_net), 
            .O(n11535));
    defparam i7775_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9488_4_lut (.I0(n10918), .I1(n4_adj_642), .I2(\neo_pixel_transmitter.done ), 
            .I3(\state[0] ), .O(n13325));
    defparam i9488_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i53_4_lut (.I0(n11535), .I1(n9700), .I2(\state[1] ), .I3(n4_adj_642), 
            .O(n11672));
    defparam i53_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i52_4_lut (.I0(n11672), .I1(n13326), .I2(\state[0] ), .I3(\neo_pixel_transmitter.done ), 
            .O(n11692));
    defparam i52_4_lut.LUT_INIT = 16'h3335;
    SB_LUT4 i3_1_lut (.I0(\neo_pixel_transmitter.done ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(\neo_pixel_transmitter.done_N_591 ));   // verilog/neopixel.v(35[12] 117[6])
    defparam i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1214_3_lut (.I0(n1704), .I1(n1763[24]), .I2(n1730), 
            .I3(GND_net), .O(n1803));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1875_11_lut (.I0(GND_net), .I1(n2701), .I2(VCC_net), 
            .I3(n10798), .O(n2753[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1216_3_lut (.I0(n1706), .I1(n1763[22]), .I2(n1730), 
            .I3(GND_net), .O(n1805));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1216_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1205_13 (.CI(n10625), .I0(n1699), .I1(VCC_net), 
            .CO(n10626));
    SB_DFFESR bit_ctr__i13 (.Q(bit_ctr[13]), .C(CLK_c), .E(n7230), .D(n255[13]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF timer_1102__i2 (.Q(timer[2]), .C(CLK_c), .D(n133[2]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i3 (.Q(timer[3]), .C(CLK_c), .D(n133[3]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i4 (.Q(timer[4]), .C(CLK_c), .D(n133[4]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i5 (.Q(timer[5]), .C(CLK_c), .D(n133[5]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i6 (.Q(timer[6]), .C(CLK_c), .D(n133[6]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i7 (.Q(timer[7]), .C(CLK_c), .D(n133[7]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i8 (.Q(timer[8]), .C(CLK_c), .D(n133[8]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i9 (.Q(timer[9]), .C(CLK_c), .D(n133[9]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i10 (.Q(timer[10]), .C(CLK_c), .D(n133[10]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i11 (.Q(timer[11]), .C(CLK_c), .D(n133[11]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i12 (.Q(timer[12]), .C(CLK_c), .D(n133[12]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i13 (.Q(timer[13]), .C(CLK_c), .D(n133[13]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i14 (.Q(timer[14]), .C(CLK_c), .D(n133[14]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i15 (.Q(timer[15]), .C(CLK_c), .D(n133[15]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i16 (.Q(timer[16]), .C(CLK_c), .D(n133[16]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i17 (.Q(timer[17]), .C(CLK_c), .D(n133[17]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i18 (.Q(timer[18]), .C(CLK_c), .D(n133[18]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i19 (.Q(timer[19]), .C(CLK_c), .D(n133[19]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i20 (.Q(timer[20]), .C(CLK_c), .D(n133[20]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i21 (.Q(timer[21]), .C(CLK_c), .D(n133[21]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i22 (.Q(timer[22]), .C(CLK_c), .D(n133[22]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i23 (.Q(timer[23]), .C(CLK_c), .D(n133[23]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i24 (.Q(timer[24]), .C(CLK_c), .D(n133[24]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i25 (.Q(timer[25]), .C(CLK_c), .D(n133[25]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i26 (.Q(timer[26]), .C(CLK_c), .D(n133[26]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i27 (.Q(timer[27]), .C(CLK_c), .D(n133[27]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i28 (.Q(timer[28]), .C(CLK_c), .D(n133[28]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i29 (.Q(timer[29]), .C(CLK_c), .D(n133[29]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i30 (.Q(timer[30]), .C(CLK_c), .D(n133[30]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1102__i31 (.Q(timer[31]), .C(CLK_c), .D(n133[31]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 mod_5_i1210_3_lut (.I0(n1700), .I1(n1763[28]), .I2(n1730), 
            .I3(GND_net), .O(n1799));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1210_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1209_3_lut (.I0(n1699), .I1(n1763[29]), .I2(n1730), 
            .I3(GND_net), .O(n1798));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1209_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1208_3_lut (.I0(n1698), .I1(n1763[30]), .I2(n1730), 
            .I3(GND_net), .O(n1797));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_80 (.I0(n1607), .I1(n22_adj_647), .I2(n18), 
            .I3(n1604), .O(n1631));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_80.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1152_3_lut (.I0(bit_ctr[19]), .I1(n1664[19]), .I2(n1631), 
            .I3(GND_net), .O(n1709));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1152_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_81 (.I0(n1901), .I1(n28_adj_660), .I2(n24_adj_648), 
            .I3(n16), .O(n1928));
    defparam i14_4_lut_adj_81.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1145_3_lut (.I0(n1603), .I1(n1664[26]), .I2(n1631), 
            .I3(GND_net), .O(n1702));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1145_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 bit_ctr_1__bdd_4_lut (.I0(bit_ctr[1]), .I1(n13158), .I2(n13159), 
            .I3(n10975), .O(n13456));
    defparam bit_ctr_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n13456_bdd_4_lut (.I0(n13456), .I1(n13156), .I2(n13155), .I3(n10975), 
            .O(n13459));
    defparam n13456_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mod_5_i1080_3_lut (.I0(n1506), .I1(n1565[24]), .I2(n1532), 
            .I3(GND_net), .O(n1605));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1080_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE state_i1 (.Q(\state[1] ), .C(CLK_c), .E(VCC_net), .D(n7496));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1213_3_lut (.I0(n1703), .I1(n1763[25]), .I2(n1730), 
            .I3(GND_net), .O(n1802));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1213_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_11 (.CI(n10399), .I0(bit_ctr[9]), .I1(GND_net), .CO(n10400));
    SB_LUT4 timer_1102_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(timer[7]), 
            .I3(n10485), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_803_3 (.CI(n10461), .I0(n1109), .I1(GND_net), .CO(n10462));
    SB_CARRY timer_1102_add_4_9 (.CI(n10485), .I0(GND_net), .I1(timer[7]), 
            .CO(n10486));
    SB_LUT4 mod_5_add_937_6_lut (.I0(GND_net), .I1(n1306), .I2(VCC_net), 
            .I3(n10576), .O(n1367[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(timer[6]), 
            .I3(n10484), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_6 (.CI(n10576), .I0(n1306), .I1(VCC_net), .CO(n10577));
    SB_CARRY mod_5_add_1875_11 (.CI(n10798), .I0(n2701), .I1(VCC_net), 
            .CO(n10799));
    SB_CARRY mod_5_add_1741_3 (.CI(n10747), .I0(n2509), .I1(GND_net), 
            .CO(n10748));
    SB_DFF \neo_pixel_transmitter.t0_i0_i0  (.Q(\neo_pixel_transmitter.t0 [0]), 
           .C(CLK_c), .D(n7494));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i12 (.Q(bit_ctr[12]), .C(CLK_c), .E(n7230), .D(n255[12]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY add_21_32 (.CI(n10420), .I0(bit_ctr[30]), .I1(GND_net), .CO(n10421));
    SB_CARRY sub_14_add_2_19 (.CI(n10438), .I0(timer[17]), .I1(n1[17]), 
            .CO(n10439));
    SB_LUT4 mod_5_i1083_3_lut (.I0(n1509), .I1(n1565[21]), .I2(n1532), 
            .I3(GND_net), .O(n1608));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1083_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_803_2_lut (.I0(GND_net), .I1(bit_ctr[24]), .I2(GND_net), 
            .I3(VCC_net), .O(n1169[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i4_1_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_ctr__i11 (.Q(bit_ctr[11]), .C(CLK_c), .E(n7230), .D(n255[11]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i10 (.Q(bit_ctr[10]), .C(CLK_c), .E(n7230), .D(n255[10]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_inv_0_i23_1_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i24_1_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i5_1_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i6_1_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9571_2_lut (.I0(n10994), .I1(n971[28]), .I2(GND_net), .I3(GND_net), 
            .O(n1007));   // verilog/neopixel.v(22[26:36])
    defparam i9571_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 sub_14_inv_0_i25_1_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i743_3_lut (.I0(n1009), .I1(n1070[26]), .I2(n1037), 
            .I3(GND_net), .O(n1108));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i741_3_lut (.I0(n1007), .I1(n1070[28]), .I2(n1037), 
            .I3(GND_net), .O(n1106));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i808_3_lut (.I0(n1106), .I1(n1169[28]), .I2(n1136), 
            .I3(GND_net), .O(n1205));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i808_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i7_1_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i810_3_lut (.I0(n1108), .I1(n1169[26]), .I2(n1136), 
            .I3(GND_net), .O(n1207));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i810_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i26_1_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i27_1_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i675_3_lut (.I0(n7082), .I1(n971[27]), .I2(n10994), 
            .I3(GND_net), .O(n1008));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i675_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sub_14_inv_0_i8_1_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i28_1_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1212_3_lut (.I0(n1702), .I1(n1763[26]), .I2(n1730), 
            .I3(GND_net), .O(n1801));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1212_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_937_5_lut (.I0(GND_net), .I1(n1307), .I2(VCC_net), 
            .I3(n10575), .O(n1367[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_18 (.CI(n10406), .I0(bit_ctr[16]), .I1(GND_net), .CO(n10407));
    SB_CARRY mod_5_add_937_5 (.CI(n10575), .I0(n1307), .I1(VCC_net), .CO(n10576));
    SB_CARRY mod_5_add_803_2 (.CI(VCC_net), .I0(bit_ctr[24]), .I1(GND_net), 
            .CO(n10461));
    SB_LUT4 sub_14_add_2_18_lut (.I0(n12951), .I1(timer[16]), .I2(n1[16]), 
            .I3(n10437), .O(n12953)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_CARRY timer_1102_add_4_8 (.CI(n10484), .I0(GND_net), .I1(timer[6]), 
            .CO(n10485));
    SB_LUT4 mod_5_add_937_4_lut (.I0(GND_net), .I1(n1308), .I2(VCC_net), 
            .I3(n10574), .O(n1367[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_18 (.CI(n10437), .I0(timer[16]), .I1(n1[16]), 
            .CO(n10438));
    SB_LUT4 mod_5_add_1205_12_lut (.I0(GND_net), .I1(n1700), .I2(VCC_net), 
            .I3(n10624), .O(n1763[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_12 (.CI(n10624), .I0(n1700), .I1(VCC_net), 
            .CO(n10625));
    SB_LUT4 mod_5_add_1205_11_lut (.I0(GND_net), .I1(n1701), .I2(VCC_net), 
            .I3(n10623), .O(n1763[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_11 (.CI(n10623), .I0(n1701), .I1(VCC_net), 
            .CO(n10624));
    SB_LUT4 mod_5_add_1205_10_lut (.I0(GND_net), .I1(n1702), .I2(VCC_net), 
            .I3(n10622), .O(n1763[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_10 (.CI(n10622), .I0(n1702), .I1(VCC_net), 
            .CO(n10623));
    SB_LUT4 mod_5_add_1205_9_lut (.I0(GND_net), .I1(n1703), .I2(VCC_net), 
            .I3(n10621), .O(n1763[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(timer[31]), 
            .I3(n10509), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(timer[30]), 
            .I3(n10508), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_31_lut (.I0(GND_net), .I1(bit_ctr[29]), .I2(GND_net), 
            .I3(n10419), .O(n255[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_17_lut (.I0(GND_net), .I1(bit_ctr[15]), .I2(GND_net), 
            .I3(n10405), .O(n255[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_32 (.CI(n10508), .I0(GND_net), .I1(timer[30]), 
            .CO(n10509));
    SB_DFFESR bit_ctr__i9 (.Q(bit_ctr[9]), .C(CLK_c), .E(n7230), .D(n255[9]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 add_21_10_lut (.I0(GND_net), .I1(bit_ctr[8]), .I2(GND_net), 
            .I3(n10398), .O(n255[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_18_lut (.I0(n2094), .I1(n2094), .I2(n2126), 
            .I3(n10688), .O(n2193)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_18_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1473_18 (.CI(n10688), .I0(n2094), .I1(n2126), .CO(n10689));
    SB_LUT4 mod_5_i2103_3_lut (.I0(n3009), .I1(n3050[6]), .I2(n3017), 
            .I3(GND_net), .O(n3108));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2093_3_lut (.I0(n2999), .I1(n3050[16]), .I2(n3017), 
            .I3(GND_net), .O(n3098));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2093_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2092_3_lut (.I0(n2998), .I1(n3050[17]), .I2(n3017), 
            .I3(GND_net), .O(n3097));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2092_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2101_3_lut (.I0(n3007), .I1(n3050[8]), .I2(n3017), 
            .I3(GND_net), .O(n3106));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1473_17_lut (.I0(n2095), .I1(n2095), .I2(n2126), 
            .I3(n10687), .O(n2194)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i3_3_lut_adj_82 (.I0(bit_ctr[18]), .I1(n1702), .I2(n1709), 
            .I3(GND_net), .O(n16_adj_672));   // verilog/neopixel.v(22[26:36])
    defparam i3_3_lut_adj_82.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_i1211_3_lut (.I0(n1701), .I1(n1763[27]), .I2(n1730), 
            .I3(GND_net), .O(n1800));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1211_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i875_3_lut (.I0(n1205), .I1(n1268[28]), .I2(n1235), 
            .I3(GND_net), .O(n1304));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i875_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2098_3_lut (.I0(n3004), .I1(n3050[11]), .I2(n3017), 
            .I3(GND_net), .O(n3103));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2098_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2027_3_lut (.I0(n2901), .I1(n2951[15]), .I2(n2918), 
            .I3(GND_net), .O(n3000));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1146_3_lut (.I0(n1604), .I1(n1664[25]), .I2(n1631), 
            .I3(GND_net), .O(n1703));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2079_3_lut (.I0(n2985), .I1(n3050[30]), .I2(n3017), 
            .I3(GND_net), .O(n3084));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2079_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2094_3_lut (.I0(n3000), .I1(n3050[15]), .I2(n3017), 
            .I3(GND_net), .O(n3099));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2094_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2087_3_lut (.I0(n2993), .I1(n3050[22]), .I2(n3017), 
            .I3(GND_net), .O(n3092));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2086_3_lut (.I0(n2992), .I1(n3050[23]), .I2(n3017), 
            .I3(GND_net), .O(n3091));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2086_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_2_lut (.I0(GND_net), .I1(bit_ctr[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n255[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2030_3_lut (.I0(n2904), .I1(n2951[12]), .I2(n2918), 
            .I3(GND_net), .O(n3003));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2104_3_lut (.I0(bit_ctr[5]), .I1(n3050[5]), .I2(n3017), 
            .I3(GND_net), .O(n3109));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2104_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_6 (.CI(n10394), .I0(bit_ctr[4]), .I1(GND_net), .CO(n10395));
    SB_LUT4 mod_5_i2097_3_lut (.I0(n3003), .I1(n3050[12]), .I2(n3017), 
            .I3(GND_net), .O(n3102));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2085_3_lut (.I0(n2991), .I1(n3050[24]), .I2(n3017), 
            .I3(GND_net), .O(n3090));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2085_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2099_3_lut (.I0(n3005), .I1(n3050[10]), .I2(n3017), 
            .I3(GND_net), .O(n3104));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2099_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2084_3_lut (.I0(n2990), .I1(n3050[25]), .I2(n3017), 
            .I3(GND_net), .O(n3089));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2084_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i942_3_lut (.I0(n1304), .I1(n1367[28]), .I2(n1334), 
            .I3(GND_net), .O(n1403));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i807_3_lut (.I0(n1105), .I1(n1169[29]), .I2(n1136), 
            .I3(GND_net), .O(n1204));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i874_3_lut (.I0(n1204), .I1(n1268[29]), .I2(n1235), 
            .I3(GND_net), .O(n1303));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i874_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_10 (.CI(n10398), .I0(bit_ctr[8]), .I1(GND_net), .CO(n10399));
    SB_LUT4 mod_5_i877_3_lut (.I0(n1207), .I1(n1268[26]), .I2(n1235), 
            .I3(GND_net), .O(n1306));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i941_3_lut (.I0(n1303), .I1(n1367[29]), .I2(n1334), 
            .I3(GND_net), .O(n1402));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2083_3_lut (.I0(n2989), .I1(n3050[26]), .I2(n3017), 
            .I3(GND_net), .O(n3088));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2083_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2081_3_lut (.I0(n2987), .I1(n3050[28]), .I2(n3017), 
            .I3(GND_net), .O(n3086));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2081_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2096_3_lut (.I0(n3002), .I1(n3050[13]), .I2(n3017), 
            .I3(GND_net), .O(n3101));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2096_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2082_3_lut (.I0(n2988), .I1(n3050[27]), .I2(n3017), 
            .I3(GND_net), .O(n3087));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2082_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2080_3_lut (.I0(n2986), .I1(n3050[29]), .I2(n3017), 
            .I3(GND_net), .O(n3085));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2080_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2095_3_lut (.I0(n3001), .I1(n3050[14]), .I2(n3017), 
            .I3(GND_net), .O(n3100));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2095_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2090_3_lut (.I0(n2996), .I1(n3050[19]), .I2(n3017), 
            .I3(GND_net), .O(n3095));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2090_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2102_3_lut (.I0(n3008), .I1(n3050[7]), .I2(n3017), 
            .I3(GND_net), .O(n3107));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2102_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_17 (.CI(n10405), .I0(bit_ctr[15]), .I1(GND_net), .CO(n10406));
    SB_LUT4 mod_5_i2100_3_lut (.I0(n3006), .I1(n3050[9]), .I2(n3017), 
            .I3(GND_net), .O(n3105));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2100_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1473_17 (.CI(n10687), .I0(n2095), .I1(n2126), .CO(n10688));
    SB_CARRY add_21_31 (.CI(n10419), .I0(bit_ctr[29]), .I1(GND_net), .CO(n10420));
    SB_LUT4 mod_5_i2034_3_lut (.I0(n2908), .I1(n2951[8]), .I2(n2918), 
            .I3(GND_net), .O(n3007));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9505_3_lut (.I0(n2806), .I1(n2852[11]), .I2(n2819), .I3(GND_net), 
            .O(n2905));   // verilog/neopixel.v(22[26:36])
    defparam i9505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1151_3_lut (.I0(n1609), .I1(n1664[20]), .I2(n1631), 
            .I3(GND_net), .O(n1708));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1151_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9_4_lut_adj_83 (.I0(n1706), .I1(n1707), .I2(n1701), .I3(n1705), 
            .O(n22_adj_673));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_83.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1143_3_lut (.I0(n1601), .I1(n1664[28]), .I2(n1631), 
            .I3(GND_net), .O(n1700));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1143_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9506_3_lut (.I0(n2905), .I1(n2951[11]), .I2(n2918), .I3(GND_net), 
            .O(n3004));   // verilog/neopixel.v(22[26:36])
    defparam i9506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2018_3_lut (.I0(n2892), .I1(n2951[24]), .I2(n2918), 
            .I3(GND_net), .O(n2991));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2016_3_lut (.I0(n2890), .I1(n2951[26]), .I2(n2918), 
            .I3(GND_net), .O(n2989));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2017_3_lut (.I0(n2891), .I1(n2951[25]), .I2(n2918), 
            .I3(GND_net), .O(n2990));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2015_3_lut (.I0(n2889), .I1(n2951[27]), .I2(n2918), 
            .I3(GND_net), .O(n2988));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2023_3_lut (.I0(n2897), .I1(n2951[19]), .I2(n2918), 
            .I3(GND_net), .O(n2996));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2023_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2026_3_lut (.I0(n2900), .I1(n2951[16]), .I2(n2918), 
            .I3(GND_net), .O(n2999));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2035_3_lut (.I0(n2909), .I1(n2951[7]), .I2(n2918), 
            .I3(GND_net), .O(n3008));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2028_3_lut (.I0(n2902), .I1(n2951[14]), .I2(n2918), 
            .I3(GND_net), .O(n3001));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2028_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2021_3_lut (.I0(n2895), .I1(n2951[21]), .I2(n2918), 
            .I3(GND_net), .O(n2994));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2021_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2020_3_lut (.I0(n2894), .I1(n2951[22]), .I2(n2918), 
            .I3(GND_net), .O(n2993));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2020_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2029_3_lut (.I0(n2903), .I1(n2951[13]), .I2(n2918), 
            .I3(GND_net), .O(n3002));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2019_3_lut (.I0(n2893), .I1(n2951[23]), .I2(n2918), 
            .I3(GND_net), .O(n2992));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2014_3_lut (.I0(n2888), .I1(n2951[28]), .I2(n2918), 
            .I3(GND_net), .O(n2987));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2013_3_lut (.I0(n2887), .I1(n2951[29]), .I2(n2918), 
            .I3(GND_net), .O(n2986));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2012_3_lut (.I0(n2886), .I1(n2951[30]), .I2(n2918), 
            .I3(GND_net), .O(n2985));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2036_3_lut (.I0(bit_ctr[6]), .I1(n2951[6]), .I2(n2918), 
            .I3(GND_net), .O(n3009));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1959_3_lut (.I0(n2801), .I1(n2852[16]), .I2(n2819), 
            .I3(GND_net), .O(n2900));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1142_3_lut (.I0(n1600), .I1(n1664[29]), .I2(n1631), 
            .I3(GND_net), .O(n1699));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1142_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1949_3_lut (.I0(n2791), .I1(n2852[26]), .I2(n2819), 
            .I3(GND_net), .O(n2890));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1947_3_lut (.I0(n2789), .I1(n2852[28]), .I2(n2819), 
            .I3(GND_net), .O(n2888));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1948_3_lut (.I0(n2790), .I1(n2852[27]), .I2(n2819), 
            .I3(GND_net), .O(n2889));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1946_3_lut (.I0(n2788), .I1(n2852[29]), .I2(n2819), 
            .I3(GND_net), .O(n2887));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1967_3_lut (.I0(n2809), .I1(n2852[8]), .I2(n2819), 
            .I3(GND_net), .O(n2908));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1960_3_lut (.I0(n2802), .I1(n2852[15]), .I2(n2819), 
            .I3(GND_net), .O(n2901));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1957_3_lut (.I0(n2799), .I1(n2852[18]), .I2(n2819), 
            .I3(GND_net), .O(n2898));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1958_3_lut (.I0(n2800), .I1(n2852[17]), .I2(n2819), 
            .I3(GND_net), .O(n2899));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1958_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1954_3_lut (.I0(n2796), .I1(n2852[21]), .I2(n2819), 
            .I3(GND_net), .O(n2895));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1954_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1953_3_lut (.I0(n2795), .I1(n2852[22]), .I2(n2819), 
            .I3(GND_net), .O(n2894));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1951_3_lut (.I0(n2793), .I1(n2852[24]), .I2(n2819), 
            .I3(GND_net), .O(n2892));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1951_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1952_3_lut (.I0(n2794), .I1(n2852[23]), .I2(n2819), 
            .I3(GND_net), .O(n2893));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1952_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1950_3_lut (.I0(n2792), .I1(n2852[25]), .I2(n2819), 
            .I3(GND_net), .O(n2891));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1950_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1956_3_lut (.I0(n2798), .I1(n2852[19]), .I2(n2819), 
            .I3(GND_net), .O(n2897));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1956_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1966_3_lut (.I0(n2808), .I1(n2852[9]), .I2(n2819), 
            .I3(GND_net), .O(n2907));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1962_3_lut (.I0(n2804), .I1(n2852[13]), .I2(n2819), 
            .I3(GND_net), .O(n2903));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1962_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_2 (.CI(VCC_net), .I0(bit_ctr[0]), .I1(GND_net), .CO(n10391));
    SB_LUT4 mod_5_i1963_3_lut (.I0(n2805), .I1(n2852[12]), .I2(n2819), 
            .I3(GND_net), .O(n2904));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1945_3_lut (.I0(n2787), .I1(n2852[30]), .I2(n2819), 
            .I3(GND_net), .O(n2886));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1961_3_lut (.I0(n2803), .I1(n2852[14]), .I2(n2819), 
            .I3(GND_net), .O(n2902));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1968_3_lut (.I0(bit_ctr[7]), .I1(n2852[7]), .I2(n2819), 
            .I3(GND_net), .O(n2909));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1008_3_lut (.I0(n1402), .I1(n1466[29]), .I2(n1433), 
            .I3(GND_net), .O(n1501));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1008_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1955_3_lut (.I0(n2797), .I1(n2852[20]), .I2(n2819), 
            .I3(GND_net), .O(n2896));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_3_lut_adj_84 (.I0(bit_ctr[6]), .I1(n2896), .I2(n2909), 
            .I3(GND_net), .O(n32_adj_674));
    defparam i7_3_lut_adj_84.LUT_INIT = 16'hecec;
    SB_LUT4 i17_4_lut_adj_85 (.I0(n2898), .I1(n2906), .I2(n2901), .I3(n2908), 
            .O(n42_adj_675));
    defparam i17_4_lut_adj_85.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_3_lut (.I0(n2902), .I1(n2886), .I2(n2885), .I3(GND_net), 
            .O(n38_adj_676));
    defparam i13_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i18_4_lut_adj_86 (.I0(n2904), .I1(n2903), .I2(n2907), .I3(n2897), 
            .O(n43_adj_677));
    defparam i18_4_lut_adj_86.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_87 (.I0(n2891), .I1(n2893), .I2(n2892), .I3(n2894), 
            .O(n40_adj_678));
    defparam i15_4_lut_adj_87.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut_adj_88 (.I0(n2895), .I1(n42_adj_675), .I2(n32_adj_674), 
            .I3(n2899), .O(n46));
    defparam i21_4_lut_adj_88.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_3_lut_adj_89 (.I0(n1603), .I1(bit_ctr[19]), .I2(n1609), 
            .I3(GND_net), .O(n16_adj_646));   // verilog/neopixel.v(22[26:36])
    defparam i4_3_lut_adj_89.LUT_INIT = 16'heaea;
    SB_LUT4 i14_4_lut_adj_90 (.I0(n2887), .I1(n2889), .I2(n2888), .I3(n2890), 
            .O(n39_adj_679));
    defparam i14_4_lut_adj_90.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut_adj_91 (.I0(n1704), .I1(n1698), .I2(n1697), .I3(GND_net), 
            .O(n20_adj_680));   // verilog/neopixel.v(22[26:36])
    defparam i7_3_lut_adj_91.LUT_INIT = 16'hfefe;
    SB_LUT4 i22_4_lut_adj_92 (.I0(n43_adj_677), .I1(n2900), .I2(n38_adj_676), 
            .I3(n2905), .O(n47));
    defparam i22_4_lut_adj_92.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_4_lut (.I0(n47), .I1(n39_adj_679), .I2(n46), .I3(n40_adj_678), 
            .O(n2918));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1965_3_lut (.I0(n2807), .I1(n2852[10]), .I2(n2819), 
            .I3(GND_net), .O(n2906));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_5_lut (.I0(GND_net), .I1(bit_ctr[3]), .I2(GND_net), 
            .I3(n10393), .O(n255[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_5 (.CI(n10393), .I0(bit_ctr[3]), .I1(GND_net), .CO(n10394));
    SB_LUT4 mod_5_add_1875_10_lut (.I0(GND_net), .I1(n2702), .I2(VCC_net), 
            .I3(n10797), .O(n2753[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1009_3_lut (.I0(n1403), .I1(n1466[28]), .I2(n1433), 
            .I3(GND_net), .O(n1502));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9502_3_lut (.I0(n2898), .I1(n2951[18]), .I2(n2918), .I3(GND_net), 
            .O(n2997));   // verilog/neopixel.v(22[26:36])
    defparam i9502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2032_3_lut (.I0(n2906), .I1(n2951[10]), .I2(n2918), 
            .I3(GND_net), .O(n3005));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2032_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1205_9 (.CI(n10621), .I0(n1703), .I1(VCC_net), 
            .CO(n10622));
    SB_LUT4 mod_5_i1141_3_lut (.I0(n1599), .I1(n1664[30]), .I2(n1631), 
            .I3(GND_net), .O(n1698));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9504_3_lut (.I0(n2899), .I1(n2951[17]), .I2(n2918), .I3(GND_net), 
            .O(n2998));   // verilog/neopixel.v(22[26:36])
    defparam i9504_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1875_10 (.CI(n10797), .I0(n2702), .I1(VCC_net), 
            .CO(n10798));
    SB_LUT4 mod_5_add_1741_2_lut (.I0(GND_net), .I1(bit_ctr[10]), .I2(GND_net), 
            .I3(VCC_net), .O(n2555[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_2 (.CI(VCC_net), .I0(bit_ctr[10]), .I1(GND_net), 
            .CO(n10747));
    SB_LUT4 mod_5_add_1473_16_lut (.I0(n2096), .I1(n2096), .I2(n2126), 
            .I3(n10686), .O(n2195)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_16_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_8_lut (.I0(GND_net), .I1(n1704), .I2(VCC_net), 
            .I3(n10620), .O(n1763[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_17_lut (.I0(n12949), .I1(timer[15]), .I2(n1[15]), 
            .I3(n10436), .O(n12951)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1473_16 (.CI(n10686), .I0(n2096), .I1(n2126), .CO(n10687));
    SB_CARRY mod_5_add_1205_8 (.CI(n10620), .I0(n1704), .I1(VCC_net), 
            .CO(n10621));
    SB_LUT4 mod_5_add_1875_9_lut (.I0(GND_net), .I1(n2703), .I2(VCC_net), 
            .I3(n10796), .O(n2753[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_22_lut (.I0(n2423), .I1(n2390), .I2(VCC_net), 
            .I3(n10746), .O(n2489)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_22_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1674_21_lut (.I0(GND_net), .I1(n2391), .I2(VCC_net), 
            .I3(n10745), .O(n2456[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_15_lut (.I0(n2097), .I1(n2097), .I2(n2126), 
            .I3(n10685), .O(n2196)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_15_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_7_lut (.I0(GND_net), .I1(n1705), .I2(VCC_net), 
            .I3(n10619), .O(n1763[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(timer[5]), 
            .I3(n10483), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_15 (.CI(n10685), .I0(n2097), .I1(n2126), .CO(n10686));
    SB_CARRY mod_5_add_1205_7 (.CI(n10619), .I0(n1705), .I1(VCC_net), 
            .CO(n10620));
    SB_LUT4 mod_5_add_870_10_lut (.I0(n1235), .I1(n1202), .I2(VCC_net), 
            .I3(n10460), .O(n1301)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY mod_5_add_1875_9 (.CI(n10796), .I0(n2703), .I1(VCC_net), 
            .CO(n10797));
    SB_LUT4 mod_5_add_1875_8_lut (.I0(GND_net), .I1(n2704), .I2(VCC_net), 
            .I3(n10795), .O(n2753[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9508_3_lut (.I0(n2907), .I1(n2951[9]), .I2(n2918), .I3(GND_net), 
            .O(n3006));   // verilog/neopixel.v(22[26:36])
    defparam i9508_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1875_8 (.CI(n10795), .I0(n2704), .I1(VCC_net), 
            .CO(n10796));
    SB_CARRY mod_5_add_1674_21 (.CI(n10745), .I0(n2391), .I1(VCC_net), 
            .CO(n10746));
    SB_LUT4 mod_5_add_1473_14_lut (.I0(n2098), .I1(n2098), .I2(n2126), 
            .I3(n10684), .O(n2197)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_14_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1473_14 (.CI(n10684), .I0(n2098), .I1(n2126), .CO(n10685));
    SB_LUT4 mod_5_add_1674_20_lut (.I0(GND_net), .I1(n2392), .I2(VCC_net), 
            .I3(n10744), .O(n2456[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_9_lut (.I0(GND_net), .I1(bit_ctr[7]), .I2(GND_net), 
            .I3(n10397), .O(n255[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_6_lut (.I0(GND_net), .I1(n1706), .I2(VCC_net), 
            .I3(n10618), .O(n1763[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_7_lut (.I0(GND_net), .I1(n2705), .I2(VCC_net), 
            .I3(n10794), .O(n2753[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_6 (.CI(n10618), .I0(n1706), .I1(VCC_net), 
            .CO(n10619));
    SB_CARRY add_21_9 (.CI(n10397), .I0(bit_ctr[7]), .I1(GND_net), .CO(n10398));
    SB_CARRY mod_5_add_1875_7 (.CI(n10794), .I0(n2705), .I1(VCC_net), 
            .CO(n10795));
    SB_CARRY mod_5_add_1674_20 (.CI(n10744), .I0(n2392), .I1(VCC_net), 
            .CO(n10745));
    SB_LUT4 mod_5_add_1473_13_lut (.I0(n2099), .I1(n2099), .I2(n2126), 
            .I3(n10683), .O(n2198)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1473_13 (.CI(n10683), .I0(n2099), .I1(n2126), .CO(n10684));
    SB_LUT4 mod_5_add_1674_19_lut (.I0(GND_net), .I1(n2393), .I2(VCC_net), 
            .I3(n10743), .O(n2456[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_5_lut (.I0(GND_net), .I1(n1707), .I2(VCC_net), 
            .I3(n10617), .O(n1763[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_5 (.CI(n10617), .I0(n1707), .I1(VCC_net), 
            .CO(n10618));
    SB_LUT4 mod_5_add_1205_4_lut (.I0(GND_net), .I1(n1708), .I2(VCC_net), 
            .I3(n10616), .O(n1763[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1076_3_lut (.I0(n1502), .I1(n1565[28]), .I2(n1532), 
            .I3(GND_net), .O(n1601));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1076_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_937_4 (.CI(n10574), .I0(n1308), .I1(VCC_net), .CO(n10575));
    SB_LUT4 mod_5_add_1875_6_lut (.I0(GND_net), .I1(n2706), .I2(VCC_net), 
            .I3(n10793), .O(n2753[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_19 (.CI(n10743), .I0(n2393), .I1(VCC_net), 
            .CO(n10744));
    SB_LUT4 mod_5_add_1473_12_lut (.I0(n2100), .I1(n2100), .I2(n2126), 
            .I3(n10682), .O(n2199)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1205_4 (.CI(n10616), .I0(n1708), .I1(VCC_net), 
            .CO(n10617));
    SB_LUT4 mod_5_add_1674_18_lut (.I0(GND_net), .I1(n2394), .I2(VCC_net), 
            .I3(n10742), .O(n2456[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_12 (.CI(n10682), .I0(n2100), .I1(n2126), .CO(n10683));
    SB_LUT4 mod_5_add_1473_11_lut (.I0(n2101), .I1(n2101), .I2(n2126), 
            .I3(n10681), .O(n2200)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_3_lut (.I0(GND_net), .I1(n1709), .I2(GND_net), 
            .I3(n10615), .O(n1763[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_6 (.CI(n10793), .I0(n2706), .I1(VCC_net), 
            .CO(n10794));
    SB_CARRY mod_5_add_1674_18 (.CI(n10742), .I0(n2394), .I1(VCC_net), 
            .CO(n10743));
    SB_CARRY mod_5_add_1473_11 (.CI(n10681), .I0(n2101), .I1(n2126), .CO(n10682));
    SB_LUT4 mod_5_add_937_3_lut (.I0(GND_net), .I1(n1309), .I2(GND_net), 
            .I3(n10573), .O(n1367[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(timer[29]), 
            .I3(n10507), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_7 (.CI(n10483), .I0(GND_net), .I1(timer[5]), 
            .CO(n10484));
    SB_CARRY mod_5_add_1205_3 (.CI(n10615), .I0(n1709), .I1(GND_net), 
            .CO(n10616));
    SB_CARRY mod_5_add_937_3 (.CI(n10573), .I0(n1309), .I1(GND_net), .CO(n10574));
    SB_LUT4 add_21_30_lut (.I0(GND_net), .I1(bit_ctr[28]), .I2(GND_net), 
            .I3(n10418), .O(n255[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_10_lut (.I0(n2102), .I1(n2102), .I2(n2126), 
            .I3(n10680), .O(n2201)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_2_lut (.I0(GND_net), .I1(bit_ctr[18]), .I2(GND_net), 
            .I3(VCC_net), .O(n1763[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_937_2_lut (.I0(GND_net), .I1(bit_ctr[22]), .I2(GND_net), 
            .I3(VCC_net), .O(n1367[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_9_lut (.I0(GND_net), .I1(n1203), .I2(VCC_net), 
            .I3(n10459), .O(n1268[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_17 (.CI(n10436), .I0(timer[15]), .I1(n1[15]), 
            .CO(n10437));
    SB_LUT4 mod_5_add_1674_17_lut (.I0(GND_net), .I1(n2395), .I2(VCC_net), 
            .I3(n10741), .O(n2456[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_5_lut (.I0(GND_net), .I1(n2707), .I2(VCC_net), 
            .I3(n10792), .O(n2753[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_17 (.CI(n10741), .I0(n2395), .I1(VCC_net), 
            .CO(n10742));
    SB_LUT4 add_21_16_lut (.I0(GND_net), .I1(bit_ctr[14]), .I2(GND_net), 
            .I3(n10404), .O(n255[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_10 (.CI(n10680), .I0(n2102), .I1(n2126), .CO(n10681));
    SB_LUT4 i18_4_lut_adj_93 (.I0(n3006), .I1(n2998), .I2(n3005), .I3(n2997), 
            .O(n44_adj_681));
    defparam i18_4_lut_adj_93.LUT_INIT = 16'hfffe;
    SB_CARRY timer_1102_add_4_31 (.CI(n10507), .I0(GND_net), .I1(timer[29]), 
            .CO(n10508));
    SB_CARRY add_21_30 (.CI(n10418), .I0(bit_ctr[28]), .I1(GND_net), .CO(n10419));
    SB_CARRY mod_5_add_937_2 (.CI(VCC_net), .I0(bit_ctr[22]), .I1(GND_net), 
            .CO(n10573));
    SB_LUT4 mod_5_add_1473_9_lut (.I0(n2103), .I1(n2103), .I2(n2126), 
            .I3(n10679), .O(n2202)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_14_add_2_16_lut (.I0(n12947), .I1(timer[14]), .I2(n1[14]), 
            .I3(n10435), .O(n12949)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i7_3_lut_adj_94 (.I0(n2995), .I1(bit_ctr[5]), .I2(n3009), 
            .I3(GND_net), .O(n33_adj_682));
    defparam i7_3_lut_adj_94.LUT_INIT = 16'heaea;
    SB_CARRY sub_14_add_2_16 (.CI(n10435), .I0(timer[14]), .I1(n1[14]), 
            .CO(n10436));
    SB_LUT4 timer_1102_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(timer[28]), 
            .I3(n10506), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(timer[4]), 
            .I3(n10482), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_4_lut_adj_95 (.I0(n2985), .I1(n2986), .I2(n2984), .I3(n2987), 
            .O(n40_adj_683));
    defparam i14_4_lut_adj_95.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_96 (.I0(n3001), .I1(n3008), .I2(n2999), .I3(n2996), 
            .O(n45));
    defparam i19_4_lut_adj_96.LUT_INIT = 16'hfffe;
    SB_LUT4 add_21_29_lut (.I0(GND_net), .I1(bit_ctr[27]), .I2(GND_net), 
            .I3(n10417), .O(n255[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_9 (.CI(n10679), .I0(n2103), .I1(n2126), .CO(n10680));
    SB_LUT4 i16_4_lut_adj_97 (.I0(n2992), .I1(n3002), .I2(n2993), .I3(n2994), 
            .O(n42_adj_684));
    defparam i16_4_lut_adj_97.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut_adj_98 (.I0(n33_adj_682), .I1(n44_adj_681), .I2(n3000), 
            .I3(n3003), .O(n48));
    defparam i22_4_lut_adj_98.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1205_2 (.CI(VCC_net), .I0(bit_ctr[18]), .I1(GND_net), 
            .CO(n10615));
    SB_CARRY timer_1102_add_4_6 (.CI(n10482), .I0(GND_net), .I1(timer[4]), 
            .CO(n10483));
    SB_CARRY mod_5_add_870_9 (.CI(n10459), .I0(n1203), .I1(VCC_net), .CO(n10460));
    SB_LUT4 mod_5_add_870_8_lut (.I0(GND_net), .I1(n1204), .I2(VCC_net), 
            .I3(n10458), .O(n1268[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_15_lut (.I0(n12945), .I1(timer[13]), .I2(n1[13]), 
            .I3(n10434), .O(n12947)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_CARRY timer_1102_add_4_30 (.CI(n10506), .I0(GND_net), .I1(timer[28]), 
            .CO(n10507));
    SB_LUT4 mod_5_add_1674_16_lut (.I0(GND_net), .I1(n2396), .I2(VCC_net), 
            .I3(n10740), .O(n2456[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_5 (.CI(n10792), .I0(n2707), .I1(VCC_net), 
            .CO(n10793));
    SB_CARRY mod_5_add_1674_16 (.CI(n10740), .I0(n2396), .I1(VCC_net), 
            .CO(n10741));
    SB_LUT4 mod_5_add_1473_8_lut (.I0(n2104), .I1(n2104), .I2(n2126), 
            .I3(n10678), .O(n2203)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1473_8 (.CI(n10678), .I0(n2104), .I1(n2126), .CO(n10679));
    SB_LUT4 timer_1102_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(timer[27]), 
            .I3(n10505), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1147_3_lut (.I0(n1605), .I1(n1664[24]), .I2(n1631), 
            .I3(GND_net), .O(n1704));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1147_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_870_8 (.CI(n10458), .I0(n1204), .I1(VCC_net), .CO(n10459));
    SB_LUT4 mod_5_add_1875_4_lut (.I0(GND_net), .I1(n2708), .I2(VCC_net), 
            .I3(n10791), .O(n2753[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_7_lut (.I0(n2105), .I1(n2105), .I2(n2126), 
            .I3(n10677), .O(n2204)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_7_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY timer_1102_add_4_29 (.CI(n10505), .I0(GND_net), .I1(timer[27]), 
            .CO(n10506));
    SB_CARRY mod_5_add_1473_7 (.CI(n10677), .I0(n2105), .I1(n2126), .CO(n10678));
    SB_LUT4 mod_5_add_1674_15_lut (.I0(GND_net), .I1(n2397), .I2(VCC_net), 
            .I3(n10739), .O(n2456[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_99 (.I0(n1699), .I1(n22_adj_673), .I2(n16_adj_672), 
            .I3(n1700), .O(n24_adj_685));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_99.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1674_15 (.CI(n10739), .I0(n2397), .I1(VCC_net), 
            .CO(n10740));
    SB_LUT4 mod_5_i1281_3_lut (.I0(n1803), .I1(n1862[24]), .I2(n1829), 
            .I3(GND_net), .O(n1902));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1281_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_870_7_lut (.I0(GND_net), .I1(n1205), .I2(VCC_net), 
            .I3(n10457), .O(n1268[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_6_lut (.I0(n2106), .I1(n2106), .I2(n2126), 
            .I3(n10676), .O(n2205)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_6_lut.LUT_INIT = 16'hCA3A;
    SB_DFFESR bit_ctr__i8 (.Q(bit_ctr[8]), .C(CLK_c), .E(n7230), .D(n255[8]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 add_21_4_lut (.I0(GND_net), .I1(bit_ctr[2]), .I2(GND_net), 
            .I3(n10392), .O(n255[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_6 (.CI(n10676), .I0(n2106), .I1(n2126), .CO(n10677));
    SB_LUT4 mod_5_add_1674_14_lut (.I0(GND_net), .I1(n2398), .I2(VCC_net), 
            .I3(n10738), .O(n2456[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_4 (.CI(n10791), .I0(n2708), .I1(VCC_net), 
            .CO(n10792));
    SB_LUT4 i15_4_lut_adj_100 (.I0(n2988), .I1(n2990), .I2(n2989), .I3(n2991), 
            .O(n41_adj_686));
    defparam i15_4_lut_adj_100.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1674_14 (.CI(n10738), .I0(n2398), .I1(VCC_net), 
            .CO(n10739));
    SB_LUT4 mod_5_add_1875_3_lut (.I0(GND_net), .I1(n2709), .I2(GND_net), 
            .I3(n10790), .O(n2753[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i23_4_lut_adj_101 (.I0(n45), .I1(n3004), .I2(n40_adj_683), 
            .I3(n3007), .O(n49));
    defparam i23_4_lut_adj_101.LUT_INIT = 16'hfffe;
    SB_LUT4 i25_4_lut (.I0(n49), .I1(n41_adj_686), .I2(n48), .I3(n42_adj_684), 
            .O(n3017));
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_21_8_lut (.I0(GND_net), .I1(bit_ctr[6]), .I2(GND_net), 
            .I3(n10396), .O(n255[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(timer[26]), 
            .I3(n10504), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2022_3_lut (.I0(n2896), .I1(n2951[20]), .I2(n2918), 
            .I3(GND_net), .O(n2995));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2022_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2089_3_lut (.I0(n2995), .I1(n3050[20]), .I2(n3017), 
            .I3(GND_net), .O(n3094));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2089_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_16 (.CI(n10404), .I0(bit_ctr[14]), .I1(GND_net), .CO(n10405));
    SB_LUT4 mod_5_add_1473_5_lut (.I0(n2107), .I1(n2107), .I2(n2126), 
            .I3(n10675), .O(n2206)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1473_5 (.CI(n10675), .I0(n2107), .I1(n2126), .CO(n10676));
    SB_LUT4 mod_5_i2088_3_lut (.I0(n2994), .I1(n3050[21]), .I2(n3017), 
            .I3(GND_net), .O(n3093));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2088_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1473_4_lut (.I0(n2108), .I1(n2108), .I2(n2126), 
            .I3(n10674), .O(n2207)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i9_2_lut (.I0(n3093), .I1(n3094), .I2(GND_net), .I3(GND_net), 
            .O(n36_adj_687));
    defparam i9_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19_4_lut_adj_102 (.I0(n3105), .I1(n3107), .I2(n3095), .I3(n3100), 
            .O(n46_adj_688));
    defparam i19_4_lut_adj_102.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_103 (.I0(n3085), .I1(n3087), .I2(n3101), .I3(n3086), 
            .O(n42_adj_689));
    defparam i15_4_lut_adj_103.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1875_3 (.CI(n10790), .I0(n2709), .I1(GND_net), 
            .CO(n10791));
    SB_CARRY mod_5_add_1473_4 (.CI(n10674), .I0(n2108), .I1(n2126), .CO(n10675));
    SB_LUT4 timer_1102_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(timer[3]), 
            .I3(n10481), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_7 (.CI(n10457), .I0(n1205), .I1(VCC_net), .CO(n10458));
    SB_CARRY timer_1102_add_4_28 (.CI(n10504), .I0(GND_net), .I1(timer[26]), 
            .CO(n10505));
    SB_LUT4 i17_4_lut_adj_104 (.I0(n3088), .I1(n3089), .I2(n3104), .I3(n3090), 
            .O(n44_adj_690));
    defparam i17_4_lut_adj_104.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1674_13_lut (.I0(GND_net), .I1(n2399), .I2(VCC_net), 
            .I3(n10737), .O(n2456[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4_3_lut_adj_105 (.I0(bit_ctr[4]), .I1(n3102), .I2(n3109), 
            .I3(GND_net), .O(n31_adj_691));
    defparam i4_3_lut_adj_105.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_add_1473_3_lut (.I0(n2109), .I1(n2109), .I2(n13436), 
            .I3(n10673), .O(n2208)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY mod_5_add_1473_3 (.CI(n10673), .I0(n2109), .I1(n13436), .CO(n10674));
    SB_LUT4 i23_4_lut_adj_106 (.I0(n3091), .I1(n46_adj_688), .I2(n36_adj_687), 
            .I3(n3092), .O(n50));
    defparam i23_4_lut_adj_106.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut_adj_107 (.I0(n3099), .I1(n42_adj_689), .I2(n3084), 
            .I3(n3083), .O(n48_adj_692));
    defparam i21_4_lut_adj_107.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1138_14_lut (.I0(n1631), .I1(n1598), .I2(VCC_net), 
            .I3(n10614), .O(n1697)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i22_4_lut_adj_108 (.I0(n31_adj_691), .I1(n44_adj_690), .I2(n3103), 
            .I3(n3106), .O(n49_adj_693));
    defparam i22_4_lut_adj_108.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut_adj_109 (.I0(n3097), .I1(n3096), .I2(n3098), .I3(n3108), 
            .O(n47_adj_694));
    defparam i20_4_lut_adj_109.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1138_13_lut (.I0(GND_net), .I1(n1599), .I2(VCC_net), 
            .I3(n10613), .O(n1664[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_13 (.CI(n10613), .I0(n1599), .I1(VCC_net), 
            .CO(n10614));
    SB_LUT4 mod_5_add_870_6_lut (.I0(GND_net), .I1(n1206), .I2(VCC_net), 
            .I3(n10456), .O(n1268[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_12_lut (.I0(GND_net), .I1(n1600), .I2(VCC_net), 
            .I3(n10612), .O(n1664[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_15_lut (.I0(GND_net), .I1(bit_ctr[13]), .I2(GND_net), 
            .I3(n10403), .O(n255[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(timer[25]), 
            .I3(n10503), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i26_4_lut (.I0(n47_adj_694), .I1(n49_adj_693), .I2(n48_adj_692), 
            .I3(n50), .O(n3116));
    defparam i26_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1138_12 (.CI(n10612), .I0(n1600), .I1(VCC_net), 
            .CO(n10613));
    SB_CARRY mod_5_add_1674_13 (.CI(n10737), .I0(n2399), .I1(VCC_net), 
            .CO(n10738));
    SB_LUT4 mod_5_i2091_3_lut (.I0(n2997), .I1(n3050[18]), .I2(n3017), 
            .I3(GND_net), .O(n3096));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2091_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_12_lut (.I0(GND_net), .I1(n2400), .I2(VCC_net), 
            .I3(n10736), .O(n2456[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_11_lut (.I0(GND_net), .I1(n1601), .I2(VCC_net), 
            .I3(n10611), .O(n1664[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_27 (.CI(n10503), .I0(GND_net), .I1(timer[25]), 
            .CO(n10504));
    SB_LUT4 mod_5_add_1473_2_lut (.I0(bit_ctr[14]), .I1(bit_ctr[14]), .I2(n13436), 
            .I3(VCC_net), .O(n2209)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY timer_1102_add_4_5 (.CI(n10481), .I0(GND_net), .I1(timer[3]), 
            .CO(n10482));
    SB_LUT4 timer_1102_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(timer[2]), 
            .I3(n10480), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2158_3_lut (.I0(n3096), .I1(n3149[18]), .I2(n3116), 
            .I3(GND_net), .O(n37_adj_695));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2158_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1875_2_lut (.I0(GND_net), .I1(bit_ctr[8]), .I2(GND_net), 
            .I3(VCC_net), .O(n2753[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_12 (.CI(n10736), .I0(n2400), .I1(VCC_net), 
            .CO(n10737));
    SB_CARRY mod_5_add_1875_2 (.CI(VCC_net), .I0(bit_ctr[8]), .I1(GND_net), 
            .CO(n10790));
    SB_LUT4 mod_5_add_1808_24_lut (.I0(n2621), .I1(n2588), .I2(VCC_net), 
            .I3(n10789), .O(n2687)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1808_23_lut (.I0(GND_net), .I1(n2589), .I2(VCC_net), 
            .I3(n10788), .O(n2654[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2170_3_lut (.I0(n3108), .I1(n3149[6]), .I2(n3116), 
            .I3(GND_net), .O(n13_adj_696));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2170_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1808_23 (.CI(n10788), .I0(n2589), .I1(VCC_net), 
            .CO(n10789));
    SB_CARRY add_21_15 (.CI(n10403), .I0(bit_ctr[13]), .I1(GND_net), .CO(n10404));
    SB_LUT4 timer_1102_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(timer[24]), 
            .I3(n10502), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2162_3_lut (.I0(n3100), .I1(n3149[14]), .I2(n3116), 
            .I3(GND_net), .O(n29_adj_697));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2162_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1808_22_lut (.I0(GND_net), .I1(n2590), .I2(VCC_net), 
            .I3(n10787), .O(n2654[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_4 (.CI(n10480), .I0(GND_net), .I1(timer[2]), 
            .CO(n10481));
    SB_CARRY mod_5_add_870_6 (.CI(n10456), .I0(n1206), .I1(VCC_net), .CO(n10457));
    SB_LUT4 i12_4_lut_adj_110 (.I0(n1708), .I1(n24_adj_685), .I2(n20_adj_680), 
            .I3(n1703), .O(n1730));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1138_11 (.CI(n10611), .I0(n1601), .I1(VCC_net), 
            .CO(n10612));
    SB_LUT4 add_21_14_lut (.I0(GND_net), .I1(bit_ctr[12]), .I2(GND_net), 
            .I3(n10402), .O(n255[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_5_lut (.I0(GND_net), .I1(n1207), .I2(VCC_net), 
            .I3(n10455), .O(n1268[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2167_3_lut (.I0(n3105), .I1(n3149[9]), .I2(n3116), 
            .I3(GND_net), .O(n19_adj_698));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 timer_1102_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(timer[1]), 
            .I3(n10479), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2159_3_lut (.I0(n3097), .I1(n3149[17]), .I2(n3116), 
            .I3(GND_net), .O(n35_adj_699));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2159_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_15 (.CI(n10434), .I0(timer[13]), .I1(n1[13]), 
            .CO(n10435));
    SB_LUT4 mod_5_add_1674_11_lut (.I0(GND_net), .I1(n2401), .I2(VCC_net), 
            .I3(n10735), .O(n2456[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_26 (.CI(n10502), .I0(GND_net), .I1(timer[24]), 
            .CO(n10503));
    SB_LUT4 mod_5_add_1138_10_lut (.I0(GND_net), .I1(n1602), .I2(VCC_net), 
            .I3(n10610), .O(n1664[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_10 (.CI(n10610), .I0(n1602), .I1(VCC_net), 
            .CO(n10611));
    SB_LUT4 mod_5_i1220_3_lut (.I0(bit_ctr[18]), .I1(n1763[18]), .I2(n1730), 
            .I3(GND_net), .O(n1809));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1220_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_870_5 (.CI(n10455), .I0(n1207), .I1(VCC_net), .CO(n10456));
    SB_LUT4 timer_1102_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(timer[23]), 
            .I3(n10501), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_4_lut (.I0(GND_net), .I1(n1208), .I2(VCC_net), 
            .I3(n10454), .O(n1268[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_22 (.CI(n10787), .I0(n2590), .I1(VCC_net), 
            .CO(n10788));
    SB_LUT4 i1_4_lut_adj_111 (.I0(n3102), .I1(n37_adj_695), .I2(n3149[12]), 
            .I3(n3116), .O(n12333));
    defparam i1_4_lut_adj_111.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_870_4 (.CI(n10454), .I0(n1208), .I1(VCC_net), .CO(n10455));
    SB_LUT4 mod_5_add_1138_9_lut (.I0(GND_net), .I1(n1603), .I2(VCC_net), 
            .I3(n10609), .O(n1664[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_3 (.CI(n10479), .I0(GND_net), .I1(timer[1]), 
            .CO(n10480));
    SB_LUT4 i1_4_lut_adj_112 (.I0(n3106), .I1(n19_adj_698), .I2(n3149[8]), 
            .I3(n3116), .O(n12335));
    defparam i1_4_lut_adj_112.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_1674_11 (.CI(n10735), .I0(n2401), .I1(VCC_net), 
            .CO(n10736));
    SB_LUT4 sub_14_add_2_14_lut (.I0(one_wire_N_528[11]), .I1(timer[12]), 
            .I2(n1[12]), .I3(n10433), .O(n12945)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_14_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_1808_21_lut (.I0(GND_net), .I1(n2591), .I2(VCC_net), 
            .I3(n10786), .O(n2654[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(timer[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_113 (.I0(n3101), .I1(n35_adj_699), .I2(n3149[13]), 
            .I3(n3116), .O(n12337));
    defparam i1_4_lut_adj_113.LUT_INIT = 16'hfcee;
    SB_CARRY sub_14_add_2_14 (.CI(n10433), .I0(timer[12]), .I1(n1[12]), 
            .CO(n10434));
    SB_CARRY mod_5_add_1473_2 (.CI(VCC_net), .I0(bit_ctr[14]), .I1(n13436), 
            .CO(n10673));
    SB_CARRY add_21_29 (.CI(n10417), .I0(bit_ctr[27]), .I1(GND_net), .CO(n10418));
    SB_LUT4 mod_5_add_870_3_lut (.I0(GND_net), .I1(n1209), .I2(GND_net), 
            .I3(n10453), .O(n1268[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_28_lut (.I0(GND_net), .I1(bit_ctr[26]), .I2(GND_net), 
            .I3(n10416), .O(n255[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_14 (.CI(n10402), .I0(bit_ctr[12]), .I1(GND_net), .CO(n10403));
    SB_CARRY mod_5_add_1808_21 (.CI(n10786), .I0(n2591), .I1(VCC_net), 
            .CO(n10787));
    SB_LUT4 mod_5_i1148_3_lut (.I0(n1606), .I1(n1664[23]), .I2(n1631), 
            .I3(GND_net), .O(n1705));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1148_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_13_lut (.I0(GND_net), .I1(timer[11]), .I2(n1[11]), 
            .I3(n10432), .O(one_wire_N_528[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_18_lut (.I0(n2027), .I1(n1994), .I2(VCC_net), 
            .I3(n10672), .O(n2093)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_18_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1339_11_lut (.I0(n1901), .I1(n1901), .I2(n1928), 
            .I3(n10650), .O(n2000)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1406_17_lut (.I0(GND_net), .I1(n1995), .I2(VCC_net), 
            .I3(n10671), .O(n2060[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_25 (.CI(n10501), .I0(GND_net), .I1(timer[23]), 
            .CO(n10502));
    SB_CARRY mod_5_add_1138_9 (.CI(n10609), .I0(n1603), .I1(VCC_net), 
            .CO(n10610));
    SB_CARRY add_21_28 (.CI(n10416), .I0(bit_ctr[26]), .I1(GND_net), .CO(n10417));
    SB_CARRY mod_5_add_1406_17 (.CI(n10671), .I0(n1995), .I1(VCC_net), 
            .CO(n10672));
    SB_LUT4 mod_5_add_1138_8_lut (.I0(GND_net), .I1(n1604), .I2(VCC_net), 
            .I3(n10608), .O(n1664[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_3 (.CI(n10453), .I0(n1209), .I1(GND_net), .CO(n10454));
    SB_LUT4 mod_5_i1144_3_lut (.I0(n1602), .I1(n1664[27]), .I2(n1631), 
            .I3(GND_net), .O(n1701));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1144_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1406_16_lut (.I0(GND_net), .I1(n1996), .I2(VCC_net), 
            .I3(n10670), .O(n2060[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1102_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(timer[0]), 
            .CO(n10479));
    SB_LUT4 mod_5_add_1674_10_lut (.I0(GND_net), .I1(n2402), .I2(VCC_net), 
            .I3(n10734), .O(n2456[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_114 (.I0(n3109), .I1(n29_adj_697), .I2(n3149[5]), 
            .I3(n3116), .O(n12331));
    defparam i1_4_lut_adj_114.LUT_INIT = 16'hfcee;
    SB_LUT4 add_21_27_lut (.I0(GND_net), .I1(bit_ctr[25]), .I2(GND_net), 
            .I3(n10415), .O(n255[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_8 (.CI(n10608), .I0(n1604), .I1(VCC_net), 
            .CO(n10609));
    SB_LUT4 mod_5_add_1808_20_lut (.I0(GND_net), .I1(n2592), .I2(VCC_net), 
            .I3(n10785), .O(n2654[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(timer[22]), 
            .I3(n10500), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_7_lut (.I0(GND_net), .I1(n1605), .I2(VCC_net), 
            .I3(n10607), .O(n1664[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_669_7_lut (.I0(n13425), .I1(n13064), .I2(VCC_net), 
            .I3(n10478), .O(n4_adj_596)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY mod_5_add_1406_16 (.CI(n10670), .I0(n1996), .I1(VCC_net), 
            .CO(n10671));
    SB_CARRY mod_5_add_1808_20 (.CI(n10785), .I0(n2592), .I1(VCC_net), 
            .CO(n10786));
    SB_LUT4 mod_5_add_870_2_lut (.I0(GND_net), .I1(bit_ctr[23]), .I2(GND_net), 
            .I3(VCC_net), .O(n1268[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2165_3_lut (.I0(n3103), .I1(n3149[11]), .I2(n3116), 
            .I3(GND_net), .O(n23_adj_700));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1406_15_lut (.I0(GND_net), .I1(n1997), .I2(VCC_net), 
            .I3(n10669), .O(n2060[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_19_lut (.I0(GND_net), .I1(n2593), .I2(VCC_net), 
            .I3(n10784), .O(n2654[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_13 (.CI(n10432), .I0(timer[11]), .I1(n1[11]), 
            .CO(n10433));
    SB_CARRY timer_1102_add_4_24 (.CI(n10500), .I0(GND_net), .I1(timer[22]), 
            .CO(n10501));
    SB_CARRY mod_5_add_1406_15 (.CI(n10669), .I0(n1997), .I1(VCC_net), 
            .CO(n10670));
    SB_CARRY add_21_27 (.CI(n10415), .I0(bit_ctr[25]), .I1(GND_net), .CO(n10416));
    SB_CARRY mod_5_add_1339_12 (.CI(n10651), .I0(n1900), .I1(n1928), .CO(n10652));
    SB_CARRY mod_5_add_1674_10 (.CI(n10734), .I0(n2402), .I1(VCC_net), 
            .CO(n10735));
    SB_CARRY mod_5_add_1138_7 (.CI(n10607), .I0(n1605), .I1(VCC_net), 
            .CO(n10608));
    SB_LUT4 sub_14_add_2_12_lut (.I0(GND_net), .I1(timer[10]), .I2(n1[10]), 
            .I3(n10431), .O(one_wire_N_528[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_669_6_lut (.I0(GND_net), .I1(n906), .I2(VCC_net), 
            .I3(n10477), .O(n971[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_9_lut (.I0(GND_net), .I1(n2403), .I2(VCC_net), 
            .I3(n10733), .O(n2456[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_9 (.CI(n10733), .I0(n2403), .I1(VCC_net), 
            .CO(n10734));
    SB_LUT4 i1_4_lut_adj_115 (.I0(n3107), .I1(n23_adj_700), .I2(n3149[7]), 
            .I3(n3116), .O(n12327));
    defparam i1_4_lut_adj_115.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_1808_19 (.CI(n10784), .I0(n2593), .I1(VCC_net), 
            .CO(n10785));
    SB_LUT4 mod_5_add_1808_18_lut (.I0(GND_net), .I1(n2594), .I2(VCC_net), 
            .I3(n10783), .O(n2654[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2166_3_lut (.I0(n3104), .I1(n3149[10]), .I2(n3116), 
            .I3(GND_net), .O(n21_adj_701));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_8_lut (.I0(GND_net), .I1(n2404), .I2(VCC_net), 
            .I3(n10732), .O(n2456[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_669_6 (.CI(n10477), .I0(n906), .I1(VCC_net), .CO(n10478));
    SB_CARRY mod_5_add_870_2 (.CI(VCC_net), .I0(bit_ctr[23]), .I1(GND_net), 
            .CO(n10453));
    SB_CARRY mod_5_add_1808_18 (.CI(n10783), .I0(n2594), .I1(VCC_net), 
            .CO(n10784));
    SB_LUT4 mod_5_add_1138_6_lut (.I0(GND_net), .I1(n1606), .I2(VCC_net), 
            .I3(n10606), .O(n1664[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_33_lut (.I0(n12981), .I1(timer[31]), .I2(n1[31]), 
            .I3(n10452), .O(n7181)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_33_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1138_6 (.CI(n10606), .I0(n1606), .I1(VCC_net), 
            .CO(n10607));
    SB_LUT4 add_21_13_lut (.I0(GND_net), .I1(bit_ctr[11]), .I2(GND_net), 
            .I3(n10401), .O(n255[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i7 (.Q(bit_ctr[7]), .C(CLK_c), .E(n7230), .D(n255[7]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_1102_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(timer[21]), 
            .I3(n10499), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i6 (.Q(bit_ctr[6]), .C(CLK_c), .E(n7230), .D(n255[6]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY add_21_8 (.CI(n10396), .I0(bit_ctr[6]), .I1(GND_net), .CO(n10397));
    SB_DFFESR bit_ctr__i5 (.Q(bit_ctr[5]), .C(CLK_c), .E(n7230), .D(n255[5]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1339_12_lut (.I0(n1900), .I1(n1900), .I2(n1928), 
            .I3(n10651), .O(n1999)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_12_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1406_14_lut (.I0(GND_net), .I1(n1998), .I2(VCC_net), 
            .I3(n10668), .O(n2060[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_5_lut (.I0(GND_net), .I1(n1607), .I2(VCC_net), 
            .I3(n10605), .O(n1664[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_5 (.CI(n10605), .I0(n1607), .I1(VCC_net), 
            .CO(n10606));
    SB_CARRY mod_5_add_1339_13 (.CI(n10652), .I0(n1899), .I1(n1928), .CO(n10653));
    SB_LUT4 mod_5_add_1339_13_lut (.I0(n1899), .I1(n1899), .I2(n1928), 
            .I3(n10652), .O(n1998)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1406_14 (.CI(n10668), .I0(n1998), .I1(VCC_net), 
            .CO(n10669));
    SB_CARRY mod_5_add_1674_8 (.CI(n10732), .I0(n2404), .I1(VCC_net), 
            .CO(n10733));
    SB_LUT4 mod_5_add_1808_17_lut (.I0(GND_net), .I1(n2595), .I2(VCC_net), 
            .I3(n10782), .O(n2654[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_4_lut (.I0(GND_net), .I1(n1608), .I2(VCC_net), 
            .I3(n10604), .O(n1664[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_7_lut (.I0(GND_net), .I1(n2405), .I2(VCC_net), 
            .I3(n10731), .O(n2456[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_26_lut (.I0(GND_net), .I1(bit_ctr[24]), .I2(GND_net), 
            .I3(n10414), .O(n255[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_13_lut (.I0(GND_net), .I1(n1999), .I2(VCC_net), 
            .I3(n10667), .O(n2060[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i4 (.Q(bit_ctr[4]), .C(CLK_c), .E(n7230), .D(n255[4]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY timer_1102_add_4_23 (.CI(n10499), .I0(GND_net), .I1(timer[21]), 
            .CO(n10500));
    SB_CARRY mod_5_add_1138_4 (.CI(n10604), .I0(n1608), .I1(VCC_net), 
            .CO(n10605));
    SB_LUT4 mod_5_add_669_5_lut (.I0(GND_net), .I1(n11674), .I2(VCC_net), 
            .I3(n10476), .O(n971[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_7 (.CI(n10731), .I0(n2405), .I1(VCC_net), 
            .CO(n10732));
    SB_LUT4 i1_4_lut_adj_116 (.I0(n3098), .I1(n13_adj_696), .I2(n3149[16]), 
            .I3(n3116), .O(n12325));
    defparam i1_4_lut_adj_116.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1674_6_lut (.I0(GND_net), .I1(n2406), .I2(VCC_net), 
            .I3(n10730), .O(n2456[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_117 (.I0(n12327), .I1(n3095), .I2(n3149[19]), 
            .I3(n3116), .O(n12339));
    defparam i1_4_lut_adj_117.LUT_INIT = 16'hfaee;
    SB_LUT4 mod_5_i2161_3_lut (.I0(n3099), .I1(n3149[15]), .I2(n3116), 
            .I3(GND_net), .O(n31_adj_702));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_118 (.I0(n31_adj_702), .I1(n12339), .I2(n12325), 
            .I3(n21_adj_701), .O(n12347));
    defparam i1_4_lut_adj_118.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1138_3_lut (.I0(GND_net), .I1(n1609), .I2(GND_net), 
            .I3(n10603), .O(n1664[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_3 (.CI(n10603), .I0(n1609), .I1(GND_net), 
            .CO(n10604));
    SB_LUT4 i1_4_lut_adj_119 (.I0(n12331), .I1(n12337), .I2(n12335), .I3(n12333), 
            .O(n12349));
    defparam i1_4_lut_adj_119.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1406_13 (.CI(n10667), .I0(n1999), .I1(VCC_net), 
            .CO(n10668));
    SB_CARRY mod_5_add_1339_14 (.CI(n10653), .I0(n1898), .I1(n1928), .CO(n10654));
    SB_LUT4 mod_5_add_1339_14_lut (.I0(n1898), .I1(n1898), .I2(n1928), 
            .I3(n10653), .O(n1997)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_14_add_2_32_lut (.I0(n12979), .I1(timer[30]), .I2(n1[30]), 
            .I3(n10451), .O(n12981)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_32_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_4_lut_adj_120 (.I0(n12349), .I1(n12347), .I2(bit_ctr[3]), 
            .I3(n3209), .O(n12353));
    defparam i1_4_lut_adj_120.LUT_INIT = 16'hfeee;
    SB_LUT4 mod_5_add_1406_12_lut (.I0(GND_net), .I1(n2000), .I2(VCC_net), 
            .I3(n10666), .O(n2060[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_2_lut (.I0(GND_net), .I1(bit_ctr[19]), .I2(GND_net), 
            .I3(VCC_net), .O(n1664[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_6 (.CI(n10730), .I0(n2406), .I1(VCC_net), 
            .CO(n10731));
    SB_LUT4 mod_5_i1150_rep_76_3_lut (.I0(n1608), .I1(n1664[21]), .I2(n1631), 
            .I3(GND_net), .O(n1707));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1150_rep_76_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1406_12 (.CI(n10666), .I0(n2000), .I1(VCC_net), 
            .CO(n10667));
    SB_CARRY mod_5_add_1808_17 (.CI(n10782), .I0(n2595), .I1(VCC_net), 
            .CO(n10783));
    SB_LUT4 mod_5_add_1808_16_lut (.I0(GND_net), .I1(n2596), .I2(VCC_net), 
            .I3(n10781), .O(n2654[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_5_lut (.I0(GND_net), .I1(n2407), .I2(VCC_net), 
            .I3(n10729), .O(n2456[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_16 (.CI(n10781), .I0(n2596), .I1(VCC_net), 
            .CO(n10782));
    SB_LUT4 mod_5_add_1406_11_lut (.I0(GND_net), .I1(n2001), .I2(VCC_net), 
            .I3(n10665), .O(n2060[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_15_lut (.I0(GND_net), .I1(n2597), .I2(VCC_net), 
            .I3(n10780), .O(n2654[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_5 (.CI(n10729), .I0(n2407), .I1(VCC_net), 
            .CO(n10730));
    SB_CARRY mod_5_add_1339_15 (.CI(n10654), .I0(n1897), .I1(n1928), .CO(n10655));
    SB_LUT4 mod_5_add_1674_4_lut (.I0(GND_net), .I1(n2408), .I2(VCC_net), 
            .I3(n10728), .O(n2456[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1102_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(timer[20]), 
            .I3(n10498), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_11 (.CI(n10665), .I0(n2001), .I1(VCC_net), 
            .CO(n10666));
    SB_CARRY mod_5_add_1674_4 (.CI(n10728), .I0(n2408), .I1(VCC_net), 
            .CO(n10729));
    SB_LUT4 i1_4_lut_adj_121 (.I0(n12353), .I1(n3094), .I2(n3149[20]), 
            .I3(n3116), .O(n12355));
    defparam i1_4_lut_adj_121.LUT_INIT = 16'hfaee;
    SB_LUT4 mod_5_add_1674_3_lut (.I0(GND_net), .I1(n2409), .I2(GND_net), 
            .I3(n10727), .O(n2456[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_122 (.I0(n3093), .I1(n12355), .I2(n3149[21]), 
            .I3(n3116), .O(n12357));
    defparam i1_4_lut_adj_122.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i1149_3_lut (.I0(n1607), .I1(n1664[22]), .I2(n1631), 
            .I3(GND_net), .O(n1706));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1149_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1808_15 (.CI(n10780), .I0(n2597), .I1(VCC_net), 
            .CO(n10781));
    SB_CARRY mod_5_add_1138_2 (.CI(VCC_net), .I0(bit_ctr[19]), .I1(GND_net), 
            .CO(n10603));
    SB_LUT4 i1_4_lut_adj_123 (.I0(n3092), .I1(n12357), .I2(n3149[22]), 
            .I3(n3116), .O(n12359));
    defparam i1_4_lut_adj_123.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1071_13_lut (.I0(n1532), .I1(n1499), .I2(VCC_net), 
            .I3(n10602), .O(n1598)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1406_10_lut (.I0(GND_net), .I1(n2002), .I2(VCC_net), 
            .I3(n10664), .O(n2060[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_124 (.I0(n3091), .I1(n12359), .I2(n3149[23]), 
            .I3(n3116), .O(n12361));
    defparam i1_4_lut_adj_124.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_125 (.I0(n3090), .I1(n12361), .I2(n3149[24]), 
            .I3(n3116), .O(n12363));
    defparam i1_4_lut_adj_125.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_126 (.I0(n3089), .I1(n12363), .I2(n3149[25]), 
            .I3(n3116), .O(n12365));
    defparam i1_4_lut_adj_126.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1339_15_lut (.I0(n1897), .I1(n1897), .I2(n1928), 
            .I3(n10654), .O(n1996)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_15_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1_4_lut_adj_127 (.I0(n3088), .I1(n12365), .I2(n3149[26]), 
            .I3(n3116), .O(n12367));
    defparam i1_4_lut_adj_127.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_1406_10 (.CI(n10664), .I0(n2002), .I1(VCC_net), 
            .CO(n10665));
    SB_LUT4 mod_5_add_1406_9_lut (.I0(GND_net), .I1(n2003), .I2(VCC_net), 
            .I3(n10663), .O(n2060[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_16 (.CI(n10655), .I0(n1896), .I1(n1928), .CO(n10656));
    SB_LUT4 i1_4_lut_adj_128 (.I0(n3087), .I1(n12367), .I2(n3149[27]), 
            .I3(n3116), .O(n12369));
    defparam i1_4_lut_adj_128.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_669_5 (.CI(n10476), .I0(n11674), .I1(VCC_net), 
            .CO(n10477));
    SB_LUT4 mod_5_add_1339_16_lut (.I0(n1896), .I1(n1896), .I2(n1928), 
            .I3(n10655), .O(n1995)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY sub_14_add_2_32 (.CI(n10451), .I0(timer[30]), .I1(n1[30]), 
            .CO(n10452));
    SB_LUT4 mod_5_add_669_4_lut (.I0(GND_net), .I1(n7342), .I2(VCC_net), 
            .I3(n10475), .O(n971[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_129 (.I0(n3086), .I1(n12369), .I2(n3149[28]), 
            .I3(n3116), .O(n12371));
    defparam i1_4_lut_adj_129.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1339_17_lut (.I0(n1895), .I1(n1895), .I2(n1928), 
            .I3(n10656), .O(n1994)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_17_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1406_2 (.CI(VCC_net), .I0(bit_ctr[15]), .I1(GND_net), 
            .CO(n10657));
    SB_LUT4 mod_5_i2147_3_lut (.I0(n3085), .I1(n3149[29]), .I2(n3116), 
            .I3(GND_net), .O(n59));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2147_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_12 (.CI(n10431), .I0(timer[10]), .I1(n1[10]), 
            .CO(n10432));
    SB_CARRY mod_5_add_669_4 (.CI(n10475), .I0(n7342), .I1(VCC_net), .CO(n10476));
    SB_CARRY add_21_26 (.CI(n10414), .I0(bit_ctr[24]), .I1(GND_net), .CO(n10415));
    SB_LUT4 mod_5_i2146_3_lut (.I0(n3084), .I1(n3149[30]), .I2(n3116), 
            .I3(GND_net), .O(n61));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2146_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_1102_add_4_22 (.CI(n10498), .I0(GND_net), .I1(timer[20]), 
            .CO(n10499));
    SB_LUT4 mod_5_add_1808_14_lut (.I0(GND_net), .I1(n2598), .I2(VCC_net), 
            .I3(n10779), .O(n2654[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_12_lut (.I0(GND_net), .I1(n1500), .I2(VCC_net), 
            .I3(n10601), .O(n1565[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_130 (.I0(n61), .I1(n13042), .I2(n59), .I3(n12371), 
            .O(n10947));
    defparam i1_4_lut_adj_130.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1071_12 (.CI(n10601), .I0(n1500), .I1(VCC_net), 
            .CO(n10602));
    SB_LUT4 mod_5_i2172_3_lut (.I0(bit_ctr[4]), .I1(n3149[4]), .I2(n3116), 
            .I3(GND_net), .O(n3209));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4155_3_lut (.I0(n7239), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(GND_net), .O(n7392));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4155_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 mod_5_add_1071_11_lut (.I0(GND_net), .I1(n1501), .I2(VCC_net), 
            .I3(n10600), .O(n1565[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_29_lut (.I0(n3116), .I1(n3083), .I2(VCC_net), 
            .I3(n10914), .O(n13042)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_29_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2143_28_lut (.I0(GND_net), .I1(n3084), .I2(VCC_net), 
            .I3(n10913), .O(n3149[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_28 (.CI(n10913), .I0(n3084), .I1(VCC_net), 
            .CO(n10914));
    SB_LUT4 mod_5_add_2143_27_lut (.I0(GND_net), .I1(n3085), .I2(VCC_net), 
            .I3(n10912), .O(n3149[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_27 (.CI(n10912), .I0(n3085), .I1(VCC_net), 
            .CO(n10913));
    SB_LUT4 mod_5_add_2143_26_lut (.I0(GND_net), .I1(n3086), .I2(VCC_net), 
            .I3(n10911), .O(n3149[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_11 (.CI(n10600), .I0(n1501), .I1(VCC_net), 
            .CO(n10601));
    SB_LUT4 mod_5_i744_3_lut (.I0(bit_ctr[25]), .I1(n1070[25]), .I2(n1037), 
            .I3(GND_net), .O(n1109));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i744_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2143_26 (.CI(n10911), .I0(n3086), .I1(VCC_net), 
            .CO(n10912));
    SB_LUT4 mod_5_add_2143_25_lut (.I0(GND_net), .I1(n3087), .I2(VCC_net), 
            .I3(n10910), .O(n3149[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_25 (.CI(n10910), .I0(n3087), .I1(VCC_net), 
            .CO(n10911));
    SB_LUT4 mod_5_add_2143_24_lut (.I0(GND_net), .I1(n3088), .I2(VCC_net), 
            .I3(n10909), .O(n3149[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_24 (.CI(n10909), .I0(n3088), .I1(VCC_net), 
            .CO(n10910));
    SB_LUT4 mod_5_add_2143_23_lut (.I0(GND_net), .I1(n3089), .I2(VCC_net), 
            .I3(n10908), .O(n3149[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_23 (.CI(n10908), .I0(n3089), .I1(VCC_net), 
            .CO(n10909));
    SB_LUT4 mod_5_add_2143_22_lut (.I0(GND_net), .I1(n3090), .I2(VCC_net), 
            .I3(n10907), .O(n3149[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_11_lut (.I0(GND_net), .I1(timer[9]), .I2(n1[9]), 
            .I3(n10430), .O(one_wire_N_528[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_22 (.CI(n10907), .I0(n3090), .I1(VCC_net), 
            .CO(n10908));
    SB_LUT4 mod_5_add_1071_10_lut (.I0(GND_net), .I1(n1502), .I2(VCC_net), 
            .I3(n10599), .O(n1565[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_21_lut (.I0(GND_net), .I1(n3091), .I2(VCC_net), 
            .I3(n10906), .O(n3149[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_21 (.CI(n10906), .I0(n3091), .I1(VCC_net), 
            .CO(n10907));
    SB_LUT4 mod_5_add_2143_20_lut (.I0(GND_net), .I1(n3092), .I2(VCC_net), 
            .I3(n10905), .O(n3149[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_20 (.CI(n10905), .I0(n3092), .I1(VCC_net), 
            .CO(n10906));
    SB_LUT4 mod_5_add_2143_19_lut (.I0(GND_net), .I1(n3093), .I2(VCC_net), 
            .I3(n10904), .O(n3149[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_19 (.CI(n10904), .I0(n3093), .I1(VCC_net), 
            .CO(n10905));
    SB_LUT4 mod_5_add_2143_18_lut (.I0(GND_net), .I1(n3094), .I2(VCC_net), 
            .I3(n10903), .O(n3149[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_18 (.CI(n10903), .I0(n3094), .I1(VCC_net), 
            .CO(n10904));
    SB_LUT4 mod_5_add_2143_17_lut (.I0(GND_net), .I1(n3095), .I2(VCC_net), 
            .I3(n10902), .O(n3149[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_10 (.CI(n10599), .I0(n1502), .I1(VCC_net), 
            .CO(n10600));
    SB_CARRY mod_5_add_2143_17 (.CI(n10902), .I0(n3095), .I1(VCC_net), 
            .CO(n10903));
    SB_LUT4 mod_5_add_2143_16_lut (.I0(GND_net), .I1(n3096), .I2(VCC_net), 
            .I3(n10901), .O(n3149[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_9_lut (.I0(GND_net), .I1(n1503), .I2(VCC_net), 
            .I3(n10598), .O(n1565[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_16 (.CI(n10901), .I0(n3096), .I1(VCC_net), 
            .CO(n10902));
    SB_CARRY mod_5_add_1071_9 (.CI(n10598), .I0(n1503), .I1(VCC_net), 
            .CO(n10599));
    SB_LUT4 mod_5_add_2143_15_lut (.I0(GND_net), .I1(n3097), .I2(VCC_net), 
            .I3(n10900), .O(n3149[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_15 (.CI(n10900), .I0(n3097), .I1(VCC_net), 
            .CO(n10901));
    SB_LUT4 mod_5_add_1071_8_lut (.I0(GND_net), .I1(n1504), .I2(VCC_net), 
            .I3(n10597), .O(n1565[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_14_lut (.I0(GND_net), .I1(n3098), .I2(VCC_net), 
            .I3(n10899), .O(n3149[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_14 (.CI(n10899), .I0(n3098), .I1(VCC_net), 
            .CO(n10900));
    SB_CARRY mod_5_add_1071_8 (.CI(n10597), .I0(n1504), .I1(VCC_net), 
            .CO(n10598));
    SB_LUT4 mod_5_add_2143_13_lut (.I0(GND_net), .I1(n3099), .I2(VCC_net), 
            .I3(n10898), .O(n3149[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_13 (.CI(n10898), .I0(n3099), .I1(VCC_net), 
            .CO(n10899));
    SB_LUT4 mod_5_add_2143_12_lut (.I0(GND_net), .I1(n3100), .I2(VCC_net), 
            .I3(n10897), .O(n3149[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_12 (.CI(n10897), .I0(n3100), .I1(VCC_net), 
            .CO(n10898));
    SB_LUT4 mod_5_add_2143_11_lut (.I0(GND_net), .I1(n3101), .I2(VCC_net), 
            .I3(n10896), .O(n3149[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_11 (.CI(n10896), .I0(n3101), .I1(VCC_net), 
            .CO(n10897));
    SB_LUT4 mod_5_add_2143_10_lut (.I0(GND_net), .I1(n3102), .I2(VCC_net), 
            .I3(n10895), .O(n3149[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_10 (.CI(n10895), .I0(n3102), .I1(VCC_net), 
            .CO(n10896));
    SB_LUT4 mod_5_add_2143_9_lut (.I0(GND_net), .I1(n3103), .I2(VCC_net), 
            .I3(n10894), .O(n3149[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_9 (.CI(n10894), .I0(n3103), .I1(VCC_net), 
            .CO(n10895));
    SB_LUT4 mod_5_add_1406_2_lut (.I0(GND_net), .I1(bit_ctr[15]), .I2(GND_net), 
            .I3(VCC_net), .O(n2060[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_3 (.CI(n10727), .I0(n2409), .I1(GND_net), 
            .CO(n10728));
    SB_LUT4 mod_5_add_2143_8_lut (.I0(GND_net), .I1(n3104), .I2(VCC_net), 
            .I3(n10893), .O(n3149[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_2_lut (.I0(GND_net), .I1(bit_ctr[11]), .I2(GND_net), 
            .I3(VCC_net), .O(n2456[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_8 (.CI(n10893), .I0(n3104), .I1(VCC_net), 
            .CO(n10894));
    SB_LUT4 mod_5_add_2143_7_lut (.I0(GND_net), .I1(n3105), .I2(VCC_net), 
            .I3(n10892), .O(n3149[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_7 (.CI(n10892), .I0(n3105), .I1(VCC_net), 
            .CO(n10893));
    SB_LUT4 mod_5_add_2143_6_lut (.I0(GND_net), .I1(n3106), .I2(VCC_net), 
            .I3(n10891), .O(n3149[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_6 (.CI(n10891), .I0(n3106), .I1(VCC_net), 
            .CO(n10892));
    SB_LUT4 mod_5_add_2143_5_lut (.I0(GND_net), .I1(n3107), .I2(VCC_net), 
            .I3(n10890), .O(n3149[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_5 (.CI(n10890), .I0(n3107), .I1(VCC_net), 
            .CO(n10891));
    SB_LUT4 mod_5_add_2143_4_lut (.I0(GND_net), .I1(n3108), .I2(VCC_net), 
            .I3(n10889), .O(n3149[6])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_4 (.CI(n10889), .I0(n3108), .I1(VCC_net), 
            .CO(n10890));
    SB_LUT4 mod_5_add_2143_3_lut (.I0(GND_net), .I1(n3109), .I2(GND_net), 
            .I3(n10888), .O(n3149[5])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_3 (.CI(n10888), .I0(n3109), .I1(GND_net), 
            .CO(n10889));
    SB_CARRY mod_5_add_1406_9 (.CI(n10663), .I0(n2003), .I1(VCC_net), 
            .CO(n10664));
    SB_CARRY mod_5_add_1674_2 (.CI(VCC_net), .I0(bit_ctr[11]), .I1(GND_net), 
            .CO(n10727));
    SB_LUT4 mod_5_add_2143_2_lut (.I0(GND_net), .I1(bit_ctr[4]), .I2(GND_net), 
            .I3(VCC_net), .O(n3149[4])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_3 (.CI(n10657), .I0(n2009), .I1(GND_net), 
            .CO(n10658));
    SB_DFFESR bit_ctr__i3 (.Q(bit_ctr[3]), .C(CLK_c), .E(n7230), .D(n255[3]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1808_14 (.CI(n10779), .I0(n2598), .I1(VCC_net), 
            .CO(n10780));
    SB_CARRY mod_5_add_2143_2 (.CI(VCC_net), .I0(bit_ctr[4]), .I1(GND_net), 
            .CO(n10888));
    SB_LUT4 mod_5_add_2076_28_lut (.I0(n3017), .I1(n2984), .I2(VCC_net), 
            .I3(n10887), .O(n3083)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_28_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2076_27_lut (.I0(GND_net), .I1(n2985), .I2(VCC_net), 
            .I3(n10886), .O(n3050[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_27 (.CI(n10886), .I0(n2985), .I1(VCC_net), 
            .CO(n10887));
    SB_LUT4 mod_5_add_1071_7_lut (.I0(GND_net), .I1(n1505), .I2(VCC_net), 
            .I3(n10596), .O(n1565[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_26_lut (.I0(GND_net), .I1(n2986), .I2(VCC_net), 
            .I3(n10885), .O(n3050[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_7 (.CI(n10596), .I0(n1505), .I1(VCC_net), 
            .CO(n10597));
    SB_LUT4 mod_5_add_1071_6_lut (.I0(GND_net), .I1(n1506), .I2(VCC_net), 
            .I3(n10595), .O(n1565[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_26 (.CI(n10885), .I0(n2986), .I1(VCC_net), 
            .CO(n10886));
    SB_LUT4 mod_5_add_2076_25_lut (.I0(GND_net), .I1(n2987), .I2(VCC_net), 
            .I3(n10884), .O(n3050[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_3_lut (.I0(GND_net), .I1(n2009), .I2(GND_net), 
            .I3(n10657), .O(n2060[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_131 (.I0(n12117), .I1(n9702), .I2(\state[1] ), 
            .I3(n7131), .O(n7239));
    defparam i1_4_lut_adj_131.LUT_INIT = 16'ha0a8;
    SB_LUT4 mod_5_add_1406_8_lut (.I0(GND_net), .I1(n2004), .I2(VCC_net), 
            .I3(n10662), .O(n2060[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_25 (.CI(n10884), .I0(n2987), .I1(VCC_net), 
            .CO(n10885));
    SB_CARRY mod_5_add_1406_4 (.CI(n10658), .I0(n2008), .I1(VCC_net), 
            .CO(n10659));
    SB_LUT4 timer_1102_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(timer[19]), 
            .I3(n10497), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1102_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_24_lut (.I0(GND_net), .I1(n2988), .I2(VCC_net), 
            .I3(n10883), .O(n3050[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_21_lut (.I0(n2324), .I1(n2291), .I2(VCC_net), 
            .I3(n10726), .O(n2390)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_21_lut.LUT_INIT = 16'h8228;
    SB_CARRY mod_5_add_1406_8 (.CI(n10662), .I0(n2004), .I1(VCC_net), 
            .CO(n10663));
    SB_CARRY mod_5_add_2076_24 (.CI(n10883), .I0(n2988), .I1(VCC_net), 
            .CO(n10884));
    SB_CARRY mod_5_add_1071_6 (.CI(n10595), .I0(n1506), .I1(VCC_net), 
            .CO(n10596));
    SB_LUT4 mod_5_add_1071_5_lut (.I0(GND_net), .I1(n1507), .I2(VCC_net), 
            .I3(n10594), .O(n1565[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_23_lut (.I0(GND_net), .I1(n2989), .I2(VCC_net), 
            .I3(n10882), .O(n3050[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_20_lut (.I0(GND_net), .I1(n2292), .I2(VCC_net), 
            .I3(n10725), .O(n2357[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_13_lut (.I0(GND_net), .I1(n2599), .I2(VCC_net), 
            .I3(n10778), .O(n2654[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_23 (.CI(n10882), .I0(n2989), .I1(VCC_net), 
            .CO(n10883));
    SB_CARRY mod_5_add_1607_20 (.CI(n10725), .I0(n2292), .I1(VCC_net), 
            .CO(n10726));
    SB_LUT4 mod_5_add_1607_19_lut (.I0(GND_net), .I1(n2293), .I2(VCC_net), 
            .I3(n10724), .O(n2357[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_22_lut (.I0(GND_net), .I1(n2990), .I2(VCC_net), 
            .I3(n10881), .O(n3050[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_5 (.CI(n10594), .I0(n1507), .I1(VCC_net), 
            .CO(n10595));
    SB_CARRY mod_5_add_1607_19 (.CI(n10724), .I0(n2293), .I1(VCC_net), 
            .CO(n10725));
    SB_CARRY mod_5_add_2076_22 (.CI(n10881), .I0(n2990), .I1(VCC_net), 
            .CO(n10882));
    SB_LUT4 mod_5_add_1406_7_lut (.I0(GND_net), .I1(n2005), .I2(VCC_net), 
            .I3(n10661), .O(n2060[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_18_lut (.I0(GND_net), .I1(n2294), .I2(VCC_net), 
            .I3(n10723), .O(n2357[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_21_lut (.I0(GND_net), .I1(n2991), .I2(VCC_net), 
            .I3(n10880), .O(n3050[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_18 (.CI(n10723), .I0(n2294), .I1(VCC_net), 
            .CO(n10724));
    SB_CARRY mod_5_add_2076_21 (.CI(n10880), .I0(n2991), .I1(VCC_net), 
            .CO(n10881));
    SB_LUT4 mod_5_add_2076_20_lut (.I0(GND_net), .I1(n2992), .I2(VCC_net), 
            .I3(n10879), .O(n3050[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_20 (.CI(n10879), .I0(n2992), .I1(VCC_net), 
            .CO(n10880));
    SB_LUT4 mod_5_add_2076_19_lut (.I0(GND_net), .I1(n2993), .I2(VCC_net), 
            .I3(n10878), .O(n3050[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_19 (.CI(n10878), .I0(n2993), .I1(VCC_net), 
            .CO(n10879));
    SB_LUT4 mod_5_add_2076_18_lut (.I0(GND_net), .I1(n2994), .I2(VCC_net), 
            .I3(n10877), .O(n3050[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_18 (.CI(n10877), .I0(n2994), .I1(VCC_net), 
            .CO(n10878));
    SB_LUT4 mod_5_add_2076_17_lut (.I0(GND_net), .I1(n2995), .I2(VCC_net), 
            .I3(n10876), .O(n3050[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_17 (.CI(n10876), .I0(n2995), .I1(VCC_net), 
            .CO(n10877));
    SB_LUT4 mod_5_add_2076_16_lut (.I0(GND_net), .I1(n2996), .I2(VCC_net), 
            .I3(n10875), .O(n3050[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9470_3_lut (.I0(n3209), .I1(bit_ctr[3]), .I2(n10947), .I3(GND_net), 
            .O(color_bit_N_571[4]));
    defparam i9470_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i3_4_lut (.I0(n13459), .I1(\state_3__N_377[1] ), .I2(color_bit_N_571[4]), 
            .I3(bit_ctr[2]), .O(state_3__N_377[0]));
    defparam i3_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 mod_5_add_1071_4_lut (.I0(GND_net), .I1(n1508), .I2(VCC_net), 
            .I3(n10593), .O(n1565[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_16 (.CI(n10875), .I0(n2996), .I1(VCC_net), 
            .CO(n10876));
    SB_LUT4 mod_5_add_2076_15_lut (.I0(GND_net), .I1(n2997), .I2(VCC_net), 
            .I3(n10874), .O(n3050[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_4 (.CI(n10593), .I0(n1508), .I1(VCC_net), 
            .CO(n10594));
    SB_CARRY mod_5_add_2076_15 (.CI(n10874), .I0(n2997), .I1(VCC_net), 
            .CO(n10875));
    SB_LUT4 mod_5_add_2076_14_lut (.I0(GND_net), .I1(n2998), .I2(VCC_net), 
            .I3(n10873), .O(n3050[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_14 (.CI(n10873), .I0(n2998), .I1(VCC_net), 
            .CO(n10874));
    SB_LUT4 mod_5_add_2076_13_lut (.I0(GND_net), .I1(n2999), .I2(VCC_net), 
            .I3(n10872), .O(n3050[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_13 (.CI(n10872), .I0(n2999), .I1(VCC_net), 
            .CO(n10873));
    SB_LUT4 mod_5_add_2076_12_lut (.I0(GND_net), .I1(n3000), .I2(VCC_net), 
            .I3(n10871), .O(n3050[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_12 (.CI(n10871), .I0(n3000), .I1(VCC_net), 
            .CO(n10872));
    SB_LUT4 mod_5_add_2076_11_lut (.I0(GND_net), .I1(n3001), .I2(VCC_net), 
            .I3(n10870), .O(n3050[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_11 (.CI(n10870), .I0(n3001), .I1(VCC_net), 
            .CO(n10871));
    SB_LUT4 mod_5_add_2076_10_lut (.I0(GND_net), .I1(n3002), .I2(VCC_net), 
            .I3(n10869), .O(n3050[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_10 (.CI(n10869), .I0(n3002), .I1(VCC_net), 
            .CO(n10870));
    SB_LUT4 mod_5_add_2076_9_lut (.I0(GND_net), .I1(n3003), .I2(VCC_net), 
            .I3(n10868), .O(n3050[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_9 (.CI(n10868), .I0(n3003), .I1(VCC_net), 
            .CO(n10869));
    SB_LUT4 mod_5_add_2076_8_lut (.I0(GND_net), .I1(n3004), .I2(VCC_net), 
            .I3(n10867), .O(n3050[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_8 (.CI(n10867), .I0(n3004), .I1(VCC_net), 
            .CO(n10868));
    SB_LUT4 mod_5_add_2076_7_lut (.I0(GND_net), .I1(n3005), .I2(VCC_net), 
            .I3(n10866), .O(n3050[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_7 (.CI(n10866), .I0(n3005), .I1(VCC_net), 
            .CO(n10867));
    SB_LUT4 mod_5_add_2076_6_lut (.I0(GND_net), .I1(n3006), .I2(VCC_net), 
            .I3(n10865), .O(n3050[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_6 (.CI(n10865), .I0(n3006), .I1(VCC_net), 
            .CO(n10866));
    SB_LUT4 mod_5_add_2076_5_lut (.I0(GND_net), .I1(n3007), .I2(VCC_net), 
            .I3(n10864), .O(n3050[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_5 (.CI(n10864), .I0(n3007), .I1(VCC_net), 
            .CO(n10865));
    SB_LUT4 mod_5_add_2076_4_lut (.I0(GND_net), .I1(n3008), .I2(VCC_net), 
            .I3(n10863), .O(n3050[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_4 (.CI(n10863), .I0(n3008), .I1(VCC_net), 
            .CO(n10864));
    SB_LUT4 mod_5_add_2076_3_lut (.I0(GND_net), .I1(n3009), .I2(GND_net), 
            .I3(n10862), .O(n3050[6])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_3 (.CI(n10862), .I0(n3009), .I1(GND_net), 
            .CO(n10863));
    SB_LUT4 mod_5_add_2076_2_lut (.I0(GND_net), .I1(bit_ctr[5]), .I2(GND_net), 
            .I3(VCC_net), .O(n3050[5])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_13 (.CI(n10778), .I0(n2599), .I1(VCC_net), 
            .CO(n10779));
    SB_LUT4 mod_5_add_1607_17_lut (.I0(GND_net), .I1(n2295), .I2(VCC_net), 
            .I3(n10722), .O(n2357[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_17 (.CI(n10722), .I0(n2295), .I1(VCC_net), 
            .CO(n10723));
    SB_LUT4 mod_5_add_1607_16_lut (.I0(GND_net), .I1(n2296), .I2(VCC_net), 
            .I3(n10721), .O(n2357[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_16 (.CI(n10721), .I0(n2296), .I1(VCC_net), 
            .CO(n10722));
    SB_LUT4 mod_5_add_1071_3_lut (.I0(GND_net), .I1(n1509), .I2(GND_net), 
            .I3(n10592), .O(n1565[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_15_lut (.I0(GND_net), .I1(n2297), .I2(VCC_net), 
            .I3(n10720), .O(n2357[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_15 (.CI(n10720), .I0(n2297), .I1(VCC_net), 
            .CO(n10721));
    SB_CARRY mod_5_add_1071_3 (.CI(n10592), .I0(n1509), .I1(GND_net), 
            .CO(n10593));
    SB_CARRY mod_5_add_2076_2 (.CI(VCC_net), .I0(bit_ctr[5]), .I1(GND_net), 
            .CO(n10862));
    SB_LUT4 mod_5_add_1808_12_lut (.I0(GND_net), .I1(n2600), .I2(VCC_net), 
            .I3(n10777), .O(n2654[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_7 (.CI(n10661), .I0(n2005), .I1(VCC_net), 
            .CO(n10662));
    SB_LUT4 mod_5_add_2009_27_lut (.I0(n2918), .I1(n2885), .I2(VCC_net), 
            .I3(n10861), .O(n2984)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_27_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2009_26_lut (.I0(GND_net), .I1(n2886), .I2(VCC_net), 
            .I3(n10860), .O(n2951[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_26 (.CI(n10860), .I0(n2886), .I1(VCC_net), 
            .CO(n10861));
    SB_LUT4 mod_5_add_2009_25_lut (.I0(GND_net), .I1(n2887), .I2(VCC_net), 
            .I3(n10859), .O(n2951[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_25 (.CI(n10859), .I0(n2887), .I1(VCC_net), 
            .CO(n10860));
    SB_LUT4 mod_5_add_2009_24_lut (.I0(GND_net), .I1(n2888), .I2(VCC_net), 
            .I3(n10858), .O(n2951[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_12 (.CI(n10777), .I0(n2600), .I1(VCC_net), 
            .CO(n10778));
    SB_LUT4 mod_5_add_1607_14_lut (.I0(GND_net), .I1(n2298), .I2(VCC_net), 
            .I3(n10719), .O(n2357[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_24 (.CI(n10858), .I0(n2888), .I1(VCC_net), 
            .CO(n10859));
    SB_CARRY mod_5_add_1607_14 (.CI(n10719), .I0(n2298), .I1(VCC_net), 
            .CO(n10720));
    SB_LUT4 mod_5_add_1607_13_lut (.I0(GND_net), .I1(n2299), .I2(VCC_net), 
            .I3(n10718), .O(n2357[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_23_lut (.I0(GND_net), .I1(n2889), .I2(VCC_net), 
            .I3(n10857), .O(n2951[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_6_lut (.I0(GND_net), .I1(n2006), .I2(VCC_net), 
            .I3(n10660), .O(n2060[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_6 (.CI(n10660), .I0(n2006), .I1(VCC_net), 
            .CO(n10661));
    SB_CARRY mod_5_add_2009_23 (.CI(n10857), .I0(n2889), .I1(VCC_net), 
            .CO(n10858));
    SB_LUT4 mod_5_add_1406_5_lut (.I0(GND_net), .I1(n2007), .I2(VCC_net), 
            .I3(n10659), .O(n2060[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_5 (.CI(n10659), .I0(n2007), .I1(VCC_net), 
            .CO(n10660));
    SB_LUT4 mod_5_add_2009_22_lut (.I0(GND_net), .I1(n2890), .I2(VCC_net), 
            .I3(n10856), .O(n2951[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_4_lut (.I0(GND_net), .I1(n2008), .I2(VCC_net), 
            .I3(n10658), .O(n2060[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_13 (.CI(n10718), .I0(n2299), .I1(VCC_net), 
            .CO(n10719));
    SB_CARRY mod_5_add_2009_22 (.CI(n10856), .I0(n2890), .I1(VCC_net), 
            .CO(n10857));
    SB_LUT4 mod_5_add_1607_12_lut (.I0(GND_net), .I1(n2300), .I2(VCC_net), 
            .I3(n10717), .O(n2357[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_12 (.CI(n10717), .I0(n2300), .I1(VCC_net), 
            .CO(n10718));
    SB_LUT4 mod_5_add_2009_21_lut (.I0(GND_net), .I1(n2891), .I2(VCC_net), 
            .I3(n10855), .O(n2951[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_11_lut (.I0(GND_net), .I1(n2301), .I2(VCC_net), 
            .I3(n10716), .O(n2357[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_21 (.CI(n10855), .I0(n2891), .I1(VCC_net), 
            .CO(n10856));
    SB_LUT4 mod_5_add_1808_11_lut (.I0(GND_net), .I1(n2601), .I2(VCC_net), 
            .I3(n10776), .O(n2654[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_11 (.CI(n10776), .I0(n2601), .I1(VCC_net), 
            .CO(n10777));
    SB_LUT4 mod_5_add_2009_20_lut (.I0(GND_net), .I1(n2892), .I2(VCC_net), 
            .I3(n10854), .O(n2951[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_11 (.CI(n10650), .I0(n1901), .I1(n1928), .CO(n10651));
    SB_LUT4 mod_5_add_1071_2_lut (.I0(GND_net), .I1(bit_ctr[20]), .I2(GND_net), 
            .I3(VCC_net), .O(n1565[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_20 (.CI(n10854), .I0(n2892), .I1(VCC_net), 
            .CO(n10855));
    SB_CARRY mod_5_add_1071_2 (.CI(VCC_net), .I0(bit_ctr[20]), .I1(GND_net), 
            .CO(n10592));
    SB_CARRY mod_5_add_1607_11 (.CI(n10716), .I0(n2301), .I1(VCC_net), 
            .CO(n10717));
    SB_LUT4 mod_5_add_1607_10_lut (.I0(GND_net), .I1(n2302), .I2(VCC_net), 
            .I3(n10715), .O(n2357[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_10 (.CI(n10715), .I0(n2302), .I1(VCC_net), 
            .CO(n10716));
    SB_LUT4 mod_5_add_1808_10_lut (.I0(GND_net), .I1(n2602), .I2(VCC_net), 
            .I3(n10775), .O(n2654[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_9_lut (.I0(GND_net), .I1(n2303), .I2(VCC_net), 
            .I3(n10714), .O(n2357[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1004_12_lut (.I0(n1433), .I1(n1400), .I2(VCC_net), 
            .I3(n10591), .O(n1499)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2009_19_lut (.I0(GND_net), .I1(n2893), .I2(VCC_net), 
            .I3(n10853), .O(n2951[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1004_11_lut (.I0(GND_net), .I1(n1401), .I2(VCC_net), 
            .I3(n10590), .O(n1466[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_11 (.CI(n10590), .I0(n1401), .I1(VCC_net), 
            .CO(n10591));
    SB_CARRY mod_5_add_2009_19 (.CI(n10853), .I0(n2893), .I1(VCC_net), 
            .CO(n10854));
    SB_LUT4 mod_5_add_2009_18_lut (.I0(GND_net), .I1(n2894), .I2(VCC_net), 
            .I3(n10852), .O(n2951[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_18 (.CI(n10852), .I0(n2894), .I1(VCC_net), 
            .CO(n10853));
    SB_LUT4 mod_5_add_2009_17_lut (.I0(GND_net), .I1(n2895), .I2(VCC_net), 
            .I3(n10851), .O(n2951[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_17 (.CI(n10851), .I0(n2895), .I1(VCC_net), 
            .CO(n10852));
    SB_LUT4 mod_5_add_2009_16_lut (.I0(GND_net), .I1(n2896), .I2(VCC_net), 
            .I3(n10850), .O(n2951[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_16 (.CI(n10850), .I0(n2896), .I1(VCC_net), 
            .CO(n10851));
    SB_LUT4 mod_5_add_2009_15_lut (.I0(GND_net), .I1(n2897), .I2(VCC_net), 
            .I3(n10849), .O(n2951[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_15 (.CI(n10849), .I0(n2897), .I1(VCC_net), 
            .CO(n10850));
    SB_LUT4 mod_5_add_2009_14_lut (.I0(GND_net), .I1(n2898), .I2(VCC_net), 
            .I3(n10848), .O(n2951[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1004_10_lut (.I0(GND_net), .I1(n1402), .I2(VCC_net), 
            .I3(n10589), .O(n1466[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_14 (.CI(n10848), .I0(n2898), .I1(VCC_net), 
            .CO(n10849));
    SB_CARRY mod_5_add_1004_10 (.CI(n10589), .I0(n1402), .I1(VCC_net), 
            .CO(n10590));
    SB_LUT4 mod_5_add_2009_13_lut (.I0(GND_net), .I1(n2899), .I2(VCC_net), 
            .I3(n10847), .O(n2951[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_13 (.CI(n10847), .I0(n2899), .I1(VCC_net), 
            .CO(n10848));
    SB_LUT4 mod_5_add_1004_9_lut (.I0(GND_net), .I1(n1403), .I2(VCC_net), 
            .I3(n10588), .O(n1466[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1215_3_lut (.I0(n1705), .I1(n1763[23]), .I2(n1730), 
            .I3(GND_net), .O(n1804));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1215_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1004_9 (.CI(n10588), .I0(n1403), .I1(VCC_net), 
            .CO(n10589));
    SB_LUT4 mod_5_add_1004_8_lut (.I0(GND_net), .I1(n1404), .I2(VCC_net), 
            .I3(n10587), .O(n1466[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_8 (.CI(n10587), .I0(n1404), .I1(VCC_net), 
            .CO(n10588));
    SB_LUT4 mod_5_add_2009_12_lut (.I0(GND_net), .I1(n2900), .I2(VCC_net), 
            .I3(n10846), .O(n2951[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_12 (.CI(n10846), .I0(n2900), .I1(VCC_net), 
            .CO(n10847));
    SB_LUT4 mod_5_add_2009_11_lut (.I0(GND_net), .I1(n2901), .I2(VCC_net), 
            .I3(n10845), .O(n2951[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_11 (.CI(n10845), .I0(n2901), .I1(VCC_net), 
            .CO(n10846));
    SB_LUT4 mod_5_add_2009_10_lut (.I0(GND_net), .I1(n2902), .I2(VCC_net), 
            .I3(n10844), .O(n2951[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_10 (.CI(n10844), .I0(n2902), .I1(VCC_net), 
            .CO(n10845));
    SB_LUT4 mod_5_add_2009_9_lut (.I0(GND_net), .I1(n2903), .I2(VCC_net), 
            .I3(n10843), .O(n2951[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_9 (.CI(n10843), .I0(n2903), .I1(VCC_net), 
            .CO(n10844));
    SB_LUT4 mod_5_add_1004_7_lut (.I0(GND_net), .I1(n1405), .I2(VCC_net), 
            .I3(n10586), .O(n1466[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_8_lut (.I0(GND_net), .I1(n2904), .I2(VCC_net), 
            .I3(n10842), .O(n2951[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_7 (.CI(n10586), .I0(n1405), .I1(VCC_net), 
            .CO(n10587));
    SB_CARRY mod_5_add_2009_8 (.CI(n10842), .I0(n2904), .I1(VCC_net), 
            .CO(n10843));
    SB_LUT4 mod_5_add_2009_7_lut (.I0(GND_net), .I1(n2905), .I2(VCC_net), 
            .I3(n10841), .O(n2951[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_7 (.CI(n10841), .I0(n2905), .I1(VCC_net), 
            .CO(n10842));
    SB_LUT4 mod_5_add_2009_6_lut (.I0(GND_net), .I1(n2906), .I2(VCC_net), 
            .I3(n10840), .O(n2951[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_6 (.CI(n10840), .I0(n2906), .I1(VCC_net), 
            .CO(n10841));
    SB_LUT4 mod_5_add_2009_5_lut (.I0(GND_net), .I1(n2907), .I2(VCC_net), 
            .I3(n10839), .O(n2951[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_5 (.CI(n10839), .I0(n2907), .I1(VCC_net), 
            .CO(n10840));
    SB_LUT4 mod_5_add_2009_4_lut (.I0(GND_net), .I1(n2908), .I2(VCC_net), 
            .I3(n10838), .O(n2951[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_4 (.CI(n10838), .I0(n2908), .I1(VCC_net), 
            .CO(n10839));
    SB_LUT4 mod_5_add_2009_3_lut (.I0(GND_net), .I1(n2909), .I2(GND_net), 
            .I3(n10837), .O(n2951[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i2 (.Q(bit_ctr[2]), .C(CLK_c), .E(n7230), .D(n255[2]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1075_3_lut (.I0(n1501), .I1(n1565[29]), .I2(n1532), 
            .I3(GND_net), .O(n1600));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1075_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2009_3 (.CI(n10837), .I0(n2909), .I1(GND_net), 
            .CO(n10838));
    SB_LUT4 mod_5_add_1004_6_lut (.I0(GND_net), .I1(n1406), .I2(VCC_net), 
            .I3(n10585), .O(n1466[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_6 (.CI(n10585), .I0(n1406), .I1(VCC_net), 
            .CO(n10586));
    SB_LUT4 mod_5_add_1004_5_lut (.I0(GND_net), .I1(n1407), .I2(VCC_net), 
            .I3(n10584), .O(n1466[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1011_3_lut (.I0(n1405), .I1(n1466[26]), .I2(n1433), 
            .I3(GND_net), .O(n1504));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1011_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i1 (.Q(bit_ctr[1]), .C(CLK_c), .E(n7230), .D(n255[1]), 
            .R(n7411));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_2009_2_lut (.I0(GND_net), .I1(bit_ctr[6]), .I2(GND_net), 
            .I3(VCC_net), .O(n2951[6])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i811_3_lut (.I0(n1109), .I1(n1169[25]), .I2(n1136), 
            .I3(GND_net), .O(n1208));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i811_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i878_3_lut (.I0(n1208), .I1(n1268[25]), .I2(n1235), 
            .I3(GND_net), .O(n1307));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_132 (.I0(bit_ctr[17]), .I1(n1804), .I2(n1809), 
            .I3(GND_net), .O(n19));   // verilog/neopixel.v(22[26:36])
    defparam i5_3_lut_adj_132.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_i947_3_lut (.I0(n1309), .I1(n1367[23]), .I2(n1334), 
            .I3(GND_net), .O(n1408));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9_4_lut_adj_133 (.I0(n1800), .I1(n1806), .I2(n1801), .I3(n1802), 
            .O(n23));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_133.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(bit_ctr[29]), .I1(bit_ctr[31]), .I2(bit_ctr[30]), 
            .I3(GND_net), .O(n9618));   // verilog/neopixel.v(22[26:36])
    defparam i1_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 equal_607_i8_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(GND_net), .I3(GND_net), .O(n7131));
    defparam equal_607_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1393_4_lut (.I0(n13262), .I1(update_color), .I2(\state[1] ), 
            .I3(\state_3__N_377[1] ), .O(n3739));
    defparam i1393_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i2_2_lut_adj_134 (.I0(bit_ctr[22]), .I1(bit_ctr[17]), .I2(GND_net), 
            .I3(GND_net), .O(n30_adj_703));
    defparam i2_2_lut_adj_134.LUT_INIT = 16'heeee;
    SB_LUT4 i20_4_lut_adj_135 (.I0(bit_ctr[20]), .I1(bit_ctr[7]), .I2(bit_ctr[16]), 
            .I3(bit_ctr[30]), .O(n48_adj_704));
    defparam i20_4_lut_adj_135.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_136 (.I0(bit_ctr[25]), .I1(bit_ctr[10]), .I2(bit_ctr[9]), 
            .I3(bit_ctr[27]), .O(n46_adj_705));
    defparam i18_4_lut_adj_136.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_137 (.I0(bit_ctr[15]), .I1(bit_ctr[29]), .I2(bit_ctr[12]), 
            .I3(bit_ctr[23]), .O(n47_adj_706));
    defparam i19_4_lut_adj_137.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_138 (.I0(bit_ctr[19]), .I1(bit_ctr[21]), .I2(bit_ctr[31]), 
            .I3(bit_ctr[14]), .O(n45_adj_707));
    defparam i17_4_lut_adj_138.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_139 (.I0(bit_ctr[11]), .I1(bit_ctr[5]), .I2(bit_ctr[28]), 
            .I3(bit_ctr[6]), .O(n44_adj_708));
    defparam i16_4_lut_adj_139.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_140 (.I0(bit_ctr[3]), .I1(n30_adj_703), .I2(bit_ctr[13]), 
            .I3(bit_ctr[4]), .O(n43_adj_709));
    defparam i15_4_lut_adj_140.LUT_INIT = 16'hfefc;
    SB_LUT4 i26_4_lut_adj_141 (.I0(n45_adj_707), .I1(n47_adj_706), .I2(n46_adj_705), 
            .I3(n48_adj_704), .O(n54));
    defparam i26_4_lut_adj_141.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut_adj_142 (.I0(bit_ctr[24]), .I1(bit_ctr[8]), .I2(bit_ctr[18]), 
            .I3(bit_ctr[26]), .O(n49_adj_710));
    defparam i21_4_lut_adj_142.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut (.I0(n49_adj_710), .I1(n54), .I2(n43_adj_709), .I3(n44_adj_708), 
            .O(\state_3__N_377[1] ));
    defparam i27_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_143 (.I0(n7342), .I1(bit_ctr[26]), .I2(bit_ctr[27]), 
            .I3(n838), .O(n12595));
    defparam i1_3_lut_4_lut_adj_143.LUT_INIT = 16'h1551;
    SB_LUT4 i5_3_lut_adj_144 (.I0(n3739), .I1(n10_adj_653), .I2(\state[0] ), 
            .I3(GND_net), .O(n7411));
    defparam i5_3_lut_adj_144.LUT_INIT = 16'h4040;
    SB_LUT4 i9439_3_lut (.I0(n10918), .I1(n7131), .I2(n7120), .I3(GND_net), 
            .O(n13263));
    defparam i9439_3_lut.LUT_INIT = 16'hcdcd;
    SB_LUT4 i7854_rep_2_3_lut_4_lut (.I0(bit_ctr[28]), .I1(bit_ctr[29]), 
            .I2(n9618), .I3(n608), .O(n11738));
    defparam i7854_rep_2_3_lut_4_lut.LUT_INIT = 16'h2228;
    SB_LUT4 i9471_4_lut_4_lut (.I0(bit_ctr[30]), .I1(bit_ctr[29]), .I2(bit_ctr[31]), 
            .I3(n9618), .O(n708));
    defparam i9471_4_lut_4_lut.LUT_INIT = 16'hc64a;
    SB_LUT4 i2045_2_lut_3_lut (.I0(bit_ctr[28]), .I1(n739), .I2(bit_ctr[27]), 
            .I3(GND_net), .O(n5260));   // verilog/neopixel.v(22[26:36])
    defparam i2045_2_lut_3_lut.LUT_INIT = 16'h9090;
    SB_LUT4 i6476_4_lut (.I0(one_wire_N_528[8]), .I1(n7181), .I2(one_wire_N_528[10]), 
            .I3(one_wire_N_528[9]), .O(n9700));
    defparam i6476_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i7796_4_lut (.I0(n7120), .I1(n10918), .I2(n4_adj_642), .I3(\state[0] ), 
            .O(n9702));   // verilog/neopixel.v(36[4] 116[11])
    defparam i7796_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i9438_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(\state[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n13271));
    defparam i9438_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7843_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(n9702), .I3(GND_net), .O(n11606));
    defparam i7843_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i15_4_lut_adj_145 (.I0(n11606), .I1(n13271), .I2(\state[1] ), 
            .I3(n9700), .O(n7));
    defparam i15_4_lut_adj_145.LUT_INIT = 16'h3a0a;
    SB_LUT4 i9559_2_lut (.I0(start), .I1(\state[1] ), .I2(GND_net), .I3(GND_net), 
            .O(start_N_576));   // verilog/neopixel.v(36[4] 116[11])
    defparam i9559_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i9545_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(\state[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n11487));
    defparam i9545_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_146 (.I0(one_wire_N_528[2]), .I1(n11487), .I2(one_wire_N_528[3]), 
            .I3(n11533), .O(n103));
    defparam i1_4_lut_adj_146.LUT_INIT = 16'h45cd;
    SB_LUT4 i7_4_lut_adj_147 (.I0(one_wire_N_528[9]), .I1(one_wire_N_528[8]), 
            .I2(n103), .I3(\state[1] ), .O(n18_adj_711));
    defparam i7_4_lut_adj_147.LUT_INIT = 16'h0010;
    SB_LUT4 i9_4_lut_adj_148 (.I0(n7181), .I1(n18_adj_711), .I2(one_wire_N_528[7]), 
            .I3(start), .O(n20_adj_712));
    defparam i9_4_lut_adj_148.LUT_INIT = 16'h0004;
    SB_LUT4 i2_2_lut_adj_149 (.I0(one_wire_N_528[6]), .I1(one_wire_N_528[10]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_713));
    defparam i2_2_lut_adj_149.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_150 (.I0(n7_adj_713), .I1(one_wire_N_528[4]), .I2(one_wire_N_528[5]), 
            .I3(n20_adj_712), .O(n13491));
    defparam i4_4_lut_adj_150.LUT_INIT = 16'hfeff;
    SB_LUT4 mux_699_Mux_0_i3_3_lut (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(\state[1] ), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_585 ));   // verilog/neopixel.v(36[4] 116[11])
    defparam mux_699_Mux_0_i3_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 mod_5_i880_3_lut (.I0(bit_ctr[23]), .I1(n1268[23]), .I2(n1235), 
            .I3(GND_net), .O(n1309));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1074_3_lut (.I0(n1500), .I1(n1565[30]), .I2(n1532), 
            .I3(GND_net), .O(n1599));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1074_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i9_1_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_151 (.I0(one_wire_N_528[5]), .I1(one_wire_N_528[4]), 
            .I2(GND_net), .I3(GND_net), .O(n12933));   // verilog/neopixel.v(104[14:39])
    defparam i1_2_lut_adj_151.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_152 (.I0(one_wire_N_528[8]), .I1(one_wire_N_528[7]), 
            .I2(one_wire_N_528[6]), .I3(n12933), .O(n12939));   // verilog/neopixel.v(104[14:39])
    defparam i1_4_lut_adj_152.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_153 (.I0(one_wire_N_528[10]), .I1(n7181), .I2(one_wire_N_528[9]), 
            .I3(n12939), .O(n7120));   // verilog/neopixel.v(104[14:39])
    defparam i1_4_lut_adj_153.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_adj_154 (.I0(one_wire_N_528[2]), .I1(n11533), .I2(GND_net), 
            .I3(GND_net), .O(n10918));
    defparam i2_2_lut_adj_154.LUT_INIT = 16'h8888;
    SB_LUT4 i8_4_lut_adj_155 (.I0(n1797), .I1(n1798), .I2(n1796), .I3(n1799), 
            .O(n22));   // verilog/neopixel.v(22[26:36])
    defparam i8_4_lut_adj_155.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_156 (.I0(one_wire_N_528[2]), .I1(one_wire_N_528[3]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_642));
    defparam i1_2_lut_adj_156.LUT_INIT = 16'heeee;
    SB_LUT4 i22_4_lut_adj_157 (.I0(n4_adj_642), .I1(n10918), .I2(\state[0] ), 
            .I3(\neo_pixel_transmitter.done ), .O(n11696));
    defparam i22_4_lut_adj_157.LUT_INIT = 16'hacca;
    SB_LUT4 i7914_4_lut (.I0(n11696), .I1(\state[1] ), .I2(n7120), .I3(start), 
            .O(n11683));
    defparam i7914_4_lut.LUT_INIT = 16'hcccd;
    SB_LUT4 sub_14_inv_0_i29_1_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i10_1_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i672_3_lut (.I0(n906), .I1(n971[30]), .I2(n10994), .I3(GND_net), 
            .O(n1005));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i672_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_158 (.I0(bit_ctr[27]), .I1(n838), .I2(GND_net), 
            .I3(GND_net), .O(n7082));
    defparam i1_2_lut_adj_158.LUT_INIT = 16'h9999;
    SB_LUT4 sub_14_inv_0_i30_1_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1899_rep_16_3_lut (.I0(n2709), .I1(n2753[9]), .I2(n2720), 
            .I3(GND_net), .O(n2808));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1899_rep_16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1891_rep_18_3_lut (.I0(n2701), .I1(n2753[17]), .I2(n2720), 
            .I3(GND_net), .O(n2800));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1891_rep_18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1897_rep_21_3_lut (.I0(n2707), .I1(n2753[11]), .I2(n2720), 
            .I3(GND_net), .O(n2806));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1897_rep_21_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1894_3_lut (.I0(n2704), .I1(n2753[14]), .I2(n2720), 
            .I3(GND_net), .O(n2803));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1894_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1888_3_lut (.I0(n2698), .I1(n2753[20]), .I2(n2720), 
            .I3(GND_net), .O(n2797));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1888_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1895_3_lut (.I0(n2705), .I1(n2753[13]), .I2(n2720), 
            .I3(GND_net), .O(n2804));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1895_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
