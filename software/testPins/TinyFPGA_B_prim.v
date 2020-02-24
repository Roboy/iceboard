// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Feb 24 16:01:49 2020
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
    
    wire GND_net, VCC_net, n2469, LED_c, NEOPXL_c;
    wire [25:0]blink_counter;   // verilog/TinyFPGA_B.v(38[12:25])
    
    wire n22, n110, n19, n22_adj_787, n19_adj_788, update_color;
    wire [23:0]neopxl_color;   // verilog/TinyFPGA_B.v(52[12:24])
    wire [23:0]neopxl_color_prev;   // verilog/TinyFPGA_B.v(53[12:29])
    
    wire n10612, n11353;
    wire [22:0]pin_out;   // verilog/TinyFPGA_B.v(63[13:20])
    wire [22:0]pin_in;   // verilog/TinyFPGA_B.v(64[13:19])
    wire [22:0]pin_oe;   // verilog/TinyFPGA_B.v(65[13:19])
    wire [7:0]state;   // verilog/TinyFPGA_B.v(96[11:16])
    wire [7:0]current_pin;   // verilog/TinyFPGA_B.v(97[11:22])
    wire [7:0]counter;   // verilog/TinyFPGA_B.v(101[11:18])
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(102[9:22])
    
    wire n13360, n19_adj_789, update_color_N_341, pin_out_22__N_216;
    wire [31:0]timer;   // verilog/neopixel.v(9[12:17])
    
    wire n1788, n7992;
    wire [7:0]state_7__N_167;
    
    wire n19_adj_790, n1907, n111, n13369, current_pin_7__N_153, n13357, 
        n14, n26, n13381, n10, n8132, n8131, n8130, n8129, n8128, 
        n8127, n8126, n8125, n8124, n8123, n8122, n8121, n8120, 
        n8119, n8118, n8117, n8116, n8114, n8113, n8112, n8111, 
        n8110, n8109, n10668, n10667, n7681, n9, n2468, n2467, 
        n2470, n2471, n2472, n2473, n2474;
    wire [3:0]state_adj_848;   // verilog/neopixel.v(16[20:25])
    wire [31:0]\neo_pixel_transmitter.t0 ;   // verilog/neopixel.v(28[14:16])
    
    wire n22_adj_793, n19_adj_794, n6, n7, n7671, n22_adj_795, n129, 
        n19_adj_796, n13603;
    wire [3:0]state_3__N_448;
    
    wire n10666, n3104, n12382, n13354, n7_adj_797, n8108, n8107, 
        n8106, n8105, n8104, n8103, n8102, n8101, n8100, n8099, 
        n8098, n8097, n8096, n8095, n8094, n8093, n8092, n8091, 
        n8090, n8089, n8088, n8087, n8086, n8085, n8084, n8083, 
        n8082, n8081, n8080, n8079, n8078, n8077, n7664, n10706, 
        n10665, n10664, n13375, n10705, n10663, n8076, n8075, 
        n8074, n10662, n26_adj_798, n25, n24, n23, n10704, n22_adj_799, 
        n21, n20, n10703, n10702, n19_adj_800, n18, n113, n115, 
        n17, n116, n16, n117, n24_adj_801, n118, n119, n120, 
        n10661, n15, n122, n121, n8025, n123, n124, n14_adj_802, 
        n13, n127, n131, n12, n10701, n132, n133, n8073, n8072, 
        n8071, n8070, n8069, n8068, n8067, n8066, n8065, n8064, 
        n165, n164, n163, n162, n161, n160, n159, n158, n157, 
        n156, n155, n154, n153, n152, n151, n150, n149, n148, 
        n147, n146, n145, n144, n143, n142, n141, n140, n139, 
        n138, n137, n136, n135, n134, n134_adj_803, n8063, n11, 
        n135_adj_804, n2618, n7635, n10700, n3762, n6_adj_805, n10660, 
        n7985, n112, n10_adj_806, n9_adj_807, n8, n7_adj_808, n130, 
        n6_adj_809, n6_adj_810, n7_adj_811, n10659, n9_adj_812, n10611, 
        n10658, n10657, n10656, n125, n6_adj_813, n128, n10610, 
        n10601, n10600, n10594, n10593, n126, n10587, n114, n45, 
        n48, n49, n50, n51, n52, n53, n54, n55, n10586, n10580, 
        n10579, n10576, n10609, n10599, n10592, n10585, n8062, 
        n8061, n8060, n8059, n8058, n8057, n8056, n8055, n12379, 
        n10578, n11952, n11974, n11972, n11789, n11970, n11968, 
        n11966, n11964, n11962, n11960, n11958, n11956, n11954, 
        n7730, n8138, n10655, n8137, n11874, n10608, n10654, n9768, 
        n13652, n13649, n13646, n10607, n10653, n19_adj_814, n18_adj_815, 
        n17_adj_816, n10652, n8_adj_817, n10651, n7_adj_818, n6_adj_819, 
        n8_adj_820, n7_adj_821, n8_adj_822, n7_adj_823, n9_adj_824, 
        n8_adj_825, n8_adj_826, n7_adj_827, n8_adj_828, n8_adj_829, 
        n7_adj_830, n7_adj_831, n8_adj_832, n7_adj_833, n8_adj_834, 
        n7_adj_835, n8_adj_836, n7_adj_837, n7_adj_838, n7_adj_839, 
        n7_adj_840, n13643, n13640, n13637, n13634, n13631, n13628, 
        n13625, n13616, n13613, n13610, n13607, n15_adj_841, n14_adj_842, 
        n6_adj_843, n13465, n7602, n12268, n4, n13389, n13388, 
        n13536, n13382, n13379, n13376, n11821, n11823, n13370, 
        n11822, n11824, n13361, n11825, n10650, n11826, n13358, 
        n11828, n13355, n13352, n11820, n12_adj_844, n10649, n8136, 
        n11_adj_845, n8135, n10_adj_846, n10606, n9_adj_847, n8134, 
        n10575, n10648, n10584, n10591, n10647, n13540, n10598, 
        n10605, n12414, n13542, n10646, n10645, n10644, n10577, 
        n10583, n10582, n10590, n10589, n10597, n10596, n10604, 
        n10603, n13551, n10581, n10588, n10595, n10602, n9488, 
        n9675, n13378, n8133;
    
    VCC i2 (.Y(VCC_net));
    \neopixel(CLOCK_SPEED_HZ=16000000)  nx (.VCC_net(VCC_net), .GND_net(GND_net), 
            .timer({timer}), .CLK_c(CLK_c), .\neo_pixel_transmitter.t0 ({\neo_pixel_transmitter.t0 }), 
            .n8116(n8116), .\state[1] (state_adj_848[1]), .n8092(n8092), 
            .n8091(n8091), .n8090(n8090), .n8089(n8089), .n8088(n8088), 
            .n8087(n8087), .n8086(n8086), .n8085(n8085), .n8084(n8084), 
            .n8083(n8083), .n8082(n8082), .n8081(n8081), .n8080(n8080), 
            .n8079(n8079), .n8078(n8078), .n8077(n8077), .n8076(n8076), 
            .n8075(n8075), .n8074(n8074), .n8073(n8073), .n8072(n8072), 
            .n8071(n8071), .n8070(n8070), .n8069(n8069), .n8068(n8068), 
            .n8067(n8067), .n8066(n8066), .n8065(n8065), .n8064(n8064), 
            .n8063(n8063), .n8062(n8062), .n8055(n8055), .\state[0] (state_adj_848[0]), 
            .\state_3__N_448[1] (state_3__N_448[1]), .\neopxl_color[4] (neopxl_color[4]), 
            .\neopxl_color[5] (neopxl_color[5]), .\neopxl_color[6] (neopxl_color[6]), 
            .\neopxl_color[7] (neopxl_color[7]), .\neopxl_color[14] (neopxl_color[14]), 
            .\neopxl_color[15] (neopxl_color[15]), .\neopxl_color[12] (neopxl_color[12]), 
            .\neopxl_color[13] (neopxl_color[13]), .n7671(n7671), .NEOPXL_c(NEOPXL_c), 
            .update_color(update_color), .n11353(n11353)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(55[24] 61[2])
    SB_IO pin1 (.PACKAGE_PIN(ENCODER0_A), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[1]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[1]), .D_IN_0(pin_in[1])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin1.PIN_TYPE = 6'b101001;
    defparam pin1.PULLUP = 1'b1;
    defparam pin1.NEG_TRIGGER = 1'b0;
    defparam pin1.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin2 (.PACKAGE_PIN(ENCODER0_B), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[2]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[2]), .D_IN_0(pin_in[2])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin2.PIN_TYPE = 6'b101001;
    defparam pin2.PULLUP = 1'b1;
    defparam pin2.NEG_TRIGGER = 1'b0;
    defparam pin2.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin3 (.PACKAGE_PIN(ENCODER1_A), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[3]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[3]), .D_IN_0(pin_in[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin3.PIN_TYPE = 6'b101001;
    defparam pin3.PULLUP = 1'b1;
    defparam pin3.NEG_TRIGGER = 1'b0;
    defparam pin3.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin4 (.PACKAGE_PIN(ENCODER1_B), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[4]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[4]), .D_IN_0(pin_in[4])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin4.PIN_TYPE = 6'b101001;
    defparam pin4.PULLUP = 1'b1;
    defparam pin4.NEG_TRIGGER = 1'b0;
    defparam pin4.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin5 (.PACKAGE_PIN(HALL1), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[5]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[5]), .D_IN_0(pin_in[5])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin5.PIN_TYPE = 6'b101001;
    defparam pin5.PULLUP = 1'b1;
    defparam pin5.NEG_TRIGGER = 1'b0;
    defparam pin5.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin6 (.PACKAGE_PIN(HALL2), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[6]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[6]), .D_IN_0(pin_in[6])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin6.PIN_TYPE = 6'b101001;
    defparam pin6.PULLUP = 1'b1;
    defparam pin6.NEG_TRIGGER = 1'b0;
    defparam pin6.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin7 (.PACKAGE_PIN(HALL3), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[7]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[7]), .D_IN_0(pin_in[7])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin7.PIN_TYPE = 6'b101001;
    defparam pin7.PULLUP = 1'b1;
    defparam pin7.NEG_TRIGGER = 1'b0;
    defparam pin7.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin8 (.PACKAGE_PIN(FAULT_N), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[8]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[8]), .D_IN_0(pin_in[8])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin8.PIN_TYPE = 6'b101001;
    defparam pin8.PULLUP = 1'b1;
    defparam pin8.NEG_TRIGGER = 1'b0;
    defparam pin8.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin9 (.PACKAGE_PIN(DE), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[9]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[9]), .D_IN_0(pin_in[9])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin9.PIN_TYPE = 6'b101001;
    defparam pin9.PULLUP = 1'b1;
    defparam pin9.NEG_TRIGGER = 1'b0;
    defparam pin9.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin10 (.PACKAGE_PIN(TX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[10]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[10]), .D_IN_0(pin_in[10])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin10.PIN_TYPE = 6'b101001;
    defparam pin10.PULLUP = 1'b1;
    defparam pin10.NEG_TRIGGER = 1'b0;
    defparam pin10.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin11 (.PACKAGE_PIN(RX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[11]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[11]), .D_IN_0(pin_in[11])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin11.PIN_TYPE = 6'b101001;
    defparam pin11.PULLUP = 1'b1;
    defparam pin11.NEG_TRIGGER = 1'b0;
    defparam pin11.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin12 (.PACKAGE_PIN(CS_CLK), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[12]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[12]), .D_IN_0(pin_in[12])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin12.PIN_TYPE = 6'b101001;
    defparam pin12.PULLUP = 1'b1;
    defparam pin12.NEG_TRIGGER = 1'b0;
    defparam pin12.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin13 (.PACKAGE_PIN(CS), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[13]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[13]), .D_IN_0(pin_in[13])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin13.PIN_TYPE = 6'b101001;
    defparam pin13.PULLUP = 1'b1;
    defparam pin13.NEG_TRIGGER = 1'b0;
    defparam pin13.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin14 (.PACKAGE_PIN(CS_MISO), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[14]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[14]), .D_IN_0(pin_in[14])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin14.PIN_TYPE = 6'b101001;
    defparam pin14.PULLUP = 1'b1;
    defparam pin14.NEG_TRIGGER = 1'b0;
    defparam pin14.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin15 (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[15]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[15]), .D_IN_0(pin_in[15])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin15.PIN_TYPE = 6'b101001;
    defparam pin15.PULLUP = 1'b1;
    defparam pin15.NEG_TRIGGER = 1'b0;
    defparam pin15.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin16 (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[16]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[16]), .D_IN_0(pin_in[16])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin16.PIN_TYPE = 6'b101001;
    defparam pin16.PULLUP = 1'b1;
    defparam pin16.NEG_TRIGGER = 1'b0;
    defparam pin16.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin17 (.PACKAGE_PIN(INLC), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[17]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[17]), .D_IN_0(pin_in[17])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin17.PIN_TYPE = 6'b101001;
    defparam pin17.PULLUP = 1'b1;
    defparam pin17.NEG_TRIGGER = 1'b0;
    defparam pin17.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin18 (.PACKAGE_PIN(INHC), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[18]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[18]), .D_IN_0(pin_in[18])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin18.PIN_TYPE = 6'b101001;
    defparam pin18.PULLUP = 1'b1;
    defparam pin18.NEG_TRIGGER = 1'b0;
    defparam pin18.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin19 (.PACKAGE_PIN(INLB), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[19]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[19]), .D_IN_0(pin_in[19])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin19.PIN_TYPE = 6'b101001;
    defparam pin19.PULLUP = 1'b1;
    defparam pin19.NEG_TRIGGER = 1'b0;
    defparam pin19.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin20 (.PACKAGE_PIN(INHB), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[20]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[20]), .D_IN_0(pin_in[20])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin20.PIN_TYPE = 6'b101001;
    defparam pin20.PULLUP = 1'b1;
    defparam pin20.NEG_TRIGGER = 1'b0;
    defparam pin20.IO_STANDARD = "SB_LVCMOS";
    SB_IO pin21 (.PACKAGE_PIN(INLA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[21]), .D_OUT_1(GND_net), 
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
    SB_LUT4 delay_counter_634_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[23]), .I3(n10604), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_13 (.CI(n10592), .I0(GND_net), .I1(delay_counter[11]), 
            .CO(n10593));
    SB_CARRY delay_counter_634_add_4_25 (.CI(n10604), .I0(GND_net), .I1(delay_counter[23]), 
            .CO(n10605));
    SB_IO pin0 (.PACKAGE_PIN(USBPU), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(pin_oe[0]), .D_OUT_1(GND_net), 
          .D_OUT_0(pin_out[0]), .D_IN_0(pin_in[0])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam pin0.PIN_TYPE = 6'b101001;
    defparam pin0.PULLUP = 1'b1;
    defparam pin0.NEG_TRIGGER = 1'b0;
    defparam pin0.IO_STANDARD = "SB_LVCMOS";
    SB_DFF neopxl_color_prev_i5 (.Q(neopxl_color_prev[5]), .C(CLK_c), .D(neopxl_color[5]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 i2_3_lut (.I0(state[2]), .I1(state[0]), .I2(state[1]), .I3(GND_net), 
            .O(n3762));
    defparam i2_3_lut.LUT_INIT = 16'h0404;
    SB_DFF neopxl_color_prev_i4 (.Q(neopxl_color_prev[4]), .C(CLK_c), .D(neopxl_color[4]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i31 (.Q(delay_counter[31]), .C(CLK_c), 
            .E(n7664), .D(n134), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF pin_output_i0_i15 (.Q(pin_out[15]), .C(CLK_c), .D(n8131));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 blink_counter_635_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[25]), .I3(n10668), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_635_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[24]), .I3(n10667), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_DFF blink_counter_635__i0 (.Q(n26_adj_798), .C(CLK_c), .D(n135_adj_804));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_LUT4 i4339_4_lut (.I0(pin_out[15]), .I1(n9675), .I2(n8_adj_832), 
            .I3(n11789), .O(n8131));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4339_4_lut.LUT_INIT = 16'h3aaa;
    SB_DFFESR delay_counter_634__i30 (.Q(delay_counter[30]), .C(CLK_c), 
            .E(n7664), .D(n135), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFE counter_633__i0 (.Q(counter[0]), .C(CLK_c), .E(n11789), .D(n55));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_CARRY blink_counter_635_add_4_26 (.CI(n10667), .I0(GND_net), .I1(blink_counter[24]), 
            .CO(n10668));
    SB_DFFESR delay_counter_634__i29 (.Q(delay_counter[29]), .C(CLK_c), 
            .E(n7664), .D(n136), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i1_2_lut (.I0(state[2]), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n7602));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(CLK_c));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(NEOPXL_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i5_3_lut (.I0(delay_counter[3]), .I1(delay_counter[5]), .I2(delay_counter[4]), 
            .I3(GND_net), .O(n14_adj_842));
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 delay_counter_634_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[22]), .I3(n10603), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_DFF pin_output_i0_i14 (.Q(pin_out[14]), .C(CLK_c), .D(n8130));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i13 (.Q(pin_out[13]), .C(CLK_c), .D(n8129));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i12 (.Q(pin_out[12]), .C(CLK_c), .D(n8128));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i28 (.Q(delay_counter[28]), .C(CLK_c), 
            .E(n7664), .D(n137), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF pin_output_i0_i11 (.Q(pin_out[11]), .C(CLK_c), .D(n8127));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i10 (.Q(pin_out[10]), .C(CLK_c), .D(n8126));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i9 (.Q(pin_out[9]), .C(CLK_c), .D(n8125));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i8 (.Q(pin_out[8]), .C(CLK_c), .D(n8124));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i7 (.Q(pin_out[7]), .C(CLK_c), .D(n8123));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i27 (.Q(delay_counter[27]), .C(CLK_c), 
            .E(n7664), .D(n138), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF neopxl_color_prev_i14 (.Q(neopxl_color_prev[14]), .C(CLK_c), 
           .D(neopxl_color[14]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF neopxl_color_prev_i13 (.Q(neopxl_color_prev[13]), .C(CLK_c), 
           .D(neopxl_color[13]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i26 (.Q(delay_counter[26]), .C(CLK_c), 
            .E(n7664), .D(n139), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 blink_counter_635_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[23]), .I3(n10666), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_25_lut.LUT_INIT = 16'hC33C;
    GND i1 (.Y(GND_net));
    SB_CARRY blink_counter_635_add_4_25 (.CI(n10666), .I0(GND_net), .I1(blink_counter[23]), 
            .CO(n10667));
    SB_LUT4 blink_counter_635_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[22]), .I3(n10665), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_24 (.CI(n10665), .I0(GND_net), .I1(blink_counter[22]), 
            .CO(n10666));
    SB_DFFESR delay_counter_634__i25 (.Q(delay_counter[25]), .C(CLK_c), 
            .E(n7664), .D(n140), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF pin_output_i0_i6 (.Q(pin_out[6]), .C(CLK_c), .D(n8122));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 blink_counter_635_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(blink_counter[21]), .I3(n10664), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_24 (.CI(n10603), .I0(GND_net), .I1(delay_counter[22]), 
            .CO(n10604));
    SB_LUT4 delay_counter_634_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[21]), .I3(n10602), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_23 (.CI(n10602), .I0(GND_net), .I1(delay_counter[21]), 
            .CO(n10603));
    SB_CARRY blink_counter_635_add_4_23 (.CI(n10664), .I0(GND_net), .I1(blink_counter[21]), 
            .CO(n10665));
    SB_LUT4 i6_4_lut (.I0(delay_counter[8]), .I1(delay_counter[6]), .I2(delay_counter[1]), 
            .I3(delay_counter[2]), .O(n15_adj_841));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(n15_adj_841), .I1(delay_counter[0]), .I2(n14_adj_842), 
            .I3(delay_counter[7]), .O(n12414));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter_634__i24 (.Q(delay_counter[24]), .C(CLK_c), 
            .E(n7664), .D(n141), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF pin_output_i0_i5 (.Q(pin_out[5]), .C(CLK_c), .D(n8121));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 blink_counter_635_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n6_adj_809), .I3(n10663), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_634__i23 (.Q(delay_counter[23]), .C(CLK_c), 
            .E(n7664), .D(n142), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF pin_output_i0_i4 (.Q(pin_out[4]), .C(CLK_c), .D(n8120));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i22 (.Q(delay_counter[22]), .C(CLK_c), 
            .E(n7664), .D(n143), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF neopxl_color_prev_i12 (.Q(neopxl_color_prev[12]), .C(CLK_c), 
           .D(neopxl_color[12]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i21 (.Q(delay_counter[21]), .C(CLK_c), 
            .E(n7664), .D(n144), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i20 (.Q(delay_counter[20]), .C(CLK_c), 
            .E(n7664), .D(n145), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i19 (.Q(delay_counter[19]), .C(CLK_c), 
            .E(n7664), .D(n146), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i820_4_lut (.I0(n12414), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24_adj_801));
    defparam i820_4_lut.LUT_INIT = 16'hc8c0;
    SB_DFFESR delay_counter_634__i18 (.Q(delay_counter[18]), .C(CLK_c), 
            .E(n7664), .D(n147), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i1_2_lut_adj_156 (.I0(delay_counter[16]), .I1(delay_counter[18]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_843));
    defparam i1_2_lut_adj_156.LUT_INIT = 16'heeee;
    SB_DFFESR delay_counter_634__i17 (.Q(delay_counter[17]), .C(CLK_c), 
            .E(n7664), .D(n148), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i2_4_lut (.I0(n24_adj_801), .I1(delay_counter[14]), .I2(delay_counter[12]), 
            .I3(delay_counter[13]), .O(n12382));
    defparam i2_4_lut.LUT_INIT = 16'hc800;
    SB_DFFESR delay_counter_634__i16 (.Q(delay_counter[16]), .C(CLK_c), 
            .E(n7664), .D(n149), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i1_2_lut_adj_157 (.I0(delay_counter[20]), .I1(delay_counter[19]), 
            .I2(GND_net), .I3(GND_net), .O(n4));
    defparam i1_2_lut_adj_157.LUT_INIT = 16'h8888;
    SB_DFFESR delay_counter_634__i15 (.Q(delay_counter[15]), .C(CLK_c), 
            .E(n7664), .D(n150), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_CARRY blink_counter_635_add_4_22 (.CI(n10663), .I0(GND_net), .I1(n6_adj_809), 
            .CO(n10664));
    SB_LUT4 i4_4_lut (.I0(delay_counter[17]), .I1(delay_counter[15]), .I2(n12382), 
            .I3(n6_adj_843), .O(n12379));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(delay_counter[30]), .I1(delay_counter[27]), .I2(delay_counter[25]), 
            .I3(delay_counter[23]), .O(n18_adj_815));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_158 (.I0(delay_counter[21]), .I1(delay_counter[29]), 
            .I2(n12379), .I3(n4), .O(n17_adj_816));
    defparam i6_4_lut_adj_158.LUT_INIT = 16'hfeee;
    SB_LUT4 i8_4_lut_adj_159 (.I0(delay_counter[26]), .I1(delay_counter[22]), 
            .I2(delay_counter[28]), .I3(delay_counter[24]), .O(n19_adj_814));
    defparam i8_4_lut_adj_159.LUT_INIT = 16'hfffe;
    SB_LUT4 i5701_4_lut (.I0(n19_adj_814), .I1(delay_counter[31]), .I2(n17_adj_816), 
            .I3(n18_adj_815), .O(n1907));   // verilog/TinyFPGA_B.v(147[10:33])
    defparam i5701_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 blink_counter_635_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n7_adj_808), .I3(n10662), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFF neopxl_color_prev_i7 (.Q(neopxl_color_prev[7]), .C(CLK_c), .D(neopxl_color[7]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i14 (.Q(delay_counter[14]), .C(CLK_c), 
            .E(n7664), .D(n151), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i13 (.Q(delay_counter[13]), .C(CLK_c), 
            .E(n7664), .D(n152), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFF neopxl_color_prev_i6 (.Q(neopxl_color_prev[6]), .C(CLK_c), .D(neopxl_color[6]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF neopxl_color_prev_i15 (.Q(neopxl_color_prev[15]), .C(CLK_c), 
           .D(neopxl_color[15]));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i3 (.Q(pin_out[3]), .C(CLK_c), .D(n8119));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_CARRY blink_counter_635_add_4_21 (.CI(n10662), .I0(GND_net), .I1(n7_adj_808), 
            .CO(n10663));
    SB_DFFESR delay_counter_634__i12 (.Q(delay_counter[12]), .C(CLK_c), 
            .E(n7664), .D(n153), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i11 (.Q(delay_counter[11]), .C(CLK_c), 
            .E(n7664), .D(n154), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i10 (.Q(delay_counter[10]), .C(CLK_c), 
            .E(n7664), .D(n155), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i9 (.Q(delay_counter[9]), .C(CLK_c), .E(n7664), 
            .D(n156), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i8 (.Q(delay_counter[8]), .C(CLK_c), .E(n7664), 
            .D(n157), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFSS neopxl_color_i7 (.Q(neopxl_color[7]), .C(CLK_c), .D(n19_adj_794), 
            .S(n22_adj_793));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 blink_counter_635_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n8), .I3(n10661), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[20]), .I3(n10601), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_20 (.CI(n10661), .I0(GND_net), .I1(n8), 
            .CO(n10662));
    SB_DFFSS neopxl_color_i6 (.Q(neopxl_color[6]), .C(CLK_c), .D(n19_adj_796), 
            .S(n22_adj_795));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFSS neopxl_color_i5 (.Q(neopxl_color[5]), .C(CLK_c), .D(n19), 
            .S(n22));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFSS neopxl_color_i4 (.Q(neopxl_color[4]), .C(CLK_c), .D(n19_adj_788), 
            .S(n22_adj_787));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i7 (.Q(delay_counter[7]), .C(CLK_c), .E(n7664), 
            .D(n158), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i6 (.Q(delay_counter[6]), .C(CLK_c), .E(n7664), 
            .D(n159), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i5 (.Q(delay_counter[5]), .C(CLK_c), .E(n7664), 
            .D(n160), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i4 (.Q(delay_counter[4]), .C(CLK_c), .E(n7664), 
            .D(n161), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i3 (.Q(delay_counter[3]), .C(CLK_c), .E(n7664), 
            .D(n162), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i2 (.Q(delay_counter[2]), .C(CLK_c), .E(n7664), 
            .D(n163), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_DFFESR delay_counter_634__i1 (.Q(delay_counter[1]), .C(CLK_c), .E(n7664), 
            .D(n164), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 blink_counter_635_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n9_adj_807), .I3(n10660), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_22 (.CI(n10601), .I0(GND_net), .I1(delay_counter[20]), 
            .CO(n10602));
    SB_CARRY blink_counter_635_add_4_19 (.CI(n10660), .I0(GND_net), .I1(n9_adj_807), 
            .CO(n10661));
    SB_LUT4 blink_counter_635_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n10_adj_806), .I3(n10659), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_18 (.CI(n10659), .I0(GND_net), .I1(n10_adj_806), 
            .CO(n10660));
    SB_LUT4 delay_counter_634_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[19]), .I3(n10600), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6_adj_810), .O(n7_adj_831));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hf0f2;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_160 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6), .O(n7_adj_830));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_160.LUT_INIT = 16'hf0f2;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n8_adj_829));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_161.LUT_INIT = 16'hf0f2;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n9488), .O(n8_adj_832));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_162.LUT_INIT = 16'hf2f0;
    SB_LUT4 blink_counter_635_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n11), .I3(n10658), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_17 (.CI(n10658), .I0(GND_net), .I1(n11), 
            .CO(n10659));
    SB_LUT4 i7619_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6), .I2(n7_adj_811), 
            .I3(current_pin[2]), .O(n11956));
    defparam i7619_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6_adj_810), .O(n7_adj_827));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_163.LUT_INIT = 16'hf0f1;
    SB_LUT4 i4307_4_lut_4_lut (.I0(state[0]), .I1(n11968), .I2(n7730), 
            .I3(pin_oe[7]), .O(n8099));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4307_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i4306_4_lut_4_lut (.I0(state[0]), .I1(n11972), .I2(n7730), 
            .I3(pin_oe[6]), .O(n8098));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4306_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6), .O(n8_adj_825));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_164.LUT_INIT = 16'hf0f1;
    SB_DFF pin_output_i0_i2 (.Q(pin_out[2]), .C(CLK_c), .D(n8118));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i1 (.Q(pin_out[1]), .C(CLK_c), .D(n8117));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.I0(current_pin[2]), .I1(n7_adj_811), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n8_adj_826));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_165.LUT_INIT = 16'hf0f1;
    SB_DFF pin_output_enable__i22 (.Q(pin_oe[22]), .C(CLK_c), .D(n8114));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i21 (.Q(pin_oe[21]), .C(CLK_c), .D(n8113));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i20 (.Q(pin_oe[20]), .C(CLK_c), .D(n8112));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i19 (.Q(pin_oe[19]), .C(CLK_c), .D(n8111));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i18 (.Q(pin_oe[18]), .C(CLK_c), .D(n8110));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i17 (.Q(pin_oe[17]), .C(CLK_c), .D(n8109));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i16 (.Q(pin_oe[16]), .C(CLK_c), .D(n8108));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i15 (.Q(pin_oe[15]), .C(CLK_c), .D(n8107));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i14 (.Q(pin_oe[14]), .C(CLK_c), .D(n8106));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i13 (.Q(pin_oe[13]), .C(CLK_c), .D(n8105));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i12 (.Q(pin_oe[12]), .C(CLK_c), .D(n8104));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i11 (.Q(pin_oe[11]), .C(CLK_c), .D(n8103));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i10 (.Q(pin_oe[10]), .C(CLK_c), .D(n8102));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i9 (.Q(pin_oe[9]), .C(CLK_c), .D(n8101));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i8 (.Q(pin_oe[8]), .C(CLK_c), .D(n8100));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i7 (.Q(pin_oe[7]), .C(CLK_c), .D(n8099));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i6 (.Q(pin_oe[6]), .C(CLK_c), .D(n8098));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i5 (.Q(pin_oe[5]), .C(CLK_c), .D(n8097));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i4 (.Q(pin_oe[4]), .C(CLK_c), .D(n8096));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i3 (.Q(pin_oe[3]), .C(CLK_c), .D(n8095));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i2 (.Q(pin_oe[2]), .C(CLK_c), .D(n8094));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i1 (.Q(pin_oe[1]), .C(CLK_c), .D(n8093));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF blink_counter_635__i1 (.Q(n25), .C(CLK_c), .D(n134_adj_803));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i2 (.Q(n24), .C(CLK_c), .D(n133));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i3 (.Q(n23), .C(CLK_c), .D(n132));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i4 (.Q(n22_adj_799), .C(CLK_c), .D(n131));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i5 (.Q(n21), .C(CLK_c), .D(n130));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i6 (.Q(n20), .C(CLK_c), .D(n129));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i7 (.Q(n19_adj_800), .C(CLK_c), .D(n128));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i8 (.Q(n18), .C(CLK_c), .D(n127));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i9 (.Q(n17), .C(CLK_c), .D(n126));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i10 (.Q(n16), .C(CLK_c), .D(n125));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i11 (.Q(n15), .C(CLK_c), .D(n124));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i12 (.Q(n14_adj_802), .C(CLK_c), .D(n123));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i13 (.Q(n13), .C(CLK_c), .D(n122));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i14 (.Q(n12), .C(CLK_c), .D(n121));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i15 (.Q(n11), .C(CLK_c), .D(n120));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i16 (.Q(n10_adj_806), .C(CLK_c), .D(n119));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i17 (.Q(n9_adj_807), .C(CLK_c), .D(n118));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i18 (.Q(n8), .C(CLK_c), .D(n117));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i19 (.Q(n7_adj_808), .C(CLK_c), .D(n116));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i20 (.Q(n6_adj_809), .C(CLK_c), .D(n115));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i21 (.Q(blink_counter[21]), .C(CLK_c), .D(n114));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i22 (.Q(blink_counter[22]), .C(CLK_c), .D(n113));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i23 (.Q(blink_counter[23]), .C(CLK_c), .D(n112));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i24 (.Q(blink_counter[24]), .C(CLK_c), .D(n111));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFF blink_counter_635__i25 (.Q(blink_counter[25]), .C(CLK_c), .D(n110));   // verilog/TinyFPGA_B.v(45[22:39])
    SB_DFFE counter_633__i1 (.Q(counter[1]), .C(CLK_c), .E(n11789), .D(n54));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i2 (.Q(counter[2]), .C(CLK_c), .E(n11789), .D(n53));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i3 (.Q(counter[3]), .C(CLK_c), .E(n11789), .D(n52));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i4 (.Q(counter[4]), .C(CLK_c), .E(n11789), .D(n51));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i5 (.Q(counter[5]), .C(CLK_c), .E(n11789), .D(n50));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i6 (.Q(counter[6]), .C(CLK_c), .E(n11789), .D(n49));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_DFFE counter_633__i7 (.Q(counter[7]), .C(CLK_c), .E(n11789), .D(n48));   // verilog/TinyFPGA_B.v(133[20:30])
    SB_LUT4 current_pin_0__bdd_4_lut (.I0(current_pin[0]), .I1(pin_in[10]), 
            .I2(pin_in[11]), .I3(current_pin[1]), .O(n13649));
    defparam current_pin_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n13649_bdd_4_lut (.I0(n13649), .I1(pin_in[9]), .I2(pin_in[8]), 
            .I3(current_pin[1]), .O(n13652));
    defparam n13649_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR state__i2 (.Q(state[2]), .C(CLK_c), .E(n7681), .D(n12268), 
            .R(n7992));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR state__i1 (.Q(state[1]), .C(CLK_c), .E(n7681), .D(n3104), 
            .R(n7992));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i7 (.Q(current_pin[7]), .C(CLK_c), .E(n7635), 
            .D(n2467), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i6 (.Q(current_pin[6]), .C(CLK_c), .E(n7635), 
            .D(n2468), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i5 (.Q(current_pin[5]), .C(CLK_c), .E(n7635), 
            .D(n2469), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i4 (.Q(current_pin[4]), .C(CLK_c), .E(n7635), 
            .D(n2470), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i3 (.Q(current_pin[3]), .C(CLK_c), .E(n7635), 
            .D(n2471), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i2 (.Q(current_pin[2]), .C(CLK_c), .E(n7635), 
            .D(n2472), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i1 (.Q(current_pin[1]), .C(CLK_c), .E(n7635), 
            .D(n2473), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR delay_counter_634__i0 (.Q(delay_counter[0]), .C(CLK_c), .E(n7664), 
            .D(n165), .R(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    SB_LUT4 i4340_4_lut (.I0(pin_out[16]), .I1(n9675), .I2(n7_adj_833), 
            .I3(n11789), .O(n8132));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4340_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 current_pin_0__bdd_4_lut_9246 (.I0(current_pin[0]), .I1(pin_in[14]), 
            .I2(pin_in[15]), .I3(current_pin[1]), .O(n13643));
    defparam current_pin_0__bdd_4_lut_9246.LUT_INIT = 16'he4aa;
    SB_LUT4 delay_counter_634_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n10591), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_635_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n12), .I3(n10657), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n13643_bdd_4_lut (.I0(n13643), .I1(pin_in[13]), .I2(pin_in[12]), 
            .I3(current_pin[1]), .O(n13646));
    defparam n13643_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY delay_counter_634_add_4_21 (.CI(n10600), .I0(GND_net), .I1(delay_counter[19]), 
            .CO(n10601));
    SB_CARRY blink_counter_635_add_4_16 (.CI(n10657), .I0(GND_net), .I1(n12), 
            .CO(n10658));
    SB_LUT4 i1_3_lut_4_lut (.I0(current_pin[2]), .I1(n7), .I2(n6_adj_819), 
            .I3(n9488), .O(n9_adj_824));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf2f0;
    SB_DFF neopxl_color_i12 (.Q(neopxl_color[12]), .C(CLK_c), .D(n8061));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF neopxl_color_i13 (.Q(neopxl_color[13]), .C(CLK_c), .D(n8060));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF neopxl_color_i14 (.Q(neopxl_color[14]), .C(CLK_c), .D(n8059));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF neopxl_color_i15 (.Q(neopxl_color[15]), .C(CLK_c), .D(n8058));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i0 (.Q(pin_out[0]), .C(CLK_c), .D(n8057));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_enable__i0 (.Q(pin_oe[0]), .C(CLK_c), .D(n8056));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i22 (.Q(pin_out[22]), .C(CLK_c), .D(n8138));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n7_adj_821));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_166.LUT_INIT = 16'hf0f2;
    SB_LUT4 delay_counter_634_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[18]), .I3(n10599), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 blink_counter_635_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n13), .I3(n10656), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_20 (.CI(n10599), .I0(GND_net), .I1(delay_counter[18]), 
            .CO(n10600));
    SB_CARRY delay_counter_634_add_4_12 (.CI(n10591), .I0(GND_net), .I1(delay_counter[10]), 
            .CO(n10592));
    SB_LUT4 delay_counter_634_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[5]), 
            .I3(n10586), .O(n160)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_7 (.CI(n10586), .I0(GND_net), .I1(delay_counter[5]), 
            .CO(n10587));
    SB_CARRY delay_counter_634_add_4_4 (.CI(n10583), .I0(GND_net), .I1(delay_counter[2]), 
            .CO(n10584));
    SB_LUT4 delay_counter_634_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[1]), 
            .I3(n10582), .O(n164)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_147_8 (.CI(n10580), .I0(current_pin[6]), .I1(GND_net), 
            .CO(n10581));
    SB_LUT4 add_147_7_lut (.I0(GND_net), .I1(current_pin[5]), .I2(GND_net), 
            .I3(n10579), .O(n2469)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_147_4_lut (.I0(GND_net), .I1(current_pin[2]), .I2(GND_net), 
            .I3(n10576), .O(n2472)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_147_4 (.CI(n10576), .I0(current_pin[2]), .I1(GND_net), 
            .CO(n10577));
    SB_LUT4 add_147_2_lut (.I0(GND_net), .I1(current_pin[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n2474)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[17]), .I3(n10598), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n10590), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[4]), 
            .I3(n10585), .O(n161)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_3 (.CI(n10582), .I0(GND_net), .I1(delay_counter[1]), 
            .CO(n10583));
    SB_CARRY add_147_7 (.CI(n10579), .I0(current_pin[5]), .I1(GND_net), 
            .CO(n10580));
    SB_LUT4 add_147_3_lut (.I0(GND_net), .I1(current_pin[1]), .I2(GND_net), 
            .I3(n10575), .O(n2473)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_147_2 (.CI(VCC_net), .I0(current_pin[0]), .I1(GND_net), 
            .CO(n10575));
    SB_CARRY blink_counter_635_add_4_15 (.CI(n10656), .I0(GND_net), .I1(n13), 
            .CO(n10657));
    SB_LUT4 blink_counter_635_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n14_adj_802), .I3(n10655), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_14 (.CI(n10655), .I0(GND_net), .I1(n14_adj_802), 
            .CO(n10656));
    SB_LUT4 blink_counter_635_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n15), .I3(n10654), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_19 (.CI(n10598), .I0(GND_net), .I1(delay_counter[17]), 
            .CO(n10599));
    SB_CARRY delay_counter_634_add_4_11 (.CI(n10590), .I0(GND_net), .I1(delay_counter[9]), 
            .CO(n10591));
    SB_DFF pin_output_i0_i21 (.Q(pin_out[21]), .C(CLK_c), .D(n8137));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i20 (.Q(pin_out[20]), .C(CLK_c), .D(n8136));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFSS update_color_126 (.Q(update_color), .C(CLK_c), .D(update_color_N_341), 
            .S(current_pin_7__N_153));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 current_pin_1__bdd_4_lut (.I0(current_pin[1]), .I1(n13375), 
            .I2(n13376), .I3(current_pin[2]), .O(n13637));
    defparam current_pin_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i8983_3_lut (.I0(pin_in[0]), .I1(pin_in[1]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13378));
    defparam i8983_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY blink_counter_635_add_4_13 (.CI(n10654), .I0(GND_net), .I1(n15), 
            .CO(n10655));
    SB_LUT4 i8984_3_lut (.I0(pin_in[2]), .I1(pin_in[3]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13379));
    defparam i8984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8987_3_lut (.I0(pin_in[6]), .I1(pin_in[7]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13382));
    defparam i8987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8986_3_lut (.I0(pin_in[4]), .I1(pin_in[5]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13381));
    defparam i8986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4305_4_lut_4_lut (.I0(state[0]), .I1(n11828), .I2(n7730), 
            .I3(pin_oe[5]), .O(n8097));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4305_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i4304_4_lut_4_lut (.I0(state[0]), .I1(n11974), .I2(n7730), 
            .I3(pin_oe[4]), .O(n8096));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4304_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6), .O(n8_adj_822));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_167.LUT_INIT = 16'hf0f2;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_168 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6_adj_810), .O(n7_adj_823));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_168.LUT_INIT = 16'hf0f2;
    SB_LUT4 i4341_4_lut (.I0(pin_out[17]), .I1(n9675), .I2(n8_adj_834), 
            .I3(n11789), .O(n8133));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4341_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i4342_4_lut (.I0(pin_out[18]), .I1(n9675), .I2(n7_adj_835), 
            .I3(n11789), .O(n8134));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4342_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i4301_4_lut_4_lut (.I0(state[0]), .I1(n11826), .I2(n7730), 
            .I3(pin_oe[1]), .O(n8093));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4301_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i4343_4_lut (.I0(pin_out[19]), .I1(n9675), .I2(n8_adj_836), 
            .I3(n11789), .O(n8135));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4343_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 blink_counter_635_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n16), .I3(n10653), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n13637_bdd_4_lut (.I0(n13637), .I1(n13370), .I2(n13369), .I3(current_pin[2]), 
            .O(n13640));
    defparam n13637_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 current_pin_0__bdd_4_lut_9241 (.I0(current_pin[0]), .I1(pin_out[18]), 
            .I2(pin_out[19]), .I3(current_pin[1]), .O(n13631));
    defparam current_pin_0__bdd_4_lut_9241.LUT_INIT = 16'he4aa;
    SB_CARRY blink_counter_635_add_4_12 (.CI(n10653), .I0(GND_net), .I1(n16), 
            .CO(n10654));
    SB_LUT4 n13631_bdd_4_lut (.I0(n13631), .I1(pin_out[17]), .I2(pin_out[16]), 
            .I3(current_pin[1]), .O(n13634));
    defparam n13631_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i8959_3_lut (.I0(pin_out[0]), .I1(pin_out[1]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13354));
    defparam i8959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8960_3_lut (.I0(pin_out[2]), .I1(pin_out[3]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13355));
    defparam i8960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8963_3_lut (.I0(pin_out[6]), .I1(pin_out[7]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13358));
    defparam i8963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8962_3_lut (.I0(pin_out[4]), .I1(pin_out[5]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13357));
    defparam i8962_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8974_3_lut (.I0(pin_out[8]), .I1(pin_out[9]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13369));
    defparam i8974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8975_3_lut (.I0(pin_out[10]), .I1(pin_out[11]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13370));
    defparam i8975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8981_3_lut (.I0(pin_out[14]), .I1(pin_out[15]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13376));
    defparam i8981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8980_3_lut (.I0(pin_out[12]), .I1(pin_out[13]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n13375));
    defparam i8980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 current_pin_1__bdd_4_lut_9236 (.I0(current_pin[1]), .I1(n13357), 
            .I2(n13358), .I3(current_pin[2]), .O(n13625));
    defparam current_pin_1__bdd_4_lut_9236.LUT_INIT = 16'he4aa;
    SB_LUT4 i4_4_lut_adj_169 (.I0(neopxl_color[6]), .I1(neopxl_color[12]), 
            .I2(neopxl_color_prev[6]), .I3(neopxl_color_prev[12]), .O(n12_adj_844));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i4_4_lut_adj_169.LUT_INIT = 16'h7bde;
    SB_LUT4 n13625_bdd_4_lut (.I0(n13625), .I1(n13355), .I2(n13354), .I3(current_pin[2]), 
            .O(n13628));
    defparam n13625_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_4_lut_adj_170 (.I0(neopxl_color[7]), .I1(neopxl_color[15]), 
            .I2(neopxl_color_prev[7]), .I3(neopxl_color_prev[15]), .O(n10_adj_846));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i2_4_lut_adj_170.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(neopxl_color[5]), .I1(neopxl_color[13]), .I2(neopxl_color_prev[5]), 
            .I3(neopxl_color_prev[13]), .O(n11_adj_845));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(neopxl_color[4]), .I1(neopxl_color[14]), .I2(neopxl_color_prev[4]), 
            .I3(neopxl_color_prev[14]), .O(n9_adj_847));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_171 (.I0(n9_adj_847), .I1(n11_adj_845), .I2(n10_adj_846), 
            .I3(n12_adj_844), .O(update_color_N_341));   // verilog/TinyFPGA_B.v(109[6:37])
    defparam i7_4_lut_adj_171.LUT_INIT = 16'hfffe;
    SB_LUT4 i4344_4_lut (.I0(pin_out[20]), .I1(n9675), .I2(n7_adj_837), 
            .I3(n11789), .O(n8136));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4344_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i4345_4_lut (.I0(pin_out[21]), .I1(n9675), .I2(n7_adj_838), 
            .I3(n11789), .O(n8137));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4345_4_lut.LUT_INIT = 16'h3aaa;
    SB_DFFESR state__i0 (.Q(state[0]), .C(CLK_c), .E(n7681), .D(n9768), 
            .R(n7992));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 delay_counter_634_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[16]), .I3(n10597), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6_adj_810), .O(n7_adj_818));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_172.LUT_INIT = 16'hf0f1;
    SB_LUT4 delay_counter_634_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[31]), .I3(n10612), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4264_4_lut_4_lut (.I0(state[0]), .I1(n11970), .I2(n7730), 
            .I3(pin_oe[0]), .O(n8056));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4264_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 blink_counter_635_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n17), .I3(n10652), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF pin_output_i0_i19 (.Q(pin_out[19]), .C(CLK_c), .D(n8135));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFFESR current_pin_i0_i0 (.Q(current_pin[0]), .C(CLK_c), .E(n7635), 
            .D(n2474), .R(n7985));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i18 (.Q(pin_out[18]), .C(CLK_c), .D(n8134));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_DFF pin_output_i0_i17 (.Q(pin_out[17]), .C(CLK_c), .D(n8133));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 i4346_4_lut (.I0(pin_out[22]), .I1(n9675), .I2(n7_adj_839), 
            .I3(n11789), .O(n8138));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4346_4_lut.LUT_INIT = 16'h3aaa;
    SB_CARRY blink_counter_635_add_4_11 (.CI(n10652), .I0(GND_net), .I1(n17), 
            .CO(n10653));
    SB_LUT4 i4263_3_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(timer[0]), 
            .I2(n11353), .I3(GND_net), .O(n8055));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4263_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 current_pin_1__bdd_4_lut_9226 (.I0(current_pin[1]), .I1(n13381), 
            .I2(n13382), .I3(current_pin[2]), .O(n13613));
    defparam current_pin_1__bdd_4_lut_9226.LUT_INIT = 16'he4aa;
    SB_LUT4 counter_633_add_4_9_lut (.I0(n3762), .I1(n13603), .I2(counter[7]), 
            .I3(n10706), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_9_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 n13613_bdd_4_lut (.I0(n13613), .I1(n13379), .I2(n13378), .I3(current_pin[2]), 
            .O(n13616));
    defparam n13613_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 counter_633_add_4_8_lut (.I0(n3762), .I1(n13603), .I2(counter[6]), 
            .I3(n10705), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_8_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 i4265_4_lut (.I0(pin_out[0]), .I1(n9675), .I2(n7_adj_840), 
            .I3(n11789), .O(n8057));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4265_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 blink_counter_635_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(n18), .I3(n10651), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[30]), .I3(n10611), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_10 (.CI(n10651), .I0(GND_net), .I1(n18), 
            .CO(n10652));
    SB_CARRY counter_633_add_4_8 (.CI(n10705), .I0(n13603), .I1(counter[6]), 
            .CO(n10706));
    SB_LUT4 i4316_4_lut_4_lut (.I0(state[0]), .I1(n11964), .I2(n7730), 
            .I3(pin_oe[16]), .O(n8108));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4316_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 blink_counter_635_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(n19_adj_800), 
            .I3(n10650), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_633_add_4_7_lut (.I0(n3762), .I1(n13603), .I2(counter[5]), 
            .I3(n10704), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_7_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 i4314_4_lut_4_lut (.I0(state[0]), .I1(n11962), .I2(n7730), 
            .I3(pin_oe[14]), .O(n8106));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4314_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_CARRY blink_counter_635_add_4_9 (.CI(n10650), .I0(GND_net), .I1(n19_adj_800), 
            .CO(n10651));
    SB_LUT4 i4313_4_lut_4_lut (.I0(state[0]), .I1(n11956), .I2(n7730), 
            .I3(pin_oe[13]), .O(n8105));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4313_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 blink_counter_635_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(n20), 
            .I3(n10649), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_633_add_4_7 (.CI(n10704), .I0(n13603), .I1(counter[5]), 
            .CO(n10705));
    SB_CARRY blink_counter_635_add_4_8 (.CI(n10649), .I0(GND_net), .I1(n20), 
            .CO(n10650));
    SB_LUT4 counter_633_add_4_6_lut (.I0(n3762), .I1(n13603), .I2(counter[4]), 
            .I3(n10703), .O(n51)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_6_lut.LUT_INIT = 16'hE22E;
    SB_CARRY counter_633_add_4_6 (.CI(n10703), .I0(n13603), .I1(counter[4]), 
            .CO(n10704));
    SB_LUT4 i4312_4_lut_4_lut (.I0(state[0]), .I1(n11820), .I2(n7730), 
            .I3(pin_oe[12]), .O(n8104));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4312_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 counter_633_add_4_5_lut (.I0(n3762), .I1(n13603), .I2(counter[3]), 
            .I3(n10702), .O(n52)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_5_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 blink_counter_635_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(n21), 
            .I3(n10648), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4318_4_lut_4_lut (.I0(state[0]), .I1(n11952), .I2(n7730), 
            .I3(pin_oe[18]), .O(n8110));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4318_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6), .O(n8_adj_817));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_173.LUT_INIT = 16'hf0f1;
    SB_LUT4 i4315_4_lut_4_lut (.I0(state[0]), .I1(n11825), .I2(n7730), 
            .I3(pin_oe[15]), .O(n8107));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4315_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_CARRY counter_633_add_4_5 (.CI(n10702), .I0(n13603), .I1(counter[3]), 
            .CO(n10703));
    SB_LUT4 i4270_3_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(timer[31]), 
            .I2(n11353), .I3(GND_net), .O(n8062));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4270_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4271_3_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(timer[30]), 
            .I2(n11353), .I3(GND_net), .O(n8063));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4271_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4272_3_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(timer[29]), 
            .I2(n11353), .I3(GND_net), .O(n8064));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4272_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4273_3_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(timer[28]), 
            .I2(n11353), .I3(GND_net), .O(n8065));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4273_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY blink_counter_635_add_4_7 (.CI(n10648), .I0(GND_net), .I1(n21), 
            .CO(n10649));
    SB_CARRY delay_counter_634_add_4_32 (.CI(n10611), .I0(GND_net), .I1(delay_counter[30]), 
            .CO(n10612));
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_174 (.I0(current_pin[2]), .I1(n7), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n7_adj_840));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_174.LUT_INIT = 16'hf0f1;
    SB_LUT4 i4274_3_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(timer[27]), 
            .I2(n11353), .I3(GND_net), .O(n8066));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4274_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4275_3_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(timer[26]), 
            .I2(n11353), .I3(GND_net), .O(n8067));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4275_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4276_3_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(timer[25]), 
            .I2(n11353), .I3(GND_net), .O(n8068));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4276_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 counter_633_add_4_4_lut (.I0(n3762), .I1(n13603), .I2(counter[2]), 
            .I3(n10701), .O(n53)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_4_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 i4277_3_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(timer[24]), 
            .I2(n11353), .I3(GND_net), .O(n8069));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4277_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 blink_counter_635_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(n22_adj_799), 
            .I3(n10647), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_18 (.CI(n10597), .I0(GND_net), .I1(delay_counter[16]), 
            .CO(n10598));
    SB_LUT4 i4278_3_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(timer[23]), 
            .I2(n11353), .I3(GND_net), .O(n8070));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4278_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY counter_633_add_4_4 (.CI(n10701), .I0(n13603), .I1(counter[2]), 
            .CO(n10702));
    SB_LUT4 i4279_3_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(timer[22]), 
            .I2(n11353), .I3(GND_net), .O(n8071));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4279_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 delay_counter_634_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n10589), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4280_3_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(timer[21]), 
            .I2(n11353), .I3(GND_net), .O(n8072));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4280_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4281_3_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(timer[20]), 
            .I2(n11353), .I3(GND_net), .O(n8073));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4281_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 delay_counter_634_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[29]), .I3(n10610), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[15]), .I3(n10596), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4282_3_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(timer[19]), 
            .I2(n11353), .I3(GND_net), .O(n8074));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4282_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 counter_633_add_4_3_lut (.I0(n3762), .I1(n13603), .I2(counter[1]), 
            .I3(n10700), .O(n54)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_3_lut.LUT_INIT = 16'hE22E;
    SB_CARRY counter_633_add_4_3 (.CI(n10700), .I0(n13603), .I1(counter[1]), 
            .CO(n10701));
    SB_LUT4 i4283_3_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(timer[18]), 
            .I2(n11353), .I3(GND_net), .O(n8075));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4283_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY blink_counter_635_add_4_6 (.CI(n10647), .I0(GND_net), .I1(n22_adj_799), 
            .CO(n10648));
    SB_LUT4 i4284_3_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(timer[17]), 
            .I2(n11353), .I3(GND_net), .O(n8076));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4284_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4285_3_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(timer[16]), 
            .I2(n11353), .I3(GND_net), .O(n8077));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4285_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY delay_counter_634_add_4_10 (.CI(n10589), .I0(GND_net), .I1(delay_counter[8]), 
            .CO(n10590));
    SB_LUT4 add_147_6_lut (.I0(GND_net), .I1(current_pin[4]), .I2(GND_net), 
            .I3(n10578), .O(n2470)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_31 (.CI(n10610), .I0(GND_net), .I1(delay_counter[29]), 
            .CO(n10611));
    SB_LUT4 delay_counter_634_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[0]), 
            .I3(VCC_net), .O(n165)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4286_3_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(timer[15]), 
            .I2(n11353), .I3(GND_net), .O(n8078));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4286_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY delay_counter_634_add_4_6 (.CI(n10585), .I0(GND_net), .I1(delay_counter[4]), 
            .CO(n10586));
    SB_LUT4 delay_counter_634_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[28]), .I3(n10609), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[7]), 
            .I3(n10588), .O(n158)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_17 (.CI(n10596), .I0(GND_net), .I1(delay_counter[15]), 
            .CO(n10597));
    SB_CARRY delay_counter_634_add_4_30 (.CI(n10609), .I0(GND_net), .I1(delay_counter[28]), 
            .CO(n10610));
    SB_LUT4 i4287_3_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(timer[14]), 
            .I2(n11353), .I3(GND_net), .O(n8079));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4287_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 blink_counter_635_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(n23), 
            .I3(n10646), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4288_3_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(timer[13]), 
            .I2(n11353), .I3(GND_net), .O(n8080));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4288_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_147_3 (.CI(n10575), .I0(current_pin[1]), .I1(GND_net), 
            .CO(n10576));
    SB_CARRY add_147_6 (.CI(n10578), .I0(current_pin[4]), .I1(GND_net), 
            .CO(n10579));
    SB_LUT4 counter_633_add_4_2_lut (.I0(GND_net), .I1(state_7__N_167[2]), 
            .I2(counter[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam counter_633_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_5 (.CI(n10646), .I0(GND_net), .I1(n23), 
            .CO(n10647));
    SB_LUT4 blink_counter_635_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(n24), 
            .I3(n10645), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[27]), .I3(n10608), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[14]), .I3(n10595), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_147_5_lut (.I0(GND_net), .I1(current_pin[3]), .I2(GND_net), 
            .I3(n10577), .O(n2471)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(delay_counter[0]), 
            .CO(n10582));
    SB_LUT4 add_147_9_lut (.I0(GND_net), .I1(current_pin[7]), .I2(GND_net), 
            .I3(n10581), .O(n2467)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[3]), 
            .I3(n10584), .O(n162)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_29 (.CI(n10608), .I0(GND_net), .I1(delay_counter[27]), 
            .CO(n10609));
    SB_CARRY delay_counter_634_add_4_16 (.CI(n10595), .I0(GND_net), .I1(delay_counter[14]), 
            .CO(n10596));
    SB_LUT4 i4289_3_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(timer[12]), 
            .I2(n11353), .I3(GND_net), .O(n8081));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4289_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4290_3_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(timer[11]), 
            .I2(n11353), .I3(GND_net), .O(n8082));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4290_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4291_3_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(timer[10]), 
            .I2(n11353), .I3(GND_net), .O(n8083));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4291_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY delay_counter_634_add_4_5 (.CI(n10584), .I0(GND_net), .I1(delay_counter[3]), 
            .CO(n10585));
    SB_CARRY delay_counter_634_add_4_9 (.CI(n10588), .I0(GND_net), .I1(delay_counter[7]), 
            .CO(n10589));
    SB_LUT4 delay_counter_634_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[6]), 
            .I3(n10587), .O(n159)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[13]), .I3(n10594), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_634_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[26]), .I3(n10607), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_633_add_4_2 (.CI(VCC_net), .I0(state_7__N_167[2]), 
            .I1(counter[0]), .CO(n10700));
    SB_LUT4 i4292_3_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(timer[9]), 
            .I2(n11353), .I3(GND_net), .O(n8084));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4292_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4293_3_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(timer[8]), 
            .I2(n11353), .I3(GND_net), .O(n8085));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4293_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9190_3_lut (.I0(state_7__N_167[2]), .I1(state[0]), .I2(state[1]), 
            .I3(GND_net), .O(n9768));
    defparam i9190_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i4310_4_lut_4_lut (.I0(state[0]), .I1(n11960), .I2(n7730), 
            .I3(pin_oe[10]), .O(n8102));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4310_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 mux_436_Mux_1_i3_4_lut (.I0(state[0]), .I1(n1788), .I2(state[1]), 
            .I3(state_7__N_167[2]), .O(n3104));   // verilog/TinyFPGA_B.v(115[3] 156[10])
    defparam mux_436_Mux_1_i3_4_lut.LUT_INIT = 16'h4a0a;
    SB_CARRY delay_counter_634_add_4_28 (.CI(n10607), .I0(GND_net), .I1(delay_counter[26]), 
            .CO(n10608));
    SB_LUT4 i4308_4_lut_4_lut (.I0(state[0]), .I1(n11823), .I2(n7730), 
            .I3(pin_oe[8]), .O(n8100));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4308_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_CARRY blink_counter_635_add_4_4 (.CI(n10645), .I0(GND_net), .I1(n24), 
            .CO(n10646));
    SB_LUT4 Mux_82_i19_3_lut (.I0(pin_in[20]), .I1(pin_in[21]), .I2(current_pin[0]), 
            .I3(GND_net), .O(n19_adj_789));   // verilog/TinyFPGA_B.v(130[19:30])
    defparam Mux_82_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8957_4_lut (.I0(n19_adj_789), .I1(pin_in[22]), .I2(current_pin[1]), 
            .I3(current_pin[0]), .O(n13352));
    defparam i8957_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i9140_3_lut (.I0(n13652), .I1(n13646), .I2(current_pin[2]), 
            .I3(GND_net), .O(n13536));
    defparam i9140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9075_4_lut (.I0(n13610), .I1(current_pin[3]), .I2(n13352), 
            .I3(current_pin[2]), .O(n13465));
    defparam i9075_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i9146_3_lut (.I0(n13616), .I1(n13536), .I2(current_pin[3]), 
            .I3(GND_net), .O(n13542));   // verilog/TinyFPGA_B.v(130[19:30])
    defparam i9146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9155_4_lut (.I0(n13542), .I1(pin_out_22__N_216), .I2(n13465), 
            .I3(current_pin[4]), .O(n13551));
    defparam i9155_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 blink_counter_635_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(n25), 
            .I3(n10644), .O(n134_adj_803)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY blink_counter_635_add_4_3 (.CI(n10644), .I0(GND_net), .I1(n25), 
            .CO(n10645));
    SB_CARRY add_147_5 (.CI(n10577), .I0(current_pin[3]), .I1(GND_net), 
            .CO(n10578));
    SB_LUT4 i41_4_lut (.I0(n13551), .I1(n1907), .I2(state[0]), .I3(state_7__N_167[2]), 
            .O(n26));
    defparam i41_4_lut.LUT_INIT = 16'h3035;
    SB_LUT4 add_147_8_lut (.I0(GND_net), .I1(current_pin[6]), .I2(GND_net), 
            .I3(n10580), .O(n2468)) /* synthesis syn_instantiated=1 */ ;
    defparam add_147_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4321_4_lut_4_lut (.I0(state[0]), .I1(n11958), .I2(n7730), 
            .I3(pin_oe[21]), .O(n8113));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4321_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i2_3_lut_adj_175 (.I0(state[1]), .I1(state[0]), .I2(state_7__N_167[2]), 
            .I3(GND_net), .O(n12268));   // verilog/TinyFPGA_B.v(115[3] 156[10])
    defparam i2_3_lut_adj_175.LUT_INIT = 16'h0202;
    SB_LUT4 delay_counter_634_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(delay_counter[2]), 
            .I3(n10583), .O(n163)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_8 (.CI(n10587), .I0(GND_net), .I1(delay_counter[6]), 
            .CO(n10588));
    SB_LUT4 i4294_3_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(timer[7]), 
            .I2(n11353), .I3(GND_net), .O(n8086));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4294_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 blink_counter_635_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(n26_adj_798), 
            .I3(VCC_net), .O(n135_adj_804)) /* synthesis syn_instantiated=1 */ ;
    defparam blink_counter_635_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4295_3_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(timer[6]), 
            .I2(n11353), .I3(GND_net), .O(n8087));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4295_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY blink_counter_635_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(n26_adj_798), 
            .CO(n10644));
    SB_CARRY delay_counter_634_add_4_15 (.CI(n10594), .I0(GND_net), .I1(delay_counter[13]), 
            .CO(n10595));
    SB_LUT4 i4296_3_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(timer[5]), 
            .I2(n11353), .I3(GND_net), .O(n8088));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4296_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 delay_counter_634_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[12]), .I3(n10593), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4297_3_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(timer[4]), 
            .I2(n11353), .I3(GND_net), .O(n8089));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4297_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4298_3_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(timer[3]), 
            .I2(n11353), .I3(GND_net), .O(n8090));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4298_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 delay_counter_634_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[25]), .I3(n10606), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_634_add_4_14 (.CI(n10593), .I0(GND_net), .I1(delay_counter[12]), 
            .CO(n10594));
    SB_LUT4 i4299_3_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(timer[2]), 
            .I2(n11353), .I3(GND_net), .O(n8091));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4299_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4300_3_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(timer[1]), 
            .I2(n11353), .I3(GND_net), .O(n8092));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4300_3_lut.LUT_INIT = 16'hacac;
    SB_DFF pin_output_i0_i16 (.Q(pin_out[16]), .C(CLK_c), .D(n8132));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    SB_LUT4 delay_counter_634_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n10592), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_176 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n6_adj_819), .I3(n6), .O(n7_adj_838));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_176.LUT_INIT = 16'hf0f2;
    SB_CARRY delay_counter_634_add_4_27 (.CI(n10606), .I0(GND_net), .I1(delay_counter[25]), 
            .CO(n10607));
    SB_LUT4 counter_633_mux_6_i1_3_lut_4_lut (.I0(state[0]), .I1(n7602), 
            .I2(n3762), .I3(n45), .O(n55));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam counter_633_mux_6_i1_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 delay_counter_634_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[24]), .I3(n10605), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_634_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4320_4_lut_4_lut (.I0(state[0]), .I1(n11954), .I2(n7730), 
            .I3(pin_oe[20]), .O(n8112));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4320_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n7_adj_837));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_177.LUT_INIT = 16'hf0f2;
    SB_CARRY delay_counter_634_add_4_26 (.CI(n10605), .I0(GND_net), .I1(delay_counter[24]), 
            .CO(n10606));
    SB_LUT4 i4319_4_lut_4_lut (.I0(state[0]), .I1(n11821), .I2(n7730), 
            .I3(pin_oe[19]), .O(n8111));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4319_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n6_adj_819), .I3(n6_adj_810), .O(n7_adj_835));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_178.LUT_INIT = 16'hf0f1;
    SB_LUT4 equal_224_i7_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_797));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_224_i7_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i4262_2_lut_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(n1907), .O(n8025));   // verilog/TinyFPGA_B.v(146[24:39])
    defparam i4262_2_lut_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i4317_4_lut_4_lut (.I0(state[0]), .I1(n11822), .I2(n7730), 
            .I3(pin_oe[17]), .O(n8109));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4317_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i2_2_lut (.I0(counter[0]), .I1(counter[7]), .I2(GND_net), 
            .I3(GND_net), .O(n10));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_179 (.I0(counter[2]), .I1(counter[5]), .I2(counter[4]), 
            .I3(counter[3]), .O(n14));
    defparam i6_4_lut_adj_179.LUT_INIT = 16'hfffe;
    SB_LUT4 i9165_4_lut (.I0(counter[1]), .I1(n14), .I2(n10), .I3(counter[6]), 
            .O(state_7__N_167[2]));   // verilog/TinyFPGA_B.v(133[20:30])
    defparam i9165_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i2_2_lut_adj_180 (.I0(current_pin[5]), .I1(current_pin[6]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_805));
    defparam i2_2_lut_adj_180.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_181 (.I0(current_pin[3]), .I1(n6_adj_805), .I2(current_pin[7]), 
            .I3(current_pin[4]), .O(n1788));
    defparam i3_4_lut_adj_181.LUT_INIT = 16'hfefc;
    SB_LUT4 i308_2_lut (.I0(n1788), .I1(state_7__N_167[2]), .I2(GND_net), 
            .I3(GND_net), .O(n2618));   // verilog/TinyFPGA_B.v(134[16] 142[10])
    defparam i308_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i9171_2_lut_3_lut (.I0(state[0]), .I1(state[1]), .I2(state[2]), 
            .I3(GND_net), .O(current_pin_7__N_153));   // verilog/TinyFPGA_B.v(116[5:9])
    defparam i9171_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i4302_4_lut_4_lut (.I0(state[0]), .I1(n11966), .I2(n7730), 
            .I3(pin_oe[2]), .O(n8094));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4302_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i9176_2_lut_3_lut_4_lut_3_lut (.I0(state[2]), .I1(state[0]), 
            .I2(state[1]), .I3(GND_net), .O(n11789));
    defparam i9176_2_lut_3_lut_4_lut_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i4311_4_lut_4_lut_4_lut (.I0(state[0]), .I1(n9_adj_812), .I2(n7730), 
            .I3(pin_oe[11]), .O(n8103));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4311_4_lut_4_lut_4_lut.LUT_INIT = 16'haf20;
    SB_LUT4 i4303_4_lut_4_lut_4_lut (.I0(state[0]), .I1(n9), .I2(n7730), 
            .I3(pin_oe[3]), .O(n8095));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4303_4_lut_4_lut_4_lut.LUT_INIT = 16'haf20;
    SB_LUT4 i4309_4_lut_4_lut (.I0(state[0]), .I1(n11824), .I2(n7730), 
            .I3(pin_oe[9]), .O(n8101));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4309_4_lut_4_lut.LUT_INIT = 16'hef20;
    SB_LUT4 i7615_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_810), 
            .I2(n7_adj_797), .I3(current_pin[2]), .O(n11952));
    defparam i7615_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i9207_1_lut_2_lut_3_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(n13603));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i9207_1_lut_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6), .I2(n7_adj_797), 
            .I3(current_pin[2]), .O(n11822));
    defparam i1_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i4325_4_lut (.I0(pin_out[1]), .I1(n9675), .I2(n8_adj_817), 
            .I3(n11789), .O(n8117));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4325_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i1_3_lut_4_lut_adj_182 (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(neopxl_color[7]), .O(n19_adj_794));
    defparam i1_3_lut_4_lut_adj_182.LUT_INIT = 16'h5540;
    SB_LUT4 i4326_4_lut (.I0(pin_out[2]), .I1(n9675), .I2(n7_adj_818), 
            .I3(n11789), .O(n8118));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4326_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i1_2_lut_3_lut (.I0(neopxl_color[7]), .I1(state[0]), .I2(state[1]), 
            .I3(GND_net), .O(n22_adj_793));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i7631_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n9488), .I2(n7), 
            .I3(current_pin[2]), .O(n11968));
    defparam i7631_3_lut_4_lut_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i1_3_lut_4_lut_adj_183 (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(neopxl_color[6]), .O(n19_adj_796));
    defparam i1_3_lut_4_lut_adj_183.LUT_INIT = 16'h5540;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_184 (.I0(state[0]), .I1(n6), 
            .I2(n7), .I3(current_pin[2]), .O(n11826));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_184.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_3_lut_adj_185 (.I0(neopxl_color[6]), .I1(state[0]), 
            .I2(state[1]), .I3(GND_net), .O(n22_adj_795));
    defparam i1_2_lut_3_lut_adj_185.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_3_lut_4_lut_adj_186 (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(neopxl_color[5]), .O(n19));
    defparam i1_3_lut_4_lut_adj_186.LUT_INIT = 16'h5540;
    SB_LUT4 i7637_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7), .I3(current_pin[2]), .O(n11974));
    defparam i7637_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i7623_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_810), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11960));
    defparam i7623_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_187 (.I0(state[0]), .I1(n6), 
            .I2(n7), .I3(current_pin[2]), .O(n11828));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_187.LUT_INIT = 16'ha8aa;
    SB_LUT4 i7635_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_810), 
            .I2(n7), .I3(current_pin[2]), .O(n11972));
    defparam i7635_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_188 (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11823));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_188.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_189 (.I0(state[0]), .I1(n9488), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11825));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_189.LUT_INIT = 16'ha2aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_190 (.I0(state[0]), .I1(n6), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11824));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_190.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_3_lut_adj_191 (.I0(neopxl_color[5]), .I1(state[0]), 
            .I2(state[1]), .I3(GND_net), .O(n22));
    defparam i1_2_lut_3_lut_adj_191.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_3_lut_4_lut_adj_192 (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(neopxl_color[4]), .O(n19_adj_788));
    defparam i1_3_lut_4_lut_adj_192.LUT_INIT = 16'h5540;
    SB_LUT4 i1_2_lut_adj_193 (.I0(n9), .I1(n6_adj_819), .I2(GND_net), 
            .I3(GND_net), .O(n8_adj_820));
    defparam i1_2_lut_adj_193.LUT_INIT = 16'hdddd;
    SB_LUT4 i4327_4_lut (.I0(pin_out[3]), .I1(n9675), .I2(n8_adj_820), 
            .I3(n11789), .O(n8119));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4327_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i1_2_lut_3_lut_adj_194 (.I0(neopxl_color[4]), .I1(state[0]), 
            .I2(state[1]), .I3(GND_net), .O(n22_adj_787));
    defparam i1_2_lut_3_lut_adj_194.LUT_INIT = 16'ha8a8;
    SB_LUT4 i7617_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7_adj_797), .I3(current_pin[2]), .O(n11954));
    defparam i7617_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i4328_4_lut (.I0(pin_out[4]), .I1(n9675), .I2(n7_adj_821), 
            .I3(n11789), .O(n8120));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4328_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i4324_4_lut_4_lut (.I0(n7671), .I1(state_adj_848[1]), .I2(state_adj_848[0]), 
            .I3(state_3__N_448[1]), .O(n8116));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4324_4_lut_4_lut.LUT_INIT = 16'hee6e;
    SB_LUT4 i4329_4_lut (.I0(pin_out[5]), .I1(n9675), .I2(n8_adj_822), 
            .I3(n11789), .O(n8121));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4329_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i4198_2_lut_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(n7635), .O(n7985));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i4198_2_lut_3_lut_4_lut.LUT_INIT = 16'hef00;
    SB_LUT4 i4322_4_lut_4_lut_4_lut (.I0(state[0]), .I1(n11874), .I2(n7730), 
            .I3(pin_oe[22]), .O(n8114));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4322_4_lut_4_lut_4_lut.LUT_INIT = 16'haf20;
    SB_LUT4 i4330_4_lut (.I0(pin_out[6]), .I1(n9675), .I2(n7_adj_823), 
            .I3(n11789), .O(n8122));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4330_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 equal_244_i7_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_244_i7_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_4_lut_adj_195 (.I0(state[0]), .I1(n7602), .I2(n2618), 
            .I3(n11789), .O(n7730));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i1_3_lut_4_lut_adj_195.LUT_INIT = 16'hef00;
    SB_LUT4 i7625_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_810), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11962));
    defparam i7625_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i7543_2_lut_3_lut_4_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(n6_adj_810), .O(n11874));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i7543_2_lut_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i9193_4_lut_4_lut (.I0(state[0]), .I1(state[1]), .I2(state[2]), 
            .I3(n26), .O(n7681));
    defparam i9193_4_lut_4_lut.LUT_INIT = 16'h131f;
    SB_LUT4 i4331_4_lut (.I0(pin_out[7]), .I1(n9675), .I2(n9_adj_824), 
            .I3(n11789), .O(n8123));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4331_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i1_2_lut_3_lut_adj_196 (.I0(state[0]), .I1(state[1]), .I2(state[2]), 
            .I3(GND_net), .O(n7992));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i1_2_lut_3_lut_adj_196.LUT_INIT = 16'h1010;
    SB_LUT4 i9181_2_lut_4_lut (.I0(state[2]), .I1(state_7__N_167[2]), .I2(state[0]), 
            .I3(state[1]), .O(n7635));
    defparam i9181_2_lut_4_lut.LUT_INIT = 16'h0405;
    SB_LUT4 i4332_4_lut (.I0(pin_out[8]), .I1(n9675), .I2(n8_adj_826), 
            .I3(n11789), .O(n8124));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4332_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i5882_2_lut_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(pin_out_22__N_216), .O(n9675));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i5882_2_lut_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i4269_4_lut_4_lut (.I0(neopxl_color[12]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n8061));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4269_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i4333_4_lut (.I0(pin_out[9]), .I1(n9675), .I2(n8_adj_825), 
            .I3(n11789), .O(n8125));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4333_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_197 (.I0(state[0]), .I1(state[2]), 
            .I2(state[1]), .I3(n3762), .O(n6_adj_819));   // verilog/TinyFPGA_B.v(127[5:11])
    defparam i1_2_lut_3_lut_4_lut_adj_197.LUT_INIT = 16'h00ef;
    SB_LUT4 i4268_4_lut_4_lut (.I0(neopxl_color[13]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n8060));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4268_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i4334_4_lut (.I0(pin_out[10]), .I1(n9675), .I2(n7_adj_827), 
            .I3(n11789), .O(n8126));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4334_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 equal_241_i9_2_lut_3_lut_4_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(n9488), .O(n9));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_241_i9_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i4267_4_lut_4_lut (.I0(neopxl_color[14]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n8059));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4267_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i1_2_lut_adj_198 (.I0(n9_adj_812), .I1(n6_adj_819), .I2(GND_net), 
            .I3(GND_net), .O(n8_adj_828));
    defparam i1_2_lut_adj_198.LUT_INIT = 16'hdddd;
    SB_LUT4 i4335_4_lut (.I0(pin_out[11]), .I1(n9675), .I2(n8_adj_828), 
            .I3(n11789), .O(n8127));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4335_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 equal_240_i6_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_813));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_240_i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4266_4_lut_4_lut (.I0(neopxl_color[15]), .I1(state[2]), .I2(state[0]), 
            .I3(state[1]), .O(n8058));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4266_4_lut_4_lut.LUT_INIT = 16'h8aae;
    SB_LUT4 i1_2_lut_4_lut (.I0(n6_adj_819), .I1(current_pin[2]), .I2(n7_adj_797), 
            .I3(n6_adj_810), .O(n7_adj_839));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 i4336_4_lut (.I0(pin_out[12]), .I1(n9675), .I2(n8_adj_829), 
            .I3(n11789), .O(n8128));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4336_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 equal_243_i6_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n6));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_243_i6_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_2_lut_4_lut_adj_199 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n9488), .I3(n6_adj_819), .O(n8_adj_836));
    defparam i1_2_lut_4_lut_adj_199.LUT_INIT = 16'hff10;
    SB_LUT4 i4337_4_lut (.I0(pin_out[13]), .I1(n9675), .I2(n7_adj_830), 
            .I3(n11789), .O(n8129));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4337_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 equal_234_i6_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_810));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_234_i6_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i4338_4_lut (.I0(pin_out[14]), .I1(n9675), .I2(n7_adj_831), 
            .I3(n11789), .O(n8130));   // verilog/TinyFPGA_B.v(107[8] 157[4])
    defparam i4338_4_lut.LUT_INIT = 16'h3aaa;
    SB_LUT4 i8966_4_lut (.I0(blink_counter[22]), .I1(blink_counter[23]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n13361));
    defparam i8966_4_lut.LUT_INIT = 16'hfec4;
    SB_LUT4 i8965_4_lut (.I0(blink_counter[23]), .I1(blink_counter[22]), 
            .I2(blink_counter[24]), .I3(blink_counter[21]), .O(n13360));
    defparam i8965_4_lut.LUT_INIT = 16'hcf08;
    SB_LUT4 i8967_3_lut (.I0(n13360), .I1(n13361), .I2(blink_counter[25]), 
            .I3(GND_net), .O(LED_c));
    defparam i8967_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 equal_233_i9_2_lut_3_lut_4_lut (.I0(current_pin[2]), .I1(current_pin[3]), 
            .I2(current_pin[4]), .I3(n9488), .O(n9_adj_812));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_233_i9_2_lut_3_lut_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n6_adj_819), .I3(n6), .O(n8_adj_834));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_200.LUT_INIT = 16'hf0f1;
    SB_LUT4 equal_234_i7_2_lut (.I0(current_pin[3]), .I1(current_pin[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_811));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam equal_234_i7_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(state[0]), .I1(n9488), .I2(n7_adj_797), 
            .I3(current_pin[2]), .O(n11821));
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'haaa2;
    SB_LUT4 i5698_2_lut (.I0(current_pin[0]), .I1(current_pin[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9488));
    defparam i5698_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7621_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6), .I2(n7_adj_797), 
            .I3(current_pin[2]), .O(n11958));
    defparam i7621_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 current_pin_4__I_0_i19_3_lut (.I0(pin_out[20]), .I1(pin_out[21]), 
            .I2(current_pin[0]), .I3(GND_net), .O(n19_adj_790));   // verilog/TinyFPGA_B.v(130[44:55])
    defparam current_pin_4__I_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8993_4_lut (.I0(n19_adj_790), .I1(pin_out[22]), .I2(current_pin[1]), 
            .I3(current_pin[0]), .O(n13388));
    defparam i8993_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.I0(current_pin[2]), .I1(n7_adj_797), 
            .I2(n6_adj_819), .I3(n6_adj_813), .O(n7_adj_833));   // verilog/TinyFPGA_B.v(123[7:30])
    defparam i1_2_lut_3_lut_4_lut_adj_201.LUT_INIT = 16'hf0f1;
    SB_LUT4 current_pin_0__bdd_4_lut_9231 (.I0(current_pin[0]), .I1(pin_in[18]), 
            .I2(pin_in[19]), .I3(current_pin[1]), .O(n13607));
    defparam current_pin_0__bdd_4_lut_9231.LUT_INIT = 16'he4aa;
    SB_LUT4 n13607_bdd_4_lut (.I0(n13607), .I1(pin_in[17]), .I2(pin_in[16]), 
            .I3(current_pin[1]), .O(n13610));
    defparam n13607_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i8994_3_lut (.I0(n13634), .I1(n13388), .I2(current_pin[2]), 
            .I3(GND_net), .O(n13389));
    defparam i8994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9144_3_lut (.I0(n13628), .I1(n13640), .I2(current_pin[3]), 
            .I3(GND_net), .O(n13540));   // verilog/TinyFPGA_B.v(130[44:55])
    defparam i9144_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9145_4_lut (.I0(n13540), .I1(n13389), .I2(current_pin[4]), 
            .I3(current_pin[3]), .O(pin_out_22__N_216));   // verilog/TinyFPGA_B.v(130[44:55])
    defparam i9145_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_202 (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7_adj_811), .I3(current_pin[2]), .O(n11820));
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_202.LUT_INIT = 16'ha8aa;
    SB_LUT4 i7629_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_810), 
            .I2(n7), .I3(current_pin[2]), .O(n11966));
    defparam i7629_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i7627_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7_adj_797), .I3(current_pin[2]), .O(n11964));
    defparam i7627_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    SB_LUT4 i9167_2_lut_3_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(n7664));   // verilog/TinyFPGA_B.v(144[5:12])
    defparam i9167_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i7633_2_lut_3_lut_4_lut_4_lut (.I0(state[0]), .I1(n6_adj_813), 
            .I2(n7), .I3(current_pin[2]), .O(n11970));
    defparam i7633_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'haaa8;
    
endmodule
//
// Verilog Description of module \neopixel(CLOCK_SPEED_HZ=16000000) 
//

module \neopixel(CLOCK_SPEED_HZ=16000000)  (VCC_net, GND_net, timer, CLK_c, 
            \neo_pixel_transmitter.t0 , n8116, \state[1] , n8092, n8091, 
            n8090, n8089, n8088, n8087, n8086, n8085, n8084, n8083, 
            n8082, n8081, n8080, n8079, n8078, n8077, n8076, n8075, 
            n8074, n8073, n8072, n8071, n8070, n8069, n8068, n8067, 
            n8066, n8065, n8064, n8063, n8062, n8055, \state[0] , 
            \state_3__N_448[1] , \neopxl_color[4] , \neopxl_color[5] , 
            \neopxl_color[6] , \neopxl_color[7] , \neopxl_color[14] , 
            \neopxl_color[15] , \neopxl_color[12] , \neopxl_color[13] , 
            n7671, NEOPXL_c, update_color, n11353) /* synthesis syn_module_defined=1 */ ;
    input VCC_net;
    input GND_net;
    output [31:0]timer;
    input CLK_c;
    output [31:0]\neo_pixel_transmitter.t0 ;
    input n8116;
    output \state[1] ;
    input n8092;
    input n8091;
    input n8090;
    input n8089;
    input n8088;
    input n8087;
    input n8086;
    input n8085;
    input n8084;
    input n8083;
    input n8082;
    input n8081;
    input n8080;
    input n8079;
    input n8078;
    input n8077;
    input n8076;
    input n8075;
    input n8074;
    input n8073;
    input n8072;
    input n8071;
    input n8070;
    input n8069;
    input n8068;
    input n8067;
    input n8066;
    input n8065;
    input n8064;
    input n8063;
    input n8062;
    input n8055;
    output \state[0] ;
    output \state_3__N_448[1] ;
    input \neopxl_color[4] ;
    input \neopxl_color[5] ;
    input \neopxl_color[6] ;
    input \neopxl_color[7] ;
    input \neopxl_color[14] ;
    input \neopxl_color[15] ;
    input \neopxl_color[12] ;
    input \neopxl_color[13] ;
    output n7671;
    output NEOPXL_c;
    input update_color;
    output n11353;
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(3[9:12])
    
    wire n10779, n1403, n10780, n1809;
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire n13601;
    wire [31:0]n2753;
    
    wire n2701, n10989;
    wire [31:0]n2555;
    
    wire n2509, n10938, n10890, n2200, n10891, n10696;
    wire [31:0]n1;
    
    wire n10697;
    wire [31:0]n2357;
    
    wire n2308, n10900, n11070, n2992, n3017, n11071;
    wire [31:0]n2951;
    
    wire n2901, n11036, n10990, n10939;
    wire [31:0]n2258;
    
    wire n2201, n10889, n10806, n10901, n2307, n10902, n10725, 
        n10726, n11037, n2702, n10988, n10752, n1106, n10753, 
        n13203, n10695, n13201, n2306, n10903, n2506, n2522, n2605, 
        n1697, n1598, n1631, n10805, n2202, n10888;
    wire [31:0]n1169;
    
    wire n1107, n10751, n2902, n11035, n2203, n10887, n2489, n2390, 
        n10937, n2423, n2703, n10987, n3092, n2993, n11069, n2903, 
        n11034, n1698, n1599, n10804;
    wire [31:0]n255;
    
    wire n10620;
    wire [31:0]n1466;
    
    wire n1404, n10778, n2305, n10904;
    wire [31:0]n2456;
    
    wire n2391, n10936, n10641, n2204, n10886;
    wire [31:0]n133;
    
    wire n10724, n10669, n10670, n1108, n10750, n10642, n10694, 
        n13199, n2304, n10905, n2704, n10986, n3093, n2994, n11068, 
        n2303, n10906, n10723, n2392, n10935, n10722, n2904, n11033, 
        n2705, n10985, n1109, n10749, n10693, n13197, \neo_pixel_transmitter.done_N_656 , 
        n13659, \neo_pixel_transmitter.done , start_N_647, n7_adj_667, 
        start, n2302, n10907, n10692, n13195, n10621, n2393, n10934, 
        n1405, n10777, n10721, n10640, n2501, n2600, n2502, n2601, 
        n2301, n10908, n1406, n10776, n3094, n2995, n11067, n2706, 
        n10984, n2009;
    wire [31:0]n2060;
    
    wire n2027, n2108, n2394, n10933, n10691, n13193, n1103, n4, 
        n10748, n1037, n2905, n11032;
    wire [31:0]n1070;
    
    wire n1005, n10747, n1699, n1600, n10803, n10690, n13191, 
        n1407, n10775, n10720, n2906, n11031, n2707, n10983, n2505, 
        n2604, n2395, n10932, n2300, n10909, n10619, n1006, n10746, 
        n2299, n10910, n1700, n1601, n10802, n10639, n10618, n10689, 
        n13189, n3095, n2996, n11066, n2708, n10982, n2205, n10885, 
        n1408, n10774, n10719, n2396, n10931, n10718, n2298, n10911, 
        n2504, n2603, n10638, n2608, n2907, n11030, n2206, n10884, 
        n1409, n10773, n2207, n10883, n2208, n10882, n1007, n10745, 
        n10617, n2592, n2594, n2593, n2607, n35, n2209, n10881, 
        n10717, n1008, n10744, n1701, n1602, n10801, n2709, n10981, 
        n10688, n13187, n2496, n2595, n2397, n10930, n2225, n10637, 
        n2908, n11029, n1702, n1603, n10800, n10716, n1907;
    wire [31:0]n1961;
    
    wire n1928, n2006, n2105;
    wire [31:0]n2159;
    
    wire n2126, n1909, n2008, n2107, n2492, n2591, n3096, n2997, 
        n11065, n2687, n2588, n10980, n2621, n1204;
    wire [31:0]n1268;
    
    wire n1235, n1303, n2398, n10929, n2491, n2590, n10687, n13185, 
        n1400, n1301, n10772, n1334, n2192, n2093, n10880, n1209, 
        n1308, n1309, n2094, n10879, n10616;
    wire [31:0]n1367;
    
    wire n1302, n10771, n1703, n1604, n10799, n2720, n2801, n2490, 
        n2589, n1207, n1306, n1206, n1305, n10770, n1009, n10743, 
        n1208, n1307, n1205, n1304, n1203, n10_adj_668, n3002, 
        n42, n2909, n11028;
    wire [31:0]n2654;
    
    wire n10979, n2095, n10878, n2990, n3006, n3004, n2999, n43, 
        n2405, n34, n28, n40, n2096, n10877, n2097, n10876, 
        n2098, n10875, n2099, n10874, n2100, n10873, n2998, n2987, 
        n3008, n2989, n41, n2399, n10928, n38, n2403, n2606, 
        n39, n2101, n10872, n2102, n10871, n2103, n10870, n2104, 
        n10869, n2602, n2598, n2599, n2597, n37, n10868, n10715, 
        n10636, n12_adj_669, n10686, n13183, n7657, n7994, n10714, 
        n2508, n2494, n2106, n10867, n2495, n10635, n16, n2985, 
        n3000, n40_adj_670, n10713, n905, n10742, n13594;
    wire [31:0]n971;
    
    wire n906, n10741, n3007, n3009, n39_adj_671, n2698, n2797, 
        n2324, n13321, n1136, n1105, n1104, n10978, n10685, n13181, 
        n10769, n10634, n10615, n2400, n10927, n1704, n1605, n10798, 
        n10866, n3097, n11064, n2885, n2786, n11027, n2819, n11174;
    wire [31:0]n2852;
    
    wire n2787, n11026, n44, n50, n9737, n12_adj_673, n2805, n11_adj_674, 
        n1202, n13_adj_675, n1906, n2005, n1606, n1609, n15_adj_676, 
        n1607, n19, n30, n18, n22, n1608, n2493, n2986, n2991, 
        n2988, n45, n10712, n2693, n2695, n2694, n2696, n37_adj_677, 
        n7497, n2689, n2691, n2690, n2692, n36, n1905, n2004, 
        n2199, n1908, n2007, n1903, n2002, n11868, n10740, n11866, 
        n5703, n838, n807, n12837, n9803, n740, n2309, n2408, 
        n2195, n2194, n2293, n1896, n1995, n2193, n2404, n2503, 
        n2292, n2294, n2196, n1904, n2003, n2295, n2297, n2296, 
        n20, n2893, n2918, n10684, n13179, n2001, n26, n1895, 
        n16_adj_678, n1897, n1899, n1898, n1900, n24, n1901, n1902, 
        n28_adj_679, n9709, n28_adj_680, n1998, n1999, n26_adj_681, 
        n2000, n27, n1996, n1994, n1997, n25, n18_adj_682, n2697, 
        n42_adj_683, n24_adj_684, n30_adj_685, n28_adj_686, n708, 
        n2109, n29, n2700, n2699, n40_adj_687, n2688, n41_adj_688, 
        n39_adj_689, n11912, n2789, n2788, n58, n7899, n12839, 
        n2498, n2500, n11941, n2795, n7_adj_690, n27_adj_691, n28_adj_692, 
        n31, n22_adj_693, n2198, n30_adj_694, n34_adj_695, n2197, 
        n21, n30_adj_696, n9697, n2291, n34_adj_697, n32_adj_698, 
        n33_adj_699, n31_adj_700, n2409, n2407, n2402, n2401, n2406, 
        n34_adj_701, n25_adj_702, n32_adj_703, n2809, n30_adj_704, 
        n2807, n40_adj_705, n10977, n2499, n10768, n10711, n10865, 
        n10864, n2507, n10926, n2898, n26_adj_706, n31_adj_707, 
        n35_adj_708, n37_adj_709, n3098, n11063, n11025, n10739, 
        n10976, n10925, n3099, n11062, n11024, n10975, n10924, 
        n2889, n2892, n2887, n2895, n2790, n2792, n2791, n2793, 
        n38_adj_713, n10767, n10863, n10974, n11023, n10923, n1532, 
        n13604, n1829, n13605, n3100, n3001, n11061, n10973, n2596, 
        n10972, n11022, n10922, n10710, n13600, n10921, n11021, 
        n10971, n9717, n1807, n1806, n18_adj_716, n1802, n1804, 
        n1801, n1797, n24_adj_717, n1800, n1803, n1796, n22_adj_718, 
        n1805, n1799, n26_adj_719, n1798, n1808, n2808, n2794, 
        n44_adj_721, n10920, n10970, n10633, n1705, n10797, n10683, 
        n13177, n10766, n1433, n1506, n10614, n10862, n10613, 
        n10632, n10738, n10682, n13175, n10861, n10860, n10859, 
        n10631, n10681, n13173, n1402, n1501, n1401, n1500, n1505, 
        n1503, n1502, n16_adj_727, n18_adj_728, n13_adj_729, n1504, 
        n1508, n2800, n2803, n2802, n2806, n42_adj_730, n10709, 
        n1507, n1509, n9729, n18_adj_731, n16_adj_732, n20_adj_733, 
        n1499, n11113, n11908, n13513, n13445, n9747, n7564, n11948, 
        n13514, n11988, \neo_pixel_transmitter.done_N_662 , n3209, n11153;
    wire [4:0]color_bit_N_642;
    
    wire n13622;
    wire [3:0]state_3__N_448;
    
    wire n43_adj_735, n3101, n11060, n10969, n2886, n2897, n2799, 
        n2804, n2796, n2798, n41_adj_736, n10680;
    wire [31:0]one_wire_N_599;
    
    wire n11020, n10919, n10765, n13372, n13373;
    wire [31:0]n3149;
    
    wire n3116, n3108, n3105, n46, n3107, n3109, n35_adj_738, 
        n3085, n3087, n3086, n3088, n42_adj_739, n3091, n32_adj_740, 
        n44_adj_741, n3102, n50_adj_742, n3084, n3083, n48, n3089, 
        n3090, n49, n3103, n3106, n3104, n47, n1706, n10796, 
        n13_adj_743, n10858, n2890, n27_adj_744, n19_adj_745, n12777, 
        n29_adj_746, n2888, n2899, n12779, n12789, n2900, n39_adj_747, 
        n25_adj_748, n2891, n2896, n10679, n10918, n21_adj_750, 
        n10968, n12785, n12781, n2894, n11_adj_751, n12787, n41_adj_752, 
        n12799, n12775, n12801, n12803, n43_adj_753, n45_adj_754, 
        n12809, n12811, n10708, n12813, n10857, n12815, n10856, 
        n1707, n10795, n3003, n11059, n12817, n12819, n12821, 
        n59, n61, n13280, n11156, n13364, n13363, n13602, n10737, 
        n10736, n11019, n10917, n22_adj_755, n10764, n10855, n1708, 
        n10794, n10967, n10735, n10630, n36_adj_756, n10916, n13619, 
        n10707, n10734, n27_adj_757, n10854, n10678, n11018, n10966, 
        n10915, n11017, n7983, n11058, n10965, n10914, n12451, 
        n10629, n10763, n10853, n11016, n10964, n10762, n10913, 
        n3005, n11057, n10912, n10963, n1709, n10677, n10852, 
        n11015, n10962, n10761, n10851, n10793, n10628, n10627, 
        n10733, n10760, n10850, n10676, n10961, n10849, n10848, 
        n11056, n11014, n10960, n10847, n10846, n10675, n10732, 
        n2497, n10845, n10844, n10792, n2609, n10959, n10843, 
        n10759, n10842, n10731, n10626, n11013, n10841, n10840, 
        n10839, n10674, n10758, n10625, n10730, n10838, n10757, 
        n11105, n11104, n11103, n11102, n11101, n11100, n11099, 
        n11098, n11097, n11096, n10791, n10729, n10837, n11012, 
        n10958, n10790, n10836, n10957, n11011, n11010, n10835, 
        n10956, n11009, n10955, n11055, n11008, n10954, n10834, 
        n10789, n10833, n11007, n10788, n10953, n11006, n10832, 
        n10952, n11005, n11004, n10951, n10831, n10787, n10830, 
        n11003, n10756, n11054, n10829, n10828, n10673, n11002, 
        n10950, n10827, n10786, n10826, n11001, n11095, n11053, 
        n2984, n11052, n11094, n11051, n11093, n11000, n11050, 
        n10825, n10785, n10824, n11049, n10823, n11048, n10949, 
        n11047, n10999, n11046, n11045, n11044, n10624, n11043, 
        n10822, n34_adj_758, n10784, n10948, n10892, n12381, n11042, 
        n10947, n10998, n10821, n10893, n11041, n30_adj_759, n11092, 
        n11091, n11090, n11089, n11040, n10997, n11088, n10820, 
        n10755, n10754, n11087, n10894, n10728, n11086, n10623, 
        n11085, n10946, n10819, n11084, n11083, n11082, n10_adj_760, 
        n11081, n11080, n10727, n10783, n11079, n10895, n39_adj_761, 
        n3901, n13435, n10672, n11078, n11077, n10996, n7608, 
        n10699, n13209, n38_adj_762, n10945, n10896, n10698, n13207, 
        n10622, n11076, n11039, n10995, n1730, n10818, n10944, 
        n43_adj_763, n10671, n10817, n10943, n10897, n10994, n10942, 
        n10816, n11946, n7_adj_764, n42_adj_765, n7598, n11926, 
        n10815, n10782, n10898, n10814, n10941, n10813, n10781, 
        n10643, n16_adj_766, n13205, n10812, n33_adj_767, n11075, 
        n10811, n11038, n41_adj_768, n10993, n10810, n11074, n10899, 
        n10992, n45_adj_769, n10940, n10809, n47_adj_770, n11073, 
        n10808, n11072, n10991, n10807, n4_adj_771, n37_adj_772, 
        n39_adj_773, n22_adj_774, n20_adj_775, n24_adj_776, n30_adj_777, 
        n48_adj_778, n46_adj_779, n47_adj_780, n45_adj_781, n44_adj_782, 
        n43_adj_783, n54, n49_adj_784, n13436, n13211, n13217, n13438, 
        n11864, n11892, n11834, n103, n16_adj_785, n6_adj_786;
    
    SB_CARRY mod_5_add_1004_9 (.CI(n10779), .I0(n1403), .I1(VCC_net), 
            .CO(n10780));
    SB_LUT4 mod_5_add_1205_2_lut (.I0(bit_ctr[18]), .I1(bit_ctr[18]), .I2(n13601), 
            .I3(VCC_net), .O(n1809)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_1875_11_lut (.I0(GND_net), .I1(n2701), .I2(VCC_net), 
            .I3(n10989), .O(n2753[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_3_lut (.I0(GND_net), .I1(n2509), .I2(GND_net), 
            .I3(n10938), .O(n2555[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_12 (.CI(n10890), .I0(n2200), .I1(VCC_net), 
            .CO(n10891));
    SB_CARRY sub_14_add_2_30 (.CI(n10696), .I0(timer[28]), .I1(n1[28]), 
            .CO(n10697));
    SB_LUT4 mod_5_add_1607_4_lut (.I0(GND_net), .I1(n2308), .I2(VCC_net), 
            .I3(n10900), .O(n2357[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_20 (.CI(n11070), .I0(n2992), .I1(n3017), .CO(n11071));
    SB_LUT4 mod_5_add_2009_11_lut (.I0(GND_net), .I1(n2901), .I2(VCC_net), 
            .I3(n11036), .O(n2951[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_11 (.CI(n10989), .I0(n2701), .I1(VCC_net), 
            .CO(n10990));
    SB_CARRY mod_5_add_1741_3 (.CI(n10938), .I0(n2509), .I1(GND_net), 
            .CO(n10939));
    SB_LUT4 mod_5_add_1540_11_lut (.I0(GND_net), .I1(n2201), .I2(VCC_net), 
            .I3(n10889), .O(n2258[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_2 (.CI(VCC_net), .I0(bit_ctr[18]), .I1(n13601), 
            .CO(n10806));
    SB_CARRY mod_5_add_1607_5 (.CI(n10901), .I0(n2307), .I1(VCC_net), 
            .CO(n10902));
    SB_CARRY timer_632_add_4_21 (.CI(n10725), .I0(GND_net), .I1(timer[19]), 
            .CO(n10726));
    SB_CARRY mod_5_add_2009_11 (.CI(n11036), .I0(n2901), .I1(VCC_net), 
            .CO(n11037));
    SB_LUT4 mod_5_add_1875_10_lut (.I0(GND_net), .I1(n2702), .I2(VCC_net), 
            .I3(n10988), .O(n2753[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_2_lut (.I0(GND_net), .I1(bit_ctr[10]), .I2(GND_net), 
            .I3(VCC_net), .O(n2555[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_11 (.CI(n10889), .I0(n2201), .I1(VCC_net), 
            .CO(n10890));
    SB_CARRY mod_5_add_803_6 (.CI(n10752), .I0(n1106), .I1(VCC_net), .CO(n10753));
    SB_LUT4 mod_5_add_1607_5_lut (.I0(GND_net), .I1(n2307), .I2(VCC_net), 
            .I3(n10901), .O(n2357[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_29_lut (.I0(n13201), .I1(timer[27]), .I2(n1[27]), 
            .I3(n10695), .O(n13203)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_29_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1607_6 (.CI(n10902), .I0(n2306), .I1(VCC_net), 
            .CO(n10903));
    SB_LUT4 mod_5_i1760_3_lut (.I0(n2506), .I1(n2555[14]), .I2(n2522), 
            .I3(GND_net), .O(n2605));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1760_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1138_14_lut (.I0(n1598), .I1(n1598), .I2(n1631), 
            .I3(n10805), .O(n1697)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1540_10_lut (.I0(GND_net), .I1(n2202), .I2(VCC_net), 
            .I3(n10888), .O(n2258[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_2 (.CI(VCC_net), .I0(bit_ctr[10]), .I1(GND_net), 
            .CO(n10938));
    SB_CARRY mod_5_add_1875_10 (.CI(n10988), .I0(n2702), .I1(VCC_net), 
            .CO(n10989));
    SB_CARRY mod_5_add_1540_10 (.CI(n10888), .I0(n2202), .I1(VCC_net), 
            .CO(n10889));
    SB_LUT4 mod_5_add_803_5_lut (.I0(GND_net), .I1(n1107), .I2(VCC_net), 
            .I3(n10751), .O(n1169[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_10_lut (.I0(GND_net), .I1(n2902), .I2(VCC_net), 
            .I3(n11035), .O(n2951[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_9_lut (.I0(GND_net), .I1(n2203), .I2(VCC_net), 
            .I3(n10887), .O(n2258[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_22_lut (.I0(n2423), .I1(n2390), .I2(VCC_net), 
            .I3(n10937), .O(n2489)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_22_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1875_9_lut (.I0(GND_net), .I1(n2703), .I2(VCC_net), 
            .I3(n10987), .O(n2753[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_10 (.CI(n11035), .I0(n2902), .I1(VCC_net), 
            .CO(n11036));
    SB_LUT4 mod_5_add_2076_19_lut (.I0(n2993), .I1(n2993), .I2(n3017), 
            .I3(n11069), .O(n3092)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_19_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_2009_9_lut (.I0(GND_net), .I1(n2903), .I2(VCC_net), 
            .I3(n11034), .O(n2951[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_13_lut (.I0(n1599), .I1(n1599), .I2(n1631), 
            .I3(n10804), .O(n1698)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_13_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 add_21_10_lut (.I0(GND_net), .I1(bit_ctr[8]), .I2(GND_net), 
            .I3(n10620), .O(n255[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1004_8_lut (.I0(GND_net), .I1(n1404), .I2(VCC_net), 
            .I3(n10778), .O(n1466[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_6_lut (.I0(GND_net), .I1(n2306), .I2(VCC_net), 
            .I3(n10902), .O(n2357[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_803_5 (.CI(n10751), .I0(n1107), .I1(VCC_net), .CO(n10752));
    SB_CARRY mod_5_add_1607_7 (.CI(n10903), .I0(n2305), .I1(VCC_net), 
            .CO(n10904));
    SB_CARRY mod_5_add_1540_9 (.CI(n10887), .I0(n2203), .I1(VCC_net), 
            .CO(n10888));
    SB_LUT4 mod_5_add_1674_21_lut (.I0(GND_net), .I1(n2391), .I2(VCC_net), 
            .I3(n10936), .O(n2456[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_9 (.CI(n10987), .I0(n2703), .I1(VCC_net), 
            .CO(n10988));
    SB_CARRY mod_5_add_1138_13 (.CI(n10804), .I0(n1599), .I1(n1631), .CO(n10805));
    SB_LUT4 add_21_31_lut (.I0(GND_net), .I1(bit_ctr[29]), .I2(GND_net), 
            .I3(n10641), .O(n255[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_8_lut (.I0(GND_net), .I1(n2204), .I2(VCC_net), 
            .I3(n10886), .O(n2258[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(timer[18]), 
            .I3(n10724), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_29 (.CI(n10695), .I0(timer[27]), .I1(n1[27]), 
            .CO(n10696));
    SB_CARRY sub_14_add_2_3 (.CI(n10669), .I0(timer[1]), .I1(n1[1]), .CO(n10670));
    SB_LUT4 mod_5_add_803_4_lut (.I0(GND_net), .I1(n1108), .I2(VCC_net), 
            .I3(n10750), .O(n1169[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_31 (.CI(n10641), .I0(bit_ctr[29]), .I1(GND_net), .CO(n10642));
    SB_LUT4 sub_14_add_2_28_lut (.I0(n13199), .I1(timer[26]), .I2(n1[26]), 
            .I3(n10694), .O(n13201)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_28_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_1607_7_lut (.I0(GND_net), .I1(n2305), .I2(VCC_net), 
            .I3(n10903), .O(n2357[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_20 (.CI(n10724), .I0(GND_net), .I1(timer[18]), 
            .CO(n10725));
    SB_CARRY mod_5_add_1607_8 (.CI(n10904), .I0(n2304), .I1(VCC_net), 
            .CO(n10905));
    SB_CARRY sub_14_add_2_2 (.CI(VCC_net), .I0(timer[0]), .I1(n1[0]), 
            .CO(n10669));
    SB_CARRY mod_5_add_803_4 (.CI(n10750), .I0(n1108), .I1(VCC_net), .CO(n10751));
    SB_CARRY sub_14_add_2_28 (.CI(n10694), .I0(timer[26]), .I1(n1[26]), 
            .CO(n10695));
    SB_CARRY mod_5_add_1674_21 (.CI(n10936), .I0(n2391), .I1(VCC_net), 
            .CO(n10937));
    SB_LUT4 mod_5_add_1875_8_lut (.I0(GND_net), .I1(n2704), .I2(VCC_net), 
            .I3(n10986), .O(n2753[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_9 (.CI(n11034), .I0(n2903), .I1(VCC_net), 
            .CO(n11035));
    SB_CARRY mod_5_add_2076_19 (.CI(n11069), .I0(n2993), .I1(n3017), .CO(n11070));
    SB_LUT4 mod_5_add_1607_8_lut (.I0(GND_net), .I1(n2304), .I2(VCC_net), 
            .I3(n10904), .O(n2357[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_18_lut (.I0(n2994), .I1(n2994), .I2(n3017), 
            .I3(n11068), .O(n3093)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_18_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1607_9 (.CI(n10905), .I0(n2303), .I1(VCC_net), 
            .CO(n10906));
    SB_LUT4 timer_632_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(timer[17]), 
            .I3(n10723), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_19 (.CI(n10723), .I0(GND_net), .I1(timer[17]), 
            .CO(n10724));
    SB_LUT4 mod_5_add_1674_20_lut (.I0(GND_net), .I1(n2392), .I2(VCC_net), 
            .I3(n10935), .O(n2456[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_8 (.CI(n10986), .I0(n2704), .I1(VCC_net), 
            .CO(n10987));
    SB_LUT4 timer_632_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(timer[16]), 
            .I3(n10722), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_8_lut (.I0(GND_net), .I1(n2904), .I2(VCC_net), 
            .I3(n11033), .O(n2951[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_9_lut (.I0(GND_net), .I1(n2303), .I2(VCC_net), 
            .I3(n10905), .O(n2357[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_7_lut (.I0(GND_net), .I1(n2705), .I2(VCC_net), 
            .I3(n10985), .O(n2753[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_20 (.CI(n10935), .I0(n2392), .I1(VCC_net), 
            .CO(n10936));
    SB_CARRY timer_632_add_4_18 (.CI(n10722), .I0(GND_net), .I1(timer[16]), 
            .CO(n10723));
    SB_LUT4 mod_5_add_803_3_lut (.I0(GND_net), .I1(n1109), .I2(GND_net), 
            .I3(n10749), .O(n1169[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_27_lut (.I0(n13197), .I1(timer[25]), .I2(n1[25]), 
            .I3(n10693), .O(n13199)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_27_lut.LUT_INIT = 16'hebbe;
    SB_DFFE \neo_pixel_transmitter.done_104  (.Q(\neo_pixel_transmitter.done ), 
            .C(CLK_c), .E(n13659), .D(\neo_pixel_transmitter.done_N_656 ));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_27 (.CI(n10693), .I0(timer[25]), .I1(n1[25]), 
            .CO(n10694));
    SB_DFFE start_103 (.Q(start), .C(CLK_c), .E(n7_adj_667), .D(start_N_647));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1607_10 (.CI(n10906), .I0(n2302), .I1(VCC_net), 
            .CO(n10907));
    SB_LUT4 sub_14_add_2_26_lut (.I0(n13195), .I1(timer[24]), .I2(n1[24]), 
            .I3(n10692), .O(n13197)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_26_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_21_10 (.CI(n10620), .I0(bit_ctr[8]), .I1(GND_net), .CO(n10621));
    SB_CARRY mod_5_add_2009_8 (.CI(n11033), .I0(n2904), .I1(VCC_net), 
            .CO(n11034));
    SB_CARRY mod_5_add_1875_7 (.CI(n10985), .I0(n2705), .I1(VCC_net), 
            .CO(n10986));
    SB_LUT4 mod_5_add_1674_19_lut (.I0(GND_net), .I1(n2393), .I2(VCC_net), 
            .I3(n10934), .O(n2456[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_803_3 (.CI(n10749), .I0(n1109), .I1(GND_net), .CO(n10750));
    SB_CARRY mod_5_add_1004_8 (.CI(n10778), .I0(n1404), .I1(VCC_net), 
            .CO(n10779));
    SB_LUT4 mod_5_add_1004_7_lut (.I0(GND_net), .I1(n1405), .I2(VCC_net), 
            .I3(n10777), .O(n1466[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_19 (.CI(n10934), .I0(n2393), .I1(VCC_net), 
            .CO(n10935));
    SB_LUT4 mod_5_add_1607_10_lut (.I0(GND_net), .I1(n2302), .I2(VCC_net), 
            .I3(n10906), .O(n2357[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_803_2_lut (.I0(GND_net), .I1(bit_ctr[24]), .I2(GND_net), 
            .I3(VCC_net), .O(n1169[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(timer[15]), 
            .I3(n10721), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_17 (.CI(n10721), .I0(GND_net), .I1(timer[15]), 
            .CO(n10722));
    SB_CARRY mod_5_add_2076_18 (.CI(n11068), .I0(n2994), .I1(n3017), .CO(n11069));
    SB_LUT4 add_21_30_lut (.I0(GND_net), .I1(bit_ctr[28]), .I2(GND_net), 
            .I3(n10640), .O(n255[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_7 (.CI(n10777), .I0(n1405), .I1(VCC_net), 
            .CO(n10778));
    SB_LUT4 mod_5_i1755_3_lut (.I0(n2501), .I1(n2555[19]), .I2(n2522), 
            .I3(GND_net), .O(n2600));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1756_3_lut (.I0(n2502), .I1(n2555[18]), .I2(n2522), 
            .I3(GND_net), .O(n2601));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1607_11 (.CI(n10907), .I0(n2301), .I1(VCC_net), 
            .CO(n10908));
    SB_LUT4 mod_5_add_1004_6_lut (.I0(GND_net), .I1(n1406), .I2(VCC_net), 
            .I3(n10776), .O(n1466[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_17_lut (.I0(n2995), .I1(n2995), .I2(n3017), 
            .I3(n11067), .O(n3094)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_17_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY sub_14_add_2_26 (.CI(n10692), .I0(timer[24]), .I1(n1[24]), 
            .CO(n10693));
    SB_LUT4 mod_5_add_1875_6_lut (.I0(GND_net), .I1(n2706), .I2(VCC_net), 
            .I3(n10984), .O(n2753[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1423_3_lut (.I0(n2009), .I1(n2060[16]), .I2(n2027), 
            .I3(GND_net), .O(n2108));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_18_lut (.I0(GND_net), .I1(n2394), .I2(VCC_net), 
            .I3(n10933), .O(n2456[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_25_lut (.I0(n13193), .I1(timer[23]), .I2(n1[23]), 
            .I3(n10691), .O(n13195)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_25 (.CI(n10691), .I0(timer[23]), .I1(n1[23]), 
            .CO(n10692));
    SB_CARRY mod_5_add_803_2 (.CI(VCC_net), .I0(bit_ctr[24]), .I1(GND_net), 
            .CO(n10749));
    SB_LUT4 mod_5_add_736_8_lut (.I0(n1037), .I1(n4), .I2(VCC_net), .I3(n10748), 
            .O(n1103)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2009_7_lut (.I0(GND_net), .I1(n2905), .I2(VCC_net), 
            .I3(n11032), .O(n2951[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_7 (.CI(n11032), .I0(n2905), .I1(VCC_net), 
            .CO(n11033));
    SB_CARRY mod_5_add_1875_6 (.CI(n10984), .I0(n2706), .I1(VCC_net), 
            .CO(n10985));
    SB_CARRY mod_5_add_1674_18 (.CI(n10933), .I0(n2394), .I1(VCC_net), 
            .CO(n10934));
    SB_LUT4 mod_5_add_736_7_lut (.I0(GND_net), .I1(n1005), .I2(VCC_net), 
            .I3(n10747), .O(n1070[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_6 (.CI(n10776), .I0(n1406), .I1(VCC_net), 
            .CO(n10777));
    SB_LUT4 mod_5_add_1138_12_lut (.I0(n1600), .I1(n1600), .I2(n1631), 
            .I3(n10803), .O(n1699)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_12_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1607_11_lut (.I0(GND_net), .I1(n2301), .I2(VCC_net), 
            .I3(n10907), .O(n2357[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_24_lut (.I0(n13191), .I1(timer[22]), .I2(n1[22]), 
            .I3(n10690), .O(n13193)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_21_30 (.CI(n10640), .I0(bit_ctr[28]), .I1(GND_net), .CO(n10641));
    SB_LUT4 mod_5_add_1004_5_lut (.I0(GND_net), .I1(n1407), .I2(VCC_net), 
            .I3(n10775), .O(n1466[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(timer[14]), 
            .I3(n10720), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_6_lut (.I0(GND_net), .I1(n2906), .I2(VCC_net), 
            .I3(n11031), .O(n2951[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_5_lut (.I0(GND_net), .I1(n2707), .I2(VCC_net), 
            .I3(n10983), .O(n2753[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1759_3_lut (.I0(n2505), .I1(n2555[15]), .I2(n2522), 
            .I3(GND_net), .O(n2604));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_17_lut (.I0(GND_net), .I1(n2395), .I2(VCC_net), 
            .I3(n10932), .O(n2456[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_736_7 (.CI(n10747), .I0(n1005), .I1(VCC_net), .CO(n10748));
    SB_CARRY mod_5_add_1138_12 (.CI(n10803), .I0(n1600), .I1(n1631), .CO(n10804));
    SB_CARRY mod_5_add_1607_12 (.CI(n10908), .I0(n2300), .I1(VCC_net), 
            .CO(n10909));
    SB_CARRY mod_5_add_2076_17 (.CI(n11067), .I0(n2995), .I1(n3017), .CO(n11068));
    SB_CARRY sub_14_add_2_24 (.CI(n10690), .I0(timer[22]), .I1(n1[22]), 
            .CO(n10691));
    SB_LUT4 add_21_9_lut (.I0(GND_net), .I1(bit_ctr[7]), .I2(GND_net), 
            .I3(n10619), .O(n255[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_12_lut (.I0(GND_net), .I1(n2300), .I2(VCC_net), 
            .I3(n10908), .O(n2357[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_736_6_lut (.I0(GND_net), .I1(n1006), .I2(VCC_net), 
            .I3(n10746), .O(n1070[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_9 (.CI(n10619), .I0(bit_ctr[7]), .I1(GND_net), .CO(n10620));
    SB_CARRY mod_5_add_1607_13 (.CI(n10909), .I0(n2299), .I1(VCC_net), 
            .CO(n10910));
    SB_CARRY mod_5_add_1875_5 (.CI(n10983), .I0(n2707), .I1(VCC_net), 
            .CO(n10984));
    SB_LUT4 mod_5_add_1138_11_lut (.I0(n1601), .I1(n1601), .I2(n1631), 
            .I3(n10802), .O(n1700)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1004_5 (.CI(n10775), .I0(n1407), .I1(VCC_net), 
            .CO(n10776));
    SB_CARRY mod_5_add_736_6 (.CI(n10746), .I0(n1006), .I1(VCC_net), .CO(n10747));
    SB_LUT4 add_21_29_lut (.I0(GND_net), .I1(bit_ctr[27]), .I2(GND_net), 
            .I3(n10639), .O(n255[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_8 (.CI(n10886), .I0(n2204), .I1(VCC_net), 
            .CO(n10887));
    SB_CARRY add_21_29 (.CI(n10639), .I0(bit_ctr[27]), .I1(GND_net), .CO(n10640));
    SB_CARRY timer_632_add_4_16 (.CI(n10720), .I0(GND_net), .I1(timer[14]), 
            .CO(n10721));
    SB_LUT4 add_21_8_lut (.I0(GND_net), .I1(bit_ctr[6]), .I2(GND_net), 
            .I3(n10618), .O(n255[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_23_lut (.I0(n13189), .I1(timer[21]), .I2(n1[21]), 
            .I3(n10689), .O(n13191)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_2076_16_lut (.I0(n2996), .I1(n2996), .I2(n3017), 
            .I3(n11066), .O(n3095)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2009_6 (.CI(n11031), .I0(n2906), .I1(VCC_net), 
            .CO(n11032));
    SB_LUT4 mod_5_add_1875_4_lut (.I0(GND_net), .I1(n2708), .I2(VCC_net), 
            .I3(n10982), .O(n2753[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_7_lut (.I0(GND_net), .I1(n2205), .I2(VCC_net), 
            .I3(n10885), .O(n2258[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_17 (.CI(n10932), .I0(n2395), .I1(VCC_net), 
            .CO(n10933));
    SB_CARRY mod_5_add_1875_4 (.CI(n10982), .I0(n2708), .I1(VCC_net), 
            .CO(n10983));
    SB_LUT4 mod_5_add_1004_4_lut (.I0(GND_net), .I1(n1408), .I2(VCC_net), 
            .I3(n10774), .O(n1466[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(timer[13]), 
            .I3(n10719), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_15 (.CI(n10719), .I0(GND_net), .I1(timer[13]), 
            .CO(n10720));
    SB_LUT4 mod_5_add_1674_16_lut (.I0(GND_net), .I1(n2396), .I2(VCC_net), 
            .I3(n10931), .O(n2456[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_13_lut (.I0(GND_net), .I1(n2299), .I2(VCC_net), 
            .I3(n10909), .O(n2357[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(timer[12]), 
            .I3(n10718), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_14 (.CI(n10910), .I0(n2298), .I1(VCC_net), 
            .CO(n10911));
    SB_LUT4 mod_5_i1758_3_lut (.I0(n2504), .I1(n2555[16]), .I2(n2522), 
            .I3(GND_net), .O(n2603));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_23 (.CI(n10689), .I0(timer[21]), .I1(n1[21]), 
            .CO(n10690));
    SB_CARRY mod_5_add_1540_7 (.CI(n10885), .I0(n2205), .I1(VCC_net), 
            .CO(n10886));
    SB_LUT4 add_21_28_lut (.I0(GND_net), .I1(bit_ctr[26]), .I2(GND_net), 
            .I3(n10638), .O(n255[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_14_lut (.I0(GND_net), .I1(n2298), .I2(VCC_net), 
            .I3(n10910), .O(n2357[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1763_3_lut (.I0(n2509), .I1(n2555[11]), .I2(n2522), 
            .I3(GND_net), .O(n2608));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_2009_5_lut (.I0(GND_net), .I1(n2907), .I2(VCC_net), 
            .I3(n11030), .O(n2951[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_4 (.CI(n10774), .I0(n1408), .I1(VCC_net), 
            .CO(n10775));
    SB_CARRY mod_5_add_1138_11 (.CI(n10802), .I0(n1601), .I1(n1631), .CO(n10803));
    SB_LUT4 mod_5_add_1540_6_lut (.I0(GND_net), .I1(n2206), .I2(VCC_net), 
            .I3(n10884), .O(n2258[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_8 (.CI(n10618), .I0(bit_ctr[6]), .I1(GND_net), .CO(n10619));
    SB_CARRY mod_5_add_1540_6 (.CI(n10884), .I0(n2206), .I1(VCC_net), 
            .CO(n10885));
    SB_LUT4 mod_5_add_1004_3_lut (.I0(GND_net), .I1(n1409), .I2(GND_net), 
            .I3(n10773), .O(n1466[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1004_3 (.CI(n10773), .I0(n1409), .I1(GND_net), 
            .CO(n10774));
    SB_LUT4 mod_5_add_1540_5_lut (.I0(GND_net), .I1(n2207), .I2(VCC_net), 
            .I3(n10883), .O(n2258[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_5 (.CI(n10883), .I0(n2207), .I1(VCC_net), 
            .CO(n10884));
    SB_CARRY timer_632_add_4_14 (.CI(n10718), .I0(GND_net), .I1(timer[12]), 
            .CO(n10719));
    SB_CARRY mod_5_add_1674_16 (.CI(n10931), .I0(n2396), .I1(VCC_net), 
            .CO(n10932));
    SB_LUT4 mod_5_add_1540_4_lut (.I0(GND_net), .I1(n2208), .I2(VCC_net), 
            .I3(n10882), .O(n2258[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_736_5_lut (.I0(GND_net), .I1(n1007), .I2(VCC_net), 
            .I3(n10745), .O(n1070[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_4 (.CI(n10882), .I0(n2208), .I1(VCC_net), 
            .CO(n10883));
    SB_DFF timer_632__i0 (.Q(timer[0]), .C(CLK_c), .D(n133[0]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 add_21_7_lut (.I0(GND_net), .I1(bit_ctr[5]), .I2(GND_net), 
            .I3(n10617), .O(n255[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_4_lut (.I0(n2592), .I1(n2594), .I2(n2593), .I3(n2607), 
            .O(n35));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_21_28 (.CI(n10638), .I0(bit_ctr[26]), .I1(GND_net), .CO(n10639));
    SB_LUT4 mod_5_add_1540_3_lut (.I0(GND_net), .I1(n2209), .I2(GND_net), 
            .I3(n10881), .O(n2258[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_736_5 (.CI(n10745), .I0(n1007), .I1(VCC_net), .CO(n10746));
    SB_LUT4 timer_632_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(timer[11]), 
            .I3(n10717), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_3 (.CI(n10881), .I0(n2209), .I1(GND_net), 
            .CO(n10882));
    SB_LUT4 mod_5_add_736_4_lut (.I0(GND_net), .I1(n1008), .I2(VCC_net), 
            .I3(n10744), .O(n1070[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_10_lut (.I0(n1602), .I1(n1602), .I2(n1631), 
            .I3(n10801), .O(n1701)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1875_3_lut (.I0(GND_net), .I1(n2709), .I2(GND_net), 
            .I3(n10981), .O(n2753[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_22_lut (.I0(n13187), .I1(timer[20]), .I2(n1[20]), 
            .I3(n10688), .O(n13189)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_2009_5 (.CI(n11030), .I0(n2907), .I1(VCC_net), 
            .CO(n11031));
    SB_CARRY mod_5_add_1875_3 (.CI(n10981), .I0(n2709), .I1(GND_net), 
            .CO(n10982));
    SB_LUT4 mod_5_i1750_3_lut (.I0(n2496), .I1(n2555[24]), .I2(n2522), 
            .I3(GND_net), .O(n2595));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_15_lut (.I0(GND_net), .I1(n2397), .I2(VCC_net), 
            .I3(n10930), .O(n2456[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_2_lut (.I0(GND_net), .I1(bit_ctr[8]), .I2(GND_net), 
            .I3(VCC_net), .O(n2753[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1554_3_lut (.I0(n2204), .I1(n2258[19]), .I2(n2225), 
            .I3(GND_net), .O(n2303));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i1_1_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_21_27_lut (.I0(GND_net), .I1(bit_ctr[25]), .I2(GND_net), 
            .I3(n10637), .O(n255[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_22 (.CI(n10688), .I0(timer[20]), .I1(n1[20]), 
            .CO(n10689));
    SB_LUT4 mod_5_add_1004_2_lut (.I0(GND_net), .I1(bit_ctr[21]), .I2(GND_net), 
            .I3(VCC_net), .O(n1466[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_4_lut (.I0(GND_net), .I1(n2908), .I2(VCC_net), 
            .I3(n11029), .O(n2951[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_2_lut (.I0(GND_net), .I1(bit_ctr[13]), .I2(GND_net), 
            .I3(VCC_net), .O(n2258[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i27_1_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_1138_10 (.CI(n10801), .I0(n1602), .I1(n1631), .CO(n10802));
    SB_LUT4 mod_5_add_1138_9_lut (.I0(n1603), .I1(n1603), .I2(n1631), 
            .I3(n10800), .O(n1702)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1004_2 (.CI(VCC_net), .I0(bit_ctr[21]), .I1(GND_net), 
            .CO(n10773));
    SB_CARRY add_21_7 (.CI(n10617), .I0(bit_ctr[5]), .I1(GND_net), .CO(n10618));
    SB_CARRY timer_632_add_4_13 (.CI(n10717), .I0(GND_net), .I1(timer[11]), 
            .CO(n10718));
    SB_CARRY mod_5_add_736_4 (.CI(n10744), .I0(n1008), .I1(VCC_net), .CO(n10745));
    SB_LUT4 sub_14_inv_0_i2_1_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_2076_16 (.CI(n11066), .I0(n2996), .I1(n3017), .CO(n11067));
    SB_CARRY mod_5_add_2009_4 (.CI(n11029), .I0(n2908), .I1(VCC_net), 
            .CO(n11030));
    SB_LUT4 timer_632_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(timer[10]), 
            .I3(n10716), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1353_3_lut (.I0(n1907), .I1(n1961[19]), .I2(n1928), 
            .I3(GND_net), .O(n2006));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1353_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1420_3_lut (.I0(n2006), .I1(n2060[19]), .I2(n2027), 
            .I3(GND_net), .O(n2105));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1420_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1875_2 (.CI(VCC_net), .I0(bit_ctr[8]), .I1(GND_net), 
            .CO(n10981));
    SB_LUT4 mod_5_i1487_3_lut (.I0(n2105), .I1(n2159[19]), .I2(n2126), 
            .I3(GND_net), .O(n2204));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1487_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1674_15 (.CI(n10930), .I0(n2397), .I1(VCC_net), 
            .CO(n10931));
    SB_LUT4 mod_5_i1355_3_lut (.I0(n1909), .I1(n1961[17]), .I2(n1928), 
            .I3(GND_net), .O(n2008));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1355_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1422_3_lut (.I0(n2008), .I1(n2060[17]), .I2(n2027), 
            .I3(GND_net), .O(n2107));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1746_3_lut (.I0(n2492), .I1(n2555[28]), .I2(n2522), 
            .I3(GND_net), .O(n2591));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1540_2 (.CI(VCC_net), .I0(bit_ctr[13]), .I1(GND_net), 
            .CO(n10881));
    SB_LUT4 mod_5_i1489_3_lut (.I0(n2107), .I1(n2159[17]), .I2(n2126), 
            .I3(GND_net), .O(n2206));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1489_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_632_add_4_12 (.CI(n10716), .I0(GND_net), .I1(timer[10]), 
            .CO(n10717));
    SB_LUT4 mod_5_i1556_3_lut (.I0(n2206), .I1(n2258[17]), .I2(n2225), 
            .I3(GND_net), .O(n2305));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1556_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_2076_15_lut (.I0(n2997), .I1(n2997), .I2(n3017), 
            .I3(n11065), .O(n3096)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_15_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1808_24_lut (.I0(n2621), .I1(n2588), .I2(VCC_net), 
            .I3(n10980), .O(n2687)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_i874_3_lut (.I0(n1204), .I1(n1268[29]), .I2(n1235), 
            .I3(GND_net), .O(n1303));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i874_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1674_14_lut (.I0(GND_net), .I1(n2398), .I2(VCC_net), 
            .I3(n10929), .O(n2456[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1745_3_lut (.I0(n2491), .I1(n2555[29]), .I2(n2522), 
            .I3(GND_net), .O(n2590));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_21_lut (.I0(n13185), .I1(timer[19]), .I2(n1[19]), 
            .I3(n10687), .O(n13187)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_937_11_lut (.I0(n1334), .I1(n1301), .I2(VCC_net), 
            .I3(n10772), .O(n1400)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1473_19_lut (.I0(n2126), .I1(n2093), .I2(VCC_net), 
            .I3(n10880), .O(n2192)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_i879_3_lut (.I0(n1209), .I1(n1268[24]), .I2(n1235), 
            .I3(GND_net), .O(n1308));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i880_3_lut (.I0(bit_ctr[23]), .I1(n1268[23]), .I2(n1235), 
            .I3(GND_net), .O(n1309));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i880_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_27 (.CI(n10637), .I0(bit_ctr[25]), .I1(GND_net), .CO(n10638));
    SB_LUT4 mod_5_add_1473_18_lut (.I0(GND_net), .I1(n2094), .I2(VCC_net), 
            .I3(n10879), .O(n2159[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_6_lut (.I0(GND_net), .I1(bit_ctr[4]), .I2(GND_net), 
            .I3(n10616), .O(n255[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_21 (.CI(n10687), .I0(timer[19]), .I1(n1[19]), 
            .CO(n10688));
    SB_CARRY mod_5_add_1138_9 (.CI(n10800), .I0(n1603), .I1(n1631), .CO(n10801));
    SB_LUT4 mod_5_add_937_10_lut (.I0(GND_net), .I1(n1302), .I2(VCC_net), 
            .I3(n10771), .O(n1367[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_18 (.CI(n10879), .I0(n2094), .I1(VCC_net), 
            .CO(n10880));
    SB_LUT4 mod_5_add_1138_8_lut (.I0(n1604), .I1(n1604), .I2(n1631), 
            .I3(n10799), .O(n1703)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_8_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1892_3_lut (.I0(n2702), .I1(n2753[16]), .I2(n2720), 
            .I3(GND_net), .O(n2801));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1892_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_937_10 (.CI(n10771), .I0(n1302), .I1(VCC_net), 
            .CO(n10772));
    SB_LUT4 mod_5_i1744_3_lut (.I0(n2490), .I1(n2555[30]), .I2(n2522), 
            .I3(GND_net), .O(n2589));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i877_3_lut (.I0(n1207), .I1(n1268[26]), .I2(n1235), 
            .I3(GND_net), .O(n1306));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i876_3_lut (.I0(n1206), .I1(n1268[27]), .I2(n1235), 
            .I3(GND_net), .O(n1305));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_937_9_lut (.I0(GND_net), .I1(n1303), .I2(VCC_net), 
            .I3(n10770), .O(n1367[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_736_3_lut (.I0(GND_net), .I1(n1009), .I2(GND_net), 
            .I3(n10743), .O(n1070[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i878_3_lut (.I0(n1208), .I1(n1268[25]), .I2(n1235), 
            .I3(GND_net), .O(n1307));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i875_3_lut (.I0(n1205), .I1(n1268[28]), .I2(n1235), 
            .I3(GND_net), .O(n1304));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i875_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i873_3_lut (.I0(n1203), .I1(n1268[30]), .I2(n1235), 
            .I3(GND_net), .O(n1302));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(n1302), .I1(n1301), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_668));   // verilog/neopixel.v(22[26:36])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i16_4_lut (.I0(n2993), .I1(n3002), .I2(n2995), .I3(n2992), 
            .O(n42));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_2009_3_lut (.I0(GND_net), .I1(n2909), .I2(GND_net), 
            .I3(n11028), .O(n2951[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_23_lut (.I0(GND_net), .I1(n2589), .I2(VCC_net), 
            .I3(n10979), .O(n2654[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_17_lut (.I0(GND_net), .I1(n2095), .I2(VCC_net), 
            .I3(n10878), .O(n2159[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17_4_lut (.I0(n2990), .I1(n3006), .I2(n3004), .I3(n2999), 
            .O(n43));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1691_3_lut (.I0(n2405), .I1(n2456[16]), .I2(n2423), 
            .I3(GND_net), .O(n2504));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1691_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut (.I0(n2589), .I1(n2590), .I2(n2588), .I3(n2591), 
            .O(n34));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1473_17 (.CI(n10878), .I0(n2095), .I1(VCC_net), 
            .CO(n10879));
    SB_LUT4 i18_4_lut (.I0(n35), .I1(n2595), .I2(n28), .I3(n2608), .O(n40));   // verilog/neopixel.v(22[26:36])
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1473_16_lut (.I0(GND_net), .I1(n2096), .I2(VCC_net), 
            .I3(n10877), .O(n2159[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_16 (.CI(n10877), .I0(n2096), .I1(VCC_net), 
            .CO(n10878));
    SB_LUT4 mod_5_add_1473_15_lut (.I0(GND_net), .I1(n2097), .I2(VCC_net), 
            .I3(n10876), .O(n2159[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_15 (.CI(n10876), .I0(n2097), .I1(VCC_net), 
            .CO(n10877));
    SB_LUT4 mod_5_add_1473_14_lut (.I0(GND_net), .I1(n2098), .I2(VCC_net), 
            .I3(n10875), .O(n2159[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_14 (.CI(n10875), .I0(n2098), .I1(VCC_net), 
            .CO(n10876));
    SB_LUT4 mod_5_add_1473_13_lut (.I0(GND_net), .I1(n2099), .I2(VCC_net), 
            .I3(n10874), .O(n2159[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_13 (.CI(n10874), .I0(n2099), .I1(VCC_net), 
            .CO(n10875));
    SB_LUT4 mod_5_add_1473_12_lut (.I0(GND_net), .I1(n2100), .I2(VCC_net), 
            .I3(n10873), .O(n2159[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut (.I0(n2998), .I1(n2987), .I2(n3008), .I3(n2989), 
            .O(n41));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1674_14 (.CI(n10929), .I0(n2398), .I1(VCC_net), 
            .CO(n10930));
    SB_CARRY mod_5_add_1808_23 (.CI(n10979), .I0(n2589), .I1(VCC_net), 
            .CO(n10980));
    SB_LUT4 mod_5_add_1674_13_lut (.I0(GND_net), .I1(n2399), .I2(VCC_net), 
            .I3(n10928), .O(n2456[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_736_3 (.CI(n10743), .I0(n1009), .I1(GND_net), .CO(n10744));
    SB_LUT4 mod_5_add_736_2_lut (.I0(GND_net), .I1(bit_ctr[25]), .I2(GND_net), 
            .I3(VCC_net), .O(n1070[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_736_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_12 (.CI(n10873), .I0(n2100), .I1(VCC_net), 
            .CO(n10874));
    SB_LUT4 i16_4_lut_adj_16 (.I0(n2603), .I1(n2604), .I2(n2601), .I3(n2600), 
            .O(n38));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut_adj_16.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1689_rep_26_3_lut (.I0(n2403), .I1(n2456[18]), .I2(n2423), 
            .I3(GND_net), .O(n2502));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1689_rep_26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_3_lut (.I0(n2605), .I1(n34), .I2(n2606), .I3(GND_net), 
            .O(n39));   // verilog/neopixel.v(22[26:36])
    defparam i17_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 mod_5_add_1473_11_lut (.I0(GND_net), .I1(n2101), .I2(VCC_net), 
            .I3(n10872), .O(n2159[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_11 (.CI(n10872), .I0(n2101), .I1(VCC_net), 
            .CO(n10873));
    SB_LUT4 mod_5_add_1473_10_lut (.I0(GND_net), .I1(n2102), .I2(VCC_net), 
            .I3(n10871), .O(n2159[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_10 (.CI(n10871), .I0(n2102), .I1(VCC_net), 
            .CO(n10872));
    SB_LUT4 mod_5_add_1473_9_lut (.I0(GND_net), .I1(n2103), .I2(VCC_net), 
            .I3(n10870), .O(n2159[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_9 (.CI(n10870), .I0(n2103), .I1(VCC_net), 
            .CO(n10871));
    SB_LUT4 mod_5_add_1473_8_lut (.I0(GND_net), .I1(n2104), .I2(VCC_net), 
            .I3(n10869), .O(n2159[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut_adj_17 (.I0(n2602), .I1(n2598), .I2(n2599), .I3(n2597), 
            .O(n37));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_17.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1473_8 (.CI(n10869), .I0(n2104), .I1(VCC_net), 
            .CO(n10870));
    SB_LUT4 mod_5_add_1473_7_lut (.I0(GND_net), .I1(n2105), .I2(VCC_net), 
            .I3(n10868), .O(n2159[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_7 (.CI(n10868), .I0(n2105), .I1(VCC_net), 
            .CO(n10869));
    SB_LUT4 timer_632_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(timer[9]), 
            .I3(n10715), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_26_lut (.I0(GND_net), .I1(bit_ctr[24]), .I2(GND_net), 
            .I3(n10636), .O(n255[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_3_lut (.I0(bit_ctr[22]), .I1(n1306), .I2(n1309), .I3(GND_net), 
            .O(n12_adj_669));   // verilog/neopixel.v(22[26:36])
    defparam i3_3_lut.LUT_INIT = 16'hecec;
    SB_CARRY add_21_26 (.CI(n10636), .I0(bit_ctr[24]), .I1(GND_net), .CO(n10637));
    SB_LUT4 sub_14_add_2_20_lut (.I0(n13183), .I1(timer[18]), .I2(n1[18]), 
            .I3(n10686), .O(n13185)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_20_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_736_2 (.CI(VCC_net), .I0(bit_ctr[25]), .I1(GND_net), 
            .CO(n10743));
    SB_DFFESR bit_ctr__i31 (.Q(bit_ctr[31]), .C(CLK_c), .E(n7657), .D(n255[31]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_2009_3 (.CI(n11028), .I0(n2909), .I1(GND_net), 
            .CO(n11029));
    SB_CARRY timer_632_add_4_11 (.CI(n10715), .I0(GND_net), .I1(timer[9]), 
            .CO(n10716));
    SB_DFFESR bit_ctr__i30 (.Q(bit_ctr[30]), .C(CLK_c), .E(n7657), .D(n255[30]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i29 (.Q(bit_ctr[29]), .C(CLK_c), .E(n7657), .D(n255[29]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i28 (.Q(bit_ctr[28]), .C(CLK_c), .E(n7657), .D(n255[28]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY add_21_6 (.CI(n10616), .I0(bit_ctr[4]), .I1(GND_net), .CO(n10617));
    SB_DFFESR bit_ctr__i27 (.Q(bit_ctr[27]), .C(CLK_c), .E(n7657), .D(n255[27]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i26 (.Q(bit_ctr[26]), .C(CLK_c), .E(n7657), .D(n255[26]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_20 (.CI(n10686), .I0(timer[18]), .I1(n1[18]), 
            .CO(n10687));
    SB_DFFESR bit_ctr__i25 (.Q(bit_ctr[25]), .C(CLK_c), .E(n7657), .D(n255[25]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i24 (.Q(bit_ctr[24]), .C(CLK_c), .E(n7657), .D(n255[24]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i23 (.Q(bit_ctr[23]), .C(CLK_c), .E(n7657), .D(n255[23]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_632_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(timer[8]), 
            .I3(n10714), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1762_3_lut (.I0(n2508), .I1(n2555[12]), .I2(n2522), 
            .I3(GND_net), .O(n2607));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1762_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_632_add_4_10 (.CI(n10714), .I0(GND_net), .I1(timer[8]), 
            .CO(n10715));
    SB_LUT4 mod_5_i1748_3_lut (.I0(n2494), .I1(n2555[26]), .I2(n2522), 
            .I3(GND_net), .O(n2593));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1473_6_lut (.I0(GND_net), .I1(n2106), .I2(VCC_net), 
            .I3(n10867), .O(n2159[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_8 (.CI(n10799), .I0(n1604), .I1(n1631), .CO(n10800));
    SB_LUT4 mod_5_i1749_3_lut (.I0(n2495), .I1(n2555[25]), .I2(n2522), 
            .I3(GND_net), .O(n2594));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_25_lut (.I0(GND_net), .I1(bit_ctr[23]), .I2(GND_net), 
            .I3(n10635), .O(n255[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_9 (.CI(n10770), .I0(n1303), .I1(VCC_net), .CO(n10771));
    SB_DFFESR bit_ctr__i22 (.Q(bit_ctr[22]), .C(CLK_c), .E(n7657), .D(n255[22]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i21 (.Q(bit_ctr[21]), .C(CLK_c), .E(n7657), .D(n255[21]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i7_4_lut (.I0(n1304), .I1(n1307), .I2(n1305), .I3(n10_adj_668), 
            .O(n16));   // verilog/neopixel.v(22[26:36])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(n2996), .I1(n2985), .I2(n3000), .I3(n2994), 
            .O(n40_adj_670));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR bit_ctr__i20 (.Q(bit_ctr[20]), .C(CLK_c), .E(n7657), .D(n255[20]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_632_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(timer[7]), 
            .I3(n10713), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_25 (.CI(n10635), .I0(bit_ctr[23]), .I1(GND_net), .CO(n10636));
    SB_LUT4 mod_5_add_669_7_lut (.I0(n13594), .I1(n905), .I2(VCC_net), 
            .I3(n10742), .O(n4)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_669_6_lut (.I0(GND_net), .I1(n906), .I2(VCC_net), 
            .I3(n10741), .O(n971[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_3_lut (.I0(n3007), .I1(bit_ctr[5]), .I2(n3009), .I3(GND_net), 
            .O(n39_adj_671));
    defparam i13_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 mod_5_i1888_3_lut (.I0(n2698), .I1(n2753[20]), .I2(n2720), 
            .I3(GND_net), .O(n2797));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1888_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9121_3_lut_4_lut (.I0(n2423), .I1(n2324), .I2(n2307), .I3(n13321), 
            .O(n2505));
    defparam i9121_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i8_4_lut (.I0(n1308), .I1(n16), .I2(n12_adj_669), .I3(n1303), 
            .O(n1334));   // verilog/neopixel.v(22[26:36])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i810_3_lut (.I0(n1108), .I1(n1169[26]), .I2(n1136), 
            .I3(GND_net), .O(n1207));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i810_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i19 (.Q(bit_ctr[19]), .C(CLK_c), .E(n7657), .D(n255[19]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i811_3_lut (.I0(n1109), .I1(n1169[25]), .I2(n1136), 
            .I3(GND_net), .O(n1208));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i811_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i807_3_lut (.I0(n1105), .I1(n1169[29]), .I2(n1136), 
            .I3(GND_net), .O(n1204));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i807_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2076_15 (.CI(n11065), .I0(n2997), .I1(n3017), .CO(n11066));
    SB_LUT4 mod_5_add_2009_2_lut (.I0(GND_net), .I1(bit_ctr[6]), .I2(GND_net), 
            .I3(VCC_net), .O(n2951[6])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i806_3_lut (.I0(n1104), .I1(n1169[30]), .I2(n1136), 
            .I3(GND_net), .O(n1203));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i806_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2009_2 (.CI(VCC_net), .I0(bit_ctr[6]), .I1(GND_net), 
            .CO(n11028));
    SB_LUT4 mod_5_add_1808_22_lut (.I0(GND_net), .I1(n2590), .I2(VCC_net), 
            .I3(n10978), .O(n2654[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_13 (.CI(n10928), .I0(n2399), .I1(VCC_net), 
            .CO(n10929));
    SB_CARRY timer_632_add_4_9 (.CI(n10713), .I0(GND_net), .I1(timer[7]), 
            .CO(n10714));
    SB_CARRY mod_5_add_669_6 (.CI(n10741), .I0(n906), .I1(VCC_net), .CO(n10742));
    SB_LUT4 sub_14_add_2_19_lut (.I0(n13181), .I1(timer[17]), .I2(n1[17]), 
            .I3(n10685), .O(n13183)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1473_6 (.CI(n10867), .I0(n2106), .I1(VCC_net), 
            .CO(n10868));
    SB_LUT4 mod_5_add_937_8_lut (.I0(GND_net), .I1(n1304), .I2(VCC_net), 
            .I3(n10769), .O(n1367[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_24_lut (.I0(GND_net), .I1(bit_ctr[22]), .I2(GND_net), 
            .I3(n10634), .O(n255[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_22 (.CI(n10978), .I0(n2590), .I1(VCC_net), 
            .CO(n10979));
    SB_LUT4 add_21_5_lut (.I0(GND_net), .I1(bit_ctr[3]), .I2(GND_net), 
            .I3(n10615), .O(n255[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_12_lut (.I0(GND_net), .I1(n2400), .I2(VCC_net), 
            .I3(n10927), .O(n2456[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_7_lut (.I0(n1605), .I1(n1605), .I2(n1631), 
            .I3(n10798), .O(n1704)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_7_lut.LUT_INIT = 16'hCA3A;
    SB_DFFESR bit_ctr__i18 (.Q(bit_ctr[18]), .C(CLK_c), .E(n7657), .D(n255[18]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1473_5_lut (.I0(GND_net), .I1(n2107), .I2(VCC_net), 
            .I3(n10866), .O(n2159[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i739_3_lut (.I0(n1005), .I1(n1070[30]), .I2(n1037), 
            .I3(GND_net), .O(n1104));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i739_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i17 (.Q(bit_ctr[17]), .C(CLK_c), .E(n7657), .D(n255[17]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_2076_14_lut (.I0(n2998), .I1(n2998), .I2(n3017), 
            .I3(n11064), .O(n3097)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1942_26_lut (.I0(n2819), .I1(n2786), .I2(VCC_net), 
            .I3(n11027), .O(n2885)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_26_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i9197_2_lut (.I0(n11174), .I1(n971[29]), .I2(GND_net), .I3(GND_net), 
            .O(n1006));   // verilog/neopixel.v(22[26:36])
    defparam i9197_2_lut.LUT_INIT = 16'h4444;
    SB_DFFESR bit_ctr__i16 (.Q(bit_ctr[16]), .C(CLK_c), .E(n7657), .D(n255[16]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i15 (.Q(bit_ctr[15]), .C(CLK_c), .E(n7657), .D(n255[15]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1942_25_lut (.I0(GND_net), .I1(n2787), .I2(VCC_net), 
            .I3(n11026), .O(n2852[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i24_4_lut (.I0(n41), .I1(n43), .I2(n42), .I3(n44), .O(n50));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i743_3_lut (.I0(n1009), .I1(n1070[26]), .I2(n1037), 
            .I3(GND_net), .O(n1108));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i740_3_lut (.I0(n1006), .I1(n1070[29]), .I2(n1037), 
            .I3(GND_net), .O(n1105));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i744_3_lut (.I0(bit_ctr[25]), .I1(n1070[25]), .I2(n1037), 
            .I3(GND_net), .O(n1109));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5944_2_lut (.I0(bit_ctr[24]), .I1(n1109), .I2(GND_net), .I3(GND_net), 
            .O(n9737));
    defparam i5944_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i5_4_lut (.I0(n1105), .I1(n1106), .I2(n9737), .I3(n1108), 
            .O(n12_adj_673));   // verilog/neopixel.v(22[26:36])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(n1107), .I1(n12_adj_673), .I2(n1104), .I3(n1103), 
            .O(n1136));   // verilog/neopixel.v(22[26:36])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i812_3_lut (.I0(bit_ctr[24]), .I1(n1169[24]), .I2(n1136), 
            .I3(GND_net), .O(n1209));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i812_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i808_3_lut (.I0(n1106), .I1(n1169[28]), .I2(n1136), 
            .I3(GND_net), .O(n1205));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i808_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9137_3_lut (.I0(n2706), .I1(n2753[12]), .I2(n2720), .I3(GND_net), 
            .O(n2805));   // verilog/neopixel.v(22[26:36])
    defparam i9137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_3_lut_adj_18 (.I0(bit_ctr[23]), .I1(n1205), .I2(n1209), 
            .I3(GND_net), .O(n11_adj_674));   // verilog/neopixel.v(22[26:36])
    defparam i3_3_lut_adj_18.LUT_INIT = 16'hecec;
    SB_LUT4 i5_4_lut_adj_19 (.I0(n1203), .I1(n1204), .I2(n1202), .I3(n1208), 
            .O(n13_adj_675));   // verilog/neopixel.v(22[26:36])
    defparam i5_4_lut_adj_19.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_20 (.I0(n13_adj_675), .I1(n11_adj_674), .I2(n1207), 
            .I3(n1206), .O(n1235));   // verilog/neopixel.v(22[26:36])
    defparam i7_4_lut_adj_20.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i809_rep_49_3_lut (.I0(n1107), .I1(n1169[27]), .I2(n1136), 
            .I3(GND_net), .O(n1206));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i809_rep_49_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9149_3_lut (.I0(n1305), .I1(n1367[27]), .I2(n1334), .I3(GND_net), 
            .O(n1404));   // verilog/neopixel.v(22[26:36])
    defparam i9149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1352_3_lut (.I0(n1906), .I1(n1961[20]), .I2(n1928), 
            .I3(GND_net), .O(n2005));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1352_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1419_3_lut (.I0(n2005), .I1(n2060[20]), .I2(n2027), 
            .I3(GND_net), .O(n2104));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1486_3_lut (.I0(n2104), .I1(n2159[20]), .I2(n2126), 
            .I3(GND_net), .O(n2203));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1486_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i742_3_lut (.I0(n1008), .I1(n1070[27]), .I2(n1037), 
            .I3(GND_net), .O(n1107));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_3_lut_adj_21 (.I0(bit_ctr[19]), .I1(n1606), .I2(n1609), 
            .I3(GND_net), .O(n15_adj_676));
    defparam i3_3_lut_adj_21.LUT_INIT = 16'hecec;
    SB_LUT4 i7_4_lut_adj_22 (.I0(n1607), .I1(n1600), .I2(n1601), .I3(n1599), 
            .O(n19));
    defparam i7_4_lut_adj_22.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut (.I0(bit_ctr[8]), .I1(n2698), .I2(n2709), .I3(GND_net), 
            .O(n30));
    defparam i7_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i6_2_lut (.I0(n1605), .I1(n1602), .I2(GND_net), .I3(GND_net), 
            .O(n18));
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut (.I0(n19), .I1(n15_adj_676), .I2(n1598), .I3(n1604), 
            .O(n22));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY sub_14_add_2_19 (.CI(n10685), .I0(timer[17]), .I1(n1[17]), 
            .CO(n10686));
    SB_LUT4 i11_4_lut (.I0(n1603), .I1(n22), .I2(n18), .I3(n1608), .O(n1631));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1747_3_lut (.I0(n2493), .I1(n2555[27]), .I2(n2522), 
            .I3(GND_net), .O(n2592));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_4_lut (.I0(n2986), .I1(n2991), .I2(n2988), .I3(n2997), 
            .O(n45));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 timer_632_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(timer[6]), 
            .I3(n10712), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14_4_lut_adj_23 (.I0(n2693), .I1(n2695), .I2(n2694), .I3(n2696), 
            .O(n37_adj_677));
    defparam i14_4_lut_adj_23.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_inv_0_i28_1_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_937_8 (.CI(n10769), .I0(n1304), .I1(VCC_net), .CO(n10770));
    SB_LUT4 mod_5_i675_3_lut (.I0(n7497), .I1(n971[27]), .I2(n11174), 
            .I3(GND_net), .O(n1008));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i675_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i13_4_lut_adj_24 (.I0(n2689), .I1(n2691), .I2(n2690), .I3(n2692), 
            .O(n36));
    defparam i13_4_lut_adj_24.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1351_3_lut (.I0(n1905), .I1(n1961[21]), .I2(n1928), 
            .I3(GND_net), .O(n2004));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1351_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1418_3_lut (.I0(n2004), .I1(n2060[21]), .I2(n2027), 
            .I3(GND_net), .O(n2103));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1485_3_lut (.I0(n2103), .I1(n2159[21]), .I2(n2126), 
            .I3(GND_net), .O(n2202));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1485_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1552_3_lut (.I0(n2202), .I1(n2258[21]), .I2(n2225), 
            .I3(GND_net), .O(n2301));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1552_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1549_3_lut (.I0(n2199), .I1(n2258[24]), .I2(n2225), 
            .I3(GND_net), .O(n2298));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1549_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1619_3_lut (.I0(n2301), .I1(n2357[21]), .I2(n2324), 
            .I3(GND_net), .O(n2400));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1619_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1616_3_lut (.I0(n2298), .I1(n2357[24]), .I2(n2324), 
            .I3(GND_net), .O(n2397));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1354_3_lut (.I0(n1908), .I1(n1961[18]), .I2(n1928), 
            .I3(GND_net), .O(n2007));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1354_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1421_3_lut (.I0(n2007), .I1(n2060[18]), .I2(n2027), 
            .I3(GND_net), .O(n2106));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1421_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1488_3_lut (.I0(n2106), .I1(n2159[18]), .I2(n2126), 
            .I3(GND_net), .O(n2205));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1488_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1349_3_lut (.I0(n1903), .I1(n1961[23]), .I2(n1928), 
            .I3(GND_net), .O(n2002));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1349_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1416_3_lut (.I0(n2002), .I1(n2060[23]), .I2(n2027), 
            .I3(GND_net), .O(n2101));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_669_5_lut (.I0(GND_net), .I1(n11868), .I2(VCC_net), 
            .I3(n10740), .O(n971[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9153_3_lut (.I0(n11866), .I1(n5703), .I2(n838), .I3(GND_net), 
            .O(n11868));   // verilog/neopixel.v(22[26:36])
    defparam i9153_3_lut.LUT_INIT = 16'ha9a9;
    SB_LUT4 i1_2_lut_adj_25 (.I0(n807), .I1(n11866), .I2(GND_net), .I3(GND_net), 
            .O(n12837));   // verilog/neopixel.v(22[26:36])
    defparam i1_2_lut_adj_25.LUT_INIT = 16'heeee;
    SB_LUT4 mod_5_i604_4_lut (.I0(n12837), .I1(n838), .I2(n5703), .I3(GND_net), 
            .O(n905));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i604_4_lut.LUT_INIT = 16'h0101;
    SB_LUT4 mod_5_i605_4_lut (.I0(n807), .I1(n11866), .I2(n838), .I3(n5703), 
            .O(n906));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i605_4_lut.LUT_INIT = 16'haaa9;
    SB_LUT4 i8902_4_lut (.I0(n9803), .I1(bit_ctr[29]), .I2(bit_ctr[28]), 
            .I3(n740), .O(n11866));   // verilog/neopixel.v(22[26:36])
    defparam i8902_4_lut.LUT_INIT = 16'h9666;
    SB_LUT4 i25_4_lut (.I0(n45), .I1(n50), .I2(n39_adj_671), .I3(n40_adj_670), 
            .O(n3017));
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1483_3_lut (.I0(n2101), .I1(n2159[23]), .I2(n2126), 
            .I3(GND_net), .O(n2200));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1483_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1550_3_lut (.I0(n2200), .I1(n2258[23]), .I2(n2225), 
            .I3(GND_net), .O(n2299));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1550_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1560_3_lut (.I0(bit_ctr[13]), .I1(n2258[13]), .I2(n2225), 
            .I3(GND_net), .O(n2309));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1560_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1555_3_lut (.I0(n2205), .I1(n2258[18]), .I2(n2225), 
            .I3(GND_net), .O(n2304));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1555_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1622_3_lut (.I0(n2304), .I1(n2357[18]), .I2(n2324), 
            .I3(GND_net), .O(n2403));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1617_3_lut (.I0(n2299), .I1(n2357[23]), .I2(n2324), 
            .I3(GND_net), .O(n2398));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1617_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1627_3_lut (.I0(n2309), .I1(n2357[13]), .I2(n2324), 
            .I3(GND_net), .O(n2408));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1627_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1478_3_lut (.I0(n2096), .I1(n2159[28]), .I2(n2126), 
            .I3(GND_net), .O(n2195));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1477_3_lut (.I0(n2095), .I1(n2159[29]), .I2(n2126), 
            .I3(GND_net), .O(n2194));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1477_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1544_3_lut (.I0(n2194), .I1(n2258[29]), .I2(n2225), 
            .I3(GND_net), .O(n2293));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1544_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1342_3_lut (.I0(n1896), .I1(n1961[30]), .I2(n1928), 
            .I3(GND_net), .O(n1995));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1342_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1409_3_lut (.I0(n1995), .I1(n2060[30]), .I2(n2027), 
            .I3(GND_net), .O(n2094));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1476_3_lut (.I0(n2094), .I1(n2159[30]), .I2(n2126), 
            .I3(GND_net), .O(n2193));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1476_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_632_add_4_8 (.CI(n10712), .I0(GND_net), .I1(timer[6]), 
            .CO(n10713));
    SB_LUT4 mod_5_i1690_3_lut (.I0(n2404), .I1(n2456[17]), .I2(n2423), 
            .I3(GND_net), .O(n2503));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1690_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1543_3_lut (.I0(n2193), .I1(n2258[30]), .I2(n2225), 
            .I3(GND_net), .O(n2292));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1543_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1545_3_lut (.I0(n2195), .I1(n2258[28]), .I2(n2225), 
            .I3(GND_net), .O(n2294));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1545_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1612_3_lut (.I0(n2294), .I1(n2357[28]), .I2(n2324), 
            .I3(GND_net), .O(n2393));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1611_3_lut (.I0(n2293), .I1(n2357[29]), .I2(n2324), 
            .I3(GND_net), .O(n2392));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1611_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1610_3_lut (.I0(n2292), .I1(n2357[30]), .I2(n2324), 
            .I3(GND_net), .O(n2391));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1610_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1479_3_lut (.I0(n2097), .I1(n2159[27]), .I2(n2126), 
            .I3(GND_net), .O(n2196));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1479_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1350_3_lut (.I0(n1904), .I1(n1961[22]), .I2(n1928), 
            .I3(GND_net), .O(n2003));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1350_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1417_3_lut (.I0(n2003), .I1(n2060[22]), .I2(n2027), 
            .I3(GND_net), .O(n2102));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1484_3_lut (.I0(n2102), .I1(n2159[22]), .I2(n2126), 
            .I3(GND_net), .O(n2201));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1484_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1551_3_lut (.I0(n2201), .I1(n2258[22]), .I2(n2225), 
            .I3(GND_net), .O(n2300));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1551_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1546_3_lut (.I0(n2196), .I1(n2258[27]), .I2(n2225), 
            .I3(GND_net), .O(n2295));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1615_3_lut (.I0(n2297), .I1(n2357[25]), .I2(n2324), 
            .I3(GND_net), .O(n2396));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1615_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1614_3_lut (.I0(n2296), .I1(n2357[26]), .I2(n2324), 
            .I3(GND_net), .O(n2395));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1614_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1618_3_lut (.I0(n2300), .I1(n2357[22]), .I2(n2324), 
            .I3(GND_net), .O(n2399));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1618_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1613_3_lut (.I0(n2295), .I1(n2357[27]), .I2(n2324), 
            .I3(GND_net), .O(n2394));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1613_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut (.I0(n1904), .I1(bit_ctr[16]), .I2(n1909), .I3(GND_net), 
            .O(n20));
    defparam i5_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 mod_5_i2019_3_lut (.I0(n2893), .I1(n2951[23]), .I2(n2918), 
            .I3(GND_net), .O(n2992));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_18_lut (.I0(n13179), .I1(timer[16]), .I2(n1[16]), 
            .I3(n10684), .O(n13181)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_i1415_3_lut (.I0(n2001), .I1(n2060[24]), .I2(n2027), 
            .I3(GND_net), .O(n2100));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_26 (.I0(n1905), .I1(n1903), .I2(n1907), .I3(n1908), 
            .O(n26));
    defparam i11_4_lut_adj_26.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_27 (.I0(n1896), .I1(n1895), .I2(GND_net), .I3(GND_net), 
            .O(n16_adj_678));
    defparam i1_2_lut_adj_27.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut (.I0(n1897), .I1(n1899), .I2(n1898), .I3(n1900), 
            .O(n24));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_28 (.I0(n1901), .I1(n26), .I2(n20), .I3(n1902), 
            .O(n28_adj_679));
    defparam i13_4_lut_adj_28.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_29 (.I0(n1906), .I1(n28_adj_679), .I2(n24), 
            .I3(n16_adj_678), .O(n1928));
    defparam i14_4_lut_adj_29.LUT_INIT = 16'hfffe;
    SB_LUT4 i5916_2_lut (.I0(bit_ctr[15]), .I1(n2009), .I2(GND_net), .I3(GND_net), 
            .O(n9709));
    defparam i5916_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_30 (.I0(n2006), .I1(n2005), .I2(n2001), .I3(n2004), 
            .O(n28_adj_680));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_30.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_31 (.I0(n1998), .I1(n2002), .I2(n1999), .I3(n9709), 
            .O(n26_adj_681));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_31.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_32 (.I0(n2003), .I1(n2000), .I2(n2008), .I3(n2007), 
            .O(n27));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_32.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_33 (.I0(n1995), .I1(n1996), .I2(n1994), .I3(n1997), 
            .O(n25));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_33.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_34 (.I0(n25), .I1(n27), .I2(n26_adj_681), .I3(n28_adj_680), 
            .O(n2027));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1343_3_lut (.I0(n1897), .I1(n1961[29]), .I2(n1928), 
            .I3(GND_net), .O(n1996));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1343_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1413_3_lut (.I0(n1999), .I1(n2060[26]), .I2(n2027), 
            .I3(GND_net), .O(n2098));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1411_3_lut (.I0(n1997), .I1(n2060[28]), .I2(n2027), 
            .I3(GND_net), .O(n2096));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1412_3_lut (.I0(n1998), .I1(n2060[27]), .I2(n2027), 
            .I3(GND_net), .O(n2097));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1410_3_lut (.I0(n1996), .I1(n2060[29]), .I2(n2027), 
            .I3(GND_net), .O(n2095));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_24 (.CI(n10634), .I0(bit_ctr[22]), .I1(GND_net), .CO(n10635));
    SB_LUT4 i1_2_lut_adj_35 (.I0(n2094), .I1(n2093), .I2(GND_net), .I3(GND_net), 
            .O(n18_adj_682));
    defparam i1_2_lut_adj_35.LUT_INIT = 16'heeee;
    SB_LUT4 i19_4_lut_adj_36 (.I0(n37_adj_677), .I1(n2697), .I2(n30), 
            .I3(n2701), .O(n42_adj_683));
    defparam i19_4_lut_adj_36.LUT_INIT = 16'hfffe;
    SB_CARRY sub_14_add_2_18 (.CI(n10684), .I0(timer[16]), .I1(n1[16]), 
            .CO(n10685));
    SB_LUT4 i7_2_lut (.I0(n2105), .I1(n2103), .I2(GND_net), .I3(GND_net), 
            .O(n24_adj_684));
    defparam i7_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13_4_lut_adj_37 (.I0(n2102), .I1(n2106), .I2(n2108), .I3(n18_adj_682), 
            .O(n30_adj_685));
    defparam i13_4_lut_adj_37.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_38 (.I0(n2099), .I1(n2101), .I2(n2100), .I3(n2104), 
            .O(n28_adj_686));
    defparam i11_4_lut_adj_38.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_3_lut (.I0(bit_ctr[31]), .I1(bit_ctr[30]), .I2(bit_ctr[29]), 
            .I3(GND_net), .O(n708));   // verilog/neopixel.v(22[26:36])
    defparam i12_3_lut.LUT_INIT = 16'h2424;
    SB_LUT4 i12_4_lut_adj_39 (.I0(bit_ctr[14]), .I1(n24_adj_684), .I2(n2107), 
            .I3(n2109), .O(n29));
    defparam i12_4_lut_adj_39.LUT_INIT = 16'hfefc;
    SB_CARRY mod_5_add_1138_7 (.CI(n10798), .I0(n1605), .I1(n1631), .CO(n10799));
    SB_LUT4 i17_4_lut_adj_40 (.I0(n2700), .I1(n2699), .I2(n2706), .I3(n2707), 
            .O(n40_adj_687));
    defparam i17_4_lut_adj_40.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_41 (.I0(n2702), .I1(n36), .I2(n2688), .I3(n2687), 
            .O(n41_adj_688));
    defparam i18_4_lut_adj_41.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_42 (.I0(n2705), .I1(n2703), .I2(n2708), .I3(n2704), 
            .O(n39_adj_689));
    defparam i16_4_lut_adj_42.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut (.I0(n39_adj_689), .I1(n41_adj_688), .I2(n40_adj_687), 
            .I3(n42_adj_683), .O(n2720));
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(n708), .I1(n11912), .I2(GND_net), .I3(GND_net), 
            .O(n740));
    defparam i1_3_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mod_5_i1812_3_lut (.I0(n2590), .I1(n2654[29]), .I2(n2621), 
            .I3(GND_net), .O(n2689));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1812_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i29_1_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1880_3_lut (.I0(n2690), .I1(n2753[28]), .I2(n2720), 
            .I3(GND_net), .O(n2789));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1879_3_lut (.I0(n2689), .I1(n2753[29]), .I2(n2720), 
            .I3(GND_net), .O(n2788));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n58), .I1(n807), .I2(n11866), .I3(GND_net), 
            .O(n838));
    defparam i1_4_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_43 (.I0(bit_ctr[27]), .I1(n838), .I2(GND_net), 
            .I3(GND_net), .O(n7497));
    defparam i1_2_lut_adj_43.LUT_INIT = 16'h9999;
    SB_LUT4 i8903_4_lut (.I0(n740), .I1(bit_ctr[28]), .I2(bit_ctr[27]), 
            .I3(n838), .O(n7899));   // verilog/neopixel.v(22[26:36])
    defparam i8903_4_lut.LUT_INIT = 16'h6696;
    SB_LUT4 i1_4_lut_adj_44 (.I0(n906), .I1(n905), .I2(n11868), .I3(n12839), 
            .O(n11174));   // verilog/neopixel.v(22[26:36])
    defparam i1_4_lut_adj_44.LUT_INIT = 16'h0100;
    SB_LUT4 mod_5_i1752_3_lut (.I0(n2498), .I1(n2555[22]), .I2(n2522), 
            .I3(GND_net), .O(n2597));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1754_rep_17_3_lut (.I0(n2500), .I1(n2555[20]), .I2(n2522), 
            .I3(GND_net), .O(n2599));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1754_rep_17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i676_3_lut (.I0(bit_ctr[26]), .I1(n971[26]), .I2(n11174), 
            .I3(GND_net), .O(n1009));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i676_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mod_5_i672_3_lut (.I0(n906), .I1(n971[30]), .I2(n11174), .I3(GND_net), 
            .O(n1005));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i672_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i7605_3_lut (.I0(n11174), .I1(n971[28]), .I2(n971[29]), .I3(GND_net), 
            .O(n11941));
    defparam i7605_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 mod_5_i1886_3_lut (.I0(n2696), .I1(n2753[22]), .I2(n2720), 
            .I3(GND_net), .O(n2795));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1886_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_ctr[25]), .I1(n1005), .I2(n1009), .I3(GND_net), 
            .O(n7_adj_690));
    defparam i2_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i4_4_lut (.I0(n7_adj_690), .I1(n1008), .I2(n11941), .I3(n4), 
            .O(n1037));
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i9195_2_lut (.I0(n11174), .I1(n971[28]), .I2(GND_net), .I3(GND_net), 
            .O(n1007));   // verilog/neopixel.v(22[26:36])
    defparam i9195_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i6008_2_lut_4_lut_3_lut (.I0(bit_ctr[30]), .I1(bit_ctr[31]), 
            .I2(bit_ctr[29]), .I3(GND_net), .O(n9803));   // verilog/neopixel.v(22[26:36])
    defparam i6008_2_lut_4_lut_3_lut.LUT_INIT = 16'h6464;
    SB_LUT4 mod_5_i741_3_lut (.I0(n1007), .I1(n1070[28]), .I2(n1037), 
            .I3(GND_net), .O(n1106));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1825_3_lut (.I0(n2603), .I1(n2654[16]), .I2(n2621), 
            .I3(GND_net), .O(n2702));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut_adj_45 (.I0(n2095), .I1(n2097), .I2(n2096), .I3(n2098), 
            .O(n27_adj_691));
    defparam i10_4_lut_adj_45.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_46 (.I0(n27_adj_691), .I1(n29), .I2(n28_adj_686), 
            .I3(n30_adj_685), .O(n2126));
    defparam i16_4_lut_adj_46.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_47 (.I0(n2193), .I1(n2194), .I2(n2192), .I3(n2195), 
            .O(n28_adj_692));   // verilog/neopixel.v(22[26:36])
    defparam i10_4_lut_adj_47.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_48 (.I0(n2199), .I1(n2205), .I2(n2207), .I3(n2206), 
            .O(n31));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut_adj_48.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_3_lut (.I0(bit_ctr[13]), .I1(n2202), .I2(n2209), .I3(GND_net), 
            .O(n22_adj_693));   // verilog/neopixel.v(22[26:36])
    defparam i4_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i12_4_lut_adj_49 (.I0(n2198), .I1(n2201), .I2(n2204), .I3(n2208), 
            .O(n30_adj_694));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_49.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_50 (.I0(n31), .I1(n2200), .I2(n28_adj_692), 
            .I3(n2203), .O(n34_adj_695));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut_adj_50.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_2_lut (.I0(n2196), .I1(n2197), .I2(GND_net), .I3(GND_net), 
            .O(n21));   // verilog/neopixel.v(22[26:36])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i17_4_lut_adj_51 (.I0(n21), .I1(n34_adj_695), .I2(n30_adj_694), 
            .I3(n22_adj_693), .O(n2225));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut_adj_51.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1492_3_lut (.I0(bit_ctr[14]), .I1(n2159[14]), .I2(n2126), 
            .I3(GND_net), .O(n2209));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1492_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_52 (.I0(n2293), .I1(n2295), .I2(n2294), .I3(n2296), 
            .O(n30_adj_696));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_52.LUT_INIT = 16'hfffe;
    SB_LUT4 i5904_2_lut (.I0(bit_ctr[12]), .I1(n2309), .I2(GND_net), .I3(GND_net), 
            .O(n9697));
    defparam i5904_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i15_4_lut_adj_53 (.I0(n2304), .I1(n30_adj_696), .I2(n2292), 
            .I3(n2291), .O(n34_adj_697));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_53.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_54 (.I0(n2307), .I1(n2305), .I2(n9697), .I3(n2308), 
            .O(n32_adj_698));   // verilog/neopixel.v(22[26:36])
    defparam i13_4_lut_adj_54.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_55 (.I0(n2302), .I1(n2306), .I2(n2301), .I3(n2303), 
            .O(n33_adj_699));   // verilog/neopixel.v(22[26:36])
    defparam i14_4_lut_adj_55.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_56 (.I0(n2297), .I1(n2299), .I2(n2298), .I3(n2300), 
            .O(n31_adj_700));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_57 (.I0(n31_adj_700), .I1(n33_adj_699), .I2(n32_adj_698), 
            .I3(n34_adj_697), .O(n2324));   // verilog/neopixel.v(22[26:36])
    defparam i18_4_lut_adj_57.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1559_3_lut (.I0(n2209), .I1(n2258[14]), .I2(n2225), 
            .I3(GND_net), .O(n2308));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1559_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1628_3_lut (.I0(bit_ctr[12]), .I1(n2357[12]), .I2(n2324), 
            .I3(GND_net), .O(n2409));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1626_3_lut (.I0(n2308), .I1(n2357[14]), .I2(n2324), 
            .I3(GND_net), .O(n2407));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1621_3_lut (.I0(n2303), .I1(n2357[19]), .I2(n2324), 
            .I3(GND_net), .O(n2402));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1623_3_lut (.I0(n2305), .I1(n2357[17]), .I2(n2324), 
            .I3(GND_net), .O(n2404));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1620_3_lut (.I0(n2302), .I1(n2357[20]), .I2(n2324), 
            .I3(GND_net), .O(n2401));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1620_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1625_3_lut (.I0(n2307), .I1(n2357[15]), .I2(n2324), 
            .I3(GND_net), .O(n2406));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_58 (.I0(n2406), .I1(n2401), .I2(n2404), .I3(n2402), 
            .O(n34_adj_701));   // verilog/neopixel.v(22[26:36])
    defparam i14_4_lut_adj_58.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_3_lut_adj_59 (.I0(n2407), .I1(bit_ctr[11]), .I2(n2409), 
            .I3(GND_net), .O(n25_adj_702));   // verilog/neopixel.v(22[26:36])
    defparam i5_3_lut_adj_59.LUT_INIT = 16'heaea;
    SB_LUT4 i12_4_lut_adj_60 (.I0(n2394), .I1(n2399), .I2(n2395), .I3(n2396), 
            .O(n32_adj_703));   // verilog/neopixel.v(22[26:36])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_3_lut (.I0(n2795), .I1(bit_ctr[7]), .I2(n2809), .I3(GND_net), 
            .O(n30_adj_704));   // verilog/neopixel.v(22[26:36])
    defparam i6_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 mod_5_i2036_3_lut (.I0(bit_ctr[6]), .I1(n2951[6]), .I2(n2918), 
            .I3(GND_net), .O(n3009));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2036_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1473_5 (.CI(n10866), .I0(n2107), .I1(VCC_net), 
            .CO(n10867));
    SB_LUT4 i16_4_lut_adj_61 (.I0(n2805), .I1(n2797), .I2(n2801), .I3(n2807), 
            .O(n40_adj_705));   // verilog/neopixel.v(22[26:36])
    defparam i16_4_lut_adj_61.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1808_21_lut (.I0(GND_net), .I1(n2591), .I2(VCC_net), 
            .I3(n10977), .O(n2654[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1753_3_lut (.I0(n2499), .I1(n2555[21]), .I2(n2522), 
            .I3(GND_net), .O(n2598));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1674_12 (.CI(n10927), .I0(n2400), .I1(VCC_net), 
            .CO(n10928));
    SB_LUT4 mod_5_add_937_7_lut (.I0(GND_net), .I1(n1305), .I2(VCC_net), 
            .I3(n10768), .O(n1367[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i14 (.Q(bit_ctr[14]), .C(CLK_c), .E(n7657), .D(n255[14]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_632_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(timer[5]), 
            .I3(n10711), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1473_4_lut (.I0(GND_net), .I1(n2108), .I2(VCC_net), 
            .I3(n10865), .O(n2159[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_4 (.CI(n10865), .I0(n2108), .I1(VCC_net), 
            .CO(n10866));
    SB_LUT4 i21_4_lut (.I0(n37), .I1(n39), .I2(n38), .I3(n40), .O(n2621));   // verilog/neopixel.v(22[26:36])
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1757_rep_22_3_lut (.I0(n2503), .I1(n2555[17]), .I2(n2522), 
            .I3(GND_net), .O(n2602));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1757_rep_22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1473_3_lut (.I0(GND_net), .I1(n2109), .I2(GND_net), 
            .I3(n10864), .O(n2159[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1473_3 (.CI(n10864), .I0(n2109), .I1(GND_net), 
            .CO(n10865));
    SB_LUT4 mod_5_i1761_3_lut (.I0(n2507), .I1(n2555[13]), .I2(n2522), 
            .I3(GND_net), .O(n2606));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1761_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_669_5 (.CI(n10740), .I0(n11868), .I1(VCC_net), 
            .CO(n10741));
    SB_LUT4 mod_5_i1686_3_lut (.I0(n2400), .I1(n2456[21]), .I2(n2423), 
            .I3(GND_net), .O(n2499));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1686_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR bit_ctr__i13 (.Q(bit_ctr[13]), .C(CLK_c), .E(n7657), .D(n255[13]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1674_11_lut (.I0(GND_net), .I1(n2401), .I2(VCC_net), 
            .I3(n10926), .O(n2456[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_11_lut.LUT_INIT = 16'hC33C;
    SB_DFFE state_i1 (.Q(\state[1] ), .C(CLK_c), .E(VCC_net), .D(n8116));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i2034_3_lut (.I0(n2908), .I1(n2951[8]), .I2(n2918), 
            .I3(GND_net), .O(n3007));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2024_3_lut (.I0(n2898), .I1(n2951[18]), .I2(n2918), 
            .I3(GND_net), .O(n2997));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2024_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1473_2_lut (.I0(GND_net), .I1(bit_ctr[14]), .I2(GND_net), 
            .I3(VCC_net), .O(n2159[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1473_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i1  (.Q(\neo_pixel_transmitter.t0 [1]), 
           .C(CLK_c), .D(n8092));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i2  (.Q(\neo_pixel_transmitter.t0 [2]), 
           .C(CLK_c), .D(n8091));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i3  (.Q(\neo_pixel_transmitter.t0 [3]), 
           .C(CLK_c), .D(n8090));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i4  (.Q(\neo_pixel_transmitter.t0 [4]), 
           .C(CLK_c), .D(n8089));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i5  (.Q(\neo_pixel_transmitter.t0 [5]), 
           .C(CLK_c), .D(n8088));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i6  (.Q(\neo_pixel_transmitter.t0 [6]), 
           .C(CLK_c), .D(n8087));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i7  (.Q(\neo_pixel_transmitter.t0 [7]), 
           .C(CLK_c), .D(n8086));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i2_2_lut (.I0(n2788), .I1(n2789), .I2(GND_net), .I3(GND_net), 
            .O(n26_adj_706));   // verilog/neopixel.v(22[26:36])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESR bit_ctr__i12 (.Q(bit_ctr[12]), .C(CLK_c), .E(n7657), .D(n255[12]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i11_4_lut_adj_62 (.I0(n2391), .I1(n2392), .I2(n2390), .I3(n2393), 
            .O(n31_adj_707));   // verilog/neopixel.v(22[26:36])
    defparam i11_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_63 (.I0(n2408), .I1(n2398), .I2(n2405), .I3(n2403), 
            .O(n35_adj_708));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_63.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_64 (.I0(n25_adj_702), .I1(n34_adj_701), .I2(n2397), 
            .I3(n2400), .O(n37_adj_709));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut_adj_64.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_65 (.I0(n37_adj_709), .I1(n35_adj_708), .I2(n31_adj_707), 
            .I3(n32_adj_703), .O(n2423));   // verilog/neopixel.v(22[26:36])
    defparam i19_4_lut_adj_65.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1687_3_lut (.I0(n2401), .I1(n2456[20]), .I2(n2423), 
            .I3(GND_net), .O(n2500));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1687_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2076_14 (.CI(n11064), .I0(n2998), .I1(n3017), .CO(n11065));
    SB_LUT4 mod_5_add_2076_13_lut (.I0(n2999), .I1(n2999), .I2(n3017), 
            .I3(n11063), .O(n3098)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2076_13 (.CI(n11063), .I0(n2999), .I1(n3017), .CO(n11064));
    SB_CARRY mod_5_add_1942_25 (.CI(n11026), .I0(n2787), .I1(VCC_net), 
            .CO(n11027));
    SB_LUT4 mod_5_add_1942_24_lut (.I0(GND_net), .I1(n2788), .I2(VCC_net), 
            .I3(n11025), .O(n2852[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_21 (.CI(n10977), .I0(n2591), .I1(VCC_net), 
            .CO(n10978));
    SB_CARRY mod_5_add_1674_11 (.CI(n10926), .I0(n2401), .I1(VCC_net), 
            .CO(n10927));
    SB_LUT4 mod_5_add_669_4_lut (.I0(GND_net), .I1(n7899), .I2(VCC_net), 
            .I3(n10739), .O(n971[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_20_lut (.I0(GND_net), .I1(n2592), .I2(VCC_net), 
            .I3(n10976), .O(n2654[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_10_lut (.I0(GND_net), .I1(n2402), .I2(VCC_net), 
            .I3(n10925), .O(n2456[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_12_lut (.I0(n3000), .I1(n3000), .I2(n3017), 
            .I3(n11062), .O(n3099)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1942_24 (.CI(n11025), .I0(n2788), .I1(VCC_net), 
            .CO(n11026));
    SB_LUT4 mod_5_add_1942_23_lut (.I0(GND_net), .I1(n2789), .I2(VCC_net), 
            .I3(n11024), .O(n2852[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_20 (.CI(n10976), .I0(n2592), .I1(VCC_net), 
            .CO(n10977));
    SB_CARRY mod_5_add_1674_10 (.CI(n10925), .I0(n2402), .I1(VCC_net), 
            .CO(n10926));
    SB_CARRY mod_5_add_937_7 (.CI(n10768), .I0(n1305), .I1(VCC_net), .CO(n10769));
    SB_CARRY mod_5_add_1473_2 (.CI(VCC_net), .I0(bit_ctr[14]), .I1(GND_net), 
            .CO(n10864));
    SB_LUT4 mod_5_add_1808_19_lut (.I0(GND_net), .I1(n2593), .I2(VCC_net), 
            .I3(n10975), .O(n2654[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_9_lut (.I0(GND_net), .I1(n2403), .I2(VCC_net), 
            .I3(n10924), .O(n2456[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr__i11 (.Q(bit_ctr[11]), .C(CLK_c), .E(n7657), .D(n255[11]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i10 (.Q(bit_ctr[10]), .C(CLK_c), .E(n7657), .D(n255[10]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i9 (.Q(bit_ctr[9]), .C(CLK_c), .E(n7657), .D(n255[9]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i8 (.Q(bit_ctr[8]), .C(CLK_c), .E(n7657), .D(n255[8]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i7 (.Q(bit_ctr[7]), .C(CLK_c), .E(n7657), .D(n255[7]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i6 (.Q(bit_ctr[6]), .C(CLK_c), .E(n7657), .D(n255[6]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i5 (.Q(bit_ctr[5]), .C(CLK_c), .E(n7657), .D(n255[5]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i4 (.Q(bit_ctr[4]), .C(CLK_c), .E(n7657), .D(n255[4]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i3 (.Q(bit_ctr[3]), .C(CLK_c), .E(n7657), .D(n255[3]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i2 (.Q(bit_ctr[2]), .C(CLK_c), .E(n7657), .D(n255[2]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr__i1 (.Q(bit_ctr[1]), .C(CLK_c), .E(n7657), .D(n255[1]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF timer_632__i1 (.Q(timer[1]), .C(CLK_c), .D(n133[1]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 mod_5_i2015_3_lut (.I0(n2889), .I1(n2951[27]), .I2(n2918), 
            .I3(GND_net), .O(n2988));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1821_3_lut (.I0(n2599), .I1(n2654[20]), .I2(n2621), 
            .I3(GND_net), .O(n2698));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1821_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i30_1_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i3_1_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i2018_3_lut (.I0(n2892), .I1(n2951[24]), .I2(n2918), 
            .I3(GND_net), .O(n2991));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i4_1_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i2013_3_lut (.I0(n2887), .I1(n2951[29]), .I2(n2918), 
            .I3(GND_net), .O(n2986));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i31_1_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i2021_3_lut (.I0(n2895), .I1(n2951[21]), .I2(n2918), 
            .I3(GND_net), .O(n2994));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2021_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i32_1_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i14_4_lut_adj_66 (.I0(n2790), .I1(n2792), .I2(n2791), .I3(n2793), 
            .O(n38_adj_713));   // verilog/neopixel.v(22[26:36])
    defparam i14_4_lut_adj_66.LUT_INIT = 16'hfffe;
    SB_CARRY timer_632_add_4_7 (.CI(n10711), .I0(GND_net), .I1(timer[5]), 
            .CO(n10712));
    SB_LUT4 mod_5_add_937_6_lut (.I0(GND_net), .I1(n1306), .I2(VCC_net), 
            .I3(n10767), .O(n1367[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_5 (.CI(n10615), .I0(bit_ctr[3]), .I1(GND_net), .CO(n10616));
    SB_CARRY mod_5_add_1808_19 (.CI(n10975), .I0(n2593), .I1(VCC_net), 
            .CO(n10976));
    SB_CARRY mod_5_add_1674_9 (.CI(n10924), .I0(n2403), .I1(VCC_net), 
            .CO(n10925));
    SB_CARRY mod_5_add_937_6 (.CI(n10767), .I0(n1306), .I1(VCC_net), .CO(n10768));
    SB_CARRY mod_5_add_2076_12 (.CI(n11062), .I0(n3000), .I1(n3017), .CO(n11063));
    SB_LUT4 mod_5_i1817_3_lut (.I0(n2595), .I1(n2654[24]), .I2(n2621), 
            .I3(GND_net), .O(n2694));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1817_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i5_1_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_DFF \neo_pixel_transmitter.t0_i0_i8  (.Q(\neo_pixel_transmitter.t0 [8]), 
           .C(CLK_c), .D(n8085));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY mod_5_add_1942_23 (.CI(n11024), .I0(n2789), .I1(VCC_net), 
            .CO(n11025));
    SB_LUT4 mod_5_add_1406_18_lut (.I0(n2027), .I1(n1994), .I2(VCC_net), 
            .I3(n10863), .O(n2093)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_18_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1808_18_lut (.I0(GND_net), .I1(n2594), .I2(VCC_net), 
            .I3(n10974), .O(n2654[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_18 (.CI(n10974), .I0(n2594), .I1(VCC_net), 
            .CO(n10975));
    SB_LUT4 mod_5_add_1942_22_lut (.I0(GND_net), .I1(n2790), .I2(VCC_net), 
            .I3(n11023), .O(n2852[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_8_lut (.I0(GND_net), .I1(n2404), .I2(VCC_net), 
            .I3(n10923), .O(n2456[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9208_1_lut (.I0(n1532), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13604));
    defparam i9208_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9209_1_lut (.I0(n1829), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13605));
    defparam i9209_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_1674_8 (.CI(n10923), .I0(n2404), .I1(VCC_net), 
            .CO(n10924));
    SB_LUT4 mod_5_add_2076_11_lut (.I0(n3001), .I1(n3001), .I2(n3017), 
            .I3(n11061), .O(n3100)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1942_22 (.CI(n11023), .I0(n2790), .I1(VCC_net), 
            .CO(n11024));
    SB_LUT4 mod_5_add_1808_17_lut (.I0(GND_net), .I1(n2595), .I2(VCC_net), 
            .I3(n10973), .O(n2654[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_17 (.CI(n10973), .I0(n2595), .I1(VCC_net), 
            .CO(n10974));
    SB_LUT4 mod_5_add_1808_16_lut (.I0(GND_net), .I1(n2596), .I2(VCC_net), 
            .I3(n10972), .O(n2654[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_21_lut (.I0(GND_net), .I1(n2791), .I2(VCC_net), 
            .I3(n11022), .O(n2852[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_7_lut (.I0(GND_net), .I1(n2405), .I2(VCC_net), 
            .I3(n10922), .O(n2456[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(timer[4]), 
            .I3(n10710), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_7 (.CI(n10922), .I0(n2405), .I1(VCC_net), 
            .CO(n10923));
    SB_CARRY mod_5_add_669_4 (.CI(n10739), .I0(n7899), .I1(VCC_net), .CO(n10740));
    SB_LUT4 mod_5_i1813_3_lut (.I0(n2591), .I1(n2654[28]), .I2(n2621), 
            .I3(GND_net), .O(n2690));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1813_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2027_3_lut (.I0(n2901), .I1(n2951[15]), .I2(n2918), 
            .I3(GND_net), .O(n3000));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9204_1_lut (.I0(n3017), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13600));
    defparam i9204_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_2076_11 (.CI(n11061), .I0(n3001), .I1(n3017), .CO(n11062));
    SB_LUT4 sub_14_inv_0_i6_1_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_DFF timer_632__i2 (.Q(timer[2]), .C(CLK_c), .D(n133[2]));   // verilog/neopixel.v(12[12:21])
    SB_CARRY mod_5_add_1942_21 (.CI(n11022), .I0(n2791), .I1(VCC_net), 
            .CO(n11023));
    SB_CARRY mod_5_add_1808_16 (.CI(n10972), .I0(n2596), .I1(VCC_net), 
            .CO(n10973));
    SB_LUT4 mod_5_add_1674_6_lut (.I0(GND_net), .I1(n2406), .I2(VCC_net), 
            .I3(n10921), .O(n2456[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_20_lut (.I0(GND_net), .I1(n2792), .I2(VCC_net), 
            .I3(n11021), .O(n2852[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_15_lut (.I0(GND_net), .I1(n2597), .I2(VCC_net), 
            .I3(n10971), .O(n2654[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_15 (.CI(n10971), .I0(n2597), .I1(VCC_net), 
            .CO(n10972));
    SB_CARRY mod_5_add_1674_6 (.CI(n10921), .I0(n2406), .I1(VCC_net), 
            .CO(n10922));
    SB_LUT4 i5924_2_lut (.I0(bit_ctr[17]), .I1(n1809), .I2(GND_net), .I3(GND_net), 
            .O(n9717));
    defparam i5924_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_2_lut (.I0(n1807), .I1(n1806), .I2(GND_net), .I3(GND_net), 
            .O(n18_adj_716));
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut_adj_67 (.I0(n1802), .I1(n1804), .I2(n1801), .I3(n1797), 
            .O(n24_adj_717));
    defparam i10_4_lut_adj_67.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_68 (.I0(n1800), .I1(n1803), .I2(n9717), .I3(n1796), 
            .O(n22_adj_718));
    defparam i8_4_lut_adj_68.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_69 (.I0(n1805), .I1(n24_adj_717), .I2(n18_adj_716), 
            .I3(n1799), .O(n26_adj_719));
    defparam i12_4_lut_adj_69.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_70 (.I0(n1798), .I1(n26_adj_719), .I2(n22_adj_718), 
            .I3(n1808), .O(n1829));
    defparam i13_4_lut_adj_70.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1694_3_lut (.I0(n2408), .I1(n2456[13]), .I2(n2423), 
            .I3(GND_net), .O(n2507));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1694_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i7_1_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i20_4_lut (.I0(n2808), .I1(n40_adj_705), .I2(n30_adj_704), 
            .I3(n2794), .O(n44_adj_721));   // verilog/neopixel.v(22[26:36])
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_inv_0_i8_1_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_DFF timer_632__i3 (.Q(timer[3]), .C(CLK_c), .D(n133[3]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i4 (.Q(timer[4]), .C(CLK_c), .D(n133[4]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i5 (.Q(timer[5]), .C(CLK_c), .D(n133[5]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i6 (.Q(timer[6]), .C(CLK_c), .D(n133[6]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i7 (.Q(timer[7]), .C(CLK_c), .D(n133[7]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i8 (.Q(timer[8]), .C(CLK_c), .D(n133[8]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i9 (.Q(timer[9]), .C(CLK_c), .D(n133[9]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i10 (.Q(timer[10]), .C(CLK_c), .D(n133[10]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i11 (.Q(timer[11]), .C(CLK_c), .D(n133[11]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i12 (.Q(timer[12]), .C(CLK_c), .D(n133[12]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i13 (.Q(timer[13]), .C(CLK_c), .D(n133[13]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i14 (.Q(timer[14]), .C(CLK_c), .D(n133[14]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i15 (.Q(timer[15]), .C(CLK_c), .D(n133[15]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i16 (.Q(timer[16]), .C(CLK_c), .D(n133[16]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i17 (.Q(timer[17]), .C(CLK_c), .D(n133[17]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i18 (.Q(timer[18]), .C(CLK_c), .D(n133[18]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i19 (.Q(timer[19]), .C(CLK_c), .D(n133[19]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i20 (.Q(timer[20]), .C(CLK_c), .D(n133[20]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i21 (.Q(timer[21]), .C(CLK_c), .D(n133[21]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i22 (.Q(timer[22]), .C(CLK_c), .D(n133[22]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i23 (.Q(timer[23]), .C(CLK_c), .D(n133[23]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i24 (.Q(timer[24]), .C(CLK_c), .D(n133[24]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i25 (.Q(timer[25]), .C(CLK_c), .D(n133[25]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i26 (.Q(timer[26]), .C(CLK_c), .D(n133[26]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i27 (.Q(timer[27]), .C(CLK_c), .D(n133[27]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i28 (.Q(timer[28]), .C(CLK_c), .D(n133[28]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i29 (.Q(timer[29]), .C(CLK_c), .D(n133[29]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i30 (.Q(timer[30]), .C(CLK_c), .D(n133[30]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_632__i31 (.Q(timer[31]), .C(CLK_c), .D(n133[31]));   // verilog/neopixel.v(12[12:21])
    SB_DFF \neo_pixel_transmitter.t0_i0_i9  (.Q(\neo_pixel_transmitter.t0 [9]), 
           .C(CLK_c), .D(n8084));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_1674_5_lut (.I0(GND_net), .I1(n2407), .I2(VCC_net), 
            .I3(n10920), .O(n2456[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_5 (.CI(n10920), .I0(n2407), .I1(VCC_net), 
            .CO(n10921));
    SB_LUT4 mod_5_add_1808_14_lut (.I0(GND_net), .I1(n2598), .I2(VCC_net), 
            .I3(n10970), .O(n2654[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_23_lut (.I0(GND_net), .I1(bit_ctr[21]), .I2(GND_net), 
            .I3(n10633), .O(n255[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_14 (.CI(n10970), .I0(n2598), .I1(VCC_net), 
            .CO(n10971));
    SB_LUT4 mod_5_add_1138_6_lut (.I0(n1606), .I1(n1606), .I2(n1631), 
            .I3(n10797), .O(n1705)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_6_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_14_add_2_17_lut (.I0(n13177), .I1(timer[15]), .I2(n1[15]), 
            .I3(n10683), .O(n13179)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_17 (.CI(n10683), .I0(timer[15]), .I1(n1[15]), 
            .CO(n10684));
    SB_LUT4 mod_5_add_937_5_lut (.I0(GND_net), .I1(n1307), .I2(VCC_net), 
            .I3(n10766), .O(n1367[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i9_1_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1013_3_lut (.I0(n1407), .I1(n1466[24]), .I2(n1433), 
            .I3(GND_net), .O(n1506));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_4_lut (.I0(GND_net), .I1(bit_ctr[2]), .I2(GND_net), 
            .I3(n10614), .O(n255[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1625_rep_29_3_lut (.I0(n2357[15]), .I1(n2456[15]), .I2(n2423), 
            .I3(GND_net), .O(n13321));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1625_rep_29_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_4 (.CI(n10614), .I0(bit_ctr[2]), .I1(GND_net), .CO(n10615));
    SB_LUT4 mod_5_add_1406_17_lut (.I0(GND_net), .I1(n1995), .I2(VCC_net), 
            .I3(n10862), .O(n2060[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_17_lut.LUT_INIT = 16'hC33C;
    SB_DFF \neo_pixel_transmitter.t0_i0_i10  (.Q(\neo_pixel_transmitter.t0 [10]), 
           .C(CLK_c), .D(n8083));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i11  (.Q(\neo_pixel_transmitter.t0 [11]), 
           .C(CLK_c), .D(n8082));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i12  (.Q(\neo_pixel_transmitter.t0 [12]), 
           .C(CLK_c), .D(n8081));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i13  (.Q(\neo_pixel_transmitter.t0 [13]), 
           .C(CLK_c), .D(n8080));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i14  (.Q(\neo_pixel_transmitter.t0 [14]), 
           .C(CLK_c), .D(n8079));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i15  (.Q(\neo_pixel_transmitter.t0 [15]), 
           .C(CLK_c), .D(n8078));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i16  (.Q(\neo_pixel_transmitter.t0 [16]), 
           .C(CLK_c), .D(n8077));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i17  (.Q(\neo_pixel_transmitter.t0 [17]), 
           .C(CLK_c), .D(n8076));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i18  (.Q(\neo_pixel_transmitter.t0 [18]), 
           .C(CLK_c), .D(n8075));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i19  (.Q(\neo_pixel_transmitter.t0 [19]), 
           .C(CLK_c), .D(n8074));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i20  (.Q(\neo_pixel_transmitter.t0 [20]), 
           .C(CLK_c), .D(n8073));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i21  (.Q(\neo_pixel_transmitter.t0 [21]), 
           .C(CLK_c), .D(n8072));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i22  (.Q(\neo_pixel_transmitter.t0 [22]), 
           .C(CLK_c), .D(n8071));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i23  (.Q(\neo_pixel_transmitter.t0 [23]), 
           .C(CLK_c), .D(n8070));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i24  (.Q(\neo_pixel_transmitter.t0 [24]), 
           .C(CLK_c), .D(n8069));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i25  (.Q(\neo_pixel_transmitter.t0 [25]), 
           .C(CLK_c), .D(n8068));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i26  (.Q(\neo_pixel_transmitter.t0 [26]), 
           .C(CLK_c), .D(n8067));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i27  (.Q(\neo_pixel_transmitter.t0 [27]), 
           .C(CLK_c), .D(n8066));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i28  (.Q(\neo_pixel_transmitter.t0 [28]), 
           .C(CLK_c), .D(n8065));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i29  (.Q(\neo_pixel_transmitter.t0 [29]), 
           .C(CLK_c), .D(n8064));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i30  (.Q(\neo_pixel_transmitter.t0 [30]), 
           .C(CLK_c), .D(n8063));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i31  (.Q(\neo_pixel_transmitter.t0 [31]), 
           .C(CLK_c), .D(n8062));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i0  (.Q(\neo_pixel_transmitter.t0 [0]), 
           .C(CLK_c), .D(n8055));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY add_21_23 (.CI(n10633), .I0(bit_ctr[21]), .I1(GND_net), .CO(n10634));
    SB_LUT4 add_21_3_lut (.I0(GND_net), .I1(bit_ctr[1]), .I2(GND_net), 
            .I3(n10613), .O(n255[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_22_lut (.I0(GND_net), .I1(bit_ctr[20]), .I2(GND_net), 
            .I3(n10632), .O(n255[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_669_3_lut (.I0(GND_net), .I1(n7497), .I2(GND_net), 
            .I3(n10738), .O(n971[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_6 (.CI(n10710), .I0(GND_net), .I1(timer[4]), 
            .CO(n10711));
    SB_LUT4 sub_14_add_2_16_lut (.I0(n13175), .I1(timer[14]), .I2(n1[14]), 
            .I3(n10682), .O(n13177)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_21_22 (.CI(n10632), .I0(bit_ctr[20]), .I1(GND_net), .CO(n10633));
    SB_CARRY mod_5_add_1406_17 (.CI(n10862), .I0(n1995), .I1(VCC_net), 
            .CO(n10863));
    SB_LUT4 mod_5_add_1406_16_lut (.I0(GND_net), .I1(n1996), .I2(VCC_net), 
            .I3(n10861), .O(n2060[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_16 (.CI(n10861), .I0(n1996), .I1(VCC_net), 
            .CO(n10862));
    SB_LUT4 mod_5_add_1406_15_lut (.I0(GND_net), .I1(n1997), .I2(VCC_net), 
            .I3(n10860), .O(n2060[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_15 (.CI(n10860), .I0(n1997), .I1(VCC_net), 
            .CO(n10861));
    SB_LUT4 mod_5_add_1406_14_lut (.I0(GND_net), .I1(n1998), .I2(VCC_net), 
            .I3(n10859), .O(n2060[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_14 (.CI(n10859), .I0(n1998), .I1(VCC_net), 
            .CO(n10860));
    SB_LUT4 add_21_21_lut (.I0(GND_net), .I1(bit_ctr[19]), .I2(GND_net), 
            .I3(n10631), .O(n255[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_6 (.CI(n10797), .I0(n1606), .I1(n1631), .CO(n10798));
    SB_CARRY sub_14_add_2_16 (.CI(n10682), .I0(timer[14]), .I1(n1[14]), 
            .CO(n10683));
    SB_CARRY add_21_3 (.CI(n10613), .I0(bit_ctr[1]), .I1(GND_net), .CO(n10614));
    SB_LUT4 add_21_2_lut (.I0(GND_net), .I1(bit_ctr[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n255[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_2 (.CI(VCC_net), .I0(bit_ctr[0]), .I1(GND_net), .CO(n10613));
    SB_CARRY add_21_21 (.CI(n10631), .I0(bit_ctr[19]), .I1(GND_net), .CO(n10632));
    SB_LUT4 sub_14_add_2_15_lut (.I0(n13173), .I1(timer[13]), .I2(n1[13]), 
            .I3(n10681), .O(n13175)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_937_5 (.CI(n10766), .I0(n1307), .I1(VCC_net), .CO(n10767));
    SB_DFFESR bit_ctr__i0 (.Q(bit_ctr[0]), .C(CLK_c), .E(n7657), .D(n255[0]), 
            .R(n7994));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_i1008_3_lut (.I0(n1402), .I1(n1466[29]), .I2(n1433), 
            .I3(GND_net), .O(n1501));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1008_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1007_3_lut (.I0(n1401), .I1(n1466[30]), .I2(n1433), 
            .I3(GND_net), .O(n1500));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1007_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1012_3_lut (.I0(n1406), .I1(n1466[25]), .I2(n1433), 
            .I3(GND_net), .O(n1505));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1010_3_lut (.I0(n1404), .I1(n1466[27]), .I2(n1433), 
            .I3(GND_net), .O(n1503));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1009_3_lut (.I0(n1403), .I1(n1466[28]), .I2(n1433), 
            .I3(GND_net), .O(n1502));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i941_3_lut (.I0(n1303), .I1(n1367[29]), .I2(n1334), 
            .I3(GND_net), .O(n1402));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i940_3_lut (.I0(n1302), .I1(n1367[30]), .I2(n1334), 
            .I3(GND_net), .O(n1401));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i940_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_71 (.I0(n1401), .I1(n1402), .I2(n1400), .I3(n1405), 
            .O(n16_adj_727));   // verilog/neopixel.v(22[26:36])
    defparam i6_4_lut_adj_71.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_3_lut (.I0(n1408), .I1(n16_adj_727), .I2(n1406), .I3(GND_net), 
            .O(n18_adj_728));   // verilog/neopixel.v(22[26:36])
    defparam i8_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 mod_5_i1693_3_lut (.I0(n2407), .I1(n2456[14]), .I2(n2423), 
            .I3(GND_net), .O(n2506));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1693_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_3_lut_adj_72 (.I0(n1403), .I1(bit_ctr[21]), .I2(n1409), 
            .I3(GND_net), .O(n13_adj_729));   // verilog/neopixel.v(22[26:36])
    defparam i3_3_lut_adj_72.LUT_INIT = 16'heaea;
    SB_LUT4 i9_4_lut_adj_73 (.I0(n13_adj_729), .I1(n18_adj_728), .I2(n1407), 
            .I3(n1404), .O(n1433));   // verilog/neopixel.v(22[26:36])
    defparam i9_4_lut_adj_73.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1011_3_lut (.I0(n1405), .I1(n1466[26]), .I2(n1433), 
            .I3(GND_net), .O(n1504));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1015_3_lut (.I0(n1409), .I1(n1466[22]), .I2(n1433), 
            .I3(GND_net), .O(n1508));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18_4_lut_adj_74 (.I0(n2800), .I1(n2803), .I2(n2802), .I3(n2806), 
            .O(n42_adj_730));   // verilog/neopixel.v(22[26:36])
    defparam i18_4_lut_adj_74.LUT_INIT = 16'hfffe;
    SB_LUT4 timer_632_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(timer[3]), 
            .I3(n10709), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1014_3_lut (.I0(n1408), .I1(n1466[23]), .I2(n1433), 
            .I3(GND_net), .O(n1507));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1016_3_lut (.I0(bit_ctr[21]), .I1(n1466[21]), .I2(n1433), 
            .I3(GND_net), .O(n1509));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5936_2_lut (.I0(bit_ctr[20]), .I1(n1509), .I2(GND_net), .I3(GND_net), 
            .O(n9729));
    defparam i5936_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7_4_lut_adj_75 (.I0(n1507), .I1(n9729), .I2(n1508), .I3(n1504), 
            .O(n18_adj_731));
    defparam i7_4_lut_adj_75.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_2_lut (.I0(n1502), .I1(n1503), .I2(GND_net), .I3(GND_net), 
            .O(n16_adj_732));
    defparam i5_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9_4_lut_adj_76 (.I0(n1505), .I1(n18_adj_731), .I2(n1500), 
            .I3(n1501), .O(n20_adj_733));
    defparam i9_4_lut_adj_76.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_77 (.I0(n1506), .I1(n20_adj_733), .I2(n16_adj_732), 
            .I3(n1499), .O(n1532));
    defparam i10_4_lut_adj_77.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1481_3_lut (.I0(n2099), .I1(n2159[25]), .I2(n2126), 
            .I3(GND_net), .O(n2198));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1481_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1548_3_lut (.I0(n2198), .I1(n2258[25]), .I2(n2225), 
            .I3(GND_net), .O(n2297));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1548_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_15 (.CI(n10681), .I0(timer[13]), .I1(n1[13]), 
            .CO(n10682));
    SB_LUT4 sub_14_inv_0_i10_1_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1480_3_lut (.I0(n2098), .I1(n2159[26]), .I2(n2126), 
            .I3(GND_net), .O(n2197));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1480_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1547_3_lut (.I0(n2197), .I1(n2258[26]), .I2(n2225), 
            .I3(GND_net), .O(n2296));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1547_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9133_4_lut (.I0(n11113), .I1(n11908), .I2(\neo_pixel_transmitter.done ), 
            .I3(\state[0] ), .O(n13513));
    defparam i9133_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i53_4_lut (.I0(n13445), .I1(n9747), .I2(\state[1] ), .I3(n7564), 
            .O(n11948));
    defparam i53_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i52_4_lut (.I0(n11948), .I1(n13514), .I2(\state[0] ), .I3(\neo_pixel_transmitter.done ), 
            .O(n11988));
    defparam i52_4_lut.LUT_INIT = 16'h3335;
    SB_LUT4 i3_1_lut (.I0(\neo_pixel_transmitter.done ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(\neo_pixel_transmitter.done_N_662 ));   // verilog/neopixel.v(35[12] 117[6])
    defparam i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9112_3_lut (.I0(n3209), .I1(bit_ctr[3]), .I2(n11153), .I3(GND_net), 
            .O(color_bit_N_642[4]));
    defparam i9112_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i3_4_lut (.I0(n13622), .I1(\state_3__N_448[1] ), .I2(color_bit_N_642[4]), 
            .I3(bit_ctr[2]), .O(state_3__N_448[0]));
    defparam i3_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i19_4_lut_adj_78 (.I0(n2787), .I1(n38_adj_713), .I2(n26_adj_706), 
            .I3(n2786), .O(n43_adj_735));   // verilog/neopixel.v(22[26:36])
    defparam i19_4_lut_adj_78.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_2076_10_lut (.I0(n3002), .I1(n3002), .I2(n3017), 
            .I3(n11060), .O(n3101)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2076_10 (.CI(n11060), .I0(n3002), .I1(n3017), .CO(n11061));
    SB_CARRY mod_5_add_1942_20 (.CI(n11021), .I0(n2792), .I1(VCC_net), 
            .CO(n11022));
    SB_LUT4 mod_5_add_1808_13_lut (.I0(GND_net), .I1(n2599), .I2(VCC_net), 
            .I3(n10969), .O(n2654[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2012_3_lut (.I0(n2886), .I1(n2951[30]), .I2(n2918), 
            .I3(GND_net), .O(n2985));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2023_3_lut (.I0(n2897), .I1(n2951[19]), .I2(n2918), 
            .I3(GND_net), .O(n2996));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2023_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_4_lut_adj_79 (.I0(n2799), .I1(n2804), .I2(n2796), .I3(n2798), 
            .O(n41_adj_736));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut_adj_79.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_add_2_14_lut (.I0(one_wire_N_599[11]), .I1(timer[12]), 
            .I2(n1[12]), .I3(n10680), .O(n13173)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_14_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 mod_5_add_1942_19_lut (.I0(GND_net), .I1(n2793), .I2(VCC_net), 
            .I3(n11020), .O(n2852[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1674_4_lut (.I0(GND_net), .I1(n2408), .I2(VCC_net), 
            .I3(n10919), .O(n2456[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_4 (.CI(n10919), .I0(n2408), .I1(VCC_net), 
            .CO(n10920));
    SB_LUT4 mod_5_add_937_4_lut (.I0(GND_net), .I1(n1308), .I2(VCC_net), 
            .I3(n10765), .O(n1367[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i11_1_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i8977_3_lut (.I0(\neopxl_color[4] ), .I1(\neopxl_color[5] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13372));
    defparam i8977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8978_3_lut (.I0(\neopxl_color[6] ), .I1(\neopxl_color[7] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13373));
    defparam i8978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2172_3_lut (.I0(bit_ctr[4]), .I1(n3149[4]), .I2(n3116), 
            .I3(GND_net), .O(n3209));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_4_lut_adj_80 (.I0(n3108), .I1(n3097), .I2(n3096), .I3(n3105), 
            .O(n46));   // verilog/neopixel.v(22[26:36])
    defparam i19_4_lut_adj_80.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_3_lut_adj_81 (.I0(n3107), .I1(bit_ctr[4]), .I2(n3109), 
            .I3(GND_net), .O(n35_adj_738));   // verilog/neopixel.v(22[26:36])
    defparam i8_3_lut_adj_81.LUT_INIT = 16'heaea;
    SB_LUT4 i15_4_lut_adj_82 (.I0(n3085), .I1(n3087), .I2(n3086), .I3(n3088), 
            .O(n42_adj_739));   // verilog/neopixel.v(22[26:36])
    defparam i15_4_lut_adj_82.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_2_lut_adj_83 (.I0(n3091), .I1(n3092), .I2(GND_net), .I3(GND_net), 
            .O(n32_adj_740));   // verilog/neopixel.v(22[26:36])
    defparam i5_2_lut_adj_83.LUT_INIT = 16'heeee;
    SB_LUT4 i17_4_lut_adj_84 (.I0(n3093), .I1(n3095), .I2(n3094), .I3(n3101), 
            .O(n44_adj_741));   // verilog/neopixel.v(22[26:36])
    defparam i17_4_lut_adj_84.LUT_INIT = 16'hfffe;
    SB_LUT4 i23_4_lut (.I0(n35_adj_738), .I1(n46), .I2(n3100), .I3(n3102), 
            .O(n50_adj_742));   // verilog/neopixel.v(22[26:36])
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut_adj_85 (.I0(n3099), .I1(n42_adj_739), .I2(n3084), 
            .I3(n3083), .O(n48));   // verilog/neopixel.v(22[26:36])
    defparam i21_4_lut_adj_85.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut_adj_86 (.I0(n3089), .I1(n44_adj_741), .I2(n32_adj_740), 
            .I3(n3090), .O(n49));   // verilog/neopixel.v(22[26:36])
    defparam i22_4_lut_adj_86.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut_adj_87 (.I0(n3098), .I1(n3103), .I2(n3106), .I3(n3104), 
            .O(n47));   // verilog/neopixel.v(22[26:36])
    defparam i20_4_lut_adj_87.LUT_INIT = 16'hfffe;
    SB_LUT4 i26_4_lut (.I0(n47), .I1(n49), .I2(n48), .I3(n50_adj_742), 
            .O(n3116));   // verilog/neopixel.v(22[26:36])
    defparam i26_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1138_5_lut (.I0(n1607), .I1(n1607), .I2(n1631), 
            .I3(n10796), .O(n1706)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_669_3 (.CI(n10738), .I0(n7497), .I1(GND_net), .CO(n10739));
    SB_LUT4 mod_5_add_669_2_lut (.I0(GND_net), .I1(bit_ctr[26]), .I2(GND_net), 
            .I3(VCC_net), .O(n971[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_669_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_13 (.CI(n10969), .I0(n2599), .I1(VCC_net), 
            .CO(n10970));
    SB_LUT4 mod_5_i2170_3_lut (.I0(n3108), .I1(n3149[6]), .I2(n3116), 
            .I3(GND_net), .O(n13_adj_743));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2170_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1406_13_lut (.I0(GND_net), .I1(n1999), .I2(VCC_net), 
            .I3(n10858), .O(n2060[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_13 (.CI(n10858), .I0(n1999), .I1(VCC_net), 
            .CO(n10859));
    SB_CARRY sub_14_add_2_14 (.CI(n10680), .I0(timer[12]), .I1(n1[12]), 
            .CO(n10681));
    SB_LUT4 mod_5_i2016_3_lut (.I0(n2890), .I1(n2951[26]), .I2(n2918), 
            .I3(GND_net), .O(n2989));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2163_3_lut (.I0(n3101), .I1(n3149[13]), .I2(n3116), 
            .I3(GND_net), .O(n27_adj_744));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2167_3_lut (.I0(n3105), .I1(n3149[9]), .I2(n3116), 
            .I3(GND_net), .O(n19_adj_745));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_88 (.I0(n3103), .I1(n19_adj_745), .I2(n3149[11]), 
            .I3(n3116), .O(n12777));
    defparam i1_4_lut_adj_88.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i2162_3_lut (.I0(n3100), .I1(n3149[14]), .I2(n3116), 
            .I3(GND_net), .O(n29_adj_746));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2162_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2035_3_lut (.I0(n2909), .I1(n2951[7]), .I2(n2918), 
            .I3(GND_net), .O(n3008));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2014_3_lut (.I0(n2888), .I1(n2951[28]), .I2(n2918), 
            .I3(GND_net), .O(n2987));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2025_3_lut (.I0(n2899), .I1(n2951[17]), .I2(n2918), 
            .I3(GND_net), .O(n2998));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_89 (.I0(n3099), .I1(n27_adj_744), .I2(n3149[15]), 
            .I3(n3116), .O(n12779));
    defparam i1_4_lut_adj_89.LUT_INIT = 16'hfcee;
    SB_LUT4 i23_4_lut_adj_90 (.I0(n41_adj_736), .I1(n43_adj_735), .I2(n42_adj_730), 
            .I3(n44_adj_721), .O(n2819));   // verilog/neopixel.v(22[26:36])
    defparam i23_4_lut_adj_90.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_91 (.I0(n12777), .I1(n3107), .I2(n3149[7]), .I3(n3116), 
            .O(n12789));
    defparam i1_4_lut_adj_91.LUT_INIT = 16'hfaee;
    SB_LUT4 mod_5_i2026_3_lut (.I0(n2900), .I1(n2951[16]), .I2(n2918), 
            .I3(GND_net), .O(n2999));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2157_3_lut (.I0(n3095), .I1(n3149[19]), .I2(n3116), 
            .I3(GND_net), .O(n39_adj_747));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2164_3_lut (.I0(n3102), .I1(n3149[12]), .I2(n3116), 
            .I3(GND_net), .O(n25_adj_748));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2031_3_lut (.I0(n2905), .I1(n2951[11]), .I2(n2918), 
            .I3(GND_net), .O(n3004));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2033_3_lut (.I0(n2907), .I1(n2951[9]), .I2(n2918), 
            .I3(GND_net), .O(n3006));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1677_3_lut (.I0(n2391), .I1(n2456[30]), .I2(n2423), 
            .I3(GND_net), .O(n2490));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1677_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2017_3_lut (.I0(n2891), .I1(n2951[25]), .I2(n2918), 
            .I3(GND_net), .O(n2990));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2022_3_lut (.I0(n2896), .I1(n2951[20]), .I2(n2918), 
            .I3(GND_net), .O(n2995));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2022_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_13_lut (.I0(GND_net), .I1(timer[11]), .I2(n1[11]), 
            .I3(n10679), .O(one_wire_N_599[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_5 (.CI(n10709), .I0(GND_net), .I1(timer[3]), 
            .CO(n10710));
    SB_LUT4 mod_5_add_1674_3_lut (.I0(GND_net), .I1(n2409), .I2(GND_net), 
            .I3(n10918), .O(n2456[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i2166_3_lut (.I0(n3104), .I1(n3149[10]), .I2(n3116), 
            .I3(GND_net), .O(n21_adj_750));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1808_12_lut (.I0(GND_net), .I1(n2600), .I2(VCC_net), 
            .I3(n10968), .O(n2654[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1674_3 (.CI(n10918), .I0(n2409), .I1(GND_net), 
            .CO(n10919));
    SB_LUT4 i1_4_lut_adj_92 (.I0(n3096), .I1(n25_adj_748), .I2(n3149[18]), 
            .I3(n3116), .O(n12785));
    defparam i1_4_lut_adj_92.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1674_2_lut (.I0(GND_net), .I1(bit_ctr[11]), .I2(GND_net), 
            .I3(VCC_net), .O(n2456[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1674_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_4 (.CI(n10765), .I0(n1308), .I1(VCC_net), .CO(n10766));
    SB_LUT4 mod_5_i2029_3_lut (.I0(n2903), .I1(n2951[13]), .I2(n2918), 
            .I3(GND_net), .O(n3002));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_93 (.I0(n3097), .I1(n21_adj_750), .I2(n3149[17]), 
            .I3(n3116), .O(n12781));
    defparam i1_4_lut_adj_93.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i2020_3_lut (.I0(n2894), .I1(n2951[22]), .I2(n2918), 
            .I3(GND_net), .O(n2993));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2020_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2171_3_lut (.I0(n3109), .I1(n3149[5]), .I2(n3116), 
            .I3(GND_net), .O(n11_adj_751));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2171_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_94 (.I0(n3098), .I1(n13_adj_743), .I2(n3149[16]), 
            .I3(n3116), .O(n12787));
    defparam i1_4_lut_adj_94.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i1900_3_lut (.I0(bit_ctr[8]), .I1(n2753[8]), .I2(n2720), 
            .I3(GND_net), .O(n2809));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2156_3_lut (.I0(n3094), .I1(n3149[20]), .I2(n3116), 
            .I3(GND_net), .O(n41_adj_752));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2156_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_95 (.I0(n39_adj_747), .I1(n12789), .I2(n12779), 
            .I3(n29_adj_746), .O(n12799));
    defparam i1_4_lut_adj_95.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_96 (.I0(n3106), .I1(n11_adj_751), .I2(n3149[8]), 
            .I3(n3116), .O(n12775));
    defparam i1_4_lut_adj_96.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_97 (.I0(bit_ctr[3]), .I1(n12781), .I2(n3209), 
            .I3(n12785), .O(n12801));
    defparam i1_4_lut_adj_97.LUT_INIT = 16'hffec;
    SB_LUT4 mod_5_i1348_3_lut (.I0(n1902), .I1(n1961[24]), .I2(n1928), 
            .I3(GND_net), .O(n2001));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1348_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_98 (.I0(n12775), .I1(n12799), .I2(n41_adj_752), 
            .I3(n12787), .O(n12803));
    defparam i1_4_lut_adj_98.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i2155_3_lut (.I0(n3093), .I1(n3149[21]), .I2(n3116), 
            .I3(GND_net), .O(n43_adj_753));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2155_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2154_3_lut (.I0(n3092), .I1(n3149[22]), .I2(n3116), 
            .I3(GND_net), .O(n45_adj_754));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2154_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_99 (.I0(n45_adj_754), .I1(n43_adj_753), .I2(n12803), 
            .I3(n12801), .O(n12809));
    defparam i1_4_lut_adj_99.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_100 (.I0(n3091), .I1(n12809), .I2(n3149[23]), 
            .I3(n3116), .O(n12811));
    defparam i1_4_lut_adj_100.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_1138_5 (.CI(n10796), .I0(n1607), .I1(n1631), .CO(n10797));
    SB_LUT4 timer_632_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(timer[2]), 
            .I3(n10708), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_669_2 (.CI(VCC_net), .I0(bit_ctr[26]), .I1(GND_net), 
            .CO(n10738));
    SB_CARRY timer_632_add_4_4 (.CI(n10708), .I0(GND_net), .I1(timer[2]), 
            .CO(n10709));
    SB_LUT4 i1_4_lut_adj_101 (.I0(n3090), .I1(n12811), .I2(n3149[24]), 
            .I3(n3116), .O(n12813));
    defparam i1_4_lut_adj_101.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_add_1406_12_lut (.I0(GND_net), .I1(n2000), .I2(VCC_net), 
            .I3(n10857), .O(n2060[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_102 (.I0(n3089), .I1(n12813), .I2(n3149[25]), 
            .I3(n3116), .O(n12815));
    defparam i1_4_lut_adj_102.LUT_INIT = 16'hfcee;
    SB_CARRY mod_5_add_1406_12 (.CI(n10857), .I0(n2000), .I1(VCC_net), 
            .CO(n10858));
    SB_LUT4 mod_5_add_1406_11_lut (.I0(GND_net), .I1(n2001), .I2(VCC_net), 
            .I3(n10856), .O(n2060[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_4_lut (.I0(n1608), .I1(n1608), .I2(n1631), 
            .I3(n10795), .O(n1707)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1482_3_lut (.I0(n2100), .I1(n2159[24]), .I2(n2126), 
            .I3(GND_net), .O(n2199));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1482_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_19 (.CI(n11020), .I0(n2793), .I1(VCC_net), 
            .CO(n11021));
    SB_LUT4 mod_5_add_2076_9_lut (.I0(n3003), .I1(n3003), .I2(n3017), 
            .I3(n11059), .O(n3102)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1_4_lut_adj_103 (.I0(n3088), .I1(n12815), .I2(n3149[26]), 
            .I3(n3116), .O(n12817));
    defparam i1_4_lut_adj_103.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i1695_3_lut (.I0(n2409), .I1(n2456[12]), .I2(n2423), 
            .I3(GND_net), .O(n2508));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1695_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1959_3_lut (.I0(n2801), .I1(n2852[16]), .I2(n2819), 
            .I3(GND_net), .O(n2900));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1959_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1961_3_lut (.I0(n2803), .I1(n2852[14]), .I2(n2819), 
            .I3(GND_net), .O(n2902));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_104 (.I0(n3087), .I1(n12817), .I2(n3149[27]), 
            .I3(n3116), .O(n12819));
    defparam i1_4_lut_adj_104.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_4_lut_adj_105 (.I0(n3086), .I1(n12819), .I2(n3149[28]), 
            .I3(n3116), .O(n12821));
    defparam i1_4_lut_adj_105.LUT_INIT = 16'hfcee;
    SB_LUT4 mod_5_i1681_3_lut (.I0(n2395), .I1(n2456[26]), .I2(n2423), 
            .I3(GND_net), .O(n2494));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1490_3_lut (.I0(n2108), .I1(n2159[16]), .I2(n2126), 
            .I3(GND_net), .O(n2207));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1490_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1960_3_lut (.I0(n2802), .I1(n2852[15]), .I2(n2819), 
            .I3(GND_net), .O(n2901));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1679_3_lut (.I0(n2393), .I1(n2456[28]), .I2(n2423), 
            .I3(GND_net), .O(n2492));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1679_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2147_3_lut (.I0(n3085), .I1(n3149[29]), .I2(n3116), 
            .I3(GND_net), .O(n59));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2147_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1680_3_lut (.I0(n2394), .I1(n2456[27]), .I2(n2423), 
            .I3(GND_net), .O(n2493));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1680_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1557_3_lut (.I0(n2207), .I1(n2258[16]), .I2(n2225), 
            .I3(GND_net), .O(n2306));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1557_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1678_3_lut (.I0(n2392), .I1(n2456[29]), .I2(n2423), 
            .I3(GND_net), .O(n2491));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1678_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2146_3_lut (.I0(n3084), .I1(n3149[30]), .I2(n3116), 
            .I3(GND_net), .O(n61));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_106 (.I0(n61), .I1(n13280), .I2(n59), .I3(n12821), 
            .O(n11153));
    defparam i1_4_lut_adj_106.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_107 (.I0(bit_ctr[3]), .I1(n11153), .I2(GND_net), 
            .I3(GND_net), .O(n11156));
    defparam i1_2_lut_adj_107.LUT_INIT = 16'h6666;
    SB_LUT4 i8969_3_lut (.I0(\neopxl_color[14] ), .I1(\neopxl_color[15] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13364));
    defparam i8969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1953_3_lut (.I0(n2795), .I1(n2852[22]), .I2(n2819), 
            .I3(GND_net), .O(n2894));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8968_3_lut (.I0(\neopxl_color[12] ), .I1(\neopxl_color[13] ), 
            .I2(bit_ctr[0]), .I3(GND_net), .O(n13363));
    defparam i8968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1945_3_lut (.I0(n2787), .I1(n2852[30]), .I2(n2819), 
            .I3(GND_net), .O(n2886));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1962_3_lut (.I0(n2804), .I1(n2852[13]), .I2(n2819), 
            .I3(GND_net), .O(n2903));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1962_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9206_1_lut (.I0(n1631), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13602));
    defparam i9206_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 timer_632_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(timer[31]), 
            .I3(n10737), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(timer[30]), 
            .I3(n10736), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_18_lut (.I0(GND_net), .I1(n2794), .I2(VCC_net), 
            .I3(n11019), .O(n2852[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1964_3_lut (.I0(n2806), .I1(n2852[11]), .I2(n2819), 
            .I3(GND_net), .O(n2905));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1964_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_18 (.CI(n11019), .I0(n2794), .I1(VCC_net), 
            .CO(n11020));
    SB_CARRY mod_5_add_1808_12 (.CI(n10968), .I0(n2600), .I1(VCC_net), 
            .CO(n10969));
    SB_LUT4 mod_5_i1951_3_lut (.I0(n2793), .I1(n2852[24]), .I2(n2819), 
            .I3(GND_net), .O(n2892));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1951_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1674_2 (.CI(VCC_net), .I0(bit_ctr[11]), .I1(GND_net), 
            .CO(n10918));
    SB_LUT4 mod_5_add_1607_21_lut (.I0(n2324), .I1(n2291), .I2(VCC_net), 
            .I3(n10917), .O(n2390)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_21_lut.LUT_INIT = 16'h8228;
    SB_CARRY timer_632_add_4_32 (.CI(n10736), .I0(GND_net), .I1(timer[30]), 
            .CO(n10737));
    SB_CARRY mod_5_add_1138_4 (.CI(n10795), .I0(n1608), .I1(n1631), .CO(n10796));
    SB_LUT4 sub_14_inv_0_i12_1_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_1406_11 (.CI(n10856), .I0(n2001), .I1(VCC_net), 
            .CO(n10857));
    SB_LUT4 mod_5_i1949_3_lut (.I0(n2791), .I1(n2852[26]), .I2(n2819), 
            .I3(GND_net), .O(n2890));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1968_3_lut (.I0(bit_ctr[7]), .I1(n2852[7]), .I2(n2819), 
            .I3(GND_net), .O(n2909));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1948_3_lut (.I0(n2790), .I1(n2852[27]), .I2(n2819), 
            .I3(GND_net), .O(n2889));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1954_3_lut (.I0(n2796), .I1(n2852[21]), .I2(n2819), 
            .I3(GND_net), .O(n2895));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1954_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1685_3_lut (.I0(n2399), .I1(n2456[22]), .I2(n2423), 
            .I3(GND_net), .O(n2498));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1685_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1947_3_lut (.I0(n2789), .I1(n2852[28]), .I2(n2819), 
            .I3(GND_net), .O(n2888));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1424_3_lut (.I0(bit_ctr[15]), .I1(n2060[15]), .I2(n2027), 
            .I3(GND_net), .O(n2109));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1424_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1946_3_lut (.I0(n2788), .I1(n2852[29]), .I2(n2819), 
            .I3(GND_net), .O(n2887));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1950_3_lut (.I0(n2792), .I1(n2852[25]), .I2(n2819), 
            .I3(GND_net), .O(n2891));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1950_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1957_3_lut (.I0(n2799), .I1(n2852[18]), .I2(n2819), 
            .I3(GND_net), .O(n2898));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1963_3_lut (.I0(n2805), .I1(n2852[12]), .I2(n2819), 
            .I3(GND_net), .O(n2904));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1956_3_lut (.I0(n2798), .I1(n2852[19]), .I2(n2819), 
            .I3(GND_net), .O(n2897));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1956_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1346_3_lut (.I0(n1900), .I1(n1961[26]), .I2(n1928), 
            .I3(GND_net), .O(n1999));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1346_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i13_1_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_108 (.I0(n2490), .I1(n2489), .I2(GND_net), .I3(GND_net), 
            .O(n22_adj_755));
    defparam i1_2_lut_adj_108.LUT_INIT = 16'heeee;
    SB_LUT4 mod_5_i1952_3_lut (.I0(n2794), .I1(n2852[23]), .I2(n2819), 
            .I3(GND_net), .O(n2893));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1952_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_937_3_lut (.I0(GND_net), .I1(n1309), .I2(GND_net), 
            .I3(n10764), .O(n1367[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_10_lut (.I0(GND_net), .I1(n2002), .I2(VCC_net), 
            .I3(n10855), .O(n2060[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_3_lut (.I0(n1609), .I1(n1609), .I2(n13602), 
            .I3(n10794), .O(n1708)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_1808_11_lut (.I0(GND_net), .I1(n2601), .I2(VCC_net), 
            .I3(n10967), .O(n2654[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_937_3 (.CI(n10764), .I0(n1309), .I1(GND_net), .CO(n10765));
    SB_LUT4 timer_632_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(timer[29]), 
            .I3(n10735), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_20_lut (.I0(GND_net), .I1(bit_ctr[18]), .I2(GND_net), 
            .I3(n10630), .O(n255[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut_adj_109 (.I0(n2507), .I1(n2500), .I2(n2502), .I3(n2504), 
            .O(n36_adj_756));
    defparam i15_4_lut_adj_109.LUT_INIT = 16'hfffe;
    SB_CARRY add_21_20 (.CI(n10630), .I0(bit_ctr[18]), .I1(GND_net), .CO(n10631));
    SB_CARRY sub_14_add_2_13 (.CI(n10679), .I0(timer[11]), .I1(n1[11]), 
            .CO(n10680));
    SB_CARRY mod_5_add_1808_11 (.CI(n10967), .I0(n2601), .I1(VCC_net), 
            .CO(n10968));
    SB_LUT4 mod_5_add_1607_20_lut (.I0(GND_net), .I1(n2292), .I2(VCC_net), 
            .I3(n10916), .O(n2357[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1966_3_lut (.I0(n2808), .I1(n2852[9]), .I2(n2819), 
            .I3(GND_net), .O(n2907));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1966_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1607_20 (.CI(n10916), .I0(n2292), .I1(VCC_net), 
            .CO(n10917));
    SB_LUT4 bit_ctr_1__bdd_4_lut (.I0(bit_ctr[1]), .I1(n13363), .I2(n13364), 
            .I3(n11156), .O(n13619));
    defparam bit_ctr_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 mod_5_i1819_3_lut (.I0(n2597), .I1(n2654[22]), .I2(n2621), 
            .I3(GND_net), .O(n2696));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1819_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n13619_bdd_4_lut (.I0(n13619), .I1(n13373), .I2(n13372), .I3(n11156), 
            .O(n13622));
    defparam n13619_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY timer_632_add_4_31 (.CI(n10735), .I0(GND_net), .I1(timer[29]), 
            .CO(n10736));
    SB_LUT4 sub_14_inv_0_i14_1_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_2076_9 (.CI(n11059), .I0(n3003), .I1(n3017), .CO(n11060));
    SB_LUT4 timer_632_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(timer[1]), 
            .I3(n10707), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1345_3_lut (.I0(n1899), .I1(n1961[27]), .I2(n1928), 
            .I3(GND_net), .O(n1998));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1345_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 timer_632_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(timer[28]), 
            .I3(n10734), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_10 (.CI(n10855), .I0(n2002), .I1(VCC_net), 
            .CO(n10856));
    SB_LUT4 i6_3_lut_adj_110 (.I0(n2501), .I1(bit_ctr[10]), .I2(n2509), 
            .I3(GND_net), .O(n27_adj_757));
    defparam i6_3_lut_adj_110.LUT_INIT = 16'heaea;
    SB_LUT4 mod_5_add_1406_9_lut (.I0(GND_net), .I1(n2003), .I2(VCC_net), 
            .I3(n10854), .O(n2060[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1344_3_lut (.I0(n1898), .I1(n1961[28]), .I2(n1928), 
            .I3(GND_net), .O(n1997));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1344_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_632_add_4_3 (.CI(n10707), .I0(GND_net), .I1(timer[1]), 
            .CO(n10708));
    SB_CARRY mod_5_add_1138_3 (.CI(n10794), .I0(n1609), .I1(n13602), .CO(n10795));
    SB_LUT4 sub_14_add_2_12_lut (.I0(GND_net), .I1(timer[10]), .I2(n1[10]), 
            .I3(n10678), .O(one_wire_N_599[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i15_1_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_add_1942_17_lut (.I0(GND_net), .I1(n2795), .I2(VCC_net), 
            .I3(n11018), .O(n2852[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_17 (.CI(n11018), .I0(n2795), .I1(VCC_net), 
            .CO(n11019));
    SB_LUT4 mod_5_add_1808_10_lut (.I0(GND_net), .I1(n2602), .I2(VCC_net), 
            .I3(n10966), .O(n2654[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_19_lut (.I0(GND_net), .I1(n2293), .I2(VCC_net), 
            .I3(n10915), .O(n2357[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_937_2_lut (.I0(GND_net), .I1(bit_ctr[22]), .I2(GND_net), 
            .I3(VCC_net), .O(n1367[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_937_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9151_3_lut (.I0(n2601), .I1(n2654[18]), .I2(n2621), .I3(GND_net), 
            .O(n2700));   // verilog/neopixel.v(22[26:36])
    defparam i9151_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1406_9 (.CI(n10854), .I0(n2003), .I1(VCC_net), 
            .CO(n10855));
    SB_LUT4 timer_632_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(timer[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_16_lut (.I0(GND_net), .I1(n2796), .I2(VCC_net), 
            .I3(n11017), .O(n2852[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_10 (.CI(n10966), .I0(n2602), .I1(VCC_net), 
            .CO(n10967));
    SB_CARRY mod_5_add_1607_19 (.CI(n10915), .I0(n2293), .I1(VCC_net), 
            .CO(n10916));
    SB_CARRY mod_5_add_937_2 (.CI(VCC_net), .I0(bit_ctr[22]), .I1(GND_net), 
            .CO(n10764));
    SB_DFFESS state_i0 (.Q(\state[0] ), .C(CLK_c), .E(n7671), .D(state_3__N_448[0]), 
            .S(n7983));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 mod_5_add_2076_8_lut (.I0(n3004), .I1(n3004), .I2(n3017), 
            .I3(n11058), .O(n3103)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1942_16 (.CI(n11017), .I0(n2796), .I1(VCC_net), 
            .CO(n11018));
    SB_LUT4 mod_5_add_1808_9_lut (.I0(GND_net), .I1(n2603), .I2(VCC_net), 
            .I3(n10965), .O(n2654[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_18_lut (.I0(GND_net), .I1(n2294), .I2(VCC_net), 
            .I3(n10914), .O(n2357[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_18_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR one_wire_108 (.Q(NEOPXL_c), .C(CLK_c), .E(n11988), .D(\neo_pixel_transmitter.done_N_662 ), 
            .R(n12451));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY timer_632_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(timer[0]), 
            .CO(n10707));
    SB_LUT4 mod_5_i1828_3_lut (.I0(n2606), .I1(n2654[13]), .I2(n2621), 
            .I3(GND_net), .O(n2705));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_21_19_lut (.I0(GND_net), .I1(bit_ctr[17]), .I2(GND_net), 
            .I3(n10629), .O(n255[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_10_lut (.I0(n1235), .I1(n1202), .I2(VCC_net), 
            .I3(n10763), .O(n1301)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_i1822_3_lut (.I0(n2600), .I1(n2654[19]), .I2(n2621), 
            .I3(GND_net), .O(n2699));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_14_add_2_12 (.CI(n10678), .I0(timer[10]), .I1(n1[10]), 
            .CO(n10679));
    SB_LUT4 mod_5_add_1406_8_lut (.I0(GND_net), .I1(n2004), .I2(VCC_net), 
            .I3(n10853), .O(n2060[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_9 (.CI(n10965), .I0(n2603), .I1(VCC_net), 
            .CO(n10966));
    SB_CARRY mod_5_add_2076_8 (.CI(n11058), .I0(n3004), .I1(n3017), .CO(n11059));
    SB_CARRY mod_5_add_1607_18 (.CI(n10914), .I0(n2294), .I1(VCC_net), 
            .CO(n10915));
    SB_LUT4 mod_5_add_1942_15_lut (.I0(GND_net), .I1(n2797), .I2(VCC_net), 
            .I3(n11016), .O(n2852[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_8_lut (.I0(GND_net), .I1(n2604), .I2(VCC_net), 
            .I3(n10964), .O(n2654[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_9_lut (.I0(GND_net), .I1(n1203), .I2(VCC_net), 
            .I3(n10762), .O(n1268[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_17_lut (.I0(GND_net), .I1(n2295), .I2(VCC_net), 
            .I3(n10913), .O(n2357[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_17 (.CI(n10913), .I0(n2295), .I1(VCC_net), 
            .CO(n10914));
    SB_LUT4 mod_5_add_2076_7_lut (.I0(n3005), .I1(n3005), .I2(n3017), 
            .I3(n11057), .O(n3104)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_7_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1808_8 (.CI(n10964), .I0(n2604), .I1(VCC_net), 
            .CO(n10965));
    SB_LUT4 mod_5_add_1607_16_lut (.I0(GND_net), .I1(n2296), .I2(VCC_net), 
            .I3(n10912), .O(n2357[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_15 (.CI(n11016), .I0(n2797), .I1(VCC_net), 
            .CO(n11017));
    SB_CARRY mod_5_add_1406_8 (.CI(n10853), .I0(n2004), .I1(VCC_net), 
            .CO(n10854));
    SB_LUT4 mod_5_add_1808_7_lut (.I0(GND_net), .I1(n2605), .I2(VCC_net), 
            .I3(n10963), .O(n2654[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1138_2_lut (.I0(bit_ctr[19]), .I1(bit_ctr[19]), .I2(n13602), 
            .I3(VCC_net), .O(n1709)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1138_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY mod_5_add_1607_16 (.CI(n10912), .I0(n2296), .I1(VCC_net), 
            .CO(n10913));
    SB_LUT4 mod_5_i1820_3_lut (.I0(n2598), .I1(n2654[21]), .I2(n2621), 
            .I3(GND_net), .O(n2697));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1820_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_11_lut (.I0(GND_net), .I1(timer[9]), .I2(n1[9]), 
            .I3(n10677), .O(one_wire_N_599[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_7_lut (.I0(GND_net), .I1(n2005), .I2(VCC_net), 
            .I3(n10852), .O(n2060[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_9 (.CI(n10762), .I0(n1203), .I1(VCC_net), .CO(n10763));
    SB_LUT4 mod_5_i1889_3_lut (.I0(n2699), .I1(n2753[19]), .I2(n2720), 
            .I3(GND_net), .O(n2798));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1889_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_19 (.CI(n10629), .I0(bit_ctr[17]), .I1(GND_net), .CO(n10630));
    SB_CARRY mod_5_add_1808_7 (.CI(n10963), .I0(n2605), .I1(VCC_net), 
            .CO(n10964));
    SB_LUT4 mod_5_add_1607_15_lut (.I0(GND_net), .I1(n2297), .I2(VCC_net), 
            .I3(n10911), .O(n2357[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1138_2 (.CI(VCC_net), .I0(bit_ctr[19]), .I1(n13602), 
            .CO(n10794));
    SB_CARRY timer_632_add_4_30 (.CI(n10734), .I0(GND_net), .I1(timer[28]), 
            .CO(n10735));
    SB_CARRY mod_5_add_1406_7 (.CI(n10852), .I0(n2005), .I1(VCC_net), 
            .CO(n10853));
    SB_CARRY mod_5_add_2076_7 (.CI(n11057), .I0(n3005), .I1(n3017), .CO(n11058));
    SB_LUT4 mod_5_add_1942_14_lut (.I0(GND_net), .I1(n2798), .I2(VCC_net), 
            .I3(n11015), .O(n2852[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_6_lut (.I0(GND_net), .I1(n2606), .I2(VCC_net), 
            .I3(n10962), .O(n2654[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1607_15 (.CI(n10911), .I0(n2297), .I1(VCC_net), 
            .CO(n10912));
    SB_CARRY sub_14_add_2_11 (.CI(n10677), .I0(timer[9]), .I1(n1[9]), 
            .CO(n10678));
    SB_LUT4 mod_5_add_870_8_lut (.I0(GND_net), .I1(n1204), .I2(VCC_net), 
            .I3(n10761), .O(n1268[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_6_lut (.I0(GND_net), .I1(n2006), .I2(VCC_net), 
            .I3(n10851), .O(n2060[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_13_lut (.I0(n1499), .I1(n1499), .I2(n1532), 
            .I3(n10793), .O(n1598)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_13_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 add_21_18_lut (.I0(GND_net), .I1(bit_ctr[16]), .I2(GND_net), 
            .I3(n10628), .O(n255[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_8 (.CI(n10761), .I0(n1204), .I1(VCC_net), .CO(n10762));
    SB_LUT4 mod_5_add_1540_12_lut (.I0(GND_net), .I1(n2200), .I2(VCC_net), 
            .I3(n10890), .O(n2258[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_18 (.CI(n10628), .I0(bit_ctr[16]), .I1(GND_net), .CO(n10629));
    SB_CARRY mod_5_add_1406_6 (.CI(n10851), .I0(n2006), .I1(VCC_net), 
            .CO(n10852));
    SB_LUT4 add_21_17_lut (.I0(GND_net), .I1(bit_ctr[15]), .I2(GND_net), 
            .I3(n10627), .O(n255[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(timer[27]), 
            .I3(n10733), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_870_7_lut (.I0(GND_net), .I1(n1205), .I2(VCC_net), 
            .I3(n10760), .O(n1268[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1683_3_lut (.I0(n2397), .I1(n2456[24]), .I2(n2423), 
            .I3(GND_net), .O(n2496));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1683_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY timer_632_add_4_29 (.CI(n10733), .I0(GND_net), .I1(timer[27]), 
            .CO(n10734));
    SB_LUT4 mod_5_i1887_3_lut (.I0(n2697), .I1(n2753[21]), .I2(n2720), 
            .I3(GND_net), .O(n2796));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1887_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1808_6 (.CI(n10962), .I0(n2606), .I1(VCC_net), 
            .CO(n10963));
    SB_LUT4 mod_5_add_1406_5_lut (.I0(GND_net), .I1(n2007), .I2(VCC_net), 
            .I3(n10850), .O(n2060[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_7 (.CI(n10760), .I0(n1205), .I1(VCC_net), .CO(n10761));
    SB_CARRY mod_5_add_1406_5 (.CI(n10850), .I0(n2007), .I1(VCC_net), 
            .CO(n10851));
    SB_LUT4 mod_5_i1895_3_lut (.I0(n2705), .I1(n2753[13]), .I2(n2720), 
            .I3(GND_net), .O(n2804));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1895_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_10_lut (.I0(GND_net), .I1(timer[8]), .I2(n1[8]), 
            .I3(n10676), .O(one_wire_N_599[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_10 (.CI(n10676), .I0(timer[8]), .I1(n1[8]), 
            .CO(n10677));
    SB_CARRY mod_5_add_1942_14 (.CI(n11015), .I0(n2798), .I1(VCC_net), 
            .CO(n11016));
    SB_LUT4 mod_5_add_1808_5_lut (.I0(GND_net), .I1(n2607), .I2(VCC_net), 
            .I3(n10961), .O(n2654[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1406_4_lut (.I0(GND_net), .I1(n2008), .I2(VCC_net), 
            .I3(n10849), .O(n2060[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1890_3_lut (.I0(n2700), .I1(n2753[18]), .I2(n2720), 
            .I3(GND_net), .O(n2799));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1890_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1406_4 (.CI(n10849), .I0(n2008), .I1(VCC_net), 
            .CO(n10850));
    SB_CARRY mod_5_add_1808_5 (.CI(n10961), .I0(n2607), .I1(VCC_net), 
            .CO(n10962));
    SB_LUT4 mod_5_add_1406_3_lut (.I0(GND_net), .I1(n2009), .I2(GND_net), 
            .I3(n10848), .O(n2060[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1827_3_lut (.I0(n2605), .I1(n2654[14]), .I2(n2621), 
            .I3(GND_net), .O(n2704));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_2076_6_lut (.I0(n3006), .I1(n3006), .I2(n3017), 
            .I3(n11056), .O(n3105)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1406_3 (.CI(n10848), .I0(n2009), .I1(GND_net), 
            .CO(n10849));
    SB_LUT4 mod_5_add_1406_2_lut (.I0(GND_net), .I1(bit_ctr[15]), .I2(GND_net), 
            .I3(VCC_net), .O(n2060[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1406_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_13_lut (.I0(GND_net), .I1(n2799), .I2(VCC_net), 
            .I3(n11014), .O(n2852[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1406_2 (.CI(VCC_net), .I0(bit_ctr[15]), .I1(GND_net), 
            .CO(n10848));
    SB_LUT4 mod_5_add_1808_4_lut (.I0(GND_net), .I1(n2608), .I2(VCC_net), 
            .I3(n10960), .O(n2654[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_17_lut (.I0(n1928), .I1(n1895), .I2(VCC_net), 
            .I3(n10847), .O(n1994)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1339_16_lut (.I0(GND_net), .I1(n1896), .I2(VCC_net), 
            .I3(n10846), .O(n1961[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_9_lut (.I0(GND_net), .I1(timer[7]), .I2(n1[7]), 
            .I3(n10675), .O(one_wire_N_599[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(timer[26]), 
            .I3(n10732), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1684_3_lut (.I0(n2398), .I1(n2456[23]), .I2(n2423), 
            .I3(GND_net), .O(n2497));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1684_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_16 (.CI(n10846), .I0(n1896), .I1(VCC_net), 
            .CO(n10847));
    SB_CARRY mod_5_add_1942_13 (.CI(n11014), .I0(n2799), .I1(VCC_net), 
            .CO(n11015));
    SB_CARRY mod_5_add_1808_4 (.CI(n10960), .I0(n2608), .I1(VCC_net), 
            .CO(n10961));
    SB_LUT4 mod_5_add_1339_15_lut (.I0(GND_net), .I1(n1897), .I2(VCC_net), 
            .I3(n10845), .O(n1961[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_15 (.CI(n10845), .I0(n1897), .I1(VCC_net), 
            .CO(n10846));
    SB_LUT4 mod_5_add_1339_14_lut (.I0(GND_net), .I1(n1898), .I2(VCC_net), 
            .I3(n10844), .O(n1961[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_12_lut (.I0(n1500), .I1(n1500), .I2(n1532), 
            .I3(n10792), .O(n1599)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_12_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1808_3_lut (.I0(GND_net), .I1(n2609), .I2(GND_net), 
            .I3(n10959), .O(n2654[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_14 (.CI(n10844), .I0(n1898), .I1(VCC_net), 
            .CO(n10845));
    SB_CARRY add_21_17 (.CI(n10627), .I0(bit_ctr[15]), .I1(GND_net), .CO(n10628));
    SB_LUT4 mod_5_add_1339_13_lut (.I0(GND_net), .I1(n1899), .I2(VCC_net), 
            .I3(n10843), .O(n1961[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1808_3 (.CI(n10959), .I0(n2609), .I1(GND_net), 
            .CO(n10960));
    SB_CARRY mod_5_add_1339_13 (.CI(n10843), .I0(n1899), .I1(VCC_net), 
            .CO(n10844));
    SB_CARRY timer_632_add_4_28 (.CI(n10732), .I0(GND_net), .I1(timer[26]), 
            .CO(n10733));
    SB_LUT4 mod_5_i1830_3_lut (.I0(n2608), .I1(n2654[11]), .I2(n2621), 
            .I3(GND_net), .O(n2707));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_870_6_lut (.I0(GND_net), .I1(n1206), .I2(VCC_net), 
            .I3(n10759), .O(n1268[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1955_3_lut (.I0(n2797), .I1(n2852[20]), .I2(n2819), 
            .I3(GND_net), .O(n2896));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1339_12_lut (.I0(GND_net), .I1(n1900), .I2(VCC_net), 
            .I3(n10842), .O(n1961[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(timer[25]), 
            .I3(n10731), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_16_lut (.I0(GND_net), .I1(bit_ctr[14]), .I2(GND_net), 
            .I3(n10626), .O(n255[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_9 (.CI(n10675), .I0(timer[7]), .I1(n1[7]), .CO(n10676));
    SB_LUT4 mod_5_add_1942_12_lut (.I0(GND_net), .I1(n2800), .I2(VCC_net), 
            .I3(n11013), .O(n2852[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1808_2_lut (.I0(GND_net), .I1(bit_ctr[9]), .I2(GND_net), 
            .I3(VCC_net), .O(n2654[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1808_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_12 (.CI(n10842), .I0(n1900), .I1(VCC_net), 
            .CO(n10843));
    SB_LUT4 mod_5_add_1339_11_lut (.I0(GND_net), .I1(n1901), .I2(VCC_net), 
            .I3(n10841), .O(n1961[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_11 (.CI(n10841), .I0(n1901), .I1(VCC_net), 
            .CO(n10842));
    SB_CARRY add_21_16 (.CI(n10626), .I0(bit_ctr[14]), .I1(GND_net), .CO(n10627));
    SB_LUT4 mod_5_add_1339_10_lut (.I0(GND_net), .I1(n1902), .I2(VCC_net), 
            .I3(n10840), .O(n1961[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_10 (.CI(n10840), .I0(n1902), .I1(VCC_net), 
            .CO(n10841));
    SB_LUT4 mod_5_add_1339_9_lut (.I0(GND_net), .I1(n1903), .I2(VCC_net), 
            .I3(n10839), .O(n1961[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_870_6 (.CI(n10759), .I0(n1206), .I1(VCC_net), .CO(n10760));
    SB_LUT4 mod_5_i1967_3_lut (.I0(n2809), .I1(n2852[8]), .I2(n2819), 
            .I3(GND_net), .O(n2908));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1967_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_9 (.CI(n10839), .I0(n1903), .I1(VCC_net), 
            .CO(n10840));
    SB_LUT4 sub_14_add_2_8_lut (.I0(GND_net), .I1(timer[6]), .I2(n1[6]), 
            .I3(n10674), .O(one_wire_N_599[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_8 (.CI(n10674), .I0(timer[6]), .I1(n1[6]), .CO(n10675));
    SB_LUT4 mod_5_i1826_rep_14_3_lut (.I0(n2604), .I1(n2654[15]), .I2(n2621), 
            .I3(GND_net), .O(n2703));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1826_rep_14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1897_3_lut (.I0(n2707), .I1(n2753[11]), .I2(n2720), 
            .I3(GND_net), .O(n2806));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1897_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_870_5_lut (.I0(GND_net), .I1(n1207), .I2(VCC_net), 
            .I3(n10758), .O(n1268[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_15_lut (.I0(GND_net), .I1(bit_ctr[13]), .I2(GND_net), 
            .I3(n10625), .O(n255[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_27 (.CI(n10731), .I0(GND_net), .I1(timer[25]), 
            .CO(n10732));
    SB_LUT4 timer_632_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(timer[24]), 
            .I3(n10730), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_8_lut (.I0(GND_net), .I1(n1904), .I2(VCC_net), 
            .I3(n10838), .O(n1961[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_12 (.CI(n10792), .I0(n1500), .I1(n1532), .CO(n10793));
    SB_CARRY mod_5_add_870_5 (.CI(n10758), .I0(n1207), .I1(VCC_net), .CO(n10759));
    SB_LUT4 mod_5_add_870_4_lut (.I0(GND_net), .I1(n1208), .I2(VCC_net), 
            .I3(n10757), .O(n1268[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_29_lut (.I0(n3116), .I1(n3083), .I2(VCC_net), 
            .I3(n11105), .O(n13280)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_29_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2143_28_lut (.I0(GND_net), .I1(n3084), .I2(VCC_net), 
            .I3(n11104), .O(n3149[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_28 (.CI(n11104), .I0(n3084), .I1(VCC_net), 
            .CO(n11105));
    SB_LUT4 mod_5_add_2143_27_lut (.I0(GND_net), .I1(n3085), .I2(VCC_net), 
            .I3(n11103), .O(n3149[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_27 (.CI(n11103), .I0(n3085), .I1(VCC_net), 
            .CO(n11104));
    SB_LUT4 mod_5_add_2143_26_lut (.I0(GND_net), .I1(n3086), .I2(VCC_net), 
            .I3(n11102), .O(n3149[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_26 (.CI(n11102), .I0(n3086), .I1(VCC_net), 
            .CO(n11103));
    SB_LUT4 mod_5_add_2143_25_lut (.I0(GND_net), .I1(n3087), .I2(VCC_net), 
            .I3(n11101), .O(n3149[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_25 (.CI(n11101), .I0(n3087), .I1(VCC_net), 
            .CO(n11102));
    SB_LUT4 mod_5_add_2143_24_lut (.I0(GND_net), .I1(n3088), .I2(VCC_net), 
            .I3(n11100), .O(n3149[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_24 (.CI(n11100), .I0(n3088), .I1(VCC_net), 
            .CO(n11101));
    SB_LUT4 mod_5_add_2143_23_lut (.I0(GND_net), .I1(n3089), .I2(VCC_net), 
            .I3(n11099), .O(n3149[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_23 (.CI(n11099), .I0(n3089), .I1(VCC_net), 
            .CO(n11100));
    SB_LUT4 mod_5_add_2143_22_lut (.I0(GND_net), .I1(n3090), .I2(VCC_net), 
            .I3(n11098), .O(n3149[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_22 (.CI(n11098), .I0(n3090), .I1(VCC_net), 
            .CO(n11099));
    SB_LUT4 mod_5_add_2143_21_lut (.I0(GND_net), .I1(n3091), .I2(VCC_net), 
            .I3(n11097), .O(n3149[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_26 (.CI(n10730), .I0(GND_net), .I1(timer[24]), 
            .CO(n10731));
    SB_LUT4 mod_5_i1893_3_lut (.I0(n2703), .I1(n2753[15]), .I2(n2720), 
            .I3(GND_net), .O(n2802));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1893_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2143_21 (.CI(n11097), .I0(n3091), .I1(VCC_net), 
            .CO(n11098));
    SB_LUT4 mod_5_add_2143_20_lut (.I0(GND_net), .I1(n3092), .I2(VCC_net), 
            .I3(n11096), .O(n3149[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_6 (.CI(n11056), .I0(n3006), .I1(n3017), .CO(n11057));
    SB_CARRY mod_5_add_1942_12 (.CI(n11013), .I0(n2800), .I1(VCC_net), 
            .CO(n11014));
    SB_CARRY mod_5_add_2143_20 (.CI(n11096), .I0(n3092), .I1(VCC_net), 
            .CO(n11097));
    SB_CARRY mod_5_add_1808_2 (.CI(VCC_net), .I0(bit_ctr[9]), .I1(GND_net), 
            .CO(n10959));
    SB_LUT4 mod_5_add_1071_11_lut (.I0(n1501), .I1(n1501), .I2(n1532), 
            .I3(n10791), .O(n1600)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1339_8 (.CI(n10838), .I0(n1904), .I1(VCC_net), 
            .CO(n10839));
    SB_LUT4 timer_632_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(timer[23]), 
            .I3(n10729), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1339_7_lut (.I0(GND_net), .I1(n1905), .I2(VCC_net), 
            .I3(n10837), .O(n1961[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_11 (.CI(n10791), .I0(n1501), .I1(n1532), .CO(n10792));
    SB_LUT4 mod_5_add_1942_11_lut (.I0(GND_net), .I1(n2801), .I2(VCC_net), 
            .I3(n11012), .O(n2852[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_23_lut (.I0(n2522), .I1(n2489), .I2(VCC_net), 
            .I3(n10958), .O(n2588)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_1071_10_lut (.I0(n1502), .I1(n1502), .I2(n1532), 
            .I3(n10790), .O(n1601)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1339_7 (.CI(n10837), .I0(n1905), .I1(VCC_net), 
            .CO(n10838));
    SB_CARRY mod_5_add_1942_11 (.CI(n11012), .I0(n2801), .I1(VCC_net), 
            .CO(n11013));
    SB_LUT4 mod_5_add_1339_6_lut (.I0(GND_net), .I1(n1906), .I2(VCC_net), 
            .I3(n10836), .O(n1961[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_22_lut (.I0(GND_net), .I1(n2490), .I2(VCC_net), 
            .I3(n10957), .O(n2555[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_10_lut (.I0(GND_net), .I1(n2802), .I2(VCC_net), 
            .I3(n11011), .O(n2852[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_22 (.CI(n10957), .I0(n2490), .I1(VCC_net), 
            .CO(n10958));
    SB_CARRY mod_5_add_1942_10 (.CI(n11011), .I0(n2802), .I1(VCC_net), 
            .CO(n11012));
    SB_CARRY mod_5_add_870_4 (.CI(n10757), .I0(n1208), .I1(VCC_net), .CO(n10758));
    SB_CARRY mod_5_add_1339_6 (.CI(n10836), .I0(n1906), .I1(VCC_net), 
            .CO(n10837));
    SB_LUT4 mod_5_add_1942_9_lut (.I0(GND_net), .I1(n2803), .I2(VCC_net), 
            .I3(n11010), .O(n2852[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_10 (.CI(n10790), .I0(n1502), .I1(n1532), .CO(n10791));
    SB_LUT4 mod_5_add_1339_5_lut (.I0(GND_net), .I1(n1907), .I2(VCC_net), 
            .I3(n10835), .O(n1961[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_21_lut (.I0(GND_net), .I1(n2491), .I2(VCC_net), 
            .I3(n10956), .O(n2555[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_9 (.CI(n11010), .I0(n2803), .I1(VCC_net), 
            .CO(n11011));
    SB_LUT4 mod_5_add_1942_8_lut (.I0(GND_net), .I1(n2804), .I2(VCC_net), 
            .I3(n11009), .O(n2852[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1339_5 (.CI(n10835), .I0(n1907), .I1(VCC_net), 
            .CO(n10836));
    SB_LUT4 mod_5_i1894_3_lut (.I0(n2704), .I1(n2753[14]), .I2(n2720), 
            .I3(GND_net), .O(n2803));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1894_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9134_3_lut (.I0(n2602), .I1(n2654[17]), .I2(n2621), .I3(GND_net), 
            .O(n2701));   // verilog/neopixel.v(22[26:36])
    defparam i9134_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1741_21 (.CI(n10956), .I0(n2491), .I1(VCC_net), 
            .CO(n10957));
    SB_LUT4 mod_5_add_1741_20_lut (.I0(GND_net), .I1(n2492), .I2(VCC_net), 
            .I3(n10955), .O(n2555[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_8 (.CI(n11009), .I0(n2804), .I1(VCC_net), 
            .CO(n11010));
    SB_LUT4 mod_5_add_2076_5_lut (.I0(n3007), .I1(n3007), .I2(n3017), 
            .I3(n11055), .O(n3106)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1741_20 (.CI(n10955), .I0(n2492), .I1(VCC_net), 
            .CO(n10956));
    SB_LUT4 mod_5_add_1942_7_lut (.I0(GND_net), .I1(n2805), .I2(VCC_net), 
            .I3(n11008), .O(n2852[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1741_19_lut (.I0(GND_net), .I1(n2493), .I2(VCC_net), 
            .I3(n10954), .O(n2555[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_7 (.CI(n11008), .I0(n2805), .I1(VCC_net), 
            .CO(n11009));
    SB_LUT4 mod_5_add_1339_4_lut (.I0(GND_net), .I1(n1908), .I2(VCC_net), 
            .I3(n10834), .O(n1961[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_9_lut (.I0(n1503), .I1(n1503), .I2(n1532), 
            .I3(n10789), .O(n1602)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2076_5 (.CI(n11055), .I0(n3007), .I1(n3017), .CO(n11056));
    SB_CARRY mod_5_add_1339_4 (.CI(n10834), .I0(n1908), .I1(VCC_net), 
            .CO(n10835));
    SB_CARRY mod_5_add_1741_19 (.CI(n10954), .I0(n2493), .I1(VCC_net), 
            .CO(n10955));
    SB_LUT4 mod_5_add_1339_3_lut (.I0(GND_net), .I1(n1909), .I2(GND_net), 
            .I3(n10833), .O(n1961[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9135_3_lut (.I0(n2701), .I1(n2753[17]), .I2(n2720), .I3(GND_net), 
            .O(n2800));   // verilog/neopixel.v(22[26:36])
    defparam i9135_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1339_3 (.CI(n10833), .I0(n1909), .I1(GND_net), 
            .CO(n10834));
    SB_CARRY mod_5_add_1071_9 (.CI(n10789), .I0(n1503), .I1(n1532), .CO(n10790));
    SB_LUT4 mod_5_add_1339_2_lut (.I0(GND_net), .I1(bit_ctr[16]), .I2(GND_net), 
            .I3(VCC_net), .O(n1961[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1339_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_6_lut (.I0(GND_net), .I1(n2806), .I2(VCC_net), 
            .I3(n11007), .O(n2852[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_8_lut (.I0(n1504), .I1(n1504), .I2(n1532), 
            .I3(n10788), .O(n1603)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1339_2 (.CI(VCC_net), .I0(bit_ctr[16]), .I1(GND_net), 
            .CO(n10833));
    SB_CARRY mod_5_add_1942_6 (.CI(n11007), .I0(n2806), .I1(VCC_net), 
            .CO(n11008));
    SB_LUT4 mod_5_add_1741_18_lut (.I0(GND_net), .I1(n2494), .I2(VCC_net), 
            .I3(n10953), .O(n2555[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1942_5_lut (.I0(GND_net), .I1(n2807), .I2(VCC_net), 
            .I3(n11006), .O(n2852[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_8 (.CI(n10788), .I0(n1504), .I1(n1532), .CO(n10789));
    SB_LUT4 mod_5_i1832_3_lut (.I0(bit_ctr[9]), .I1(n2654[9]), .I2(n2621), 
            .I3(GND_net), .O(n2709));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1741_18 (.CI(n10953), .I0(n2494), .I1(VCC_net), 
            .CO(n10954));
    SB_LUT4 mod_5_add_1272_16_lut (.I0(n1796), .I1(n1796), .I2(n1829), 
            .I3(n10832), .O(n1895)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_16_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1741_17_lut (.I0(GND_net), .I1(n2495), .I2(VCC_net), 
            .I3(n10952), .O(n2555[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1942_5 (.CI(n11006), .I0(n2807), .I1(VCC_net), 
            .CO(n11007));
    SB_LUT4 mod_5_add_1942_4_lut (.I0(GND_net), .I1(n2808), .I2(VCC_net), 
            .I3(n11005), .O(n2852[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1818_3_lut (.I0(n2596), .I1(n2654[23]), .I2(n2621), 
            .I3(GND_net), .O(n2695));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1818_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_4 (.CI(n11005), .I0(n2808), .I1(VCC_net), 
            .CO(n11006));
    SB_LUT4 mod_5_i1885_3_lut (.I0(n2695), .I1(n2753[23]), .I2(n2720), 
            .I3(GND_net), .O(n2794));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1942_3_lut (.I0(GND_net), .I1(n2809), .I2(GND_net), 
            .I3(n11004), .O(n2852[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_17 (.CI(n10952), .I0(n2495), .I1(VCC_net), 
            .CO(n10953));
    SB_LUT4 mod_5_i1899_3_lut (.I0(n2709), .I1(n2753[9]), .I2(n2720), 
            .I3(GND_net), .O(n2808));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1942_3 (.CI(n11004), .I0(n2809), .I1(GND_net), 
            .CO(n11005));
    SB_LUT4 mod_5_add_1741_16_lut (.I0(GND_net), .I1(n2496), .I2(VCC_net), 
            .I3(n10951), .O(n2555[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1811_3_lut (.I0(n2589), .I1(n2654[30]), .I2(n2621), 
            .I3(GND_net), .O(n2688));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1811_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1942_2_lut (.I0(GND_net), .I1(bit_ctr[7]), .I2(GND_net), 
            .I3(VCC_net), .O(n2852[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1942_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_15_lut (.I0(n1797), .I1(n1797), .I2(n1829), 
            .I3(n10831), .O(n1896)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_15_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1272_15 (.CI(n10831), .I0(n1797), .I1(n1829), .CO(n10832));
    SB_CARRY mod_5_add_1942_2 (.CI(VCC_net), .I0(bit_ctr[7]), .I1(GND_net), 
            .CO(n11004));
    SB_LUT4 mod_5_add_1071_7_lut (.I0(n1505), .I1(n1505), .I2(n1532), 
            .I3(n10787), .O(n1604)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_7_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1272_14_lut (.I0(n1798), .I1(n1798), .I2(n1829), 
            .I3(n10830), .O(n1897)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1875_25_lut (.I0(n2720), .I1(n2687), .I2(VCC_net), 
            .I3(n11003), .O(n2786)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_25_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_21_15 (.CI(n10625), .I0(bit_ctr[13]), .I1(GND_net), .CO(n10626));
    SB_LUT4 mod_5_add_870_3_lut (.I0(GND_net), .I1(n1209), .I2(GND_net), 
            .I3(n10756), .O(n1268[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_14 (.CI(n10830), .I0(n1798), .I1(n1829), .CO(n10831));
    SB_LUT4 mod_5_add_2076_4_lut (.I0(n3008), .I1(n3008), .I2(n3017), 
            .I3(n11054), .O(n3107)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1878_3_lut (.I0(n2688), .I1(n2753[30]), .I2(n2720), 
            .I3(GND_net), .O(n2787));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1272_13_lut (.I0(n1799), .I1(n1799), .I2(n1829), 
            .I3(n10829), .O(n1898)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1071_7 (.CI(n10787), .I0(n1505), .I1(n1532), .CO(n10788));
    SB_CARRY mod_5_add_1272_13 (.CI(n10829), .I0(n1799), .I1(n1829), .CO(n10830));
    SB_LUT4 mod_5_add_1272_12_lut (.I0(n1800), .I1(n1800), .I2(n1829), 
            .I3(n10828), .O(n1899)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_12_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_14_add_2_7_lut (.I0(GND_net), .I1(timer[5]), .I2(n1[5]), 
            .I3(n10673), .O(one_wire_N_599[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_12 (.CI(n10828), .I0(n1800), .I1(n1829), .CO(n10829));
    SB_CARRY timer_632_add_4_25 (.CI(n10729), .I0(GND_net), .I1(timer[23]), 
            .CO(n10730));
    SB_CARRY mod_5_add_1741_16 (.CI(n10951), .I0(n2496), .I1(VCC_net), 
            .CO(n10952));
    SB_LUT4 mod_5_i1815_3_lut (.I0(n2593), .I1(n2654[26]), .I2(n2621), 
            .I3(GND_net), .O(n2692));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1815_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1875_24_lut (.I0(GND_net), .I1(n2688), .I2(VCC_net), 
            .I3(n11002), .O(n2753[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1814_3_lut (.I0(n2592), .I1(n2654[27]), .I2(n2621), 
            .I3(GND_net), .O(n2691));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1814_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1741_15_lut (.I0(GND_net), .I1(n2497), .I2(VCC_net), 
            .I3(n10950), .O(n2555[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_24 (.CI(n11002), .I0(n2688), .I1(VCC_net), 
            .CO(n11003));
    SB_LUT4 mod_5_add_1272_11_lut (.I0(n1801), .I1(n1801), .I2(n1829), 
            .I3(n10827), .O(n1900)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1071_6_lut (.I0(n1506), .I1(n1506), .I2(n1532), 
            .I3(n10786), .O(n1605)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1272_11 (.CI(n10827), .I0(n1801), .I1(n1829), .CO(n10828));
    SB_LUT4 mod_5_add_1272_10_lut (.I0(n1802), .I1(n1802), .I2(n1829), 
            .I3(n10826), .O(n1901)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1816_3_lut (.I0(n2594), .I1(n2654[25]), .I2(n2621), 
            .I3(GND_net), .O(n2693));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1816_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1071_6 (.CI(n10786), .I0(n1506), .I1(n1532), .CO(n10787));
    SB_LUT4 mod_5_i1884_3_lut (.I0(n2694), .I1(n2753[24]), .I2(n2720), 
            .I3(GND_net), .O(n2793));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1884_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1272_10 (.CI(n10826), .I0(n1802), .I1(n1829), .CO(n10827));
    SB_CARRY mod_5_add_2076_4 (.CI(n11054), .I0(n3008), .I1(n3017), .CO(n11055));
    SB_LUT4 mod_5_add_1875_23_lut (.I0(GND_net), .I1(n2689), .I2(VCC_net), 
            .I3(n11001), .O(n2753[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_19_lut (.I0(GND_net), .I1(n3093), .I2(VCC_net), 
            .I3(n11095), .O(n3149[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_3_lut (.I0(n3009), .I1(n3009), .I2(n13600), 
            .I3(n11053), .O(n3108)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY mod_5_add_1875_23 (.CI(n11001), .I0(n2689), .I1(VCC_net), 
            .CO(n11002));
    SB_LUT4 mod_5_i1882_3_lut (.I0(n2692), .I1(n2753[26]), .I2(n2720), 
            .I3(GND_net), .O(n2791));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1882_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2076_3 (.CI(n11053), .I0(n3009), .I1(n13600), .CO(n11054));
    SB_LUT4 mod_5_add_2076_2_lut (.I0(bit_ctr[5]), .I1(bit_ctr[5]), .I2(n13600), 
            .I3(VCC_net), .O(n3109)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY mod_5_add_2076_2 (.CI(VCC_net), .I0(bit_ctr[5]), .I1(n13600), 
            .CO(n11053));
    SB_CARRY mod_5_add_2143_19 (.CI(n11095), .I0(n3093), .I1(VCC_net), 
            .CO(n11096));
    SB_LUT4 mod_5_add_2009_27_lut (.I0(n2918), .I1(n2885), .I2(VCC_net), 
            .I3(n11052), .O(n2984)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_27_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mod_5_add_2143_18_lut (.I0(GND_net), .I1(n3094), .I2(VCC_net), 
            .I3(n11094), .O(n3149[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_18 (.CI(n11094), .I0(n3094), .I1(VCC_net), 
            .CO(n11095));
    SB_LUT4 mod_5_add_2009_26_lut (.I0(GND_net), .I1(n2886), .I2(VCC_net), 
            .I3(n11051), .O(n2951[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_17_lut (.I0(GND_net), .I1(n3095), .I2(VCC_net), 
            .I3(n11093), .O(n3149[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_17 (.CI(n11093), .I0(n3095), .I1(VCC_net), 
            .CO(n11094));
    SB_CARRY mod_5_add_2009_26 (.CI(n11051), .I0(n2886), .I1(VCC_net), 
            .CO(n11052));
    SB_LUT4 mod_5_add_1875_22_lut (.I0(GND_net), .I1(n2690), .I2(VCC_net), 
            .I3(n11000), .O(n2753[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_25_lut (.I0(GND_net), .I1(n2887), .I2(VCC_net), 
            .I3(n11050), .O(n2951[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_15 (.CI(n10950), .I0(n2497), .I1(VCC_net), 
            .CO(n10951));
    SB_LUT4 mod_5_add_1272_9_lut (.I0(n1803), .I1(n1803), .I2(n1829), 
            .I3(n10825), .O(n1902)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2009_25 (.CI(n11050), .I0(n2887), .I1(VCC_net), 
            .CO(n11051));
    SB_CARRY mod_5_add_1272_9 (.CI(n10825), .I0(n1803), .I1(n1829), .CO(n10826));
    SB_LUT4 mod_5_add_1071_5_lut (.I0(n1507), .I1(n1507), .I2(n1532), 
            .I3(n10785), .O(n1606)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_5_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1272_8_lut (.I0(n1804), .I1(n1804), .I2(n1829), 
            .I3(n10824), .O(n1903)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_870_3 (.CI(n10756), .I0(n1209), .I1(GND_net), .CO(n10757));
    SB_CARRY mod_5_add_1272_8 (.CI(n10824), .I0(n1804), .I1(n1829), .CO(n10825));
    SB_LUT4 mod_5_add_2009_24_lut (.I0(GND_net), .I1(n2888), .I2(VCC_net), 
            .I3(n11049), .O(n2951[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_7_lut (.I0(n1805), .I1(n1805), .I2(n1829), 
            .I3(n10823), .O(n1904)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_7_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1883_3_lut (.I0(n2693), .I1(n2753[25]), .I2(n2720), 
            .I3(GND_net), .O(n2792));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1883_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_2009_24 (.CI(n11049), .I0(n2888), .I1(VCC_net), 
            .CO(n11050));
    SB_CARRY mod_5_add_1272_7 (.CI(n10823), .I0(n1805), .I1(n1829), .CO(n10824));
    SB_LUT4 mod_5_add_2009_23_lut (.I0(GND_net), .I1(n2889), .I2(VCC_net), 
            .I3(n11048), .O(n2951[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_22 (.CI(n11000), .I0(n2690), .I1(VCC_net), 
            .CO(n11001));
    SB_LUT4 mod_5_add_1741_14_lut (.I0(GND_net), .I1(n2498), .I2(VCC_net), 
            .I3(n10949), .O(n2555[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_23 (.CI(n11048), .I0(n2889), .I1(VCC_net), 
            .CO(n11049));
    SB_LUT4 mod_5_i1881_3_lut (.I0(n2691), .I1(n2753[27]), .I2(n2720), 
            .I3(GND_net), .O(n2790));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_2009_22_lut (.I0(GND_net), .I1(n2890), .I2(VCC_net), 
            .I3(n11047), .O(n2951[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_21_lut (.I0(GND_net), .I1(n2691), .I2(VCC_net), 
            .I3(n10999), .O(n2753[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_22 (.CI(n11047), .I0(n2890), .I1(VCC_net), 
            .CO(n11048));
    SB_LUT4 mod_5_i1898_3_lut (.I0(n2708), .I1(n2753[10]), .I2(n2720), 
            .I3(GND_net), .O(n2807));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1898_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_2009_21_lut (.I0(GND_net), .I1(n2891), .I2(VCC_net), 
            .I3(n11046), .O(n2951[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_21 (.CI(n11046), .I0(n2891), .I1(VCC_net), 
            .CO(n11047));
    SB_LUT4 mod_5_add_2009_20_lut (.I0(GND_net), .I1(n2892), .I2(VCC_net), 
            .I3(n11045), .O(n2951[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2009_20 (.CI(n11045), .I0(n2892), .I1(VCC_net), 
            .CO(n11046));
    SB_LUT4 mod_5_add_2009_19_lut (.I0(GND_net), .I1(n2893), .I2(VCC_net), 
            .I3(n11044), .O(n2951[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_7 (.CI(n10673), .I0(timer[5]), .I1(n1[5]), .CO(n10674));
    SB_CARRY mod_5_add_2009_19 (.CI(n11044), .I0(n2893), .I1(VCC_net), 
            .CO(n11045));
    SB_LUT4 add_21_14_lut (.I0(GND_net), .I1(bit_ctr[12]), .I2(GND_net), 
            .I3(n10624), .O(n255[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_18_lut (.I0(GND_net), .I1(n2894), .I2(VCC_net), 
            .I3(n11043), .O(n2951[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_14 (.CI(n10949), .I0(n2498), .I1(VCC_net), 
            .CO(n10950));
    SB_LUT4 mod_5_add_1272_6_lut (.I0(n1806), .I1(n1806), .I2(n1829), 
            .I3(n10822), .O(n1905)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_6_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i13_4_lut_adj_111 (.I0(n2495), .I1(n2497), .I2(n2496), .I3(n2498), 
            .O(n34_adj_758));
    defparam i13_4_lut_adj_111.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_1272_6 (.CI(n10822), .I0(n1806), .I1(n1829), .CO(n10823));
    SB_CARRY mod_5_add_2009_18 (.CI(n11043), .I0(n2894), .I1(VCC_net), 
            .CO(n11044));
    SB_CARRY mod_5_add_1071_5 (.CI(n10785), .I0(n1507), .I1(n1532), .CO(n10786));
    SB_LUT4 mod_5_add_1071_4_lut (.I0(n1508), .I1(n1508), .I2(n1532), 
            .I3(n10784), .O(n1607)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1741_13_lut (.I0(GND_net), .I1(n2499), .I2(VCC_net), 
            .I3(n10948), .O(n2555[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_13 (.CI(n10891), .I0(n2199), .I1(VCC_net), 
            .CO(n10892));
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\neo_pixel_transmitter.done ), 
            .I3(n9747), .O(n12381));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hdfdd;
    SB_LUT4 mod_5_add_1540_13_lut (.I0(GND_net), .I1(n2199), .I2(VCC_net), 
            .I3(n10891), .O(n2258[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2009_17_lut (.I0(GND_net), .I1(n2895), .I2(VCC_net), 
            .I3(n11042), .O(n2951[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1071_4 (.CI(n10784), .I0(n1508), .I1(n1532), .CO(n10785));
    SB_LUT4 mod_5_i1958_3_lut (.I0(n2800), .I1(n2852[17]), .I2(n2819), 
            .I3(GND_net), .O(n2899));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1958_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_870_2_lut (.I0(GND_net), .I1(bit_ctr[23]), .I2(GND_net), 
            .I3(VCC_net), .O(n1268[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_870_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_13 (.CI(n10948), .I0(n2499), .I1(VCC_net), 
            .CO(n10949));
    SB_CARRY add_21_14 (.CI(n10624), .I0(bit_ctr[12]), .I1(GND_net), .CO(n10625));
    SB_LUT4 mod_5_add_1741_12_lut (.I0(GND_net), .I1(n2500), .I2(VCC_net), 
            .I3(n10947), .O(n2555[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_21 (.CI(n10999), .I0(n2691), .I1(VCC_net), 
            .CO(n11000));
    SB_LUT4 mod_5_add_1875_20_lut (.I0(GND_net), .I1(n2692), .I2(VCC_net), 
            .I3(n10998), .O(n2753[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_5_lut (.I0(n1807), .I1(n1807), .I2(n1829), 
            .I3(n10821), .O(n1906)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2009_17 (.CI(n11042), .I0(n2895), .I1(VCC_net), 
            .CO(n11043));
    SB_CARRY mod_5_add_1540_14 (.CI(n10892), .I0(n2198), .I1(VCC_net), 
            .CO(n10893));
    SB_CARRY mod_5_add_870_2 (.CI(VCC_net), .I0(bit_ctr[23]), .I1(GND_net), 
            .CO(n10756));
    SB_LUT4 mod_5_add_2009_16_lut (.I0(GND_net), .I1(n2896), .I2(VCC_net), 
            .I3(n11041), .O(n2951[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_3_lut_adj_112 (.I0(bit_ctr[6]), .I1(n2889), .I2(n2909), 
            .I3(GND_net), .O(n30_adj_759));
    defparam i5_3_lut_adj_112.LUT_INIT = 16'hecec;
    SB_CARRY mod_5_add_2009_16 (.CI(n11041), .I0(n2896), .I1(VCC_net), 
            .CO(n11042));
    SB_LUT4 mod_5_add_2143_16_lut (.I0(GND_net), .I1(n3096), .I2(VCC_net), 
            .I3(n11092), .O(n3149[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_16 (.CI(n11092), .I0(n3096), .I1(VCC_net), 
            .CO(n11093));
    SB_LUT4 mod_5_add_2143_15_lut (.I0(GND_net), .I1(n3097), .I2(VCC_net), 
            .I3(n11091), .O(n3149[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_20 (.CI(n10998), .I0(n2692), .I1(VCC_net), 
            .CO(n10999));
    SB_CARRY mod_5_add_2143_15 (.CI(n11091), .I0(n3097), .I1(VCC_net), 
            .CO(n11092));
    SB_LUT4 mod_5_add_2143_14_lut (.I0(GND_net), .I1(n3098), .I2(VCC_net), 
            .I3(n11090), .O(n3149[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_14 (.CI(n11090), .I0(n3098), .I1(VCC_net), 
            .CO(n11091));
    SB_LUT4 mod_5_add_2143_13_lut (.I0(GND_net), .I1(n3099), .I2(VCC_net), 
            .I3(n11089), .O(n3149[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_13 (.CI(n11089), .I0(n3099), .I1(VCC_net), 
            .CO(n11090));
    SB_LUT4 mod_5_add_2009_15_lut (.I0(GND_net), .I1(n2897), .I2(VCC_net), 
            .I3(n11040), .O(n2951[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_19_lut (.I0(GND_net), .I1(n2693), .I2(VCC_net), 
            .I3(n10997), .O(n2753[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_12 (.CI(n10947), .I0(n2500), .I1(VCC_net), 
            .CO(n10948));
    SB_CARRY mod_5_add_1272_5 (.CI(n10821), .I0(n1807), .I1(n1829), .CO(n10822));
    SB_LUT4 mod_5_add_2143_12_lut (.I0(GND_net), .I1(n3100), .I2(VCC_net), 
            .I3(n11088), .O(n3149[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_4_lut (.I0(n1808), .I1(n1808), .I2(n1829), 
            .I3(n10820), .O(n1907)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_803_9_lut (.I0(n1136), .I1(n1103), .I2(VCC_net), 
            .I3(n10755), .O(n1202)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY mod_5_add_2143_12 (.CI(n11088), .I0(n3100), .I1(VCC_net), 
            .CO(n11089));
    SB_LUT4 mod_5_add_803_8_lut (.I0(GND_net), .I1(n1104), .I2(VCC_net), 
            .I3(n10754), .O(n1169[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_14_lut (.I0(GND_net), .I1(n2198), .I2(VCC_net), 
            .I3(n10892), .O(n2258[25])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2143_11_lut (.I0(GND_net), .I1(n3101), .I2(VCC_net), 
            .I3(n11087), .O(n3149[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1540_15 (.CI(n10893), .I0(n2197), .I1(VCC_net), 
            .CO(n10894));
    SB_LUT4 timer_632_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(timer[22]), 
            .I3(n10728), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_11 (.CI(n11087), .I0(n3101), .I1(VCC_net), 
            .CO(n11088));
    SB_CARRY mod_5_add_1272_4 (.CI(n10820), .I0(n1808), .I1(n1829), .CO(n10821));
    SB_LUT4 mod_5_add_2143_10_lut (.I0(GND_net), .I1(n3102), .I2(VCC_net), 
            .I3(n11086), .O(n3149[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_13_lut (.I0(GND_net), .I1(bit_ctr[11]), .I2(GND_net), 
            .I3(n10623), .O(n255[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_10 (.CI(n11086), .I0(n3102), .I1(VCC_net), 
            .CO(n11087));
    SB_CARRY timer_632_add_4_24 (.CI(n10728), .I0(GND_net), .I1(timer[22]), 
            .CO(n10729));
    SB_LUT4 mod_5_add_2143_9_lut (.I0(GND_net), .I1(n3103), .I2(VCC_net), 
            .I3(n11085), .O(n3149[11])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_9 (.CI(n11085), .I0(n3103), .I1(VCC_net), 
            .CO(n11086));
    SB_LUT4 mod_5_add_1741_11_lut (.I0(GND_net), .I1(n2501), .I2(VCC_net), 
            .I3(n10946), .O(n2555[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1272_3_lut (.I0(n1809), .I1(n1809), .I2(n13605), 
            .I3(n10819), .O(n1908)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_2143_8_lut (.I0(GND_net), .I1(n3104), .I2(VCC_net), 
            .I3(n11084), .O(n3149[10])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_8 (.CI(n11084), .I0(n3104), .I1(VCC_net), 
            .CO(n11085));
    SB_LUT4 mod_5_add_2143_7_lut (.I0(GND_net), .I1(n3105), .I2(VCC_net), 
            .I3(n11083), .O(n3149[9])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_7 (.CI(n11083), .I0(n3105), .I1(VCC_net), 
            .CO(n11084));
    SB_LUT4 mod_5_add_2143_6_lut (.I0(GND_net), .I1(n3106), .I2(VCC_net), 
            .I3(n11082), .O(n3149[8])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state_3__N_448[1] ), 
            .I3(update_color), .O(n10_adj_760));
    defparam i4_4_lut_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY mod_5_add_2143_6 (.CI(n11082), .I0(n3106), .I1(VCC_net), 
            .CO(n11083));
    SB_LUT4 mod_5_add_2143_5_lut (.I0(GND_net), .I1(n3107), .I2(VCC_net), 
            .I3(n11081), .O(n3149[7])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2143_5 (.CI(n11081), .I0(n3107), .I1(VCC_net), 
            .CO(n11082));
    SB_LUT4 mod_5_add_2143_4_lut (.I0(GND_net), .I1(n3108), .I2(VCC_net), 
            .I3(n11080), .O(n3149[6])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_3 (.CI(n10819), .I0(n1809), .I1(n13605), .CO(n10820));
    SB_CARRY mod_5_add_2143_4 (.CI(n11080), .I0(n3108), .I1(VCC_net), 
            .CO(n11081));
    SB_LUT4 timer_632_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(timer[21]), 
            .I3(n10727), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_3_lut (.I0(n1509), .I1(n1509), .I2(n13604), 
            .I3(n10783), .O(n1608)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_2143_3_lut (.I0(GND_net), .I1(n3109), .I2(GND_net), 
            .I3(n11079), .O(n3149[5])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_15_lut (.I0(GND_net), .I1(n2197), .I2(VCC_net), 
            .I3(n10893), .O(n2258[26])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i16_1_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY mod_5_add_1540_16 (.CI(n10894), .I0(n2196), .I1(VCC_net), 
            .CO(n10895));
    SB_CARRY mod_5_add_2143_3 (.CI(n11079), .I0(n3109), .I1(GND_net), 
            .CO(n11080));
    SB_CARRY mod_5_add_1071_3 (.CI(n10783), .I0(n1509), .I1(n13604), .CO(n10784));
    SB_LUT4 i14_4_lut_adj_113 (.I0(n2891), .I1(n2887), .I2(n2888), .I3(n2895), 
            .O(n39_adj_761));
    defparam i14_4_lut_adj_113.LUT_INIT = 16'hfffe;
    SB_CARRY mod_5_add_803_8 (.CI(n10754), .I0(n1104), .I1(VCC_net), .CO(n10755));
    SB_LUT4 mod_5_add_2143_2_lut (.I0(GND_net), .I1(bit_ctr[4]), .I2(GND_net), 
            .I3(VCC_net), .O(n3149[4])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2143_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_21_13 (.CI(n10623), .I0(bit_ctr[11]), .I1(GND_net), .CO(n10624));
    SB_CARRY mod_5_add_2143_2 (.CI(VCC_net), .I0(bit_ctr[4]), .I1(GND_net), 
            .CO(n11079));
    SB_LUT4 i9173_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(n3901), 
            .I3(n13435), .O(n7657));
    defparam i9173_4_lut_4_lut.LUT_INIT = 16'h0c1d;
    SB_LUT4 sub_14_add_2_6_lut (.I0(GND_net), .I1(timer[4]), .I2(n1[4]), 
            .I3(n10672), .O(one_wire_N_599[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_28_lut (.I0(n2984), .I1(n2984), .I2(n3017), 
            .I3(n11078), .O(n3083)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_28_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_2076_27_lut (.I0(n2985), .I1(n2985), .I2(n3017), 
            .I3(n11077), .O(n3084)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_27_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1875_19 (.CI(n10997), .I0(n2693), .I1(VCC_net), 
            .CO(n10998));
    SB_CARRY mod_5_add_2076_27 (.CI(n11077), .I0(n2985), .I1(n3017), .CO(n11078));
    SB_CARRY mod_5_add_2009_15 (.CI(n11040), .I0(n2897), .I1(VCC_net), 
            .CO(n11041));
    SB_LUT4 mod_5_add_1875_18_lut (.I0(GND_net), .I1(n2694), .I2(VCC_net), 
            .I3(n10996), .O(n2753[24])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_11 (.CI(n10946), .I0(n2501), .I1(VCC_net), 
            .CO(n10947));
    SB_LUT4 mod_5_add_1272_2_lut (.I0(bit_ctr[17]), .I1(bit_ctr[17]), .I2(n13605), 
            .I3(VCC_net), .O(n1909)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1272_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mod_5_add_803_7_lut (.I0(GND_net), .I1(n1105), .I2(VCC_net), 
            .I3(n10753), .O(n1169[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_16_lut (.I0(GND_net), .I1(n2196), .I2(VCC_net), 
            .I3(n10894), .O(n2258[27])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_23 (.CI(n10727), .I0(GND_net), .I1(timer[21]), 
            .CO(n10728));
    SB_LUT4 sub_14_add_2_33_lut (.I0(n13209), .I1(timer[31]), .I2(n1[31]), 
            .I3(n10699), .O(n7608)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_33_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i13_3_lut_adj_114 (.I0(n2906), .I1(n2886), .I2(n2885), .I3(GND_net), 
            .O(n38_adj_762));
    defparam i13_3_lut_adj_114.LUT_INIT = 16'hfefe;
    SB_CARRY mod_5_add_1875_18 (.CI(n10996), .I0(n2694), .I1(VCC_net), 
            .CO(n10997));
    SB_LUT4 mod_5_add_1741_10_lut (.I0(GND_net), .I1(n2502), .I2(VCC_net), 
            .I3(n10945), .O(n2555[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1272_2 (.CI(VCC_net), .I0(bit_ctr[17]), .I1(n13605), 
            .CO(n10819));
    SB_CARRY mod_5_add_1540_17 (.CI(n10895), .I0(n2195), .I1(VCC_net), 
            .CO(n10896));
    SB_LUT4 sub_14_add_2_32_lut (.I0(n13207), .I1(timer[30]), .I2(n1[30]), 
            .I3(n10698), .O(n13209)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_32_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_6 (.CI(n10672), .I0(timer[4]), .I1(n1[4]), .CO(n10673));
    SB_LUT4 add_21_12_lut (.I0(GND_net), .I1(bit_ctr[10]), .I2(GND_net), 
            .I3(n10622), .O(n255[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_26_lut (.I0(n2986), .I1(n2986), .I2(n3017), 
            .I3(n11076), .O(n3085)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_26_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_2009_14_lut (.I0(GND_net), .I1(n2898), .I2(VCC_net), 
            .I3(n11039), .O(n2951[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_17_lut (.I0(GND_net), .I1(n2695), .I2(VCC_net), 
            .I3(n10995), .O(n2753[23])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_10 (.CI(n10945), .I0(n2502), .I1(VCC_net), 
            .CO(n10946));
    SB_LUT4 mod_5_add_1205_15_lut (.I0(n1697), .I1(n1697), .I2(n1730), 
            .I3(n10818), .O(n1796)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_15_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1741_9_lut (.I0(GND_net), .I1(n2503), .I2(VCC_net), 
            .I3(n10944), .O(n2555[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1071_2_lut (.I0(bit_ctr[20]), .I1(bit_ctr[20]), .I2(n13604), 
            .I3(VCC_net), .O(n1609)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1071_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18_4_lut_adj_115 (.I0(n2899), .I1(n2908), .I2(n2896), .I3(n2907), 
            .O(n43_adj_763));
    defparam i18_4_lut_adj_115.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1540_17_lut (.I0(GND_net), .I1(n2195), .I2(VCC_net), 
            .I3(n10895), .O(n2258[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_5_lut (.I0(GND_net), .I1(timer[3]), .I2(n1[3]), 
            .I3(n10671), .O(one_wire_N_599[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1875_17 (.CI(n10995), .I0(n2695), .I1(VCC_net), 
            .CO(n10996));
    SB_CARRY mod_5_add_1741_9 (.CI(n10944), .I0(n2503), .I1(VCC_net), 
            .CO(n10945));
    SB_LUT4 mod_5_add_1205_14_lut (.I0(n1698), .I1(n1698), .I2(n1730), 
            .I3(n10817), .O(n1797)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_14_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1741_8_lut (.I0(GND_net), .I1(n2504), .I2(VCC_net), 
            .I3(n10943), .O(n2555[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_803_7 (.CI(n10753), .I0(n1105), .I1(VCC_net), .CO(n10754));
    SB_CARRY mod_5_add_1540_18 (.CI(n10896), .I0(n2194), .I1(VCC_net), 
            .CO(n10897));
    SB_CARRY add_21_12 (.CI(n10622), .I0(bit_ctr[10]), .I1(GND_net), .CO(n10623));
    SB_CARRY mod_5_add_2009_14 (.CI(n11039), .I0(n2898), .I1(VCC_net), 
            .CO(n11040));
    SB_LUT4 mod_5_add_1875_16_lut (.I0(GND_net), .I1(n2696), .I2(VCC_net), 
            .I3(n10994), .O(n2753[22])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_8 (.CI(n10943), .I0(n2504), .I1(VCC_net), 
            .CO(n10944));
    SB_CARRY mod_5_add_1205_14 (.CI(n10817), .I0(n1698), .I1(n1730), .CO(n10818));
    SB_LUT4 mod_5_add_1741_7_lut (.I0(GND_net), .I1(n2505), .I2(VCC_net), 
            .I3(n10942), .O(n2555[15])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_13_lut (.I0(n1699), .I1(n1699), .I2(n1730), 
            .I3(n10816), .O(n1798)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1071_2 (.CI(VCC_net), .I0(bit_ctr[20]), .I1(n13604), 
            .CO(n10783));
    SB_LUT4 mod_5_add_1540_18_lut (.I0(GND_net), .I1(n2194), .I2(VCC_net), 
            .I3(n10896), .O(n2258[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_32 (.CI(n10698), .I0(timer[30]), .I1(n1[30]), 
            .CO(n10699));
    SB_LUT4 i7610_4_lut (.I0(n7564), .I1(n11908), .I2(n11113), .I3(\state[0] ), 
            .O(n11946));
    defparam i7610_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i20_4_lut_adj_116 (.I0(\neo_pixel_transmitter.done ), .I1(\state[1] ), 
            .I2(start), .I3(n11946), .O(n7_adj_764));
    defparam i20_4_lut_adj_116.LUT_INIT = 16'hcecf;
    SB_LUT4 i17_4_lut_adj_117 (.I0(n2894), .I1(n2901), .I2(n2902), .I3(n2900), 
            .O(n42_adj_765));
    defparam i17_4_lut_adj_117.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_118 (.I0(n7598), .I1(n7_adj_764), .I2(n11926), 
            .I3(\state[1] ), .O(n11353));
    defparam i1_4_lut_adj_118.LUT_INIT = 16'hcc8c;
    SB_CARRY mod_5_add_1205_13 (.CI(n10816), .I0(n1699), .I1(n1730), .CO(n10817));
    SB_LUT4 mod_5_add_1205_12_lut (.I0(n1700), .I1(n1700), .I2(n1730), 
            .I3(n10815), .O(n1799)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1205_12 (.CI(n10815), .I0(n1700), .I1(n1730), .CO(n10816));
    SB_LUT4 mod_5_add_1004_12_lut (.I0(n1433), .I1(n1400), .I2(VCC_net), 
            .I3(n10782), .O(n1499)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY mod_5_add_1540_19 (.CI(n10897), .I0(n2193), .I1(VCC_net), 
            .CO(n10898));
    SB_CARRY sub_14_add_2_5 (.CI(n10671), .I0(timer[3]), .I1(n1[3]), .CO(n10672));
    SB_LUT4 add_21_11_lut (.I0(GND_net), .I1(bit_ctr[9]), .I2(GND_net), 
            .I3(n10621), .O(n255[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_11_lut (.I0(n1701), .I1(n1701), .I2(n1730), 
            .I3(n10814), .O(n1800)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1875_16 (.CI(n10994), .I0(n2696), .I1(VCC_net), 
            .CO(n10995));
    SB_CARRY mod_5_add_1741_7 (.CI(n10942), .I0(n2505), .I1(VCC_net), 
            .CO(n10943));
    SB_CARRY mod_5_add_1205_11 (.CI(n10814), .I0(n1701), .I1(n1730), .CO(n10815));
    SB_LUT4 mod_5_add_1741_6_lut (.I0(GND_net), .I1(n2506), .I2(VCC_net), 
            .I3(n10941), .O(n2555[14])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1205_10_lut (.I0(n1702), .I1(n1702), .I2(n1730), 
            .I3(n10813), .O(n1801)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_10_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_14_add_2_4_lut (.I0(GND_net), .I1(timer[2]), .I2(n1[2]), 
            .I3(n10670), .O(one_wire_N_599[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1540_19_lut (.I0(GND_net), .I1(n2193), .I2(VCC_net), 
            .I3(n10897), .O(n2258[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1004_11_lut (.I0(GND_net), .I1(n1401), .I2(VCC_net), 
            .I3(n10781), .O(n1466[30])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_632_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(timer[20]), 
            .I3(n10726), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_21_33_lut (.I0(GND_net), .I1(bit_ctr[31]), .I2(GND_net), 
            .I3(n10643), .O(n255[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_632_add_4_22 (.CI(n10726), .I0(GND_net), .I1(timer[20]), 
            .CO(n10727));
    SB_LUT4 mod_5_add_1540_20_lut (.I0(n2225), .I1(n2192), .I2(VCC_net), 
            .I3(n10898), .O(n2291)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1540_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i3_3_lut_adj_119 (.I0(bit_ctr[18]), .I1(n1707), .I2(n1709), 
            .I3(GND_net), .O(n16_adj_766));
    defparam i3_3_lut_adj_119.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_add_803_6_lut (.I0(GND_net), .I1(n1106), .I2(VCC_net), 
            .I3(n10752), .O(n1169[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_803_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_i1491_3_lut (.I0(n2109), .I1(n2159[15]), .I2(n2126), 
            .I3(GND_net), .O(n2208));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1491_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_31_lut (.I0(n13205), .I1(timer[29]), .I2(n1[29]), 
            .I3(n10697), .O(n13207)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_31_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_2076_26 (.CI(n11076), .I0(n2986), .I1(n3017), .CO(n11077));
    SB_CARRY mod_5_add_1205_10 (.CI(n10813), .I0(n1702), .I1(n1730), .CO(n10814));
    SB_LUT4 mod_5_add_1205_9_lut (.I0(n1703), .I1(n1703), .I2(n1730), 
            .I3(n10812), .O(n1802)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1205_9 (.CI(n10812), .I0(n1703), .I1(n1730), .CO(n10813));
    SB_LUT4 i12_4_lut_adj_120 (.I0(n2491), .I1(n2493), .I2(n2492), .I3(n2494), 
            .O(n33_adj_767));
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_2076_25_lut (.I0(n2987), .I1(n2987), .I2(n3017), 
            .I3(n11075), .O(n3086)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_25_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_8_lut (.I0(n1704), .I1(n1704), .I2(n1730), 
            .I3(n10811), .O(n1803)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2076_25 (.CI(n11075), .I0(n2987), .I1(n3017), .CO(n11076));
    SB_LUT4 mod_5_add_2009_13_lut (.I0(GND_net), .I1(n2899), .I2(VCC_net), 
            .I3(n11038), .O(n2951[17])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16_4_lut_adj_121 (.I0(n2893), .I1(n2897), .I2(n2904), .I3(n2898), 
            .O(n41_adj_768));
    defparam i16_4_lut_adj_121.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1875_15_lut (.I0(GND_net), .I1(n2697), .I2(VCC_net), 
            .I3(n10993), .O(n2753[21])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_6 (.CI(n10941), .I0(n2506), .I1(VCC_net), 
            .CO(n10942));
    SB_CARRY mod_5_add_1205_8 (.CI(n10811), .I0(n1704), .I1(n1730), .CO(n10812));
    SB_CARRY mod_5_add_1875_15 (.CI(n10993), .I0(n2697), .I1(VCC_net), 
            .CO(n10994));
    SB_LUT4 mod_5_add_1205_7_lut (.I0(n1705), .I1(n1705), .I2(n1730), 
            .I3(n10810), .O(n1804)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_7_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_2076_24_lut (.I0(n2988), .I1(n2988), .I2(n3017), 
            .I3(n11074), .O(n3087)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_24_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1004_11 (.CI(n10781), .I0(n1401), .I1(VCC_net), 
            .CO(n10782));
    SB_CARRY mod_5_add_1607_2 (.CI(VCC_net), .I0(bit_ctr[12]), .I1(GND_net), 
            .CO(n10899));
    SB_LUT4 timer_632_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(timer[19]), 
            .I3(n10725), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_632_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_4 (.CI(n10670), .I0(timer[2]), .I1(n1[2]), .CO(n10671));
    SB_CARRY mod_5_add_2009_13 (.CI(n11038), .I0(n2899), .I1(VCC_net), 
            .CO(n11039));
    SB_LUT4 mod_5_add_1875_14_lut (.I0(GND_net), .I1(n2698), .I2(VCC_net), 
            .I3(n10992), .O(n2753[20])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20_4_lut_adj_122 (.I0(n39_adj_761), .I1(n2890), .I2(n30_adj_759), 
            .I3(n2892), .O(n45_adj_769));
    defparam i20_4_lut_adj_122.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1741_5_lut (.I0(GND_net), .I1(n2507), .I2(VCC_net), 
            .I3(n10940), .O(n2555[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_7 (.CI(n10810), .I0(n1705), .I1(n1730), .CO(n10811));
    SB_CARRY mod_5_add_1875_14 (.CI(n10992), .I0(n2698), .I1(VCC_net), 
            .CO(n10993));
    SB_LUT4 mod_5_i1682_3_lut (.I0(n2396), .I1(n2456[25]), .I2(n2423), 
            .I3(GND_net), .O(n2495));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1682_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_add_1205_6_lut (.I0(n1706), .I1(n1706), .I2(n1730), 
            .I3(n10809), .O(n1805)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_6_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1004_10_lut (.I0(GND_net), .I1(n1402), .I2(VCC_net), 
            .I3(n10780), .O(n1466[29])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i22_4_lut_adj_123 (.I0(n43_adj_763), .I1(n2905), .I2(n38_adj_762), 
            .I3(n2903), .O(n47_adj_770));
    defparam i22_4_lut_adj_123.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_1607_2_lut (.I0(GND_net), .I1(bit_ctr[12]), .I2(GND_net), 
            .I3(VCC_net), .O(n2357[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_31 (.CI(n10697), .I0(timer[29]), .I1(n1[29]), 
            .CO(n10698));
    SB_CARRY mod_5_add_2076_24 (.CI(n11074), .I0(n2988), .I1(n3017), .CO(n11075));
    SB_LUT4 add_21_32_lut (.I0(GND_net), .I1(bit_ctr[30]), .I2(GND_net), 
            .I3(n10642), .O(n255[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_21_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_2076_23_lut (.I0(n2989), .I1(n2989), .I2(n3017), 
            .I3(n11073), .O(n3088)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_23_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1205_6 (.CI(n10809), .I0(n1706), .I1(n1730), .CO(n10810));
    SB_CARRY mod_5_add_2076_23 (.CI(n11073), .I0(n2989), .I1(n3017), .CO(n11074));
    SB_LUT4 mod_5_add_1205_5_lut (.I0(n1707), .I1(n1707), .I2(n1730), 
            .I3(n10808), .O(n1806)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_5_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i24_4_lut_adj_124 (.I0(n47_adj_770), .I1(n45_adj_769), .I2(n41_adj_768), 
            .I3(n42_adj_765), .O(n2918));
    defparam i24_4_lut_adj_124.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_add_2076_22_lut (.I0(n2990), .I1(n2990), .I2(n3017), 
            .I3(n11072), .O(n3089)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_22_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_2076_22 (.CI(n11072), .I0(n2990), .I1(n3017), .CO(n11073));
    SB_LUT4 mod_5_add_2076_21_lut (.I0(n2991), .I1(n2991), .I2(n3017), 
            .I3(n11071), .O(n3090)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_21_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY mod_5_add_1205_5 (.CI(n10808), .I0(n1707), .I1(n1730), .CO(n10809));
    SB_LUT4 mod_5_add_2009_12_lut (.I0(GND_net), .I1(n2900), .I2(VCC_net), 
            .I3(n11037), .O(n2951[16])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2009_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1875_13_lut (.I0(GND_net), .I1(n2699), .I2(VCC_net), 
            .I3(n10991), .O(n2753[19])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_5 (.CI(n10940), .I0(n2507), .I1(VCC_net), 
            .CO(n10941));
    SB_LUT4 mod_5_add_1205_4_lut (.I0(n1708), .I1(n1708), .I2(n1730), 
            .I3(n10807), .O(n1807)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_i1965_3_lut (.I0(n2807), .I1(n2852[10]), .I2(n2819), 
            .I3(GND_net), .O(n2906));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1965_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1004_10 (.CI(n10780), .I0(n1402), .I1(VCC_net), 
            .CO(n10781));
    SB_CARRY mod_5_add_1607_3 (.CI(n10899), .I0(n2309), .I1(GND_net), 
            .CO(n10900));
    SB_LUT4 sub_14_add_2_3_lut (.I0(one_wire_N_599[3]), .I1(timer[1]), .I2(n1[1]), 
            .I3(n10669), .O(n4_adj_771)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_21_11 (.CI(n10621), .I0(bit_ctr[9]), .I1(GND_net), .CO(n10622));
    SB_CARRY mod_5_add_1875_13 (.CI(n10991), .I0(n2699), .I1(VCC_net), 
            .CO(n10992));
    SB_LUT4 mod_5_add_1741_4_lut (.I0(GND_net), .I1(n2508), .I2(VCC_net), 
            .I3(n10939), .O(n2555[12])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1741_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1205_4 (.CI(n10807), .I0(n1708), .I1(n1730), .CO(n10808));
    SB_LUT4 mod_5_add_1004_9_lut (.I0(GND_net), .I1(n1403), .I2(VCC_net), 
            .I3(n10779), .O(n1466[28])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1004_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mod_5_add_1607_3_lut (.I0(GND_net), .I1(n2309), .I2(GND_net), 
            .I3(n10899), .O(n2357[13])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1607_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_2076_21 (.CI(n11071), .I0(n2991), .I1(n3017), .CO(n11072));
    SB_CARRY mod_5_add_2009_12 (.CI(n11037), .I0(n2900), .I1(VCC_net), 
            .CO(n11038));
    SB_LUT4 mod_5_add_1875_12_lut (.I0(GND_net), .I1(n2700), .I2(VCC_net), 
            .I3(n10990), .O(n2753[18])) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1875_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY mod_5_add_1741_4 (.CI(n10939), .I0(n2508), .I1(VCC_net), 
            .CO(n10940));
    SB_LUT4 mod_5_add_2076_20_lut (.I0(n2992), .I1(n2992), .I2(n3017), 
            .I3(n11070), .O(n3091)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_2076_20_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mod_5_add_1205_3_lut (.I0(n1709), .I1(n1709), .I2(n13601), 
            .I3(n10806), .O(n1808)) /* synthesis syn_instantiated=1 */ ;
    defparam mod_5_add_1205_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 sub_14_add_2_30_lut (.I0(n13203), .I1(timer[28]), .I2(n1[28]), 
            .I3(n10696), .O(n13205)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_30_lut.LUT_INIT = 16'hebbe;
    SB_CARRY mod_5_add_1607_4 (.CI(n10900), .I0(n2308), .I1(VCC_net), 
            .CO(n10901));
    SB_LUT4 mod_5_i1696_3_lut (.I0(bit_ctr[11]), .I1(n2456[11]), .I2(n2423), 
            .I3(GND_net), .O(n2509));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1696_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_21_32 (.CI(n10642), .I0(bit_ctr[30]), .I1(GND_net), .CO(n10643));
    SB_LUT4 mod_5_i2028_3_lut (.I0(n2902), .I1(n2951[14]), .I2(n2918), 
            .I3(GND_net), .O(n3001));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2028_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY mod_5_add_1205_3 (.CI(n10806), .I0(n1709), .I1(n13601), .CO(n10807));
    SB_CARRY mod_5_add_1875_12 (.CI(n10990), .I0(n2700), .I1(VCC_net), 
            .CO(n10991));
    SB_LUT4 mod_5_i2032_3_lut (.I0(n2906), .I1(n2951[10]), .I2(n2918), 
            .I3(GND_net), .O(n3005));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i2030_3_lut (.I0(n2904), .I1(n2951[12]), .I2(n2918), 
            .I3(GND_net), .O(n3003));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i2030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18_4_lut_adj_125 (.I0(n2984), .I1(n3003), .I2(n3005), .I3(n3001), 
            .O(n44));
    defparam i18_4_lut_adj_125.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1624_3_lut (.I0(n2306), .I1(n2357[16]), .I2(n2324), 
            .I3(GND_net), .O(n2405));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16_4_lut_adj_126 (.I0(n2505), .I1(n2508), .I2(n2506), .I3(n22_adj_755), 
            .O(n37_adj_772));
    defparam i16_4_lut_adj_126.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_127 (.I0(n12381), .I1(n11926), .I2(\state[1] ), 
            .I3(n7598), .O(n7671));
    defparam i1_4_lut_adj_127.LUT_INIT = 16'ha0a8;
    SB_LUT4 i4191_3_lut (.I0(n7671), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n7983));   // verilog/neopixel.v(35[12] 117[6])
    defparam i4191_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i18_4_lut_adj_128 (.I0(n27_adj_757), .I1(n36_adj_756), .I2(n2499), 
            .I3(n2503), .O(n39_adj_773));
    defparam i18_4_lut_adj_128.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_129 (.I0(n1700), .I1(n1706), .I2(n1703), .I3(n1705), 
            .O(n22_adj_774));
    defparam i9_4_lut_adj_129.LUT_INIT = 16'hfffe;
    SB_LUT4 i1940_2_lut_3_lut_4_lut (.I0(bit_ctr[28]), .I1(n708), .I2(n11912), 
            .I3(bit_ctr[27]), .O(n5703));
    defparam i1940_2_lut_3_lut_4_lut.LUT_INIT = 16'h5600;
    SB_LUT4 sub_14_inv_0_i17_1_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i18_1_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i9198_1_lut (.I0(n11174), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13594));   // verilog/neopixel.v(22[26:36])
    defparam i9198_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_3_lut_adj_130 (.I0(n1701), .I1(n1704), .I2(n1708), .I3(GND_net), 
            .O(n20_adj_775));
    defparam i7_3_lut_adj_130.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut_adj_131 (.I0(n1698), .I1(n22_adj_774), .I2(n16_adj_766), 
            .I3(n1702), .O(n24_adj_776));
    defparam i11_4_lut_adj_131.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_adj_132 (.I0(bit_ctr[16]), .I1(bit_ctr[28]), .I2(GND_net), 
            .I3(GND_net), .O(n30_adj_777));
    defparam i2_2_lut_adj_132.LUT_INIT = 16'heeee;
    SB_LUT4 i20_4_lut_adj_133 (.I0(bit_ctr[31]), .I1(bit_ctr[18]), .I2(bit_ctr[27]), 
            .I3(bit_ctr[10]), .O(n48_adj_778));
    defparam i20_4_lut_adj_133.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut_adj_134 (.I0(bit_ctr[11]), .I1(bit_ctr[21]), .I2(bit_ctr[20]), 
            .I3(bit_ctr[14]), .O(n46_adj_779));
    defparam i18_4_lut_adj_134.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_135 (.I0(bit_ctr[26]), .I1(bit_ctr[8]), .I2(bit_ctr[23]), 
            .I3(bit_ctr[7]), .O(n47_adj_780));
    defparam i19_4_lut_adj_135.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_136 (.I0(bit_ctr[30]), .I1(bit_ctr[15]), .I2(bit_ctr[12]), 
            .I3(bit_ctr[25]), .O(n45_adj_781));
    defparam i17_4_lut_adj_136.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_137 (.I0(bit_ctr[22]), .I1(bit_ctr[5]), .I2(bit_ctr[6]), 
            .I3(bit_ctr[17]), .O(n44_adj_782));
    defparam i16_4_lut_adj_137.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_138 (.I0(bit_ctr[3]), .I1(n30_adj_777), .I2(bit_ctr[24]), 
            .I3(bit_ctr[4]), .O(n43_adj_783));
    defparam i15_4_lut_adj_138.LUT_INIT = 16'hfefc;
    SB_LUT4 i26_4_lut_adj_139 (.I0(n45_adj_781), .I1(n47_adj_780), .I2(n46_adj_779), 
            .I3(n48_adj_778), .O(n54));
    defparam i26_4_lut_adj_139.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut_adj_140 (.I0(bit_ctr[9]), .I1(bit_ctr[19]), .I2(bit_ctr[29]), 
            .I3(bit_ctr[13]), .O(n49_adj_784));
    defparam i21_4_lut_adj_140.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut (.I0(n49_adj_784), .I1(n54), .I2(n43_adj_783), .I3(n44_adj_782), 
            .O(\state_3__N_448[1] ));
    defparam i27_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 equal_372_i8_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(GND_net), .I3(GND_net), .O(n7598));
    defparam equal_372_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i822_4_lut (.I0(n13436), .I1(update_color), .I2(\state[1] ), 
            .I3(\state_3__N_448[1] ), .O(n3901));
    defparam i822_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 mod_5_i1558_3_lut (.I0(n2208), .I1(n2258[15]), .I2(n2225), 
            .I3(GND_net), .O(n2307));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1688_3_lut (.I0(n2402), .I1(n2456[19]), .I2(n2423), 
            .I3(GND_net), .O(n2501));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1688_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20_4_lut_adj_141 (.I0(n39_adj_773), .I1(n37_adj_772), .I2(n33_adj_767), 
            .I3(n34_adj_758), .O(n2522));
    defparam i20_4_lut_adj_141.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1764_3_lut (.I0(bit_ctr[10]), .I1(n2555[10]), .I2(n2522), 
            .I3(GND_net), .O(n2609));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_142 (.I0(n3901), .I1(n10_adj_760), .I2(\state[0] ), 
            .I3(GND_net), .O(n7994));   // verilog/neopixel.v(35[12] 117[6])
    defparam i5_3_lut_adj_142.LUT_INIT = 16'h4040;
    SB_LUT4 i9095_3_lut (.I0(n11113), .I1(n7598), .I2(n7564), .I3(GND_net), 
            .O(n13435));
    defparam i9095_3_lut.LUT_INIT = 16'hcdcd;
    SB_LUT4 sub_14_inv_0_i19_1_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1347_3_lut (.I0(n1901), .I1(n1961[25]), .I2(n1928), 
            .I3(GND_net), .O(n2000));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1347_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1414_3_lut (.I0(n2000), .I1(n2060[25]), .I2(n2027), 
            .I3(GND_net), .O(n2099));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_143 (.I0(n1699), .I1(n24_adj_776), .I2(n20_adj_775), 
            .I3(n1697), .O(n1730));
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hfffe;
    SB_LUT4 mod_5_i1751_3_lut (.I0(n2497), .I1(n2555[23]), .I2(n2522), 
            .I3(GND_net), .O(n2596));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9205_1_lut (.I0(n1730), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n13601));
    defparam i9205_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i20_1_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i21_1_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i948_3_lut (.I0(bit_ctr[22]), .I1(n1367[22]), .I2(n1334), 
            .I3(GND_net), .O(n1409));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9076_3_lut_4_lut (.I0(n7564), .I1(\neo_pixel_transmitter.done ), 
            .I2(start), .I3(n11908), .O(n13436));
    defparam i9076_3_lut_4_lut.LUT_INIT = 16'hf3f7;
    SB_LUT4 mod_5_i947_3_lut (.I0(n1309), .I1(n1367[23]), .I2(n1334), 
            .I3(GND_net), .O(n1408));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i1831_rep_15_3_lut (.I0(n2609), .I1(n2654[10]), .I2(n2621), 
            .I3(GND_net), .O(n2708));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1831_rep_15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i22_1_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1356_3_lut (.I0(bit_ctr[16]), .I1(n1961[16]), .I2(n1928), 
            .I3(GND_net), .O(n2009));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1356_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i946_3_lut (.I0(n1308), .I1(n1367[24]), .I2(n1334), 
            .I3(GND_net), .O(n1407));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i23_1_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i24_1_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1829_3_lut (.I0(n2607), .I1(n2654[12]), .I2(n2621), 
            .I3(GND_net), .O(n2706));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mod_5_i945_3_lut (.I0(n1307), .I1(n1367[25]), .I2(n1334), 
            .I3(GND_net), .O(n1406));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9118_3_lut_4_lut (.I0(n7564), .I1(n13513), .I2(\state[1] ), 
            .I3(start), .O(n13514));
    defparam i9118_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9093_2_lut_3_lut (.I0(one_wire_N_599[2]), .I1(one_wire_N_599[3]), 
            .I2(start), .I3(GND_net), .O(n13445));
    defparam i9093_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut_4_lut (.I0(n9747), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\neo_pixel_transmitter.done ), .O(n12451));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 mod_5_i944_3_lut (.I0(n1306), .I1(n1367[26]), .I2(n1334), 
            .I3(GND_net), .O(n1405));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_inv_0_i25_1_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mod_5_i1553_3_lut (.I0(n2203), .I1(n2258[20]), .I2(n2225), 
            .I3(GND_net), .O(n2302));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i1553_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_144 (.I0(n7899), .I1(bit_ctr[26]), .I2(bit_ctr[27]), 
            .I3(n838), .O(n12839));   // verilog/neopixel.v(22[26:36])
    defparam i1_3_lut_4_lut_adj_144.LUT_INIT = 16'h1551;
    SB_LUT4 i5953_4_lut (.I0(one_wire_N_599[8]), .I1(n7608), .I2(one_wire_N_599[10]), 
            .I3(one_wire_N_599[9]), .O(n9747));
    defparam i5953_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i1_2_lut_adj_145 (.I0(one_wire_N_599[2]), .I1(one_wire_N_599[3]), 
            .I2(GND_net), .I3(GND_net), .O(n11908));
    defparam i1_2_lut_adj_145.LUT_INIT = 16'heeee;
    SB_LUT4 i2_2_lut_adj_146 (.I0(one_wire_N_599[2]), .I1(n4_adj_771), .I2(GND_net), 
            .I3(GND_net), .O(n11113));
    defparam i2_2_lut_adj_146.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_147 (.I0(one_wire_N_599[5]), .I1(one_wire_N_599[4]), 
            .I2(GND_net), .I3(GND_net), .O(n13211));   // verilog/neopixel.v(55[15:42])
    defparam i1_2_lut_adj_147.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_148 (.I0(one_wire_N_599[8]), .I1(one_wire_N_599[7]), 
            .I2(one_wire_N_599[6]), .I3(n13211), .O(n13217));   // verilog/neopixel.v(55[15:42])
    defparam i1_4_lut_adj_148.LUT_INIT = 16'hfffe;
    SB_LUT4 i5757_2_lut_3_lut_4_lut (.I0(bit_ctr[28]), .I1(n708), .I2(n11912), 
            .I3(bit_ctr[27]), .O(n58));
    defparam i5757_2_lut_3_lut_4_lut.LUT_INIT = 16'ha9ff;
    SB_LUT4 i1_4_lut_adj_149 (.I0(one_wire_N_599[10]), .I1(n7608), .I2(one_wire_N_599[9]), 
            .I3(n13217), .O(n7564));   // verilog/neopixel.v(55[15:42])
    defparam i1_4_lut_adj_149.LUT_INIT = 16'hfffe;
    SB_LUT4 i7592_4_lut (.I0(n7564), .I1(n11113), .I2(n11908), .I3(\state[0] ), 
            .O(n11926));
    defparam i7592_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i9091_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(\state[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n13438));
    defparam i9091_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7535_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(n11926), .I3(GND_net), .O(n11864));
    defparam i7535_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i15_4_lut_adj_150 (.I0(n11864), .I1(n13438), .I2(\state[1] ), 
            .I3(n9747), .O(n7_adj_667));
    defparam i15_4_lut_adj_150.LUT_INIT = 16'h3a0a;
    SB_LUT4 i9186_2_lut (.I0(start), .I1(\state[1] ), .I2(GND_net), .I3(GND_net), 
            .O(start_N_647));   // verilog/neopixel.v(36[4] 116[11])
    defparam i9186_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i7561_2_lut (.I0(\state[1] ), .I1(start), .I2(GND_net), .I3(GND_net), 
            .O(n11892));
    defparam i7561_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9152_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(\state[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n11834));
    defparam i9152_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 mod_5_i538_3_lut_2_lut (.I0(n708), .I1(n11912), .I2(GND_net), 
            .I3(GND_net), .O(n807));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i538_3_lut_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_151 (.I0(one_wire_N_599[2]), .I1(n11834), .I2(one_wire_N_599[3]), 
            .I3(n4_adj_771), .O(n103));
    defparam i1_4_lut_adj_151.LUT_INIT = 16'h45cd;
    SB_LUT4 i6_4_lut_adj_152 (.I0(one_wire_N_599[7]), .I1(one_wire_N_599[9]), 
            .I2(n11892), .I3(n103), .O(n16_adj_785));
    defparam i6_4_lut_adj_152.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_adj_153 (.I0(one_wire_N_599[8]), .I1(one_wire_N_599[4]), 
            .I2(n16_adj_785), .I3(n7608), .O(n6_adj_786));
    defparam i1_4_lut_adj_153.LUT_INIT = 16'hffef;
    SB_LUT4 i4_4_lut_adj_154 (.I0(one_wire_N_599[10]), .I1(one_wire_N_599[6]), 
            .I2(one_wire_N_599[5]), .I3(n6_adj_786), .O(n13659));
    defparam i4_4_lut_adj_154.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_462_Mux_0_i3_3_lut (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(\state[1] ), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_656 ));   // verilog/neopixel.v(36[4] 116[11])
    defparam mux_462_Mux_0_i3_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 sub_14_inv_0_i26_1_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1665_3_lut_4_lut (.I0(bit_ctr[29]), .I1(bit_ctr[28]), .I2(bit_ctr[30]), 
            .I3(bit_ctr[31]), .O(n11912));   // verilog/neopixel.v(22[26:36])
    defparam i1665_3_lut_4_lut.LUT_INIT = 16'h8408;
    SB_LUT4 i6_3_lut_adj_155 (.I0(bit_ctr[9]), .I1(n2596), .I2(n2609), 
            .I3(GND_net), .O(n28));   // verilog/neopixel.v(22[26:36])
    defparam i6_3_lut_adj_155.LUT_INIT = 16'hecec;
    SB_LUT4 mod_5_i942_3_lut (.I0(n1304), .I1(n1367[28]), .I2(n1334), 
            .I3(GND_net), .O(n1403));   // verilog/neopixel.v(22[26:36])
    defparam mod_5_i942_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
