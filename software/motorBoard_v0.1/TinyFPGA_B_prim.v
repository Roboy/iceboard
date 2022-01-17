// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Jan 17 19:16:46 2022
//
// Verilog Description of module TinyFPGA_B
//

module TinyFPGA_B (CLK, USBPU, ENCODER0_A, ENCODER0_B, ENCODER1_A, 
            ENCODER1_B, HALL1, HALL2, HALL3, FAULT_N, DE, TX, 
            RX, CS_CLK, CS, CS_MISO, SCL, SDA, INLC, INHC, INLB, 
            INHB, INLA, INHA) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(2[8:18])
    input CLK;   // verilog/TinyFPGA_B.v(3[9:12])
    output USBPU;   // verilog/TinyFPGA_B.v(4[10:15])
    input ENCODER0_A;   // verilog/TinyFPGA_B.v(5[9:19])
    input ENCODER0_B;   // verilog/TinyFPGA_B.v(6[9:19])
    input ENCODER1_A;   // verilog/TinyFPGA_B.v(7[9:19])
    input ENCODER1_B;   // verilog/TinyFPGA_B.v(8[9:19])
    input HALL1 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(9[9:14])
    input HALL2 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(10[9:14])
    input HALL3 /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(11[9:14])
    input FAULT_N;   // verilog/TinyFPGA_B.v(12[9:16])
    output DE;   // verilog/TinyFPGA_B.v(13[10:12])
    output TX /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(14[10:12])
    input RX;   // verilog/TinyFPGA_B.v(15[9:11])
    output CS_CLK;   // verilog/TinyFPGA_B.v(16[10:16])
    output CS;   // verilog/TinyFPGA_B.v(17[10:12])
    input CS_MISO;   // verilog/TinyFPGA_B.v(18[9:16])
    inout SCL /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(19[9:12])
    inout SDA /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(20[9:12])
    output INLC;   // verilog/TinyFPGA_B.v(21[10:14])
    output INHC;   // verilog/TinyFPGA_B.v(22[10:14])
    output INLB;   // verilog/TinyFPGA_B.v(23[10:14])
    output INHB;   // verilog/TinyFPGA_B.v(24[10:14])
    output INLA;   // verilog/TinyFPGA_B.v(25[10:14])
    output INHA;   // verilog/TinyFPGA_B.v(26[10:14])
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[16:24])
    
    wire GND_net, VCC_net, ENCODER0_A_N, ENCODER0_B_N, ENCODER1_A_N, 
        ENCODER1_B_N, DE_c, RX_c, CS_CLK_c, CS_c, CS_MISO_c, INLC_c_0, 
        INHC_c_0, INLB_c_0, INHB_c_0, INLA_c_0, INHA_c_0;
    wire [7:0]ID;   // verilog/TinyFPGA_B.v(44[12:14])
    
    wire reset, hall1, hall2, hall3, pwm_out, GHA, GHB, GHC;
    wire [7:0]commutation_state;   // verilog/TinyFPGA_B.v(119[12:29])
    wire [7:0]commutation_state_prev;   // verilog/TinyFPGA_B.v(120[12:34])
    
    wire dti;
    wire [7:0]dti_counter;   // verilog/TinyFPGA_B.v(129[12:23])
    
    wire tx_o, tx_enable;
    wire [23:0]pwm_counter;   // verilog/pwm.v(11[19:30])
    wire [31:0]encoder1_position;   // verilog/TinyFPGA_B.v(227[11:28])
    
    wire n1305, n1303, n1301, n1299, n1297;
    wire [31:0]encoder0_position;   // verilog/TinyFPGA_B.v(225[11:28])
    
    wire n25, n17, n28574;
    wire [7:0]control_mode_adj_5932;   // verilog/coms.v(17[19:31])
    
    wire n1250, n1248;
    wire [15:0]current;   // verilog/TinyFPGA_B.v(238[22:29])
    wire [31:0]baudrate;   // verilog/TinyFPGA_B.v(241[15:23])
    
    wire data_ready, sda_out, n24294, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(338[11:24])
    
    wire read;
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(346[15:20])
    wire [7:0]commutation_state_7__N_87;
    
    wire commutation_state_7__N_95, GLA_N_252, GLB_N_266, dti_N_283, 
        RX_N_18, n1252, n1264, n1262, n1260, n1258, n1256, n1254, 
        n1313, n1311, n1309, n1307, n816, n817, n818, n819, 
        n820, n821, n822, n823, n824, n825, n826, n827, n828, 
        n829, n830, n831, n832, n833, n834, n835, n836, n837, 
        n838, n839, n840, n841, n842, n843, n844, n845, n846, 
        n847, read_N_288, n927, n21468, n24293, n6, n6_adj_5866, 
        rx_data_ready;
    wire [7:0]rx_data;   // verilog/coms.v(92[13:20])
    wire [7:0]\data_in_frame[23] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[22] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[19] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[15] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[13] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[12] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[11] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[7] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[4] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[3] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_in_frame[1] ;   // verilog/coms.v(97[12:25])
    wire [7:0]\data_out_frame[26] ;   // verilog/coms.v(98[12:26])
    
    wire n8, n7, tx_active;
    wire [31:0]\FRAME_MATCHER.state ;   // verilog/coms.v(113[11:16])
    
    wire \FRAME_MATCHER.rx_data_ready_prev , n24292, n16628, n16627, 
        n16626, n16625, n16624, n16623, n16622, n16621, n16620, 
        n16619, n16618, n24291, n24290, n34, n16617, n16616, n24289, 
        n24288, n24287, n24286, n15336, n16615, n16614, n16613, 
        n16612, n4, n16611, n24285, n24284, n24283, n10544, n35965, 
        n24, n27901, n35626, n16610, n16609, n16608, n16607, n16606, 
        n1992, n16605, n16604, n16603, n13066, n16593, n24596, 
        n24595, n24594, n24282, n24593, n24281, n24592, n24591, 
        n24590, n24280, n24279, n24278, n24277, n35105, n29448, 
        n31907, n16590, n16587, n5, n16584, n16581, n16578, n16575, 
        n29420, n15901, n15898, n15895, n15892, n15889, n15886, 
        n15883, n15880, n15862, n15859, n15856, n15850, n30266, 
        n15846, n15845, n15844, n15843, n15842, n15841, n15840, 
        n15839, n15838, n15834, n15833, n15832, n15831, n15830, 
        n15829, n15828, n15827, n15826, n15825, n15824, n15823, 
        n15822, n15821, n15820, n15819, n15818, n15817, n15816, 
        n15815, n15814, n15813, n15811, n15807, n15794, n15793, 
        n15789, n15788, n15784, n15780, n15779, n15778, n15777, 
        n15776, n15771, n15766, n15764, n15761, n15758, n15755, 
        n15752, n15742, n15741, n15739, n7_adj_5867, n13049, n13080, 
        n24270, n16570, n16567, n16564, n16561, n16558, n16555, 
        n16552, n16549, n16546, n24_adj_5868, n30268, n35076, n10, 
        n24271, n6_adj_5869, n16347, n16325, n21590;
    wire [1:0]a_new;   // vhdl/quadrature_decoder.vhd(39[9:14])
    wire [1:0]b_new;   // vhdl/quadrature_decoder.vhd(40[9:14])
    
    wire a_prev, b_prev, debounce_cnt_N_4805, n16322, n16319, position_31__N_4808, 
        n12969;
    wire [1:0]a_new_adj_5947;   // vhdl/quadrature_decoder.vhd(39[9:14])
    wire [1:0]b_new_adj_5948;   // vhdl/quadrature_decoder.vhd(40[9:14])
    
    wire a_prev_adj_5872, b_prev_adj_5873, debounce_cnt_N_4805_adj_5874, 
        position_31__N_4808_adj_5875, n21564, n21550, n21548, n15, 
        n13, n11, n9, n8_adj_5876, n6_adj_5877, n4_adj_5878, n8595, 
        n16304, n16303, n16299, n21571;
    wire [7:0]data_adj_5961;   // verilog/eeprom.v(23[12:16])
    
    wire n3367, n3370, n30578, n35934, n16296, n16293, n24272, 
        n16287, n16284, n4779, n16281, n30545, n16275, n14, n16272, 
        n16269, n16266, n16263, n15_adj_5879, n16260, n16257, n28047, 
        n28049, clk_out;
    wire [15:0]data_adj_5966;   // verilog/tli4970.v(27[14:18])
    
    wire n10_adj_5888;
    wire [7:0]state_adj_5968;   // verilog/tli4970.v(29[13:18])
    
    wire n12983, n4_adj_5889, n4_adj_5890, state_7__N_5291, n16191, 
        n16188, n16185, n16182, r_Rx_Data;
    wire [7:0]r_Clock_Count;   // verilog/uart_rx.v(33[17:30])
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n16179, n16176, n16173, n16170;
    wire [24:0]o_Rx_DV_N_4460;
    
    wire n1;
    wire [2:0]r_SM_Main_adj_5978;   // verilog/uart_tx.v(32[16:25])
    wire [8:0]r_Clock_Count_adj_5979;   // verilog/uart_tx.v(33[16:29])
    wire [2:0]r_Bit_Index_adj_5980;   // verilog/uart_tx.v(34[16:27])
    
    wire n32782, n62, n13052, n13073, n10717, n30750;
    wire [7:0]state_7__N_5098;
    
    wire n16119, n16116, n16113, n16110, n1957, n1951, n14452, 
        n14448, n30349, n31649, n31633, n13038, n31038, n16095, 
        n31617, n124, n31601, n28623, n31585, n31569, n127, n27931, 
        n31553, n31537, n34766, n26289, n35966, n13045, n4_adj_5902, 
        n6_adj_5903, n8_adj_5904, n9_adj_5905, n48, n49, n50, n51, 
        n52, n53, n54, n55, n4_adj_5906, n14909, n14896, n14890, 
        n16092, n28612, n14877, n14874, n14858, n15311, n14836, 
        n15305, n16089, n14365, n28613, n12, n29, n27, n23, 
        n24273, n15_adj_5907, n14_adj_5908, n30267, n24275, n35504, 
        n24299, n16086, n16083, n16080, n16077, n24298, n4_adj_5909, 
        n14347, n24276, n24297, n16038, n16035, n14_adj_5910, n13_adj_5911, 
        n16026, n16023, n16017, n15672, n15671, n15670, n16011, 
        n16010, n16007, n16004, n16003, n16000, n15997, n15669, 
        n15668, n15667, n15666, n15665, n15664, n15663, n15662, 
        n15994, n15988, n15661, n15660, n15659, n15658, n15985, 
        n15982, n15979, n15976, n31429, n14321, n14313, n31423, 
        n14289, n4_adj_5912, n24296, n24295, n24274, n24269, n30579, 
        n6_adj_5913, n34408, n6_adj_5914, n35503, n34405, n7_adj_5915, 
        n28594, n30632, n34380, n34379, n34378, n34377, n28625, 
        n34376, n12963, n34375, n34374, n34565, n15_adj_5916, n14_adj_5917, 
        n4_adj_5918, n34352, n28015, n28019, n28023, n28045, n9_adj_5919, 
        n34322, n7_adj_5920, n7_adj_5921, n36058, n30823, n36333, 
        n28285, n28305, n6_adj_5922;
    
    VCC i2 (.Y(VCC_net));
    SB_IO hall2_input (.PACKAGE_PIN(HALL2), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall2)) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall2_input.PIN_TYPE = 6'b000001;
    defparam hall2_input.PULLUP = 1'b1;
    defparam hall2_input.NEG_TRIGGER = 1'b0;
    defparam hall2_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall3_input (.PACKAGE_PIN(HALL3), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall3)) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall3_input.PIN_TYPE = 6'b000001;
    defparam hall3_input.PULLUP = 1'b1;
    defparam hall3_input.NEG_TRIGGER = 1'b0;
    defparam hall3_input.IO_STANDARD = "SB_LVCMOS";
    SB_IO tx_output (.PACKAGE_PIN(TX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(tx_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(tx_o)) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_output.PIN_TYPE = 6'b101001;
    defparam tx_output.PULLUP = 1'b1;
    defparam tx_output.NEG_TRIGGER = 1'b0;
    defparam tx_output.IO_STANDARD = "SB_LVCMOS";
    SB_DFFE dti_161 (.Q(dti), .C(clk16MHz), .E(n14289), .D(dti_N_283));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF commutation_state_prev_i0 (.Q(commutation_state_prev[0]), .C(clk16MHz), 
           .D(commutation_state[0]));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_5098[3])) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO hall1_input (.PACKAGE_PIN(HALL1), .LATCH_INPUT_VALUE(GND_net), 
          .INPUT_CLK(GND_net), .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(GND_net), 
          .D_OUT_1(GND_net), .D_OUT_0(GND_net), .D_IN_0(hall1)) /* synthesis syn_instantiated=1 */ ;   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam hall1_input.PIN_TYPE = 6'b000001;
    defparam hall1_input.PULLUP = 1'b1;
    defparam hall1_input.NEG_TRIGGER = 1'b0;
    defparam hall1_input.IO_STANDARD = "SB_LVCMOS";
    EEPROM eeprom (.GND_net(GND_net), .n16628(n16628), .baudrate({baudrate}), 
           .clk16MHz(clk16MHz), .n16627(n16627), .n16626(n16626), .n16625(n16625), 
           .n16624(n16624), .n16623(n16623), .n16622(n16622), .n16621(n16621), 
           .n16620(n16620), .n16619(n16619), .n16618(n16618), .n16617(n16617), 
           .n16616(n16616), .n16615(n16615), .n16614(n16614), .read(read), 
           .n15834(n15834), .ID({ID}), .n15833(n15833), .n15832(n15832), 
           .n15831(n15831), .n15830(n15830), .n15829(n15829), .n15828(n15828), 
           .n15827(n15827), .n15826(n15826), .n15825(n15825), .n15824(n15824), 
           .n15823(n15823), .n15822(n15822), .n15821(n15821), .n15820(n15820), 
           .n15819(n15819), .n15818(n15818), .n15817(n15817), .n15815(n15815), 
           .n15814(n15814), .n15778(n15778), .data_ready(data_ready), 
           .n15742(n15742), .n15739(n15739), .n30545(n30545), .n28594(n28594), 
           .n15672(n15672), .n15667(n15667), .n28613(n28613), .n28612(n28612), 
           .n30266(n30266), .scl_enable(scl_enable), .n15850(n15850), 
           .data({data_adj_5961}), .n15846(n15846), .n15845(n15845), .n21571(n21571), 
           .n15816(n15816), .\state_7__N_5098[3] (state_7__N_5098[3]), .VCC_net(VCC_net), 
           .sda_enable(sda_enable), .n16347(n16347), .n16293(n16293), 
           .n4(n4), .n16010(n16010), .n13066(n13066), .n16003(n16003), 
           .n4_adj_19(n4_adj_5889), .scl(scl), .sda_out(sda_out), .n13080(n13080), 
           .n4_adj_20(n4_adj_5890)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(377[10] 389[6])
    SB_LUT4 add_130_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n24279), .O(n836)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_130_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n24299), .O(n816)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12677_3_lut (.I0(\data_in_frame[3] [1]), .I1(rx_data[1]), .I2(n30579), 
            .I3(GND_net), .O(n16549));   // verilog/coms.v(128[12] 293[6])
    defparam i12677_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12020_3_lut (.I0(\data_in_frame[7] [4]), .I1(rx_data[4]), .I2(n28625), 
            .I3(GND_net), .O(n15892));   // verilog/coms.v(128[12] 293[6])
    defparam i12020_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_130_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n24298), .O(n817)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_32 (.CI(n24298), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n24299));
    SB_CARRY add_130_13 (.CI(n24279), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n24280));
    SB_LUT4 add_130_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n24297), .O(n818)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_31_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_130_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n24278), .O(n837)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_12 (.CI(n24278), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n24279));
    SB_LUT4 add_130_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n24277), .O(n838)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12680_3_lut (.I0(\data_in_frame[3] [2]), .I1(rx_data[2]), .I2(n30579), 
            .I3(GND_net), .O(n16552));   // verilog/coms.v(128[12] 293[6])
    defparam i12680_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12683_3_lut (.I0(\data_in_frame[3] [3]), .I1(rx_data[3]), .I2(n30579), 
            .I3(GND_net), .O(n16555));   // verilog/coms.v(128[12] 293[6])
    defparam i12683_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_130_11 (.CI(n24277), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n24278));
    SB_LUT4 i12686_3_lut (.I0(\data_in_frame[3] [4]), .I1(rx_data[4]), .I2(n30579), 
            .I3(GND_net), .O(n16558));   // verilog/coms.v(128[12] 293[6])
    defparam i12686_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12023_3_lut (.I0(\data_in_frame[7] [5]), .I1(rx_data[5]), .I2(n28625), 
            .I3(GND_net), .O(n15895));   // verilog/coms.v(128[12] 293[6])
    defparam i12023_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12026_3_lut (.I0(\data_in_frame[7] [6]), .I1(rx_data[6]), .I2(n28625), 
            .I3(GND_net), .O(n15898));   // verilog/coms.v(128[12] 293[6])
    defparam i12026_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12029_3_lut (.I0(\data_in_frame[7] [7]), .I1(rx_data[7]), .I2(n28625), 
            .I3(GND_net), .O(n15901));   // verilog/coms.v(128[12] 293[6])
    defparam i12029_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12689_3_lut (.I0(\data_in_frame[3] [5]), .I1(rx_data[5]), .I2(n30579), 
            .I3(GND_net), .O(n16561));   // verilog/coms.v(128[12] 293[6])
    defparam i12689_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12692_3_lut (.I0(\data_in_frame[3] [6]), .I1(rx_data[6]), .I2(n30579), 
            .I3(GND_net), .O(n16564));   // verilog/coms.v(128[12] 293[6])
    defparam i12692_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(read_N_288), .I3(n1957), .O(n25));   // verilog/TinyFPGA_B.v(363[7:11])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h5450;
    SB_LUT4 i1_2_lut (.I0(n3370), .I1(r_SM_Main_adj_5978[0]), .I2(GND_net), 
            .I3(GND_net), .O(n31423));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut (.I0(n29), .I1(n23), .I2(o_Rx_DV_N_4460[12]), .I3(n31423), 
            .O(n31429));
    defparam i1_4_lut.LUT_INIT = 16'h0100;
    SB_CARRY add_130_31 (.CI(n24297), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n24298));
    SB_LUT4 add_130_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n24296), .O(n819)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_2703 (.I0(hall1), .I1(commutation_state[2]), .I2(hall3), 
            .I3(hall2), .O(n28285));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i1_4_lut_adj_2703.LUT_INIT = 16'hd054;
    SB_CARRY add_130_30 (.CI(n24296), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n24297));
    SB_LUT4 add_130_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n24295), .O(n820)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_130_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n24276), .O(n839)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_29 (.CI(n24295), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n24296));
    SB_LUT4 add_130_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n24269), .O(n846)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_3_lut.LUT_INIT = 16'hC33C;
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 add_130_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n24294), .O(n821)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_28_lut.LUT_INIT = 16'hC33C;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(clk16MHz));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i11786_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[1]), .I2(n6), 
            .I3(n13038), .O(n15658));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11786_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11787_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[2]), .I2(n5), 
            .I3(n13049), .O(n15659));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11787_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11788_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[3]), .I2(n21548), 
            .I3(n13049), .O(n15660));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11788_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i11789_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[4]), .I2(n6_adj_5866), 
            .I3(n13045), .O(n15661));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11789_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11790_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[5]), .I2(n6_adj_5866), 
            .I3(n13038), .O(n15662));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11790_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11791_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[6]), .I2(n5), 
            .I3(n13052), .O(n15663));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11791_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11792_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[7]), .I2(n21548), 
            .I3(n13052), .O(n15664));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11792_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i11793_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[8]), .I2(n6_adj_5869), 
            .I3(n13045), .O(n15665));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11793_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11794_3_lut (.I0(control_mode_adj_5932[0]), .I1(\data_in_frame[1] [0]), 
            .I2(n10544), .I3(GND_net), .O(n15666));   // verilog/coms.v(128[12] 293[6])
    defparam i11794_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11795_3_lut (.I0(baudrate[16]), .I1(data_adj_5961[0]), .I2(n28612), 
            .I3(GND_net), .O(n15667));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11795_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11797_3_lut (.I0(b_prev_adj_5873), .I1(b_new_adj_5948[1]), 
            .I2(debounce_cnt_N_4805_adj_5874), .I3(GND_net), .O(n15669));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11797_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i17737_2_lut (.I0(n10717), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n21564));
    defparam i17737_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11798_3_lut (.I0(a_prev_adj_5872), .I1(a_new_adj_5947[1]), 
            .I2(debounce_cnt_N_4805_adj_5874), .I3(GND_net), .O(n15670));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11798_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11800_3_lut (.I0(baudrate[15]), .I1(data_adj_5961[7]), .I2(n28613), 
            .I3(GND_net), .O(n15672));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11800_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_130_10 (.CI(n24276), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n24277));
    SB_LUT4 add_130_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n24275), .O(n840)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12131_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[5]), 
            .I2(n4_adj_5890), .I3(n13066), .O(n16003));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i12131_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_130_28 (.CI(n24294), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n24295));
    SB_LUT4 i30352_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[0]), .O(n34352));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30352_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i12138_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[6]), 
            .I2(n21571), .I3(n13080), .O(n16010));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i12138_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i30366_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[1]), .O(n34380));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30366_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 add_130_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n24293), .O(n822)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_27_lut.LUT_INIT = 16'hC33C;
    SB_IO CS_MISO_pad (.PACKAGE_PIN(CS_MISO), .OUTPUT_ENABLE(VCC_net), .D_IN_0(CS_MISO_c));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_MISO_pad.PIN_TYPE = 6'b000001;
    defparam CS_MISO_pad.PULLUP = 1'b0;
    defparam CS_MISO_pad.NEG_TRIGGER = 1'b0;
    defparam CS_MISO_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i30365_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[2]), .O(n34379));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30365_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i30364_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[3]), .O(n34378));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30364_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_CARRY add_130_27 (.CI(n24293), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n24294));
    SB_LUT4 i30363_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[4]), .O(n34377));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30363_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i30362_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[5]), .O(n34376));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30362_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i30361_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[6]), .O(n34375));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30361_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i30431_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_counter[7]), .O(n34374));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i30431_2_lut_4_lut.LUT_INIT = 16'h2100;
    SB_LUT4 i1_2_lut_4_lut (.I0(commutation_state[0]), .I1(n4_adj_5918), 
            .I2(commutation_state_prev[0]), .I3(dti_N_283), .O(n14289));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hdeff;
    SB_LUT4 add_130_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n24292), .O(n823)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_26 (.CI(n24292), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n24293));
    SB_LUT4 i12421_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[0]), 
            .I2(n4), .I3(n13080), .O(n16293));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i12421_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 LessThan_897_i6_3_lut_3_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_4460[3]), 
            .I2(o_Rx_DV_N_4460[2]), .I3(GND_net), .O(n6_adj_5903));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_897_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i30261_3_lut_4_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_4460[3]), 
            .I2(o_Rx_DV_N_4460[2]), .I3(r_Clock_Count[2]), .O(n34565));   // verilog/uart_rx.v(119[17:57])
    defparam i30261_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_DFF commutation_state_prev_i2 (.Q(commutation_state_prev[2]), .C(clk16MHz), 
           .D(commutation_state[2]));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF commutation_state_prev_i1 (.Q(commutation_state_prev[1]), .C(clk16MHz), 
           .D(commutation_state[1]));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_LUT4 i12431_4_lut (.I0(r_Rx_Data), .I1(rx_data[0]), .I2(n31633), 
            .I3(n27), .O(n16303));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12431_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12432_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[0]), .I2(n7_adj_5867), 
            .I3(state_7__N_5291), .O(n16304));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12432_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12453_4_lut (.I0(n15305), .I1(GHA), .I2(commutation_state[2]), 
            .I3(n14313), .O(n16325));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i12453_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i12450_4_lut (.I0(n15305), .I1(GHB), .I2(commutation_state[2]), 
            .I3(n14313), .O(n16322));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i12450_4_lut.LUT_INIT = 16'h0544;
    SB_LUT4 i1_4_lut_adj_2704 (.I0(hall3), .I1(commutation_state[1]), .I2(hall2), 
            .I3(hall1), .O(n28305));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i1_4_lut_adj_2704.LUT_INIT = 16'hd054;
    SB_CARRY add_130_9 (.CI(n24275), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n24276));
    SB_LUT4 add_130_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n24291), .O(n824)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_25 (.CI(n24291), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n24292));
    SB_LUT4 i30718_4_lut (.I0(data_ready), .I1(n4779), .I2(n24), .I3(\ID_READOUT_FSM.state [0]), 
            .O(n34405));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i30718_4_lut.LUT_INIT = 16'hdccc;
    SB_LUT4 i30691_2_lut (.I0(n24), .I1(n4779), .I2(GND_net), .I3(GND_net), 
            .O(n34408));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i30691_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_130_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n24274), .O(n841)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i49_4_lut (.I0(n34408), .I1(n34405), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(n6_adj_5914), .O(n27901));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i49_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 add_130_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n24290), .O(n825)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_24 (.CI(n24290), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n24291));
    SB_LUT4 add_130_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n24289), .O(n826)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30462_3_lut_4_lut (.I0(r_Clock_Count_adj_5979[3]), .I1(o_Rx_DV_N_4460[3]), 
            .I2(o_Rx_DV_N_4460[2]), .I3(r_Clock_Count_adj_5979[2]), .O(n34766));   // verilog/uart_tx.v(117[17:57])
    defparam i30462_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_130_8 (.CI(n24274), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n24275));
    SB_CARRY add_130_23 (.CI(n24289), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n24290));
    SB_LUT4 i12427_3_lut (.I0(n29420), .I1(r_Bit_Index[0]), .I2(n14452), 
            .I3(GND_net), .O(n16299));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12427_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i12424_3_lut (.I0(n29448), .I1(r_Bit_Index_adj_5980[0]), .I2(n14448), 
            .I3(GND_net), .O(n16296));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i12424_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 add_130_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n24273), .O(n842)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_7 (.CI(n24273), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n24274));
    SB_LUT4 i520_2_lut (.I0(n927), .I1(n21468), .I2(GND_net), .I3(GND_net), 
            .O(n1957));   // verilog/TinyFPGA_B.v(370[18] 372[12])
    defparam i520_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 LessThan_900_i6_3_lut_3_lut (.I0(r_Clock_Count_adj_5979[3]), .I1(o_Rx_DV_N_4460[3]), 
            .I2(o_Rx_DV_N_4460[2]), .I3(GND_net), .O(n6_adj_5877));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i28487_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(GND_net), .I3(GND_net), .O(n32782));
    defparam i28487_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31891_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n4779), .I2(n32782), 
            .I3(n25), .O(n17));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i31891_4_lut.LUT_INIT = 16'h88ba;
    SB_LUT4 add_130_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n24288), .O(n827)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_130_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n24272), .O(n843)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12415_3_lut (.I0(\data_in_frame[23] [7]), .I1(rx_data[7]), 
            .I2(n14874), .I3(GND_net), .O(n16287));   // verilog/coms.v(128[12] 293[6])
    defparam i12415_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12412_3_lut (.I0(\data_in_frame[23] [6]), .I1(rx_data[6]), 
            .I2(n14874), .I3(GND_net), .O(n16284));   // verilog/coms.v(128[12] 293[6])
    defparam i12412_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12409_3_lut (.I0(\data_in_frame[23] [5]), .I1(rx_data[5]), 
            .I2(n14874), .I3(GND_net), .O(n16281));   // verilog/coms.v(128[12] 293[6])
    defparam i12409_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12695_3_lut (.I0(\data_in_frame[3] [7]), .I1(rx_data[7]), .I2(n30579), 
            .I3(GND_net), .O(n16567));   // verilog/coms.v(128[12] 293[6])
    defparam i12695_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12403_3_lut (.I0(\data_in_frame[23] [3]), .I1(rx_data[3]), 
            .I2(n14874), .I3(GND_net), .O(n16275));   // verilog/coms.v(128[12] 293[6])
    defparam i12403_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_900_i15_2_lut (.I0(r_Clock_Count_adj_5979[7]), .I1(o_Rx_DV_N_4460[7]), 
            .I2(GND_net), .I3(GND_net), .O(n15));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_900_i9_2_lut (.I0(r_Clock_Count_adj_5979[4]), .I1(o_Rx_DV_N_4460[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_900_i13_2_lut (.I0(r_Clock_Count_adj_5979[6]), .I1(o_Rx_DV_N_4460[6]), 
            .I2(GND_net), .I3(GND_net), .O(n13));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12400_3_lut (.I0(\data_in_frame[23] [2]), .I1(rx_data[2]), 
            .I2(n14874), .I3(GND_net), .O(n16272));   // verilog/coms.v(128[12] 293[6])
    defparam i12400_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_900_i11_2_lut (.I0(r_Clock_Count_adj_5979[5]), .I1(o_Rx_DV_N_4460[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12397_3_lut (.I0(\data_in_frame[23] [1]), .I1(rx_data[1]), 
            .I2(n14874), .I3(GND_net), .O(n16269));   // verilog/coms.v(128[12] 293[6])
    defparam i12397_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_900_i4_4_lut (.I0(r_Clock_Count_adj_5979[0]), .I1(o_Rx_DV_N_4460[1]), 
            .I2(r_Clock_Count_adj_5979[1]), .I3(o_Rx_DV_N_4460[0]), .O(n4_adj_5878));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i31199_3_lut (.I0(n4_adj_5878), .I1(o_Rx_DV_N_4460[5]), .I2(n11), 
            .I3(GND_net), .O(n35503));   // verilog/uart_tx.v(117[17:57])
    defparam i31199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31200_3_lut (.I0(n35503), .I1(o_Rx_DV_N_4460[6]), .I2(n13), 
            .I3(GND_net), .O(n35504));   // verilog/uart_tx.v(117[17:57])
    defparam i31200_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30801_4_lut (.I0(n13), .I1(n11), .I2(n9), .I3(n34766), 
            .O(n35105));
    defparam i30801_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 LessThan_900_i8_3_lut (.I0(n6_adj_5877), .I1(o_Rx_DV_N_4460[4]), 
            .I2(n9), .I3(GND_net), .O(n8_adj_5876));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_900_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30772_3_lut (.I0(n35504), .I1(o_Rx_DV_N_4460[7]), .I2(n15), 
            .I3(GND_net), .O(n35076));   // verilog/uart_tx.v(117[17:57])
    defparam i30772_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12394_3_lut (.I0(\data_in_frame[23] [0]), .I1(rx_data[0]), 
            .I2(n14874), .I3(GND_net), .O(n16266));   // verilog/coms.v(128[12] 293[6])
    defparam i12394_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12391_3_lut (.I0(\data_in_frame[22] [7]), .I1(rx_data[7]), 
            .I2(n14877), .I3(GND_net), .O(n16263));   // verilog/coms.v(128[12] 293[6])
    defparam i12391_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31322_4_lut (.I0(n35076), .I1(n8_adj_5876), .I2(n15), .I3(n35105), 
            .O(n35626));   // verilog/uart_tx.v(117[17:57])
    defparam i31322_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31323_3_lut (.I0(n35626), .I1(o_Rx_DV_N_4460[8]), .I2(r_Clock_Count_adj_5979[8]), 
            .I3(GND_net), .O(n3370));   // verilog/uart_tx.v(117[17:57])
    defparam i31323_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 RX_I_0_1_lut (.I0(RX_c), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(RX_N_18));   // verilog/TinyFPGA_B.v(250[11:14])
    defparam RX_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_130_6 (.CI(n24272), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n24273));
    SB_LUT4 i12388_3_lut (.I0(\data_in_frame[22] [6]), .I1(rx_data[6]), 
            .I2(n14877), .I3(GND_net), .O(n16260));   // verilog/coms.v(128[12] 293[6])
    defparam i12388_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_130_22 (.CI(n24288), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n24289));
    SB_LUT4 add_130_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n24271), .O(n844)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12475_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[7]), 
            .I2(n21571), .I3(n13066), .O(n16347));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i12475_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 LessThan_897_i9_2_lut (.I0(r_Clock_Count[4]), .I1(o_Rx_DV_N_4460[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_5905));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_897_i9_2_lut.LUT_INIT = 16'h6666;
    SB_DFF dti_counter_1580__i0 (.Q(dti_counter[0]), .C(clk16MHz), .D(n55));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_LUT4 LessThan_897_i4_4_lut (.I0(r_Clock_Count[0]), .I1(o_Rx_DV_N_4460[1]), 
            .I2(r_Clock_Count[1]), .I3(o_Rx_DV_N_4460[0]), .O(n4_adj_5902));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_897_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_CARRY add_130_3 (.CI(n24269), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n24270));
    SB_LUT4 LessThan_897_i8_3_lut (.I0(n6_adj_5903), .I1(o_Rx_DV_N_4460[4]), 
            .I2(n9_adj_5905), .I3(GND_net), .O(n8_adj_5904));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_897_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_IO RX_pad (.PACKAGE_PIN(RX), .OUTPUT_ENABLE(VCC_net), .D_IN_0(RX_c));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam RX_pad.PIN_TYPE = 6'b000001;
    defparam RX_pad.PULLUP = 1'b0;
    defparam RX_pad.NEG_TRIGGER = 1'b0;
    defparam RX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO ENCODER1_B_pad (.PACKAGE_PIN(ENCODER1_B), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER1_B_N));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER1_B_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER1_B_pad.PULLUP = 1'b0;
    defparam ENCODER1_B_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER1_B_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO ENCODER1_A_pad (.PACKAGE_PIN(ENCODER1_A), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER1_A_N));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER1_A_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER1_A_pad.PULLUP = 1'b0;
    defparam ENCODER1_A_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER1_A_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO ENCODER0_B_pad (.PACKAGE_PIN(ENCODER0_B), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER0_B_N));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER0_B_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER0_B_pad.PULLUP = 1'b0;
    defparam ENCODER0_B_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER0_B_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO ENCODER0_A_pad (.PACKAGE_PIN(ENCODER0_A), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(ENCODER0_A_N));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ENCODER0_A_pad.PIN_TYPE = 6'b000001;
    defparam ENCODER0_A_pad.PULLUP = 1'b0;
    defparam ENCODER0_A_pad.NEG_TRIGGER = 1'b0;
    defparam ENCODER0_A_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHA_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(DE_c));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLA_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHB_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLB_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INHC_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(INLC_c_0));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(CS_c));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(CS_CLK_c));   // /home/administrator/lscc/iCEcube2.2020.12/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i2_2_lut (.I0(dti_counter[1]), .I1(dti_counter[5]), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_5888));   // verilog/TinyFPGA_B.v(159[9:23])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i31661_4_lut (.I0(n8_adj_5904), .I1(n4_adj_5902), .I2(n9_adj_5905), 
            .I3(n34565), .O(n35965));   // verilog/uart_rx.v(119[17:57])
    defparam i31661_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31662_3_lut (.I0(n35965), .I1(o_Rx_DV_N_4460[5]), .I2(r_Clock_Count[5]), 
            .I3(GND_net), .O(n35966));   // verilog/uart_rx.v(119[17:57])
    defparam i31662_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i6_4_lut (.I0(dti_counter[2]), .I1(dti_counter[6]), .I2(dti_counter[4]), 
            .I3(dti_counter[7]), .O(n14));   // verilog/TinyFPGA_B.v(159[9:23])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31630_3_lut (.I0(n35966), .I1(o_Rx_DV_N_4460[6]), .I2(r_Clock_Count[6]), 
            .I3(GND_net), .O(n35934));   // verilog/uart_rx.v(119[17:57])
    defparam i31630_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i11433_3_lut (.I0(n14313), .I1(commutation_state[1]), .I2(dti), 
            .I3(GND_net), .O(n15305));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i11433_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i31754_2_lut (.I0(commutation_state[2]), .I1(commutation_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36058));   // verilog/TinyFPGA_B.v(188[7] 207[14])
    defparam i31754_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 add_130_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n24287), .O(n828)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31528_3_lut (.I0(n35934), .I1(o_Rx_DV_N_4460[7]), .I2(r_Clock_Count[7]), 
            .I3(GND_net), .O(n3367));   // verilog/uart_rx.v(119[17:57])
    defparam i31528_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 mux_1005_i1_3_lut (.I0(commutation_state[0]), .I1(commutation_state[1]), 
            .I2(commutation_state[2]), .I3(GND_net), .O(GLB_N_266));   // verilog/TinyFPGA_B.v(188[7] 207[14])
    defparam mux_1005_i1_3_lut.LUT_INIT = 16'h9898;
    SB_LUT4 i11439_2_lut (.I0(n14313), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n15311));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i11439_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7_4_lut (.I0(dti_counter[0]), .I1(n14), .I2(n10_adj_5888), 
            .I3(dti_counter[3]), .O(n10717));   // verilog/TinyFPGA_B.v(159[9:23])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2705 (.I0(n10717), .I1(commutation_state[1]), .I2(dti), 
            .I3(commutation_state[2]), .O(n14313));
    defparam i1_4_lut_adj_2705.LUT_INIT = 16'ha3af;
    SB_LUT4 i1_4_lut_adj_2706 (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(commutation_state_prev[2]), .I3(commutation_state_prev[1]), 
            .O(n4_adj_5918));   // verilog/TinyFPGA_B.v(134[7:48])
    defparam i1_4_lut_adj_2706.LUT_INIT = 16'h7bde;
    SB_CARRY add_130_21 (.CI(n24287), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n24288));
    SB_DFF read_170 (.Q(read), .C(clk16MHz), .D(n31038));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_LUT4 mux_963_i1_3_lut (.I0(commutation_state[2]), .I1(commutation_state[1]), 
            .I2(commutation_state[0]), .I3(GND_net), .O(GLA_N_252));   // verilog/TinyFPGA_B.v(188[7] 207[14])
    defparam mux_963_i1_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 i2_3_lut (.I0(hall3), .I1(hall2), .I2(hall1), .I3(GND_net), 
            .O(commutation_state_7__N_95));   // verilog/TinyFPGA_B.v(154[7:32])
    defparam i2_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i14_3_lut (.I0(hall2), .I1(hall3), .I2(hall1), .I3(GND_net), 
            .O(n6_adj_5922));
    defparam i14_3_lut.LUT_INIT = 16'h7e7e;
    SB_LUT4 i1_3_lut (.I0(hall3), .I1(hall2), .I2(hall1), .I3(GND_net), 
            .O(commutation_state_7__N_87[0]));   // verilog/TinyFPGA_B.v(151[4] 153[7])
    defparam i1_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i31869_2_lut (.I0(n10717), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(dti_N_283));
    defparam i31869_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i555_1_lut (.I0(reset), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1992));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i555_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i17657_2_lut (.I0(n62), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(read_N_288));   // verilog/TinyFPGA_B.v(352[12:35])
    defparam i17657_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_2707 (.I0(delay_counter[12]), .I1(delay_counter[11]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_5912));
    defparam i1_2_lut_adj_2707.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut (.I0(delay_counter[9]), .I1(n4_adj_5912), .I2(delay_counter[10]), 
            .I3(n12983), .O(n30268));
    defparam i2_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i2_4_lut_adj_2708 (.I0(n30268), .I1(n12963), .I2(delay_counter[13]), 
            .I3(delay_counter[14]), .O(n30349));
    defparam i2_4_lut_adj_2708.LUT_INIT = 16'hffec;
    SB_LUT4 i3_3_lut (.I0(delay_counter[20]), .I1(delay_counter[21]), .I2(delay_counter[23]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_4_lut_adj_2709 (.I0(delay_counter[22]), .I1(n30349), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n7));
    defparam i2_4_lut_adj_2709.LUT_INIT = 16'ha8a0;
    SB_LUT4 i17746_4_lut (.I0(n7), .I1(delay_counter[31]), .I2(n12969), 
            .I3(n8), .O(n927));   // verilog/TinyFPGA_B.v(366[14:38])
    defparam i17746_4_lut.LUT_INIT = 16'h3230;
    SB_DFFESR delay_counter__i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n14321), 
            .D(n846), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n14321), 
            .D(n845), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n14321), 
            .D(n844), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n14321), 
            .D(n843), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n14321), 
            .D(n842), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n14321), 
            .D(n841), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n14321), 
            .D(n840), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n14321), 
            .D(n839), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n14321), 
            .D(n838), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i10 (.Q(delay_counter[10]), .C(clk16MHz), .E(n14321), 
            .D(n837), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i11 (.Q(delay_counter[11]), .C(clk16MHz), .E(n14321), 
            .D(n836), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i12 (.Q(delay_counter[12]), .C(clk16MHz), .E(n14321), 
            .D(n835), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i13 (.Q(delay_counter[13]), .C(clk16MHz), .E(n14321), 
            .D(n834), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i14 (.Q(delay_counter[14]), .C(clk16MHz), .E(n14321), 
            .D(n833), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i15 (.Q(delay_counter[15]), .C(clk16MHz), .E(n14321), 
            .D(n832), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i16 (.Q(delay_counter[16]), .C(clk16MHz), .E(n14321), 
            .D(n831), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i17 (.Q(delay_counter[17]), .C(clk16MHz), .E(n14321), 
            .D(n830), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i18 (.Q(delay_counter[18]), .C(clk16MHz), .E(n14321), 
            .D(n829), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i19 (.Q(delay_counter[19]), .C(clk16MHz), .E(n14321), 
            .D(n828), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i20 (.Q(delay_counter[20]), .C(clk16MHz), .E(n14321), 
            .D(n827), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i21 (.Q(delay_counter[21]), .C(clk16MHz), .E(n14321), 
            .D(n826), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i22 (.Q(delay_counter[22]), .C(clk16MHz), .E(n14321), 
            .D(n825), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i23 (.Q(delay_counter[23]), .C(clk16MHz), .E(n14321), 
            .D(n824), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i24 (.Q(delay_counter[24]), .C(clk16MHz), .E(n14321), 
            .D(n823), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i25 (.Q(delay_counter[25]), .C(clk16MHz), .E(n14321), 
            .D(n822), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i26 (.Q(delay_counter[26]), .C(clk16MHz), .E(n14321), 
            .D(n821), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i27 (.Q(delay_counter[27]), .C(clk16MHz), .E(n14321), 
            .D(n820), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i28 (.Q(delay_counter[28]), .C(clk16MHz), .E(n14321), 
            .D(n819), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_LUT4 i6_4_lut_adj_2710 (.I0(ID[7]), .I1(ID[4]), .I2(ID[5]), .I3(ID[6]), 
            .O(n14_adj_5910));   // verilog/TinyFPGA_B.v(364[12:17])
    defparam i6_4_lut_adj_2710.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter__i29 (.Q(delay_counter[29]), .C(clk16MHz), .E(n14321), 
            .D(n818), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_LUT4 i5_4_lut (.I0(ID[0]), .I1(ID[1]), .I2(ID[3]), .I3(ID[2]), 
            .O(n13_adj_5911));   // verilog/TinyFPGA_B.v(364[12:17])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR delay_counter__i30 (.Q(delay_counter[30]), .C(clk16MHz), .E(n14321), 
            .D(n817), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESR delay_counter__i31 (.Q(delay_counter[31]), .C(clk16MHz), .E(n14321), 
            .D(n816), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_LUT4 i17648_4_lut (.I0(n13_adj_5911), .I1(n31907), .I2(n14_adj_5910), 
            .I3(n34), .O(n21468));
    defparam i17648_4_lut.LUT_INIT = 16'hfac8;
    SB_LUT4 i11493_4_lut (.I0(n14321), .I1(n927), .I2(n34322), .I3(n21590), 
            .O(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i11493_4_lut.LUT_INIT = 16'ha088;
    SB_DFFESR delay_counter__i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n14321), 
            .D(n847), .R(n15336));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFFESS commutation_state_i0 (.Q(commutation_state[0]), .C(clk16MHz), 
            .E(n6_adj_5922), .D(commutation_state_7__N_87[0]), .S(commutation_state_7__N_95));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFFESR GLA_165 (.Q(INLA_c_0), .C(clk16MHz), .E(n14313), .D(GLA_N_252), 
            .R(n15311));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFFESR GLB_167 (.Q(INLB_c_0), .C(clk16MHz), .E(n14313), .D(GLB_N_266), 
            .R(n15311));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFFESR GLC_169 (.Q(INLC_c_0), .C(clk16MHz), .E(n14313), .D(n36058), 
            .R(n15305));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    GND i1 (.Y(GND_net));
    SB_DFF \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(clk16MHz), 
           .D(n17));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFF \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(clk16MHz), 
           .D(n27901));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_DFF commutation_state_i1 (.Q(commutation_state[1]), .C(clk16MHz), 
           .D(n28305));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF GHC_168 (.Q(GHC), .C(clk16MHz), .D(n16319));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF GHB_166 (.Q(GHB), .C(clk16MHz), .D(n16322));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF GHA_164 (.Q(GHA), .C(clk16MHz), .D(n16325));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_LUT4 i12385_3_lut (.I0(\data_in_frame[22] [5]), .I1(rx_data[5]), 
            .I2(n14877), .I3(GND_net), .O(n16257));   // verilog/coms.v(128[12] 293[6])
    defparam i12385_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF dti_counter_1580__i7 (.Q(dti_counter[7]), .C(clk16MHz), .D(n48));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_DFF dti_counter_1580__i6 (.Q(dti_counter[6]), .C(clk16MHz), .D(n49));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_LUT4 add_130_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n24286), .O(n829)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_20_lut.LUT_INIT = 16'hC33C;
    SB_DFF dti_counter_1580__i5 (.Q(dti_counter[5]), .C(clk16MHz), .D(n50));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_DFF dti_counter_1580__i4 (.Q(dti_counter[4]), .C(clk16MHz), .D(n51));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_DFF dti_counter_1580__i3 (.Q(dti_counter[3]), .C(clk16MHz), .D(n52));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_DFF dti_counter_1580__i2 (.Q(dti_counter[2]), .C(clk16MHz), .D(n53));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_DFF dti_counter_1580__i1 (.Q(dti_counter[1]), .C(clk16MHz), .D(n54));   // verilog/TinyFPGA_B.v(162[23:37])
    SB_CARRY add_130_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n24269));
    SB_CARRY add_130_4 (.CI(n24270), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n24271));
    SB_LUT4 i12_4_lut (.I0(\data_in_frame[22] [3]), .I1(n14836), .I2(n14877), 
            .I3(rx_data[3]), .O(n28045));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut_adj_2711 (.I0(\data_in_frame[22] [2]), .I1(n14836), 
            .I2(n14877), .I3(rx_data[2]), .O(n28047));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut_adj_2711.LUT_INIT = 16'h3a0a;
    SB_CARRY add_130_20 (.CI(n24286), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n24287));
    SB_LUT4 i12_4_lut_adj_2712 (.I0(\data_in_frame[22] [1]), .I1(n14836), 
            .I2(n14877), .I3(rx_data[1]), .O(n28049));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut_adj_2712.LUT_INIT = 16'h3a0a;
    SB_LUT4 add_130_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n24285), .O(n830)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_19 (.CI(n24285), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n24286));
    SB_LUT4 i1_2_lut_adj_2713 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(GND_net), .I3(GND_net), .O(n8595));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i1_2_lut_adj_2713.LUT_INIT = 16'h4444;
    SB_LUT4 i12698_3_lut (.I0(\data_in_frame[4] [0]), .I1(rx_data[0]), .I2(n28623), 
            .I3(GND_net), .O(n16570));   // verilog/coms.v(128[12] 293[6])
    defparam i12698_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12703_3_lut (.I0(\data_in_frame[4] [1]), .I1(rx_data[1]), .I2(n28623), 
            .I3(GND_net), .O(n16575));   // verilog/coms.v(128[12] 293[6])
    defparam i12703_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12706_3_lut (.I0(\data_in_frame[4] [2]), .I1(rx_data[2]), .I2(n28623), 
            .I3(GND_net), .O(n16578));   // verilog/coms.v(128[12] 293[6])
    defparam i12706_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12709_3_lut (.I0(\data_in_frame[4] [3]), .I1(rx_data[3]), .I2(n28623), 
            .I3(GND_net), .O(n16581));   // verilog/coms.v(128[12] 293[6])
    defparam i12709_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12712_3_lut (.I0(\data_in_frame[4] [4]), .I1(rx_data[4]), .I2(n28623), 
            .I3(GND_net), .O(n16584));   // verilog/coms.v(128[12] 293[6])
    defparam i12712_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12715_3_lut (.I0(\data_in_frame[4] [5]), .I1(rx_data[5]), .I2(n28623), 
            .I3(GND_net), .O(n16587));   // verilog/coms.v(128[12] 293[6])
    defparam i12715_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12718_3_lut (.I0(\data_in_frame[4] [6]), .I1(rx_data[6]), .I2(n28623), 
            .I3(GND_net), .O(n16590));   // verilog/coms.v(128[12] 293[6])
    defparam i12718_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_130_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n24270), .O(n845)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12721_3_lut (.I0(\data_in_frame[4] [7]), .I1(rx_data[7]), .I2(n28623), 
            .I3(GND_net), .O(n16593));   // verilog/coms.v(128[12] 293[6])
    defparam i12721_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut (.I0(n10), .I1(reset), .I2(n127), .I3(GND_net), 
            .O(n14909));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 add_130_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n847)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_5 (.CI(n24271), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n24272));
    SB_LUT4 add_130_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n24284), .O(n831)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_18 (.CI(n24284), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n24285));
    SB_LUT4 i12731_3_lut (.I0(current[11]), .I1(data_adj_5966[11]), .I2(n14347), 
            .I3(GND_net), .O(n16603));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12731_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11990_3_lut_4_lut (.I0(\data_in_frame[6] [2]), .I1(rx_data[2]), 
            .I2(n10), .I3(n124), .O(n15862));   // verilog/coms.v(128[12] 293[6])
    defparam i11990_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i12732_3_lut (.I0(current[10]), .I1(data_adj_5966[10]), .I2(n14347), 
            .I3(GND_net), .O(n16604));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12732_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12733_3_lut (.I0(current[9]), .I1(data_adj_5966[9]), .I2(n14347), 
            .I3(GND_net), .O(n16605));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12733_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11987_3_lut_4_lut (.I0(\data_in_frame[6] [1]), .I1(rx_data[1]), 
            .I2(n10), .I3(n124), .O(n15859));   // verilog/coms.v(128[12] 293[6])
    defparam i11987_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i12734_3_lut (.I0(current[8]), .I1(data_adj_5966[8]), .I2(n14347), 
            .I3(GND_net), .O(n16606));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12734_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11984_3_lut_4_lut (.I0(\data_in_frame[6] [0]), .I1(rx_data[0]), 
            .I2(n10), .I3(n124), .O(n15856));   // verilog/coms.v(128[12] 293[6])
    defparam i11984_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i12735_3_lut (.I0(current[7]), .I1(data_adj_5966[7]), .I2(n14347), 
            .I3(GND_net), .O(n16607));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12735_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12736_3_lut (.I0(current[6]), .I1(data_adj_5966[6]), .I2(n14347), 
            .I3(GND_net), .O(n16608));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12736_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12737_3_lut (.I0(current[5]), .I1(data_adj_5966[5]), .I2(n14347), 
            .I3(GND_net), .O(n16609));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12737_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12738_3_lut (.I0(current[4]), .I1(data_adj_5966[4]), .I2(n14347), 
            .I3(GND_net), .O(n16610));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12738_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12739_3_lut (.I0(current[3]), .I1(data_adj_5966[3]), .I2(n14347), 
            .I3(GND_net), .O(n16611));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12739_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12740_3_lut (.I0(current[2]), .I1(data_adj_5966[2]), .I2(n14347), 
            .I3(GND_net), .O(n16612));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12741_3_lut (.I0(current[1]), .I1(data_adj_5966[1]), .I2(n14347), 
            .I3(GND_net), .O(n16613));   // verilog/tli4970.v(35[10] 68[6])
    defparam i12741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12742_3_lut (.I0(baudrate[31]), .I1(data_adj_5961[7]), .I2(n30266), 
            .I3(GND_net), .O(n16614));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12742_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12743_3_lut (.I0(baudrate[30]), .I1(data_adj_5961[6]), .I2(n30266), 
            .I3(GND_net), .O(n16615));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12743_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12744_3_lut (.I0(baudrate[29]), .I1(data_adj_5961[5]), .I2(n30266), 
            .I3(GND_net), .O(n16616));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12744_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12745_3_lut (.I0(baudrate[28]), .I1(data_adj_5961[4]), .I2(n30266), 
            .I3(GND_net), .O(n16617));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12745_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_130_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n24283), .O(n832)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_17 (.CI(n24283), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n24284));
    SB_LUT4 i12746_3_lut (.I0(baudrate[27]), .I1(data_adj_5961[3]), .I2(n30266), 
            .I3(GND_net), .O(n16618));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12746_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12747_3_lut (.I0(baudrate[26]), .I1(data_adj_5961[2]), .I2(n30266), 
            .I3(GND_net), .O(n16619));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12747_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 dti_counter_1580_add_4_9_lut (.I0(n34374), .I1(n21564), .I2(dti_counter[7]), 
            .I3(n24596), .O(n48)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_9_lut.LUT_INIT = 16'hE22E;
    SB_LUT4 dti_counter_1580_add_4_8_lut (.I0(n34375), .I1(n21564), .I2(dti_counter[6]), 
            .I3(n24595), .O(n49)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_8_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_8 (.CI(n24595), .I0(n21564), .I1(dti_counter[6]), 
            .CO(n24596));
    SB_LUT4 dti_counter_1580_add_4_7_lut (.I0(n34376), .I1(n21564), .I2(dti_counter[5]), 
            .I3(n24594), .O(n50)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_7_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_7 (.CI(n24594), .I0(n21564), .I1(dti_counter[5]), 
            .CO(n24595));
    SB_LUT4 dti_counter_1580_add_4_6_lut (.I0(n34377), .I1(n21564), .I2(dti_counter[4]), 
            .I3(n24593), .O(n51)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_6_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_6 (.CI(n24593), .I0(n21564), .I1(dti_counter[4]), 
            .CO(n24594));
    SB_LUT4 dti_counter_1580_add_4_5_lut (.I0(n34378), .I1(n21564), .I2(dti_counter[3]), 
            .I3(n24592), .O(n52)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_5_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_5 (.CI(n24592), .I0(n21564), .I1(dti_counter[3]), 
            .CO(n24593));
    SB_LUT4 dti_counter_1580_add_4_4_lut (.I0(n34379), .I1(n21564), .I2(dti_counter[2]), 
            .I3(n24591), .O(n53)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_4_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_4 (.CI(n24591), .I0(n21564), .I1(dti_counter[2]), 
            .CO(n24592));
    SB_LUT4 dti_counter_1580_add_4_3_lut (.I0(n34380), .I1(n21564), .I2(dti_counter[1]), 
            .I3(n24590), .O(n54)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_3_lut.LUT_INIT = 16'hE22E;
    SB_CARRY dti_counter_1580_add_4_3 (.CI(n24590), .I0(n21564), .I1(dti_counter[1]), 
            .CO(n24591));
    SB_LUT4 dti_counter_1580_add_4_2_lut (.I0(n34352), .I1(n1951), .I2(dti_counter[0]), 
            .I3(VCC_net), .O(n55)) /* synthesis syn_instantiated=1 */ ;
    defparam dti_counter_1580_add_4_2_lut.LUT_INIT = 16'h8BB8;
    SB_CARRY dti_counter_1580_add_4_2 (.CI(VCC_net), .I0(n1951), .I1(dti_counter[0]), 
            .CO(n24590));
    SB_LUT4 i12748_3_lut (.I0(baudrate[25]), .I1(data_adj_5961[1]), .I2(n30266), 
            .I3(GND_net), .O(n16620));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12748_3_lut.LUT_INIT = 16'hacac;
    SB_DFF commutation_state_i2 (.Q(commutation_state[2]), .C(clk16MHz), 
           .D(n28285));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    SB_DFF reset_171 (.Q(reset), .C(clk16MHz), .D(n27931));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    SB_LUT4 add_130_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n24282), .O(n833)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_16 (.CI(n24282), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n24283));
    SB_LUT4 add_130_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n24281), .O(n834)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_130_15 (.CI(n24281), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n24282));
    SB_LUT4 i12749_3_lut (.I0(baudrate[24]), .I1(data_adj_5961[0]), .I2(n30266), 
            .I3(GND_net), .O(n16621));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12749_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_130_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n24280), .O(n835)) /* synthesis syn_instantiated=1 */ ;
    defparam add_130_14_lut.LUT_INIT = 16'hC33C;
    \quadrature_decoder(0)_U0  quad_counter0 (.ENCODER0_B_N_keep(ENCODER0_B_N), 
            .n1292(clk16MHz), .ENCODER0_A_N_keep(ENCODER0_A_N), .b_prev(b_prev), 
            .\a_new[1] (a_new[1]), .GND_net(GND_net), .n15794(n15794), 
            .n15793(n15793), .a_prev(a_prev), .position_31__N_4808(position_31__N_4808), 
            .\encoder0_position[0] (encoder0_position[0]), .n1250(n1250), 
            .n1252(n1252), .n1254(n1254), .n1256(n1256), .n1258(n1258), 
            .n1260(n1260), .n1262(n1262), .n1264(n1264), .\encoder0_position[23] (encoder0_position[23]), 
            .\encoder0_position[22] (encoder0_position[22]), .\encoder0_position[21] (encoder0_position[21]), 
            .\encoder0_position[20] (encoder0_position[20]), .\encoder0_position[19] (encoder0_position[19]), 
            .\encoder0_position[18] (encoder0_position[18]), .\encoder0_position[17] (encoder0_position[17]), 
            .\encoder0_position[16] (encoder0_position[16]), .\encoder0_position[15] (encoder0_position[15]), 
            .\encoder0_position[14] (encoder0_position[14]), .\encoder0_position[13] (encoder0_position[13]), 
            .\encoder0_position[12] (encoder0_position[12]), .\encoder0_position[11] (encoder0_position[11]), 
            .\encoder0_position[10] (encoder0_position[10]), .\encoder0_position[9] (encoder0_position[9]), 
            .\encoder0_position[8] (encoder0_position[8]), .\encoder0_position[7] (encoder0_position[7]), 
            .\encoder0_position[6] (encoder0_position[6]), .\encoder0_position[5] (encoder0_position[5]), 
            .\encoder0_position[4] (encoder0_position[4]), .\encoder0_position[3] (encoder0_position[3]), 
            .\encoder0_position[2] (encoder0_position[2]), .\encoder0_position[1] (encoder0_position[1]), 
            .\b_new[1] (b_new[1]), .VCC_net(VCC_net), .n15671(n15671), 
            .n1248(n1248), .debounce_cnt_N_4805(debounce_cnt_N_4805)) /* synthesis lattice_noprune=1 */ ;   // verilog/TinyFPGA_B.v(291[27] 297[6])
    SB_CARRY add_130_14 (.CI(n24280), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n24281));
    SB_LUT4 i12319_3_lut (.I0(\data_in_frame[19] [7]), .I1(rx_data[7]), 
            .I2(n30632), .I3(GND_net), .O(n16191));   // verilog/coms.v(128[12] 293[6])
    defparam i12319_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12316_3_lut (.I0(\data_in_frame[19] [6]), .I1(rx_data[6]), 
            .I2(n30632), .I3(GND_net), .O(n16188));   // verilog/coms.v(128[12] 293[6])
    defparam i12316_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12313_3_lut (.I0(\data_in_frame[19] [5]), .I1(rx_data[5]), 
            .I2(n30632), .I3(GND_net), .O(n16185));   // verilog/coms.v(128[12] 293[6])
    defparam i12313_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12310_3_lut (.I0(\data_in_frame[19] [4]), .I1(rx_data[4]), 
            .I2(n30632), .I3(GND_net), .O(n16182));   // verilog/coms.v(128[12] 293[6])
    defparam i12310_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12307_3_lut (.I0(\data_in_frame[19] [3]), .I1(rx_data[3]), 
            .I2(n30632), .I3(GND_net), .O(n16179));   // verilog/coms.v(128[12] 293[6])
    defparam i12307_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12304_3_lut (.I0(\data_in_frame[19] [2]), .I1(rx_data[2]), 
            .I2(n30632), .I3(GND_net), .O(n16176));   // verilog/coms.v(128[12] 293[6])
    defparam i12304_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12750_3_lut (.I0(baudrate[23]), .I1(data_adj_5961[7]), .I2(n28612), 
            .I3(GND_net), .O(n16622));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12750_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12751_3_lut (.I0(baudrate[22]), .I1(data_adj_5961[6]), .I2(n28612), 
            .I3(GND_net), .O(n16623));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12751_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12301_3_lut (.I0(\data_in_frame[19] [1]), .I1(rx_data[1]), 
            .I2(n30632), .I3(GND_net), .O(n16173));   // verilog/coms.v(128[12] 293[6])
    defparam i12301_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12752_3_lut (.I0(baudrate[21]), .I1(data_adj_5961[5]), .I2(n28612), 
            .I3(GND_net), .O(n16624));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12752_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12753_3_lut (.I0(baudrate[20]), .I1(data_adj_5961[4]), .I2(n28612), 
            .I3(GND_net), .O(n16625));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12753_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12754_3_lut (.I0(baudrate[19]), .I1(data_adj_5961[3]), .I2(n28612), 
            .I3(GND_net), .O(n16626));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12754_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12755_3_lut (.I0(baudrate[18]), .I1(data_adj_5961[2]), .I2(n28612), 
            .I3(GND_net), .O(n16627));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12755_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12298_3_lut (.I0(\data_in_frame[19] [0]), .I1(rx_data[0]), 
            .I2(n30632), .I3(GND_net), .O(n16170));   // verilog/coms.v(128[12] 293[6])
    defparam i12298_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11867_3_lut (.I0(ID[0]), .I1(data_adj_5961[0]), .I2(n28594), 
            .I3(GND_net), .O(n15739));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11867_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11869_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[9]), .I2(n6_adj_5869), 
            .I3(n13038), .O(n15741));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11869_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11870_3_lut (.I0(baudrate[14]), .I1(data_adj_5961[6]), .I2(n28613), 
            .I3(GND_net), .O(n15742));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11870_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12756_3_lut (.I0(baudrate[17]), .I1(data_adj_5961[1]), .I2(n28612), 
            .I3(GND_net), .O(n16628));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12756_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11880_3_lut (.I0(current[0]), .I1(data_adj_5966[0]), .I2(n14347), 
            .I3(GND_net), .O(n15752));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11883_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[10]), .I2(n5), 
            .I3(n4_adj_5906), .O(n15755));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11883_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11886_3_lut (.I0(CS_c), .I1(state_adj_5968[0]), .I2(state_adj_5968[1]), 
            .I3(GND_net), .O(n15758));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11886_3_lut.LUT_INIT = 16'ha3a3;
    SB_LUT4 i31909_4_lut (.I0(n15_adj_5879), .I1(clk_out), .I2(state_adj_5968[0]), 
            .I3(state_adj_5968[1]), .O(n9_adj_5919));   // verilog/tli4970.v(35[10] 68[6])
    defparam i31909_4_lut.LUT_INIT = 16'hc8fc;
    SB_LUT4 i11889_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[11]), .I2(n6_adj_5869), 
            .I3(n13073), .O(n15761));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11889_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11892_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[12]), .I2(n21550), 
            .I3(n13045), .O(n15764));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11892_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i11894_4_lut_4_lut (.I0(tx_active), .I1(r_SM_Main_adj_5978[1]), 
            .I2(r_SM_Main_adj_5978[2]), .I3(n6_adj_5913), .O(n15766));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i11894_4_lut_4_lut.LUT_INIT = 16'ha3aa;
    SB_LUT4 i11899_4_lut (.I0(CS_MISO_c), .I1(data_adj_5966[15]), .I2(n21550), 
            .I3(n13073), .O(n15771));   // verilog/tli4970.v(35[10] 68[6])
    defparam i11899_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i1_2_lut_adj_2714 (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n28574));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i1_2_lut_adj_2714.LUT_INIT = 16'h2222;
    SB_LUT4 i11904_4_lut (.I0(r_Rx_Data), .I1(rx_data[1]), .I2(n31617), 
            .I3(n27), .O(n15776));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11904_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11905_4_lut (.I0(r_Rx_Data), .I1(rx_data[2]), .I2(n31553), 
            .I3(n27), .O(n15777));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11905_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11906_3_lut (.I0(baudrate[13]), .I1(data_adj_5961[5]), .I2(n28613), 
            .I3(GND_net), .O(n15778));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11906_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11907_4_lut (.I0(r_Rx_Data), .I1(rx_data[3]), .I2(n31601), 
            .I3(n27), .O(n15779));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11907_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11908_4_lut (.I0(r_Rx_Data), .I1(rx_data[4]), .I2(n31569), 
            .I3(n27), .O(n15780));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11908_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11912_4_lut (.I0(r_Rx_Data), .I1(rx_data[5]), .I2(n31649), 
            .I3(n27), .O(n15784));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11912_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11916_4_lut (.I0(r_Rx_Data), .I1(rx_data[6]), .I2(n31585), 
            .I3(n27), .O(n15788));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11916_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11917_4_lut (.I0(r_Rx_Data), .I1(rx_data[7]), .I2(n31537), 
            .I3(n27), .O(n15789));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11917_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i5_4_lut_adj_2715 (.I0(delay_counter[27]), .I1(delay_counter[29]), 
            .I2(delay_counter[24]), .I3(delay_counter[26]), .O(n12));
    defparam i5_4_lut_adj_2715.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_2716 (.I0(delay_counter[28]), .I1(n12), .I2(delay_counter[25]), 
            .I3(delay_counter[30]), .O(n12969));
    defparam i6_4_lut_adj_2716.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_adj_2717 (.I0(delay_counter[17]), .I1(delay_counter[16]), 
            .I2(delay_counter[15]), .I3(GND_net), .O(n12963));
    defparam i2_3_lut_adj_2717.LUT_INIT = 16'hfefe;
    SB_LUT4 i5_3_lut (.I0(delay_counter[3]), .I1(delay_counter[5]), .I2(delay_counter[4]), 
            .I3(GND_net), .O(n14_adj_5917));
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6_4_lut_adj_2718 (.I0(delay_counter[8]), .I1(delay_counter[7]), 
            .I2(delay_counter[1]), .I3(delay_counter[0]), .O(n15_adj_5916));
    defparam i6_4_lut_adj_2718.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(n15_adj_5916), .I1(delay_counter[2]), .I2(n14_adj_5917), 
            .I3(delay_counter[6]), .O(n12983));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4455_4_lut (.I0(n12983), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24_adj_5868));
    defparam i4455_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i2_4_lut_adj_2719 (.I0(n24_adj_5868), .I1(delay_counter[14]), 
            .I2(delay_counter[12]), .I3(delay_counter[13]), .O(n30267));
    defparam i2_4_lut_adj_2719.LUT_INIT = 16'hc800;
    SB_LUT4 i2_3_lut_adj_2720 (.I0(n30267), .I1(delay_counter[18]), .I2(n12963), 
            .I3(GND_net), .O(n30750));
    defparam i2_3_lut_adj_2720.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_2721 (.I0(delay_counter[23]), .I1(n30750), .I2(delay_counter[20]), 
            .I3(delay_counter[19]), .O(n7_adj_5915));
    defparam i2_4_lut_adj_2721.LUT_INIT = 16'heaaa;
    SB_LUT4 i4_4_lut (.I0(n7_adj_5915), .I1(delay_counter[21]), .I2(delay_counter[22]), 
            .I3(n12969), .O(n62));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n62), .I2(delay_counter[31]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n31038));
    defparam i3_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i5_3_lut_adj_2722 (.I0(r_SM_Main_adj_5978[0]), .I1(o_Rx_DV_N_4460[24]), 
            .I2(n27), .I3(GND_net), .O(n14_adj_5908));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i5_3_lut_adj_2722.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut_adj_2723 (.I0(n29), .I1(o_Rx_DV_N_4460[12]), .I2(n23), 
            .I3(n3370), .O(n15_adj_5907));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i6_4_lut_adj_2723.LUT_INIT = 16'h0001;
    SB_LUT4 i8_4_lut_adj_2724 (.I0(n15_adj_5907), .I1(n1), .I2(n14_adj_5908), 
            .I3(r_SM_Main_adj_5978[1]), .O(n36333));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i8_4_lut_adj_2724.LUT_INIT = 16'h8000;
    SB_LUT4 i11921_3_lut (.I0(a_prev), .I1(a_new[1]), .I2(debounce_cnt_N_4805), 
            .I3(GND_net), .O(n15793));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11921_3_lut.LUT_INIT = 16'hacac;
    pll32MHz pll32MHz_inst (.GND_net(GND_net), .clk16MHz(clk16MHz), .VCC_net(VCC_net), 
            .clk32MHz(clk32MHz)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(32[10] 36[2])
    SB_LUT4 i11922_3_lut (.I0(b_prev), .I1(b_new[1]), .I2(debounce_cnt_N_4805), 
            .I3(GND_net), .O(n15794));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11922_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i31764_3_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21468), .I3(GND_net), .O(n14321));
    defparam i31764_3_lut_3_lut.LUT_INIT = 16'h1515;
    SB_LUT4 i30207_2_lut_3_lut (.I0(n62), .I1(delay_counter[31]), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n34322));
    defparam i30207_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 i17763_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21468), .I3(GND_net), .O(n21590));
    defparam i17763_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i11935_3_lut (.I0(pwm_out), .I1(pwm_counter[23]), .I2(reset), 
            .I3(GND_net), .O(n15807));   // verilog/pwm.v(16[12] 26[6])
    defparam i11935_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11939_4_lut (.I0(\data_out_frame[26] [6]), .I1(n4_adj_5909), 
            .I2(n8595), .I3(n30823), .O(n15811));   // verilog/coms.v(128[12] 293[6])
    defparam i11939_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i17637_2_lut (.I0(pwm_out), .I1(GHC), .I2(GND_net), .I3(GND_net), 
            .O(INHC_c_0));   // verilog/TinyFPGA_B.v(80[16:31])
    defparam i17637_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17636_2_lut (.I0(pwm_out), .I1(GHB), .I2(GND_net), .I3(GND_net), 
            .O(INHB_c_0));   // verilog/TinyFPGA_B.v(78[16:31])
    defparam i17636_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17881_2_lut (.I0(pwm_out), .I1(GHA), .I2(GND_net), .I3(GND_net), 
            .O(INHA_c_0));   // verilog/TinyFPGA_B.v(76[16:31])
    defparam i17881_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12247_3_lut (.I0(\data_in_frame[16] [7]), .I1(rx_data[7]), 
            .I2(n7_adj_5921), .I3(GND_net), .O(n16119));   // verilog/coms.v(128[12] 293[6])
    defparam i12247_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12244_3_lut (.I0(\data_in_frame[16] [6]), .I1(rx_data[6]), 
            .I2(n7_adj_5921), .I3(GND_net), .O(n16116));   // verilog/coms.v(128[12] 293[6])
    defparam i12244_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12241_3_lut (.I0(\data_in_frame[16] [5]), .I1(rx_data[5]), 
            .I2(n7_adj_5921), .I3(GND_net), .O(n16113));   // verilog/coms.v(128[12] 293[6])
    defparam i12241_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12238_3_lut (.I0(\data_in_frame[16] [4]), .I1(rx_data[4]), 
            .I2(n7_adj_5921), .I3(GND_net), .O(n16110));   // verilog/coms.v(128[12] 293[6])
    defparam i12238_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11941_3_lut (.I0(\FRAME_MATCHER.rx_data_ready_prev ), .I1(rx_data_ready), 
            .I2(reset), .I3(GND_net), .O(n15813));   // verilog/coms.v(128[12] 293[6])
    defparam i11941_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11942_3_lut (.I0(baudrate[12]), .I1(data_adj_5961[4]), .I2(n28613), 
            .I3(GND_net), .O(n15814));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11942_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11943_3_lut (.I0(baudrate[11]), .I1(data_adj_5961[3]), .I2(n28613), 
            .I3(GND_net), .O(n15815));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11943_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12223_3_lut (.I0(\data_in_frame[15] [7]), .I1(rx_data[7]), 
            .I2(n14890), .I3(GND_net), .O(n16095));   // verilog/coms.v(128[12] 293[6])
    defparam i12223_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12220_3_lut (.I0(\data_in_frame[15] [6]), .I1(rx_data[6]), 
            .I2(n14890), .I3(GND_net), .O(n16092));   // verilog/coms.v(128[12] 293[6])
    defparam i12220_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11944_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[1]), 
            .I2(n4), .I3(n13066), .O(n15816));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11944_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12217_3_lut (.I0(\data_in_frame[15] [5]), .I1(rx_data[5]), 
            .I2(n14890), .I3(GND_net), .O(n16089));   // verilog/coms.v(128[12] 293[6])
    defparam i12217_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12214_3_lut (.I0(\data_in_frame[15] [4]), .I1(rx_data[4]), 
            .I2(n14890), .I3(GND_net), .O(n16086));   // verilog/coms.v(128[12] 293[6])
    defparam i12214_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12211_3_lut (.I0(\data_in_frame[15] [3]), .I1(rx_data[3]), 
            .I2(n14890), .I3(GND_net), .O(n16083));   // verilog/coms.v(128[12] 293[6])
    defparam i12211_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11945_3_lut (.I0(baudrate[10]), .I1(data_adj_5961[2]), .I2(n28613), 
            .I3(GND_net), .O(n15817));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11945_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12208_3_lut (.I0(\data_in_frame[15] [2]), .I1(rx_data[2]), 
            .I2(n14890), .I3(GND_net), .O(n16080));   // verilog/coms.v(128[12] 293[6])
    defparam i12208_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12205_3_lut (.I0(\data_in_frame[15] [1]), .I1(rx_data[1]), 
            .I2(n14890), .I3(GND_net), .O(n16077));   // verilog/coms.v(128[12] 293[6])
    defparam i12205_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11946_3_lut (.I0(baudrate[9]), .I1(data_adj_5961[1]), .I2(n28613), 
            .I3(GND_net), .O(n15818));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11946_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11947_3_lut (.I0(baudrate[8]), .I1(data_adj_5961[0]), .I2(n28613), 
            .I3(GND_net), .O(n15819));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11947_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1499_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n927), .I3(n21468), .O(n4779));   // verilog/TinyFPGA_B.v(348[5] 374[12])
    defparam i1499_4_lut_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 i12_3_lut_4_lut (.I0(rx_data_ready), .I1(r_SM_Main[1]), .I2(r_SM_Main[2]), 
            .I3(n14365), .O(n26289));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12166_3_lut (.I0(\data_in_frame[13] [4]), .I1(rx_data[4]), 
            .I2(n7_adj_5920), .I3(GND_net), .O(n16038));   // verilog/coms.v(128[12] 293[6])
    defparam i12166_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12163_3_lut (.I0(\data_in_frame[13] [3]), .I1(rx_data[3]), 
            .I2(n7_adj_5920), .I3(GND_net), .O(n16035));   // verilog/coms.v(128[12] 293[6])
    defparam i12163_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11948_3_lut (.I0(baudrate[7]), .I1(data_adj_5961[7]), .I2(n30545), 
            .I3(GND_net), .O(n15820));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11948_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12154_3_lut (.I0(\data_in_frame[13] [0]), .I1(rx_data[0]), 
            .I2(n7_adj_5920), .I3(GND_net), .O(n16026));   // verilog/coms.v(128[12] 293[6])
    defparam i12154_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12151_3_lut (.I0(\data_in_frame[12] [7]), .I1(rx_data[7]), 
            .I2(n14896), .I3(GND_net), .O(n16023));   // verilog/coms.v(128[12] 293[6])
    defparam i12151_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12145_3_lut (.I0(\data_in_frame[12] [5]), .I1(rx_data[5]), 
            .I2(n14896), .I3(GND_net), .O(n16017));   // verilog/coms.v(128[12] 293[6])
    defparam i12145_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12139_3_lut (.I0(\data_in_frame[12] [3]), .I1(rx_data[3]), 
            .I2(n14896), .I3(GND_net), .O(n16011));   // verilog/coms.v(128[12] 293[6])
    defparam i12139_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12135_3_lut (.I0(\data_in_frame[12] [2]), .I1(rx_data[2]), 
            .I2(n14896), .I3(GND_net), .O(n16007));   // verilog/coms.v(128[12] 293[6])
    defparam i12135_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12132_3_lut (.I0(\data_in_frame[12] [1]), .I1(rx_data[1]), 
            .I2(n14896), .I3(GND_net), .O(n16004));   // verilog/coms.v(128[12] 293[6])
    defparam i12132_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_3_lut_4_lut (.I0(data_ready), .I1(n62), .I2(delay_counter[31]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n6_adj_5914));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h080c;
    SB_LUT4 i12128_3_lut (.I0(\data_in_frame[12] [0]), .I1(rx_data[0]), 
            .I2(n14896), .I3(GND_net), .O(n16000));   // verilog/coms.v(128[12] 293[6])
    defparam i12128_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12125_3_lut (.I0(\data_in_frame[11] [7]), .I1(rx_data[7]), 
            .I2(n30578), .I3(GND_net), .O(n15997));   // verilog/coms.v(128[12] 293[6])
    defparam i12125_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12122_3_lut (.I0(\data_in_frame[11] [6]), .I1(rx_data[6]), 
            .I2(n30578), .I3(GND_net), .O(n15994));   // verilog/coms.v(128[12] 293[6])
    defparam i12122_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_adj_2725 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n927), .I3(n21468), .O(n24));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i1_2_lut_4_lut_adj_2725.LUT_INIT = 16'hffbf;
    SB_LUT4 i12447_4_lut_4_lut (.I0(n14313), .I1(dti), .I2(GHC), .I3(commutation_state[1]), 
            .O(n16319));   // verilog/TinyFPGA_B.v(131[9] 210[5])
    defparam i12447_4_lut_4_lut.LUT_INIT = 16'h7250;
    SB_LUT4 i12116_3_lut (.I0(\data_in_frame[11] [4]), .I1(rx_data[4]), 
            .I2(n30578), .I3(GND_net), .O(n15988));   // verilog/coms.v(128[12] 293[6])
    defparam i12116_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12113_3_lut (.I0(\data_in_frame[11] [3]), .I1(rx_data[3]), 
            .I2(n30578), .I3(GND_net), .O(n15985));   // verilog/coms.v(128[12] 293[6])
    defparam i12113_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12110_3_lut (.I0(\data_in_frame[11] [2]), .I1(rx_data[2]), 
            .I2(n30578), .I3(GND_net), .O(n15982));   // verilog/coms.v(128[12] 293[6])
    defparam i12110_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12107_3_lut (.I0(\data_in_frame[11] [1]), .I1(rx_data[1]), 
            .I2(n30578), .I3(GND_net), .O(n15979));   // verilog/coms.v(128[12] 293[6])
    defparam i12107_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12104_3_lut (.I0(\data_in_frame[11] [0]), .I1(rx_data[0]), 
            .I2(n30578), .I3(GND_net), .O(n15976));   // verilog/coms.v(128[12] 293[6])
    defparam i12104_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11949_3_lut (.I0(baudrate[6]), .I1(data_adj_5961[6]), .I2(n30545), 
            .I3(GND_net), .O(n15821));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11949_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11799_3_lut_4_lut (.I0(n1248), .I1(b_prev), .I2(a_new[1]), 
            .I3(position_31__N_4808), .O(n15671));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11799_3_lut_4_lut.LUT_INIT = 16'h3caa;
    SB_LUT4 i11796_3_lut_4_lut (.I0(n1297), .I1(b_prev_adj_5873), .I2(a_new_adj_5947[1]), 
            .I3(position_31__N_4808_adj_5875), .O(n15668));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    defparam i11796_3_lut_4_lut.LUT_INIT = 16'h3caa;
    SB_LUT4 i17738_1_lut_2_lut (.I0(n10717), .I1(dti), .I2(GND_net), .I3(GND_net), 
            .O(n1951));
    defparam i17738_1_lut_2_lut.LUT_INIT = 16'h7777;
    coms setpoint_23__I_0 (.GND_net(GND_net), .rx_data({rx_data}), .VCC_net(VCC_net), 
         .clk16MHz(clk16MHz), .n30823(n30823), .\data_in_frame[11] ({\data_in_frame[11] [7:6], 
         Open_0, Open_1, \data_in_frame[11] [3:1], Open_2}), .\data_in_frame[13] ({Open_3, 
         Open_4, Open_5, \data_in_frame[13] [4:3], Open_6, Open_7, 
         Open_8}), .\data_in_frame[15] ({Open_9, Open_10, \data_in_frame[15] [5:3], 
         Open_11, Open_12, Open_13}), .\data_in_frame[3] ({\data_in_frame[3] }), 
         .\data_in_frame[6][0] (\data_in_frame[6] [0]), .\data_in_frame[12] ({Open_14, 
         Open_15, Open_16, Open_17, Open_18, \data_in_frame[12] [2:0]}), 
         .\data_in_frame[1] ({\data_in_frame[1] }), .\data_in_frame[7] ({\data_in_frame[7] }), 
         .\data_in_frame[13][0] (\data_in_frame[13] [0]), .\data_in_frame[16][5] (\data_in_frame[16] [5]), 
         .\data_in_frame[16][4] (\data_in_frame[16] [4]), .\data_in_frame[16][6] (\data_in_frame[16] [6]), 
         .\data_in_frame[19] ({\data_in_frame[19] }), .\data_in_frame[12][3] (\data_in_frame[12] [3]), 
         .\data_in_frame[12][5] (\data_in_frame[12] [5]), .\data_in_frame[16][7] (\data_in_frame[16] [7]), 
         .\data_in_frame[12][7] (\data_in_frame[12] [7]), .\data_in_frame[15][2] (\data_in_frame[15] [2]), 
         .\data_in_frame[15][1] (\data_in_frame[15] [1]), .\data_in_frame[15][6] (\data_in_frame[15] [6]), 
         .\data_in_frame[22] ({Open_19, Open_20, \data_in_frame[22] [5], 
         Open_21, Open_22, Open_23, Open_24, Open_25}), .\data_in_frame[15][7] (\data_in_frame[15] [7]), 
         .\data_in_frame[22][6] (\data_in_frame[22] [6]), .n16593(n16593), 
         .\data_in_frame[4] ({\data_in_frame[4] }), .\data_in_frame[23][6] (\data_in_frame[23] [6]), 
         .n16590(n16590), .\data_in_frame[22][2] (\data_in_frame[22] [2]), 
         .n16587(n16587), .\FRAME_MATCHER.state[3] (\FRAME_MATCHER.state [3]), 
         .n16584(n16584), .n16581(n16581), .n16578(n16578), .n16575(n16575), 
         .\data_in_frame[11][0] (\data_in_frame[11] [0]), .\data_in_frame[22][1] (\data_in_frame[22] [1]), 
         .\data_in_frame[11][4] (\data_in_frame[11] [4]), .n16570(n16570), 
         .n8595(n8595), .\data_in_frame[23][5] (\data_in_frame[23] [5]), 
         .\data_in_frame[23][7] (\data_in_frame[23] [7]), .n16567(n16567), 
         .\data_in_frame[23][3] (\data_in_frame[23] [3]), .reset(reset), 
         .\data_in_frame[23][1] (\data_in_frame[23] [1]), .\data_in_frame[22][7] (\data_in_frame[22] [7]), 
         .\data_in_frame[22][3] (\data_in_frame[22] [3]), .\data_in_frame[23][2] (\data_in_frame[23] [2]), 
         .n16564(n16564), .n16561(n16561), .n15901(n15901), .n15898(n15898), 
         .\data_in_frame[23][0] (\data_in_frame[23] [0]), .n15895(n15895), 
         .n16558(n16558), .n16555(n16555), .n16552(n16552), .n15892(n15892), 
         .n16549(n16549), .n16546(n16546), .n15889(n15889), .n15886(n15886), 
         .\data_in_frame[6][2] (\data_in_frame[6] [2]), .n15883(n15883), 
         .n15880(n15880), .n28015(n28015), .\data_in_frame[6][7] (\data_in_frame[6] [7]), 
         .n28019(n28019), .\data_in_frame[6][6] (\data_in_frame[6] [6]), 
         .n28023(n28023), .\data_in_frame[6][4] (\data_in_frame[6] [4]), 
         .n15862(n15862), .n15859(n15859), .\data_in_frame[6][1] (\data_in_frame[6] [1]), 
         .n15856(n15856), .n15844(n15844), .control_mode({control_mode_adj_5932}), 
         .n15843(n15843), .n15842(n15842), .n15841(n15841), .n15840(n15840), 
         .n15839(n15839), .n15838(n15838), .ID({ID}), .n15976(n15976), 
         .n15979(n15979), .n15982(n15982), .n15985(n15985), .n15988(n15988), 
         .n15994(n15994), .n15997(n15997), .rx_data_ready(rx_data_ready), 
         .\FRAME_MATCHER.rx_data_ready_prev (\FRAME_MATCHER.rx_data_ready_prev ), 
         .n16000(n16000), .n16004(n16004), .n16007(n16007), .n16011(n16011), 
         .n16017(n16017), .n14874(n14874), .n16023(n16023), .n16026(n16026), 
         .n16035(n16035), .n16038(n16038), .n16077(n16077), .n16080(n16080), 
         .n16083(n16083), .n16086(n16086), .n16089(n16089), .n16092(n16092), 
         .n16095(n16095), .n15813(n15813), .n16110(n16110), .n16113(n16113), 
         .n16116(n16116), .n16119(n16119), .n15811(n15811), .\data_out_frame[26][6] (\data_out_frame[26] [6]), 
         .DE_c(DE_c), .n16170(n16170), .n16173(n16173), .n16176(n16176), 
         .n16179(n16179), .n16182(n16182), .n16185(n16185), .n16188(n16188), 
         .n16191(n16191), .n28049(n28049), .n28047(n28047), .n28045(n28045), 
         .n16257(n16257), .n1992(n1992), .n16260(n16260), .n16263(n16263), 
         .n16266(n16266), .n16269(n16269), .n16272(n16272), .n16275(n16275), 
         .n16281(n16281), .n16284(n16284), .n16287(n16287), .n14877(n14877), 
         .n7(n7_adj_5920), .n10(n10), .n14836(n14836), .n14858(n14858), 
         .n28625(n28625), .n15666(n15666), .tx_active(tx_active), .n30632(n30632), 
         .\current[15] (current[15]), .encoder0_position({encoder0_position[23:0]}), 
         .encoder1_position({encoder1_position[23:0]}), .\current[9] (current[9]), 
         .\current[0] (current[0]), .\current[6] (current[6]), .\current[8] (current[8]), 
         .\current[10] (current[10]), .n4(n4_adj_5909), .n7_adj_3(n7_adj_5921), 
         .\current[1] (current[1]), .\current[2] (current[2]), .n14890(n14890), 
         .n14896(n14896), .\current[11] (current[11]), .n30578(n30578), 
         .\current[7] (current[7]), .\current[4] (current[4]), .\current[5] (current[5]), 
         .\current[3] (current[3]), .n127(n127), .n124(n124), .n10544(n10544), 
         .n30579(n30579), .n28623(n28623), .\r_Bit_Index[0] (r_Bit_Index_adj_5980[0]), 
         .\o_Rx_DV_N_4460[24] (o_Rx_DV_N_4460[24]), .r_SM_Main({r_SM_Main_adj_5978}), 
         .n27(n27), .n31429(n31429), .n1(n1), .tx_o(tx_o), .n14448(n14448), 
         .n29448(n29448), .n36333(n36333), .n15766(n15766), .n16296(n16296), 
         .r_Clock_Count({r_Clock_Count_adj_5979}), .n6(n6_adj_5913), .tx_enable(tx_enable), 
         .baudrate({baudrate}), .\o_Rx_DV_N_4460[12] (o_Rx_DV_N_4460[12]), 
         .\r_Bit_Index[0]_adj_4 (r_Bit_Index[0]), .\r_SM_Main[2]_adj_5 (r_SM_Main[2]), 
         .\o_Rx_DV_N_4460[8] (o_Rx_DV_N_4460[8]), .n3367(n3367), .r_Rx_Data(r_Rx_Data), 
         .n29(n29), .n23(n23), .\r_SM_Main[1]_adj_6 (r_SM_Main[1]), .\o_Rx_DV_N_4460[7] (o_Rx_DV_N_4460[7]), 
         .RX_N_18(RX_N_18), .n29420(n29420), .n14452(n14452), .\o_Rx_DV_N_4460[6] (o_Rx_DV_N_4460[6]), 
         .\o_Rx_DV_N_4460[5] (o_Rx_DV_N_4460[5]), .\o_Rx_DV_N_4460[4] (o_Rx_DV_N_4460[4]), 
         .\o_Rx_DV_N_4460[3] (o_Rx_DV_N_4460[3]), .\o_Rx_DV_N_4460[2] (o_Rx_DV_N_4460[2]), 
         .n31633(n31633), .\o_Rx_DV_N_4460[1] (o_Rx_DV_N_4460[1]), .\o_Rx_DV_N_4460[0] (o_Rx_DV_N_4460[0]), 
         .n28574(n28574), .n14365(n14365), .n3370(n3370), .r_Clock_Count_adj_15({r_Clock_Count}), 
         .n15789(n15789), .n15788(n15788), .n15784(n15784), .n15780(n15780), 
         .n15779(n15779), .n15777(n15777), .n15776(n15776), .n34(n34), 
         .n16299(n16299), .n26289(n26289), .n16303(n16303), .n31617(n31617), 
         .n31553(n31553), .n31601(n31601), .n31569(n31569), .n31649(n31649), 
         .n31585(n31585), .n31537(n31537), .n31907(n31907)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(243[22] 266[4])
    SB_LUT4 i1_4_lut_4_lut_adj_2726 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(reset), .I3(n21468), .O(n27931));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i1_4_lut_4_lut_adj_2726.LUT_INIT = 16'hb1f1;
    SB_LUT4 i11950_3_lut (.I0(baudrate[5]), .I1(data_adj_5961[5]), .I2(n30545), 
            .I3(GND_net), .O(n15822));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11950_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11951_3_lut (.I0(baudrate[4]), .I1(data_adj_5961[4]), .I2(n30545), 
            .I3(GND_net), .O(n15823));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11951_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11952_3_lut (.I0(baudrate[3]), .I1(data_adj_5961[3]), .I2(n30545), 
            .I3(GND_net), .O(n15824));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11952_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11953_3_lut (.I0(baudrate[2]), .I1(data_adj_5961[2]), .I2(n30545), 
            .I3(GND_net), .O(n15825));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11953_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11954_3_lut (.I0(baudrate[1]), .I1(data_adj_5961[1]), .I2(n30545), 
            .I3(GND_net), .O(n15826));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11954_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11955_3_lut (.I0(baudrate[0]), .I1(data_adj_5961[0]), .I2(n30545), 
            .I3(GND_net), .O(n15827));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11955_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11956_3_lut (.I0(ID[7]), .I1(data_adj_5961[7]), .I2(n28594), 
            .I3(GND_net), .O(n15828));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11956_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11957_3_lut (.I0(ID[6]), .I1(data_adj_5961[6]), .I2(n28594), 
            .I3(GND_net), .O(n15829));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11957_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11958_3_lut (.I0(ID[5]), .I1(data_adj_5961[5]), .I2(n28594), 
            .I3(GND_net), .O(n15830));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11958_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11959_3_lut (.I0(ID[4]), .I1(data_adj_5961[4]), .I2(n28594), 
            .I3(GND_net), .O(n15831));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11959_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11960_3_lut (.I0(ID[3]), .I1(data_adj_5961[3]), .I2(n28594), 
            .I3(GND_net), .O(n15832));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11960_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11961_3_lut (.I0(ID[2]), .I1(data_adj_5961[2]), .I2(n28594), 
            .I3(GND_net), .O(n15833));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11961_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11962_3_lut (.I0(ID[1]), .I1(data_adj_5961[1]), .I2(n28594), 
            .I3(GND_net), .O(n15834));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11962_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11966_3_lut (.I0(control_mode_adj_5932[7]), .I1(\data_in_frame[1] [7]), 
            .I2(n10544), .I3(GND_net), .O(n15838));   // verilog/coms.v(128[12] 293[6])
    defparam i11966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11967_3_lut (.I0(control_mode_adj_5932[6]), .I1(\data_in_frame[1] [6]), 
            .I2(n10544), .I3(GND_net), .O(n15839));   // verilog/coms.v(128[12] 293[6])
    defparam i11967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11968_3_lut (.I0(control_mode_adj_5932[5]), .I1(\data_in_frame[1] [5]), 
            .I2(n10544), .I3(GND_net), .O(n15840));   // verilog/coms.v(128[12] 293[6])
    defparam i11968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11969_3_lut (.I0(control_mode_adj_5932[4]), .I1(\data_in_frame[1] [4]), 
            .I2(n10544), .I3(GND_net), .O(n15841));   // verilog/coms.v(128[12] 293[6])
    defparam i11969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11970_3_lut (.I0(control_mode_adj_5932[3]), .I1(\data_in_frame[1] [3]), 
            .I2(n10544), .I3(GND_net), .O(n15842));   // verilog/coms.v(128[12] 293[6])
    defparam i11970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11971_3_lut (.I0(control_mode_adj_5932[2]), .I1(\data_in_frame[1] [2]), 
            .I2(n10544), .I3(GND_net), .O(n15843));   // verilog/coms.v(128[12] 293[6])
    defparam i11971_3_lut.LUT_INIT = 16'hcaca;
    \quadrature_decoder(0)  quad_counter1 (.ENCODER1_B_N_keep(ENCODER1_B_N), 
            .n1292(clk16MHz), .ENCODER1_A_N_keep(ENCODER1_A_N), .\a_new[1] (a_new_adj_5947[1]), 
            .\b_new[1] (b_new_adj_5948[1]), .debounce_cnt_N_4805(debounce_cnt_N_4805_adj_5874), 
            .b_prev(b_prev_adj_5873), .GND_net(GND_net), .position_31__N_4808(position_31__N_4808_adj_5875), 
            .\encoder1_position[0] (encoder1_position[0]), .n1299(n1299), 
            .n1301(n1301), .n1303(n1303), .n1305(n1305), .n1307(n1307), 
            .n1309(n1309), .n1311(n1311), .n1313(n1313), .\encoder1_position[23] (encoder1_position[23]), 
            .\encoder1_position[22] (encoder1_position[22]), .\encoder1_position[21] (encoder1_position[21]), 
            .\encoder1_position[20] (encoder1_position[20]), .\encoder1_position[19] (encoder1_position[19]), 
            .\encoder1_position[18] (encoder1_position[18]), .\encoder1_position[17] (encoder1_position[17]), 
            .\encoder1_position[16] (encoder1_position[16]), .\encoder1_position[15] (encoder1_position[15]), 
            .\encoder1_position[14] (encoder1_position[14]), .\encoder1_position[13] (encoder1_position[13]), 
            .\encoder1_position[12] (encoder1_position[12]), .\encoder1_position[11] (encoder1_position[11]), 
            .\encoder1_position[10] (encoder1_position[10]), .\encoder1_position[9] (encoder1_position[9]), 
            .\encoder1_position[8] (encoder1_position[8]), .\encoder1_position[7] (encoder1_position[7]), 
            .\encoder1_position[6] (encoder1_position[6]), .\encoder1_position[5] (encoder1_position[5]), 
            .\encoder1_position[4] (encoder1_position[4]), .\encoder1_position[3] (encoder1_position[3]), 
            .\encoder1_position[2] (encoder1_position[2]), .\encoder1_position[1] (encoder1_position[1]), 
            .a_prev(a_prev_adj_5872), .VCC_net(VCC_net), .n15670(n15670), 
            .n15669(n15669), .n15668(n15668), .n1297(n1297)) /* synthesis lattice_noprune=1 */ ;   // verilog/TinyFPGA_B.v(299[27] 305[6])
    SB_LUT4 i11972_3_lut (.I0(control_mode_adj_5932[1]), .I1(\data_in_frame[1] [1]), 
            .I2(n10544), .I3(GND_net), .O(n15844));   // verilog/coms.v(128[12] 293[6])
    defparam i11972_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11973_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[2]), 
            .I2(n4_adj_5889), .I3(n13080), .O(n15845));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11973_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11974_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[3]), 
            .I2(n4_adj_5889), .I3(n13066), .O(n15846));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11974_4_lut.LUT_INIT = 16'hccca;
    TLI4970 tli (.\state[1] (state_adj_5968[1]), .n16613(n16613), .\current[1] (current[1]), 
            .n16612(n16612), .\current[2] (current[2]), .n16611(n16611), 
            .\current[3] (current[3]), .n16610(n16610), .\current[4] (current[4]), 
            .n16609(n16609), .\current[5] (current[5]), .n16608(n16608), 
            .\current[6] (current[6]), .n16607(n16607), .\current[7] (current[7]), 
            .n16606(n16606), .\current[8] (current[8]), .n16605(n16605), 
            .\current[9] (current[9]), .n16604(n16604), .\current[10] (current[10]), 
            .n16603(n16603), .\current[11] (current[11]), .\data[12] (data_adj_5966[12]), 
            .GND_net(GND_net), .clk16MHz(clk16MHz), .n6(n6_adj_5866), 
            .\state[0] (state_adj_5968[0]), .n15771(n15771), .\data[15] (data_adj_5966[15]), 
            .n15764(n15764), .n15761(n15761), .\data[11] (data_adj_5966[11]), 
            .n9(n9_adj_5919), .clk_out(clk_out), .n15758(n15758), .CS_c(CS_c), 
            .n15755(n15755), .\data[10] (data_adj_5966[10]), .n15752(n15752), 
            .\current[0] (current[0]), .n15741(n15741), .\data[9] (data_adj_5966[9]), 
            .n15(n15_adj_5879), .n16304(n16304), .\data[0] (data_adj_5966[0]), 
            .state_7__N_5291(state_7__N_5291), .VCC_net(VCC_net), .n14347(n14347), 
            .n15665(n15665), .\data[8] (data_adj_5966[8]), .n15664(n15664), 
            .\data[7] (data_adj_5966[7]), .n15663(n15663), .\data[6] (data_adj_5966[6]), 
            .n15662(n15662), .\data[5] (data_adj_5966[5]), .n15661(n15661), 
            .\data[4] (data_adj_5966[4]), .n15660(n15660), .\data[3] (data_adj_5966[3]), 
            .n15659(n15659), .\data[2] (data_adj_5966[2]), .n15658(n15658), 
            .\data[1] (data_adj_5966[1]), .n7(n7_adj_5867), .n13045(n13045), 
            .\current[15] (current[15]), .n6_adj_1(n6), .n5(n5), .n6_adj_2(n6_adj_5869), 
            .n13073(n13073), .n21548(n21548), .n21550(n21550), .n4(n4_adj_5906), 
            .n13038(n13038), .CS_CLK_c(CS_CLK_c), .n13052(n13052), .n13049(n13049)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(391[11] 397[4])
    SB_LUT4 i11978_4_lut (.I0(state_7__N_5098[3]), .I1(data_adj_5961[4]), 
            .I2(n4_adj_5890), .I3(n13080), .O(n15850));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11978_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_2727 (.I0(\data_in_frame[6] [4]), .I1(n14858), 
            .I2(n14909), .I3(rx_data[4]), .O(n28023));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut_adj_2727.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut_adj_2728 (.I0(\data_in_frame[6] [6]), .I1(n14858), 
            .I2(n14909), .I3(rx_data[6]), .O(n28019));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut_adj_2728.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut_adj_2729 (.I0(reset), .I1(n127), .I2(GND_net), .I3(GND_net), 
            .O(n124));   // verilog/TinyFPGA_B.v(345[10] 375[6])
    defparam i1_2_lut_adj_2729.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_2730 (.I0(\data_in_frame[6] [7]), .I1(n14858), 
            .I2(n14909), .I3(rx_data[7]), .O(n28015));   // verilog/coms.v(128[12] 293[6])
    defparam i12_4_lut_adj_2730.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12008_3_lut (.I0(\data_in_frame[7] [0]), .I1(rx_data[0]), .I2(n28625), 
            .I3(GND_net), .O(n15880));   // verilog/coms.v(128[12] 293[6])
    defparam i12008_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12011_3_lut (.I0(\data_in_frame[7] [1]), .I1(rx_data[1]), .I2(n28625), 
            .I3(GND_net), .O(n15883));   // verilog/coms.v(128[12] 293[6])
    defparam i12011_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12014_3_lut (.I0(\data_in_frame[7] [2]), .I1(rx_data[2]), .I2(n28625), 
            .I3(GND_net), .O(n15886));   // verilog/coms.v(128[12] 293[6])
    defparam i12014_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12017_3_lut (.I0(\data_in_frame[7] [3]), .I1(rx_data[3]), .I2(n28625), 
            .I3(GND_net), .O(n15889));   // verilog/coms.v(128[12] 293[6])
    defparam i12017_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12674_3_lut (.I0(\data_in_frame[3] [0]), .I1(rx_data[0]), .I2(n30579), 
            .I3(GND_net), .O(n16546));   // verilog/coms.v(128[12] 293[6])
    defparam i12674_3_lut.LUT_INIT = 16'hacac;
    pwm PWM (.GND_net(GND_net), .\pwm_counter[23] (pwm_counter[23]), .n15807(n15807), 
        .pwm_out(pwm_out), .clk32MHz(clk32MHz), .reset(reset), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(85[6] 90[3])
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, n16628, baudrate, clk16MHz, n16627, n16626, 
            n16625, n16624, n16623, n16622, n16621, n16620, n16619, 
            n16618, n16617, n16616, n16615, n16614, read, n15834, 
            ID, n15833, n15832, n15831, n15830, n15829, n15828, 
            n15827, n15826, n15825, n15824, n15823, n15822, n15821, 
            n15820, n15819, n15818, n15817, n15815, n15814, n15778, 
            data_ready, n15742, n15739, n30545, n28594, n15672, 
            n15667, n28613, n28612, n30266, scl_enable, n15850, 
            data, n15846, n15845, n21571, n15816, \state_7__N_5098[3] , 
            VCC_net, sda_enable, n16347, n16293, n4, n16010, n13066, 
            n16003, n4_adj_19, scl, sda_out, n13080, n4_adj_20) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input n16628;
    output [31:0]baudrate;
    input clk16MHz;
    input n16627;
    input n16626;
    input n16625;
    input n16624;
    input n16623;
    input n16622;
    input n16621;
    input n16620;
    input n16619;
    input n16618;
    input n16617;
    input n16616;
    input n16615;
    input n16614;
    input read;
    input n15834;
    output [7:0]ID;
    input n15833;
    input n15832;
    input n15831;
    input n15830;
    input n15829;
    input n15828;
    input n15827;
    input n15826;
    input n15825;
    input n15824;
    input n15823;
    input n15822;
    input n15821;
    input n15820;
    input n15819;
    input n15818;
    input n15817;
    input n15815;
    input n15814;
    input n15778;
    output data_ready;
    input n15742;
    input n15739;
    output n30545;
    output n28594;
    input n15672;
    input n15667;
    output n28613;
    output n28612;
    output n30266;
    output scl_enable;
    input n15850;
    output [7:0]data;
    input n15846;
    input n15845;
    output n21571;
    input n15816;
    input \state_7__N_5098[3] ;
    input VCC_net;
    output sda_enable;
    input n16347;
    input n16293;
    output n4;
    input n16010;
    output n13066;
    input n16003;
    output n4_adj_19;
    output scl;
    output sda_out;
    output n13080;
    output n4_adj_20;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    wire [15:0]delay_counter_15__N_4928;
    wire [15:0]delay_counter;   // verilog/eeprom.v(28[12:25])
    wire [15:0]n3516;
    
    wire n24301, n24302, n24300;
    wire [7:0]state;   // verilog/eeprom.v(27[11:16])
    
    wire n4_c, n32671, n23911;
    wire [7:0]state_adj_5865;   // verilog/i2c_controller.v(33[12:17])
    
    wire n34443, n58, n30422, n21814;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire rw;
    wire [7:0]state_7__N_5082;
    
    wire n28289, n14395, n15587, enable_slow_N_5185, ready_prev;
    wire [0:0]n4084;
    
    wire enable, n19298, n16699, n27993, n4_adj_5857, n34444, n28596, 
        n34424, n21854, n21579, n19, n34428, n27, n18, n28089, 
        n28, n26, n27_adj_5858, n25, n28009, n15751, n15582, n14409, 
        n24314, n24313, n24312;
    wire [7:0]state_7__N_4857;
    
    wire n24311;
    wire [2:0]byte_counter;   // verilog/eeprom.v(30[11:23])
    wire [2:0]n17;
    
    wire n9429, n4791, n4793, n4794, n4795, n4796, n4797, n25367, 
        n24310, n24309, n24308, n24307, n24306, n24305, n24304, 
        n24303, n4_adj_5861, n9, n32662;
    
    SB_LUT4 add_915_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n3516[8]), 
            .I3(n24301), .O(delay_counter_15__N_4928[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_4 (.CI(n24301), .I0(delay_counter[2]), .I1(n3516[8]), 
            .CO(n24302));
    SB_LUT4 add_915_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n3516[8]), 
            .I3(n24300), .O(delay_counter_15__N_4928[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_3 (.CI(n24300), .I0(delay_counter[1]), .I1(n3516[8]), 
            .CO(n24301));
    SB_LUT4 add_915_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n3516[8]), 
            .I3(GND_net), .O(delay_counter_15__N_4928[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n3516[8]), 
            .CO(n24300));
    SB_DFF bytes_0___i26 (.Q(baudrate[17]), .C(clk16MHz), .D(n16628));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i27 (.Q(baudrate[18]), .C(clk16MHz), .D(n16627));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i28 (.Q(baudrate[19]), .C(clk16MHz), .D(n16626));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i29 (.Q(baudrate[20]), .C(clk16MHz), .D(n16625));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i30 (.Q(baudrate[21]), .C(clk16MHz), .D(n16624));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i31 (.Q(baudrate[22]), .C(clk16MHz), .D(n16623));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i32 (.Q(baudrate[23]), .C(clk16MHz), .D(n16622));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i33 (.Q(baudrate[24]), .C(clk16MHz), .D(n16621));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i34 (.Q(baudrate[25]), .C(clk16MHz), .D(n16620));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i35 (.Q(baudrate[26]), .C(clk16MHz), .D(n16619));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i36 (.Q(baudrate[27]), .C(clk16MHz), .D(n16618));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i37 (.Q(baudrate[28]), .C(clk16MHz), .D(n16617));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i38 (.Q(baudrate[29]), .C(clk16MHz), .D(n16616));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i39 (.Q(baudrate[30]), .C(clk16MHz), .D(n16615));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i40 (.Q(baudrate[31]), .C(clk16MHz), .D(n16614));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i1_4_lut (.I0(state[2]), .I1(state[1]), .I2(read), .I3(state[0]), 
            .O(n4_c));
    defparam i1_4_lut.LUT_INIT = 16'hbbba;
    SB_LUT4 i30253_4_lut (.I0(n32671), .I1(n23911), .I2(state[1]), .I3(state_adj_5865[3]), 
            .O(n34443));
    defparam i30253_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i2_4_lut (.I0(n34443), .I1(n4_c), .I2(n58), .I3(state[0]), 
            .O(n30422));
    defparam i2_4_lut.LUT_INIT = 16'hcfee;
    SB_LUT4 i1_4_lut_adj_2689 (.I0(n21814), .I1(saved_addr[0]), .I2(rw), 
            .I3(state_7__N_5082[0]), .O(n28289));   // verilog/i2c_controller.v(33[12:17])
    defparam i1_4_lut_adj_2689.LUT_INIT = 16'hd8cc;
    SB_LUT4 i11461_2_lut_3_lut (.I0(state[0]), .I1(state[2]), .I2(n14395), 
            .I3(GND_net), .O(n15587));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11461_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_DFF ready_prev_59 (.Q(ready_prev), .C(clk16MHz), .D(enable_slow_N_5185));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFSR enable_58 (.Q(enable), .C(clk16MHz), .D(n4084[0]), .R(state[2]));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i1_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(n19298), 
            .I3(state[1]), .O(n16699));   // verilog/eeprom.v(35[8] 81[4])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf1f0;
    SB_LUT4 i1_4_lut_adj_2690 (.I0(state[0]), .I1(state[1]), .I2(state[2]), 
            .I3(n58), .O(n27993));
    defparam i1_4_lut_adj_2690.LUT_INIT = 16'he0e8;
    SB_LUT4 i28376_2_lut_3_lut (.I0(state_adj_5865[1]), .I1(state_adj_5865[2]), 
            .I2(state_adj_5865[0]), .I3(GND_net), .O(n32671));   // verilog/eeprom.v(55[12:28])
    defparam i28376_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i30459_4_lut_4_lut (.I0(state_adj_5865[1]), .I1(state_adj_5865[2]), 
            .I2(state_adj_5865[0]), .I3(n4_adj_5857), .O(n34444));   // verilog/eeprom.v(55[12:28])
    defparam i30459_4_lut_4_lut.LUT_INIT = 16'hffc1;
    SB_LUT4 i30414_3_lut_4_lut (.I0(state_adj_5865[1]), .I1(state_adj_5865[2]), 
            .I2(n23911), .I3(n28596), .O(n34424));   // verilog/eeprom.v(55[12:28])
    defparam i30414_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_2_lut (.I0(state[2]), .I1(n21854), .I2(GND_net), .I3(GND_net), 
            .O(n21579));
    defparam i21_2_lut.LUT_INIT = 16'h7777;
    SB_DFF bytes_0___i2 (.Q(ID[1]), .C(clk16MHz), .D(n15834));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i3 (.Q(ID[2]), .C(clk16MHz), .D(n15833));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i4 (.Q(ID[3]), .C(clk16MHz), .D(n15832));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i5 (.Q(ID[4]), .C(clk16MHz), .D(n15831));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i6 (.Q(ID[5]), .C(clk16MHz), .D(n15830));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i7 (.Q(ID[6]), .C(clk16MHz), .D(n15829));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i8 (.Q(ID[7]), .C(clk16MHz), .D(n15828));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i9 (.Q(baudrate[0]), .C(clk16MHz), .D(n15827));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i10 (.Q(baudrate[1]), .C(clk16MHz), .D(n15826));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i11 (.Q(baudrate[2]), .C(clk16MHz), .D(n15825));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i12 (.Q(baudrate[3]), .C(clk16MHz), .D(n15824));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i13 (.Q(baudrate[4]), .C(clk16MHz), .D(n15823));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i14 (.Q(baudrate[5]), .C(clk16MHz), .D(n15822));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i15 (.Q(baudrate[6]), .C(clk16MHz), .D(n15821));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i1_2_lut (.I0(enable_slow_N_5185), .I1(ready_prev), .I2(GND_net), 
            .I3(GND_net), .O(n58));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i30648_4_lut (.I0(n34424), .I1(state[1]), .I2(n19), .I3(state[2]), 
            .O(n34428));   // verilog/eeprom.v(27[11:16])
    defparam i30648_4_lut.LUT_INIT = 16'h0c44;
    SB_LUT4 i33_4_lut (.I0(n34428), .I1(n19), .I2(state[0]), .I3(state[2]), 
            .O(n27));   // verilog/eeprom.v(27[11:16])
    defparam i33_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(state[2]), .I1(n27), .I2(n18), .I3(GND_net), 
            .O(n28089));   // verilog/eeprom.v(27[11:16])
    defparam i1_3_lut.LUT_INIT = 16'hdcdc;
    SB_DFF bytes_0___i16 (.Q(baudrate[7]), .C(clk16MHz), .D(n15820));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i17 (.Q(baudrate[8]), .C(clk16MHz), .D(n15819));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i12_4_lut (.I0(delay_counter[11]), .I1(delay_counter[1]), .I2(delay_counter[12]), 
            .I3(delay_counter[14]), .O(n28));   // verilog/eeprom.v(35[8] 81[4])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(delay_counter[9]), .I1(delay_counter[5]), .I2(delay_counter[13]), 
            .I3(delay_counter[2]), .O(n26));   // verilog/eeprom.v(35[8] 81[4])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF bytes_0___i18 (.Q(baudrate[9]), .C(clk16MHz), .D(n15818));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i11_4_lut (.I0(delay_counter[8]), .I1(delay_counter[4]), .I2(delay_counter[15]), 
            .I3(delay_counter[6]), .O(n27_adj_5858));   // verilog/eeprom.v(35[8] 81[4])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[3]), .I1(delay_counter[0]), .I2(delay_counter[10]), 
            .I3(delay_counter[7]), .O(n25));   // verilog/eeprom.v(35[8] 81[4])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF bytes_0___i19 (.Q(baudrate[10]), .C(clk16MHz), .D(n15817));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27_adj_5858), .I2(n26), .I3(n28), 
            .O(n23911));   // verilog/eeprom.v(35[8] 81[4])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_2691 (.I0(n23911), .I1(enable_slow_N_5185), .I2(GND_net), 
            .I3(GND_net), .O(n3516[8]));   // verilog/eeprom.v(35[8] 81[4])
    defparam i1_2_lut_adj_2691.LUT_INIT = 16'h8888;
    SB_DFF bytes_0___i20 (.Q(baudrate[11]), .C(clk16MHz), .D(n15815));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i21 (.Q(baudrate[12]), .C(clk16MHz), .D(n15814));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i22 (.Q(baudrate[13]), .C(clk16MHz), .D(n15778));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF rw_64 (.Q(rw), .C(clk16MHz), .D(n28009));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF data_ready_61 (.Q(data_ready), .C(clk16MHz), .D(n15751));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i23 (.Q(baudrate[14]), .C(clk16MHz), .D(n15742));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i1 (.Q(ID[0]), .C(clk16MHz), .D(n15739));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i2_3_lut_4_lut (.I0(state[1]), .I1(read), .I2(state[0]), .I3(state[2]), 
            .O(n15582));   // verilog/eeprom.v(27[11:16])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i1_4_lut_4_lut (.I0(state[1]), .I1(read), .I2(state[0]), .I3(state[2]), 
            .O(n14409));   // verilog/eeprom.v(27[11:16])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h00a4;
    SB_LUT4 i35_4_lut_4_lut (.I0(state[1]), .I1(read), .I2(state[0]), 
            .I3(n58), .O(n18));   // verilog/eeprom.v(27[11:16])
    defparam i35_4_lut_4_lut.LUT_INIT = 16'ha404;
    SB_LUT4 add_915_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n3516[8]), 
            .I3(n24314), .O(delay_counter_15__N_4928[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_915_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n3516[8]), 
            .I3(n24313), .O(delay_counter_15__N_4928[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i25_4_lut (.I0(n21854), .I1(state[2]), .I2(state[0]), .I3(state[1]), 
            .O(n14395));
    defparam i25_4_lut.LUT_INIT = 16'h0334;
    SB_CARRY add_915_16 (.CI(n24313), .I0(delay_counter[14]), .I1(n3516[8]), 
            .CO(n24314));
    SB_LUT4 add_915_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n3516[8]), 
            .I3(n24312), .O(delay_counter_15__N_4928[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_15 (.CI(n24312), .I0(delay_counter[13]), .I1(n3516[8]), 
            .CO(n24313));
    SB_LUT4 i25_4_lut_4_lut (.I0(state[0]), .I1(n21854), .I2(state[2]), 
            .I3(state[1]), .O(state_7__N_4857[1]));
    defparam i25_4_lut_4_lut.LUT_INIT = 16'hf51a;
    SB_LUT4 i1_4_lut_4_lut_adj_2692 (.I0(state[0]), .I1(n21854), .I2(state[2]), 
            .I3(state[1]), .O(n19298));
    defparam i1_4_lut_4_lut_adj_2692.LUT_INIT = 16'h001a;
    SB_LUT4 add_915_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n3516[8]), 
            .I3(n24311), .O(delay_counter_15__N_4928[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20491_3_lut_4_lut (.I0(n58), .I1(byte_counter[0]), .I2(byte_counter[1]), 
            .I3(byte_counter[2]), .O(n17[2]));   // verilog/eeprom.v(68[25:39])
    defparam i20491_3_lut_4_lut.LUT_INIT = 16'hbf40;
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n14395), 
            .D(delay_counter_15__N_4928[0]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF state_i0 (.Q(state[0]), .C(clk16MHz), .D(n28089));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 i2_3_lut_4_lut_adj_2693 (.I0(byte_counter[2]), .I1(n9429), .I2(byte_counter[0]), 
            .I3(byte_counter[1]), .O(n30545));   // verilog/eeprom.v(35[8] 81[4])
    defparam i2_3_lut_4_lut_adj_2693.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(byte_counter[2]), .I1(n9429), .I2(byte_counter[1]), 
            .I3(byte_counter[0]), .O(n28594));   // verilog/eeprom.v(35[8] 81[4])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_915_14 (.CI(n24311), .I0(delay_counter[12]), .I1(n3516[8]), 
            .CO(n24312));
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n14395), 
            .D(delay_counter_15__N_4928[1]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n14395), 
            .D(delay_counter_15__N_4928[2]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n14395), 
            .D(delay_counter_15__N_4928[3]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n16699), 
            .D(n4791), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n14395), 
            .D(delay_counter_15__N_4928[5]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n14395), 
            .D(n4793), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n14395), 
            .D(n4794), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n14395), 
            .D(n4795), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n14395), 
            .D(n4796), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(clk16MHz), 
            .E(n14395), .D(n4797), .S(n19298));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(clk16MHz), 
            .E(n14395), .D(delay_counter_15__N_4928[11]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(clk16MHz), 
            .E(n14395), .D(delay_counter_15__N_4928[12]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(clk16MHz), 
            .E(n14395), .D(delay_counter_15__N_4928[13]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(clk16MHz), 
            .E(n14395), .D(delay_counter_15__N_4928[14]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(clk16MHz), 
            .E(n14395), .D(delay_counter_15__N_4928[15]), .R(n15587));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFFESR byte_counter_1587__i1 (.Q(byte_counter[1]), .C(clk16MHz), 
            .E(n14409), .D(n17[1]), .R(n15582));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1587__i2 (.Q(byte_counter[2]), .C(clk16MHz), 
            .E(n14409), .D(n17[2]), .R(n15582));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1587__i0 (.Q(byte_counter[0]), .C(clk16MHz), 
            .E(n14409), .D(n25367), .R(n15582));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_915_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n3516[8]), 
            .I3(n24310), .O(delay_counter_15__N_4928[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_13 (.CI(n24310), .I0(delay_counter[11]), .I1(n3516[8]), 
            .CO(n24311));
    SB_LUT4 add_915_12_lut (.I0(n21579), .I1(delay_counter[10]), .I2(n3516[8]), 
            .I3(n24309), .O(n4797)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_915_12 (.CI(n24309), .I0(delay_counter[10]), .I1(n3516[8]), 
            .CO(n24310));
    SB_LUT4 add_915_11_lut (.I0(n21579), .I1(delay_counter[9]), .I2(n3516[8]), 
            .I3(n24308), .O(n4796)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_915_11 (.CI(n24308), .I0(delay_counter[9]), .I1(n3516[8]), 
            .CO(n24309));
    SB_LUT4 add_915_10_lut (.I0(n21579), .I1(delay_counter[8]), .I2(n3516[8]), 
            .I3(n24307), .O(n4795)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_915_10 (.CI(n24307), .I0(delay_counter[8]), .I1(n3516[8]), 
            .CO(n24308));
    SB_LUT4 add_915_9_lut (.I0(n21579), .I1(delay_counter[7]), .I2(n3516[8]), 
            .I3(n24306), .O(n4794)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_915_9 (.CI(n24306), .I0(delay_counter[7]), .I1(n3516[8]), 
            .CO(n24307));
    SB_LUT4 add_915_8_lut (.I0(n21579), .I1(delay_counter[6]), .I2(n3516[8]), 
            .I3(n24305), .O(n4793)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_915_8 (.CI(n24305), .I0(delay_counter[6]), .I1(n3516[8]), 
            .CO(n24306));
    SB_LUT4 add_915_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n3516[8]), 
            .I3(n24304), .O(delay_counter_15__N_4928[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_7 (.CI(n24304), .I0(delay_counter[5]), .I1(n3516[8]), 
            .CO(n24305));
    SB_LUT4 add_915_6_lut (.I0(n21579), .I1(delay_counter[4]), .I2(n3516[8]), 
            .I3(n24303), .O(n4791)) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_6_lut.LUT_INIT = 16'h8228;
    SB_DFF bytes_0___i24 (.Q(baudrate[15]), .C(clk16MHz), .D(n15672));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF bytes_0___i25 (.Q(baudrate[16]), .C(clk16MHz), .D(n15667));   // verilog/eeprom.v(35[8] 81[4])
    SB_DFF state_i2 (.Q(state[2]), .C(clk16MHz), .D(n27993));   // verilog/eeprom.v(35[8] 81[4])
    SB_CARRY add_915_6 (.CI(n24303), .I0(delay_counter[4]), .I1(n3516[8]), 
            .CO(n24304));
    SB_DFFE state_i1 (.Q(state[1]), .C(clk16MHz), .E(n30422), .D(state_7__N_4857[1]));   // verilog/eeprom.v(35[8] 81[4])
    SB_LUT4 add_915_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n3516[8]), 
            .I3(n24302), .O(delay_counter_15__N_4928[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_915_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_915_5 (.CI(n24302), .I0(delay_counter[3]), .I1(n3516[8]), 
            .CO(n24303));
    SB_LUT4 i1_2_lut_adj_2694 (.I0(state_adj_5865[0]), .I1(state_adj_5865[3]), 
            .I2(GND_net), .I3(GND_net), .O(n28596));   // verilog/eeprom.v(55[12:28])
    defparam i1_2_lut_adj_2694.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_2695 (.I0(state[2]), .I1(ready_prev), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_5861));   // verilog/eeprom.v(35[8] 81[4])
    defparam i1_2_lut_adj_2695.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_2696 (.I0(n21814), .I1(state[1]), .I2(state[0]), 
            .I3(n4_adj_5861), .O(n9429));
    defparam i2_4_lut_adj_2696.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_adj_2697 (.I0(state[0]), .I1(state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n19));
    defparam i1_2_lut_adj_2697.LUT_INIT = 16'heeee;
    SB_LUT4 i28368_4_lut (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(n9), .O(n32662));
    defparam i28368_4_lut.LUT_INIT = 16'hfaea;
    SB_LUT4 i11_4_lut_adj_2698 (.I0(rw), .I1(state[1]), .I2(state[0]), 
            .I3(n32662), .O(n28009));   // verilog/eeprom.v(27[11:16])
    defparam i11_4_lut_adj_2698.LUT_INIT = 16'haace;
    SB_LUT4 i2_3_lut_4_lut_adj_2699 (.I0(state_adj_5865[1]), .I1(state_adj_5865[0]), 
            .I2(state_adj_5865[3]), .I3(state_adj_5865[2]), .O(n21814));
    defparam i2_3_lut_4_lut_adj_2699.LUT_INIT = 16'hfffe;
    SB_LUT4 i20484_2_lut_3_lut_4_lut (.I0(enable_slow_N_5185), .I1(ready_prev), 
            .I2(byte_counter[0]), .I3(byte_counter[1]), .O(n17[1]));   // verilog/eeprom.v(68[25:39])
    defparam i20484_2_lut_3_lut_4_lut.LUT_INIT = 16'hdf20;
    SB_LUT4 i20158_3_lut_4_lut (.I0(enable_slow_N_5185), .I1(n23911), .I2(state[0]), 
            .I3(state[1]), .O(n4084[0]));   // verilog/eeprom.v(27[11:16])
    defparam i20158_3_lut_4_lut.LUT_INIT = 16'h02f0;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable_slow_N_5185), .I1(ready_prev), .I2(byte_counter[0]), 
            .I3(GND_net), .O(n25367));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 i14_4_lut_4_lut (.I0(state[2]), .I1(n21854), .I2(n19), .I3(data_ready), 
            .O(n15751));
    defparam i14_4_lut_4_lut.LUT_INIT = 16'hfa08;
    SB_LUT4 i1_2_lut_4_lut (.I0(byte_counter[2]), .I1(n9429), .I2(byte_counter[1]), 
            .I3(byte_counter[0]), .O(n28613));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_4_lut_adj_2700 (.I0(byte_counter[2]), .I1(n9429), .I2(byte_counter[1]), 
            .I3(byte_counter[0]), .O(n28612));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_4_lut_adj_2700.LUT_INIT = 16'hefff;
    SB_LUT4 i1_2_lut_3_lut_adj_2701 (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(byte_counter[2]), .I3(GND_net), .O(n21854));   // verilog/eeprom.v(68[25:39])
    defparam i1_2_lut_3_lut_adj_2701.LUT_INIT = 16'he0e0;
    SB_LUT4 i2_3_lut_4_lut_adj_2702 (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(byte_counter[2]), .I3(n9429), .O(n30266));   // verilog/eeprom.v(68[25:39])
    defparam i2_3_lut_4_lut_adj_2702.LUT_INIT = 16'hffef;
    i2c_controller i2c (.\state_7__N_5082[0] (state_7__N_5082[0]), .enable_slow_N_5185(enable_slow_N_5185), 
            .GND_net(GND_net), .\state[2] (state_adj_5865[2]), .\state[3] (state_adj_5865[3]), 
            .clk16MHz(clk16MHz), .scl_enable(scl_enable), .n15850(n15850), 
            .data({data}), .n15846(n15846), .n15845(n15845), .\state[0] (state_adj_5865[0]), 
            .\state[1] (state_adj_5865[1]), .n21571(n21571), .n15816(n15816), 
            .n4(n4_adj_5857), .n34444(n34444), .\state_7__N_5098[3] (\state_7__N_5098[3] ), 
            .n23911(n23911), .n9(n9), .\saved_addr[0] (saved_addr[0]), 
            .VCC_net(VCC_net), .sda_enable(sda_enable), .enable(enable), 
            .n16347(n16347), .n16293(n16293), .n4_adj_16(n4), .n16010(n16010), 
            .n13066(n13066), .n16003(n16003), .n28289(n28289), .n4_adj_17(n4_adj_19), 
            .scl(scl), .sda_out(sda_out), .n13080(n13080), .n4_adj_18(n4_adj_20)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(83[16] 97[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\state_7__N_5082[0] , enable_slow_N_5185, GND_net, 
            \state[2] , \state[3] , clk16MHz, scl_enable, n15850, 
            data, n15846, n15845, \state[0] , \state[1] , n21571, 
            n15816, n4, n34444, \state_7__N_5098[3] , n23911, n9, 
            \saved_addr[0] , VCC_net, sda_enable, enable, n16347, 
            n16293, n4_adj_16, n16010, n13066, n16003, n28289, n4_adj_17, 
            scl, sda_out, n13080, n4_adj_18) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \state_7__N_5082[0] ;
    output enable_slow_N_5185;
    input GND_net;
    output \state[2] ;
    output \state[3] ;
    input clk16MHz;
    output scl_enable;
    input n15850;
    output [7:0]data;
    input n15846;
    input n15845;
    output \state[0] ;
    output \state[1] ;
    output n21571;
    input n15816;
    output n4;
    input n34444;
    input \state_7__N_5098[3] ;
    input n23911;
    output n9;
    output \saved_addr[0] ;
    input VCC_net;
    output sda_enable;
    input enable;
    input n16347;
    input n16293;
    output n4_adj_16;
    input n16010;
    output n13066;
    input n16003;
    input n28289;
    output n4_adj_17;
    output scl;
    output sda_out;
    output n13080;
    output n4_adj_18;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    
    wire enable_slow_N_5184, n4_c, n9_c, n30968, i2c_clk_N_5171, scl_enable_N_5172, 
        n14393, n10, n11, n21531, n9_adj_5843;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n10_adj_5844, n15565, n4919;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    wire [1:0]n4679;
    
    wire n30509, n4616, n21612, n15313, n4609, n15, n14438, n28, 
        n36064, n11_adj_5846, n29364, n14389, n28131, n14391;
    wire [5:0]n29;
    
    wire n7, n30826;
    wire [7:0]n119;
    
    wire n24352, n21713, n21651, n30867, n24351, n30776, sda_out_adj_5848, 
        n15329, n11_adj_5849, n21609, n12, n14270, n24350, n24752, 
        n24751, n24750, n24749, n24748, n24349, n24348, n24347, 
        n24346, n15_adj_5851;
    
    SB_LUT4 i31802_2_lut (.I0(\state_7__N_5082[0] ), .I1(enable_slow_N_5185), 
            .I2(GND_net), .I3(GND_net), .O(enable_slow_N_5184));
    defparam i31802_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n4_c), 
            .I3(n9_c), .O(n30968));   // verilog/i2c_controller.v(139[9:14])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hf0f4;
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(clk16MHz), .D(i2c_clk_N_5171));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_5172));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_DFFE enable_slow_121 (.Q(\state_7__N_5082[0] ), .C(clk16MHz), .E(n14393), 
            .D(enable_slow_N_5184));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n15850));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n15846));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n15845));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i31793_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n10), 
            .I3(n11), .O(n21531));   // verilog/i2c_controller.v(77[47:62])
    defparam i31793_3_lut_4_lut.LUT_INIT = 16'h01ff;
    SB_LUT4 i31799_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(enable_slow_N_5185));   // verilog/i2c_controller.v(77[47:62])
    defparam i31799_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 equal_242_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_5843));   // verilog/i2c_controller.v(77[27:43])
    defparam equal_242_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[0]), .O(n10_adj_5844));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(counter2[4]), .I1(n10_adj_5844), .I2(counter2[1]), 
            .I3(GND_net), .O(n15565));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut (.I0(i2c_clk), .I1(n15565), .I2(GND_net), .I3(GND_net), 
            .O(i2c_clk_N_5171));
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n4919));   // verilog/i2c_controller.v(77[27:43])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i17744_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21571));
    defparam i17744_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n15816));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i2_3_lut_4_lut_adj_2677 (.I0(\state[2] ), .I1(\state[3] ), .I2(n4679[1]), 
            .I3(\state[1] ), .O(n30509));   // verilog/i2c_controller.v(77[27:43])
    defparam i2_3_lut_4_lut_adj_2677.LUT_INIT = 16'h1000;
    SB_LUT4 i11441_4_lut (.I0(n4616), .I1(\state_7__N_5082[0] ), .I2(n21612), 
            .I3(enable_slow_N_5185), .O(n15313));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11441_4_lut.LUT_INIT = 16'h8a0a;
    SB_LUT4 i17684_3_lut_4_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(scl_enable_N_5172));   // verilog/i2c_controller.v(77[47:62])
    defparam i17684_3_lut_4_lut_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 i1_2_lut_adj_2678 (.I0(\state[3] ), .I1(n4609), .I2(GND_net), 
            .I3(GND_net), .O(n4));
    defparam i1_2_lut_adj_2678.LUT_INIT = 16'hbbbb;
    SB_LUT4 i14_4_lut (.I0(n34444), .I1(n15), .I2(n4919), .I3(\state_7__N_5098[3] ), 
            .O(n14438));
    defparam i14_4_lut.LUT_INIT = 16'h35f5;
    SB_LUT4 i1_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n28));
    defparam i1_4_lut.LUT_INIT = 16'h5110;
    SB_LUT4 i31760_2_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n36064));
    defparam i31760_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2679 (.I0(n11_adj_5846), .I1(n36064), .I2(n28), 
            .I3(n29364), .O(n14389));
    defparam i1_4_lut_adj_2679.LUT_INIT = 16'ha0a8;
    SB_LUT4 i1_2_lut_adj_2680 (.I0(enable_slow_N_5185), .I1(n23911), .I2(GND_net), 
            .I3(GND_net), .O(n9));
    defparam i1_2_lut_adj_2680.LUT_INIT = 16'hdddd;
    SB_LUT4 mux_1400_Mux_1_i7_4_lut (.I0(counter[1]), .I1(counter[0]), .I2(counter[2]), 
            .I3(\saved_addr[0] ), .O(n4679[1]));   // verilog/i2c_controller.v(201[28:35])
    defparam mux_1400_Mux_1_i7_4_lut.LUT_INIT = 16'hc1c0;
    SB_LUT4 i1_2_lut_adj_2681 (.I0(\state[0] ), .I1(\state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n29364));
    defparam i1_2_lut_adj_2681.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut (.I0(n11_adj_5846), .I1(n29364), .I2(\state[3] ), 
            .I3(\state[1] ), .O(n28131));   // verilog/i2c_controller.v(180[12] 218[6])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i1_4_lut_adj_2682 (.I0(n11_adj_5846), .I1(\state[1] ), .I2(\state[3] ), 
            .I3(n29364), .O(n14391));
    defparam i1_4_lut_adj_2682.LUT_INIT = 16'h0a22;
    SB_DFFSR counter2_1596_1597__i6 (.Q(counter2[5]), .C(clk16MHz), .D(n29[5]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n4616), .D(n7), 
            .S(n30826));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n24352), .O(n119[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(n4616), .D(n21713), 
            .S(n21651));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n4616), .D(n30968), 
            .S(n30867));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n24351), .O(n119[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n14391), 
            .D(n30776), .S(n28131));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFNESS sda_out_133 (.Q(sda_out_adj_5848), .C(i2c_clk), .E(n14389), 
            .D(n30509), .S(n28131));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n14438), .D(n119[0]), 
            .S(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i1_4_lut_adj_2683 (.I0(\state_7__N_5098[3] ), .I1(n11_adj_5849), 
            .I2(n11_adj_5846), .I3(enable), .O(n4_c));
    defparam i1_4_lut_adj_2683.LUT_INIT = 16'h2a2f;
    SB_DFFESS state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(n4616), .D(n21531), 
            .S(n15313));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFSR counter2_1596_1597__i5 (.Q(counter2[4]), .C(clk16MHz), .D(n29[4]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1596_1597__i4 (.Q(counter2[3]), .C(clk16MHz), .D(n29[3]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1596_1597__i3 (.Q(counter2[2]), .C(clk16MHz), .D(n29[2]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1596_1597__i2 (.Q(counter2[1]), .C(clk16MHz), .D(n29[1]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_CARRY sub_39_add_2_8 (.CI(n24351), .I0(counter[6]), .I1(VCC_net), 
            .CO(n24352));
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n16347));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i31830_2_lut (.I0(n4616), .I1(n21612), .I2(GND_net), .I3(GND_net), 
            .O(n21651));
    defparam i31830_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31853_2_lut (.I0(\state_7__N_5098[3] ), .I1(n11_adj_5849), 
            .I2(GND_net), .I3(GND_net), .O(n21713));
    defparam i31853_2_lut.LUT_INIT = 16'h1111;
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n16293));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i17782_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n21609));
    defparam i17782_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(110[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n4_adj_16), 
            .O(n4609));   // verilog/i2c_controller.v(110[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31833_4_lut (.I0(n9_adj_5843), .I1(\state[2] ), .I2(n4616), 
            .I3(\state[3] ), .O(n30826));
    defparam i31833_4_lut.LUT_INIT = 16'h1050;
    SB_LUT4 i1_4_lut_adj_2684 (.I0(n4609), .I1(n11), .I2(n10), .I3(\state[0] ), 
            .O(n14270));
    defparam i1_4_lut_adj_2684.LUT_INIT = 16'h222a;
    SB_LUT4 i31770_4_lut (.I0(\state[3] ), .I1(n14270), .I2(\state[2] ), 
            .I3(n21609), .O(n4616));
    defparam i31770_4_lut.LUT_INIT = 16'h1113;
    SB_LUT4 i2_4_lut (.I0(n11), .I1(n11_adj_5849), .I2(\saved_addr[0] ), 
            .I3(\state_7__N_5098[3] ), .O(n7));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i2_4_lut.LUT_INIT = 16'h5575;
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n14438), .D(n119[1]), 
            .S(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n14438), .D(n119[2]), 
            .S(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n14438), .D(n119[3]), 
            .R(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n14438), .D(n119[4]), 
            .R(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n14438), .D(n119[5]), 
            .R(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n14438), .D(n119[6]), 
            .R(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n14438), .D(n119[7]), 
            .R(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n24350), .O(n119[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR counter2_1596_1597__i1 (.Q(counter2[0]), .C(clk16MHz), .D(n29[0]), 
            .R(n15565));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 counter2_1596_1597_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[5]), .I3(n24752), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_1596_1597_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[4]), .I3(n24751), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1596_1597_add_4_6 (.CI(n24751), .I0(GND_net), .I1(counter2[4]), 
            .CO(n24752));
    SB_LUT4 counter2_1596_1597_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[3]), .I3(n24750), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1596_1597_add_4_5 (.CI(n24750), .I0(GND_net), .I1(counter2[3]), 
            .CO(n24751));
    SB_LUT4 counter2_1596_1597_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[2]), .I3(n24749), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1596_1597_add_4_4 (.CI(n24749), .I0(GND_net), .I1(counter2[2]), 
            .CO(n24750));
    SB_CARRY sub_39_add_2_7 (.CI(n24350), .I0(counter[5]), .I1(VCC_net), 
            .CO(n24351));
    SB_LUT4 counter2_1596_1597_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[1]), .I3(n24748), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1596_1597_add_4_3 (.CI(n24748), .I0(GND_net), .I1(counter2[1]), 
            .CO(n24749));
    SB_LUT4 counter2_1596_1597_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[0]), .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1596_1597_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n24349), .O(n119[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_6 (.CI(n24349), .I0(counter[4]), .I1(VCC_net), 
            .CO(n24350));
    SB_CARRY counter2_1596_1597_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n24748));
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n24348), .O(n119[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_5 (.CI(n24348), .I0(counter[3]), .I1(VCC_net), 
            .CO(n24349));
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n24347), .O(n119[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_4 (.CI(n24347), .I0(counter[2]), .I1(VCC_net), 
            .CO(n24348));
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n24346), .O(n119[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_3 (.CI(n24346), .I0(counter[1]), .I1(VCC_net), 
            .CO(n24347));
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n119[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n24346));
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n16010));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_144_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n15_adj_5851));   // verilog/i2c_controller.v(151[5:14])
    defparam state_7__I_0_144_i11_2_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_3_lut_adj_2685 (.I0(n9_c), .I1(n10), .I2(counter[0]), 
            .I3(GND_net), .O(n13066));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_3_lut_adj_2685.LUT_INIT = 16'hefef;
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n16003));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n28289));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i31828_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(n4616), .O(n30867));
    defparam i31828_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 state_7__I_0_143_i11_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11_adj_5846));   // verilog/i2c_controller.v(143[5:14])
    defparam state_7__I_0_143_i11_2_lut_4_lut.LUT_INIT = 16'hff7f;
    SB_LUT4 i2_3_lut_4_lut_adj_2686 (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n30776));   // verilog/i2c_controller.v(181[4] 217[11])
    defparam i2_3_lut_4_lut_adj_2686.LUT_INIT = 16'h1110;
    SB_LUT4 i11457_2_lut_4_lut (.I0(n14438), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(\state[0] ), .O(n15329));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11457_2_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 state_7__I_0_140_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n11_adj_5849));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_140_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 equal_321_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_16));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_321_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 equal_242_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n15));   // verilog/i2c_controller.v(77[27:43])
    defparam equal_242_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 state_7__I_0_139_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n11));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_139_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i17785_3_lut_4_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n21612));   // verilog/i2c_controller.v(139[9:14])
    defparam i17785_3_lut_4_lut_4_lut.LUT_INIT = 16'hfdbf;
    SB_LUT4 i1_2_lut_3_lut_adj_2687 (.I0(enable), .I1(\state_7__N_5082[0] ), 
            .I2(enable_slow_N_5185), .I3(GND_net), .O(n14393));
    defparam i1_2_lut_3_lut_adj_2687.LUT_INIT = 16'haeae;
    SB_LUT4 equal_319_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_17));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_319_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i17743_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i17743_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2758_2_lut (.I0(sda_out_adj_5848), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i2758_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 state_7__I_0_143_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(143[5:14])
    defparam state_7__I_0_143_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 state_7__I_0_139_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n9_c));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_139_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_2688 (.I0(counter[0]), .I1(n15_adj_5851), .I2(GND_net), 
            .I3(GND_net), .O(n13080));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_2688.LUT_INIT = 16'heeee;
    SB_LUT4 equal_317_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_18));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_317_i4_2_lut.LUT_INIT = 16'hbbbb;
    
endmodule
//
// Verilog Description of module \quadrature_decoder(0)_U0 
//

module \quadrature_decoder(0)_U0  (ENCODER0_B_N_keep, n1292, ENCODER0_A_N_keep, 
            b_prev, \a_new[1] , GND_net, n15794, n15793, a_prev, 
            position_31__N_4808, \encoder0_position[0] , n1250, n1252, 
            n1254, n1256, n1258, n1260, n1262, n1264, \encoder0_position[23] , 
            \encoder0_position[22] , \encoder0_position[21] , \encoder0_position[20] , 
            \encoder0_position[19] , \encoder0_position[18] , \encoder0_position[17] , 
            \encoder0_position[16] , \encoder0_position[15] , \encoder0_position[14] , 
            \encoder0_position[13] , \encoder0_position[12] , \encoder0_position[11] , 
            \encoder0_position[10] , \encoder0_position[9] , \encoder0_position[8] , 
            \encoder0_position[7] , \encoder0_position[6] , \encoder0_position[5] , 
            \encoder0_position[4] , \encoder0_position[3] , \encoder0_position[2] , 
            \encoder0_position[1] , \b_new[1] , VCC_net, n15671, n1248, 
            debounce_cnt_N_4805) /* synthesis lattice_noprune=1 */ ;
    input ENCODER0_B_N_keep;
    input n1292;
    input ENCODER0_A_N_keep;
    output b_prev;
    output \a_new[1] ;
    input GND_net;
    input n15794;
    input n15793;
    output a_prev;
    output position_31__N_4808;
    output \encoder0_position[0] ;
    output n1250;
    output n1252;
    output n1254;
    output n1256;
    output n1258;
    output n1260;
    output n1262;
    output n1264;
    output \encoder0_position[23] ;
    output \encoder0_position[22] ;
    output \encoder0_position[21] ;
    output \encoder0_position[20] ;
    output \encoder0_position[19] ;
    output \encoder0_position[18] ;
    output \encoder0_position[17] ;
    output \encoder0_position[16] ;
    output \encoder0_position[15] ;
    output \encoder0_position[14] ;
    output \encoder0_position[13] ;
    output \encoder0_position[12] ;
    output \encoder0_position[11] ;
    output \encoder0_position[10] ;
    output \encoder0_position[9] ;
    output \encoder0_position[8] ;
    output \encoder0_position[7] ;
    output \encoder0_position[6] ;
    output \encoder0_position[5] ;
    output \encoder0_position[4] ;
    output \encoder0_position[3] ;
    output \encoder0_position[2] ;
    output \encoder0_position[1] ;
    output \b_new[1] ;
    input VCC_net;
    input n15671;
    output n1248;
    output debounce_cnt_N_4805;
    
    wire [1:0]b_new;   // vhdl/quadrature_decoder.vhd(40[9:14])
    wire [1:0]a_new;   // vhdl/quadrature_decoder.vhd(39[9:14])
    
    wire direction_N_4812;
    wire [31:0]n133;
    
    wire n24719, n24718, n24717, n24716, n24715, n24714, n24713, 
        n24712, n24711, n24710, n24709, n24708, n24707, n24706, 
        n24705, n24704, n24703, n24702, n24701, n24700, n24699, 
        n24698, n24697, n24696, n24695, n24694, n24693, n24692, 
        n24691, n24690, n24689;
    
    SB_DFF b_new_i0 (.Q(b_new[0]), .C(n1292), .D(ENCODER0_B_N_keep));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF a_new_i0 (.Q(a_new[0]), .C(n1292), .D(ENCODER0_A_N_keep));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_LUT4 b_prev_I_0_48_2_lut (.I0(b_prev), .I1(\a_new[1] ), .I2(GND_net), 
            .I3(GND_net), .O(direction_N_4812));   // vhdl/quadrature_decoder.vhd(64[18:37])
    defparam b_prev_I_0_48_2_lut.LUT_INIT = 16'h9999;
    SB_DFF b_prev_41 (.Q(b_prev), .C(n1292), .D(n15794));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF a_prev_40 (.Q(a_prev), .C(n1292), .D(n15793));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFFE position_1586__i0 (.Q(\encoder0_position[0] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[0]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i31 (.Q(n1250), .C(n1292), .E(position_31__N_4808), 
            .D(n133[31]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i30 (.Q(n1252), .C(n1292), .E(position_31__N_4808), 
            .D(n133[30]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i29 (.Q(n1254), .C(n1292), .E(position_31__N_4808), 
            .D(n133[29]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i28 (.Q(n1256), .C(n1292), .E(position_31__N_4808), 
            .D(n133[28]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i27 (.Q(n1258), .C(n1292), .E(position_31__N_4808), 
            .D(n133[27]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i26 (.Q(n1260), .C(n1292), .E(position_31__N_4808), 
            .D(n133[26]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i25 (.Q(n1262), .C(n1292), .E(position_31__N_4808), 
            .D(n133[25]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i24 (.Q(n1264), .C(n1292), .E(position_31__N_4808), 
            .D(n133[24]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i23 (.Q(\encoder0_position[23] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[23]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i22 (.Q(\encoder0_position[22] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[22]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i21 (.Q(\encoder0_position[21] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[21]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i20 (.Q(\encoder0_position[20] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[20]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i19 (.Q(\encoder0_position[19] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[19]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i18 (.Q(\encoder0_position[18] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[18]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i17 (.Q(\encoder0_position[17] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[17]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i16 (.Q(\encoder0_position[16] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[16]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i15 (.Q(\encoder0_position[15] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[15]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i14 (.Q(\encoder0_position[14] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[14]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i13 (.Q(\encoder0_position[13] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[13]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i12 (.Q(\encoder0_position[12] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[12]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i11 (.Q(\encoder0_position[11] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[11]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i10 (.Q(\encoder0_position[10] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[10]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i9 (.Q(\encoder0_position[9] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[9]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i8 (.Q(\encoder0_position[8] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[8]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i7 (.Q(\encoder0_position[7] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[7]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i6 (.Q(\encoder0_position[6] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[6]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i5 (.Q(\encoder0_position[5] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[5]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i4 (.Q(\encoder0_position[4] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[4]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i3 (.Q(\encoder0_position[3] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[3]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i2 (.Q(\encoder0_position[2] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[2]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1586__i1 (.Q(\encoder0_position[1] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[1]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_LUT4 position_31__I_1946_4_lut (.I0(a_prev), .I1(b_prev), .I2(\a_new[1] ), 
            .I3(\b_new[1] ), .O(position_31__N_4808));   // vhdl/quadrature_decoder.vhd(63[11:57])
    defparam position_31__I_1946_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 position_1586_add_4_33_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1250), .I3(n24719), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 position_1586_add_4_32_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1252), .I3(n24718), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_32 (.CI(n24718), .I0(direction_N_4812), 
            .I1(n1252), .CO(n24719));
    SB_LUT4 position_1586_add_4_31_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1254), .I3(n24717), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_31 (.CI(n24717), .I0(direction_N_4812), 
            .I1(n1254), .CO(n24718));
    SB_LUT4 position_1586_add_4_30_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1256), .I3(n24716), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_30 (.CI(n24716), .I0(direction_N_4812), 
            .I1(n1256), .CO(n24717));
    SB_LUT4 position_1586_add_4_29_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1258), .I3(n24715), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_29 (.CI(n24715), .I0(direction_N_4812), 
            .I1(n1258), .CO(n24716));
    SB_LUT4 position_1586_add_4_28_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1260), .I3(n24714), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_28 (.CI(n24714), .I0(direction_N_4812), 
            .I1(n1260), .CO(n24715));
    SB_LUT4 position_1586_add_4_27_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1262), .I3(n24713), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_27 (.CI(n24713), .I0(direction_N_4812), 
            .I1(n1262), .CO(n24714));
    SB_LUT4 position_1586_add_4_26_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1264), .I3(n24712), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_26 (.CI(n24712), .I0(direction_N_4812), 
            .I1(n1264), .CO(n24713));
    SB_LUT4 position_1586_add_4_25_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[23] ), .I3(n24711), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_25 (.CI(n24711), .I0(direction_N_4812), 
            .I1(\encoder0_position[23] ), .CO(n24712));
    SB_LUT4 position_1586_add_4_24_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[22] ), .I3(n24710), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_24 (.CI(n24710), .I0(direction_N_4812), 
            .I1(\encoder0_position[22] ), .CO(n24711));
    SB_LUT4 position_1586_add_4_23_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[21] ), .I3(n24709), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_23 (.CI(n24709), .I0(direction_N_4812), 
            .I1(\encoder0_position[21] ), .CO(n24710));
    SB_LUT4 position_1586_add_4_22_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[20] ), .I3(n24708), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_22 (.CI(n24708), .I0(direction_N_4812), 
            .I1(\encoder0_position[20] ), .CO(n24709));
    SB_LUT4 position_1586_add_4_21_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[19] ), .I3(n24707), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_21 (.CI(n24707), .I0(direction_N_4812), 
            .I1(\encoder0_position[19] ), .CO(n24708));
    SB_LUT4 position_1586_add_4_20_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[18] ), .I3(n24706), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_20 (.CI(n24706), .I0(direction_N_4812), 
            .I1(\encoder0_position[18] ), .CO(n24707));
    SB_LUT4 position_1586_add_4_19_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[17] ), .I3(n24705), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_19 (.CI(n24705), .I0(direction_N_4812), 
            .I1(\encoder0_position[17] ), .CO(n24706));
    SB_LUT4 position_1586_add_4_18_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[16] ), .I3(n24704), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_18 (.CI(n24704), .I0(direction_N_4812), 
            .I1(\encoder0_position[16] ), .CO(n24705));
    SB_LUT4 position_1586_add_4_17_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[15] ), .I3(n24703), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_17 (.CI(n24703), .I0(direction_N_4812), 
            .I1(\encoder0_position[15] ), .CO(n24704));
    SB_LUT4 position_1586_add_4_16_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[14] ), .I3(n24702), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_16 (.CI(n24702), .I0(direction_N_4812), 
            .I1(\encoder0_position[14] ), .CO(n24703));
    SB_LUT4 position_1586_add_4_15_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[13] ), .I3(n24701), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_15 (.CI(n24701), .I0(direction_N_4812), 
            .I1(\encoder0_position[13] ), .CO(n24702));
    SB_LUT4 position_1586_add_4_14_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[12] ), .I3(n24700), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_14 (.CI(n24700), .I0(direction_N_4812), 
            .I1(\encoder0_position[12] ), .CO(n24701));
    SB_LUT4 position_1586_add_4_13_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[11] ), .I3(n24699), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_13 (.CI(n24699), .I0(direction_N_4812), 
            .I1(\encoder0_position[11] ), .CO(n24700));
    SB_LUT4 position_1586_add_4_12_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[10] ), .I3(n24698), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_12 (.CI(n24698), .I0(direction_N_4812), 
            .I1(\encoder0_position[10] ), .CO(n24699));
    SB_LUT4 position_1586_add_4_11_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[9] ), .I3(n24697), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_11 (.CI(n24697), .I0(direction_N_4812), 
            .I1(\encoder0_position[9] ), .CO(n24698));
    SB_LUT4 position_1586_add_4_10_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[8] ), .I3(n24696), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_10 (.CI(n24696), .I0(direction_N_4812), 
            .I1(\encoder0_position[8] ), .CO(n24697));
    SB_LUT4 position_1586_add_4_9_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[7] ), .I3(n24695), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_9 (.CI(n24695), .I0(direction_N_4812), 
            .I1(\encoder0_position[7] ), .CO(n24696));
    SB_LUT4 position_1586_add_4_8_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[6] ), .I3(n24694), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_8 (.CI(n24694), .I0(direction_N_4812), 
            .I1(\encoder0_position[6] ), .CO(n24695));
    SB_LUT4 position_1586_add_4_7_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[5] ), .I3(n24693), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_7 (.CI(n24693), .I0(direction_N_4812), 
            .I1(\encoder0_position[5] ), .CO(n24694));
    SB_LUT4 position_1586_add_4_6_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[4] ), .I3(n24692), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_6 (.CI(n24692), .I0(direction_N_4812), 
            .I1(\encoder0_position[4] ), .CO(n24693));
    SB_LUT4 position_1586_add_4_5_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[3] ), .I3(n24691), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_5 (.CI(n24691), .I0(direction_N_4812), 
            .I1(\encoder0_position[3] ), .CO(n24692));
    SB_LUT4 position_1586_add_4_4_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[2] ), .I3(n24690), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_4 (.CI(n24690), .I0(direction_N_4812), 
            .I1(\encoder0_position[2] ), .CO(n24691));
    SB_LUT4 position_1586_add_4_3_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder0_position[1] ), .I3(n24689), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_3 (.CI(n24689), .I0(direction_N_4812), 
            .I1(\encoder0_position[1] ), .CO(n24690));
    SB_LUT4 position_1586_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(\encoder0_position[0] ), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1586_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1586_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(\encoder0_position[0] ), 
            .CO(n24689));
    SB_DFF direction_42 (.Q(n1248), .C(n1292), .D(n15671));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF a_new_i1 (.Q(\a_new[1] ), .C(n1292), .D(a_new[0]));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF b_new_i1 (.Q(\b_new[1] ), .C(n1292), .D(b_new[0]));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_LUT4 debounce_cnt_I_1945_4_lut (.I0(a_new[0]), .I1(b_new[0]), .I2(\a_new[1] ), 
            .I3(\b_new[1] ), .O(debounce_cnt_N_4805));   // vhdl/quadrature_decoder.vhd(53[8:58])
    defparam debounce_cnt_I_1945_4_lut.LUT_INIT = 16'h7bde;
    
endmodule
//
// Verilog Description of module pll32MHz
//

module pll32MHz (GND_net, clk16MHz, VCC_net, clk32MHz) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk16MHz;
    input VCC_net;
    output clk32MHz;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[16:24])
    
    SB_PLL40_CORE pll32MHz_inst (.REFERENCECLK(clk16MHz), .PLLOUTCORE(clk32MHz), 
            .BYPASS(GND_net), .RESETB(VCC_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=51, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=36 */ ;   // verilog/TinyFPGA_B.v(32[10] 36[2])
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
// Verilog Description of module coms
//

module coms (GND_net, rx_data, VCC_net, clk16MHz, n30823, \data_in_frame[11] , 
            \data_in_frame[13] , \data_in_frame[15] , \data_in_frame[3] , 
            \data_in_frame[6][0] , \data_in_frame[12] , \data_in_frame[1] , 
            \data_in_frame[7] , \data_in_frame[13][0] , \data_in_frame[16][5] , 
            \data_in_frame[16][4] , \data_in_frame[16][6] , \data_in_frame[19] , 
            \data_in_frame[12][3] , \data_in_frame[12][5] , \data_in_frame[16][7] , 
            \data_in_frame[12][7] , \data_in_frame[15][2] , \data_in_frame[15][1] , 
            \data_in_frame[15][6] , \data_in_frame[22] , \data_in_frame[15][7] , 
            \data_in_frame[22][6] , n16593, \data_in_frame[4] , \data_in_frame[23][6] , 
            n16590, \data_in_frame[22][2] , n16587, \FRAME_MATCHER.state[3] , 
            n16584, n16581, n16578, n16575, \data_in_frame[11][0] , 
            \data_in_frame[22][1] , \data_in_frame[11][4] , n16570, n8595, 
            \data_in_frame[23][5] , \data_in_frame[23][7] , n16567, \data_in_frame[23][3] , 
            reset, \data_in_frame[23][1] , \data_in_frame[22][7] , \data_in_frame[22][3] , 
            \data_in_frame[23][2] , n16564, n16561, n15901, n15898, 
            \data_in_frame[23][0] , n15895, n16558, n16555, n16552, 
            n15892, n16549, n16546, n15889, n15886, \data_in_frame[6][2] , 
            n15883, n15880, n28015, \data_in_frame[6][7] , n28019, 
            \data_in_frame[6][6] , n28023, \data_in_frame[6][4] , n15862, 
            n15859, \data_in_frame[6][1] , n15856, n15844, control_mode, 
            n15843, n15842, n15841, n15840, n15839, n15838, ID, 
            n15976, n15979, n15982, n15985, n15988, n15994, n15997, 
            rx_data_ready, \FRAME_MATCHER.rx_data_ready_prev , n16000, 
            n16004, n16007, n16011, n16017, n14874, n16023, n16026, 
            n16035, n16038, n16077, n16080, n16083, n16086, n16089, 
            n16092, n16095, n15813, n16110, n16113, n16116, n16119, 
            n15811, \data_out_frame[26][6] , DE_c, n16170, n16173, 
            n16176, n16179, n16182, n16185, n16188, n16191, n28049, 
            n28047, n28045, n16257, n1992, n16260, n16263, n16266, 
            n16269, n16272, n16275, n16281, n16284, n16287, n14877, 
            n7, n10, n14836, n14858, n28625, n15666, tx_active, 
            n30632, \current[15] , encoder0_position, encoder1_position, 
            \current[9] , \current[0] , \current[6] , \current[8] , 
            \current[10] , n4, n7_adj_3, \current[1] , \current[2] , 
            n14890, n14896, \current[11] , n30578, \current[7] , \current[4] , 
            \current[5] , \current[3] , n127, n124, n10544, n30579, 
            n28623, \r_Bit_Index[0] , \o_Rx_DV_N_4460[24] , r_SM_Main, 
            n27, n31429, n1, tx_o, n14448, n29448, n36333, n15766, 
            n16296, r_Clock_Count, n6, tx_enable, baudrate, \o_Rx_DV_N_4460[12] , 
            \r_Bit_Index[0]_adj_4 , \r_SM_Main[2]_adj_5 , \o_Rx_DV_N_4460[8] , 
            n3367, r_Rx_Data, n29, n23, \r_SM_Main[1]_adj_6 , \o_Rx_DV_N_4460[7] , 
            RX_N_18, n29420, n14452, \o_Rx_DV_N_4460[6] , \o_Rx_DV_N_4460[5] , 
            \o_Rx_DV_N_4460[4] , \o_Rx_DV_N_4460[3] , \o_Rx_DV_N_4460[2] , 
            n31633, \o_Rx_DV_N_4460[1] , \o_Rx_DV_N_4460[0] , n28574, 
            n14365, n3370, r_Clock_Count_adj_15, n15789, n15788, n15784, 
            n15780, n15779, n15777, n15776, n34, n16299, n26289, 
            n16303, n31617, n31553, n31601, n31569, n31649, n31585, 
            n31537, n31907) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [7:0]rx_data;
    input VCC_net;
    input clk16MHz;
    output n30823;
    output [7:0]\data_in_frame[11] ;
    output [7:0]\data_in_frame[13] ;
    output [7:0]\data_in_frame[15] ;
    output [7:0]\data_in_frame[3] ;
    output \data_in_frame[6][0] ;
    output [7:0]\data_in_frame[12] ;
    output [7:0]\data_in_frame[1] ;
    output [7:0]\data_in_frame[7] ;
    output \data_in_frame[13][0] ;
    output \data_in_frame[16][5] ;
    output \data_in_frame[16][4] ;
    output \data_in_frame[16][6] ;
    output [7:0]\data_in_frame[19] ;
    output \data_in_frame[12][3] ;
    output \data_in_frame[12][5] ;
    output \data_in_frame[16][7] ;
    output \data_in_frame[12][7] ;
    output \data_in_frame[15][2] ;
    output \data_in_frame[15][1] ;
    output \data_in_frame[15][6] ;
    output [7:0]\data_in_frame[22] ;
    output \data_in_frame[15][7] ;
    output \data_in_frame[22][6] ;
    input n16593;
    output [7:0]\data_in_frame[4] ;
    output \data_in_frame[23][6] ;
    input n16590;
    output \data_in_frame[22][2] ;
    input n16587;
    output \FRAME_MATCHER.state[3] ;
    input n16584;
    input n16581;
    input n16578;
    input n16575;
    output \data_in_frame[11][0] ;
    output \data_in_frame[22][1] ;
    output \data_in_frame[11][4] ;
    input n16570;
    input n8595;
    output \data_in_frame[23][5] ;
    output \data_in_frame[23][7] ;
    input n16567;
    output \data_in_frame[23][3] ;
    input reset;
    output \data_in_frame[23][1] ;
    output \data_in_frame[22][7] ;
    output \data_in_frame[22][3] ;
    output \data_in_frame[23][2] ;
    input n16564;
    input n16561;
    input n15901;
    input n15898;
    output \data_in_frame[23][0] ;
    input n15895;
    input n16558;
    input n16555;
    input n16552;
    input n15892;
    input n16549;
    input n16546;
    input n15889;
    input n15886;
    output \data_in_frame[6][2] ;
    input n15883;
    input n15880;
    input n28015;
    output \data_in_frame[6][7] ;
    input n28019;
    output \data_in_frame[6][6] ;
    input n28023;
    output \data_in_frame[6][4] ;
    input n15862;
    input n15859;
    output \data_in_frame[6][1] ;
    input n15856;
    input n15844;
    output [7:0]control_mode;
    input n15843;
    input n15842;
    input n15841;
    input n15840;
    input n15839;
    input n15838;
    input [7:0]ID;
    input n15976;
    input n15979;
    input n15982;
    input n15985;
    input n15988;
    input n15994;
    input n15997;
    output rx_data_ready;
    output \FRAME_MATCHER.rx_data_ready_prev ;
    input n16000;
    input n16004;
    input n16007;
    input n16011;
    input n16017;
    output n14874;
    input n16023;
    input n16026;
    input n16035;
    input n16038;
    input n16077;
    input n16080;
    input n16083;
    input n16086;
    input n16089;
    input n16092;
    input n16095;
    input n15813;
    input n16110;
    input n16113;
    input n16116;
    input n16119;
    input n15811;
    output \data_out_frame[26][6] ;
    output DE_c;
    input n16170;
    input n16173;
    input n16176;
    input n16179;
    input n16182;
    input n16185;
    input n16188;
    input n16191;
    input n28049;
    input n28047;
    input n28045;
    input n16257;
    input n1992;
    input n16260;
    input n16263;
    input n16266;
    input n16269;
    input n16272;
    input n16275;
    input n16281;
    input n16284;
    input n16287;
    output n14877;
    output n7;
    output n10;
    output n14836;
    output n14858;
    output n28625;
    input n15666;
    output tx_active;
    output n30632;
    input \current[15] ;
    input [23:0]encoder0_position;
    input [23:0]encoder1_position;
    input \current[9] ;
    input \current[0] ;
    input \current[6] ;
    input \current[8] ;
    input \current[10] ;
    output n4;
    output n7_adj_3;
    input \current[1] ;
    input \current[2] ;
    output n14890;
    output n14896;
    input \current[11] ;
    output n30578;
    input \current[7] ;
    input \current[4] ;
    input \current[5] ;
    input \current[3] ;
    output n127;
    input n124;
    output n10544;
    output n30579;
    output n28623;
    output \r_Bit_Index[0] ;
    output \o_Rx_DV_N_4460[24] ;
    output [2:0]r_SM_Main;
    output n27;
    input n31429;
    output n1;
    output tx_o;
    output n14448;
    output n29448;
    input n36333;
    input n15766;
    input n16296;
    output [8:0]r_Clock_Count;
    output n6;
    output tx_enable;
    input [31:0]baudrate;
    output \o_Rx_DV_N_4460[12] ;
    output \r_Bit_Index[0]_adj_4 ;
    output \r_SM_Main[2]_adj_5 ;
    output \o_Rx_DV_N_4460[8] ;
    input n3367;
    output r_Rx_Data;
    output n29;
    output n23;
    output \r_SM_Main[1]_adj_6 ;
    output \o_Rx_DV_N_4460[7] ;
    input RX_N_18;
    output n29420;
    output n14452;
    output \o_Rx_DV_N_4460[6] ;
    output \o_Rx_DV_N_4460[5] ;
    output \o_Rx_DV_N_4460[4] ;
    output \o_Rx_DV_N_4460[3] ;
    output \o_Rx_DV_N_4460[2] ;
    output n31633;
    output \o_Rx_DV_N_4460[1] ;
    output \o_Rx_DV_N_4460[0] ;
    input n28574;
    output n14365;
    input n3370;
    output [7:0]r_Clock_Count_adj_15;
    input n15789;
    input n15788;
    input n15784;
    input n15780;
    input n15779;
    input n15777;
    input n15776;
    output n34;
    input n16299;
    input n26289;
    input n16303;
    output n31617;
    output n31553;
    output n31601;
    output n31569;
    output n31649;
    output n31585;
    output n31537;
    output n31907;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    
    wire n12868, n28773, n14169, n28814, n30876, n28698, n25349, 
        n16, n26094, n13348, n28966, n29094, n17, n12753, n11263, 
        n30161, n25134, n25203, n29142, n26242, n8, n28622;
    wire [7:0]\data_in_frame[0] ;   // verilog/coms.v(97[12:25])
    
    wire n16314, n16348, n15952;
    wire [7:0]\data_in_frame[10] ;   // verilog/coms.v(97[12:25])
    
    wire n16351, n28997, n30379, data_out_frame_26__7__N_3053, n16354, 
        n26252, n28631, n29011, n30882, n29030;
    wire [7:0]\data_out_frame[22] ;   // verilog/coms.v(98[12:26])
    
    wire n25825, data_out_frame_27__0__N_3042, n6_c, n25257, n6_adj_5692, 
        n26135, data_out_frame_27__1__N_2977, data_out_frame_27__7__N_2536, 
        n25347, data_out_frame_27__2__N_2957, n15949;
    wire [7:0]\data_in_frame[9] ;   // verilog/coms.v(97[12:25])
    
    wire n15946, n26113, n12771, n11222, n28830, n26079, n25281, 
        n28813, n13343;
    wire [7:0]\data_out_frame[14] ;   // verilog/coms.v(98[12:26])
    
    wire data_out_frame_27__7__N_2455;
    wire [7:0]\data_out_frame[12] ;   // verilog/coms.v(98[12:26])
    
    wire n29084, n28850, n6_adj_5693, n28806;
    wire [7:0]\data_out_frame[21] ;   // verilog/coms.v(98[12:26])
    
    wire n30404, n7_c, n28778, n29151, n29093, n13562, n16_adj_5694, 
        n25924, n29014, n17_adj_5695, data_out_frame_27__7__N_2496, 
        n16357, n28634, n20, n13394, n26090, n19, n28859, n13382, 
        n13589, n28876, n21, n28803, data_out_frame_27__5__N_2756, 
        n16360, n16363, n6_adj_5696, n13466, n28904, n28827, n29172, 
        data_out_frame_26__0__N_3103;
    wire [7:0]\data_in_frame[13]_c ;   // verilog/coms.v(97[12:25])
    
    wire n42, n25312, n30289, n29169, n16366;
    wire [7:0]\data_out_frame[8] ;   // verilog/coms.v(98[12:26])
    
    wire n13245, n29235;
    wire [7:0]\data_out_frame[13] ;   // verilog/coms.v(98[12:26])
    wire [7:0]\data_out_frame[9] ;   // verilog/coms.v(98[12:26])
    
    wire n10_c, n29078, n28729, n29202, n29259, n14, n29241, n28919, 
        n25359;
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(97[12:25])
    
    wire n14_adj_5697, n30613, n10_adj_5698, n25185, n10_adj_5699, 
        n29214, n13601;
    wire [7:0]\data_in_frame[18] ;   // verilog/coms.v(97[12:25])
    
    wire n28975;
    wire [7:0]\data_in_frame[20] ;   // verilog/coms.v(97[12:25])
    
    wire n30183, n26128, n26100, n28644, n12722, n30121, data_out_frame_26__2__N_3087;
    wire [7:0]\data_out_frame[11] ;   // verilog/coms.v(98[12:26])
    
    wire n28766;
    wire [7:0]\data_out_frame[4] ;   // verilog/coms.v(98[12:26])
    
    wire n14263, n29154, n6_adj_5700, n12730, n29112, n28707, n12, 
        n28823, n13673, n25191, n28896, n26156, n28847, Kp_23__N_847;
    wire [7:0]\data_in_frame[8] ;   // verilog/coms.v(97[12:25])
    
    wire n18, n16_adj_5701;
    wire [7:0]\data_out_frame[6] ;   // verilog/coms.v(98[12:26])
    wire [7:0]\data_out_frame[10] ;   // verilog/coms.v(98[12:26])
    
    wire n13378, Kp_23__N_461;
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(97[12:25])
    
    wire n20_adj_5702, n29097, n29229;
    wire [7:0]\data_out_frame[5] ;   // verilog/coms.v(98[12:26])
    
    wire data_out_frame_27__7__N_2070, n29199, n29090, Kp_23__N_736, 
        n13713, n14197, n30119, n26240, data_out_frame_27__7__N_2406, 
        n25222, n13794, n18_adj_5703, n16_adj_5704, n29244, n20_adj_5705, 
        n29205, n28701, n29238, n6_adj_5706, n29178, n30718, data_out_frame_26__3__N_3082, 
        Kp_23__N_755, n14052, n29039, n13900, n28868, n13456, n13881, 
        n28653, n29220, n13884, n32251, n25146, n13462, n32257, 
        n29157, n30666, n13718, n28907, n26126;
    wire [7:0]\data_out_frame[7] ;   // verilog/coms.v(98[12:26])
    
    wire n28862;
    wire [31:0]\FRAME_MATCHER.i ;   // verilog/coms.v(116[11:12])
    
    wire n3;
    wire [7:0]byte_transmit_counter;   // verilog/coms.v(103[12:33])
    
    wire n32949, n32950, n32948, n13209, n29232, n29115, n32, 
        n21_adj_5707, n14191, n36, n29187, n13658, n28650, n25236, 
        n34_c, n29124, n4_c, n35, n29256, n25696, n33, n26084, 
        n29217, n28820, n13834, n13866, n28810, n28887, n30120, 
        n30758, n13860;
    wire [7:0]\data_in_frame[21] ;   // verilog/coms.v(97[12:25])
    
    wire n12779, n28994, n25589, n32337, n28913, n32383, n30735, 
        n28833, n28914, n29121;
    wire [7:0]\data_in_frame[14] ;   // verilog/coms.v(97[12:25])
    
    wire n28972, n13524, n28988, Kp_23__N_1313, n26161, n29262, 
        n30162, n28790, n12827, n29136, Kp_23__N_1155, n13635, n32307, 
        n13476, n25318, n28916, n11384, n14200, n32313, n25377, 
        n13492, n32319, n15943, n25406, n30738, n32325, n28901, 
        n28787, n13630, n32331, n26220, n29160, n29103, n25234, 
        n15940, n15937, n15934, n15931, n15928, n15925, n15922, 
        n29130, n29145, n15919, n29223, n25267, n26222, Kp_23__N_1326, 
        n32173, n32179, n28979, n28844, n15916, n15913, n28784, 
        n32445, n29106, n29175, n29250, n32369, n10_adj_5708, n29163, 
        n32375, n28935, n26260, n32451, n26218, n30614, n29008, 
        n28985, n32379, n25197, n32413, n28769, n28656, n29000, 
        n26229, n26117, n16_adj_5709, n32937, n32936, n25293, n26197;
    wire [7:0]\data_in_frame[12]_c ;   // verilog/coms.v(97[12:25])
    
    wire n11, n25271, n14055, n32916, n36271, n35203;
    wire [7:0]\data_out_frame[26] ;   // verilog/coms.v(98[12:26])
    
    wire n9537;
    wire [7:0]\data_out_frame[27] ;   // verilog/coms.v(98[12:26])
    
    wire n34403, n21_adj_5710, n32603, Kp_23__N_1048, n13623, n34402, 
        n32941, n32939;
    wire [7:0]\data_in_frame[17] ;   // verilog/coms.v(97[12:25])
    
    wire n32615, n28910, n29139, n28780, n25334, n28752, n11_adj_5711, 
        n32919, n29265, n28957, n26149, n28969;
    wire [7:0]\data_in_frame[15]_c ;   // verilog/coms.v(97[12:25])
    
    wire n13, n11_adj_5712, n36277, n35205, n28794, n29033, n34401, 
        n28680, n21_adj_5713, n34400, n12777, n8_adj_5714, n9, n30906, 
        n32163, n34410, n28871, n13831, n11_adj_5715, n8_adj_5716, 
        n13905, n13927, n32129, n26132, n30108, n25232, n32397, 
        n36060, n9_adj_5717, n34411, Kp_23__N_1033, n28948, n6_adj_5718, 
        n11_adj_5719, n13240, n28884, n29211, n29109, n28892, n32463, 
        n14_adj_5720, n13_adj_5721, n6_adj_5722, n29184;
    wire [7:0]\data_in_frame[23] ;   // verilog/coms.v(97[12:25])
    
    wire n15, n30873, n32654, n32776, n20_adj_5723, n28742;
    wire [7:0]\data_in_frame[22]_c ;   // verilog/coms.v(97[12:25])
    
    wire n28865, n8_adj_5724, n16600;
    wire [7:0]\data_in_frame[5] ;   // verilog/coms.v(97[12:25])
    
    wire n29133, n32583, n16597, Kp_23__N_1018, n28925, n26154, 
        n29050, n13615, Kp_23__N_964, n26092, n26086, n32267, n10_adj_5725, 
        n5, n3278, n13032, \FRAME_MATCHER.i_31__N_3746 , n30520, n18971, 
        n1459, n29346, n1456, n11_adj_5726, n14280, n1565, n8_adj_5727, 
        n25370, n32597, n4401, \FRAME_MATCHER.i_31__N_3748 , n32269, 
        n15651, \FRAME_MATCHER.i_31__N_3743 , n10563, n30725, n29021, 
        n6_adj_5728, n30734, n32419, n30693, n27977, n12996, n8614, 
        n771, \FRAME_MATCHER.i_31__N_3744 , n1553, n6_adj_5729, n12966;
    wire [7:0]\data_in_frame[11]_c ;   // verilog/coms.v(97[12:25])
    
    wire n29061, n18_adj_5730, n13105, n10744, n16_adj_5731, n20_adj_5732, 
        n29190, n28878, n28853, n11507, n30213, n11503, n17_adj_5733, 
        n10_adj_5734, n32425, n13026, n30914, n28659, n32271, n32273, 
        n32647, n14273, n14274, n29081, n12987;
    wire [7:0]\data_in[3] ;   // verilog/coms.v(96[12:19])
    wire [7:0]\data_in[0] ;   // verilog/coms.v(96[12:19])
    wire [7:0]\data_in[2] ;   // verilog/coms.v(96[12:19])
    
    wire n32205, n32207, n32215, n32213, n32221, n29253, n28749, 
        n32227, n28938, n32233, n15910, n32297, n15958, n15961, 
        n13137, n10_adj_5735, data_out_frame_27__7__N_1951;
    wire [7:0]\data_in[1] ;   // verilog/coms.v(96[12:19])
    
    wire n13085, n18_adj_5736, n20_adj_5737, n15_adj_5738, n10_adj_5739, 
        n14_adj_5740, n13060, n30135, n10_adj_5741, n32802, n9_adj_5742, 
        n12_adj_5743, n18_adj_5744, n19_adj_5745, n16_adj_5746, n17_adj_5747, 
        data_out_frame_27__6__N_2730, n30187, n21888, n47, \FRAME_MATCHER.i_31__N_3745 , 
        n21483, n6_adj_5748, n18967, data_out_frame_22__7__N_3121;
    wire [31:0]\FRAME_MATCHER.state_31__N_3846 ;
    
    wire n36353, n32279, n34446, n34447, n36328, n25812, n13817, 
        n30093, n25446, n29127, n32433, n1573, Kp_23__N_1510;
    wire [23:0]n3304;
    
    wire n14392;
    wire [23:0]setpoint;   // verilog/coms.v(16[27:35])
    
    wire n28732, n28720, n13697, n32283, n32285, n32359, n32347, 
        n32353, n15907, n15904, n32287, n30769, n30088, n13988, 
        n36247, n7_adj_5749;
    wire [7:0]tx_data;   // verilog/coms.v(106[13:20])
    
    wire n30711, Kp_23__N_374, data_out_frame_27__4__N_2848, n34276, 
        n34277, n32629, n34278, n34279, n34280, n34281, n29069, 
        n34282, n34283, n34266, n34267, n34268, n34269, Kp_23__N_634, 
        n28817, n34270, n34284, n34286, n34287, n34288, n34289, 
        n28710, n34290, n34291, n34292, n34296, data_out_frame_26__1__N_3092, 
        n34300, n34301, data_out_frame_27__3__N_2871, n34306, n34334, 
        n29196, n28837, n32511, n34339, n14074, n32573, n28670, 
        n34351, data_out_frame_26__5__N_3072, n28954, Kp_23__N_631, 
        n34354, data_out_frame_26__4__N_3077, n34364, n34365, n2405, 
        n14823, Kp_23__N_640, n15873, n15867, n14065, n13297, n28840, 
        n32467, n13287, n28856, Kp_23__N_522, n34430, n34431, n36322, 
        n28694, Kp_23__N_605, n30674;
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(97[12:25])
    
    wire n32943, n32944, n32531, Kp_23__N_534, n32942, n32509, n15853, 
        n15781, n15785, n15847, n13375, n15835, n16543, n35477, 
        n7_adj_5750, n13281, n28800, n11_adj_5751, n32922, n36283, 
        n35411, n34451, n21_adj_5752, n28736, n28687, Kp_23__N_510, 
        n34450, n13752, n28755, n29044, n32946, n32947, n32137, 
        n32945, n32141, n28797, n32147, n29075, n32153, n29058, 
        n32159, n28760, n25357, n13535, n16540, n16537, n28173, 
        n13312, n28714, n6_adj_5753, n5_adj_5754, n6_adj_5755, n7_adj_5756, 
        n13768, n32541, n16533, n13327, n16532, n16531, n16530, 
        n16529, n16528, n16527, n16526, n16525, n16524, n16523, 
        n16522, n16521, n16520, n16519, n16518, n16517, n16516, 
        n16515, n16514, n16513, n16512, n28763, n16511, n32535, 
        n16510, Kp_23__N_477, n16509, n16508, n16507, n16506, n16505, 
        n16504, n16501, n16498, n34437, n34438, n36316, n16495, 
        n16492, n16489, n32547, n28717, n10_adj_5757, n31048, n16_adj_5758, 
        n16486, n16483, n19_adj_5759, Kp_23__N_637, n32656, n22, 
        n31044, n15964, \FRAME_MATCHER.i_31__N_3747 , n28, n15967, 
        n15970, n15973, n38, n30922, n36_adj_5760, n42_adj_5761, 
        n40, n41, n39, n15991, n16470, n16467, n28555, n24321, 
        n28554, n28561, n24320, n28560, n24319, n28559, n24318, 
        n16466, n28603, n28377, n28558, n24317, n21_adj_5762, n16014, 
        n21683, n134, n16340, n28233, n28167, n35475, n7_adj_5763, 
        n28127, n16041, n28129, n28121, n16050, n16053, n16056, 
        n16059, n16062, n28139, n16068, n16071, n16439, n15812, 
        n28165, n28149, n28157, n28155, n16122, n15810, n15809, 
        n15808, n16125, n28281, n16131, n15806, n15805, n16134, 
        n16137, n15804, n15803, n15802, n16140, n15801, n15800, 
        n34441, n34442, n36310, n15799, n15798, n16143, n16146, 
        n15797, n15796, n15795, n16149, n16152, n15775, n15773, 
        n15772, n15770, n15769, n15768, n15767, n15765, n15763, 
        n15762, n15760, n15757, n15756, n15754, n35471, n7_adj_5764, 
        n15750, n15749, n15748, n15747, n15746, n15745, n15744, 
        n15743, n25922, n13365, n15740, n15738, n15737, n15736, 
        n15735, n15734, n15733, n15732, n15731, n15730, n16155, 
        n28557, n24316, n28556, n24315, n6_adj_5765, n1_c, n14282, 
        n16158, n15729, n6_adj_5766, n29036, n28960, n16161, n16164, 
        n16167, n28562, tx_transmit_N_4388, n6_adj_5767, n16194, n16197, 
        n14026, n10_adj_5768, n16395, n16200, n16203, n16206, n16209, 
        n16212, n28163, n16218, n16221, n16224, n9_adj_5769, n16230, 
        n16233, n16236, n16239, n16380, n16374, n14516, n6_adj_5770, 
        n29087, n28739, n16371, n15728, n28011, n15727, n12689, 
        n4_adj_5771, n15726, n13964, n34448, n34449, n36304, n28723, 
        n29027, n13790, n29181, n10_adj_5772, n28638, n29193, n13214, 
        n12_adj_5773, n13204, data_out_frame_27__7__N_2289, n28647, 
        n1_adj_5774, n32685, n15318, n1_adj_5775;
    wire [2:0]r_SM_Main_2__N_4517;
    
    wire n29268, n14_adj_5776, n10_adj_5777, n15725, n15724, n15723, 
        n15722, n15721, n15720, n15719, n15718, n15717, n15716, 
        n15715, n15714, n15713, n15712, n15711, n6_adj_5778, n13847, 
        n12872, n29100, n28991, n22_adj_5779, n15710, n28963, n29247, 
        n24, n15709, n15708, n25287, n21_adj_5780, data_out_frame_27__7__N_2034, 
        n12_adj_5781, n6_adj_5782, n15707, n15706, n15705, n14518, 
        n14520, n28945, n8_adj_5783, n15955, n14522, n14524, n14526, 
        n14528, n14530, n14532, n14534, n14536, n14538, n14540, 
        n14542, n14544, n28664, n14546, n14548, n14550, n14552, 
        n14554, n14556, n14558, n14560, n14562, n14564, n14566, 
        n14568, n14570, n14572, n14574, n14576, n14578, n1_adj_5784, 
        n1_adj_5785, n1_adj_5786, n1_adj_5787, n1_adj_5788, n1_adj_5789, 
        n1_adj_5790, n28683, n29018, n15704, n36253, n7_adj_5791, 
        n36298, n7_adj_5792, n28941;
    wire [31:0]n133;
    
    wire n161, n8_adj_5793, n18_adj_5795, n29118, n19_adj_5796, n30908, 
        n17_adj_5797, n24_adj_5798, n31, n36_adj_5799, n34_adj_5800, 
        n30, n38_adj_5801, n33_adj_5802, n18_adj_5803, n16_adj_5804, 
        n20_adj_5805, n34309, n21168, n10_adj_5807, n14826, n7_adj_5808, 
        n24778, n6_adj_5809, n24650, n28382, n24649, n24648, n24647, 
        n24646, n24645, n24644, n24643, n24_adj_5810, n24642, n24641, 
        n24640, n24639, n24638, n24637, n24636, n24635, n24634, 
        n24633, n24632, n24631, n24630, n24629, n24628, n24627, 
        n24626, n24625, n24624, n15703, n24623, n24622, n29354, 
        n24621, n15702, n24620, n15701, n15700, n15699, n15698, 
        n15697, n15696, n15695, n15694, n15693, n15692, n15691, 
        n15690, n15689, n15688, n15687, n15686, n15685, n15684, 
        n15683, n15682, n15681, n15680, n15679, n15678, n15677, 
        n15676, n15675, n15674, n15673, n18968, n4_adj_5811, n4_adj_5812, 
        n32955, n32954, n11_adj_5813, n32931, n36289, n8_adj_5814, 
        n14846, n28617, n21_adj_5815, n28599, n30301, n22_adj_5818, 
        n27_c, n26, n29_c, n31_adj_5819, n32935, n32933, n11_adj_5820, 
        n32910, n36259, n36286, n36280, n21_adj_5821, n36274, n36268, 
        n21146, n36262, n36265, n36256, n32938, n36250, n32956, 
        n36244, n14840, n36238, n7_adj_5822, n32953, n32951, n11_adj_5823, 
        n32913, n7_adj_5824, n36232, n21_adj_5825, n73, n21198, 
        n21183, n28641;
    wire [2:0]r_SM_Main_2__N_4508;
    
    wire n30801, n31307, n30013;
    
    SB_LUT4 i1_2_lut (.I0(n12868), .I1(n28773), .I2(GND_net), .I3(GND_net), 
            .O(n14169));
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut (.I0(n28814), .I1(n30876), .I2(n28698), .I3(n25349), 
            .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut (.I0(n26094), .I1(n13348), .I2(n28966), .I3(n29094), 
            .O(n17));
    defparam i7_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut (.I0(n17), .I1(n12753), .I2(n16), .I3(n11263), 
            .O(n30161));
    defparam i9_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut (.I0(n11263), .I1(n25134), .I2(n25203), .I3(n29142), 
            .O(n26242));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i12442_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[0]), 
            .I3(\data_in_frame[0] [0]), .O(n16314));
    defparam i12442_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12476_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[1]), 
            .I3(\data_in_frame[0] [1]), .O(n16348));
    defparam i12476_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i81 (.Q(\data_in_frame[10] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15952));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i12479_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[2]), 
            .I3(\data_in_frame[0] [2]), .O(n16351));
    defparam i12479_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut (.I0(n30161), .I1(n28997), .I2(n14169), .I3(n30379), 
            .O(data_out_frame_26__7__N_3053));
    defparam i3_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i12482_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[3]), 
            .I3(\data_in_frame[0] [3]), .O(n16354));
    defparam i12482_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_2089 (.I0(n26252), .I1(n28631), .I2(n28773), 
            .I3(n29011), .O(n30882));
    defparam i3_4_lut_adj_2089.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_2090 (.I0(n29030), .I1(\data_out_frame[22] [0]), 
            .I2(n30882), .I3(n25825), .O(data_out_frame_27__0__N_3042));
    defparam i3_4_lut_adj_2090.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut (.I0(\data_out_frame[22] [2]), .I1(n26242), .I2(\data_out_frame[22] [7]), 
            .I3(GND_net), .O(n29011));
    defparam i2_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_2091 (.I0(\data_out_frame[22] [0]), .I1(\data_out_frame[22] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n6_c));
    defparam i1_2_lut_adj_2091.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(n25257), .I1(n25825), .I2(n29011), .I3(n6_c), 
            .O(n28997));
    defparam i4_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2092 (.I0(n30823), .I1(n28997), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_5692));
    defparam i1_2_lut_adj_2092.LUT_INIT = 16'h9999;
    SB_LUT4 i4_4_lut_adj_2093 (.I0(n26135), .I1(\data_out_frame[22] [6]), 
            .I2(\data_out_frame[22] [3]), .I3(n6_adj_5692), .O(data_out_frame_27__1__N_2977));
    defparam i4_4_lut_adj_2093.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2094 (.I0(data_out_frame_27__7__N_2536), .I1(n12753), 
            .I2(GND_net), .I3(GND_net), .O(n25349));
    defparam i1_2_lut_adj_2094.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2095 (.I0(n25347), .I1(n25257), .I2(GND_net), 
            .I3(GND_net), .O(n28631));
    defparam i1_2_lut_adj_2095.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2096 (.I0(n30823), .I1(n28631), .I2(n30379), 
            .I3(n25203), .O(data_out_frame_27__2__N_2957));
    defparam i3_4_lut_adj_2096.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i80 (.Q(\data_in_frame[9] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15949));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i79 (.Q(\data_in_frame[9] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15946));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_adj_2097 (.I0(n26113), .I1(n12753), .I2(\data_out_frame[22] [5]), 
            .I3(GND_net), .O(n30379));
    defparam i2_3_lut_adj_2097.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2098 (.I0(n12771), .I1(n11222), .I2(GND_net), 
            .I3(GND_net), .O(n28966));
    defparam i1_2_lut_adj_2098.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2099 (.I0(\data_out_frame[22] [6]), .I1(n26135), 
            .I2(GND_net), .I3(GND_net), .O(n28830));
    defparam i1_2_lut_adj_2099.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2100 (.I0(n26079), .I1(n29142), .I2(n28830), 
            .I3(n25134), .O(n25257));
    defparam i3_4_lut_adj_2100.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2101 (.I0(n11222), .I1(n25281), .I2(GND_net), 
            .I3(GND_net), .O(n28813));
    defparam i1_2_lut_adj_2101.LUT_INIT = 16'h6666;
    SB_LUT4 i2_4_lut (.I0(n13343), .I1(\data_out_frame[14] [5]), .I2(\data_out_frame[14] [7]), 
            .I3(\data_out_frame[14] [6]), .O(n28698));   // verilog/coms.v(86[17:28])
    defparam i2_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2102 (.I0(\data_out_frame[14] [4]), .I1(n28698), 
            .I2(\data_out_frame[14] [1]), .I3(GND_net), .O(data_out_frame_27__7__N_2455));   // verilog/coms.v(86[17:28])
    defparam i2_3_lut_adj_2102.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_2103 (.I0(\data_out_frame[12] [0]), .I1(n29084), 
            .I2(n28850), .I3(n6_adj_5693), .O(n30876));
    defparam i4_4_lut_adj_2103.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2104 (.I0(n28806), .I1(\data_out_frame[21] [7]), 
            .I2(\data_out_frame[21] [3]), .I3(\data_out_frame[21] [6]), 
            .O(n30404));   // verilog/coms.v(72[16:27])
    defparam i3_4_lut_adj_2104.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2105 (.I0(n7_c), .I1(n30876), .I2(n30404), .I3(n28778), 
            .O(n29151));
    defparam i4_4_lut_adj_2105.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2106 (.I0(\data_out_frame[14] [2]), .I1(\data_out_frame[14] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n13343));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_adj_2106.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_2107 (.I0(n13343), .I1(n25825), .I2(n29093), 
            .I3(n13562), .O(n16_adj_5694));
    defparam i6_4_lut_adj_2107.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2108 (.I0(n25924), .I1(n29014), .I2(n29151), 
            .I3(n12868), .O(n17_adj_5695));
    defparam i7_4_lut_adj_2108.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_2109 (.I0(n17_adj_5695), .I1(n28814), .I2(n16_adj_5694), 
            .I3(data_out_frame_27__7__N_2496), .O(n25203));
    defparam i9_4_lut_adj_2109.LUT_INIT = 16'h9669;
    SB_LUT4 i12485_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[4]), 
            .I3(\data_in_frame[0] [4]), .O(n16357));
    defparam i12485_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i8_4_lut (.I0(\data_out_frame[14] [6]), .I1(data_out_frame_27__7__N_2455), 
            .I2(n28634), .I3(n29151), .O(n20));
    defparam i8_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2110 (.I0(n13394), .I1(n26090), .I2(\data_out_frame[22] [7]), 
            .I3(n25281), .O(n19));
    defparam i7_4_lut_adj_2110.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_2111 (.I0(n28859), .I1(n13382), .I2(n13589), 
            .I3(n28876), .O(n21));
    defparam i9_4_lut_adj_2111.LUT_INIT = 16'h9669;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(n29142));
    defparam i11_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2112 (.I0(n26242), .I1(n28803), .I2(GND_net), 
            .I3(GND_net), .O(data_out_frame_27__5__N_2756));
    defparam i1_2_lut_adj_2112.LUT_INIT = 16'h9999;
    SB_LUT4 i12488_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[5]), 
            .I3(\data_in_frame[0] [5]), .O(n16360));
    defparam i12488_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12491_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[6]), 
            .I3(\data_in_frame[0] [6]), .O(n16363));
    defparam i12491_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_2113 (.I0(\data_in_frame[9] [2]), .I1(\data_in_frame[9] [1]), 
            .I2(\data_in_frame[11] [3]), .I3(n6_adj_5696), .O(n13466));   // verilog/coms.v(71[16:27])
    defparam i4_4_lut_adj_2113.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2114 (.I0(\data_in_frame[13] [4]), .I1(n13466), 
            .I2(GND_net), .I3(GND_net), .O(n28904));
    defparam i1_2_lut_adj_2114.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2115 (.I0(n28827), .I1(n29172), .I2(GND_net), 
            .I3(GND_net), .O(data_out_frame_26__0__N_3103));
    defparam i1_2_lut_adj_2115.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2116 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13]_c [1]), 
            .I2(\data_in_frame[13]_c [7]), .I3(GND_net), .O(n42));
    defparam i2_3_lut_adj_2116.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2117 (.I0(n25312), .I1(n30289), .I2(GND_net), 
            .I3(GND_net), .O(n29169));
    defparam i1_2_lut_adj_2117.LUT_INIT = 16'h9999;
    SB_LUT4 i12494_3_lut_4_lut (.I0(n8), .I1(n28622), .I2(rx_data[7]), 
            .I3(\data_in_frame[0] [7]), .O(n16366));
    defparam i12494_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_2118 (.I0(\data_out_frame[8] [5]), .I1(n13245), 
            .I2(\data_out_frame[12] [7]), .I3(\data_out_frame[12] [6]), 
            .O(n29235));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_4_lut_adj_2118.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2119 (.I0(\data_out_frame[21] [5]), .I1(\data_out_frame[21] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n13382));   // verilog/coms.v(72[16:62])
    defparam i1_2_lut_adj_2119.LUT_INIT = 16'h6666;
    SB_LUT4 i2_2_lut (.I0(\data_out_frame[13] [3]), .I1(\data_out_frame[9] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n10_c));   // verilog/coms.v(86[17:28])
    defparam i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_2120 (.I0(n29078), .I1(n28729), .I2(n29202), 
            .I3(n29259), .O(n14));   // verilog/coms.v(86[17:28])
    defparam i6_4_lut_adj_2120.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2121 (.I0(\data_out_frame[13] [2]), .I1(n14), .I2(n10_c), 
            .I3(n29241), .O(data_out_frame_27__7__N_2536));   // verilog/coms.v(86[17:28])
    defparam i7_4_lut_adj_2121.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2122 (.I0(\data_out_frame[22] [0]), .I1(n13562), 
            .I2(GND_net), .I3(GND_net), .O(n28919));
    defparam i1_2_lut_adj_2122.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2123 (.I0(n25359), .I1(n29014), .I2(GND_net), 
            .I3(GND_net), .O(n29172));
    defparam i1_2_lut_adj_2123.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_2124 (.I0(n29169), .I1(n42), .I2(n28904), .I3(\data_in_frame[16] [1]), 
            .O(n14_adj_5697));
    defparam i6_4_lut_adj_2124.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2125 (.I0(n30613), .I1(n14_adj_5697), .I2(n10_adj_5698), 
            .I3(\data_in_frame[13]_c [2]), .O(n25185));
    defparam i7_4_lut_adj_2125.LUT_INIT = 16'h9669;
    SB_LUT4 i5_3_lut_4_lut (.I0(\data_out_frame[8] [5]), .I1(n13245), .I2(n10_adj_5699), 
            .I3(n29214), .O(n13601));   // verilog/coms.v(74[16:42])
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2126 (.I0(\data_in_frame[18] [3]), .I1(\data_in_frame[18] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n28975));
    defparam i1_2_lut_adj_2126.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2127 (.I0(\data_in_frame[20] [4]), .I1(n28975), 
            .I2(n25185), .I3(\data_in_frame[20] [3]), .O(n30183));
    defparam i3_4_lut_adj_2127.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2128 (.I0(n26128), .I1(\data_in_frame[15] [5]), 
            .I2(n26100), .I3(n28644), .O(n12722));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_2128.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2129 (.I0(\data_out_frame[21] [6]), .I1(n29172), 
            .I2(n30121), .I3(\data_out_frame[21] [7]), .O(data_out_frame_26__2__N_3087));
    defparam i3_4_lut_adj_2129.LUT_INIT = 16'h9669;
    SB_LUT4 i2_4_lut_adj_2130 (.I0(\data_out_frame[11] [2]), .I1(n28766), 
            .I2(\data_out_frame[4] [6]), .I3(\data_out_frame[4] [1]), .O(n29202));   // verilog/coms.v(86[17:28])
    defparam i2_4_lut_adj_2130.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2131 (.I0(\data_out_frame[9] [2]), .I1(n14263), 
            .I2(n29154), .I3(n6_adj_5700), .O(n12730));
    defparam i4_4_lut_adj_2131.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut (.I0(n29202), .I1(n29112), .I2(\data_out_frame[11] [1]), 
            .I3(n28707), .O(n12));
    defparam i5_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_2132 (.I0(n12730), .I1(n12), .I2(n28823), .I3(n13673), 
            .O(n12753));
    defparam i6_4_lut_adj_2132.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2133 (.I0(n25191), .I1(n28896), .I2(\data_in_frame[9] [7]), 
            .I3(GND_net), .O(n26156));
    defparam i2_3_lut_adj_2133.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_2134 (.I0(n28847), .I1(Kp_23__N_847), .I2(\data_in_frame[8] [2]), 
            .I3(\data_in_frame[8] [4]), .O(n18));   // verilog/coms.v(71[16:69])
    defparam i7_4_lut_adj_2134.LUT_INIT = 16'h6996;
    SB_LUT4 i5_2_lut (.I0(\data_in_frame[3] [7]), .I1(\data_in_frame[8] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_5701));   // verilog/coms.v(71[16:69])
    defparam i5_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2135 (.I0(\data_out_frame[9] [0]), .I1(\data_out_frame[6] [6]), 
            .I2(\data_out_frame[10] [7]), .I3(GND_net), .O(n29078));   // verilog/coms.v(86[17:28])
    defparam i2_3_lut_adj_2135.LUT_INIT = 16'h9696;
    SB_LUT4 i9_4_lut_adj_2136 (.I0(n13378), .I1(n18), .I2(Kp_23__N_461), 
            .I3(\data_in_frame[6] [3]), .O(n20_adj_5702));   // verilog/coms.v(71[16:69])
    defparam i9_4_lut_adj_2136.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut (.I0(n29097), .I1(n20_adj_5702), .I2(n16_adj_5701), 
            .I3(\data_in_frame[8] [0]), .O(n29229));   // verilog/coms.v(71[16:69])
    defparam i10_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2137 (.I0(\data_out_frame[5] [0]), .I1(data_out_frame_27__7__N_2070), 
            .I2(\data_out_frame[9] [1]), .I3(n29199), .O(n29090));   // verilog/coms.v(86[17:70])
    defparam i2_3_lut_4_lut_adj_2137.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2138 (.I0(Kp_23__N_736), .I1(n13713), .I2(GND_net), 
            .I3(GND_net), .O(n14197));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2138.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2139 (.I0(n30119), .I1(\data_in_frame[9] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n26240));
    defparam i1_2_lut_adj_2139.LUT_INIT = 16'h9999;
    SB_LUT4 i3_4_lut_adj_2140 (.I0(data_out_frame_27__7__N_2406), .I1(n25222), 
            .I2(n13562), .I3(n13794), .O(n25359));
    defparam i3_4_lut_adj_2140.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2141 (.I0(\data_out_frame[8] [3]), .I1(\data_out_frame[10] [5]), 
            .I2(n29078), .I3(\data_out_frame[13] [2]), .O(n18_adj_5703));
    defparam i7_4_lut_adj_2141.LUT_INIT = 16'h6996;
    SB_LUT4 i5_2_lut_adj_2142 (.I0(\data_out_frame[6] [2]), .I1(\data_out_frame[8] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_5704));
    defparam i5_2_lut_adj_2142.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_2143 (.I0(\data_out_frame[4] [5]), .I1(n18_adj_5703), 
            .I2(\data_out_frame[4] [1]), .I3(n29244), .O(n20_adj_5705));
    defparam i9_4_lut_adj_2143.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut_adj_2144 (.I0(n29205), .I1(n20_adj_5705), .I2(n16_adj_5704), 
            .I3(n28701), .O(n12868));
    defparam i10_4_lut_adj_2144.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2145 (.I0(\data_out_frame[10] [7]), .I1(\data_out_frame[8] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n29112));
    defparam i1_2_lut_adj_2145.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2146 (.I0(n29238), .I1(n29112), .I2(\data_out_frame[11] [0]), 
            .I3(n29244), .O(n10_adj_5699));   // verilog/coms.v(86[17:28])
    defparam i4_4_lut_adj_2146.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2147 (.I0(n12868), .I1(n25359), .I2(GND_net), 
            .I3(GND_net), .O(n28634));
    defparam i1_2_lut_adj_2147.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2148 (.I0(\data_out_frame[21] [5]), .I1(n13601), 
            .I2(n13794), .I3(n6_adj_5706), .O(n29178));
    defparam i4_4_lut_adj_2148.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2149 (.I0(n30718), .I1(n29178), .I2(\data_out_frame[21] [7]), 
            .I3(GND_net), .O(data_out_frame_26__3__N_3082));
    defparam i2_3_lut_adj_2149.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2150 (.I0(Kp_23__N_755), .I1(n14052), .I2(GND_net), 
            .I3(GND_net), .O(n29039));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_adj_2150.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2151 (.I0(n13900), .I1(n13713), .I2(GND_net), 
            .I3(GND_net), .O(n28868));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2151.LUT_INIT = 16'h6666;
    SB_LUT4 data_in_frame_8__7__I_0_4990_2_lut (.I0(\data_in_frame[8] [7]), 
            .I1(\data_in_frame[8] [6]), .I2(GND_net), .I3(GND_net), .O(Kp_23__N_461));   // verilog/coms.v(72[16:27])
    defparam data_in_frame_8__7__I_0_4990_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2152 (.I0(n13456), .I1(n13881), .I2(GND_net), 
            .I3(GND_net), .O(n28653));
    defparam i1_2_lut_adj_2152.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut (.I0(\data_out_frame[5] [0]), .I1(data_out_frame_27__7__N_2070), 
            .I2(n29220), .I3(GND_net), .O(n6_adj_5700));   // verilog/coms.v(86[17:70])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut (.I0(n28653), .I1(Kp_23__N_736), .I2(n13884), .I3(Kp_23__N_461), 
            .O(n32251));
    defparam i1_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2153 (.I0(n28847), .I1(n25146), .I2(n32251), 
            .I3(n13462), .O(n32257));
    defparam i1_4_lut_adj_2153.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2154 (.I0(n28868), .I1(n29157), .I2(n32257), 
            .I3(n29039), .O(n30666));
    defparam i1_4_lut_adj_2154.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2155 (.I0(\data_in_frame[9] [0]), .I1(n13718), 
            .I2(GND_net), .I3(GND_net), .O(n28907));
    defparam i1_2_lut_adj_2155.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2156 (.I0(n30666), .I1(n13884), .I2(GND_net), 
            .I3(GND_net), .O(n26126));
    defparam i1_2_lut_adj_2156.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_3_lut_adj_2157 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[7] [3]), .I3(GND_net), .O(n28862));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_adj_2157.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2158 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(GND_net), .I3(GND_net), .O(n3));
    defparam i1_2_lut_adj_2158.LUT_INIT = 16'h8888;
    SB_LUT4 i28645_3_lut (.I0(\data_out_frame[6] [4]), .I1(\data_out_frame[7] [4]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32949));
    defparam i28645_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28646_4_lut (.I0(n32949), .I1(byte_transmit_counter[0]), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[1]), .O(n32950));
    defparam i28646_4_lut.LUT_INIT = 16'haca3;
    SB_LUT4 i28644_3_lut (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[5] [4]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32948));
    defparam i28644_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2159 (.I0(n25191), .I1(n26126), .I2(n28907), 
            .I3(n13209), .O(n30119));
    defparam i1_4_lut_adj_2159.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2160 (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n29232));
    defparam i1_2_lut_adj_2160.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut (.I0(\data_in_frame[6][0] ), .I1(n29115), .I2(n29232), 
            .I3(\data_in_frame[12] [1]), .O(n32));
    defparam i12_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut (.I0(n21_adj_5707), .I1(n32), .I2(n30119), .I3(n14191), 
            .O(n36));
    defparam i16_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i14_4_lut (.I0(n29187), .I1(n13658), .I2(n28650), .I3(n25236), 
            .O(n34_c));
    defparam i14_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2161 (.I0(n29124), .I1(\data_in_frame[20] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n4_c));
    defparam i1_2_lut_adj_2161.LUT_INIT = 16'h6666;
    SB_LUT4 i15_4_lut (.I0(\data_in_frame[11] [6]), .I1(\data_in_frame[12] [0]), 
            .I2(n26240), .I3(n26126), .O(n35));
    defparam i15_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut (.I0(n14197), .I1(n29256), .I2(n25696), .I3(n29229), 
            .O(n33));
    defparam i13_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut (.I0(n33), .I1(n35), .I2(n34_c), .I3(n36), .O(n26084));
    defparam i19_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2162 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[5] [7]), .I3(n29217), .O(data_out_frame_27__7__N_2070));   // verilog/coms.v(72[16:27])
    defparam i2_3_lut_4_lut_adj_2162.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\data_out_frame[5] [4]), .I1(\data_out_frame[5] [3]), 
            .I2(\data_out_frame[5] [6]), .I3(\data_out_frame[5] [5]), .O(n29217));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut (.I0(\data_in_frame[1] [5]), .I1(n28820), .I2(\data_in_frame[7] [7]), 
            .I3(GND_net), .O(n13378));
    defparam i1_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2163 (.I0(n13834), .I1(n13378), .I2(n13866), 
            .I3(\data_in_frame[1] [3]), .O(n28810));   // verilog/coms.v(76[16:27])
    defparam i1_4_lut_adj_2163.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut_adj_2164 (.I0(n28887), .I1(\data_in_frame[20] [7]), 
            .I2(n30120), .I3(n4_c), .O(n30758));
    defparam i2_4_lut_adj_2164.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_2165 (.I0(\data_out_frame[5] [4]), .I1(\data_out_frame[5] [3]), 
            .I2(\data_out_frame[7] [5]), .I3(GND_net), .O(n13860));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_adj_2165.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2166 (.I0(\data_in_frame[21] [1]), .I1(n12779), 
            .I2(GND_net), .I3(GND_net), .O(n28994));
    defparam i1_2_lut_adj_2166.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2167 (.I0(n25589), .I1(n32337), .I2(n28913), 
            .I3(n32383), .O(n12779));
    defparam i1_4_lut_adj_2167.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2168 (.I0(n30735), .I1(n28833), .I2(\data_in_frame[20] [7]), 
            .I3(n28914), .O(n29121));
    defparam i3_4_lut_adj_2168.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2169 (.I0(\data_in_frame[14] [5]), .I1(n26156), 
            .I2(n28972), .I3(n13524), .O(n28988));
    defparam i1_4_lut_adj_2169.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_2170 (.I0(Kp_23__N_1313), .I1(n26161), .I2(GND_net), 
            .I3(GND_net), .O(n29262));
    defparam i1_2_lut_adj_2170.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2171 (.I0(n30162), .I1(n28790), .I2(GND_net), 
            .I3(GND_net), .O(n12827));
    defparam i1_2_lut_adj_2171.LUT_INIT = 16'h9999;
    SB_LUT4 i1_4_lut_adj_2172 (.I0(n29136), .I1(Kp_23__N_1155), .I2(n13635), 
            .I3(\data_in_frame[13][0] ), .O(n32307));
    defparam i1_4_lut_adj_2172.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2173 (.I0(n25312), .I1(n13476), .I2(GND_net), 
            .I3(GND_net), .O(n25318));
    defparam i1_2_lut_adj_2173.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2174 (.I0(n28916), .I1(n11384), .I2(n14200), 
            .I3(n32307), .O(n32313));
    defparam i1_4_lut_adj_2174.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2175 (.I0(n25377), .I1(n32313), .I2(n25318), 
            .I3(n13492), .O(n32319));
    defparam i1_4_lut_adj_2175.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i78 (.Q(\data_in_frame[9] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15943));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2176 (.I0(n25406), .I1(n30738), .I2(n12827), 
            .I3(n32319), .O(n32325));
    defparam i1_4_lut_adj_2176.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_2177 (.I0(n28901), .I1(n28787), .I2(n32325), 
            .I3(n13630), .O(n32331));
    defparam i1_4_lut_adj_2177.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2178 (.I0(n25146), .I1(\data_in_frame[9] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n25236));
    defparam i1_2_lut_adj_2178.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2179 (.I0(n26220), .I1(n29160), .I2(n32331), 
            .I3(n29103), .O(n25234));
    defparam i1_4_lut_adj_2179.LUT_INIT = 16'h9669;
    SB_DFFE data_in_frame_0___i77 (.Q(\data_in_frame[9] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15940));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i76 (.Q(\data_in_frame[9] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15937));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i75 (.Q(\data_in_frame[9] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15934));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i74 (.Q(\data_in_frame[9] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15931));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i73 (.Q(\data_in_frame[9] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15928));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i72 (.Q(\data_in_frame[8] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15925));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i71 (.Q(\data_in_frame[8] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15922));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2180 (.I0(\data_in_frame[9] [4]), .I1(\data_in_frame[9] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n13209));
    defparam i1_2_lut_adj_2180.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2181 (.I0(\data_in_frame[12] [1]), .I1(\data_in_frame[11] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n29130));
    defparam i1_2_lut_adj_2181.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2182 (.I0(\data_in_frame[18] [6]), .I1(\data_in_frame[18] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n28833));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_adj_2182.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2183 (.I0(\data_in_frame[16][5] ), .I1(\data_in_frame[16][4] ), 
            .I2(GND_net), .I3(GND_net), .O(n13635));
    defparam i1_2_lut_adj_2183.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_2184 (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[5] [6]), 
            .I2(\data_out_frame[7] [7]), .I3(GND_net), .O(n29145));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_adj_2184.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i70 (.Q(\data_in_frame[8] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15919));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2185 (.I0(n30162), .I1(\data_in_frame[16][6] ), 
            .I2(GND_net), .I3(GND_net), .O(n29223));
    defparam i1_2_lut_adj_2185.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_2186 (.I0(\data_in_frame[18] [0]), .I1(n25234), 
            .I2(GND_net), .I3(GND_net), .O(n25267));
    defparam i1_2_lut_adj_2186.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2187 (.I0(n26222), .I1(n30162), .I2(Kp_23__N_1326), 
            .I3(n13635), .O(n32173));
    defparam i1_4_lut_adj_2187.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2188 (.I0(n25185), .I1(n28914), .I2(n30120), 
            .I3(n32173), .O(n32179));
    defparam i1_4_lut_adj_2188.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2189 (.I0(n25234), .I1(n32337), .I2(n32179), 
            .I3(n28979), .O(n28844));
    defparam i1_4_lut_adj_2189.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i69 (.Q(\data_in_frame[8] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15916));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i68 (.Q(\data_in_frame[8] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15913));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2190 (.I0(n28784), .I1(n28988), .I2(\data_in_frame[19] [0]), 
            .I3(\data_in_frame[20] [2]), .O(n32445));
    defparam i1_4_lut_adj_2190.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2191 (.I0(n29223), .I1(n29106), .I2(n29175), 
            .I3(n29250), .O(n32369));
    defparam i1_4_lut_adj_2191.LUT_INIT = 16'h6996;
    SB_LUT4 data_in_frame_9__7__I_0_2_lut (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_847));   // verilog/coms.v(86[17:28])
    defparam data_in_frame_9__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2192 (.I0(n28896), .I1(n29130), .I2(n13209), 
            .I3(n25236), .O(n10_adj_5708));
    defparam i4_4_lut_adj_2192.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2193 (.I0(n29262), .I1(n29163), .I2(n29121), 
            .I3(n32369), .O(n32375));
    defparam i1_4_lut_adj_2193.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2194 (.I0(n28935), .I1(n25589), .I2(n26260), 
            .I3(n32445), .O(n32451));
    defparam i1_4_lut_adj_2194.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2195 (.I0(n26218), .I1(n25267), .I2(\data_in_frame[19] [7]), 
            .I3(\data_in_frame[21] [1]), .O(n30614));
    defparam i1_4_lut_adj_2195.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_2196 (.I0(n32451), .I1(n29008), .I2(n28985), 
            .I3(n32375), .O(n32379));
    defparam i1_4_lut_adj_2196.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2197 (.I0(\data_in_frame[14] [3]), .I1(\data_in_frame[12] [2]), 
            .I2(n10_adj_5708), .I3(Kp_23__N_847), .O(n28790));
    defparam i1_4_lut_adj_2197.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2198 (.I0(n25197), .I1(n30183), .I2(\data_in_frame[21] [2]), 
            .I3(\data_in_frame[20] [6]), .O(n32413));
    defparam i1_4_lut_adj_2198.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_2199 (.I0(n32413), .I1(n12779), .I2(n32379), 
            .I3(n30614), .O(n28769));
    defparam i1_4_lut_adj_2199.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2200 (.I0(\data_in_frame[16][5] ), .I1(n28790), 
            .I2(n28656), .I3(\data_in_frame[16][6] ), .O(n30738));
    defparam i3_4_lut_adj_2200.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2201 (.I0(n30738), .I1(\data_in_frame[19] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n29000));
    defparam i1_2_lut_adj_2201.LUT_INIT = 16'h9999;
    SB_LUT4 i1_4_lut_adj_2202 (.I0(n29000), .I1(n26229), .I2(n26117), 
            .I3(\data_in_frame[21] [3]), .O(n28935));
    defparam i1_4_lut_adj_2202.LUT_INIT = 16'h6996;
    SB_LUT4 i3_2_lut_3_lut (.I0(\data_out_frame[9] [3]), .I1(\data_out_frame[11] [4]), 
            .I2(n28707), .I3(GND_net), .O(n16_adj_5709));
    defparam i3_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2203 (.I0(\data_in_frame[14] [2]), .I1(n26084), 
            .I2(GND_net), .I3(GND_net), .O(n26222));
    defparam i1_2_lut_adj_2203.LUT_INIT = 16'h6666;
    SB_LUT4 i28633_3_lut (.I0(\data_out_frame[6] [0]), .I1(\data_out_frame[7] [0]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32937));
    defparam i28633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2204 (.I0(\data_in_frame[18] [6]), .I1(n30735), 
            .I2(GND_net), .I3(GND_net), .O(n28887));
    defparam i1_2_lut_adj_2204.LUT_INIT = 16'h9999;
    SB_LUT4 i28632_3_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [0]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32936));
    defparam i28632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2205 (.I0(n25293), .I1(n26197), .I2(GND_net), 
            .I3(GND_net), .O(n26220));
    defparam i1_2_lut_adj_2205.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2206 (.I0(\data_in_frame[12]_c [4]), .I1(\data_in_frame[12][3] ), 
            .I2(GND_net), .I3(GND_net), .O(n28972));
    defparam i1_2_lut_adj_2206.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i11_3_lut (.I0(\data_out_frame[12] [0]), 
            .I1(\data_out_frame[13] [0]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2207 (.I0(n26161), .I1(n25271), .I2(GND_net), 
            .I3(GND_net), .O(n26218));
    defparam i1_2_lut_adj_2207.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2208 (.I0(\data_in_frame[12][5] ), .I1(n14055), 
            .I2(GND_net), .I3(GND_net), .O(n14200));
    defparam i1_2_lut_adj_2208.LUT_INIT = 16'h6666;
    SB_LUT4 i28612_4_lut (.I0(n11), .I1(\data_out_frame[14] [0]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n32916));
    defparam i28612_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i30899_3_lut (.I0(n36271), .I1(n32916), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35203));
    defparam i30899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_2209 (.I0(\data_out_frame[6] [5]), .I1(\data_out_frame[4] [3]), 
            .I2(\data_out_frame[13] [1]), .I3(\data_out_frame[12] [7]), 
            .O(n29244));   // verilog/coms.v(86[17:28])
    defparam i2_3_lut_4_lut_adj_2209.LUT_INIT = 16'h6996;
    SB_LUT4 i30292_4_lut (.I0(\data_out_frame[26] [0]), .I1(n9537), .I2(\data_out_frame[27] [0]), 
            .I3(byte_transmit_counter[0]), .O(n34403));
    defparam i30292_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i21_4_lut (.I0(\data_out_frame[21] [0]), 
            .I1(\data_out_frame[22] [0]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5710));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1_2_lut_adj_2210 (.I0(\data_in_frame[15] [4]), .I1(\data_in_frame[15] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n32603));
    defparam i1_2_lut_adj_2210.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2211 (.I0(Kp_23__N_1048), .I1(n13623), .I2(n32603), 
            .I3(\data_in_frame[13]_c [1]), .O(n25406));
    defparam i1_4_lut_adj_2211.LUT_INIT = 16'h6996;
    SB_LUT4 i30260_2_lut (.I0(n21_adj_5710), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34402));
    defparam i30260_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i28637_4_lut (.I0(\data_out_frame[6] [1]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(\data_out_frame[7] [1]), 
            .O(n32941));
    defparam i28637_4_lut.LUT_INIT = 16'hec2c;
    SB_LUT4 i28635_3_lut (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [1]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32939));
    defparam i28635_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2212 (.I0(\data_in_frame[15] [3]), .I1(\data_in_frame[17] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n32615));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2212.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2213 (.I0(n28910), .I1(n29139), .I2(n28780), 
            .I3(n32615), .O(n25271));   // verilog/coms.v(72[16:27])
    defparam i1_4_lut_adj_2213.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2214 (.I0(Kp_23__N_1313), .I1(n25334), .I2(\data_in_frame[19] [6]), 
            .I3(\data_in_frame[21] [7]), .O(n29008));
    defparam i1_4_lut_adj_2214.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2215 (.I0(\data_in_frame[12]_c [6]), .I1(\data_in_frame[14] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n28752));
    defparam i1_2_lut_adj_2215.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i11_3_lut (.I0(\data_out_frame[12] [1]), 
            .I1(\data_out_frame[13] [1]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5711));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28615_4_lut (.I0(n11_adj_5711), .I1(\data_out_frame[14] [1]), 
            .I2(byte_transmit_counter[1]), .I3(byte_transmit_counter[0]), 
            .O(n32919));
    defparam i28615_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_3_lut_adj_2216 (.I0(n29250), .I1(n29265), .I2(n26260), 
            .I3(GND_net), .O(n28957));
    defparam i2_3_lut_adj_2216.LUT_INIT = 16'h6969;
    SB_LUT4 data_in_frame_16__7__I_0_4997_2_lut (.I0(\data_in_frame[16][7] ), 
            .I1(\data_in_frame[16][6] ), .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1155));   // verilog/coms.v(79[16:27])
    defparam data_in_frame_16__7__I_0_4997_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2217 (.I0(n26149), .I1(n28969), .I2(\data_in_frame[14] [4]), 
            .I3(GND_net), .O(n30162));
    defparam i2_3_lut_adj_2217.LUT_INIT = 16'h9696;
    SB_LUT4 i5_4_lut_adj_2218 (.I0(\data_in_frame[17] [1]), .I1(n28752), 
            .I2(\data_in_frame[15]_c [0]), .I3(n14200), .O(n13));
    defparam i5_4_lut_adj_2218.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2219 (.I0(n13), .I1(n11_adj_5712), .I2(n26156), 
            .I3(\data_in_frame[16][7] ), .O(n25293));
    defparam i7_4_lut_adj_2219.LUT_INIT = 16'h9669;
    SB_LUT4 i30901_3_lut (.I0(n36277), .I1(n32919), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35205));
    defparam i30901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_2220 (.I0(\data_in_frame[17] [0]), .I1(n30162), 
            .I2(n28794), .I3(Kp_23__N_1155), .O(n28656));
    defparam i3_4_lut_adj_2220.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_2221 (.I0(\data_in_frame[19] [2]), .I1(n25293), 
            .I2(GND_net), .I3(GND_net), .O(n29033));
    defparam i1_2_lut_adj_2221.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2222 (.I0(\data_in_frame[14] [6]), .I1(\data_in_frame[15]_c [0]), 
            .I2(\data_in_frame[14] [7]), .I3(GND_net), .O(n29136));   // verilog/coms.v(72[16:27])
    defparam i2_3_lut_adj_2222.LUT_INIT = 16'h9696;
    SB_LUT4 i30301_4_lut (.I0(\data_out_frame[26] [1]), .I1(n9537), .I2(\data_out_frame[27] [1]), 
            .I3(byte_transmit_counter[0]), .O(n34401));
    defparam i30301_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i3_4_lut_adj_2223 (.I0(\data_in_frame[12][7] ), .I1(\data_in_frame[15][2] ), 
            .I2(n28680), .I3(n13884), .O(n28780));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_2223.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i21_4_lut (.I0(\data_out_frame[21] [1]), 
            .I1(\data_out_frame[22] [1]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5713));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i30469_2_lut (.I0(n21_adj_5713), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34400));
    defparam i30469_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_2224 (.I0(\data_in_frame[13]_c [2]), .I1(n12777), 
            .I2(\data_in_frame[13][0] ), .I3(GND_net), .O(n29139));   // verilog/coms.v(97[12:25])
    defparam i1_3_lut_adj_2224.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i8_3_lut (.I0(\data_out_frame[8] [4]), 
            .I1(\data_out_frame[9] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n8_adj_5714));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i9_3_lut (.I0(\data_out_frame[10] [4]), 
            .I1(\data_out_frame[11] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n9));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2225 (.I0(n26260), .I1(n30906), .I2(n28780), 
            .I3(n32163), .O(n29103));
    defparam i1_4_lut_adj_2225.LUT_INIT = 16'h6996;
    SB_LUT4 i30430_2_lut (.I0(\data_out_frame[14] [4]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n34410));
    defparam i30430_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_4_lut_adj_2226 (.I0(n14055), .I1(n28871), .I2(n13884), 
            .I3(n13831), .O(Kp_23__N_1048));   // verilog/coms.v(72[16:27])
    defparam i3_4_lut_adj_2226.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i11_3_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\data_out_frame[13] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5715));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i8_3_lut (.I0(\data_out_frame[8] [3]), 
            .I1(\data_out_frame[9] [3]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n8_adj_5716));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2227 (.I0(n13905), .I1(n13927), .I2(n28752), 
            .I3(\data_in_frame[17] [3]), .O(n32129));
    defparam i1_4_lut_adj_2227.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2228 (.I0(n26132), .I1(n29103), .I2(n29139), 
            .I3(n32129), .O(n26161));
    defparam i1_4_lut_adj_2228.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_2229 (.I0(n26128), .I1(n12777), .I2(n13466), 
            .I3(Kp_23__N_1048), .O(n30108));
    defparam i1_4_lut_adj_2229.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2230 (.I0(n25232), .I1(\data_in_frame[15][1] ), 
            .I2(\data_in_frame[14] [7]), .I3(\data_in_frame[17] [2]), .O(n32397));
    defparam i1_4_lut_adj_2230.LUT_INIT = 16'h6996;
    SB_LUT4 i31756_4_lut (.I0(n30108), .I1(n28910), .I2(n29136), .I3(n14055), 
            .O(n36060));
    defparam i31756_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2231 (.I0(n30289), .I1(n30906), .I2(n36060), 
            .I3(n32397), .O(n26197));
    defparam i1_4_lut_adj_2231.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i9_3_lut (.I0(\data_out_frame[10] [3]), 
            .I1(\data_out_frame[11] [3]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n9_adj_5717));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30333_2_lut (.I0(\data_out_frame[14] [3]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n34411));
    defparam i30333_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_4_lut_adj_2232 (.I0(\data_in_frame[21] [4]), .I1(n28656), 
            .I2(\data_in_frame[21] [5]), .I3(n29033), .O(n28784));
    defparam i3_4_lut_adj_2232.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_2233 (.I0(n26197), .I1(n26161), .I2(\data_in_frame[19] [4]), 
            .I3(GND_net), .O(n25334));
    defparam i1_3_lut_adj_2233.LUT_INIT = 16'h9696;
    SB_LUT4 i25_2_lut (.I0(\data_in_frame[13]_c [6]), .I1(\data_in_frame[13]_c [7]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1033));   // verilog/coms.v(97[12:25])
    defparam i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2234 (.I0(\data_in_frame[16] [2]), .I1(n28948), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_5718));   // verilog/coms.v(97[12:25])
    defparam i1_2_lut_adj_2234.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i11_3_lut (.I0(\data_out_frame[12] [3]), 
            .I1(\data_out_frame[13] [3]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5719));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_2235 (.I0(Kp_23__N_1033), .I1(\data_in_frame[16] [3]), 
            .I2(n13476), .I3(n6_adj_5718), .O(n28916));   // verilog/coms.v(97[12:25])
    defparam i4_4_lut_adj_2235.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2236 (.I0(n26084), .I1(n28916), .I2(\data_in_frame[14] [2]), 
            .I3(GND_net), .O(n30120));
    defparam i2_3_lut_adj_2236.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_2237 (.I0(\data_in_frame[18] [2]), .I1(\data_in_frame[18] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n13240));
    defparam i1_2_lut_adj_2237.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2238 (.I0(n30120), .I1(\data_in_frame[20] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n28884));
    defparam i1_2_lut_adj_2238.LUT_INIT = 16'h9999;
    SB_LUT4 i3_4_lut_adj_2239 (.I0(\data_in_frame[12]_c [4]), .I1(n29211), 
            .I2(n29109), .I3(n28892), .O(n25232));
    defparam i3_4_lut_adj_2239.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2240 (.I0(\data_in_frame[18] [7]), .I1(n28988), 
            .I2(GND_net), .I3(GND_net), .O(n26117));
    defparam i1_2_lut_adj_2240.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_2241 (.I0(\data_in_frame[16] [1]), .I1(\data_in_frame[13]_c [5]), 
            .I2(\data_in_frame[15][6] ), .I3(GND_net), .O(n32463));   // verilog/coms.v(97[12:25])
    defparam i1_3_lut_adj_2241.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2242 (.I0(n32463), .I1(n26100), .I2(\data_in_frame[13]_c [6]), 
            .I3(\data_in_frame[16] [0]), .O(n28901));   // verilog/coms.v(97[12:25])
    defparam i1_4_lut_adj_2242.LUT_INIT = 16'h9669;
    SB_LUT4 i5_3_lut (.I0(\data_in_frame[16][7] ), .I1(\data_in_frame[21] [3]), 
            .I2(n28794), .I3(GND_net), .O(n14_adj_5720));
    defparam i5_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i4_2_lut (.I0(\data_in_frame[17] [0]), .I1(\data_in_frame[21] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_5721));
    defparam i4_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2243 (.I0(\data_out_frame[6] [5]), .I1(\data_out_frame[4] [3]), 
            .I2(n14263), .I3(\data_out_frame[11] [3]), .O(n6_adj_5722));   // verilog/coms.v(86[17:28])
    defparam i1_2_lut_3_lut_4_lut_adj_2243.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_2244 (.I0(n29184), .I1(\data_in_frame[23] [4]), 
            .I2(n26117), .I3(n29033), .O(n15));
    defparam i6_4_lut_adj_2244.LUT_INIT = 16'h6996;
    SB_LUT4 i28360_4_lut (.I0(n15), .I1(n30873), .I2(n13_adj_5721), .I3(n14_adj_5720), 
            .O(n32654));
    defparam i28360_4_lut.LUT_INIT = 16'hedde;
    SB_LUT4 i28481_4_lut (.I0(\data_in_frame[22] [5]), .I1(n32654), .I2(n12722), 
            .I3(n30183), .O(n32776));
    defparam i28481_4_lut.LUT_INIT = 16'hdeed;
    SB_LUT4 i7_3_lut_4_lut (.I0(\data_out_frame[11] [3]), .I1(n14263), .I2(\data_out_frame[5] [2]), 
            .I3(\data_out_frame[12] [7]), .O(n20_adj_5723));   // verilog/coms.v(86[17:28])
    defparam i7_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2245 (.I0(\data_in_frame[14] [0]), .I1(n13900), 
            .I2(n28742), .I3(n13209), .O(n28948));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_2245.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut (.I0(\data_in_frame[22]_c [4]), .I1(\data_in_frame[18] [2]), 
            .I2(n28865), .I3(GND_net), .O(n8_adj_5724));
    defparam i3_3_lut.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i42 (.Q(\data_in_frame[5] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16600));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2246 (.I0(n29133), .I1(n28948), .I2(\data_in_frame[13]_c [7]), 
            .I3(\data_in_frame[15][7] ), .O(n32583));
    defparam i1_4_lut_adj_2246.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i41 (.Q(\data_in_frame[5] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n16597));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2247 (.I0(Kp_23__N_1018), .I1(n28901), .I2(n28925), 
            .I3(n32583), .O(n26154));
    defparam i1_4_lut_adj_2247.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2248 (.I0(\data_in_frame[10] [5]), .I1(n13881), 
            .I2(n13462), .I3(GND_net), .O(n14055));   // verilog/coms.v(76[16:43])
    defparam i2_3_lut_adj_2248.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2249 (.I0(n13462), .I1(\data_in_frame[10] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n28680));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2249.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2250 (.I0(n28680), .I1(n26128), .I2(n13831), 
            .I3(n29050), .O(n12777));   // verilog/coms.v(72[16:27])
    defparam i1_4_lut_adj_2250.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_2251 (.I0(\data_in_frame[13] [3]), .I1(n13615), 
            .I2(Kp_23__N_964), .I3(n26092), .O(n26260));
    defparam i3_4_lut_adj_2251.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2252 (.I0(\data_in_frame[13]_c [2]), .I1(n12777), 
            .I2(GND_net), .I3(GND_net), .O(n13623));
    defparam i1_2_lut_adj_2252.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_2253 (.I0(\data_in_frame[17] [6]), .I1(\data_in_frame[15] [4]), 
            .I2(n26086), .I3(GND_net), .O(n29265));
    defparam i1_3_lut_adj_2253.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_2254 (.I0(\data_in_frame[22][6] ), .I1(n32776), 
            .I2(\data_in_frame[20] [4]), .I3(n25197), .O(n32267));
    defparam i1_4_lut_adj_2254.LUT_INIT = 16'h2112;
    SB_LUT4 i1_2_lut_adj_2255 (.I0(\data_in_frame[11] [2]), .I1(Kp_23__N_964), 
            .I2(GND_net), .I3(GND_net), .O(n29133));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_adj_2255.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2256 (.I0(n28957), .I1(\data_in_frame[21] [7]), 
            .I2(\data_in_frame[19] [7]), .I3(n29160), .O(n10_adj_5725));
    defparam i4_4_lut_adj_2256.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2257 (.I0(n5), .I1(n3278), .I2(n13032), .I3(\FRAME_MATCHER.i_31__N_3746 ), 
            .O(n30520));   // verilog/coms.v(146[4] 292[11])
    defparam i3_4_lut_adj_2257.LUT_INIT = 16'hfbfa;
    SB_LUT4 i1_2_lut_adj_2258 (.I0(\data_in_frame[13]_c [5]), .I1(n13492), 
            .I2(GND_net), .I3(GND_net), .O(n13905));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_adj_2258.LUT_INIT = 16'h6666;
    SB_LUT4 i2_4_lut_adj_2259 (.I0(\data_in_frame[15][6] ), .I1(n13466), 
            .I2(n13905), .I3(n13476), .O(n29106));   // verilog/coms.v(71[16:27])
    defparam i2_4_lut_adj_2259.LUT_INIT = 16'h6996;
    SB_LUT4 i25086_2_lut (.I0(n18971), .I1(n1459), .I2(GND_net), .I3(GND_net), 
            .O(n29346));
    defparam i25086_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_2260 (.I0(n1456), .I1(n11_adj_5726), .I2(n29346), 
            .I3(n30520), .O(n14280));   // verilog/coms.v(146[4] 292[11])
    defparam i1_4_lut_adj_2260.LUT_INIT = 16'hd5c4;
    SB_LUT4 i1_4_lut_adj_2261 (.I0(\data_in_frame[20] [2]), .I1(n28787), 
            .I2(n29106), .I3(\data_in_frame[18] [0]), .O(n28865));
    defparam i1_4_lut_adj_2261.LUT_INIT = 16'h6996;
    SB_LUT4 i424_2_lut (.I0(n3278), .I1(\FRAME_MATCHER.i_31__N_3746 ), .I2(GND_net), 
            .I3(GND_net), .O(n1565));   // verilog/coms.v(146[4] 292[11])
    defparam i424_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_2262 (.I0(n8_adj_5727), .I1(n25370), .I2(n13718), 
            .I3(n32597), .O(n26092));
    defparam i1_4_lut_adj_2262.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2263 (.I0(n13524), .I1(n13927), .I2(GND_net), 
            .I3(GND_net), .O(n11384));
    defparam i1_2_lut_adj_2263.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2264 (.I0(n4401), .I1(\FRAME_MATCHER.i_31__N_3748 ), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_5726));   // verilog/coms.v(146[4] 292[11])
    defparam i1_2_lut_adj_2264.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut_adj_2265 (.I0(n32267), .I1(n26154), .I2(n8_adj_5724), 
            .I3(\data_in_frame[20] [3]), .O(n32269));
    defparam i1_4_lut_adj_2265.LUT_INIT = 16'h2882;
    SB_DFF data_in_frame_0___i43 (.Q(\data_in_frame[5] [2]), .C(clk16MHz), 
           .D(n15651));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i3_4_lut_adj_2266 (.I0(\FRAME_MATCHER.i_31__N_3743 ), .I1(n10563), 
            .I2(n11_adj_5726), .I3(n13032), .O(n30725));   // verilog/coms.v(146[4] 292[11])
    defparam i3_4_lut_adj_2266.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_2267 (.I0(\data_in_frame[13]_c [7]), .I1(n29021), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_5728));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_2267.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i40 (.Q(\data_in_frame[4] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n16593));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i4_4_lut_adj_2268 (.I0(\data_in_frame[13]_c [1]), .I1(\data_in_frame[16] [0]), 
            .I2(\data_in_frame[13]_c [2]), .I3(n6_adj_5728), .O(n29175));   // verilog/coms.v(77[16:43])
    defparam i4_4_lut_adj_2268.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2269 (.I0(n25334), .I1(n28784), .I2(\data_in_frame[23][6] ), 
            .I3(GND_net), .O(n30734));
    defparam i2_3_lut_adj_2269.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i39 (.Q(\data_in_frame[4] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n16590));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2270 (.I0(n25271), .I1(n28644), .I2(\data_in_frame[19] [6]), 
            .I3(\data_in_frame[22][2] ), .O(n32419));
    defparam i1_4_lut_adj_2270.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut_adj_2271 (.I0(n3278), .I1(n1459), .I2(\FRAME_MATCHER.i_31__N_3746 ), 
            .I3(n18971), .O(n30693));   // verilog/coms.v(146[4] 292[11])
    defparam i2_4_lut_adj_2271.LUT_INIT = 16'h5010;
    SB_LUT4 i1_4_lut_adj_2272 (.I0(n1456), .I1(n30693), .I2(n1459), .I3(n30725), 
            .O(n27977));   // verilog/coms.v(146[4] 292[11])
    defparam i1_4_lut_adj_2272.LUT_INIT = 16'h8a88;
    SB_LUT4 i1_2_lut_adj_2273 (.I0(\data_in_frame[17] [7]), .I1(n29175), 
            .I2(GND_net), .I3(GND_net), .O(n28644));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_2273.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i38 (.Q(\data_in_frame[4] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n16587));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2274 (.I0(\data_in_frame[11] [1]), .I1(n26092), 
            .I2(GND_net), .I3(GND_net), .O(n26128));
    defparam i1_2_lut_adj_2274.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_2275 (.I0(\FRAME_MATCHER.state[3] ), .I1(n12996), 
            .I2(n18971), .I3(GND_net), .O(n8614));   // verilog/coms.v(146[4] 292[11])
    defparam i1_3_lut_adj_2275.LUT_INIT = 16'heaea;
    SB_LUT4 i412_2_lut (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_3744 ), .I2(GND_net), 
            .I3(GND_net), .O(n1553));   // verilog/coms.v(146[4] 292[11])
    defparam i412_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE data_in_frame_0___i37 (.Q(\data_in_frame[4] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n16584));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_2_lut_adj_2276 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_5729));
    defparam i2_2_lut_adj_2276.LUT_INIT = 16'heeee;
    SB_LUT4 i17790_4_lut (.I0(n3), .I1(\FRAME_MATCHER.i [31]), .I2(n6_adj_5729), 
            .I3(n12966), .O(n771));   // verilog/coms.v(157[9:60])
    defparam i17790_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i2_2_lut_adj_2277 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_3744 ), 
            .I2(GND_net), .I3(GND_net), .O(n10563));   // verilog/coms.v(146[4] 292[11])
    defparam i2_2_lut_adj_2277.LUT_INIT = 16'h4444;
    SB_LUT4 i7_4_lut_adj_2278 (.I0(\data_in_frame[11]_c [5]), .I1(\data_in_frame[9] [2]), 
            .I2(n29061), .I3(\data_in_frame[14] [1]), .O(n18_adj_5730));
    defparam i7_4_lut_adj_2278.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i36 (.Q(\data_in_frame[4] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16581));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2279 (.I0(\FRAME_MATCHER.i [4]), .I1(n13105), .I2(GND_net), 
            .I3(GND_net), .O(n12966));   // verilog/coms.v(154[7:23])
    defparam i1_2_lut_adj_2279.LUT_INIT = 16'heeee;
    SB_LUT4 i17793_4_lut (.I0(n10744), .I1(\FRAME_MATCHER.i [31]), .I2(n12966), 
            .I3(\FRAME_MATCHER.i [3]), .O(n3278));   // verilog/coms.v(223[9:54])
    defparam i17793_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i5_2_lut_adj_2280 (.I0(\data_in_frame[11] [7]), .I1(\data_in_frame[13]_c [7]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_5731));
    defparam i5_2_lut_adj_2280.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_2281 (.I0(n13900), .I1(n18_adj_5730), .I2(Kp_23__N_755), 
            .I3(n29229), .O(n20_adj_5732));
    defparam i9_4_lut_adj_2281.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2282 (.I0(n13032), .I1(n1459), .I2(n1456), .I3(GND_net), 
            .O(n12996));   // verilog/coms.v(146[4] 292[11])
    defparam i2_3_lut_adj_2282.LUT_INIT = 16'h8080;
    SB_DFFE data_in_frame_0___i35 (.Q(\data_in_frame[4] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n16578));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i10_4_lut_adj_2283 (.I0(n29190), .I1(n20_adj_5732), .I2(n16_adj_5731), 
            .I3(n28878), .O(n30613));
    defparam i10_4_lut_adj_2283.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2284 (.I0(n13456), .I1(\data_in_frame[10] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n29109));   // verilog/coms.v(76[16:27])
    defparam i1_2_lut_adj_2284.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2285 (.I0(n28853), .I1(n11507), .I2(\data_in_frame[10] [2]), 
            .I3(GND_net), .O(n29211));
    defparam i2_3_lut_adj_2285.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2286 (.I0(n29211), .I1(n29157), .I2(n25696), 
            .I3(\data_in_frame[8] [1]), .O(n26149));
    defparam i1_4_lut_adj_2286.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i34 (.Q(\data_in_frame[4] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16575));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_3_lut_adj_2287 (.I0(n30666), .I1(n30119), .I2(n25191), 
            .I3(GND_net), .O(n25370));
    defparam i1_3_lut_adj_2287.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_2288 (.I0(\FRAME_MATCHER.i_31__N_3746 ), .I1(n1456), 
            .I2(n1459), .I3(n3278), .O(n30213));   // verilog/coms.v(143[4] 145[7])
    defparam i3_4_lut_adj_2288.LUT_INIT = 16'h0080;
    SB_LUT4 i1_2_lut_adj_2289 (.I0(\data_in_frame[11] [6]), .I1(n11503), 
            .I2(GND_net), .I3(GND_net), .O(n28742));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_2289.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2290 (.I0(\FRAME_MATCHER.i_31__N_3748 ), .I1(n17_adj_5733), 
            .I2(n1459), .I3(n1456), .O(n10_adj_5734));
    defparam i4_4_lut_adj_2290.LUT_INIT = 16'h2000;
    SB_LUT4 i1_4_lut_adj_2291 (.I0(n26154), .I1(n29163), .I2(n28957), 
            .I3(n32419), .O(n32425));
    defparam i1_4_lut_adj_2291.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_2292 (.I0(n30213), .I1(n13026), .I2(n12996), 
            .I3(GND_net), .O(n30914));   // verilog/coms.v(116[11:12])
    defparam i2_3_lut_adj_2292.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_2293 (.I0(\data_in_frame[10] [7]), .I1(\data_in_frame[11][0] ), 
            .I2(GND_net), .I3(GND_net), .O(n29050));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2293.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[7] [4]), .I3(\data_out_frame[9] [5]), .O(n28659));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2294 (.I0(\data_in_frame[22][1] ), .I1(n32269), 
            .I2(n10_adj_5725), .I3(\data_in_frame[19] [5]), .O(n32271));
    defparam i1_4_lut_adj_2294.LUT_INIT = 16'h8448;
    SB_LUT4 i1_4_lut_adj_2295 (.I0(\data_in_frame[22]_c [0]), .I1(n30734), 
            .I2(n29008), .I3(\data_in_frame[21] [6]), .O(n32273));
    defparam i1_4_lut_adj_2295.LUT_INIT = 16'h2112;
    SB_LUT4 i1_2_lut_adj_2296 (.I0(\data_in_frame[12][3] ), .I1(\data_in_frame[12] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n28969));
    defparam i1_2_lut_adj_2296.LUT_INIT = 16'h6666;
    SB_LUT4 i15136_4_lut (.I0(n32647), .I1(n18971), .I2(n30914), .I3(n10_adj_5734), 
            .O(n14273));   // verilog/coms.v(116[11:12])
    defparam i15136_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i1_4_lut_adj_2297 (.I0(n10563), .I1(n14273), .I2(n1459), .I3(n1456), 
            .O(n14274));   // verilog/coms.v(146[4] 292[11])
    defparam i1_4_lut_adj_2297.LUT_INIT = 16'heccc;
    SB_LUT4 i2_3_lut_4_lut_adj_2298 (.I0(\data_in_frame[9] [2]), .I1(\data_in_frame[9] [3]), 
            .I2(Kp_23__N_847), .I3(\data_in_frame[9] [1]), .O(n13718));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_4_lut_adj_2298.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2299 (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[7] [4]), .I3(\data_out_frame[9] [6]), .O(n29081));
    defparam i1_2_lut_4_lut_adj_2299.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2300 (.I0(n12987), .I1(\data_in[3] [3]), .I2(\data_in[0] [2]), 
            .I3(\data_in[2] [3]), .O(n17_adj_5733));
    defparam i3_4_lut_adj_2300.LUT_INIT = 16'hbfff;
    SB_LUT4 i1_2_lut_adj_2301 (.I0(\data_in_frame[11] [2]), .I1(\data_in_frame[11] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n13615));
    defparam i1_2_lut_adj_2301.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2302 (.I0(\data_in_frame[11][4] ), .I1(\data_in_frame[10] [5]), 
            .I2(\data_in_frame[10] [4]), .I3(\data_in_frame[10] [6]), .O(n32205));
    defparam i1_4_lut_adj_2302.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2303 (.I0(\data_in_frame[12][5] ), .I1(\data_in_frame[12]_c [6]), 
            .I2(\data_in_frame[11] [3]), .I3(\data_in_frame[12]_c [4]), 
            .O(n32207));
    defparam i1_4_lut_adj_2303.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2304 (.I0(n29130), .I1(n32207), .I2(n28969), 
            .I3(n32205), .O(n32215));
    defparam i1_4_lut_adj_2304.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2305 (.I0(n28907), .I1(n32215), .I2(n28871), 
            .I3(n32213), .O(n32221));
    defparam i1_4_lut_adj_2305.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2306 (.I0(n29253), .I1(n28749), .I2(n28742), 
            .I3(n32221), .O(n32227));
    defparam i1_4_lut_adj_2306.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2307 (.I0(n25312), .I1(n28938), .I2(n32227), 
            .I3(n13524), .O(n32233));
    defparam i1_4_lut_adj_2307.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2308 (.I0(n25370), .I1(n29190), .I2(n26149), 
            .I3(n32233), .O(n26132));
    defparam i1_4_lut_adj_2308.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_2309 (.I0(\data_in_frame[13] [4]), .I1(n26132), 
            .I2(GND_net), .I3(GND_net), .O(n28925));
    defparam i1_2_lut_adj_2309.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i67 (.Q(\data_in_frame[8] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15910));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2310 (.I0(\data_in_frame[13]_c [6]), .I1(\data_in_frame[13]_c [5]), 
            .I2(GND_net), .I3(GND_net), .O(n32297));   // verilog/coms.v(97[12:25])
    defparam i1_2_lut_adj_2310.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2311 (.I0(n42), .I1(n28925), .I2(n32297), .I3(\data_in_frame[13]_c [2]), 
            .O(n30289));   // verilog/coms.v(97[12:25])
    defparam i1_4_lut_adj_2311.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_2312 (.I0(\data_in_frame[9] [3]), .I1(n28938), 
            .I2(n14052), .I3(GND_net), .O(n25312));
    defparam i2_3_lut_adj_2312.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i83 (.Q(\data_in_frame[10] [2]), .C(clk16MHz), 
           .D(n15958));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i84 (.Q(\data_in_frame[10] [3]), .C(clk16MHz), 
           .D(n15961));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i4_4_lut_adj_2313 (.I0(\data_in[0] [7]), .I1(\data_in[2] [1]), 
            .I2(\data_in[3] [6]), .I3(n13137), .O(n10_adj_5735));
    defparam i4_4_lut_adj_2313.LUT_INIT = 16'hfffb;
    SB_DFFE data_in_frame_0___i33 (.Q(\data_in_frame[4] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n16570));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[7__4778  (.Q(\data_out_frame[27] [7]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__7__N_1951));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i7_4_lut_adj_2314 (.I0(\data_in[2] [6]), .I1(\data_in[1] [2]), 
            .I2(n13085), .I3(\data_in[3] [2]), .O(n18_adj_5736));
    defparam i7_4_lut_adj_2314.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_2315 (.I0(\data_in[1] [6]), .I1(n18_adj_5736), 
            .I2(\data_in[1] [3]), .I3(\data_in[2] [0]), .O(n20_adj_5737));
    defparam i9_4_lut_adj_2315.LUT_INIT = 16'hfffd;
    SB_LUT4 i4_2_lut_adj_2316 (.I0(\data_in[2] [5]), .I1(\data_in[0] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_5738));
    defparam i4_2_lut_adj_2316.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut_adj_2317 (.I0(n15_adj_5738), .I1(n20_adj_5737), .I2(\data_in[0] [5]), 
            .I3(\data_in[3] [7]), .O(n12987));
    defparam i10_4_lut_adj_2317.LUT_INIT = 16'hfeff;
    SB_LUT4 i2_2_lut_adj_2318 (.I0(\data_in[2] [3]), .I1(\data_in[3] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_5739));
    defparam i2_2_lut_adj_2318.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_2319 (.I0(\data_in[0] [2]), .I1(\data_in[3] [3]), 
            .I2(\data_in[3] [1]), .I3(\data_in[0] [7]), .O(n14_adj_5740));
    defparam i6_4_lut_adj_2319.LUT_INIT = 16'hfeff;
    SB_LUT4 i7_4_lut_adj_2320 (.I0(\data_in[3] [6]), .I1(n14_adj_5740), 
            .I2(n10_adj_5739), .I3(\data_in[2] [1]), .O(n13060));
    defparam i7_4_lut_adj_2320.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_3_lut_adj_2321 (.I0(\data_in_frame[21] [4]), .I1(n28935), 
            .I2(\data_in_frame[23][5] ), .I3(GND_net), .O(n30135));
    defparam i1_3_lut_adj_2321.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_2322 (.I0(\data_in[1] [7]), .I1(\data_in[0] [0]), 
            .I2(\data_in[1] [1]), .I3(\data_in[0] [4]), .O(n10_adj_5741));
    defparam i4_4_lut_adj_2322.LUT_INIT = 16'hfdff;
    SB_LUT4 i5_3_lut_adj_2323 (.I0(\data_in[3] [4]), .I1(n10_adj_5741), 
            .I2(\data_in[2] [7]), .I3(GND_net), .O(n13085));
    defparam i5_3_lut_adj_2323.LUT_INIT = 16'hdfdf;
    SB_LUT4 i28507_4_lut (.I0(\data_in[1] [5]), .I1(\data_in[1] [0]), .I2(\data_in[2] [2]), 
            .I3(\data_in[0] [3]), .O(n32802));
    defparam i28507_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_2324 (.I0(\data_in[1] [4]), .I1(\data_in[2] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_5742));
    defparam i1_2_lut_adj_2324.LUT_INIT = 16'heeee;
    SB_LUT4 i7_4_lut_adj_2325 (.I0(n9_adj_5742), .I1(n32802), .I2(\data_in[3] [0]), 
            .I3(\data_in[0] [6]), .O(n13137));
    defparam i7_4_lut_adj_2325.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_4_lut_adj_2326 (.I0(\data_in[1] [3]), .I1(\data_in[1] [6]), 
            .I2(\data_in[2] [5]), .I3(\data_in[2] [0]), .O(n12_adj_5743));
    defparam i1_4_lut_adj_2326.LUT_INIT = 16'hdfff;
    SB_LUT4 i7_4_lut_adj_2327 (.I0(\data_in[3] [7]), .I1(n13137), .I2(n13085), 
            .I3(n13060), .O(n18_adj_5744));
    defparam i7_4_lut_adj_2327.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_2328 (.I0(\data_in[2] [6]), .I1(\data_in[3] [2]), 
            .I2(\data_in[0] [5]), .I3(\data_in[0] [1]), .O(n19_adj_5745));
    defparam i8_4_lut_adj_2328.LUT_INIT = 16'hbfff;
    SB_LUT4 i10_4_lut_adj_2329 (.I0(n19_adj_5745), .I1(\data_in[1] [2]), 
            .I2(n18_adj_5744), .I3(n12_adj_5743), .O(n1456));
    defparam i10_4_lut_adj_2329.LUT_INIT = 16'hfffb;
    SB_LUT4 i6_4_lut_adj_2330 (.I0(\data_in[3] [0]), .I1(n13060), .I2(n12987), 
            .I3(\data_in[2] [2]), .O(n16_adj_5746));
    defparam i6_4_lut_adj_2330.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_2331 (.I0(\data_in[2] [4]), .I1(\data_in[1] [0]), 
            .I2(\data_in[1] [5]), .I3(\data_in[0] [3]), .O(n17_adj_5747));
    defparam i7_4_lut_adj_2331.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_2332 (.I0(n17_adj_5747), .I1(\data_in[0] [6]), 
            .I2(n16_adj_5746), .I3(\data_in[1] [4]), .O(n1459));
    defparam i9_4_lut_adj_2332.LUT_INIT = 16'hfbff;
    SB_DFFE \data_out_frame_27[[6__4779  (.Q(\data_out_frame[27] [6]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__6__N_2730));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_adj_2333 (.I0(n1459), .I1(n1456), .I2(\FRAME_MATCHER.i_31__N_3743 ), 
            .I3(GND_net), .O(n13026));   // verilog/coms.v(146[4] 292[11])
    defparam i2_3_lut_adj_2333.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_2334 (.I0(n26229), .I1(n28985), .I2(\data_in_frame[21] [5]), 
            .I3(\data_in_frame[23][7] ), .O(n30187));
    defparam i1_4_lut_adj_2334.LUT_INIT = 16'h9669;
    SB_LUT4 i2_4_lut_adj_2335 (.I0(n21888), .I1(n47), .I2(\FRAME_MATCHER.i_31__N_3745 ), 
            .I3(n21483), .O(n6_adj_5748));   // verilog/coms.v(146[4] 292[11])
    defparam i2_4_lut_adj_2335.LUT_INIT = 16'hccec;
    SB_LUT4 i3_4_lut_adj_2336 (.I0(n18967), .I1(n6_adj_5748), .I2(data_out_frame_22__7__N_3121), 
            .I3(\FRAME_MATCHER.state_31__N_3846 [3]), .O(n36353));   // verilog/coms.v(146[4] 292[11])
    defparam i3_4_lut_adj_2336.LUT_INIT = 16'heefe;
    SB_LUT4 i1_4_lut_adj_2337 (.I0(n30187), .I1(n30135), .I2(n32273), 
            .I3(n32271), .O(n32279));
    defparam i1_4_lut_adj_2337.LUT_INIT = 16'h1000;
    SB_DFFE data_in_frame_0___i32 (.Q(\data_in_frame[3] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n16567));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut (.I0(byte_transmit_counter[3]), 
            .I1(n34446), .I2(n34447), .I3(byte_transmit_counter[4]), .O(n36328));
    defparam byte_transmit_counter_3__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_4_lut_adj_2338 (.I0(n25812), .I1(n13817), .I2(\data_out_frame[14] [3]), 
            .I3(n30093), .O(n25446));
    defparam i1_2_lut_4_lut_adj_2338.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_2339 (.I0(n25812), .I1(n13817), .I2(\data_out_frame[14] [3]), 
            .I3(n25924), .O(n11263));
    defparam i1_2_lut_4_lut_adj_2339.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2340 (.I0(n29127), .I1(n29000), .I2(\data_in_frame[21] [2]), 
            .I3(\data_in_frame[23][3] ), .O(n32433));
    defparam i1_4_lut_adj_2340.LUT_INIT = 16'h6996;
    SB_DFFR \FRAME_MATCHER.state_FSM_i1  (.Q(Kp_23__N_1510), .C(clk16MHz), 
            .D(n1573), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFER setpoint_i0_i0 (.Q(setpoint[0]), .C(clk16MHz), .E(n14392), 
            .D(n3304[0]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_4_lut_adj_2341 (.I0(n28732), .I1(n29081), .I2(n28720), 
            .I3(\data_out_frame[5] [4]), .O(n13697));   // verilog/coms.v(72[16:27])
    defparam i2_3_lut_4_lut_adj_2341.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2342 (.I0(n28732), .I1(n29081), .I2(\data_out_frame[14] [4]), 
            .I3(n28850), .O(n13348));   // verilog/coms.v(72[16:27])
    defparam i2_3_lut_4_lut_adj_2342.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2343 (.I0(\data_in_frame[23][1] ), .I1(n32425), 
            .I2(n28769), .I3(n28844), .O(n32283));
    defparam i1_4_lut_adj_2343.LUT_INIT = 16'h4812;
    SB_LUT4 i1_4_lut_adj_2344 (.I0(n32283), .I1(n32433), .I2(n32279), 
            .I3(n28994), .O(n32285));
    defparam i1_4_lut_adj_2344.LUT_INIT = 16'h2080;
    SB_LUT4 i1_4_lut_adj_2345 (.I0(n28884), .I1(n29124), .I2(\data_in_frame[18] [3]), 
            .I3(\data_in_frame[22][7] ), .O(n32359));
    defparam i1_4_lut_adj_2345.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2346 (.I0(n28865), .I1(\data_in_frame[20] [1]), 
            .I2(\data_in_frame[18] [1]), .I3(\data_in_frame[22][3] ), .O(n32347));
    defparam i1_4_lut_adj_2346.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_2347 (.I0(n26154), .I1(n12722), .I2(\data_in_frame[19] [7]), 
            .I3(GND_net), .O(n32353));
    defparam i1_3_lut_adj_2347.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i66 (.Q(\data_in_frame[8] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15907));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i65 (.Q(\data_in_frame[8] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15904));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2348 (.I0(n32285), .I1(n30758), .I2(n28994), 
            .I3(\data_in_frame[23][2] ), .O(n32287));
    defparam i1_4_lut_adj_2348.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_2349 (.I0(n29121), .I1(n28769), .I2(n25185), 
            .I3(n32359), .O(n30769));
    defparam i1_4_lut_adj_2349.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2350 (.I0(n12722), .I1(n32353), .I2(n32347), 
            .I3(n28844), .O(n30088));
    defparam i1_4_lut_adj_2350.LUT_INIT = 16'h9669;
    SB_DFFE data_in_frame_0___i31 (.Q(\data_in_frame[3] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n16564));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i30 (.Q(\data_in_frame[3] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n16561));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_3_lut_adj_2351 (.I0(n13348), .I1(n13988), .I2(n25446), 
            .I3(GND_net), .O(n13394));
    defparam i1_2_lut_3_lut_adj_2351.LUT_INIT = 16'h9696;
    SB_LUT4 n36328_bdd_4_lut (.I0(n36328), .I1(n36247), .I2(n7_adj_5749), 
            .I3(byte_transmit_counter[4]), .O(tx_data[4]));
    defparam n36328_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE data_in_frame_0___i64 (.Q(\data_in_frame[7] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15901));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i63 (.Q(\data_in_frame[7] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15898));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_3_lut_adj_2352 (.I0(n30758), .I1(n28769), .I2(\data_in_frame[23][0] ), 
            .I3(GND_net), .O(n30711));
    defparam i1_3_lut_adj_2352.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_2353 (.I0(n30711), .I1(n30088), .I2(n30769), 
            .I3(n32287), .O(Kp_23__N_374));
    defparam i1_4_lut_adj_2353.LUT_INIT = 16'h0100;
    SB_LUT4 i2_3_lut_4_lut_adj_2354 (.I0(n26079), .I1(\data_out_frame[21] [1]), 
            .I2(n25257), .I3(n25203), .O(data_out_frame_27__4__N_2848));
    defparam i2_3_lut_4_lut_adj_2354.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i62 (.Q(\data_in_frame[7] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15895));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i29 (.Q(\data_in_frame[3] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n16558));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30343_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34276));   // verilog/coms.v(155[12:15])
    defparam i30343_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE \data_out_frame_26[[3__4790  (.Q(\data_out_frame[26] [3]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__3__N_3082));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30191_2_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34277));   // verilog/coms.v(155[12:15])
    defparam i30191_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_2355 (.I0(\data_in_frame[5] [3]), .I1(\data_in_frame[7] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n32629));   // verilog/coms.v(86[17:63])
    defparam i1_2_lut_adj_2355.LUT_INIT = 16'h6666;
    SB_LUT4 i30192_2_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34278));   // verilog/coms.v(155[12:15])
    defparam i30192_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30193_2_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34279));   // verilog/coms.v(155[12:15])
    defparam i30193_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30194_2_lut (.I0(\FRAME_MATCHER.i [5]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34280));   // verilog/coms.v(155[12:15])
    defparam i30194_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30195_2_lut (.I0(\FRAME_MATCHER.i [6]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34281));   // verilog/coms.v(155[12:15])
    defparam i30195_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_2356 (.I0(\data_in_frame[3] [3]), .I1(n29069), 
            .I2(n32629), .I3(\data_in_frame[5] [4]), .O(n25191));   // verilog/coms.v(86[17:63])
    defparam i1_4_lut_adj_2356.LUT_INIT = 16'h6996;
    SB_LUT4 i30196_2_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34282));   // verilog/coms.v(155[12:15])
    defparam i30196_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30197_2_lut (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34283));   // verilog/coms.v(155[12:15])
    defparam i30197_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30717_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34266));   // verilog/coms.v(155[12:15])
    defparam i30717_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30149_2_lut (.I0(\FRAME_MATCHER.i [10]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34267));   // verilog/coms.v(155[12:15])
    defparam i30149_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30151_2_lut (.I0(\FRAME_MATCHER.i [11]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34268));   // verilog/coms.v(155[12:15])
    defparam i30151_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30152_2_lut (.I0(\FRAME_MATCHER.i [12]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34269));   // verilog/coms.v(155[12:15])
    defparam i30152_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_2357 (.I0(Kp_23__N_634), .I1(n28817), .I2(\data_in_frame[6] [3]), 
            .I3(\data_in_frame[8] [5]), .O(n13884));   // verilog/coms.v(76[16:43])
    defparam i1_4_lut_adj_2357.LUT_INIT = 16'h6996;
    SB_LUT4 i30154_2_lut (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34270));   // verilog/coms.v(155[12:15])
    defparam i30154_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30198_2_lut (.I0(\FRAME_MATCHER.i [14]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34284));   // verilog/coms.v(155[12:15])
    defparam i30198_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30442_2_lut (.I0(\FRAME_MATCHER.i [15]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34286));   // verilog/coms.v(155[12:15])
    defparam i30442_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30201_2_lut (.I0(\FRAME_MATCHER.i [16]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34287));   // verilog/coms.v(155[12:15])
    defparam i30201_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30199_2_lut (.I0(\FRAME_MATCHER.i [17]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34288));   // verilog/coms.v(155[12:15])
    defparam i30199_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30229_2_lut (.I0(\FRAME_MATCHER.i [18]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34289));   // verilog/coms.v(155[12:15])
    defparam i30229_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut_adj_2358 (.I0(n28710), .I1(n13658), .I2(\data_in_frame[3] [1]), 
            .I3(GND_net), .O(n29069));   // verilog/coms.v(86[17:63])
    defparam i1_3_lut_adj_2358.LUT_INIT = 16'h9696;
    SB_LUT4 i30230_2_lut (.I0(\FRAME_MATCHER.i [19]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34290));   // verilog/coms.v(155[12:15])
    defparam i30230_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i28 (.Q(\data_in_frame[3] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16555));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30231_2_lut (.I0(\FRAME_MATCHER.i [20]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34291));   // verilog/coms.v(155[12:15])
    defparam i30231_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i27 (.Q(\data_in_frame[3] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n16552));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_26[[2__4791  (.Q(\data_out_frame[26] [2]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__2__N_3087));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30232_2_lut (.I0(\FRAME_MATCHER.i [21]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34292));   // verilog/coms.v(155[12:15])
    defparam i30232_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30656_2_lut (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34296));   // verilog/coms.v(155[12:15])
    defparam i30656_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE \data_out_frame_26[[1__4792  (.Q(\data_out_frame[26] [1]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__1__N_3092));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30243_2_lut (.I0(\FRAME_MATCHER.i [23]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34300));   // verilog/coms.v(155[12:15])
    defparam i30243_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30251_2_lut (.I0(\FRAME_MATCHER.i [24]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34301));   // verilog/coms.v(155[12:15])
    defparam i30251_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE \data_out_frame_26[[0__4793  (.Q(\data_out_frame[26] [0]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__0__N_3103));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[5__4780  (.Q(\data_out_frame[27] [5]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__5__N_2756));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[4__4781  (.Q(\data_out_frame[27] [4]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__4__N_2848));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[3__4782  (.Q(\data_out_frame[27] [3]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__3__N_2871));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i61 (.Q(\data_in_frame[7] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15892));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i26 (.Q(\data_in_frame[3] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16549));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30209_2_lut (.I0(\FRAME_MATCHER.i [25]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34306));   // verilog/coms.v(155[12:15])
    defparam i30209_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30302_2_lut (.I0(\FRAME_MATCHER.i [26]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34334));   // verilog/coms.v(155[12:15])
    defparam i30302_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE \data_out_frame_27[[2__4783  (.Q(\data_out_frame[27] [2]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__2__N_2957));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[1__4784  (.Q(\data_out_frame[27] [1]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__1__N_2977));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_27[[0__4785  (.Q(\data_out_frame[27] [0]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_27__0__N_3042));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_26[[7__4786  (.Q(\data_out_frame[26] [7]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__7__N_3053));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i25 (.Q(\data_in_frame[3] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n16546));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i60 (.Q(\data_in_frame[7] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15889));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2359 (.I0(n29196), .I1(n29069), .I2(n28837), 
            .I3(n32511), .O(n25146));   // verilog/coms.v(86[17:63])
    defparam i1_4_lut_adj_2359.LUT_INIT = 16'h6996;
    SB_LUT4 i30320_2_lut (.I0(\FRAME_MATCHER.i [27]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34339));   // verilog/coms.v(155[12:15])
    defparam i30320_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_2360 (.I0(n29187), .I1(n14074), .I2(n32573), 
            .I3(n28670), .O(n11503));   // verilog/coms.v(71[16:27])
    defparam i1_4_lut_adj_2360.LUT_INIT = 16'h6996;
    SB_LUT4 i30646_2_lut (.I0(\FRAME_MATCHER.i [28]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34351));   // verilog/coms.v(155[12:15])
    defparam i30646_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i59 (.Q(\data_in_frame[7] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15886));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE \data_out_frame_26[[5__4788  (.Q(\data_out_frame[26] [5]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__5__N_3072));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2361 (.I0(n28954), .I1(Kp_23__N_631), .I2(\data_in_frame[6][2] ), 
            .I3(\data_in_frame[8] [3]), .O(n13881));   // verilog/coms.v(74[16:42])
    defparam i1_4_lut_adj_2361.LUT_INIT = 16'h6996;
    SB_LUT4 i30354_2_lut (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34354));   // verilog/coms.v(155[12:15])
    defparam i30354_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE \data_out_frame_26[[4__4789  (.Q(\data_out_frame[26] [4]), .C(clk16MHz), 
            .E(n8595), .D(data_out_frame_26__4__N_3077));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30392_2_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34364));   // verilog/coms.v(155[12:15])
    defparam i30392_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i58 (.Q(\data_in_frame[7] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15883));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30393_2_lut (.I0(\FRAME_MATCHER.i [31]), .I1(\FRAME_MATCHER.i_31__N_3743 ), 
            .I2(GND_net), .I3(GND_net), .O(n34365));   // verilog/coms.v(155[12:15])
    defparam i30393_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i10951_1_lut (.I0(n2405), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n14823));
    defparam i10951_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE data_in_frame_0___i57 (.Q(\data_in_frame[7] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15880));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_3_lut_adj_2362 (.I0(Kp_23__N_640), .I1(n28817), .I2(\data_in_frame[6] [5]), 
            .I3(GND_net), .O(Kp_23__N_736));   // verilog/coms.v(76[16:43])
    defparam i1_3_lut_adj_2362.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i56 (.Q(\data_in_frame[6][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n28015));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i55 (.Q(\data_in_frame[6][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n28019));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i54 (.Q(\data_in_frame[6] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15873));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i53 (.Q(\data_in_frame[6][4] ), .C(clk16MHz), 
            .E(VCC_net), .D(n28023));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i52 (.Q(\data_in_frame[6] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15867));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2363 (.I0(n14065), .I1(Kp_23__N_640), .I2(n13297), 
            .I3(\data_in_frame[4] [5]), .O(n28840));
    defparam i1_4_lut_adj_2363.LUT_INIT = 16'h6996;
    SB_LUT4 equal_1578_i8_2_lut (.I0(Kp_23__N_755), .I1(\data_in_frame[8] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_5727));   // verilog/coms.v(232[9:81])
    defparam equal_1578_i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2364 (.I0(\data_in_frame[4] [6]), .I1(\data_in_frame[7] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n32467));
    defparam i1_2_lut_adj_2364.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2365 (.I0(n13287), .I1(n28856), .I2(Kp_23__N_522), 
            .I3(n32467), .O(n13900));
    defparam i1_4_lut_adj_2365.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32007 (.I0(byte_transmit_counter[3]), 
            .I1(n34430), .I2(n34431), .I3(byte_transmit_counter[4]), .O(n36322));
    defparam byte_transmit_counter_3__bdd_4_lut_32007.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_2366 (.I0(Kp_23__N_736), .I1(\data_in_frame[8] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n13831));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2366.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2367 (.I0(n28694), .I1(n29061), .I2(Kp_23__N_605), 
            .I3(\data_in_frame[3] [5]), .O(n30674));
    defparam i1_4_lut_adj_2367.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2368 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[2] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n28670));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_adj_2368.LUT_INIT = 16'h6666;
    SB_LUT4 i28639_3_lut (.I0(\data_out_frame[6] [2]), .I1(\data_out_frame[7] [2]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32943));
    defparam i28639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28640_4_lut (.I0(n32943), .I1(byte_transmit_counter[1]), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[0]), .O(n32944));
    defparam i28640_4_lut.LUT_INIT = 16'ha0a3;
    SB_LUT4 i1_3_lut_adj_2369 (.I0(n32531), .I1(Kp_23__N_534), .I2(\data_in_frame[1] [3]), 
            .I3(GND_net), .O(n28710));   // verilog/coms.v(86[17:63])
    defparam i1_3_lut_adj_2369.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i51 (.Q(\data_in_frame[6][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15862));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i50 (.Q(\data_in_frame[6][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15859));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i49 (.Q(\data_in_frame[6][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15856));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i28638_3_lut (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[5] [2]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32942));
    defparam i28638_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2370 (.I0(\data_in_frame[2] [6]), .I1(\data_in_frame[5] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n32509));   // verilog/coms.v(86[17:63])
    defparam i1_2_lut_adj_2370.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i48 (.Q(\data_in_frame[5] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15853));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i44 (.Q(\data_in_frame[5] [3]), .C(clk16MHz), 
           .D(n15781));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i45 (.Q(\data_in_frame[5] [4]), .C(clk16MHz), 
           .D(n15785));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i47 (.Q(\data_in_frame[5] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15847));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2371 (.I0(\data_in_frame[3] [0]), .I1(n13375), 
            .I2(\data_in_frame[0] [6]), .I3(\data_in_frame[5] [0]), .O(n14191));
    defparam i1_4_lut_adj_2371.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2372 (.I0(n13375), .I1(n28670), .I2(GND_net), 
            .I3(GND_net), .O(n13658));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_adj_2372.LUT_INIT = 16'h6666;
    SB_DFF control_mode_i0_i1 (.Q(control_mode[1]), .C(clk16MHz), .D(n15844));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i2 (.Q(control_mode[2]), .C(clk16MHz), .D(n15843));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2373 (.I0(n13658), .I1(n14191), .I2(n13297), 
            .I3(n32509), .O(n28856));   // verilog/coms.v(78[16:27])
    defparam i1_4_lut_adj_2373.LUT_INIT = 16'h6996;
    SB_DFF control_mode_i0_i3 (.Q(control_mode[3]), .C(clk16MHz), .D(n15842));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i4 (.Q(control_mode[4]), .C(clk16MHz), .D(n15841));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i5 (.Q(control_mode[5]), .C(clk16MHz), .D(n15840));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i6 (.Q(control_mode[6]), .C(clk16MHz), .D(n15839));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i7 (.Q(control_mode[7]), .C(clk16MHz), .D(n15838));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i46 (.Q(\data_in_frame[5] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15835));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i24 (.Q(\data_in_frame[2] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n16543));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 n36322_bdd_4_lut (.I0(n36322), .I1(n35477), .I2(n7_adj_5750), 
            .I3(byte_transmit_counter[4]), .O(tx_data[6]));
    defparam n36322_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 data_in_frame_0__5__I_0_2_lut (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[0] [4]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_522));   // verilog/coms.v(77[16:27])
    defparam data_in_frame_0__5__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_2374 (.I0(\data_in_frame[5] [4]), .I1(n28650), 
            .I2(\data_in_frame[5] [5]), .I3(GND_net), .O(n13281));
    defparam i1_3_lut_adj_2374.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2375 (.I0(\data_in_frame[0] [6]), .I1(\data_in_frame[0] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n28800));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_adj_2375.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_2_i11_3_lut (.I0(\data_out_frame[12] [2]), 
            .I1(\data_out_frame[13] [2]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5751));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_2_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28618_4_lut (.I0(n11_adj_5751), .I1(\data_out_frame[14] [2]), 
            .I2(byte_transmit_counter[1]), .I3(byte_transmit_counter[0]), 
            .O(n32922));
    defparam i28618_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31107_3_lut (.I0(n36283), .I1(n32922), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35411));
    defparam i31107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30307_4_lut (.I0(\data_out_frame[26] [2]), .I1(n9537), .I2(\data_out_frame[27] [2]), 
            .I3(byte_transmit_counter[0]), .O(n34451));
    defparam i30307_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_2_i21_4_lut (.I0(\data_out_frame[21] [2]), 
            .I1(\data_out_frame[22] [2]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5752));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_2_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1_4_lut_adj_2376 (.I0(n28800), .I1(n28736), .I2(n28687), 
            .I3(\data_in_frame[0] [5]), .O(Kp_23__N_510));   // verilog/coms.v(71[16:27])
    defparam i1_4_lut_adj_2376.LUT_INIT = 16'h6996;
    SB_LUT4 i30258_2_lut (.I0(n21_adj_5752), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34450));
    defparam i30258_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_2377 (.I0(\data_in_frame[2] [0]), .I1(n13752), 
            .I2(\data_in_frame[4] [3]), .I3(GND_net), .O(n28755));   // verilog/coms.v(74[16:42])
    defparam i1_3_lut_adj_2377.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2378 (.I0(\data_in_frame[5] [2]), .I1(\data_in_frame[5] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n29044));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_adj_2378.LUT_INIT = 16'h6666;
    SB_LUT4 i28642_3_lut (.I0(\data_out_frame[6] [3]), .I1(\data_out_frame[7] [3]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32946));
    defparam i28642_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28643_4_lut (.I0(n32946), .I1(byte_transmit_counter[1]), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[0]), .O(n32947));
    defparam i28643_4_lut.LUT_INIT = 16'hafa3;
    SB_LUT4 i1_2_lut_adj_2379 (.I0(\data_in_frame[3] [7]), .I1(\data_in_frame[3] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n32137));
    defparam i1_2_lut_adj_2379.LUT_INIT = 16'h6666;
    SB_LUT4 i28641_3_lut (.I0(\data_out_frame[4] [3]), .I1(\data_out_frame[5] [3]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32945));
    defparam i28641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2380 (.I0(\data_in_frame[3] [1]), .I1(n32137), 
            .I2(\data_in_frame[3] [3]), .I3(\data_in_frame[4] [2]), .O(n32141));
    defparam i1_4_lut_adj_2380.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2381 (.I0(n28797), .I1(n32141), .I2(Kp_23__N_534), 
            .I3(n29044), .O(n32147));
    defparam i1_4_lut_adj_2381.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2382 (.I0(n29075), .I1(n28755), .I2(n32147), 
            .I3(Kp_23__N_510), .O(n32153));
    defparam i1_4_lut_adj_2382.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_2383 (.I0(n32153), .I1(n29058), .I2(n13281), 
            .I3(n29196), .O(n32159));
    defparam i1_4_lut_adj_2383.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_2384 (.I0(n32159), .I1(n28856), .I2(n28760), 
            .I3(GND_net), .O(n25357));
    defparam i1_3_lut_adj_2384.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2385 (.I0(n13535), .I1(n28837), .I2(\data_in_frame[3] [3]), 
            .I3(\data_in_frame[5] [5]), .O(n28820));
    defparam i1_4_lut_adj_2385.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i23 (.Q(\data_in_frame[2] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n16540));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i22 (.Q(\data_in_frame[2] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n16537));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i21 (.Q(\data_in_frame[2] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n28173));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2386 (.I0(n13312), .I1(n25357), .I2(n28714), 
            .I3(\data_in_frame[6][0] ), .O(n29061));   // verilog/coms.v(86[17:28])
    defparam i1_4_lut_adj_2386.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut_adj_2387 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[0] [5]), 
            .I2(ID[7]), .I3(ID[5]), .O(n6_adj_5753));   // verilog/coms.v(234[12:32])
    defparam i2_4_lut_adj_2387.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_2388 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [1]), 
            .I2(ID[3]), .I3(ID[1]), .O(n5_adj_5754));   // verilog/coms.v(234[12:32])
    defparam i1_4_lut_adj_2388.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_2389 (.I0(\data_in_frame[0] [0]), .I1(n5_adj_5754), 
            .I2(ID[0]), .I3(n6_adj_5753), .O(n6_adj_5755));   // verilog/coms.v(234[12:32])
    defparam i1_4_lut_adj_2389.LUT_INIT = 16'hffde;
    SB_LUT4 i2_4_lut_adj_2390 (.I0(\data_in_frame[0] [2]), .I1(\data_in_frame[0] [4]), 
            .I2(ID[2]), .I3(ID[4]), .O(n7_adj_5756));   // verilog/coms.v(234[12:32])
    defparam i2_4_lut_adj_2390.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_2391 (.I0(n7_adj_5756), .I1(\data_in_frame[0] [6]), 
            .I2(n6_adj_5755), .I3(ID[6]), .O(n30873));   // verilog/coms.v(234[12:32])
    defparam i4_4_lut_adj_2391.LUT_INIT = 16'hfbfe;
    SB_LUT4 i1_2_lut_3_lut_adj_2392 (.I0(n11503), .I1(n11507), .I2(\data_in_frame[8] [1]), 
            .I3(GND_net), .O(n28847));
    defparam i1_2_lut_3_lut_adj_2392.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2393 (.I0(n13768), .I1(n13312), .I2(n14074), 
            .I3(n32541), .O(n14052));   // verilog/coms.v(71[16:27])
    defparam i1_4_lut_adj_2393.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2394 (.I0(n30674), .I1(\data_in_frame[8] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n28892));
    defparam i1_2_lut_adj_2394.LUT_INIT = 16'h9999;
    SB_LUT4 i2_3_lut_adj_2395 (.I0(n29061), .I1(\data_in_frame[7] [7]), 
            .I2(n28820), .I3(GND_net), .O(n28853));
    defparam i2_3_lut_adj_2395.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2396 (.I0(\data_in_frame[0] [2]), .I1(\data_in_frame[0] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n28687));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_adj_2396.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i2 (.Q(\data_in[0] [1]), .C(clk16MHz), .D(n16533));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_3_lut_adj_2397 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [2]), 
            .I2(\data_in_frame[2] [4]), .I3(GND_net), .O(n13297));   // verilog/coms.v(97[12:25])
    defparam i1_3_lut_adj_2397.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_adj_2398 (.I0(\data_in_frame[0] [1]), .I1(\data_in_frame[0] [0]), 
            .I2(\data_in_frame[2] [2]), .I3(GND_net), .O(n13752));   // verilog/coms.v(76[16:43])
    defparam i1_3_lut_adj_2398.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2399 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n28736));   // verilog/coms.v(166[9:87])
    defparam i1_2_lut_adj_2399.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2400 (.I0(\data_in_frame[4] [4]), .I1(n13752), 
            .I2(GND_net), .I3(GND_net), .O(n14065));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_adj_2400.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2401 (.I0(\data_in_frame[6][7] ), .I1(n13287), 
            .I2(GND_net), .I3(GND_net), .O(n13768));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_adj_2401.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_2402 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1] [3]), 
            .I2(\data_in_frame[3] [4]), .I3(GND_net), .O(n13535));
    defparam i1_3_lut_adj_2402.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2403 (.I0(n13535), .I1(\data_in_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n28694));
    defparam i1_2_lut_adj_2403.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2404 (.I0(\data_in_frame[3] [6]), .I1(\data_in_frame[6][0] ), 
            .I2(GND_net), .I3(GND_net), .O(n13834));   // verilog/coms.v(76[16:27])
    defparam i1_2_lut_adj_2404.LUT_INIT = 16'h6666;
    SB_LUT4 data_in_frame_1__7__I_0_2_lut (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[1] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_534));   // verilog/coms.v(79[16:27])
    defparam data_in_frame_1__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2405 (.I0(\data_in_frame[2] [1]), .I1(n13327), 
            .I2(\data_in_frame[0] [0]), .I3(\data_in_frame[4] [1]), .O(n29097));   // verilog/coms.v(79[16:27])
    defparam i1_4_lut_adj_2405.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2406 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[1] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n32531));
    defparam i1_2_lut_adj_2406.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i3 (.Q(\data_in[0] [2]), .C(clk16MHz), .D(n16532));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i4 (.Q(\data_in[0] [3]), .C(clk16MHz), .D(n16531));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i5 (.Q(\data_in[0] [4]), .C(clk16MHz), .D(n16530));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i6 (.Q(\data_in[0] [5]), .C(clk16MHz), .D(n16529));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i7 (.Q(\data_in[0] [6]), .C(clk16MHz), .D(n16528));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i8 (.Q(\data_in[0] [7]), .C(clk16MHz), .D(n16527));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i9 (.Q(\data_in[1] [0]), .C(clk16MHz), .D(n16526));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i10 (.Q(\data_in[1] [1]), .C(clk16MHz), .D(n16525));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i11 (.Q(\data_in[1] [2]), .C(clk16MHz), .D(n16524));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i12 (.Q(\data_in[1] [3]), .C(clk16MHz), .D(n16523));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i13 (.Q(\data_in[1] [4]), .C(clk16MHz), .D(n16522));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2407 (.I0(\data_in_frame[4] [1]), .I1(n32531), 
            .I2(\data_in_frame[3] [6]), .I3(\data_in_frame[4] [0]), .O(n28797));   // verilog/coms.v(79[16:27])
    defparam i1_4_lut_adj_2407.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i14 (.Q(\data_in[1] [5]), .C(clk16MHz), .D(n16521));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2408 (.I0(\data_in_frame[1] [7]), .I1(n28797), 
            .I2(\data_in_frame[1] [6]), .I3(\data_in_frame[2] [0]), .O(Kp_23__N_631));   // verilog/coms.v(79[16:27])
    defparam i1_4_lut_adj_2408.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i15 (.Q(\data_in[1] [6]), .C(clk16MHz), .D(n16520));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i16 (.Q(\data_in[1] [7]), .C(clk16MHz), .D(n16519));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i17 (.Q(\data_in[2] [0]), .C(clk16MHz), .D(n16518));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i18 (.Q(\data_in[2] [1]), .C(clk16MHz), .D(n16517));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i19 (.Q(\data_in[2] [2]), .C(clk16MHz), .D(n16516));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i20 (.Q(\data_in[2] [3]), .C(clk16MHz), .D(n16515));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i21 (.Q(\data_in[2] [4]), .C(clk16MHz), .D(n16514));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i22 (.Q(\data_in[2] [5]), .C(clk16MHz), .D(n16513));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i23 (.Q(\data_in[2] [6]), .C(clk16MHz), .D(n16512));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 data_in_frame_1__4__I_0_2_lut (.I0(\data_in_frame[1] [4]), .I1(\data_in_frame[1] [3]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_605));   // verilog/coms.v(76[16:27])
    defparam data_in_frame_1__4__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2409 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n13866));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_adj_2409.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2410 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n28763));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_adj_2410.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i24 (.Q(\data_in[2] [7]), .C(clk16MHz), .D(n16511));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2411 (.I0(\data_in_frame[1] [6]), .I1(\data_in_frame[4] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n32535));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_adj_2411.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i25 (.Q(\data_in[3] [0]), .C(clk16MHz), .D(n16510));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_4_lut_adj_2412 (.I0(n28763), .I1(n13866), .I2(Kp_23__N_605), 
            .I3(n32535), .O(Kp_23__N_477));   // verilog/coms.v(79[16:27])
    defparam i1_4_lut_adj_2412.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i26 (.Q(\data_in[3] [1]), .C(clk16MHz), .D(n16509));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i27 (.Q(\data_in[3] [2]), .C(clk16MHz), .D(n16508));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i28 (.Q(\data_in[3] [3]), .C(clk16MHz), .D(n16507));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i29 (.Q(\data_in[3] [4]), .C(clk16MHz), .D(n16506));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i30 (.Q(\data_in[3] [5]), .C(clk16MHz), .D(n16505));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2413 (.I0(\data_in_frame[6][1] ), .I1(Kp_23__N_477), 
            .I2(GND_net), .I3(GND_net), .O(n28954));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2413.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i31 (.Q(\data_in[3] [6]), .C(clk16MHz), .D(n16504));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i20 (.Q(\data_in_frame[2] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16501));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i19 (.Q(\data_in_frame[2] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n16498));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32002 (.I0(byte_transmit_counter[3]), 
            .I1(n34437), .I2(n34438), .I3(byte_transmit_counter[4]), .O(n36316));
    defparam byte_transmit_counter_3__bdd_4_lut_32002.LUT_INIT = 16'he4aa;
    SB_DFFE data_in_frame_0___i18 (.Q(\data_in_frame[2] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16495));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i17 (.Q(\data_in_frame[2] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n16492));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i16 (.Q(\data_in_frame[1] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n16489));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2414 (.I0(\data_in_frame[6][6] ), .I1(\data_in_frame[7] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n32547));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2414.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2415 (.I0(n13768), .I1(n28760), .I2(n14065), 
            .I3(n32547), .O(n13713));   // verilog/coms.v(74[16:42])
    defparam i1_4_lut_adj_2415.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_2416 (.I0(n13535), .I1(n13281), .I2(\data_in_frame[7] [6]), 
            .I3(GND_net), .O(n11507));
    defparam i1_3_lut_adj_2416.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_2417 (.I0(n28717), .I1(n29115), .I2(Kp_23__N_477), 
            .I3(\data_in_frame[8] [1]), .O(n10_adj_5757));
    defparam i4_4_lut_adj_2417.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2418 (.I0(n11507), .I1(n13462), .I2(n13713), 
            .I3(n13456), .O(n31048));
    defparam i3_4_lut_adj_2418.LUT_INIT = 16'h0002;
    SB_LUT4 i4_4_lut_adj_2419 (.I0(n28853), .I1(n28892), .I2(n14052), 
            .I3(n30873), .O(n16_adj_5758));
    defparam i4_4_lut_adj_2419.LUT_INIT = 16'h0008;
    SB_DFFE data_in_frame_0___i15 (.Q(\data_in_frame[1] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n16486));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i14 (.Q(\data_in_frame[1] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n16483));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i7_4_lut_adj_2420 (.I0(n13831), .I1(n13900), .I2(n31048), 
            .I3(n8_adj_5727), .O(n19_adj_5759));
    defparam i7_4_lut_adj_2420.LUT_INIT = 16'h0010;
    SB_LUT4 i28362_4_lut (.I0(n28714), .I1(n13881), .I2(n10_adj_5757), 
            .I3(Kp_23__N_637), .O(n32656));
    defparam i28362_4_lut.LUT_INIT = 16'hedde;
    SB_LUT4 i10_4_lut_adj_2421 (.I0(n19_adj_5759), .I1(n11503), .I2(n16_adj_5758), 
            .I3(n25146), .O(n22));
    defparam i10_4_lut_adj_2421.LUT_INIT = 16'h8000;
    SB_LUT4 i11_4_lut (.I0(n13884), .I1(n22), .I2(n32656), .I3(n25191), 
            .O(n31044));
    defparam i11_4_lut.LUT_INIT = 16'h0004;
    SB_DFF data_in_frame_0___i85 (.Q(\data_in_frame[10] [4]), .C(clk16MHz), 
           .D(n15964));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i31872_4_lut (.I0(\FRAME_MATCHER.i_31__N_3747 ), .I1(Kp_23__N_374), 
            .I2(Kp_23__N_1510), .I3(n31044), .O(n14392));
    defparam i31872_4_lut.LUT_INIT = 16'hca40;
    SB_LUT4 i2_3_lut_4_lut_adj_2422 (.I0(n11503), .I1(n11507), .I2(Kp_23__N_847), 
            .I3(\data_in_frame[10] [0]), .O(n25696));
    defparam i2_3_lut_4_lut_adj_2422.LUT_INIT = 16'h6996;
    SB_LUT4 i5_2_lut_adj_2423 (.I0(\FRAME_MATCHER.i [18]), .I1(\FRAME_MATCHER.i [21]), 
            .I2(GND_net), .I3(GND_net), .O(n28));
    defparam i5_2_lut_adj_2423.LUT_INIT = 16'heeee;
    SB_DFF data_in_frame_0___i86 (.Q(\data_in_frame[10] [5]), .C(clk16MHz), 
           .D(n15967));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i87 (.Q(\data_in_frame[10] [6]), .C(clk16MHz), 
           .D(n15970));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i88 (.Q(\data_in_frame[10] [7]), .C(clk16MHz), 
           .D(n15973));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i89 (.Q(\data_in_frame[11][0] ), .C(clk16MHz), 
           .D(n15976));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i90 (.Q(\data_in_frame[11] [1]), .C(clk16MHz), 
           .D(n15979));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i15_4_lut_adj_2424 (.I0(\FRAME_MATCHER.i [17]), .I1(\FRAME_MATCHER.i [8]), 
            .I2(\FRAME_MATCHER.i [6]), .I3(\FRAME_MATCHER.i [5]), .O(n38));
    defparam i15_4_lut_adj_2424.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut_adj_2425 (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i [30]), 
            .I2(\FRAME_MATCHER.i [29]), .I3(\FRAME_MATCHER.i [24]), .O(n30922));
    defparam i3_4_lut_adj_2425.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_2426 (.I0(\FRAME_MATCHER.i [15]), .I1(n30922), 
            .I2(\FRAME_MATCHER.i [28]), .I3(\FRAME_MATCHER.i [26]), .O(n36_adj_5760));
    defparam i13_4_lut_adj_2426.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut_adj_2427 (.I0(\FRAME_MATCHER.i [11]), .I1(n38), .I2(n28), 
            .I3(\FRAME_MATCHER.i [16]), .O(n42_adj_5761));
    defparam i19_4_lut_adj_2427.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i [12]), 
            .I2(\FRAME_MATCHER.i [27]), .I3(\FRAME_MATCHER.i [20]), .O(n40));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(\FRAME_MATCHER.i [14]), .I1(n36_adj_5760), .I2(\FRAME_MATCHER.i [13]), 
            .I3(\FRAME_MATCHER.i [10]), .O(n41));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_2428 (.I0(\FRAME_MATCHER.i [23]), .I1(\FRAME_MATCHER.i [19]), 
            .I2(\FRAME_MATCHER.i [25]), .I3(\FRAME_MATCHER.i [7]), .O(n39));
    defparam i16_4_lut_adj_2428.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut (.I0(n39), .I1(n41), .I2(n40), .I3(n42_adj_5761), 
            .O(n13105));
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17797_4_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n13105), .I3(\FRAME_MATCHER.i [4]), .O(n4401));   // verilog/coms.v(251[9:58])
    defparam i17797_4_lut.LUT_INIT = 16'h3230;
    SB_DFF data_in_frame_0___i91 (.Q(\data_in_frame[11] [2]), .C(clk16MHz), 
           .D(n15982));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i432_2_lut (.I0(n4401), .I1(\FRAME_MATCHER.i_31__N_3748 ), .I2(GND_net), 
            .I3(GND_net), .O(n1573));   // verilog/coms.v(146[4] 292[11])
    defparam i432_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_in_frame_0___i92 (.Q(\data_in_frame[11] [3]), .C(clk16MHz), 
           .D(n15985));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i93 (.Q(\data_in_frame[11][4] ), .C(clk16MHz), 
           .D(n15988));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i94 (.Q(\data_in_frame[11]_c [5]), .C(clk16MHz), 
           .D(n15991));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i13 (.Q(\data_in_frame[1] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n16470));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i12 (.Q(\data_in_frame[1] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16467));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 add_911_9_lut (.I0(n28554), .I1(byte_transmit_counter[7]), .I2(GND_net), 
            .I3(n24321), .O(n28555)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_911_8_lut (.I0(n28554), .I1(byte_transmit_counter[6]), .I2(GND_net), 
            .I3(n24320), .O(n28561)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_911_8 (.CI(n24320), .I0(byte_transmit_counter[6]), .I1(GND_net), 
            .CO(n24321));
    SB_LUT4 add_911_7_lut (.I0(n28554), .I1(byte_transmit_counter[5]), .I2(GND_net), 
            .I3(n24319), .O(n28560)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_911_7 (.CI(n24319), .I0(byte_transmit_counter[5]), .I1(GND_net), 
            .CO(n24320));
    SB_LUT4 add_911_6_lut (.I0(n28554), .I1(byte_transmit_counter[4]), .I2(GND_net), 
            .I3(n24318), .O(n28559)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_6_lut.LUT_INIT = 16'h8228;
    SB_DFF data_in_0___i32 (.Q(\data_in[3] [7]), .C(clk16MHz), .D(n16466));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i95 (.Q(\data_in_frame[11] [6]), .C(clk16MHz), 
           .D(n15994));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i96 (.Q(\data_in_frame[11] [7]), .C(clk16MHz), 
           .D(n15997));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2429 (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(n28603), .I3(reset), .O(n28377));
    defparam i1_2_lut_3_lut_4_lut_adj_2429.LUT_INIT = 16'hfffd;
    SB_LUT4 i5829_2_lut (.I0(byte_transmit_counter[1]), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n9537));   // verilog/coms.v(107[34:55])
    defparam i5829_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_911_6 (.CI(n24318), .I0(byte_transmit_counter[4]), .I1(GND_net), 
            .CO(n24319));
    SB_LUT4 add_911_5_lut (.I0(n28554), .I1(byte_transmit_counter[3]), .I2(GND_net), 
            .I3(n24317), .O(n28558)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i30326_4_lut (.I0(\data_out_frame[26] [4]), .I1(n9537), .I2(\data_out_frame[27] [4]), 
            .I3(byte_transmit_counter[0]), .O(n34447));
    defparam i30326_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i21_4_lut (.I0(\data_out_frame[21] [4]), 
            .I1(\data_out_frame[22] [4]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5762));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i30678_2_lut (.I0(n21_adj_5762), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34446));
    defparam i30678_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_in_frame_0___i97 (.Q(\data_in_frame[12] [0]), .C(clk16MHz), 
           .D(n16000));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i98 (.Q(\data_in_frame[12] [1]), .C(clk16MHz), 
           .D(n16004));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i99 (.Q(\data_in_frame[12] [2]), .C(clk16MHz), 
           .D(n16007));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i100 (.Q(\data_in_frame[12][3] ), .C(clk16MHz), 
           .D(n16011));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i101 (.Q(\data_in_frame[12]_c [4]), .C(clk16MHz), 
           .D(n16014));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_adj_2430 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [0]), 
            .I2(n21683), .I3(GND_net), .O(n134));   // verilog/coms.v(153[9:50])
    defparam i2_3_lut_adj_2430.LUT_INIT = 16'hbfbf;
    SB_DFF data_in_frame_0___i102 (.Q(\data_in_frame[12][5] ), .C(clk16MHz), 
           .D(n16017));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i15874_3_lut (.I0(n14874), .I1(rx_data[4]), .I2(\data_in_frame[23] [4]), 
            .I3(GND_net), .O(n16340));   // verilog/coms.v(92[13:20])
    defparam i15874_3_lut.LUT_INIT = 16'he4e4;
    SB_DFF data_in_frame_0___i103 (.Q(\data_in_frame[12]_c [6]), .C(clk16MHz), 
           .D(n28233));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i104 (.Q(\data_in_frame[12][7] ), .C(clk16MHz), 
           .D(n16023));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i105 (.Q(\data_in_frame[13][0] ), .C(clk16MHz), 
           .D(n16026));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i106 (.Q(\data_in_frame[13]_c [1]), .C(clk16MHz), 
           .D(n28167));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 n36316_bdd_4_lut (.I0(n36316), .I1(n35475), .I2(n7_adj_5763), 
            .I3(byte_transmit_counter[4]), .O(tx_data[7]));
    defparam n36316_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_frame_0___i107 (.Q(\data_in_frame[13]_c [2]), .C(clk16MHz), 
           .D(n28127));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i108 (.Q(\data_in_frame[13] [3]), .C(clk16MHz), 
           .D(n16035));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i109 (.Q(\data_in_frame[13] [4]), .C(clk16MHz), 
           .D(n16038));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i110 (.Q(\data_in_frame[13]_c [5]), .C(clk16MHz), 
           .D(n16041));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i111 (.Q(\data_in_frame[13]_c [6]), .C(clk16MHz), 
           .D(n28129));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i112 (.Q(\data_in_frame[13]_c [7]), .C(clk16MHz), 
           .D(n28121));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i113 (.Q(\data_in_frame[14] [0]), .C(clk16MHz), 
           .D(n16050));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i114 (.Q(\data_in_frame[14] [1]), .C(clk16MHz), 
           .D(n16053));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i115 (.Q(\data_in_frame[14] [2]), .C(clk16MHz), 
           .D(n16056));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i116 (.Q(\data_in_frame[14] [3]), .C(clk16MHz), 
           .D(n16059));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i117 (.Q(\data_in_frame[14] [4]), .C(clk16MHz), 
           .D(n16062));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i118 (.Q(\data_in_frame[14] [5]), .C(clk16MHz), 
           .D(n28139));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i119 (.Q(\data_in_frame[14] [6]), .C(clk16MHz), 
           .D(n16068));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i120 (.Q(\data_in_frame[14] [7]), .C(clk16MHz), 
           .D(n16071));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i121 (.Q(\data_in_frame[15]_c [0]), .C(clk16MHz), 
           .D(n16439));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i122 (.Q(\data_in_frame[15][1] ), .C(clk16MHz), 
           .D(n16077));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i123 (.Q(\data_in_frame[15][2] ), .C(clk16MHz), 
           .D(n16080));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i124 (.Q(\data_in_frame[15] [3]), .C(clk16MHz), 
           .D(n16083));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i125 (.Q(\data_in_frame[15] [4]), .C(clk16MHz), 
           .D(n16086));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i126 (.Q(\data_in_frame[15] [5]), .C(clk16MHz), 
           .D(n16089));   // verilog/coms.v(128[12] 293[6])
    SB_CARRY add_911_5 (.CI(n24317), .I0(byte_transmit_counter[3]), .I1(GND_net), 
            .CO(n24318));
    SB_DFF data_in_frame_0___i127 (.Q(\data_in_frame[15][6] ), .C(clk16MHz), 
           .D(n16092));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i128 (.Q(\data_in_frame[15][7] ), .C(clk16MHz), 
           .D(n16095));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \FRAME_MATCHER.rx_data_ready_prev_4774  (.Q(\FRAME_MATCHER.rx_data_ready_prev ), 
           .C(clk16MHz), .D(n15813));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[0__4801  (.Q(\data_out_frame[22] [0]), .C(clk16MHz), 
           .D(n15812));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i129 (.Q(\data_in_frame[16] [0]), .C(clk16MHz), 
           .D(n28165));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i130 (.Q(\data_in_frame[16] [1]), .C(clk16MHz), 
           .D(n28149));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i131 (.Q(\data_in_frame[16] [2]), .C(clk16MHz), 
           .D(n28157));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i132 (.Q(\data_in_frame[16] [3]), .C(clk16MHz), 
           .D(n28155));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i133 (.Q(\data_in_frame[16][4] ), .C(clk16MHz), 
           .D(n16110));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i134 (.Q(\data_in_frame[16][5] ), .C(clk16MHz), 
           .D(n16113));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i135 (.Q(\data_in_frame[16][6] ), .C(clk16MHz), 
           .D(n16116));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i136 (.Q(\data_in_frame[16][7] ), .C(clk16MHz), 
           .D(n16119));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i137 (.Q(\data_in_frame[17] [0]), .C(clk16MHz), 
           .D(n16122));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_26[[6__4787  (.Q(\data_out_frame[26][6] ), .C(clk16MHz), 
           .D(n15811));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[1__4800  (.Q(\data_out_frame[22] [1]), .C(clk16MHz), 
           .D(n15810));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[2__4799  (.Q(\data_out_frame[22] [2]), .C(clk16MHz), 
           .D(n15809));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[3__4806  (.Q(\data_out_frame[21] [3]), .C(clk16MHz), 
           .D(n15808));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i138 (.Q(\data_in_frame[17] [1]), .C(clk16MHz), 
           .D(n16125));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i139 (.Q(\data_in_frame[17] [2]), .C(clk16MHz), 
           .D(n28281));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i140 (.Q(\data_in_frame[17] [3]), .C(clk16MHz), 
           .D(n16131));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[3__4798  (.Q(\data_out_frame[22] [3]), .C(clk16MHz), 
           .D(n15806));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[4__4797  (.Q(\data_out_frame[22] [4]), .C(clk16MHz), 
           .D(n15805));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i141 (.Q(\data_in_frame[17] [4]), .C(clk16MHz), 
           .D(n16134));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i142 (.Q(\data_in_frame[17] [5]), .C(clk16MHz), 
           .D(n16137));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[4__4805  (.Q(\data_out_frame[21] [4]), .C(clk16MHz), 
           .D(n15804));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[5__4796  (.Q(\data_out_frame[22] [5]), .C(clk16MHz), 
           .D(n15803));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_22[[6__4795  (.Q(\data_out_frame[22] [6]), .C(clk16MHz), 
           .D(n15802));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i143 (.Q(\data_in_frame[17] [6]), .C(clk16MHz), 
           .D(n16140));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[5__4804  (.Q(\data_out_frame[21] [5]), .C(clk16MHz), 
           .D(n15801));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[6__4803  (.Q(\data_out_frame[21] [6]), .C(clk16MHz), 
           .D(n15800));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_31997 (.I0(byte_transmit_counter[3]), 
            .I1(n34441), .I2(n34442), .I3(byte_transmit_counter[4]), .O(n36310));
    defparam byte_transmit_counter_3__bdd_4_lut_31997.LUT_INIT = 16'he4aa;
    SB_DFF \data_out_frame_22[[7__4794  (.Q(\data_out_frame[22] [7]), .C(clk16MHz), 
           .D(n15799));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[7__4802  (.Q(\data_out_frame[21] [7]), .C(clk16MHz), 
           .D(n15798));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i144 (.Q(\data_in_frame[17] [7]), .C(clk16MHz), 
           .D(n16143));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i145 (.Q(\data_in_frame[18] [0]), .C(clk16MHz), 
           .D(n16146));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[2__4807  (.Q(\data_out_frame[21] [2]), .C(clk16MHz), 
           .D(n15797));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[1__4808  (.Q(\data_out_frame[21] [1]), .C(clk16MHz), 
           .D(n15796));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_21[[0__4809  (.Q(\data_out_frame[21] [0]), .C(clk16MHz), 
           .D(n15795));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i146 (.Q(\data_in_frame[18] [1]), .C(clk16MHz), 
           .D(n16149));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i147 (.Q(\data_in_frame[18] [2]), .C(clk16MHz), 
           .D(n16152));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_0___i1 (.Q(\data_in[0] [0]), .C(clk16MHz), .D(n15775));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[7__4858  (.Q(\data_out_frame[14] [7]), .C(clk16MHz), 
           .D(n15773));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[6__4859  (.Q(\data_out_frame[14] [6]), .C(clk16MHz), 
           .D(n15772));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[5__4860  (.Q(\data_out_frame[14] [5]), .C(clk16MHz), 
           .D(n15770));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[4__4861  (.Q(\data_out_frame[14] [4]), .C(clk16MHz), 
           .D(n15769));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[3__4862  (.Q(\data_out_frame[14] [3]), .C(clk16MHz), 
           .D(n15768));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[2__4863  (.Q(\data_out_frame[14] [2]), .C(clk16MHz), 
           .D(n15767));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[1__4864  (.Q(\data_out_frame[14] [1]), .C(clk16MHz), 
           .D(n15765));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_14[[0__4865  (.Q(\data_out_frame[14] [0]), .C(clk16MHz), 
           .D(n15763));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[7__4866  (.Q(\data_out_frame[13] [7]), .C(clk16MHz), 
           .D(n15762));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[6__4867  (.Q(\data_out_frame[13] [6]), .C(clk16MHz), 
           .D(n15760));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[5__4868  (.Q(\data_out_frame[13] [5]), .C(clk16MHz), 
           .D(n15757));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[4__4869  (.Q(\data_out_frame[13] [4]), .C(clk16MHz), 
           .D(n15756));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[3__4870  (.Q(\data_out_frame[13] [3]), .C(clk16MHz), 
           .D(n15754));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 n36310_bdd_4_lut (.I0(n36310), .I1(n35471), .I2(n7_adj_5764), 
            .I3(byte_transmit_counter[4]), .O(tx_data[5]));
    defparam n36310_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF \data_out_frame_13[[2__4871  (.Q(\data_out_frame[13] [2]), .C(clk16MHz), 
           .D(n15750));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[1__4872  (.Q(\data_out_frame[13] [1]), .C(clk16MHz), 
           .D(n15749));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_13[[0__4873  (.Q(\data_out_frame[13] [0]), .C(clk16MHz), 
           .D(n15748));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[7__4874  (.Q(\data_out_frame[12] [7]), .C(clk16MHz), 
           .D(n15747));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[6__4875  (.Q(\data_out_frame[12] [6]), .C(clk16MHz), 
           .D(n15746));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[5__4876  (.Q(\data_out_frame[12] [5]), .C(clk16MHz), 
           .D(n15745));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[4__4877  (.Q(\data_out_frame[12] [4]), .C(clk16MHz), 
           .D(n15744));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[3__4878  (.Q(\data_out_frame[12] [3]), .C(clk16MHz), 
           .D(n15743));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_4_lut_adj_2431 (.I0(n25922), .I1(n13589), .I2(n13365), 
            .I3(n12753), .O(n28778));
    defparam i1_2_lut_4_lut_adj_2431.LUT_INIT = 16'h6996;
    SB_DFF \data_out_frame_12[[2__4879  (.Q(\data_out_frame[12] [2]), .C(clk16MHz), 
           .D(n15740));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[1__4880  (.Q(\data_out_frame[12] [1]), .C(clk16MHz), 
           .D(n15738));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_12[[0__4881  (.Q(\data_out_frame[12] [0]), .C(clk16MHz), 
           .D(n15737));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[7__4882  (.Q(\data_out_frame[11] [7]), .C(clk16MHz), 
           .D(n15736));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[6__4883  (.Q(\data_out_frame[11] [6]), .C(clk16MHz), 
           .D(n15735));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[5__4884  (.Q(\data_out_frame[11] [5]), .C(clk16MHz), 
           .D(n15734));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[4__4885  (.Q(\data_out_frame[11] [4]), .C(clk16MHz), 
           .D(n15733));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[3__4886  (.Q(\data_out_frame[11] [3]), .C(clk16MHz), 
           .D(n15732));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[2__4887  (.Q(\data_out_frame[11] [2]), .C(clk16MHz), 
           .D(n15731));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[1__4888  (.Q(\data_out_frame[11] [1]), .C(clk16MHz), 
           .D(n15730));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i148 (.Q(\data_in_frame[18] [3]), .C(clk16MHz), 
           .D(n16155));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 add_911_4_lut (.I0(n28554), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(n24316), .O(n28557)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_911_4 (.CI(n24316), .I0(byte_transmit_counter[2]), .I1(GND_net), 
            .CO(n24317));
    SB_LUT4 add_911_3_lut (.I0(n28554), .I1(byte_transmit_counter[1]), .I2(GND_net), 
            .I3(n24315), .O(n28556)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_2_lut_adj_2432 (.I0(Kp_23__N_1510), .I1(\FRAME_MATCHER.i_31__N_3747 ), 
            .I2(GND_net), .I3(GND_net), .O(n18967));   // verilog/coms.v(146[4] 292[11])
    defparam i1_2_lut_adj_2432.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_2433 (.I0(data_out_frame_22__7__N_3121), .I1(DE_c), 
            .I2(n6_adj_5765), .I3(n1_c), .O(n14282));   // verilog/coms.v(98[12:26])
    defparam i1_4_lut_adj_2433.LUT_INIT = 16'hccc8;
    SB_DFF data_in_frame_0___i149 (.Q(\data_in_frame[18] [4]), .C(clk16MHz), 
           .D(n16158));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_11[[0__4889  (.Q(\data_out_frame[11] [0]), .C(clk16MHz), 
           .D(n15729));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2434 (.I0(\data_out_frame[14] [0]), .I1(\data_out_frame[11] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_5766));
    defparam i1_2_lut_adj_2434.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_2435 (.I0(n13834), .I1(n29058), .I2(n32531), 
            .I3(n28749), .O(n13456));
    defparam i1_2_lut_4_lut_adj_2435.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2436 (.I0(n28659), .I1(\data_out_frame[13] [7]), 
            .I2(n29036), .I3(n6_adj_5766), .O(n28960));
    defparam i4_4_lut_adj_2436.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2437 (.I0(\data_out_frame[13] [6]), .I1(n28960), 
            .I2(GND_net), .I3(GND_net), .O(n28859));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2437.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_2438 (.I0(n13834), .I1(n29058), .I2(n32531), 
            .I3(n29253), .O(n28896));
    defparam i1_2_lut_4_lut_adj_2438.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2439 (.I0(n25922), .I1(n13589), .I2(n13365), 
            .I3(n28778), .O(n28773));
    defparam i1_2_lut_4_lut_adj_2439.LUT_INIT = 16'h9669;
    SB_CARRY add_911_3 (.CI(n24315), .I0(byte_transmit_counter[1]), .I1(GND_net), 
            .CO(n24316));
    SB_DFF data_in_frame_0___i150 (.Q(\data_in_frame[18] [5]), .C(clk16MHz), 
           .D(n16161));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i151 (.Q(\data_in_frame[18] [6]), .C(clk16MHz), 
           .D(n16164));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i152 (.Q(\data_in_frame[18] [7]), .C(clk16MHz), 
           .D(n16167));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2440 (.I0(n11263), .I1(n25825), .I2(GND_net), 
            .I3(GND_net), .O(n26079));
    defparam i1_2_lut_adj_2440.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i153 (.Q(\data_in_frame[19] [0]), .C(clk16MHz), 
           .D(n16170));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 add_911_2_lut (.I0(n28554), .I1(byte_transmit_counter[0]), .I2(tx_transmit_N_4388), 
            .I3(GND_net), .O(n28562)) /* synthesis syn_instantiated=1 */ ;
    defparam add_911_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i3_4_lut_adj_2441 (.I0(\data_out_frame[21] [3]), .I1(\data_out_frame[21] [2]), 
            .I2(n25446), .I3(n25134), .O(n28827));
    defparam i3_4_lut_adj_2441.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i154 (.Q(\data_in_frame[19] [1]), .C(clk16MHz), 
           .D(n16173));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_3_lut_4_lut (.I0(\data_in_frame[6] [3]), .I1(\data_in_frame[6][2] ), 
            .I2(\data_in_frame[6][1] ), .I3(\data_in_frame[6][4] ), .O(n29256));   // verilog/coms.v(86[17:28])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut (.I0(n13601), .I1(data_out_frame_27__7__N_2536), 
            .I2(n25347), .I3(GND_net), .O(n6_adj_5767));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i155 (.Q(\data_in_frame[19] [2]), .C(clk16MHz), 
           .D(n16176));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i156 (.Q(\data_in_frame[19] [3]), .C(clk16MHz), 
           .D(n16179));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i157 (.Q(\data_in_frame[19] [4]), .C(clk16MHz), 
           .D(n16182));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i158 (.Q(\data_in_frame[19] [5]), .C(clk16MHz), 
           .D(n16185));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i159 (.Q(\data_in_frame[19] [6]), .C(clk16MHz), 
           .D(n16188));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i160 (.Q(\data_in_frame[19] [7]), .C(clk16MHz), 
           .D(n16191));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i161 (.Q(\data_in_frame[20] [0]), .C(clk16MHz), 
           .D(n16194));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i162 (.Q(\data_in_frame[20] [1]), .C(clk16MHz), 
           .D(n16197));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i4_4_lut_adj_2442 (.I0(n14026), .I1(\data_out_frame[12] [3]), 
            .I2(\data_out_frame[12] [2]), .I3(\data_out_frame[8] [0]), .O(n10_adj_5768));   // verilog/coms.v(77[16:27])
    defparam i4_4_lut_adj_2442.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i11 (.Q(\data_in_frame[1] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n16395));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i163 (.Q(\data_in_frame[20] [2]), .C(clk16MHz), 
           .D(n16200));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i164 (.Q(\data_in_frame[20] [3]), .C(clk16MHz), 
           .D(n16203));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i165 (.Q(\data_in_frame[20] [4]), .C(clk16MHz), 
           .D(n16206));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i166 (.Q(\data_in_frame[20] [5]), .C(clk16MHz), 
           .D(n16209));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i167 (.Q(\data_in_frame[20] [6]), .C(clk16MHz), 
           .D(n16212));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i168 (.Q(\data_in_frame[20] [7]), .C(clk16MHz), 
           .D(n28163));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i169 (.Q(\data_in_frame[21] [0]), .C(clk16MHz), 
           .D(n16218));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i170 (.Q(\data_in_frame[21] [1]), .C(clk16MHz), 
           .D(n16221));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i171 (.Q(\data_in_frame[21] [2]), .C(clk16MHz), 
           .D(n16224));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i172 (.Q(\data_in_frame[21] [3]), .C(clk16MHz), 
           .D(n9_adj_5769));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i173 (.Q(\data_in_frame[21] [4]), .C(clk16MHz), 
           .D(n16230));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i174 (.Q(\data_in_frame[21] [5]), .C(clk16MHz), 
           .D(n16233));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i175 (.Q(\data_in_frame[21] [6]), .C(clk16MHz), 
           .D(n16236));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i176 (.Q(\data_in_frame[21] [7]), .C(clk16MHz), 
           .D(n16239));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i177 (.Q(\data_in_frame[22]_c [0]), .C(clk16MHz), 
           .D(n16380));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i178 (.Q(\data_in_frame[22][1] ), .C(clk16MHz), 
           .D(n28049));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i179 (.Q(\data_in_frame[22][2] ), .C(clk16MHz), 
           .D(n28047));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i180 (.Q(\data_in_frame[22][3] ), .C(clk16MHz), 
           .D(n28045));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i10 (.Q(\data_in_frame[1] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16374));   // verilog/coms.v(128[12] 293[6])
    SB_DFFR \FRAME_MATCHER.i_1583__i0  (.Q(\FRAME_MATCHER.i [0]), .C(clk16MHz), 
            .D(n14516), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i1_3_lut_4_lut_adj_2443 (.I0(\data_in_frame[6] [3]), .I1(\data_in_frame[6][2] ), 
            .I2(\data_in_frame[8] [4]), .I3(n28717), .O(n13462));   // verilog/coms.v(86[17:28])
    defparam i1_3_lut_4_lut_adj_2443.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2444 (.I0(\data_out_frame[11] [5]), .I1(\data_out_frame[7] [1]), 
            .I2(n28862), .I3(n6_adj_5770), .O(n25922));
    defparam i4_4_lut_adj_2444.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2445 (.I0(\data_out_frame[13] [7]), .I1(n25922), 
            .I2(GND_net), .I3(GND_net), .O(n29087));
    defparam i1_2_lut_adj_2445.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_2446 (.I0(n12771), .I1(n25812), .I2(GND_net), 
            .I3(GND_net), .O(n28876));
    defparam i1_2_lut_adj_2446.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2447 (.I0(\data_out_frame[14] [1]), .I1(n29087), 
            .I2(n28739), .I3(n13697), .O(n26113));
    defparam i3_4_lut_adj_2447.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i9 (.Q(\data_in_frame[1] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n16371));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[7__4890  (.Q(\data_out_frame[10] [7]), .C(clk16MHz), 
           .D(n15728));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 reduce_nor_1614_i1_2_lut (.I0(\FRAME_MATCHER.i_31__N_3745 ), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n1_c));
    defparam reduce_nor_1614_i1_2_lut.LUT_INIT = 16'heeee;
    SB_DFF data_in_frame_0___i181 (.Q(\data_in_frame[22]_c [4]), .C(clk16MHz), 
           .D(n28011));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i182 (.Q(\data_in_frame[22] [5]), .C(clk16MHz), 
           .D(n16257));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[6__4891  (.Q(\data_out_frame[10] [6]), .C(clk16MHz), 
           .D(n15727));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i8 (.Q(\data_in_frame[0] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n16366));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_4_lut_adj_2448 (.I0(n12689), .I1(\data_out_frame[10] [1]), 
            .I2(n13697), .I3(n4_adj_5771), .O(n25812));   // verilog/coms.v(77[16:43])
    defparam i2_4_lut_adj_2448.LUT_INIT = 16'h6996;
    SB_DFF \data_out_frame_10[[5__4892  (.Q(\data_out_frame[10] [5]), .C(clk16MHz), 
           .D(n15726));   // verilog/coms.v(128[12] 293[6])
    SB_CARRY add_911_2 (.CI(GND_net), .I0(byte_transmit_counter[0]), .I1(tx_transmit_N_4388), 
            .CO(n24315));
    SB_LUT4 i3_4_lut_adj_2449 (.I0(n26113), .I1(n12771), .I2(\data_out_frame[14] [3]), 
            .I3(n28876), .O(n25924));
    defparam i3_4_lut_adj_2449.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_2450 (.I0(\data_out_frame[9] [7]), .I1(\data_out_frame[10] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n28732));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2450.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2451 (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[7] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n28720));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_2451.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2452 (.I0(n28732), .I1(n13964), .I2(\data_out_frame[11] [7]), 
            .I3(n28659), .O(n29084));
    defparam i3_4_lut_adj_2452.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2453 (.I0(\data_out_frame[7] [5]), .I1(n29084), 
            .I2(n28720), .I3(\data_out_frame[5] [3]), .O(n12689));   // verilog/coms.v(72[16:62])
    defparam i3_4_lut_adj_2453.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_31992 (.I0(byte_transmit_counter[3]), 
            .I1(n34448), .I2(n34449), .I3(byte_transmit_counter[4]), .O(n36304));
    defparam byte_transmit_counter_3__bdd_4_lut_31992.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_2454 (.I0(n28723), .I1(\data_out_frame[9] [4]), 
            .I2(\data_out_frame[4] [6]), .I3(GND_net), .O(n29036));
    defparam i2_3_lut_adj_2454.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2455 (.I0(\data_out_frame[12] [0]), .I1(n12689), 
            .I2(GND_net), .I3(GND_net), .O(n28739));
    defparam i1_2_lut_adj_2455.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2456 (.I0(n29027), .I1(n13790), .I2(\data_out_frame[8] [3]), 
            .I3(n29181), .O(n10_adj_5772));   // verilog/coms.v(74[16:42])
    defparam i4_4_lut_adj_2456.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_2457 (.I0(n28638), .I1(n10_adj_5772), .I2(\data_out_frame[5] [4]), 
            .I3(GND_net), .O(data_out_frame_27__7__N_2496));   // verilog/coms.v(74[16:42])
    defparam i5_3_lut_adj_2457.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2458 (.I0(\data_out_frame[10] [2]), .I1(\data_out_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n14026));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_2458.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_2459 (.I0(n28701), .I1(n29193), .I2(n13214), 
            .I3(\data_out_frame[8] [2]), .O(n12_adj_5773));   // verilog/coms.v(74[16:42])
    defparam i5_4_lut_adj_2459.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_2460 (.I0(n13204), .I1(n12_adj_5773), .I2(n29235), 
            .I3(n14026), .O(n13988));   // verilog/coms.v(74[16:42])
    defparam i6_4_lut_adj_2460.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2461 (.I0(\data_out_frame[9] [7]), .I1(n29145), 
            .I2(\data_out_frame[8] [0]), .I3(n13860), .O(data_out_frame_27__7__N_2289));   // verilog/coms.v(72[16:27])
    defparam i3_4_lut_adj_2461.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2462 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[8] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n28647));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_2462.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_2463 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[0] [4]), 
            .I2(n13287), .I3(\data_in_frame[4] [7]), .O(n29196));   // verilog/coms.v(86[17:70])
    defparam i1_3_lut_4_lut_adj_2463.LUT_INIT = 16'h6996;
    SB_DFFESS byte_transmit_counter_i0_i0 (.Q(byte_transmit_counter[0]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5774), .S(n28562));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i28390_3_lut_4_lut (.I0(\data_in_frame[2] [3]), .I1(n28687), 
            .I2(n28670), .I3(\data_in_frame[0] [6]), .O(n32685));   // verilog/coms.v(74[16:27])
    defparam i28390_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_3_lut_4_lut_adj_2464 (.I0(\data_in_frame[2] [3]), .I1(n28687), 
            .I2(\data_in_frame[4] [4]), .I3(\data_in_frame[2] [1]), .O(n29075));   // verilog/coms.v(74[16:27])
    defparam i1_3_lut_4_lut_adj_2464.LUT_INIT = 16'h6996;
    SB_DFFESS driver_enable_4776 (.Q(DE_c), .C(clk16MHz), .E(n1992), .D(n14282), 
            .S(n15318));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS tx_transmit_4773 (.Q(r_SM_Main_2__N_4517[0]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5775), .S(n8595));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i6_4_lut_adj_2465 (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[8] [2]), 
            .I2(n28647), .I3(n29268), .O(n14_adj_5776));   // verilog/coms.v(74[16:42])
    defparam i6_4_lut_adj_2465.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_2466 (.I0(\data_out_frame[6] [1]), .I1(n14_adj_5776), 
            .I2(n10_adj_5777), .I3(\data_out_frame[12] [4]), .O(n28806));   // verilog/coms.v(74[16:42])
    defparam i7_4_lut_adj_2466.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2467 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[10] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n28701));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2467.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2468 (.I0(\data_out_frame[8] [4]), .I1(n13790), 
            .I2(\data_out_frame[4] [4]), .I3(GND_net), .O(n28729));   // verilog/coms.v(86[17:28])
    defparam i2_3_lut_adj_2468.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i7 (.Q(\data_in_frame[0] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n16363));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i6 (.Q(\data_in_frame[0] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n16360));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i5 (.Q(\data_in_frame[0] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n16357));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_adj_2469 (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[7] [2]), .I3(GND_net), .O(n28723));
    defparam i2_3_lut_adj_2469.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i4 (.Q(\data_in_frame[0] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16354));   // verilog/coms.v(128[12] 293[6])
    SB_DFFE data_in_frame_0___i3 (.Q(\data_in_frame[0] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n16351));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[4__4893  (.Q(\data_out_frame[10] [4]), .C(clk16MHz), 
           .D(n15725));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[3__4894  (.Q(\data_out_frame[10] [3]), .C(clk16MHz), 
           .D(n15724));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[2__4895  (.Q(\data_out_frame[10] [2]), .C(clk16MHz), 
           .D(n15723));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[1__4896  (.Q(\data_out_frame[10] [1]), .C(clk16MHz), 
           .D(n15722));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_10[[0__4897  (.Q(\data_out_frame[10] [0]), .C(clk16MHz), 
           .D(n15721));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[7__4898  (.Q(\data_out_frame[9] [7]), .C(clk16MHz), 
           .D(n15720));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[6__4899  (.Q(\data_out_frame[9] [6]), .C(clk16MHz), 
           .D(n15719));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[5__4900  (.Q(\data_out_frame[9] [5]), .C(clk16MHz), 
           .D(n15718));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2470 (.I0(\data_out_frame[6] [7]), .I1(\data_out_frame[7] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n29241));
    defparam i1_2_lut_adj_2470.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i2 (.Q(\data_in_frame[0] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n16348));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i183 (.Q(\data_in_frame[22][6] ), .C(clk16MHz), 
           .D(n16260));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[4__4901  (.Q(\data_out_frame[9] [4]), .C(clk16MHz), 
           .D(n15717));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[3__4902  (.Q(\data_out_frame[9] [3]), .C(clk16MHz), 
           .D(n15716));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[2__4903  (.Q(\data_out_frame[9] [2]), .C(clk16MHz), 
           .D(n15715));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[1__4904  (.Q(\data_out_frame[9] [1]), .C(clk16MHz), 
           .D(n15714));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_9[[0__4905  (.Q(\data_out_frame[9] [0]), .C(clk16MHz), 
           .D(n15713));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_8[[7__4906  (.Q(\data_out_frame[8] [7]), .C(clk16MHz), 
           .D(n15712));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_8[[6__4907  (.Q(\data_out_frame[8] [6]), .C(clk16MHz), 
           .D(n15711));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i184 (.Q(\data_in_frame[22][7] ), .C(clk16MHz), 
           .D(n16263));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i185 (.Q(\data_in_frame[23][0] ), .C(clk16MHz), 
           .D(n16266));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i4_4_lut_adj_2471 (.I0(\data_out_frame[4] [4]), .I1(n28723), 
            .I2(n29199), .I3(n6_adj_5778), .O(n13847));
    defparam i4_4_lut_adj_2471.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2472 (.I0(\data_out_frame[8] [7]), .I1(\data_out_frame[6] [7]), 
            .I2(n29090), .I3(n6_adj_5722), .O(n13589));   // verilog/coms.v(86[17:28])
    defparam i4_4_lut_adj_2472.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i186 (.Q(\data_in_frame[23][1] ), .C(clk16MHz), 
           .D(n16269));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i187 (.Q(\data_in_frame[23][2] ), .C(clk16MHz), 
           .D(n16272));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i188 (.Q(\data_in_frame[23][3] ), .C(clk16MHz), 
           .D(n16275));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_adj_2473 (.I0(n13589), .I1(n13847), .I2(GND_net), 
            .I3(GND_net), .O(n12872));
    defparam i1_2_lut_adj_2473.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i189 (.Q(\data_in_frame[23] [4]), .C(clk16MHz), 
           .D(n16340));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i190 (.Q(\data_in_frame[23][5] ), .C(clk16MHz), 
           .D(n16281));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i191 (.Q(\data_in_frame[23][6] ), .C(clk16MHz), 
           .D(n16284));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i192 (.Q(\data_in_frame[23][7] ), .C(clk16MHz), 
           .D(n16287));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i1_2_lut_3_lut_adj_2474 (.I0(\data_in_frame[4] [7]), .I1(\data_in_frame[7] [1]), 
            .I2(\data_in_frame[5] [0]), .I3(GND_net), .O(n32541));
    defparam i1_2_lut_3_lut_adj_2474.LUT_INIT = 16'h9696;
    SB_LUT4 i9_4_lut_adj_2475 (.I0(\data_out_frame[14] [7]), .I1(n29100), 
            .I2(n29217), .I3(n28991), .O(n22_adj_5779));
    defparam i9_4_lut_adj_2475.LUT_INIT = 16'h6996;
    SB_DFF \data_out_frame_8[[5__4908  (.Q(\data_out_frame[8] [5]), .C(clk16MHz), 
           .D(n15710));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i11_4_lut_adj_2476 (.I0(n28963), .I1(n22_adj_5779), .I2(n16_adj_5709), 
            .I3(n29247), .O(n24));
    defparam i11_4_lut_adj_2476.LUT_INIT = 16'h6996;
    SB_DFF \data_out_frame_8[[4__4909  (.Q(\data_out_frame[8] [4]), .C(clk16MHz), 
           .D(n15709));   // verilog/coms.v(128[12] 293[6])
    SB_DFF data_in_frame_0___i1 (.Q(\data_in_frame[0] [0]), .C(clk16MHz), 
           .D(n16314));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_8[[3__4910  (.Q(\data_out_frame[8] [3]), .C(clk16MHz), 
           .D(n15708));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i12_4_lut_adj_2477 (.I0(n28729), .I1(n24), .I2(n20_adj_5723), 
            .I3(n28701), .O(n26090));
    defparam i12_4_lut_adj_2477.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2478 (.I0(n13988), .I1(n13794), .I2(GND_net), 
            .I3(GND_net), .O(n25287));
    defparam i1_2_lut_adj_2478.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2479 (.I0(\data_out_frame[14] [5]), .I1(n28806), 
            .I2(GND_net), .I3(GND_net), .O(n13817));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2479.LUT_INIT = 16'h6666;
    SB_LUT4 i30315_4_lut (.I0(\data_out_frame[26] [3]), .I1(n9537), .I2(\data_out_frame[27] [3]), 
            .I3(byte_transmit_counter[0]), .O(n34449));
    defparam i30315_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i21_4_lut (.I0(\data_out_frame[21] [3]), 
            .I1(\data_out_frame[22] [3]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5780));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i5_4_lut_adj_2480 (.I0(n28739), .I1(n29036), .I2(n13964), 
            .I3(data_out_frame_27__7__N_2034), .O(n12_adj_5781));
    defparam i5_4_lut_adj_2480.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_2481 (.I0(\data_out_frame[12] [1]), .I1(n12_adj_5781), 
            .I2(n29081), .I3(n13860), .O(n12771));
    defparam i6_4_lut_adj_2481.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2482 (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[6] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n28766));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_adj_2482.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2483 (.I0(\data_out_frame[12] [5]), .I1(\data_out_frame[8] [1]), 
            .I2(\data_out_frame[5] [5]), .I3(GND_net), .O(n28638));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_adj_2483.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2484 (.I0(\data_in_frame[4] [7]), .I1(\data_in_frame[7] [1]), 
            .I2(n13287), .I3(GND_net), .O(n21_adj_5707));
    defparam i1_2_lut_3_lut_adj_2484.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2485 (.I0(\data_out_frame[13] [5]), .I1(\data_out_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n13365));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_adj_2485.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2486 (.I0(\data_out_frame[13] [4]), .I1(\data_out_frame[13] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n13673));
    defparam i1_2_lut_adj_2486.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_2487 (.I0(\data_out_frame[13] [7]), .I1(\data_out_frame[13] [2]), 
            .I2(n13365), .I3(n6_adj_5782), .O(n29100));
    defparam i4_4_lut_adj_2487.LUT_INIT = 16'h6996;
    SB_DFF \data_out_frame_8[[2__4911  (.Q(\data_out_frame[8] [2]), .C(clk16MHz), 
           .D(n15707));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_8[[1__4912  (.Q(\data_out_frame[8] [1]), .C(clk16MHz), 
           .D(n15706));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_8[[0__4913  (.Q(\data_out_frame[8] [0]), .C(clk16MHz), 
           .D(n15705));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i30256_2_lut (.I0(n21_adj_5780), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34448));
    defparam i30256_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR \FRAME_MATCHER.i_1583__i31  (.Q(\FRAME_MATCHER.i [31]), .C(clk16MHz), 
            .D(n14518), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i30  (.Q(\FRAME_MATCHER.i [30]), .C(clk16MHz), 
            .D(n14520), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i1_2_lut_adj_2488 (.I0(\data_out_frame[6] [6]), .I1(\data_out_frame[9] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n29199));
    defparam i1_2_lut_adj_2488.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2489 (.I0(\data_out_frame[7] [6]), .I1(\data_out_frame[8] [2]), 
            .I2(\data_out_frame[8] [0]), .I3(GND_net), .O(n29027));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_adj_2489.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2490 (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[6] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n28945));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2490.LUT_INIT = 16'h6666;
    SB_LUT4 i12083_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[1]), 
            .I3(\data_in_frame[10] [1]), .O(n15955));
    defparam i12083_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFR \FRAME_MATCHER.i_1583__i29  (.Q(\FRAME_MATCHER.i [29]), .C(clk16MHz), 
            .D(n14522), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i28  (.Q(\FRAME_MATCHER.i [28]), .C(clk16MHz), 
            .D(n14524), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i27  (.Q(\FRAME_MATCHER.i [27]), .C(clk16MHz), 
            .D(n14526), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i26  (.Q(\FRAME_MATCHER.i [26]), .C(clk16MHz), 
            .D(n14528), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i25  (.Q(\FRAME_MATCHER.i [25]), .C(clk16MHz), 
            .D(n14530), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i24  (.Q(\FRAME_MATCHER.i [24]), .C(clk16MHz), 
            .D(n14532), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i23  (.Q(\FRAME_MATCHER.i [23]), .C(clk16MHz), 
            .D(n14534), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i22  (.Q(\FRAME_MATCHER.i [22]), .C(clk16MHz), 
            .D(n14536), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i21  (.Q(\FRAME_MATCHER.i [21]), .C(clk16MHz), 
            .D(n14538), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i20  (.Q(\FRAME_MATCHER.i [20]), .C(clk16MHz), 
            .D(n14540), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i19  (.Q(\FRAME_MATCHER.i [19]), .C(clk16MHz), 
            .D(n14542), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i18  (.Q(\FRAME_MATCHER.i [18]), .C(clk16MHz), 
            .D(n14544), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i1_2_lut_adj_2491 (.I0(\data_out_frame[6] [1]), .I1(\data_out_frame[11] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n29205));
    defparam i1_2_lut_adj_2491.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2492 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[7] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n28664));
    defparam i1_2_lut_adj_2492.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1583__i17  (.Q(\FRAME_MATCHER.i [17]), .C(clk16MHz), 
            .D(n14546), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 data_out_frame_11__7__I_0_5059_2_lut (.I0(\data_out_frame[11] [7]), 
            .I1(\data_out_frame[11] [6]), .I2(GND_net), .I3(GND_net), 
            .O(data_out_frame_27__7__N_2034));   // verilog/coms.v(72[16:27])
    defparam data_out_frame_11__7__I_0_5059_2_lut.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1583__i16  (.Q(\FRAME_MATCHER.i [16]), .C(clk16MHz), 
            .D(n14548), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i1_2_lut_adj_2493 (.I0(\data_out_frame[10] [2]), .I1(\data_out_frame[10] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n13204));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_adj_2493.LUT_INIT = 16'h6666;
    SB_DFFR \FRAME_MATCHER.i_1583__i15  (.Q(\FRAME_MATCHER.i [15]), .C(clk16MHz), 
            .D(n14550), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i14  (.Q(\FRAME_MATCHER.i [14]), .C(clk16MHz), 
            .D(n14552), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i13  (.Q(\FRAME_MATCHER.i [13]), .C(clk16MHz), 
            .D(n14554), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i12  (.Q(\FRAME_MATCHER.i [12]), .C(clk16MHz), 
            .D(n14556), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i12101_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[7]), 
            .I3(\data_in_frame[10] [7]), .O(n15973));
    defparam i12101_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFR \FRAME_MATCHER.i_1583__i11  (.Q(\FRAME_MATCHER.i [11]), .C(clk16MHz), 
            .D(n14558), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i12098_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[6]), 
            .I3(\data_in_frame[10] [6]), .O(n15970));
    defparam i12098_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFR \FRAME_MATCHER.i_1583__i10  (.Q(\FRAME_MATCHER.i [10]), .C(clk16MHz), 
            .D(n14560), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i1_3_lut_4_lut_adj_2494 (.I0(\data_in_frame[6][6] ), .I1(\data_in_frame[6] [5]), 
            .I2(\data_in_frame[6][7] ), .I3(n29256), .O(n28714));   // verilog/coms.v(78[16:43])
    defparam i1_3_lut_4_lut_adj_2494.LUT_INIT = 16'h6996;
    SB_DFFR \FRAME_MATCHER.i_1583__i9  (.Q(\FRAME_MATCHER.i [9]), .C(clk16MHz), 
            .D(n14562), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i8  (.Q(\FRAME_MATCHER.i [8]), .C(clk16MHz), 
            .D(n14564), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i7  (.Q(\FRAME_MATCHER.i [7]), .C(clk16MHz), 
            .D(n14566), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i6  (.Q(\FRAME_MATCHER.i [6]), .C(clk16MHz), 
            .D(n14568), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i5  (.Q(\FRAME_MATCHER.i [5]), .C(clk16MHz), 
            .D(n14570), .R(reset));   // verilog/coms.v(155[12:15])
    SB_LUT4 i12095_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[5]), 
            .I3(\data_in_frame[10] [5]), .O(n15967));
    defparam i12095_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFR \FRAME_MATCHER.i_1583__i4  (.Q(\FRAME_MATCHER.i [4]), .C(clk16MHz), 
            .D(n14572), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i3  (.Q(\FRAME_MATCHER.i [3]), .C(clk16MHz), 
            .D(n14574), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i2  (.Q(\FRAME_MATCHER.i [2]), .C(clk16MHz), 
            .D(n14576), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFR \FRAME_MATCHER.i_1583__i1  (.Q(\FRAME_MATCHER.i [1]), .C(clk16MHz), 
            .D(n14578), .R(reset));   // verilog/coms.v(155[12:15])
    SB_DFFESS byte_transmit_counter_i0_i1 (.Q(byte_transmit_counter[1]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5784), .S(n28556));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i2 (.Q(byte_transmit_counter[2]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5785), .S(n28557));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i3 (.Q(byte_transmit_counter[3]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5786), .S(n28558));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i4 (.Q(byte_transmit_counter[4]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5787), .S(n28559));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i5 (.Q(byte_transmit_counter[5]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5788), .S(n28560));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i6 (.Q(byte_transmit_counter[6]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5789), .S(n28561));   // verilog/coms.v(128[12] 293[6])
    SB_DFFESS byte_transmit_counter_i0_i7 (.Q(byte_transmit_counter[7]), .C(clk16MHz), 
            .E(n1992), .D(n1_adj_5790), .S(n28555));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i2_3_lut_adj_2495 (.I0(\data_out_frame[10] [3]), .I1(\data_out_frame[12] [3]), 
            .I2(\data_out_frame[10] [1]), .I3(GND_net), .O(n29268));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_adj_2495.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2496 (.I0(\data_out_frame[11] [0]), .I1(\data_out_frame[10] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n29259));   // verilog/coms.v(86[17:63])
    defparam i1_2_lut_adj_2496.LUT_INIT = 16'h6666;
    SB_LUT4 i12092_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[4]), 
            .I3(\data_in_frame[10] [4]), .O(n15964));
    defparam i12092_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_2497 (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[6] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n28963));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_adj_2497.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_2498 (.I0(\data_in_frame[6][6] ), .I1(\data_in_frame[6] [5]), 
            .I2(n28840), .I3(GND_net), .O(Kp_23__N_755));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_3_lut_adj_2498.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_2499 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[4] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n28683));   // verilog/coms.v(86[17:63])
    defparam i1_2_lut_adj_2499.LUT_INIT = 16'h6666;
    SB_LUT4 i12089_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[3]), 
            .I3(\data_in_frame[10] [3]), .O(n15961));
    defparam i12089_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12086_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[2]), 
            .I3(\data_in_frame[10] [2]), .O(n15958));
    defparam i12086_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i13_4_lut_adj_2500 (.I0(\data_in_frame[22]_c [4]), .I1(\FRAME_MATCHER.i [0]), 
            .I2(n14877), .I3(rx_data[4]), .O(n28011));   // verilog/coms.v(92[13:20])
    defparam i13_4_lut_adj_2500.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut_adj_2501 (.I0(\data_out_frame[12] [2]), .I1(\data_out_frame[12] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n29018));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_2501.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_2502 (.I0(\data_out_frame[11] [2]), .I1(n13214), 
            .I2(\data_out_frame[11] [3]), .I3(GND_net), .O(n29154));
    defparam i2_3_lut_adj_2502.LUT_INIT = 16'h9696;
    SB_DFF \data_out_frame_7[[7__4914  (.Q(\data_out_frame[7] [7]), .C(clk16MHz), 
           .D(n15704));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 n36304_bdd_4_lut (.I0(n36304), .I1(n36253), .I2(n7_adj_5791), 
            .I3(byte_transmit_counter[4]), .O(tx_data[3]));
    defparam n36304_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12080_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28377), .I2(rx_data[0]), 
            .I3(\data_in_frame[10] [0]), .O(n15952));
    defparam i12080_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_31987 (.I0(byte_transmit_counter[3]), 
            .I1(n34450), .I2(n34451), .I3(byte_transmit_counter[4]), .O(n36298));
    defparam byte_transmit_counter_3__bdd_4_lut_31987.LUT_INIT = 16'he4aa;
    SB_LUT4 n36298_bdd_4_lut (.I0(n36298), .I1(n35411), .I2(n7_adj_5792), 
            .I3(byte_transmit_counter[4]), .O(tx_data[2]));
    defparam n36298_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_2503 (.I0(\data_out_frame[8] [7]), .I1(\data_out_frame[7] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n28941));
    defparam i1_2_lut_adj_2503.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2504 (.I0(\data_out_frame[6] [7]), .I1(\data_out_frame[4] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n28823));
    defparam i1_2_lut_adj_2504.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2505 (.I0(\data_out_frame[4] [6]), .I1(n28941), 
            .I2(\data_out_frame[8] [6]), .I3(\data_out_frame[9] [0]), .O(n29220));
    defparam i3_4_lut_adj_2505.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2506 (.I0(\data_out_frame[6] [1]), .I1(\data_out_frame[4] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n29214));   // verilog/coms.v(86[17:28])
    defparam i1_2_lut_adj_2506.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_2507 (.I0(\data_in_frame[1] [1]), .I1(\data_in_frame[1] [0]), 
            .I2(\data_in_frame[3] [2]), .I3(\data_in_frame[3] [0]), .O(n32573));   // verilog/coms.v(71[16:27])
    defparam i1_3_lut_4_lut_adj_2507.LUT_INIT = 16'h6996;
    SB_LUT4 i10645_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(n133[0]), .I2(n2405), 
            .I3(\FRAME_MATCHER.i_31__N_3743 ), .O(n14516));   // verilog/coms.v(155[12:15])
    defparam i10645_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_2_lut_adj_2508 (.I0(\data_out_frame[8] [3]), .I1(\data_out_frame[8] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n13245));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_adj_2508.LUT_INIT = 16'h6666;
    SB_LUT4 i11022_3_lut_4_lut (.I0(n161), .I1(n28603), .I2(reset), .I3(n8_adj_5793), 
            .O(n7));
    defparam i11022_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_2_lut_adj_2509 (.I0(\data_out_frame[6] [5]), .I1(\data_out_frame[7] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n29247));
    defparam i1_2_lut_adj_2509.LUT_INIT = 16'h6666;
    SB_LUT4 i7_4_lut_adj_2510 (.I0(n13245), .I1(\data_out_frame[8] [1]), 
            .I2(n29214), .I3(\data_out_frame[9] [5]), .O(n18_adj_5795));
    defparam i7_4_lut_adj_2510.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2511 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(GND_net), .O(n10744));   // verilog/coms.v(155[12:15])
    defparam i1_2_lut_3_lut_adj_2511.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_2512 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(GND_net), .O(n8_adj_5783));   // verilog/coms.v(155[12:15])
    defparam i1_2_lut_3_lut_adj_2512.LUT_INIT = 16'hefef;
    SB_LUT4 i8_4_lut_adj_2513 (.I0(n29220), .I1(\data_out_frame[6] [0]), 
            .I2(n29118), .I3(\data_out_frame[7] [7]), .O(n19_adj_5796));
    defparam i8_4_lut_adj_2513.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_2514 (.I0(\data_out_frame[10] [0]), .I1(n29154), 
            .I2(n29018), .I3(n28683), .O(n30908));   // verilog/coms.v(86[17:63])
    defparam i3_4_lut_adj_2514.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2515 (.I0(\data_out_frame[11] [4]), .I1(n19_adj_5796), 
            .I2(n17_adj_5797), .I3(n18_adj_5795), .O(n24_adj_5798));   // verilog/coms.v(86[17:63])
    defparam i4_4_lut_adj_2515.LUT_INIT = 16'h6996;
    SB_LUT4 i11_4_lut_adj_2516 (.I0(n29268), .I1(n29181), .I2(n30908), 
            .I3(n29235), .O(n31));   // verilog/coms.v(86[17:63])
    defparam i11_4_lut_adj_2516.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut_adj_2517 (.I0(n31), .I1(\data_out_frame[7] [3]), .I2(n24_adj_5798), 
            .I3(data_out_frame_27__7__N_2034), .O(n36_adj_5799));   // verilog/coms.v(86[17:63])
    defparam i16_4_lut_adj_2517.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_2518 (.I0(n28664), .I1(\data_out_frame[4] [2]), 
            .I2(\data_out_frame[9] [6]), .I3(\data_out_frame[10] [7]), .O(n34_adj_5800));   // verilog/coms.v(86[17:63])
    defparam i14_4_lut_adj_2518.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut_adj_2519 (.I0(n29205), .I1(n36_adj_5799), .I2(n30), 
            .I3(\data_out_frame[12] [5]), .O(n38_adj_5801));   // verilog/coms.v(86[17:63])
    defparam i18_4_lut_adj_2519.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut_adj_2520 (.I0(\data_out_frame[7] [4]), .I1(\data_out_frame[7] [5]), 
            .I2(n28945), .I3(n29027), .O(n33_adj_5802));   // verilog/coms.v(86[17:63])
    defparam i13_4_lut_adj_2520.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2521 (.I0(\FRAME_MATCHER.i_31__N_3748 ), .I1(\FRAME_MATCHER.i_31__N_3746 ), 
            .I2(\FRAME_MATCHER.i_31__N_3744 ), .I3(GND_net), .O(n2405));   // verilog/coms.v(146[4] 292[11])
    defparam i1_2_lut_3_lut_adj_2521.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_2522 (.I0(\data_out_frame[12] [0]), .I1(n33_adj_5802), 
            .I2(n38_adj_5801), .I3(n34_adj_5800), .O(n28991));
    defparam i1_4_lut_adj_2522.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2523 (.I0(\data_out_frame[6] [0]), .I1(\data_out_frame[13] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n29193));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_adj_2523.LUT_INIT = 16'h6666;
    SB_LUT4 i7_4_lut_adj_2524 (.I0(\data_out_frame[8] [4]), .I1(\data_out_frame[10] [4]), 
            .I2(n29193), .I3(n28991), .O(n18_adj_5803));
    defparam i7_4_lut_adj_2524.LUT_INIT = 16'h6996;
    SB_LUT4 i5_2_lut_adj_2525 (.I0(n28638), .I1(\data_out_frame[7] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n16_adj_5804));
    defparam i5_2_lut_adj_2525.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_2526 (.I0(\data_out_frame[6] [2]), .I1(n18_adj_5803), 
            .I2(n28766), .I3(\data_out_frame[10] [3]), .O(n20_adj_5805));
    defparam i9_4_lut_adj_2526.LUT_INIT = 16'h6996;
    SB_LUT4 equal_278_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10));   // verilog/coms.v(154[7:23])
    defparam equal_278_i10_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i17345_4_lut (.I0(n14836), .I1(n34309), .I2(rx_data[0]), .I3(\data_in_frame[22]_c [0]), 
            .O(n21168));   // verilog/coms.v(92[13:20])
    defparam i17345_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i10_4_lut_adj_2527 (.I0(n29238), .I1(n20_adj_5805), .I2(n16_adj_5804), 
            .I3(n29100), .O(data_out_frame_27__7__N_2406));
    defparam i10_4_lut_adj_2527.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2528 (.I0(n12771), .I1(n25222), .I2(GND_net), 
            .I3(GND_net), .O(n26094));
    defparam i1_2_lut_adj_2528.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_2529 (.I0(n30093), .I1(n26094), .I2(\data_out_frame[14] [2]), 
            .I3(data_out_frame_27__7__N_2406), .O(n25134));
    defparam i3_4_lut_adj_2529.LUT_INIT = 16'h6996;
    SB_LUT4 equal_270_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10_adj_5807));   // verilog/coms.v(154[7:23])
    defparam equal_270_i10_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i12620_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[2] [0]), .O(n16492));
    defparam i12620_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12623_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[2] [1]), .O(n16495));
    defparam i12623_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut_adj_2530 (.I0(\data_in_frame[1] [1]), .I1(\data_in_frame[1] [0]), 
            .I2(\data_in_frame[3] [2]), .I3(\data_in_frame[0] [6]), .O(n28650));   // verilog/coms.v(71[16:27])
    defparam i1_3_lut_4_lut_adj_2530.LUT_INIT = 16'h6996;
    SB_LUT4 i17346_3_lut (.I0(n21168), .I1(\data_in_frame[22]_c [0]), .I2(reset), 
            .I3(GND_net), .O(n16380));   // verilog/TinyFPGA_B.v(45[5:10])
    defparam i17346_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_2531 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1] [1]), 
            .I2(\data_in_frame[0] [7]), .I3(GND_net), .O(n28837));   // verilog/coms.v(74[16:34])
    defparam i1_2_lut_3_lut_adj_2531.LUT_INIT = 16'h9696;
    SB_LUT4 i12626_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[2] [2]), .O(n16498));
    defparam i12626_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12629_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[2] [3]), .O(n16501));
    defparam i12629_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_4_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[2] [4]), .O(n28173));
    defparam i11_4_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12665_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[2] [5]), .O(n16537));
    defparam i12665_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12668_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[2] [6]), .O(n16540));
    defparam i12668_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12671_3_lut_4_lut (.I0(n14826), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[2] [7]), .O(n16543));
    defparam i12671_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12661_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [1]), 
            .I3(\data_in[0] [1]), .O(n16533));   // verilog/coms.v(128[12] 293[6])
    defparam i12661_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12594_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in[3] [7]), .O(n16466));   // verilog/coms.v(128[12] 293[6])
    defparam i12594_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12632_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in[3] [6]), .O(n16504));   // verilog/coms.v(128[12] 293[6])
    defparam i12632_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_2_lut_3_lut_adj_2532 (.I0(\data_out_frame[21] [6]), .I1(\data_out_frame[21] [7]), 
            .I2(n30161), .I3(GND_net), .O(n7_adj_5808));
    defparam i2_2_lut_3_lut_adj_2532.LUT_INIT = 16'h6969;
    SB_LUT4 i12633_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in[3] [5]), .O(n16505));   // verilog/coms.v(128[12] 293[6])
    defparam i12633_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2533 (.I0(n10), .I1(\FRAME_MATCHER.i [0]), 
            .I2(n24778), .I3(GND_net), .O(n14858));
    defparam i1_2_lut_3_lut_adj_2533.LUT_INIT = 16'hefef;
    SB_LUT4 i2_3_lut_4_lut_adj_2534 (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(\FRAME_MATCHER.i [2]), .I3(\FRAME_MATCHER.i [1]), .O(n6_adj_5809));
    defparam i2_3_lut_4_lut_adj_2534.LUT_INIT = 16'h2000;
    SB_LUT4 i2_2_lut_4_lut (.I0(n2405), .I1(n161), .I2(\FRAME_MATCHER.i [2]), 
            .I3(\FRAME_MATCHER.i [1]), .O(n24778));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12634_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in[3] [4]), .O(n16506));   // verilog/coms.v(128[12] 293[6])
    defparam i12634_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_33_lut  (.I0(n34365), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [31]), .I3(n24650), .O(n14518)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_33_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i12635_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in[3] [3]), .O(n16507));   // verilog/coms.v(128[12] 293[6])
    defparam i12635_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2535 (.I0(reset), .I1(n2405), .I2(rx_data_ready), 
            .I3(\FRAME_MATCHER.rx_data_ready_prev ), .O(n28382));
    defparam i1_2_lut_3_lut_4_lut_adj_2535.LUT_INIT = 16'hffbf;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_32_lut  (.I0(n34364), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [30]), .I3(n24649), .O(n14520)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_32_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_32  (.CI(n24649), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [30]), .CO(n24650));
    SB_LUT4 i1_3_lut_4_lut_adj_2536 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1] [1]), 
            .I2(\data_in_frame[1] [0]), .I3(n28710), .O(n13375));   // verilog/coms.v(74[16:34])
    defparam i1_3_lut_4_lut_adj_2536.LUT_INIT = 16'h6996;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_31_lut  (.I0(n34354), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [29]), .I3(n24648), .O(n14522)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_31_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_31  (.CI(n24648), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [29]), .CO(n24649));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_30_lut  (.I0(n34351), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [28]), .I3(n24647), .O(n14524)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_30_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_30  (.CI(n24647), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [28]), .CO(n24648));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_29_lut  (.I0(n34339), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [27]), .I3(n24646), .O(n14526)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_29_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2537 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [0]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n28622), .O(n28625));
    defparam i1_2_lut_3_lut_4_lut_adj_2537.LUT_INIT = 16'hff7f;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_29  (.CI(n24646), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [27]), .CO(n24647));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_28_lut  (.I0(n34334), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [26]), .I3(n24645), .O(n14528)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_28_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i12636_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in[3] [2]), .O(n16508));   // verilog/coms.v(128[12] 293[6])
    defparam i12636_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2538 (.I0(\data_in_frame[14] [2]), .I1(n26084), 
            .I2(n30613), .I3(\data_in_frame[16] [3]), .O(n28913));
    defparam i1_2_lut_3_lut_4_lut_adj_2538.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2539 (.I0(n2405), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(\FRAME_MATCHER.i [3]), .O(n28603));
    defparam i1_2_lut_4_lut_adj_2539.LUT_INIT = 16'hfdff;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_28  (.CI(n24645), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [26]), .CO(n24646));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_27_lut  (.I0(n34306), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [25]), .I3(n24644), .O(n14530)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_27_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2540 (.I0(\data_in_frame[12]_c [6]), 
            .I1(\data_in_frame[10] [4]), .I2(n13456), .I3(n13881), .O(n28910));   // verilog/coms.v(97[12:25])
    defparam i1_2_lut_3_lut_4_lut_adj_2540.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_27  (.CI(n24644), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [25]), .CO(n24645));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_26_lut  (.I0(n34301), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [24]), .I3(n24643), .O(n14532)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_26_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_26  (.CI(n24643), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [24]), .CO(n24644));
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(n29021), .I1(n30289), .I2(n13466), 
            .I3(GND_net), .O(n30906));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i7_3_lut_4_lut_adj_2541 (.I0(\data_in_frame[0] [0]), .I1(\data_in_frame[1] [7]), 
            .I2(n13287), .I3(Kp_23__N_510), .O(n24_adj_5810));   // verilog/coms.v(71[16:69])
    defparam i7_3_lut_4_lut_adj_2541.LUT_INIT = 16'h0906;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_25_lut  (.I0(n34300), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [23]), .I3(n24642), .O(n14534)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_25_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_25  (.CI(n24642), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [23]), .CO(n24643));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_24_lut  (.I0(n34296), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [22]), .I3(n24641), .O(n14536)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_24_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_24  (.CI(n24641), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [22]), .CO(n24642));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_23_lut  (.I0(n34292), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [21]), .I3(n24640), .O(n14538)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_23_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_23  (.CI(n24640), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [21]), .CO(n24641));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_22_lut  (.I0(n34291), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [20]), .I3(n24639), .O(n14540)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_22_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_22  (.CI(n24639), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [20]), .CO(n24640));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_21_lut  (.I0(n34290), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [19]), .I3(n24638), .O(n14542)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_21_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_21  (.CI(n24638), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [19]), .CO(n24639));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_20_lut  (.I0(n34289), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [18]), .I3(n24637), .O(n14544)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_20_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_20  (.CI(n24637), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [18]), .CO(n24638));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_19_lut  (.I0(n34288), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [17]), .I3(n24636), .O(n14546)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_19_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_19  (.CI(n24636), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [17]), .CO(n24637));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_18_lut  (.I0(n34287), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [16]), .I3(n24635), .O(n14548)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_18_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_18  (.CI(n24635), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [16]), .CO(n24636));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_17_lut  (.I0(n34286), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [15]), .I3(n24634), .O(n14550)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_17_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_17  (.CI(n24634), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [15]), .CO(n24635));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_16_lut  (.I0(n34284), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [14]), .I3(n24633), .O(n14552)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_16_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_16  (.CI(n24633), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [14]), .CO(n24634));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_15_lut  (.I0(n34270), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [13]), .I3(n24632), .O(n14554)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_15_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_15  (.CI(n24632), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [13]), .CO(n24633));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_14_lut  (.I0(n34269), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [12]), .I3(n24631), .O(n14556)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_14_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_14  (.CI(n24631), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [12]), .CO(n24632));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_13_lut  (.I0(n34268), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [11]), .I3(n24630), .O(n14558)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_13_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_13  (.CI(n24630), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [11]), .CO(n24631));
    SB_LUT4 i12637_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in[3] [1]), .O(n16509));   // verilog/coms.v(128[12] 293[6])
    defparam i12637_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_12_lut  (.I0(n34267), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [10]), .I3(n24629), .O(n14560)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_12_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_12  (.CI(n24629), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [10]), .CO(n24630));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_11_lut  (.I0(n34266), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [9]), .I3(n24628), .O(n14562)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_11_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_11  (.CI(n24628), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [9]), .CO(n24629));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_10_lut  (.I0(n34283), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [8]), .I3(n24627), .O(n14564)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_10_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_10  (.CI(n24627), .I0(n14823), 
            .I1(\FRAME_MATCHER.i [8]), .CO(n24628));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_9_lut  (.I0(n34282), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [7]), .I3(n24626), .O(n14566)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_9_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_9  (.CI(n24626), .I0(n14823), .I1(\FRAME_MATCHER.i [7]), 
            .CO(n24627));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_8_lut  (.I0(n34281), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [6]), .I3(n24625), .O(n14568)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_8_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_8  (.CI(n24625), .I0(n14823), .I1(\FRAME_MATCHER.i [6]), 
            .CO(n24626));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_7_lut  (.I0(n34280), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n24624), .O(n14570)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_7_lut .LUT_INIT = 16'h8BB8;
    SB_DFF \data_out_frame_7[[6__4915  (.Q(\data_out_frame[7] [6]), .C(clk16MHz), 
           .D(n15703));   // verilog/coms.v(128[12] 293[6])
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_7  (.CI(n24624), .I0(n14823), .I1(\FRAME_MATCHER.i [5]), 
            .CO(n24625));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_6_lut  (.I0(n34279), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [4]), .I3(n24623), .O(n14572)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_6_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_6  (.CI(n24623), .I0(n14823), .I1(\FRAME_MATCHER.i [4]), 
            .CO(n24624));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_5_lut  (.I0(n34278), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [3]), .I3(n24622), .O(n14574)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_5_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_5  (.CI(n24622), .I0(n14823), .I1(\FRAME_MATCHER.i [3]), 
            .CO(n24623));
    SB_LUT4 i12638_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in[3] [0]), .O(n16510));   // verilog/coms.v(128[12] 293[6])
    defparam i12638_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12639_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [7]), 
            .I3(\data_in[2] [7]), .O(n16511));   // verilog/coms.v(128[12] 293[6])
    defparam i12639_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12640_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [6]), 
            .I3(\data_in[2] [6]), .O(n16512));   // verilog/coms.v(128[12] 293[6])
    defparam i12640_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12641_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [5]), 
            .I3(\data_in[2] [5]), .O(n16513));   // verilog/coms.v(128[12] 293[6])
    defparam i12641_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i25093_2_lut_3_lut (.I0(n2405), .I1(rx_data_ready), .I2(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I3(GND_net), .O(n29354));
    defparam i25093_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i12642_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [4]), 
            .I3(\data_in[2] [4]), .O(n16514));   // verilog/coms.v(128[12] 293[6])
    defparam i12642_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12643_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [3]), 
            .I3(\data_in[2] [3]), .O(n16515));   // verilog/coms.v(128[12] 293[6])
    defparam i12643_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_4_lut  (.I0(n34277), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n24621), .O(n14576)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_4_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_4  (.CI(n24621), .I0(n14823), .I1(\FRAME_MATCHER.i [2]), 
            .CO(n24622));
    SB_DFF \data_out_frame_7[[5__4916  (.Q(\data_out_frame[7] [5]), .C(clk16MHz), 
           .D(n15702));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_3_lut  (.I0(n34276), .I1(n14823), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n24620), .O(n14578)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_3_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_3  (.CI(n24620), .I0(n14823), .I1(\FRAME_MATCHER.i [1]), 
            .CO(n24621));
    SB_LUT4 \FRAME_MATCHER.i_1583_add_4_2_lut  (.I0(GND_net), .I1(n161), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1583_add_4_2_lut .LUT_INIT = 16'hC33C;
    SB_CARRY \FRAME_MATCHER.i_1583_add_4_2  (.CI(GND_net), .I0(n161), .I1(\FRAME_MATCHER.i [0]), 
            .CO(n24620));
    SB_DFF \data_out_frame_7[[4__4917  (.Q(\data_out_frame[7] [4]), .C(clk16MHz), 
           .D(n15701));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_7[[3__4918  (.Q(\data_out_frame[7] [3]), .C(clk16MHz), 
           .D(n15700));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_7[[2__4919  (.Q(\data_out_frame[7] [2]), .C(clk16MHz), 
           .D(n15699));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_7[[1__4920  (.Q(\data_out_frame[7] [1]), .C(clk16MHz), 
           .D(n15698));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_7[[0__4921  (.Q(\data_out_frame[7] [0]), .C(clk16MHz), 
           .D(n15697));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[7__4922  (.Q(\data_out_frame[6] [7]), .C(clk16MHz), 
           .D(n15696));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[6__4923  (.Q(\data_out_frame[6] [6]), .C(clk16MHz), 
           .D(n15695));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[5__4924  (.Q(\data_out_frame[6] [5]), .C(clk16MHz), 
           .D(n15694));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[4__4925  (.Q(\data_out_frame[6] [4]), .C(clk16MHz), 
           .D(n15693));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[3__4926  (.Q(\data_out_frame[6] [3]), .C(clk16MHz), 
           .D(n15692));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[2__4927  (.Q(\data_out_frame[6] [2]), .C(clk16MHz), 
           .D(n15691));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[1__4928  (.Q(\data_out_frame[6] [1]), .C(clk16MHz), 
           .D(n15690));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_6[[0__4929  (.Q(\data_out_frame[6] [0]), .C(clk16MHz), 
           .D(n15689));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[7__4930  (.Q(\data_out_frame[5] [7]), .C(clk16MHz), 
           .D(n15688));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[6__4931  (.Q(\data_out_frame[5] [6]), .C(clk16MHz), 
           .D(n15687));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[5__4932  (.Q(\data_out_frame[5] [5]), .C(clk16MHz), 
           .D(n15686));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[4__4933  (.Q(\data_out_frame[5] [4]), .C(clk16MHz), 
           .D(n15685));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[3__4934  (.Q(\data_out_frame[5] [3]), .C(clk16MHz), 
           .D(n15684));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[2__4935  (.Q(\data_out_frame[5] [2]), .C(clk16MHz), 
           .D(n15683));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[1__4936  (.Q(\data_out_frame[5] [1]), .C(clk16MHz), 
           .D(n15682));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_5[[0__4937  (.Q(\data_out_frame[5] [0]), .C(clk16MHz), 
           .D(n15681));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[7__4938  (.Q(\data_out_frame[4] [7]), .C(clk16MHz), 
           .D(n15680));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[6__4939  (.Q(\data_out_frame[4] [6]), .C(clk16MHz), 
           .D(n15679));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[5__4940  (.Q(\data_out_frame[4] [5]), .C(clk16MHz), 
           .D(n15678));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[4__4941  (.Q(\data_out_frame[4] [4]), .C(clk16MHz), 
           .D(n15677));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[3__4942  (.Q(\data_out_frame[4] [3]), .C(clk16MHz), 
           .D(n15676));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[2__4943  (.Q(\data_out_frame[4] [2]), .C(clk16MHz), 
           .D(n15675));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[1__4944  (.Q(\data_out_frame[4] [1]), .C(clk16MHz), 
           .D(n15674));   // verilog/coms.v(128[12] 293[6])
    SB_DFF \data_out_frame_4[[0__4945  (.Q(\data_out_frame[4] [0]), .C(clk16MHz), 
           .D(n15673));   // verilog/coms.v(128[12] 293[6])
    SB_DFF control_mode_i0_i0 (.Q(control_mode[0]), .C(clk16MHz), .D(n15666));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i23 (.Q(setpoint[23]), .C(clk16MHz), .E(n14392), 
            .D(n3304[23]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i22 (.Q(setpoint[22]), .C(clk16MHz), .E(n14392), 
            .D(n3304[22]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i21 (.Q(setpoint[21]), .C(clk16MHz), .E(n14392), 
            .D(n3304[21]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i20 (.Q(setpoint[20]), .C(clk16MHz), .E(n14392), 
            .D(n3304[20]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i19 (.Q(setpoint[19]), .C(clk16MHz), .E(n14392), 
            .D(n3304[19]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i18 (.Q(setpoint[18]), .C(clk16MHz), .E(n14392), 
            .D(n3304[18]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i17 (.Q(setpoint[17]), .C(clk16MHz), .E(n14392), 
            .D(n3304[17]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i16 (.Q(setpoint[16]), .C(clk16MHz), .E(n14392), 
            .D(n3304[16]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i15 (.Q(setpoint[15]), .C(clk16MHz), .E(n14392), 
            .D(n3304[15]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i14 (.Q(setpoint[14]), .C(clk16MHz), .E(n14392), 
            .D(n3304[14]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i13 (.Q(setpoint[13]), .C(clk16MHz), .E(n14392), 
            .D(n3304[13]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i12 (.Q(setpoint[12]), .C(clk16MHz), .E(n14392), 
            .D(n3304[12]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i11 (.Q(setpoint[11]), .C(clk16MHz), .E(n14392), 
            .D(n3304[11]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i10 (.Q(setpoint[10]), .C(clk16MHz), .E(n14392), 
            .D(n3304[10]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i9 (.Q(setpoint[9]), .C(clk16MHz), .E(n14392), 
            .D(n3304[9]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i8 (.Q(setpoint[8]), .C(clk16MHz), .E(n14392), 
            .D(n3304[8]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i7 (.Q(setpoint[7]), .C(clk16MHz), .E(n14392), 
            .D(n3304[7]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i6 (.Q(setpoint[6]), .C(clk16MHz), .E(n14392), 
            .D(n3304[6]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i5 (.Q(setpoint[5]), .C(clk16MHz), .E(n14392), 
            .D(n3304[5]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i4 (.Q(setpoint[4]), .C(clk16MHz), .E(n14392), 
            .D(n3304[4]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i3 (.Q(setpoint[3]), .C(clk16MHz), .E(n14392), 
            .D(n3304[3]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i2 (.Q(setpoint[2]), .C(clk16MHz), .E(n14392), 
            .D(n3304[2]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFER setpoint_i0_i1 (.Q(setpoint[1]), .C(clk16MHz), .E(n14392), 
            .D(n3304[1]), .R(reset));   // verilog/coms.v(128[12] 293[6])
    SB_DFFS \FRAME_MATCHER.state_FSM_i9  (.Q(\FRAME_MATCHER.i_31__N_3743 ), 
            .C(clk16MHz), .D(n36353), .S(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i8  (.Q(\FRAME_MATCHER.i_31__N_3744 ), 
            .C(clk16MHz), .D(n14274), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i7  (.Q(data_out_frame_22__7__N_3121), 
            .C(clk16MHz), .D(n1553), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i6  (.Q(\FRAME_MATCHER.state[3] ), .C(clk16MHz), 
            .D(n18968), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i5  (.Q(\FRAME_MATCHER.i_31__N_3745 ), 
            .C(clk16MHz), .D(n8614), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i4  (.Q(\FRAME_MATCHER.i_31__N_3746 ), 
            .C(clk16MHz), .D(n27977), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i3  (.Q(\FRAME_MATCHER.i_31__N_3747 ), 
            .C(clk16MHz), .D(n1565), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i2  (.Q(\FRAME_MATCHER.i_31__N_3748 ), 
            .C(clk16MHz), .D(n14280), .R(reset));   // verilog/coms.v(146[4] 292[11])
    SB_LUT4 i12644_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [2]), 
            .I3(\data_in[2] [2]), .O(n16516));   // verilog/coms.v(128[12] 293[6])
    defparam i12644_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12645_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [1]), 
            .I3(\data_in[2] [1]), .O(n16517));   // verilog/coms.v(128[12] 293[6])
    defparam i12645_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12646_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [0]), 
            .I3(\data_in[2] [0]), .O(n16518));   // verilog/coms.v(128[12] 293[6])
    defparam i12646_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12647_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [7]), 
            .I3(\data_in[1] [7]), .O(n16519));   // verilog/coms.v(128[12] 293[6])
    defparam i12647_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12648_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [6]), 
            .I3(\data_in[1] [6]), .O(n16520));   // verilog/coms.v(128[12] 293[6])
    defparam i12648_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12649_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [5]), 
            .I3(\data_in[1] [5]), .O(n16521));   // verilog/coms.v(128[12] 293[6])
    defparam i12649_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_3_lut_4_lut_adj_2542 (.I0(\data_in_frame[0] [0]), .I1(\data_in_frame[1] [7]), 
            .I2(\data_in_frame[4] [3]), .I3(n29075), .O(Kp_23__N_640));   // verilog/coms.v(71[16:69])
    defparam i1_3_lut_4_lut_adj_2542.LUT_INIT = 16'h6996;
    SB_LUT4 i12650_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [4]), 
            .I3(\data_in[1] [4]), .O(n16522));   // verilog/coms.v(128[12] 293[6])
    defparam i12650_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i82 (.Q(\data_in_frame[10] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15955));   // verilog/coms.v(128[12] 293[6])
    SB_LUT4 i12651_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [3]), 
            .I3(\data_in[1] [3]), .O(n16523));   // verilog/coms.v(128[12] 293[6])
    defparam i12651_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2543 (.I0(\data_in_frame[4] [2]), .I1(\data_in_frame[1] [7]), 
            .I2(\data_in_frame[1] [6]), .I3(n28755), .O(Kp_23__N_637));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_3_lut_4_lut_adj_2543.LUT_INIT = 16'h6996;
    SB_LUT4 i12652_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [2]), 
            .I3(\data_in[1] [2]), .O(n16524));   // verilog/coms.v(128[12] 293[6])
    defparam i12652_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12653_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [1]), 
            .I3(\data_in[1] [1]), .O(n16525));   // verilog/coms.v(128[12] 293[6])
    defparam i12653_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_2544 (.I0(byte_transmit_counter[6]), .I1(byte_transmit_counter[5]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_5811));   // verilog/coms.v(209[6] 216[9])
    defparam i1_2_lut_adj_2544.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_2545 (.I0(byte_transmit_counter[4]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(byte_transmit_counter[1]), 
            .O(n4_adj_5812));
    defparam i1_4_lut_adj_2545.LUT_INIT = 16'ha8a0;
    SB_LUT4 i18054_4_lut (.I0(byte_transmit_counter[3]), .I1(byte_transmit_counter[7]), 
            .I2(n4_adj_5812), .I3(n4_adj_5811), .O(n21888));
    defparam i18054_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i17663_2_lut (.I0(tx_active), .I1(r_SM_Main_2__N_4517[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21483));
    defparam i17663_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12654_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [0]), 
            .I3(\data_in[1] [0]), .O(n16526));   // verilog/coms.v(128[12] 293[6])
    defparam i12654_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12655_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [7]), 
            .I3(\data_in[0] [7]), .O(n16527));   // verilog/coms.v(128[12] 293[6])
    defparam i12655_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12656_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [6]), 
            .I3(\data_in[0] [6]), .O(n16528));   // verilog/coms.v(128[12] 293[6])
    defparam i12656_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12657_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [5]), 
            .I3(\data_in[0] [5]), .O(n16529));   // verilog/coms.v(128[12] 293[6])
    defparam i12657_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12658_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [4]), 
            .I3(\data_in[0] [4]), .O(n16530));   // verilog/coms.v(128[12] 293[6])
    defparam i12658_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i12659_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [3]), 
            .I3(\data_in[0] [3]), .O(n16531));   // verilog/coms.v(128[12] 293[6])
    defparam i12659_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2546 (.I0(\data_in_frame[16][5] ), .I1(n30162), 
            .I2(n28790), .I3(Kp_23__N_1326), .O(n32337));
    defparam i1_2_lut_3_lut_4_lut_adj_2546.LUT_INIT = 16'h9669;
    SB_LUT4 select_1310_Select_0_i1_2_lut_3_lut_4_lut (.I0(tx_active), .I1(r_SM_Main_2__N_4517[0]), 
            .I2(n21888), .I3(\FRAME_MATCHER.i_31__N_3745 ), .O(n1_adj_5775));   // verilog/coms.v(146[4] 292[11])
    defparam select_1310_Select_0_i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i12660_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [2]), 
            .I3(\data_in[0] [2]), .O(n16532));   // verilog/coms.v(128[12] 293[6])
    defparam i12660_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i28354_2_lut_4_lut (.I0(\data_in[3] [1]), .I1(n10_adj_5735), 
            .I2(\data_in[3] [5]), .I3(n4401), .O(n32647));
    defparam i28354_2_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i11903_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [0]), 
            .I3(\data_in[0] [0]), .O(n15775));   // verilog/coms.v(128[12] 293[6])
    defparam i11903_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2547 (.I0(data_out_frame_27__7__N_2406), 
            .I1(n26090), .I2(n13589), .I3(n13847), .O(n26252));
    defparam i1_2_lut_3_lut_4_lut_adj_2547.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2548 (.I0(\data_in[3] [1]), .I1(n10_adj_5735), 
            .I2(\data_in[3] [5]), .I3(n17_adj_5733), .O(n18971));
    defparam i1_2_lut_4_lut_adj_2548.LUT_INIT = 16'hffdf;
    SB_LUT4 i28651_3_lut (.I0(\data_out_frame[6] [5]), .I1(\data_out_frame[7] [5]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32955));
    defparam i28651_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28650_3_lut (.I0(\data_out_frame[4] [5]), .I1(\data_out_frame[5] [5]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32954));
    defparam i28650_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_5_i11_3_lut (.I0(\data_out_frame[12] [5]), 
            .I1(\data_out_frame[13] [5]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5813));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_5_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28627_4_lut (.I0(n11_adj_5813), .I1(\data_out_frame[14] [5]), 
            .I2(byte_transmit_counter[1]), .I3(byte_transmit_counter[0]), 
            .O(n32931));
    defparam i28627_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31167_3_lut (.I0(n36289), .I1(n32931), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35471));
    defparam i31167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12499_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[0]), 
            .I3(\data_in_frame[1] [0]), .O(n16371));
    defparam i12499_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_2549 (.I0(n13601), .I1(data_out_frame_27__7__N_2536), 
            .I2(n28919), .I3(n13794), .O(n30121));
    defparam i2_3_lut_4_lut_adj_2549.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2550 (.I0(\data_in_frame[15][7] ), .I1(n26132), 
            .I2(Kp_23__N_1018), .I3(GND_net), .O(n26100));
    defparam i1_2_lut_3_lut_adj_2550.LUT_INIT = 16'h6969;
    SB_LUT4 i12502_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[1]), 
            .I3(\data_in_frame[1] [1]), .O(n16374));
    defparam i12502_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12523_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[2]), 
            .I3(\data_in_frame[1] [2]), .O(n16395));
    defparam i12523_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12595_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[3]), 
            .I3(\data_in_frame[1] [3]), .O(n16467));
    defparam i12595_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12598_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[4]), 
            .I3(\data_in_frame[1] [4]), .O(n16470));
    defparam i12598_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12611_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[5]), 
            .I3(\data_in_frame[1] [5]), .O(n16483));
    defparam i12611_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12614_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[6]), 
            .I3(\data_in_frame[1] [6]), .O(n16486));
    defparam i12614_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12617_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28622), .I2(rx_data[7]), 
            .I3(\data_in_frame[1] [7]), .O(n16489));
    defparam i12617_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_2551 (.I0(n26086), .I1(n25406), .I2(\data_in_frame[17] [5]), 
            .I3(n25267), .O(n28979));
    defparam i1_2_lut_4_lut_adj_2551.LUT_INIT = 16'h6996;
    SB_LUT4 i12199_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[14] [7]), .O(n16071));
    defparam i12199_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_2552 (.I0(n26086), .I1(n25406), .I2(\data_in_frame[17] [5]), 
            .I3(n25271), .O(Kp_23__N_1313));
    defparam i1_2_lut_4_lut_adj_2552.LUT_INIT = 16'h6996;
    SB_LUT4 i12196_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[14] [6]), .O(n16068));
    defparam i12196_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_4_lut_4_lut_adj_2553 (.I0(n14846), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[14] [5]), .O(n28139));
    defparam i11_4_lut_4_lut_adj_2553.LUT_INIT = 16'hfe10;
    SB_LUT4 i12190_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[14] [4]), .O(n16062));
    defparam i12190_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12187_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[14] [3]), .O(n16059));
    defparam i12187_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12184_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[14] [2]), .O(n16056));
    defparam i12184_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2554 (.I0(\data_in_frame[12][5] ), .I1(n13524), 
            .I2(n13927), .I3(n25232), .O(n25377));   // verilog/coms.v(97[12:25])
    defparam i1_2_lut_3_lut_4_lut_adj_2554.LUT_INIT = 16'h6996;
    SB_LUT4 i12181_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[14] [1]), .O(n16053));
    defparam i12181_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12178_3_lut_4_lut (.I0(n14846), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[14] [0]), .O(n16050));
    defparam i12178_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12056_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[0]), 
            .I3(\data_in_frame[9] [0]), .O(n15928));
    defparam i12056_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12059_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[1]), 
            .I3(\data_in_frame[9] [1]), .O(n15931));
    defparam i12059_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12062_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[2]), 
            .I3(\data_in_frame[9] [2]), .O(n15934));
    defparam i12062_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12065_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[3]), 
            .I3(\data_in_frame[9] [3]), .O(n15937));
    defparam i12065_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2555 (.I0(\data_in_frame[12][5] ), .I1(n13524), 
            .I2(n13927), .I3(\data_in_frame[13][0] ), .O(n29021));   // verilog/coms.v(97[12:25])
    defparam i1_2_lut_3_lut_4_lut_adj_2555.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2556 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n28617), .I3(\FRAME_MATCHER.i [2]), .O(n30632));
    defparam i2_3_lut_4_lut_adj_2556.LUT_INIT = 16'hfff7;
    SB_LUT4 i12068_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[4]), 
            .I3(\data_in_frame[9] [4]), .O(n15940));
    defparam i12068_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31779_2_lut_3_lut (.I0(tx_active), .I1(r_SM_Main_2__N_4517[0]), 
            .I2(n21888), .I3(GND_net), .O(tx_transmit_N_4388));
    defparam i31779_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i1_2_lut_4_lut_adj_2557 (.I0(n10), .I1(reset), .I2(n2405), 
            .I3(n161), .O(n28622));
    defparam i1_2_lut_4_lut_adj_2557.LUT_INIT = 16'hefff;
    SB_LUT4 i12071_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[5]), 
            .I3(\data_in_frame[9] [5]), .O(n15943));
    defparam i12071_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12074_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[6]), 
            .I3(\data_in_frame[9] [6]), .O(n15946));
    defparam i12074_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_2558 (.I0(n13988), .I1(n26252), .I2(\data_out_frame[14] [5]), 
            .I3(n28806), .O(n30093));
    defparam i2_3_lut_4_lut_adj_2558.LUT_INIT = 16'h6996;
    SB_LUT4 i12077_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28377), .I2(rx_data[7]), 
            .I3(\data_in_frame[9] [7]), .O(n15949));
    defparam i12077_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_3748 ), .I1(\FRAME_MATCHER.i_31__N_3746 ), 
            .I2(Kp_23__N_1510), .I3(\FRAME_MATCHER.i_31__N_3747 ), .O(n6_adj_5765));   // verilog/coms.v(146[4] 292[11])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_2_lut_3_lut (.I0(\data_out_frame[11] [5]), .I1(\data_out_frame[11] [0]), 
            .I2(\data_out_frame[10] [6]), .I3(GND_net), .O(n30));   // verilog/coms.v(86[17:63])
    defparam i10_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i6_3_lut_4_lut (.I0(\data_out_frame[9] [7]), .I1(n29090), .I2(\data_out_frame[6] [5]), 
            .I3(\data_out_frame[7] [2]), .O(n17_adj_5797));
    defparam i6_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 equal_269_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8));   // verilog/coms.v(155[12:15])
    defparam equal_269_i8_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_4_lut_adj_2559 (.I0(\data_out_frame[9] [4]), .I1(\data_out_frame[6] [7]), 
            .I2(\data_out_frame[4] [5]), .I3(\data_out_frame[9] [3]), .O(n29118));
    defparam i2_3_lut_4_lut_adj_2559.LUT_INIT = 16'h6996;
    SB_LUT4 equal_268_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_5814));   // verilog/coms.v(155[12:15])
    defparam equal_268_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i11928_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[15] ), 
            .I3(\data_out_frame[21] [6]), .O(n15800));
    defparam i11928_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11827_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[10]), 
            .I3(\data_out_frame[7] [2]), .O(n15699));
    defparam i11827_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11854_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[13]), 
            .I3(\data_out_frame[10] [5]), .O(n15726));
    defparam i11854_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11840_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[7]), 
            .I3(\data_out_frame[8] [7]), .O(n15712));
    defparam i11840_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11831_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[14]), 
            .I3(\data_out_frame[7] [6]), .O(n15703));
    defparam i11831_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11844_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[19]), 
            .I3(\data_out_frame[9] [3]), .O(n15716));
    defparam i11844_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11884_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[12]), 
            .I3(\data_out_frame[13] [4]), .O(n15756));
    defparam i11884_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11822_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[21]), 
            .I3(\data_out_frame[6] [5]), .O(n15694));
    defparam i11822_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11859_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[2]), 
            .I3(\data_out_frame[11] [2]), .O(n15731));
    defparam i11859_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2560 (.I0(\data_out_frame[4] [3]), .I1(\data_out_frame[4] [2]), 
            .I2(\data_out_frame[6] [4]), .I3(GND_net), .O(n13214));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_3_lut_adj_2560.LUT_INIT = 16'h9696;
    SB_LUT4 i11895_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[2]), 
            .I3(\data_out_frame[14] [2]), .O(n15767));
    defparam i11895_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2561 (.I0(\data_out_frame[12] [4]), .I1(\data_out_frame[10] [2]), 
            .I2(\data_out_frame[10] [4]), .I3(GND_net), .O(n29181));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_3_lut_adj_2561.LUT_INIT = 16'h9696;
    SB_LUT4 i11834_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[1]), 
            .I3(\data_out_frame[8] [1]), .O(n15706));
    defparam i11834_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2562 (.I0(\data_out_frame[10] [5]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[4] [0]), .I3(GND_net), .O(n29238));
    defparam i1_2_lut_3_lut_adj_2562.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2563 (.I0(\data_out_frame[13] [4]), .I1(\data_out_frame[13] [3]), 
            .I2(\data_out_frame[13] [1]), .I3(GND_net), .O(n6_adj_5782));
    defparam i1_2_lut_3_lut_adj_2563.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_2564 (.I0(n13988), .I1(n13794), .I2(n29093), 
            .I3(n13817), .O(n25222));
    defparam i1_2_lut_4_lut_adj_2564.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_2565 (.I0(n13988), .I1(n13794), .I2(n29093), 
            .I3(GND_net), .O(n29094));
    defparam i1_2_lut_3_lut_adj_2565.LUT_INIT = 16'h9696;
    SB_LUT4 i11924_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[9] ), 
            .I3(\data_out_frame[21] [1]), .O(n15796));
    defparam i11924_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2566 (.I0(n26090), .I1(n13589), .I2(n13847), 
            .I3(GND_net), .O(n29093));
    defparam i1_2_lut_3_lut_adj_2566.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2567 (.I0(data_out_frame_27__7__N_2070), .I1(\data_out_frame[4] [7]), 
            .I2(\data_out_frame[7] [1]), .I3(GND_net), .O(n14263));
    defparam i1_2_lut_3_lut_adj_2567.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_2568 (.I0(\data_out_frame[9] [1]), .I1(\data_out_frame[8] [7]), 
            .I2(\data_out_frame[7] [0]), .I3(\data_out_frame[8] [5]), .O(n28707));
    defparam i2_3_lut_4_lut_adj_2568.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2569 (.I0(n13847), .I1(n28859), .I2(n25349), 
            .I3(n28813), .O(n25347));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_4_lut_adj_2569.LUT_INIT = 16'h9669;
    SB_LUT4 i11875_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[23]), 
            .I3(\data_out_frame[12] [7]), .O(n15747));
    defparam i11875_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i30344_4_lut (.I0(\data_out_frame[26] [5]), .I1(n9537), .I2(\data_out_frame[27] [5]), 
            .I3(byte_transmit_counter[0]), .O(n34442));
    defparam i30344_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_5_i21_4_lut (.I0(\data_out_frame[21] [5]), 
            .I1(\data_out_frame[22] [5]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5815));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_5_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i11932_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[15] ), 
            .I3(\data_out_frame[21] [4]), .O(n15804));
    defparam i11932_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i30658_2_lut (.I0(n21_adj_5815), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34441));
    defparam i30658_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11850_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[9]), 
            .I3(\data_out_frame[10] [1]), .O(n15722));
    defparam i11850_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11814_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[5]), 
            .I3(\data_out_frame[5] [5]), .O(n15686));
    defparam i11814_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2570 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[4] [0]), 
            .I2(\data_out_frame[6] [2]), .I3(GND_net), .O(n13790));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_3_lut_adj_2570.LUT_INIT = 16'h9696;
    SB_LUT4 i2_2_lut_4_lut_adj_2571 (.I0(data_out_frame_27__7__N_2289), .I1(\data_out_frame[5] [5]), 
            .I2(\data_out_frame[5] [6]), .I3(\data_out_frame[7] [7]), .O(n10_adj_5777));   // verilog/coms.v(74[16:42])
    defparam i2_2_lut_4_lut_adj_2571.LUT_INIT = 16'h6996;
    SB_LUT4 i11940_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[0] ), 
            .I3(\data_out_frame[22] [0]), .O(n15812));
    defparam i11940_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11848_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[23]), 
            .I3(\data_out_frame[9] [7]), .O(n15720));
    defparam i11848_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11809_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[0]), 
            .I3(\data_out_frame[5] [0]), .O(n15681));
    defparam i11809_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11930_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[6] ), 
            .I3(\data_out_frame[22] [6]), .O(n15802));
    defparam i11930_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_2572 (.I0(\data_out_frame[14] [6]), .I1(n28638), 
            .I2(n10_adj_5772), .I3(\data_out_frame[5] [4]), .O(n13794));
    defparam i1_2_lut_4_lut_adj_2572.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2573 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [1]), .I3(\data_out_frame[7] [3]), .O(n13964));   // verilog/coms.v(74[16:34])
    defparam i1_2_lut_4_lut_adj_2573.LUT_INIT = 16'h6996;
    SB_LUT4 i11863_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[6]), 
            .I3(\data_out_frame[11] [6]), .O(n15735));
    defparam i11863_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11923_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[8] ), 
            .I3(\data_out_frame[21] [0]), .O(n15795));
    defparam i11923_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11925_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[10] ), 
            .I3(\data_out_frame[21] [2]), .O(n15797));
    defparam i11925_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_0_i1_2_lut_3_lut (.I0(byte_transmit_counter[0]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5774));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_0_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_adj_2574 (.I0(\data_out_frame[12] [2]), .I1(\data_out_frame[12] [1]), 
            .I2(data_out_frame_27__7__N_2289), .I3(GND_net), .O(n4_adj_5771));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_adj_2574.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_2575 (.I0(\data_out_frame[22] [2]), .I1(n30161), 
            .I2(n6_adj_5767), .I3(n13988), .O(n4));
    defparam i1_4_lut_adj_2575.LUT_INIT = 16'h9669;
    SB_LUT4 i11871_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[19]), 
            .I3(\data_out_frame[12] [3]), .O(n15743));
    defparam i11871_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11826_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[9]), 
            .I3(\data_out_frame[7] [1]), .O(n15698));
    defparam i11826_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11855_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[14]), 
            .I3(\data_out_frame[10] [6]), .O(n15727));
    defparam i11855_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11815_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[6]), 
            .I3(\data_out_frame[5] [6]), .O(n15687));
    defparam i11815_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11832_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[15]), 
            .I3(\data_out_frame[7] [7]), .O(n15704));
    defparam i11832_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_2576 (.I0(n13240), .I1(n28975), .I2(\data_in_frame[18] [7]), 
            .I3(\data_in_frame[20] [7]), .O(n32383));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_4_lut_adj_2576.LUT_INIT = 16'h6996;
    SB_LUT4 i11806_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[5]), .I3(\data_out_frame[4] [5]), 
            .O(n15678));
    defparam i11806_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_2577 (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[9] [4]), 
            .I2(n28823), .I3(\data_out_frame[9] [3]), .O(n6_adj_5770));
    defparam i1_2_lut_4_lut_adj_2577.LUT_INIT = 16'h6996;
    SB_LUT4 i11882_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[11]), 
            .I3(\data_out_frame[13] [3]), .O(n15754));
    defparam i11882_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i5_3_lut_4_lut_adj_2578 (.I0(\data_out_frame[6] [0]), .I1(n10_adj_5768), 
            .I2(\data_out_frame[5] [7]), .I3(\data_out_frame[8] [1]), .O(n28850));   // verilog/coms.v(77[16:27])
    defparam i5_3_lut_4_lut_adj_2578.LUT_INIT = 16'h6996;
    SB_LUT4 i11823_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[22]), 
            .I3(\data_out_frame[6] [6]), .O(n15695));
    defparam i11823_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11858_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[1]), 
            .I3(\data_out_frame[11] [1]), .O(n15730));
    defparam i11858_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_2579 (.I0(n13240), .I1(n28975), .I2(\data_in_frame[18] [7]), 
            .I3(n28833), .O(Kp_23__N_1326));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_4_lut_adj_2579.LUT_INIT = 16'h6996;
    SB_LUT4 i11893_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[1]), 
            .I3(\data_out_frame[14] [1]), .O(n15765));
    defparam i11893_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i31751_3_lut (.I0(rx_data[3]), .I1(\data_in_frame[16] [3]), 
            .I2(n7_adj_3), .I3(GND_net), .O(n28155));   // verilog/coms.v(92[13:20])
    defparam i31751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11803_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[2]), .I3(\data_out_frame[4] [2]), 
            .O(n15675));
    defparam i11803_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11841_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[16]), 
            .I3(\data_out_frame[9] [0]), .O(n15713));
    defparam i11841_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i31752_3_lut (.I0(rx_data[2]), .I1(\data_in_frame[16] [2]), 
            .I2(n7_adj_3), .I3(GND_net), .O(n28157));   // verilog/coms.v(92[13:20])
    defparam i31752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31750_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[16] [1]), 
            .I2(n7_adj_3), .I3(GND_net), .O(n28149));   // verilog/coms.v(92[13:20])
    defparam i31750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_3_lut_4_lut (.I0(\data_out_frame[21] [0]), .I1(n13847), .I2(n28859), 
            .I3(n13348), .O(n25825));
    defparam i4_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i11876_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[8]), 
            .I3(\data_out_frame[13] [0]), .O(n15748));
    defparam i11876_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_3_lut_adj_2580 (.I0(reset), .I1(n8), .I2(n28599), .I3(GND_net), 
            .O(n7_adj_3));   // verilog/coms.v(92[13:20])
    defparam i1_3_lut_adj_2580.LUT_INIT = 16'hfefe;
    SB_LUT4 i31753_3_lut (.I0(rx_data[0]), .I1(\data_in_frame[16] [0]), 
            .I2(n7_adj_3), .I3(GND_net), .O(n28165));   // verilog/coms.v(92[13:20])
    defparam i31753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_adj_2581 (.I0(\data_in_frame[2] [0]), .I1(\data_in_frame[0] [0]), 
            .I2(Kp_23__N_510), .I3(GND_net), .O(n30301));   // verilog/coms.v(71[16:69])
    defparam i2_3_lut_adj_2581.LUT_INIT = 16'h9696;
    SB_LUT4 i5_3_lut_adj_2582 (.I0(n13297), .I1(Kp_23__N_510), .I2(\data_in_frame[2] [1]), 
            .I3(GND_net), .O(n22_adj_5818));
    defparam i5_3_lut_adj_2582.LUT_INIT = 16'h1414;
    SB_LUT4 i11929_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[15] ), 
            .I3(\data_out_frame[21] [5]), .O(n15801));
    defparam i11929_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i10_4_lut_adj_2583 (.I0(\data_in_frame[1] [4]), .I1(\data_in_frame[1] [3]), 
            .I2(\data_in_frame[1] [2]), .I3(\data_in_frame[1] [6]), .O(n27_c));
    defparam i10_4_lut_adj_2583.LUT_INIT = 16'h8000;
    SB_LUT4 i9_4_lut_adj_2584 (.I0(n30301), .I1(\data_in_frame[0] [7]), 
            .I2(\data_in_frame[1] [5]), .I3(\data_in_frame[1] [1]), .O(n26));
    defparam i9_4_lut_adj_2584.LUT_INIT = 16'h4010;
    SB_LUT4 i11849_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[8]), 
            .I3(\data_out_frame[10] [0]), .O(n15721));
    defparam i11849_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11446_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_3744 ), 
            .I2(GND_net), .I3(GND_net), .O(n15318));   // verilog/coms.v(128[12] 293[6])
    defparam i11446_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_2585 (.I0(n14074), .I1(n24_adj_5810), .I2(\data_in_frame[1] [0]), 
            .I3(n28800), .O(n29_c));
    defparam i12_4_lut_adj_2585.LUT_INIT = 16'h0440;
    SB_LUT4 i14_4_lut_adj_2586 (.I0(n27_c), .I1(n30873), .I2(n22_adj_5818), 
            .I3(n13752), .O(n31_adj_5819));
    defparam i14_4_lut_adj_2586.LUT_INIT = 16'h0020;
    SB_LUT4 i11813_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[4]), 
            .I3(\data_out_frame[5] [4]), .O(n15685));
    defparam i11813_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i16_4_lut_adj_2587 (.I0(n31_adj_5819), .I1(n29_c), .I2(n32685), 
            .I3(n26), .O(\FRAME_MATCHER.state_31__N_3846 [3]));
    defparam i16_4_lut_adj_2587.LUT_INIT = 16'h0800;
    SB_LUT4 i1_2_lut_adj_2588 (.I0(data_out_frame_22__7__N_3121), .I1(\FRAME_MATCHER.state_31__N_3846 [3]), 
            .I2(GND_net), .I3(GND_net), .O(n18968));   // verilog/coms.v(146[4] 292[11])
    defparam i1_2_lut_adj_2588.LUT_INIT = 16'h8888;
    SB_LUT4 i11938_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[1] ), 
            .I3(\data_out_frame[22] [1]), .O(n15810));
    defparam i11938_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11836_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[3]), 
            .I3(\data_out_frame[8] [3]), .O(n15708));
    defparam i11836_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11810_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[1]), 
            .I3(\data_out_frame[5] [1]), .O(n15682));
    defparam i11810_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11937_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[2] ), 
            .I3(\data_out_frame[22] [2]), .O(n15809));
    defparam i11937_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11864_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[7]), 
            .I3(\data_out_frame[11] [7]), .O(n15736));
    defparam i11864_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11816_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[7]), 
            .I3(\data_out_frame[5] [7]), .O(n15688));
    defparam i11816_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11926_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[15] ), 
            .I3(\data_out_frame[21] [7]), .O(n15798));
    defparam i11926_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2589 (.I0(\data_in_frame[8] [0]), .I1(n28810), 
            .I2(n30674), .I3(GND_net), .O(n29157));   // verilog/coms.v(76[16:27])
    defparam i1_2_lut_3_lut_adj_2589.LUT_INIT = 16'h6969;
    SB_LUT4 i11868_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[18]), 
            .I3(\data_out_frame[12] [2]), .O(n15740));
    defparam i11868_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2590 (.I0(\data_in_frame[8] [0]), .I1(n28810), 
            .I2(\data_in_frame[10] [1]), .I3(GND_net), .O(n29253));   // verilog/coms.v(76[16:27])
    defparam i1_2_lut_3_lut_adj_2590.LUT_INIT = 16'h9696;
    SB_LUT4 i11825_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[8]), 
            .I3(\data_out_frame[7] [0]), .O(n15697));
    defparam i11825_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11856_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[15]), 
            .I3(\data_out_frame[10] [7]), .O(n15728));
    defparam i11856_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11801_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[0]), .I3(\data_out_frame[4] [0]), 
            .O(n15673));
    defparam i11801_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11833_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[0]), 
            .I3(\data_out_frame[8] [0]), .O(n15705));
    defparam i11833_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11897_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[4]), 
            .I3(\data_out_frame[14] [4]), .O(n15769));
    defparam i11897_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11018_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(reset), .I2(n10_adj_5807), 
            .I3(n24778), .O(n14890));
    defparam i11018_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i11878_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[10]), 
            .I3(\data_out_frame[13] [2]), .O(n15750));
    defparam i11878_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i16506_3_lut (.I0(n14890), .I1(rx_data[0]), .I2(\data_in_frame[15]_c [0]), 
            .I3(GND_net), .O(n16439));   // verilog/coms.v(92[13:20])
    defparam i16506_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i11824_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[23]), 
            .I3(\data_out_frame[6] [7]), .O(n15696));
    defparam i11824_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11857_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[0]), 
            .I3(\data_out_frame[11] [0]), .O(n15729));
    defparam i11857_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11891_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[0]), 
            .I3(\data_out_frame[14] [0]), .O(n15763));
    defparam i11891_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i17856_2_lut_3_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(\FRAME_MATCHER.i [1]), .I3(GND_net), .O(n21683));
    defparam i17856_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i2_3_lut_4_lut_adj_2591 (.I0(\data_in_frame[16][5] ), .I1(n12827), 
            .I2(\data_in_frame[18] [4]), .I3(\data_in_frame[21] [0]), .O(n29124));
    defparam i2_3_lut_4_lut_adj_2591.LUT_INIT = 16'h6996;
    SB_LUT4 i11802_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[1]), .I3(\data_out_frame[4] [1]), 
            .O(n15674));
    defparam i11802_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i3_4_lut_adj_2592 (.I0(\FRAME_MATCHER.i [0]), .I1(n28603), .I2(\FRAME_MATCHER.i [2]), 
            .I3(n21683), .O(n14846));
    defparam i3_4_lut_adj_2592.LUT_INIT = 16'hefff;
    SB_LUT4 i11835_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[2]), 
            .I3(\data_out_frame[8] [2]), .O(n15707));
    defparam i11835_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i31747_3_lut (.I0(rx_data[7]), .I1(\data_in_frame[13]_c [7]), 
            .I2(n7), .I3(GND_net), .O(n28121));   // verilog/coms.v(92[13:20])
    defparam i31747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31749_3_lut (.I0(rx_data[6]), .I1(\data_in_frame[13]_c [6]), 
            .I2(n7), .I3(GND_net), .O(n28129));   // verilog/coms.v(92[13:20])
    defparam i31749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12169_3_lut (.I0(\data_in_frame[13]_c [5]), .I1(rx_data[5]), 
            .I2(n7), .I3(GND_net), .O(n16041));   // verilog/coms.v(128[12] 293[6])
    defparam i12169_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_890_i2_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [1]), .I3(\data_in_frame[19] [1]), .O(n3304[1]));
    defparam mux_890_i2_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i31748_3_lut (.I0(rx_data[2]), .I1(\data_in_frame[13]_c [2]), 
            .I2(n7), .I3(GND_net), .O(n28127));   // verilog/coms.v(92[13:20])
    defparam i31748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28631_4_lut (.I0(\data_out_frame[6] [7]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(\data_out_frame[7] [7]), 
            .O(n32935));
    defparam i28631_4_lut.LUT_INIT = 16'hec2c;
    SB_LUT4 i28629_3_lut (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [7]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32933));
    defparam i28629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i11_3_lut (.I0(\data_out_frame[12] [7]), 
            .I1(\data_out_frame[13] [7]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5820));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28606_4_lut (.I0(n11_adj_5820), .I1(\data_out_frame[14] [7]), 
            .I2(byte_transmit_counter[1]), .I3(byte_transmit_counter[0]), 
            .O(n32910));
    defparam i28606_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31171_3_lut (.I0(n36259), .I1(n32910), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35475));
    defparam i31171_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11877_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[9]), 
            .I3(\data_out_frame[13] [1]), .O(n15749));
    defparam i11877_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11_3_lut_adj_2593 (.I0(rx_data[1]), .I1(\data_in_frame[13]_c [1]), 
            .I2(n7), .I3(GND_net), .O(n28167));   // verilog/coms.v(92[13:20])
    defparam i11_3_lut_adj_2593.LUT_INIT = 16'hcaca;
    SB_LUT4 i11898_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[5]), 
            .I3(\data_out_frame[14] [5]), .O(n15770));
    defparam i11898_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_2_lut_3_lut_adj_2594 (.I0(\data_in_frame[15][7] ), .I1(n26132), 
            .I2(\data_in_frame[16] [2]), .I3(GND_net), .O(n10_adj_5698));
    defparam i2_2_lut_3_lut_adj_2594.LUT_INIT = 16'h6969;
    SB_LUT4 i11808_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[7]), .I3(\data_out_frame[4] [7]), 
            .O(n15680));
    defparam i11808_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11_3_lut_adj_2595 (.I0(rx_data[6]), .I1(\data_in_frame[12]_c [6]), 
            .I2(n14896), .I3(GND_net), .O(n28233));   // verilog/coms.v(92[13:20])
    defparam i11_3_lut_adj_2595.LUT_INIT = 16'hcaca;
    SB_LUT4 i12142_3_lut (.I0(\data_in_frame[12]_c [4]), .I1(rx_data[4]), 
            .I2(n14896), .I3(GND_net), .O(n16014));   // verilog/coms.v(128[12] 293[6])
    defparam i12142_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11812_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[3]), 
            .I3(\data_out_frame[5] [3]), .O(n15684));
    defparam i11812_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11807_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[6]), .I3(\data_out_frame[4] [6]), 
            .O(n15679));
    defparam i11807_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2596 (.I0(\data_in_frame[8] [2]), .I1(\data_in_frame[6][1] ), 
            .I2(Kp_23__N_477), .I3(GND_net), .O(n28749));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_3_lut_adj_2596.LUT_INIT = 16'h9696;
    SB_LUT4 i11811_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(control_mode[2]), 
            .I3(\data_out_frame[5] [2]), .O(n15683));
    defparam i11811_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11936_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[11] ), 
            .I3(\data_out_frame[21] [3]), .O(n15808));
    defparam i11936_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_2597 (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_3745 ), 
            .I2(GND_net), .I3(GND_net), .O(n28554));   // verilog/coms.v(128[12] 293[6])
    defparam i1_2_lut_adj_2597.LUT_INIT = 16'h4444;
    SB_LUT4 i12119_3_lut (.I0(\data_in_frame[11]_c [5]), .I1(rx_data[5]), 
            .I2(n30578), .I3(GND_net), .O(n15991));   // verilog/coms.v(128[12] 293[6])
    defparam i12119_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11865_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[16]), 
            .I3(\data_out_frame[12] [0]), .O(n15737));
    defparam i11865_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11817_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[16]), 
            .I3(\data_out_frame[6] [0]), .O(n15689));
    defparam i11817_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_adj_2598 (.I0(n134), .I1(n28603), .I2(reset), .I3(GND_net), 
            .O(n30578));
    defparam i2_3_lut_adj_2598.LUT_INIT = 16'hfefe;
    SB_LUT4 i11927_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[7] ), 
            .I3(\data_out_frame[22] [7]), .O(n15799));
    defparam i11927_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_2599 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(n29097), .I3(Kp_23__N_631), .O(n28717));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_4_lut_adj_2599.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2600 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(n29097), .I3(GND_net), .O(Kp_23__N_634));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_3_lut_adj_2600.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2601 (.I0(\data_in_frame[4] [2]), .I1(\data_in_frame[1] [7]), 
            .I2(\data_in_frame[1] [6]), .I3(GND_net), .O(n13327));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_3_lut_adj_2601.LUT_INIT = 16'h9696;
    SB_LUT4 i11866_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[17]), 
            .I3(\data_out_frame[12] [1]), .O(n15738));
    defparam i11866_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11829_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[12]), 
            .I3(\data_out_frame[7] [4]), .O(n15701));
    defparam i11829_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11852_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[11]), 
            .I3(\data_out_frame[10] [3]), .O(n15724));
    defparam i11852_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 mux_890_i3_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [2]), .I3(\data_in_frame[19] [2]), .O(n3304[2]));
    defparam mux_890_i3_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i11838_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[5]), 
            .I3(\data_out_frame[8] [5]), .O(n15710));
    defparam i11838_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11933_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[4] ), 
            .I3(\data_out_frame[22] [4]), .O(n15805));
    defparam i11933_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11846_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[21]), 
            .I3(\data_out_frame[9] [5]), .O(n15718));
    defparam i11846_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11888_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[14]), 
            .I3(\data_out_frame[13] [6]), .O(n15760));
    defparam i11888_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11820_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[19]), 
            .I3(\data_out_frame[6] [3]), .O(n15692));
    defparam i11820_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11861_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[4]), 
            .I3(\data_out_frame[11] [4]), .O(n15733));
    defparam i11861_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11900_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[6]), 
            .I3(\data_out_frame[14] [6]), .O(n15772));
    defparam i11900_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11805_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[4]), .I3(\data_out_frame[4] [4]), 
            .O(n15677));
    defparam i11805_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11842_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[17]), 
            .I3(\data_out_frame[9] [1]), .O(n15714));
    defparam i11842_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11873_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[21]), 
            .I3(\data_out_frame[12] [5]), .O(n15745));
    defparam i11873_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11828_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[11]), 
            .I3(\data_out_frame[7] [3]), .O(n15700));
    defparam i11828_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 mux_890_i4_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [3]), .I3(\data_in_frame[19] [3]), .O(n3304[3]));
    defparam mux_890_i4_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i11853_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[12]), 
            .I3(\data_out_frame[10] [4]), .O(n15725));
    defparam i11853_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11839_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[6]), 
            .I3(\data_out_frame[8] [6]), .O(n15711));
    defparam i11839_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11931_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[5] ), 
            .I3(\data_out_frame[22] [5]), .O(n15803));
    defparam i11931_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11845_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[20]), 
            .I3(\data_out_frame[9] [4]), .O(n15717));
    defparam i11845_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11885_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[13]), 
            .I3(\data_out_frame[13] [5]), .O(n15757));
    defparam i11885_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11821_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[20]), 
            .I3(\data_out_frame[6] [4]), .O(n15693));
    defparam i11821_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11860_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[3]), 
            .I3(\data_out_frame[11] [3]), .O(n15732));
    defparam i11860_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_1_i1_2_lut_3_lut (.I0(byte_transmit_counter[1]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5784));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_1_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11896_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[3]), 
            .I3(\data_out_frame[14] [3]), .O(n15768));
    defparam i11896_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 mux_890_i5_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [4]), .I3(\data_in_frame[19] [4]), .O(n3304[4]));
    defparam mux_890_i5_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i11804_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(ID[3]), .I3(\data_out_frame[4] [3]), 
            .O(n15676));
    defparam i11804_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_2_i1_2_lut_3_lut (.I0(byte_transmit_counter[2]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5785));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_2_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_890_i6_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [5]), .I3(\data_in_frame[19] [5]), .O(n3304[5]));
    defparam mux_890_i6_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i2_3_lut_4_lut_adj_2602 (.I0(\data_out_frame[13] [5]), .I1(n12872), 
            .I2(n25922), .I3(n28960), .O(n11222));
    defparam i2_3_lut_4_lut_adj_2602.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [5]), .I2(\data_out_frame[11] [5]), 
            .I3(byte_transmit_counter[1]), .O(n36286));
    defparam byte_transmit_counter_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 select_641_Select_3_i1_2_lut_3_lut (.I0(byte_transmit_counter[3]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5786));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_3_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n36286_bdd_4_lut (.I0(n36286), .I1(\data_out_frame[9] [5]), 
            .I2(\data_out_frame[8] [5]), .I3(byte_transmit_counter[1]), 
            .O(n36289));
    defparam n36286_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_2603 (.I0(\data_in_frame[5] [7]), .I1(n13535), 
            .I2(\data_in_frame[5] [6]), .I3(GND_net), .O(n29058));
    defparam i1_2_lut_3_lut_adj_2603.LUT_INIT = 16'h9696;
    SB_LUT4 i11843_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[18]), 
            .I3(\data_out_frame[9] [2]), .O(n15715));
    defparam i11843_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_4_i1_2_lut_3_lut (.I0(byte_transmit_counter[4]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5787));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_4_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11874_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[22]), 
            .I3(\data_out_frame[12] [6]), .O(n15746));
    defparam i11874_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11830_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[13]), 
            .I3(\data_out_frame[7] [5]), .O(n15702));
    defparam i11830_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_5_i1_2_lut_3_lut (.I0(byte_transmit_counter[5]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5788));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_5_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_4_lut_adj_2604 (.I0(\data_in_frame[4] [6]), .I1(\data_in_frame[2] [3]), 
            .I2(n28687), .I3(n13297), .O(n28760));   // verilog/coms.v(74[16:42])
    defparam i1_2_lut_4_lut_adj_2604.LUT_INIT = 16'h6996;
    SB_LUT4 i11851_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[10]), 
            .I3(\data_out_frame[10] [2]), .O(n15723));
    defparam i11851_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_2605 (.I0(\data_in_frame[2] [5]), .I1(\data_in_frame[0] [3]), 
            .I2(\data_in_frame[0] [4]), .I3(GND_net), .O(n13287));   // verilog/coms.v(166[9:87])
    defparam i1_2_lut_3_lut_adj_2605.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_31973 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [2]), .I2(\data_out_frame[11] [2]), 
            .I3(byte_transmit_counter[1]), .O(n36280));
    defparam byte_transmit_counter_0__bdd_4_lut_31973.LUT_INIT = 16'he4aa;
    SB_LUT4 i11837_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[4]), 
            .I3(\data_out_frame[8] [4]), .O(n15709));
    defparam i11837_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_641_Select_6_i1_2_lut_3_lut (.I0(byte_transmit_counter[6]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5789));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_6_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11934_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(\current[3] ), 
            .I3(\data_out_frame[22] [3]), .O(n15806));
    defparam i11934_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11847_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[22]), 
            .I3(\data_out_frame[9] [6]), .O(n15719));
    defparam i11847_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 n36280_bdd_4_lut (.I0(n36280), .I1(\data_out_frame[9] [2]), 
            .I2(\data_out_frame[8] [2]), .I3(byte_transmit_counter[1]), 
            .O(n36283));
    defparam n36280_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11890_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[15]), 
            .I3(\data_out_frame[13] [7]), .O(n15762));
    defparam i11890_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11819_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[18]), 
            .I3(\data_out_frame[6] [2]), .O(n15691));
    defparam i11819_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i30398_4_lut (.I0(\data_out_frame[26] [7]), .I1(n9537), .I2(\data_out_frame[27] [7]), 
            .I3(byte_transmit_counter[0]), .O(n34438));
    defparam i30398_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_641_Select_7_i1_2_lut_3_lut (.I0(byte_transmit_counter[7]), 
            .I1(\FRAME_MATCHER.i_31__N_3745 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_5790));   // verilog/coms.v(146[4] 292[11])
    defparam select_641_Select_7_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i21_4_lut (.I0(\data_out_frame[21] [7]), 
            .I1(\data_out_frame[22] [7]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5821));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i30652_2_lut (.I0(n21_adj_5821), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34437));
    defparam i30652_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11862_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder1_position[5]), 
            .I3(\data_out_frame[11] [5]), .O(n15734));
    defparam i11862_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_31968 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [1]), .I2(\data_out_frame[11] [1]), 
            .I3(byte_transmit_counter[1]), .O(n36274));
    defparam byte_transmit_counter_0__bdd_4_lut_31968.LUT_INIT = 16'he4aa;
    SB_LUT4 i11901_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[7]), 
            .I3(\data_out_frame[14] [7]), .O(n15773));
    defparam i11901_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 n36274_bdd_4_lut (.I0(n36274), .I1(\data_out_frame[9] [1]), 
            .I2(\data_out_frame[8] [1]), .I3(byte_transmit_counter[1]), 
            .O(n36277));
    defparam n36274_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11818_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(encoder0_position[17]), 
            .I3(\data_out_frame[6] [1]), .O(n15690));
    defparam i11818_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11872_3_lut_4_lut (.I0(n18968), .I1(reset), .I2(setpoint[20]), 
            .I3(\data_out_frame[12] [4]), .O(n15744));
    defparam i11872_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_31963 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [0]), .I2(\data_out_frame[11] [0]), 
            .I3(byte_transmit_counter[1]), .O(n36268));
    defparam byte_transmit_counter_0__bdd_4_lut_31963.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_4_lut_adj_2606 (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n28382), .O(n28617));   // verilog/coms.v(154[7:23])
    defparam i1_2_lut_4_lut_adj_2606.LUT_INIT = 16'hfffb;
    SB_LUT4 i30274_2_lut_4_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n127), .O(n34309));   // verilog/coms.v(154[7:23])
    defparam i30274_2_lut_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 n36268_bdd_4_lut (.I0(n36268), .I1(\data_out_frame[9] [0]), 
            .I2(\data_out_frame[8] [0]), .I3(byte_transmit_counter[1]), 
            .O(n36271));
    defparam n36268_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut_adj_2607 (.I0(\data_in_frame[4] [5]), .I1(\data_in_frame[2] [3]), 
            .I2(n28687), .I3(n13297), .O(n13312));   // verilog/coms.v(79[16:27])
    defparam i1_2_lut_4_lut_adj_2607.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2608 (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n21146), .O(n14836));   // verilog/coms.v(154[7:23])
    defparam i1_2_lut_4_lut_adj_2608.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_4_lut_adj_2609 (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n29354), .O(n28599));   // verilog/coms.v(154[7:23])
    defparam i1_2_lut_4_lut_adj_2609.LUT_INIT = 16'hfbff;
    SB_LUT4 i2_3_lut_4_lut_adj_2610 (.I0(\data_out_frame[13] [5]), .I1(n12872), 
            .I2(\data_out_frame[13] [4]), .I3(n12730), .O(n25281));
    defparam i2_3_lut_4_lut_adj_2610.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2611 (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n124), .O(n14877));   // verilog/coms.v(154[7:23])
    defparam i1_2_lut_4_lut_adj_2611.LUT_INIT = 16'h0400;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_31958 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [6]), .I2(\data_out_frame[11] [6]), 
            .I3(byte_transmit_counter[1]), .O(n36262));
    defparam byte_transmit_counter_0__bdd_4_lut_31958.LUT_INIT = 16'he4aa;
    SB_LUT4 n36262_bdd_4_lut (.I0(n36262), .I1(\data_out_frame[9] [6]), 
            .I2(\data_out_frame[8] [6]), .I3(byte_transmit_counter[1]), 
            .O(n36265));
    defparam n36262_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12271_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[7]), 
            .I3(\data_in_frame[17] [7]), .O(n16143));
    defparam i12271_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12268_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[6]), 
            .I3(\data_in_frame[17] [6]), .O(n16140));
    defparam i12268_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12265_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[5]), 
            .I3(\data_in_frame[17] [5]), .O(n16137));
    defparam i12265_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12262_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[4]), 
            .I3(\data_in_frame[17] [4]), .O(n16134));
    defparam i12262_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12259_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[3]), 
            .I3(\data_in_frame[17] [3]), .O(n16131));
    defparam i12259_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(\data_in_frame[17] [2]), 
            .I3(rx_data[2]), .O(n28281));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i12253_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[1]), 
            .I3(\data_in_frame[17] [1]), .O(n16125));
    defparam i12253_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12250_3_lut_4_lut (.I0(n8_adj_5814), .I1(n28617), .I2(rx_data[0]), 
            .I3(\data_in_frame[17] [0]), .O(n16122));
    defparam i12250_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12295_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[7]), 
            .I3(\data_in_frame[18] [7]), .O(n16167));
    defparam i12295_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12292_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[6]), 
            .I3(\data_in_frame[18] [6]), .O(n16164));
    defparam i12292_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12289_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[5]), 
            .I3(\data_in_frame[18] [5]), .O(n16161));
    defparam i12289_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12286_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[4]), 
            .I3(\data_in_frame[18] [4]), .O(n16158));
    defparam i12286_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12283_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[3]), 
            .I3(\data_in_frame[18] [3]), .O(n16155));
    defparam i12283_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_890_i7_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [6]), .I3(\data_in_frame[19] [6]), .O(n3304[6]));
    defparam mux_890_i7_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i8_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [7]), .I3(\data_in_frame[19] [7]), .O(n3304[7]));
    defparam mux_890_i8_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i12280_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[2]), 
            .I3(\data_in_frame[18] [2]), .O(n16152));
    defparam i12280_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12277_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[1]), 
            .I3(\data_in_frame[18] [1]), .O(n16149));
    defparam i12277_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_31953 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[10] [7]), .I2(\data_out_frame[11] [7]), 
            .I3(byte_transmit_counter[1]), .O(n36256));
    defparam byte_transmit_counter_0__bdd_4_lut_31953.LUT_INIT = 16'he4aa;
    SB_LUT4 i12274_3_lut_4_lut (.I0(n8_adj_5783), .I1(n28617), .I2(rx_data[0]), 
            .I3(\data_in_frame[18] [0]), .O(n16146));
    defparam i12274_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_890_i9_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [0]), .I3(\data_in_frame[18] [0]), .O(n3304[8]));
    defparam mux_890_i9_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 n36256_bdd_4_lut (.I0(n36256), .I1(\data_out_frame[9] [7]), 
            .I2(\data_out_frame[8] [7]), .I3(byte_transmit_counter[1]), 
            .O(n36259));
    defparam n36256_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_2612 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[0] [4]), 
            .I2(\data_in_frame[2] [6]), .I3(GND_net), .O(n14074));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_3_lut_adj_2612.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_2613 (.I0(\data_in_frame[6][4] ), .I1(\data_in_frame[4] [2]), 
            .I2(Kp_23__N_534), .I3(n28755), .O(n28817));   // verilog/coms.v(76[16:43])
    defparam i1_2_lut_4_lut_adj_2613.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_4_lut_adj_2614 (.I0(\data_in_frame[2] [6]), .I1(\data_in_frame[5] [1]), 
            .I2(\data_in_frame[5] [2]), .I3(\data_in_frame[7] [3]), .O(n32511));   // verilog/coms.v(86[17:63])
    defparam i1_3_lut_4_lut_adj_2614.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2615 (.I0(\data_in_frame[7] [4]), .I1(\data_in_frame[5] [2]), 
            .I2(\data_in_frame[5] [3]), .I3(GND_net), .O(n29187));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_3_lut_adj_2615.LUT_INIT = 16'h9696;
    SB_LUT4 mux_890_i10_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [1]), .I3(\data_in_frame[18] [1]), .O(n3304[9]));
    defparam mux_890_i10_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i28634_3_lut_4_lut (.I0(byte_transmit_counter[1]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(n32937), .O(n32938));   // verilog/coms.v(107[34:55])
    defparam i28634_3_lut_4_lut.LUT_INIT = 16'hf404;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2616 (.I0(n11263), .I1(n25825), .I2(\data_out_frame[21] [1]), 
            .I3(n28827), .O(data_out_frame_27__6__N_2730));
    defparam i1_2_lut_3_lut_4_lut_adj_2616.LUT_INIT = 16'h6996;
    SB_LUT4 mux_890_i11_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [2]), .I3(\data_in_frame[18] [2]), .O(n3304[10]));
    defparam mux_890_i11_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i12_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [3]), .I3(\data_in_frame[18] [3]), .O(n3304[11]));
    defparam mux_890_i12_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut (.I0(byte_transmit_counter[1]), 
            .I1(n11_adj_5719), .I2(n34411), .I3(byte_transmit_counter[2]), 
            .O(n36250));
    defparam byte_transmit_counter_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i16318_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), .I2(\data_in_frame[2] [4]), 
            .I3(\data_in_frame[18] [4]), .O(n3304[12]));
    defparam i16318_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 n36250_bdd_4_lut (.I0(n36250), .I1(n9_adj_5717), .I2(n8_adj_5716), 
            .I3(byte_transmit_counter[2]), .O(n36253));
    defparam n36250_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i28652_3_lut_4_lut (.I0(byte_transmit_counter[1]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(n32955), .O(n32956));   // verilog/coms.v(107[34:55])
    defparam i28652_3_lut_4_lut.LUT_INIT = 16'hf404;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut_31944 (.I0(byte_transmit_counter[1]), 
            .I1(n11_adj_5715), .I2(n34410), .I3(byte_transmit_counter[2]), 
            .O(n36244));
    defparam byte_transmit_counter_1__bdd_4_lut_31944.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2617 (.I0(n13348), .I1(n13988), .I2(\data_out_frame[21] [5]), 
            .I3(\data_out_frame[21] [4]), .O(n29014));
    defparam i1_2_lut_3_lut_4_lut_adj_2617.LUT_INIT = 16'h6996;
    SB_LUT4 i65_2_lut_4_lut (.I0(n1459), .I1(n1456), .I2(\FRAME_MATCHER.i_31__N_3743 ), 
            .I3(n18971), .O(n47));   // verilog/coms.v(146[4] 292[11])
    defparam i65_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_3_lut_adj_2618 (.I0(\data_in_frame[8] [7]), .I1(Kp_23__N_755), 
            .I2(n14052), .I3(GND_net), .O(n6_adj_5696));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_3_lut_adj_2618.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2619 (.I0(n25146), .I1(\data_in_frame[9] [4]), 
            .I2(\data_in_frame[11]_c [5]), .I3(GND_net), .O(n28938));
    defparam i1_2_lut_3_lut_adj_2619.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_2620 (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [5]), 
            .I2(\data_in_frame[11] [2]), .I3(\data_in_frame[11] [1]), .O(n32213));
    defparam i1_2_lut_4_lut_adj_2620.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2621 (.I0(\data_in_frame[12][7] ), .I1(\data_in_frame[10] [7]), 
            .I2(\data_in_frame[11][0] ), .I3(GND_net), .O(n28871));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_3_lut_adj_2621.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_4_lut_adj_2622 (.I0(\data_in_frame[12] [0]), .I1(n25146), 
            .I2(n30119), .I3(\data_in_frame[9] [6]), .O(n29190));
    defparam i1_3_lut_4_lut_adj_2622.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_2623 (.I0(n28810), .I1(n13456), .I2(\data_in_frame[10] [3]), 
            .I3(\data_in_frame[8] [1]), .O(n13524));   // verilog/coms.v(76[16:27])
    defparam i2_3_lut_4_lut_adj_2623.LUT_INIT = 16'h6996;
    SB_LUT4 i11_4_lut_4_lut_adj_2624 (.I0(n14840), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[20] [7]), .O(n28163));
    defparam i11_4_lut_4_lut_adj_2624.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut_adj_2625 (.I0(\FRAME_MATCHER.i_31__N_3745 ), .I1(tx_active), 
            .I2(r_SM_Main_2__N_4517[0]), .I3(n21888), .O(n13032));   // verilog/coms.v(146[4] 292[11])
    defparam i1_3_lut_4_lut_adj_2625.LUT_INIT = 16'ha8aa;
    SB_LUT4 i2_3_lut_4_lut_adj_2626 (.I0(\data_in_frame[9] [1]), .I1(Kp_23__N_736), 
            .I2(n13713), .I3(\data_in_frame[9] [0]), .O(n28878));   // verilog/coms.v(72[16:27])
    defparam i2_3_lut_4_lut_adj_2626.LUT_INIT = 16'h6996;
    SB_LUT4 i12340_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[20] [6]), .O(n16212));
    defparam i12340_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n36244_bdd_4_lut (.I0(n36244), .I1(n9), .I2(n8_adj_5714), 
            .I3(byte_transmit_counter[2]), .O(n36247));
    defparam n36244_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12337_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[20] [5]), .O(n16209));
    defparam i12337_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12334_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[20] [4]), .O(n16206));
    defparam i12334_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_890_i14_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [5]), .I3(\data_in_frame[18] [5]), .O(n3304[13]));
    defparam mux_890_i14_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_31982 (.I0(byte_transmit_counter[3]), 
            .I1(n34400), .I2(n34401), .I3(byte_transmit_counter[4]), .O(n36238));
    defparam byte_transmit_counter_3__bdd_4_lut_31982.LUT_INIT = 16'he4aa;
    SB_LUT4 i12331_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[20] [3]), .O(n16203));
    defparam i12331_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12328_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[20] [2]), .O(n16200));
    defparam i12328_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_2627 (.I0(\data_in_frame[10] [4]), .I1(n13456), 
            .I2(n13881), .I3(GND_net), .O(n13927));
    defparam i1_2_lut_3_lut_adj_2627.LUT_INIT = 16'h9696;
    SB_LUT4 mux_890_i15_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [6]), .I3(\data_in_frame[18] [6]), .O(n3304[14]));
    defparam mux_890_i15_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i12325_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[20] [1]), .O(n16197));
    defparam i12325_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12322_3_lut_4_lut (.I0(n14840), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[20] [0]), .O(n16194));
    defparam i12322_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_890_i16_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[2] [7]), .I3(\data_in_frame[18] [7]), .O(n3304[15]));
    defparam mux_890_i16_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i17_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [0]), .I3(\data_in_frame[17] [0]), .O(n3304[16]));
    defparam mux_890_i17_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i18_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [1]), .I3(\data_in_frame[17] [1]), .O(n3304[17]));
    defparam mux_890_i18_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i19_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [2]), .I3(\data_in_frame[17] [2]), .O(n3304[18]));
    defparam mux_890_i19_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i1_2_lut_3_lut_adj_2628 (.I0(\data_in_frame[9] [4]), .I1(\data_in_frame[9] [5]), 
            .I2(\data_in_frame[10] [7]), .I3(GND_net), .O(n32597));
    defparam i1_2_lut_3_lut_adj_2628.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2629 (.I0(n29021), .I1(n25312), .I2(n30289), 
            .I3(GND_net), .O(Kp_23__N_1018));
    defparam i1_2_lut_3_lut_adj_2629.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_2630 (.I0(\data_in_frame[17] [7]), .I1(\data_in_frame[17] [6]), 
            .I2(\data_in_frame[15] [4]), .I3(n26086), .O(n28787));   // verilog/coms.v(71[16:27])
    defparam i1_2_lut_4_lut_adj_2630.LUT_INIT = 16'h9669;
    SB_LUT4 mux_890_i20_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [3]), .I3(\data_in_frame[17] [3]), .O(n3304[19]));
    defparam mux_890_i20_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i21_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [4]), .I3(\data_in_frame[17] [4]), .O(n3304[20]));
    defparam mux_890_i21_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 n36238_bdd_4_lut (.I0(n36238), .I1(n35205), .I2(n7_adj_5822), 
            .I3(byte_transmit_counter[4]), .O(tx_data[1]));
    defparam n36238_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_2631 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_3744 ), 
            .I2(\FRAME_MATCHER.i_31__N_3743 ), .I3(GND_net), .O(n5));   // verilog/coms.v(146[4] 292[11])
    defparam i1_2_lut_3_lut_adj_2631.LUT_INIT = 16'hf4f4;
    SB_LUT4 i1_2_lut_4_lut_adj_2632 (.I0(\data_in_frame[13] [4]), .I1(n13466), 
            .I2(\data_in_frame[11] [2]), .I3(Kp_23__N_964), .O(n13492));   // verilog/coms.v(75[16:43])
    defparam i1_2_lut_4_lut_adj_2632.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2633 (.I0(\data_in_frame[8] [6]), .I1(\data_in_frame[9] [1]), 
            .I2(n14197), .I3(\data_in_frame[9] [0]), .O(Kp_23__N_964));   // verilog/coms.v(72[16:27])
    defparam i1_2_lut_4_lut_adj_2633.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2634 (.I0(\data_in_frame[13]_c [2]), .I1(n12777), 
            .I2(n26260), .I3(GND_net), .O(n26086));
    defparam i1_2_lut_3_lut_adj_2634.LUT_INIT = 16'h6969;
    SB_LUT4 i28649_4_lut (.I0(\data_out_frame[6] [6]), .I1(byte_transmit_counter[0]), 
            .I2(byte_transmit_counter[2]), .I3(\data_out_frame[7] [6]), 
            .O(n32953));
    defparam i28649_4_lut.LUT_INIT = 16'hec2c;
    SB_LUT4 i28647_3_lut (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [6]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n32951));
    defparam i28647_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i11_3_lut (.I0(\data_out_frame[12] [6]), 
            .I1(\data_out_frame[13] [6]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_5823));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28609_4_lut (.I0(n11_adj_5823), .I1(\data_out_frame[14] [6]), 
            .I2(byte_transmit_counter[1]), .I3(byte_transmit_counter[0]), 
            .O(n32913));
    defparam i28609_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31173_3_lut (.I0(n36265), .I1(n32913), .I2(byte_transmit_counter[2]), 
            .I3(GND_net), .O(n35477));
    defparam i31173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_890_i22_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [5]), .I3(\data_in_frame[17] [5]), .O(n3304[21]));
    defparam mux_890_i22_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_890_i23_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [6]), .I3(\data_in_frame[17] [6]), .O(n3304[22]));
    defparam mux_890_i23_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i2_3_lut_adj_2635 (.I0(n10), .I1(n29354), .I2(n8_adj_5783), 
            .I3(GND_net), .O(n14826));
    defparam i2_3_lut_adj_2635.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_2_lut_3_lut_adj_2636 (.I0(\data_in_frame[19] [0]), .I1(\data_in_frame[18] [6]), 
            .I2(n30735), .I3(GND_net), .O(n29184));
    defparam i1_2_lut_3_lut_adj_2636.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_2637 (.I0(\data_in_frame[12][5] ), .I1(n11384), 
            .I2(n25232), .I3(\data_in_frame[14] [6]), .O(n28794));
    defparam i1_2_lut_4_lut_adj_2637.LUT_INIT = 16'h6996;
    SB_LUT4 i12032_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[0]), 
            .I3(\data_in_frame[8] [0]), .O(n15904));
    defparam i12032_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12035_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[1]), 
            .I3(\data_in_frame[8] [1]), .O(n15907));
    defparam i12035_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut_adj_2638 (.I0(n30120), .I1(\data_in_frame[20] [5]), 
            .I2(n26154), .I3(n13240), .O(n25197));
    defparam i1_3_lut_4_lut_adj_2638.LUT_INIT = 16'h9669;
    SB_LUT4 mux_890_i24_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[1] [7]), .I3(\data_in_frame[17] [7]), .O(n3304[23]));
    defparam mux_890_i24_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i12038_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[2]), 
            .I3(\data_in_frame[8] [2]), .O(n15910));
    defparam i12038_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12041_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[3]), 
            .I3(\data_in_frame[8] [3]), .O(n15913));
    defparam i12041_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12044_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[4]), 
            .I3(\data_in_frame[8] [4]), .O(n15916));
    defparam i12044_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12047_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[5]), 
            .I3(\data_in_frame[8] [5]), .O(n15919));
    defparam i12047_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_890_i1_3_lut_4_lut (.I0(Kp_23__N_374), .I1(Kp_23__N_1510), 
            .I2(\data_in_frame[3] [0]), .I3(\data_in_frame[19] [0]), .O(n3304[0]));
    defparam mux_890_i1_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32938), .I3(n32936), .O(n7_adj_5824));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i12050_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[6]), 
            .I3(\data_in_frame[8] [6]), .O(n15922));
    defparam i12050_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12053_3_lut_4_lut (.I0(n8), .I1(n28377), .I2(rx_data[7]), 
            .I3(\data_in_frame[8] [7]), .O(n15925));
    defparam i12053_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32941), .I3(n32939), .O(n7_adj_5822));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i12367_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[7]), 
            .I3(\data_in_frame[21] [7]), .O(n16239));
    defparam i12367_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_2639 (.I0(\data_in_frame[13]_c [6]), .I1(\data_in_frame[13]_c [7]), 
            .I2(\data_in_frame[15][1] ), .I3(GND_net), .O(n32163));
    defparam i1_2_lut_3_lut_adj_2639.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_2_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32944), .I3(n32942), .O(n7_adj_5792));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i2_3_lut_4_lut_adj_2640 (.I0(\data_in_frame[11] [1]), .I1(n26092), 
            .I2(n26100), .I3(\data_in_frame[20] [1]), .O(n29163));
    defparam i2_3_lut_4_lut_adj_2640.LUT_INIT = 16'h6996;
    SB_LUT4 i3_2_lut_3_lut_adj_2641 (.I0(\data_in_frame[12]_c [4]), .I1(\data_in_frame[12][3] ), 
            .I2(\data_in_frame[14] [5]), .I3(GND_net), .O(n11_adj_5712));
    defparam i3_2_lut_3_lut_adj_2641.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32947), .I3(n32945), .O(n7_adj_5791));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i14_2_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(GND_net), .I3(GND_net), .O(n161));   // verilog/coms.v(153[9:50])
    defparam i14_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_2642 (.I0(n28904), .I1(n29133), .I2(\data_in_frame[20] [0]), 
            .I3(GND_net), .O(n29250));
    defparam i1_2_lut_3_lut_adj_2642.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_2643 (.I0(\data_in_frame[19] [3]), .I1(n25293), 
            .I2(n26197), .I3(GND_net), .O(n26229));
    defparam i1_2_lut_3_lut_adj_2643.LUT_INIT = 16'h9696;
    SB_LUT4 i12364_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[6]), 
            .I3(\data_in_frame[21] [6]), .O(n16236));
    defparam i12364_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut_adj_2644 (.I0(\data_in_frame[21] [6]), .I1(\data_in_frame[19] [5]), 
            .I2(n26161), .I3(n25271), .O(n28985));
    defparam i1_3_lut_4_lut_adj_2644.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2645 (.I0(\data_out_frame[9] [3]), .I1(\data_out_frame[11] [4]), 
            .I2(\data_out_frame[6] [7]), .I3(\data_out_frame[7] [0]), .O(n6_adj_5778));
    defparam i1_2_lut_3_lut_4_lut_adj_2645.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2646 (.I0(\data_in_frame[14] [2]), .I1(n26084), 
            .I2(n28790), .I3(\data_in_frame[16][4] ), .O(n30735));
    defparam i2_3_lut_4_lut_adj_2646.LUT_INIT = 16'h9669;
    SB_LUT4 i12361_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[5]), 
            .I3(\data_in_frame[21] [5]), .O(n16233));
    defparam i12361_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12358_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[4]), 
            .I3(\data_in_frame[21] [4]), .O(n16230));
    defparam i12358_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i17_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(\data_in_frame[21] [3]), 
            .I3(rx_data[3]), .O(n9_adj_5769));
    defparam i17_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_2_lut_3_lut_adj_2647 (.I0(\data_in_frame[14] [2]), .I1(n26084), 
            .I2(n30613), .I3(GND_net), .O(n13630));
    defparam i1_2_lut_3_lut_adj_2647.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_5_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32956), .I3(n32954), .O(n7_adj_5764));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_5_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i1_2_lut_3_lut_adj_2648 (.I0(\data_in_frame[15] [5]), .I1(Kp_23__N_1313), 
            .I2(n26161), .I3(GND_net), .O(n29160));
    defparam i1_2_lut_3_lut_adj_2648.LUT_INIT = 16'h9696;
    SB_LUT4 i12352_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[2]), 
            .I3(\data_in_frame[21] [2]), .O(n16224));
    defparam i12352_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_2649 (.I0(n30735), .I1(n26222), .I2(n30613), 
            .I3(\data_in_frame[16] [3]), .O(n28914));
    defparam i1_2_lut_4_lut_adj_2649.LUT_INIT = 16'h9669;
    SB_LUT4 i12349_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[1]), 
            .I3(\data_in_frame[21] [1]), .O(n16221));
    defparam i12349_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_31935 (.I0(byte_transmit_counter[3]), 
            .I1(n34402), .I2(n34403), .I3(byte_transmit_counter[4]), .O(n36232));
    defparam byte_transmit_counter_3__bdd_4_lut_31935.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_2650 (.I0(\data_in_frame[18] [7]), .I1(n28988), 
            .I2(n29127), .I3(GND_net), .O(n25589));
    defparam i1_2_lut_3_lut_adj_2650.LUT_INIT = 16'h6969;
    SB_LUT4 i12346_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28617), .I2(rx_data[0]), 
            .I3(\data_in_frame[21] [0]), .O(n16218));
    defparam i12346_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32950), .I3(n32948), .O(n7_adj_5749));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i1_2_lut_4_lut_adj_2651 (.I0(\data_in_frame[19] [0]), .I1(n28887), 
            .I2(n30162), .I3(\data_in_frame[16][6] ), .O(n29127));
    defparam i1_2_lut_4_lut_adj_2651.LUT_INIT = 16'h9669;
    SB_LUT4 n36232_bdd_4_lut (.I0(n36232), .I1(n35203), .I2(n7_adj_5824), 
            .I3(byte_transmit_counter[4]), .O(tx_data[0]));
    defparam n36232_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11963_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[5]), 
            .I3(\data_in_frame[5] [5]), .O(n15835));
    defparam i11963_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11975_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[6]), 
            .I3(\data_in_frame[5] [6]), .O(n15847));
    defparam i11975_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11913_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[4]), 
            .I3(\data_in_frame[5] [4]), .O(n15785));
    defparam i11913_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11909_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[3]), 
            .I3(\data_in_frame[5] [3]), .O(n15781));
    defparam i11909_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11981_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[7]), 
            .I3(\data_in_frame[5] [7]), .O(n15853));
    defparam i11981_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_adj_2652 (.I0(reset), .I1(Kp_23__N_374), .I2(Kp_23__N_1510), 
            .I3(GND_net), .O(n10544));   // verilog/coms.v(128[12] 293[6])
    defparam i1_3_lut_adj_2652.LUT_INIT = 16'h4040;
    SB_LUT4 i11779_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[2]), 
            .I3(\data_in_frame[5] [2]), .O(n15651));
    defparam i11779_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32953), .I3(n32951), .O(n7_adj_5750));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i1_2_lut_4_lut_adj_2653 (.I0(n32159), .I1(n28856), .I2(n28760), 
            .I3(n28840), .O(n29115));
    defparam i1_2_lut_4_lut_adj_2653.LUT_INIT = 16'h6996;
    SB_LUT4 i12725_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[0]), 
            .I3(\data_in_frame[5] [0]), .O(n16597));
    defparam i12725_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i12728_3_lut_4_lut (.I0(n8_adj_5793), .I1(n28622), .I2(rx_data[1]), 
            .I3(\data_in_frame[5] [1]), .O(n16600));
    defparam i12728_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i7_3_lut_4_lut (.I0(byte_transmit_counter[2]), 
            .I1(byte_transmit_counter[1]), .I2(n32935), .I3(n32933), .O(n7_adj_5763));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i7_3_lut_4_lut.LUT_INIT = 16'hf2d0;
    SB_LUT4 i11002_3_lut_4_lut (.I0(\FRAME_MATCHER.i [2]), .I1(n3), .I2(n28599), 
            .I3(reset), .O(n14874));
    defparam i11002_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i2_3_lut_4_lut_adj_2654 (.I0(reset), .I1(n2405), .I2(n10), 
            .I3(n134), .O(n30579));
    defparam i2_3_lut_4_lut_adj_2654.LUT_INIT = 16'hfffb;
    SB_LUT4 equal_272_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_5793));   // verilog/coms.v(155[12:15])
    defparam equal_272_i8_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i2_3_lut_4_lut_adj_2655 (.I0(\data_out_frame[22] [1]), .I1(n28773), 
            .I2(data_out_frame_27__7__N_2406), .I3(n29093), .O(n30718));
    defparam i2_3_lut_4_lut_adj_2655.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_2656 (.I0(\data_out_frame[21] [6]), .I1(n12868), 
            .I2(n25359), .I3(GND_net), .O(n6_adj_5706));
    defparam i1_2_lut_3_lut_adj_2656.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_2657 (.I0(n13988), .I1(data_out_frame_27__7__N_2406), 
            .I2(n29093), .I3(n13601), .O(n13562));
    defparam i2_3_lut_4_lut_adj_2657.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2658 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n28622), .I3(\FRAME_MATCHER.i [0]), .O(n28623));   // verilog/coms.v(155[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_2658.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_2_lut_3_lut_adj_2659 (.I0(n13860), .I1(\data_out_frame[13] [7]), 
            .I2(n25922), .I3(GND_net), .O(n6_adj_5693));
    defparam i1_2_lut_3_lut_adj_2659.LUT_INIT = 16'h6969;
    SB_LUT4 i30248_4_lut (.I0(\data_out_frame[26][6] ), .I1(n9537), .I2(\data_out_frame[27] [6]), 
            .I3(byte_transmit_counter[0]), .O(n34431));
    defparam i30248_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i21_4_lut (.I0(\data_out_frame[21] [6]), 
            .I1(\data_out_frame[22] [6]), .I2(byte_transmit_counter[1]), 
            .I3(byte_transmit_counter[0]), .O(n21_adj_5825));   // verilog/coms.v(107[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i21_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i30647_2_lut (.I0(n21_adj_5825), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n34430));
    defparam i30647_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2660 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n28377), .I3(\FRAME_MATCHER.i [0]), .O(n14896));   // verilog/coms.v(155[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_2660.LUT_INIT = 16'hfffd;
    SB_LUT4 i17375_4_lut (.I0(n14858), .I1(n73), .I2(rx_data[3]), .I3(\data_in_frame[6] [3]), 
            .O(n21198));   // verilog/coms.v(92[13:20])
    defparam i17375_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i17376_3_lut (.I0(n21198), .I1(\data_in_frame[6] [3]), .I2(reset), 
            .I3(GND_net), .O(n15867));   // verilog/TinyFPGA_B.v(45[5:10])
    defparam i17376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2661 (.I0(n10), .I1(n127), .I2(GND_net), .I3(GND_net), 
            .O(n73));
    defparam i1_2_lut_adj_2661.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2662 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(n28599), .I3(\FRAME_MATCHER.i [0]), .O(n14840));   // verilog/coms.v(155[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_2662.LUT_INIT = 16'hfffd;
    SB_LUT4 i17360_4_lut (.I0(n14858), .I1(n73), .I2(rx_data[5]), .I3(\data_in_frame[6] [5]), 
            .O(n21183));   // verilog/coms.v(92[13:20])
    defparam i17360_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i17361_3_lut (.I0(n21183), .I1(\data_in_frame[6] [5]), .I2(reset), 
            .I3(GND_net), .O(n15873));   // verilog/TinyFPGA_B.v(45[5:10])
    defparam i17361_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_2663 (.I0(\data_out_frame[14] [4]), .I1(n28698), 
            .I2(\data_out_frame[14] [1]), .I3(n28813), .O(n28814));
    defparam i1_2_lut_4_lut_adj_2663.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_2664 (.I0(\FRAME_MATCHER.i [0]), .I1(n24778), .I2(GND_net), 
            .I3(GND_net), .O(n21146));
    defparam i1_2_lut_adj_2664.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_3_lut_adj_2665 (.I0(n2405), .I1(n6_adj_5809), .I2(\FRAME_MATCHER.i [0]), 
            .I3(GND_net), .O(n127));
    defparam i3_3_lut_adj_2665.LUT_INIT = 16'h0808;
    SB_LUT4 i2_3_lut_4_lut_adj_2666 (.I0(n26242), .I1(\data_out_frame[22] [6]), 
            .I2(n26135), .I3(n30379), .O(data_out_frame_27__3__N_2871));
    defparam i2_3_lut_4_lut_adj_2666.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_2667 (.I0(n12753), .I1(n11222), .I2(n25281), 
            .I3(\data_out_frame[22] [4]), .O(n30823));
    defparam i2_3_lut_4_lut_adj_2667.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_2668 (.I0(\data_out_frame[22] [3]), .I1(\data_out_frame[22] [1]), 
            .I2(n28773), .I3(n26252), .O(n29030));
    defparam i1_2_lut_4_lut_adj_2668.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_3_lut_4_lut (.I0(n11222), .I1(n25281), .I2(\data_out_frame[14] [2]), 
            .I3(n12771), .O(n26135));
    defparam i3_4_lut_3_lut_4_lut.LUT_INIT = 16'h3cc3;
    SB_LUT4 i1_2_lut_4_lut_adj_2669 (.I0(n13394), .I1(\data_out_frame[21] [4]), 
            .I2(\data_out_frame[21] [3]), .I3(n29178), .O(data_out_frame_26__1__N_3092));
    defparam i1_2_lut_4_lut_adj_2669.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_2670 (.I0(n7_adj_5808), .I1(\data_out_frame[22] [2]), 
            .I2(n25287), .I3(n28919), .O(data_out_frame_26__4__N_3077));
    defparam i4_4_lut_adj_2670.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_2671 (.I0(\data_out_frame[21] [7]), .I1(n30161), 
            .I2(GND_net), .I3(GND_net), .O(n28641));
    defparam i1_2_lut_adj_2671.LUT_INIT = 16'h9999;
    SB_LUT4 i3_4_lut_adj_2672 (.I0(n25347), .I1(n29030), .I2(n28641), 
            .I3(n14169), .O(data_out_frame_26__5__N_3072));
    defparam i3_4_lut_adj_2672.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_2673 (.I0(n13394), .I1(\data_out_frame[21] [4]), 
            .I2(\data_out_frame[21] [3]), .I3(n28803), .O(data_out_frame_27__7__N_1951));
    defparam i1_2_lut_4_lut_adj_2673.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_2674 (.I0(\data_in_frame[9] [2]), .I1(\data_in_frame[9] [3]), 
            .I2(\data_in_frame[11][4] ), .I3(n28868), .O(n13476));   // verilog/coms.v(74[16:42])
    defparam i2_3_lut_4_lut_adj_2674.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut_adj_2675 (.I0(\data_out_frame[21] [1]), .I1(\data_out_frame[21] [2]), 
            .I2(data_out_frame_27__7__N_2536), .I3(GND_net), .O(n7_c));
    defparam i2_2_lut_3_lut_adj_2675.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2676 (.I0(\data_out_frame[21] [1]), .I1(\data_out_frame[21] [2]), 
            .I2(n25134), .I3(n11263), .O(n28803));
    defparam i1_2_lut_3_lut_4_lut_adj_2676.LUT_INIT = 16'h6996;
    uart_tx tx (.\r_Bit_Index[0] (\r_Bit_Index[0] ), .GND_net(GND_net), 
            .\o_Rx_DV_N_4460[24] (\o_Rx_DV_N_4460[24] ), .r_SM_Main({r_SM_Main}), 
            .n27(n27), .n31429(n31429), .n1(n1), .tx_o(tx_o), .clk16MHz(clk16MHz), 
            .tx_data({tx_data}), .n14448(n14448), .n29448(n29448), .\r_SM_Main_2__N_4508[1] (r_SM_Main_2__N_4508[1]), 
            .n30801(n30801), .\r_SM_Main_2__N_4517[0] (r_SM_Main_2__N_4517[0]), 
            .n31307(n31307), .n36333(n36333), .n15766(n15766), .tx_active(tx_active), 
            .n16296(n16296), .r_Clock_Count({r_Clock_Count}), .VCC_net(VCC_net), 
            .n30013(n30013), .n6(n6), .tx_enable(tx_enable)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(108[25:94])
    uart_rx rx (.GND_net(GND_net), .baudrate({baudrate}), .VCC_net(VCC_net), 
            .\o_Rx_DV_N_4460[12] (\o_Rx_DV_N_4460[12] ), .\r_Bit_Index[0] (\r_Bit_Index[0]_adj_4 ), 
            .\r_SM_Main[2] (\r_SM_Main[2]_adj_5 ), .\o_Rx_DV_N_4460[8] (\o_Rx_DV_N_4460[8] ), 
            .n3367(n3367), .r_Rx_Data(r_Rx_Data), .\o_Rx_DV_N_4460[24] (\o_Rx_DV_N_4460[24] ), 
            .n29(n29), .n23(n23), .\r_SM_Main[1] (\r_SM_Main[1]_adj_6 ), 
            .n27(n27), .\o_Rx_DV_N_4460[7] (\o_Rx_DV_N_4460[7] ), .clk16MHz(clk16MHz), 
            .RX_N_18(RX_N_18), .n29420(n29420), .n14452(n14452), .\o_Rx_DV_N_4460[6] (\o_Rx_DV_N_4460[6] ), 
            .\o_Rx_DV_N_4460[5] (\o_Rx_DV_N_4460[5] ), .\o_Rx_DV_N_4460[4] (\o_Rx_DV_N_4460[4] ), 
            .\o_Rx_DV_N_4460[3] (\o_Rx_DV_N_4460[3] ), .\o_Rx_DV_N_4460[2] (\o_Rx_DV_N_4460[2] ), 
            .n31633(n31633), .\o_Rx_DV_N_4460[1] (\o_Rx_DV_N_4460[1] ), 
            .\o_Rx_DV_N_4460[0] (\o_Rx_DV_N_4460[0] ), .n28574(n28574), 
            .n14365(n14365), .n3370(n3370), .\r_SM_Main_2__N_4508[1] (r_SM_Main_2__N_4508[1]), 
            .n30801(n30801), .n31307(n31307), .r_Clock_Count({r_Clock_Count_adj_15}), 
            .n15789(n15789), .rx_data({rx_data}), .n15788(n15788), .n15784(n15784), 
            .n15780(n15780), .n15779(n15779), .n15777(n15777), .n15776(n15776), 
            .n34(n34), .n16299(n16299), .n26289(n26289), .rx_data_ready(rx_data_ready), 
            .n16303(n16303), .\r_SM_Main[0] (r_SM_Main[0]), .n30013(n30013), 
            .n31617(n31617), .n31553(n31553), .n31601(n31601), .n31569(n31569), 
            .n31649(n31649), .n31585(n31585), .n31537(n31537), .n31907(n31907)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(94[25:68])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (\r_Bit_Index[0] , GND_net, \o_Rx_DV_N_4460[24] , r_SM_Main, 
            n27, n31429, n1, tx_o, clk16MHz, tx_data, n14448, 
            n29448, \r_SM_Main_2__N_4508[1] , n30801, \r_SM_Main_2__N_4517[0] , 
            n31307, n36333, n15766, tx_active, n16296, r_Clock_Count, 
            VCC_net, n30013, n6, tx_enable) /* synthesis syn_module_defined=1 */ ;
    output \r_Bit_Index[0] ;
    input GND_net;
    input \o_Rx_DV_N_4460[24] ;
    output [2:0]r_SM_Main;
    input n27;
    input n31429;
    output n1;
    output tx_o;
    input clk16MHz;
    input [7:0]tx_data;
    output n14448;
    output n29448;
    input \r_SM_Main_2__N_4508[1] ;
    output n30801;
    input \r_SM_Main_2__N_4517[0] ;
    input n31307;
    input n36333;
    input n15766;
    output tx_active;
    input n16296;
    output [8:0]r_Clock_Count;
    input VCC_net;
    input n30013;
    output n6;
    output tx_enable;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    wire [2:0]n460;
    
    wire n3, n3_adj_5691, n12609;
    wire [7:0]r_Tx_Data;   // verilog/uart_tx.v(35[16:25])
    
    wire n10024, n29374, n32966, n32967, n32961, n32960, n15566, 
        n10023, o_Tx_Serial_N_4570;
    wire [8:0]n41;
    
    wire n24747, n36292, n24746, n24745, n24744, n24743, n24742, 
        n24741, n24740;
    
    SB_LUT4 i2167_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n460[2]));   // verilog/uart_tx.v(99[36:51])
    defparam i2167_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i2160_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n460[1]));   // verilog/uart_tx.v(99[36:51])
    defparam i2160_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6559_4_lut (.I0(\o_Rx_DV_N_4460[24] ), .I1(r_SM_Main[1]), .I2(n27), 
            .I3(n31429), .O(n3));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i6559_4_lut.LUT_INIT = 16'hc9cc;
    SB_DFFE o_Tx_Serial_51 (.Q(tx_o), .C(clk16MHz), .E(n1), .D(n3_adj_5691));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[0]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n10024), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n14448), 
            .D(n460[1]), .R(n29448));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n14448), 
            .D(n460[2]), .R(n29448));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i31878_4_lut_4_lut (.I0(\r_SM_Main_2__N_4508[1] ), .I1(r_SM_Main[1]), 
            .I2(n29374), .I3(n30801), .O(n29448));
    defparam i31878_4_lut_4_lut.LUT_INIT = 16'h0703;
    SB_LUT4 i28662_3_lut (.I0(r_Tx_Data[0]), .I1(r_Tx_Data[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n32966));
    defparam i28662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28663_3_lut (.I0(r_Tx_Data[2]), .I1(r_Tx_Data[3]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n32967));
    defparam i28663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28657_3_lut (.I0(r_Tx_Data[6]), .I1(r_Tx_Data[7]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n32961));
    defparam i28657_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28656_3_lut (.I0(r_Tx_Data[4]), .I1(r_Tx_Data[5]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n32960));
    defparam i28656_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31859_4_lut (.I0(r_SM_Main[2]), .I1(\r_SM_Main_2__N_4508[1] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n15566));
    defparam i31859_4_lut.LUT_INIT = 16'h1115;
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n30801));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6295_4_lut (.I0(\r_SM_Main_2__N_4517[0] ), .I1(n31307), .I2(r_SM_Main[1]), 
            .I3(n27), .O(n10023));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i6295_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i6296_3_lut (.I0(n10023), .I1(\r_SM_Main_2__N_4508[1] ), .I2(r_SM_Main[0]), 
            .I3(GND_net), .O(n10024));   // verilog/uart_tx.v(44[7] 143[14])
    defparam i6296_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i25113_2_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(GND_net), 
            .I3(GND_net), .O(n29374));
    defparam i25113_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_1_lut (.I0(r_SM_Main[2]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1));
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 r_SM_Main_2__I_0_62_i3_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_4570), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n3_adj_5691));   // verilog/uart_tx.v(44[7] 143[14])
    defparam r_SM_Main_2__I_0_62_i3_3_lut.LUT_INIT = 16'he5e5;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n36333));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Tx_Active_53 (.Q(tx_active), .C(clk16MHz), .D(n15766));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .D(n16296));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Clock_Count_1595__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n1), .D(n41[1]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n1), .D(n41[2]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n1), .D(n41[3]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n1), .D(n41[4]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n1), .D(n41[5]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n1), .D(n41[6]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n1), .D(n41[7]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i8 (.Q(r_Clock_Count[8]), .C(clk16MHz), 
            .E(n1), .D(n41[8]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1595__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n1), .D(n41[0]), .R(n15566));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 r_Clock_Count_1595_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[8]), .I3(n24747), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Bit_Index_1__bdd_4_lut (.I0(r_Bit_Index[1]), .I1(n32960), 
            .I2(n32961), .I3(r_Bit_Index[2]), .O(n36292));
    defparam r_Bit_Index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n36292_bdd_4_lut (.I0(n36292), .I1(n32967), .I2(n32966), .I3(r_Bit_Index[2]), 
            .O(o_Tx_Serial_N_4570));
    defparam n36292_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 r_Clock_Count_1595_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n24746), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_9 (.CI(n24746), .I0(GND_net), .I1(r_Clock_Count[7]), 
            .CO(n24747));
    SB_LUT4 r_Clock_Count_1595_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n24745), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_8 (.CI(n24745), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n24746));
    SB_LUT4 r_Clock_Count_1595_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n24744), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_7 (.CI(n24744), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n24745));
    SB_LUT4 r_Clock_Count_1595_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n24743), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_6 (.CI(n24743), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n24744));
    SB_LUT4 r_Clock_Count_1595_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n24742), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_5 (.CI(n24742), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n24743));
    SB_LUT4 r_Clock_Count_1595_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n24741), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_4 (.CI(n24741), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n24742));
    SB_LUT4 r_Clock_Count_1595_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n24740), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_3 (.CI(n24740), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n24741));
    SB_LUT4 r_Clock_Count_1595_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1595_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1595_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n24740));
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3), .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[7]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[6]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[5]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[4]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[3]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(clk16MHz), .E(n12609), 
            .D(tx_data[1]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i17_4_lut (.I0(r_SM_Main[0]), .I1(n30013), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_4517[0] ), .O(n6));
    defparam i17_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i2_3_lut_4_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(r_SM_Main[0]), 
            .I3(\r_SM_Main_2__N_4517[0] ), .O(n12609));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i31925_2_lut_3_lut_4_lut (.I0(\r_SM_Main_2__N_4508[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[2]), .I3(r_SM_Main[0]), .O(n14448));
    defparam i31925_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 o_Tx_Serial_I_0_1_lut (.I0(tx_o), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(tx_enable));   // verilog/uart_tx.v(39[24:36])
    defparam o_Tx_Serial_I_0_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (GND_net, baudrate, VCC_net, \o_Rx_DV_N_4460[12] , \r_Bit_Index[0] , 
            \r_SM_Main[2] , \o_Rx_DV_N_4460[8] , n3367, r_Rx_Data, \o_Rx_DV_N_4460[24] , 
            n29, n23, \r_SM_Main[1] , n27, \o_Rx_DV_N_4460[7] , clk16MHz, 
            RX_N_18, n29420, n14452, \o_Rx_DV_N_4460[6] , \o_Rx_DV_N_4460[5] , 
            \o_Rx_DV_N_4460[4] , \o_Rx_DV_N_4460[3] , \o_Rx_DV_N_4460[2] , 
            n31633, \o_Rx_DV_N_4460[1] , \o_Rx_DV_N_4460[0] , n28574, 
            n14365, n3370, \r_SM_Main_2__N_4508[1] , n30801, n31307, 
            r_Clock_Count, n15789, rx_data, n15788, n15784, n15780, 
            n15779, n15777, n15776, n34, n16299, n26289, rx_data_ready, 
            n16303, \r_SM_Main[0] , n30013, n31617, n31553, n31601, 
            n31569, n31649, n31585, n31537, n31907) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [31:0]baudrate;
    input VCC_net;
    output \o_Rx_DV_N_4460[12] ;
    output \r_Bit_Index[0] ;
    output \r_SM_Main[2] ;
    output \o_Rx_DV_N_4460[8] ;
    input n3367;
    output r_Rx_Data;
    output \o_Rx_DV_N_4460[24] ;
    output n29;
    output n23;
    output \r_SM_Main[1] ;
    output n27;
    output \o_Rx_DV_N_4460[7] ;
    input clk16MHz;
    input RX_N_18;
    output n29420;
    output n14452;
    output \o_Rx_DV_N_4460[6] ;
    output \o_Rx_DV_N_4460[5] ;
    output \o_Rx_DV_N_4460[4] ;
    output \o_Rx_DV_N_4460[3] ;
    output \o_Rx_DV_N_4460[2] ;
    output n31633;
    output \o_Rx_DV_N_4460[1] ;
    output \o_Rx_DV_N_4460[0] ;
    input n28574;
    output n14365;
    input n3370;
    output \r_SM_Main_2__N_4508[1] ;
    input n30801;
    output n31307;
    output [7:0]r_Clock_Count;
    input n15789;
    output [7:0]rx_data;
    input n15788;
    input n15784;
    input n15780;
    input n15779;
    input n15777;
    input n15776;
    output n34;
    input n16299;
    input n26289;
    output rx_data_ready;
    input n16303;
    input \r_SM_Main[0] ;
    output n30013;
    output n31617;
    output n31553;
    output n31601;
    output n31569;
    output n31649;
    output n31585;
    output n31537;
    output n31907;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    wire [23:0]n6484;
    
    wire n2484, n1742, n24463, n35670, n41, n35671, n24464;
    wire [23:0]n6328;
    
    wire n1700, n856, n24384, n1415, n34_c, n2485, n1602, n24462, 
        n41_adj_5406, n35672, n39, n37, n34925, n35377, n24560, 
        n3052, n2638, n24561, n2486, n1459, n24461, n34_adj_5407, 
        n35688;
    wire [23:0]n6614;
    
    wire n3053, n2519, n24559, n3054, n2397, n24558, n24385, n43, 
        n35673, n31241;
    wire [23:0]n294;
    
    wire n24335, n31239, n2487, n1460, n24460, n1701, n698, n24383, 
        n2488, n1011, n24459, n3055, n2272, n24557, n24336, n1702, 
        n858, n24334;
    wire [24:0]o_Rx_DV_N_4460;
    
    wire n3056, n2144, n24556, n2489, n24458, n3057, n2013, n24555, 
        n2490, n24457;
    wire [23:0]n6302;
    
    wire n1552, n1879, n24382, n3058, n24554, n1553, n24381, n3059, 
        n24553, n24333, n2491, n24456, n3060, n24552, n3061, n24551, 
        n3062, n24550, n1554, n24380, n3063, n24549, n3064, n24548, 
        n3065, n24547, n43_adj_5408, n35184, n35841, n31097, n24332, 
        n31207, n538, n29498, n3066, n24546, n24331;
    wire [23:0]n6458;
    
    wire n2353, n24455, n2354, n24454, n24330, n1555, n24379, 
        n13088, n29502, n40, n30, n43_adj_5409, n34736, n35817, 
        n35820, n39_adj_5410, n35695, n2363, n31217, n29478, n35842, 
        n2355, n24453, n34742, n35989, n2606;
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]n479;
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n6, n2356, n24452;
    wire [23:0]n6510;
    
    wire n2723, n1831;
    wire [23:0]n6354;
    
    wire n1966;
    wire [23:0]n6380;
    
    wire n2098, n1838, n33, n2608, n23_c, n2607, n25, n27_c, 
        n2609, n21, n2605, n29_c, n2610, n19, n2604, n31, n2603, 
        n33_adj_5411, n2602, n35, n2600, n39_adj_5412, n2599, n41_adj_5413, 
        n2601, n37_adj_5414, n2598, n43_adj_5415, n24329, n1556, 
        n24378, n2953, n17, n2945, n33_adj_5416, n1832, n35990, 
        n2951, n21_adj_5417, n2952, n19_adj_5418, n2944, n35_adj_5419, 
        n2954, n15, n39_adj_5420, n34603, n35006, n36, n38, n45, 
        n35182, n35686, n1560, n1839, n48;
    wire [23:0]n6536;
    
    wire n2837, n1840, n2950, n23_adj_5421, n1697, n39_adj_5422, 
        n1696, n41_adj_5423, n1698, n37_adj_5424, n1975, n1695, 
        n43_adj_5425, n2841, n19_adj_5426, n2833, n35_adj_5427, n2839, 
        n23_adj_5428, n2840, n21_adj_5429, n2842, n17_adj_5430, n2838, 
        n25_adj_5431, n2107, n2843, n15_adj_5432, n36045, n2938, 
        n31215;
    wire [23:0]n6406;
    
    wire n2236, n31825, n31835, n1411, n1410, n1412, n31763, n805, 
        n42, n804, n35676, n803, n35677, n802, n48_adj_5433, n27_adj_5434, 
        n2362, n29_adj_5435, n2364, n25_adj_5436, n13125, n27_adj_5437, 
        n2360, n33_adj_5438, n2365, n23_adj_5439, n2359, n35_adj_5440, 
        n2358, n37_adj_5441, n2357, n39_adj_5442, n2836, n29_adj_5443, 
        n2361, n31_adj_5444, n41_adj_5445, n1974, n34963;
    wire [23:0]n6432;
    
    wire n2844, n35407, n2106, n34387, n28540, n34393, n24451, 
        n34384, n34390, n3, n1977, n2109;
    wire [23:0]n6588;
    
    wire n3188, n24545, n2227, n2939, n3084, n24544, n31759, n31757, 
        n31735, n31801, n24450, n32079, n32049, n2940, n2977, 
        n24543, n1557, n24377, n21_adj_5449, n31973, n32836, n26, 
        n1558, n24376, n24449, n24448, n2941, n2867, n24542, n1559, 
        n24375, n2942, n2754, n24541, n24374, n24447, n2943, n24540, 
        n24446, n24328, n2235, n48_adj_5450, n13145, n24539;
    wire [23:0]n6276;
    
    wire n1408, n24373, n34575, n24445, n35600, n3_adj_5451, n32840, 
        n31971, n31459, r_Rx_Data_R, n481_adj_5452, n1409, n24372, 
        n2238, n1112;
    wire [23:0]n6224;
    
    wire n1262, n24538, n32115;
    wire [2:0]r_SM_Main_2__N_4418;
    
    wire n30913, n35598, n33_adj_5453, n31_adj_5454, n34965, n32117, 
        n2845, n12, n31983, n2946, n24537, n24371, n961, n962, 
        n9513, n959, n44, n3082, n3186, n31829, n13171, n48_adj_5455, 
        n2110, n2947, n24536, n32816, n29515, n2948, n24535, n24444, 
        n2949, n24534, n24327, n35658, n24370, n24369, n24443, 
        n1413, n24368, n32858, n29494, n2366, n24442, n24533, 
        n2367, n24441, n31205, n20, n43_adj_5456, n38_adj_5457, 
        n37_adj_5458, n35659, n24440, n1414, n24367, n2228, n24439, 
        n24326, n24366, n24532, n13119, n29490, n32057, n32073, 
        n32824, n32067, n29590, n32838, n41_adj_5459, n39_adj_5460, 
        n34942, n18, n34927, n35911, n2724, n35220, n2229, n24438, 
        n24325, n31837;
    wire [23:0]n6562;
    
    wire n2230, n24437, n31199, n29524, n2231, n24436, n24531, 
        n31839, n32856, n32878, n24530, n2828, n2827, n2829, n2232, 
        n24435, n24529, n2955, n24528;
    wire [23:0]n6250;
    
    wire n1261, n24365, n43_adj_5461, n2830, n2831, n31991, n32101, 
        n31981, n13128, n34350, n34347, n34344, n2832, n24364, 
        n15574, n37_adj_5462, n31273, n24324, n2233, n24434, n31279, 
        n14407, n16, n24, n35844, n1111, n31195, n1267, n39_adj_5463, 
        n32846, n41_adj_5464, n14, n34976, n35931, n2835, n31743, 
        n2956, n24527, n35932, n31_adj_5465, n35836, n35761, n36012, 
        n35944, n2596, n31209, n2730, n1263, n24363, n24323, n29535, 
        n42_adj_5466, n35218, n960, n35674, n36038, n35675, n958, 
        n48_adj_5467, n32031, n13152, n36039, n1113, n43_adj_5468, 
        n2719, n21640, n31811, n30047, n29_adj_5469, n32099, n31487, 
        n31621, n31627, n1264, n24362, n27_adj_5470, n24322, n2234, 
        n24433, n2611, n17_adj_5471, n643, n21_adj_5472, n24432, 
        n2957, n24526, n1265, n24361, n29482, n24431, n2237, n24430, 
        n24525, n24524, n30517, n34488, n34483, n35620, n24523, 
        n1116, n24429, n1266, n24360, n24522, n24521, n24359, 
        n2612, n16_adj_5473, n35789, n34329, n34326, n34591, n2239, 
        n24428, n2240, n24427, n24520, n35790, n24519, n31197, 
        n29528, n2834, n24518, n24517, n31203, n29506, n24516, 
        n34581, n24358, n34485, n35033, n22, n35524, n35721, n20_adj_5474, 
        n26_adj_5475, n28, n31117, n20_adj_5476, n28_adj_5477, n24426, 
        n18_adj_5478, n34481, n35979, n35980, n35914, n2099, n24425, 
        n35035, n31301, n35787, n35864, n38_adj_5479, n31189, n35943, 
        n24357, n31939, n2100, n24424, n24515, n2597, n3_adj_5480, 
        n31943, n5, n31947, n8, n40_adj_5481, n42_adj_5482, n34744, 
        n35843, n2101, n24423, n24356, n24514, n13, n25_adj_5483, 
        n31313, n31319, n1114, n24355, n32755, n2102, n24422, 
        n1115, n24354, n24513, n32103, n32864, n32105, n31997, 
        n2, n8191, n36334, n34887, n11, n24353, n2103, n24421, 
        n24512, n24511, n34903, n34899, n2104, n24420, n24510, 
        n35757, n42_adj_5484, n35357, n24509, n29532, n10, n2105, 
        n24419, n40_adj_5485, n24508, n35650, n24507, n35651, n24418, 
        n31213, n29486, n24417, n18_adj_5486, n36_adj_5487, n34883, 
        n13122, n16_adj_5488, n34881, n35937, n35226, n2108, n24416, 
        n36018, n2713, n24506, n30043, n24415, n2714, n24505, 
        n2715, n24504, n31_adj_5489, n28_adj_5490, n13113, n14_adj_5492, 
        n22_adj_5493, n12_adj_5494, n34896, n35935, n35936, n35830, 
        n2716, n24503, n2717, n24502, n41_adj_5495, n35895, n36019, 
        n35224, n36044, n1699, n48_adj_5496, n1837, n32, n1972;
    wire [7:0]n1;
    
    wire n644, n44_adj_5498, n46, n24_adj_5499, n32_adj_5500, n2718, 
        n24501, n22_adj_5508, n34579, n35975, n2482, n24414, n1967, 
        n24413, n1968, n24412, n24500, n1969, n24411, n1970, n24410, 
        n2720, n24499, n2721, n24498, n35976, n2476, n1971, n24409, 
        n24408, n1973, n24407, n24739, n2722, n24497, n24406, 
        n24738, n24496, n24495, n2725, n24494, n24737, n24405, 
        n2726, n24493, n1976, n24404, n24345, n24344, n31099, 
        n24736, n2727, n24492, n24403, n24735, n2728, n24491, 
        n24734, n2729, n24490, n24733, n1833, n36_adj_5509, n24489, 
        n2478, n38_adj_5510, n40_adj_5511, n24343, n31249, n34703, 
        n35967, n31211, n24402, n24488, n24401, n24487, n24400, 
        n1834, n24399, n24486, n24342, n1835, n24398, n24485, 
        n1694, n24484, n24483, n1836, n24397, n7913, n24396, n24482, 
        n24341, n31247, n24481, n24480, n24479, n24395, n24478, 
        n2477, n32_adj_5512, n24477, n24340, n31245, n24394, n24476, 
        n24475, n24474, n35968, n2481, n21638, n9507, n9509, n24473, 
        n24472, n24393, n24339, n1841, n24392, n35840, n1693, 
        n13181, n24471, n31847, n28_adj_5513, n34700, n35920, n30_adj_5514, 
        n31845, n31201, n24470, n35928, n24469, n24391, n24390, 
        n24338, n31243;
    wire [23:0]n6640;
    
    wire n3151, n24589, n3152, n24588, n3153, n24587, n3154, n24586, 
        n3155, n24585, n3156, n24584, n31841, n3157, n24583, n3158, 
        n24582, n3159, n24581, n3160, n24580, n3161, n24579, n3162, 
        n24578, n3163, n24577, n24389, n2479, n24468, n3164, n24576, 
        n3165, n24575, n24388, n2480, n24467, n10_adj_5515, n3166, 
        n24574, n3167, n24573, n3168, n24572, n3169, n24571, n24387, 
        n24386, n24337, n24466, n3170, n24570, n3171, n24569, 
        n24465, n3172, n24568, n31219, n24567, n29474, n3046, 
        n24566, n3047, n24565, n3048, n24564, n3049, n24563, n14_adj_5516, 
        n3051, n34834, n16_adj_5517, n35628, n2483, n3050, n24562, 
        n12_adj_5518, n34852, n34372, n31897, n8077, n8084, n35910, 
        n13131, n34589, n35939, n8_adj_5519, n12_adj_5520, n34796, 
        n42_adj_5521, n32087, n32071, n14_adj_5522, n10_adj_5523, 
        n32089, n34814, n32119, n32085, n28_adj_5524, n34645, n30_adj_5525, 
        n32019, n31803, n24_adj_5526, n34620, n26_adj_5527, n34632, 
        n28_adj_5528, n32842, n35868, n20_adj_5529, n34528, n32041, 
        n22_adj_5530, n24_adj_5531, n34541, n35918, n41_adj_5532, 
        n45_adj_5533, n39_adj_5534, n35806, n31083, n4, n16_adj_5535, 
        n35015, n43_adj_5536, n18_adj_5537, n20_adj_5538, n27_adj_5539, 
        n29_adj_5540, n31_adj_5541, n33_adj_5542, n31873, n34991, 
        n22_adj_5543, n35_adj_5544, n32021, n21_adj_5545, n31255, 
        n23_adj_5547, n25_adj_5548, n37_adj_5549, n17_adj_5550, n19_adj_5551, 
        n35000, n35027, n35858, n35429, n14_adj_5552, n15_adj_5553, 
        n35616, n35002, n14_adj_5554, n35664, n35665, n31605, n31611, 
        n31541, n31547, n35981, n40_adj_5555, n34996, n35725, n31589, 
        n31595, n35212, n31557, n31563, n31637, n31643, n26_adj_5556, 
        n31573, n31579, n35929, n35930, n35838, n35765, n35949, 
        n35210, n31525, n31531, n35951, n31183, n39_adj_5557, n45_adj_5558, 
        n43_adj_5559, n41_adj_5560, n33_adj_5561, n35_adj_5562, n37_adj_5563, 
        n29_adj_5564, n31_adj_5565, n21_adj_5566, n23_adj_5567, n25_adj_5568, 
        n27_adj_5569, n19_adj_5570, n34543, n34531, n35624, n18_adj_5571, 
        n35797, n35798, n35055, n26_adj_5572, n42_adj_5573, n30_adj_5574, 
        n35977, n35978, n35916, n35057, n35521, n35862, n35982, 
        n35523, n34856, n34_adj_5575, n46_adj_5576, n24_adj_5577, 
        n43_adj_5578, n32844, n39_adj_5579, n41_adj_5580, n39_adj_5581, 
        n41_adj_5582, n37_adj_5583, n23_adj_5584, n25_adj_5585, n29_adj_5586, 
        n31_adj_5587, n37_adj_5588, n45_adj_5589, n7, n43_adj_5590, 
        n31_adj_5591, n33_adj_5592, n9, n35_adj_5593, n25_adj_5594, 
        n27_adj_5595, n17_adj_5596, n19_adj_5597, n29_adj_5598, n21_adj_5599, 
        n35_adj_5600, n33_adj_5601, n11_adj_5602, n23_adj_5603, n34634, 
        n34628, n13_adj_5604, n15_adj_5605, n27_adj_5606, n34756, 
        n12_adj_5607, n34747, n10_adj_5608, n30_adj_5609, n34769, 
        n16_adj_5610, n34714, n22_adj_5611, n8_adj_5612, n30_adj_5613, 
        n24_adj_5614, n3274, n34786, n35267, n35261, n35869, n35513, 
        n35945, n6_adj_5615, n35783, n35784, n48_adj_5616, n4_adj_5617, 
        n35781, n34_adj_5618, n35973, n35974, n35782, n34749, n35963, 
        n35736, n35922, n36032, n36033, n36011, n34720, n35532, 
        n35734, n34724, n35875, n35636, n35644, n40_adj_5619, n3253, 
        n35877, n32113, n31999, n31113, n31815, n42_adj_5620, n35805, 
        n35_adj_5621, n37_adj_5622, n9515, n46_adj_5623, n41_adj_5624, 
        n25_adj_5625, n29_adj_5626, n33_adj_5627, n31_adj_5628, n39_adj_5629, 
        n27_adj_5630, n34662, n29518, n38_adj_5631, n32_adj_5632, 
        n29509, n26_adj_5633, n35668, n35811, n33_adj_5634, n37_adj_5635, 
        n35_adj_5636, n25_adj_5637, n35812, n27_adj_5638, n21_adj_5639, 
        n34652, n35971, n23_adj_5640, n35703, n9_adj_5641, n31_adj_5642, 
        n13_adj_5643, n15_adj_5644, n17_adj_5645, n29_adj_5646, n11_adj_5647, 
        n19_adj_5648, n34802, n36036, n35299, n35550, n35548, n34807, 
        n6_adj_5649, n35632, n32_adj_5650, n35633, n34798, n35891, 
        n35248, n35634, n35635, n35289, n35530, n35246, n35743, 
        n36037, n36022, n35785, n36048, n36049, n36041, n35909, 
        n35669, n36015, n48_adj_5651, n35321, n44_adj_5652, n32053, 
        n32794, n32061, n23_adj_5653, n22_adj_5654, n35_adj_5655, 
        n39_adj_5656, n31361, n33_adj_5657, n37_adj_5658, n27_adj_5659, 
        n29_adj_5660, n23_adj_5661, n25_adj_5662, n11_adj_5663, n13_adj_5664, 
        n15_adj_5665, n32832, n17_adj_5666, n19_adj_5667, n32830, 
        n31917, n32860, n31_adj_5668, n21_adj_5669, n34842, n13168, 
        n35341, n34370, n35566, n35564, n34844, n8_adj_5670, n35640, 
        n35641, n34_adj_5671, n34838, n35941, n35238, n35642, n35643, 
        n35323, n20_adj_5672, n35236, n35749, n36020, n37_adj_5673, 
        n35690, n35193, n35839, n35_adj_5674, n35528, n36046, n41_adj_5675, 
        n36047, n36043, n39_adj_5676, n29_adj_5677, n31_adj_5678, 
        n33_adj_5679, n27_adj_5680, n34716, n48_adj_5681, n31849, 
        n38_adj_5682, n26_adj_5683, n35815, n35816, n34705, n35969, 
        n35699, n36034, n36035, n36017, n32029, n34587, n46_adj_5684, 
        n35_adj_5685, n37_adj_5686, n41_adj_5687, n31_adj_5688, n29_adj_5689, 
        n34774, n28_adj_5690, n35819;
    
    SB_LUT4 add_2955_10_lut (.I0(GND_net), .I1(n2484), .I2(n1742), .I3(n24463), 
            .O(n6484[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31367_3_lut (.I0(n35670), .I1(baudrate[6]), .I2(n41), .I3(GND_net), 
            .O(n35671));   // verilog/uart_rx.v(119[33:55])
    defparam i31367_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2955_10 (.CI(n24463), .I0(n2484), .I1(n1742), .CO(n24464));
    SB_LUT4 add_2949_4_lut (.I0(GND_net), .I1(n1700), .I2(n856), .I3(n24384), 
            .O(n6328[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_965_i34_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1415), .I3(GND_net), .O(n34_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i34_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2955_9_lut (.I0(GND_net), .I1(n2485), .I2(n1602), .I3(n24462), 
            .O(n6484[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31368_3_lut (.I0(n34_c), .I1(baudrate[5]), .I2(n41_adj_5406), 
            .I3(GND_net), .O(n35672));   // verilog/uart_rx.v(119[33:55])
    defparam i31368_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2955_9 (.CI(n24462), .I0(n2485), .I1(n1602), .CO(n24463));
    SB_LUT4 i31073_4_lut (.I0(n41), .I1(n39), .I2(n37), .I3(n34925), 
            .O(n35377));
    defparam i31073_4_lut.LUT_INIT = 16'heeef;
    SB_CARRY add_2960_17 (.CI(n24560), .I0(n3052), .I1(n2638), .CO(n24561));
    SB_LUT4 add_2955_8_lut (.I0(GND_net), .I1(n2486), .I2(n1459), .I3(n24461), 
            .O(n6484[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31384_3_lut (.I0(n34_adj_5407), .I1(baudrate[4]), .I2(n37), 
            .I3(GND_net), .O(n35688));   // verilog/uart_rx.v(119[33:55])
    defparam i31384_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2960_16_lut (.I0(GND_net), .I1(n3053), .I2(n2519), .I3(n24559), 
            .O(n6614[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_16 (.CI(n24559), .I0(n3053), .I1(n2519), .CO(n24560));
    SB_LUT4 add_2960_15_lut (.I0(GND_net), .I1(n3054), .I2(n2397), .I3(n24558), 
            .O(n6614[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2949_4 (.CI(n24384), .I0(n1700), .I1(n856), .CO(n24385));
    SB_LUT4 i31369_3_lut (.I0(n35672), .I1(baudrate[6]), .I2(n43), .I3(GND_net), 
            .O(n35673));   // verilog/uart_rx.v(119[33:55])
    defparam i31369_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2955_8 (.CI(n24461), .I0(n2486), .I1(n1459), .CO(n24462));
    SB_LUT4 sub_38_add_2_16_lut (.I0(n31239), .I1(n294[14]), .I2(VCC_net), 
            .I3(n24335), .O(n31241)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_2960_15 (.CI(n24558), .I0(n3054), .I1(n2397), .CO(n24559));
    SB_LUT4 add_2955_7_lut (.I0(GND_net), .I1(n2487), .I2(n1460), .I3(n24460), 
            .O(n6484[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_7 (.CI(n24460), .I0(n2487), .I1(n1460), .CO(n24461));
    SB_LUT4 add_2949_3_lut (.I0(GND_net), .I1(n1701), .I2(n698), .I3(n24383), 
            .O(n6328[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2949_3 (.CI(n24383), .I0(n1701), .I1(n698), .CO(n24384));
    SB_LUT4 add_2955_6_lut (.I0(GND_net), .I1(n2488), .I2(n1011), .I3(n24459), 
            .O(n6484[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2960_14_lut (.I0(GND_net), .I1(n3055), .I2(n2272), .I3(n24557), 
            .O(n6614[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_14 (.CI(n24557), .I0(n3055), .I1(n2272), .CO(n24558));
    SB_CARRY add_2955_6 (.CI(n24459), .I0(n2488), .I1(n1011), .CO(n24460));
    SB_CARRY sub_38_add_2_16 (.CI(n24335), .I0(n294[14]), .I1(VCC_net), 
            .CO(n24336));
    SB_LUT4 add_2949_2_lut (.I0(GND_net), .I1(n1702), .I2(n858), .I3(VCC_net), 
            .O(n6328[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_15_lut (.I0(o_Rx_DV_N_4460[10]), .I1(n294[13]), 
            .I2(VCC_net), .I3(n24334), .O(n31239)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_2960_13_lut (.I0(GND_net), .I1(n3056), .I2(n2144), .I3(n24556), 
            .O(n6614[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_13 (.CI(n24556), .I0(n3056), .I1(n2144), .CO(n24557));
    SB_LUT4 add_2955_5_lut (.I0(GND_net), .I1(n2489), .I2(n856), .I3(n24458), 
            .O(n6484[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_5 (.CI(n24458), .I0(n2489), .I1(n856), .CO(n24459));
    SB_CARRY sub_38_add_2_15 (.CI(n24334), .I0(n294[13]), .I1(VCC_net), 
            .CO(n24335));
    SB_CARRY add_2949_2 (.CI(VCC_net), .I0(n1702), .I1(n858), .CO(n24383));
    SB_LUT4 add_2960_12_lut (.I0(GND_net), .I1(n3057), .I2(n2013), .I3(n24555), 
            .O(n6614[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2955_4_lut (.I0(GND_net), .I1(n2490), .I2(n698), .I3(n24457), 
            .O(n6484[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2948_11_lut (.I0(GND_net), .I1(n1552), .I2(n1879), .I3(n24382), 
            .O(n6302[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_12 (.CI(n24555), .I0(n3057), .I1(n2013), .CO(n24556));
    SB_LUT4 add_2960_11_lut (.I0(GND_net), .I1(n3058), .I2(n1879), .I3(n24554), 
            .O(n6614[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2948_10_lut (.I0(GND_net), .I1(n1553), .I2(n1742), .I3(n24381), 
            .O(n6302[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_11 (.CI(n24554), .I0(n3058), .I1(n1879), .CO(n24555));
    SB_LUT4 add_2960_10_lut (.I0(GND_net), .I1(n3059), .I2(n1742), .I3(n24553), 
            .O(n6614[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_14_lut (.I0(GND_net), .I1(n294[12]), .I2(VCC_net), 
            .I3(n24333), .O(\o_Rx_DV_N_4460[12] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_4 (.CI(n24457), .I0(n2490), .I1(n698), .CO(n24458));
    SB_CARRY add_2960_10 (.CI(n24553), .I0(n3059), .I1(n1742), .CO(n24554));
    SB_LUT4 add_2955_3_lut (.I0(GND_net), .I1(n2491), .I2(n858), .I3(n24456), 
            .O(n6484[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2960_9_lut (.I0(GND_net), .I1(n3060), .I2(n1602), .I3(n24552), 
            .O(n6614[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_14 (.CI(n24333), .I0(n294[12]), .I1(VCC_net), 
            .CO(n24334));
    SB_CARRY add_2948_10 (.CI(n24381), .I0(n1553), .I1(n1742), .CO(n24382));
    SB_CARRY add_2960_9 (.CI(n24552), .I0(n3060), .I1(n1602), .CO(n24553));
    SB_LUT4 add_2960_8_lut (.I0(GND_net), .I1(n3061), .I2(n1459), .I3(n24551), 
            .O(n6614[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_8 (.CI(n24551), .I0(n3061), .I1(n1459), .CO(n24552));
    SB_LUT4 add_2960_7_lut (.I0(GND_net), .I1(n3062), .I2(n1460), .I3(n24550), 
            .O(n6614[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_7 (.CI(n24550), .I0(n3062), .I1(n1460), .CO(n24551));
    SB_LUT4 add_2948_9_lut (.I0(GND_net), .I1(n1554), .I2(n1602), .I3(n24380), 
            .O(n6302[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_3 (.CI(n24456), .I0(n2491), .I1(n858), .CO(n24457));
    SB_LUT4 add_2960_6_lut (.I0(GND_net), .I1(n3063), .I2(n1011), .I3(n24549), 
            .O(n6614[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_6 (.CI(n24549), .I0(n3063), .I1(n1011), .CO(n24550));
    SB_LUT4 add_2960_5_lut (.I0(GND_net), .I1(n3064), .I2(n856), .I3(n24548), 
            .O(n6614[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_5 (.CI(n24548), .I0(n3064), .I1(n856), .CO(n24549));
    SB_LUT4 add_2960_4_lut (.I0(GND_net), .I1(n3065), .I2(n698), .I3(n24547), 
            .O(n6614[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30880_3_lut (.I0(n35671), .I1(baudrate[7]), .I2(n43_adj_5408), 
            .I3(GND_net), .O(n35184));   // verilog/uart_rx.v(119[33:55])
    defparam i30880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31537_4_lut (.I0(n35184), .I1(n35688), .I2(n43_adj_5408), 
            .I3(n35377), .O(n35841));   // verilog/uart_rx.v(119[33:55])
    defparam i31537_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 sub_38_add_2_13_lut (.I0(o_Rx_DV_N_4460[9]), .I1(n294[11]), 
            .I2(VCC_net), .I3(n24332), .O(n31097)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_13_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_13 (.CI(n24332), .I0(n294[11]), .I1(VCC_net), 
            .CO(n24333));
    SB_CARRY add_2948_9 (.CI(n24380), .I0(n1554), .I1(n1602), .CO(n24381));
    SB_CARRY add_2960_4 (.CI(n24547), .I0(n3065), .I1(n698), .CO(n24548));
    SB_LUT4 add_2955_2_lut (.I0(n29498), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31207)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2955_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24456));
    SB_LUT4 add_2960_3_lut (.I0(GND_net), .I1(n3066), .I2(n858), .I3(n24546), 
            .O(n6614[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_12_lut (.I0(GND_net), .I1(n294[10]), .I2(VCC_net), 
            .I3(n24331), .O(o_Rx_DV_N_4460[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_12 (.CI(n24331), .I0(n294[10]), .I1(VCC_net), 
            .CO(n24332));
    SB_LUT4 add_2954_17_lut (.I0(GND_net), .I1(n2353), .I2(n2638), .I3(n24455), 
            .O(n6458[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_16_lut (.I0(GND_net), .I1(n2354), .I2(n2519), .I3(n24454), 
            .O(n6458[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_11_lut (.I0(GND_net), .I1(n294[9]), .I2(VCC_net), 
            .I3(n24330), .O(o_Rx_DV_N_4460[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2948_8_lut (.I0(GND_net), .I1(n1555), .I2(n1459), .I3(n24379), 
            .O(n6302[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_16 (.CI(n24454), .I0(n2354), .I1(n2519), .CO(n24455));
    SB_LUT4 i25239_1_lut (.I0(n13088), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29502));
    defparam i25239_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31513_4_lut (.I0(n40), .I1(n30), .I2(n43_adj_5409), .I3(n34736), 
            .O(n35817));   // verilog/uart_rx.v(119[33:55])
    defparam i31513_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_2960_3 (.CI(n24546), .I0(n3066), .I1(n858), .CO(n24547));
    SB_LUT4 i31391_3_lut (.I0(n35820), .I1(baudrate[7]), .I2(n39_adj_5410), 
            .I3(GND_net), .O(n35695));   // verilog/uart_rx.v(119[33:55])
    defparam i31391_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1672_3_lut (.I0(n2363), .I1(n6458[13]), .I2(n294[8]), 
            .I3(GND_net), .O(n2486));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2960_2_lut (.I0(n29478), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31217)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i31538_3_lut (.I0(n35841), .I1(baudrate[8]), .I2(n1553), .I3(GND_net), 
            .O(n35842));   // verilog/uart_rx.v(119[33:55])
    defparam i31538_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2954_15_lut (.I0(GND_net), .I1(n2355), .I2(n2397), .I3(n24453), 
            .O(n6458[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_11 (.CI(n24330), .I0(n294[9]), .I1(VCC_net), 
            .CO(n24331));
    SB_LUT4 i31685_4_lut (.I0(n35695), .I1(n35817), .I2(n43_adj_5409), 
            .I3(n34742), .O(n35989));   // verilog/uart_rx.v(119[33:55])
    defparam i31685_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_i1753_3_lut (.I0(n2486), .I1(n6484[13]), .I2(n294[7]), 
            .I3(GND_net), .O(n2606));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2145_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n479[2]));   // verilog/uart_rx.v(103[36:51])
    defparam i2145_3_lut.LUT_INIT = 16'h6a6a;
    SB_CARRY add_2954_15 (.CI(n24453), .I0(n2355), .I1(n2397), .CO(n24454));
    SB_LUT4 i2_2_lut (.I0(r_SM_Main[0]), .I1(\r_SM_Main[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_2954_14_lut (.I0(GND_net), .I1(n2356), .I2(n2272), .I3(n24452), 
            .O(n6458[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2138_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n479[1]));   // verilog/uart_rx.v(103[36:51])
    defparam i2138_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1832_3_lut (.I0(n2606), .I1(n6510[13]), .I2(n294[6]), 
            .I3(GND_net), .O(n2723));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1318_3_lut (.I0(n1831), .I1(n6354[23]), .I2(n294[12]), 
            .I3(GND_net), .O(n1966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1318_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1407_3_lut (.I0(n1966), .I1(n6380[23]), .I2(n294[11]), 
            .I3(GND_net), .O(n2098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i33_2_lut (.I0(n1838), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n33));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i23_2_lut (.I0(n2608), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n23_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i25_2_lut (.I0(n2607), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n25));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i27_2_lut (.I0(n2606), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n27_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i21_2_lut (.I0(n2609), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n21));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i29_2_lut (.I0(n2605), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n29_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i19_2_lut (.I0(n2610), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n19));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i31_2_lut (.I0(n2604), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n31));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i33_2_lut (.I0(n2603), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5411));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i35_2_lut (.I0(n2602), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i39_2_lut (.I0(n2600), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5412));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i41_2_lut (.I0(n2599), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5413));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i37_2_lut (.I0(n2601), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5414));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i43_2_lut (.I0(n2598), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5415));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 sub_38_add_2_10_lut (.I0(GND_net), .I1(n294[8]), .I2(VCC_net), 
            .I3(n24329), .O(\o_Rx_DV_N_4460[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2948_8 (.CI(n24379), .I0(n1555), .I1(n1459), .CO(n24380));
    SB_LUT4 add_2948_7_lut (.I0(GND_net), .I1(n1556), .I2(n1460), .I3(n24378), 
            .O(n6302[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i17_2_lut (.I0(n2953), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n17));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i33_2_lut (.I0(n2945), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5416));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31686_3_lut (.I0(n35989), .I1(baudrate[10]), .I2(n1832), 
            .I3(GND_net), .O(n35990));   // verilog/uart_rx.v(119[33:55])
    defparam i31686_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i21_2_lut (.I0(n2951), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5417));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i19_2_lut (.I0(n2952), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5418));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i35_2_lut (.I0(n2944), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5419));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i15_2_lut (.I0(n2954), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n15));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30702_4_lut (.I0(n43), .I1(n41_adj_5406), .I2(n39_adj_5420), 
            .I3(n34603), .O(n35006));
    defparam i30702_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_965_i38_3_lut (.I0(n36), .I1(baudrate[4]), .I2(n39_adj_5420), 
            .I3(GND_net), .O(n38));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30878_3_lut (.I0(n35673), .I1(baudrate[7]), .I2(n45), .I3(GND_net), 
            .O(n35182));   // verilog/uart_rx.v(119[33:55])
    defparam i30878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31382_4_lut (.I0(n35182), .I1(n38), .I2(n45), .I3(n35006), 
            .O(n35686));   // verilog/uart_rx.v(119[33:55])
    defparam i31382_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1142_3_lut (.I0(n1560), .I1(n6302[15]), .I2(n294[14]), 
            .I3(GND_net), .O(n1701));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1142_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1235_3_lut (.I0(n1701), .I1(n6328[15]), .I2(n294[13]), 
            .I3(GND_net), .O(n1839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1235_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i48_3_lut (.I0(n35842), .I1(baudrate[9]), 
            .I2(n1552), .I3(GND_net), .O(n48));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1909_3_lut (.I0(n2723), .I1(n6536[13]), .I2(n294[5]), 
            .I3(GND_net), .O(n2837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1236_3_lut (.I0(n1702), .I1(n6328[14]), .I2(n294[13]), 
            .I3(GND_net), .O(n1840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i23_2_lut (.I0(n2950), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5421));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i39_2_lut (.I0(n1697), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5422));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i41_2_lut (.I0(n1696), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5423));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i37_2_lut (.I0(n1698), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5424));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1327_3_lut (.I0(n1840), .I1(n6354[14]), .I2(n294[12]), 
            .I3(GND_net), .O(n1975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1327_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i43_2_lut (.I0(n1695), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5425));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i19_2_lut (.I0(n2841), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5426));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i35_2_lut (.I0(n2833), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5427));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i23_2_lut (.I0(n2839), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5428));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i21_2_lut (.I0(n2840), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5429));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i17_2_lut (.I0(n2842), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_5430));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i25_2_lut (.I0(n2838), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5431));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1416_3_lut (.I0(n1975), .I1(n6380[14]), .I2(n294[11]), 
            .I3(GND_net), .O(n2107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i15_2_lut (.I0(n2843), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_5432));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut (.I0(n36045), .I1(baudrate[20]), .I2(n2938), 
            .I3(n31215), .O(n3066));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i1503_3_lut (.I0(n2107), .I1(n6406[14]), .I2(n294[10]), 
            .I3(GND_net), .O(n2236));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(baudrate[17]), .I1(baudrate[18]), .I2(GND_net), 
            .I3(GND_net), .O(n31825));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_1957 (.I0(baudrate[7]), .I1(baudrate[8]), .I2(GND_net), 
            .I3(GND_net), .O(n31835));
    defparam i1_2_lut_adj_1957.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_965_i41_2_lut (.I0(n1411), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5406));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_965_i43_2_lut (.I0(n1410), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n43));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_965_i39_2_lut (.I0(n1412), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5420));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1958 (.I0(baudrate[24]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n31763));
    defparam i1_2_lut_adj_1958.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_557_i42_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n805), .I3(GND_net), .O(n42));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_557_i42_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31372_3_lut (.I0(n42), .I1(baudrate[2]), .I2(n804), .I3(GND_net), 
            .O(n35676));   // verilog/uart_rx.v(119[33:55])
    defparam i31372_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31373_3_lut (.I0(n35676), .I1(baudrate[3]), .I2(n803), .I3(GND_net), 
            .O(n35677));   // verilog/uart_rx.v(119[33:55])
    defparam i31373_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_557_i48_3_lut (.I0(n35677), .I1(baudrate[4]), 
            .I2(n802), .I3(GND_net), .O(n48_adj_5433));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_557_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i27_2_lut (.I0(n2363), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5434));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i29_2_lut (.I0(n2362), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5435));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i25_2_lut (.I0(n2364), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5436));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31906_2_lut_4_lut (.I0(n36045), .I1(baudrate[20]), .I2(n2938), 
            .I3(n13125), .O(n294[3]));   // verilog/uart_rx.v(119[33:55])
    defparam i31906_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1922_i27_2_lut (.I0(n2837), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5437));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i33_2_lut (.I0(n2360), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5438));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i23_2_lut (.I0(n2365), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5439));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i35_2_lut (.I0(n2359), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5440));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i37_2_lut (.I0(n2358), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5441));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i39_2_lut (.I0(n2357), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5442));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i29_2_lut (.I0(n2836), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5443));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i31_2_lut (.I0(n2361), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5444));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i41_2_lut (.I0(n2356), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5445));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1326_3_lut (.I0(n1839), .I1(n6354[15]), .I2(n294[12]), 
            .I3(GND_net), .O(n1974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1326_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30659_4_lut (.I0(n35_adj_5427), .I1(n23_adj_5428), .I2(n21_adj_5429), 
            .I3(n19_adj_5426), .O(n34963));
    defparam i30659_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_2954_14 (.CI(n24452), .I0(n2356), .I1(n2272), .CO(n24453));
    SB_LUT4 div_37_i1588_3_lut (.I0(n2236), .I1(n6432[14]), .I2(n294[9]), 
            .I3(GND_net), .O(n2362));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2168_1_lut (.I0(baudrate[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2168_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1671_3_lut (.I0(n2362), .I1(n6458[14]), .I2(n294[8]), 
            .I3(GND_net), .O(n2485));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1671_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2960_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24546));
    SB_LUT4 i31103_4_lut (.I0(n17_adj_5430), .I1(n15_adj_5432), .I2(n2844), 
            .I3(baudrate[2]), .O(n35407));
    defparam i31103_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 div_37_i1415_3_lut (.I0(n1974), .I1(n6380[15]), .I2(n294[11]), 
            .I3(GND_net), .O(n2106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2948_7 (.CI(n24378), .I0(n1556), .I1(n1460), .CO(n24379));
    SB_LUT4 i30565_4_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_4460[12] ), 
            .I2(n3367), .I3(\o_Rx_DV_N_4460[8] ), .O(n34387));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i30565_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i30608_4_lut (.I0(r_Rx_Data), .I1(\o_Rx_DV_N_4460[12] ), .I2(n28540), 
            .I3(r_SM_Main[0]), .O(n34393));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i30608_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 add_2954_13_lut (.I0(GND_net), .I1(n2357), .I2(n2144), .I3(n24451), 
            .O(n6458[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30562_4_lut (.I0(n34387), .I1(\o_Rx_DV_N_4460[24] ), .I2(n29), 
            .I3(n23), .O(n34384));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i30562_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_2954_13 (.CI(n24451), .I0(n2357), .I1(n2144), .CO(n24452));
    SB_LUT4 i30568_4_lut (.I0(n34393), .I1(\o_Rx_DV_N_4460[24] ), .I2(n29), 
            .I3(n23), .O(n34390));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i30568_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_1_i3_4_lut (.I0(n34390), .I1(n34384), 
            .I2(\r_SM_Main[1] ), .I3(n27), .O(n3));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_1_i3_4_lut.LUT_INIT = 16'hf0ca;
    SB_LUT4 div_37_i1418_3_lut (.I0(n1977), .I1(n6380[12]), .I2(n294[11]), 
            .I3(GND_net), .O(n2109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2959_22_lut (.I0(GND_net), .I1(n2938), .I2(n3188), .I3(n24545), 
            .O(n6588[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1494_3_lut (.I0(n2098), .I1(n6406[23]), .I2(n294[10]), 
            .I3(GND_net), .O(n2227));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2959_21_lut (.I0(GND_net), .I1(n2939), .I2(n3084), .I3(n24544), 
            .O(n6588[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(n31759), 
            .I3(n31757), .O(n31735));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_1959 (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n31763), .I3(n31757), .O(n31801));
    defparam i1_3_lut_4_lut_adj_1959.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2954_12_lut (.I0(GND_net), .I1(n2358), .I2(n2013), .I3(n24450), 
            .O(n6458[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_21 (.CI(n24544), .I0(n2939), .I1(n3084), .CO(n24545));
    SB_LUT4 i1_2_lut_adj_1960 (.I0(baudrate[18]), .I1(baudrate[19]), .I2(GND_net), 
            .I3(GND_net), .O(n32079));
    defparam i1_2_lut_adj_1960.LUT_INIT = 16'heeee;
    SB_CARRY add_2954_12 (.CI(n24450), .I0(n2358), .I1(n2013), .CO(n24451));
    SB_LUT4 i1_2_lut_adj_1961 (.I0(baudrate[16]), .I1(baudrate[17]), .I2(GND_net), 
            .I3(GND_net), .O(n32049));
    defparam i1_2_lut_adj_1961.LUT_INIT = 16'heeee;
    SB_LUT4 add_2959_20_lut (.I0(GND_net), .I1(n2940), .I2(n2977), .I3(n24543), 
            .O(n6588[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2948_6_lut (.I0(GND_net), .I1(n1557), .I2(n1011), .I3(n24377), 
            .O(n6302[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i28541_3_lut_4_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(n21_adj_5449), 
            .I3(n31973), .O(n32836));
    defparam i28541_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_2948_6 (.CI(n24377), .I0(n1557), .I1(n1011), .CO(n24378));
    SB_LUT4 i8_2_lut (.I0(baudrate[14]), .I1(baudrate[15]), .I2(GND_net), 
            .I3(GND_net), .O(n26));
    defparam i8_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_2948_5_lut (.I0(GND_net), .I1(n1558), .I2(n856), .I3(n24376), 
            .O(n6302[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_11_lut (.I0(GND_net), .I1(n2359), .I2(n1879), .I3(n24449), 
            .O(n6458[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_11 (.CI(n24449), .I0(n2359), .I1(n1879), .CO(n24450));
    SB_CARRY sub_38_add_2_10 (.CI(n24329), .I0(n294[8]), .I1(VCC_net), 
            .CO(n24330));
    SB_CARRY add_2959_20 (.CI(n24543), .I0(n2940), .I1(n2977), .CO(n24544));
    SB_LUT4 add_2954_10_lut (.I0(GND_net), .I1(n2360), .I2(n1742), .I3(n24448), 
            .O(n6458[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_10 (.CI(n24448), .I0(n2360), .I1(n1742), .CO(n24449));
    SB_CARRY add_2948_5 (.CI(n24376), .I0(n1558), .I1(n856), .CO(n24377));
    SB_LUT4 add_2959_19_lut (.I0(GND_net), .I1(n2941), .I2(n2867), .I3(n24542), 
            .O(n6588[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_19 (.CI(n24542), .I0(n2941), .I1(n2867), .CO(n24543));
    SB_LUT4 add_2948_4_lut (.I0(GND_net), .I1(n1559), .I2(n698), .I3(n24375), 
            .O(n6302[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2959_18_lut (.I0(GND_net), .I1(n2942), .I2(n2754), .I3(n24541), 
            .O(n6588[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2948_4 (.CI(n24375), .I0(n1559), .I1(n698), .CO(n24376));
    SB_LUT4 add_2948_3_lut (.I0(GND_net), .I1(n1560), .I2(n858), .I3(n24374), 
            .O(n6302[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_9_lut (.I0(GND_net), .I1(n2361), .I2(n1602), .I3(n24447), 
            .O(n6458[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_18 (.CI(n24541), .I0(n2942), .I1(n2754), .CO(n24542));
    SB_LUT4 add_2959_17_lut (.I0(GND_net), .I1(n2943), .I2(n2638), .I3(n24540), 
            .O(n6588[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2948_3 (.CI(n24374), .I0(n1560), .I1(n858), .CO(n24375));
    SB_CARRY add_2954_9 (.CI(n24447), .I0(n2361), .I1(n1602), .CO(n24448));
    SB_LUT4 add_2948_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n6302[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2948_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_8_lut (.I0(GND_net), .I1(n2362), .I2(n1459), .I3(n24446), 
            .O(n6458[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_8 (.CI(n24446), .I0(n2362), .I1(n1459), .CO(n24447));
    SB_LUT4 sub_38_add_2_9_lut (.I0(GND_net), .I1(n294[7]), .I2(VCC_net), 
            .I3(n24328), .O(\o_Rx_DV_N_4460[7] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2948_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24374));
    SB_LUT4 div_37_i1502_3_lut (.I0(n2106), .I1(n6406[15]), .I2(n294[10]), 
            .I3(GND_net), .O(n2235));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31888_2_lut (.I0(n48_adj_5450), .I1(n13145), .I2(GND_net), 
            .I3(GND_net), .O(n294[21]));
    defparam i31888_2_lut.LUT_INIT = 16'h1111;
    SB_CARRY add_2959_17 (.CI(n24540), .I0(n2943), .I1(n2638), .CO(n24541));
    SB_LUT4 add_2959_16_lut (.I0(GND_net), .I1(n2944), .I2(n2519), .I3(n24539), 
            .O(n6588[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2947_10_lut (.I0(GND_net), .I1(n1408), .I2(n1742), .I3(n24373), 
            .O(n6276[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30271_2_lut (.I0(baudrate[1]), .I1(n294[22]), .I2(GND_net), 
            .I3(GND_net), .O(n34575));   // verilog/uart_rx.v(119[33:55])
    defparam i30271_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_2954_7_lut (.I0(GND_net), .I1(n2363), .I2(n1460), .I3(n24445), 
            .O(n6458[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31296_4_lut (.I0(n23_adj_5428), .I1(n21_adj_5429), .I2(n19_adj_5426), 
            .I3(n35407), .O(n35600));
    defparam i31296_4_lut.LUT_INIT = 16'hfeff;
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n3_adj_5451), 
            .R(\r_SM_Main[2] ));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i1_4_lut (.I0(n32840), .I1(n31971), .I2(n26), .I3(baudrate[2]), 
            .O(n31459));
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF r_Rx_Data_56 (.Q(r_Rx_Data), .C(clk16MHz), .D(r_Rx_Data_R));   // verilog/uart_rx.v(42[10] 46[8])
    SB_DFF r_Rx_Data_R_55 (.Q(r_Rx_Data_R), .C(clk16MHz), .D(RX_N_18));   // verilog/uart_rx.v(42[10] 46[8])
    SB_LUT4 i30671_4_lut (.I0(n31459), .I1(n34575), .I2(baudrate[0]), 
            .I3(n13088), .O(n481_adj_5452));
    defparam i30671_4_lut.LUT_INIT = 16'h3363;
    SB_CARRY add_2959_16 (.CI(n24539), .I0(n2944), .I1(n2519), .CO(n24540));
    SB_LUT4 add_2947_9_lut (.I0(GND_net), .I1(n1409), .I2(n1602), .I3(n24372), 
            .O(n6276[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1505_3_lut (.I0(n2109), .I1(n6406[12]), .I2(n294[10]), 
            .I3(GND_net), .O(n2238));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1590_3_lut (.I0(n2238), .I1(n6432[12]), .I2(n294[9]), 
            .I3(GND_net), .O(n2364));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1590_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i844_3_lut (.I0(n1112), .I1(n6224[22]), .I2(n294[17]), 
            .I3(GND_net), .O(n1262));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2959_15_lut (.I0(GND_net), .I1(n2945), .I2(n2397), .I3(n24538), 
            .O(n6588[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_1962 (.I0(baudrate[25]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n32115));
    defparam i1_2_lut_adj_1962.LUT_INIT = 16'heeee;
    SB_LUT4 i31882_4_lut_4_lut (.I0(r_SM_Main_2__N_4418[1]), .I1(\r_SM_Main[1] ), 
            .I2(n6), .I3(n30913), .O(n29420));
    defparam i31882_4_lut_4_lut.LUT_INIT = 16'h0703;
    SB_CARRY add_2959_15 (.CI(n24538), .I0(n2945), .I1(n2397), .CO(n24539));
    SB_CARRY add_2947_9 (.CI(n24372), .I0(n1409), .I1(n1602), .CO(n24373));
    SB_LUT4 i31294_4_lut (.I0(n29_adj_5443), .I1(n27_adj_5437), .I2(n25_adj_5431), 
            .I3(n35600), .O(n35598));
    defparam i31294_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i30661_4_lut (.I0(n35_adj_5427), .I1(n33_adj_5453), .I2(n31_adj_5454), 
            .I3(n35598), .O(n34965));
    defparam i30661_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_2_lut_adj_1963 (.I0(baudrate[24]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n32117));
    defparam i1_2_lut_adj_1963.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1922_i12_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2845), .I3(GND_net), .O(n12));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i12_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_1964 (.I0(baudrate[28]), .I1(baudrate[26]), .I2(GND_net), 
            .I3(GND_net), .O(n31983));
    defparam i1_2_lut_adj_1964.LUT_INIT = 16'heeee;
    SB_LUT4 add_2959_14_lut (.I0(GND_net), .I1(n2946), .I2(n2272), .I3(n24537), 
            .O(n6588[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2947_8_lut (.I0(GND_net), .I1(n1410), .I2(n1459), .I3(n24371), 
            .O(n6276[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_14 (.CI(n24537), .I0(n2946), .I1(n2272), .CO(n24538));
    SB_LUT4 i5793_4_lut (.I0(n961), .I1(baudrate[2]), .I2(n962), .I3(baudrate[1]), 
            .O(n9513));   // verilog/uart_rx.v(119[33:55])
    defparam i5793_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 div_37_i743_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n294[18]), 
            .I3(n44), .O(n1112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i743_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i2083_1_lut (.I0(baudrate[21]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2083_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2153_1_lut (.I0(baudrate[22]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2153_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_3_lut_4_lut_adj_1965 (.I0(n31829), .I1(n13171), .I2(n6380[11]), 
            .I3(n48_adj_5455), .O(n2110));
    defparam i1_3_lut_4_lut_adj_1965.LUT_INIT = 16'h0010;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n14452), 
            .D(n479[1]), .R(n29420));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_2959_13_lut (.I0(GND_net), .I1(n2947), .I2(n2144), .I3(n24536), 
            .O(n6588[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i28522_1_lut (.I0(n32816), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29515));
    defparam i28522_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n14452), 
            .D(n479[2]), .R(n29420));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY sub_38_add_2_9 (.CI(n24328), .I0(n294[7]), .I1(VCC_net), 
            .CO(n24329));
    SB_CARRY add_2959_13 (.CI(n24536), .I0(n2947), .I1(n2144), .CO(n24537));
    SB_CARRY add_2954_7 (.CI(n24445), .I0(n2363), .I1(n1460), .CO(n24446));
    SB_LUT4 add_2959_12_lut (.I0(GND_net), .I1(n2948), .I2(n2013), .I3(n24535), 
            .O(n6588[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_12 (.CI(n24535), .I0(n2948), .I1(n2013), .CO(n24536));
    SB_CARRY add_2947_8 (.CI(n24371), .I0(n1410), .I1(n1459), .CO(n24372));
    SB_LUT4 add_2954_6_lut (.I0(GND_net), .I1(n2364), .I2(n1011), .I3(n24444), 
            .O(n6458[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2959_11_lut (.I0(GND_net), .I1(n2949), .I2(n1879), .I3(n24534), 
            .O(n6588[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_8_lut (.I0(GND_net), .I1(n294[6]), .I2(VCC_net), 
            .I3(n24327), .O(\o_Rx_DV_N_4460[6] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31354_3_lut (.I0(n12), .I1(baudrate[13]), .I2(n35_adj_5427), 
            .I3(GND_net), .O(n35658));   // verilog/uart_rx.v(119[33:55])
    defparam i31354_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_8 (.CI(n24327), .I0(n294[6]), .I1(VCC_net), 
            .CO(n24328));
    SB_CARRY add_2954_6 (.CI(n24444), .I0(n2364), .I1(n1011), .CO(n24445));
    SB_LUT4 add_2947_7_lut (.I0(GND_net), .I1(n1411), .I2(n1460), .I3(n24370), 
            .O(n6276[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2947_7 (.CI(n24370), .I0(n1411), .I1(n1460), .CO(n24371));
    SB_LUT4 add_2947_6_lut (.I0(GND_net), .I1(n1412), .I2(n1011), .I3(n24369), 
            .O(n6276[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_5_lut (.I0(GND_net), .I1(n2365), .I2(n856), .I3(n24443), 
            .O(n6458[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_5 (.CI(n24443), .I0(n2365), .I1(n856), .CO(n24444));
    SB_CARRY add_2947_6 (.CI(n24369), .I0(n1412), .I1(n1011), .CO(n24370));
    SB_LUT4 add_2947_5_lut (.I0(GND_net), .I1(n1413), .I2(n856), .I3(n24368), 
            .O(n6276[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_11 (.CI(n24534), .I0(n2949), .I1(n1879), .CO(n24535));
    SB_CARRY add_2947_5 (.CI(n24368), .I0(n1413), .I1(n856), .CO(n24369));
    SB_LUT4 i28564_1_lut (.I0(n32858), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29494));
    defparam i28564_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_2954_4_lut (.I0(GND_net), .I1(n2366), .I2(n698), .I3(n24442), 
            .O(n6458[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_4 (.CI(n24442), .I0(n2366), .I1(n698), .CO(n24443));
    SB_LUT4 add_2959_10_lut (.I0(GND_net), .I1(n2950), .I2(n1742), .I3(n24533), 
            .O(n6588[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2954_3_lut (.I0(GND_net), .I1(n2367), .I2(n858), .I3(n24441), 
            .O(n6458[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2954_3 (.CI(n24441), .I0(n2367), .I1(n858), .CO(n24442));
    SB_LUT4 add_2954_2_lut (.I0(n29502), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31205)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2954_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2954_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24441));
    SB_LUT4 div_37_LessThan_1922_i38_3_lut (.I0(n20), .I1(baudrate[17]), 
            .I2(n43_adj_5456), .I3(GND_net), .O(n38_adj_5457));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1673_3_lut (.I0(n2364), .I1(n6458[12]), .I2(n294[8]), 
            .I3(GND_net), .O(n2487));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1673_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31355_3_lut (.I0(n35658), .I1(baudrate[14]), .I2(n37_adj_5458), 
            .I3(GND_net), .O(n35659));   // verilog/uart_rx.v(119[33:55])
    defparam i31355_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2953_16_lut (.I0(GND_net), .I1(n2227), .I2(n2519), .I3(n24440), 
            .O(n6432[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2947_4_lut (.I0(GND_net), .I1(n1414), .I2(n698), .I3(n24367), 
            .O(n6276[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2953_15_lut (.I0(GND_net), .I1(n2228), .I2(n2397), .I3(n24439), 
            .O(n6432[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2947_4 (.CI(n24367), .I0(n1414), .I1(n698), .CO(n24368));
    SB_CARRY add_2959_10 (.CI(n24533), .I0(n2950), .I1(n1742), .CO(n24534));
    SB_CARRY add_2953_15 (.CI(n24439), .I0(n2228), .I1(n2397), .CO(n24440));
    SB_LUT4 sub_38_add_2_7_lut (.I0(GND_net), .I1(n294[5]), .I2(VCC_net), 
            .I3(n24326), .O(\o_Rx_DV_N_4460[5] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_7 (.CI(n24326), .I0(n294[5]), .I1(VCC_net), 
            .CO(n24327));
    SB_LUT4 add_2947_3_lut (.I0(GND_net), .I1(n1415), .I2(n858), .I3(n24366), 
            .O(n6276[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2959_9_lut (.I0(GND_net), .I1(n2951), .I2(n1602), .I3(n24532), 
            .O(n6588[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i25227_1_lut (.I0(n13119), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29490));
    defparam i25227_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_1966 (.I0(baudrate[26]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n31759));
    defparam i1_2_lut_adj_1966.LUT_INIT = 16'heeee;
    SB_LUT4 i28529_4_lut (.I0(n32057), .I1(n32073), .I2(baudrate[24]), 
            .I3(baudrate[27]), .O(n32824));
    defparam i28529_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i28563_4_lut (.I0(n32824), .I1(n32067), .I2(n32079), .I3(n31759), 
            .O(n32858));
    defparam i28563_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31916_4_lut (.I0(n32836), .I1(n29590), .I2(n32858), .I3(n32838), 
            .O(n294[22]));
    defparam i31916_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i30638_4_lut (.I0(n41_adj_5459), .I1(n39_adj_5460), .I2(n37_adj_5458), 
            .I3(n34963), .O(n34942));
    defparam i30638_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31607_4_lut (.I0(n38_adj_5457), .I1(n18), .I2(n43_adj_5456), 
            .I3(n34927), .O(n35911));   // verilog/uart_rx.v(119[33:55])
    defparam i31607_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1754_3_lut (.I0(n2487), .I1(n6484[12]), .I2(n294[7]), 
            .I3(GND_net), .O(n2607));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1833_3_lut (.I0(n2607), .I1(n6510[12]), .I2(n294[6]), 
            .I3(GND_net), .O(n2724));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30916_3_lut (.I0(n35659), .I1(baudrate[15]), .I2(n39_adj_5460), 
            .I3(GND_net), .O(n35220));   // verilog/uart_rx.v(119[33:55])
    defparam i30916_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2953_14_lut (.I0(GND_net), .I1(n2229), .I2(n2272), .I3(n24438), 
            .O(n6432[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1910_3_lut (.I0(n2724), .I1(n6536[12]), .I2(n294[5]), 
            .I3(GND_net), .O(n2838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_6_lut (.I0(GND_net), .I1(n294[4]), .I2(VCC_net), 
            .I3(n24325), .O(\o_Rx_DV_N_4460[4] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2947_3 (.CI(n24366), .I0(n1415), .I1(n858), .CO(n24367));
    SB_LUT4 i1_2_lut_adj_1967 (.I0(baudrate[5]), .I1(baudrate[6]), .I2(GND_net), 
            .I3(GND_net), .O(n31837));
    defparam i1_2_lut_adj_1967.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1985_3_lut (.I0(n2838), .I1(n6562[12]), .I2(n294[4]), 
            .I3(GND_net), .O(n2949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1985_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2953_14 (.CI(n24438), .I0(n2229), .I1(n2272), .CO(n24439));
    SB_LUT4 add_2953_13_lut (.I0(GND_net), .I1(n2230), .I2(n2144), .I3(n24437), 
            .O(n6432[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_9 (.CI(n24532), .I0(n2951), .I1(n1602), .CO(n24533));
    SB_CARRY add_2953_13 (.CI(n24437), .I0(n2230), .I1(n2144), .CO(n24438));
    SB_LUT4 add_2947_2_lut (.I0(n29524), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31199)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2947_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_2953_12_lut (.I0(GND_net), .I1(n2231), .I2(n2013), .I3(n24436), 
            .O(n6432[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_6 (.CI(n24325), .I0(n294[4]), .I1(VCC_net), 
            .CO(n24326));
    SB_LUT4 add_2959_8_lut (.I0(GND_net), .I1(n2952), .I2(n1459), .I3(n24531), 
            .O(n6588[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_1968 (.I0(baudrate[3]), .I1(baudrate[4]), .I2(GND_net), 
            .I3(GND_net), .O(n31839));
    defparam i1_2_lut_adj_1968.LUT_INIT = 16'heeee;
    SB_LUT4 i31787_4_lut (.I0(n31839), .I1(n32856), .I2(baudrate[1]), 
            .I3(baudrate[2]), .O(n32878));
    defparam i31787_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_2959_8 (.CI(n24531), .I0(n2952), .I1(n1459), .CO(n24532));
    SB_LUT4 add_2959_7_lut (.I0(GND_net), .I1(n2953), .I2(n1460), .I3(n24530), 
            .O(n6588[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2953_12 (.CI(n24436), .I0(n2231), .I1(n2013), .CO(n24437));
    SB_LUT4 div_37_i1975_3_lut (.I0(n2828), .I1(n6562[22]), .I2(n294[4]), 
            .I3(GND_net), .O(n2939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1974_3_lut (.I0(n2827), .I1(n6562[23]), .I2(n294[4]), 
            .I3(GND_net), .O(n2938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1976_3_lut (.I0(n2829), .I1(n6562[21]), .I2(n294[4]), 
            .I3(GND_net), .O(n2940));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1976_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2959_7 (.CI(n24530), .I0(n2953), .I1(n1460), .CO(n24531));
    SB_CARRY add_2947_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24366));
    SB_LUT4 add_2953_11_lut (.I0(GND_net), .I1(n2232), .I2(n1879), .I3(n24435), 
            .O(n6432[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2959_6_lut (.I0(GND_net), .I1(n2954), .I2(n1011), .I3(n24529), 
            .O(n6588[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_6 (.CI(n24529), .I0(n2954), .I1(n1011), .CO(n24530));
    SB_LUT4 add_2959_5_lut (.I0(GND_net), .I1(n2955), .I2(n856), .I3(n24528), 
            .O(n6588[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2946_9_lut (.I0(GND_net), .I1(n1261), .I2(n1602), .I3(n24365), 
            .O(n6250[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_5 (.CI(n24528), .I0(n2955), .I1(n856), .CO(n24529));
    SB_CARRY add_2953_11 (.CI(n24435), .I0(n2232), .I1(n1879), .CO(n24436));
    SB_LUT4 div_37_LessThan_1997_i43_2_lut (.I0(n2940), .I1(baudrate[18]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5461));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1977_3_lut (.I0(n2830), .I1(n6562[20]), .I2(n294[4]), 
            .I3(GND_net), .O(n2941));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1978_3_lut (.I0(n2831), .I1(n6562[19]), .I2(n294[4]), 
            .I3(GND_net), .O(n2942));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1969 (.I0(n32115), .I1(n31991), .I2(n32101), 
            .I3(n31981), .O(n13128));
    defparam i1_4_lut_adj_1969.LUT_INIT = 16'hfffe;
    SB_LUT4 i30645_2_lut (.I0(n28540), .I1(r_Rx_Data), .I2(GND_net), .I3(GND_net), 
            .O(n34350));
    defparam i30645_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30641_4_lut (.I0(n34350), .I1(n29), .I2(n23), .I3(\o_Rx_DV_N_4460[12] ), 
            .O(n34347));
    defparam i30641_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i30347_4_lut (.I0(n34347), .I1(r_SM_Main[0]), .I2(n27), .I3(\o_Rx_DV_N_4460[24] ), 
            .O(n34344));
    defparam i30347_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 div_37_i1979_3_lut (.I0(n2832), .I1(n6562[18]), .I2(n294[4]), 
            .I3(GND_net), .O(n2943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2946_8_lut (.I0(GND_net), .I1(n1262), .I2(n1459), .I3(n24364), 
            .O(n6250[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31847_4_lut (.I0(\r_SM_Main[2] ), .I1(n34344), .I2(r_SM_Main_2__N_4418[1]), 
            .I3(\r_SM_Main[1] ), .O(n15574));
    defparam i31847_4_lut.LUT_INIT = 16'h0511;
    SB_LUT4 div_37_LessThan_1997_i37_2_lut (.I0(n2943), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5462));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1970 (.I0(n28540), .I1(\r_SM_Main[1] ), .I2(r_Rx_Data), 
            .I3(r_SM_Main[0]), .O(n31273));
    defparam i1_4_lut_adj_1970.LUT_INIT = 16'h1000;
    SB_LUT4 sub_38_add_2_5_lut (.I0(GND_net), .I1(n294[3]), .I2(VCC_net), 
            .I3(n24324), .O(\o_Rx_DV_N_4460[3] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2953_10_lut (.I0(GND_net), .I1(n2233), .I2(n1742), .I3(n24434), 
            .O(n6432[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2946_8 (.CI(n24364), .I0(n1262), .I1(n1459), .CO(n24365));
    SB_LUT4 i1_4_lut_adj_1971 (.I0(n29), .I1(n23), .I2(\o_Rx_DV_N_4460[12] ), 
            .I3(n31273), .O(n31279));
    defparam i1_4_lut_adj_1971.LUT_INIT = 16'h0100;
    SB_LUT4 i31782_4_lut (.I0(\r_SM_Main[2] ), .I1(\o_Rx_DV_N_4460[24] ), 
            .I2(n27), .I3(n31279), .O(n14407));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31782_4_lut.LUT_INIT = 16'h5455;
    SB_LUT4 div_37_LessThan_1922_i24_3_lut (.I0(n16), .I1(baudrate[9]), 
            .I2(n27_adj_5437), .I3(GND_net), .O(n24));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1972 (.I0(n35844), .I1(baudrate[6]), .I2(n1111), 
            .I3(n31195), .O(n1267));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1972.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_1997_i39_2_lut (.I0(n2942), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5463));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31813_2_lut_4_lut (.I0(n35844), .I1(baudrate[6]), .I2(n1111), 
            .I3(n32846), .O(n294[17]));   // verilog/uart_rx.v(119[33:55])
    defparam i31813_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1997_i41_2_lut (.I0(n2941), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5464));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31627_4_lut (.I0(n24), .I1(n14), .I2(n27_adj_5437), .I3(n34976), 
            .O(n35931));   // verilog/uart_rx.v(119[33:55])
    defparam i31627_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1982_3_lut (.I0(n2835), .I1(n6562[15]), .I2(n294[4]), 
            .I3(GND_net), .O(n2946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1973 (.I0(n32057), .I1(n31735), .I2(n31763), 
            .I3(n31981), .O(n31743));
    defparam i1_4_lut_adj_1973.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2959_4_lut (.I0(GND_net), .I1(n2956), .I2(n698), .I3(n24527), 
            .O(n6588[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31628_3_lut (.I0(n35931), .I1(baudrate[10]), .I2(n29_adj_5443), 
            .I3(GND_net), .O(n35932));   // verilog/uart_rx.v(119[33:55])
    defparam i31628_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_5 (.CI(n24324), .I0(n294[3]), .I1(VCC_net), 
            .CO(n24325));
    SB_LUT4 div_37_LessThan_1997_i31_2_lut (.I0(n2946), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5465));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31532_3_lut (.I0(n35932), .I1(baudrate[11]), .I2(n31_adj_5454), 
            .I3(GND_net), .O(n35836));   // verilog/uart_rx.v(119[33:55])
    defparam i31532_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31457_4_lut (.I0(n41_adj_5459), .I1(n39_adj_5460), .I2(n37_adj_5458), 
            .I3(n34965), .O(n35761));
    defparam i31457_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31708_4_lut (.I0(n35220), .I1(n35911), .I2(n43_adj_5456), 
            .I3(n34942), .O(n36012));   // verilog/uart_rx.v(119[33:55])
    defparam i31708_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_adj_1974 (.I0(n35944), .I1(baudrate[17]), .I2(n2596), 
            .I3(n31209), .O(n2730));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1974.LUT_INIT = 16'h7100;
    SB_LUT4 i31897_2_lut_4_lut (.I0(n35944), .I1(baudrate[17]), .I2(n2596), 
            .I3(n32858), .O(n294[6]));   // verilog/uart_rx.v(119[33:55])
    defparam i31897_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_2946_7_lut (.I0(GND_net), .I1(n1263), .I2(n1460), .I3(n24363), 
            .O(n6250[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1983_3_lut (.I0(n2836), .I1(n6562[14]), .I2(n294[4]), 
            .I3(GND_net), .O(n2947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_4_lut (.I0(GND_net), .I1(n294[2]), .I2(VCC_net), 
            .I3(n24323), .O(\o_Rx_DV_N_4460[2] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_662_i42_4_lut (.I0(n29535), .I1(baudrate[2]), 
            .I2(n961), .I3(baudrate[1]), .O(n42_adj_5466));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_662_i42_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i30914_3_lut (.I0(n35836), .I1(baudrate[12]), .I2(n33_adj_5453), 
            .I3(GND_net), .O(n35218));   // verilog/uart_rx.v(119[33:55])
    defparam i30914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31370_3_lut (.I0(n42_adj_5466), .I1(baudrate[3]), .I2(n960), 
            .I3(GND_net), .O(n35674));   // verilog/uart_rx.v(119[33:55])
    defparam i31370_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31734_4_lut (.I0(n35218), .I1(n36012), .I2(n43_adj_5456), 
            .I3(n35761), .O(n36038));   // verilog/uart_rx.v(119[33:55])
    defparam i31734_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_i1579_3_lut (.I0(n2227), .I1(n6432[23]), .I2(n294[9]), 
            .I3(GND_net), .O(n2353));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1579_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31371_3_lut (.I0(n35674), .I1(baudrate[4]), .I2(n959), .I3(GND_net), 
            .O(n35675));   // verilog/uart_rx.v(119[33:55])
    defparam i31371_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_662_i48_3_lut (.I0(n35675), .I1(baudrate[5]), 
            .I2(n958), .I3(GND_net), .O(n48_adj_5467));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_662_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_1975 (.I0(n31973), .I1(n13128), .I2(n32031), 
            .I3(n31971), .O(n13152));
    defparam i1_4_lut_adj_1975.LUT_INIT = 16'hfffe;
    SB_LUT4 i31735_3_lut (.I0(n36038), .I1(baudrate[18]), .I2(n2828), 
            .I3(GND_net), .O(n36039));   // verilog/uart_rx.v(119[33:55])
    defparam i31735_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_2946_7 (.CI(n24363), .I0(n1263), .I1(n1460), .CO(n24364));
    SB_LUT4 div_37_LessThan_765_i43_2_lut (.I0(n1113), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5468));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1905_3_lut (.I0(n2719), .I1(n6536[17]), .I2(n294[5]), 
            .I3(GND_net), .O(n2833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1976 (.I0(n21640), .I1(n29590), .I2(n31811), 
            .I3(n31743), .O(n30047));
    defparam i1_4_lut_adj_1976.LUT_INIT = 16'hfffd;
    SB_LUT4 div_37_LessThan_1997_i29_2_lut (.I0(n2947), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5469));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1977 (.I0(n31983), .I1(n31757), .I2(n31981), 
            .I3(n32099), .O(n31487));
    defparam i1_4_lut_adj_1977.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1978 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31621), .O(n31627));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1978.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1979 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31627), .O(n31633));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1979.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2946_6_lut (.I0(GND_net), .I1(n1264), .I2(n1011), .I3(n24362), 
            .O(n6250[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_4 (.CI(n24527), .I0(n2956), .I1(n698), .CO(n24528));
    SB_CARRY add_2953_10 (.CI(n24434), .I0(n2233), .I1(n1742), .CO(n24435));
    SB_CARRY add_2946_6 (.CI(n24362), .I0(n1264), .I1(n1011), .CO(n24363));
    SB_LUT4 div_37_i1984_3_lut (.I0(n2837), .I1(n6562[13]), .I2(n294[4]), 
            .I3(GND_net), .O(n2948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i27_2_lut (.I0(n2948), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5470));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1980_3_lut (.I0(n2833), .I1(n6562[17]), .I2(n294[4]), 
            .I3(GND_net), .O(n2944));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1980_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_4 (.CI(n24323), .I0(n294[2]), .I1(VCC_net), 
            .CO(n24324));
    SB_LUT4 div_37_i2160_1_lut (.I0(baudrate[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2638));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2160_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_38_add_2_3_lut (.I0(GND_net), .I1(n294[1]), .I2(VCC_net), 
            .I3(n24322), .O(\o_Rx_DV_N_4460[1] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2953_9_lut (.I0(GND_net), .I1(n2234), .I2(n1602), .I3(n24433), 
            .O(n6432[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_3 (.CI(n24322), .I0(n294[1]), .I1(VCC_net), 
            .CO(n24323));
    SB_LUT4 div_37_LessThan_1766_i17_2_lut (.I0(n2611), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_5471));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i17_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_2953_9 (.CI(n24433), .I0(n2234), .I1(n1602), .CO(n24434));
    SB_LUT4 div_37_i427_4_lut (.I0(n481_adj_5452), .I1(n30047), .I2(n294[21]), 
            .I3(baudrate[2]), .O(n643));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i427_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_LessThan_1602_i21_2_lut (.I0(n2366), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5472));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_2953_8_lut (.I0(GND_net), .I1(n2235), .I2(n1459), .I3(n24432), 
            .O(n6432[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2959_3_lut (.I0(GND_net), .I1(n2957), .I2(n858), .I3(n24526), 
            .O(n6588[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2946_5_lut (.I0(GND_net), .I1(n1265), .I2(n856), .I3(n24361), 
            .O(n6250[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2953_8 (.CI(n24432), .I0(n2235), .I1(n1459), .CO(n24433));
    SB_CARRY add_2959_3 (.CI(n24526), .I0(n2957), .I1(n858), .CO(n24527));
    SB_LUT4 add_2959_2_lut (.I0(n29482), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31215)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2959_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_2953_7_lut (.I0(GND_net), .I1(n2236), .I2(n1460), .I3(n24431), 
            .O(n6432[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2953_7 (.CI(n24431), .I0(n2236), .I1(n1460), .CO(n24432));
    SB_LUT4 add_2953_6_lut (.I0(GND_net), .I1(n2237), .I2(n1011), .I3(n24430), 
            .O(n6432[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2959_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24526));
    SB_CARRY add_2953_6 (.CI(n24430), .I0(n2237), .I1(n1011), .CO(n24431));
    SB_LUT4 add_2958_21_lut (.I0(GND_net), .I1(n2827), .I2(n3084), .I3(n24525), 
            .O(n6562[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2958_20_lut (.I0(GND_net), .I1(n2828), .I2(n2977), .I3(n24524), 
            .O(n6562[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2946_5 (.CI(n24361), .I0(n1265), .I1(n856), .CO(n24362));
    SB_CARRY add_2958_20 (.CI(n24524), .I0(n2828), .I1(n2977), .CO(n24525));
    SB_LUT4 sub_38_add_2_2_lut (.I0(GND_net), .I1(n30517), .I2(GND_net), 
            .I3(VCC_net), .O(\o_Rx_DV_N_4460[0] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30184_4_lut (.I0(n23_c), .I1(n21), .I2(n19), .I3(n17_adj_5471), 
            .O(n34488));
    defparam i30184_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30179_4_lut (.I0(n29_c), .I1(n27_c), .I2(n25), .I3(n34488), 
            .O(n34483));
    defparam i30179_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i2053_3_lut (.I0(n2944), .I1(n6588[17]), .I2(n294[3]), 
            .I3(GND_net), .O(n3052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31316_4_lut (.I0(n35), .I1(n33_adj_5411), .I2(n31), .I3(n34483), 
            .O(n35620));
    defparam i31316_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2958_19_lut (.I0(GND_net), .I1(n2829), .I2(n2867), .I3(n24523), 
            .O(n6562[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut (.I0(n13152), .I1(n48_adj_5467), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1116));
    defparam i1_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 add_2953_5_lut (.I0(GND_net), .I1(n2238), .I2(n856), .I3(n24429), 
            .O(n6432[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2946_4_lut (.I0(GND_net), .I1(n1266), .I2(n698), .I3(n24360), 
            .O(n6250[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2946_4 (.CI(n24360), .I0(n1266), .I1(n698), .CO(n24361));
    SB_CARRY add_2958_19 (.CI(n24523), .I0(n2829), .I1(n2867), .CO(n24524));
    SB_CARRY add_2953_5 (.CI(n24429), .I0(n2238), .I1(n856), .CO(n24430));
    SB_LUT4 add_2958_18_lut (.I0(GND_net), .I1(n2830), .I2(n2754), .I3(n24522), 
            .O(n6562[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_18 (.CI(n24522), .I0(n2830), .I1(n2754), .CO(n24523));
    SB_LUT4 add_2958_17_lut (.I0(GND_net), .I1(n2831), .I2(n2638), .I3(n24521), 
            .O(n6562[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2946_3_lut (.I0(GND_net), .I1(n1267), .I2(n858), .I3(n24359), 
            .O(n6250[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_2 (.CI(VCC_net), .I0(n30517), .I1(GND_net), 
            .CO(n24322));
    SB_LUT4 div_37_LessThan_1766_i16_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2612), .I3(GND_net), .O(n16_adj_5473));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i16_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_2946_3 (.CI(n24359), .I0(n1267), .I1(n858), .CO(n24360));
    SB_LUT4 i31485_3_lut (.I0(n16_adj_5473), .I1(baudrate[13]), .I2(n39_adj_5412), 
            .I3(GND_net), .O(n35789));   // verilog/uart_rx.v(119[33:55])
    defparam i31485_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30628_4_lut (.I0(\o_Rx_DV_N_4460[8] ), .I1(\o_Rx_DV_N_4460[12] ), 
            .I2(n3367), .I3(n28574), .O(n34329));
    defparam i30628_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i30625_4_lut (.I0(n34329), .I1(\o_Rx_DV_N_4460[24] ), .I2(n29), 
            .I3(n23), .O(n34326));
    defparam i30625_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i30287_4_lut (.I0(n27_adj_5434), .I1(n25_adj_5436), .I2(n23_adj_5439), 
            .I3(n21_adj_5472), .O(n34591));
    defparam i30287_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i14_4_lut (.I0(\r_SM_Main[1] ), .I1(n34326), .I2(r_SM_Main[0]), 
            .I3(n27), .O(n14365));
    defparam i14_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 add_2953_4_lut (.I0(GND_net), .I1(n2239), .I2(n698), .I3(n24428), 
            .O(n6432[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2953_4 (.CI(n24428), .I0(n2239), .I1(n698), .CO(n24429));
    SB_CARRY add_2958_17 (.CI(n24521), .I0(n2831), .I1(n2638), .CO(n24522));
    SB_LUT4 add_2953_3_lut (.I0(GND_net), .I1(n2240), .I2(n858), .I3(n24427), 
            .O(n6432[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2958_16_lut (.I0(GND_net), .I1(n2832), .I2(n2519), .I3(n24520), 
            .O(n6562[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2953_3 (.CI(n24427), .I0(n2240), .I1(n858), .CO(n24428));
    SB_CARRY add_2958_16 (.CI(n24520), .I0(n2832), .I1(n2519), .CO(n24521));
    SB_LUT4 i31486_3_lut (.I0(n35789), .I1(baudrate[14]), .I2(n41_adj_5413), 
            .I3(GND_net), .O(n35790));   // verilog/uart_rx.v(119[33:55])
    defparam i31486_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2958_15_lut (.I0(GND_net), .I1(n2833), .I2(n2397), .I3(n24519), 
            .O(n6562[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_15 (.CI(n24519), .I0(n2833), .I1(n2397), .CO(n24520));
    SB_LUT4 add_2946_2_lut (.I0(n29528), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31197)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2946_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_2958_14_lut (.I0(GND_net), .I1(n2834), .I2(n2272), .I3(n24518), 
            .O(n6562[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_14 (.CI(n24518), .I0(n2834), .I1(n2272), .CO(n24519));
    SB_LUT4 add_2958_13_lut (.I0(GND_net), .I1(n2835), .I2(n2144), .I3(n24517), 
            .O(n6562[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_13 (.CI(n24517), .I0(n2835), .I1(n2144), .CO(n24518));
    SB_LUT4 add_2953_2_lut (.I0(n29506), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31203)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2953_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2953_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24427));
    SB_CARRY add_2946_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24359));
    SB_LUT4 add_2958_12_lut (.I0(GND_net), .I1(n2836), .I2(n2013), .I3(n24516), 
            .O(n6562[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30277_4_lut (.I0(n33_adj_5438), .I1(n31_adj_5444), .I2(n29_adj_5435), 
            .I3(n34591), .O(n34581));
    defparam i30277_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_2945_8_lut (.I0(GND_net), .I1(n1111), .I2(n1459), .I3(n24358), 
            .O(n6224[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30729_4_lut (.I0(n41_adj_5413), .I1(n39_adj_5412), .I2(n27_c), 
            .I3(n34485), .O(n35033));
    defparam i30729_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31220_3_lut (.I0(n22), .I1(baudrate[7]), .I2(n27_c), .I3(GND_net), 
            .O(n35524));   // verilog/uart_rx.v(119[33:55])
    defparam i31220_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31417_3_lut (.I0(n35790), .I1(baudrate[15]), .I2(n43_adj_5415), 
            .I3(GND_net), .O(n35721));   // verilog/uart_rx.v(119[33:55])
    defparam i31417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i20_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2367), .I3(GND_net), .O(n20_adj_5474));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i20_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i28_3_lut (.I0(n26_adj_5475), .I1(baudrate[7]), 
            .I2(n31_adj_5444), .I3(GND_net), .O(n28));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_1980 (.I0(n23), .I1(\o_Rx_DV_N_4460[12] ), .I2(n3370), 
            .I3(GND_net), .O(n31117));   // verilog/uart_rx.v(69[17:62])
    defparam i1_3_lut_adj_1980.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_1981 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n27), .I2(n29), 
            .I3(n31117), .O(\r_SM_Main_2__N_4508[1] ));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1981.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1766_i28_3_lut (.I0(n20_adj_5476), .I1(baudrate[9]), 
            .I2(n31), .I3(GND_net), .O(n28_adj_5477));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2952_14_lut (.I0(GND_net), .I1(n2098), .I2(n2397), .I3(n24426), 
            .O(n6406[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31675_4_lut (.I0(n28_adj_5477), .I1(n18_adj_5478), .I2(n31), 
            .I3(n34481), .O(n35979));   // verilog/uart_rx.v(119[33:55])
    defparam i31675_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31676_3_lut (.I0(n35979), .I1(baudrate[10]), .I2(n33_adj_5411), 
            .I3(GND_net), .O(n35980));   // verilog/uart_rx.v(119[33:55])
    defparam i31676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31610_3_lut (.I0(n35980), .I1(baudrate[11]), .I2(n35), .I3(GND_net), 
            .O(n35914));   // verilog/uart_rx.v(119[33:55])
    defparam i31610_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2958_12 (.CI(n24516), .I0(n2836), .I1(n2013), .CO(n24517));
    SB_LUT4 add_2952_13_lut (.I0(GND_net), .I1(n2099), .I2(n2272), .I3(n24425), 
            .O(n6406[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30731_4_lut (.I0(n41_adj_5413), .I1(n39_adj_5412), .I2(n37_adj_5414), 
            .I3(n35620), .O(n35035));
    defparam i30731_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i1_3_lut_adj_1982 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3370), .I2(n30801), 
            .I3(GND_net), .O(n31301));   // verilog/uart_rx.v(69[17:62])
    defparam i1_3_lut_adj_1982.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_1983 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31301), .O(n31307));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1983.LUT_INIT = 16'hfffe;
    SB_LUT4 i31483_4_lut (.I0(n35721), .I1(n35524), .I2(n43_adj_5415), 
            .I3(n35033), .O(n35787));   // verilog/uart_rx.v(119[33:55])
    defparam i31483_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31560_3_lut (.I0(n35914), .I1(baudrate[12]), .I2(n37_adj_5414), 
            .I3(GND_net), .O(n35864));   // verilog/uart_rx.v(119[33:55])
    defparam i31560_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_765_i38_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1116), .I3(GND_net), .O(n38_adj_5479));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i38_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_1984 (.I0(n23), .I1(\o_Rx_DV_N_4460[12] ), .I2(n3367), 
            .I3(\o_Rx_DV_N_4460[8] ), .O(n31189));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1984.LUT_INIT = 16'hfffe;
    SB_LUT4 i31639_4_lut (.I0(n35864), .I1(n35787), .I2(n43_adj_5415), 
            .I3(n35035), .O(n35943));   // verilog/uart_rx.v(119[33:55])
    defparam i31639_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1985 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n27), .I2(n29), 
            .I3(n31189), .O(r_SM_Main_2__N_4418[1]));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1985.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2945_7_lut (.I0(GND_net), .I1(n1112), .I2(n1460), .I3(n24357), 
            .O(n6224[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_1986 (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[0]), 
            .I2(\o_Rx_DV_N_4460[2] ), .I3(\o_Rx_DV_N_4460[1] ), .O(n31939));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1986.LUT_INIT = 16'h7bde;
    SB_CARRY add_2952_13 (.CI(n24425), .I0(n2099), .I1(n2272), .CO(n24426));
    SB_LUT4 add_2952_12_lut (.I0(GND_net), .I1(n2100), .I2(n2144), .I3(n24424), 
            .O(n6406[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2958_11_lut (.I0(GND_net), .I1(n2837), .I2(n1879), .I3(n24515), 
            .O(n6562[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31640_3_lut (.I0(n35943), .I1(baudrate[16]), .I2(n2597), 
            .I3(GND_net), .O(n35944));   // verilog/uart_rx.v(119[33:55])
    defparam i31640_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_2945_7 (.CI(n24357), .I0(n1112), .I1(n1460), .CO(n24358));
    SB_LUT4 equal_237_i3_2_lut (.I0(r_Clock_Count[2]), .I1(\o_Rx_DV_N_4460[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n3_adj_5480));   // verilog/uart_rx.v(69[17:62])
    defparam equal_237_i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1987 (.I0(r_Clock_Count[3]), .I1(n3_adj_5480), 
            .I2(\o_Rx_DV_N_4460[4] ), .I3(n31939), .O(n31943));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1987.LUT_INIT = 16'hffde;
    SB_LUT4 equal_237_i5_2_lut (.I0(r_Clock_Count[4]), .I1(\o_Rx_DV_N_4460[5] ), 
            .I2(GND_net), .I3(GND_net), .O(n5));   // verilog/uart_rx.v(69[17:62])
    defparam equal_237_i5_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1988 (.I0(r_Clock_Count[5]), .I1(n5), .I2(\o_Rx_DV_N_4460[6] ), 
            .I3(n31943), .O(n31947));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1988.LUT_INIT = 16'hffde;
    SB_LUT4 equal_237_i8_2_lut (.I0(r_Clock_Count[7]), .I1(\o_Rx_DV_N_4460[8] ), 
            .I2(GND_net), .I3(GND_net), .O(n8));   // verilog/uart_rx.v(69[17:62])
    defparam equal_237_i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1989 (.I0(r_Clock_Count[6]), .I1(n8), .I2(n31947), 
            .I3(\o_Rx_DV_N_4460[7] ), .O(n28540));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1989.LUT_INIT = 16'hfdfe;
    SB_CARRY add_2952_12 (.CI(n24424), .I0(n2100), .I1(n2144), .CO(n24425));
    SB_CARRY add_2958_11 (.CI(n24515), .I0(n2837), .I1(n1879), .CO(n24516));
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n30913));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 div_37_LessThan_765_i42_3_lut (.I0(n40_adj_5481), .I1(baudrate[4]), 
            .I2(n43_adj_5468), .I3(GND_net), .O(n42_adj_5482));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31539_4_lut (.I0(n42_adj_5482), .I1(n38_adj_5479), .I2(n43_adj_5468), 
            .I3(n34744), .O(n35843));   // verilog/uart_rx.v(119[33:55])
    defparam i31539_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 add_2952_11_lut (.I0(GND_net), .I1(n2101), .I2(n2013), .I3(n24423), 
            .O(n6406[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31540_3_lut (.I0(n35843), .I1(baudrate[5]), .I2(n1112), .I3(GND_net), 
            .O(n35844));   // verilog/uart_rx.v(119[33:55])
    defparam i31540_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2945_6_lut (.I0(GND_net), .I1(n1113), .I2(n1011), .I3(n24356), 
            .O(n6224[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2952_11 (.CI(n24423), .I0(n2101), .I1(n2013), .CO(n24424));
    SB_LUT4 add_2958_10_lut (.I0(GND_net), .I1(n2838), .I2(n1742), .I3(n24514), 
            .O(n6562[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31810_2_lut (.I0(n48_adj_5433), .I1(n32856), .I2(GND_net), 
            .I3(GND_net), .O(n294[19]));
    defparam i31810_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_i1916_3_lut (.I0(n2730), .I1(n6536[6]), .I2(n294[5]), 
            .I3(GND_net), .O(n2844));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1916_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1991_3_lut (.I0(n2844), .I1(n6562[6]), .I2(n294[4]), 
            .I3(GND_net), .O(n2955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1991_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2958_10 (.CI(n24514), .I0(n2838), .I1(n1742), .CO(n24515));
    SB_CARRY add_2945_6 (.CI(n24356), .I0(n1113), .I1(n1011), .CO(n24357));
    SB_LUT4 div_37_LessThan_1997_i13_2_lut (.I0(n2955), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n13));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i25_2_lut (.I0(n2949), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5483));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1990 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n30913), .O(n31313));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1990.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_1991 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31313), .O(n31319));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1991.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2945_5_lut (.I0(GND_net), .I1(n1114), .I2(n856), .I3(n24355), 
            .O(n6224[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i28460_2_lut (.I0(\o_Rx_DV_N_4460[12] ), .I1(n28540), .I2(GND_net), 
            .I3(GND_net), .O(n32755));
    defparam i28460_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_2952_10_lut (.I0(GND_net), .I1(n2102), .I2(n1879), .I3(n24422), 
            .O(n6406[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2945_5 (.CI(n24355), .I0(n1114), .I1(n856), .CO(n24356));
    SB_LUT4 add_2945_4_lut (.I0(GND_net), .I1(n1115), .I2(n698), .I3(n24354), 
            .O(n6224[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2952_10 (.CI(n24422), .I0(n2102), .I1(n1879), .CO(n24423));
    SB_LUT4 add_2958_9_lut (.I0(GND_net), .I1(n2839), .I2(n1602), .I3(n24513), 
            .O(n6562[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_1992 (.I0(baudrate[31]), .I1(baudrate[21]), .I2(baudrate[27]), 
            .I3(GND_net), .O(n32103));
    defparam i1_3_lut_adj_1992.LUT_INIT = 16'hfefe;
    SB_DFF r_Rx_Byte_i7 (.Q(rx_data[7]), .C(clk16MHz), .D(n15789));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i6 (.Q(rx_data[6]), .C(clk16MHz), .D(n15788));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i28569_4_lut (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n32755), .O(n32864));
    defparam i28569_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF r_Rx_Byte_i5 (.Q(rx_data[5]), .C(clk16MHz), .D(n15784));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i1_4_lut_adj_1993 (.I0(n32103), .I1(n32101), .I2(n32105), 
            .I3(n31997), .O(n13125));
    defparam i1_4_lut_adj_1993.LUT_INIT = 16'hfffe;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i2_4_lut (.I0(n31319), .I1(r_SM_Main_2__N_4418[1]), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n2));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i2_4_lut.LUT_INIT = 16'hc0c5;
    SB_DFF r_Rx_Byte_i4 (.Q(rx_data[4]), .C(clk16MHz), .D(n15780));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i1_4_lut (.I0(r_Rx_Data), .I1(n32864), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n8191));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF r_Rx_Byte_i3 (.Q(rx_data[3]), .C(clk16MHz), .D(n15779));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i2 (.Q(rx_data[2]), .C(clk16MHz), .D(n15777));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i1 (.Q(rx_data[1]), .C(clk16MHz), .D(n15776));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_SM_Main_i2 (.Q(\r_SM_Main[2] ), .C(clk16MHz), .D(n36334));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i30583_4_lut (.I0(n33_adj_5416), .I1(n21_adj_5417), .I2(n19_adj_5418), 
            .I3(n17), .O(n34887));
    defparam i30583_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_2945_4 (.CI(n24354), .I0(n1115), .I1(n698), .CO(n24355));
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i3_3_lut (.I0(n8191), .I1(n2), .I2(\r_SM_Main[1] ), 
            .I3(GND_net), .O(n3_adj_5451));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i3_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 div_37_LessThan_1997_i11_2_lut (.I0(n2956), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_2945_3_lut (.I0(GND_net), .I1(n1116), .I2(n858), .I3(n24353), 
            .O(n6224[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_9 (.CI(n24513), .I0(n2839), .I1(n1602), .CO(n24514));
    SB_LUT4 div_37_i943_3_lut (.I0(n1262), .I1(n6250[22]), .I2(n294[16]), 
            .I3(GND_net), .O(n1409));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i943_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2945_3 (.CI(n24353), .I0(n1116), .I1(n858), .CO(n24354));
    SB_LUT4 add_2952_9_lut (.I0(GND_net), .I1(n2103), .I2(n1742), .I3(n24421), 
            .O(n6406[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2958_8_lut (.I0(GND_net), .I1(n2840), .I2(n1459), .I3(n24512), 
            .O(n6562[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_8 (.CI(n24512), .I0(n2840), .I1(n1459), .CO(n24513));
    SB_LUT4 add_2958_7_lut (.I0(GND_net), .I1(n2841), .I2(n1460), .I3(n24511), 
            .O(n6562[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30599_4_lut (.I0(n17), .I1(n15), .I2(n13), .I3(n11), .O(n34903));
    defparam i30599_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_2952_9 (.CI(n24421), .I0(n2103), .I1(n1742), .CO(n24422));
    SB_LUT4 div_37_i944_3_lut (.I0(n1263), .I1(n6250[21]), .I2(n294[16]), 
            .I3(GND_net), .O(n1410));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2958_7 (.CI(n24511), .I0(n2841), .I1(n1460), .CO(n24512));
    SB_LUT4 div_37_i1041_3_lut (.I0(n1410), .I1(n6276[21]), .I2(n294[15]), 
            .I3(GND_net), .O(n1554));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i43_2_lut (.I0(n1554), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5408));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30595_4_lut (.I0(n23_adj_5421), .I1(n21_adj_5417), .I2(n19_adj_5418), 
            .I3(n34903), .O(n34899));
    defparam i30595_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_2952_8_lut (.I0(GND_net), .I1(n2104), .I2(n1602), .I3(n24420), 
            .O(n6406[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_1994 (.I0(baudrate[13]), .I1(baudrate[14]), .I2(GND_net), 
            .I3(GND_net), .O(n31829));
    defparam i1_2_lut_adj_1994.LUT_INIT = 16'heeee;
    SB_LUT4 add_2958_6_lut (.I0(GND_net), .I1(n2842), .I2(n1011), .I3(n24510), 
            .O(n6562[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31453_4_lut (.I0(n29_adj_5469), .I1(n27_adj_5470), .I2(n25_adj_5483), 
            .I3(n34899), .O(n35757));
    defparam i31453_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i744_4_lut (.I0(n960), .I1(baudrate[3]), .I2(n294[18]), 
            .I3(n42_adj_5484), .O(n1113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i744_4_lut.LUT_INIT = 16'h6a9a;
    SB_CARRY add_2958_6 (.CI(n24510), .I0(n2842), .I1(n1011), .CO(n24511));
    SB_LUT4 i31053_4_lut (.I0(n35_adj_5419), .I1(n33_adj_5416), .I2(n31_adj_5465), 
            .I3(n35757), .O(n35357));
    defparam i31053_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 add_2958_5_lut (.I0(GND_net), .I1(n2843), .I2(n856), .I3(n24509), 
            .O(n6562[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2945_2_lut (.I0(n29532), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31195)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2945_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2958_5 (.CI(n24509), .I0(n2843), .I1(n856), .CO(n24510));
    SB_LUT4 div_37_LessThan_1997_i10_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2957), .I3(GND_net), .O(n10));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i10_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2159_1_lut (.I0(baudrate[16]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2754));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2159_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i845_3_lut (.I0(n1113), .I1(n6224[21]), .I2(n294[17]), 
            .I3(GND_net), .O(n1263));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2158_1_lut (.I0(baudrate[17]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2867));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2158_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_2952_8 (.CI(n24420), .I0(n2104), .I1(n1602), .CO(n24421));
    SB_LUT4 add_2952_7_lut (.I0(GND_net), .I1(n2105), .I2(n1459), .I3(n24419), 
            .O(n6406[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4364_2_lut (.I0(n962), .I1(baudrate[1]), .I2(GND_net), .I3(GND_net), 
            .O(n40_adj_5485));   // verilog/uart_rx.v(119[33:55])
    defparam i4364_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_2958_4_lut (.I0(GND_net), .I1(n2844), .I2(n698), .I3(n24508), 
            .O(n6562[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2945_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24353));
    SB_LUT4 i31346_3_lut (.I0(n10), .I1(baudrate[13]), .I2(n33_adj_5416), 
            .I3(GND_net), .O(n35650));   // verilog/uart_rx.v(119[33:55])
    defparam i31346_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2958_4 (.CI(n24508), .I0(n2844), .I1(n698), .CO(n24509));
    SB_LUT4 add_2958_3_lut (.I0(GND_net), .I1(n2845), .I2(n858), .I3(n24507), 
            .O(n6562[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31347_3_lut (.I0(n35650), .I1(baudrate[14]), .I2(n35_adj_5419), 
            .I3(GND_net), .O(n35651));   // verilog/uart_rx.v(119[33:55])
    defparam i31347_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2952_7 (.CI(n24419), .I0(n2105), .I1(n1459), .CO(n24420));
    SB_LUT4 add_2952_6_lut (.I0(GND_net), .I1(n2106), .I2(n1460), .I3(n24418), 
            .O(n6406[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_3 (.CI(n24507), .I0(n2845), .I1(n858), .CO(n24508));
    SB_LUT4 add_2958_2_lut (.I0(n29486), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31213)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2958_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 div_37_i745_4_lut (.I0(n961), .I1(n40_adj_5485), .I2(n294[18]), 
            .I3(baudrate[2]), .O(n1114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i745_4_lut.LUT_INIT = 16'h6a9a;
    SB_CARRY add_2952_6 (.CI(n24418), .I0(n2106), .I1(n1460), .CO(n24419));
    SB_LUT4 i1_2_lut_4_lut_adj_1995 (.I0(n36039), .I1(baudrate[19]), .I2(n2827), 
            .I3(n31213), .O(n2957));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1995.LUT_INIT = 16'h7100;
    SB_LUT4 add_2952_5_lut (.I0(GND_net), .I1(n2107), .I2(n1011), .I3(n24417), 
            .O(n6406[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i36_3_lut (.I0(n18_adj_5486), .I1(baudrate[17]), 
            .I2(n41_adj_5464), .I3(GND_net), .O(n36_adj_5487));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30579_4_lut (.I0(n39_adj_5463), .I1(n37_adj_5462), .I2(n35_adj_5419), 
            .I3(n34887), .O(n34883));
    defparam i30579_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31903_2_lut_4_lut (.I0(n36039), .I1(baudrate[19]), .I2(n2827), 
            .I3(n13122), .O(n294[4]));   // verilog/uart_rx.v(119[33:55])
    defparam i31903_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31633_4_lut (.I0(n36_adj_5487), .I1(n16_adj_5488), .I2(n41_adj_5464), 
            .I3(n34881), .O(n35937));   // verilog/uart_rx.v(119[33:55])
    defparam i31633_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_2952_5 (.CI(n24417), .I0(n2107), .I1(n1011), .CO(n24418));
    SB_LUT4 i30922_3_lut (.I0(n35651), .I1(baudrate[15]), .I2(n37_adj_5462), 
            .I3(GND_net), .O(n35226));   // verilog/uart_rx.v(119[33:55])
    defparam i30922_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2952_4_lut (.I0(GND_net), .I1(n2108), .I2(n856), .I3(n24416), 
            .O(n6406[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2958_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24507));
    SB_LUT4 i31714_4_lut (.I0(n35226), .I1(n35937), .I2(n41_adj_5464), 
            .I3(n34883), .O(n36018));   // verilog/uart_rx.v(119[33:55])
    defparam i31714_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_2957_20_lut (.I0(GND_net), .I1(n2713), .I2(n2977), .I3(n24506), 
            .O(n6536[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i945_3_lut (.I0(n1264), .I1(n6250[20]), .I2(n294[16]), 
            .I3(GND_net), .O(n1411));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1996 (.I0(n13145), .I1(n48_adj_5450), .I2(n21640), 
            .I3(baudrate[2]), .O(n30043));
    defparam i1_4_lut_adj_1996.LUT_INIT = 16'hefff;
    SB_CARRY add_2952_4 (.CI(n24416), .I0(n2108), .I1(n856), .CO(n24417));
    SB_LUT4 add_2952_3_lut (.I0(GND_net), .I1(n2109), .I2(n698), .I3(n24415), 
            .O(n6406[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1042_3_lut (.I0(n1411), .I1(n6276[20]), .I2(n294[15]), 
            .I3(GND_net), .O(n1555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1042_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2952_3 (.CI(n24415), .I0(n2109), .I1(n698), .CO(n24416));
    SB_LUT4 add_2957_19_lut (.I0(GND_net), .I1(n2714), .I2(n2867), .I3(n24505), 
            .O(n6536[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_19 (.CI(n24505), .I0(n2714), .I1(n2867), .CO(n24506));
    SB_LUT4 add_2952_2_lut (.I0(GND_net), .I1(n2110), .I2(n858), .I3(VCC_net), 
            .O(n6406[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2952_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2957_18_lut (.I0(GND_net), .I1(n2715), .I2(n2754), .I3(n24504), 
            .O(n6536[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16_4_lut (.I0(n31_adj_5489), .I1(baudrate[16]), .I2(n28_adj_5490), 
            .I3(n13113), .O(n34));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1997_i22_3_lut (.I0(n14_adj_5492), .I1(baudrate[9]), 
            .I2(n25_adj_5483), .I3(GND_net), .O(n22_adj_5493));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31631_4_lut (.I0(n22_adj_5493), .I1(n12_adj_5494), .I2(n25_adj_5483), 
            .I3(n34896), .O(n35935));   // verilog/uart_rx.v(119[33:55])
    defparam i31631_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_2957_18 (.CI(n24504), .I0(n2715), .I1(n2754), .CO(n24505));
    SB_LUT4 i31632_3_lut (.I0(n35935), .I1(baudrate[10]), .I2(n27_adj_5470), 
            .I3(GND_net), .O(n35936));   // verilog/uart_rx.v(119[33:55])
    defparam i31632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i37_2_lut (.I0(n1557), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n37));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31526_3_lut (.I0(n35936), .I1(baudrate[11]), .I2(n29_adj_5469), 
            .I3(GND_net), .O(n35830));   // verilog/uart_rx.v(119[33:55])
    defparam i31526_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i39_2_lut (.I0(n1556), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n39));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_2957_17_lut (.I0(GND_net), .I1(n2716), .I2(n2638), .I3(n24503), 
            .O(n6536[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_17 (.CI(n24503), .I0(n2716), .I1(n2638), .CO(n24504));
    SB_LUT4 add_2957_16_lut (.I0(GND_net), .I1(n2717), .I2(n2519), .I3(n24502), 
            .O(n6536[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i846_3_lut (.I0(n1114), .I1(n6224[20]), .I2(n294[17]), 
            .I3(GND_net), .O(n1264));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_866_i41_2_lut (.I0(n1264), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5495));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i41_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_2957_16 (.CI(n24502), .I0(n2717), .I1(n2519), .CO(n24503));
    SB_CARRY add_2952_2 (.CI(VCC_net), .I0(n2110), .I1(n858), .CO(n24415));
    SB_LUT4 div_37_LessThan_1062_i41_2_lut (.I0(n1555), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n41));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1040_3_lut (.I0(n1409), .I1(n6276[22]), .I2(n294[15]), 
            .I3(GND_net), .O(n1553));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31591_4_lut (.I0(n41_adj_5464), .I1(n39_adj_5463), .I2(n37_adj_5462), 
            .I3(n35357), .O(n35895));
    defparam i31591_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31715_3_lut (.I0(n36018), .I1(baudrate[18]), .I2(n43_adj_5461), 
            .I3(GND_net), .O(n36019));   // verilog/uart_rx.v(119[33:55])
    defparam i31715_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30920_3_lut (.I0(n35830), .I1(baudrate[12]), .I2(n31_adj_5465), 
            .I3(GND_net), .O(n35224));   // verilog/uart_rx.v(119[33:55])
    defparam i30920_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .D(n16299));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_DV_58 (.Q(rx_data_ready), .C(clk16MHz), .D(n26289));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i31740_4_lut (.I0(n35224), .I1(n36019), .I2(n43_adj_5461), 
            .I3(n35895), .O(n36044));   // verilog/uart_rx.v(119[33:55])
    defparam i31740_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31741_3_lut (.I0(n36044), .I1(baudrate[19]), .I2(n2939), 
            .I3(GND_net), .O(n36045));   // verilog/uart_rx.v(119[33:55])
    defparam i31741_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i948_3_lut (.I0(n1267), .I1(n6250[17]), .I2(n294[16]), 
            .I3(GND_net), .O(n1414));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1045_3_lut (.I0(n1414), .I1(n6276[17]), .I2(n294[15]), 
            .I3(GND_net), .O(n1558));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1140_3_lut (.I0(n1558), .I1(n6302[17]), .I2(n294[14]), 
            .I3(GND_net), .O(n1699));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1140_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF r_Rx_Byte_i0 (.Q(rx_data[0]), .C(clk16MHz), .D(n16303));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i1_3_lut_4_lut_adj_1997 (.I0(n31811), .I1(n13122), .I2(baudrate[0]), 
            .I3(n48_adj_5496), .O(n805));
    defparam i1_3_lut_4_lut_adj_1997.LUT_INIT = 16'hffef;
    SB_LUT4 div_37_i1233_3_lut (.I0(n1699), .I1(n6328[17]), .I2(n294[13]), 
            .I3(GND_net), .O(n1837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i32_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1560), .I3(GND_net), .O(n32));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i32_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31819_2_lut_3_lut (.I0(n31811), .I1(n13122), .I2(n48_adj_5496), 
            .I3(GND_net), .O(n294[20]));
    defparam i31819_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i31366_3_lut (.I0(n32), .I1(baudrate[5]), .I2(n39), .I3(GND_net), 
            .O(n35670));   // verilog/uart_rx.v(119[33:55])
    defparam i31366_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1324_3_lut (.I0(n1837), .I1(n6354[17]), .I2(n294[12]), 
            .I3(GND_net), .O(n1972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1413_3_lut (.I0(n1972), .I1(n6380[17]), .I2(n294[11]), 
            .I3(GND_net), .O(n2104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR r_Clock_Count_1593__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n14407), .D(n1[1]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i4046_4_lut (.I0(n644), .I1(baudrate[2]), .I2(n30043), .I3(n44_adj_5498), 
            .O(n46));   // verilog/uart_rx.v(119[33:55])
    defparam i4046_4_lut.LUT_INIT = 16'hb3a0;
    SB_LUT4 div_37_LessThan_1602_i32_3_lut (.I0(n24_adj_5499), .I1(baudrate[9]), 
            .I2(n35_adj_5440), .I3(GND_net), .O(n32_adj_5500));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1500_3_lut (.I0(n2104), .I1(n6406[17]), .I2(n294[10]), 
            .I3(GND_net), .O(n2233));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1500_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR r_Clock_Count_1593__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n14407), .D(n1[2]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 add_2957_15_lut (.I0(GND_net), .I1(n2718), .I2(n2397), .I3(n24501), 
            .O(n6536[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_1593__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n14407), .D(n1[3]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1593__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n14407), .D(n1[4]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_CARRY add_2957_15 (.CI(n24501), .I0(n2718), .I1(n2397), .CO(n24502));
    SB_DFFESR r_Clock_Count_1593__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n14407), .D(n1[5]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1593__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n14407), .D(n1[6]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1593__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n14407), .D(n1[7]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1593__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n14407), .D(n1[0]), .R(n15574));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i31671_4_lut (.I0(n32_adj_5500), .I1(n22_adj_5508), .I2(n35_adj_5440), 
            .I3(n34579), .O(n35975));   // verilog/uart_rx.v(119[33:55])
    defparam i31671_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i534_4_lut (.I0(n643), .I1(baudrate[3]), .I2(n294[20]), 
            .I3(n46), .O(n802));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i534_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i1585_3_lut (.I0(n2233), .I1(n6432[17]), .I2(n294[9]), 
            .I3(GND_net), .O(n2359));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1585_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1668_3_lut (.I0(n2359), .I1(n6458[17]), .I2(n294[8]), 
            .I3(GND_net), .O(n2482));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1668_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2951_14_lut (.I0(GND_net), .I1(n1966), .I2(n2272), .I3(n24414), 
            .O(n6380[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2951_13_lut (.I0(GND_net), .I1(n1967), .I2(n2144), .I3(n24413), 
            .O(n6380[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_13 (.CI(n24413), .I0(n1967), .I1(n2144), .CO(n24414));
    SB_LUT4 add_2951_12_lut (.I0(GND_net), .I1(n1968), .I2(n2013), .I3(n24412), 
            .O(n6380[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_12 (.CI(n24412), .I0(n1968), .I1(n2013), .CO(n24413));
    SB_LUT4 add_2957_14_lut (.I0(GND_net), .I1(n2719), .I2(n2272), .I3(n24500), 
            .O(n6536[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_14 (.CI(n24500), .I0(n2719), .I1(n2272), .CO(n24501));
    SB_LUT4 add_2951_11_lut (.I0(GND_net), .I1(n1969), .I2(n1879), .I3(n24411), 
            .O(n6380[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_11 (.CI(n24411), .I0(n1969), .I1(n1879), .CO(n24412));
    SB_LUT4 div_37_i1749_3_lut (.I0(n2482), .I1(n6484[17]), .I2(n294[7]), 
            .I3(GND_net), .O(n2602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1828_3_lut (.I0(n2602), .I1(n6510[17]), .I2(n294[6]), 
            .I3(GND_net), .O(n2719));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2951_10_lut (.I0(GND_net), .I1(n1970), .I2(n1742), .I3(n24410), 
            .O(n6380[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_10 (.CI(n24410), .I0(n1970), .I1(n1742), .CO(n24411));
    SB_LUT4 add_2957_13_lut (.I0(GND_net), .I1(n2720), .I2(n2144), .I3(n24499), 
            .O(n6536[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_13 (.CI(n24499), .I0(n2720), .I1(n2144), .CO(n24500));
    SB_LUT4 add_2957_12_lut (.I0(GND_net), .I1(n2721), .I2(n2013), .I3(n24498), 
            .O(n6536[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i25223_1_lut (.I0(n13122), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29486));
    defparam i25223_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31672_3_lut (.I0(n35975), .I1(baudrate[10]), .I2(n37_adj_5441), 
            .I3(GND_net), .O(n35976));   // verilog/uart_rx.v(119[33:55])
    defparam i31672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1662_3_lut (.I0(n2353), .I1(n6458[23]), .I2(n294[8]), 
            .I3(GND_net), .O(n2476));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1743_3_lut (.I0(n2476), .I1(n6484[23]), .I2(n294[7]), 
            .I3(GND_net), .O(n2596));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1822_3_lut (.I0(n2596), .I1(n6510[23]), .I2(n294[6]), 
            .I3(GND_net), .O(n2713));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2951_9_lut (.I0(GND_net), .I1(n1971), .I2(n1602), .I3(n24409), 
            .O(n6380[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_9 (.CI(n24409), .I0(n1971), .I1(n1602), .CO(n24410));
    SB_LUT4 add_2951_8_lut (.I0(GND_net), .I1(n1972), .I2(n1459), .I3(n24408), 
            .O(n6380[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_12 (.CI(n24498), .I0(n2721), .I1(n2013), .CO(n24499));
    SB_CARRY add_2951_8 (.CI(n24408), .I0(n1972), .I1(n1459), .CO(n24409));
    SB_LUT4 add_2951_7_lut (.I0(GND_net), .I1(n1973), .I2(n1460), .I3(n24407), 
            .O(n6380[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_7 (.CI(n24407), .I0(n1973), .I1(n1460), .CO(n24408));
    SB_LUT4 r_Clock_Count_1593_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n24739), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1899_3_lut (.I0(n2713), .I1(n6536[23]), .I2(n294[5]), 
            .I3(GND_net), .O(n2827));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1136_3_lut (.I0(n1554), .I1(n6302[21]), .I2(n294[14]), 
            .I3(GND_net), .O(n1695));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2957_11_lut (.I0(GND_net), .I1(n2722), .I2(n1879), .I3(n24497), 
            .O(n6536[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_11 (.CI(n24497), .I0(n2722), .I1(n1879), .CO(n24498));
    SB_LUT4 add_2951_6_lut (.I0(GND_net), .I1(n1974), .I2(n1011), .I3(n24406), 
            .O(n6380[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1593_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n24738), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_6 (.CI(n24406), .I0(n1974), .I1(n1011), .CO(n24407));
    SB_LUT4 add_2957_10_lut (.I0(GND_net), .I1(n2723), .I2(n1742), .I3(n24496), 
            .O(n6536[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_10 (.CI(n24496), .I0(n2723), .I1(n1742), .CO(n24497));
    SB_LUT4 add_2957_9_lut (.I0(GND_net), .I1(n2724), .I2(n1602), .I3(n24495), 
            .O(n6536[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_9 (.CI(n24495), .I0(n2724), .I1(n1602), .CO(n24496));
    SB_LUT4 add_2957_8_lut (.I0(GND_net), .I1(n2725), .I2(n1459), .I3(n24494), 
            .O(n6536[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_8 (.CI(n24738), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n24739));
    SB_CARRY add_2957_8 (.CI(n24494), .I0(n2725), .I1(n1459), .CO(n24495));
    SB_LUT4 r_Clock_Count_1593_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n24737), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_7 (.CI(n24737), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n24738));
    SB_LUT4 add_2951_5_lut (.I0(GND_net), .I1(n1975), .I2(n856), .I3(n24405), 
            .O(n6380[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2957_7_lut (.I0(GND_net), .I1(n2726), .I2(n1460), .I3(n24493), 
            .O(n6536[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_5 (.CI(n24405), .I0(n1975), .I1(n856), .CO(n24406));
    SB_LUT4 add_2951_4_lut (.I0(GND_net), .I1(n1976), .I2(n698), .I3(n24404), 
            .O(n6380[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_7 (.CI(n24493), .I0(n2726), .I1(n1460), .CO(n24494));
    SB_LUT4 sub_38_add_2_26_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n24345), .O(\o_Rx_DV_N_4460[24] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_25_lut (.I0(n31099), .I1(n32878), .I2(VCC_net), 
            .I3(n24344), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 r_Clock_Count_1593_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n24736), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2951_4 (.CI(n24404), .I0(n1976), .I1(n698), .CO(n24405));
    SB_LUT4 add_2957_6_lut (.I0(GND_net), .I1(n2727), .I2(n1011), .I3(n24492), 
            .O(n6536[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_6 (.CI(n24736), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n24737));
    SB_LUT4 add_2951_3_lut (.I0(GND_net), .I1(n1977), .I2(n858), .I3(n24403), 
            .O(n6380[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_6 (.CI(n24492), .I0(n2727), .I1(n1011), .CO(n24493));
    SB_LUT4 r_Clock_Count_1593_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n24735), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2957_5_lut (.I0(GND_net), .I1(n2728), .I2(n856), .I3(n24491), 
            .O(n6536[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_5 (.CI(n24735), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n24736));
    SB_CARRY add_2951_3 (.CI(n24403), .I0(n1977), .I1(n858), .CO(n24404));
    SB_LUT4 r_Clock_Count_1593_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n24734), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2957_5 (.CI(n24491), .I0(n2728), .I1(n856), .CO(n24492));
    SB_LUT4 add_2957_4_lut (.I0(GND_net), .I1(n2729), .I2(n698), .I3(n24490), 
            .O(n6536[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_4 (.CI(n24734), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n24735));
    SB_LUT4 r_Clock_Count_1593_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n24733), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_3 (.CI(n24733), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n24734));
    SB_CARRY add_2957_4 (.CI(n24490), .I0(n2729), .I1(n698), .CO(n24491));
    SB_LUT4 r_Clock_Count_1593_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1593_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1593_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n24733));
    SB_LUT4 div_37_i1229_3_lut (.I0(n1695), .I1(n6328[21]), .I2(n294[13]), 
            .I3(GND_net), .O(n1833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1320_3_lut (.I0(n1833), .I1(n6354[21]), .I2(n294[12]), 
            .I3(GND_net), .O(n1968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1320_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_866_i36_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1267), .I3(GND_net), .O(n36_adj_5509));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i36_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2957_3_lut (.I0(GND_net), .I1(n2730), .I2(n858), .I3(n24489), 
            .O(n6536[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2951_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n6380[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2951_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_25 (.CI(n24344), .I0(n32878), .I1(VCC_net), 
            .CO(n24345));
    SB_CARRY add_2957_3 (.CI(n24489), .I0(n2730), .I1(n858), .CO(n24490));
    SB_LUT4 div_37_i1409_3_lut (.I0(n1968), .I1(n6380[21]), .I2(n294[11]), 
            .I3(GND_net), .O(n2100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1496_3_lut (.I0(n2100), .I1(n6406[21]), .I2(n294[10]), 
            .I3(GND_net), .O(n2229));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1496_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2951_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24403));
    SB_LUT4 div_37_i1581_3_lut (.I0(n2229), .I1(n6432[21]), .I2(n294[9]), 
            .I3(GND_net), .O(n2355));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1664_3_lut (.I0(n2355), .I1(n6458[21]), .I2(n294[8]), 
            .I3(GND_net), .O(n2478));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2157_1_lut (.I0(baudrate[18]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2157_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_866_i40_3_lut (.I0(n38_adj_5510), .I1(baudrate[4]), 
            .I2(n41_adj_5495), .I3(GND_net), .O(n40_adj_5511));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_24_lut (.I0(n31249), .I1(n294[22]), .I2(VCC_net), 
            .I3(n24343), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i31663_4_lut (.I0(n40_adj_5511), .I1(n36_adj_5509), .I2(n41_adj_5495), 
            .I3(n34703), .O(n35967));   // verilog/uart_rx.v(119[33:55])
    defparam i31663_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 add_2957_2_lut (.I0(n29490), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31211)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2957_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2957_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24489));
    SB_LUT4 add_2950_13_lut (.I0(GND_net), .I1(n1831), .I2(n2144), .I3(n24402), 
            .O(n6354[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1745_3_lut (.I0(n2478), .I1(n6484[21]), .I2(n294[7]), 
            .I3(GND_net), .O(n2598));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1824_3_lut (.I0(n2598), .I1(n6510[21]), .I2(n294[6]), 
            .I3(GND_net), .O(n2715));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2156_1_lut (.I0(baudrate[19]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2156_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_2956_19_lut (.I0(GND_net), .I1(n2596), .I2(n2867), .I3(n24488), 
            .O(n6510[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2950_12_lut (.I0(GND_net), .I1(n1832), .I2(n2013), .I3(n24401), 
            .O(n6354[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2956_18_lut (.I0(GND_net), .I1(n2597), .I2(n2754), .I3(n24487), 
            .O(n6510[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2950_12 (.CI(n24401), .I0(n1832), .I1(n2013), .CO(n24402));
    SB_LUT4 add_2950_11_lut (.I0(GND_net), .I1(n1833), .I2(n1879), .I3(n24400), 
            .O(n6354[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2950_11 (.CI(n24400), .I0(n1833), .I1(n1879), .CO(n24401));
    SB_LUT4 add_2950_10_lut (.I0(GND_net), .I1(n1834), .I2(n1742), .I3(n24399), 
            .O(n6354[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_24 (.CI(n24343), .I0(n294[22]), .I1(VCC_net), 
            .CO(n24344));
    SB_LUT4 div_37_i1901_3_lut (.I0(n2715), .I1(n6536[21]), .I2(n294[5]), 
            .I3(GND_net), .O(n2829));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i43_2_lut (.I0(n2829), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5456));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1752_3_lut (.I0(n2485), .I1(n6484[14]), .I2(n294[7]), 
            .I3(GND_net), .O(n2605));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2950_10 (.CI(n24399), .I0(n1834), .I1(n1742), .CO(n24400));
    SB_CARRY add_2956_18 (.CI(n24487), .I0(n2597), .I1(n2754), .CO(n24488));
    SB_LUT4 add_2956_17_lut (.I0(GND_net), .I1(n2598), .I2(n2638), .I3(n24486), 
            .O(n6510[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_23_lut (.I0(o_Rx_DV_N_4460[18]), .I1(n294[21]), 
            .I2(VCC_net), .I3(n24342), .O(n23)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_2956_17 (.CI(n24486), .I0(n2598), .I1(n2638), .CO(n24487));
    SB_LUT4 add_2950_9_lut (.I0(GND_net), .I1(n1835), .I2(n1602), .I3(n24398), 
            .O(n6354[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2950_9 (.CI(n24398), .I0(n1835), .I1(n1602), .CO(n24399));
    SB_LUT4 add_2956_16_lut (.I0(GND_net), .I1(n2599), .I2(n2519), .I3(n24485), 
            .O(n6510[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_16 (.CI(n24485), .I0(n2599), .I1(n2519), .CO(n24486));
    SB_LUT4 div_37_i1831_3_lut (.I0(n2605), .I1(n6510[14]), .I2(n294[6]), 
            .I3(GND_net), .O(n2722));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1908_3_lut (.I0(n2722), .I1(n6536[14]), .I2(n294[5]), 
            .I3(GND_net), .O(n2836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1135_3_lut (.I0(n1553), .I1(n6302[22]), .I2(n294[14]), 
            .I3(GND_net), .O(n1694));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1228_3_lut (.I0(n1694), .I1(n6328[22]), .I2(n294[13]), 
            .I3(GND_net), .O(n1832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2155_1_lut (.I0(baudrate[20]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2155_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sub_38_add_2_23 (.CI(n24342), .I0(n294[21]), .I1(VCC_net), 
            .CO(n24343));
    SB_LUT4 add_2956_15_lut (.I0(GND_net), .I1(n2600), .I2(n2397), .I3(n24484), 
            .O(n6510[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_15 (.CI(n24484), .I0(n2600), .I1(n2397), .CO(n24485));
    SB_LUT4 add_2956_14_lut (.I0(GND_net), .I1(n2601), .I2(n2272), .I3(n24483), 
            .O(n6510[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_14 (.CI(n24483), .I0(n2601), .I1(n2272), .CO(n24484));
    SB_LUT4 add_2950_8_lut (.I0(GND_net), .I1(n1836), .I2(n1459), .I3(n24397), 
            .O(n6354[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4206_2_lut_4_lut (.I0(baudrate[2]), .I1(n805), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n7913));   // verilog/uart_rx.v(119[33:55])
    defparam i4206_2_lut_4_lut.LUT_INIT = 16'h0445;
    SB_LUT4 div_37_i1319_3_lut (.I0(n1832), .I1(n6354[22]), .I2(n294[12]), 
            .I3(GND_net), .O(n1967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1408_3_lut (.I0(n1967), .I1(n6380[22]), .I2(n294[11]), 
            .I3(GND_net), .O(n2099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1495_3_lut (.I0(n2099), .I1(n6406[22]), .I2(n294[10]), 
            .I3(GND_net), .O(n2228));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2950_8 (.CI(n24397), .I0(n1836), .I1(n1459), .CO(n24398));
    SB_LUT4 add_2950_7_lut (.I0(GND_net), .I1(n1837), .I2(n1460), .I3(n24396), 
            .O(n6354[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2956_13_lut (.I0(GND_net), .I1(n2602), .I2(n2144), .I3(n24482), 
            .O(n6510[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_13 (.CI(n24482), .I0(n2602), .I1(n2144), .CO(n24483));
    SB_LUT4 sub_38_add_2_22_lut (.I0(n31247), .I1(n294[20]), .I2(VCC_net), 
            .I3(n24341), .O(n31249)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_2956_12_lut (.I0(GND_net), .I1(n2603), .I2(n2013), .I3(n24481), 
            .O(n6510[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_12 (.CI(n24481), .I0(n2603), .I1(n2013), .CO(n24482));
    SB_CARRY sub_38_add_2_22 (.CI(n24341), .I0(n294[20]), .I1(VCC_net), 
            .CO(n24342));
    SB_CARRY add_2950_7 (.CI(n24396), .I0(n1837), .I1(n1460), .CO(n24397));
    SB_LUT4 add_2956_11_lut (.I0(GND_net), .I1(n2604), .I2(n1879), .I3(n24480), 
            .O(n6510[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_11 (.CI(n24480), .I0(n2604), .I1(n1879), .CO(n24481));
    SB_LUT4 add_2956_10_lut (.I0(GND_net), .I1(n2605), .I2(n1742), .I3(n24479), 
            .O(n6510[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2950_6_lut (.I0(GND_net), .I1(n1838), .I2(n1011), .I3(n24395), 
            .O(n6354[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_10 (.CI(n24479), .I0(n2605), .I1(n1742), .CO(n24480));
    SB_LUT4 add_2956_9_lut (.I0(GND_net), .I1(n2606), .I2(n1602), .I3(n24478), 
            .O(n6510[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1580_3_lut (.I0(n2228), .I1(n6432[22]), .I2(n294[9]), 
            .I3(GND_net), .O(n2354));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i30_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1839), .I3(GND_net), .O(n30));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1663_3_lut (.I0(n2354), .I1(n6458[22]), .I2(n294[8]), 
            .I3(GND_net), .O(n2477));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1744_3_lut (.I0(n2477), .I1(n6484[22]), .I2(n294[7]), 
            .I3(GND_net), .O(n2597));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30432_2_lut_4_lut (.I0(n1834), .I1(baudrate[8]), .I2(n1838), 
            .I3(baudrate[4]), .O(n34736));
    defparam i30432_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1250_i32_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1834), .I3(GND_net), .O(n32_adj_5512));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i32_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_2956_9 (.CI(n24478), .I0(n2606), .I1(n1602), .CO(n24479));
    SB_LUT4 add_2956_8_lut (.I0(GND_net), .I1(n2607), .I2(n1459), .I3(n24477), 
            .O(n6510[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2950_6 (.CI(n24395), .I0(n1838), .I1(n1011), .CO(n24396));
    SB_LUT4 sub_38_add_2_21_lut (.I0(n31245), .I1(n294[19]), .I2(VCC_net), 
            .I3(n24340), .O(n31247)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_2956_8 (.CI(n24477), .I0(n2607), .I1(n1459), .CO(n24478));
    SB_LUT4 add_2950_5_lut (.I0(GND_net), .I1(n1839), .I2(n856), .I3(n24394), 
            .O(n6354[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2956_7_lut (.I0(GND_net), .I1(n2608), .I2(n1460), .I3(n24476), 
            .O(n6510[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_7 (.CI(n24476), .I0(n2608), .I1(n1460), .CO(n24477));
    SB_LUT4 add_2956_6_lut (.I0(GND_net), .I1(n2609), .I2(n1011), .I3(n24475), 
            .O(n6510[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2956_6 (.CI(n24475), .I0(n2609), .I1(n1011), .CO(n24476));
    SB_LUT4 div_37_i1823_3_lut (.I0(n2597), .I1(n6510[22]), .I2(n294[6]), 
            .I3(GND_net), .O(n2714));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1900_3_lut (.I0(n2714), .I1(n6536[22]), .I2(n294[5]), 
            .I3(GND_net), .O(n2828));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i848_3_lut (.I0(n1116), .I1(n6224[18]), .I2(n294[17]), 
            .I3(GND_net), .O(n1266));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i848_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2950_5 (.CI(n24394), .I0(n1839), .I1(n856), .CO(n24395));
    SB_LUT4 add_2956_5_lut (.I0(GND_net), .I1(n2610), .I2(n856), .I3(n24474), 
            .O(n6510[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i947_3_lut (.I0(n1266), .I1(n6250[18]), .I2(n294[16]), 
            .I3(GND_net), .O(n1413));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1044_3_lut (.I0(n1413), .I1(n6276[18]), .I2(n294[15]), 
            .I3(GND_net), .O(n1557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1044_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1139_3_lut (.I0(n1557), .I1(n6302[18]), .I2(n294[14]), 
            .I3(GND_net), .O(n1698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1139_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1232_3_lut (.I0(n1698), .I1(n6328[18]), .I2(n294[13]), 
            .I3(GND_net), .O(n1836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31664_3_lut (.I0(n35967), .I1(baudrate[5]), .I2(n1263), .I3(GND_net), 
            .O(n35968));   // verilog/uart_rx.v(119[33:55])
    defparam i31664_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_2956_5 (.CI(n24474), .I0(n2610), .I1(n856), .CO(n24475));
    SB_LUT4 div_37_i1323_3_lut (.I0(n1836), .I1(n6354[18]), .I2(n294[12]), 
            .I3(GND_net), .O(n1971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1412_3_lut (.I0(n1971), .I1(n6380[18]), .I2(n294[11]), 
            .I3(GND_net), .O(n2103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1499_3_lut (.I0(n2103), .I1(n6406[18]), .I2(n294[10]), 
            .I3(GND_net), .O(n2232));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1584_3_lut (.I0(n2232), .I1(n6432[18]), .I2(n294[9]), 
            .I3(GND_net), .O(n2358));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1667_3_lut (.I0(n2358), .I1(n6458[18]), .I2(n294[8]), 
            .I3(GND_net), .O(n2481));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5791_4_lut (.I0(n804), .I1(n21638), .I2(n9507), .I3(baudrate[2]), 
            .O(n9509));   // verilog/uart_rx.v(119[33:55])
    defparam i5791_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 add_2956_4_lut (.I0(GND_net), .I1(n2611), .I2(n698), .I3(n24473), 
            .O(n6510[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_21 (.CI(n24340), .I0(n294[19]), .I1(VCC_net), 
            .CO(n24341));
    SB_CARRY add_2956_4 (.CI(n24473), .I0(n2611), .I1(n698), .CO(n24474));
    SB_LUT4 add_2956_3_lut (.I0(GND_net), .I1(n2612), .I2(n858), .I3(n24472), 
            .O(n6510[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2950_4_lut (.I0(GND_net), .I1(n1840), .I2(n698), .I3(n24393), 
            .O(n6354[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1748_3_lut (.I0(n2481), .I1(n6484[18]), .I2(n294[7]), 
            .I3(GND_net), .O(n2601));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1827_3_lut (.I0(n2601), .I1(n6510[18]), .I2(n294[6]), 
            .I3(GND_net), .O(n2718));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1137_3_lut (.I0(n1555), .I1(n6302[20]), .I2(n294[14]), 
            .I3(GND_net), .O(n1696));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1230_3_lut (.I0(n1696), .I1(n6328[20]), .I2(n294[13]), 
            .I3(GND_net), .O(n1834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1230_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2950_4 (.CI(n24393), .I0(n1840), .I1(n698), .CO(n24394));
    SB_CARRY add_2956_3 (.CI(n24472), .I0(n2612), .I1(n858), .CO(n24473));
    SB_LUT4 sub_38_add_2_20_lut (.I0(GND_net), .I1(n294[18]), .I2(VCC_net), 
            .I3(n24339), .O(o_Rx_DV_N_4460[18])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2950_3_lut (.I0(GND_net), .I1(n1841), .I2(n858), .I3(n24392), 
            .O(n6354[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2956_2_lut (.I0(n29494), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31209)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2956_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 div_37_i1321_3_lut (.I0(n1834), .I1(n6354[20]), .I2(n294[12]), 
            .I3(GND_net), .O(n1969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1321_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_2950_3 (.CI(n24392), .I0(n1841), .I1(n858), .CO(n24393));
    SB_LUT4 i5790_2_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n9507));   // verilog/uart_rx.v(119[33:55])
    defparam i5790_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i31836_2_lut_4_lut (.I0(n35840), .I1(baudrate[10]), .I2(n1693), 
            .I3(n13181), .O(n294[13]));   // verilog/uart_rx.v(119[33:55])
    defparam i31836_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_CARRY add_2956_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24472));
    SB_LUT4 add_2955_18_lut (.I0(GND_net), .I1(n2476), .I2(n2754), .I3(n24471), 
            .O(n6484[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1410_3_lut (.I0(n1969), .I1(n6380[20]), .I2(n294[11]), 
            .I3(GND_net), .O(n2101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1998 (.I0(baudrate[3]), .I1(baudrate[4]), 
            .I2(baudrate[5]), .I3(baudrate[6]), .O(n31847));
    defparam i1_2_lut_4_lut_adj_1998.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1341_i28_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1975), .I3(GND_net), .O(n28_adj_5513));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30396_2_lut_4_lut (.I0(n1970), .I1(baudrate[8]), .I2(n1974), 
            .I3(baudrate[4]), .O(n34700));
    defparam i30396_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i31616_3_lut (.I0(n35976), .I1(baudrate[11]), .I2(n39_adj_5442), 
            .I3(GND_net), .O(n35920));   // verilog/uart_rx.v(119[33:55])
    defparam i31616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i30_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1970), .I3(GND_net), .O(n30_adj_5514));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_4_lut_adj_1999 (.I0(baudrate[7]), .I1(baudrate[8]), 
            .I2(baudrate[9]), .I3(baudrate[10]), .O(n31845));
    defparam i1_3_lut_4_lut_adj_1999.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2950_2_lut (.I0(n29515), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n31201)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2950_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2950_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n24392));
    SB_LUT4 add_2955_17_lut (.I0(GND_net), .I1(n2477), .I2(n2638), .I3(n24470), 
            .O(n6484[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_17 (.CI(n24470), .I0(n2477), .I1(n2638), .CO(n24471));
    SB_CARRY sub_38_add_2_20 (.CI(n24339), .I0(n294[18]), .I1(VCC_net), 
            .CO(n24340));
    SB_LUT4 i31624_3_lut (.I0(n35968), .I1(baudrate[6]), .I2(n1262), .I3(GND_net), 
            .O(n35928));   // verilog/uart_rx.v(119[33:55])
    defparam i31624_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2955_16_lut (.I0(GND_net), .I1(n2478), .I2(n2519), .I3(n24469), 
            .O(n6484[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2949_11_lut (.I0(GND_net), .I1(n1693), .I2(n2013), .I3(n24391), 
            .O(n6328[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2949_10_lut (.I0(GND_net), .I1(n1694), .I2(n1879), .I3(n24390), 
            .O(n6328[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_19_lut (.I0(n31243), .I1(n294[17]), .I2(VCC_net), 
            .I3(n24338), .O(n31245)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_2961_25_lut (.I0(GND_net), .I1(n3151), .I2(n3186), .I3(n24589), 
            .O(n6640[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2961_24_lut (.I0(GND_net), .I1(n3152), .I2(n3082), .I3(n24588), 
            .O(n6640[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_24 (.CI(n24588), .I0(n3152), .I1(n3082), .CO(n24589));
    SB_LUT4 add_2961_23_lut (.I0(GND_net), .I1(n3153), .I2(n3188), .I3(n24587), 
            .O(n6640[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_23 (.CI(n24587), .I0(n3153), .I1(n3188), .CO(n24588));
    SB_LUT4 add_2961_22_lut (.I0(GND_net), .I1(n3154), .I2(n3084), .I3(n24586), 
            .O(n6640[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_22 (.CI(n24586), .I0(n3154), .I1(n3084), .CO(n24587));
    SB_LUT4 add_2961_21_lut (.I0(GND_net), .I1(n3155), .I2(n2977), .I3(n24585), 
            .O(n6640[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_21 (.CI(n24585), .I0(n3155), .I1(n2977), .CO(n24586));
    SB_LUT4 add_2961_20_lut (.I0(GND_net), .I1(n3156), .I2(n2867), .I3(n24584), 
            .O(n6640[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_20 (.CI(n24584), .I0(n3156), .I1(n2867), .CO(n24585));
    SB_LUT4 i1_3_lut_4_lut_adj_2000 (.I0(baudrate[15]), .I1(baudrate[17]), 
            .I2(baudrate[18]), .I3(baudrate[16]), .O(n31841));
    defparam i1_3_lut_4_lut_adj_2000.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2961_19_lut (.I0(GND_net), .I1(n3157), .I2(n2754), .I3(n24583), 
            .O(n6640[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_19 (.CI(n24583), .I0(n3157), .I1(n2754), .CO(n24584));
    SB_LUT4 add_2961_18_lut (.I0(GND_net), .I1(n3158), .I2(n2638), .I3(n24582), 
            .O(n6640[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_18 (.CI(n24582), .I0(n3158), .I1(n2638), .CO(n24583));
    SB_LUT4 add_2961_17_lut (.I0(GND_net), .I1(n3159), .I2(n2519), .I3(n24581), 
            .O(n6640[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_17 (.CI(n24581), .I0(n3159), .I1(n2519), .CO(n24582));
    SB_LUT4 add_2961_16_lut (.I0(GND_net), .I1(n3160), .I2(n2397), .I3(n24580), 
            .O(n6640[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_16 (.CI(n24580), .I0(n3160), .I1(n2397), .CO(n24581));
    SB_LUT4 add_2961_15_lut (.I0(GND_net), .I1(n3161), .I2(n2272), .I3(n24579), 
            .O(n6640[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_15 (.CI(n24579), .I0(n3161), .I1(n2272), .CO(n24580));
    SB_LUT4 add_2961_14_lut (.I0(GND_net), .I1(n3162), .I2(n2144), .I3(n24578), 
            .O(n6640[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_16 (.CI(n24469), .I0(n2478), .I1(n2519), .CO(n24470));
    SB_CARRY add_2949_10 (.CI(n24390), .I0(n1694), .I1(n1879), .CO(n24391));
    SB_CARRY add_2961_14 (.CI(n24578), .I0(n3162), .I1(n2144), .CO(n24579));
    SB_LUT4 add_2961_13_lut (.I0(GND_net), .I1(n3163), .I2(n2013), .I3(n24577), 
            .O(n6640[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1046_3_lut (.I0(n1415), .I1(n6276[16]), .I2(n294[15]), 
            .I3(GND_net), .O(n1559));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_2949_9_lut (.I0(GND_net), .I1(n1695), .I2(n1742), .I3(n24389), 
            .O(n6328[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2949_9 (.CI(n24389), .I0(n1695), .I1(n1742), .CO(n24390));
    SB_LUT4 add_2955_15_lut (.I0(GND_net), .I1(n2479), .I2(n2397), .I3(n24468), 
            .O(n6484[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR r_SM_Main_i1 (.Q(\r_SM_Main[1] ), .C(clk16MHz), .D(n3), .R(\r_SM_Main[2] ));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_2961_13 (.CI(n24577), .I0(n3163), .I1(n2013), .CO(n24578));
    SB_LUT4 add_2961_12_lut (.I0(GND_net), .I1(n3164), .I2(n1879), .I3(n24576), 
            .O(n6640[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_12 (.CI(n24576), .I0(n3164), .I1(n1879), .CO(n24577));
    SB_LUT4 add_2961_11_lut (.I0(GND_net), .I1(n3165), .I2(n1742), .I3(n24575), 
            .O(n6640[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_11 (.CI(n24575), .I0(n3165), .I1(n1742), .CO(n24576));
    SB_CARRY sub_38_add_2_19 (.CI(n24338), .I0(n294[17]), .I1(VCC_net), 
            .CO(n24339));
    SB_CARRY add_2955_15 (.CI(n24468), .I0(n2479), .I1(n2397), .CO(n24469));
    SB_LUT4 add_2949_8_lut (.I0(GND_net), .I1(n1696), .I2(n1602), .I3(n24388), 
            .O(n6328[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2955_14_lut (.I0(GND_net), .I1(n2480), .I2(n2272), .I3(n24467), 
            .O(n6484[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2070_i10_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3064), .I3(GND_net), .O(n10_adj_5515));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_2961_10_lut (.I0(GND_net), .I1(n3166), .I2(n1602), .I3(n24574), 
            .O(n6640[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_10 (.CI(n24574), .I0(n3166), .I1(n1602), .CO(n24575));
    SB_LUT4 add_2961_9_lut (.I0(GND_net), .I1(n3167), .I2(n1459), .I3(n24573), 
            .O(n6640[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_9 (.CI(n24573), .I0(n3167), .I1(n1459), .CO(n24574));
    SB_LUT4 add_2961_8_lut (.I0(GND_net), .I1(n3168), .I2(n1460), .I3(n24572), 
            .O(n6640[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_8 (.CI(n24572), .I0(n3168), .I1(n1460), .CO(n24573));
    SB_LUT4 add_2961_7_lut (.I0(GND_net), .I1(n3169), .I2(n1011), .I3(n24571), 
            .O(n6640[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2949_8 (.CI(n24388), .I0(n1696), .I1(n1602), .CO(n24389));
    SB_CARRY add_2955_14 (.CI(n24467), .I0(n2480), .I1(n2272), .CO(n24468));
    SB_LUT4 add_2949_7_lut (.I0(GND_net), .I1(n1697), .I2(n1459), .I3(n24387), 
            .O(n6328[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2949_7 (.CI(n24387), .I0(n1697), .I1(n1459), .CO(n24388));
    SB_LUT4 add_2949_6_lut (.I0(GND_net), .I1(n1698), .I2(n1460), .I3(n24386), 
            .O(n6328[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_7 (.CI(n24571), .I0(n3169), .I1(n1011), .CO(n24572));
    SB_CARRY add_2949_6 (.CI(n24386), .I0(n1698), .I1(n1460), .CO(n24387));
    SB_LUT4 sub_38_add_2_18_lut (.I0(n31241), .I1(n294[16]), .I2(VCC_net), 
            .I3(n24337), .O(n31243)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_18 (.CI(n24337), .I0(n294[16]), .I1(VCC_net), 
            .CO(n24338));
    SB_LUT4 add_2955_13_lut (.I0(GND_net), .I1(n2481), .I2(n2144), .I3(n24466), 
            .O(n6484[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_13 (.CI(n24466), .I0(n2481), .I1(n2144), .CO(n24467));
    SB_LUT4 add_2961_6_lut (.I0(GND_net), .I1(n3170), .I2(n856), .I3(n24570), 
            .O(n6640[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_6 (.CI(n24570), .I0(n3170), .I1(n856), .CO(n24571));
    SB_LUT4 add_2949_5_lut (.I0(GND_net), .I1(n1699), .I2(n1011), .I3(n24385), 
            .O(n6328[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2949_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2961_5_lut (.I0(GND_net), .I1(n3171), .I2(n698), .I3(n24569), 
            .O(n6640[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2955_12_lut (.I0(GND_net), .I1(n2482), .I2(n2013), .I3(n24465), 
            .O(n6484[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2955_12 (.CI(n24465), .I0(n2482), .I1(n2013), .CO(n24466));
    SB_LUT4 sub_38_add_2_17_lut (.I0(n31097), .I1(n294[15]), .I2(VCC_net), 
            .I3(n24336), .O(n31099)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_2949_5 (.CI(n24385), .I0(n1699), .I1(n1011), .CO(n24386));
    SB_CARRY add_2961_5 (.CI(n24569), .I0(n3171), .I1(n698), .CO(n24570));
    SB_LUT4 add_2961_4_lut (.I0(GND_net), .I1(n3172), .I2(n858), .I3(n24568), 
            .O(n6640[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2961_4 (.CI(n24568), .I0(n3172), .I1(n858), .CO(n24569));
    SB_LUT4 add_2961_3_lut (.I0(n29474), .I1(GND_net), .I2(n538), .I3(n24567), 
            .O(n31219)) /* synthesis syn_instantiated=1 */ ;
    defparam add_2961_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_2961_3 (.CI(n24567), .I0(GND_net), .I1(n538), .CO(n24568));
    SB_CARRY add_2961_2 (.CI(VCC_net), .I0(GND_net), .I1(VCC_net), .CO(n24567));
    SB_LUT4 add_2960_23_lut (.I0(GND_net), .I1(n3046), .I2(n3082), .I3(n24566), 
            .O(n6614[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2960_22_lut (.I0(GND_net), .I1(n3047), .I2(n3188), .I3(n24565), 
            .O(n6614[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_22 (.CI(n24565), .I0(n3047), .I1(n3188), .CO(n24566));
    SB_LUT4 add_2960_21_lut (.I0(GND_net), .I1(n3048), .I2(n3084), .I3(n24564), 
            .O(n6614[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_21 (.CI(n24564), .I0(n3048), .I1(n3084), .CO(n24565));
    SB_LUT4 add_2960_20_lut (.I0(GND_net), .I1(n3049), .I2(n2977), .I3(n24563), 
            .O(n6614[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_2960_20 (.CI(n24563), .I0(n3049), .I1(n2977), .CO(n24564));
    SB_LUT4 div_37_i1497_3_lut (.I0(n2101), .I1(n6406[20]), .I2(n294[10]), 
            .I3(GND_net), .O(n2230));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i14_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3061), .I3(GND_net), .O(n14_adj_5516));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30530_2_lut_4_lut (.I0(n3051), .I1(baudrate[16]), .I2(n3060), 
            .I3(baudrate[7]), .O(n34834));
    defparam i30530_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2070_i16_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3051), .I3(GND_net), .O(n16_adj_5517));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1582_3_lut (.I0(n2230), .I1(n6432[20]), .I2(n294[9]), 
            .I3(GND_net), .O(n2356));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31324_4_lut (.I0(n39_adj_5442), .I1(n37_adj_5441), .I2(n35_adj_5440), 
            .I3(n34581), .O(n35628));
    defparam i31324_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_2955_11_lut (.I0(GND_net), .I1(n2483), .I2(n1879), .I3(n24464), 
            .O(n6484[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2955_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_2960_19_lut (.I0(GND_net), .I1(n3050), .I2(n2867), .I3(n24562), 
            .O(n6614[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2070_i12_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3059), .I3(GND_net), .O(n12_adj_5518));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30548_2_lut_4_lut (.I0(n3059), .I1(baudrate[8]), .I2(n3063), 
            .I3(baudrate[4]), .O(n34852));
    defparam i30548_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i13_2_lut_4_lut (.I0(baudrate[12]), .I1(baudrate[13]), .I2(baudrate[14]), 
            .I3(baudrate[15]), .O(n31_adj_5489));
    defparam i13_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY sub_38_add_2_17 (.CI(n24336), .I0(n294[15]), .I1(VCC_net), 
            .CO(n24337));
    SB_CARRY add_2960_19 (.CI(n24562), .I0(n3050), .I1(n2867), .CO(n24563));
    SB_CARRY add_2955_11 (.CI(n24464), .I0(n2483), .I1(n1879), .CO(n24465));
    SB_LUT4 add_2960_18_lut (.I0(GND_net), .I1(n3051), .I2(n2754), .I3(n24561), 
            .O(n6614[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30612_2_lut_3_lut (.I0(n13145), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n34372));   // verilog/uart_rx.v(119[33:55])
    defparam i30612_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_CARRY add_2960_18 (.CI(n24561), .I0(n3051), .I1(n2754), .CO(n24562));
    SB_LUT4 add_2960_17_lut (.I0(GND_net), .I1(n3052), .I2(n2638), .I3(n24560), 
            .O(n6614[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_2960_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_2001 (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(baudrate[18]), .I3(baudrate[19]), .O(n31897));
    defparam i1_2_lut_4_lut_adj_2001.LUT_INIT = 16'hfffe;
    SB_LUT4 i4370_2_lut_3_lut (.I0(baudrate[2]), .I1(n962), .I2(baudrate[1]), 
            .I3(GND_net), .O(n8077));   // verilog/uart_rx.v(119[33:55])
    defparam i4370_2_lut_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 i4377_2_lut_3_lut_4_lut (.I0(baudrate[3]), .I1(n9513), .I2(baudrate[2]), 
            .I3(n40_adj_5485), .O(n8084));   // verilog/uart_rx.v(119[33:55])
    defparam i4377_2_lut_3_lut_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i31919_2_lut_4_lut (.I0(n35910), .I1(baudrate[22]), .I2(n3151), 
            .I3(n13131), .O(n294[1]));
    defparam i31919_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31635_4_lut (.I0(n28), .I1(n20_adj_5474), .I2(n31_adj_5444), 
            .I3(n34589), .O(n35939));   // verilog/uart_rx.v(119[33:55])
    defparam i31635_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_2141_i8_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3170), .I3(GND_net), .O(n8_adj_5519));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i8_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2172_1_lut (.I0(baudrate[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n856));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2172_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1141_3_lut (.I0(n1559), .I1(n6302[16]), .I2(n294[14]), 
            .I3(GND_net), .O(n1700));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1665_3_lut (.I0(n2356), .I1(n6458[20]), .I2(n294[8]), 
            .I3(GND_net), .O(n2479));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1665_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1746_3_lut (.I0(n2479), .I1(n6484[20]), .I2(n294[7]), 
            .I3(GND_net), .O(n2599));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1825_3_lut (.I0(n2599), .I1(n6510[20]), .I2(n294[6]), 
            .I3(GND_net), .O(n2716));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1902_3_lut (.I0(n2716), .I1(n6536[20]), .I2(n294[5]), 
            .I3(GND_net), .O(n2830));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i12_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3167), .I3(GND_net), .O(n12_adj_5520));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i25215_1_lut (.I0(n13128), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29478));
    defparam i25215_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i30492_2_lut_4_lut (.I0(n3157), .I1(baudrate[16]), .I2(n3166), 
            .I3(baudrate[7]), .O(n34796));
    defparam i30492_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i641_4_lut (.I0(n804), .I1(n42_adj_5521), .I2(n294[19]), 
            .I3(baudrate[2]), .O(n960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i641_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 i1_2_lut_3_lut (.I0(n26), .I1(n32049), .I2(n32087), .I3(GND_net), 
            .O(n32031));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_2002 (.I0(baudrate[26]), .I1(baudrate[27]), .I2(GND_net), 
            .I3(GND_net), .O(n32071));
    defparam i1_2_lut_adj_2002.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_2003 (.I0(baudrate[30]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n32073));
    defparam i1_2_lut_adj_2003.LUT_INIT = 16'heeee;
    SB_LUT4 i28543_2_lut_3_lut (.I0(n26), .I1(n32049), .I2(n31971), .I3(GND_net), 
            .O(n32838));
    defparam i28543_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_2141_i14_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3157), .I3(GND_net), .O(n14_adj_5522));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2141_i10_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3165), .I3(GND_net), .O(n10_adj_5523));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_2004 (.I0(n32073), .I1(n32071), .I2(baudrate[17]), 
            .I3(n32099), .O(n32089));
    defparam i1_4_lut_adj_2004.LUT_INIT = 16'hfffe;
    SB_LUT4 i30510_2_lut_4_lut (.I0(n3165), .I1(baudrate[8]), .I2(n3169), 
            .I3(baudrate[4]), .O(n34814));
    defparam i30510_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_3_lut_adj_2005 (.I0(baudrate[26]), .I1(baudrate[30]), 
            .I2(baudrate[23]), .I3(GND_net), .O(n32119));
    defparam i1_2_lut_3_lut_adj_2005.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_4_lut_adj_2006 (.I0(baudrate[22]), .I1(baudrate[23]), 
            .I2(baudrate[25]), .I3(baudrate[28]), .O(n32085));
    defparam i1_2_lut_4_lut_adj_2006.LUT_INIT = 16'hfffe;
    SB_LUT4 i25235_1_lut (.I0(n13113), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29498));
    defparam i25235_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1430_i28_3_lut_3_lut (.I0(baudrate[3]), .I1(baudrate[4]), 
            .I2(n2107), .I3(GND_net), .O(n28_adj_5524));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2175_1_lut (.I0(baudrate[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n538));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2175_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i30341_2_lut_4_lut (.I0(n2102), .I1(baudrate[9]), .I2(n2106), 
            .I3(baudrate[5]), .O(n34645));
    defparam i30341_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1430_i30_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[9]), 
            .I2(n2102), .I3(GND_net), .O(n30_adj_5525));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_4_lut_adj_2007 (.I0(baudrate[30]), .I1(baudrate[25]), 
            .I2(baudrate[24]), .I3(baudrate[29]), .O(n32019));
    defparam i1_2_lut_4_lut_adj_2007.LUT_INIT = 16'hfffe;
    SB_LUT4 i25219_1_lut_4_lut (.I0(n32103), .I1(n32101), .I2(n32105), 
            .I3(n31997), .O(n29482));
    defparam i25219_1_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1_3_lut_4_lut_adj_2008 (.I0(n32057), .I1(baudrate[30]), .I2(baudrate[27]), 
            .I3(n31759), .O(n31803));
    defparam i1_3_lut_4_lut_adj_2008.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_2009 (.I0(n13145), .I1(n48_adj_5450), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n44_adj_5498));
    defparam i1_3_lut_4_lut_adj_2009.LUT_INIT = 16'hefff;
    SB_LUT4 div_37_LessThan_1517_i24_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2238), .I3(GND_net), .O(n24_adj_5526));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30316_2_lut_4_lut (.I0(n2233), .I1(baudrate[8]), .I2(n2237), 
            .I3(baudrate[4]), .O(n34620));
    defparam i30316_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1517_i26_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2233), .I3(GND_net), .O(n26_adj_5527));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30655_3_lut (.I0(n962), .I1(baudrate[1]), .I2(n294[18]), 
            .I3(GND_net), .O(n1115));
    defparam i30655_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i30328_2_lut_4_lut (.I0(n2235), .I1(baudrate[6]), .I2(n2236), 
            .I3(baudrate[5]), .O(n34632));
    defparam i30328_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1517_i28_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2235), .I3(GND_net), .O(n28_adj_5528));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i28550_1_lut_2_lut (.I0(baudrate[8]), .I1(n32842), .I2(GND_net), 
            .I3(GND_net), .O(n29528));
    defparam i28550_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i31840_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n32816), .I3(n48), .O(n294[14]));
    defparam i31840_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i28547_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n32816), .I3(baudrate[9]), .O(n32842));
    defparam i28547_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_2010 (.I0(n35868), .I1(baudrate[21]), .I2(n3046), 
            .I3(n31217), .O(n3172));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2010.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_1685_i20_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2489), .I3(GND_net), .O(n20_adj_5529));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30224_2_lut_4_lut (.I0(n2484), .I1(baudrate[8]), .I2(n2488), 
            .I3(baudrate[4]), .O(n34528));
    defparam i30224_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i17813_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21640));
    defparam i17813_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31913_2_lut_4_lut (.I0(n35868), .I1(baudrate[21]), .I2(n3046), 
            .I3(n13128), .O(n294[2]));   // verilog/uart_rx.v(119[33:55])
    defparam i31913_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_2_lut_adj_2011 (.I0(baudrate[26]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n32041));
    defparam i1_2_lut_adj_2011.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1685_i22_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2484), .I3(GND_net), .O(n22_adj_5530));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2066_3_lut (.I0(n2957), .I1(n6588[4]), .I2(n294[3]), 
            .I3(GND_net), .O(n3065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i24_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2486), .I3(GND_net), .O(n24_adj_5531));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30237_2_lut_4_lut (.I0(n2486), .I1(baudrate[6]), .I2(n2487), 
            .I3(baudrate[5]), .O(n34541));
    defparam i30237_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i4379_2_lut_4_lut (.I0(n960), .I1(n8077), .I2(n9513), .I3(baudrate[3]), 
            .O(n44));   // verilog/uart_rx.v(119[33:55])
    defparam i4379_2_lut_4_lut.LUT_INIT = 16'ha8fe;
    SB_LUT4 i1_2_lut_4_lut_adj_2012 (.I0(n35918), .I1(baudrate[15]), .I2(n2353), 
            .I3(n31205), .O(n2491));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2012.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_1845_i41_2_lut (.I0(n2716), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5532));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31885_2_lut_4_lut (.I0(n35918), .I1(baudrate[15]), .I2(n2353), 
            .I3(n13088), .O(n294[8]));   // verilog/uart_rx.v(119[33:55])
    defparam i31885_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1845_i45_2_lut (.I0(n2714), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_5533));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i39_2_lut (.I0(n2717), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5534));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_2013 (.I0(n35806), .I1(baudrate[14]), .I2(n2227), 
            .I3(n31203), .O(n2367));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2013.LUT_INIT = 16'h7100;
    SB_LUT4 i1_3_lut_4_lut_adj_2014 (.I0(baudrate[14]), .I1(baudrate[2]), 
            .I2(baudrate[1]), .I3(baudrate[0]), .O(n31083));
    defparam i1_3_lut_4_lut_adj_2014.LUT_INIT = 16'h1000;
    SB_LUT4 i1_2_lut_3_lut_adj_2015 (.I0(\r_SM_Main[1] ), .I1(r_SM_Main[0]), 
            .I2(\r_SM_Main[2] ), .I3(GND_net), .O(n4));
    defparam i1_2_lut_3_lut_adj_2015.LUT_INIT = 16'hfdfd;
    SB_LUT4 div_37_i847_3_lut (.I0(n1115), .I1(n6224[19]), .I2(n294[17]), 
            .I3(GND_net), .O(n1265));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i16_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2728), .I3(GND_net), .O(n16_adj_5535));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31866_2_lut_4_lut (.I0(n35806), .I1(baudrate[14]), .I2(n2227), 
            .I3(n13171), .O(n294[9]));   // verilog/uart_rx.v(119[33:55])
    defparam i31866_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i30711_2_lut_4_lut (.I0(n2723), .I1(baudrate[8]), .I2(n2727), 
            .I3(baudrate[4]), .O(n35015));
    defparam i30711_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1845_i43_2_lut (.I0(n2715), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5536));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i18_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2723), .I3(GND_net), .O(n18_adj_5537));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i4201_2_lut_4_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n42_adj_5521));   // verilog/uart_rx.v(119[33:55])
    defparam i4201_2_lut_4_lut_3_lut.LUT_INIT = 16'h2b2b;
    SB_LUT4 div_37_i946_3_lut (.I0(n1265), .I1(n6250[19]), .I2(n294[16]), 
            .I3(GND_net), .O(n1412));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i20_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2725), .I3(GND_net), .O(n20_adj_5538));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1845_i27_2_lut (.I0(n2723), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5539));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i29_2_lut (.I0(n2722), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5540));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i31_2_lut (.I0(n2721), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5541));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i33_2_lut (.I0(n2720), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5542));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_2016 (.I0(baudrate[20]), .I1(baudrate[21]), 
            .I2(n32099), .I3(n32041), .O(n31873));
    defparam i1_3_lut_4_lut_adj_2016.LUT_INIT = 16'hfffe;
    SB_LUT4 i30687_2_lut_4_lut (.I0(n2715), .I1(baudrate[16]), .I2(n2724), 
            .I3(baudrate[7]), .O(n34991));
    defparam i30687_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1845_i22_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2715), .I3(GND_net), .O(n22_adj_5543));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_4_lut_adj_2017 (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(baudrate[12]), .I3(baudrate[13]), .O(n31971));
    defparam i1_2_lut_4_lut_adj_2017.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i35_2_lut (.I0(n2719), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5544));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_2018 (.I0(baudrate[22]), .I1(baudrate[23]), 
            .I2(baudrate[26]), .I3(baudrate[31]), .O(n32021));
    defparam i1_2_lut_4_lut_adj_2018.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i21_2_lut (.I0(n2726), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5545));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2019 (.I0(n23), .I1(\o_Rx_DV_N_4460[12] ), .I2(n3370), 
            .I3(\r_SM_Main[0] ), .O(n31255));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2019.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_2020 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n27), .I2(n29), 
            .I3(n31255), .O(n30013));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2020.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i23_2_lut (.I0(n2725), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5547));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i25_2_lut (.I0(n2724), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5548));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i37_2_lut (.I0(n2718), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5549));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30299_3_lut_4_lut (.I0(n1413), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1414), .O(n34603));   // verilog/uart_rx.v(119[33:55])
    defparam i30299_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(baudrate[20]), .I1(baudrate[21]), 
            .I2(baudrate[18]), .I3(baudrate[19]), .O(n32087));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_2021 (.I0(baudrate[20]), .I1(baudrate[21]), 
            .I2(baudrate[22]), .I3(baudrate[23]), .O(n32057));
    defparam i1_2_lut_3_lut_4_lut_adj_2021.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i17_2_lut (.I0(n2728), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_5550));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i19_2_lut (.I0(n2727), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5551));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30696_4_lut (.I0(n37_adj_5549), .I1(n25_adj_5548), .I2(n23_adj_5547), 
            .I3(n21_adj_5545), .O(n35000));
    defparam i30696_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30723_4_lut (.I0(n19_adj_5551), .I1(n17_adj_5550), .I2(n2729), 
            .I3(baudrate[2]), .O(n35027));
    defparam i30723_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i31554_3_lut (.I0(n35920), .I1(baudrate[12]), .I2(n41_adj_5445), 
            .I3(GND_net), .O(n35858));   // verilog/uart_rx.v(119[33:55])
    defparam i31554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31125_4_lut (.I0(n25_adj_5548), .I1(n23_adj_5547), .I2(n21_adj_5545), 
            .I3(n35027), .O(n35429));
    defparam i31125_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_4460[24] ), .I2(n27), 
            .I3(GND_net), .O(n14_adj_5552));
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_4460[12] ), .I2(n23), .I3(n3367), 
            .O(n15_adj_5553));
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_LessThan_965_i36_3_lut_3_lut (.I0(n1413), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n36));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i36_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i8_4_lut (.I0(n15_adj_5553), .I1(\o_Rx_DV_N_4460[8] ), .I2(n14_adj_5552), 
            .I3(n28574), .O(n36334));
    defparam i8_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 div_37_LessThan_866_i38_3_lut_3_lut (.I0(n1265), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n38_adj_5510));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i38_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i31312_4_lut (.I0(n31_adj_5541), .I1(n29_adj_5540), .I2(n27_adj_5539), 
            .I3(n35429), .O(n35616));
    defparam i31312_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i30698_4_lut (.I0(n37_adj_5549), .I1(n35_adj_5544), .I2(n33_adj_5542), 
            .I3(n35616), .O(n35002));
    defparam i30698_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i28545_4_lut (.I0(baudrate[3]), .I1(n31973), .I2(n21_adj_5449), 
            .I3(baudrate[1]), .O(n32840));
    defparam i28545_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i14_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2730), .I3(GND_net), .O(n14_adj_5554));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i14_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31360_3_lut (.I0(n14_adj_5554), .I1(baudrate[13]), .I2(n37_adj_5549), 
            .I3(GND_net), .O(n35664));   // verilog/uart_rx.v(119[33:55])
    defparam i31360_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31361_3_lut (.I0(n35664), .I1(baudrate[14]), .I2(n39_adj_5534), 
            .I3(GND_net), .O(n35665));   // verilog/uart_rx.v(119[33:55])
    defparam i31361_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2022 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31605), .O(n31611));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2022.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2023 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31611), .O(n31617));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2023.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_2024 (.I0(n32087), .I1(n32089), .I2(n32101), 
            .I3(n32067), .O(n13113));
    defparam i1_3_lut_4_lut_adj_2024.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2025 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31541), .O(n31547));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2025.LUT_INIT = 16'hfffe;
    SB_LUT4 i31677_4_lut (.I0(n35858), .I1(n35939), .I2(n41_adj_5445), 
            .I3(n35628), .O(n35981));   // verilog/uart_rx.v(119[33:55])
    defparam i31677_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_2026 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31547), .O(n31553));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2026.LUT_INIT = 16'hfffe;
    SB_LUT4 i30399_3_lut_4_lut (.I0(n1265), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1266), .O(n34703));   // verilog/uart_rx.v(119[33:55])
    defparam i30399_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1845_i40_3_lut (.I0(n22_adj_5543), .I1(baudrate[17]), 
            .I2(n45_adj_5533), .I3(GND_net), .O(n40_adj_5555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30692_4_lut (.I0(n43_adj_5536), .I1(n41_adj_5532), .I2(n39_adj_5534), 
            .I3(n35000), .O(n34996));
    defparam i30692_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1043_3_lut (.I0(n1412), .I1(n6276[19]), .I2(n294[15]), 
            .I3(GND_net), .O(n1556));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31421_4_lut (.I0(n40_adj_5555), .I1(n20_adj_5538), .I2(n45_adj_5533), 
            .I3(n34991), .O(n35725));   // verilog/uart_rx.v(119[33:55])
    defparam i31421_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_2027 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31589), .O(n31595));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2027.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2028 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31595), .O(n31601));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2028.LUT_INIT = 16'hfffe;
    SB_LUT4 i30908_3_lut (.I0(n35665), .I1(baudrate[15]), .I2(n41_adj_5532), 
            .I3(GND_net), .O(n35212));   // verilog/uart_rx.v(119[33:55])
    defparam i30908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2029 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31557), .O(n31563));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2029.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2030 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31563), .O(n31569));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2030.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1138_3_lut (.I0(n1556), .I1(n6302[19]), .I2(n294[14]), 
            .I3(GND_net), .O(n1697));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1231_3_lut (.I0(n1697), .I1(n6328[19]), .I2(n294[13]), 
            .I3(GND_net), .O(n1835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1322_3_lut (.I0(n1835), .I1(n6354[19]), .I2(n294[12]), 
            .I3(GND_net), .O(n1970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1322_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28551_2_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[8]), .I2(n32842), 
            .I3(GND_net), .O(n32846));
    defparam i28551_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_2031 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31637), .O(n31643));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2031.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2032 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31643), .O(n31649));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2032.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i26_3_lut (.I0(n18_adj_5537), .I1(baudrate[9]), 
            .I2(n29_adj_5540), .I3(GND_net), .O(n26_adj_5556));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2033 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31573), .O(n31579));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2033.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2034 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31579), .O(n31585));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2034.LUT_INIT = 16'hfffe;
    SB_LUT4 i31625_4_lut (.I0(n26_adj_5556), .I1(n16_adj_5535), .I2(n29_adj_5540), 
            .I3(n35015), .O(n35929));   // verilog/uart_rx.v(119[33:55])
    defparam i31625_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31626_3_lut (.I0(n35929), .I1(baudrate[10]), .I2(n31_adj_5541), 
            .I3(GND_net), .O(n35930));   // verilog/uart_rx.v(119[33:55])
    defparam i31626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31534_3_lut (.I0(n35930), .I1(baudrate[11]), .I2(n33_adj_5542), 
            .I3(GND_net), .O(n35838));   // verilog/uart_rx.v(119[33:55])
    defparam i31534_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31461_4_lut (.I0(n43_adj_5536), .I1(n41_adj_5532), .I2(n39_adj_5534), 
            .I3(n35002), .O(n35765));
    defparam i31461_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31645_4_lut (.I0(n35212), .I1(n35725), .I2(n45_adj_5533), 
            .I3(n34996), .O(n35949));   // verilog/uart_rx.v(119[33:55])
    defparam i31645_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_i1411_3_lut (.I0(n1970), .I1(n6380[19]), .I2(n294[11]), 
            .I3(GND_net), .O(n2102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30906_3_lut (.I0(n35838), .I1(baudrate[12]), .I2(n35_adj_5544), 
            .I3(GND_net), .O(n35210));   // verilog/uart_rx.v(119[33:55])
    defparam i30906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2035 (.I0(\o_Rx_DV_N_4460[12] ), .I1(n3367), .I2(\o_Rx_DV_N_4460[8] ), 
            .I3(n31525), .O(n31531));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2035.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2036 (.I0(\o_Rx_DV_N_4460[24] ), .I1(n29), .I2(n23), 
            .I3(n31531), .O(n31537));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_2036.LUT_INIT = 16'hfffe;
    SB_LUT4 i31647_4_lut (.I0(n35210), .I1(n35949), .I2(n45_adj_5533), 
            .I3(n35765), .O(n35951));   // verilog/uart_rx.v(119[33:55])
    defparam i31647_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_2037 (.I0(n32067), .I1(n32087), .I2(n32049), 
            .I3(n32099), .O(n31183));
    defparam i1_4_lut_adj_2037.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1992_3_lut (.I0(n2845), .I1(n6562[5]), .I2(n294[4]), 
            .I3(GND_net), .O(n2956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_765_i40_3_lut_3_lut (.I0(n1114), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n40_adj_5481));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i40_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i1_4_lut_adj_2038 (.I0(n31183), .I1(n32021), .I2(n31981), 
            .I3(baudrate[15]), .O(n13171));
    defparam i1_4_lut_adj_2038.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2065_3_lut (.I0(n2956), .I1(n6588[5]), .I2(n294[3]), 
            .I3(GND_net), .O(n3064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1498_3_lut (.I0(n2102), .I1(n6406[19]), .I2(n294[10]), 
            .I3(GND_net), .O(n2231));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2064_3_lut (.I0(n2955), .I1(n6588[6]), .I2(n294[3]), 
            .I3(GND_net), .O(n3063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2064_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31825_2_lut_4_lut (.I0(n35675), .I1(baudrate[5]), .I2(n958), 
            .I3(n13152), .O(n294[18]));   // verilog/uart_rx.v(119[33:55])
    defparam i31825_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1685_i39_2_lut (.I0(n2480), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i45_2_lut (.I0(n2477), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_5558));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i43_2_lut (.I0(n2478), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5559));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i41_2_lut (.I0(n2479), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5560));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i33_2_lut (.I0(n2483), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5561));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1583_3_lut (.I0(n2231), .I1(n6432[19]), .I2(n294[9]), 
            .I3(GND_net), .O(n2357));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i35_2_lut (.I0(n2482), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5562));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i37_2_lut (.I0(n2481), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5563));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i29_2_lut (.I0(n2485), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5564));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i31_2_lut (.I0(n2484), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5565));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i21_2_lut (.I0(n2489), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5566));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i23_2_lut (.I0(n2488), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5567));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30440_3_lut_4_lut (.I0(n1114), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1115), .O(n34744));   // verilog/uart_rx.v(119[33:55])
    defparam i30440_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1685_i25_2_lut (.I0(n2487), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5568));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i27_2_lut (.I0(n2486), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5569));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i19_2_lut (.I0(n2490), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5570));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30239_4_lut (.I0(n25_adj_5568), .I1(n23_adj_5567), .I2(n21_adj_5566), 
            .I3(n19_adj_5570), .O(n34543));
    defparam i30239_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1666_3_lut (.I0(n2357), .I1(n6458[19]), .I2(n294[8]), 
            .I3(GND_net), .O(n2480));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1666_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1747_3_lut (.I0(n2480), .I1(n6484[19]), .I2(n294[7]), 
            .I3(GND_net), .O(n2600));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30621_3_lut_4_lut (.I0(n1558), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1559), .O(n34925));   // verilog/uart_rx.v(119[33:55])
    defparam i30621_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i30227_4_lut (.I0(n31_adj_5565), .I1(n29_adj_5564), .I2(n27_adj_5569), 
            .I3(n34543), .O(n34531));
    defparam i30227_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1826_3_lut (.I0(n2600), .I1(n6510[19]), .I2(n294[6]), 
            .I3(GND_net), .O(n2717));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31320_4_lut (.I0(n37_adj_5563), .I1(n35_adj_5562), .I2(n33_adj_5561), 
            .I3(n34531), .O(n35624));
    defparam i31320_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1685_i18_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2491), .I3(GND_net), .O(n18_adj_5571));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i18_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31493_3_lut (.I0(n18_adj_5571), .I1(baudrate[13]), .I2(n41_adj_5560), 
            .I3(GND_net), .O(n35797));   // verilog/uart_rx.v(119[33:55])
    defparam i31493_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i34_3_lut_3_lut (.I0(n1558), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n34_adj_5407));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_LessThan_1997_i12_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2955), .I3(GND_net), .O(n12_adj_5494));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31494_3_lut (.I0(n35797), .I1(baudrate[14]), .I2(n43_adj_5559), 
            .I3(GND_net), .O(n35798));   // verilog/uart_rx.v(119[33:55])
    defparam i31494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30592_2_lut_4_lut (.I0(n2950), .I1(baudrate[8]), .I2(n2954), 
            .I3(baudrate[4]), .O(n34896));
    defparam i30592_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i30751_4_lut (.I0(n43_adj_5559), .I1(n41_adj_5560), .I2(n29_adj_5564), 
            .I3(n34541), .O(n35055));
    defparam i30751_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_1685_i26_3_lut (.I0(n24_adj_5531), .I1(baudrate[7]), 
            .I2(n29_adj_5564), .I3(GND_net), .O(n26_adj_5572));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31413_3_lut (.I0(n35798), .I1(baudrate[15]), .I2(n45_adj_5558), 
            .I3(GND_net), .O(n42_adj_5573));   // verilog/uart_rx.v(119[33:55])
    defparam i31413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i14_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2950), .I3(GND_net), .O(n14_adj_5492));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i16_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2952), .I3(GND_net), .O(n16_adj_5488));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1685_i30_3_lut (.I0(n22_adj_5530), .I1(baudrate[9]), 
            .I2(n33_adj_5561), .I3(GND_net), .O(n30_adj_5574));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_2039 (.I0(n35990), .I1(baudrate[11]), .I2(n1831), 
            .I3(n31201), .O(n1977));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2039.LUT_INIT = 16'h7100;
    SB_LUT4 i31673_4_lut (.I0(n30_adj_5574), .I1(n20_adj_5529), .I2(n33_adj_5561), 
            .I3(n34528), .O(n35977));   // verilog/uart_rx.v(119[33:55])
    defparam i31673_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31674_3_lut (.I0(n35977), .I1(baudrate[10]), .I2(n35_adj_5562), 
            .I3(GND_net), .O(n35978));   // verilog/uart_rx.v(119[33:55])
    defparam i31674_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30577_2_lut_4_lut (.I0(n2942), .I1(baudrate[16]), .I2(n2951), 
            .I3(baudrate[7]), .O(n34881));
    defparam i30577_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i31612_3_lut (.I0(n35978), .I1(baudrate[11]), .I2(n37_adj_5563), 
            .I3(GND_net), .O(n35916));   // verilog/uart_rx.v(119[33:55])
    defparam i31612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31856_2_lut_4_lut (.I0(n35990), .I1(baudrate[11]), .I2(n1831), 
            .I3(n32816), .O(n294[12]));   // verilog/uart_rx.v(119[33:55])
    defparam i31856_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i30753_4_lut (.I0(n43_adj_5559), .I1(n41_adj_5560), .I2(n39_adj_5557), 
            .I3(n35624), .O(n35057));
    defparam i30753_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31217_4_lut (.I0(n42_adj_5573), .I1(n26_adj_5572), .I2(n45_adj_5558), 
            .I3(n35055), .O(n35521));   // verilog/uart_rx.v(119[33:55])
    defparam i31217_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31558_3_lut (.I0(n35916), .I1(baudrate[12]), .I2(n39_adj_5557), 
            .I3(GND_net), .O(n35862));   // verilog/uart_rx.v(119[33:55])
    defparam i31558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31678_3_lut (.I0(n35981), .I1(baudrate[13]), .I2(n2355), 
            .I3(GND_net), .O(n35982));   // verilog/uart_rx.v(119[33:55])
    defparam i31678_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31219_4_lut (.I0(n35862), .I1(n35521), .I2(n45_adj_5558), 
            .I3(n35057), .O(n35523));   // verilog/uart_rx.v(119[33:55])
    defparam i31219_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1997_i18_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2942), .I3(GND_net), .O(n18_adj_5486));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1903_3_lut (.I0(n2717), .I1(n6536[19]), .I2(n294[5]), 
            .I3(GND_net), .O(n2831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2040 (.I0(n13171), .I1(n32840), .I2(n31971), 
            .I3(n31083), .O(n29590));
    defparam i1_4_lut_adj_2040.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_i1838_3_lut (.I0(n2612), .I1(n6510[7]), .I2(n294[6]), 
            .I3(GND_net), .O(n2729));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1915_3_lut (.I0(n2729), .I1(n6536[7]), .I2(n294[5]), 
            .I3(GND_net), .O(n2843));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1915_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30552_3_lut_4_lut (.I0(n1699), .I1(baudrate[4]), .I2(baudrate[3]), 
            .I3(n1700), .O(n34856));   // verilog/uart_rx.v(119[33:55])
    defparam i30552_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1157_i34_3_lut_3_lut (.I0(n1699), .I1(baudrate[4]), 
            .I2(baudrate[3]), .I3(GND_net), .O(n34_adj_5575));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_i1990_3_lut (.I0(n2843), .I1(n6562[7]), .I2(n294[4]), 
            .I3(GND_net), .O(n2954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2063_3_lut (.I0(n2954), .I1(n6588[7]), .I2(n294[3]), 
            .I3(GND_net), .O(n3062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1758_3_lut (.I0(n2491), .I1(n6484[8]), .I2(n294[7]), 
            .I3(GND_net), .O(n2611));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1837_3_lut (.I0(n2611), .I1(n6510[8]), .I2(n294[6]), 
            .I3(GND_net), .O(n2728));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1914_3_lut (.I0(n2728), .I1(n6536[8]), .I2(n294[5]), 
            .I3(GND_net), .O(n2842));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1989_3_lut (.I0(n2842), .I1(n6562[8]), .I2(n294[4]), 
            .I3(GND_net), .O(n2953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4215_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n7913), .I3(n9509), 
            .O(n46_adj_5576));   // verilog/uart_rx.v(119[33:55])
    defparam i4215_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 div_37_i2062_3_lut (.I0(n2953), .I1(n6588[8]), .I2(n294[3]), 
            .I3(GND_net), .O(n3061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2062_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_2041 (.I0(n24_adj_5577), .I1(n32816), .I2(n6302[14]), 
            .I3(n48), .O(n1702));
    defparam i1_3_lut_4_lut_adj_2041.LUT_INIT = 16'h0010;
    SB_LUT4 div_37_i639_4_lut (.I0(n802), .I1(baudrate[4]), .I2(n294[19]), 
            .I3(n46_adj_5576), .O(n958));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i639_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 i1_2_lut_4_lut_adj_2042 (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[24]), .I3(baudrate[29]), .O(n32105));
    defparam i1_2_lut_4_lut_adj_2042.LUT_INIT = 16'hfffe;
    SB_LUT4 i31822_2_lut_4_lut (.I0(n35686), .I1(baudrate[8]), .I2(n1408), 
            .I3(n32842), .O(n294[15]));   // verilog/uart_rx.v(119[33:55])
    defparam i31822_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_2_lut_4_lut_adj_2043 (.I0(n35686), .I1(baudrate[8]), .I2(n1408), 
            .I3(n31199), .O(n1560));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2043.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i1904_3_lut (.I0(n2718), .I1(n6536[18]), .I2(n294[5]), 
            .I3(GND_net), .O(n2832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i22_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2365), .I3(GND_net), .O(n22_adj_5508));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1922_i37_2_lut (.I0(n2832), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5458));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i39_2_lut (.I0(n2831), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5460));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i41_2_lut (.I0(n2830), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5459));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1757_3_lut (.I0(n2490), .I1(n6484[9]), .I2(n294[7]), 
            .I3(GND_net), .O(n2610));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1836_3_lut (.I0(n2610), .I1(n6510[9]), .I2(n294[6]), 
            .I3(GND_net), .O(n2727));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1913_3_lut (.I0(n2727), .I1(n6536[9]), .I2(n294[5]), 
            .I3(GND_net), .O(n2841));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1751_3_lut (.I0(n2484), .I1(n6484[15]), .I2(n294[7]), 
            .I3(GND_net), .O(n2604));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30275_2_lut_4_lut (.I0(n2360), .I1(baudrate[8]), .I2(n2364), 
            .I3(baudrate[4]), .O(n34579));
    defparam i30275_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1988_3_lut (.I0(n2841), .I1(n6562[9]), .I2(n294[4]), 
            .I3(GND_net), .O(n2952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1830_3_lut (.I0(n2604), .I1(n6510[15]), .I2(n294[6]), 
            .I3(GND_net), .O(n2721));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i24_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2360), .I3(GND_net), .O(n24_adj_5499));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i535_4_lut (.I0(n644), .I1(n44_adj_5498), .I2(n294[20]), 
            .I3(baudrate[2]), .O(n803));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i535_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i2061_3_lut (.I0(n2952), .I1(n6588[9]), .I2(n294[3]), 
            .I3(GND_net), .O(n3060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i18_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2610), .I3(GND_net), .O(n18_adj_5478));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30177_2_lut_4_lut (.I0(n2605), .I1(baudrate[8]), .I2(n2609), 
            .I3(baudrate[4]), .O(n34481));
    defparam i30177_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1766_i20_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2605), .I3(GND_net), .O(n20_adj_5476));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30285_2_lut_4_lut (.I0(n2362), .I1(baudrate[6]), .I2(n2363), 
            .I3(baudrate[5]), .O(n34589));
    defparam i30285_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1602_i26_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2362), .I3(GND_net), .O(n26_adj_5475));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1756_3_lut (.I0(n2489), .I1(n6484[10]), .I2(n294[7]), 
            .I3(GND_net), .O(n2609));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1835_3_lut (.I0(n2609), .I1(n6510[10]), .I2(n294[6]), 
            .I3(GND_net), .O(n2726));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1912_3_lut (.I0(n2726), .I1(n6536[10]), .I2(n294[5]), 
            .I3(GND_net), .O(n2840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1912_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1987_3_lut (.I0(n2840), .I1(n6562[10]), .I2(n294[4]), 
            .I3(GND_net), .O(n2951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i22_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2607), .I3(GND_net), .O(n22));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2060_3_lut (.I0(n2951), .I1(n6588[10]), .I2(n294[3]), 
            .I3(GND_net), .O(n3059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1755_3_lut (.I0(n2488), .I1(n6484[11]), .I2(n294[7]), 
            .I3(GND_net), .O(n2608));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1834_3_lut (.I0(n2608), .I1(n6510[11]), .I2(n294[6]), 
            .I3(GND_net), .O(n2725));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30181_2_lut_4_lut (.I0(n2607), .I1(baudrate[6]), .I2(n2608), 
            .I3(baudrate[5]), .O(n34485));
    defparam i30181_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1911_3_lut (.I0(n2725), .I1(n6536[11]), .I2(n294[5]), 
            .I3(GND_net), .O(n2839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1986_3_lut (.I0(n2839), .I1(n6562[11]), .I2(n294[4]), 
            .I3(GND_net), .O(n2950));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2059_3_lut (.I0(n2950), .I1(n6588[11]), .I2(n294[3]), 
            .I3(GND_net), .O(n3058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2166_1_lut (.I0(baudrate[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1879));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2166_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1517_i43_2_lut (.I0(n2229), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5578));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i25243_1_lut (.I0(n13171), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29506));
    defparam i25243_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i28549_2_lut (.I0(baudrate[8]), .I1(n32842), .I2(GND_net), 
            .I3(GND_net), .O(n32844));
    defparam i28549_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1907_3_lut (.I0(n2721), .I1(n6536[15]), .I2(n294[5]), 
            .I3(GND_net), .O(n2835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i39_2_lut (.I0(n2231), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5579));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_2044 (.I0(n32049), .I1(n32079), .I2(n31487), 
            .I3(n32057), .O(n13088));
    defparam i1_3_lut_4_lut_adj_2044.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_2045 (.I0(baudrate[31]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n31757));
    defparam i1_2_lut_adj_2045.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i41_4_lut (.I0(n3154), .I1(baudrate[20]), 
            .I2(n6640[20]), .I3(n294[1]), .O(n41_adj_5580));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i41_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i39_4_lut (.I0(n3155), .I1(baudrate[19]), 
            .I2(n6640[19]), .I3(n294[1]), .O(n39_adj_5581));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i39_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i41_2_lut (.I0(n2230), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5582));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i37_4_lut (.I0(n3156), .I1(baudrate[18]), 
            .I2(n6640[18]), .I3(n294[1]), .O(n37_adj_5583));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i37_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i23_4_lut (.I0(n3163), .I1(baudrate[11]), 
            .I2(n6640[11]), .I3(n294[1]), .O(n23_adj_5584));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i23_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i25_4_lut (.I0(n3162), .I1(baudrate[12]), 
            .I2(n6640[12]), .I3(n294[1]), .O(n25_adj_5585));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i25_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i29_4_lut (.I0(n3160), .I1(baudrate[14]), 
            .I2(n6640[14]), .I3(n294[1]), .O(n29_adj_5586));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i29_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i31_4_lut (.I0(n3159), .I1(baudrate[15]), 
            .I2(n6640[15]), .I3(n294[1]), .O(n31_adj_5587));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i31_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i37_2_lut (.I0(n2232), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5588));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i45_4_lut (.I0(n3152), .I1(baudrate[22]), 
            .I2(n6640[22]), .I3(n294[1]), .O(n45_adj_5589));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i45_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i7_4_lut (.I0(n3171), .I1(baudrate[3]), 
            .I2(n6640[3]), .I3(n294[1]), .O(n7));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i43_4_lut (.I0(n3153), .I1(baudrate[21]), 
            .I2(n6640[21]), .I3(n294[1]), .O(n43_adj_5590));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i43_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i31_2_lut (.I0(n2235), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5591));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i33_2_lut (.I0(n2234), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5592));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i9_4_lut (.I0(n3170), .I1(baudrate[4]), 
            .I2(n6640[4]), .I3(n294[1]), .O(n9));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i9_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i35_2_lut (.I0(n2233), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5593));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i25_2_lut (.I0(n2238), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5594));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i27_2_lut (.I0(n2237), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5595));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i17_4_lut (.I0(n3166), .I1(baudrate[8]), 
            .I2(n6640[8]), .I3(n294[1]), .O(n17_adj_5596));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i17_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i19_4_lut (.I0(n3165), .I1(baudrate[9]), 
            .I2(n6640[9]), .I3(n294[1]), .O(n19_adj_5597));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i19_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i29_2_lut (.I0(n2236), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5598));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i21_4_lut (.I0(n3164), .I1(baudrate[10]), 
            .I2(n6640[10]), .I3(n294[1]), .O(n21_adj_5599));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i21_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i35_4_lut (.I0(n3157), .I1(baudrate[17]), 
            .I2(n6640[17]), .I3(n294[1]), .O(n35_adj_5600));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i35_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i33_4_lut (.I0(n3158), .I1(baudrate[16]), 
            .I2(n6640[16]), .I3(n294[1]), .O(n33_adj_5601));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i33_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i11_4_lut (.I0(n3169), .I1(baudrate[5]), 
            .I2(n6640[5]), .I3(n294[1]), .O(n11_adj_5602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i11_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1517_i23_2_lut (.I0(n2239), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5603));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30330_4_lut (.I0(n29_adj_5598), .I1(n27_adj_5595), .I2(n25_adj_5594), 
            .I3(n23_adj_5603), .O(n34634));
    defparam i30330_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30324_4_lut (.I0(n35_adj_5593), .I1(n33_adj_5592), .I2(n31_adj_5591), 
            .I3(n34634), .O(n34628));
    defparam i30324_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1922_i31_2_lut (.I0(n2835), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5454));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i13_4_lut (.I0(n3168), .I1(baudrate[6]), 
            .I2(n6640[6]), .I3(n294[1]), .O(n13_adj_5604));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i13_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i15_4_lut (.I0(n3167), .I1(baudrate[7]), 
            .I2(n6640[7]), .I3(n294[1]), .O(n15_adj_5605));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i15_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i27_4_lut (.I0(n3161), .I1(baudrate[13]), 
            .I2(n6640[13]), .I3(n294[1]), .O(n27_adj_5606));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i27_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i30452_4_lut (.I0(n27_adj_5606), .I1(n15_adj_5605), .I2(n13_adj_5604), 
            .I3(n11_adj_5602), .O(n34756));
    defparam i30452_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i12_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n33_adj_5601), .I3(GND_net), .O(n12_adj_5607));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30443_2_lut (.I0(n33_adj_5601), .I1(n15_adj_5605), .I2(GND_net), 
            .I3(GND_net), .O(n34747));
    defparam i30443_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i10_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n13_adj_5604), .I3(GND_net), .O(n10_adj_5608));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1234_3_lut (.I0(n1700), .I1(n6328[16]), .I2(n294[13]), 
            .I3(GND_net), .O(n1838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i30_3_lut (.I0(n12_adj_5607), .I1(baudrate[17]), 
            .I2(n35_adj_5600), .I3(GND_net), .O(n30_adj_5609));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30465_4_lut (.I0(n21_adj_5599), .I1(n19_adj_5597), .I2(n17_adj_5596), 
            .I3(n9), .O(n34769));
    defparam i30465_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i16_3_lut (.I0(baudrate[9]), .I1(baudrate[21]), 
            .I2(n43_adj_5590), .I3(GND_net), .O(n16_adj_5610));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30410_2_lut (.I0(n43_adj_5590), .I1(n19_adj_5597), .I2(GND_net), 
            .I3(GND_net), .O(n34714));
    defparam i30410_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1517_i22_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2240), .I3(GND_net), .O(n22_adj_5611));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i22_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2210_i8_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n17_adj_5596), .I3(GND_net), .O(n8_adj_5612));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i30_3_lut (.I0(n28_adj_5528), .I1(baudrate[7]), 
            .I2(n33_adj_5592), .I3(GND_net), .O(n30_adj_5613));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i24_3_lut (.I0(n16_adj_5610), .I1(baudrate[22]), 
            .I2(n45_adj_5589), .I3(GND_net), .O(n24_adj_5614));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2208_3_lut (.I0(n3172), .I1(n6640[2]), .I2(n294[1]), 
            .I3(GND_net), .O(n3274));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30482_3_lut (.I0(n7), .I1(n3274), .I2(baudrate[2]), .I3(GND_net), 
            .O(n34786));
    defparam i30482_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i30963_4_lut (.I0(n13_adj_5604), .I1(n11_adj_5602), .I2(n9), 
            .I3(n34786), .O(n35267));
    defparam i30963_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i30957_4_lut (.I0(n19_adj_5597), .I1(n17_adj_5596), .I2(n15_adj_5605), 
            .I3(n35267), .O(n35261));
    defparam i30957_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31565_4_lut (.I0(n25_adj_5585), .I1(n23_adj_5584), .I2(n21_adj_5599), 
            .I3(n35261), .O(n35869));
    defparam i31565_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31209_4_lut (.I0(n31_adj_5587), .I1(n29_adj_5586), .I2(n27_adj_5606), 
            .I3(n35869), .O(n35513));
    defparam i31209_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31641_4_lut (.I0(n37_adj_5583), .I1(n35_adj_5600), .I2(n33_adj_5601), 
            .I3(n35513), .O(n35945));
    defparam i31641_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2210_i6_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n7), .I3(GND_net), .O(n6_adj_5615));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31479_3_lut (.I0(n6_adj_5615), .I1(baudrate[10]), .I2(n21_adj_5599), 
            .I3(GND_net), .O(n35783));   // verilog/uart_rx.v(119[33:55])
    defparam i31479_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1325_3_lut (.I0(n1838), .I1(n6354[16]), .I2(n294[12]), 
            .I3(GND_net), .O(n1973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31480_3_lut (.I0(n35783), .I1(baudrate[11]), .I2(n23_adj_5584), 
            .I3(GND_net), .O(n35784));   // verilog/uart_rx.v(119[33:55])
    defparam i31480_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i4_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n31219), .I3(n48_adj_5616), .O(n4_adj_5617));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i4_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i31477_3_lut (.I0(n4_adj_5617), .I1(baudrate[13]), .I2(n27_adj_5606), 
            .I3(GND_net), .O(n35781));   // verilog/uart_rx.v(119[33:55])
    defparam i31477_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i34_3_lut (.I0(n26_adj_5527), .I1(baudrate[9]), 
            .I2(n37_adj_5588), .I3(GND_net), .O(n34_adj_5618));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31669_4_lut (.I0(n34_adj_5618), .I1(n24_adj_5526), .I2(n37_adj_5588), 
            .I3(n34620), .O(n35973));   // verilog/uart_rx.v(119[33:55])
    defparam i31669_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1414_3_lut (.I0(n1973), .I1(n6380[16]), .I2(n294[11]), 
            .I3(GND_net), .O(n2105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31670_3_lut (.I0(n35973), .I1(baudrate[10]), .I2(n39_adj_5579), 
            .I3(GND_net), .O(n35974));   // verilog/uart_rx.v(119[33:55])
    defparam i31670_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31478_3_lut (.I0(n35781), .I1(baudrate[14]), .I2(n29_adj_5586), 
            .I3(GND_net), .O(n35782));   // verilog/uart_rx.v(119[33:55])
    defparam i31478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30445_4_lut (.I0(n33_adj_5601), .I1(n31_adj_5587), .I2(n29_adj_5586), 
            .I3(n34756), .O(n34749));
    defparam i30445_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31659_4_lut (.I0(n30_adj_5609), .I1(n10_adj_5608), .I2(n35_adj_5600), 
            .I3(n34747), .O(n35963));   // verilog/uart_rx.v(119[33:55])
    defparam i31659_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31432_3_lut (.I0(n35782), .I1(baudrate[15]), .I2(n31_adj_5587), 
            .I3(GND_net), .O(n35736));   // verilog/uart_rx.v(119[33:55])
    defparam i31432_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31618_3_lut (.I0(n35974), .I1(baudrate[11]), .I2(n41_adj_5582), 
            .I3(GND_net), .O(n35922));   // verilog/uart_rx.v(119[33:55])
    defparam i31618_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31728_4_lut (.I0(n35736), .I1(n35963), .I2(n35_adj_5600), 
            .I3(n34749), .O(n36032));   // verilog/uart_rx.v(119[33:55])
    defparam i31728_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31729_3_lut (.I0(n36032), .I1(baudrate[18]), .I2(n37_adj_5583), 
            .I3(GND_net), .O(n36033));   // verilog/uart_rx.v(119[33:55])
    defparam i31729_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31707_3_lut (.I0(n36033), .I1(baudrate[19]), .I2(n39_adj_5581), 
            .I3(GND_net), .O(n36011));   // verilog/uart_rx.v(119[33:55])
    defparam i31707_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30416_4_lut (.I0(n43_adj_5590), .I1(n25_adj_5585), .I2(n23_adj_5584), 
            .I3(n34769), .O(n34720));
    defparam i30416_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31228_4_lut (.I0(n24_adj_5614), .I1(n8_adj_5612), .I2(n45_adj_5589), 
            .I3(n34714), .O(n35532));   // verilog/uart_rx.v(119[33:55])
    defparam i31228_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31430_3_lut (.I0(n35784), .I1(baudrate[12]), .I2(n25_adj_5585), 
            .I3(GND_net), .O(n35734));   // verilog/uart_rx.v(119[33:55])
    defparam i31430_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30420_4_lut (.I0(n43_adj_5590), .I1(n41_adj_5580), .I2(n39_adj_5581), 
            .I3(n35945), .O(n34724));
    defparam i30420_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31571_4_lut (.I0(n35734), .I1(n35532), .I2(n45_adj_5589), 
            .I3(n34720), .O(n35875));   // verilog/uart_rx.v(119[33:55])
    defparam i31571_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31332_4_lut (.I0(n41_adj_5582), .I1(n39_adj_5579), .I2(n37_adj_5588), 
            .I3(n34628), .O(n35636));
    defparam i31332_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31340_4_lut (.I0(n30_adj_5613), .I1(n22_adj_5611), .I2(n33_adj_5592), 
            .I3(n34632), .O(n35644));   // verilog/uart_rx.v(119[33:55])
    defparam i31340_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31697_3_lut (.I0(n36011), .I1(baudrate[20]), .I2(n41_adj_5580), 
            .I3(GND_net), .O(n40_adj_5619));   // verilog/uart_rx.v(119[33:55])
    defparam i31697_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2187_3_lut (.I0(n3151), .I1(n6640[23]), .I2(n294[1]), 
            .I3(GND_net), .O(n3253));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31573_4_lut (.I0(n40_adj_5619), .I1(n35875), .I2(n45_adj_5589), 
            .I3(n34724), .O(n35877));   // verilog/uart_rx.v(119[33:55])
    defparam i31573_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_2046 (.I0(n32113), .I1(n32099), .I2(n31757), 
            .I3(n31999), .O(n31113));
    defparam i1_4_lut_adj_2046.LUT_INIT = 16'hfffe;
    SB_LUT4 i31850_4_lut (.I0(n31113), .I1(n35877), .I2(baudrate[23]), 
            .I3(n3253), .O(n30517));   // verilog/uart_rx.v(119[33:55])
    defparam i31850_4_lut.LUT_INIT = 16'h1501;
    SB_LUT4 div_37_i1501_3_lut (.I0(n2105), .I1(n6406[16]), .I2(n294[10]), 
            .I3(GND_net), .O(n2234));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_2047 (.I0(n31811), .I1(baudrate[0]), .I2(n31803), 
            .I3(n31801), .O(n31815));
    defparam i1_4_lut_adj_2047.LUT_INIT = 16'hfffb;
    SB_LUT4 i30668_4_lut (.I0(n31815), .I1(baudrate[1]), .I2(n29590), 
            .I3(n294[21]), .O(n644));
    defparam i30668_4_lut.LUT_INIT = 16'h36fa;
    SB_LUT4 i1_2_lut_adj_2048 (.I0(baudrate[25]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n32067));
    defparam i1_2_lut_adj_2048.LUT_INIT = 16'heeee;
    SB_LUT4 i31552_3_lut (.I0(n35922), .I1(baudrate[12]), .I2(n43_adj_5578), 
            .I3(GND_net), .O(n42_adj_5620));   // verilog/uart_rx.v(119[33:55])
    defparam i31552_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2049 (.I0(baudrate[22]), .I1(baudrate[23]), .I2(GND_net), 
            .I3(GND_net), .O(n32101));
    defparam i1_2_lut_adj_2049.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1586_3_lut (.I0(n2234), .I1(n6432[16]), .I2(n294[9]), 
            .I3(GND_net), .O(n2360));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31501_4_lut (.I0(n42_adj_5620), .I1(n35644), .I2(n43_adj_5578), 
            .I3(n35636), .O(n35805));   // verilog/uart_rx.v(119[33:55])
    defparam i31501_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1669_3_lut (.I0(n2360), .I1(n6458[16]), .I2(n294[8]), 
            .I3(GND_net), .O(n2483));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31502_3_lut (.I0(n35805), .I1(baudrate[13]), .I2(n2228), 
            .I3(GND_net), .O(n35806));   // verilog/uart_rx.v(119[33:55])
    defparam i31502_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1750_3_lut (.I0(n2483), .I1(n6484[16]), .I2(n294[7]), 
            .I3(GND_net), .O(n2603));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1829_3_lut (.I0(n2603), .I1(n6510[16]), .I2(n294[6]), 
            .I3(GND_net), .O(n2720));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1676_3_lut (.I0(n2367), .I1(n6458[9]), .I2(n294[8]), 
            .I3(GND_net), .O(n2490));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_965_i45_2_lut (.I0(n1409), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n45));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31614_3_lut (.I0(n35982), .I1(baudrate[14]), .I2(n2354), 
            .I3(GND_net), .O(n35918));   // verilog/uart_rx.v(119[33:55])
    defparam i31614_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2165_1_lut (.I0(baudrate[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2165_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1906_3_lut (.I0(n2720), .I1(n6536[16]), .I2(n294[5]), 
            .I3(GND_net), .O(n2834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2058_3_lut (.I0(n2949), .I1(n6588[12]), .I2(n294[3]), 
            .I3(GND_net), .O(n3057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i33_2_lut (.I0(n2834), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5453));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i17820_rep_6_2_lut_3_lut (.I0(baudrate[0]), .I1(n48_adj_5433), 
            .I2(n32856), .I3(GND_net), .O(n29535));   // verilog/uart_rx.v(119[33:55])
    defparam i17820_rep_6_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 div_37_LessThan_1430_i35_2_lut (.I0(n2104), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5621));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i37_2_lut (.I0(n2103), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5622));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_2050 (.I0(baudrate[6]), .I1(baudrate[7]), 
            .I2(baudrate[8]), .I3(baudrate[9]), .O(n31973));
    defparam i1_2_lut_4_lut_adj_2050.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2118_3_lut (.I0(n3046), .I1(n6614[23]), .I2(n294[2]), 
            .I3(GND_net), .O(n3151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2118_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2132_3_lut (.I0(n3060), .I1(n6614[9]), .I2(n294[2]), 
            .I3(GND_net), .O(n3165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2051 (.I0(baudrate[24]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n32099));
    defparam i1_2_lut_adj_2051.LUT_INIT = 16'heeee;
    SB_LUT4 i4386_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n8084), .I3(n9515), 
            .O(n46_adj_5623));   // verilog/uart_rx.v(119[33:55])
    defparam i4386_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 i1_2_lut_adj_2052 (.I0(baudrate[30]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n31997));
    defparam i1_2_lut_adj_2052.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i2119_3_lut (.I0(n3047), .I1(n6614[22]), .I2(n294[2]), 
            .I3(GND_net), .O(n3152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2119_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2121_3_lut (.I0(n3049), .I1(n6614[20]), .I2(n294[2]), 
            .I3(GND_net), .O(n3154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2120_3_lut (.I0(n3048), .I1(n6614[21]), .I2(n294[2]), 
            .I3(GND_net), .O(n3153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2122_3_lut (.I0(n3050), .I1(n6614[19]), .I2(n294[2]), 
            .I3(GND_net), .O(n3155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i41_2_lut (.I0(n2101), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5624));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2053 (.I0(baudrate[12]), .I1(baudrate[13]), .I2(GND_net), 
            .I3(GND_net), .O(n25_adj_5625));
    defparam i1_2_lut_adj_2053.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1430_i29_2_lut (.I0(n2107), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5626));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i33_2_lut (.I0(n2105), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5627));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i31_2_lut (.I0(n2106), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5628));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i39_2_lut (.I0(n2102), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5629));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i742_4_lut (.I0(n958), .I1(baudrate[5]), .I2(n294[18]), 
            .I3(n46_adj_5623), .O(n1111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i742_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_LessThan_1430_i27_2_lut (.I0(n2108), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5630));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30358_4_lut (.I0(n33_adj_5627), .I1(n31_adj_5628), .I2(n29_adj_5626), 
            .I3(n27_adj_5630), .O(n34662));
    defparam i30358_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1922_i14_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2843), .I3(GND_net), .O(n14));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i17842_rep_5_2_lut (.I0(n6302[14]), .I1(n294[14]), .I2(GND_net), 
            .I3(GND_net), .O(n29518));   // verilog/uart_rx.v(119[33:55])
    defparam i17842_rep_5_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_LessThan_1430_i38_3_lut (.I0(n30_adj_5525), .I1(baudrate[10]), 
            .I2(n41_adj_5624), .I3(GND_net), .O(n38_adj_5631));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i32_4_lut (.I0(n29518), .I1(baudrate[2]), 
            .I2(n1701), .I3(baudrate[1]), .O(n32_adj_5632));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i32_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i17851_rep_4_2_lut (.I0(n6380[11]), .I1(n294[11]), .I2(GND_net), 
            .I3(GND_net), .O(n29509));   // verilog/uart_rx.v(119[33:55])
    defparam i17851_rep_4_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_4_lut_adj_2054 (.I0(n35523), .I1(baudrate[16]), .I2(n2476), 
            .I3(n31207), .O(n2612));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2054.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_1430_i26_4_lut (.I0(n29509), .I1(baudrate[2]), 
            .I2(n2109), .I3(baudrate[1]), .O(n26_adj_5633));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i26_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i31364_3_lut (.I0(n32_adj_5632), .I1(baudrate[6]), .I2(n39_adj_5422), 
            .I3(GND_net), .O(n35668));   // verilog/uart_rx.v(119[33:55])
    defparam i31364_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31507_3_lut (.I0(n26_adj_5633), .I1(baudrate[6]), .I2(n33_adj_5627), 
            .I3(GND_net), .O(n35811));   // verilog/uart_rx.v(119[33:55])
    defparam i31507_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31894_2_lut_4_lut (.I0(n35523), .I1(baudrate[16]), .I2(n2476), 
            .I3(n13113), .O(n294[7]));   // verilog/uart_rx.v(119[33:55])
    defparam i31894_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i2125_3_lut (.I0(n3053), .I1(n6614[16]), .I2(n294[2]), 
            .I3(GND_net), .O(n3158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i33_2_lut (.I0(n3158), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5634));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2123_3_lut (.I0(n3051), .I1(n6614[18]), .I2(n294[2]), 
            .I3(GND_net), .O(n3156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i37_2_lut (.I0(n3156), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5635));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2124_3_lut (.I0(n3052), .I1(n6614[17]), .I2(n294[2]), 
            .I3(GND_net), .O(n3157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i35_2_lut (.I0(n3157), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5636));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i28561_2_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), .I2(baudrate[7]), 
            .I3(n32844), .O(n32856));
    defparam i28561_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2128_3_lut (.I0(n3056), .I1(n6614[13]), .I2(n294[2]), 
            .I3(GND_net), .O(n3161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2128_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2129_3_lut (.I0(n3057), .I1(n6614[12]), .I2(n294[2]), 
            .I3(GND_net), .O(n3162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i25_2_lut (.I0(n3162), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5637));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31508_3_lut (.I0(n35811), .I1(baudrate[7]), .I2(n35_adj_5621), 
            .I3(GND_net), .O(n35812));   // verilog/uart_rx.v(119[33:55])
    defparam i31508_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i27_2_lut (.I0(n3161), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5638));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2130_3_lut (.I0(n3058), .I1(n6614[11]), .I2(n294[2]), 
            .I3(GND_net), .O(n3163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2131_3_lut (.I0(n3059), .I1(n6614[10]), .I2(n294[2]), 
            .I3(GND_net), .O(n3164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2131_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i21_2_lut (.I0(n3164), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5639));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30348_4_lut (.I0(n39_adj_5629), .I1(n37_adj_5622), .I2(n35_adj_5621), 
            .I3(n34662), .O(n34652));
    defparam i30348_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31667_4_lut (.I0(n38_adj_5631), .I1(n28_adj_5524), .I2(n41_adj_5624), 
            .I3(n34645), .O(n35971));   // verilog/uart_rx.v(119[33:55])
    defparam i31667_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_2141_i23_2_lut (.I0(n3163), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5640));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31399_3_lut (.I0(n35812), .I1(baudrate[8]), .I2(n37_adj_5622), 
            .I3(GND_net), .O(n35703));   // verilog/uart_rx.v(119[33:55])
    defparam i31399_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2137_rep_34_3_lut (.I0(n3065), .I1(n6614[4]), .I2(n294[2]), 
            .I3(GND_net), .O(n3170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2137_rep_34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2138_3_lut (.I0(n3066), .I1(n6614[3]), .I2(n294[2]), 
            .I3(GND_net), .O(n3171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i9_2_lut (.I0(n3170), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_5641));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2126_3_lut (.I0(n3054), .I1(n6614[15]), .I2(n294[2]), 
            .I3(GND_net), .O(n3159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2126_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i31_2_lut (.I0(n3159), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5642));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2133_3_lut (.I0(n3061), .I1(n6614[8]), .I2(n294[2]), 
            .I3(GND_net), .O(n3166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2134_3_lut (.I0(n3062), .I1(n6614[7]), .I2(n294[2]), 
            .I3(GND_net), .O(n3167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2135_3_lut (.I0(n3063), .I1(n6614[6]), .I2(n294[2]), 
            .I3(GND_net), .O(n3168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2127_3_lut (.I0(n3055), .I1(n6614[14]), .I2(n294[2]), 
            .I3(GND_net), .O(n3160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i13_2_lut (.I0(n3168), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_5643));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i15_2_lut (.I0(n3167), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_5644));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i17_2_lut (.I0(n3166), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_5645));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i29_2_lut (.I0(n3160), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5646));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_2055 (.I0(baudrate[30]), .I1(baudrate[27]), .I2(GND_net), 
            .I3(GND_net), .O(n31981));
    defparam i1_2_lut_adj_2055.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_2056 (.I0(baudrate[27]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n31999));
    defparam i1_2_lut_adj_2056.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_2057 (.I0(baudrate[26]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n32113));
    defparam i1_2_lut_adj_2057.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_4_lut_adj_2058 (.I0(n35951), .I1(baudrate[18]), .I2(n2713), 
            .I3(n31211), .O(n2845));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2058.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i2136_3_lut (.I0(n3064), .I1(n6614[5]), .I2(n294[2]), 
            .I3(GND_net), .O(n3169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i11_2_lut (.I0(n3169), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_5647));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i19_2_lut (.I0(n3165), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5648));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2059 (.I0(n32117), .I1(n32119), .I2(n31999), 
            .I3(n32115), .O(n13131));
    defparam i1_4_lut_adj_2059.LUT_INIT = 16'hfffe;
    SB_LUT4 i30498_4_lut (.I0(n29_adj_5646), .I1(n17_adj_5645), .I2(n15_adj_5644), 
            .I3(n13_adj_5643), .O(n34802));
    defparam i30498_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31900_2_lut_4_lut (.I0(n35951), .I1(baudrate[18]), .I2(n2713), 
            .I3(n13119), .O(n294[5]));   // verilog/uart_rx.v(119[33:55])
    defparam i31900_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31732_4_lut (.I0(n35703), .I1(n35971), .I2(n41_adj_5624), 
            .I3(n34652), .O(n36036));   // verilog/uart_rx.v(119[33:55])
    defparam i31732_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i30995_4_lut (.I0(n11_adj_5647), .I1(n9_adj_5641), .I2(n3171), 
            .I3(baudrate[2]), .O(n35299));
    defparam i30995_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i31246_4_lut (.I0(n17_adj_5645), .I1(n15_adj_5644), .I2(n13_adj_5643), 
            .I3(n35299), .O(n35550));
    defparam i31246_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31244_4_lut (.I0(n23_adj_5640), .I1(n21_adj_5639), .I2(n19_adj_5648), 
            .I3(n35550), .O(n35548));
    defparam i31244_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i30503_4_lut (.I0(n29_adj_5646), .I1(n27_adj_5638), .I2(n25_adj_5637), 
            .I3(n35548), .O(n34807));
    defparam i30503_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2141_i6_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3172), .I3(GND_net), .O(n6_adj_5649));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i6_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31328_3_lut (.I0(n6_adj_5649), .I1(baudrate[13]), .I2(n29_adj_5646), 
            .I3(GND_net), .O(n35632));   // verilog/uart_rx.v(119[33:55])
    defparam i31328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_2060 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31573));
    defparam i1_3_lut_4_lut_adj_2060.LUT_INIT = 16'hfff7;
    SB_LUT4 div_37_LessThan_2141_i32_3_lut (.I0(n14_adj_5522), .I1(baudrate[17]), 
            .I2(n37_adj_5635), .I3(GND_net), .O(n32_adj_5650));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31329_3_lut (.I0(n35632), .I1(baudrate[14]), .I2(n31_adj_5642), 
            .I3(GND_net), .O(n35633));   // verilog/uart_rx.v(119[33:55])
    defparam i31329_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30494_4_lut (.I0(n35_adj_5636), .I1(n33_adj_5634), .I2(n31_adj_5642), 
            .I3(n34802), .O(n34798));
    defparam i30494_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31587_4_lut (.I0(n32_adj_5650), .I1(n12_adj_5520), .I2(n37_adj_5635), 
            .I3(n34796), .O(n35891));   // verilog/uart_rx.v(119[33:55])
    defparam i31587_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i30944_3_lut (.I0(n35633), .I1(baudrate[15]), .I2(n33_adj_5634), 
            .I3(GND_net), .O(n35248));   // verilog/uart_rx.v(119[33:55])
    defparam i30944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31330_3_lut (.I0(n8_adj_5519), .I1(baudrate[10]), .I2(n23_adj_5640), 
            .I3(GND_net), .O(n35634));   // verilog/uart_rx.v(119[33:55])
    defparam i31330_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31331_3_lut (.I0(n35634), .I1(baudrate[11]), .I2(n25_adj_5637), 
            .I3(GND_net), .O(n35635));   // verilog/uart_rx.v(119[33:55])
    defparam i31331_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30985_4_lut (.I0(n25_adj_5637), .I1(n23_adj_5640), .I2(n21_adj_5639), 
            .I3(n34814), .O(n35289));
    defparam i30985_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31226_3_lut (.I0(n10_adj_5523), .I1(baudrate[9]), .I2(n21_adj_5639), 
            .I3(GND_net), .O(n35530));   // verilog/uart_rx.v(119[33:55])
    defparam i31226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30942_3_lut (.I0(n35635), .I1(baudrate[12]), .I2(n27_adj_5638), 
            .I3(GND_net), .O(n35246));   // verilog/uart_rx.v(119[33:55])
    defparam i30942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31439_4_lut (.I0(n35_adj_5636), .I1(n33_adj_5634), .I2(n31_adj_5642), 
            .I3(n34807), .O(n35743));
    defparam i31439_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31733_3_lut (.I0(n36036), .I1(baudrate[11]), .I2(n2100), 
            .I3(GND_net), .O(n36037));   // verilog/uart_rx.v(119[33:55])
    defparam i31733_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31718_4_lut (.I0(n35248), .I1(n35891), .I2(n37_adj_5635), 
            .I3(n34798), .O(n36022));   // verilog/uart_rx.v(119[33:55])
    defparam i31718_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31481_4_lut (.I0(n35246), .I1(n35530), .I2(n27_adj_5638), 
            .I3(n35289), .O(n35785));   // verilog/uart_rx.v(119[33:55])
    defparam i31481_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31744_4_lut (.I0(n35785), .I1(n36022), .I2(n37_adj_5635), 
            .I3(n35743), .O(n36048));   // verilog/uart_rx.v(119[33:55])
    defparam i31744_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_3_lut_4_lut_adj_2061 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31525));
    defparam i1_3_lut_4_lut_adj_2061.LUT_INIT = 16'hff7f;
    SB_LUT4 i31745_3_lut (.I0(n36048), .I1(baudrate[18]), .I2(n3155), 
            .I3(GND_net), .O(n36049));   // verilog/uart_rx.v(119[33:55])
    defparam i31745_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31737_3_lut (.I0(n36049), .I1(baudrate[19]), .I2(n3154), 
            .I3(GND_net), .O(n36041));   // verilog/uart_rx.v(119[33:55])
    defparam i31737_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31605_3_lut (.I0(n36041), .I1(baudrate[20]), .I2(n3153), 
            .I3(GND_net), .O(n35909));   // verilog/uart_rx.v(119[33:55])
    defparam i31605_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_4_lut_adj_2062 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31637));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2062.LUT_INIT = 16'hffbf;
    SB_LUT4 i31606_3_lut (.I0(n35909), .I1(baudrate[21]), .I2(n3152), 
            .I3(GND_net), .O(n35910));   // verilog/uart_rx.v(119[33:55])
    defparam i31606_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31568_3_lut (.I0(n35910), .I1(baudrate[22]), .I2(n3151), 
            .I3(GND_net), .O(n48_adj_5616));   // verilog/uart_rx.v(119[33:55])
    defparam i31568_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30672_2_lut_4_lut (.I0(n2838), .I1(baudrate[8]), .I2(n2842), 
            .I3(baudrate[4]), .O(n34976));
    defparam i30672_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_3_lut_4_lut_adj_2063 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31557));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2063.LUT_INIT = 16'hfffb;
    SB_LUT4 div_37_LessThan_1922_i16_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2838), .I3(GND_net), .O(n16));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_4_lut_adj_2064 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31589));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2064.LUT_INIT = 16'hffdf;
    SB_LUT4 i31365_3_lut (.I0(n35668), .I1(baudrate[7]), .I2(n41_adj_5423), 
            .I3(GND_net), .O(n35669));   // verilog/uart_rx.v(119[33:55])
    defparam i31365_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_2065 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31541));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2065.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_3_lut_4_lut_adj_2066 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31621));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2066.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_2067 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n31605));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_2067.LUT_INIT = 16'hffef;
    SB_LUT4 div_37_LessThan_1922_i18_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2840), .I3(GND_net), .O(n18));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_2068 (.I0(n32085), .I1(n31873), .I2(n31981), 
            .I3(baudrate[19]), .O(n13119));
    defparam i1_4_lut_adj_2068.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_2069 (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[24]), .I3(baudrate[31]), .O(n31991));
    defparam i1_2_lut_4_lut_adj_2069.LUT_INIT = 16'hfffe;
    SB_LUT4 i30623_2_lut_4_lut (.I0(n2830), .I1(baudrate[16]), .I2(n2839), 
            .I3(baudrate[7]), .O(n34927));
    defparam i30623_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1922_i20_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2830), .I3(GND_net), .O(n20));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31862_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n13171), .I3(n48_adj_5455), .O(n294[11]));
    defparam i31862_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i31711_3_lut (.I0(n36037), .I1(baudrate[12]), .I2(n2099), 
            .I3(GND_net), .O(n36015));   // verilog/uart_rx.v(119[33:55])
    defparam i31711_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31692_3_lut (.I0(n36015), .I1(baudrate[13]), .I2(n2098), 
            .I3(GND_net), .O(n48_adj_5651));   // verilog/uart_rx.v(119[33:55])
    defparam i31692_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31017_4_lut (.I0(n41_adj_5423), .I1(n39_adj_5422), .I2(n37_adj_5424), 
            .I3(n34856), .O(n35321));
    defparam i31017_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i28521_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n13171), .I3(baudrate[12]), .O(n32816));
    defparam i28521_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i843_3_lut (.I0(n1111), .I1(n6224[23]), .I2(n294[17]), 
            .I3(GND_net), .O(n1261));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i640_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n294[19]), 
            .I3(n44_adj_5652), .O(n959));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i640_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 i1_2_lut_adj_2070 (.I0(baudrate[10]), .I1(baudrate[11]), .I2(GND_net), 
            .I3(GND_net), .O(n24_adj_5577));
    defparam i1_2_lut_adj_2070.LUT_INIT = 16'heeee;
    SB_LUT4 i31776_2_lut_3_lut_4_lut (.I0(r_SM_Main_2__N_4418[1]), .I1(\r_SM_Main[1] ), 
            .I2(r_SM_Main[0]), .I3(\r_SM_Main[2] ), .O(n14452));
    defparam i31776_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 i1_4_lut_adj_2071 (.I0(baudrate[27]), .I1(baudrate[24]), .I2(baudrate[29]), 
            .I3(baudrate[30]), .O(n32053));
    defparam i1_4_lut_adj_2071.LUT_INIT = 16'hfffe;
    SB_LUT4 i28499_3_lut (.I0(baudrate[19]), .I1(baudrate[2]), .I2(baudrate[20]), 
            .I3(GND_net), .O(n32794));
    defparam i28499_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_3_lut_adj_2072 (.I0(n32041), .I1(n26), .I2(n32067), .I3(GND_net), 
            .O(n32061));
    defparam i1_3_lut_adj_2072.LUT_INIT = 16'hfefe;
    SB_LUT4 i10_2_lut_3_lut_4_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n28_adj_5490));
    defparam i10_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2047_3_lut (.I0(n2938), .I1(n6588[23]), .I2(n294[3]), 
            .I3(GND_net), .O(n3046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_2_lut (.I0(baudrate[4]), .I1(baudrate[5]), .I2(GND_net), 
            .I3(GND_net), .O(n21_adj_5449));
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_2073 (.I0(n21_adj_5449), .I1(n23_adj_5653), .I2(n22_adj_5654), 
            .I3(n24_adj_5577), .O(n31907));
    defparam i1_4_lut_adj_2073.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2048_3_lut (.I0(n2939), .I1(n6588[22]), .I2(n294[3]), 
            .I3(GND_net), .O(n3047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5794_4_lut (.I0(n960), .I1(n8077), .I2(n9513), .I3(baudrate[3]), 
            .O(n9515));   // verilog/uart_rx.v(119[33:55])
    defparam i5794_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 div_37_i942_3_lut (.I0(n1261), .I1(n6250[23]), .I2(n294[16]), 
            .I3(GND_net), .O(n1408));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2049_3_lut (.I0(n2940), .I1(n6588[21]), .I2(n294[3]), 
            .I3(GND_net), .O(n3048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2050_3_lut (.I0(n2941), .I1(n6588[20]), .I2(n294[3]), 
            .I3(GND_net), .O(n3049));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_2074 (.I0(baudrate[8]), .I1(baudrate[9]), .I2(GND_net), 
            .I3(GND_net), .O(n23_adj_5653));
    defparam i1_2_lut_adj_2074.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2070_i35_2_lut (.I0(n3052), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5655));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2051_3_lut (.I0(n2942), .I1(n6588[19]), .I2(n294[3]), 
            .I3(GND_net), .O(n3050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i39_2_lut (.I0(n3050), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5656));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_2075 (.I0(baudrate[26]), .I1(n31825), .I2(n31999), 
            .I3(n21640), .O(n31361));
    defparam i1_4_lut_adj_2075.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_LessThan_2070_i33_2_lut (.I0(n3053), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5657));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2052_3_lut (.I0(n2943), .I1(n6588[18]), .I2(n294[3]), 
            .I3(GND_net), .O(n3051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2052_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i37_2_lut (.I0(n3051), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5658));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i27_2_lut (.I0(n3056), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5659));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i29_2_lut (.I0(n3055), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5660));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i23_2_lut (.I0(n3058), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_5661));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i25_2_lut (.I0(n3057), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_5662));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i11_2_lut (.I0(n3064), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_5663));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i13_2_lut (.I0(n3063), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_5664));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i15_2_lut (.I0(n3062), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_5665));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i28537_4_lut (.I0(baudrate[16]), .I1(n32019), .I2(baudrate[23]), 
            .I3(baudrate[31]), .O(n32832));
    defparam i28537_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2070_i17_2_lut (.I0(n3061), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_5666));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i19_2_lut (.I0(n3060), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_5667));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i28535_4_lut (.I0(baudrate[9]), .I1(n24_adj_5577), .I2(baudrate[21]), 
            .I3(baudrate[22]), .O(n32830));
    defparam i28535_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_2076 (.I0(n31917), .I1(n32057), .I2(n32019), 
            .I3(n32071), .O(n13122));
    defparam i1_4_lut_adj_2076.LUT_INIT = 16'hfffe;
    SB_LUT4 i28565_4_lut (.I0(n32794), .I1(n31837), .I2(n31839), .I3(n31835), 
            .O(n32860));
    defparam i28565_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i642_4_lut (.I0(n805), .I1(baudrate[1]), .I2(n294[19]), 
            .I3(baudrate[0]), .O(n961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i642_4_lut.LUT_INIT = 16'h9a6a;
    SB_LUT4 div_37_LessThan_2070_i31_2_lut (.I0(n3054), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5668));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i21_2_lut (.I0(n3059), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_5669));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30538_4_lut (.I0(n31_adj_5668), .I1(n19_adj_5667), .I2(n17_adj_5666), 
            .I3(n15_adj_5665), .O(n34842));
    defparam i30538_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_2077 (.I0(n32061), .I1(n32057), .I2(n31897), 
            .I3(n32053), .O(n13168));
    defparam i1_4_lut_adj_2077.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_2078 (.I0(n13168), .I1(n48_adj_5651), .I2(baudrate[0]), 
            .I3(GND_net), .O(n2240));
    defparam i1_3_lut_adj_2078.LUT_INIT = 16'hefef;
    SB_LUT4 div_37_i1592_3_lut (.I0(n2240), .I1(n6432[10]), .I2(n294[9]), 
            .I3(GND_net), .O(n2366));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1592_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31037_4_lut (.I0(n13_adj_5664), .I1(n11_adj_5663), .I2(n3065), 
            .I3(baudrate[2]), .O(n35341));
    defparam i31037_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i30614_4_lut (.I0(n32830), .I1(n32832), .I2(n31_adj_5489), 
            .I3(n31361), .O(n34370));   // verilog/uart_rx.v(119[33:55])
    defparam i30614_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i31262_4_lut (.I0(n19_adj_5667), .I1(n17_adj_5666), .I2(n15_adj_5665), 
            .I3(n35341), .O(n35566));
    defparam i31262_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31260_4_lut (.I0(n25_adj_5662), .I1(n23_adj_5661), .I2(n21_adj_5669), 
            .I3(n35566), .O(n35564));
    defparam i31260_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i30540_4_lut (.I0(n31_adj_5668), .I1(n29_adj_5660), .I2(n27_adj_5659), 
            .I3(n35564), .O(n34844));
    defparam i30540_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2070_i8_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3066), .I3(GND_net), .O(n8_adj_5670));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i8_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31336_3_lut (.I0(n8_adj_5670), .I1(baudrate[13]), .I2(n31_adj_5668), 
            .I3(GND_net), .O(n35640));   // verilog/uart_rx.v(119[33:55])
    defparam i31336_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31337_3_lut (.I0(n35640), .I1(baudrate[14]), .I2(n33_adj_5657), 
            .I3(GND_net), .O(n35641));   // verilog/uart_rx.v(119[33:55])
    defparam i31337_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4208_2_lut (.I0(n9509), .I1(n7913), .I2(GND_net), .I3(GND_net), 
            .O(n44_adj_5652));   // verilog/uart_rx.v(119[33:55])
    defparam i4208_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2070_i34_3_lut (.I0(n16_adj_5517), .I1(baudrate[17]), 
            .I2(n39_adj_5656), .I3(GND_net), .O(n34_adj_5671));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30534_4_lut (.I0(n37_adj_5658), .I1(n35_adj_5655), .I2(n33_adj_5657), 
            .I3(n34842), .O(n34838));
    defparam i30534_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31637_4_lut (.I0(n34_adj_5671), .I1(n14_adj_5516), .I2(n39_adj_5656), 
            .I3(n34834), .O(n35941));   // verilog/uart_rx.v(119[33:55])
    defparam i31637_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i30934_3_lut (.I0(n35641), .I1(baudrate[15]), .I2(n35_adj_5655), 
            .I3(GND_net), .O(n35238));   // verilog/uart_rx.v(119[33:55])
    defparam i30934_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1675_3_lut (.I0(n2366), .I1(n6458[10]), .I2(n294[8]), 
            .I3(GND_net), .O(n2489));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2164_1_lut (.I0(baudrate[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2164_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31338_3_lut (.I0(n10_adj_5515), .I1(baudrate[10]), .I2(n25_adj_5662), 
            .I3(GND_net), .O(n35642));   // verilog/uart_rx.v(119[33:55])
    defparam i31338_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2057_3_lut (.I0(n2948), .I1(n6588[13]), .I2(n294[3]), 
            .I3(GND_net), .O(n3056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2174_1_lut (.I0(baudrate[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n858));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2174_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31339_3_lut (.I0(n35642), .I1(baudrate[11]), .I2(n27_adj_5659), 
            .I3(GND_net), .O(n35643));   // verilog/uart_rx.v(119[33:55])
    defparam i31339_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2163_1_lut (.I0(baudrate[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2272));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2163_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31019_4_lut (.I0(n27_adj_5659), .I1(n25_adj_5662), .I2(n23_adj_5661), 
            .I3(n34852), .O(n35323));
    defparam i31019_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_2070_i20_3_lut (.I0(n12_adj_5518), .I1(baudrate[9]), 
            .I2(n23_adj_5661), .I3(GND_net), .O(n20_adj_5672));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30932_3_lut (.I0(n35643), .I1(baudrate[12]), .I2(n29_adj_5660), 
            .I3(GND_net), .O(n35236));   // verilog/uart_rx.v(119[33:55])
    defparam i30932_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31445_4_lut (.I0(n37_adj_5658), .I1(n35_adj_5655), .I2(n33_adj_5657), 
            .I3(n34844), .O(n35749));
    defparam i31445_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2056_3_lut (.I0(n2947), .I1(n6588[14]), .I2(n294[3]), 
            .I3(GND_net), .O(n3055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31716_4_lut (.I0(n35238), .I1(n35941), .I2(n39_adj_5656), 
            .I3(n34838), .O(n36020));   // verilog/uart_rx.v(119[33:55])
    defparam i31716_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1341_i37_2_lut (.I0(n1971), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5673));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31386_3_lut (.I0(n34_adj_5575), .I1(baudrate[5]), .I2(n37_adj_5424), 
            .I3(GND_net), .O(n35690));   // verilog/uart_rx.v(119[33:55])
    defparam i31386_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30889_3_lut (.I0(n35669), .I1(baudrate[8]), .I2(n43_adj_5425), 
            .I3(GND_net), .O(n35193));   // verilog/uart_rx.v(119[33:55])
    defparam i30889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31535_4_lut (.I0(n35193), .I1(n35690), .I2(n43_adj_5425), 
            .I3(n35321), .O(n35839));   // verilog/uart_rx.v(119[33:55])
    defparam i31535_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_1341_i35_2_lut (.I0(n1972), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5674));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31536_3_lut (.I0(n35839), .I1(baudrate[9]), .I2(n1694), .I3(GND_net), 
            .O(n35840));   // verilog/uart_rx.v(119[33:55])
    defparam i31536_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31224_4_lut (.I0(n35236), .I1(n20_adj_5672), .I2(n29_adj_5660), 
            .I3(n35323), .O(n35528));   // verilog/uart_rx.v(119[33:55])
    defparam i31224_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31742_4_lut (.I0(n35528), .I1(n36020), .I2(n39_adj_5656), 
            .I3(n35749), .O(n36046));   // verilog/uart_rx.v(119[33:55])
    defparam i31742_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1341_i41_2_lut (.I0(n1969), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5675));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31743_3_lut (.I0(n36046), .I1(baudrate[18]), .I2(n3049), 
            .I3(GND_net), .O(n36047));   // verilog/uart_rx.v(119[33:55])
    defparam i31743_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31739_3_lut (.I0(n36047), .I1(baudrate[19]), .I2(n3048), 
            .I3(GND_net), .O(n36043));   // verilog/uart_rx.v(119[33:55])
    defparam i31739_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31564_3_lut (.I0(n36043), .I1(baudrate[20]), .I2(n3047), 
            .I3(GND_net), .O(n35868));   // verilog/uart_rx.v(119[33:55])
    defparam i31564_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1341_i39_2_lut (.I0(n1970), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5676));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i29_2_lut (.I0(n1975), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5677));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_341_i48_4_lut (.I0(n34370), .I1(baudrate[2]), 
            .I2(n481_adj_5452), .I3(n32860), .O(n48_adj_5450));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_341_i48_4_lut.LUT_INIT = 16'h0c8e;
    SB_LUT4 div_37_LessThan_1341_i31_2_lut (.I0(n1974), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5678));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1587_3_lut (.I0(n2235), .I1(n6432[15]), .I2(n294[9]), 
            .I3(GND_net), .O(n2361));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i33_2_lut (.I0(n1973), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_5679));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i27_2_lut (.I0(n1976), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_5680));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30412_4_lut (.I0(n33_adj_5679), .I1(n31_adj_5678), .I2(n29_adj_5677), 
            .I3(n27_adj_5680), .O(n34716));
    defparam i30412_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1157_i48_3_lut (.I0(n35840), .I1(baudrate[10]), 
            .I2(n1693), .I3(GND_net), .O(n48_adj_5681));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_2079 (.I0(baudrate[11]), .I1(n31841), .I2(n31829), 
            .I3(baudrate[12]), .O(n31849));
    defparam i1_4_lut_adj_2079.LUT_INIT = 16'hfffe;
    SB_LUT4 i25211_1_lut_4_lut (.I0(n32117), .I1(n32119), .I2(n31999), 
            .I3(n32115), .O(n29474));
    defparam i25211_1_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_LessThan_1341_i38_3_lut (.I0(n30_adj_5514), .I1(baudrate[9]), 
            .I2(n41_adj_5675), .I3(GND_net), .O(n38_adj_5682));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i26_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1977), .I3(GND_net), .O(n26_adj_5683));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i26_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31511_3_lut (.I0(n26_adj_5683), .I1(baudrate[5]), .I2(n33_adj_5679), 
            .I3(GND_net), .O(n35815));   // verilog/uart_rx.v(119[33:55])
    defparam i31511_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31512_3_lut (.I0(n35815), .I1(baudrate[6]), .I2(n35_adj_5674), 
            .I3(GND_net), .O(n35816));   // verilog/uart_rx.v(119[33:55])
    defparam i31512_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30401_4_lut (.I0(n39_adj_5676), .I1(n37_adj_5673), .I2(n35_adj_5674), 
            .I3(n34716), .O(n34705));
    defparam i30401_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31665_4_lut (.I0(n38_adj_5682), .I1(n28_adj_5513), .I2(n41_adj_5675), 
            .I3(n34700), .O(n35969));   // verilog/uart_rx.v(119[33:55])
    defparam i31665_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31395_3_lut (.I0(n35816), .I1(baudrate[7]), .I2(n37_adj_5673), 
            .I3(GND_net), .O(n35699));   // verilog/uart_rx.v(119[33:55])
    defparam i31395_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31730_4_lut (.I0(n35699), .I1(n35969), .I2(n41_adj_5675), 
            .I3(n34705), .O(n36034));   // verilog/uart_rx.v(119[33:55])
    defparam i31730_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31816_2_lut_4_lut (.I0(n35928), .I1(baudrate[7]), .I2(n1261), 
            .I3(n32844), .O(n294[16]));   // verilog/uart_rx.v(119[33:55])
    defparam i31816_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1039_3_lut (.I0(n1408), .I1(n6276[23]), .I2(n294[15]), 
            .I3(GND_net), .O(n1552));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_2080 (.I0(n35928), .I1(baudrate[7]), .I2(n1261), 
            .I3(n31197), .O(n1415));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_2080.LUT_INIT = 16'h7100;
    SB_LUT4 i31731_3_lut (.I0(n36034), .I1(baudrate[10]), .I2(n1968), 
            .I3(GND_net), .O(n36035));   // verilog/uart_rx.v(119[33:55])
    defparam i31731_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31713_3_lut (.I0(n36035), .I1(baudrate[11]), .I2(n1967), 
            .I3(GND_net), .O(n36017));   // verilog/uart_rx.v(119[33:55])
    defparam i31713_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31690_3_lut (.I0(n36017), .I1(baudrate[12]), .I2(n1966), 
            .I3(GND_net), .O(n48_adj_5455));   // verilog/uart_rx.v(119[33:55])
    defparam i31690_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2167_1_lut (.I0(baudrate[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1742));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2167_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1506_3_lut (.I0(n2110), .I1(n6406[11]), .I2(n294[10]), 
            .I3(GND_net), .O(n2239));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1591_3_lut (.I0(n2239), .I1(n6432[11]), .I2(n294[9]), 
            .I3(GND_net), .O(n2365));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2171_1_lut (.I0(baudrate[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2171_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1674_3_lut (.I0(n2365), .I1(n6458[11]), .I2(n294[8]), 
            .I3(GND_net), .O(n2488));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1674_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2173_1_lut (.I0(baudrate[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2173_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2170_1_lut (.I0(baudrate[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1460));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2170_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_2081 (.I0(n31847), .I1(n13119), .I2(n31849), 
            .I3(n31845), .O(n13145));
    defparam i1_4_lut_adj_2081.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1134_3_lut (.I0(n1552), .I1(n6302[23]), .I2(n294[14]), 
            .I3(GND_net), .O(n1693));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1670_3_lut (.I0(n2361), .I1(n6458[15]), .I2(n294[8]), 
            .I3(GND_net), .O(n2484));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1670_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_2082 (.I0(n32021), .I1(n31999), .I2(baudrate[11]), 
            .I3(GND_net), .O(n32029));
    defparam i1_3_lut_adj_2082.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1227_3_lut (.I0(n1693), .I1(n6328[23]), .I2(n294[13]), 
            .I3(GND_net), .O(n1831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17811_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21638));
    defparam i17811_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30283_2_lut (.I0(baudrate[1]), .I1(n294[20]), .I2(GND_net), 
            .I3(GND_net), .O(n34587));   // verilog/uart_rx.v(119[33:55])
    defparam i30283_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i30663_4_lut (.I0(n13145), .I1(n34587), .I2(n48_adj_5450), 
            .I3(baudrate[0]), .O(n804));
    defparam i30663_4_lut.LUT_INIT = 16'h3633;
    SB_LUT4 i1_3_lut_adj_2083 (.I0(n32856), .I1(n48_adj_5433), .I2(baudrate[0]), 
            .I3(GND_net), .O(n962));
    defparam i1_3_lut_adj_2083.LUT_INIT = 16'h1010;
    SB_LUT4 i1_3_lut_adj_2084 (.I0(n31907), .I1(n31_adj_5489), .I2(n31897), 
            .I3(GND_net), .O(n31811));
    defparam i1_3_lut_adj_2084.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_450_i46_4_lut (.I0(n34372), .I1(baudrate[2]), 
            .I2(n644), .I3(n48_adj_5450), .O(n46_adj_5684));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i46_4_lut.LUT_INIT = 16'h0c8e;
    SB_LUT4 div_37_LessThan_450_i48_3_lut (.I0(n46_adj_5684), .I1(baudrate[3]), 
            .I2(n643), .I3(GND_net), .O(n48_adj_5496));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_2085 (.I0(baudrate[28]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n31917));
    defparam i1_2_lut_adj_2085.LUT_INIT = 16'heeee;
    SB_LUT4 i4372_2_lut (.I0(n9513), .I1(n8077), .I2(GND_net), .I3(GND_net), 
            .O(n42_adj_5484));   // verilog/uart_rx.v(119[33:55])
    defparam i4372_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_2086 (.I0(baudrate[6]), .I1(baudrate[7]), .I2(GND_net), 
            .I3(GND_net), .O(n22_adj_5654));
    defparam i1_2_lut_adj_2086.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_2087 (.I0(n32029), .I1(n32031), .I2(n32019), 
            .I3(n25_adj_5625), .O(n13181));
    defparam i1_4_lut_adj_2087.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_2088 (.I0(n13181), .I1(n48_adj_5681), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1841));
    defparam i1_3_lut_adj_2088.LUT_INIT = 16'hefef;
    SB_LUT4 i31843_2_lut_4_lut (.I0(n36015), .I1(baudrate[13]), .I2(n2098), 
            .I3(n13168), .O(n294[10]));   // verilog/uart_rx.v(119[33:55])
    defparam i31843_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i2162_1_lut (.I0(baudrate[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2397));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2162_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2055_3_lut (.I0(n2946), .I1(n6588[15]), .I2(n294[3]), 
            .I3(GND_net), .O(n3054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1981_3_lut (.I0(n2834), .I1(n6562[16]), .I2(n294[4]), 
            .I3(GND_net), .O(n2945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2161_1_lut (.I0(baudrate[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2519));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2161_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2054_3_lut (.I0(n2945), .I1(n6588[16]), .I2(n294[3]), 
            .I3(GND_net), .O(n3053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2169_1_lut (.I0(baudrate[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1459));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2169_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1250_i35_2_lut (.I0(n1837), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_5685));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1328_3_lut (.I0(n1841), .I1(n6354[13]), .I2(n294[12]), 
            .I3(GND_net), .O(n1976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i37_2_lut (.I0(n1836), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_5686));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i39_2_lut (.I0(n1835), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_5410));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i41_2_lut (.I0(n1834), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_5687));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i31_2_lut (.I0(n1839), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_5688));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1417_3_lut (.I0(n1976), .I1(n6380[13]), .I2(n294[11]), 
            .I3(GND_net), .O(n2108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i43_2_lut (.I0(n1833), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_5409));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i29_2_lut (.I0(n1840), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_5689));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30470_4_lut (.I0(n35_adj_5685), .I1(n33), .I2(n31_adj_5688), 
            .I3(n29_adj_5689), .O(n34774));
    defparam i30470_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i28548_1_lut (.I0(n32842), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n29524));
    defparam i28548_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1504_3_lut (.I0(n2108), .I1(n6406[13]), .I2(n294[10]), 
            .I3(GND_net), .O(n2237));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i40_3_lut (.I0(n32_adj_5512), .I1(baudrate[9]), 
            .I2(n43_adj_5409), .I3(GND_net), .O(n40));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i28_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1841), .I3(GND_net), .O(n28_adj_5690));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i28_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31515_3_lut (.I0(n28_adj_5690), .I1(baudrate[5]), .I2(n35_adj_5685), 
            .I3(GND_net), .O(n35819));   // verilog/uart_rx.v(119[33:55])
    defparam i31515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31516_3_lut (.I0(n35819), .I1(baudrate[6]), .I2(n37_adj_5686), 
            .I3(GND_net), .O(n35820));   // verilog/uart_rx.v(119[33:55])
    defparam i31516_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28552_1_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[8]), .I2(n32842), 
            .I3(GND_net), .O(n29532));
    defparam i28552_1_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 div_37_i1589_3_lut (.I0(n2237), .I1(n6432[13]), .I2(n294[9]), 
            .I3(GND_net), .O(n2363));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1589_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30438_4_lut (.I0(n41_adj_5687), .I1(n39_adj_5410), .I2(n37_adj_5686), 
            .I3(n34774), .O(n34742));
    defparam i30438_4_lut.LUT_INIT = 16'haaab;
    
endmodule
//
// Verilog Description of module \quadrature_decoder(0) 
//

module \quadrature_decoder(0)  (ENCODER1_B_N_keep, n1292, ENCODER1_A_N_keep, 
            \a_new[1] , \b_new[1] , debounce_cnt_N_4805, b_prev, GND_net, 
            position_31__N_4808, \encoder1_position[0] , n1299, n1301, 
            n1303, n1305, n1307, n1309, n1311, n1313, \encoder1_position[23] , 
            \encoder1_position[22] , \encoder1_position[21] , \encoder1_position[20] , 
            \encoder1_position[19] , \encoder1_position[18] , \encoder1_position[17] , 
            \encoder1_position[16] , \encoder1_position[15] , \encoder1_position[14] , 
            \encoder1_position[13] , \encoder1_position[12] , \encoder1_position[11] , 
            \encoder1_position[10] , \encoder1_position[9] , \encoder1_position[8] , 
            \encoder1_position[7] , \encoder1_position[6] , \encoder1_position[5] , 
            \encoder1_position[4] , \encoder1_position[3] , \encoder1_position[2] , 
            \encoder1_position[1] , a_prev, VCC_net, n15670, n15669, 
            n15668, n1297) /* synthesis lattice_noprune=1 */ ;
    input ENCODER1_B_N_keep;
    input n1292;
    input ENCODER1_A_N_keep;
    output \a_new[1] ;
    output \b_new[1] ;
    output debounce_cnt_N_4805;
    output b_prev;
    input GND_net;
    output position_31__N_4808;
    output \encoder1_position[0] ;
    output n1299;
    output n1301;
    output n1303;
    output n1305;
    output n1307;
    output n1309;
    output n1311;
    output n1313;
    output \encoder1_position[23] ;
    output \encoder1_position[22] ;
    output \encoder1_position[21] ;
    output \encoder1_position[20] ;
    output \encoder1_position[19] ;
    output \encoder1_position[18] ;
    output \encoder1_position[17] ;
    output \encoder1_position[16] ;
    output \encoder1_position[15] ;
    output \encoder1_position[14] ;
    output \encoder1_position[13] ;
    output \encoder1_position[12] ;
    output \encoder1_position[11] ;
    output \encoder1_position[10] ;
    output \encoder1_position[9] ;
    output \encoder1_position[8] ;
    output \encoder1_position[7] ;
    output \encoder1_position[6] ;
    output \encoder1_position[5] ;
    output \encoder1_position[4] ;
    output \encoder1_position[3] ;
    output \encoder1_position[2] ;
    output \encoder1_position[1] ;
    output a_prev;
    input VCC_net;
    input n15670;
    input n15669;
    input n15668;
    output n1297;
    
    wire [1:0]b_new;   // vhdl/quadrature_decoder.vhd(40[9:14])
    wire [1:0]a_new;   // vhdl/quadrature_decoder.vhd(39[9:14])
    
    wire direction_N_4812;
    wire [31:0]n133;
    
    wire n24681, n24680, n24679, n24678, n24677, n24676, n24675, 
        n24674, n24673, n24672, n24671, n24670, n24669, n24668, 
        n24667, n24666, n24665, n24664, n24663, n24662, n24661, 
        n24660, n24659, n24658, n24657, n24656, n24655, n24654, 
        n24653, n24652, n24651;
    
    SB_DFF b_new_i0 (.Q(b_new[0]), .C(n1292), .D(ENCODER1_B_N_keep));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF a_new_i0 (.Q(a_new[0]), .C(n1292), .D(ENCODER1_A_N_keep));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_LUT4 debounce_cnt_I_1945_4_lut (.I0(a_new[0]), .I1(b_new[0]), .I2(\a_new[1] ), 
            .I3(\b_new[1] ), .O(debounce_cnt_N_4805));   // vhdl/quadrature_decoder.vhd(53[8:58])
    defparam debounce_cnt_I_1945_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 b_prev_I_0_48_2_lut (.I0(b_prev), .I1(\a_new[1] ), .I2(GND_net), 
            .I3(GND_net), .O(direction_N_4812));   // vhdl/quadrature_decoder.vhd(64[18:37])
    defparam b_prev_I_0_48_2_lut.LUT_INIT = 16'h9999;
    SB_DFFE position_1584__i0 (.Q(\encoder1_position[0] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[0]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i31 (.Q(n1299), .C(n1292), .E(position_31__N_4808), 
            .D(n133[31]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i30 (.Q(n1301), .C(n1292), .E(position_31__N_4808), 
            .D(n133[30]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i29 (.Q(n1303), .C(n1292), .E(position_31__N_4808), 
            .D(n133[29]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i28 (.Q(n1305), .C(n1292), .E(position_31__N_4808), 
            .D(n133[28]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i27 (.Q(n1307), .C(n1292), .E(position_31__N_4808), 
            .D(n133[27]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i26 (.Q(n1309), .C(n1292), .E(position_31__N_4808), 
            .D(n133[26]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i25 (.Q(n1311), .C(n1292), .E(position_31__N_4808), 
            .D(n133[25]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i24 (.Q(n1313), .C(n1292), .E(position_31__N_4808), 
            .D(n133[24]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i23 (.Q(\encoder1_position[23] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[23]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i22 (.Q(\encoder1_position[22] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[22]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i21 (.Q(\encoder1_position[21] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[21]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i20 (.Q(\encoder1_position[20] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[20]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i19 (.Q(\encoder1_position[19] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[19]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i18 (.Q(\encoder1_position[18] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[18]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i17 (.Q(\encoder1_position[17] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[17]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i16 (.Q(\encoder1_position[16] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[16]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i15 (.Q(\encoder1_position[15] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[15]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i14 (.Q(\encoder1_position[14] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[14]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i13 (.Q(\encoder1_position[13] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[13]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i12 (.Q(\encoder1_position[12] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[12]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i11 (.Q(\encoder1_position[11] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[11]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i10 (.Q(\encoder1_position[10] ), .C(n1292), 
            .E(position_31__N_4808), .D(n133[10]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i9 (.Q(\encoder1_position[9] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[9]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i8 (.Q(\encoder1_position[8] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[8]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i7 (.Q(\encoder1_position[7] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[7]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i6 (.Q(\encoder1_position[6] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[6]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i5 (.Q(\encoder1_position[5] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[5]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i4 (.Q(\encoder1_position[4] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[4]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i3 (.Q(\encoder1_position[3] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[3]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i2 (.Q(\encoder1_position[2] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[2]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_DFFE position_1584__i1 (.Q(\encoder1_position[1] ), .C(n1292), .E(position_31__N_4808), 
            .D(n133[1]));   // vhdl/quadrature_decoder.vhd(62[4] 70[11])
    SB_LUT4 position_31__I_1946_4_lut (.I0(a_prev), .I1(b_prev), .I2(\a_new[1] ), 
            .I3(\b_new[1] ), .O(position_31__N_4808));   // vhdl/quadrature_decoder.vhd(63[11:57])
    defparam position_31__I_1946_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 position_1584_add_4_33_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1299), .I3(n24681), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 position_1584_add_4_32_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1301), .I3(n24680), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_32 (.CI(n24680), .I0(direction_N_4812), 
            .I1(n1301), .CO(n24681));
    SB_LUT4 position_1584_add_4_31_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1303), .I3(n24679), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_31 (.CI(n24679), .I0(direction_N_4812), 
            .I1(n1303), .CO(n24680));
    SB_LUT4 position_1584_add_4_30_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1305), .I3(n24678), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_30 (.CI(n24678), .I0(direction_N_4812), 
            .I1(n1305), .CO(n24679));
    SB_LUT4 position_1584_add_4_29_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1307), .I3(n24677), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_29 (.CI(n24677), .I0(direction_N_4812), 
            .I1(n1307), .CO(n24678));
    SB_LUT4 position_1584_add_4_28_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1309), .I3(n24676), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_28 (.CI(n24676), .I0(direction_N_4812), 
            .I1(n1309), .CO(n24677));
    SB_LUT4 position_1584_add_4_27_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1311), .I3(n24675), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_27 (.CI(n24675), .I0(direction_N_4812), 
            .I1(n1311), .CO(n24676));
    SB_LUT4 position_1584_add_4_26_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(n1313), .I3(n24674), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_26 (.CI(n24674), .I0(direction_N_4812), 
            .I1(n1313), .CO(n24675));
    SB_LUT4 position_1584_add_4_25_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[23] ), .I3(n24673), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_25 (.CI(n24673), .I0(direction_N_4812), 
            .I1(\encoder1_position[23] ), .CO(n24674));
    SB_LUT4 position_1584_add_4_24_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[22] ), .I3(n24672), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_24 (.CI(n24672), .I0(direction_N_4812), 
            .I1(\encoder1_position[22] ), .CO(n24673));
    SB_LUT4 position_1584_add_4_23_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[21] ), .I3(n24671), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_23 (.CI(n24671), .I0(direction_N_4812), 
            .I1(\encoder1_position[21] ), .CO(n24672));
    SB_LUT4 position_1584_add_4_22_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[20] ), .I3(n24670), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_22 (.CI(n24670), .I0(direction_N_4812), 
            .I1(\encoder1_position[20] ), .CO(n24671));
    SB_LUT4 position_1584_add_4_21_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[19] ), .I3(n24669), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_21 (.CI(n24669), .I0(direction_N_4812), 
            .I1(\encoder1_position[19] ), .CO(n24670));
    SB_LUT4 position_1584_add_4_20_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[18] ), .I3(n24668), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_20 (.CI(n24668), .I0(direction_N_4812), 
            .I1(\encoder1_position[18] ), .CO(n24669));
    SB_LUT4 position_1584_add_4_19_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[17] ), .I3(n24667), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_19 (.CI(n24667), .I0(direction_N_4812), 
            .I1(\encoder1_position[17] ), .CO(n24668));
    SB_LUT4 position_1584_add_4_18_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[16] ), .I3(n24666), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_18 (.CI(n24666), .I0(direction_N_4812), 
            .I1(\encoder1_position[16] ), .CO(n24667));
    SB_LUT4 position_1584_add_4_17_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[15] ), .I3(n24665), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_17 (.CI(n24665), .I0(direction_N_4812), 
            .I1(\encoder1_position[15] ), .CO(n24666));
    SB_LUT4 position_1584_add_4_16_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[14] ), .I3(n24664), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_16 (.CI(n24664), .I0(direction_N_4812), 
            .I1(\encoder1_position[14] ), .CO(n24665));
    SB_LUT4 position_1584_add_4_15_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[13] ), .I3(n24663), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_15 (.CI(n24663), .I0(direction_N_4812), 
            .I1(\encoder1_position[13] ), .CO(n24664));
    SB_LUT4 position_1584_add_4_14_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[12] ), .I3(n24662), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_14 (.CI(n24662), .I0(direction_N_4812), 
            .I1(\encoder1_position[12] ), .CO(n24663));
    SB_LUT4 position_1584_add_4_13_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[11] ), .I3(n24661), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_13 (.CI(n24661), .I0(direction_N_4812), 
            .I1(\encoder1_position[11] ), .CO(n24662));
    SB_LUT4 position_1584_add_4_12_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[10] ), .I3(n24660), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_12 (.CI(n24660), .I0(direction_N_4812), 
            .I1(\encoder1_position[10] ), .CO(n24661));
    SB_LUT4 position_1584_add_4_11_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[9] ), .I3(n24659), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_11 (.CI(n24659), .I0(direction_N_4812), 
            .I1(\encoder1_position[9] ), .CO(n24660));
    SB_LUT4 position_1584_add_4_10_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[8] ), .I3(n24658), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_10 (.CI(n24658), .I0(direction_N_4812), 
            .I1(\encoder1_position[8] ), .CO(n24659));
    SB_LUT4 position_1584_add_4_9_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[7] ), .I3(n24657), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_9 (.CI(n24657), .I0(direction_N_4812), 
            .I1(\encoder1_position[7] ), .CO(n24658));
    SB_LUT4 position_1584_add_4_8_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[6] ), .I3(n24656), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_8 (.CI(n24656), .I0(direction_N_4812), 
            .I1(\encoder1_position[6] ), .CO(n24657));
    SB_LUT4 position_1584_add_4_7_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[5] ), .I3(n24655), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_7 (.CI(n24655), .I0(direction_N_4812), 
            .I1(\encoder1_position[5] ), .CO(n24656));
    SB_LUT4 position_1584_add_4_6_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[4] ), .I3(n24654), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_6 (.CI(n24654), .I0(direction_N_4812), 
            .I1(\encoder1_position[4] ), .CO(n24655));
    SB_LUT4 position_1584_add_4_5_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[3] ), .I3(n24653), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_5 (.CI(n24653), .I0(direction_N_4812), 
            .I1(\encoder1_position[3] ), .CO(n24654));
    SB_LUT4 position_1584_add_4_4_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[2] ), .I3(n24652), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_4 (.CI(n24652), .I0(direction_N_4812), 
            .I1(\encoder1_position[2] ), .CO(n24653));
    SB_LUT4 position_1584_add_4_3_lut (.I0(GND_net), .I1(direction_N_4812), 
            .I2(\encoder1_position[1] ), .I3(n24651), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_3 (.CI(n24651), .I0(direction_N_4812), 
            .I1(\encoder1_position[1] ), .CO(n24652));
    SB_LUT4 position_1584_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(\encoder1_position[0] ), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam position_1584_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY position_1584_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(\encoder1_position[0] ), 
            .CO(n24651));
    SB_DFF a_prev_40 (.Q(a_prev), .C(n1292), .D(n15670));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF b_prev_41 (.Q(b_prev), .C(n1292), .D(n15669));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF direction_42 (.Q(n1297), .C(n1292), .D(n15668));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF a_new_i1 (.Q(\a_new[1] ), .C(n1292), .D(a_new[0]));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    SB_DFF b_new_i1 (.Q(\b_new[1] ), .C(n1292), .D(b_new[0]));   // vhdl/quadrature_decoder.vhd(48[3] 72[10])
    
endmodule
//
// Verilog Description of module TLI4970
//

module TLI4970 (\state[1] , n16613, \current[1] , n16612, \current[2] , 
            n16611, \current[3] , n16610, \current[4] , n16609, \current[5] , 
            n16608, \current[6] , n16607, \current[7] , n16606, \current[8] , 
            n16605, \current[9] , n16604, \current[10] , n16603, \current[11] , 
            \data[12] , GND_net, clk16MHz, n6, \state[0] , n15771, 
            \data[15] , n15764, n15761, \data[11] , n9, clk_out, 
            n15758, CS_c, n15755, \data[10] , n15752, \current[0] , 
            n15741, \data[9] , n15, n16304, \data[0] , state_7__N_5291, 
            VCC_net, n14347, n15665, \data[8] , n15664, \data[7] , 
            n15663, \data[6] , n15662, \data[5] , n15661, \data[4] , 
            n15660, \data[3] , n15659, \data[2] , n15658, \data[1] , 
            n7, n13045, \current[15] , n6_adj_1, n5, n6_adj_2, n13073, 
            n21548, n21550, n4, n13038, CS_CLK_c, n13052, n13049) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \state[1] ;
    input n16613;
    output \current[1] ;
    input n16612;
    output \current[2] ;
    input n16611;
    output \current[3] ;
    input n16610;
    output \current[4] ;
    input n16609;
    output \current[5] ;
    input n16608;
    output \current[6] ;
    input n16607;
    output \current[7] ;
    input n16606;
    output \current[8] ;
    input n16605;
    output \current[9] ;
    input n16604;
    output \current[10] ;
    input n16603;
    output \current[11] ;
    output \data[12] ;
    input GND_net;
    input clk16MHz;
    output n6;
    output \state[0] ;
    input n15771;
    output \data[15] ;
    input n15764;
    input n15761;
    output \data[11] ;
    input n9;
    output clk_out;
    input n15758;
    output CS_c;
    input n15755;
    output \data[10] ;
    input n15752;
    output \current[0] ;
    input n15741;
    output \data[9] ;
    output n15;
    input n16304;
    output \data[0] ;
    output state_7__N_5291;
    input VCC_net;
    output n14347;
    input n15665;
    output \data[8] ;
    input n15664;
    output \data[7] ;
    input n15663;
    output \data[6] ;
    input n15662;
    output \data[5] ;
    input n15661;
    output \data[4] ;
    input n15660;
    output \data[3] ;
    input n15659;
    output \data[2] ;
    input n15658;
    output \data[1] ;
    output n7;
    output n13045;
    output \current[15] ;
    output n6_adj_1;
    output n5;
    output n6_adj_2;
    output n13073;
    output n21548;
    output n21550;
    output n4;
    output n13038;
    output CS_CLK_c;
    output n13052;
    output n13049;
    
    wire clk_slow /* synthesis is_clock=1, SET_AS_NETWORK=\tli/clk_slow */ ;   // verilog/tli4970.v(11[7:15])
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[6:14])
    
    wire n8195, n14475, n15320;
    wire [1:0]n1366;
    
    wire clk_slow_N_5204;
    wire [7:0]bit_counter;   // verilog/tli4970.v(26[13:24])
    
    wire n4873, n34358, n10440, n34359, n10438, n34363, n10436;
    wire [7:0]counter;   // verilog/tli4970.v(12[13:20])
    
    wire clk_slow_N_5205, n21818;
    wire [7:0]n47;
    
    wire n14402;
    wire [11:0]n53;
    wire [15:0]delay_counter;   // verilog/tli4970.v(28[14:27])
    
    wire delay_counter_15__N_5286;
    wire [2:0]n17;
    wire [7:0]n37;
    
    wire n15583, n24732, n24731, n24730, n24729, n24728, n24727, 
        n24726, n24725, n24724, n24723, n24722, n24721, n24720, 
        n24688, n24687, n24686, n24685, n24684, n24683, n24682, 
        n8, n12, n10, n4_c;
    
    SB_DFFNESR state_i1 (.Q(\state[1] ), .C(clk_slow), .E(n14475), .D(n8195), 
            .R(n15320));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i2 (.Q(\current[1] ), .C(clk_slow), .D(n16613));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i3 (.Q(\current[2] ), .C(clk_slow), .D(n16612));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i4 (.Q(\current[3] ), .C(clk_slow), .D(n16611));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i5 (.Q(\current[4] ), .C(clk_slow), .D(n16610));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i6 (.Q(\current[5] ), .C(clk_slow), .D(n16609));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i7 (.Q(\current[6] ), .C(clk_slow), .D(n16608));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i8 (.Q(\current[7] ), .C(clk_slow), .D(n16607));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i9 (.Q(\current[8] ), .C(clk_slow), .D(n16606));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i10 (.Q(\current[9] ), .C(clk_slow), .D(n16605));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i11 (.Q(\current[10] ), .C(clk_slow), .D(n16604));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i12 (.Q(\current[11] ), .C(clk_slow), .D(n16603));   // verilog/tli4970.v(35[10] 68[6])
    SB_LUT4 i2104_1_lut (.I0(\data[12] ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1366[0]));
    defparam i2104_1_lut.LUT_INIT = 16'h5555;
    SB_DFF clk_slow_63 (.Q(clk_slow), .C(clk16MHz), .D(clk_slow_N_5204));   // verilog/tli4970.v(13[10] 19[6])
    SB_LUT4 equal_300_i6_2_lut (.I0(bit_counter[2]), .I1(bit_counter[3]), 
            .I2(GND_net), .I3(GND_net), .O(n6));   // verilog/tli4970.v(54[9:26])
    defparam equal_300_i6_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1547_1_lut (.I0(\state[0] ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4873));   // verilog/tli4970.v(35[10] 68[6])
    defparam i1547_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i6627_3_lut (.I0(\state[0] ), .I1(n34358), .I2(\state[1] ), 
            .I3(GND_net), .O(n10440));   // verilog/tli4970.v(55[24:39])
    defparam i6627_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6625_3_lut (.I0(\state[0] ), .I1(n34359), .I2(\state[1] ), 
            .I3(GND_net), .O(n10438));   // verilog/tli4970.v(55[24:39])
    defparam i6625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6623_3_lut (.I0(\state[0] ), .I1(n34363), .I2(\state[1] ), 
            .I3(GND_net), .O(n10436));   // verilog/tli4970.v(55[24:39])
    defparam i6623_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFN data_i15 (.Q(\data[15] ), .C(clk_slow), .D(n15771));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i12 (.Q(\data[12] ), .C(clk_slow), .D(n15764));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i11 (.Q(\data[11] ), .C(clk_slow), .D(n15761));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN clk_out_67 (.Q(clk_out), .C(clk_slow), .D(n9));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN slave_select_66 (.Q(CS_c), .C(clk_slow), .D(n15758));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i10 (.Q(\data[10] ), .C(clk_slow), .D(n15755));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN current__i1 (.Q(\current[0] ), .C(clk_slow), .D(n15752));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i9 (.Q(\data[9] ), .C(clk_slow), .D(n15741));   // verilog/tli4970.v(35[10] 68[6])
    SB_LUT4 i2086_3_lut (.I0(counter[0]), .I1(counter[2]), .I2(counter[1]), 
            .I3(GND_net), .O(clk_slow_N_5205));
    defparam i2086_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 clk_slow_I_0_72_2_lut (.I0(clk_slow), .I1(clk_slow_N_5205), 
            .I2(GND_net), .I3(GND_net), .O(clk_slow_N_5204));   // verilog/tli4970.v(15[5] 18[8])
    defparam clk_slow_I_0_72_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31773_2_lut (.I0(n15), .I1(\state[0] ), .I2(GND_net), .I3(GND_net), 
            .O(n21818));
    defparam i31773_2_lut.LUT_INIT = 16'h1111;
    SB_DFFNE bit_counter_1585__i0 (.Q(bit_counter[0]), .C(clk_slow), .E(n14402), 
            .D(n47[0]));   // verilog/tli4970.v(55[24:39])
    SB_DFFNSR delay_counter_1588_1589__i1 (.Q(delay_counter[0]), .C(clk_slow), 
            .D(n53[0]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFSR counter_1590_1591__i1 (.Q(counter[0]), .C(clk16MHz), .D(n17[0]), 
            .R(clk_slow_N_5205));   // verilog/tli4970.v(14[16:27])
    SB_DFFNESS state_i0 (.Q(\state[0] ), .C(clk_slow), .E(n14475), .D(n21818), 
            .S(n15320));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFSR counter_1590_1591__i3 (.Q(counter[2]), .C(clk16MHz), .D(n17[2]), 
            .R(clk_slow_N_5205));   // verilog/tli4970.v(14[16:27])
    SB_DFFSR counter_1590_1591__i2 (.Q(counter[1]), .C(clk16MHz), .D(n17[1]), 
            .R(clk_slow_N_5205));   // verilog/tli4970.v(14[16:27])
    SB_DFFNSR delay_counter_1588_1589__i12 (.Q(delay_counter[11]), .C(clk_slow), 
            .D(n53[11]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i11 (.Q(delay_counter[10]), .C(clk_slow), 
            .D(n53[10]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i10 (.Q(delay_counter[9]), .C(clk_slow), 
            .D(n53[9]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i9 (.Q(delay_counter[8]), .C(clk_slow), 
            .D(n53[8]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i8 (.Q(delay_counter[7]), .C(clk_slow), 
            .D(n53[7]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i7 (.Q(delay_counter[6]), .C(clk_slow), 
            .D(n53[6]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i6 (.Q(delay_counter[5]), .C(clk_slow), 
            .D(n53[5]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i5 (.Q(delay_counter[4]), .C(clk_slow), 
            .D(n53[4]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i4 (.Q(delay_counter[3]), .C(clk_slow), 
            .D(n53[3]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i3 (.Q(delay_counter[2]), .C(clk_slow), 
            .D(n53[2]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFNSR delay_counter_1588_1589__i2 (.Q(delay_counter[1]), .C(clk_slow), 
            .D(n53[1]), .R(delay_counter_15__N_5286));   // verilog/tli4970.v(40[24:39])
    SB_DFFN data_i0 (.Q(\data[0] ), .C(clk_slow), .D(n16304));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFNE bit_counter_1585__i3 (.Q(bit_counter[3]), .C(clk_slow), .E(n14402), 
            .D(n10436));   // verilog/tli4970.v(55[24:39])
    SB_DFFNE bit_counter_1585__i2 (.Q(bit_counter[2]), .C(clk_slow), .E(n14402), 
            .D(n10438));   // verilog/tli4970.v(55[24:39])
    SB_DFFNE bit_counter_1585__i1 (.Q(bit_counter[1]), .C(clk_slow), .E(n14402), 
            .D(n10440));   // verilog/tli4970.v(55[24:39])
    SB_DFFNESR bit_counter_1585__i4 (.Q(bit_counter[4]), .C(clk_slow), .E(n14402), 
            .D(n37[4]), .R(n15583));   // verilog/tli4970.v(55[24:39])
    SB_DFFNESR bit_counter_1585__i5 (.Q(bit_counter[5]), .C(clk_slow), .E(n14402), 
            .D(n37[5]), .R(n15583));   // verilog/tli4970.v(55[24:39])
    SB_DFFNESR bit_counter_1585__i6 (.Q(bit_counter[6]), .C(clk_slow), .E(n14402), 
            .D(n37[6]), .R(n15583));   // verilog/tli4970.v(55[24:39])
    SB_DFFNESR bit_counter_1585__i7 (.Q(bit_counter[7]), .C(clk_slow), .E(n14402), 
            .D(n37[7]), .R(n15583));   // verilog/tli4970.v(55[24:39])
    SB_LUT4 i10626_2_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n14402));
    defparam i10626_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 bit_counter_1585_mux_6_i1_4_lut (.I0(n37[0]), .I1(\state[1] ), 
            .I2(state_7__N_5291), .I3(\state[0] ), .O(n47[0]));   // verilog/tli4970.v(55[24:39])
    defparam bit_counter_1585_mux_6_i1_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 counter_1590_1591_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter[2]), 
            .I3(n24732), .O(n17[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1590_1591_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_1590_1591_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter[1]), 
            .I3(n24731), .O(n17[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1590_1591_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_1590_1591_add_4_3 (.CI(n24731), .I0(GND_net), .I1(counter[1]), 
            .CO(n24732));
    SB_LUT4 counter_1590_1591_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter[0]), 
            .I3(VCC_net), .O(n17[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_1590_1591_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_1590_1591_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter[0]), 
            .CO(n24731));
    SB_LUT4 delay_counter_1588_1589_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[11]), .I3(n24730), .O(n53[11])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 delay_counter_1588_1589_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[10]), .I3(n24729), .O(n53[10])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_12 (.CI(n24729), .I0(GND_net), 
            .I1(delay_counter[10]), .CO(n24730));
    SB_LUT4 delay_counter_1588_1589_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[9]), .I3(n24728), .O(n53[9])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_11 (.CI(n24728), .I0(GND_net), 
            .I1(delay_counter[9]), .CO(n24729));
    SB_LUT4 delay_counter_1588_1589_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[8]), .I3(n24727), .O(n53[8])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_10 (.CI(n24727), .I0(GND_net), 
            .I1(delay_counter[8]), .CO(n24728));
    SB_LUT4 delay_counter_1588_1589_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[7]), .I3(n24726), .O(n53[7])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_9 (.CI(n24726), .I0(GND_net), 
            .I1(delay_counter[7]), .CO(n24727));
    SB_LUT4 delay_counter_1588_1589_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[6]), .I3(n24725), .O(n53[6])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_8 (.CI(n24725), .I0(GND_net), 
            .I1(delay_counter[6]), .CO(n24726));
    SB_LUT4 delay_counter_1588_1589_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[5]), .I3(n24724), .O(n53[5])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_7 (.CI(n24724), .I0(GND_net), 
            .I1(delay_counter[5]), .CO(n24725));
    SB_LUT4 delay_counter_1588_1589_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[4]), .I3(n24723), .O(n53[4])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_6 (.CI(n24723), .I0(GND_net), 
            .I1(delay_counter[4]), .CO(n24724));
    SB_LUT4 delay_counter_1588_1589_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[3]), .I3(n24722), .O(n53[3])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_5 (.CI(n24722), .I0(GND_net), 
            .I1(delay_counter[3]), .CO(n24723));
    SB_LUT4 delay_counter_1588_1589_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[2]), .I3(n24721), .O(n53[2])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_4 (.CI(n24721), .I0(GND_net), 
            .I1(delay_counter[2]), .CO(n24722));
    SB_LUT4 delay_counter_1588_1589_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[1]), .I3(n24720), .O(n53[1])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_3 (.CI(n24720), .I0(GND_net), 
            .I1(delay_counter[1]), .CO(n24721));
    SB_LUT4 delay_counter_1588_1589_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(delay_counter[0]), .I3(VCC_net), .O(n53[0])) /* synthesis syn_instantiated=1 */ ;
    defparam delay_counter_1588_1589_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY delay_counter_1588_1589_add_4_2 (.CI(VCC_net), .I0(GND_net), 
            .I1(delay_counter[0]), .CO(n24720));
    SB_LUT4 bit_counter_1585_add_4_9_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[7]), 
            .I3(n24688), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_counter_1585_add_4_8_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[6]), 
            .I3(n24687), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_counter_1585_add_4_8 (.CI(n24687), .I0(VCC_net), .I1(bit_counter[6]), 
            .CO(n24688));
    SB_LUT4 bit_counter_1585_add_4_7_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[5]), 
            .I3(n24686), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_counter_1585_add_4_7 (.CI(n24686), .I0(VCC_net), .I1(bit_counter[5]), 
            .CO(n24687));
    SB_LUT4 bit_counter_1585_add_4_6_lut (.I0(GND_net), .I1(VCC_net), .I2(bit_counter[4]), 
            .I3(n24685), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_counter_1585_add_4_6 (.CI(n24685), .I0(VCC_net), .I1(bit_counter[4]), 
            .CO(n24686));
    SB_LUT4 bit_counter_1585_add_4_5_lut (.I0(n4873), .I1(VCC_net), .I2(bit_counter[3]), 
            .I3(n24684), .O(n34363)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY bit_counter_1585_add_4_5 (.CI(n24684), .I0(VCC_net), .I1(bit_counter[3]), 
            .CO(n24685));
    SB_LUT4 bit_counter_1585_add_4_4_lut (.I0(n4873), .I1(VCC_net), .I2(bit_counter[2]), 
            .I3(n24683), .O(n34359)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY bit_counter_1585_add_4_4 (.CI(n24683), .I0(VCC_net), .I1(bit_counter[2]), 
            .CO(n24684));
    SB_LUT4 bit_counter_1585_add_4_3_lut (.I0(n4873), .I1(VCC_net), .I2(bit_counter[1]), 
            .I3(n24682), .O(n34358)) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY bit_counter_1585_add_4_3 (.CI(n24682), .I0(VCC_net), .I1(bit_counter[1]), 
            .CO(n24683));
    SB_LUT4 bit_counter_1585_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_counter[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_counter_1585_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_counter_1585_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_counter[0]), 
            .CO(n24682));
    SB_LUT4 i31784_3_lut (.I0(\data[15] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n14347));
    defparam i31784_3_lut.LUT_INIT = 16'h4040;
    SB_DFFN data_i8 (.Q(\data[8] ), .C(clk_slow), .D(n15665));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i7 (.Q(\data[7] ), .C(clk_slow), .D(n15664));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i6 (.Q(\data[6] ), .C(clk_slow), .D(n15663));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i5 (.Q(\data[5] ), .C(clk_slow), .D(n15662));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i4 (.Q(\data[4] ), .C(clk_slow), .D(n15661));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i3 (.Q(\data[3] ), .C(clk_slow), .D(n15660));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i2 (.Q(\data[2] ), .C(clk_slow), .D(n15659));   // verilog/tli4970.v(35[10] 68[6])
    SB_DFFN data_i1 (.Q(\data[1] ), .C(clk_slow), .D(n15658));   // verilog/tli4970.v(35[10] 68[6])
    SB_LUT4 equal_306_i7_2_lut_3_lut_4_lut (.I0(bit_counter[0]), .I1(bit_counter[1]), 
            .I2(bit_counter[2]), .I3(bit_counter[3]), .O(n7));   // verilog/tli4970.v(54[9:26])
    defparam equal_306_i7_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(bit_counter[0]), .I1(bit_counter[1]), 
            .I2(\state[0] ), .I3(\state[1] ), .O(n13045));   // verilog/tli4970.v(54[9:26])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_DFFNE current__i13 (.Q(\current[15] ), .C(clk_slow), .E(n14347), 
            .D(n1366[0]));   // verilog/tli4970.v(35[10] 68[6])
    SB_LUT4 equal_234_i10_2_lut (.I0(bit_counter[2]), .I1(bit_counter[3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_1));   // verilog/tli4970.v(56[12:26])
    defparam equal_234_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_3_lut (.I0(delay_counter[1]), .I1(delay_counter[2]), .I2(delay_counter[4]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2087_4_lut (.I0(delay_counter[3]), .I1(delay_counter[5]), .I2(n8), 
            .I3(delay_counter[0]), .O(n12));
    defparam i2087_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i4_4_lut (.I0(delay_counter[11]), .I1(delay_counter[7]), .I2(delay_counter[8]), 
            .I3(delay_counter[9]), .O(n10));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_4_lut (.I0(delay_counter[10]), .I1(n10), .I2(n12), .I3(delay_counter[6]), 
            .O(delay_counter_15__N_5286));
    defparam i5_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i1_2_lut (.I0(bit_counter[4]), .I1(bit_counter[6]), .I2(GND_net), 
            .I3(GND_net), .O(n4_c));   // verilog/tli4970.v(56[12:26])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut (.I0(n7), .I1(bit_counter[5]), .I2(bit_counter[7]), 
            .I3(n4_c), .O(n15));   // verilog/tli4970.v(56[12:26])
    defparam i2_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_2060_i2_3_lut (.I0(n15), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n8195));
    defparam mux_2060_i2_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 equal_304_i5_2_lut (.I0(bit_counter[0]), .I1(bit_counter[1]), 
            .I2(GND_net), .I3(GND_net), .O(n5));   // verilog/tli4970.v(54[9:26])
    defparam equal_304_i5_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 equal_296_i6_2_lut (.I0(bit_counter[2]), .I1(bit_counter[3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_2));   // verilog/tli4970.v(54[9:26])
    defparam equal_296_i6_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(bit_counter[0]), 
            .I3(bit_counter[1]), .O(n13073));   // verilog/tli4970.v(43[5] 67[12])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hbfff;
    SB_LUT4 i17721_2_lut (.I0(bit_counter[0]), .I1(bit_counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21548));
    defparam i17721_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 state_7__I_0_77_i9_2_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(state_7__N_5291));   // verilog/tli4970.v(53[7:17])
    defparam state_7__I_0_77_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i17723_2_lut (.I0(bit_counter[2]), .I1(bit_counter[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21550));
    defparam i17723_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_4_lut_adj_1953 (.I0(\state[0] ), .I1(\state[1] ), .I2(bit_counter[2]), 
            .I3(bit_counter[3]), .O(n4));   // verilog/tli4970.v(43[5] 67[12])
    defparam i1_2_lut_4_lut_adj_1953.LUT_INIT = 16'hfbff;
    SB_LUT4 i2_3_lut_4_lut (.I0(bit_counter[0]), .I1(bit_counter[1]), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n13038));   // verilog/tli4970.v(43[5] 67[12])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 spi_clk_I_0_i1_3_lut (.I0(clk_slow), .I1(clk_out), .I2(CS_c), 
            .I3(GND_net), .O(CS_CLK_c));   // verilog/tli4970.v(23[20:53])
    defparam spi_clk_I_0_i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11711_2_lut_2_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n15583));   // verilog/tli4970.v(55[24:39])
    defparam i11711_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_4_lut_adj_1954 (.I0(\state[0] ), .I1(\state[1] ), .I2(bit_counter[2]), 
            .I3(bit_counter[3]), .O(n13052));   // verilog/tli4970.v(43[5] 67[12])
    defparam i1_2_lut_4_lut_adj_1954.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_4_lut_adj_1955 (.I0(\state[0] ), .I1(\state[1] ), .I2(bit_counter[2]), 
            .I3(bit_counter[3]), .O(n13049));   // verilog/tli4970.v(43[5] 67[12])
    defparam i1_2_lut_4_lut_adj_1955.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_4_lut_adj_1956 (.I0(n15), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(delay_counter_15__N_5286), .O(n14475));
    defparam i1_2_lut_4_lut_adj_1956.LUT_INIT = 16'hfff4;
    SB_LUT4 i11448_2_lut_4_lut (.I0(n15), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(delay_counter_15__N_5286), .O(n15320));
    defparam i11448_2_lut_4_lut.LUT_INIT = 16'h0b00;
    
endmodule
//
// Verilog Description of module pwm
//

module pwm (GND_net, \pwm_counter[23] , n15807, pwm_out, clk32MHz, 
            reset, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \pwm_counter[23] ;
    input n15807;
    output pwm_out;
    input clk32MHz;
    input reset;
    input VCC_net;
    
    wire clk32MHz /* synthesis SET_AS_NETWORK=clk32MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(31[16:24])
    wire [23:0]pwm_counter;   // verilog/pwm.v(11[19:30])
    
    wire n30207, n18, n21, n20, n24, n19, n48, n28247, n27943, 
        n27947, n27949, n27951, n27953, n27955, n27957, n27959, 
        n27961, n27963, n27965, n27969, n27971, n27973, n27975, 
        n27987, n27995, n28039, n28083, n28191, n28267, n28269, 
        n28271, n24619, n24618, n24617, n24616, n24615, n24614, 
        n24613, n24612, n24611, n24610, n24609, n24608, n24607, 
        n24606, n24605, n24604, n24603, n24602, n24601, n24600, 
        n24599, n24598, n24597;
    
    SB_LUT4 i2_3_lut (.I0(pwm_counter[6]), .I1(pwm_counter[8]), .I2(pwm_counter[7]), 
            .I3(GND_net), .O(n30207));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i5_4_lut (.I0(pwm_counter[17]), .I1(n30207), .I2(pwm_counter[10]), 
            .I3(pwm_counter[9]), .O(n18));
    defparam i5_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i8_4_lut (.I0(pwm_counter[22]), .I1(pwm_counter[16]), .I2(pwm_counter[18]), 
            .I3(pwm_counter[19]), .O(n21));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_3_lut (.I0(pwm_counter[13]), .I1(pwm_counter[21]), .I2(pwm_counter[11]), 
            .I3(GND_net), .O(n20));
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut (.I0(n21), .I1(pwm_counter[15]), .I2(n18), .I3(pwm_counter[14]), 
            .O(n24));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_2_lut (.I0(pwm_counter[12]), .I1(pwm_counter[20]), .I2(GND_net), 
            .I3(GND_net), .O(n19));
    defparam i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(\pwm_counter[23] ), .I1(n19), .I2(n24), .I3(n20), 
            .O(n48));   // verilog/pwm.v(17[20:33])
    defparam i1_4_lut.LUT_INIT = 16'haaab;
    SB_DFF pwm_out_12 (.Q(pwm_out), .C(clk32MHz), .D(n15807));   // verilog/pwm.v(16[12] 26[6])
    SB_DFFR pwm_counter_1581__i0 (.Q(pwm_counter[0]), .C(clk32MHz), .D(n28247), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i23 (.Q(\pwm_counter[23] ), .C(clk32MHz), 
            .D(n27943), .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i22 (.Q(pwm_counter[22]), .C(clk32MHz), .D(n27947), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i21 (.Q(pwm_counter[21]), .C(clk32MHz), .D(n27949), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i20 (.Q(pwm_counter[20]), .C(clk32MHz), .D(n27951), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i19 (.Q(pwm_counter[19]), .C(clk32MHz), .D(n27953), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i18 (.Q(pwm_counter[18]), .C(clk32MHz), .D(n27955), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i17 (.Q(pwm_counter[17]), .C(clk32MHz), .D(n27957), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i16 (.Q(pwm_counter[16]), .C(clk32MHz), .D(n27959), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i15 (.Q(pwm_counter[15]), .C(clk32MHz), .D(n27961), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i14 (.Q(pwm_counter[14]), .C(clk32MHz), .D(n27963), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i13 (.Q(pwm_counter[13]), .C(clk32MHz), .D(n27965), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i12 (.Q(pwm_counter[12]), .C(clk32MHz), .D(n27969), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i11 (.Q(pwm_counter[11]), .C(clk32MHz), .D(n27971), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i10 (.Q(pwm_counter[10]), .C(clk32MHz), .D(n27973), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i9 (.Q(pwm_counter[9]), .C(clk32MHz), .D(n27975), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i8 (.Q(pwm_counter[8]), .C(clk32MHz), .D(n27987), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i7 (.Q(pwm_counter[7]), .C(clk32MHz), .D(n27995), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i6 (.Q(pwm_counter[6]), .C(clk32MHz), .D(n28039), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i5 (.Q(pwm_counter[5]), .C(clk32MHz), .D(n28083), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i4 (.Q(pwm_counter[4]), .C(clk32MHz), .D(n28191), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i3 (.Q(pwm_counter[3]), .C(clk32MHz), .D(n28267), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i2 (.Q(pwm_counter[2]), .C(clk32MHz), .D(n28269), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_DFFR pwm_counter_1581__i1 (.Q(pwm_counter[1]), .C(clk32MHz), .D(n28271), 
            .R(reset));   // verilog/pwm.v(17[20:33])
    SB_LUT4 pwm_counter_1581_add_4_25_lut (.I0(n48), .I1(GND_net), .I2(\pwm_counter[23] ), 
            .I3(n24619), .O(n27943)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_25_lut.LUT_INIT = 16'h8228;
    SB_LUT4 pwm_counter_1581_add_4_24_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[22]), 
            .I3(n24618), .O(n27947)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_24_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_24 (.CI(n24618), .I0(GND_net), .I1(pwm_counter[22]), 
            .CO(n24619));
    SB_LUT4 pwm_counter_1581_add_4_23_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[21]), 
            .I3(n24617), .O(n27949)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_23_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_23 (.CI(n24617), .I0(GND_net), .I1(pwm_counter[21]), 
            .CO(n24618));
    SB_LUT4 pwm_counter_1581_add_4_22_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[20]), 
            .I3(n24616), .O(n27951)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_22_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_22 (.CI(n24616), .I0(GND_net), .I1(pwm_counter[20]), 
            .CO(n24617));
    SB_LUT4 pwm_counter_1581_add_4_21_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[19]), 
            .I3(n24615), .O(n27953)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_21_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_21 (.CI(n24615), .I0(GND_net), .I1(pwm_counter[19]), 
            .CO(n24616));
    SB_LUT4 pwm_counter_1581_add_4_20_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[18]), 
            .I3(n24614), .O(n27955)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_20_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_20 (.CI(n24614), .I0(GND_net), .I1(pwm_counter[18]), 
            .CO(n24615));
    SB_LUT4 pwm_counter_1581_add_4_19_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[17]), 
            .I3(n24613), .O(n27957)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_19_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_19 (.CI(n24613), .I0(GND_net), .I1(pwm_counter[17]), 
            .CO(n24614));
    SB_LUT4 pwm_counter_1581_add_4_18_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[16]), 
            .I3(n24612), .O(n27959)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_18_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_18 (.CI(n24612), .I0(GND_net), .I1(pwm_counter[16]), 
            .CO(n24613));
    SB_LUT4 pwm_counter_1581_add_4_17_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[15]), 
            .I3(n24611), .O(n27961)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_17_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_17 (.CI(n24611), .I0(GND_net), .I1(pwm_counter[15]), 
            .CO(n24612));
    SB_LUT4 pwm_counter_1581_add_4_16_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[14]), 
            .I3(n24610), .O(n27963)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_16 (.CI(n24610), .I0(GND_net), .I1(pwm_counter[14]), 
            .CO(n24611));
    SB_LUT4 pwm_counter_1581_add_4_15_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[13]), 
            .I3(n24609), .O(n27965)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_15 (.CI(n24609), .I0(GND_net), .I1(pwm_counter[13]), 
            .CO(n24610));
    SB_LUT4 pwm_counter_1581_add_4_14_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[12]), 
            .I3(n24608), .O(n27969)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_14 (.CI(n24608), .I0(GND_net), .I1(pwm_counter[12]), 
            .CO(n24609));
    SB_LUT4 pwm_counter_1581_add_4_13_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[11]), 
            .I3(n24607), .O(n27971)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_13 (.CI(n24607), .I0(GND_net), .I1(pwm_counter[11]), 
            .CO(n24608));
    SB_LUT4 pwm_counter_1581_add_4_12_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[10]), 
            .I3(n24606), .O(n27973)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_12 (.CI(n24606), .I0(GND_net), .I1(pwm_counter[10]), 
            .CO(n24607));
    SB_LUT4 pwm_counter_1581_add_4_11_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[9]), 
            .I3(n24605), .O(n27975)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_11 (.CI(n24605), .I0(GND_net), .I1(pwm_counter[9]), 
            .CO(n24606));
    SB_LUT4 pwm_counter_1581_add_4_10_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[8]), 
            .I3(n24604), .O(n27987)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_10 (.CI(n24604), .I0(GND_net), .I1(pwm_counter[8]), 
            .CO(n24605));
    SB_LUT4 pwm_counter_1581_add_4_9_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[7]), 
            .I3(n24603), .O(n27995)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_9 (.CI(n24603), .I0(GND_net), .I1(pwm_counter[7]), 
            .CO(n24604));
    SB_LUT4 pwm_counter_1581_add_4_8_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[6]), 
            .I3(n24602), .O(n28039)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_8 (.CI(n24602), .I0(GND_net), .I1(pwm_counter[6]), 
            .CO(n24603));
    SB_LUT4 pwm_counter_1581_add_4_7_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[5]), 
            .I3(n24601), .O(n28083)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_7 (.CI(n24601), .I0(GND_net), .I1(pwm_counter[5]), 
            .CO(n24602));
    SB_LUT4 pwm_counter_1581_add_4_6_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[4]), 
            .I3(n24600), .O(n28191)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_6 (.CI(n24600), .I0(GND_net), .I1(pwm_counter[4]), 
            .CO(n24601));
    SB_LUT4 pwm_counter_1581_add_4_5_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[3]), 
            .I3(n24599), .O(n28267)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_5 (.CI(n24599), .I0(GND_net), .I1(pwm_counter[3]), 
            .CO(n24600));
    SB_LUT4 pwm_counter_1581_add_4_4_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[2]), 
            .I3(n24598), .O(n28269)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_4 (.CI(n24598), .I0(GND_net), .I1(pwm_counter[2]), 
            .CO(n24599));
    SB_LUT4 pwm_counter_1581_add_4_3_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[1]), 
            .I3(n24597), .O(n28271)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_3 (.CI(n24597), .I0(GND_net), .I1(pwm_counter[1]), 
            .CO(n24598));
    SB_LUT4 pwm_counter_1581_add_4_2_lut (.I0(n48), .I1(GND_net), .I2(pwm_counter[0]), 
            .I3(VCC_net), .O(n28247)) /* synthesis syn_instantiated=1 */ ;
    defparam pwm_counter_1581_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY pwm_counter_1581_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(pwm_counter[0]), 
            .CO(n24597));
    
endmodule
