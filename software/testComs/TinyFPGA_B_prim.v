// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Mar  6 18:55:19 2020
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
    output TX /* synthesis black_box_pad_pin=1 */ ;   // verilog/TinyFPGA_B.v(16[10:12])
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
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire GND_net, VCC_net, LED_c, NEOPXL_c, DE_c, RX_c;
    wire [7:0]ID;   // verilog/TinyFPGA_B.v(46[12:14])
    
    wire reset;
    wire [23:0]neopxl_color;   // verilog/TinyFPGA_B.v(49[13:25])
    
    wire tx_o, tx_enable, n26482;
    wire [31:0]baudrate;   // verilog/TinyFPGA_B.v(88[15:23])
    
    wire data_ready, sda_out, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(143[11:24])
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(151[15:20])
    
    wire RX_N_2, n229, n230, n231, n232, n233, n234, n235, n236, 
        n237, n238, n239, n240, n241, n242, n243, n244, n245, 
        n246, n247, n248, n249, n250, n251, n252, n253, n254, 
        n255, n256, n257, n258, n259, n260, read_N_120, reset_N_118, 
        n338, reset_N_115, n8659, n24;
    wire [31:0]timer;   // verilog/neopixel.v(9[12:17])
    wire [3:0]state;   // verilog/neopixel.v(16[20:25])
    
    wire start;
    wire [31:0]\neo_pixel_transmitter.t0 ;   // verilog/neopixel.v(28[14:16])
    
    wire n62, n22696, n4, n26481, n26480, n31003, n25, n17, 
        n15585, n15582, n15579, n15576, n15573, n11273, n2857, 
        n30887, n2854, n15570, n1447;
    wire [7:0]control_mode_adj_4537;   // verilog/coms.v(17[19:31])
    
    wire rx_data_ready;
    wire [7:0]rx_data;   // verilog/coms.v(94[13:20])
    wire [7:0]\data_in_frame[21] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[19] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[17] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[15] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[13] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[9] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[8] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[7] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[5] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[4] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[3] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[1] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[0] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_out_frame[27] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[26] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[25] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[24] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[23] ;   // verilog/coms.v(100[12:26])
    
    wire n26479;
    wire [7:0]\data_out_frame[14] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[13] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[12] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[5] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[4] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[3] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[1] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[0] ;   // verilog/coms.v(100[12:26])
    wire [7:0]byte_transmit_counter;   // verilog/coms.v(105[12:33])
    wire [31:0]\FRAME_MATCHER.state ;   // verilog/coms.v(115[11:16])
    
    wire \FRAME_MATCHER.rx_data_ready_prev , n30782, n4_adj_4504, n26478, 
        n15, n14, n14787, n30766, n30767, n30768, n30769, n30770, 
        n30771, n30772, n30762, n30773, n30774, n30775, n30776, 
        n30777, n30778, n14771, n30779, n30780, n30781, n14767, 
        n30783, n30784, n14763, n30765, n14761, n30785, n14759, 
        n30763, n14757, n30786, n30787, n30788, n30789, n30790, 
        n30791, n30792, n30793, n30794, n30795, n30796, n30797, 
        n30798, n30799, n30800, n14741, n30801, n30802, n30803, 
        n30804, n30805, n30806, n30807, n30808, n14731, n14730, 
        n30809, n30810, n30811, n30812, n30813, n30814, n14723, 
        n30815, n30816, n30817, n30818, n30819, n30820, n30821, 
        n14715, n14714, n30822, n30823, n30824, n30764, n30747, 
        n14707, n30748, n30749, n30750, n30751, n30752, n30753, 
        n30754, n14699, n30755, n30756, n30757, n30758, n26477, 
        n13, n12, n31192, n30746, n26476, n31263, n32314, n37765, 
        n4_adj_4505, n26475, n1395, n38157, n38154, n26474, n8, 
        n7, Kp_23__N_635, n37651, n80, n58, n6, n26504, n26503, 
        n26502, n26501, n15567, n26500, \FRAME_MATCHER.i_31__N_2377 , 
        n26499, n15564, n30761, n15540, n15528, n30177, n15500, 
        n15499, n15498, n15497, n15496, n15495, n15494, n15491, 
        n15490, n15489, n15488, n15486, n15485, n15484, n15438, 
        n15437, n15436, n15430, n15391, n15389, n15386, n15383, 
        n15380, n15377, n15374, n15371, n15368, n15365, n15362, 
        n15302, n15301, n15300, n15298, n15297, n15286, n15285, 
        n26498, n26497, n31322, n31249, n26496, n26495, n15990, 
        n11276, n15962, n26494, n15938, n15935, n15931, n15928, 
        n15914, n15913, n6_adj_4506, n15909, n15906, n15896, n26493, 
        n15869, n15860, n26492, n26491;
    wire [7:0]data_adj_4554;   // verilog/eeprom.v(23[12:16])
    wire [7:0]state_7__N_3572;
    
    wire n1758, n15831, n15261, n15255, n15254, n15252, n15250, 
        n15249, n15248, n15245, n15244, n15241, n15238, n15830, 
        n15829, n15828, n15827, n15826, n15825, n15824, n4358, 
        n15823, n15822, n4240, n15821, n15820, n15819, n15818, 
        n15817, n15816, n15815, n15814, n15813, n15812, n15811, 
        n15810, n15809, n15808, n15807, n15806, n15805, n15804, 
        n15803, n15802, n15801, n15800, r_Rx_Data;
    wire [7:0]r_Clock_Count;   // verilog/uart_rx.v(33[17:30])
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n15779, n38139, n38136, n38133, n38130;
    wire [24:0]o_Rx_DV_N_3356;
    
    wire n15769, n15766, n15764, n15760, n15758, n15757, n15753, 
        n15750, n15749;
    wire [8:0]r_Clock_Count_adj_4561;   // verilog/uart_tx.v(33[16:29])
    
    wire n15748, n32440, n15736, n15726, n15723;
    wire [7:0]state_adj_4568;   // verilog/i2c_controller.v(33[12:17])
    
    wire ready_N_3903, n15720, n30377;
    wire [7:0]state_7__N_3822;
    
    wire n32328, n15717, n15235, n4106, n26490, n15714;
    wire [7:0]state_7__N_3838;
    
    wire n8_adj_4515, n15234, n15233, n15231, n15230, n15229, n15228, 
        n31015, n30905, n31024, n30895, n16, n22661, n7_adj_4516, 
        n30351, n32861, n37337, n30345, n33787, n7_adj_4517, n15223, 
        n30339, n26489, n33771, n33123, n36898, n26488, n33755, 
        n13640, n33739, n36282, n12269, n33723, n30828, n30760, 
        n30745, n36273, n30083, n33707, n12182, n33691, n33675, 
        n12023, n28495, n8_adj_4518, n11741, n4_adj_4519, n6_adj_4520, 
        n8_adj_4521, n9, n11, n13_adj_4522, n14_adj_4523, n15_adj_4524, 
        n4_adj_4525, n6_adj_4526, n8_adj_4527, n9_adj_4528, n31629, 
        n13482, n13475, n26487, n28284, n14246, n14240, n14238, 
        n14224, n14222, n30889, n14664, n11358, n12_adj_4529, n15217, 
        n15214, n15213, n15212, n15209, n15208, n15207, n15206, 
        n15675, n15672, n15666, n15663, n15660, n15657, n15654, 
        n15651, n15648, n15645, n26486, n37650, n15179, n15168, 
        n15642, n15636, n15633, n15630, n15627, n15624, n15621, 
        n15618, n15615, n15612, n26485, n15145, n15144, n8682, 
        n34645, n11363, n31489, n27, n32395, n32539, n27583, n10, 
        n26484, n37802, n32635, n11270, n26483, n27820, n36349, 
        n36119, n30479, n37801, n32522, n36320;
    
    VCC i2 (.Y(VCC_net));
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_3838[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam sda_output.PIN_TYPE = 6'b101001;
    defparam sda_output.PULLUP = 1'b1;
    defparam sda_output.NEG_TRIGGER = 1'b0;
    defparam sda_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO scl_output (.PACKAGE_PIN(SCL), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(scl_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(scl)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam scl_output.PIN_TYPE = 6'b101001;
    defparam scl_output.PULLUP = 1'b1;
    defparam scl_output.NEG_TRIGGER = 1'b0;
    defparam scl_output.IO_STANDARD = "SB_LVCMOS";
    SB_IO tx_output (.PACKAGE_PIN(TX), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(tx_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(tx_o)) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_output.PIN_TYPE = 6'b101001;
    defparam tx_output.PULLUP = 1'b1;
    defparam tx_output.NEG_TRIGGER = 1'b0;
    defparam tx_output.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_4_6 (.CI(n26477), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n26478));
    SB_LUT4 add_4_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n26504), .O(n229)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16818_3_lut (.I0(neopxl_color[20]), .I1(\data_in_frame[4] [4]), 
            .I2(n8682), .I3(GND_net), .O(n15144));
    defparam i16818_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10953_3_lut (.I0(neopxl_color[19]), .I1(\data_in_frame[4] [3]), 
            .I2(n8682), .I3(GND_net), .O(n15145));   // verilog/coms.v(130[12] 305[6])
    defparam i10953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10976_3_lut (.I0(control_mode_adj_4537[0]), .I1(\data_in_frame[1] [0]), 
            .I2(n8659), .I3(GND_net), .O(n15168));   // verilog/coms.v(130[12] 305[6])
    defparam i10976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10987_3_lut (.I0(neopxl_color[18]), .I1(\data_in_frame[4] [2]), 
            .I2(n8682), .I3(GND_net), .O(n15179));   // verilog/coms.v(130[12] 305[6])
    defparam i10987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_4_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n26503), .O(n230)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n26476), .O(n257)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_32 (.CI(n26503), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n26504));
    SB_LUT4 add_4_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n26502), .O(n231)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_31 (.CI(n26502), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n26503));
    SB_CARRY add_4_5 (.CI(n26476), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n26477));
    SB_LUT4 add_4_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n26501), .O(n232)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_30 (.CI(n26501), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n26502));
    SB_LUT4 add_4_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n26500), .O(n233)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n26475), .O(n258)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11182_3_lut (.I0(\data_in_frame[9] [1]), .I1(rx_data[1]), .I2(n14238), 
            .I3(GND_net), .O(n15374));   // verilog/coms.v(130[12] 305[6])
    defparam i11182_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_29 (.CI(n26500), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n26501));
    SB_CARRY add_4_4 (.CI(n26475), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n26476));
    SB_LUT4 i11179_3_lut (.I0(\data_in_frame[9] [0]), .I1(rx_data[0]), .I2(n14238), 
            .I3(GND_net), .O(n15371));   // verilog/coms.v(130[12] 305[6])
    defparam i11179_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11031_3_lut (.I0(\data_in_frame[5] [4]), .I1(rx_data[4]), .I2(n14246), 
            .I3(GND_net), .O(n15223));   // verilog/coms.v(130[12] 305[6])
    defparam i11031_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i16184_3_lut (.I0(n14246), .I1(rx_data[3]), .I2(\data_in_frame[5] [3]), 
            .I3(GND_net), .O(n15736));   // verilog/coms.v(94[13:20])
    defparam i16184_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i11025_3_lut (.I0(\data_in_frame[5] [2]), .I1(rx_data[2]), .I2(n14246), 
            .I3(GND_net), .O(n15217));   // verilog/coms.v(130[12] 305[6])
    defparam i11025_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11022_3_lut (.I0(\data_in_frame[5] [1]), .I1(rx_data[1]), .I2(n14246), 
            .I3(GND_net), .O(n15214));   // verilog/coms.v(130[12] 305[6])
    defparam i11022_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11017_3_lut (.I0(\data_in_frame[5] [0]), .I1(rx_data[0]), .I2(n14246), 
            .I3(GND_net), .O(n15209));   // verilog/coms.v(130[12] 305[6])
    defparam i11017_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11176_3_lut (.I0(\data_in_frame[8] [7]), .I1(rx_data[7]), .I2(n14240), 
            .I3(GND_net), .O(n15368));   // verilog/coms.v(130[12] 305[6])
    defparam i11176_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11173_3_lut (.I0(\data_in_frame[8] [6]), .I1(rx_data[6]), .I2(n14240), 
            .I3(GND_net), .O(n15365));   // verilog/coms.v(130[12] 305[6])
    defparam i11173_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11393_3_lut (.I0(\data_in_frame[13] [7]), .I1(rx_data[7]), 
            .I2(n30889), .I3(GND_net), .O(n15585));   // verilog/coms.v(130[12] 305[6])
    defparam i11393_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11170_3_lut (.I0(\data_in_frame[8] [5]), .I1(rx_data[5]), .I2(n14240), 
            .I3(GND_net), .O(n15362));   // verilog/coms.v(130[12] 305[6])
    defparam i11170_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11556_3_lut (.I0(control_mode_adj_4537[7]), .I1(\data_in_frame[1] [7]), 
            .I2(n8659), .I3(GND_net), .O(n15748));   // verilog/coms.v(130[12] 305[6])
    defparam i11556_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11557_3_lut (.I0(control_mode_adj_4537[6]), .I1(\data_in_frame[1] [6]), 
            .I2(n8659), .I3(GND_net), .O(n15749));   // verilog/coms.v(130[12] 305[6])
    defparam i11557_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11561_3_lut (.I0(control_mode_adj_4537[5]), .I1(\data_in_frame[1] [5]), 
            .I2(n8659), .I3(GND_net), .O(n15753));   // verilog/coms.v(130[12] 305[6])
    defparam i11561_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11565_3_lut (.I0(control_mode_adj_4537[4]), .I1(\data_in_frame[1] [4]), 
            .I2(n8659), .I3(GND_net), .O(n15757));   // verilog/coms.v(130[12] 305[6])
    defparam i11565_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11566_3_lut (.I0(baudrate[26]), .I1(data_adj_4554[2]), .I2(n32314), 
            .I3(GND_net), .O(n15758));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11566_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i16595_3_lut (.I0(control_mode_adj_4537[3]), .I1(\data_in_frame[1] [3]), 
            .I2(n8659), .I3(GND_net), .O(n15764));
    defparam i16595_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11574_3_lut (.I0(baudrate[25]), .I1(data_adj_4554[1]), .I2(n32314), 
            .I3(GND_net), .O(n15766));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11574_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11577_3_lut (.I0(baudrate[24]), .I1(data_adj_4554[0]), .I2(n32314), 
            .I3(GND_net), .O(n15769));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11577_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n26499), .O(n234)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11568_3_lut (.I0(\data_in_frame[1] [6]), .I1(rx_data[6]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n15760));   // verilog/coms.v(130[12] 305[6])
    defparam i11568_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11558_3_lut (.I0(\data_in_frame[1] [5]), .I1(rx_data[5]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n15750));   // verilog/coms.v(130[12] 305[6])
    defparam i11558_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11587_3_lut (.I0(control_mode_adj_4537[2]), .I1(\data_in_frame[1] [2]), 
            .I2(n8659), .I3(GND_net), .O(n15779));   // verilog/coms.v(130[12] 305[6])
    defparam i11587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11534_3_lut (.I0(\data_in_frame[19] [6]), .I1(rx_data[6]), 
            .I2(n31489), .I3(GND_net), .O(n15726));   // verilog/coms.v(130[12] 305[6])
    defparam i11534_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11531_3_lut (.I0(\data_in_frame[19] [5]), .I1(rx_data[5]), 
            .I2(n31489), .I3(GND_net), .O(n15723));   // verilog/coms.v(130[12] 305[6])
    defparam i11531_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11528_3_lut (.I0(\data_in_frame[19] [4]), .I1(rx_data[4]), 
            .I2(n31489), .I3(GND_net), .O(n15720));   // verilog/coms.v(130[12] 305[6])
    defparam i11528_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11525_3_lut (.I0(\data_in_frame[19] [3]), .I1(rx_data[3]), 
            .I2(n31489), .I3(GND_net), .O(n15717));   // verilog/coms.v(130[12] 305[6])
    defparam i11525_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11522_3_lut (.I0(\data_in_frame[19] [2]), .I1(rx_data[2]), 
            .I2(n31489), .I3(GND_net), .O(n15714));   // verilog/coms.v(130[12] 305[6])
    defparam i11522_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i33282_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[19] [1]), 
            .I2(n31489), .I3(GND_net), .O(n30377));   // verilog/coms.v(94[13:20])
    defparam i33282_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11608_3_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(timer[31]), 
            .I2(n1758), .I3(GND_net), .O(n15800));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11608_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11609_3_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(timer[30]), 
            .I2(n1758), .I3(GND_net), .O(n15801));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11609_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11610_3_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(timer[29]), 
            .I2(n1758), .I3(GND_net), .O(n15802));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11610_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11611_3_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(timer[28]), 
            .I2(n1758), .I3(GND_net), .O(n15803));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11611_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11612_3_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(timer[27]), 
            .I2(n1758), .I3(GND_net), .O(n15804));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11613_3_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(timer[26]), 
            .I2(n1758), .I3(GND_net), .O(n15805));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11613_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11614_3_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(timer[25]), 
            .I2(n1758), .I3(GND_net), .O(n15806));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11614_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11615_3_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(timer[24]), 
            .I2(n1758), .I3(GND_net), .O(n15807));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11615_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11616_3_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(timer[23]), 
            .I2(n1758), .I3(GND_net), .O(n15808));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11617_3_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(timer[22]), 
            .I2(n1758), .I3(GND_net), .O(n15809));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11617_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11618_3_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(timer[21]), 
            .I2(n1758), .I3(GND_net), .O(n15810));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11618_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11619_3_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(timer[20]), 
            .I2(n1758), .I3(GND_net), .O(n15811));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11619_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11620_3_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(timer[19]), 
            .I2(n1758), .I3(GND_net), .O(n15812));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11620_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11621_3_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(timer[18]), 
            .I2(n1758), .I3(GND_net), .O(n15813));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11622_3_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(timer[17]), 
            .I2(n1758), .I3(GND_net), .O(n15814));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11623_3_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(timer[16]), 
            .I2(n1758), .I3(GND_net), .O(n15815));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11624_3_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(timer[15]), 
            .I2(n1758), .I3(GND_net), .O(n15816));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_4_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n26474), .O(n259)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11625_3_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(timer[14]), 
            .I2(n1758), .I3(GND_net), .O(n15817));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11626_3_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(timer[13]), 
            .I2(n1758), .I3(GND_net), .O(n15818));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11627_3_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(timer[12]), 
            .I2(n1758), .I3(GND_net), .O(n15819));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11627_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11628_3_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(timer[11]), 
            .I2(n1758), .I3(GND_net), .O(n15820));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11629_3_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(timer[10]), 
            .I2(n1758), .I3(GND_net), .O(n15821));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11630_3_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(timer[9]), 
            .I2(n1758), .I3(GND_net), .O(n15822));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11630_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11631_3_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(timer[8]), 
            .I2(n1758), .I3(GND_net), .O(n15823));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11631_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11632_3_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(timer[7]), 
            .I2(n1758), .I3(GND_net), .O(n15824));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11633_3_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(timer[6]), 
            .I2(n1758), .I3(GND_net), .O(n15825));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11634_3_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(timer[5]), 
            .I2(n1758), .I3(GND_net), .O(n15826));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11635_3_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(timer[4]), 
            .I2(n1758), .I3(GND_net), .O(n15827));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11635_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11636_3_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(timer[3]), 
            .I2(n1758), .I3(GND_net), .O(n15828));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11637_3_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(timer[2]), 
            .I2(n1758), .I3(GND_net), .O(n15829));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11637_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11638_3_lut (.I0(control_mode_adj_4537[1]), .I1(\data_in_frame[1] [1]), 
            .I2(n8659), .I3(GND_net), .O(n15830));   // verilog/coms.v(130[12] 305[6])
    defparam i11638_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11639_3_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(timer[1]), 
            .I2(n1758), .I3(GND_net), .O(n15831));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11483_3_lut (.I0(\data_in_frame[17] [5]), .I1(rx_data[5]), 
            .I2(n14222), .I3(GND_net), .O(n15675));   // verilog/coms.v(130[12] 305[6])
    defparam i11483_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11480_3_lut (.I0(\data_in_frame[17] [4]), .I1(rx_data[4]), 
            .I2(n14222), .I3(GND_net), .O(n15672));   // verilog/coms.v(130[12] 305[6])
    defparam i11480_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i33277_3_lut (.I0(rx_data[3]), .I1(\data_in_frame[17] [3]), 
            .I2(n14222), .I3(GND_net), .O(n30339));   // verilog/coms.v(94[13:20])
    defparam i33277_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11474_3_lut (.I0(\data_in_frame[17] [2]), .I1(rx_data[2]), 
            .I2(n14222), .I3(GND_net), .O(n15666));   // verilog/coms.v(130[12] 305[6])
    defparam i11474_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11471_3_lut (.I0(\data_in_frame[17] [1]), .I1(rx_data[1]), 
            .I2(n14222), .I3(GND_net), .O(n15663));   // verilog/coms.v(130[12] 305[6])
    defparam i11471_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11468_3_lut (.I0(\data_in_frame[17] [0]), .I1(rx_data[0]), 
            .I2(n14222), .I3(GND_net), .O(n15660));   // verilog/coms.v(130[12] 305[6])
    defparam i11468_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11465_3_lut (.I0(\data_in_frame[16] [7]), .I1(rx_data[7]), 
            .I2(n14224), .I3(GND_net), .O(n15657));   // verilog/coms.v(130[12] 305[6])
    defparam i11465_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11462_3_lut (.I0(\data_in_frame[16] [6]), .I1(rx_data[6]), 
            .I2(n14224), .I3(GND_net), .O(n15654));   // verilog/coms.v(130[12] 305[6])
    defparam i11462_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11459_3_lut (.I0(\data_in_frame[16] [5]), .I1(rx_data[5]), 
            .I2(n14224), .I3(GND_net), .O(n15651));   // verilog/coms.v(130[12] 305[6])
    defparam i11459_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11456_3_lut (.I0(\data_in_frame[16] [4]), .I1(rx_data[4]), 
            .I2(n14224), .I3(GND_net), .O(n15648));   // verilog/coms.v(130[12] 305[6])
    defparam i11456_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11453_3_lut (.I0(\data_in_frame[16] [3]), .I1(rx_data[3]), 
            .I2(n14224), .I3(GND_net), .O(n15645));   // verilog/coms.v(130[12] 305[6])
    defparam i11453_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11450_3_lut (.I0(\data_in_frame[16] [2]), .I1(rx_data[2]), 
            .I2(n14224), .I3(GND_net), .O(n15642));   // verilog/coms.v(130[12] 305[6])
    defparam i11450_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11444_3_lut (.I0(\data_in_frame[16] [0]), .I1(rx_data[0]), 
            .I2(n14224), .I3(GND_net), .O(n15636));   // verilog/coms.v(130[12] 305[6])
    defparam i11444_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11441_3_lut (.I0(\data_in_frame[15] [7]), .I1(rx_data[7]), 
            .I2(n30887), .I3(GND_net), .O(n15633));   // verilog/coms.v(130[12] 305[6])
    defparam i11441_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11438_3_lut (.I0(\data_in_frame[15] [6]), .I1(rx_data[6]), 
            .I2(n30887), .I3(GND_net), .O(n15630));   // verilog/coms.v(130[12] 305[6])
    defparam i11438_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_3 (.CI(n26474), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n26475));
    SB_LUT4 i11435_3_lut (.I0(\data_in_frame[15] [5]), .I1(rx_data[5]), 
            .I2(n30887), .I3(GND_net), .O(n15627));   // verilog/coms.v(130[12] 305[6])
    defparam i11435_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11432_3_lut (.I0(\data_in_frame[15] [4]), .I1(rx_data[4]), 
            .I2(n30887), .I3(GND_net), .O(n15624));   // verilog/coms.v(130[12] 305[6])
    defparam i11432_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11668_3_lut (.I0(\data_in_frame[1] [7]), .I1(rx_data[7]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n15860));   // verilog/coms.v(130[12] 305[6])
    defparam i11668_3_lut.LUT_INIT = 16'hacac;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_4_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n26474));
    SB_CARRY add_4_28 (.CI(n26499), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n26500));
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(clk16MHz));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i11677_3_lut (.I0(\data_in_frame[21] [0]), .I1(rx_data[0]), 
            .I2(n30895), .I3(GND_net), .O(n15869));   // verilog/coms.v(130[12] 305[6])
    defparam i11677_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11429_3_lut (.I0(\data_in_frame[15] [3]), .I1(rx_data[3]), 
            .I2(n30887), .I3(GND_net), .O(n15621));   // verilog/coms.v(130[12] 305[6])
    defparam i11429_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11426_3_lut (.I0(\data_in_frame[15] [2]), .I1(rx_data[2]), 
            .I2(n30887), .I3(GND_net), .O(n15618));   // verilog/coms.v(130[12] 305[6])
    defparam i11426_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11423_3_lut (.I0(\data_in_frame[15] [1]), .I1(rx_data[1]), 
            .I2(n30887), .I3(GND_net), .O(n15615));   // verilog/coms.v(130[12] 305[6])
    defparam i11423_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11420_3_lut (.I0(\data_in_frame[15] [0]), .I1(rx_data[0]), 
            .I2(n30887), .I3(GND_net), .O(n15612));   // verilog/coms.v(130[12] 305[6])
    defparam i11420_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n30828));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11704_3_lut (.I0(\data_in_frame[21] [1]), .I1(rx_data[1]), 
            .I2(n30895), .I3(GND_net), .O(n15896));   // verilog/coms.v(130[12] 305[6])
    defparam i11704_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11714_3_lut (.I0(\data_in_frame[21] [2]), .I1(rx_data[2]), 
            .I2(n30895), .I3(GND_net), .O(n15906));   // verilog/coms.v(130[12] 305[6])
    defparam i11714_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11717_3_lut (.I0(\data_in_frame[21] [3]), .I1(rx_data[3]), 
            .I2(n30895), .I3(GND_net), .O(n15909));   // verilog/coms.v(130[12] 305[6])
    defparam i11717_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11721_3_lut (.I0(neopxl_color[23]), .I1(\data_in_frame[4] [7]), 
            .I2(n8682), .I3(GND_net), .O(n15913));   // verilog/coms.v(130[12] 305[6])
    defparam i11721_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_4_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n26498), .O(n235)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11722_3_lut (.I0(\data_in_frame[21] [4]), .I1(rx_data[4]), 
            .I2(n30895), .I3(GND_net), .O(n15914));   // verilog/coms.v(130[12] 305[6])
    defparam i11722_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11292_4_lut (.I0(r_Rx_Data), .I1(rx_data[1]), .I2(n33787), 
            .I3(n27), .O(n15484));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11292_4_lut.LUT_INIT = 16'hccca;
    SB_DFFE \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i32074_4_lut (.I0(reset_N_115), .I1(n6_adj_4506), .I2(n4240), 
            .I3(n1395), .O(n36273));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i32074_4_lut.LUT_INIT = 16'h080c;
    SB_LUT4 i11736_3_lut (.I0(\data_in_frame[21] [5]), .I1(rx_data[5]), 
            .I2(n30895), .I3(GND_net), .O(n15928));   // verilog/coms.v(130[12] 305[6])
    defparam i11736_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11739_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[0]), 
            .I2(n10), .I3(n11363), .O(n15931));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11739_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11293_4_lut (.I0(r_Rx_Data), .I1(rx_data[2]), .I2(n33707), 
            .I3(n27), .O(n15485));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11293_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11743_3_lut (.I0(\data_in_frame[21] [6]), .I1(rx_data[6]), 
            .I2(n30895), .I3(GND_net), .O(n15935));   // verilog/coms.v(130[12] 305[6])
    defparam i11743_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11746_3_lut (.I0(\data_in_frame[21] [7]), .I1(rx_data[7]), 
            .I2(n30895), .I3(GND_net), .O(n15938));   // verilog/coms.v(130[12] 305[6])
    defparam i11746_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [0]), 
            .O(n30746));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1583 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [1]), 
            .O(n30747));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1583.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1584 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [2]), 
            .O(n14707));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1584.LUT_INIT = 16'h5100;
    SB_LUT4 add_4_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n260)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1585 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [3]), 
            .O(n30748));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1585.LUT_INIT = 16'h5100;
    SB_LUT4 i1_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(reset), 
            .I2(\ID_READOUT_FSM.state [1]), .I3(reset_N_118), .O(n30479));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hcd8d;
    SB_LUT4 i11294_4_lut (.I0(r_Rx_Data), .I1(rx_data[3]), .I2(n33691), 
            .I3(n27), .O(n15486));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11294_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_4_27 (.CI(n26498), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n26499));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1586 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [4]), 
            .O(n30749));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1586.LUT_INIT = 16'h5100;
    SB_LUT4 i11770_3_lut (.I0(n31629), .I1(r_Bit_Index[0]), .I2(n13640), 
            .I3(GND_net), .O(n15962));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11770_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 add_4_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n26497), .O(n236)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1587 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [5]), 
            .O(n30750));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1587.LUT_INIT = 16'h5100;
    SB_CARRY add_4_26 (.CI(n26497), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n26498));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1588 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [6]), 
            .O(n30751));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1588.LUT_INIT = 16'h5100;
    SB_LUT4 i11296_4_lut (.I0(r_Rx_Data), .I1(rx_data[4]), .I2(n33739), 
            .I3(n27), .O(n15488));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11296_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_4_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n26496), .O(n237)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1589 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[26] [7]), 
            .O(n30752));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1589.LUT_INIT = 16'h5100;
    SB_CARRY add_4_25 (.CI(n26496), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n26497));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1590 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [0]), 
            .O(n30753));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1590.LUT_INIT = 16'h5100;
    SB_LUT4 add_4_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n26495), .O(n238)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_24 (.CI(n26495), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n26496));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1591 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [1]), 
            .O(n30754));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1591.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1592 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [2]), 
            .O(n14699));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1592.LUT_INIT = 16'h5100;
    SB_LUT4 i11297_4_lut (.I0(r_Rx_Data), .I1(rx_data[5]), .I2(n33723), 
            .I3(n27), .O(n15489));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11297_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1593 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [3]), 
            .O(n30755));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1593.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1594 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [4]), 
            .O(n30756));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1594.LUT_INIT = 16'h5100;
    SB_LUT4 add_4_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n26494), .O(n239)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1595 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [5]), 
            .O(n30745));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1595.LUT_INIT = 16'h5100;
    SB_LUT4 i11298_4_lut (.I0(r_Rx_Data), .I1(rx_data[6]), .I2(n33771), 
            .I3(n27), .O(n15490));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11298_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_4_23 (.CI(n26494), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n26495));
    SB_LUT4 add_4_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n26493), .O(n240)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_22 (.CI(n26493), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n26494));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1596 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [6]), 
            .O(n30757));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1596.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1597 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[27] [7]), 
            .O(n30758));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1597.LUT_INIT = 16'h5100;
    SB_LUT4 i11299_4_lut (.I0(r_Rx_Data), .I1(rx_data[7]), .I2(n33755), 
            .I3(n27), .O(n15491));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11299_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11798_4_lut (.I0(r_Rx_Data), .I1(rx_data[0]), .I2(n33675), 
            .I3(n27), .O(n15990));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11798_4_lut.LUT_INIT = 16'hccca;
    SB_IO RX_pad (.PACKAGE_PIN(RX), .OUTPUT_ENABLE(VCC_net), .D_IN_0(RX_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam RX_pad.PIN_TYPE = 6'b000001;
    defparam RX_pad.PULLUP = 1'b0;
    defparam RX_pad.NEG_TRIGGER = 1'b0;
    defparam RX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 add_4_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n26492), .O(n241)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18_4_lut (.I0(n58), .I1(n80), .I2(state[1]), .I3(start), 
            .O(n30083));   // verilog/neopixel.v(35[12] 117[6])
    defparam i18_4_lut.LUT_INIT = 16'hfa3a;
    SB_LUT4 i11302_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[1]), 
            .I2(n10), .I3(n11358), .O(n15494));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11302_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11303_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[2]), 
            .I2(n4_adj_4504), .I3(n11363), .O(n15495));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11303_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_4_21 (.CI(n26492), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n26493));
    SB_LUT4 i11304_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[3]), 
            .I2(n4_adj_4504), .I3(n11358), .O(n15496));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11304_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11305_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[4]), 
            .I2(n4), .I3(n11363), .O(n15497));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11305_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11306_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[5]), 
            .I2(n4), .I3(n11358), .O(n15498));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11306_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31732_3_lut (.I0(state_7__N_3822[0]), .I1(n22661), .I2(ready_N_3903), 
            .I3(GND_net), .O(n36282));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i31732_3_lut.LUT_INIT = 16'h4c4c;
    SB_LUT4 i11307_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[6]), 
            .I2(n22696), .I3(n11363), .O(n15499));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11307_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i16_4_lut (.I0(state_adj_4568[0]), .I1(n36282), .I2(n4106), 
            .I3(n6), .O(n8_adj_4518));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i16_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 add_4_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n26491), .O(n242)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_20 (.CI(n26491), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n26492));
    SB_LUT4 i11308_4_lut (.I0(state_7__N_3838[3]), .I1(data_adj_4554[7]), 
            .I2(n22696), .I3(n11358), .O(n15500));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11308_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i4_2_lut (.I0(ID[5]), .I1(ID[0]), .I2(GND_net), .I3(GND_net), 
            .O(n12));   // verilog/TinyFPGA_B.v(169[12:21])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(ID[3]), .I1(ID[2]), .I2(ID[6]), .I3(ID[4]), 
            .O(n13));   // verilog/TinyFPGA_B.v(169[12:21])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(ID[7]), .I2(n12), .I3(ID[1]), .O(reset_N_118));   // verilog/TinyFPGA_B.v(169[12:21])
    defparam i7_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_adj_1598 (.I0(delay_counter[12]), .I1(delay_counter[11]), 
            .I2(GND_net), .I3(GND_net), .O(n4_adj_4505));
    defparam i1_2_lut_adj_1598.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut (.I0(delay_counter[9]), .I1(n4_adj_4505), .I2(delay_counter[10]), 
            .I3(n11276), .O(n32395));
    defparam i2_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i2_4_lut_adj_1599 (.I0(n32395), .I1(n11273), .I2(delay_counter[13]), 
            .I3(delay_counter[14]), .O(n32635));
    defparam i2_4_lut_adj_1599.LUT_INIT = 16'hffec;
    SB_LUT4 i3_3_lut (.I0(delay_counter[20]), .I1(delay_counter[21]), .I2(delay_counter[23]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 add_4_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n26490), .O(n243)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_1600 (.I0(delay_counter[22]), .I1(n32635), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n7));
    defparam i2_4_lut_adj_1600.LUT_INIT = 16'ha8a0;
    SB_LUT4 i18614_4_lut (.I0(n7), .I1(delay_counter[31]), .I2(n11270), 
            .I3(n8), .O(n338));   // verilog/TinyFPGA_B.v(171[14:38])
    defparam i18614_4_lut.LUT_INIT = 16'h3230;
    SB_CARRY add_4_19 (.CI(n26490), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n26491));
    SB_LUT4 add_4_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n26489), .O(n244)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_1601 (.I0(delay_counter[27]), .I1(delay_counter[29]), 
            .I2(delay_counter[24]), .I3(delay_counter[26]), .O(n12_adj_4529));
    defparam i5_4_lut_adj_1601.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(delay_counter[28]), .I1(n12_adj_4529), .I2(delay_counter[25]), 
            .I3(delay_counter[30]), .O(n11270));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut (.I0(delay_counter[17]), .I1(delay_counter[16]), .I2(delay_counter[15]), 
            .I3(GND_net), .O(n11273));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i5_3_lut (.I0(delay_counter[3]), .I1(delay_counter[5]), .I2(delay_counter[4]), 
            .I3(GND_net), .O(n14));
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6_4_lut_adj_1602 (.I0(delay_counter[8]), .I1(delay_counter[7]), 
            .I2(delay_counter[1]), .I3(delay_counter[0]), .O(n15));
    defparam i6_4_lut_adj_1602.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(n15), .I1(delay_counter[2]), .I2(n14), .I3(delay_counter[6]), 
            .O(n11276));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3118_4_lut (.I0(n11276), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24));
    defparam i3118_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i2_4_lut_adj_1603 (.I0(n24), .I1(delay_counter[14]), .I2(delay_counter[12]), 
            .I3(delay_counter[13]), .O(n32522));
    defparam i2_4_lut_adj_1603.LUT_INIT = 16'hc800;
    SB_LUT4 i2_3_lut_adj_1604 (.I0(n32522), .I1(delay_counter[18]), .I2(n11273), 
            .I3(GND_net), .O(n32539));
    defparam i2_3_lut_adj_1604.LUT_INIT = 16'hfefe;
    SB_CARRY add_4_18 (.CI(n26489), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n26490));
    SB_LUT4 add_4_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n26488), .O(n245)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_1605 (.I0(delay_counter[23]), .I1(n32539), .I2(delay_counter[20]), 
            .I3(delay_counter[19]), .O(n7_adj_4517));
    defparam i2_4_lut_adj_1605.LUT_INIT = 16'heaaa;
    SB_LUT4 i1_2_lut_adj_1606 (.I0(\data_out_frame[25] [3]), .I1(n32861), 
            .I2(GND_net), .I3(GND_net), .O(n27583));
    defparam i1_2_lut_adj_1606.LUT_INIT = 16'h9999;
    SB_LUT4 i4_4_lut (.I0(n7_adj_4517), .I1(delay_counter[21]), .I2(delay_counter[22]), 
            .I3(n11270), .O(n62));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18617_2_lut (.I0(n62), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(read_N_120));   // verilog/TinyFPGA_B.v(157[12:35])
    defparam i18617_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i289_2_lut (.I0(n338), .I1(reset_N_118), .I2(GND_net), .I3(GND_net), 
            .O(n1395));   // verilog/TinyFPGA_B.v(175[18] 177[12])
    defparam i289_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 \ID_READOUT_FSM.state_2__I_0_i5_2_lut  (.I0(\ID_READOUT_FSM.state [0]), 
            .I1(\ID_READOUT_FSM.state [1]), .I2(GND_net), .I3(GND_net), 
            .O(reset_N_115));   // verilog/TinyFPGA_B.v(168[7:11])
    defparam \ID_READOUT_FSM.state_2__I_0_i5_2_lut .LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut (.I0(reset_N_115), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(n1395), .I3(read_N_120), .O(n25));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_4_lut.LUT_INIT = 16'h7350;
    SB_LUT4 i30040_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(GND_net), .I3(GND_net), .O(n34645));
    defparam i30040_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [3]), .I2(\data_out_frame[27] [3]), 
            .I3(byte_transmit_counter[1]), .O(n38154));
    defparam byte_transmit_counter_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i33422_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n4240), .I2(n34645), 
            .I3(n25), .O(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i33422_4_lut.LUT_INIT = 16'h88ba;
    SB_LUT4 n38154_bdd_4_lut (.I0(n38154), .I1(\data_out_frame[25] [3]), 
            .I2(\data_out_frame[24] [3]), .I3(byte_transmit_counter[1]), 
            .O(n38157));
    defparam n38154_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11053_3_lut (.I0(\data_in_frame[5] [7]), .I1(rx_data[7]), .I2(n14246), 
            .I3(GND_net), .O(n15245));   // verilog/coms.v(130[12] 305[6])
    defparam i11053_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33519 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [6]), .I2(\data_out_frame[27] [6]), 
            .I3(byte_transmit_counter[1]), .O(n38136));
    defparam byte_transmit_counter_0__bdd_4_lut_33519.LUT_INIT = 16'he4aa;
    SB_LUT4 n38136_bdd_4_lut (.I0(n38136), .I1(\data_out_frame[25] [6]), 
            .I2(\data_out_frame[24] [6]), .I3(byte_transmit_counter[1]), 
            .O(n38139));
    defparam n38136_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33509 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [0]), .I2(\data_out_frame[27] [0]), 
            .I3(byte_transmit_counter[1]), .O(n38130));
    defparam byte_transmit_counter_0__bdd_4_lut_33509.LUT_INIT = 16'he4aa;
    SB_LUT4 n38130_bdd_4_lut (.I0(n38130), .I1(\data_out_frame[25] [0]), 
            .I2(\data_out_frame[24] [0]), .I3(byte_transmit_counter[1]), 
            .O(n38133));
    defparam n38130_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_IO INHA_pad (.PACKAGE_PIN(INHA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHA_pad.PIN_TYPE = 6'b011001;
    defparam INHA_pad.PULLUP = 1'b0;
    defparam INHA_pad.NEG_TRIGGER = 1'b0;
    defparam INHA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO USBPU_pad (.PACKAGE_PIN(USBPU), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam USBPU_pad.PIN_TYPE = 6'b011001;
    defparam USBPU_pad.PULLUP = 1'b0;
    defparam USBPU_pad.NEG_TRIGGER = 1'b0;
    defparam USBPU_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLA_pad (.PACKAGE_PIN(INLA), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLA_pad.PIN_TYPE = 6'b011001;
    defparam INLA_pad.PULLUP = 1'b0;
    defparam INLA_pad.NEG_TRIGGER = 1'b0;
    defparam INLA_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHB_pad (.PACKAGE_PIN(INHB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHB_pad.PIN_TYPE = 6'b011001;
    defparam INHB_pad.PULLUP = 1'b0;
    defparam INHB_pad.NEG_TRIGGER = 1'b0;
    defparam INHB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLB_pad (.PACKAGE_PIN(INLB), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLB_pad.PIN_TYPE = 6'b011001;
    defparam INLB_pad.PULLUP = 1'b0;
    defparam INLB_pad.NEG_TRIGGER = 1'b0;
    defparam INLB_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INHC_pad (.PACKAGE_PIN(INHC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INHC_pad.PIN_TYPE = 6'b011001;
    defparam INHC_pad.PULLUP = 1'b0;
    defparam INHC_pad.NEG_TRIGGER = 1'b0;
    defparam INHC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO INLC_pad (.PACKAGE_PIN(INLC), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam INLC_pad.PIN_TYPE = 6'b011001;
    defparam INLC_pad.PULLUP = 1'b0;
    defparam INLC_pad.NEG_TRIGGER = 1'b0;
    defparam INLC_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_pad (.PACKAGE_PIN(CS), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_pad.PIN_TYPE = 6'b011001;
    defparam CS_pad.PULLUP = 1'b0;
    defparam CS_pad.NEG_TRIGGER = 1'b0;
    defparam CS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO CS_CLK_pad (.PACKAGE_PIN(CS_CLK), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam CS_CLK_pad.PIN_TYPE = 6'b011001;
    defparam CS_CLK_pad.PULLUP = 1'b0;
    defparam CS_CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CS_CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO DE_pad (.PACKAGE_PIN(DE), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(DE_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam DE_pad.PIN_TYPE = 6'b011001;
    defparam DE_pad.PULLUP = 1'b0;
    defparam DE_pad.NEG_TRIGGER = 1'b0;
    defparam DE_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO NEOPXL_pad (.PACKAGE_PIN(NEOPXL), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(NEOPXL_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam NEOPXL_pad.PIN_TYPE = 6'b011001;
    defparam NEOPXL_pad.PULLUP = 1'b0;
    defparam NEOPXL_pad.NEG_TRIGGER = 1'b0;
    defparam NEOPXL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_4_17 (.CI(n26488), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n26489));
    SB_LUT4 i11049_3_lut (.I0(\data_in_frame[5] [6]), .I1(rx_data[6]), .I2(n14246), 
            .I3(GND_net), .O(n15241));   // verilog/coms.v(130[12] 305[6])
    defparam i11049_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut (.I0(\data_in_frame[1] [3]), .I1(\data_in_frame[1] [2]), 
            .I2(\data_in_frame[3] [4]), .I3(GND_net), .O(n11741));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut (.I0(\data_in_frame[3] [1]), .I1(n12023), .I2(\data_in_frame[0] [7]), 
            .I3(Kp_23__N_635), .O(n31024));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11046_3_lut (.I0(\data_in_frame[5] [5]), .I1(rx_data[5]), .I2(n14246), 
            .I3(GND_net), .O(n15238));   // verilog/coms.v(130[12] 305[6])
    defparam i11046_3_lut.LUT_INIT = 16'hacac;
    SB_DFFESR delay_counter__i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13475), 
            .D(n259), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13475), 
            .D(n258), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13475), 
            .D(n257), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13475), 
            .D(n256), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13475), 
            .D(n255), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13475), 
            .D(n254), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13475), 
            .D(n253), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13475), 
            .D(n252), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13475), 
            .D(n251), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i10 (.Q(delay_counter[10]), .C(clk16MHz), .E(n13475), 
            .D(n250), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i11 (.Q(delay_counter[11]), .C(clk16MHz), .E(n13475), 
            .D(n249), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i12 (.Q(delay_counter[12]), .C(clk16MHz), .E(n13475), 
            .D(n248), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i13 (.Q(delay_counter[13]), .C(clk16MHz), .E(n13475), 
            .D(n247), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i14 (.Q(delay_counter[14]), .C(clk16MHz), .E(n13475), 
            .D(n246), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i15 (.Q(delay_counter[15]), .C(clk16MHz), .E(n13475), 
            .D(n245), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i16 (.Q(delay_counter[16]), .C(clk16MHz), .E(n13475), 
            .D(n244), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i17 (.Q(delay_counter[17]), .C(clk16MHz), .E(n13475), 
            .D(n243), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i18 (.Q(delay_counter[18]), .C(clk16MHz), .E(n13475), 
            .D(n242), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i19 (.Q(delay_counter[19]), .C(clk16MHz), .E(n13475), 
            .D(n241), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i20 (.Q(delay_counter[20]), .C(clk16MHz), .E(n13475), 
            .D(n240), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i21 (.Q(delay_counter[21]), .C(clk16MHz), .E(n13475), 
            .D(n239), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i22 (.Q(delay_counter[22]), .C(clk16MHz), .E(n13475), 
            .D(n238), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i23 (.Q(delay_counter[23]), .C(clk16MHz), .E(n13475), 
            .D(n237), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i24 (.Q(delay_counter[24]), .C(clk16MHz), .E(n13475), 
            .D(n236), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i25 (.Q(delay_counter[25]), .C(clk16MHz), .E(n13475), 
            .D(n235), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i26 (.Q(delay_counter[26]), .C(clk16MHz), .E(n13475), 
            .D(n234), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i27 (.Q(delay_counter[27]), .C(clk16MHz), .E(n13475), 
            .D(n233), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i28 (.Q(delay_counter[28]), .C(clk16MHz), .E(n13475), 
            .D(n232), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i29 (.Q(delay_counter[29]), .C(clk16MHz), .E(n13475), 
            .D(n231), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i30 (.Q(delay_counter[30]), .C(clk16MHz), .E(n13475), 
            .D(n230), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i31 (.Q(delay_counter[31]), .C(clk16MHz), .E(n13475), 
            .D(n229), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFF read_32 (.Q(state_7__N_3572[0]), .C(clk16MHz), .D(n33123));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 LessThan_663_i15_2_lut (.I0(r_Clock_Count_adj_4561[7]), .I1(o_Rx_DV_N_3356[7]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4524));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_4_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n26487), .O(n246)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_663_i9_2_lut (.I0(r_Clock_Count_adj_4561[4]), .I1(o_Rx_DV_N_3356[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_663_i13_2_lut (.I0(r_Clock_Count_adj_4561[6]), .I1(o_Rx_DV_N_3356[6]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4522));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_663_i11_2_lut (.I0(r_Clock_Count_adj_4561[5]), .I1(o_Rx_DV_N_3356[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i11_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_4_16 (.CI(n26487), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n26488));
    SB_LUT4 LessThan_663_i4_4_lut (.I0(r_Clock_Count_adj_4561[0]), .I1(o_Rx_DV_N_3356[1]), 
            .I2(r_Clock_Count_adj_4561[1]), .I3(o_Rx_DV_N_3356[0]), .O(n4_adj_4519));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i33036_3_lut (.I0(n4_adj_4519), .I1(o_Rx_DV_N_3356[5]), .I2(n11), 
            .I3(GND_net), .O(n37650));   // verilog/uart_tx.v(117[17:57])
    defparam i33036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33037_3_lut (.I0(n37650), .I1(o_Rx_DV_N_3356[6]), .I2(n13_adj_4522), 
            .I3(GND_net), .O(n37651));   // verilog/uart_tx.v(117[17:57])
    defparam i33037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32284_4_lut (.I0(n13_adj_4522), .I1(n11), .I2(n9), .I3(n36349), 
            .O(n36898));
    defparam i32284_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 LessThan_663_i8_3_lut (.I0(n6_adj_4520), .I1(o_Rx_DV_N_3356[4]), 
            .I2(n9), .I3(GND_net), .O(n8_adj_4521));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32896_3_lut (.I0(n37651), .I1(o_Rx_DV_N_3356[7]), .I2(n15_adj_4524), 
            .I3(GND_net), .O(n14_adj_4523));   // verilog/uart_tx.v(117[17:57])
    defparam i32896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32723_4_lut (.I0(n14_adj_4523), .I1(n8_adj_4521), .I2(n15_adj_4524), 
            .I3(n36898), .O(n37337));   // verilog/uart_tx.v(117[17:57])
    defparam i32723_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32724_3_lut (.I0(n37337), .I1(o_Rx_DV_N_3356[8]), .I2(r_Clock_Count_adj_4561[8]), 
            .I3(GND_net), .O(n2857));   // verilog/uart_tx.v(117[17:57])
    defparam i32724_3_lut.LUT_INIT = 16'h8e8e;
    SB_DFFE \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n30177));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i49_4_lut_4_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(n4240), .I3(n36273), .O(n30177));
    defparam i49_4_lut_4_lut.LUT_INIT = 16'hf7c4;
    SB_LUT4 i1_2_lut_3_lut_adj_1607 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(reset_N_118), .I3(GND_net), .O(n13475));
    defparam i1_2_lut_3_lut_adj_1607.LUT_INIT = 16'h5151;
    SB_LUT4 i32203_2_lut_3_lut (.I0(n62), .I1(delay_counter[31]), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n36119));
    defparam i32203_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 i1098_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(reset_N_118), .I3(GND_net), .O(n4358));
    defparam i1098_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 add_4_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n26486), .O(n247)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_15 (.CI(n26486), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n26487));
    SB_LUT4 add_4_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n26485), .O(n248)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_14 (.CI(n26485), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n26486));
    SB_LUT4 add_4_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n26484), .O(n249)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_13 (.CI(n26484), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n26485));
    SB_LUT4 RX_I_0_1_lut (.I0(RX_c), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(RX_N_2));   // verilog/TinyFPGA_B.v(97[10:13])
    defparam RX_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 LessThan_660_i9_2_lut (.I0(r_Clock_Count[4]), .I1(o_Rx_DV_N_3356[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4528));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_660_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_4_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n26483), .O(n250)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 LessThan_660_i4_4_lut (.I0(r_Clock_Count[0]), .I1(o_Rx_DV_N_3356[1]), 
            .I2(r_Clock_Count[1]), .I3(o_Rx_DV_N_3356[0]), .O(n4_adj_4525));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_660_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 LessThan_660_i8_3_lut (.I0(n6_adj_4526), .I1(o_Rx_DV_N_3356[4]), 
            .I2(n9_adj_4528), .I3(GND_net), .O(n8_adj_4527));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_660_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33187_4_lut (.I0(n8_adj_4527), .I1(n4_adj_4525), .I2(n9_adj_4528), 
            .I3(n36320), .O(n37801));   // verilog/uart_rx.v(119[17:57])
    defparam i33187_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33188_3_lut (.I0(n37801), .I1(o_Rx_DV_N_3356[5]), .I2(r_Clock_Count[5]), 
            .I3(GND_net), .O(n37802));   // verilog/uart_rx.v(119[17:57])
    defparam i33188_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_4_12 (.CI(n26483), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n26484));
    SB_LUT4 i33151_3_lut (.I0(n37802), .I1(o_Rx_DV_N_3356[6]), .I2(r_Clock_Count[6]), 
            .I3(GND_net), .O(n37765));   // verilog/uart_rx.v(119[17:57])
    defparam i33151_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33065_3_lut (.I0(n37765), .I1(o_Rx_DV_N_3356[7]), .I2(r_Clock_Count[7]), 
            .I3(GND_net), .O(n2854));   // verilog/uart_rx.v(119[17:57])
    defparam i33065_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_4_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n26482), .O(n251)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11063_3_lut_3_lut (.I0(\FRAME_MATCHER.rx_data_ready_prev ), .I1(rx_data_ready), 
            .I2(reset), .I3(GND_net), .O(n15255));   // verilog/coms.v(130[12] 305[6])
    defparam i11063_3_lut_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11336_3_lut (.I0(\data_in_frame[1] [0]), .I1(rx_data[0]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n15528));   // verilog/coms.v(130[12] 305[6])
    defparam i11336_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11014_3_lut (.I0(neopxl_color[17]), .I1(\data_in_frame[4] [1]), 
            .I2(n8682), .I3(GND_net), .O(n15206));   // verilog/coms.v(130[12] 305[6])
    defparam i11014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11015_3_lut (.I0(neopxl_color[16]), .I1(\data_in_frame[4] [0]), 
            .I2(n8682), .I3(GND_net), .O(n15207));   // verilog/coms.v(130[12] 305[6])
    defparam i11015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33279_3_lut (.I0(rx_data[2]), .I1(\data_in_frame[1] [2]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n30351));   // verilog/coms.v(94[13:20])
    defparam i33279_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33278_3_lut (.I0(rx_data[3]), .I1(\data_in_frame[1] [3]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n30345));   // verilog/coms.v(94[13:20])
    defparam i33278_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11016_3_lut (.I0(neopxl_color[15]), .I1(\data_in_frame[5] [7]), 
            .I2(n8682), .I3(GND_net), .O(n15208));   // verilog/coms.v(130[12] 305[6])
    defparam i11016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11020_3_lut (.I0(neopxl_color[14]), .I1(\data_in_frame[5] [6]), 
            .I2(n8682), .I3(GND_net), .O(n15212));   // verilog/coms.v(130[12] 305[6])
    defparam i11020_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11021_3_lut (.I0(neopxl_color[13]), .I1(\data_in_frame[5] [5]), 
            .I2(n8682), .I3(GND_net), .O(n15213));   // verilog/coms.v(130[12] 305[6])
    defparam i11021_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1608 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[0] [2]), 
            .O(n14787));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1608.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1609 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[0] [3]), 
            .O(n30765));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1609.LUT_INIT = 16'h4500;
    SB_LUT4 i26944_3_lut (.I0(reset), .I1(n8_adj_4515), .I2(n30905), .I3(GND_net), 
            .O(n7_adj_4516));
    defparam i26944_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11348_3_lut (.I0(\data_in_frame[1] [4]), .I1(rx_data[4]), .I2(n7_adj_4516), 
            .I3(GND_net), .O(n15540));   // verilog/coms.v(130[12] 305[6])
    defparam i11348_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1610 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[0] [4]), 
            .O(n30766));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1610.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1611 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [0]), 
            .O(n30767));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1611.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1612 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [1]), 
            .O(n30768));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1612.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1613 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [3]), 
            .O(n30769));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1613.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1614 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [5]), 
            .O(n30770));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1614.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1615 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [6]), 
            .O(n30771));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1615.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1616 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[1] [7]), 
            .O(n30761));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1616.LUT_INIT = 16'h4500;
    SB_CARRY add_4_11 (.CI(n26482), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n26483));
    SB_LUT4 i11036_3_lut (.I0(neopxl_color[12]), .I1(\data_in_frame[5] [4]), 
            .I2(n8682), .I3(GND_net), .O(n15228));   // verilog/coms.v(130[12] 305[6])
    defparam i11036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16186_3_lut (.I0(neopxl_color[11]), .I1(\data_in_frame[5] [3]), 
            .I2(n8682), .I3(GND_net), .O(n15229));
    defparam i16186_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_4_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n26481), .O(n252)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1617 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[3] [1]), 
            .O(n30772));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1617.LUT_INIT = 16'h4500;
    SB_LUT4 i16816_3_lut (.I0(neopxl_color[21]), .I1(\data_in_frame[4] [5]), 
            .I2(n8682), .I3(GND_net), .O(n15230));
    defparam i16816_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11039_3_lut (.I0(neopxl_color[10]), .I1(\data_in_frame[5] [2]), 
            .I2(n8682), .I3(GND_net), .O(n15231));   // verilog/coms.v(130[12] 305[6])
    defparam i11039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1618 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[3] [3]), 
            .O(n30773));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1618.LUT_INIT = 16'h4500;
    SB_CARRY add_4_10 (.CI(n26481), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n26482));
    SB_LUT4 add_4_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n26480), .O(n253)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1619 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[3] [4]), 
            .O(n30774));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1619.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1620 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[3] [6]), 
            .O(n30775));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1620.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1621 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[3] [7]), 
            .O(n30776));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1621.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1622 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [0]), 
            .O(n30777));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1622.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1623 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [1]), 
            .O(n30778));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1623.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1624 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [2]), 
            .O(n14771));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1624.LUT_INIT = 16'h4500;
    SB_LUT4 i11042_3_lut (.I0(neopxl_color[9]), .I1(\data_in_frame[5] [1]), 
            .I2(n8682), .I3(GND_net), .O(n15234));   // verilog/coms.v(130[12] 305[6])
    defparam i11042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1625 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [3]), 
            .O(n30779));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1625.LUT_INIT = 16'h4500;
    SB_LUT4 i11372_3_lut (.I0(\data_in_frame[13] [0]), .I1(rx_data[0]), 
            .I2(n30889), .I3(GND_net), .O(n15564));   // verilog/coms.v(130[12] 305[6])
    defparam i11372_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1626 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [4]), 
            .O(n30780));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1626.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1627 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [5]), 
            .O(n30781));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1627.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1628 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [6]), 
            .O(n14767));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1628.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1629 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[4] [7]), 
            .O(n30782));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1629.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1630 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [0]), 
            .O(n30783));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1630.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1631 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [1]), 
            .O(n30784));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1631.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1632 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [2]), 
            .O(n14763));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1632.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1633 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [3]), 
            .O(n30764));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1633.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1634 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [4]), 
            .O(n14761));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1634.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1635 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [5]), 
            .O(n30785));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1635.LUT_INIT = 16'h4500;
    SB_DFF reset_33 (.Q(reset), .C(clk16MHz), .D(n30479));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13475), 
            .D(n260), .R(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_CARRY add_4_9 (.CI(n26480), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n26481));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1636 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [6]), 
            .O(n14759));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1636.LUT_INIT = 16'h4500;
    SB_LUT4 i11375_3_lut (.I0(\data_in_frame[13] [1]), .I1(rx_data[1]), 
            .I2(n30889), .I3(GND_net), .O(n15567));   // verilog/coms.v(130[12] 305[6])
    defparam i11375_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n26479), .O(n254)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_8 (.CI(n26479), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n26480));
    SB_LUT4 add_4_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n26478), .O(n255)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1637 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[5] [7]), 
            .O(n30762));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1637.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1638 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [0]), 
            .O(n14757));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1638.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1639 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [1]), 
            .O(n30786));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1639.LUT_INIT = 16'h4500;
    SB_CARRY add_4_7 (.CI(n26478), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n26479));
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1640 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [2]), 
            .O(n30787));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1640.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1641 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [3]), 
            .O(n30788));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1641.LUT_INIT = 16'h4500;
    GND i1 (.Y(GND_net));
    SB_LUT4 add_4_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n26477), .O(n256)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1642 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [4]), 
            .O(n30789));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1642.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1643 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [5]), 
            .O(n30790));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1643.LUT_INIT = 16'h4500;
    SB_LUT4 i11043_3_lut (.I0(neopxl_color[8]), .I1(\data_in_frame[5] [0]), 
            .I2(n8682), .I3(GND_net), .O(n15235));   // verilog/coms.v(130[12] 305[6])
    defparam i11043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1644 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [6]), 
            .O(n30791));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1644.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1645 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[12] [7]), 
            .O(n30792));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1645.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1646 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [0]), 
            .O(n30793));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1646.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1647 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [1]), 
            .O(n30794));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1647.LUT_INIT = 16'h4500;
    SB_LUT4 i11378_3_lut (.I0(\data_in_frame[13] [2]), .I1(rx_data[2]), 
            .I2(n30889), .I3(GND_net), .O(n15570));   // verilog/coms.v(130[12] 305[6])
    defparam i11378_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1648 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [2]), 
            .O(n30795));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1648.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1649 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [3]), 
            .O(n30796));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1649.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1650 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [4]), 
            .O(n30797));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1650.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1651 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [5]), 
            .O(n30798));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1651.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1652 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [6]), 
            .O(n30799));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1652.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1653 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[13] [7]), 
            .O(n30800));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1653.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1654 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [0]), 
            .O(n14741));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1654.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1655 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [1]), 
            .O(n30801));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1655.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1656 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [2]), 
            .O(n30802));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1656.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1657 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [3]), 
            .O(n30803));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1657.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1658 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [4]), 
            .O(n30804));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1658.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1659 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [5]), 
            .O(n30760));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1659.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1660 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [6]), 
            .O(n30805));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1660.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1661 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[14] [7]), 
            .O(n30806));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1661.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1662 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [0]), 
            .O(n30807));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1662.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1663 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [1]), 
            .O(n30808));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1663.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1664 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [2]), 
            .O(n14731));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1664.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1665 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [3]), 
            .O(n14730));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1665.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1666 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [4]), 
            .O(n30809));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1666.LUT_INIT = 16'h4500;
    SB_LUT4 i3_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n62), .I2(delay_counter[31]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n33123));
    defparam i3_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i15954_3_lut (.I0(neopxl_color[7]), .I1(\data_in_frame[6] [7]), 
            .I2(n8682), .I3(GND_net), .O(n15244));
    defparam i15954_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11057_3_lut (.I0(neopxl_color[5]), .I1(\data_in_frame[6] [5]), 
            .I2(n8682), .I3(GND_net), .O(n15249));   // verilog/coms.v(130[12] 305[6])
    defparam i11057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1667 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [5]), 
            .O(n30810));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1667.LUT_INIT = 16'h4500;
    SB_LUT4 i11058_3_lut (.I0(neopxl_color[4]), .I1(\data_in_frame[6] [4]), 
            .I2(n8682), .I3(GND_net), .O(n15250));   // verilog/coms.v(130[12] 305[6])
    defparam i11058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11060_3_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(timer[0]), 
            .I2(n1758), .I3(GND_net), .O(n15252));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16035_3_lut (.I0(neopxl_color[1]), .I1(\data_in_frame[6] [1]), 
            .I2(n8682), .I3(GND_net), .O(n15254));
    defparam i16035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1668 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [6]), 
            .O(n30811));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1668.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1669 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[23] [7]), 
            .O(n30812));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1669.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1670 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [0]), 
            .O(n30813));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1670.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1671 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [1]), 
            .O(n30814));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1671.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1672 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [2]), 
            .O(n14723));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1672.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1673 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [3]), 
            .O(n30815));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1673.LUT_INIT = 16'h4500;
    SB_LUT4 i11069_3_lut (.I0(baudrate[7]), .I1(data_adj_4554[7]), .I2(n32440), 
            .I3(GND_net), .O(n15261));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11069_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12005_2_lut_4_lut (.I0(reset), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1447));   // verilog/coms.v(130[12] 305[6])
    defparam i12005_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1674 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [4]), 
            .O(n30816));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1674.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1675 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [5]), 
            .O(n30817));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1675.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1676 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [6]), 
            .O(n30818));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1676.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1677 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[24] [7]), 
            .O(n30819));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1677.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1678 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [0]), 
            .O(n30820));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1678.LUT_INIT = 16'h4500;
    SB_LUT4 i11093_3_lut (.I0(baudrate[6]), .I1(data_adj_4554[6]), .I2(n32440), 
            .I3(GND_net), .O(n15285));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11093_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11094_3_lut (.I0(baudrate[5]), .I1(data_adj_4554[5]), .I2(n32440), 
            .I3(GND_net), .O(n15286));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11094_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1679 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [1]), 
            .O(n30821));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1679.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1680 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [2]), 
            .O(n14715));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1680.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1681 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [3]), 
            .O(n14714));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1681.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1682 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [4]), 
            .O(n30822));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1682.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1683 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [5]), 
            .O(n30823));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1683.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1684 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [6]), 
            .O(n30824));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1684.LUT_INIT = 16'h4500;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1685 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2377 ), .I3(\data_out_frame[25] [7]), 
            .O(n30763));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1685.LUT_INIT = 16'h4500;
    SB_LUT4 i11105_3_lut (.I0(baudrate[4]), .I1(data_adj_4554[4]), .I2(n32440), 
            .I3(GND_net), .O(n15297));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11105_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11106_3_lut (.I0(baudrate[3]), .I1(data_adj_4554[3]), .I2(n32440), 
            .I3(GND_net), .O(n15298));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11106_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(n62), .I3(delay_counter[31]), .O(n6_adj_4506));
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'h00b0;
    SB_LUT4 i11108_3_lut (.I0(baudrate[2]), .I1(data_adj_4554[2]), .I2(n32440), 
            .I3(GND_net), .O(n15300));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11108_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11109_3_lut (.I0(baudrate[1]), .I1(data_adj_4554[1]), .I2(n32440), 
            .I3(GND_net), .O(n15301));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11109_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11381_3_lut (.I0(\data_in_frame[13] [3]), .I1(rx_data[3]), 
            .I2(n30889), .I3(GND_net), .O(n15573));   // verilog/coms.v(130[12] 305[6])
    defparam i11381_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10472_4_lut (.I0(n13475), .I1(n36119), .I2(n338), .I3(n4358), 
            .O(n14664));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i10472_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i11110_3_lut (.I0(baudrate[0]), .I1(data_adj_4554[0]), .I2(n32440), 
            .I3(GND_net), .O(n15302));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11110_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11384_3_lut (.I0(\data_in_frame[13] [4]), .I1(rx_data[4]), 
            .I2(n30889), .I3(GND_net), .O(n15576));   // verilog/coms.v(130[12] 305[6])
    defparam i11384_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_1686 (.I0(\data_in_frame[5] [3]), .I1(\data_in_frame[5] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n31322));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1686.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1687 (.I0(\data_in_frame[7] [5]), .I1(n31322), 
            .I2(n31024), .I3(n12182), .O(n27820));   // verilog/coms.v(99[12:25])
    defparam i3_4_lut_adj_1687.LUT_INIT = 16'h6996;
    SB_LUT4 i11387_3_lut (.I0(\data_in_frame[13] [5]), .I1(rx_data[5]), 
            .I2(n30889), .I3(GND_net), .O(n15579));   // verilog/coms.v(130[12] 305[6])
    defparam i11387_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_1688 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[3] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n31015));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1688.LUT_INIT = 16'h6666;
    SB_LUT4 i11197_3_lut (.I0(baudrate[31]), .I1(data_adj_4554[7]), .I2(n32314), 
            .I3(GND_net), .O(n15389));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11197_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1057_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n338), .I3(reset_N_118), .O(n4240));   // verilog/TinyFPGA_B.v(153[5] 179[12])
    defparam i1057_4_lut_4_lut.LUT_INIT = 16'h8ccc;
    SB_LUT4 i11199_3_lut (.I0(\data_in_frame[9] [6]), .I1(rx_data[6]), .I2(n14238), 
            .I3(GND_net), .O(n15391));   // verilog/coms.v(130[12] 305[6])
    defparam i11199_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11238_3_lut (.I0(baudrate[30]), .I1(data_adj_4554[6]), .I2(n32314), 
            .I3(GND_net), .O(n15430));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11238_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11194_3_lut (.I0(\data_in_frame[9] [5]), .I1(rx_data[5]), .I2(n14238), 
            .I3(GND_net), .O(n15386));   // verilog/coms.v(130[12] 305[6])
    defparam i11194_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11191_3_lut (.I0(\data_in_frame[9] [4]), .I1(rx_data[4]), .I2(n14238), 
            .I3(GND_net), .O(n15383));   // verilog/coms.v(130[12] 305[6])
    defparam i11191_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11244_3_lut (.I0(baudrate[29]), .I1(data_adj_4554[5]), .I2(n32314), 
            .I3(GND_net), .O(n15436));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11244_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11245_3_lut (.I0(baudrate[28]), .I1(data_adj_4554[4]), .I2(n32314), 
            .I3(GND_net), .O(n15437));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11245_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_660_i6_3_lut_3_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3356[3]), 
            .I2(o_Rx_DV_N_3356[2]), .I3(GND_net), .O(n6_adj_4526));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_660_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i31706_3_lut_4_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3356[3]), 
            .I2(o_Rx_DV_N_3356[2]), .I3(r_Clock_Count[2]), .O(n36320));   // verilog/uart_rx.v(119[17:57])
    defparam i31706_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i12_3_lut_4_lut (.I0(rx_data_ready), .I1(r_SM_Main[1]), .I2(r_SM_Main[2]), 
            .I3(n13482), .O(n28495));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i31735_3_lut_4_lut (.I0(r_Clock_Count_adj_4561[3]), .I1(o_Rx_DV_N_3356[3]), 
            .I2(o_Rx_DV_N_3356[2]), .I3(r_Clock_Count_adj_4561[2]), .O(n36349));   // verilog/uart_tx.v(117[17:57])
    defparam i31735_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 LessThan_663_i6_3_lut_3_lut (.I0(r_Clock_Count_adj_4561[3]), .I1(o_Rx_DV_N_3356[3]), 
            .I2(o_Rx_DV_N_3356[2]), .I3(GND_net), .O(n6_adj_4520));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_663_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i11246_3_lut (.I0(baudrate[27]), .I1(data_adj_4554[3]), .I2(n32314), 
            .I3(GND_net), .O(n15438));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11246_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11188_3_lut (.I0(\data_in_frame[9] [3]), .I1(rx_data[3]), .I2(n14238), 
            .I3(GND_net), .O(n15380));   // verilog/coms.v(130[12] 305[6])
    defparam i11188_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11185_3_lut (.I0(\data_in_frame[9] [2]), .I1(rx_data[2]), .I2(n14238), 
            .I3(GND_net), .O(n15377));   // verilog/coms.v(130[12] 305[6])
    defparam i11185_3_lut.LUT_INIT = 16'hacac;
    EEPROM eeprom (.GND_net(GND_net), .data_ready(data_ready), .\state_7__N_3572[0] (state_7__N_3572[0]), 
           .ready_N_3903(ready_N_3903), .clk16MHz(clk16MHz), .\state_7__N_3822[0] (state_7__N_3822[0]), 
           .n15438(n15438), .baudrate({baudrate}), .n15437(n15437), .n15436(n15436), 
           .n15430(n15430), .n15389(n15389), .ID({ID}), .n15302(n15302), 
           .n15301(n15301), .n15300(n15300), .n15298(n15298), .n15297(n15297), 
           .n15286(n15286), .n15285(n15285), .n15261(n15261), .n15769(n15769), 
           .n15766(n15766), .n15758(n15758), .data({data_adj_4554}), .\state[0] (state_adj_4568[0]), 
           .n32440(n32440), .n32314(n32314), .scl_enable(scl_enable), 
           .n15500(n15500), .n15499(n15499), .n15498(n15498), .n15497(n15497), 
           .n15496(n15496), .n15495(n15495), .n15494(n15494), .\state_7__N_3838[3] (state_7__N_3838[3]), 
           .n4106(n4106), .n10(n10), .n22661(n22661), .n4(n4_adj_4504), 
           .n4_adj_11(n4), .n11363(n11363), .VCC_net(VCC_net), .n11358(n11358), 
           .n22696(n22696), .n8(n8_adj_4518), .n15931(n15931), .sda_enable(sda_enable), 
           .n6(n6), .scl(scl), .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(182[10] 194[6])
    \neopixel(CLOCK_SPEED_HZ=16000000)  nx (.clk16MHz(clk16MHz), .\neo_pixel_transmitter.t0 ({\neo_pixel_transmitter.t0 }), 
            .GND_net(GND_net), .start(start), .\state[1] (state[1]), .LED_c(LED_c), 
            .neopxl_color({neopxl_color}), .VCC_net(VCC_net), .timer({timer}), 
            .\data_out_frame[24][6] (\data_out_frame[24] [6]), .n31192(n31192), 
            .n31249(n31249), .n31003(n31003), .\data_out_frame[23][0] (\data_out_frame[23] [0]), 
            .n16(n16), .n31263(n31263), .n15252(n15252), .n32328(n32328), 
            .\data_out_frame[23][1] (\data_out_frame[23] [1]), .n28284(n28284), 
            .n30083(n30083), .n15831(n15831), .n15829(n15829), .n15828(n15828), 
            .n15827(n15827), .n15826(n15826), .n15825(n15825), .n15824(n15824), 
            .n15823(n15823), .n15822(n15822), .n15821(n15821), .n15820(n15820), 
            .n15819(n15819), .n15818(n15818), .n15817(n15817), .n15816(n15816), 
            .n15815(n15815), .n15814(n15814), .n15813(n15813), .n15812(n15812), 
            .n15811(n15811), .n15810(n15810), .n15809(n15809), .n15808(n15808), 
            .n15807(n15807), .n15806(n15806), .n15805(n15805), .n15804(n15804), 
            .n15803(n15803), .n15802(n15802), .n15801(n15801), .n15800(n15800), 
            .n58(n58), .\data_in_frame[4][6] (\data_in_frame[4] [6]), .n8682(n8682), 
            .n15233(n15233), .NEOPXL_c(NEOPXL_c), .\data_in_frame[6][6] (\data_in_frame[6] [6]), 
            .n15248(n15248), .n1758(n1758), .n12269(n12269), .\data_out_frame[23][6] (\data_out_frame[23] [6]), 
            .\data_out_frame[23][4] (\data_out_frame[23] [4]), .\data_out_frame[23][5] (\data_out_frame[23] [5]), 
            .n80(n80)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(51[24] 57[2])
    coms neopxl_color_23__I_0 (.clk16MHz(clk16MHz), .reset(reset), .GND_net(GND_net), 
         .\data_out_frame[14] ({\data_out_frame[14] }), .byte_transmit_counter({Open_0, 
         Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, byte_transmit_counter[0]}), 
         .\data_out_frame[12] ({\data_out_frame[12] }), .\data_out_frame[13] ({\data_out_frame[13] }), 
         .\byte_transmit_counter[1] (byte_transmit_counter[1]), .\data_in_frame[1] ({\data_in_frame[1] }), 
         .\data_in_frame[17] ({Open_7, Open_8, \data_in_frame[17] [5:2], 
         Open_9, Open_10}), .n15585(n15585), .VCC_net(VCC_net), .\data_in_frame[13] ({\data_in_frame[13] }), 
         .\FRAME_MATCHER.i_31__N_2377 (\FRAME_MATCHER.i_31__N_2377 ), .neopxl_color({neopxl_color}), 
         .n8682(n8682), .n15582(n15582), .n15579(n15579), .\data_out_frame[5] ({\data_out_frame[5] }), 
         .\data_out_frame[4] ({\data_out_frame[4] }), .n15576(n15576), .n15573(n15573), 
         .\data_in_frame[19] ({Open_11, \data_in_frame[19] [6], Open_12, 
         Open_13, Open_14, Open_15, Open_16, Open_17}), .n15570(n15570), 
         .n15567(n15567), .n15564(n15564), .rx_data({rx_data}), .n14240(n14240), 
         .n31489(n31489), .n15540(n15540), .n30345(n30345), .n30351(n30351), 
         .n14222(n14222), .n15528(n15528), .n14224(n14224), .\data_in_frame[19][2] (\data_in_frame[19] [2]), 
         .\data_in_frame[19][3] (\data_in_frame[19] [3]), .\data_in_frame[8][6] (\data_in_frame[8] [6]), 
         .n15238(n15238), .\data_in_frame[5] ({\data_in_frame[5] }), .\data_in_frame[0] ({\data_in_frame[0] [7], 
         Open_18, Open_19, Open_20, Open_21, Open_22, Open_23, Open_24}), 
         .\data_in_frame[3][4] (\data_in_frame[3] [4]), .\data_in_frame[19][4] (\data_in_frame[19] [4]), 
         .\data_in_frame[19][5] (\data_in_frame[19] [5]), .n15241(n15241), 
         .rx_data_ready(rx_data_ready), .\FRAME_MATCHER.rx_data_ready_prev (\FRAME_MATCHER.rx_data_ready_prev ), 
         .\data_in_frame[16][4] (\data_in_frame[16] [4]), .\data_out_frame[23] ({\data_out_frame[23] }), 
         .LED_c(LED_c), .n15245(n15245), .n12269(n12269), .\data_in_frame[6][1] (\data_in_frame[6] [1]), 
         .\data_in_frame[6][4] (\data_in_frame[6] [4]), .\data_in_frame[6][5] (\data_in_frame[6] [5]), 
         .DE_c(DE_c), .\data_in_frame[6][6] (\data_in_frame[6] [6]), .\data_in_frame[6][7] (\data_in_frame[6] [7]), 
         .\data_in_frame[7][5] (\data_in_frame[7] [5]), .n30905(n30905), 
         .n14246(n14246), .n27820(n27820), .\data_in_frame[15] ({\data_in_frame[15] }), 
         .\data_in_frame[9][1] (\data_in_frame[9] [1]), .\data_in_frame[9][2] (\data_in_frame[9] [2]), 
         .n1447(n1447), .n15362(n15362), .\data_in_frame[8][5] (\data_in_frame[8] [5]), 
         .n15365(n15365), .n15368(n15368), .\data_in_frame[8][7] (\data_in_frame[8] [7]), 
         .n15371(n15371), .\data_in_frame[9][0] (\data_in_frame[9] [0]), 
         .n15374(n15374), .\FRAME_MATCHER.state[3] (\FRAME_MATCHER.state [3]), 
         .\data_out_frame[25] ({\data_out_frame[25] }), .n15377(n15377), 
         .n15380(n15380), .\data_in_frame[9][3] (\data_in_frame[9] [3]), 
         .n15383(n15383), .\data_in_frame[9][4] (\data_in_frame[9] [4]), 
         .n15386(n15386), .\data_in_frame[9][5] (\data_in_frame[9] [5]), 
         .n15391(n15391), .\data_in_frame[9][6] (\data_in_frame[9] [6]), 
         .n27583(n27583), .n32861(n32861), .\data_out_frame[0][2] (\data_out_frame[0] [2]), 
         .n14787(n14787), .\data_out_frame[27] ({\data_out_frame[27] }), 
         .\data_out_frame[26] ({\data_out_frame[26] }), .\data_out_frame[24] ({\data_out_frame[24] }), 
         .\data_out_frame[0][3] (\data_out_frame[0] [3]), .n30765(n30765), 
         .\data_out_frame[0][4] (\data_out_frame[0] [4]), .n30766(n30766), 
         .\data_in_frame[16][0] (\data_in_frame[16] [0]), .\data_in_frame[16][5] (\data_in_frame[16] [5]), 
         .\data_out_frame[1][0] (\data_out_frame[1] [0]), .n30767(n30767), 
         .n31263(n31263), .\data_in_frame[21] ({\data_in_frame[21] }), .n31003(n31003), 
         .\data_out_frame[1][1] (\data_out_frame[1] [1]), .n30768(n30768), 
         .\data_out_frame[1][3] (\data_out_frame[1] [3]), .n30769(n30769), 
         .\data_out_frame[1][5] (\data_out_frame[1] [5]), .n30770(n30770), 
         .\data_out_frame[1][6] (\data_out_frame[1] [6]), .n30771(n30771), 
         .\data_out_frame[1][7] (\data_out_frame[1] [7]), .n30761(n30761), 
         .\data_in_frame[16][3] (\data_in_frame[16] [3]), .n28284(n28284), 
         .n12182(n12182), .Kp_23__N_635(Kp_23__N_635), .n31249(n31249), 
         .\data_in_frame[4] ({\data_in_frame[4] }), .n30887(n30887), .n32328(n32328), 
         .n15255(n15255), .n15254(n15254), .n15250(n15250), .n15249(n15249), 
         .n15248(n15248), .n15244(n15244), .\data_out_frame[3][1] (\data_out_frame[3] [1]), 
         .n30772(n30772), .\data_out_frame[3][3] (\data_out_frame[3] [3]), 
         .n30773(n30773), .\data_out_frame[3][4] (\data_out_frame[3] [4]), 
         .n30774(n30774), .\data_out_frame[3][6] (\data_out_frame[3] [6]), 
         .n30775(n30775), .\data_out_frame[3][7] (\data_out_frame[3] [7]), 
         .n30776(n30776), .n30777(n30777), .n30778(n30778), .n14771(n14771), 
         .n30779(n30779), .n30780(n30780), .n30781(n30781), .n14767(n14767), 
         .n30782(n30782), .n30783(n30783), .n30784(n30784), .n14763(n14763), 
         .n30764(n30764), .n14761(n14761), .n30785(n30785), .n14759(n14759), 
         .n30762(n30762), .n14757(n14757), .n30786(n30786), .n30787(n30787), 
         .n30788(n30788), .n15235(n15235), .n30789(n30789), .n30790(n30790), 
         .n30791(n30791), .n30792(n30792), .n30793(n30793), .n30794(n30794), 
         .n30795(n30795), .n30796(n30796), .n30797(n30797), .n30798(n30798), 
         .n30799(n30799), .n30800(n30800), .n14741(n14741), .n30801(n30801), 
         .n30802(n30802), .n30803(n30803), .n30804(n30804), .n30760(n30760), 
         .n30805(n30805), .n30806(n30806), .n30807(n30807), .n30808(n30808), 
         .n14731(n14731), .n14730(n14730), .n30809(n30809), .n30810(n30810), 
         .n30811(n30811), .n15234(n15234), .n30812(n30812), .n30813(n30813), 
         .n30814(n30814), .n14723(n14723), .n15233(n15233), .n15231(n15231), 
         .n15230(n15230), .n15229(n15229), .n15228(n15228), .n30815(n30815), 
         .n15213(n15213), .n15212(n15212), .n15208(n15208), .n15207(n15207), 
         .n15206(n15206), .n30816(n30816), .n30817(n30817), .n30818(n30818), 
         .n30819(n30819), .n30820(n30820), .n30821(n30821), .n14715(n14715), 
         .n14714(n14714), .n30822(n30822), .n30823(n30823), .n30824(n30824), 
         .n30763(n30763), .n30746(n30746), .n30747(n30747), .n14707(n14707), 
         .n30748(n30748), .n30749(n30749), .n30750(n30750), .n30751(n30751), 
         .n30752(n30752), .n30753(n30753), .n30754(n30754), .n14699(n14699), 
         .n30755(n30755), .n30756(n30756), .n30745(n30745), .n30757(n30757), 
         .n30758(n30758), .n15938(n15938), .n15935(n15935), .n15928(n15928), 
         .n15914(n15914), .n15913(n15913), .n15909(n15909), .n15906(n15906), 
         .n15896(n15896), .\data_in_frame[3][1] (\data_in_frame[3] [1]), 
         .n15612(n15612), .n15615(n15615), .n15618(n15618), .n15621(n15621), 
         .n15869(n15869), .n15860(n15860), .n15624(n15624), .n15627(n15627), 
         .n15630(n15630), .n15633(n15633), .n15636(n15636), .n15642(n15642), 
         .\data_in_frame[16][2] (\data_in_frame[16] [2]), .n15645(n15645), 
         .n15648(n15648), .n15651(n15651), .n15654(n15654), .\data_in_frame[16][6] (\data_in_frame[16] [6]), 
         .n15657(n15657), .\data_in_frame[16][7] (\data_in_frame[16] [7]), 
         .n15660(n15660), .\data_in_frame[17][0] (\data_in_frame[17] [0]), 
         .n15663(n15663), .\data_in_frame[17][1] (\data_in_frame[17] [1]), 
         .n15666(n15666), .n30339(n30339), .n15672(n15672), .n15675(n15675), 
         .n15830(n15830), .control_mode({control_mode_adj_4537}), .n30377(n30377), 
         .\data_in_frame[19][1] (\data_in_frame[19] [1]), .n15714(n15714), 
         .n15717(n15717), .n15720(n15720), .n15723(n15723), .n15726(n15726), 
         .n15779(n15779), .n15750(n15750), .n15760(n15760), .n15764(n15764), 
         .n15757(n15757), .n15753(n15753), .n15749(n15749), .n15748(n15748), 
         .n15209(n15209), .n15214(n15214), .n15217(n15217), .n15736(n15736), 
         .n15223(n15223), .n15179(n15179), .n7(n7_adj_4516), .n31015(n31015), 
         .n15168(n15168), .n15145(n15145), .n15144(n15144), .n11741(n11741), 
         .ID({ID}), .n30895(n30895), .n31024(n31024), .n31322(n31322), 
         .n12023(n12023), .n38139(n38139), .n31192(n31192), .n8(n8_adj_4515), 
         .n38133(n38133), .n14238(n14238), .n16(n16), .n8659(n8659), 
         .n30889(n30889), .n38157(n38157), .tx_o(tx_o), .n27(n27), .n2857(n2857), 
         .tx_enable(tx_enable), .r_Clock_Count({r_Clock_Count_adj_4561}), 
         .r_Rx_Data(r_Rx_Data), .\r_SM_Main[2] (r_SM_Main[2]), .\r_SM_Main[1] (r_SM_Main[1]), 
         .baudrate({baudrate}), .RX_N_2(RX_N_2), .n2854(n2854), .\o_Rx_DV_N_3356[8] (o_Rx_DV_N_3356[8]), 
         .n30828(n30828), .n33787(n33787), .n33707(n33707), .n33691(n33691), 
         .n15491(n15491), .n15490(n15490), .n15489(n15489), .n15488(n15488), 
         .n15486(n15486), .n15485(n15485), .n33739(n33739), .n15484(n15484), 
         .n13482(n13482), .n33723(n33723), .n33771(n33771), .n33755(n33755), 
         .n33675(n33675), .r_Clock_Count_adj_9({r_Clock_Count}), .n13640(n13640), 
         .\r_Bit_Index[0] (r_Bit_Index[0]), .n31629(n31629), .n15990(n15990), 
         .n28495(n28495), .n15962(n15962), .\o_Rx_DV_N_3356[7] (o_Rx_DV_N_3356[7]), 
         .\o_Rx_DV_N_3356[2] (o_Rx_DV_N_3356[2]), .\o_Rx_DV_N_3356[1] (o_Rx_DV_N_3356[1]), 
         .\o_Rx_DV_N_3356[5] (o_Rx_DV_N_3356[5]), .\o_Rx_DV_N_3356[3] (o_Rx_DV_N_3356[3]), 
         .\o_Rx_DV_N_3356[4] (o_Rx_DV_N_3356[4]), .\o_Rx_DV_N_3356[6] (o_Rx_DV_N_3356[6]), 
         .\o_Rx_DV_N_3356[0] (o_Rx_DV_N_3356[0])) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(90[22] 115[4])
    SB_LUT4 i11390_3_lut (.I0(\data_in_frame[13] [6]), .I1(rx_data[6]), 
            .I2(n30889), .I3(GND_net), .O(n15582));   // verilog/coms.v(130[12] 305[6])
    defparam i11390_3_lut.LUT_INIT = 16'hacac;
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, data_ready, \state_7__N_3572[0] , ready_N_3903, 
            clk16MHz, \state_7__N_3822[0] , n15438, baudrate, n15437, 
            n15436, n15430, n15389, ID, n15302, n15301, n15300, 
            n15298, n15297, n15286, n15285, n15261, n15769, n15766, 
            n15758, data, \state[0] , n32440, n32314, scl_enable, 
            n15500, n15499, n15498, n15497, n15496, n15495, n15494, 
            \state_7__N_3838[3] , n4106, n10, n22661, n4, n4_adj_11, 
            n11363, VCC_net, n11358, n22696, n8, n15931, sda_enable, 
            n6, scl, sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    output data_ready;
    input \state_7__N_3572[0] ;
    output ready_N_3903;
    input clk16MHz;
    output \state_7__N_3822[0] ;
    input n15438;
    output [31:0]baudrate;
    input n15437;
    input n15436;
    input n15430;
    input n15389;
    output [7:0]ID;
    input n15302;
    input n15301;
    input n15300;
    input n15298;
    input n15297;
    input n15286;
    input n15285;
    input n15261;
    input n15769;
    input n15766;
    input n15758;
    output [7:0]data;
    output \state[0] ;
    output n32440;
    output n32314;
    output scl_enable;
    input n15500;
    input n15499;
    input n15498;
    input n15497;
    input n15496;
    input n15495;
    input n15494;
    input \state_7__N_3838[3] ;
    output n4106;
    output n10;
    output n22661;
    output n4;
    output n4_adj_11;
    output n11363;
    input VCC_net;
    output n11358;
    output n22696;
    input n8;
    input n15931;
    output sda_enable;
    output n6;
    output scl;
    output sda_out;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n26940;
    wire [31:0]byte_counter;   // verilog/eeprom.v(30[9:21])
    
    wire n26941;
    wire [31:0]n133;
    
    wire n26939, n26938, n26937, n26936, n26935, n26934, n26933, 
        n26932;
    wire [7:0]state;   // verilog/eeprom.v(27[11:16])
    
    wire n32868, n30263, n13, n34494, rw, n30271, n26931, n26930, 
        n26929, n26928, n26927, n26926, n26925, n26924, n26923, 
        n26922, n26921, n26920, n26919, n5;
    wire [7:0]state_adj_4503;   // verilog/i2c_controller.v(33[12:17])
    
    wire n7;
    wire [15:0]delay_counter_15__N_3668;
    wire [15:0]delay_counter;   // verilog/eeprom.v(28[12:25])
    wire [15:0]n2933;
    
    wire n26543, n26542, n11261, n8_c, n34595, n31601, n20, n32279, 
        n26541, n26540, ready_prev, n26539, n19428, enable, n4259, 
        n26538, n22776, n13584, n14808, n25341, n13464;
    wire [7:0]state_7__N_3510;
    
    wire n14683, n4258, n26537, n4257, n26536, n4256, n26535, 
        n4255, n26534, n26533, n4253, n26532, n26531, n26530, 
        n26529, n26972, n32905, n12, n30227, n14880, enable_slow_N_3924, 
        n15390, n7707, n30866, n15307, n15306, n15260, n15259, 
        n15232, n15912, n15905, n15899, n15890, n15884, n15883, 
        n15876, n15852, n15832, n15799, n15785, n15778, n15777, 
        n15776, n15770, n15768, n15767, n15763, n32, n46, n50, 
        n48, n49, n47, n52, n56, n30, n51;
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n10_c, n6_c, n30503, n15169, n26949, n26948, n26947, 
        n26946, n26945, n26944, n26943, n26942, n28, n26, n27, 
        n25, n6_adj_4497, n30860, n6_adj_4498;
    
    SB_CARRY byte_counter_1145_add_4_24 (.CI(n26940), .I0(GND_net), .I1(byte_counter[22]), 
            .CO(n26941));
    SB_LUT4 byte_counter_1145_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[21]), .I3(n26939), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_23 (.CI(n26939), .I0(GND_net), .I1(byte_counter[21]), 
            .CO(n26940));
    SB_LUT4 byte_counter_1145_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[20]), .I3(n26938), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_22 (.CI(n26938), .I0(GND_net), .I1(byte_counter[20]), 
            .CO(n26939));
    SB_LUT4 byte_counter_1145_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[19]), .I3(n26937), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_21 (.CI(n26937), .I0(GND_net), .I1(byte_counter[19]), 
            .CO(n26938));
    SB_LUT4 byte_counter_1145_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[18]), .I3(n26936), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_20 (.CI(n26936), .I0(GND_net), .I1(byte_counter[18]), 
            .CO(n26937));
    SB_LUT4 byte_counter_1145_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[17]), .I3(n26935), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_19 (.CI(n26935), .I0(GND_net), .I1(byte_counter[17]), 
            .CO(n26936));
    SB_LUT4 byte_counter_1145_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[16]), .I3(n26934), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_18 (.CI(n26934), .I0(GND_net), .I1(byte_counter[16]), 
            .CO(n26935));
    SB_LUT4 byte_counter_1145_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[15]), .I3(n26933), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_17 (.CI(n26933), .I0(GND_net), .I1(byte_counter[15]), 
            .CO(n26934));
    SB_LUT4 byte_counter_1145_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[14]), .I3(n26932), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut (.I0(state[0]), .I1(data_ready), .I2(n32868), .I3(state[2]), 
            .O(n30263));   // verilog/eeprom.v(27[11:16])
    defparam i12_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i29891_4_lut (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(n13), .O(n34494));
    defparam i29891_4_lut.LUT_INIT = 16'hfaea;
    SB_LUT4 i11_4_lut (.I0(rw), .I1(state[1]), .I2(state[0]), .I3(n34494), 
            .O(n30271));   // verilog/eeprom.v(27[11:16])
    defparam i11_4_lut.LUT_INIT = 16'haace;
    SB_CARRY byte_counter_1145_add_4_16 (.CI(n26932), .I0(GND_net), .I1(byte_counter[14]), 
            .CO(n26933));
    SB_LUT4 byte_counter_1145_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[13]), .I3(n26931), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_15 (.CI(n26931), .I0(GND_net), .I1(byte_counter[13]), 
            .CO(n26932));
    SB_LUT4 byte_counter_1145_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[12]), .I3(n26930), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_14 (.CI(n26930), .I0(GND_net), .I1(byte_counter[12]), 
            .CO(n26931));
    SB_LUT4 byte_counter_1145_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[11]), .I3(n26929), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_13 (.CI(n26929), .I0(GND_net), .I1(byte_counter[11]), 
            .CO(n26930));
    SB_LUT4 byte_counter_1145_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[10]), .I3(n26928), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_12 (.CI(n26928), .I0(GND_net), .I1(byte_counter[10]), 
            .CO(n26929));
    SB_LUT4 byte_counter_1145_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[9]), .I3(n26927), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_11 (.CI(n26927), .I0(GND_net), .I1(byte_counter[9]), 
            .CO(n26928));
    SB_LUT4 byte_counter_1145_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[8]), .I3(n26926), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_10 (.CI(n26926), .I0(GND_net), .I1(byte_counter[8]), 
            .CO(n26927));
    SB_LUT4 byte_counter_1145_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[7]), 
            .I3(n26925), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_9 (.CI(n26925), .I0(GND_net), .I1(byte_counter[7]), 
            .CO(n26926));
    SB_LUT4 byte_counter_1145_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[6]), 
            .I3(n26924), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_8 (.CI(n26924), .I0(GND_net), .I1(byte_counter[6]), 
            .CO(n26925));
    SB_LUT4 byte_counter_1145_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[5]), 
            .I3(n26923), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_7 (.CI(n26923), .I0(GND_net), .I1(byte_counter[5]), 
            .CO(n26924));
    SB_LUT4 byte_counter_1145_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[4]), 
            .I3(n26922), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_6 (.CI(n26922), .I0(GND_net), .I1(byte_counter[4]), 
            .CO(n26923));
    SB_LUT4 byte_counter_1145_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[3]), 
            .I3(n26921), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_5 (.CI(n26921), .I0(GND_net), .I1(byte_counter[3]), 
            .CO(n26922));
    SB_LUT4 byte_counter_1145_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[2]), 
            .I3(n26920), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_4 (.CI(n26920), .I0(GND_net), .I1(byte_counter[2]), 
            .CO(n26921));
    SB_LUT4 byte_counter_1145_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[1]), 
            .I3(n26919), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_3 (.CI(n26919), .I0(GND_net), .I1(byte_counter[1]), 
            .CO(n26920));
    SB_LUT4 byte_counter_1145_add_4_2_lut (.I0(GND_net), .I1(n5), .I2(byte_counter[0]), 
            .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_2 (.CI(GND_net), .I0(n5), .I1(byte_counter[0]), 
            .CO(n26919));
    SB_LUT4 i2_2_lut (.I0(state_adj_4503[1]), .I1(state_adj_4503[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // verilog/eeprom.v(55[12:28])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_674_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n2933[7]), 
            .I3(n26543), .O(delay_counter_15__N_3668[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_674_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n2933[7]), 
            .I3(n26542), .O(delay_counter_15__N_3668[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_3_lut (.I0(n11261), .I1(state[1]), .I2(state_adj_4503[3]), 
            .I3(GND_net), .O(n8_c));
    defparam i3_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i27_4_lut (.I0(n34595), .I1(n31601), .I2(state[0]), .I3(n8_c), 
            .O(n20));
    defparam i27_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i2_4_lut (.I0(n20), .I1(state[2]), .I2(\state_7__N_3572[0] ), 
            .I3(state[1]), .O(n32279));
    defparam i2_4_lut.LUT_INIT = 16'heefe;
    SB_CARRY add_674_16 (.CI(n26542), .I0(delay_counter[14]), .I1(n2933[7]), 
            .CO(n26543));
    SB_LUT4 add_674_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n2933[7]), 
            .I3(n26541), .O(delay_counter_15__N_3668[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_674_15 (.CI(n26541), .I0(delay_counter[13]), .I1(n2933[7]), 
            .CO(n26542));
    SB_LUT4 add_674_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n2933[7]), 
            .I3(n26540), .O(delay_counter_15__N_3668[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_674_14 (.CI(n26540), .I0(delay_counter[12]), .I1(n2933[7]), 
            .CO(n26541));
    SB_DFF ready_prev_59 (.Q(ready_prev), .C(clk16MHz), .D(ready_N_3903));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_674_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n2933[7]), 
            .I3(n26539), .O(delay_counter_15__N_3668[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR enable_58 (.Q(enable), .C(clk16MHz), .D(n19428), .R(state[2]));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY add_674_13 (.CI(n26539), .I0(delay_counter[11]), .I1(n2933[7]), 
            .CO(n26540));
    SB_LUT4 add_674_12_lut (.I0(n22776), .I1(delay_counter[10]), .I2(n2933[7]), 
            .I3(n26538), .O(n4259)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_674_12 (.CI(n26538), .I0(delay_counter[10]), .I1(n2933[7]), 
            .CO(n26539));
    SB_LUT4 i10645_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(n13584), .O(n14808));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10645_3_lut_4_lut.LUT_INIT = 16'hdf00;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(state[1]), .I1(state[0]), .I2(state[2]), 
            .I3(n25341), .O(n13464));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'h1606;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(state[1]), .I1(state[0]), .I2(state[2]), 
            .I3(n25341), .O(state_7__N_3510[1]));
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'hb6a6;
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13464), 
            .D(delay_counter_15__N_3668[1]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR byte_counter_1145__i1 (.Q(byte_counter[1]), .C(clk16MHz), 
            .E(n13584), .D(n133[1]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i2 (.Q(byte_counter[2]), .C(clk16MHz), 
            .E(n13584), .D(n133[2]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i3 (.Q(byte_counter[3]), .C(clk16MHz), 
            .E(n13584), .D(n133[3]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i4 (.Q(byte_counter[4]), .C(clk16MHz), 
            .E(n13584), .D(n133[4]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i5 (.Q(byte_counter[5]), .C(clk16MHz), 
            .E(n13584), .D(n133[5]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i6 (.Q(byte_counter[6]), .C(clk16MHz), 
            .E(n13584), .D(n133[6]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i7 (.Q(byte_counter[7]), .C(clk16MHz), 
            .E(n13584), .D(n133[7]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i8 (.Q(byte_counter[8]), .C(clk16MHz), 
            .E(n13584), .D(n133[8]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i9 (.Q(byte_counter[9]), .C(clk16MHz), 
            .E(n13584), .D(n133[9]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i10 (.Q(byte_counter[10]), .C(clk16MHz), 
            .E(n13584), .D(n133[10]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i11 (.Q(byte_counter[11]), .C(clk16MHz), 
            .E(n13584), .D(n133[11]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_674_11_lut (.I0(n22776), .I1(delay_counter[9]), .I2(n2933[7]), 
            .I3(n26537), .O(n4258)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_674_11 (.CI(n26537), .I0(delay_counter[9]), .I1(n2933[7]), 
            .CO(n26538));
    SB_LUT4 add_674_10_lut (.I0(n22776), .I1(delay_counter[8]), .I2(n2933[7]), 
            .I3(n26536), .O(n4257)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_10_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1145__i12 (.Q(byte_counter[12]), .C(clk16MHz), 
            .E(n13584), .D(n133[12]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_674_10 (.CI(n26536), .I0(delay_counter[8]), .I1(n2933[7]), 
            .CO(n26537));
    SB_DFFESR byte_counter_1145__i13 (.Q(byte_counter[13]), .C(clk16MHz), 
            .E(n13584), .D(n133[13]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i14 (.Q(byte_counter[14]), .C(clk16MHz), 
            .E(n13584), .D(n133[14]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i15 (.Q(byte_counter[15]), .C(clk16MHz), 
            .E(n13584), .D(n133[15]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i16 (.Q(byte_counter[16]), .C(clk16MHz), 
            .E(n13584), .D(n133[16]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_674_9_lut (.I0(n22776), .I1(delay_counter[7]), .I2(n2933[7]), 
            .I3(n26535), .O(n4256)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_9_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1145__i17 (.Q(byte_counter[17]), .C(clk16MHz), 
            .E(n13584), .D(n133[17]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i18 (.Q(byte_counter[18]), .C(clk16MHz), 
            .E(n13584), .D(n133[18]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i19 (.Q(byte_counter[19]), .C(clk16MHz), 
            .E(n13584), .D(n133[19]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_674_9 (.CI(n26535), .I0(delay_counter[7]), .I1(n2933[7]), 
            .CO(n26536));
    SB_LUT4 add_674_8_lut (.I0(n22776), .I1(delay_counter[6]), .I2(n2933[7]), 
            .I3(n26534), .O(n4255)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_8_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1145__i20 (.Q(byte_counter[20]), .C(clk16MHz), 
            .E(n13584), .D(n133[20]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_674_8 (.CI(n26534), .I0(delay_counter[6]), .I1(n2933[7]), 
            .CO(n26535));
    SB_DFFESR byte_counter_1145__i21 (.Q(byte_counter[21]), .C(clk16MHz), 
            .E(n13584), .D(n133[21]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_674_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n2933[7]), 
            .I3(n26533), .O(delay_counter_15__N_3668[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR byte_counter_1145__i22 (.Q(byte_counter[22]), .C(clk16MHz), 
            .E(n13584), .D(n133[22]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_674_7 (.CI(n26533), .I0(delay_counter[5]), .I1(n2933[7]), 
            .CO(n26534));
    SB_LUT4 add_674_6_lut (.I0(n22776), .I1(delay_counter[4]), .I2(n2933[7]), 
            .I3(n26532), .O(n4253)) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_674_6 (.CI(n26532), .I0(delay_counter[4]), .I1(n2933[7]), 
            .CO(n26533));
    SB_LUT4 add_674_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n2933[7]), 
            .I3(n26531), .O(delay_counter_15__N_3668[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR byte_counter_1145__i23 (.Q(byte_counter[23]), .C(clk16MHz), 
            .E(n13584), .D(n133[23]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i24 (.Q(byte_counter[24]), .C(clk16MHz), 
            .E(n13584), .D(n133[24]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_674_5 (.CI(n26531), .I0(delay_counter[3]), .I1(n2933[7]), 
            .CO(n26532));
    SB_DFFESR byte_counter_1145__i25 (.Q(byte_counter[25]), .C(clk16MHz), 
            .E(n13584), .D(n133[25]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i26 (.Q(byte_counter[26]), .C(clk16MHz), 
            .E(n13584), .D(n133[26]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i27 (.Q(byte_counter[27]), .C(clk16MHz), 
            .E(n13584), .D(n133[27]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i28 (.Q(byte_counter[28]), .C(clk16MHz), 
            .E(n13584), .D(n133[28]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_674_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n2933[7]), 
            .I3(n26530), .O(delay_counter_15__N_3668[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_674_4 (.CI(n26530), .I0(delay_counter[2]), .I1(n2933[7]), 
            .CO(n26531));
    SB_LUT4 add_674_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n2933[7]), 
            .I3(n26529), .O(delay_counter_15__N_3668[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_674_3 (.CI(n26529), .I0(delay_counter[1]), .I1(n2933[7]), 
            .CO(n26530));
    SB_LUT4 i2_4_lut_adj_1575 (.I0(n26972), .I1(n11261), .I2(n5), .I3(state[0]), 
            .O(n32905));   // verilog/eeprom.v(55[12:28])
    defparam i2_4_lut_adj_1575.LUT_INIT = 16'hefee;
    SB_LUT4 i30_4_lut (.I0(\state_7__N_3572[0] ), .I1(n7), .I2(state[1]), 
            .I3(n32905), .O(n12));
    defparam i30_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i29_4_lut (.I0(n12), .I1(n31601), .I2(state[0]), .I3(state[2]), 
            .O(n30227));
    defparam i29_4_lut.LUT_INIT = 16'hf0ca;
    SB_LUT4 add_674_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n2933[7]), 
            .I3(GND_net), .O(delay_counter_15__N_3668[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_674_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_674_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n2933[7]), 
            .CO(n26529));
    SB_LUT4 i10689_4_lut_4_lut (.I0(n13464), .I1(state[2]), .I2(n25341), 
            .I3(state[0]), .O(n14880));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10689_4_lut_4_lut.LUT_INIT = 16'ha280;
    SB_LUT4 i33396_2_lut (.I0(ready_N_3903), .I1(\state_7__N_3822[0] ), 
            .I2(GND_net), .I3(GND_net), .O(enable_slow_N_3924));
    defparam i33396_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFESR byte_counter_1145__i29 (.Q(byte_counter[29]), .C(clk16MHz), 
            .E(n13584), .D(n133[29]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1145__i30 (.Q(byte_counter[30]), .C(clk16MHz), 
            .E(n13584), .D(n133[30]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFFE state_i1 (.Q(state[1]), .C(clk16MHz), .E(n32279), .D(state_7__N_3510[1]));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR byte_counter_1145__i31 (.Q(byte_counter[31]), .C(clk16MHz), 
            .E(n13584), .D(n133[31]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_DFF bytes_0___i36 (.Q(baudrate[27]), .C(clk16MHz), .D(n15438));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i37 (.Q(baudrate[28]), .C(clk16MHz), .D(n15437));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i38 (.Q(baudrate[29]), .C(clk16MHz), .D(n15436));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i39 (.Q(baudrate[30]), .C(clk16MHz), .D(n15430));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF state_i2 (.Q(state[2]), .C(clk16MHz), .D(n15390));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i40 (.Q(baudrate[31]), .C(clk16MHz), .D(n15389));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i2_4_lut_adj_1576 (.I0(\state_7__N_3572[0] ), .I1(state[2]), 
            .I2(state[0]), .I3(state[1]), .O(n13584));   // verilog/eeprom.v(35[8] 83[4])
    defparam i2_4_lut_adj_1576.LUT_INIT = 16'h3002;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(byte_counter[2]), .I1(byte_counter[3]), 
            .I2(n7707), .I3(byte_counter[1]), .O(n30866));   // verilog/eeprom.v(35[8] 83[4])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i10470_3_lut (.I0(n13464), .I1(state[2]), .I2(state[0]), .I3(GND_net), 
            .O(n14683));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10470_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFF bytes_0___i7 (.Q(ID[6]), .C(clk16MHz), .D(n15307));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i8 (.Q(ID[7]), .C(clk16MHz), .D(n15306));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i9 (.Q(baudrate[0]), .C(clk16MHz), .D(n15302));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i10 (.Q(baudrate[1]), .C(clk16MHz), .D(n15301));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i11 (.Q(baudrate[2]), .C(clk16MHz), .D(n15300));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i12 (.Q(baudrate[3]), .C(clk16MHz), .D(n15298));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i13 (.Q(baudrate[4]), .C(clk16MHz), .D(n15297));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i14 (.Q(baudrate[5]), .C(clk16MHz), .D(n15286));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i15 (.Q(baudrate[6]), .C(clk16MHz), .D(n15285));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i16 (.Q(baudrate[7]), .C(clk16MHz), .D(n15261));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i17 (.Q(baudrate[8]), .C(clk16MHz), .D(n15260));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i18 (.Q(baudrate[9]), .C(clk16MHz), .D(n15259));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i19 (.Q(baudrate[10]), .C(clk16MHz), .D(n15232));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13464), 
            .D(delay_counter_15__N_3668[2]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF state_i0 (.Q(state[0]), .C(clk16MHz), .D(n30227));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13464), 
            .D(delay_counter_15__N_3668[3]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i20 (.Q(baudrate[11]), .C(clk16MHz), .D(n15912));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i21 (.Q(baudrate[12]), .C(clk16MHz), .D(n15905));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i22 (.Q(baudrate[13]), .C(clk16MHz), .D(n15899));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i23 (.Q(baudrate[14]), .C(clk16MHz), .D(n15890));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i24 (.Q(baudrate[15]), .C(clk16MHz), .D(n15884));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i25 (.Q(baudrate[16]), .C(clk16MHz), .D(n15883));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i26 (.Q(baudrate[17]), .C(clk16MHz), .D(n15876));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i27 (.Q(baudrate[18]), .C(clk16MHz), .D(n15852));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i28 (.Q(baudrate[19]), .C(clk16MHz), .D(n15832));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i29 (.Q(baudrate[20]), .C(clk16MHz), .D(n15799));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i30 (.Q(baudrate[21]), .C(clk16MHz), .D(n15785));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i31 (.Q(baudrate[22]), .C(clk16MHz), .D(n15778));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i2 (.Q(ID[1]), .C(clk16MHz), .D(n15777));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i32 (.Q(baudrate[23]), .C(clk16MHz), .D(n15776));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i3 (.Q(ID[2]), .C(clk16MHz), .D(n15770));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i33 (.Q(baudrate[24]), .C(clk16MHz), .D(n15769));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i4 (.Q(ID[3]), .C(clk16MHz), .D(n15768));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i5 (.Q(ID[4]), .C(clk16MHz), .D(n15767));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i34 (.Q(baudrate[25]), .C(clk16MHz), .D(n15766));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i6 (.Q(ID[5]), .C(clk16MHz), .D(n15763));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i35 (.Q(baudrate[26]), .C(clk16MHz), .D(n15758));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i3_2_lut (.I0(byte_counter[7]), .I1(byte_counter[26]), .I2(GND_net), 
            .I3(GND_net), .O(n32));
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i17_4_lut (.I0(byte_counter[4]), .I1(byte_counter[24]), .I2(byte_counter[6]), 
            .I3(byte_counter[9]), .O(n46));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(byte_counter[11]), .I1(byte_counter[27]), .I2(byte_counter[30]), 
            .I3(byte_counter[21]), .O(n50));
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut (.I0(byte_counter[3]), .I1(byte_counter[16]), .I2(byte_counter[8]), 
            .I3(byte_counter[10]), .O(n48));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut (.I0(byte_counter[28]), .I1(byte_counter[18]), .I2(byte_counter[25]), 
            .I3(byte_counter[14]), .O(n49));
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(byte_counter[20]), .I1(byte_counter[29]), .I2(byte_counter[13]), 
            .I3(byte_counter[19]), .O(n47));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i23_4_lut (.I0(byte_counter[22]), .I1(n46), .I2(n32), .I3(byte_counter[17]), 
            .O(n52));
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut_adj_1577 (.I0(n47), .I1(n49), .I2(n48), .I3(n50), 
            .O(n56));
    defparam i27_4_lut_adj_1577.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut (.I0(byte_counter[15]), .I1(byte_counter[23]), .I2(byte_counter[5]), 
            .I3(n30), .O(n51));
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(byte_counter[31]), .I1(n51), .I2(n56), .I3(n52), 
            .O(n25341));   // verilog/eeprom.v(68[25:39])
    defparam i1_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_2_lut (.I0(state[2]), .I1(n25341), .I2(GND_net), .I3(GND_net), 
            .O(n22776));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_4_lut_adj_1578 (.I0(saved_addr[0]), .I1(n26972), .I2(n7), 
            .I3(\state_7__N_3822[0] ), .O(n10_c));   // verilog/i2c_controller.v(33[12:17])
    defparam i1_4_lut_adj_1578.LUT_INIT = 16'ha8aa;
    SB_LUT4 i1_4_lut_adj_1579 (.I0(\state_7__N_3822[0] ), .I1(n10_c), .I2(n6_c), 
            .I3(n7), .O(n30503));   // verilog/i2c_controller.v(33[12:17])
    defparam i1_4_lut_adj_1579.LUT_INIT = 16'hccec;
    SB_LUT4 i11584_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[7]), 
            .I3(baudrate[23]), .O(n15776));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11584_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11586_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[6]), 
            .I3(baudrate[22]), .O(n15778));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11586_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11593_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[5]), 
            .I3(baudrate[21]), .O(n15785));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11593_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11607_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[4]), 
            .I3(baudrate[20]), .O(n15799));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11607_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11640_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[3]), 
            .I3(baudrate[19]), .O(n15832));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11640_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11660_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[2]), 
            .I3(baudrate[18]), .O(n15852));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11660_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11684_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[1]), 
            .I3(baudrate[17]), .O(n15876));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11684_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF rw_64 (.Q(rw), .C(clk16MHz), .D(n30271));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF data_ready_61 (.Q(data_ready), .C(clk16MHz), .D(n30263));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i1 (.Q(ID[0]), .C(clk16MHz), .D(n15169));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i11691_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[0]), 
            .I3(baudrate[16]), .O(n15883));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11691_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13464), 
            .D(n4253), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13464), 
            .D(delay_counter_15__N_3668[0]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1145_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[31]), .I3(n26949), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 byte_counter_1145_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[30]), .I3(n26948), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13464), 
            .D(delay_counter_15__N_3668[5]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY byte_counter_1145_add_4_32 (.CI(n26948), .I0(GND_net), .I1(byte_counter[30]), 
            .CO(n26949));
    SB_LUT4 byte_counter_1145_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[29]), .I3(n26947), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_31 (.CI(n26947), .I0(GND_net), .I1(byte_counter[29]), 
            .CO(n26948));
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13464), 
            .D(n4255), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1145_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[28]), .I3(n26946), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13464), 
            .D(n4256), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13464), 
            .D(n4257), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY byte_counter_1145_add_4_30 (.CI(n26946), .I0(GND_net), .I1(byte_counter[28]), 
            .CO(n26947));
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13464), 
            .D(n4258), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 byte_counter_1145_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[27]), .I3(n26945), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(clk16MHz), 
            .E(n13464), .D(n4259), .S(n14880));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(clk16MHz), 
            .E(n13464), .D(delay_counter_15__N_3668[11]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(clk16MHz), 
            .E(n13464), .D(delay_counter_15__N_3668[12]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(clk16MHz), 
            .E(n13464), .D(delay_counter_15__N_3668[13]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(clk16MHz), 
            .E(n13464), .D(delay_counter_15__N_3668[14]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(clk16MHz), 
            .E(n13464), .D(delay_counter_15__N_3668[15]), .R(n14683));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY byte_counter_1145_add_4_29 (.CI(n26945), .I0(GND_net), .I1(byte_counter[27]), 
            .CO(n26946));
    SB_LUT4 byte_counter_1145_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[26]), .I3(n26944), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR byte_counter_1145__i0 (.Q(byte_counter[0]), .C(clk16MHz), 
            .E(n13584), .D(n133[0]), .R(n14808));   // verilog/eeprom.v(68[25:39])
    SB_CARRY byte_counter_1145_add_4_28 (.CI(n26944), .I0(GND_net), .I1(byte_counter[26]), 
            .CO(n26945));
    SB_LUT4 byte_counter_1145_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[25]), .I3(n26943), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_27 (.CI(n26943), .I0(GND_net), .I1(byte_counter[25]), 
            .CO(n26944));
    SB_LUT4 byte_counter_1145_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[24]), .I3(n26942), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_26 (.CI(n26942), .I0(GND_net), .I1(byte_counter[24]), 
            .CO(n26943));
    SB_LUT4 byte_counter_1145_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[23]), .I3(n26941), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1145_add_4_25 (.CI(n26941), .I0(GND_net), .I1(byte_counter[23]), 
            .CO(n26942));
    SB_LUT4 byte_counter_1145_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[22]), .I3(n26940), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1145_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_1580 (.I0(delay_counter[6]), .I1(delay_counter[10]), 
            .I2(delay_counter[12]), .I3(delay_counter[8]), .O(n28));   // verilog/eeprom.v(55[12:28])
    defparam i12_4_lut_adj_1580.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(delay_counter[11]), .I1(delay_counter[2]), .I2(delay_counter[7]), 
            .I3(delay_counter[5]), .O(n26));   // verilog/eeprom.v(55[12:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_1581 (.I0(delay_counter[15]), .I1(delay_counter[3]), 
            .I2(delay_counter[14]), .I3(delay_counter[1]), .O(n27));   // verilog/eeprom.v(55[12:28])
    defparam i11_4_lut_adj_1581.LUT_INIT = 16'hfffe;
    SB_LUT4 i21290_3_lut_4_lut (.I0(n11261), .I1(ready_N_3903), .I2(state[0]), 
            .I3(state[1]), .O(n19428));   // verilog/eeprom.v(27[11:16])
    defparam i21290_3_lut_4_lut.LUT_INIT = 16'h04f0;
    SB_LUT4 i9_4_lut (.I0(delay_counter[4]), .I1(delay_counter[9]), .I2(delay_counter[13]), 
            .I3(delay_counter[0]), .O(n25));   // verilog/eeprom.v(55[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n11261));   // verilog/eeprom.v(55[12:28])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_3_lut (.I0(rw), .I1(state_adj_4503[3]), .I2(\state[0] ), 
            .I3(GND_net), .O(n6_c));   // verilog/i2c_controller.v(33[12:17])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 equal_104_i6_2_lut (.I0(byte_counter[2]), .I1(byte_counter[3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4497));   // verilog/eeprom.v(66[9:28])
    defparam equal_104_i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1582 (.I0(state[2]), .I1(state[0]), .I2(state[1]), 
            .I3(n5), .O(n15390));
    defparam i1_4_lut_adj_1582.LUT_INIT = 16'he8a8;
    SB_LUT4 i10977_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[0]), 
            .I3(ID[0]), .O(n15169));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10977_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11571_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[5]), 
            .I3(ID[5]), .O(n15763));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11571_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11575_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[4]), 
            .I3(ID[4]), .O(n15767));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11575_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11576_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[3]), 
            .I3(ID[3]), .O(n15768));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11576_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11578_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[2]), 
            .I3(ID[2]), .O(n15770));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11578_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11585_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[1]), 
            .I3(ID[1]), .O(n15777));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11585_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11114_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[7]), 
            .I3(ID[7]), .O(n15306));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11114_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11115_3_lut_4_lut (.I0(n6_adj_4497), .I1(n30860), .I2(data[6]), 
            .I3(ID[6]), .O(n15307));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11115_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_3_lut_4_lut (.I0(n6_adj_4497), .I1(n7707), .I2(byte_counter[0]), 
            .I3(byte_counter[1]), .O(n32440));   // verilog/eeprom.v(35[8] 83[4])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11692_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[7]), 
            .I3(baudrate[15]), .O(n15884));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11692_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11698_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[6]), 
            .I3(baudrate[14]), .O(n15890));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11698_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11707_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[5]), 
            .I3(baudrate[13]), .O(n15899));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11707_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11713_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[4]), 
            .I3(baudrate[12]), .O(n15905));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11713_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11720_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[3]), 
            .I3(baudrate[11]), .O(n15912));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11720_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11040_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[2]), 
            .I3(baudrate[10]), .O(n15232));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11040_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11067_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[1]), 
            .I3(baudrate[9]), .O(n15259));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11067_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11068_3_lut_4_lut (.I0(byte_counter[0]), .I1(n30866), .I2(data[0]), 
            .I3(baudrate[8]), .O(n15260));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11068_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(byte_counter[2]), .I3(byte_counter[12]), .O(n30));   // verilog/eeprom.v(66[9:28])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hffe0;
    SB_LUT4 i1_2_lut_3_lut (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(n7707), .I3(GND_net), .O(n30860));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(state[0]), .I1(state[2]), .I2(state_adj_4503[3]), 
            .I3(\state[0] ), .O(n6_adj_4498));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i22413_2_lut (.I0(state_adj_4503[3]), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n26972));   // verilog/i2c_controller.v(33[12:17])
    defparam i22413_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut (.I0(state[1]), .I1(ready_prev), .I2(n7), .I3(n6_adj_4498), 
            .O(n7707));   // verilog/eeprom.v(35[8] 83[4])
    defparam i4_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i2_3_lut (.I0(byte_counter[2]), .I1(n30860), .I2(byte_counter[3]), 
            .I3(GND_net), .O(n32314));   // verilog/eeprom.v(35[8] 83[4])
    defparam i2_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i29990_2_lut_3_lut (.I0(\state[0] ), .I1(state_adj_4503[1]), 
            .I2(state_adj_4503[2]), .I3(GND_net), .O(n34595));
    defparam i29990_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i27032_2_lut_3_lut (.I0(ready_prev), .I1(ready_N_3903), .I2(state[1]), 
            .I3(GND_net), .O(n31601));
    defparam i27032_2_lut_3_lut.LUT_INIT = 16'hb0b0;
    SB_LUT4 i2_3_lut_4_lut (.I0(state[1]), .I1(state[2]), .I2(n25341), 
            .I3(state[0]), .O(n32868));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hffea;
    i2c_controller i2c (.\saved_addr[0] (saved_addr[0]), .GND_net(GND_net), 
            .\state[1] (state_adj_4503[1]), .\state[0] (\state[0] ), .\state[2] (state_adj_4503[2]), 
            .\state[3] (state_adj_4503[3]), .clk16MHz(clk16MHz), .scl_enable(scl_enable), 
            .n15500(n15500), .data({data}), .n15499(n15499), .n15498(n15498), 
            .enable_slow_N_3924(enable_slow_N_3924), .\state_7__N_3822[0] (\state_7__N_3822[0] ), 
            .n15497(n15497), .n15496(n15496), .n15495(n15495), .n15494(n15494), 
            .\state_7__N_3838[3] (\state_7__N_3838[3] ), .enable(enable), 
            .n4106(n4106), .n10(n10), .n22661(n22661), .n4(n4), .n4_adj_10(n4_adj_11), 
            .n11363(n11363), .VCC_net(VCC_net), .n11358(n11358), .n22696(n22696), 
            .n30503(n30503), .n8(n8), .n15931(n15931), .sda_enable(sda_enable), 
            .n11261(n11261), .ready_N_3903(ready_N_3903), .n13(n13), .n2925(n2933[7]), 
            .ready_prev(ready_prev), .n5(n5), .n6(n6), .scl(scl), .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(85[16] 99[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (\saved_addr[0] , GND_net, \state[1] , \state[0] , 
            \state[2] , \state[3] , clk16MHz, scl_enable, n15500, 
            data, n15499, n15498, enable_slow_N_3924, \state_7__N_3822[0] , 
            n15497, n15496, n15495, n15494, \state_7__N_3838[3] , 
            enable, n4106, n10, n22661, n4, n4_adj_10, n11363, 
            VCC_net, n11358, n22696, n30503, n8, n15931, sda_enable, 
            n11261, ready_N_3903, n13, n2925, ready_prev, n5, n6, 
            scl, sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    output \saved_addr[0] ;
    input GND_net;
    output \state[1] ;
    output \state[0] ;
    output \state[2] ;
    output \state[3] ;
    input clk16MHz;
    output scl_enable;
    input n15500;
    output [7:0]data;
    input n15499;
    input n15498;
    input enable_slow_N_3924;
    output \state_7__N_3822[0] ;
    input n15497;
    input n15496;
    input n15495;
    input n15494;
    input \state_7__N_3838[3] ;
    input enable;
    output n4106;
    output n10;
    output n22661;
    output n4;
    output n4_adj_10;
    output n11363;
    input VCC_net;
    output n11358;
    output n22696;
    input n30503;
    input n8;
    input n15931;
    output sda_enable;
    input n11261;
    output ready_N_3903;
    output n13;
    output n2925;
    input ready_prev;
    output n5;
    output n6;
    output scl;
    output sda_out;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n36206, n36102, n3233;
    wire [0:0]n3269;
    
    wire n33, n37, n14678, n34, n39, n4400, n7081, i2c_clk_N_3911, 
        scl_enable_N_3912, n11, n13511, n31571, n14674, n16, n10_c, 
        n32722, n30493, n15, n11_adj_4482, n22964, n11_adj_4483, 
        n22889, n4_c, n33218, n5_c, n12, n4099, n13428, n11_adj_4485;
    wire [7:0]n119;
    
    wire n26588, n26587, n26586, n26585, n26584;
    wire [5:0]n29;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n14789, n26583, n26582, n10_adj_4490, n32504, n30327, sda_out_adj_4491, 
        n26969, n26968, n26967, n26966, n26965, n13506, n4445, 
        n15_adj_4493;
    
    SB_LUT4 i31995_2_lut (.I0(counter[1]), .I1(\saved_addr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n36206));   // verilog/i2c_controller.v(198[28:35])
    defparam i31995_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i31945_4_lut (.I0(n36206), .I1(\state[1] ), .I2(counter[0]), 
            .I3(counter[2]), .O(n36102));   // verilog/i2c_controller.v(181[4] 214[11])
    defparam i31945_4_lut.LUT_INIT = 16'hc008;
    SB_LUT4 mux_820_i1_4_lut (.I0(n36102), .I1(\state[0] ), .I2(n3233), 
            .I3(\state[2] ), .O(n3269[0]));   // verilog/i2c_controller.v(181[4] 214[11])
    defparam mux_820_i1_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 i56_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(GND_net), .O(n33));
    defparam i56_3_lut.LUT_INIT = 16'h1c1c;
    SB_LUT4 i1_3_lut (.I0(\state[1] ), .I1(n33), .I2(n37), .I3(GND_net), 
            .O(n14678));
    defparam i1_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i1_2_lut (.I0(n34), .I1(n37), .I2(GND_net), .I3(GND_net), 
            .O(n39));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i33322_4_lut (.I0(n3233), .I1(n39), .I2(\state[2] ), .I3(\state[1] ), 
            .O(n4400));
    defparam i33322_4_lut.LUT_INIT = 16'hc8cc;
    SB_LUT4 i33398_2_lut (.I0(\state[0] ), .I1(n3233), .I2(GND_net), .I3(GND_net), 
            .O(n7081));   // verilog/i2c_controller.v(181[4] 214[11])
    defparam i33398_2_lut.LUT_INIT = 16'h4444;
    SB_DFF i2c_clk_121 (.Q(i2c_clk), .C(clk16MHz), .D(i2c_clk_N_3911));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFFN i2c_scl_enable_123 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_3912));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n15500));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 state_7__I_0_144_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_144_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n15499));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n15498));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFE enable_slow_120 (.Q(\state_7__N_3822[0] ), .C(clk16MHz), .E(n13511), 
            .D(enable_slow_N_3924));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n15497));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n15496));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n15495));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n15494));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i26926_2_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(n31571), .O(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i26926_2_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i32_3_lut (.I0(\state[3] ), .I1(\state[0] ), .I2(\state_7__N_3838[3] ), 
            .I3(GND_net), .O(n16));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i32_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i2_4_lut (.I0(\state_7__N_3838[3] ), .I1(\state[0] ), .I2(enable), 
            .I3(n10_c), .O(n32722));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i2_4_lut.LUT_INIT = 16'h008c;
    SB_LUT4 i1_4_lut (.I0(\state[1] ), .I1(n32722), .I2(\state[2] ), .I3(n16), 
            .O(n30493));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i1_4_lut.LUT_INIT = 16'h8a88;
    SB_LUT4 i33328_3_lut (.I0(n4106), .I1(n15), .I2(n11_adj_4482), .I3(GND_net), 
            .O(n22964));
    defparam i33328_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i33379_2_lut (.I0(\state_7__N_3838[3] ), .I1(n11_adj_4483), 
            .I2(GND_net), .I3(GND_net), .O(n22889));
    defparam i33379_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1_2_lut_adj_1567 (.I0(n4106), .I1(\state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n4_c));
    defparam i1_2_lut_adj_1567.LUT_INIT = 16'hdddd;
    SB_LUT4 i33330_4_lut (.I0(\state[3] ), .I1(n4_c), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n33218));
    defparam i33330_4_lut.LUT_INIT = 16'h0130;
    SB_LUT4 i1_4_lut_adj_1568 (.I0(n11), .I1(n11_adj_4483), .I2(\saved_addr[0] ), 
            .I3(\state_7__N_3838[3] ), .O(n5_c));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i1_4_lut_adj_1568.LUT_INIT = 16'h5575;
    SB_LUT4 i2_2_lut (.I0(counter[2]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(110[10:22])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(110[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n10), 
            .O(n4099));   // verilog/i2c_controller.v(110[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i33408_4_lut (.I0(n13428), .I1(n4099), .I2(n11_adj_4485), 
            .I3(n22661), .O(n4106));
    defparam i33408_4_lut.LUT_INIT = 16'h5111;
    SB_LUT4 equal_120_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_120_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_119_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_10));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_119_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_1569 (.I0(counter[0]), .I1(n15), .I2(GND_net), 
            .I3(GND_net), .O(n11363));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_1569.LUT_INIT = 16'heeee;
    SB_LUT4 state_7__I_0_142_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_c));   // verilog/i2c_controller.v(143[5:14])
    defparam state_7__I_0_142_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n26588), .O(n119[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n26587), .O(n119[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_8 (.CI(n26587), .I0(counter[6]), .I1(VCC_net), 
            .CO(n26588));
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n13428));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n26586), .O(n119[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_1570 (.I0(n15), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11358));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_1570.LUT_INIT = 16'hbbbb;
    SB_CARRY sub_39_add_2_7 (.CI(n26586), .I0(counter[5]), .I1(VCC_net), 
            .CO(n26587));
    SB_LUT4 i18575_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n22696));
    defparam i18575_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n26585), .O(n119[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_6 (.CI(n26585), .I0(counter[4]), .I1(VCC_net), 
            .CO(n26586));
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n26584), .O(n119[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR counter2_1150_1151__i5 (.Q(counter2[4]), .C(clk16MHz), .D(n29[4]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1150_1151__i4 (.Q(counter2[3]), .C(clk16MHz), .D(n29[3]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1150_1151__i3 (.Q(counter2[2]), .C(clk16MHz), .D(n29[2]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_CARRY sub_39_add_2_5 (.CI(n26584), .I0(counter[3]), .I1(VCC_net), 
            .CO(n26585));
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n26583), .O(n119[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_4 (.CI(n26583), .I0(counter[2]), .I1(VCC_net), 
            .CO(n26584));
    SB_DFFSR counter2_1150_1151__i2 (.Q(counter2[1]), .C(clk16MHz), .D(n29[1]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n26582), .O(n119[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_3 (.CI(n26582), .I0(counter[1]), .I1(VCC_net), 
            .CO(n26583));
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n119[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n26582));
    SB_DFFSR counter2_1150_1151__i6 (.Q(counter2[5]), .C(clk16MHz), .D(n29[5]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 i18876_3_lut_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(scl_enable_N_3912));
    defparam i18876_3_lut_4_lut_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[4]), .O(n10_adj_4490));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(counter2[1]), .I1(n10_adj_4490), .I2(counter2[0]), 
            .I3(GND_net), .O(n14789));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_1571 (.I0(i2c_clk), .I1(n14789), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_3911));
    defparam i1_2_lut_adj_1571.LUT_INIT = 16'h6666;
    SB_DFFSR counter2_1150_1151__i1 (.Q(counter2[0]), .C(clk16MHz), .D(n29[0]), 
            .R(n14789));   // verilog/i2c_controller.v(69[20:35])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n30503));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n8));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n4106), .D(n5_c), 
            .S(n33218));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(n4106), .D(n22889), 
            .S(n22964));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n4106), .D(n30493), 
            .S(n32504));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n15931));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFNESS write_enable_131 (.Q(sda_enable), .C(i2c_clk), .E(n4400), 
            .D(n7081), .S(n14678));   // verilog/i2c_controller.v(180[12] 215[6])
    SB_LUT4 i1_2_lut_adj_1572 (.I0(n11261), .I1(ready_N_3903), .I2(GND_net), 
            .I3(GND_net), .O(n13));
    defparam i1_2_lut_adj_1572.LUT_INIT = 16'hbbbb;
    SB_DFFNE sda_out_132 (.Q(sda_out_adj_4491), .C(i2c_clk), .E(n30327), 
            .D(n3269[0]));   // verilog/i2c_controller.v(180[12] 215[6])
    SB_LUT4 counter2_1150_1151_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[5]), .I3(n26969), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_1150_1151_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[4]), .I3(n26968), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1150_1151_add_4_6 (.CI(n26968), .I0(GND_net), .I1(counter2[4]), 
            .CO(n26969));
    SB_LUT4 counter2_1150_1151_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[3]), .I3(n26967), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1150_1151_add_4_5 (.CI(n26967), .I0(GND_net), .I1(counter2[3]), 
            .CO(n26968));
    SB_LUT4 counter2_1150_1151_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[2]), .I3(n26966), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1150_1151_add_4_4 (.CI(n26966), .I0(GND_net), .I1(counter2[2]), 
            .CO(n26967));
    SB_LUT4 counter2_1150_1151_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[1]), .I3(n26965), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1150_1151_add_4_3 (.CI(n26965), .I0(GND_net), .I1(counter2[1]), 
            .CO(n26966));
    SB_LUT4 counter2_1150_1151_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[0]), .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1150_1151_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1150_1151_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n26965));
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n13506), .D(n119[0]), 
            .S(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n13506), .D(n119[1]), 
            .S(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n13506), .D(n119[2]), 
            .S(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n13506), .D(n119[3]), 
            .R(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n13506), .D(n119[4]), 
            .R(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n13506), .D(n119[5]), 
            .R(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n13506), .D(n119[6]), 
            .R(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n13506), .D(n119[7]), 
            .R(n14674));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 i1_2_lut_adj_1573 (.I0(n11261), .I1(ready_N_3903), .I2(GND_net), 
            .I3(GND_net), .O(n2925));   // verilog/i2c_controller.v(44[32:47])
    defparam i1_2_lut_adj_1573.LUT_INIT = 16'h8888;
    SB_LUT4 i33387_2_lut (.I0(ready_prev), .I1(ready_N_3903), .I2(GND_net), 
            .I3(GND_net), .O(n5));
    defparam i33387_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i3_4_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), .I2(\state[3] ), 
            .I3(\state[2] ), .O(n3233));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h001c;
    SB_LUT4 i33393_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(\state[0] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(ready_N_3903));
    defparam i33393_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i2_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n4445));   // verilog/i2c_controller.v(44[32:47])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 state_7__I_0_138_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[1] ), .I3(\state[0] ), .O(n11_adj_4485));   // verilog/i2c_controller.v(44[32:47])
    defparam state_7__I_0_138_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 equal_58_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[1] ), .I3(\state[0] ), .O(n15_adj_4493));   // verilog/i2c_controller.v(44[32:47])
    defparam equal_58_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 state_7__I_0_139_i11_2_lut_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(\state[1] ), .I3(\state[0] ), .O(n11_adj_4483));   // verilog/i2c_controller.v(44[32:47])
    defparam state_7__I_0_139_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i2_2_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n6));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'hfbef;
    SB_LUT4 i18819_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n22661));
    defparam i18819_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable), .I1(ready_N_3903), .I2(\state_7__N_3822[0] ), 
            .I3(GND_net), .O(n13511));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hbaba;
    SB_LUT4 i18574_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i18574_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33325_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[1] ), 
            .I3(n4106), .O(n32504));
    defparam i33325_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 state_7__I_0_143_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n15));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_143_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i27002_2_lut (.I0(\state_7__N_3838[3] ), .I1(n15_adj_4493), 
            .I2(GND_net), .I3(GND_net), .O(n31571));
    defparam i27002_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17_4_lut (.I0(n4099), .I1(n31571), .I2(n4445), .I3(n37), 
            .O(n13506));
    defparam i17_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i33320_4_lut_4_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n30327));
    defparam i33320_4_lut_4_lut.LUT_INIT = 16'h0156;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(n11_adj_4482));   // verilog/i2c_controller.v(77[27:43])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i1_2_lut_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[0] ), .O(n37));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0554;
    SB_LUT4 i1_2_lut_4_lut_adj_1574 (.I0(\state[1] ), .I1(\state[2] ), .I2(\state[0] ), 
            .I3(\state[3] ), .O(n34));
    defparam i1_2_lut_4_lut_adj_1574.LUT_INIT = 16'h0150;
    SB_LUT4 i1448_2_lut (.I0(sda_out_adj_4491), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i1448_2_lut.LUT_INIT = 16'h8888;
    
endmodule
//
// Verilog Description of module \neopixel(CLOCK_SPEED_HZ=16000000) 
//

module \neopixel(CLOCK_SPEED_HZ=16000000)  (clk16MHz, \neo_pixel_transmitter.t0 , 
            GND_net, start, \state[1] , LED_c, neopxl_color, VCC_net, 
            timer, \data_out_frame[24][6] , n31192, n31249, n31003, 
            \data_out_frame[23][0] , n16, n31263, n15252, n32328, 
            \data_out_frame[23][1] , n28284, n30083, n15831, n15829, 
            n15828, n15827, n15826, n15825, n15824, n15823, n15822, 
            n15821, n15820, n15819, n15818, n15817, n15816, n15815, 
            n15814, n15813, n15812, n15811, n15810, n15809, n15808, 
            n15807, n15806, n15805, n15804, n15803, n15802, n15801, 
            n15800, n58, \data_in_frame[4][6] , n8682, n15233, NEOPXL_c, 
            \data_in_frame[6][6] , n15248, n1758, n12269, \data_out_frame[23][6] , 
            \data_out_frame[23][4] , \data_out_frame[23][5] , n80) /* synthesis syn_module_defined=1 */ ;
    input clk16MHz;
    output [31:0]\neo_pixel_transmitter.t0 ;
    input GND_net;
    output start;
    output \state[1] ;
    input LED_c;
    input [23:0]neopxl_color;
    input VCC_net;
    output [31:0]timer;
    input \data_out_frame[24][6] ;
    input n31192;
    input n31249;
    input n31003;
    input \data_out_frame[23][0] ;
    input n16;
    input n31263;
    input n15252;
    input n32328;
    input \data_out_frame[23][1] ;
    output n28284;
    input n30083;
    input n15831;
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
    input n15816;
    input n15815;
    input n15814;
    input n15813;
    input n15812;
    input n15811;
    input n15810;
    input n15809;
    input n15808;
    input n15807;
    input n15806;
    input n15805;
    input n15804;
    input n15803;
    input n15802;
    input n15801;
    input n15800;
    output n58;
    input \data_in_frame[4][6] ;
    input n8682;
    output n15233;
    output NEOPXL_c;
    input \data_in_frame[6][6] ;
    output n15248;
    output n1758;
    input n12269;
    input \data_out_frame[23][6] ;
    input \data_out_frame[23][4] ;
    input \data_out_frame[23][5] ;
    output n80;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire \neo_pixel_transmitter.done_N_435 , n33143, \neo_pixel_transmitter.done ;
    wire [31:0]n133;
    
    wire n4354;
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire n14840;
    wire [31:0]n1;
    
    wire n30834, n30, n48, n46, n47, n45, n44, n43, n54, n49;
    wire [3:0]state_3__N_227;
    
    wire n6;
    wire [3:0]state;   // verilog/neopixel.v(16[20:25])
    
    wire n36267, n96, n30830, n113, n36269, n26887, n26886, n26885, 
        n26884, n26883, n26882, n26881, n26880, n26879, n26878, 
        n26877, n26876, n26875, n26874, n26873, n26872, n26871, 
        n26870, n26869, n26868, n26867, n26866, n26865, n26864, 
        n26863, n26862, n26861, n26860, n26859, n38064, n26858, 
        n26857;
    wire [31:0]n133_adj_4481;
    
    wire n26856, n26855, n26854, n26853, n26852, n26851, n26850, 
        n26849, n26848, n26847, n26846, n26845, n26844, n26843, 
        n26842, n26841, n26840, n26839, n26838, n26837, n26836, 
        n26835, n26834, n26833, n26832, n26831, n26830, n26829, 
        n116, n26581, n34179, n26580, n34177, n26828, n26827, 
        n26826, n26579, n34175, n26578, n34173, n26577, n34171, 
        n26576, n34169, n26575, n34167, n26574, n34165, n26573, 
        n34163, n26572, n34161, n38166;
    wire [31:0]color_bit_N_421;
    
    wire n38169, n26571, n34159, n38142, n38145, n22992, n30679, 
        n31619, n26570, n34157, n38112, n26569, n34155, n38094, 
        n38097, n38082, n38085, n22_adj_4471, n24_adj_4472, n20_adj_4473, 
        n10_adj_4474, n26568, n34153, n26567, n34151, n26566, n34149, 
        n26565, n34147, n26564, n34145, n26563, n34143, n22932, 
        n26562;
    wire [31:0]one_wire_N_378;
    
    wire n26561, n26560, n26559, n26558, n34185, n26557, n34183, 
        n34187, n26556, n34181, n26555, n18722, n4_adj_4476, n37909, 
        n131, n31475, n5_adj_4477, n26554, n26553, n26552, n34419, 
        n32, n26551, n7_adj_4480, n14659, \neo_pixel_transmitter.done_N_441 , 
        n13456, n32896, n38115, n36263, n31485, n38067, n34830, 
        n37331, n38683, n27534, n37463, n36261;
    
    SB_DFFE \neo_pixel_transmitter.done_104  (.Q(\neo_pixel_transmitter.done ), 
            .C(clk16MHz), .E(n33143), .D(\neo_pixel_transmitter.done_N_435 ));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr_1142__i2 (.Q(bit_ctr[2]), .C(clk16MHz), .E(n4354), 
            .D(n133[2]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i3 (.Q(bit_ctr[3]), .C(clk16MHz), .E(n4354), 
            .D(n133[3]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_inv_0_i5_1_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i6_1_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i7_1_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i8_1_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i9_1_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i10_1_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), .I2(GND_net), 
            .I3(GND_net), .O(n30834));   // verilog/neopixel.v(16[20:25])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 sub_14_inv_0_i11_1_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i12_1_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i13_1_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_2_lut (.I0(bit_ctr[22]), .I1(bit_ctr[17]), .I2(GND_net), 
            .I3(GND_net), .O(n30));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i20_4_lut (.I0(bit_ctr[20]), .I1(bit_ctr[7]), .I2(bit_ctr[16]), 
            .I3(bit_ctr[30]), .O(n48));
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(bit_ctr[25]), .I1(bit_ctr[10]), .I2(bit_ctr[9]), 
            .I3(bit_ctr[27]), .O(n46));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut (.I0(bit_ctr[15]), .I1(bit_ctr[29]), .I2(bit_ctr[12]), 
            .I3(bit_ctr[23]), .O(n47));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(bit_ctr[19]), .I1(bit_ctr[21]), .I2(bit_ctr[31]), 
            .I3(bit_ctr[14]), .O(n45));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut (.I0(bit_ctr[11]), .I1(bit_ctr[5]), .I2(bit_ctr[28]), 
            .I3(bit_ctr[6]), .O(n44));
    defparam i16_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(bit_ctr[3]), .I1(n30), .I2(bit_ctr[13]), .I3(bit_ctr[4]), 
            .O(n43));
    defparam i15_4_lut.LUT_INIT = 16'hfefc;
    SB_DFFESR bit_ctr_1142__i4 (.Q(bit_ctr[4]), .C(clk16MHz), .E(n4354), 
            .D(n133[4]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i5 (.Q(bit_ctr[5]), .C(clk16MHz), .E(n4354), 
            .D(n133[5]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 i26_4_lut (.I0(n45), .I1(n47), .I2(n46), .I3(n48), .O(n54));
    defparam i26_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(bit_ctr[24]), .I1(bit_ctr[8]), .I2(bit_ctr[18]), 
            .I3(bit_ctr[26]), .O(n49));
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut (.I0(n49), .I1(n54), .I2(n43), .I3(n44), .O(state_3__N_227[1]));
    defparam i27_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_1555 (.I0(\state[1] ), .I1(LED_c), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_adj_1555.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(state[0]), .I1(n4354), .I2(state_3__N_227[1]), 
            .I3(n6), .O(n14840));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i31727_3_lut (.I0(state_3__N_227[1]), .I1(LED_c), .I2(state[0]), 
            .I3(GND_net), .O(n36267));
    defparam i31727_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i32189_4_lut (.I0(state[0]), .I1(n96), .I2(n30830), .I3(n113), 
            .O(n36269));
    defparam i32189_4_lut.LUT_INIT = 16'hfdfc;
    SB_DFFESR bit_ctr_1142__i6 (.Q(bit_ctr[6]), .C(clk16MHz), .E(n4354), 
            .D(n133[6]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 i19_4_lut_adj_1556 (.I0(n36269), .I1(n36267), .I2(\state[1] ), 
            .I3(n30834), .O(n4354));
    defparam i19_4_lut_adj_1556.LUT_INIT = 16'hcac0;
    SB_DFFESR bit_ctr_1142__i7 (.Q(bit_ctr[7]), .C(clk16MHz), .E(n4354), 
            .D(n133[7]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 bit_ctr_1142_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[31]), 
            .I3(n26887), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1142_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[30]), 
            .I3(n26886), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_32 (.CI(n26886), .I0(GND_net), .I1(bit_ctr[30]), 
            .CO(n26887));
    SB_LUT4 bit_ctr_1142_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[29]), 
            .I3(n26885), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_31 (.CI(n26885), .I0(GND_net), .I1(bit_ctr[29]), 
            .CO(n26886));
    SB_LUT4 bit_ctr_1142_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[28]), 
            .I3(n26884), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_30 (.CI(n26884), .I0(GND_net), .I1(bit_ctr[28]), 
            .CO(n26885));
    SB_LUT4 bit_ctr_1142_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[27]), 
            .I3(n26883), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_29 (.CI(n26883), .I0(GND_net), .I1(bit_ctr[27]), 
            .CO(n26884));
    SB_LUT4 bit_ctr_1142_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[26]), 
            .I3(n26882), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_28 (.CI(n26882), .I0(GND_net), .I1(bit_ctr[26]), 
            .CO(n26883));
    SB_LUT4 bit_ctr_1142_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[25]), 
            .I3(n26881), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_27 (.CI(n26881), .I0(GND_net), .I1(bit_ctr[25]), 
            .CO(n26882));
    SB_LUT4 bit_ctr_1142_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[24]), 
            .I3(n26880), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr_1142__i8 (.Q(bit_ctr[8]), .C(clk16MHz), .E(n4354), 
            .D(n133[8]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_CARRY bit_ctr_1142_add_4_26 (.CI(n26880), .I0(GND_net), .I1(bit_ctr[24]), 
            .CO(n26881));
    SB_LUT4 bit_ctr_1142_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[23]), 
            .I3(n26879), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_ctr_1142__i9 (.Q(bit_ctr[9]), .C(clk16MHz), .E(n4354), 
            .D(n133[9]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i10 (.Q(bit_ctr[10]), .C(clk16MHz), .E(n4354), 
            .D(n133[10]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i11 (.Q(bit_ctr[11]), .C(clk16MHz), .E(n4354), 
            .D(n133[11]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i12 (.Q(bit_ctr[12]), .C(clk16MHz), .E(n4354), 
            .D(n133[12]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_CARRY bit_ctr_1142_add_4_25 (.CI(n26879), .I0(GND_net), .I1(bit_ctr[23]), 
            .CO(n26880));
    SB_DFFESR bit_ctr_1142__i13 (.Q(bit_ctr[13]), .C(clk16MHz), .E(n4354), 
            .D(n133[13]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i14 (.Q(bit_ctr[14]), .C(clk16MHz), .E(n4354), 
            .D(n133[14]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i15 (.Q(bit_ctr[15]), .C(clk16MHz), .E(n4354), 
            .D(n133[15]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i16 (.Q(bit_ctr[16]), .C(clk16MHz), .E(n4354), 
            .D(n133[16]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i17 (.Q(bit_ctr[17]), .C(clk16MHz), .E(n4354), 
            .D(n133[17]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i18 (.Q(bit_ctr[18]), .C(clk16MHz), .E(n4354), 
            .D(n133[18]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i19 (.Q(bit_ctr[19]), .C(clk16MHz), .E(n4354), 
            .D(n133[19]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i20 (.Q(bit_ctr[20]), .C(clk16MHz), .E(n4354), 
            .D(n133[20]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i21 (.Q(bit_ctr[21]), .C(clk16MHz), .E(n4354), 
            .D(n133[21]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i22 (.Q(bit_ctr[22]), .C(clk16MHz), .E(n4354), 
            .D(n133[22]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i23 (.Q(bit_ctr[23]), .C(clk16MHz), .E(n4354), 
            .D(n133[23]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i24 (.Q(bit_ctr[24]), .C(clk16MHz), .E(n4354), 
            .D(n133[24]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i25 (.Q(bit_ctr[25]), .C(clk16MHz), .E(n4354), 
            .D(n133[25]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i26 (.Q(bit_ctr[26]), .C(clk16MHz), .E(n4354), 
            .D(n133[26]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i27 (.Q(bit_ctr[27]), .C(clk16MHz), .E(n4354), 
            .D(n133[27]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i28 (.Q(bit_ctr[28]), .C(clk16MHz), .E(n4354), 
            .D(n133[28]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i29 (.Q(bit_ctr[29]), .C(clk16MHz), .E(n4354), 
            .D(n133[29]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i30 (.Q(bit_ctr[30]), .C(clk16MHz), .E(n4354), 
            .D(n133[30]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i31 (.Q(bit_ctr[31]), .C(clk16MHz), .E(n4354), 
            .D(n133[31]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 bit_ctr_1142_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[22]), 
            .I3(n26878), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_24 (.CI(n26878), .I0(GND_net), .I1(bit_ctr[22]), 
            .CO(n26879));
    SB_LUT4 bit_ctr_1142_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[21]), 
            .I3(n26877), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_23 (.CI(n26877), .I0(GND_net), .I1(bit_ctr[21]), 
            .CO(n26878));
    SB_LUT4 bit_ctr_1142_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[20]), 
            .I3(n26876), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_22 (.CI(n26876), .I0(GND_net), .I1(bit_ctr[20]), 
            .CO(n26877));
    SB_LUT4 bit_ctr_1142_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[19]), 
            .I3(n26875), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_21 (.CI(n26875), .I0(GND_net), .I1(bit_ctr[19]), 
            .CO(n26876));
    SB_LUT4 bit_ctr_1142_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[18]), 
            .I3(n26874), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_20 (.CI(n26874), .I0(GND_net), .I1(bit_ctr[18]), 
            .CO(n26875));
    SB_LUT4 bit_ctr_1142_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[17]), 
            .I3(n26873), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_19 (.CI(n26873), .I0(GND_net), .I1(bit_ctr[17]), 
            .CO(n26874));
    SB_LUT4 bit_ctr_1142_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[16]), 
            .I3(n26872), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_18 (.CI(n26872), .I0(GND_net), .I1(bit_ctr[16]), 
            .CO(n26873));
    SB_LUT4 bit_ctr_1142_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[15]), 
            .I3(n26871), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_17 (.CI(n26871), .I0(GND_net), .I1(bit_ctr[15]), 
            .CO(n26872));
    SB_LUT4 bit_ctr_1142_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[14]), 
            .I3(n26870), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_16 (.CI(n26870), .I0(GND_net), .I1(bit_ctr[14]), 
            .CO(n26871));
    SB_LUT4 bit_ctr_1142_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[13]), 
            .I3(n26869), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_15 (.CI(n26869), .I0(GND_net), .I1(bit_ctr[13]), 
            .CO(n26870));
    SB_LUT4 bit_ctr_1142_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[12]), 
            .I3(n26868), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_14 (.CI(n26868), .I0(GND_net), .I1(bit_ctr[12]), 
            .CO(n26869));
    SB_LUT4 bit_ctr_1142_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[11]), 
            .I3(n26867), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_13 (.CI(n26867), .I0(GND_net), .I1(bit_ctr[11]), 
            .CO(n26868));
    SB_LUT4 bit_ctr_1142_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[10]), 
            .I3(n26866), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_12 (.CI(n26866), .I0(GND_net), .I1(bit_ctr[10]), 
            .CO(n26867));
    SB_LUT4 bit_ctr_1142_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[9]), 
            .I3(n26865), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_11 (.CI(n26865), .I0(GND_net), .I1(bit_ctr[9]), 
            .CO(n26866));
    SB_LUT4 bit_ctr_1142_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[8]), 
            .I3(n26864), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_10 (.CI(n26864), .I0(GND_net), .I1(bit_ctr[8]), 
            .CO(n26865));
    SB_LUT4 bit_ctr_1142_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[7]), 
            .I3(n26863), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_9 (.CI(n26863), .I0(GND_net), .I1(bit_ctr[7]), 
            .CO(n26864));
    SB_LUT4 bit_ctr_1142_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[6]), 
            .I3(n26862), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_8 (.CI(n26862), .I0(GND_net), .I1(bit_ctr[6]), 
            .CO(n26863));
    SB_LUT4 bit_ctr_1142_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[5]), 
            .I3(n26861), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_7 (.CI(n26861), .I0(GND_net), .I1(bit_ctr[5]), 
            .CO(n26862));
    SB_LUT4 bit_ctr_1142_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[4]), 
            .I3(n26860), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i14_1_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY bit_ctr_1142_add_4_6 (.CI(n26860), .I0(GND_net), .I1(bit_ctr[4]), 
            .CO(n26861));
    SB_LUT4 bit_ctr_1142_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[3]), 
            .I3(n26859), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i15_1_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_0__bdd_4_lut_33466_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[2]), 
            .I2(neopxl_color[3]), .I3(bit_ctr[1]), .O(n38064));
    defparam bit_ctr_0__bdd_4_lut_33466_4_lut.LUT_INIT = 16'heea0;
    SB_CARRY bit_ctr_1142_add_4_5 (.CI(n26859), .I0(GND_net), .I1(bit_ctr[3]), 
            .CO(n26860));
    SB_LUT4 bit_ctr_1142_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[2]), 
            .I3(n26858), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_4 (.CI(n26858), .I0(GND_net), .I1(bit_ctr[2]), 
            .CO(n26859));
    SB_LUT4 bit_ctr_1142_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[1]), 
            .I3(n26857), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_3 (.CI(n26857), .I0(GND_net), .I1(bit_ctr[1]), 
            .CO(n26858));
    SB_LUT4 bit_ctr_1142_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1142_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1142_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_ctr[0]), 
            .CO(n26857));
    SB_LUT4 timer_1141_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(timer[31]), 
            .I3(n26856), .O(n133_adj_4481[31])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1141_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(timer[30]), 
            .I3(n26855), .O(n133_adj_4481[30])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_32 (.CI(n26855), .I0(GND_net), .I1(timer[30]), 
            .CO(n26856));
    SB_LUT4 timer_1141_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(timer[29]), 
            .I3(n26854), .O(n133_adj_4481[29])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_31 (.CI(n26854), .I0(GND_net), .I1(timer[29]), 
            .CO(n26855));
    SB_LUT4 timer_1141_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(timer[28]), 
            .I3(n26853), .O(n133_adj_4481[28])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_30 (.CI(n26853), .I0(GND_net), .I1(timer[28]), 
            .CO(n26854));
    SB_LUT4 timer_1141_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(timer[27]), 
            .I3(n26852), .O(n133_adj_4481[27])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_29 (.CI(n26852), .I0(GND_net), .I1(timer[27]), 
            .CO(n26853));
    SB_LUT4 timer_1141_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(timer[26]), 
            .I3(n26851), .O(n133_adj_4481[26])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_28 (.CI(n26851), .I0(GND_net), .I1(timer[26]), 
            .CO(n26852));
    SB_LUT4 timer_1141_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(timer[25]), 
            .I3(n26850), .O(n133_adj_4481[25])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_27 (.CI(n26850), .I0(GND_net), .I1(timer[25]), 
            .CO(n26851));
    SB_LUT4 timer_1141_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(timer[24]), 
            .I3(n26849), .O(n133_adj_4481[24])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_26 (.CI(n26849), .I0(GND_net), .I1(timer[24]), 
            .CO(n26850));
    SB_LUT4 timer_1141_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(timer[23]), 
            .I3(n26848), .O(n133_adj_4481[23])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_25 (.CI(n26848), .I0(GND_net), .I1(timer[23]), 
            .CO(n26849));
    SB_LUT4 timer_1141_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(timer[22]), 
            .I3(n26847), .O(n133_adj_4481[22])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_24 (.CI(n26847), .I0(GND_net), .I1(timer[22]), 
            .CO(n26848));
    SB_LUT4 timer_1141_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(timer[21]), 
            .I3(n26846), .O(n133_adj_4481[21])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_23 (.CI(n26846), .I0(GND_net), .I1(timer[21]), 
            .CO(n26847));
    SB_LUT4 timer_1141_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(timer[20]), 
            .I3(n26845), .O(n133_adj_4481[20])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_22 (.CI(n26845), .I0(GND_net), .I1(timer[20]), 
            .CO(n26846));
    SB_LUT4 timer_1141_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(timer[19]), 
            .I3(n26844), .O(n133_adj_4481[19])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_21 (.CI(n26844), .I0(GND_net), .I1(timer[19]), 
            .CO(n26845));
    SB_LUT4 timer_1141_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(timer[18]), 
            .I3(n26843), .O(n133_adj_4481[18])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_20 (.CI(n26843), .I0(GND_net), .I1(timer[18]), 
            .CO(n26844));
    SB_LUT4 timer_1141_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(timer[17]), 
            .I3(n26842), .O(n133_adj_4481[17])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_19 (.CI(n26842), .I0(GND_net), .I1(timer[17]), 
            .CO(n26843));
    SB_LUT4 timer_1141_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(timer[16]), 
            .I3(n26841), .O(n133_adj_4481[16])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_18 (.CI(n26841), .I0(GND_net), .I1(timer[16]), 
            .CO(n26842));
    SB_LUT4 timer_1141_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(timer[15]), 
            .I3(n26840), .O(n133_adj_4481[15])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_17 (.CI(n26840), .I0(GND_net), .I1(timer[15]), 
            .CO(n26841));
    SB_LUT4 timer_1141_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(timer[14]), 
            .I3(n26839), .O(n133_adj_4481[14])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_16 (.CI(n26839), .I0(GND_net), .I1(timer[14]), 
            .CO(n26840));
    SB_LUT4 timer_1141_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(timer[13]), 
            .I3(n26838), .O(n133_adj_4481[13])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_15 (.CI(n26838), .I0(GND_net), .I1(timer[13]), 
            .CO(n26839));
    SB_LUT4 timer_1141_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(timer[12]), 
            .I3(n26837), .O(n133_adj_4481[12])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_14 (.CI(n26837), .I0(GND_net), .I1(timer[12]), 
            .CO(n26838));
    SB_LUT4 timer_1141_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(timer[11]), 
            .I3(n26836), .O(n133_adj_4481[11])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_13 (.CI(n26836), .I0(GND_net), .I1(timer[11]), 
            .CO(n26837));
    SB_LUT4 timer_1141_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(timer[10]), 
            .I3(n26835), .O(n133_adj_4481[10])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_12 (.CI(n26835), .I0(GND_net), .I1(timer[10]), 
            .CO(n26836));
    SB_LUT4 timer_1141_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(timer[9]), 
            .I3(n26834), .O(n133_adj_4481[9])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_11 (.CI(n26834), .I0(GND_net), .I1(timer[9]), 
            .CO(n26835));
    SB_LUT4 sub_14_inv_0_i16_1_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 timer_1141_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(timer[8]), 
            .I3(n26833), .O(n133_adj_4481[8])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_10 (.CI(n26833), .I0(GND_net), .I1(timer[8]), 
            .CO(n26834));
    SB_LUT4 timer_1141_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(timer[7]), 
            .I3(n26832), .O(n133_adj_4481[7])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_9 (.CI(n26832), .I0(GND_net), .I1(timer[7]), 
            .CO(n26833));
    SB_LUT4 timer_1141_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(timer[6]), 
            .I3(n26831), .O(n133_adj_4481[6])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_8 (.CI(n26831), .I0(GND_net), .I1(timer[6]), 
            .CO(n26832));
    SB_LUT4 timer_1141_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(timer[5]), 
            .I3(n26830), .O(n133_adj_4481[5])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_7 (.CI(n26830), .I0(GND_net), .I1(timer[5]), 
            .CO(n26831));
    SB_LUT4 timer_1141_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(timer[4]), 
            .I3(n26829), .O(n133_adj_4481[4])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_33_lut (.I0(n34179), .I1(timer[31]), .I2(n1[31]), 
            .I3(n26581), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_33_lut.LUT_INIT = 16'hebbe;
    SB_CARRY timer_1141_add_4_6 (.CI(n26829), .I0(GND_net), .I1(timer[4]), 
            .CO(n26830));
    SB_LUT4 sub_14_add_2_32_lut (.I0(n34177), .I1(timer[30]), .I2(n1[30]), 
            .I3(n26580), .O(n34179)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_32_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_32 (.CI(n26580), .I0(timer[30]), .I1(n1[30]), 
            .CO(n26581));
    SB_LUT4 timer_1141_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(timer[3]), 
            .I3(n26828), .O(n133_adj_4481[3])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_5 (.CI(n26828), .I0(GND_net), .I1(timer[3]), 
            .CO(n26829));
    SB_LUT4 timer_1141_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(timer[2]), 
            .I3(n26827), .O(n133_adj_4481[2])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1141_add_4_4 (.CI(n26827), .I0(GND_net), .I1(timer[2]), 
            .CO(n26828));
    SB_LUT4 timer_1141_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(timer[1]), 
            .I3(n26826), .O(n133_adj_4481[1])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_31_lut (.I0(n34175), .I1(timer[29]), .I2(n1[29]), 
            .I3(n26579), .O(n34177)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_31_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_31 (.CI(n26579), .I0(timer[29]), .I1(n1[29]), 
            .CO(n26580));
    SB_CARRY timer_1141_add_4_3 (.CI(n26826), .I0(GND_net), .I1(timer[1]), 
            .CO(n26827));
    SB_LUT4 sub_14_add_2_30_lut (.I0(n34173), .I1(timer[28]), .I2(n1[28]), 
            .I3(n26578), .O(n34175)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_30_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 timer_1141_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(timer[0]), 
            .I3(VCC_net), .O(n133_adj_4481[0])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1141_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_30 (.CI(n26578), .I0(timer[28]), .I1(n1[28]), 
            .CO(n26579));
    SB_CARRY timer_1141_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(timer[0]), 
            .CO(n26826));
    SB_LUT4 sub_14_add_2_29_lut (.I0(n34171), .I1(timer[27]), .I2(n1[27]), 
            .I3(n26577), .O(n34173)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_29_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_29 (.CI(n26577), .I0(timer[27]), .I1(n1[27]), 
            .CO(n26578));
    SB_LUT4 sub_14_add_2_28_lut (.I0(n34169), .I1(timer[26]), .I2(n1[26]), 
            .I3(n26576), .O(n34171)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_28_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_28 (.CI(n26576), .I0(timer[26]), .I1(n1[26]), 
            .CO(n26577));
    SB_LUT4 sub_14_inv_0_i17_1_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_add_2_27_lut (.I0(n34167), .I1(timer[25]), .I2(n1[25]), 
            .I3(n26575), .O(n34169)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_27_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_27 (.CI(n26575), .I0(timer[25]), .I1(n1[25]), 
            .CO(n26576));
    SB_LUT4 sub_14_add_2_26_lut (.I0(n34165), .I1(timer[24]), .I2(n1[24]), 
            .I3(n26574), .O(n34167)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_26_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_26 (.CI(n26574), .I0(timer[24]), .I1(n1[24]), 
            .CO(n26575));
    SB_LUT4 sub_14_add_2_25_lut (.I0(n34163), .I1(timer[23]), .I2(n1[23]), 
            .I3(n26573), .O(n34165)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_25 (.CI(n26573), .I0(timer[23]), .I1(n1[23]), 
            .CO(n26574));
    SB_LUT4 sub_14_add_2_24_lut (.I0(n34161), .I1(timer[22]), .I2(n1[22]), 
            .I3(n26572), .O(n34163)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 n38166_bdd_4_lut (.I0(n38166), .I1(neopxl_color[17]), .I2(neopxl_color[16]), 
            .I3(color_bit_N_421[1]), .O(n38169));
    defparam n38166_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY sub_14_add_2_24 (.CI(n26572), .I0(timer[22]), .I1(n1[22]), 
            .CO(n26573));
    SB_LUT4 sub_14_add_2_23_lut (.I0(n34159), .I1(timer[21]), .I2(n1[21]), 
            .I3(n26571), .O(n34161)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 n38142_bdd_4_lut (.I0(n38142), .I1(neopxl_color[21]), .I2(neopxl_color[20]), 
            .I3(color_bit_N_421[1]), .O(n38145));
    defparam n38142_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut (.I0(\state[1] ), .I1(n22992), .I2(\neo_pixel_transmitter.done ), 
            .I3(state[0]), .O(n30679));   // verilog/neopixel.v(35[12] 117[6])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i27050_2_lut_3_lut (.I0(n22992), .I1(\neo_pixel_transmitter.done ), 
            .I2(state[0]), .I3(GND_net), .O(n31619));
    defparam i27050_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_DFF timer_1141__i0 (.Q(timer[0]), .C(clk16MHz), .D(n133_adj_4481[0]));   // verilog/neopixel.v(12[12:21])
    SB_CARRY sub_14_add_2_23 (.CI(n26571), .I0(timer[21]), .I1(n1[21]), 
            .CO(n26572));
    SB_LUT4 sub_14_add_2_22_lut (.I0(n34157), .I1(timer[20]), .I2(n1[20]), 
            .I3(n26570), .O(n34159)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_0__bdd_4_lut_33514_4_lut_4_lut (.I0(bit_ctr[1]), .I1(bit_ctr[0]), 
            .I2(neopxl_color[13]), .I3(neopxl_color[12]), .O(n38112));   // verilog/neopixel.v(19[6:15])
    defparam bit_ctr_0__bdd_4_lut_33514_4_lut_4_lut.LUT_INIT = 16'hd5c4;
    SB_CARRY sub_14_add_2_22 (.CI(n26570), .I0(timer[20]), .I1(n1[20]), 
            .CO(n26571));
    SB_LUT4 sub_14_add_2_21_lut (.I0(n34155), .I1(timer[19]), .I2(n1[19]), 
            .I3(n26569), .O(n34157)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 n38094_bdd_4_lut (.I0(n38094), .I1(neopxl_color[5]), .I2(neopxl_color[4]), 
            .I3(color_bit_N_421[1]), .O(n38097));
    defparam n38094_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n38082_bdd_4_lut (.I0(n38082), .I1(neopxl_color[9]), .I2(neopxl_color[8]), 
            .I3(color_bit_N_421[1]), .O(n38085));
    defparam n38082_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9_4_lut (.I0(\data_out_frame[24][6] ), .I1(n31192), .I2(n31249), 
            .I3(n31003), .O(n22_adj_4471));
    defparam i9_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11_4_lut (.I0(\data_out_frame[23][0] ), .I1(n22_adj_4471), 
            .I2(n16), .I3(n31263), .O(n24_adj_4472));
    defparam i11_4_lut.LUT_INIT = 16'h6996;
    SB_DFF \neo_pixel_transmitter.t0_i0_i0  (.Q(\neo_pixel_transmitter.t0 [0]), 
           .C(clk16MHz), .D(n15252));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 i12_4_lut (.I0(n32328), .I1(n24_adj_4472), .I2(n20_adj_4473), 
            .I3(\data_out_frame[23][1] ), .O(n28284));
    defparam i12_4_lut.LUT_INIT = 16'h9669;
    SB_CARRY sub_14_add_2_21 (.CI(n26569), .I0(timer[19]), .I1(n1[19]), 
            .CO(n26570));
    SB_DFFE state_i1 (.Q(\state[1] ), .C(clk16MHz), .E(VCC_net), .D(n10_adj_4474));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF timer_1141__i31 (.Q(timer[31]), .C(clk16MHz), .D(n133_adj_4481[31]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i30 (.Q(timer[30]), .C(clk16MHz), .D(n133_adj_4481[30]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i29 (.Q(timer[29]), .C(clk16MHz), .D(n133_adj_4481[29]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i28 (.Q(timer[28]), .C(clk16MHz), .D(n133_adj_4481[28]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i27 (.Q(timer[27]), .C(clk16MHz), .D(n133_adj_4481[27]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i26 (.Q(timer[26]), .C(clk16MHz), .D(n133_adj_4481[26]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i25 (.Q(timer[25]), .C(clk16MHz), .D(n133_adj_4481[25]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i24 (.Q(timer[24]), .C(clk16MHz), .D(n133_adj_4481[24]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i23 (.Q(timer[23]), .C(clk16MHz), .D(n133_adj_4481[23]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i22 (.Q(timer[22]), .C(clk16MHz), .D(n133_adj_4481[22]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i21 (.Q(timer[21]), .C(clk16MHz), .D(n133_adj_4481[21]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i20 (.Q(timer[20]), .C(clk16MHz), .D(n133_adj_4481[20]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i19 (.Q(timer[19]), .C(clk16MHz), .D(n133_adj_4481[19]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i18 (.Q(timer[18]), .C(clk16MHz), .D(n133_adj_4481[18]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i17 (.Q(timer[17]), .C(clk16MHz), .D(n133_adj_4481[17]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i16 (.Q(timer[16]), .C(clk16MHz), .D(n133_adj_4481[16]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i15 (.Q(timer[15]), .C(clk16MHz), .D(n133_adj_4481[15]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i14 (.Q(timer[14]), .C(clk16MHz), .D(n133_adj_4481[14]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i13 (.Q(timer[13]), .C(clk16MHz), .D(n133_adj_4481[13]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i12 (.Q(timer[12]), .C(clk16MHz), .D(n133_adj_4481[12]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i11 (.Q(timer[11]), .C(clk16MHz), .D(n133_adj_4481[11]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i10 (.Q(timer[10]), .C(clk16MHz), .D(n133_adj_4481[10]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i9 (.Q(timer[9]), .C(clk16MHz), .D(n133_adj_4481[9]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i8 (.Q(timer[8]), .C(clk16MHz), .D(n133_adj_4481[8]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i7 (.Q(timer[7]), .C(clk16MHz), .D(n133_adj_4481[7]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i6 (.Q(timer[6]), .C(clk16MHz), .D(n133_adj_4481[6]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i5 (.Q(timer[5]), .C(clk16MHz), .D(n133_adj_4481[5]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i4 (.Q(timer[4]), .C(clk16MHz), .D(n133_adj_4481[4]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i3 (.Q(timer[3]), .C(clk16MHz), .D(n133_adj_4481[3]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i2 (.Q(timer[2]), .C(clk16MHz), .D(n133_adj_4481[2]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1141__i1 (.Q(timer[1]), .C(clk16MHz), .D(n133_adj_4481[1]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 sub_14_add_2_20_lut (.I0(n34153), .I1(timer[18]), .I2(n1[18]), 
            .I3(n26568), .O(n34155)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_20_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_20 (.CI(n26568), .I0(timer[18]), .I1(n1[18]), 
            .CO(n26569));
    SB_LUT4 sub_14_add_2_19_lut (.I0(n34151), .I1(timer[17]), .I2(n1[17]), 
            .I3(n26567), .O(n34153)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_19 (.CI(n26567), .I0(timer[17]), .I1(n1[17]), 
            .CO(n26568));
    SB_LUT4 sub_14_add_2_18_lut (.I0(n34149), .I1(timer[16]), .I2(n1[16]), 
            .I3(n26566), .O(n34151)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_18 (.CI(n26566), .I0(timer[16]), .I1(n1[16]), 
            .CO(n26567));
    SB_LUT4 sub_14_add_2_17_lut (.I0(n34147), .I1(timer[15]), .I2(n1[15]), 
            .I3(n26565), .O(n34149)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_17 (.CI(n26565), .I0(timer[15]), .I1(n1[15]), 
            .CO(n26566));
    SB_DFFE start_103 (.Q(start), .C(clk16MHz), .E(VCC_net), .D(n30083));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_add_2_16_lut (.I0(n34145), .I1(timer[14]), .I2(n1[14]), 
            .I3(n26564), .O(n34147)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_16 (.CI(n26564), .I0(timer[14]), .I1(n1[14]), 
            .CO(n26565));
    SB_LUT4 sub_14_add_2_15_lut (.I0(n34143), .I1(timer[13]), .I2(n1[13]), 
            .I3(n26563), .O(n34145)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i18811_2_lut_3_lut (.I0(bit_ctr[1]), .I1(bit_ctr[0]), .I2(bit_ctr[2]), 
            .I3(GND_net), .O(n22932));
    defparam i18811_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_ctr[1]), .I1(bit_ctr[0]), .I2(bit_ctr[2]), 
            .I3(GND_net), .O(color_bit_N_421[2]));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1e1e;
    SB_DFF \neo_pixel_transmitter.t0_i0_i1  (.Q(\neo_pixel_transmitter.t0 [1]), 
           .C(clk16MHz), .D(n15831));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i2  (.Q(\neo_pixel_transmitter.t0 [2]), 
           .C(clk16MHz), .D(n15829));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i3  (.Q(\neo_pixel_transmitter.t0 [3]), 
           .C(clk16MHz), .D(n15828));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i4  (.Q(\neo_pixel_transmitter.t0 [4]), 
           .C(clk16MHz), .D(n15827));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i5  (.Q(\neo_pixel_transmitter.t0 [5]), 
           .C(clk16MHz), .D(n15826));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i6  (.Q(\neo_pixel_transmitter.t0 [6]), 
           .C(clk16MHz), .D(n15825));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i7  (.Q(\neo_pixel_transmitter.t0 [7]), 
           .C(clk16MHz), .D(n15824));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i8  (.Q(\neo_pixel_transmitter.t0 [8]), 
           .C(clk16MHz), .D(n15823));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i9  (.Q(\neo_pixel_transmitter.t0 [9]), 
           .C(clk16MHz), .D(n15822));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i10  (.Q(\neo_pixel_transmitter.t0 [10]), 
           .C(clk16MHz), .D(n15821));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i11  (.Q(\neo_pixel_transmitter.t0 [11]), 
           .C(clk16MHz), .D(n15820));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i12  (.Q(\neo_pixel_transmitter.t0 [12]), 
           .C(clk16MHz), .D(n15819));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i13  (.Q(\neo_pixel_transmitter.t0 [13]), 
           .C(clk16MHz), .D(n15818));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i14  (.Q(\neo_pixel_transmitter.t0 [14]), 
           .C(clk16MHz), .D(n15817));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i15  (.Q(\neo_pixel_transmitter.t0 [15]), 
           .C(clk16MHz), .D(n15816));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i16  (.Q(\neo_pixel_transmitter.t0 [16]), 
           .C(clk16MHz), .D(n15815));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i17  (.Q(\neo_pixel_transmitter.t0 [17]), 
           .C(clk16MHz), .D(n15814));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i18  (.Q(\neo_pixel_transmitter.t0 [18]), 
           .C(clk16MHz), .D(n15813));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i19  (.Q(\neo_pixel_transmitter.t0 [19]), 
           .C(clk16MHz), .D(n15812));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i20  (.Q(\neo_pixel_transmitter.t0 [20]), 
           .C(clk16MHz), .D(n15811));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i21  (.Q(\neo_pixel_transmitter.t0 [21]), 
           .C(clk16MHz), .D(n15810));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i22  (.Q(\neo_pixel_transmitter.t0 [22]), 
           .C(clk16MHz), .D(n15809));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i23  (.Q(\neo_pixel_transmitter.t0 [23]), 
           .C(clk16MHz), .D(n15808));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i24  (.Q(\neo_pixel_transmitter.t0 [24]), 
           .C(clk16MHz), .D(n15807));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i25  (.Q(\neo_pixel_transmitter.t0 [25]), 
           .C(clk16MHz), .D(n15806));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i26  (.Q(\neo_pixel_transmitter.t0 [26]), 
           .C(clk16MHz), .D(n15805));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i27  (.Q(\neo_pixel_transmitter.t0 [27]), 
           .C(clk16MHz), .D(n15804));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i28  (.Q(\neo_pixel_transmitter.t0 [28]), 
           .C(clk16MHz), .D(n15803));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i29  (.Q(\neo_pixel_transmitter.t0 [29]), 
           .C(clk16MHz), .D(n15802));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i30  (.Q(\neo_pixel_transmitter.t0 [30]), 
           .C(clk16MHz), .D(n15801));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i31  (.Q(\neo_pixel_transmitter.t0 [31]), 
           .C(clk16MHz), .D(n15800));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_15 (.CI(n26563), .I0(timer[13]), .I1(n1[13]), 
            .CO(n26564));
    SB_LUT4 sub_14_add_2_14_lut (.I0(one_wire_N_378[11]), .I1(timer[12]), 
            .I2(n1[12]), .I3(n26562), .O(n34143)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_14_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_14 (.CI(n26562), .I0(timer[12]), .I1(n1[12]), 
            .CO(n26563));
    SB_LUT4 sub_14_add_2_13_lut (.I0(GND_net), .I1(timer[11]), .I2(n1[11]), 
            .I3(n26561), .O(one_wire_N_378[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_13 (.CI(n26561), .I0(timer[11]), .I1(n1[11]), 
            .CO(n26562));
    SB_LUT4 sub_14_add_2_12_lut (.I0(GND_net), .I1(timer[10]), .I2(n1[10]), 
            .I3(n26560), .O(one_wire_N_378[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_12 (.CI(n26560), .I0(timer[10]), .I1(n1[10]), 
            .CO(n26561));
    SB_LUT4 sub_14_add_2_11_lut (.I0(GND_net), .I1(timer[9]), .I2(n1[9]), 
            .I3(n26559), .O(one_wire_N_378[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_11 (.CI(n26559), .I0(timer[9]), .I1(n1[9]), 
            .CO(n26560));
    SB_LUT4 sub_14_add_2_10_lut (.I0(GND_net), .I1(timer[8]), .I2(n1[8]), 
            .I3(n26558), .O(one_wire_N_378[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_10 (.CI(n26558), .I0(timer[8]), .I1(n1[8]), 
            .CO(n26559));
    SB_LUT4 sub_14_add_2_9_lut (.I0(n34183), .I1(timer[7]), .I2(n1[7]), 
            .I3(n26557), .O(n34185)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_9_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_9 (.CI(n26557), .I0(timer[7]), .I1(n1[7]), .CO(n26558));
    SB_LUT4 i1_2_lut_adj_1557 (.I0(one_wire_N_378[8]), .I1(n34185), .I2(GND_net), 
            .I3(GND_net), .O(n34187));   // verilog/neopixel.v(104[14:39])
    defparam i1_2_lut_adj_1557.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(one_wire_N_378[10]), .I1(n116), .I2(one_wire_N_378[9]), 
            .I3(n34187), .O(n96));   // verilog/neopixel.v(104[14:39])
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_14_add_2_8_lut (.I0(n34181), .I1(timer[6]), .I2(n1[6]), 
            .I3(n26556), .O(n34183)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_8_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_14_inv_0_i18_1_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sub_14_add_2_8 (.CI(n26556), .I0(timer[6]), .I1(n1[6]), .CO(n26557));
    SB_LUT4 sub_14_add_2_7_lut (.I0(one_wire_N_378[4]), .I1(timer[5]), .I2(n1[5]), 
            .I3(n26555), .O(n34181)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_7_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_2_lut_adj_1558 (.I0(one_wire_N_378[3]), .I1(one_wire_N_378[2]), 
            .I2(GND_net), .I3(GND_net), .O(n18722));   // verilog/neopixel.v(53[15:25])
    defparam i1_2_lut_adj_1558.LUT_INIT = 16'heeee;
    SB_LUT4 sub_14_inv_0_i19_1_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_2_lut_adj_1559 (.I0(one_wire_N_378[2]), .I1(n4_adj_4476), 
            .I2(GND_net), .I3(GND_net), .O(n113));   // verilog/neopixel.v(53[15:25])
    defparam i2_2_lut_adj_1559.LUT_INIT = 16'h8888;
    SB_CARRY sub_14_add_2_7 (.CI(n26555), .I0(timer[5]), .I1(n1[5]), .CO(n26556));
    SB_LUT4 i33295_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n37909));
    defparam i33295_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i135_3_lut_4_lut (.I0(one_wire_N_378[3]), .I1(one_wire_N_378[2]), 
            .I2(n4_adj_4476), .I3(n131), .O(n31475));   // verilog/neopixel.v(16[20:25])
    defparam i135_3_lut_4_lut.LUT_INIT = 16'hc0ee;
    SB_LUT4 i26914_4_lut (.I0(n96), .I1(n113), .I2(n18722), .I3(state[0]), 
            .O(n5_adj_4477));   // verilog/neopixel.v(16[20:25])
    defparam i26914_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i18869_4_lut (.I0(one_wire_N_378[10]), .I1(n116), .I2(one_wire_N_378[8]), 
            .I3(one_wire_N_378[9]), .O(n22992));
    defparam i18869_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 i1_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), .I2(n5_adj_4477), 
            .I3(GND_net), .O(n58));   // verilog/neopixel.v(16[20:25])
    defparam i1_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 sub_14_add_2_6_lut (.I0(GND_net), .I1(timer[4]), .I2(n1[4]), 
            .I3(n26554), .O(one_wire_N_378[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_6 (.CI(n26554), .I0(timer[4]), .I1(n1[4]), .CO(n26555));
    SB_LUT4 i15992_3_lut (.I0(neopxl_color[22]), .I1(\data_in_frame[4][6] ), 
            .I2(n8682), .I3(GND_net), .O(n15233));
    defparam i15992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_14_add_2_5_lut (.I0(GND_net), .I1(timer[3]), .I2(n1[3]), 
            .I3(n26553), .O(one_wire_N_378[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_5 (.CI(n26553), .I0(timer[3]), .I1(n1[3]), .CO(n26554));
    SB_LUT4 sub_14_add_2_4_lut (.I0(GND_net), .I1(timer[2]), .I2(n1[2]), 
            .I3(n26552), .O(one_wire_N_378[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_1560 (.I0(n34419), .I1(n18722), .I2(n96), .I3(n37909), 
            .O(n32));
    defparam i1_4_lut_adj_1560.LUT_INIT = 16'h0a0b;
    SB_CARRY sub_14_add_2_4 (.CI(n26552), .I0(timer[2]), .I1(n1[2]), .CO(n26553));
    SB_LUT4 sub_14_add_2_3_lut (.I0(one_wire_N_378[3]), .I1(timer[1]), .I2(n1[1]), 
            .I3(n26551), .O(n4_adj_4476)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_14_add_2_3 (.CI(n26551), .I0(timer[1]), .I1(n1[1]), .CO(n26552));
    SB_CARRY sub_14_add_2_2 (.CI(VCC_net), .I0(timer[0]), .I1(n1[0]), 
            .CO(n26551));
    SB_DFFESS state_i0 (.Q(state[0]), .C(clk16MHz), .E(n7_adj_4480), .D(state_3__N_227[0]), 
            .S(n14659));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR one_wire_108 (.Q(NEOPXL_c), .C(clk16MHz), .E(n13456), .D(\neo_pixel_transmitter.done_N_441 ), 
            .R(n30679));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR bit_ctr_1142__i0 (.Q(bit_ctr[0]), .C(clk16MHz), .E(n4354), 
            .D(n133[0]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1142__i1 (.Q(bit_ctr[1]), .C(clk16MHz), .E(n4354), 
            .D(n133[1]), .R(n14840));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 i1_3_lut_4_lut (.I0(one_wire_N_378[2]), .I1(n4_adj_4476), .I2(\neo_pixel_transmitter.done ), 
            .I3(state[0]), .O(n34419));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0770;
    SB_LUT4 i15996_3_lut (.I0(neopxl_color[6]), .I1(\data_in_frame[6][6] ), 
            .I2(n8682), .I3(GND_net), .O(n15248));
    defparam i15996_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i134_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n131));   // verilog/neopixel.v(16[20:25])
    defparam i134_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_1561 (.I0(n31475), .I1(n96), .I2(start), .I3(GND_net), 
            .O(n32896));   // verilog/neopixel.v(16[20:25])
    defparam i1_3_lut_adj_1561.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_1562 (.I0(\state[1] ), .I1(n30830), .I2(n32896), 
            .I3(n30834), .O(n1758));
    defparam i1_4_lut_adj_1562.LUT_INIT = 16'h5450;
    SB_LUT4 i33416_3_lut (.I0(\state[1] ), .I1(n32), .I2(start), .I3(GND_net), 
            .O(n33143));
    defparam i33416_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i14628_3_lut (.I0(start), .I1(\neo_pixel_transmitter.done ), 
            .I2(\state[1] ), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_435 ));   // verilog/neopixel.v(16[20:25])
    defparam i14628_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i7_3_lut_4_lut (.I0(n12269), .I1(\data_out_frame[23][6] ), .I2(\data_out_frame[23][4] ), 
            .I3(\data_out_frame[23][5] ), .O(n20_adj_4473));
    defparam i7_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 sub_14_inv_0_i20_1_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_0__bdd_4_lut_33475_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[10]), 
            .I2(neopxl_color[11]), .I3(bit_ctr[1]), .O(n38082));
    defparam bit_ctr_0__bdd_4_lut_33475_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 bit_ctr_0__bdd_4_lut_33489_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[6]), 
            .I2(neopxl_color[7]), .I3(bit_ctr[1]), .O(n38094));
    defparam bit_ctr_0__bdd_4_lut_33489_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 sub_14_inv_0_i21_1_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i22_1_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 n38112_bdd_4_lut_4_lut (.I0(color_bit_N_421[1]), .I1(neopxl_color[14]), 
            .I2(neopxl_color[15]), .I3(n38112), .O(n38115));   // verilog/neopixel.v(19[6:15])
    defparam n38112_bdd_4_lut_4_lut.LUT_INIT = 16'hf588;
    SB_LUT4 i1_2_lut_adj_1563 (.I0(bit_ctr[1]), .I1(bit_ctr[0]), .I2(GND_net), 
            .I3(GND_net), .O(color_bit_N_421[1]));
    defparam i1_2_lut_adj_1563.LUT_INIT = 16'h6666;
    SB_LUT4 bit_ctr_0__bdd_4_lut_33533_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[22]), 
            .I2(neopxl_color[23]), .I3(bit_ctr[1]), .O(n38142));
    defparam bit_ctr_0__bdd_4_lut_33533_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 sub_14_inv_0_i23_1_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_0__bdd_4_lut_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[18]), 
            .I2(neopxl_color[19]), .I3(bit_ctr[1]), .O(n38166));
    defparam bit_ctr_0__bdd_4_lut_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 sub_14_inv_0_i24_1_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[23]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i24_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i25_1_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[24]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i26_1_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[25]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i26_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i27_1_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[26]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i27_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i49_4_lut (.I0(n32), .I1(n31619), .I2(\state[1] ), .I3(start), 
            .O(n13456));
    defparam i49_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 i71_1_lut (.I0(\neo_pixel_transmitter.done ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_441 ));   // verilog/neopixel.v(35[12] 117[6])
    defparam i71_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32050_2_lut (.I0(n5_adj_4477), .I1(n30834), .I2(GND_net), 
            .I3(GND_net), .O(n36263));   // verilog/neopixel.v(16[20:25])
    defparam i32050_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i14_4_lut (.I0(n36263), .I1(n131), .I2(\state[1] ), .I3(n22992), 
            .O(n14659));   // verilog/neopixel.v(16[20:25])
    defparam i14_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i15_3_lut (.I0(n58), .I1(n31485), .I2(\state[1] ), .I3(GND_net), 
            .O(n7_adj_4480));
    defparam i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30216_3_lut (.I0(n38067), .I1(n38097), .I2(color_bit_N_421[2]), 
            .I3(GND_net), .O(n34830));
    defparam i30216_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32717_3_lut (.I0(n38115), .I1(n38085), .I2(color_bit_N_421[2]), 
            .I3(GND_net), .O(n37331));
    defparam i32717_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_rep_484_2_lut (.I0(bit_ctr[3]), .I1(n22932), .I2(GND_net), 
            .I3(GND_net), .O(n38683));
    defparam i1_rep_484_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1564 (.I0(bit_ctr[4]), .I1(bit_ctr[3]), .I2(n22932), 
            .I3(GND_net), .O(n27534));
    defparam i1_3_lut_adj_1564.LUT_INIT = 16'h6a6a;
    SB_LUT4 i32849_4_lut (.I0(n37331), .I1(n34830), .I2(bit_ctr[3]), .I3(n22932), 
            .O(n37463));   // verilog/neopixel.v(22[26:38])
    defparam i32849_4_lut.LUT_INIT = 16'hacca;
    SB_LUT4 i31842_4_lut (.I0(n38169), .I1(n38683), .I2(n38145), .I3(color_bit_N_421[2]), 
            .O(n36261));
    defparam i31842_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i18501_4_lut (.I0(n36261), .I1(state_3__N_227[1]), .I2(n37463), 
            .I3(n27534), .O(state_3__N_227[0]));   // verilog/neopixel.v(40[18] 45[12])
    defparam i18501_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i24_4_lut_4_lut (.I0(state_3__N_227[1]), .I1(state[0]), .I2(n58), 
            .I3(\state[1] ), .O(n10_adj_4474));   // verilog/neopixel.v(16[20:25])
    defparam i24_4_lut_4_lut.LUT_INIT = 16'hbbf0;
    SB_LUT4 sub_14_inv_0_i1_1_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_adj_1565 (.I0(\neo_pixel_transmitter.done ), .I1(n22992), 
            .I2(state[0]), .I3(GND_net), .O(n80));
    defparam i1_2_lut_3_lut_adj_1565.LUT_INIT = 16'hfbfb;
    SB_LUT4 i26924_2_lut_3_lut (.I0(\neo_pixel_transmitter.done ), .I1(n22992), 
            .I2(state[0]), .I3(GND_net), .O(n31485));
    defparam i26924_2_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 sub_14_inv_0_i2_1_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 n38064_bdd_4_lut (.I0(n38064), .I1(neopxl_color[1]), .I2(neopxl_color[0]), 
            .I3(color_bit_N_421[1]), .O(n38067));
    defparam n38064_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 sub_14_inv_0_i28_1_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i29_1_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_adj_1566 (.I0(state[0]), .I1(one_wire_N_378[3]), 
            .I2(one_wire_N_378[2]), .I3(GND_net), .O(n30830));   // verilog/neopixel.v(35[12] 117[6])
    defparam i1_2_lut_3_lut_adj_1566.LUT_INIT = 16'ha8a8;
    SB_LUT4 sub_14_inv_0_i30_1_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i31_1_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i32_1_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i3_1_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i4_1_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module coms
//

module coms (clk16MHz, reset, GND_net, \data_out_frame[14] , byte_transmit_counter, 
            \data_out_frame[12] , \data_out_frame[13] , \byte_transmit_counter[1] , 
            \data_in_frame[1] , \data_in_frame[17] , n15585, VCC_net, 
            \data_in_frame[13] , \FRAME_MATCHER.i_31__N_2377 , neopxl_color, 
            n8682, n15582, n15579, \data_out_frame[5] , \data_out_frame[4] , 
            n15576, n15573, \data_in_frame[19] , n15570, n15567, n15564, 
            rx_data, n14240, n31489, n15540, n30345, n30351, n14222, 
            n15528, n14224, \data_in_frame[19][2] , \data_in_frame[19][3] , 
            \data_in_frame[8][6] , n15238, \data_in_frame[5] , \data_in_frame[0] , 
            \data_in_frame[3][4] , \data_in_frame[19][4] , \data_in_frame[19][5] , 
            n15241, rx_data_ready, \FRAME_MATCHER.rx_data_ready_prev , 
            \data_in_frame[16][4] , \data_out_frame[23] , LED_c, n15245, 
            n12269, \data_in_frame[6][1] , \data_in_frame[6][4] , \data_in_frame[6][5] , 
            DE_c, \data_in_frame[6][6] , \data_in_frame[6][7] , \data_in_frame[7][5] , 
            n30905, n14246, n27820, \data_in_frame[15] , \data_in_frame[9][1] , 
            \data_in_frame[9][2] , n1447, n15362, \data_in_frame[8][5] , 
            n15365, n15368, \data_in_frame[8][7] , n15371, \data_in_frame[9][0] , 
            n15374, \FRAME_MATCHER.state[3] , \data_out_frame[25] , n15377, 
            n15380, \data_in_frame[9][3] , n15383, \data_in_frame[9][4] , 
            n15386, \data_in_frame[9][5] , n15391, \data_in_frame[9][6] , 
            n27583, n32861, \data_out_frame[0][2] , n14787, \data_out_frame[27] , 
            \data_out_frame[26] , \data_out_frame[24] , \data_out_frame[0][3] , 
            n30765, \data_out_frame[0][4] , n30766, \data_in_frame[16][0] , 
            \data_in_frame[16][5] , \data_out_frame[1][0] , n30767, n31263, 
            \data_in_frame[21] , n31003, \data_out_frame[1][1] , n30768, 
            \data_out_frame[1][3] , n30769, \data_out_frame[1][5] , n30770, 
            \data_out_frame[1][6] , n30771, \data_out_frame[1][7] , n30761, 
            \data_in_frame[16][3] , n28284, n12182, Kp_23__N_635, n31249, 
            \data_in_frame[4] , n30887, n32328, n15255, n15254, n15250, 
            n15249, n15248, n15244, \data_out_frame[3][1] , n30772, 
            \data_out_frame[3][3] , n30773, \data_out_frame[3][4] , n30774, 
            \data_out_frame[3][6] , n30775, \data_out_frame[3][7] , n30776, 
            n30777, n30778, n14771, n30779, n30780, n30781, n14767, 
            n30782, n30783, n30784, n14763, n30764, n14761, n30785, 
            n14759, n30762, n14757, n30786, n30787, n30788, n15235, 
            n30789, n30790, n30791, n30792, n30793, n30794, n30795, 
            n30796, n30797, n30798, n30799, n30800, n14741, n30801, 
            n30802, n30803, n30804, n30760, n30805, n30806, n30807, 
            n30808, n14731, n14730, n30809, n30810, n30811, n15234, 
            n30812, n30813, n30814, n14723, n15233, n15231, n15230, 
            n15229, n15228, n30815, n15213, n15212, n15208, n15207, 
            n15206, n30816, n30817, n30818, n30819, n30820, n30821, 
            n14715, n14714, n30822, n30823, n30824, n30763, n30746, 
            n30747, n14707, n30748, n30749, n30750, n30751, n30752, 
            n30753, n30754, n14699, n30755, n30756, n30745, n30757, 
            n30758, n15938, n15935, n15928, n15914, n15913, n15909, 
            n15906, n15896, \data_in_frame[3][1] , n15612, n15615, 
            n15618, n15621, n15869, n15860, n15624, n15627, n15630, 
            n15633, n15636, n15642, \data_in_frame[16][2] , n15645, 
            n15648, n15651, n15654, \data_in_frame[16][6] , n15657, 
            \data_in_frame[16][7] , n15660, \data_in_frame[17][0] , n15663, 
            \data_in_frame[17][1] , n15666, n30339, n15672, n15675, 
            n15830, control_mode, n30377, \data_in_frame[19][1] , n15714, 
            n15717, n15720, n15723, n15726, n15779, n15750, n15760, 
            n15764, n15757, n15753, n15749, n15748, n15209, n15214, 
            n15217, n15736, n15223, n15179, n7, n31015, n15168, 
            n15145, n15144, n11741, ID, n30895, n31024, n31322, 
            n12023, n38139, n31192, n8, n38133, n14238, n16, n8659, 
            n30889, n38157, tx_o, n27, n2857, tx_enable, r_Clock_Count, 
            r_Rx_Data, \r_SM_Main[2] , \r_SM_Main[1] , baudrate, RX_N_2, 
            n2854, \o_Rx_DV_N_3356[8] , n30828, n33787, n33707, n33691, 
            n15491, n15490, n15489, n15488, n15486, n15485, n33739, 
            n15484, n13482, n33723, n33771, n33755, n33675, r_Clock_Count_adj_9, 
            n13640, \r_Bit_Index[0] , n31629, n15990, n28495, n15962, 
            \o_Rx_DV_N_3356[7] , \o_Rx_DV_N_3356[2] , \o_Rx_DV_N_3356[1] , 
            \o_Rx_DV_N_3356[5] , \o_Rx_DV_N_3356[3] , \o_Rx_DV_N_3356[4] , 
            \o_Rx_DV_N_3356[6] , \o_Rx_DV_N_3356[0] ) /* synthesis syn_module_defined=1 */ ;
    input clk16MHz;
    input reset;
    input GND_net;
    output [7:0]\data_out_frame[14] ;
    output [7:0]byte_transmit_counter;
    output [7:0]\data_out_frame[12] ;
    output [7:0]\data_out_frame[13] ;
    output \byte_transmit_counter[1] ;
    output [7:0]\data_in_frame[1] ;
    output [7:0]\data_in_frame[17] ;
    input n15585;
    input VCC_net;
    output [7:0]\data_in_frame[13] ;
    output \FRAME_MATCHER.i_31__N_2377 ;
    output [23:0]neopxl_color;
    output n8682;
    input n15582;
    input n15579;
    output [7:0]\data_out_frame[5] ;
    output [7:0]\data_out_frame[4] ;
    input n15576;
    input n15573;
    output [7:0]\data_in_frame[19] ;
    input n15570;
    input n15567;
    input n15564;
    output [7:0]rx_data;
    output n14240;
    output n31489;
    input n15540;
    input n30345;
    input n30351;
    output n14222;
    input n15528;
    output n14224;
    output \data_in_frame[19][2] ;
    output \data_in_frame[19][3] ;
    output \data_in_frame[8][6] ;
    input n15238;
    output [7:0]\data_in_frame[5] ;
    output [7:0]\data_in_frame[0] ;
    output \data_in_frame[3][4] ;
    output \data_in_frame[19][4] ;
    output \data_in_frame[19][5] ;
    input n15241;
    output rx_data_ready;
    output \FRAME_MATCHER.rx_data_ready_prev ;
    output \data_in_frame[16][4] ;
    output [7:0]\data_out_frame[23] ;
    output LED_c;
    input n15245;
    output n12269;
    output \data_in_frame[6][1] ;
    output \data_in_frame[6][4] ;
    output \data_in_frame[6][5] ;
    output DE_c;
    output \data_in_frame[6][6] ;
    output \data_in_frame[6][7] ;
    output \data_in_frame[7][5] ;
    output n30905;
    output n14246;
    input n27820;
    output [7:0]\data_in_frame[15] ;
    output \data_in_frame[9][1] ;
    output \data_in_frame[9][2] ;
    input n1447;
    input n15362;
    output \data_in_frame[8][5] ;
    input n15365;
    input n15368;
    output \data_in_frame[8][7] ;
    input n15371;
    output \data_in_frame[9][0] ;
    input n15374;
    output \FRAME_MATCHER.state[3] ;
    output [7:0]\data_out_frame[25] ;
    input n15377;
    input n15380;
    output \data_in_frame[9][3] ;
    input n15383;
    output \data_in_frame[9][4] ;
    input n15386;
    output \data_in_frame[9][5] ;
    input n15391;
    output \data_in_frame[9][6] ;
    input n27583;
    output n32861;
    output \data_out_frame[0][2] ;
    input n14787;
    output [7:0]\data_out_frame[27] ;
    output [7:0]\data_out_frame[26] ;
    output [7:0]\data_out_frame[24] ;
    output \data_out_frame[0][3] ;
    input n30765;
    output \data_out_frame[0][4] ;
    input n30766;
    output \data_in_frame[16][0] ;
    output \data_in_frame[16][5] ;
    output \data_out_frame[1][0] ;
    input n30767;
    output n31263;
    output [7:0]\data_in_frame[21] ;
    output n31003;
    output \data_out_frame[1][1] ;
    input n30768;
    output \data_out_frame[1][3] ;
    input n30769;
    output \data_out_frame[1][5] ;
    input n30770;
    output \data_out_frame[1][6] ;
    input n30771;
    output \data_out_frame[1][7] ;
    input n30761;
    output \data_in_frame[16][3] ;
    input n28284;
    output n12182;
    output Kp_23__N_635;
    output n31249;
    output [7:0]\data_in_frame[4] ;
    output n30887;
    output n32328;
    input n15255;
    input n15254;
    input n15250;
    input n15249;
    input n15248;
    input n15244;
    output \data_out_frame[3][1] ;
    input n30772;
    output \data_out_frame[3][3] ;
    input n30773;
    output \data_out_frame[3][4] ;
    input n30774;
    output \data_out_frame[3][6] ;
    input n30775;
    output \data_out_frame[3][7] ;
    input n30776;
    input n30777;
    input n30778;
    input n14771;
    input n30779;
    input n30780;
    input n30781;
    input n14767;
    input n30782;
    input n30783;
    input n30784;
    input n14763;
    input n30764;
    input n14761;
    input n30785;
    input n14759;
    input n30762;
    input n14757;
    input n30786;
    input n30787;
    input n30788;
    input n15235;
    input n30789;
    input n30790;
    input n30791;
    input n30792;
    input n30793;
    input n30794;
    input n30795;
    input n30796;
    input n30797;
    input n30798;
    input n30799;
    input n30800;
    input n14741;
    input n30801;
    input n30802;
    input n30803;
    input n30804;
    input n30760;
    input n30805;
    input n30806;
    input n30807;
    input n30808;
    input n14731;
    input n14730;
    input n30809;
    input n30810;
    input n30811;
    input n15234;
    input n30812;
    input n30813;
    input n30814;
    input n14723;
    input n15233;
    input n15231;
    input n15230;
    input n15229;
    input n15228;
    input n30815;
    input n15213;
    input n15212;
    input n15208;
    input n15207;
    input n15206;
    input n30816;
    input n30817;
    input n30818;
    input n30819;
    input n30820;
    input n30821;
    input n14715;
    input n14714;
    input n30822;
    input n30823;
    input n30824;
    input n30763;
    input n30746;
    input n30747;
    input n14707;
    input n30748;
    input n30749;
    input n30750;
    input n30751;
    input n30752;
    input n30753;
    input n30754;
    input n14699;
    input n30755;
    input n30756;
    input n30745;
    input n30757;
    input n30758;
    input n15938;
    input n15935;
    input n15928;
    input n15914;
    input n15913;
    input n15909;
    input n15906;
    input n15896;
    output \data_in_frame[3][1] ;
    input n15612;
    input n15615;
    input n15618;
    input n15621;
    input n15869;
    input n15860;
    input n15624;
    input n15627;
    input n15630;
    input n15633;
    input n15636;
    input n15642;
    output \data_in_frame[16][2] ;
    input n15645;
    input n15648;
    input n15651;
    input n15654;
    output \data_in_frame[16][6] ;
    input n15657;
    output \data_in_frame[16][7] ;
    input n15660;
    output \data_in_frame[17][0] ;
    input n15663;
    output \data_in_frame[17][1] ;
    input n15666;
    input n30339;
    input n15672;
    input n15675;
    input n15830;
    output [7:0]control_mode;
    input n30377;
    output \data_in_frame[19][1] ;
    input n15714;
    input n15717;
    input n15720;
    input n15723;
    input n15726;
    input n15779;
    input n15750;
    input n15760;
    input n15764;
    input n15757;
    input n15753;
    input n15749;
    input n15748;
    input n15209;
    input n15214;
    input n15217;
    input n15736;
    input n15223;
    input n15179;
    input n7;
    input n31015;
    input n15168;
    input n15145;
    input n15144;
    input n11741;
    input [7:0]ID;
    output n30895;
    input n31024;
    input n31322;
    output n12023;
    input n38139;
    output n31192;
    output n8;
    input n38133;
    output n14238;
    output n16;
    output n8659;
    output n30889;
    input n38157;
    output tx_o;
    output n27;
    input n2857;
    output tx_enable;
    output [8:0]r_Clock_Count;
    output r_Rx_Data;
    output \r_SM_Main[2] ;
    output \r_SM_Main[1] ;
    input [31:0]baudrate;
    input RX_N_2;
    input n2854;
    output \o_Rx_DV_N_3356[8] ;
    input n30828;
    output n33787;
    output n33707;
    output n33691;
    input n15491;
    input n15490;
    input n15489;
    input n15488;
    input n15486;
    input n15485;
    output n33739;
    input n15484;
    output n13482;
    output n33723;
    output n33771;
    output n33755;
    output n33675;
    output [7:0]r_Clock_Count_adj_9;
    output n13640;
    output \r_Bit_Index[0] ;
    output n31629;
    input n15990;
    input n28495;
    input n15962;
    output \o_Rx_DV_N_3356[7] ;
    output \o_Rx_DV_N_3356[2] ;
    output \o_Rx_DV_N_3356[1] ;
    output \o_Rx_DV_N_3356[5] ;
    output \o_Rx_DV_N_3356[3] ;
    output \o_Rx_DV_N_3356[4] ;
    output \o_Rx_DV_N_3356[6] ;
    output \o_Rx_DV_N_3356[0] ;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n34491, n22, n11412;
    wire [7:0]\data_in[1] ;   // verilog/coms.v(98[12:19])
    
    wire n24;
    wire [23:0]n2764;
    
    wire n13430;
    wire [23:0]setpoint;   // verilog/coms.v(16[27:35])
    
    wire n34643, n11409, n677;
    wire [7:0]\data_in[3] ;   // verilog/coms.v(98[12:19])
    
    wire n11256;
    wire [7:0]\data_in[2] ;   // verilog/coms.v(98[12:19])
    
    wire n16_c;
    wire [7:0]\data_in[0] ;   // verilog/coms.v(98[12:19])
    
    wire n17, n680, n10, n36244, n18, n11;
    wire [7:0]byte_transmit_counter_c;   // verilog/coms.v(105[12:33])
    
    wire n36246, Kp_23__N_480, Kp_23__N_1616, n20, n15, n34669, 
        n9, n11348, n16_adj_4197, n17_adj_4198, n26547, n26548, 
        n683, n681;
    wire [2:0]r_SM_Main_2__N_3413;
    
    wire n44, tx_active, n30721;
    wire [31:0]\FRAME_MATCHER.state_31__N_2480 ;
    
    wire \FRAME_MATCHER.i_31__N_2379 , n7_c, \FRAME_MATCHER.i_31__N_2381 , 
        n32860, n38239;
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(99[12:25])
    
    wire n15167, n30740, n26546, n30735, n30739, n26545, n11919, 
        n30738, n26544, n30736, tx_transmit_N_3284, n13746, n38062;
    wire [31:0]\FRAME_MATCHER.i ;   // verilog/coms.v(118[11:12])
    
    wire n26918, n36202, n13748, n26917, n36201, n13750, n26916, 
        n36200, n13752, n26915, n36198, n13754, n26914, n36197, 
        n13756, n26913, n36196, n13758, n26912, n36195, n28363, 
        n31424, n27475, n28403, n17_adj_4199, n13760, n26911, n36194;
    wire [7:0]\data_in_frame[3] ;   // verilog/coms.v(99[12:25])
    
    wire n13762, n26910, n36193, n38121, n36252;
    wire [7:0]\data_in_frame[17]_c ;   // verilog/coms.v(99[12:25])
    
    wire n13764, n26909, n36192, n13766, n26908, n36191, n13768, 
        n26907, n36190, n13770, n26906, n36189, n30997, n16_adj_4200, 
        n30187, n32819, n13772, n26905, n36188, n15561;
    wire [7:0]\data_in_frame[12] ;   // verilog/coms.v(99[12:25])
    
    wire n13774, n26904, n36187, n15558;
    wire [7:0]\data_in_frame[8] ;   // verilog/coms.v(99[12:25])
    
    wire n30409, n30403, n30423, n15555, n30421, n15552, n13776, 
        n26903, n36186;
    wire [7:0]\data_in_frame[19]_c ;   // verilog/coms.v(99[12:25])
    
    wire n13778, n26902, n36185, n13780, n26901, n36177, n13782, 
        n26900, n36176, n15549;
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[18] ;   // verilog/coms.v(99[12:25])
    
    wire n13784, n26899, n36173, n13786, n26898, n36172, n13788, 
        n26897, n36171, n13790, n26896, n36166, n13792, n26895, 
        n36165, n13794, n26894, n36164, n13796, n26893, n36163, 
        n13798, n26892, n36160, n15729, n30365, n13800, n26891, 
        n36159, n15546, n15543, n30361, n15681, n13802, n26890, 
        n36156, n13804, n26889, n36152, n15347, n30333, n13806, 
        n26888, n36151;
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(99[12:25])
    
    wire n15846;
    wire [31:0]n133;
    
    wire n161, Kp_23__N_842, n27489, n28168, n26, n15524, n794, 
        n15521;
    wire [7:0]\data_in_frame[0]_c ;   // verilog/coms.v(99[12:25])
    
    wire n15518, n27602, n30927, n31220, n32984, n31340, n27409, 
        n28421, n32675, n28246, n32671, n31266, n28244, n34219, 
        n1980, n31529, \FRAME_MATCHER.i_31__N_2382 , \FRAME_MATCHER.i_31__N_2376 , 
        \FRAME_MATCHER.i_31__N_2380 , n27473, n31071, n27483, n31034, 
        n27619, n34377, n1, n8_c, n36255, n15514, n11335, n3303, 
        n731, n36169, n11345, n12876, n36253, n27415, n28320, 
        n27497, n32731, n10989, n28435, n36167, n36259, n14194, 
        n15146, n15902, n15511, n15508, n15505, n15917, n11351, 
        n5, n15141, n27434, n28439, n12583, n771, \FRAME_MATCHER.i_31__N_2375 , 
        n34545, n4452, n746, n5_adj_4201, n30391, n15262, n15265, 
        n15137, n30399, n15272, n15275, n13413, n15303, n15320, 
        n15323;
    wire [7:0]\data_in_frame[7] ;   // verilog/coms.v(99[12:25])
    
    wire n15326, n15329, n15332, n15335, n15338, n20_adj_4202, n15344, 
        n15466, n15987, n15463;
    wire [7:0]\data_in_frame[11] ;   // verilog/coms.v(99[12:25])
    
    wire n16006, n30371, n22692, n7_adj_4203;
    wire [7:0]\data_in_frame[9] ;   // verilog/coms.v(99[12:25])
    
    wire n12650, n6, n31260, n28262, n15459, n31307, n6_adj_4204, 
        n10_adj_4205, n31430, n31006, n31346, n34283, n31269, n34289, 
        n27617, n11516, n27598, n11546, n15456, n12220, n31105, 
        n6_adj_4206, n8_adj_4207, n30884;
    wire [7:0]\data_in_frame[14] ;   // verilog/coms.v(99[12:25])
    
    wire n15609, LED_N_3276, LED_N_3275, n14686, n3, n5_adj_4208, 
        n31421, Kp_23__N_1257, n34201, n31460, n34207, n31366, n11803, 
        n34295, n11131, n12, n31439, n11127, n32932, n31448, n28450, 
        n31463, n34213, n31108, n34301, n36251, n38178, n1_adj_4209, 
        n15606, n27613, n30930, n32385, n37335;
    wire [7:0]tx_data;   // verilog/coms.v(108[13:20])
    
    wire Kp_23__N_948, n10_adj_4210, n12665, n15444, n12202, n31275, 
        n28423, n3_adj_4211, n4, n28392, n30, n8_adj_4212, n31171, 
        n3_adj_4213, n36249, n36250, n38172, n15441, n36162, n36161, 
        n15603, n15600, n15432, n15427, n15424, n15597, n15420;
    wire [7:0]\data_in_frame[10] ;   // verilog/coms.v(99[12:25])
    
    wire n15417, n15414, n1_adj_4214, n32902, n3_adj_4215, n10_adj_4216, 
        n14168, n9835, n7_adj_4217, n9831, n12262, n28, n32999, 
        n31059, n3_adj_4218, n15413, n27596, n27600, n3_adj_4219, 
        n15397, n15409, n31080, n28345, n31151, n6_adj_4220, n31135, 
        n15406, n15594, n27503, n6_adj_4221, n15591, n15588, n30891;
    wire [7:0]\data_in_frame[23] ;   // verilog/coms.v(99[12:25])
    
    wire n15972, n28343, n31374, n10_adj_4222, n31375, n2, n28356, 
        n33101, n31184, n8_adj_4223, n3_adj_4224, n15975, n15978, 
        n15981, n36257, n36258, n38190, n15403, n36256, n38184, 
        n36154, n36153, n3_adj_4225, n38160, n15400, n38163, n15984, 
        n2_adj_4226, n31174, n12_adj_4227, n38148, n15991, n2_adj_4228, 
        n12128, n12306, n11773, n34663, n38151, n12522, n11734, 
        n12239, n8_adj_4229, n28290, n30980, n10_adj_4230, n27117, 
        n12116, n11686, n34665, n27623, n15994, n31125, n3_adj_4231, 
        n15997, n38124, n28219, n3_adj_4232, n2_adj_4233, n31342, 
        n3_adj_4234, n27604, n6_adj_4235, n31445, n28240, n3_adj_4236, 
        n11859, n12313, n7_adj_4237;
    wire [7:0]\data_in_frame[22] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[20] ;   // verilog/coms.v(99[12:25])
    
    wire n12_adj_4238, n28324, n27419, n3_adj_4239, n28288, n32274, 
        n31235, n38127, n31396, n31198, n12_adj_4240, n2_adj_4241, 
        n28255, n32563, n2_adj_4242, n2_adj_4243, n2_adj_4244, n27541, 
        n8_adj_4245, n3_adj_4246, n31272, n12133, n32294, n31256, 
        n31405, n32678, n30991, n28417, n27737, n6_adj_4247, n28351, 
        n28242, n31278, n38118, n11926, n28456, n14, n9_adj_4248, 
        n27524, n2_adj_4249, n15319, n31066, n6_adj_4250, n3_adj_4251, 
        n34391, n11592, n31160, n12169, n34345, n31037, n30988, 
        n12096, n28235, n12515, n9490, n1699, n27567, n38106, 
        n31157, n44_adj_4252, n28231, n31053, n15174, n42, n43, 
        n41, n15318, n40, n39, n31165, n15_adj_4253, n14_adj_4254, 
        n31156, n50, n38109, n45, n31209, n10_adj_4255, n31131, 
        n31325, n16_adj_4256, n31201, n28370, n17_adj_4257, n27575, 
        n12165, n31230, n31433, n31161, n15317, n11634, n12162, 
        n15316, n12087, n30994, n31154, n36170, n38076, n31212, 
        Kp_23__N_743, n15315, n15314, n31415, n15313, n31102, n27587, 
        n12_adj_4258, n15312, n15311, n15310, n15309, n15308, n15299, 
        n15296, n15295, n15294, n15293, n15292, n15291, n15290, 
        n15289, n15288, n15287, n15284, n15283, n15282, n15281, 
        n15280, n15279, n15278, n15268, n15253, n15251, n2_adj_4259, 
        n9610, n14_adj_4260, n30894, n15941, n2_adj_4261, n2_adj_4262, 
        n2_adj_4263, n15944, n2_adj_4264, n28441, n13, n2_adj_4265, 
        n2_adj_4266, n2_adj_4267, n15947, n2_adj_4268, n2_adj_4269, 
        n2_adj_4270, n2_adj_4271, n2_adj_4272, n2_adj_4273, n2_adj_4274, 
        n2_adj_4275, n2_adj_4276, n2_adj_4277, n2_adj_4278, n2_adj_4279, 
        n2_adj_4280, n3_adj_4281, n2_adj_4282, n2_adj_4283, n2_adj_4284, 
        n2_adj_4285, n2_adj_4286, n2_adj_4287, n15951, n2_adj_4288, 
        n2_adj_4289, n2_adj_4290, n2_adj_4291, n2_adj_4292, n2_adj_4293, 
        n2_adj_4294, n2_adj_4295, n2_adj_4296, n2_adj_4297, n2_adj_4298, 
        n2_adj_4299, n2_adj_4300, n2_adj_4301, n2_adj_4302, n2_adj_4303, 
        n2_adj_4304, n2_adj_4305, n2_adj_4306, n2_adj_4307, n2_adj_4308, 
        n2_adj_4309, n31418, n31294, n31195, n2_adj_4310, n2_adj_4311, 
        n2_adj_4312, n2_adj_4313, n2_adj_4314, n2_adj_4315, n2_adj_4316, 
        n13808, n15954, n11540, n31285, n28042, n11509, n1668, 
        n15957, n2_adj_4317, n31030, n1522, n10_adj_4318, n2_adj_4319, 
        n2_adj_4320, n2_adj_4321, n1516, n1519, n2_adj_4322, n2_adj_4323, 
        n2_adj_4324, n32449, n15966, n2_adj_4325, n2_adj_4326, n2_adj_4327, 
        n2_adj_4328, n2_adj_4329, n2_adj_4330, n3_adj_4331, n15969, 
        n743, n12304, n6_adj_4332, n3_adj_4333, n31111, n11526, 
        n12606, n30955, n31291, n31466, n1_adj_4334, n1_adj_4335, 
        n1_adj_4336, n1_adj_4337, n30741, n14688, n1_adj_4338, n30742, 
        n1_adj_4339, n30743, n1_adj_4340, n30737, n31018, n31147, 
        n9079, n30937, n31243, n11490, n38, n14679, n31288, n12_adj_4341, 
        n12236, n32465, n11010, n31069, n6_adj_4342, n32526, n31378, 
        n27643, n15921, n15149, n12_adj_4343, n6_adj_4344, n15155, 
        n15158, n15161, n15164, n15170, n15175, n15180, n15183, 
        n30429, n15866, n15863, n15857, n15854, n15189, n12071, 
        n45_adj_4345, n28227, n34371, n15684, n15687, n15690, n15693, 
        n15696, n15699, n15702, n15705, n15732, n15742, n15745, 
        n24_adj_4346, n15754, n30942, n22_adj_4347, n15192, n8_adj_4348, 
        n30899, n15195, n18_adj_4349, n26_adj_4350, n10_adj_4351, 
        n15200, n32757, n37903, n28266, n15203, n31215, n27442, 
        n32850, n31381, n28238, n11784, n11817, n14190, n8_adj_4352, 
        Kp_23__N_640, n28273, n31356, n32379, n10_adj_4353, n31227, 
        n31050, n31086, n31128, n34313, Kp_23__N_861, n34319, n31009, 
        n34349, n12556, n31337, n8_adj_4354, n34351, n31092, n34353, 
        n31410, n30968, n31300, n31427, n28445, n6_adj_4356, n31142, 
        n33017, n28412, n32921, n31181, n6_adj_4357, n13416, n774, 
        n775, n7076, n30207, n786, n12796, n31442, n33031, n31083, 
        n32933, n28398, n31121, n34411, n34227, n28300, n28275, 
        n30964, n34433, n26550, n26549, n28310, n32903, n34439, 
        n34359, n28277, n34361, n33048, n12574, n31384, n32609, 
        n32298, n31115, n34233, n34367, n31393, n31021, n31138, 
        n32435, n31313, n31096, n27440, n18_adj_4358, n20_adj_4359, 
        n8_adj_4360, n16_adj_4361, n27628, n28258, n34445, n31027, 
        n30983, n31399, n11797, n27637, n30921, n28225, n31240, 
        n16_adj_4362, n17_adj_4363, n31352, n31188, n31297, n31369, 
        n31343, n28429, n10_adj_4364, n14_adj_4365, n28335, n34461, 
        n6_adj_4366, n31062, n31436, n31390, Kp_23__N_935, n27491, 
        n27621, n31099, n31469, n30960, n6_adj_4367, n31451, n31118, 
        n54, n31359, n31331, n52, n31000, n30915, n53, n51, 
        n9676, n31206, n48, n30918, n50_adj_4368, n49, n60, n55, 
        Kp_23__N_1139, n10_adj_4369, n27696, n31281, n31412, n10_adj_4370, 
        n27477, n31349, n12_adj_4371, n31168, n31387, n31012, n11738, 
        n12_adj_4372, n6_adj_4373, n12476, n30945, n12024, n31304, 
        n22934, n32927, n34237, n34239, n34257, n34263, n11659, 
        n34267, n34245, Kp_23__N_616, n32992, n34309, n27606, n14_adj_4374, 
        n15_adj_4375, n18_adj_4376, n31047, n24_adj_4377, n31319, 
        n22_adj_4378, n26_adj_4379, n10_adj_4380, n31457, n20_adj_4381, 
        n31334, n19, n21, n11_adj_4382, n36298, n6_adj_4383, n36237, 
        n11_adj_4384, n31246, n30924, n6_adj_4385, n5_adj_4386, n11537, 
        n31075, n31363, n12_adj_4387, n10_adj_4388, n32528, n11_adj_4389, 
        n9_adj_4390, n27407, n34455, n30934, n30971, n31041, n26_adj_4391, 
        n22_adj_4392, n34399, n30_adj_4393, n28_adj_4394, n29, n27_c, 
        n18_adj_4395, n38196, n36116, n36115, n16_adj_4396, n20_adj_4397, 
        n4_adj_4398, n36157, n7_adj_4399, n36155, n11_adj_4400, n8_adj_4402, 
        n36242, n7_adj_4403, n36243, n4_adj_4404, n36235, n7_adj_4405, 
        n36234, n11_adj_4406, n36150, n36260, n36168, n14_adj_4407, 
        n38070, n36224, n36148, n11_adj_4408, n34281, n12_adj_4409, 
        n36300, n36231, n12_adj_4410, n6_adj_4411, n10_adj_4412, n43_adj_4413, 
        Kp_23__N_953, n12_adj_4415, n36299, n36105, n11_adj_4416, 
        n4_adj_4417, n3_adj_4418, n11_adj_4419, n36241, n13_adj_4420, 
        n3_adj_4421, n36387, n1_adj_4422, n7_adj_4423, n34771, n37395, 
        n32950, n734, n8644, n11253, n12791, n4_adj_4424, n13415, 
        n10_adj_4425, n14_adj_4426;
    wire [24:0]o_Rx_DV_N_3356;
    
    wire n29_adj_4428, n23;
    wire [2:0]r_SM_Main_2__N_3404;
    
    SB_LUT4 i11_4_lut (.I0(n34491), .I1(n22), .I2(n11412), .I3(\data_in[1] [3]), 
            .O(n24));
    defparam i11_4_lut.LUT_INIT = 16'hfdff;
    SB_DFFER setpoint_i0_i0 (.Q(setpoint[0]), .C(clk16MHz), .E(n13430), 
            .D(n2764[0]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i12_4_lut (.I0(\data_in[1] [6]), .I1(n24), .I2(n34643), .I3(n11409), 
            .O(n677));
    defparam i12_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i6_4_lut (.I0(\data_in[3] [0]), .I1(n11409), .I2(n11256), 
            .I3(\data_in[2] [2]), .O(n16_c));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(\data_in[2] [4]), .I1(\data_in[1] [0]), .I2(\data_in[1] [5]), 
            .I3(\data_in[0] [3]), .O(n17));
    defparam i7_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut (.I0(n17), .I1(\data_in[0] [6]), .I2(n16_c), .I3(\data_in[1] [4]), 
            .O(n680));
    defparam i9_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i4_4_lut (.I0(\data_in[1] [7]), .I1(\data_in[0] [0]), .I2(\data_in[1] [1]), 
            .I3(\data_in[0] [4]), .O(n10));
    defparam i4_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i5_3_lut (.I0(\data_in[2] [7]), .I1(n10), .I2(\data_in[3] [4]), 
            .I3(GND_net), .O(n11412));
    defparam i5_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i31823_2_lut (.I0(\data_out_frame[14] [4]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36244));   // verilog/coms.v(109[34:55])
    defparam i31823_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7_4_lut_adj_1039 (.I0(\data_in[0] [1]), .I1(\data_in[2] [0]), 
            .I2(\data_in[1] [3]), .I3(\data_in[1] [6]), .O(n18));
    defparam i7_4_lut_adj_1039.LUT_INIT = 16'hfeff;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i11_3_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\data_out_frame[13] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31964_4_lut (.I0(n11), .I1(byte_transmit_counter_c[2]), .I2(n36244), 
            .I3(\byte_transmit_counter[1] ), .O(n36246));   // verilog/coms.v(109[34:55])
    defparam i31964_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i16596_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[1] [2]), 
            .I3(\data_in_frame[17] [2]), .O(n2764[18]));
    defparam i16596_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i9_4_lut_adj_1040 (.I0(\data_in[3] [7]), .I1(n18), .I2(\data_in[2] [5]), 
            .I3(n11412), .O(n20));
    defparam i9_4_lut_adj_1040.LUT_INIT = 16'hfffd;
    SB_LUT4 i4_2_lut (.I0(\data_in[3] [2]), .I1(\data_in[0] [5]), .I2(GND_net), 
            .I3(GND_net), .O(n15));
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut (.I0(n15), .I1(n20), .I2(\data_in[1] [2]), .I3(\data_in[2] [6]), 
            .O(n11256));
    defparam i10_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i30064_4_lut (.I0(\data_in[1] [5]), .I1(\data_in[2] [2]), .I2(\data_in[0] [3]), 
            .I3(\data_in[1] [0]), .O(n34669));
    defparam i30064_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut (.I0(\data_in[2] [4]), .I1(\data_in[1] [4]), .I2(GND_net), 
            .I3(GND_net), .O(n9));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7_4_lut_adj_1041 (.I0(n9), .I1(n34669), .I2(\data_in[3] [0]), 
            .I3(\data_in[0] [6]), .O(n11348));
    defparam i7_4_lut_adj_1041.LUT_INIT = 16'hffbf;
    SB_DFFE data_in_frame_0___i112 (.Q(\data_in_frame[13] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15585));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_4_lut_adj_1042 (.I0(n11256), .I1(\data_in[0] [7]), .I2(\data_in[0] [2]), 
            .I3(\data_in[3] [6]), .O(n16_adj_4197));
    defparam i6_4_lut_adj_1042.LUT_INIT = 16'hffef;
    SB_LUT4 i7_4_lut_adj_1043 (.I0(n11348), .I1(\data_in[3] [1]), .I2(\data_in[3] [3]), 
            .I3(\data_in[2] [3]), .O(n17_adj_4198));
    defparam i7_4_lut_adj_1043.LUT_INIT = 16'hbfff;
    SB_CARRY add_670_6 (.CI(n26547), .I0(byte_transmit_counter_c[4]), .I1(GND_net), 
            .CO(n26548));
    SB_LUT4 i9_4_lut_adj_1044 (.I0(n17_adj_4198), .I1(\data_in[3] [5]), 
            .I2(n16_adj_4197), .I3(\data_in[2] [1]), .O(n683));
    defparam i9_4_lut_adj_1044.LUT_INIT = 16'hfbff;
    SB_LUT4 i130_2_lut (.I0(n680), .I1(n677), .I2(GND_net), .I3(GND_net), 
            .O(n681));   // verilog/coms.v(142[4] 144[7])
    defparam i130_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut (.I0(r_SM_Main_2__N_3413[0]), .I1(n44), .I2(tx_active), 
            .I3(GND_net), .O(n30721));
    defparam i2_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i2_4_lut (.I0(n30721), .I1(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\FRAME_MATCHER.i_31__N_2377 ), 
            .O(n7_c));
    defparam i2_4_lut.LUT_INIT = 16'h4c5f;
    SB_LUT4 i3_4_lut (.I0(n7_c), .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(Kp_23__N_1616), 
            .I3(n32860), .O(n38239));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i16077_3_lut (.I0(neopxl_color[0]), .I1(\data_in_frame[6] [0]), 
            .I2(n8682), .I3(GND_net), .O(n15167));
    defparam i16077_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16597_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[1] [3]), 
            .I3(\data_in_frame[17] [3]), .O(n2764[19]));
    defparam i16597_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFE data_in_frame_0___i111 (.Q(\data_in_frame[13] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15582));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 add_670_5_lut (.I0(n30735), .I1(byte_transmit_counter_c[3]), 
            .I2(GND_net), .I3(n26546), .O(n30740)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mux_643_i21_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[1] [4]), .I3(\data_in_frame[17] [4]), .O(n2764[20]));
    defparam mux_643_i21_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_CARRY add_670_5 (.CI(n26546), .I0(byte_transmit_counter_c[3]), .I1(GND_net), 
            .CO(n26547));
    SB_LUT4 mux_643_i22_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[1] [5]), .I3(\data_in_frame[17] [5]), .O(n2764[21]));
    defparam mux_643_i22_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFE data_in_frame_0___i110 (.Q(\data_in_frame[13] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15579));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 add_670_4_lut (.I0(n30735), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(n26545), .O(n30739)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_670_4 (.CI(n26545), .I0(byte_transmit_counter_c[2]), .I1(GND_net), 
            .CO(n26546));
    SB_LUT4 i2_3_lut_4_lut_4_lut (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [1]), .I3(\data_out_frame[4] [5]), .O(n11919));   // verilog/coms.v(88[17:70])
    defparam i2_3_lut_4_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 add_670_3_lut (.I0(n30735), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(n26544), .O(n30738)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_3_lut.LUT_INIT = 16'h8228;
    SB_DFFE data_in_frame_0___i109 (.Q(\data_in_frame[13] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15576));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY add_670_3 (.CI(n26544), .I0(\byte_transmit_counter[1] ), .I1(GND_net), 
            .CO(n26545));
    SB_LUT4 add_670_2_lut (.I0(n30735), .I1(byte_transmit_counter[0]), .I2(tx_transmit_N_3284), 
            .I3(GND_net), .O(n30736)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_670_2 (.CI(GND_net), .I0(byte_transmit_counter[0]), .I1(tx_transmit_N_3284), 
            .CO(n26544));
    SB_DFFE data_in_frame_0___i108 (.Q(\data_in_frame[13] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15573));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_33_lut  (.I0(n36202), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [31]), .I3(n26918), .O(n13746)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_33_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_32_lut  (.I0(n36201), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [30]), .I3(n26917), .O(n13748)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_32_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_32  (.CI(n26917), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [30]), .CO(n26918));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_31_lut  (.I0(n36200), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [29]), .I3(n26916), .O(n13750)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_31_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_31  (.CI(n26916), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [29]), .CO(n26917));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_30_lut  (.I0(n36198), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [28]), .I3(n26915), .O(n13752)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_30_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_30  (.CI(n26915), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [28]), .CO(n26916));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_29_lut  (.I0(n36197), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [27]), .I3(n26914), .O(n13754)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_29_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_29  (.CI(n26914), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [27]), .CO(n26915));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_28_lut  (.I0(n36196), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [26]), .I3(n26913), .O(n13756)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_28_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_28  (.CI(n26913), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [26]), .CO(n26914));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_27_lut  (.I0(n36195), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [25]), .I3(n26912), .O(n13758)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_27_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i7_4_lut_adj_1045 (.I0(n28363), .I1(n31424), .I2(n27475), 
            .I3(n28403), .O(n17_adj_4199));
    defparam i7_4_lut_adj_1045.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_27  (.CI(n26912), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [25]), .CO(n26913));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_26_lut  (.I0(n36194), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [24]), .I3(n26911), .O(n13760)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_26_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 mux_643_i7_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[3] [6]), .I3(\data_in_frame[19] [6]), .O(n2764[6]));
    defparam mux_643_i7_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_26  (.CI(n26911), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [24]), .CO(n26912));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_25_lut  (.I0(n36193), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [23]), .I3(n26910), .O(n13762)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_25_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31763_2_lut (.I0(n38121), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36252));
    defparam i31763_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_25  (.CI(n26910), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [23]), .CO(n26911));
    SB_LUT4 i16541_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[1] [6]), 
            .I3(\data_in_frame[17]_c [6]), .O(n2764[22]));
    defparam i16541_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFE data_in_frame_0___i107 (.Q(\data_in_frame[13] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15570));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_24_lut  (.I0(n36192), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [22]), .I3(n26909), .O(n13764)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_24_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_24  (.CI(n26909), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [22]), .CO(n26910));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_23_lut  (.I0(n36191), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [21]), .I3(n26908), .O(n13766)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_23_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i106 (.Q(\data_in_frame[13] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15567));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_23  (.CI(n26908), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [21]), .CO(n26909));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_22_lut  (.I0(n36190), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [20]), .I3(n26907), .O(n13768)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_22_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_22  (.CI(n26907), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [20]), .CO(n26908));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_21_lut  (.I0(n36189), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [19]), .I3(n26906), .O(n13770)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_21_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_21  (.CI(n26906), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [19]), .CO(n26907));
    SB_LUT4 i9_4_lut_adj_1046 (.I0(n17_adj_4199), .I1(n30997), .I2(n16_adj_4200), 
            .I3(n30187), .O(n32819));
    defparam i9_4_lut_adj_1046.LUT_INIT = 16'h9669;
    SB_DFFE data_in_frame_0___i105 (.Q(\data_in_frame[13] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15564));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_20_lut  (.I0(n36188), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [18]), .I3(n26905), .O(n13772)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_20_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i16542_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[1] [7]), 
            .I3(\data_in_frame[17]_c [7]), .O(n2764[23]));
    defparam i16542_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFE data_in_frame_0___i104 (.Q(\data_in_frame[12] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15561));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_20  (.CI(n26905), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [18]), .CO(n26906));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_19_lut  (.I0(n36187), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [17]), .I3(n26904), .O(n13774)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_19_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i103 (.Q(\data_in_frame[12] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15558));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i33284_3_lut (.I0(rx_data[4]), .I1(\data_in_frame[8] [4]), .I2(n14240), 
            .I3(GND_net), .O(n30409));   // verilog/coms.v(94[13:20])
    defparam i33284_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_19  (.CI(n26904), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [17]), .CO(n26905));
    SB_LUT4 i33283_3_lut (.I0(rx_data[3]), .I1(\data_in_frame[8] [3]), .I2(n14240), 
            .I3(GND_net), .O(n30403));   // verilog/coms.v(94[13:20])
    defparam i33283_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_3_lut (.I0(rx_data[2]), .I1(\data_in_frame[8] [2]), .I2(n14240), 
            .I3(GND_net), .O(n30423));   // verilog/coms.v(94[13:20])
    defparam i11_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i102 (.Q(\data_in_frame[12] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15555));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11_3_lut_adj_1047 (.I0(rx_data[1]), .I1(\data_in_frame[8] [1]), 
            .I2(n14240), .I3(GND_net), .O(n30421));   // verilog/coms.v(94[13:20])
    defparam i11_3_lut_adj_1047.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i101 (.Q(\data_in_frame[12] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15552));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_18_lut  (.I0(n36186), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [16]), .I3(n26903), .O(n13776)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_18_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_18  (.CI(n26903), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [16]), .CO(n26904));
    SB_LUT4 i16086_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[3] [7]), 
            .I3(\data_in_frame[19]_c [7]), .O(n2764[7]));
    defparam i16086_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_17_lut  (.I0(n36185), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [15]), .I3(n26902), .O(n13778)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_17_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_17  (.CI(n26902), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [15]), .CO(n26903));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_16_lut  (.I0(n36177), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [14]), .I3(n26901), .O(n13780)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_16_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_16  (.CI(n26901), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [14]), .CO(n26902));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_15_lut  (.I0(n36176), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [13]), .I3(n26900), .O(n13782)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_15_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_15  (.CI(n26900), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [13]), .CO(n26901));
    SB_DFFE data_in_frame_0___i100 (.Q(\data_in_frame[12] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15549));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_643_i9_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [0]), .I3(\data_in_frame[18] [0]), .O(n2764[8]));
    defparam mux_643_i9_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_14_lut  (.I0(n36173), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [12]), .I3(n26899), .O(n13784)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_14_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_14  (.CI(n26899), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [12]), .CO(n26900));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_13_lut  (.I0(n36172), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [11]), .I3(n26898), .O(n13786)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_13_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_13  (.CI(n26898), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [11]), .CO(n26899));
    SB_LUT4 mux_643_i10_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [1]), .I3(\data_in_frame[18] [1]), .O(n2764[9]));
    defparam mux_643_i10_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_12_lut  (.I0(n36171), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [10]), .I3(n26897), .O(n13788)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_12_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_12  (.CI(n26897), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [10]), .CO(n26898));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_11_lut  (.I0(n36166), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [9]), .I3(n26896), .O(n13790)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_11_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_11  (.CI(n26896), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [9]), .CO(n26897));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_10_lut  (.I0(n36165), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [8]), .I3(n26895), .O(n13792)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_10_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_10  (.CI(n26895), .I0(n38062), 
            .I1(\FRAME_MATCHER.i [8]), .CO(n26896));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_9_lut  (.I0(n36164), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [7]), .I3(n26894), .O(n13794)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_9_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_9  (.CI(n26894), .I0(n38062), .I1(\FRAME_MATCHER.i [7]), 
            .CO(n26895));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_8_lut  (.I0(n36163), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [6]), .I3(n26893), .O(n13796)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_8_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_8  (.CI(n26893), .I0(n38062), .I1(\FRAME_MATCHER.i [6]), 
            .CO(n26894));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_7_lut  (.I0(n36160), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n26892), .O(n13798)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_7_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_7  (.CI(n26892), .I0(n38062), .I1(\FRAME_MATCHER.i [5]), 
            .CO(n26893));
    SB_LUT4 mux_643_i11_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [2]), .I3(\data_in_frame[18] [2]), .O(n2764[10]));
    defparam mux_643_i11_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i11537_3_lut (.I0(\data_in_frame[19]_c [7]), .I1(rx_data[7]), 
            .I2(n31489), .I3(GND_net), .O(n15729));   // verilog/coms.v(130[12] 305[6])
    defparam i11537_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i33281_3_lut (.I0(rx_data[0]), .I1(\data_in_frame[19]_c [0]), 
            .I2(n31489), .I3(GND_net), .O(n30365));   // verilog/coms.v(94[13:20])
    defparam i33281_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_6_lut  (.I0(n36159), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [4]), .I3(n26891), .O(n13800)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_6_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i99 (.Q(\data_in_frame[12] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15546));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i98 (.Q(\data_in_frame[12] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15543));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i13 (.Q(\data_in_frame[1] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15540));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i12 (.Q(\data_in_frame[1] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n30345));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i11 (.Q(\data_in_frame[1] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n30351));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i10 (.Q(\data_in_frame[1] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n30361));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_6  (.CI(n26891), .I0(n38062), .I1(\FRAME_MATCHER.i [4]), 
            .CO(n26892));
    SB_LUT4 i11489_3_lut (.I0(\data_in_frame[17]_c [7]), .I1(rx_data[7]), 
            .I2(n14222), .I3(GND_net), .O(n15681));   // verilog/coms.v(130[12] 305[6])
    defparam i11489_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_5_lut  (.I0(n36156), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [3]), .I3(n26890), .O(n13802)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_5_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_5  (.CI(n26890), .I0(n38062), .I1(\FRAME_MATCHER.i [3]), 
            .CO(n26891));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_4_lut  (.I0(n36152), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n26889), .O(n13804)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_4_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i9 (.Q(\data_in_frame[1] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15528));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_4  (.CI(n26889), .I0(n38062), .I1(\FRAME_MATCHER.i [2]), 
            .CO(n26890));
    SB_LUT4 i11155_3_lut (.I0(\data_in_frame[8] [0]), .I1(rx_data[0]), .I2(n14240), 
            .I3(GND_net), .O(n15347));   // verilog/coms.v(130[12] 305[6])
    defparam i11155_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i33276_3_lut (.I0(rx_data[6]), .I1(\data_in_frame[17]_c [6]), 
            .I2(n14222), .I3(GND_net), .O(n30333));   // verilog/coms.v(94[13:20])
    defparam i33276_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_3_lut  (.I0(n36151), .I1(n38062), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n26888), .O(n13806)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_3_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 mux_643_i12_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [3]), .I3(\data_in_frame[18] [3]), .O(n2764[11]));
    defparam mux_643_i12_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i16537_3_lut (.I0(n14224), .I1(rx_data[1]), .I2(\data_in_frame[16] [1]), 
            .I3(GND_net), .O(n15846));   // verilog/coms.v(94[13:20])
    defparam i16537_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i16375_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[2] [4]), 
            .I3(\data_in_frame[18] [4]), .O(n2764[12]));
    defparam i16375_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_643_i14_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [5]), .I3(\data_in_frame[18] [5]), .O(n2764[13]));
    defparam mux_643_i14_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_3  (.CI(n26888), .I0(n38062), .I1(\FRAME_MATCHER.i [1]), 
            .CO(n26889));
    SB_LUT4 \FRAME_MATCHER.i_1144_add_4_2_lut  (.I0(GND_net), .I1(n161), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1144_add_4_2_lut .LUT_INIT = 16'hC33C;
    SB_CARRY \FRAME_MATCHER.i_1144_add_4_2  (.CI(GND_net), .I0(n161), .I1(\FRAME_MATCHER.i [0]), 
            .CO(n26888));
    SB_LUT4 mux_643_i15_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[2] [6]), .I3(\data_in_frame[18] [6]), .O(n2764[14]));
    defparam mux_643_i15_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_643_i3_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[3] [2]), .I3(\data_in_frame[19][2] ), .O(n2764[2]));
    defparam mux_643_i3_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_643_i4_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[3] [3]), .I3(\data_in_frame[19][3] ), .O(n2764[3]));
    defparam mux_643_i4_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i9_4_lut_adj_1048 (.I0(Kp_23__N_842), .I1(n27489), .I2(\data_in_frame[8][6] ), 
            .I3(n28168), .O(n26));
    defparam i9_4_lut_adj_1048.LUT_INIT = 16'h8400;
    SB_DFF data_in_frame_0___i46 (.Q(\data_in_frame[5] [5]), .C(clk16MHz), 
           .D(n15238));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i8 (.Q(\data_in_frame[0] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15524));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i16350_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[2] [7]), 
            .I3(\data_in_frame[18] [7]), .O(n2764[15]));
    defparam i16350_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFR \FRAME_MATCHER.state_FSM_i1  (.Q(Kp_23__N_1616), .C(clk16MHz), 
            .D(n794), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFE data_in_frame_0___i7 (.Q(\data_in_frame[0]_c [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15521));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_643_i5_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[3][4] ), .I3(\data_in_frame[19][4] ), .O(n2764[4]));
    defparam mux_643_i5_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFFE data_in_frame_0___i6 (.Q(\data_in_frame[0]_c [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15518));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i13703_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[3] [5]), 
            .I3(\data_in_frame[19][5] ), .O(n2764[5]));
    defparam i13703_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_DFF data_in_frame_0___i47 (.Q(\data_in_frame[5] [6]), .C(clk16MHz), 
           .D(n15241));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i16325_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[3] [0]), 
            .I3(\data_in_frame[19]_c [0]), .O(n2764[0]));
    defparam i16325_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i1_3_lut_4_lut (.I0(n27602), .I1(n30927), .I2(n31220), .I3(n32984), 
            .O(n31340));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut (.I0(n27409), .I1(n28421), .I2(\data_in_frame[17] [5]), 
            .I3(GND_net), .O(n32675));
    defparam i1_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i1_3_lut_4_lut_adj_1049 (.I0(n28246), .I1(n32671), .I2(n31266), 
            .I3(n28244), .O(n34219));
    defparam i1_3_lut_4_lut_adj_1049.LUT_INIT = 16'h9669;
    SB_LUT4 i26960_2_lut_3_lut (.I0(n1980), .I1(rx_data_ready), .I2(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I3(GND_net), .O(n31529));
    defparam i26960_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i1_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(\FRAME_MATCHER.i_31__N_2380 ), .I3(GND_net), .O(n1980));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_1050 (.I0(\data_in_frame[16][4] ), .I1(n27473), 
            .I2(n31071), .I3(GND_net), .O(n27483));
    defparam i1_2_lut_3_lut_adj_1050.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_4_lut_adj_1051 (.I0(\data_in_frame[16][4] ), .I1(n27473), 
            .I2(n31034), .I3(n27619), .O(n34377));
    defparam i1_3_lut_4_lut_adj_1051.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(n1), 
            .I2(\FRAME_MATCHER.i_31__N_2381 ), .I3(Kp_23__N_1616), .O(n8_c));   // verilog/coms.v(148[4] 304[11])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31955_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [2]), 
            .O(n36255));   // verilog/coms.v(109[34:55])
    defparam i31955_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_DFFE data_in_frame_0___i5 (.Q(\data_in_frame[0]_c [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15514));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(r_SM_Main_2__N_3413[0]), 
            .I2(n44), .I3(tx_active), .O(n11335));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'haa8a;
    SB_LUT4 i180_2_lut_3_lut (.I0(n680), .I1(n677), .I2(n3303), .I3(GND_net), 
            .O(n731));   // verilog/coms.v(142[4] 144[7])
    defparam i180_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i31821_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [6]), 
            .O(n36169));   // verilog/coms.v(109[34:55])
    defparam i31821_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_3_lut_4_lut_adj_1052 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(n1), 
            .I2(n11345), .I3(LED_c), .O(n12876));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_4_lut_adj_1052.LUT_INIT = 16'hfe00;
    SB_LUT4 i31961_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [3]), 
            .O(n36253));   // verilog/coms.v(109[34:55])
    defparam i31961_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_3_lut_3_lut (.I0(n27415), .I1(n28320), .I2(GND_net), 
            .I3(GND_net), .O(n27497));
    defparam i1_2_lut_3_lut_3_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_2_lut_3_lut (.I0(n32731), .I1(\data_out_frame[13] [5]), 
            .I2(n10989), .I3(GND_net), .O(n28435));
    defparam i1_2_lut_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i31851_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [7]), 
            .O(n36167));   // verilog/coms.v(109[34:55])
    defparam i31851_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i31948_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [0]), 
            .O(n36259));   // verilog/coms.v(109[34:55])
    defparam i31948_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i10954_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[2] [7]), .O(n15146));
    defparam i10954_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11710_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[2] [0]), .O(n15902));
    defparam i11710_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i4 (.Q(\data_in_frame[0]_c [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15511));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i3 (.Q(\data_in_frame[0]_c [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15508));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i2 (.Q(\data_in_frame[0]_c [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15505));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i48 (.Q(\data_in_frame[5] [7]), .C(clk16MHz), 
           .D(n15245));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11725_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[2] [1]), .O(n15917));
    defparam i11725_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_4_lut_adj_1053 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(n11351), .I3(\FRAME_MATCHER.i [1]), .O(n5));
    defparam i1_3_lut_4_lut_adj_1053.LUT_INIT = 16'hfefc;
    SB_LUT4 i10949_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[2] [6]), .O(n15141));
    defparam i10949_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n27434), .I1(n32731), .I2(n28439), 
            .I3(n12583), .O(n12269));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1054 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(n11335), .I3(\FRAME_MATCHER.i_31__N_2375 ), .O(n34545));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_4_lut_adj_1054.LUT_INIT = 16'hfff4;
    SB_LUT4 i195_4_lut_4_lut (.I0(n677), .I1(n683), .I2(n4452), .I3(n680), 
            .O(n746));   // verilog/coms.v(139[4] 141[7])
    defparam i195_4_lut_4_lut.LUT_INIT = 16'h0d05;
    SB_LUT4 i1_2_lut_3_lut_adj_1055 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(\FRAME_MATCHER.i_31__N_2375 ), .I3(GND_net), .O(n5_adj_4201));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_3_lut_adj_1055.LUT_INIT = 16'hf4f4;
    SB_DFF data_in_frame_0___i49 (.Q(\data_in_frame[6] [0]), .C(clk16MHz), 
           .D(n30391));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i50 (.Q(\data_in_frame[6][1] ), .C(clk16MHz), 
           .D(n15262));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i51 (.Q(\data_in_frame[6] [2]), .C(clk16MHz), 
           .D(n15265));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10945_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[2] [5]), .O(n15137));
    defparam i10945_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i52 (.Q(\data_in_frame[6] [3]), .C(clk16MHz), 
           .D(n30399));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i53 (.Q(\data_in_frame[6][4] ), .C(clk16MHz), 
           .D(n15272));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i54 (.Q(\data_in_frame[6][5] ), .C(clk16MHz), 
           .D(n15275));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut (.I0(DE_c), .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(n8_c), 
            .I3(\FRAME_MATCHER.i_31__N_2380 ), .O(n13413));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut.LUT_INIT = 16'haaa8;
    SB_DFF data_in_frame_0___i55 (.Q(\data_in_frame[6][6] ), .C(clk16MHz), 
           .D(n15303));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i56 (.Q(\data_in_frame[6][7] ), .C(clk16MHz), 
           .D(n15320));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i57 (.Q(\data_in_frame[7] [0]), .C(clk16MHz), 
           .D(n15323));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i58 (.Q(\data_in_frame[7] [1]), .C(clk16MHz), 
           .D(n15326));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i59 (.Q(\data_in_frame[7] [2]), .C(clk16MHz), 
           .D(n15329));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i60 (.Q(\data_in_frame[7] [3]), .C(clk16MHz), 
           .D(n15332));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i61 (.Q(\data_in_frame[7] [4]), .C(clk16MHz), 
           .D(n15335));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i62 (.Q(\data_in_frame[7][5] ), .C(clk16MHz), 
           .D(n15338));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i63 (.Q(\data_in_frame[7] [6]), .C(clk16MHz), 
           .D(n20_adj_4202));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i64 (.Q(\data_in_frame[7] [7]), .C(clk16MHz), 
           .D(n15344));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i97 (.Q(\data_in_frame[12] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15466));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11795_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[2] [2]), .O(n15987));
    defparam i11795_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i96 (.Q(\data_in_frame[11] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15463));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11814_3_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[2] [3]), .O(n16006));
    defparam i11814_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_4_lut_4_lut (.I0(n14194), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[2] [4]), .O(n30371));
    defparam i11_4_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i18571_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(GND_net), .I3(GND_net), .O(n22692));
    defparam i18571_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10055_3_lut_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(n7_adj_4203), 
            .I2(n30905), .I3(reset), .O(n14246));   // verilog/coms.v(157[7:23])
    defparam i10055_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i2_2_lut_3_lut (.I0(n27820), .I1(\data_in_frame[9] [7]), .I2(n12650), 
            .I3(GND_net), .O(n6));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1056 (.I0(n28421), .I1(\data_in_frame[15] [5]), 
            .I2(n31260), .I3(GND_net), .O(n28262));
    defparam i1_2_lut_3_lut_adj_1056.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i65 (.Q(\data_in_frame[8] [0]), .C(clk16MHz), 
           .D(n15347));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i95 (.Q(\data_in_frame[11] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15459));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i5 (.Q(setpoint[5]), .C(clk16MHz), .E(n13430), 
            .D(n2764[5]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1057 (.I0(\data_in_frame[8] [1]), .I1(n31307), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4204));
    defparam i1_2_lut_adj_1057.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1058 (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [4]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(GND_net), .O(n10_adj_4205));   // verilog/coms.v(157[7:23])
    defparam i2_3_lut_adj_1058.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_2_lut_3_lut_adj_1059 (.I0(\data_in_frame[9][1] ), .I1(\data_in_frame[9][2] ), 
            .I2(\data_in_frame[11] [3]), .I3(GND_net), .O(n31430));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_3_lut_adj_1059.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i4 (.Q(setpoint[4]), .C(clk16MHz), .E(n13430), 
            .D(n2764[4]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i15 (.Q(setpoint[15]), .C(clk16MHz), .E(n13430), 
            .D(n2764[15]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i3 (.Q(setpoint[3]), .C(clk16MHz), .E(n13430), 
            .D(n2764[3]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i2 (.Q(setpoint[2]), .C(clk16MHz), .E(n13430), 
            .D(n2764[2]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i14 (.Q(setpoint[14]), .C(clk16MHz), .E(n13430), 
            .D(n2764[14]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i13 (.Q(setpoint[13]), .C(clk16MHz), .E(n13430), 
            .D(n2764[13]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i12 (.Q(setpoint[12]), .C(clk16MHz), .E(n13430), 
            .D(n2764[12]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1060 (.I0(n31006), .I1(n31346), .I2(n34283), 
            .I3(n31269), .O(n34289));
    defparam i1_4_lut_adj_1060.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1061 (.I0(n27617), .I1(\data_out_frame[14] [3]), 
            .I2(n11516), .I3(n27598), .O(n11546));
    defparam i1_2_lut_3_lut_4_lut_adj_1061.LUT_INIT = 16'h6996;
    SB_DFFER setpoint_i0_i11 (.Q(setpoint[11]), .C(clk16MHz), .E(n13430), 
            .D(n2764[11]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i10 (.Q(setpoint[10]), .C(clk16MHz), .E(n13430), 
            .D(n2764[10]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i9 (.Q(setpoint[9]), .C(clk16MHz), .E(n13430), 
            .D(n2764[9]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i94 (.Q(\data_in_frame[11] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15456));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1062 (.I0(\data_in_frame[7] [6]), .I1(n12220), 
            .I2(n31105), .I3(\data_in_frame[7] [7]), .O(n6_adj_4206));
    defparam i1_2_lut_4_lut_adj_1062.LUT_INIT = 16'h6996;
    SB_DFFER setpoint_i0_i8 (.Q(setpoint[8]), .C(clk16MHz), .E(n13430), 
            .D(n2764[8]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i7 (.Q(setpoint[7]), .C(clk16MHz), .E(n13430), 
            .D(n2764[7]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i66 (.Q(\data_in_frame[8] [1]), .C(clk16MHz), 
           .D(n30421));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11417_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[7]), 
            .I3(\data_in_frame[14] [7]), .O(n15609));
    defparam i11417_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i18521_2_lut (.I0(LED_c), .I1(LED_N_3276), .I2(GND_net), .I3(GND_net), 
            .O(LED_N_3275));   // verilog/coms.v(253[15] 255[9])
    defparam i18521_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10494_4_lut (.I0(n1447), .I1(LED_N_3275), .I2(n12876), .I3(\FRAME_MATCHER.i_31__N_2381 ), 
            .O(n14686));   // verilog/coms.v(130[12] 305[6])
    defparam i10494_4_lut.LUT_INIT = 16'ha8a0;
    SB_LUT4 select_889_Select_0_i3_3_lut (.I0(LED_c), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n3));   // verilog/coms.v(148[4] 304[11])
    defparam select_889_Select_0_i3_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_4_lut_adj_1063 (.I0(LED_c), .I1(n3), .I2(Kp_23__N_1616), 
            .I3(Kp_23__N_480), .O(n5_adj_4208));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1063.LUT_INIT = 16'hfcec;
    SB_DFF data_in_frame_0___i67 (.Q(\data_in_frame[8] [2]), .C(clk16MHz), 
           .D(n30423));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i68 (.Q(\data_in_frame[8] [3]), .C(clk16MHz), 
           .D(n30403));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i69 (.Q(\data_in_frame[8] [4]), .C(clk16MHz), 
           .D(n30409));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i70 (.Q(\data_in_frame[8][5] ), .C(clk16MHz), 
           .D(n15362));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i71 (.Q(\data_in_frame[8][6] ), .C(clk16MHz), 
           .D(n15365));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i72 (.Q(\data_in_frame[8][7] ), .C(clk16MHz), 
           .D(n15368));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1064 (.I0(n31421), .I1(Kp_23__N_1257), .I2(n34201), 
            .I3(n31460), .O(n34207));
    defparam i1_4_lut_adj_1064.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1065 (.I0(n28403), .I1(n31366), .I2(n11803), 
            .I3(n34289), .O(n34295));
    defparam i1_4_lut_adj_1065.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1066 (.I0(n11131), .I1(n12), .I2(n31439), .I3(n11127), 
            .O(n32932));   // verilog/coms.v(74[16:27])
    defparam i6_4_lut_adj_1066.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1067 (.I0(n31448), .I1(n28450), .I2(n31463), 
            .I3(n34207), .O(n34213));
    defparam i1_4_lut_adj_1067.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1068 (.I0(n31108), .I1(n27409), .I2(n32932), 
            .I3(n34295), .O(n34301));
    defparam i1_4_lut_adj_1068.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i73 (.Q(\data_in_frame[9][0] ), .C(clk16MHz), 
           .D(n15371));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33548 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36251), .I2(n36252), .I3(byte_transmit_counter_c[4]), 
            .O(n38178));
    defparam byte_transmit_counter_3__bdd_4_lut_33548.LUT_INIT = 16'he4aa;
    SB_DFF data_in_frame_0___i74 (.Q(\data_in_frame[9][1] ), .C(clk16MHz), 
           .D(n15374));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1069 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(tx_transmit_N_3284), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_4209));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_adj_1069.LUT_INIT = 16'h8888;
    SB_LUT4 i11414_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[6]), 
            .I3(\data_in_frame[14] [6]), .O(n15606));
    defparam i11414_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 reduce_nor_1169_i1_2_lut (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n1));
    defparam reduce_nor_1169_i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_1070 (.I0(n27613), .I1(\data_in_frame[1] [5]), 
            .I2(n30930), .I3(n6_adj_4204), .O(n32385));
    defparam i4_4_lut_adj_1070.LUT_INIT = 16'h6996;
    SB_LUT4 n38178_bdd_4_lut (.I0(n38178), .I1(n36246), .I2(n37335), .I3(byte_transmit_counter_c[4]), 
            .O(tx_data[4]));
    defparam n38178_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_3_lut_adj_1071 (.I0(Kp_23__N_948), .I1(n10_adj_4210), .I2(n12665), 
            .I3(GND_net), .O(n31366));
    defparam i5_3_lut_adj_1071.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i93 (.Q(\data_in_frame[11] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15444));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_223_i3_4_lut (.I0(n12202), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31275), .I3(n28423), .O(n3_adj_4211));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_223_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i13_4_lut (.I0(n4), .I1(n26), .I2(n28392), .I3(\data_in_frame[8] [0]), 
            .O(n30));
    defparam i13_4_lut.LUT_INIT = 16'h4004;
    SB_LUT4 select_438_Select_222_i3_4_lut (.I0(\data_out_frame[25] [5]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n8_adj_4212), .I3(n31171), 
            .O(n3_adj_4213));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_222_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33543 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36249), .I2(n36250), .I3(byte_transmit_counter_c[4]), 
            .O(n38172));
    defparam byte_transmit_counter_3__bdd_4_lut_33543.LUT_INIT = 16'he4aa;
    SB_DFFE data_in_frame_0___i92 (.Q(\data_in_frame[11] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15441));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i75 (.Q(\data_in_frame[9][2] ), .C(clk16MHz), 
           .D(n15377));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i76 (.Q(\data_in_frame[9][3] ), .C(clk16MHz), 
           .D(n15380));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 n38172_bdd_4_lut (.I0(n38172), .I1(n36162), .I2(n36161), .I3(byte_transmit_counter_c[4]), 
            .O(tx_data[5]));
    defparam n38172_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11411_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[5]), 
            .I3(\data_in_frame[14] [5]), .O(n15603));
    defparam i11411_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11408_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[4]), 
            .I3(\data_in_frame[14] [4]), .O(n15600));
    defparam i11408_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i77 (.Q(\data_in_frame[9][4] ), .C(clk16MHz), 
           .D(n15383));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i91 (.Q(\data_in_frame[11] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15432));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i78 (.Q(\data_in_frame[9][5] ), .C(clk16MHz), 
           .D(n15386));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i90 (.Q(\data_in_frame[11] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15427));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i89 (.Q(\data_in_frame[11] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15424));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11405_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[3]), 
            .I3(\data_in_frame[14] [3]), .O(n15597));
    defparam i11405_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i79 (.Q(\data_in_frame[9][6] ), .C(clk16MHz), 
           .D(n15391));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i88 (.Q(\data_in_frame[10] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15420));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i87 (.Q(\data_in_frame[10] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15417));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i86 (.Q(\data_in_frame[10] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15414));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_440_Select_0_i1_2_lut_3_lut (.I0(byte_transmit_counter[0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4214));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_0_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 select_438_Select_220_i3_4_lut (.I0(n32902), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(\data_out_frame[25] [2]), .I3(n27583), .O(n3_adj_4215));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_220_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1072 (.I0(n8_adj_4207), .I1(n10_adj_4216), 
            .I2(n1980), .I3(n161), .O(n14168));
    defparam i1_2_lut_3_lut_4_lut_adj_1072.LUT_INIT = 16'hefff;
    SB_LUT4 i11_4_lut_adj_1073 (.I0(n9835), .I1(n7_adj_4217), .I2(n9831), 
            .I3(n12262), .O(n28));
    defparam i11_4_lut_adj_1073.LUT_INIT = 16'h0020;
    SB_LUT4 select_438_Select_219_i3_3_lut (.I0(n32999), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31059), .I3(GND_net), .O(n3_adj_4218));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_219_i3_3_lut.LUT_INIT = 16'h4848;
    SB_DFF data_in_frame_0___i80 (.Q(\data_in_frame[9] [7]), .C(clk16MHz), 
           .D(n15413));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_218_i3_4_lut (.I0(\data_out_frame[25] [1]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n27596), .I3(n27600), .O(n3_adj_4219));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_218_i3_4_lut.LUT_INIT = 16'h8448;
    SB_DFF data_in_frame_0___i81 (.Q(\data_in_frame[10] [0]), .C(clk16MHz), 
           .D(n15397));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i85 (.Q(\data_in_frame[10] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15409));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1074 (.I0(n31080), .I1(n28345), .I2(n31151), 
            .I3(n6_adj_4220), .O(n27600));
    defparam i4_4_lut_adj_1074.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_1075 (.I0(n28320), .I1(n27600), .I2(n31135), 
            .I3(n11546), .O(n32902));
    defparam i3_4_lut_adj_1075.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i84 (.Q(\data_in_frame[10] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15406));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1076 (.I0(n31366), .I1(\data_in_frame[14] [3]), 
            .I2(\data_in_frame[12] [2]), .I3(GND_net), .O(n31071));
    defparam i2_3_lut_adj_1076.LUT_INIT = 16'h9696;
    SB_LUT4 i11402_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[2]), 
            .I3(\data_in_frame[14] [2]), .O(n15594));
    defparam i11402_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1077 (.I0(n32902), .I1(n27600), .I2(n27503), 
            .I3(n6_adj_4221), .O(n32999));
    defparam i4_4_lut_adj_1077.LUT_INIT = 16'h9669;
    SB_LUT4 i11399_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[1]), 
            .I3(\data_in_frame[14] [1]), .O(n15591));
    defparam i11399_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11396_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30884), .I2(rx_data[0]), 
            .I3(\data_in_frame[14] [0]), .O(n15588));
    defparam i11396_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11780_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[0]), 
            .I3(\data_in_frame[23] [0]), .O(n15972));
    defparam i11780_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1078 (.I0(\data_out_frame[23] [1]), .I1(n28345), 
            .I2(GND_net), .I3(GND_net), .O(n31135));
    defparam i1_2_lut_adj_1078.LUT_INIT = 16'h9999;
    SB_LUT4 i4_4_lut_adj_1079 (.I0(n28343), .I1(n27602), .I2(n31135), 
            .I3(n31374), .O(n10_adj_4222));
    defparam i4_4_lut_adj_1079.LUT_INIT = 16'h9669;
    SB_LUT4 i5_3_lut_adj_1080 (.I0(\data_out_frame[23] [2]), .I1(n10_adj_4222), 
            .I2(n31375), .I3(GND_net), .O(n32861));
    defparam i5_3_lut_adj_1080.LUT_INIT = 16'h9696;
    SB_DFFESS data_out_frame_0___i3 (.Q(\data_out_frame[0][2] ), .C(clk16MHz), 
            .E(n1447), .D(n2), .S(n14787));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1081 (.I0(n28356), .I1(\data_out_frame[23] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n28423));
    defparam i1_2_lut_adj_1081.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut (.I0(n32999), .I1(n33101), .I2(n31184), .I3(GND_net), 
            .O(n8_adj_4223));
    defparam i3_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 select_438_Select_217_i3_4_lut (.I0(n28423), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n8_adj_4223), .I3(n32861), .O(n3_adj_4224));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_217_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i11783_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[1]), 
            .I3(\data_in_frame[23] [1]), .O(n15975));
    defparam i11783_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11786_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[2]), 
            .I3(\data_in_frame[23] [2]), .O(n15978));
    defparam i11786_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11789_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[3]), 
            .I3(\data_in_frame[23] [3]), .O(n15981));
    defparam i11789_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33558 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36257), .I2(n36258), .I3(byte_transmit_counter_c[4]), 
            .O(n38190));
    defparam byte_transmit_counter_3__bdd_4_lut_33558.LUT_INIT = 16'he4aa;
    SB_DFFE data_in_frame_0___i83 (.Q(\data_in_frame[10] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15403));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33553 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36255), .I2(n36256), .I3(byte_transmit_counter_c[4]), 
            .O(n38184));
    defparam byte_transmit_counter_3__bdd_4_lut_33553.LUT_INIT = 16'he4aa;
    SB_LUT4 n38184_bdd_4_lut (.I0(n38184), .I1(n36154), .I2(n36153), .I3(byte_transmit_counter_c[4]), 
            .O(tx_data[2]));
    defparam n38184_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 select_438_Select_216_i3_3_lut (.I0(n27596), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31184), .I3(GND_net), .O(n3_adj_4225));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_216_i3_3_lut.LUT_INIT = 16'h4848;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut (.I0(\byte_transmit_counter[1] ), 
            .I1(\data_out_frame[25] [2]), .I2(\data_out_frame[27] [2]), 
            .I3(byte_transmit_counter[0]), .O(n38160));
    defparam byte_transmit_counter_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFE data_in_frame_0___i82 (.Q(\data_in_frame[10] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15400));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 n38160_bdd_4_lut (.I0(n38160), .I1(\data_out_frame[26] [2]), 
            .I2(\data_out_frame[24] [2]), .I3(byte_transmit_counter[0]), 
            .O(n38163));
    defparam n38160_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_1082 (.I0(\data_out_frame[25] [1]), .I1(\data_out_frame[25] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n31059));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1082.LUT_INIT = 16'h6666;
    SB_LUT4 i11792_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[4]), 
            .I3(\data_in_frame[23] [4]), .O(n15984));
    defparam i11792_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i4 (.Q(\data_out_frame[0][3] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4226), .S(n30765));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1083 (.I0(\data_out_frame[25] [6]), .I1(\data_out_frame[25] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n31275));
    defparam i1_2_lut_adj_1083.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut (.I0(n31174), .I1(n31275), .I2(\data_out_frame[25] [3]), 
            .I3(\data_out_frame[25] [7]), .O(n12_adj_4227));
    defparam i5_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33524 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [7]), .I2(\data_out_frame[27] [7]), 
            .I3(\byte_transmit_counter[1] ), .O(n38148));
    defparam byte_transmit_counter_0__bdd_4_lut_33524.LUT_INIT = 16'he4aa;
    SB_LUT4 i11799_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[5]), 
            .I3(\data_in_frame[23] [5]), .O(n15991));
    defparam i11799_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i5 (.Q(\data_out_frame[0][4] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4228), .S(n30766));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i30058_4_lut (.I0(n12128), .I1(n12306), .I2(n27820), .I3(n11773), 
            .O(n34663));
    defparam i30058_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 n38148_bdd_4_lut (.I0(n38148), .I1(\data_out_frame[25] [7]), 
            .I2(\data_out_frame[24] [7]), .I3(\byte_transmit_counter[1] ), 
            .O(n38151));
    defparam n38148_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3_4_lut_adj_1084 (.I0(n12522), .I1(n11734), .I2(n12239), 
            .I3(\data_in_frame[18] [5]), .O(n31266));
    defparam i3_4_lut_adj_1084.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1085 (.I0(n8_adj_4229), .I1(n10_adj_4216), 
            .I2(n1980), .I3(n161), .O(n14194));
    defparam i1_2_lut_3_lut_4_lut_adj_1085.LUT_INIT = 16'hefff;
    SB_LUT4 i4_4_lut_adj_1086 (.I0(n28290), .I1(\data_in_frame[17]_c [7]), 
            .I2(\data_in_frame[16][0] ), .I3(n30980), .O(n10_adj_4230));
    defparam i4_4_lut_adj_1086.LUT_INIT = 16'h9669;
    SB_LUT4 i30060_4_lut (.I0(n27117), .I1(n12116), .I2(n32385), .I3(n11686), 
            .O(n34665));
    defparam i30060_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_1087 (.I0(\data_out_frame[25] [4]), .I1(n12_adj_4227), 
            .I2(n12202), .I3(n31059), .O(n31184));
    defparam i6_4_lut_adj_1087.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1088 (.I0(n27623), .I1(n10_adj_4230), .I2(\data_in_frame[15] [5]), 
            .I3(GND_net), .O(n28244));
    defparam i5_3_lut_adj_1088.LUT_INIT = 16'h9696;
    SB_LUT4 i11802_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[6]), 
            .I3(\data_in_frame[23] [6]), .O(n15994));
    defparam i11802_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1089 (.I0(\data_in_frame[12] [3]), .I1(\data_in_frame[12] [2]), 
            .I2(n31463), .I3(n31071), .O(n11127));
    defparam i1_2_lut_3_lut_4_lut_adj_1089.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_215_i3_4_lut (.I0(n31125), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31184), .I3(\data_out_frame[25] [0]), .O(n3_adj_4231));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_215_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i16_4_lut (.I0(n34665), .I1(n34663), .I2(n28), .I3(n30), 
            .O(LED_N_3276));
    defparam i16_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i11805_3_lut_4_lut (.I0(n10_adj_4205), .I1(n30891), .I2(rx_data[7]), 
            .I3(\data_in_frame[23] [7]), .O(n15997));
    defparam i11805_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1090 (.I0(\data_in_frame[12] [3]), .I1(\data_in_frame[12] [2]), 
            .I2(n31463), .I3(\data_in_frame[16][5] ), .O(n31034));
    defparam i1_2_lut_3_lut_4_lut_adj_1090.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33504 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [1]), .I2(\data_out_frame[27] [1]), 
            .I3(\byte_transmit_counter[1] ), .O(n38124));
    defparam byte_transmit_counter_0__bdd_4_lut_33504.LUT_INIT = 16'he4aa;
    SB_LUT4 select_438_Select_214_i3_4_lut (.I0(n28219), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31125), .I3(\data_out_frame[24] [4]), .O(n3_adj_4232));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_214_i3_4_lut.LUT_INIT = 16'h4884;
    SB_DFFESS data_out_frame_0___i9 (.Q(\data_out_frame[1][0] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4233), .S(n30767));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_213_i3_4_lut (.I0(n28219), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31263), .I3(n31342), .O(n3_adj_4234));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_213_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i1_2_lut_adj_1091 (.I0(n27604), .I1(\data_in_frame[21] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4235));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1091.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1092 (.I0(\data_in_frame[3][4] ), .I1(\data_in_frame[3] [5]), 
            .I2(\data_in_frame[5] [6]), .I3(GND_net), .O(n31445));
    defparam i1_2_lut_3_lut_adj_1092.LUT_INIT = 16'h9696;
    SB_LUT4 i11128_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[6][7] ), .O(n15320));
    defparam i11128_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_438_Select_212_i3_4_lut (.I0(n28240), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(\data_out_frame[24] [2]), .I3(\data_out_frame[24] [3]), 
            .O(n3_adj_4236));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_212_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(n11859), .I1(\data_in_frame[12] [5]), 
            .I2(n12313), .I3(\data_in_frame[15] [7]), .O(n7_adj_4237));
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut_adj_1093 (.I0(\data_in_frame[22] [4]), .I1(\data_in_frame[20] [2]), 
            .I2(n32671), .I3(\data_in_frame[18] [2]), .O(n12_adj_4238));
    defparam i5_4_lut_adj_1093.LUT_INIT = 16'h9669;
    SB_LUT4 select_438_Select_211_i3_4_lut (.I0(n28324), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n31003), .I3(n27419), .O(n3_adj_4239));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_211_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i1_3_lut_4_lut_adj_1094 (.I0(\data_in_frame[15] [3]), .I1(\data_in_frame[13] [1]), 
            .I2(\data_in_frame[13] [2]), .I3(n31424), .O(n27409));
    defparam i1_3_lut_4_lut_adj_1094.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1095 (.I0(n28288), .I1(n34377), .I2(n34219), 
            .I3(n32274), .O(n31235));
    defparam i1_4_lut_adj_1095.LUT_INIT = 16'h9669;
    SB_LUT4 n38124_bdd_4_lut (.I0(n38124), .I1(\data_out_frame[25] [1]), 
            .I2(\data_out_frame[24] [1]), .I3(\byte_transmit_counter[1] ), 
            .O(n38127));
    defparam n38124_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11111_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[6][6] ), .O(n15303));
    defparam i11111_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i5_4_lut_adj_1096 (.I0(\data_out_frame[23] [6]), .I1(n31396), 
            .I2(n31198), .I3(\data_out_frame[24] [0]), .O(n12_adj_4240));
    defparam i5_4_lut_adj_1096.LUT_INIT = 16'h6996;
    SB_DFFESS data_out_frame_0___i10 (.Q(\data_out_frame[1][1] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4241), .S(n30768));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1097 (.I0(\data_in_frame[20] [5]), .I1(n28255), 
            .I2(\data_in_frame[22] [6]), .I3(\data_in_frame[20] [4]), .O(n32563));
    defparam i3_4_lut_adj_1097.LUT_INIT = 16'h6996;
    SB_DFFESS data_out_frame_0___i12 (.Q(\data_out_frame[1][3] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4242), .S(n30769));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i14 (.Q(\data_out_frame[1][5] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4243), .S(n30770));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i15 (.Q(\data_out_frame[1][6] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4244), .S(n30771));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_210_i3_4_lut (.I0(n27541), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n12_adj_4240), .I3(n8_adj_4245), .O(n3_adj_4246));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_210_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i11083_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[6][5] ), .O(n15275));
    defparam i11083_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i6_4_lut_adj_1098 (.I0(\data_in_frame[20] [3]), .I1(n12_adj_4238), 
            .I2(n31272), .I3(n12133), .O(n32294));
    defparam i6_4_lut_adj_1098.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1099 (.I0(n31256), .I1(n31405), .I2(\data_in_frame[23] [4]), 
            .I3(GND_net), .O(n32678));
    defparam i2_3_lut_adj_1099.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1100 (.I0(\data_in_frame[0]_c [3]), .I1(\data_in_frame[0]_c [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30991));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_adj_1100.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1101 (.I0(n28417), .I1(n27737), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4247));
    defparam i1_2_lut_adj_1101.LUT_INIT = 16'h9999;
    SB_LUT4 i4_4_lut_adj_1102 (.I0(n27503), .I1(n28351), .I2(n28242), 
            .I3(n6_adj_4247), .O(n31278));
    defparam i4_4_lut_adj_1102.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33499 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [4]), .I2(\data_out_frame[27] [4]), 
            .I3(\byte_transmit_counter[1] ), .O(n38118));
    defparam byte_transmit_counter_0__bdd_4_lut_33499.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_1103 (.I0(n31278), .I1(n31340), .I2(GND_net), 
            .I3(GND_net), .O(n31342));
    defparam i1_2_lut_adj_1103.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_1104 (.I0(n28435), .I1(n11926), .I2(n27541), 
            .I3(n28456), .O(n14));
    defparam i6_4_lut_adj_1104.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1105 (.I0(n31340), .I1(n27497), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_4248));
    defparam i1_2_lut_adj_1105.LUT_INIT = 16'h6666;
    SB_LUT4 i7_4_lut_adj_1106 (.I0(n9_adj_4248), .I1(n14), .I2(n12269), 
            .I3(n28417), .O(n27419));
    defparam i7_4_lut_adj_1106.LUT_INIT = 16'h9669;
    SB_LUT4 i11080_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[6][4] ), .O(n15272));
    defparam i11080_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1107 (.I0(n27524), .I1(n28439), .I2(GND_net), 
            .I3(GND_net), .O(n28242));
    defparam i1_2_lut_adj_1107.LUT_INIT = 16'h9999;
    SB_DFFESS data_out_frame_0___i16 (.Q(\data_out_frame[1][7] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4249), .S(n30761));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1144__i31  (.Q(\FRAME_MATCHER.i [31]), .C(clk16MHz), 
            .D(n13746), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i11_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(\data_in_frame[6] [3]), 
            .I3(rx_data[3]), .O(n30399));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 n38118_bdd_4_lut (.I0(n38118), .I1(\data_out_frame[25] [4]), 
            .I2(\data_out_frame[24] [4]), .I3(\byte_transmit_counter[1] ), 
            .O(n38121));
    defparam n38118_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFR \FRAME_MATCHER.i_1144__i30  (.Q(\FRAME_MATCHER.i [30]), .C(clk16MHz), 
            .D(n13748), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i29  (.Q(\FRAME_MATCHER.i [29]), .C(clk16MHz), 
            .D(n13750), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i28  (.Q(\FRAME_MATCHER.i [28]), .C(clk16MHz), 
            .D(n13752), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFF data_in_0___i2 (.Q(\data_in[0] [1]), .C(clk16MHz), .D(n15319));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1108 (.I0(\data_in_frame[16][3] ), .I1(n31066), 
            .I2(\data_in_frame[14] [0]), .I3(n11803), .O(n6_adj_4250));
    defparam i1_2_lut_4_lut_adj_1108.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1109 (.I0(n27419), .I1(n31342), .I2(GND_net), 
            .I3(GND_net), .O(n28240));
    defparam i1_2_lut_adj_1109.LUT_INIT = 16'h9999;
    SB_LUT4 i11073_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[6] [2]), .O(n15265));
    defparam i11073_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1110 (.I0(\data_in_frame[2] [2]), .I1(\data_in_frame[0]_c [0]), 
            .I2(\data_in_frame[0]_c [1]), .I3(GND_net), .O(n3_adj_4251));   // verilog/coms.v(169[9:87])
    defparam i2_3_lut_adj_1110.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1111 (.I0(\data_out_frame[24] [0]), .I1(n28284), 
            .I2(n27497), .I3(n12202), .O(n31174));
    defparam i3_4_lut_adj_1111.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1112 (.I0(\data_out_frame[24] [4]), .I1(\data_out_frame[24] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31263));
    defparam i1_2_lut_adj_1112.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_1113 (.I0(\data_in_frame[18] [1]), .I1(\data_in_frame[18] [3]), 
            .I2(\data_in_frame[19]_c [0]), .I3(\data_in_frame[18] [2]), 
            .O(n34391));
    defparam i1_3_lut_4_lut_adj_1113.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut (.I0(n11592), .I1(\data_in_frame[8][6] ), .I2(n12128), 
            .I3(\data_in_frame[11] [2]), .O(n31160));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut_4_lut_adj_1114 (.I0(\data_in_frame[3] [3]), .I1(\data_in_frame[0] [7]), 
            .I2(\data_in_frame[1] [1]), .I3(\data_in_frame[1] [2]), .O(n12182));   // verilog/coms.v(76[16:34])
    defparam i3_3_lut_4_lut_adj_1114.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1115 (.I0(Kp_23__N_635), .I1(\data_in_frame[0]_c [6]), 
            .I2(\data_in_frame[1] [0]), .I3(\data_in_frame[3] [0]), .O(n12169));   // verilog/coms.v(80[16:27])
    defparam i2_3_lut_4_lut_adj_1115.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1116 (.I0(\data_out_frame[24] [1]), .I1(\data_out_frame[24] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n31003));
    defparam i1_2_lut_adj_1116.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1117 (.I0(\data_out_frame[23] [2]), .I1(\data_out_frame[23] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31249));
    defparam i1_2_lut_adj_1117.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1118 (.I0(n32678), .I1(n32294), .I2(n32563), 
            .I3(n27117), .O(n34345));
    defparam i1_4_lut_adj_1118.LUT_INIT = 16'h0040;
    SB_LUT4 i2_3_lut_4_lut_adj_1119 (.I0(\data_in_frame[0]_c [6]), .I1(\data_in_frame[1] [0]), 
            .I2(\data_in_frame[3] [2]), .I3(\data_in_frame[1] [1]), .O(n31037));   // verilog/coms.v(73[16:27])
    defparam i2_3_lut_4_lut_adj_1119.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1120 (.I0(\data_in_frame[4] [5]), .I1(\data_in_frame[6][7] ), 
            .I2(\data_in_frame[7] [1]), .I3(GND_net), .O(n30988));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_3_lut_adj_1120.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_1121 (.I0(\data_in_frame[9][3] ), .I1(\data_in_frame[9][4] ), 
            .I2(n27489), .I3(n12096), .O(n28235));
    defparam i1_2_lut_4_lut_adj_1121.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1122 (.I0(n27598), .I1(n12515), .I2(n9490), .I3(n1699), 
            .O(n30927));
    defparam i3_4_lut_adj_1122.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1123 (.I0(n27567), .I1(\data_out_frame[13] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n28343));
    defparam i1_2_lut_adj_1123.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_33494 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [5]), .I2(\data_out_frame[27] [5]), 
            .I3(\byte_transmit_counter[1] ), .O(n38106));
    defparam byte_transmit_counter_0__bdd_4_lut_33494.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_1124 (.I0(n11919), .I1(\data_out_frame[13] [6]), 
            .I2(n9490), .I3(GND_net), .O(n31157));
    defparam i2_3_lut_adj_1124.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1125 (.I0(n27524), .I1(n31157), .I2(n28343), 
            .I3(GND_net), .O(n27737));
    defparam i2_3_lut_adj_1125.LUT_INIT = 16'h9696;
    SB_LUT4 i18_4_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i [21]), 
            .I2(\FRAME_MATCHER.i [24]), .I3(\FRAME_MATCHER.i [17]), .O(n44_adj_4252));
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut_adj_1126 (.I0(\data_out_frame[13] [5]), .I1(n31157), 
            .I2(n28231), .I3(n10989), .O(n27415));
    defparam i3_4_lut_adj_1126.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1127 (.I0(n27415), .I1(n28351), .I2(GND_net), 
            .I3(GND_net), .O(n28456));
    defparam i1_2_lut_adj_1127.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1128 (.I0(n28320), .I1(n27737), .I2(GND_net), 
            .I3(GND_net), .O(n27503));
    defparam i1_2_lut_adj_1128.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1129 (.I0(n27598), .I1(n31053), .I2(GND_net), 
            .I3(GND_net), .O(n27602));
    defparam i1_2_lut_adj_1129.LUT_INIT = 16'h6666;
    SB_LUT4 i10982_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [0]), 
            .I3(\data_in[0] [0]), .O(n15174));   // verilog/coms.v(130[12] 305[6])
    defparam i10982_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i16_4_lut_adj_1130 (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i [6]), 
            .I2(\FRAME_MATCHER.i [18]), .I3(\FRAME_MATCHER.i [23]), .O(n42));
    defparam i16_4_lut_adj_1130.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i [20]), 
            .I2(\FRAME_MATCHER.i [12]), .I3(\FRAME_MATCHER.i [14]), .O(n43));
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i [11]), 
            .I2(\FRAME_MATCHER.i [26]), .I3(\FRAME_MATCHER.i [16]), .O(n41));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11126_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [2]), 
            .I3(\data_in[0] [2]), .O(n15318));   // verilog/coms.v(130[12] 305[6])
    defparam i11126_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i14_4_lut (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i [15]), 
            .I2(\FRAME_MATCHER.i [10]), .I3(\FRAME_MATCHER.i [28]), .O(n40));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i [27]), 
            .I2(GND_net), .I3(GND_net), .O(n39));
    defparam i13_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_1131 (.I0(n31151), .I1(n31165), .I2(n11926), 
            .I3(n28231), .O(n15_adj_4253));
    defparam i6_4_lut_adj_1131.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut (.I0(n15_adj_4253), .I1(n27524), .I2(n14_adj_4254), 
            .I3(n31156), .O(n32984));
    defparam i8_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i24_4_lut (.I0(n41), .I1(n43), .I2(n42), .I3(n44_adj_4252), 
            .O(n50));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 n38106_bdd_4_lut (.I0(n38106), .I1(\data_out_frame[25] [5]), 
            .I2(\data_out_frame[24] [5]), .I3(\byte_transmit_counter[1] ), 
            .O(n38109));
    defparam n38106_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19_4_lut (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i [25]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(\FRAME_MATCHER.i [19]), .O(n45));
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_4_lut_adj_1132 (.I0(\data_in_frame[6][5] ), .I1(n31209), 
            .I2(\data_in_frame[4] [3]), .I3(\data_in_frame[4] [4]), .O(n10_adj_4255));   // verilog/coms.v(77[16:43])
    defparam i4_4_lut_adj_1132.LUT_INIT = 16'h6996;
    SB_LUT4 i25_4_lut (.I0(n45), .I1(n50), .I2(n39), .I3(n40), .O(n11351));
    defparam i25_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18630_4_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n11351), .I3(\FRAME_MATCHER.i [4]), .O(n4452));   // verilog/coms.v(262[9:58])
    defparam i18630_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i6_4_lut_adj_1133 (.I0(\data_out_frame[14] [1]), .I1(n31131), 
            .I2(\data_out_frame[13] [7]), .I3(n31325), .O(n16_adj_4256));
    defparam i6_4_lut_adj_1133.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1134 (.I0(\data_out_frame[4] [2]), .I1(n31201), 
            .I2(n28370), .I3(\data_out_frame[12] [1]), .O(n17_adj_4257));
    defparam i7_4_lut_adj_1134.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1135 (.I0(n17_adj_4257), .I1(n27575), .I2(n16_adj_4256), 
            .I3(\data_out_frame[5] [6]), .O(n27598));
    defparam i9_4_lut_adj_1135.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1136 (.I0(n12165), .I1(n10_adj_4255), .I2(\data_in_frame[1] [7]), 
            .I3(GND_net), .O(n31230));   // verilog/coms.v(77[16:43])
    defparam i5_3_lut_adj_1136.LUT_INIT = 16'h9696;
    SB_LUT4 i232_2_lut (.I0(n4452), .I1(\FRAME_MATCHER.i_31__N_2382 ), .I2(GND_net), 
            .I3(GND_net), .O(n794));   // verilog/coms.v(148[4] 304[11])
    defparam i232_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11070_3_lut_4_lut (.I0(n14168), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[6][1] ), .O(n15262));
    defparam i11070_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1137 (.I0(n27623), .I1(n11592), .I2(n31433), 
            .I3(\data_in_frame[11] [2]), .O(n31161));
    defparam i1_2_lut_4_lut_adj_1137.LUT_INIT = 16'h6996;
    SB_LUT4 i11125_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [3]), 
            .I3(\data_in[0] [3]), .O(n15317));   // verilog/coms.v(130[12] 305[6])
    defparam i11125_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_adj_1138 (.I0(\data_in_frame[4] [4]), .I1(n11634), 
            .I2(n3_adj_4251), .I3(GND_net), .O(n12162));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_adj_1138.LUT_INIT = 16'h9696;
    SB_LUT4 i11124_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [4]), 
            .I3(\data_in[0] [4]), .O(n15316));   // verilog/coms.v(130[12] 305[6])
    defparam i11124_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_2_lut (.I0(n12087), .I1(n32731), .I2(GND_net), .I3(GND_net), 
            .O(n11926));
    defparam i2_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i2_3_lut_adj_1139 (.I0(n12162), .I1(n31230), .I2(\data_in_frame[6][6] ), 
            .I3(GND_net), .O(n30994));   // verilog/coms.v(80[16:43])
    defparam i2_3_lut_adj_1139.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1140 (.I0(n11546), .I1(n31375), .I2(n31154), 
            .I3(n12583), .O(n28356));
    defparam i3_4_lut_adj_1140.LUT_INIT = 16'h6996;
    SB_LUT4 i11_4_lut_4_lut_adj_1141 (.I0(n14168), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[6] [0]), .O(n30391));
    defparam i11_4_lut_4_lut_adj_1141.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33538 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36169), .I2(n36170), .I3(byte_transmit_counter_c[4]), 
            .O(n38076));
    defparam byte_transmit_counter_3__bdd_4_lut_33538.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_1142 (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[1] [6]), 
            .I2(n31212), .I3(GND_net), .O(Kp_23__N_743));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_3_lut_adj_1142.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1143 (.I0(n3_adj_4251), .I1(\data_in_frame[4] [2]), 
            .I2(\data_in_frame[4] [3]), .I3(\data_in_frame[2] [0]), .O(n31212));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_4_lut_adj_1143.LUT_INIT = 16'h6996;
    SB_LUT4 i11123_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [5]), 
            .I3(\data_in[0] [5]), .O(n15315));   // verilog/coms.v(130[12] 305[6])
    defparam i11123_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1144 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n30884), .O(n30887));
    defparam i1_2_lut_3_lut_4_lut_adj_1144.LUT_INIT = 16'hff7f;
    SB_LUT4 i11122_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [6]), 
            .I3(\data_in[0] [6]), .O(n15314));   // verilog/coms.v(130[12] 305[6])
    defparam i11122_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_adj_1145 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(\data_in_frame[4] [1]), .I3(GND_net), .O(n31415));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1145.LUT_INIT = 16'h9696;
    SB_LUT4 i11121_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [7]), 
            .I3(\data_in[0] [7]), .O(n15313));   // verilog/coms.v(130[12] 305[6])
    defparam i11121_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i5_4_lut_adj_1146 (.I0(n31102), .I1(n31220), .I2(n27587), 
            .I3(n28356), .O(n12_adj_4258));
    defparam i5_4_lut_adj_1146.LUT_INIT = 16'h9669;
    SB_DFF data_in_0___i3 (.Q(\data_in[0] [2]), .C(clk16MHz), .D(n15318));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i4 (.Q(\data_in[0] [3]), .C(clk16MHz), .D(n15317));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i5 (.Q(\data_in[0] [4]), .C(clk16MHz), .D(n15316));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i6 (.Q(\data_in[0] [5]), .C(clk16MHz), .D(n15315));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i7 (.Q(\data_in[0] [6]), .C(clk16MHz), .D(n15314));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i8 (.Q(\data_in[0] [7]), .C(clk16MHz), .D(n15313));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i9 (.Q(\data_in[1] [0]), .C(clk16MHz), .D(n15312));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i10 (.Q(\data_in[1] [1]), .C(clk16MHz), .D(n15311));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i11 (.Q(\data_in[1] [2]), .C(clk16MHz), .D(n15310));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i12 (.Q(\data_in[1] [3]), .C(clk16MHz), .D(n15309));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i13 (.Q(\data_in[1] [4]), .C(clk16MHz), .D(n15308));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i14 (.Q(\data_in[1] [5]), .C(clk16MHz), .D(n15299));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i24 (.Q(\data_in[2] [7]), .C(clk16MHz), .D(n15296));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i23 (.Q(\data_in[2] [6]), .C(clk16MHz), .D(n15295));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i22 (.Q(\data_in[2] [5]), .C(clk16MHz), .D(n15294));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i21 (.Q(\data_in[2] [4]), .C(clk16MHz), .D(n15293));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i20 (.Q(\data_in[2] [3]), .C(clk16MHz), .D(n15292));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i19 (.Q(\data_in[2] [2]), .C(clk16MHz), .D(n15291));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i18 (.Q(\data_in[2] [1]), .C(clk16MHz), .D(n15290));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i17 (.Q(\data_in[2] [0]), .C(clk16MHz), .D(n15289));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i16 (.Q(\data_in[1] [7]), .C(clk16MHz), .D(n15288));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i15 (.Q(\data_in[1] [6]), .C(clk16MHz), .D(n15287));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i25 (.Q(\data_in[3] [0]), .C(clk16MHz), .D(n15284));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i26 (.Q(\data_in[3] [1]), .C(clk16MHz), .D(n15283));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i27 (.Q(\data_in[3] [2]), .C(clk16MHz), .D(n15282));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i28 (.Q(\data_in[3] [3]), .C(clk16MHz), .D(n15281));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i29 (.Q(\data_in[3] [4]), .C(clk16MHz), .D(n15280));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i30 (.Q(\data_in[3] [5]), .C(clk16MHz), .D(n15279));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i31 (.Q(\data_in[3] [6]), .C(clk16MHz), .D(n15278));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i32 (.Q(\data_in[3] [7]), .C(clk16MHz), .D(n15268));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_4_lut_adj_1147 (.I0(n28435), .I1(n12_adj_4258), .I2(n31278), 
            .I3(n28345), .O(n32328));
    defparam i6_4_lut_adj_1147.LUT_INIT = 16'h6996;
    SB_DFF \FRAME_MATCHER.rx_data_ready_prev_4012  (.Q(\FRAME_MATCHER.rx_data_ready_prev ), 
           .C(clk16MHz), .D(n15255));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i1 (.Q(neopxl_color[1]), .C(clk16MHz), .D(n15254));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i2 (.Q(neopxl_color[2]), .C(clk16MHz), .D(n15253));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i3 (.Q(neopxl_color[3]), .C(clk16MHz), .D(n15251));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i4 (.Q(neopxl_color[4]), .C(clk16MHz), .D(n15250));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i5 (.Q(neopxl_color[5]), .C(clk16MHz), .D(n15249));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i6 (.Q(neopxl_color[6]), .C(clk16MHz), .D(n15248));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i7 (.Q(neopxl_color[7]), .C(clk16MHz), .D(n15244));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i26 (.Q(\data_out_frame[3][1] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4259), .S(n30772));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11120_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [0]), 
            .I3(\data_in[1] [0]), .O(n15312));   // verilog/coms.v(130[12] 305[6])
    defparam i11120_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i6_4_lut_adj_1148 (.I0(n31174), .I1(n28240), .I2(n9610), .I3(n28219), 
            .O(n14_adj_4260));
    defparam i6_4_lut_adj_1148.LUT_INIT = 16'h6996;
    SB_LUT4 i11749_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[0]), 
            .I3(\data_in_frame[22] [0]), .O(n15941));
    defparam i11749_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i28 (.Q(\data_out_frame[3][3] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4261), .S(n30773));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i29 (.Q(\data_out_frame[3][4] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4262), .S(n30774));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i31 (.Q(\data_out_frame[3][6] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4263), .S(n30775));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11752_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[1]), 
            .I3(\data_in_frame[22] [1]), .O(n15944));
    defparam i11752_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i32 (.Q(\data_out_frame[3][7] ), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4264), .S(n30776));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_4_lut_adj_1149 (.I0(\data_out_frame[25] [7]), .I1(n28284), 
            .I2(n28324), .I3(n28441), .O(n13));
    defparam i5_4_lut_adj_1149.LUT_INIT = 16'h9669;
    SB_DFFESS data_out_frame_0___i33 (.Q(\data_out_frame[4] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4265), .S(n30777));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i34 (.Q(\data_out_frame[4] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4266), .S(n30778));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i35 (.Q(\data_out_frame[4] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4267), .S(n14771));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11755_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[2]), 
            .I3(\data_in_frame[22] [2]), .O(n15947));
    defparam i11755_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i36 (.Q(\data_out_frame[4] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4268), .S(n30779));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i37 (.Q(\data_out_frame[4] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4269), .S(n30780));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i38 (.Q(\data_out_frame[4] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4270), .S(n30781));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i39 (.Q(\data_out_frame[4] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4271), .S(n14767));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i40 (.Q(\data_out_frame[4] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4272), .S(n30782));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i41 (.Q(\data_out_frame[5] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4273), .S(n30783));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i42 (.Q(\data_out_frame[5] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4274), .S(n30784));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i43 (.Q(\data_out_frame[5] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4275), .S(n14763));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i44 (.Q(\data_out_frame[5] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4276), .S(n30764));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i45 (.Q(\data_out_frame[5] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4277), .S(n14761));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i46 (.Q(\data_out_frame[5] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4278), .S(n30785));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i47 (.Q(\data_out_frame[5] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4279), .S(n14759));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i48 (.Q(\data_out_frame[5] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4280), .S(n30762));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_209_i3_3_lut (.I0(n13), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n14_adj_4260), .I3(GND_net), .O(n3_adj_4281));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_209_i3_3_lut.LUT_INIT = 16'h4848;
    SB_DFFESS data_out_frame_0___i97 (.Q(\data_out_frame[12] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4282), .S(n14757));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i98 (.Q(\data_out_frame[12] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4283), .S(n30786));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i99 (.Q(\data_out_frame[12] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4284), .S(n30787));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i100 (.Q(\data_out_frame[12] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4285), .S(n30788));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i8 (.Q(neopxl_color[8]), .C(clk16MHz), .D(n15235));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i101 (.Q(\data_out_frame[12] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4286), .S(n30789));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i102 (.Q(\data_out_frame[12] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4287), .S(n30790));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11759_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[3]), 
            .I3(\data_in_frame[22] [3]), .O(n15951));
    defparam i11759_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i103 (.Q(\data_out_frame[12] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4288), .S(n30791));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i104 (.Q(\data_out_frame[12] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4289), .S(n30792));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i105 (.Q(\data_out_frame[13] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4290), .S(n30793));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i106 (.Q(\data_out_frame[13] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4291), .S(n30794));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i107 (.Q(\data_out_frame[13] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4292), .S(n30795));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i108 (.Q(\data_out_frame[13] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4293), .S(n30796));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i109 (.Q(\data_out_frame[13] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4294), .S(n30797));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i110 (.Q(\data_out_frame[13] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4295), .S(n30798));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i111 (.Q(\data_out_frame[13] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4296), .S(n30799));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i112 (.Q(\data_out_frame[13] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4297), .S(n30800));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i113 (.Q(\data_out_frame[14] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4298), .S(n14741));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i114 (.Q(\data_out_frame[14] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4299), .S(n30801));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i115 (.Q(\data_out_frame[14] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4300), .S(n30802));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i116 (.Q(\data_out_frame[14] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4301), .S(n30803));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i117 (.Q(\data_out_frame[14] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4302), .S(n30804));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i118 (.Q(\data_out_frame[14] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4303), .S(n30760));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i119 (.Q(\data_out_frame[14] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4304), .S(n30805));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i120 (.Q(\data_out_frame[14] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4305), .S(n30806));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i185 (.Q(\data_out_frame[23] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4306), .S(n30807));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i186 (.Q(\data_out_frame[23] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4307), .S(n30808));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i187 (.Q(\data_out_frame[23] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4308), .S(n14731));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i188 (.Q(\data_out_frame[23] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4309), .S(n14730));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1150 (.I0(\data_out_frame[5] [7]), .I1(n31418), 
            .I2(n31294), .I3(n31195), .O(n32731));
    defparam i3_4_lut_adj_1150.LUT_INIT = 16'h6996;
    SB_DFFESS data_out_frame_0___i189 (.Q(\data_out_frame[23] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4310), .S(n30809));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i190 (.Q(\data_out_frame[23] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4311), .S(n30810));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i191 (.Q(\data_out_frame[23] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4312), .S(n30811));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i9 (.Q(neopxl_color[9]), .C(clk16MHz), .D(n15234));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i192 (.Q(\data_out_frame[23] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4313), .S(n30812));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i193 (.Q(\data_out_frame[24] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4314), .S(n30813));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i194 (.Q(\data_out_frame[24] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4315), .S(n30814));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i195 (.Q(\data_out_frame[24] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4316), .S(n14723));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1144__i27  (.Q(\FRAME_MATCHER.i [27]), .C(clk16MHz), 
            .D(n13754), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i26  (.Q(\FRAME_MATCHER.i [26]), .C(clk16MHz), 
            .D(n13756), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i25  (.Q(\FRAME_MATCHER.i [25]), .C(clk16MHz), 
            .D(n13758), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i24  (.Q(\FRAME_MATCHER.i [24]), .C(clk16MHz), 
            .D(n13760), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i23  (.Q(\FRAME_MATCHER.i [23]), .C(clk16MHz), 
            .D(n13762), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i22  (.Q(\FRAME_MATCHER.i [22]), .C(clk16MHz), 
            .D(n13764), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i21  (.Q(\FRAME_MATCHER.i [21]), .C(clk16MHz), 
            .D(n13766), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i20  (.Q(\FRAME_MATCHER.i [20]), .C(clk16MHz), 
            .D(n13768), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i19  (.Q(\FRAME_MATCHER.i [19]), .C(clk16MHz), 
            .D(n13770), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i18  (.Q(\FRAME_MATCHER.i [18]), .C(clk16MHz), 
            .D(n13772), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i17  (.Q(\FRAME_MATCHER.i [17]), .C(clk16MHz), 
            .D(n13774), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i16  (.Q(\FRAME_MATCHER.i [16]), .C(clk16MHz), 
            .D(n13776), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i15  (.Q(\FRAME_MATCHER.i [15]), .C(clk16MHz), 
            .D(n13778), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i14  (.Q(\FRAME_MATCHER.i [14]), .C(clk16MHz), 
            .D(n13780), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i13  (.Q(\FRAME_MATCHER.i [13]), .C(clk16MHz), 
            .D(n13782), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i12  (.Q(\FRAME_MATCHER.i [12]), .C(clk16MHz), 
            .D(n13784), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i11  (.Q(\FRAME_MATCHER.i [11]), .C(clk16MHz), 
            .D(n13786), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i10  (.Q(\FRAME_MATCHER.i [10]), .C(clk16MHz), 
            .D(n13788), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1151 (.I0(\data_out_frame[14] [4]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[5] [3]), .I3(\data_out_frame[12] [3]), .O(n31080));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1151.LUT_INIT = 16'h6996;
    SB_DFFR \FRAME_MATCHER.i_1144__i9  (.Q(\FRAME_MATCHER.i [9]), .C(clk16MHz), 
            .D(n13790), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i8  (.Q(\FRAME_MATCHER.i [8]), .C(clk16MHz), 
            .D(n13792), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i7  (.Q(\FRAME_MATCHER.i [7]), .C(clk16MHz), 
            .D(n13794), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i6  (.Q(\FRAME_MATCHER.i [6]), .C(clk16MHz), 
            .D(n13796), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i5  (.Q(\FRAME_MATCHER.i [5]), .C(clk16MHz), 
            .D(n13798), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i4  (.Q(\FRAME_MATCHER.i [4]), .C(clk16MHz), 
            .D(n13800), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i3  (.Q(\FRAME_MATCHER.i [3]), .C(clk16MHz), 
            .D(n13802), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i2  (.Q(\FRAME_MATCHER.i [2]), .C(clk16MHz), 
            .D(n13804), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i1  (.Q(\FRAME_MATCHER.i [1]), .C(clk16MHz), 
            .D(n13806), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1144__i0  (.Q(\FRAME_MATCHER.i [0]), .C(clk16MHz), 
            .D(n13808), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i11119_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [1]), 
            .I3(\data_in[1] [1]), .O(n15311));   // verilog/coms.v(130[12] 305[6])
    defparam i11119_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11762_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[4]), 
            .I3(\data_in_frame[22] [4]), .O(n15954));
    defparam i11762_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1152 (.I0(n28439), .I1(n12583), .I2(GND_net), 
            .I3(GND_net), .O(n31396));
    defparam i1_2_lut_adj_1152.LUT_INIT = 16'h6666;
    SB_LUT4 i11118_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [2]), 
            .I3(\data_in[1] [2]), .O(n15310));   // verilog/coms.v(130[12] 305[6])
    defparam i11118_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1153 (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[12] [2]), .I3(n31080), .O(n11540));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1153.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1154 (.I0(n27524), .I1(n12087), .I2(GND_net), 
            .I3(GND_net), .O(n28231));
    defparam i1_2_lut_adj_1154.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1155 (.I0(\data_out_frame[5] [2]), .I1(n31285), 
            .I2(\data_out_frame[5] [3]), .I3(\data_out_frame[14] [0]), .O(n12515));   // verilog/coms.v(88[17:28])
    defparam i3_4_lut_adj_1155.LUT_INIT = 16'h6996;
    SB_DFF neopxl_color_i0_i22 (.Q(neopxl_color[22]), .C(clk16MHz), .D(n15233));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i30_3_lut (.I0(n28042), .I1(\data_out_frame[5] [4]), .I2(\data_out_frame[5] [3]), 
            .I3(GND_net), .O(n28370));
    defparam i30_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i2_3_lut_adj_1156 (.I0(n11509), .I1(n1668), .I2(\data_out_frame[12] [2]), 
            .I3(GND_net), .O(n31325));   // verilog/coms.v(88[17:63])
    defparam i2_3_lut_adj_1156.LUT_INIT = 16'h9696;
    SB_LUT4 i11765_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[5]), 
            .I3(\data_in_frame[22] [5]), .O(n15957));
    defparam i11765_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF neopxl_color_i0_i10 (.Q(neopxl_color[10]), .C(clk16MHz), .D(n15231));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i21 (.Q(neopxl_color[21]), .C(clk16MHz), .D(n15230));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i11 (.Q(neopxl_color[11]), .C(clk16MHz), .D(n15229));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i12 (.Q(neopxl_color[12]), .C(clk16MHz), .D(n15228));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i23 (.Q(setpoint[23]), .C(clk16MHz), .E(n13430), 
            .D(n2764[23]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i196 (.Q(\data_out_frame[24] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4317), .S(n30815));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11117_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [3]), 
            .I3(\data_in[1] [3]), .O(n15309));   // verilog/coms.v(130[12] 305[6])
    defparam i11117_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFF neopxl_color_i0_i13 (.Q(neopxl_color[13]), .C(clk16MHz), .D(n15213));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1157 (.I0(n31030), .I1(n11919), .I2(n1522), .I3(n31325), 
            .O(n10_adj_4318));   // verilog/coms.v(88[17:63])
    defparam i4_4_lut_adj_1157.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1158 (.I0(\data_out_frame[12] [3]), .I1(n10_adj_4318), 
            .I2(n28370), .I3(GND_net), .O(n27575));   // verilog/coms.v(88[17:63])
    defparam i5_3_lut_adj_1158.LUT_INIT = 16'h6969;
    SB_DFF neopxl_color_i0_i14 (.Q(neopxl_color[14]), .C(clk16MHz), .D(n15212));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i15 (.Q(neopxl_color[15]), .C(clk16MHz), .D(n15208));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i16 (.Q(neopxl_color[16]), .C(clk16MHz), .D(n15207));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i17 (.Q(neopxl_color[17]), .C(clk16MHz), .D(n15206));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i22 (.Q(setpoint[22]), .C(clk16MHz), .E(n13430), 
            .D(n2764[22]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i6 (.Q(setpoint[6]), .C(clk16MHz), .E(n13430), 
            .D(n2764[6]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i197 (.Q(\data_out_frame[24] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4319), .S(n30816));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i198 (.Q(\data_out_frame[24] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4320), .S(n30817));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1159 (.I0(\data_out_frame[12] [5]), .I1(\data_out_frame[12] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n11509));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1159.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i199 (.Q(\data_out_frame[24] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4321), .S(n30818));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11116_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [4]), 
            .I3(\data_in[1] [4]), .O(n15308));   // verilog/coms.v(130[12] 305[6])
    defparam i11116_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i3_4_lut_adj_1160 (.I0(\data_out_frame[14] [6]), .I1(n1516), 
            .I2(n1519), .I3(n11509), .O(n12583));
    defparam i3_4_lut_adj_1160.LUT_INIT = 16'h6996;
    SB_DFFESS data_out_frame_0___i200 (.Q(\data_out_frame[24] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4322), .S(n30819));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i201 (.Q(\data_out_frame[25] [0]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4323), .S(n30820));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i202 (.Q(\data_out_frame[25] [1]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4324), .S(n30821));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_4_lut_4_lut (.I0(n677), .I1(n4452), .I2(n34545), .I3(\FRAME_MATCHER.i_31__N_2382 ), 
            .O(n32449));   // verilog/coms.v(145[4] 147[7])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'ha2a0;
    SB_LUT4 i11774_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[6]), 
            .I3(\data_in_frame[22] [6]), .O(n15966));
    defparam i11774_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i203 (.Q(\data_out_frame[25] [2]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4325), .S(n14715));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i21 (.Q(setpoint[21]), .C(clk16MHz), .E(n13430), 
            .D(n2764[21]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i204 (.Q(\data_out_frame[25] [3]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4326), .S(n14714));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i205 (.Q(\data_out_frame[25] [4]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4327), .S(n30822));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i206 (.Q(\data_out_frame[25] [5]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4328), .S(n30823));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i207 (.Q(\data_out_frame[25] [6]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4329), .S(n30824));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i208 (.Q(\data_out_frame[25] [7]), .C(clk16MHz), 
            .E(n1447), .D(n2_adj_4330), .S(n30763));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i209 (.Q(\data_out_frame[26] [0]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4331), .S(n30746));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i210 (.Q(\data_out_frame[26] [1]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4281), .S(n30747));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i211 (.Q(\data_out_frame[26] [2]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4246), .S(n14707));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i212 (.Q(\data_out_frame[26] [3]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4239), .S(n30748));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i213 (.Q(\data_out_frame[26] [4]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4236), .S(n30749));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i214 (.Q(\data_out_frame[26] [5]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4234), .S(n30750));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11777_3_lut_4_lut (.I0(n8_adj_4207), .I1(n30894), .I2(rx_data[7]), 
            .I3(\data_in_frame[22] [7]), .O(n15969));
    defparam i11777_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESS data_out_frame_0___i215 (.Q(\data_out_frame[26] [6]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4232), .S(n30751));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i216 (.Q(\data_out_frame[26] [7]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4231), .S(n30752));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i20 (.Q(setpoint[20]), .C(clk16MHz), .E(n13430), 
            .D(n2764[20]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1161 (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[4] [4]), 
            .I2(\data_out_frame[4] [1]), .I3(GND_net), .O(n31195));
    defparam i2_3_lut_adj_1161.LUT_INIT = 16'h9696;
    SB_DFFESS data_out_frame_0___i217 (.Q(\data_out_frame[27] [0]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4225), .S(n30753));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i218 (.Q(\data_out_frame[27] [1]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4224), .S(n30754));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i219 (.Q(\data_out_frame[27] [2]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4219), .S(n14699));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i220 (.Q(\data_out_frame[27] [3]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4218), .S(n30755));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i192_2_lut_3_lut (.I0(n677), .I1(n4452), .I2(n680), .I3(GND_net), 
            .O(n743));   // verilog/coms.v(145[4] 147[7])
    defparam i192_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFFESS data_out_frame_0___i221 (.Q(\data_out_frame[27] [4]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4215), .S(n30756));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1162 (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9][6] ), 
            .I2(n9831), .I3(n9835), .O(n12304));
    defparam i2_3_lut_4_lut_adj_1162.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1163 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[13] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4332));   // verilog/coms.v(77[16:27])
    defparam i1_2_lut_adj_1163.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i222 (.Q(\data_out_frame[27] [5]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4333), .S(n30745));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1164 (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[4] [3]), 
            .I2(n31111), .I3(n6_adj_4332), .O(n27524));   // verilog/coms.v(77[16:27])
    defparam i4_4_lut_adj_1164.LUT_INIT = 16'h6996;
    SB_DFFESS data_out_frame_0___i223 (.Q(\data_out_frame[27] [6]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4213), .S(n30757));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1165 (.I0(\data_out_frame[4] [5]), .I1(n31195), 
            .I2(\data_out_frame[13] [2]), .I3(GND_net), .O(n11526));   // verilog/coms.v(79[16:27])
    defparam i2_3_lut_adj_1165.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1166 (.I0(\data_out_frame[13] [5]), .I1(n10989), 
            .I2(GND_net), .I3(GND_net), .O(n12606));
    defparam i1_2_lut_adj_1166.LUT_INIT = 16'h6666;
    SB_DFFESS data_out_frame_0___i224 (.Q(\data_out_frame[27] [7]), .C(clk16MHz), 
            .E(n1447), .D(n3_adj_4211), .S(n30758));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_adj_1167 (.I0(n30955), .I1(n31291), .I2(\data_out_frame[13] [3]), 
            .I3(GND_net), .O(n12087));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_adj_1167.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1168 (.I0(\data_in_frame[6] [2]), .I1(\data_in_frame[6] [3]), 
            .I2(\data_in_frame[6][5] ), .I3(GND_net), .O(n31466));
    defparam i1_2_lut_3_lut_adj_1168.LUT_INIT = 16'h9696;
    SB_DFFESS byte_transmit_counter_i0_i1 (.Q(\byte_transmit_counter[1] ), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4334), .S(n30738));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i2 (.Q(byte_transmit_counter_c[2]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4335), .S(n30739));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i3 (.Q(byte_transmit_counter_c[3]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4336), .S(n30740));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i4 (.Q(byte_transmit_counter_c[4]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4337), .S(n30741));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS tx_transmit_4011 (.Q(r_SM_Main_2__N_3413[0]), .C(clk16MHz), 
            .E(n1447), .D(n1_adj_4209), .S(n14688));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i5 (.Q(byte_transmit_counter_c[5]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4338), .S(n30742));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS LED_4014 (.Q(LED_c), .C(clk16MHz), .E(n1447), .D(n5_adj_4208), 
            .S(n14686));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i6 (.Q(byte_transmit_counter_c[6]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4339), .S(n30743));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i7 (.Q(byte_transmit_counter_c[7]), 
            .C(clk16MHz), .E(n1447), .D(n1_adj_4340), .S(n30737));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i19 (.Q(setpoint[19]), .C(clk16MHz), .E(n13430), 
            .D(n2764[19]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i21 (.Q(\data_in_frame[2] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n30371));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1169 (.I0(n12087), .I1(n12606), .I2(n11526), 
            .I3(n27524), .O(n28351));
    defparam i3_4_lut_adj_1169.LUT_INIT = 16'h6996;
    SB_LUT4 i3_2_lut (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n1519));   // verilog/coms.v(75[16:27])
    defparam i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1170 (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[13] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31418));
    defparam i1_2_lut_adj_1170.LUT_INIT = 16'h6666;
    SB_LUT4 i911_2_lut (.I0(\data_out_frame[13] [7]), .I1(\data_out_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1699));   // verilog/coms.v(74[16:27])
    defparam i911_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1171 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[12] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n31018));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1171.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i20 (.Q(\data_in_frame[2] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n16006));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1172 (.I0(\data_out_frame[14] [3]), .I1(n11516), 
            .I2(GND_net), .I3(GND_net), .O(n31147));
    defparam i1_2_lut_adj_1172.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1173 (.I0(\data_out_frame[12] [1]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [5]), .I3(n9079), .O(n27617));
    defparam i1_4_lut_adj_1173.LUT_INIT = 16'h6996;
    SB_LUT4 i11107_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [5]), 
            .I3(\data_in[1] [5]), .O(n15299));   // verilog/coms.v(130[12] 305[6])
    defparam i11107_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11104_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [7]), 
            .I3(\data_in[2] [7]), .O(n15296));   // verilog/coms.v(130[12] 305[6])
    defparam i11104_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1174 (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[5] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30937));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1174.LUT_INIT = 16'h6666;
    SB_LUT4 i19_2_lut (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[4] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n1522));   // verilog/coms.v(100[12:26])
    defparam i19_2_lut.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i113 (.Q(\data_in_frame[14] [0]), .C(clk16MHz), 
           .D(n15588));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i192 (.Q(\data_in_frame[23] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15997));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i191 (.Q(\data_in_frame[23] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15994));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1175 (.I0(\data_out_frame[12] [1]), .I1(\data_out_frame[12] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n31030));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1175.LUT_INIT = 16'h6666;
    SB_LUT4 i11103_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [6]), 
            .I3(\data_in[2] [6]), .O(n15295));   // verilog/coms.v(130[12] 305[6])
    defparam i11103_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1176 (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[4] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n31111));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_adj_1176.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i190 (.Q(\data_in_frame[23] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15991));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i19 (.Q(\data_in_frame[2] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15987));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i189 (.Q(\data_in_frame[23] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15984));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1177 (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[4] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31243));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1177.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i188 (.Q(\data_in_frame[23] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15981));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1178 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n11490));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_adj_1178.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i187 (.Q(\data_in_frame[23] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15978));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i186 (.Q(\data_in_frame[23] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15975));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1179 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[4] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n31291));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1179.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1180 (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[5] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n38));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1180.LUT_INIT = 16'h6666;
    SB_DFFESS driver_enable_4015 (.Q(DE_c), .C(clk16MHz), .E(n1447), .D(n13413), 
            .S(n14679));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i185 (.Q(\data_in_frame[23] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15972));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i184 (.Q(\data_in_frame[22] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15969));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i183 (.Q(\data_in_frame[22] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15966));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1181 (.I0(\data_out_frame[5] [4]), .I1(n9079), 
            .I2(GND_net), .I3(GND_net), .O(n31131));
    defparam i1_2_lut_adj_1181.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_1182 (.I0(n31243), .I1(n31288), .I2(\data_out_frame[5] [5]), 
            .I3(n31111), .O(n12_adj_4341));   // verilog/coms.v(88[17:28])
    defparam i5_4_lut_adj_1182.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1183 (.I0(n38), .I1(n12_adj_4341), .I2(n31291), 
            .I3(n11490), .O(n28042));   // verilog/coms.v(88[17:28])
    defparam i6_4_lut_adj_1183.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1184 (.I0(\data_in_frame[22] [0]), .I1(\data_in_frame[21] [7]), 
            .I2(n12236), .I3(n6_adj_4235), .O(n32465));   // verilog/coms.v(88[17:28])
    defparam i4_4_lut_adj_1184.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i182 (.Q(\data_in_frame[22] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15957));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1185 (.I0(n11686), .I1(n11010), .I2(Kp_23__N_948), 
            .I3(\data_in_frame[9][0] ), .O(n31069));
    defparam i1_4_lut_adj_1185.LUT_INIT = 16'h6996;
    SB_LUT4 i11102_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [5]), 
            .I3(\data_in[2] [5]), .O(n15294));   // verilog/coms.v(130[12] 305[6])
    defparam i11102_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i181 (.Q(\data_in_frame[22] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15954));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11101_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [4]), 
            .I3(\data_in[2] [4]), .O(n15293));   // verilog/coms.v(130[12] 305[6])
    defparam i11101_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFE data_in_frame_0___i180 (.Q(\data_in_frame[22] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15951));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i22 (.Q(\data_in_frame[2] [5]), .C(clk16MHz), 
           .D(n15137));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1186 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[4] [3]), .I3(n6_adj_4342), .O(n32526));
    defparam i4_4_lut_adj_1186.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1187 (.I0(n32526), .I1(n28042), .I2(n31131), 
            .I3(\data_out_frame[5] [2]), .O(n31294));
    defparam i1_4_lut_adj_1187.LUT_INIT = 16'h9669;
    SB_DFFE data_in_frame_0___i179 (.Q(\data_in_frame[22] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15947));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i178 (.Q(\data_in_frame[22] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15944));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i880_2_lut (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[12] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1668));   // verilog/coms.v(88[17:28])
    defparam i880_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i177 (.Q(\data_in_frame[22] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15941));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1188 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[4] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30955));
    defparam i1_2_lut_adj_1188.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i176 (.Q(\data_in_frame[21] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15938));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1189 (.I0(\data_out_frame[14] [2]), .I1(n31285), 
            .I2(n31378), .I3(\data_out_frame[5] [4]), .O(n31053));
    defparam i1_4_lut_adj_1189.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i175 (.Q(\data_in_frame[21] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15935));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1190 (.I0(\data_out_frame[14] [4]), .I1(n31053), 
            .I2(GND_net), .I3(GND_net), .O(n27643));
    defparam i1_2_lut_adj_1190.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i174 (.Q(\data_in_frame[21] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15928));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i114 (.Q(\data_in_frame[14] [1]), .C(clk16MHz), 
           .D(n15591));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11208_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[1]), 
            .I3(\data_in_frame[10] [1]), .O(n15400));
    defparam i11208_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i1 (.Q(\data_in_frame[0]_c [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15921));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i23 (.Q(\data_in_frame[2] [6]), .C(clk16MHz), 
           .D(n15141));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11211_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[2]), 
            .I3(\data_in_frame[10] [2]), .O(n15403));
    defparam i11211_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i18 (.Q(\data_in_frame[2] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15917));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i173 (.Q(\data_in_frame[21] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15914));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i23 (.Q(neopxl_color[23]), .C(clk16MHz), .D(n15913));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i172 (.Q(\data_in_frame[21] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15909));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i171 (.Q(\data_in_frame[21] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15906));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i18 (.Q(setpoint[18]), .C(clk16MHz), .E(n13430), 
            .D(n2764[18]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11214_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[3]), 
            .I3(\data_in_frame[10] [3]), .O(n15406));
    defparam i11214_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i17 (.Q(\data_in_frame[2] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15902));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i24 (.Q(\data_in_frame[2] [7]), .C(clk16MHz), 
           .D(n15146));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11217_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[4]), 
            .I3(\data_in_frame[10] [4]), .O(n15409));
    defparam i11217_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i25 (.Q(\data_in_frame[3] [0]), .C(clk16MHz), 
           .D(n15149));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i170 (.Q(\data_in_frame[21] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15896));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i26 (.Q(\data_in_frame[3][1] ), .C(clk16MHz), 
           .D(n12_adj_4343));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1191 (.I0(n30955), .I1(n1668), .I2(n31294), .I3(n6_adj_4344), 
            .O(n28439));
    defparam i4_4_lut_adj_1191.LUT_INIT = 16'h6996;
    SB_LUT4 i11205_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[0]), 
            .I3(\data_in_frame[10] [0]), .O(n15397));
    defparam i11205_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i27 (.Q(\data_in_frame[3] [2]), .C(clk16MHz), 
           .D(n15155));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i28 (.Q(\data_in_frame[3] [3]), .C(clk16MHz), 
           .D(n15158));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i29 (.Q(\data_in_frame[3][4] ), .C(clk16MHz), 
           .D(n15161));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i30 (.Q(\data_in_frame[3] [5]), .C(clk16MHz), 
           .D(n15164));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11222_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[5]), 
            .I3(\data_in_frame[10] [5]), .O(n15414));
    defparam i11222_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i31 (.Q(\data_in_frame[3] [6]), .C(clk16MHz), 
           .D(n15170));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1192 (.I0(\data_out_frame[5] [3]), .I1(\data_out_frame[12] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31201));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1192.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i32 (.Q(\data_in_frame[3] [7]), .C(clk16MHz), 
           .D(n15175));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i33 (.Q(\data_in_frame[4] [0]), .C(clk16MHz), 
           .D(n15180));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i34 (.Q(\data_in_frame[4] [1]), .C(clk16MHz), 
           .D(n15183));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i35 (.Q(\data_in_frame[4] [2]), .C(clk16MHz), 
           .D(n30429));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i115 (.Q(\data_in_frame[14] [2]), .C(clk16MHz), 
           .D(n15594));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i116 (.Q(\data_in_frame[14] [3]), .C(clk16MHz), 
           .D(n15597));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i117 (.Q(\data_in_frame[14] [4]), .C(clk16MHz), 
           .D(n15600));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i118 (.Q(\data_in_frame[14] [5]), .C(clk16MHz), 
           .D(n15603));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i119 (.Q(\data_in_frame[14] [6]), .C(clk16MHz), 
           .D(n15606));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i120 (.Q(\data_in_frame[14] [7]), .C(clk16MHz), 
           .D(n15609));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i121 (.Q(\data_in_frame[15] [0]), .C(clk16MHz), 
           .D(n15612));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i122 (.Q(\data_in_frame[15] [1]), .C(clk16MHz), 
           .D(n15615));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i123 (.Q(\data_in_frame[15] [2]), .C(clk16MHz), 
           .D(n15618));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i124 (.Q(\data_in_frame[15] [3]), .C(clk16MHz), 
           .D(n15621));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i169 (.Q(\data_in_frame[21] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15869));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i168 (.Q(\data_in_frame[20] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15866));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i167 (.Q(\data_in_frame[20] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15863));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11225_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[6]), 
            .I3(\data_in_frame[10] [6]), .O(n15417));
    defparam i11225_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE data_in_frame_0___i16 (.Q(\data_in_frame[1] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15860));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i12_2_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n1516));   // verilog/coms.v(100[12:26])
    defparam i12_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i166 (.Q(\data_in_frame[20] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15857));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i165 (.Q(\data_in_frame[20] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15854));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i36 (.Q(\data_in_frame[4] [3]), .C(clk16MHz), 
           .D(n15189));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i125 (.Q(\data_in_frame[15] [4]), .C(clk16MHz), 
           .D(n15624));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i126 (.Q(\data_in_frame[15] [5]), .C(clk16MHz), 
           .D(n15627));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i127 (.Q(\data_in_frame[15] [6]), .C(clk16MHz), 
           .D(n15630));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i128 (.Q(\data_in_frame[15] [7]), .C(clk16MHz), 
           .D(n15633));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i129 (.Q(\data_in_frame[16][0] ), .C(clk16MHz), 
           .D(n15636));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i130 (.Q(\data_in_frame[16] [1]), .C(clk16MHz), 
           .D(n15846));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i131 (.Q(\data_in_frame[16][2] ), .C(clk16MHz), 
           .D(n15642));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i132 (.Q(\data_in_frame[16][3] ), .C(clk16MHz), 
           .D(n15645));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i133 (.Q(\data_in_frame[16][4] ), .C(clk16MHz), 
           .D(n15648));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i134 (.Q(\data_in_frame[16][5] ), .C(clk16MHz), 
           .D(n15651));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i135 (.Q(\data_in_frame[16][6] ), .C(clk16MHz), 
           .D(n15654));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i136 (.Q(\data_in_frame[16][7] ), .C(clk16MHz), 
           .D(n15657));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1193 (.I0(\data_out_frame[14] [5]), .I1(n1516), 
            .I2(n12071), .I3(\data_out_frame[12] [4]), .O(n45_adj_4345));   // verilog/coms.v(78[16:43])
    defparam i3_4_lut_adj_1193.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i137 (.Q(\data_in_frame[17][0] ), .C(clk16MHz), 
           .D(n15660));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i138 (.Q(\data_in_frame[17][1] ), .C(clk16MHz), 
           .D(n15663));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i139 (.Q(\data_in_frame[17] [2]), .C(clk16MHz), 
           .D(n15666));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i140 (.Q(\data_in_frame[17] [3]), .C(clk16MHz), 
           .D(n30339));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i141 (.Q(\data_in_frame[17] [4]), .C(clk16MHz), 
           .D(n15672));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i142 (.Q(\data_in_frame[17] [5]), .C(clk16MHz), 
           .D(n15675));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11228_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30884), .I2(rx_data[7]), 
            .I3(\data_in_frame[10] [7]), .O(n15420));
    defparam i11228_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i143 (.Q(\data_in_frame[17]_c [6]), .C(clk16MHz), 
           .D(n30333));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i1 (.Q(control_mode[1]), .C(clk16MHz), .D(n15830));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1194 (.I0(n27434), .I1(n45_adj_4345), .I2(GND_net), 
            .I3(GND_net), .O(n28227));
    defparam i1_2_lut_adj_1194.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1195 (.I0(Kp_23__N_948), .I1(\data_in_frame[10] [7]), 
            .I2(\data_in_frame[11] [1]), .I3(GND_net), .O(n34371));
    defparam i1_2_lut_3_lut_adj_1195.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i144 (.Q(\data_in_frame[17]_c [7]), .C(clk16MHz), 
           .D(n15681));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i145 (.Q(\data_in_frame[18] [0]), .C(clk16MHz), 
           .D(n15684));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i146 (.Q(\data_in_frame[18] [1]), .C(clk16MHz), 
           .D(n15687));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i147 (.Q(\data_in_frame[18] [2]), .C(clk16MHz), 
           .D(n15690));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i148 (.Q(\data_in_frame[18] [3]), .C(clk16MHz), 
           .D(n15693));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i149 (.Q(\data_in_frame[18] [4]), .C(clk16MHz), 
           .D(n15696));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i150 (.Q(\data_in_frame[18] [5]), .C(clk16MHz), 
           .D(n15699));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i151 (.Q(\data_in_frame[18] [6]), .C(clk16MHz), 
           .D(n15702));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i152 (.Q(\data_in_frame[18] [7]), .C(clk16MHz), 
           .D(n15705));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i153 (.Q(\data_in_frame[19]_c [0]), .C(clk16MHz), 
           .D(n30365));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i154 (.Q(\data_in_frame[19][1] ), .C(clk16MHz), 
           .D(n30377));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i155 (.Q(\data_in_frame[19][2] ), .C(clk16MHz), 
           .D(n15714));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i156 (.Q(\data_in_frame[19][3] ), .C(clk16MHz), 
           .D(n15717));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i157 (.Q(\data_in_frame[19][4] ), .C(clk16MHz), 
           .D(n15720));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i158 (.Q(\data_in_frame[19][5] ), .C(clk16MHz), 
           .D(n15723));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i159 (.Q(\data_in_frame[19] [6]), .C(clk16MHz), 
           .D(n15726));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i160 (.Q(\data_in_frame[19]_c [7]), .C(clk16MHz), 
           .D(n15729));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i161 (.Q(\data_in_frame[20] [0]), .C(clk16MHz), 
           .D(n15732));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i2 (.Q(control_mode[2]), .C(clk16MHz), .D(n15779));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i162 (.Q(\data_in_frame[20] [1]), .C(clk16MHz), 
           .D(n15742));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i163 (.Q(\data_in_frame[20] [2]), .C(clk16MHz), 
           .D(n15745));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i14 (.Q(\data_in_frame[1] [5]), .C(clk16MHz), 
           .D(n15750));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10_4_lut_adj_1196 (.I0(n28351), .I1(n30937), .I2(n31018), 
            .I3(\data_out_frame[14] [5]), .O(n24_adj_4346));
    defparam i10_4_lut_adj_1196.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i164 (.Q(\data_in_frame[20] [3]), .C(clk16MHz), 
           .D(n15754));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i15 (.Q(\data_in_frame[1] [6]), .C(clk16MHz), 
           .D(n15760));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11100_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [3]), 
            .I3(\data_in[2] [3]), .O(n15292));   // verilog/coms.v(130[12] 305[6])
    defparam i11100_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i8_4_lut_adj_1197 (.I0(n31378), .I1(n30942), .I2(n28439), 
            .I3(n27643), .O(n22_adj_4347));
    defparam i8_4_lut_adj_1197.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i37 (.Q(\data_in_frame[4] [4]), .C(clk16MHz), 
           .D(n15192));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i3 (.Q(control_mode[3]), .C(clk16MHz), .D(n15764));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10983_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[7]), 
            .I3(\data_in_frame[3] [7]), .O(n15175));
    defparam i10983_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i38 (.Q(\data_in_frame[4] [5]), .C(clk16MHz), 
           .D(n15195));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i12_4_lut_adj_1198 (.I0(n31131), .I1(n24_adj_4346), .I2(n18_adj_4349), 
            .I3(n32526), .O(n26_adj_4350));
    defparam i12_4_lut_adj_1198.LUT_INIT = 16'h9669;
    SB_LUT4 i4_4_lut_adj_1199 (.I0(n27575), .I1(\data_out_frame[5] [7]), 
            .I2(n31147), .I3(n31288), .O(n10_adj_4351));
    defparam i4_4_lut_adj_1199.LUT_INIT = 16'h6996;
    SB_DFF control_mode_i0_i4 (.Q(control_mode[4]), .C(clk16MHz), .D(n15757));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i5 (.Q(control_mode[5]), .C(clk16MHz), .D(n15753));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i6 (.Q(control_mode[6]), .C(clk16MHz), .D(n15749));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i7 (.Q(control_mode[7]), .C(clk16MHz), .D(n15748));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i39 (.Q(\data_in_frame[4] [6]), .C(clk16MHz), 
           .D(n15200));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i13_4_lut_adj_1200 (.I0(\data_out_frame[14] [1]), .I1(n26_adj_4350), 
            .I2(n22_adj_4347), .I3(n1699), .O(n32757));
    defparam i13_4_lut_adj_1200.LUT_INIT = 16'h6996;
    SB_LUT4 i33289_4_lut (.I0(n32757), .I1(n27567), .I2(n10_adj_4351), 
            .I3(n28370), .O(n37903));
    defparam i33289_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i10978_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[6]), 
            .I3(\data_in_frame[3] [6]), .O(n15170));
    defparam i10978_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1201 (.I0(n28231), .I1(n45_adj_4345), .I2(n12606), 
            .I3(n37903), .O(n28266));   // verilog/coms.v(100[12:26])
    defparam i3_4_lut_adj_1201.LUT_INIT = 16'h9669;
    SB_LUT4 i10972_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[5]), 
            .I3(\data_in_frame[3] [5]), .O(n15164));
    defparam i10972_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i40 (.Q(\data_in_frame[4] [7]), .C(clk16MHz), 
           .D(n15203));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i41 (.Q(\data_in_frame[5] [0]), .C(clk16MHz), 
           .D(n15209));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i33448_1_lut_2_lut_3_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(\FRAME_MATCHER.i_31__N_2380 ), .I3(GND_net), .O(n38062));
    defparam i33448_1_lut_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i10969_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[4]), 
            .I3(\data_in_frame[3][4] ), .O(n15161));
    defparam i10969_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i42 (.Q(\data_in_frame[5] [1]), .C(clk16MHz), 
           .D(n15214));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i43 (.Q(\data_in_frame[5] [2]), .C(clk16MHz), 
           .D(n15217));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i44 (.Q(\data_in_frame[5] [3]), .C(clk16MHz), 
           .D(n15736));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10966_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[3]), 
            .I3(\data_in_frame[3] [3]), .O(n15158));
    defparam i10966_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_frame_0___i45 (.Q(\data_in_frame[5] [4]), .C(clk16MHz), 
           .D(n15223));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11099_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [2]), 
            .I3(\data_in[2] [2]), .O(n15291));   // verilog/coms.v(130[12] 305[6])
    defparam i11099_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_DFFER setpoint_i0_i17 (.Q(setpoint[17]), .C(clk16MHz), .E(n13430), 
            .D(n2764[17]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10963_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[2]), 
            .I3(\data_in_frame[3] [2]), .O(n15155));
    defparam i10963_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1202 (.I0(\data_out_frame[23] [6]), .I1(\data_out_frame[23] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n31215));
    defparam i1_2_lut_adj_1202.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1203 (.I0(n27442), .I1(n32850), .I2(GND_net), 
            .I3(GND_net), .O(n31381));
    defparam i1_2_lut_adj_1203.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_3_lut_adj_1204 (.I0(n32675), .I1(\data_in_frame[19] [6]), 
            .I2(n28238), .I3(GND_net), .O(n12236));
    defparam i1_2_lut_3_lut_adj_1204.LUT_INIT = 16'h6969;
    SB_LUT4 i20_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(\data_in_frame[3][1] ), 
            .I3(rx_data[1]), .O(n12_adj_4343));
    defparam i20_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFER setpoint_i0_i16 (.Q(setpoint[16]), .C(clk16MHz), .E(n13430), 
            .D(n2764[16]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10957_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30899), .I2(rx_data[0]), 
            .I3(\data_in_frame[3] [0]), .O(n15149));
    defparam i10957_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_1205 (.I0(\data_in_frame[13] [5]), .I1(n11784), 
            .I2(n11803), .I3(GND_net), .O(n11817));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_3_lut_adj_1205.LUT_INIT = 16'h9696;
    SB_LUT4 i11011_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[4] [7]), .O(n15203));
    defparam i11011_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11008_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[4] [6]), .O(n15200));
    defparam i11008_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11098_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [1]), 
            .I3(\data_in[2] [1]), .O(n15290));   // verilog/coms.v(130[12] 305[6])
    defparam i11098_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i3_4_lut_adj_1206 (.I0(n12269), .I1(\data_out_frame[25] [7]), 
            .I2(n31198), .I3(n31381), .O(n8_adj_4352));
    defparam i3_4_lut_adj_1206.LUT_INIT = 16'h9669;
    SB_LUT4 select_438_Select_208_i3_4_lut (.I0(\data_out_frame[25] [6]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n8_adj_4352), .I3(n31215), 
            .O(n3_adj_4331));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_208_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i11097_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [0]), 
            .I3(\data_in[2] [0]), .O(n15289));   // verilog/coms.v(130[12] 305[6])
    defparam i11097_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_438_Select_207_i2_4_lut (.I0(\data_out_frame[25] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[7]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4330));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_207_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11003_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[4] [5]), .O(n15195));
    defparam i11003_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11096_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [7]), 
            .I3(\data_in[1] [7]), .O(n15288));   // verilog/coms.v(130[12] 305[6])
    defparam i11096_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11000_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[4] [4]), .O(n15192));
    defparam i11000_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1207 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[25] [6]), 
            .I2(neopxl_color[6]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4329));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1207.LUT_INIT = 16'ha088;
    SB_LUT4 i11095_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [6]), 
            .I3(\data_in[1] [6]), .O(n15287));   // verilog/coms.v(130[12] 305[6])
    defparam i11095_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_438_Select_205_i2_4_lut (.I0(\data_out_frame[25] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[5]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4328));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_205_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_3_lut_4_lut_adj_1208 (.I0(Kp_23__N_640), .I1(n31212), .I2(n31230), 
            .I3(\data_in_frame[6][4] ), .O(Kp_23__N_842));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_4_lut_adj_1208.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_204_i2_4_lut (.I0(\data_out_frame[25] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[4]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4327));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_204_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_1209 (.I0(\data_in_frame[23] [7]), .I1(\data_in_frame[21] [6]), 
            .I2(n28273), .I3(n31356), .O(n32379));
    defparam i2_4_lut_adj_1209.LUT_INIT = 16'h9669;
    SB_LUT4 i11092_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in[3] [0]), .O(n15284));   // verilog/coms.v(130[12] 305[6])
    defparam i11092_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1210 (.I0(reset), .I1(n1980), .I2(n161), 
            .I3(n10_adj_4353), .O(n30884));
    defparam i1_2_lut_3_lut_4_lut_adj_1210.LUT_INIT = 16'hffbf;
    SB_LUT4 i11091_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in[3] [1]), .O(n15283));   // verilog/coms.v(130[12] 305[6])
    defparam i11091_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11090_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in[3] [2]), .O(n15282));   // verilog/coms.v(130[12] 305[6])
    defparam i11090_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_4_lut_adj_1211 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[25] [3]), 
            .I2(neopxl_color[3]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4326));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1211.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_4_lut_adj_1212 (.I0(\data_in_frame[10] [4]), .I1(n12262), 
            .I2(\data_in_frame[8] [2]), .I3(n31227), .O(n11859));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_4_lut_adj_1212.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1213 (.I0(n12262), .I1(\data_in_frame[8] [2]), 
            .I2(n31227), .I3(GND_net), .O(n31050));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_adj_1213.LUT_INIT = 16'h9696;
    SB_LUT4 i10997_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[4] [3]), .O(n15189));
    defparam i10997_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11089_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in[3] [3]), .O(n15281));   // verilog/coms.v(130[12] 305[6])
    defparam i11089_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_4_lut_adj_1214 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[25] [2]), 
            .I2(neopxl_color[2]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4325));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1214.LUT_INIT = 16'ha088;
    SB_LUT4 i11088_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in[3] [4]), .O(n15280));   // verilog/coms.v(130[12] 305[6])
    defparam i11088_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_438_Select_201_i2_4_lut (.I0(\data_out_frame[25] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[1]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4324));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_201_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_4_lut_adj_1215 (.I0(n31086), .I1(\data_in_frame[14] [7]), 
            .I2(n11803), .I3(n11817), .O(n31128));
    defparam i1_2_lut_4_lut_adj_1215.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1216 (.I0(n12116), .I1(n31433), .I2(n34313), 
            .I3(Kp_23__N_861), .O(n34319));
    defparam i1_4_lut_adj_1216.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1217 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[25] [0]), 
            .I2(neopxl_color[0]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4323));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1217.LUT_INIT = 16'ha088;
    SB_LUT4 i11_4_lut_4_lut_adj_1218 (.I0(n14190), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[4] [2]), .O(n30429));
    defparam i11_4_lut_4_lut_adj_1218.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1219 (.I0(n32465), .I1(\data_in_frame[22] [5]), 
            .I2(n34345), .I3(n31009), .O(n34349));
    defparam i1_4_lut_adj_1219.LUT_INIT = 16'h8020;
    SB_DFF neopxl_color_i0_i18 (.Q(neopxl_color[18]), .C(clk16MHz), .D(n15179));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1220 (.I0(n12556), .I1(n31337), .I2(n31050), 
            .I3(n34319), .O(n11010));
    defparam i1_4_lut_adj_1220.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1221 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13] [4]), 
            .I2(n27623), .I3(n11784), .O(n31260));
    defparam i1_2_lut_4_lut_adj_1221.LUT_INIT = 16'h9669;
    SB_LUT4 select_438_Select_199_i2_4_lut (.I0(\data_out_frame[24] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[15]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4322));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_199_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1222 (.I0(n28262), .I1(n34349), .I2(n8_adj_4354), 
            .I3(\data_in_frame[17]_c [6]), .O(n34351));
    defparam i1_4_lut_adj_1222.LUT_INIT = 16'h8448;
    SB_LUT4 i10991_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[4] [1]), .O(n15183));
    defparam i10991_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11087_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in[3] [5]), .O(n15279));   // verilog/coms.v(130[12] 305[6])
    defparam i11087_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_438_Select_198_i2_4_lut (.I0(\data_out_frame[24] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[14]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4321));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_198_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11086_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in[3] [6]), .O(n15278));   // verilog/coms.v(130[12] 305[6])
    defparam i11086_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_2_lut_adj_1223 (.I0(\data_in_frame[8][7] ), .I1(Kp_23__N_861), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4217));
    defparam i2_2_lut_adj_1223.LUT_INIT = 16'h6666;
    SB_LUT4 i10988_3_lut_4_lut (.I0(n14190), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[4] [0]), .O(n15180));
    defparam i10988_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31949_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36151));   // verilog/coms.v(158[12:15])
    defparam i31949_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_438_Select_197_i2_4_lut (.I0(\data_out_frame[24] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[13]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4320));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_197_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_196_i2_4_lut (.I0(\data_out_frame[24] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[12]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4319));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_196_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11076_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in[3] [7]), .O(n15268));   // verilog/coms.v(130[12] 305[6])
    defparam i11076_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_3_lut (.I0(LED_N_3276), .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2381 ), 
            .I3(GND_net), .O(n8682));   // verilog/coms.v(130[12] 305[6])
    defparam i2_3_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i31822_2_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36152));   // verilog/coms.v(158[12:15])
    defparam i31822_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11127_3_lut_4_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [1]), 
            .I3(\data_in[0] [1]), .O(n15319));   // verilog/coms.v(130[12] 305[6])
    defparam i11127_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i31824_2_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36156));   // verilog/coms.v(158[12:15])
    defparam i31824_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i33280_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[1] [1]), .I2(n7), 
            .I3(GND_net), .O(n30361));   // verilog/coms.v(94[13:20])
    defparam i33280_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1224 (.I0(n31092), .I1(n32379), .I2(n31356), 
            .I3(\data_in_frame[23] [6]), .O(n34353));
    defparam i1_4_lut_adj_1224.LUT_INIT = 16'h2112;
    SB_LUT4 i1_3_lut_adj_1225 (.I0(\data_in_frame[23] [5]), .I1(n31092), 
            .I2(n31256), .I3(GND_net), .O(n31410));
    defparam i1_3_lut_adj_1225.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1226 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[24] [3]), 
            .I2(neopxl_color[11]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4317));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1226.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1227 (.I0(\data_in_frame[5] [5]), .I1(\data_in_frame[1] [3]), 
            .I2(n31015), .I3(n12182), .O(n12220));
    defparam i1_2_lut_3_lut_4_lut_adj_1227.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1228 (.I0(n11773), .I1(n12262), .I2(\data_in_frame[10] [5]), 
            .I3(GND_net), .O(n30968));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_3_lut_adj_1228.LUT_INIT = 16'h9696;
    SB_DFF data_in_0___i1 (.Q(\data_in[0] [0]), .C(clk16MHz), .D(n15174));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1229 (.I0(\data_in_frame[12] [7]), .I1(n27623), 
            .I2(n11773), .I3(GND_net), .O(n31300));
    defparam i1_2_lut_3_lut_adj_1229.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1230 (.I0(n11686), .I1(n11773), .I2(\data_in_frame[15] [2]), 
            .I3(\data_in_frame[12] [6]), .O(n31421));
    defparam i2_3_lut_4_lut_adj_1230.LUT_INIT = 16'h6996;
    SB_LUT4 i31827_2_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36159));   // verilog/coms.v(158[12:15])
    defparam i31827_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31834_2_lut (.I0(\FRAME_MATCHER.i [5]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36160));   // verilog/coms.v(158[12:15])
    defparam i31834_2_lut.LUT_INIT = 16'h2222;
    SB_DFF control_mode_i0_i0 (.Q(control_mode[0]), .C(clk16MHz), .D(n15168));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i0 (.Q(neopxl_color[0]), .C(clk16MHz), .D(n15167));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i19 (.Q(neopxl_color[19]), .C(clk16MHz), .D(n15145));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1231 (.I0(\data_in_frame[8][6] ), .I1(\data_in_frame[11] [0]), 
            .I2(\data_in_frame[10] [7]), .I3(Kp_23__N_842), .O(n31427));   // verilog/coms.v(74[16:27])
    defparam i2_3_lut_4_lut_adj_1231.LUT_INIT = 16'h6996;
    SB_LUT4 i31783_2_lut (.I0(\FRAME_MATCHER.i [6]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36163));   // verilog/coms.v(158[12:15])
    defparam i31783_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31845_2_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36164));   // verilog/coms.v(158[12:15])
    defparam i31845_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31846_2_lut (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36165));   // verilog/coms.v(158[12:15])
    defparam i31846_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31847_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36166));   // verilog/coms.v(158[12:15])
    defparam i31847_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31813_2_lut (.I0(\FRAME_MATCHER.i [10]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36171));   // verilog/coms.v(158[12:15])
    defparam i31813_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31850_2_lut (.I0(\FRAME_MATCHER.i [11]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36172));   // verilog/coms.v(158[12:15])
    defparam i31850_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31854_2_lut (.I0(\FRAME_MATCHER.i [12]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36173));   // verilog/coms.v(158[12:15])
    defparam i31854_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_adj_1232 (.I0(\data_in_frame[14] [6]), .I1(\data_in_frame[17][0] ), 
            .I2(\data_in_frame[16][6] ), .I3(n28445), .O(n6_adj_4356));
    defparam i1_2_lut_4_lut_adj_1232.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1233 (.I0(n10_adj_4216), .I1(\FRAME_MATCHER.i_31__N_2382 ), 
            .I2(n11345), .I3(n161), .O(n30905));
    defparam i1_2_lut_3_lut_4_lut_adj_1233.LUT_INIT = 16'habff;
    SB_LUT4 i31859_2_lut (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36176));   // verilog/coms.v(158[12:15])
    defparam i31859_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_4_lut_adj_1234 (.I0(\data_in_frame[14] [4]), .I1(n31142), 
            .I2(n12304), .I3(\data_in_frame[10] [0]), .O(n31463));
    defparam i2_3_lut_4_lut_adj_1234.LUT_INIT = 16'h6996;
    SB_LUT4 i31860_2_lut (.I0(\FRAME_MATCHER.i [14]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36177));   // verilog/coms.v(158[12:15])
    defparam i31860_2_lut.LUT_INIT = 16'h2222;
    SB_DFF neopxl_color_i0_i20 (.Q(neopxl_color[20]), .C(clk16MHz), .D(n15144));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1235 (.I0(n33017), .I1(n28412), .I2(\data_in_frame[21] [4]), 
            .I3(\data_in_frame[19][2] ), .O(n31092));
    defparam i2_3_lut_4_lut_adj_1235.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1236 (.I0(\data_in_frame[19][2] ), .I1(n32921), 
            .I2(\data_in_frame[21] [3]), .I3(n33017), .O(n31256));
    defparam i2_3_lut_4_lut_adj_1236.LUT_INIT = 16'h6996;
    SB_LUT4 i32151_2_lut (.I0(\FRAME_MATCHER.i [15]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36185));   // verilog/coms.v(158[12:15])
    defparam i32151_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31868_2_lut (.I0(\FRAME_MATCHER.i [16]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36186));   // verilog/coms.v(158[12:15])
    defparam i31868_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_adj_1237 (.I0(n27623), .I1(n10_adj_4230), .I2(\data_in_frame[15] [5]), 
            .I3(\data_in_frame[18] [1]), .O(n31181));
    defparam i1_2_lut_4_lut_adj_1237.LUT_INIT = 16'h6996;
    SB_DFFS \FRAME_MATCHER.state_FSM_i9  (.Q(\FRAME_MATCHER.i_31__N_2375 ), 
            .C(clk16MHz), .D(n38239), .S(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 i9630_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(n133[0]), .I2(n1980), 
            .I3(\FRAME_MATCHER.i_31__N_2375 ), .O(n13808));   // verilog/coms.v(158[12:15])
    defparam i9630_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_2_lut_3_lut_adj_1238 (.I0(\data_in_frame[17]_c [6]), .I1(\data_in_frame[17]_c [7]), 
            .I2(n28421), .I3(GND_net), .O(n31272));
    defparam i1_2_lut_3_lut_adj_1238.LUT_INIT = 16'h6969;
    SB_LUT4 i31869_2_lut (.I0(\FRAME_MATCHER.i [17]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36187));   // verilog/coms.v(158[12:15])
    defparam i31869_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31870_2_lut (.I0(\FRAME_MATCHER.i [18]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36188));   // verilog/coms.v(158[12:15])
    defparam i31870_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_438_Select_194_i2_4_lut (.I0(\data_out_frame[24] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[10]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4316));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_194_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_193_i2_4_lut (.I0(\data_out_frame[24] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[9]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4315));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_193_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_192_i2_4_lut (.I0(\data_out_frame[24] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[8]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4314));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_192_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut_adj_1239 (.I0(n12220), .I1(n31105), .I2(\data_in_frame[7] [7]), 
            .I3(GND_net), .O(n28168));
    defparam i1_2_lut_3_lut_adj_1239.LUT_INIT = 16'h9696;
    SB_LUT4 select_438_Select_191_i2_4_lut (.I0(\data_out_frame[23] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[23]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4313));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_191_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31875_2_lut (.I0(\FRAME_MATCHER.i [19]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36189));   // verilog/coms.v(158[12:15])
    defparam i31875_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_1240 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[23] [6]), 
            .I2(neopxl_color[22]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4312));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1240.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_1241 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[23] [5]), 
            .I2(neopxl_color[21]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4311));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1241.LUT_INIT = 16'ha088;
    SB_LUT4 select_438_Select_188_i2_4_lut (.I0(\data_out_frame[23] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[20]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4310));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_188_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_187_i2_4_lut (.I0(\data_out_frame[23] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[19]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4309));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_187_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_186_i2_4_lut (.I0(\data_out_frame[23] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[18]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4308));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_186_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut_adj_1242 (.I0(\data_in_frame[5] [6]), .I1(\data_in_frame[3] [6]), 
            .I2(\data_in_frame[1] [4]), .I3(GND_net), .O(n6_adj_4357));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_3_lut_adj_1242.LUT_INIT = 16'h9696;
    SB_LUT4 i31876_2_lut (.I0(\FRAME_MATCHER.i [20]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36190));   // verilog/coms.v(158[12:15])
    defparam i31876_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_438_Select_185_i2_4_lut (.I0(\data_out_frame[23] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[17]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4307));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_185_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_184_i2_4_lut (.I0(\data_out_frame[23] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(neopxl_color[16]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4306));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_184_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_119_i2_4_lut (.I0(\data_out_frame[14] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[7]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4305));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_119_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_118_i2_4_lut (.I0(\data_out_frame[14] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[6]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4304));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_118_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1243 (.I0(reset), .I1(n1980), .I2(n161), 
            .I3(n10_adj_4216), .O(n30899));
    defparam i1_2_lut_3_lut_4_lut_adj_1243.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_4_lut_adj_1244 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[14] [5]), 
            .I2(setpoint[5]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4303));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1244.LUT_INIT = 16'ha088;
    SB_LUT4 i11152_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[7]), 
            .I3(\data_in_frame[7] [7]), .O(n15344));
    defparam i11152_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFR \FRAME_MATCHER.state_FSM_i8  (.Q(\FRAME_MATCHER.i_31__N_2376 ), 
            .C(clk16MHz), .D(n13416), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i7  (.Q(\FRAME_MATCHER.i_31__N_2377 ), 
            .C(clk16MHz), .D(n774), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i6  (.Q(\FRAME_MATCHER.state[3] ), .C(clk16MHz), 
            .D(n775), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i5  (.Q(\FRAME_MATCHER.i_31__N_2379 ), 
            .C(clk16MHz), .D(n7076), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i4  (.Q(\FRAME_MATCHER.i_31__N_2380 ), 
            .C(clk16MHz), .D(n30207), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i3  (.Q(\FRAME_MATCHER.i_31__N_2381 ), 
            .C(clk16MHz), .D(n786), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i2  (.Q(\FRAME_MATCHER.i_31__N_2382 ), 
            .C(clk16MHz), .D(n12796), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 select_438_Select_116_i2_4_lut (.I0(\data_out_frame[14] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[4]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4302));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_116_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_115_i2_4_lut (.I0(\data_out_frame[14] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[3]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4301));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_115_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i28_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(\data_in_frame[7] [6]), 
            .I3(rx_data[6]), .O(n20_adj_4202));
    defparam i28_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 select_438_Select_114_i2_4_lut (.I0(\data_out_frame[14] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[2]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4300));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_114_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1245 (.I0(\data_in_frame[21] [1]), .I1(n31442), 
            .I2(\data_in_frame[23] [3]), .I3(n31405), .O(n33031));
    defparam i1_4_lut_adj_1245.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_1246 (.I0(n31083), .I1(n31442), .I2(\data_in_frame[23] [1]), 
            .I3(GND_net), .O(n32933));
    defparam i1_3_lut_adj_1246.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1247 (.I0(n28398), .I1(n31121), .I2(\data_in_frame[19]_c [7]), 
            .I3(\data_in_frame[22] [3]), .O(n34411));
    defparam i1_4_lut_adj_1247.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1248 (.I0(\data_in_frame[17]_c [6]), .I1(\data_in_frame[20] [0]), 
            .I2(\data_in_frame[20] [1]), .I3(\data_in_frame[22] [2]), .O(n34227));
    defparam i1_4_lut_adj_1248.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1249 (.I0(n28300), .I1(n28275), .I2(n30964), 
            .I3(\data_in_frame[22] [7]), .O(n34433));
    defparam i1_4_lut_adj_1249.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_113_i2_4_lut (.I0(\data_out_frame[14] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[1]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4299));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_113_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1250 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[14] [0]), 
            .I2(setpoint[0]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4298));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1250.LUT_INIT = 16'ha088;
    SB_LUT4 add_670_9_lut (.I0(n30735), .I1(byte_transmit_counter_c[7]), 
            .I2(GND_net), .I3(n26550), .O(n30737)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_438_Select_111_i2_4_lut (.I0(\data_out_frame[13] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[15]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4297));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_111_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFESS byte_transmit_counter_i0_i0 (.Q(byte_transmit_counter[0]), .C(clk16MHz), 
            .E(n1447), .D(n1_adj_4214), .S(n30736));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_438_Select_110_i2_4_lut (.I0(\data_out_frame[13] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[14]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4296));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_110_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i11146_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[5]), 
            .I3(\data_in_frame[7][5] ), .O(n15338));
    defparam i11146_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 add_670_8_lut (.I0(n30735), .I1(byte_transmit_counter_c[6]), 
            .I2(GND_net), .I3(n26549), .O(n30743)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_1251 (.I0(n28310), .I1(n32903), .I2(n28255), 
            .I3(n34433), .O(n34439));
    defparam i1_4_lut_adj_1251.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1252 (.I0(n33031), .I1(n31410), .I2(n34353), 
            .I3(n34351), .O(n34359));
    defparam i1_4_lut_adj_1252.LUT_INIT = 16'h8000;
    SB_LUT4 i31877_2_lut (.I0(\FRAME_MATCHER.i [21]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36191));   // verilog/coms.v(158[12:15])
    defparam i31877_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_1253 (.I0(\data_in_frame[21] [1]), .I1(n32933), 
            .I2(n28277), .I3(\data_in_frame[23] [2]), .O(n34361));
    defparam i1_4_lut_adj_1253.LUT_INIT = 16'h8448;
    SB_LUT4 i1_4_lut_adj_1254 (.I0(n31272), .I1(n31235), .I2(n31181), 
            .I3(n34411), .O(n33048));
    defparam i1_4_lut_adj_1254.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_109_i2_4_lut (.I0(\data_out_frame[13] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[13]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4295));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_109_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1255 (.I0(n12574), .I1(n28277), .I2(n31384), 
            .I3(n34439), .O(n32609));
    defparam i1_4_lut_adj_1255.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_1256 (.I0(n31083), .I1(n28277), .I2(\data_in_frame[23] [0]), 
            .I3(GND_net), .O(n32298));
    defparam i1_3_lut_adj_1256.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i1 (.Q(setpoint[1]), .C(clk16MHz), .E(n13430), 
            .D(n2764[1]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY add_670_8 (.CI(n26549), .I0(byte_transmit_counter_c[6]), .I1(GND_net), 
            .CO(n26550));
    SB_LUT4 select_438_Select_108_i2_4_lut (.I0(\data_out_frame[13] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[12]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4294));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_108_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1257 (.I0(n28262), .I1(n31115), .I2(n28398), 
            .I3(n34227), .O(n34233));
    defparam i1_4_lut_adj_1257.LUT_INIT = 16'h9669;
    SB_LUT4 i11143_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[4]), 
            .I3(\data_in_frame[7] [4]), .O(n15335));
    defparam i11143_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11140_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[3]), 
            .I3(\data_in_frame[7] [3]), .O(n15332));
    defparam i11140_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_438_Select_107_i2_4_lut (.I0(\data_out_frame[13] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[11]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4293));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_107_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1258 (.I0(n32609), .I1(n33048), .I2(n34361), 
            .I3(n34359), .O(n34367));
    defparam i1_4_lut_adj_1258.LUT_INIT = 16'h8000;
    SB_LUT4 i31878_2_lut (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36192));   // verilog/coms.v(158[12:15])
    defparam i31878_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_670_7_lut (.I0(n30735), .I1(byte_transmit_counter_c[5]), 
            .I2(GND_net), .I3(n26548), .O(n30742)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_670_7 (.CI(n26548), .I0(byte_transmit_counter_c[5]), .I1(GND_net), 
            .CO(n26549));
    SB_LUT4 add_670_6_lut (.I0(n30735), .I1(byte_transmit_counter_c[4]), 
            .I2(GND_net), .I3(n26547), .O(n30741)) /* synthesis syn_instantiated=1 */ ;
    defparam add_670_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i11137_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[2]), 
            .I3(\data_in_frame[7] [2]), .O(n15329));
    defparam i11137_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1259 (.I0(\data_in_frame[13] [1]), .I1(\data_in_frame[13] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n31393));
    defparam i1_2_lut_adj_1259.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1260 (.I0(\data_in_frame[14] [6]), .I1(\data_in_frame[15] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31346));
    defparam i1_2_lut_adj_1260.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_106_i2_4_lut (.I0(\data_out_frame[13] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[10]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4292));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_106_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_105_i2_4_lut (.I0(\data_out_frame[13] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[9]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4291));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_105_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i4_4_lut_adj_1261 (.I0(\data_in_frame[5] [7]), .I1(n11741), 
            .I2(n31021), .I3(n6_adj_4357), .O(n12650));   // verilog/coms.v(99[12:25])
    defparam i4_4_lut_adj_1261.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1262 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[13] [0]), 
            .I2(setpoint[8]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4290));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1262.LUT_INIT = 16'ha088;
    SB_LUT4 select_438_Select_103_i2_4_lut (.I0(\data_out_frame[12] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[23]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4289));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_103_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_102_i2_4_lut (.I0(\data_out_frame[12] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[22]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4288));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_102_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1263 (.I0(n27820), .I1(\data_in_frame[9] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n31138));
    defparam i1_2_lut_adj_1263.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1264 (.I0(n32435), .I1(n27473), .I2(GND_net), 
            .I3(GND_net), .O(n11131));
    defparam i1_2_lut_adj_1264.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_1265 (.I0(\data_in_frame[3] [6]), .I1(\data_in_frame[1] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n31313));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1265.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_101_i2_4_lut (.I0(\data_out_frame[12] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[21]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4287));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_101_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_100_i2_4_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2377 ), .I2(setpoint[20]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4286));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_100_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_99_i2_4_lut (.I0(\data_out_frame[12] [3]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(setpoint[19]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4285));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_99_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_98_i2_4_lut (.I0(\data_out_frame[12] [2]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(setpoint[18]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4284));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_98_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_3_lut_adj_1266 (.I0(n12306), .I1(\data_in_frame[9][2] ), 
            .I2(n12128), .I3(GND_net), .O(n31096));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_adj_1266.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_1267 (.I0(n27440), .I1(Kp_23__N_861), .I2(\data_in_frame[12] [0]), 
            .I3(\data_in_frame[14] [1]), .O(n18_adj_4358));
    defparam i7_4_lut_adj_1267.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1268 (.I0(\data_in_frame[11] [5]), .I1(n18_adj_4358), 
            .I2(n11592), .I3(n31096), .O(n20_adj_4359));
    defparam i9_4_lut_adj_1268.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_97_i2_4_lut (.I0(\data_out_frame[12] [1]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(setpoint[17]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4283));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_97_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 equal_98_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(GND_net), .O(n8_adj_4360));   // verilog/coms.v(157[7:23])
    defparam equal_98_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_1269 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[12] [0]), 
            .I2(setpoint[16]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4282));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1269.LUT_INIT = 16'ha088;
    SB_LUT4 i10_4_lut_adj_1270 (.I0(n27489), .I1(n20_adj_4359), .I2(n16_adj_4361), 
            .I3(\data_in_frame[13] [7]), .O(n32435));
    defparam i10_4_lut_adj_1270.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1271 (.I0(\data_in_frame[16] [1]), .I1(\data_in_frame[16][2] ), 
            .I2(GND_net), .I3(GND_net), .O(n31269));
    defparam i1_2_lut_adj_1271.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_47_i2_4_lut (.I0(\data_out_frame[5] [7]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[7]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4280));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_47_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i3_4_lut_adj_1272 (.I0(\data_in_frame[11] [5]), .I1(n31086), 
            .I2(n12116), .I3(n27628), .O(n28290));
    defparam i3_4_lut_adj_1272.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_1273 (.I0(\data_in_frame[15] [3]), .I1(n28258), 
            .I2(\data_in_frame[17] [4]), .I3(GND_net), .O(n28238));
    defparam i1_3_lut_adj_1273.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_1274 (.I0(\data_in_frame[6][7] ), .I1(\data_in_frame[4] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n34445));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_adj_1274.LUT_INIT = 16'h6666;
    SB_LUT4 i11134_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[1]), 
            .I3(\data_in_frame[7] [1]), .O(n15326));
    defparam i11134_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_438_Select_46_i2_4_lut (.I0(\data_out_frame[5] [6]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[6]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4279));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_46_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1275 (.I0(n31027), .I1(n30983), .I2(n34445), 
            .I3(\data_in_frame[6][4] ), .O(n31307));   // verilog/coms.v(80[16:43])
    defparam i1_4_lut_adj_1275.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_45_i2_4_lut (.I0(\data_out_frame[5] [5]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[5]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4278));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_45_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31879_2_lut (.I0(\FRAME_MATCHER.i [23]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36193));   // verilog/coms.v(158[12:15])
    defparam i31879_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1276 (.I0(n11634), .I1(n12165), .I2(GND_net), 
            .I3(GND_net), .O(n30983));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1276.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_44_i2_4_lut (.I0(\data_out_frame[5] [4]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[4]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4277));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_44_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1277 (.I0(\data_in_frame[13] [7]), .I1(n31399), 
            .I2(GND_net), .I3(GND_net), .O(n30980));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1277.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1278 (.I0(n11797), .I1(n30980), .I2(n11784), 
            .I3(GND_net), .O(n27637));   // verilog/coms.v(88[17:63])
    defparam i2_3_lut_adj_1278.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1279 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\data_out_frame[5] [3]), 
            .I2(control_mode[3]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4276));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1279.LUT_INIT = 16'ha088;
    SB_LUT4 select_438_Select_42_i2_4_lut (.I0(\data_out_frame[5] [2]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[2]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4275));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_42_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i4_4_lut_adj_1280 (.I0(n7_adj_4237), .I1(n30921), .I2(\data_in_frame[13] [1]), 
            .I3(n28225), .O(n31399));
    defparam i4_4_lut_adj_1280.LUT_INIT = 16'h9669;
    SB_LUT4 i6_4_lut_adj_1281 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[16] [1]), 
            .I2(n31240), .I3(\data_in_frame[14] [0]), .O(n16_adj_4362));
    defparam i6_4_lut_adj_1281.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1282 (.I0(\data_in_frame[16][0] ), .I1(n31066), 
            .I2(n31399), .I3(\data_in_frame[13] [5]), .O(n17_adj_4363));
    defparam i7_4_lut_adj_1282.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1283 (.I0(n17_adj_4363), .I1(\data_in_frame[13] [6]), 
            .I2(n16_adj_4362), .I3(n27637), .O(n32671));
    defparam i9_4_lut_adj_1283.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_adj_1284 (.I0(\data_in_frame[18] [4]), .I1(n31352), 
            .I2(n31188), .I3(GND_net), .O(n31442));
    defparam i1_3_lut_adj_1284.LUT_INIT = 16'h6969;
    SB_LUT4 i14_2_lut (.I0(\data_in_frame[17]_c [6]), .I1(\data_in_frame[17]_c [7]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1257));   // verilog/coms.v(99[12:25])
    defparam i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_41_i2_4_lut (.I0(\data_out_frame[5] [1]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[1]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4274));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_41_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31880_2_lut (.I0(\FRAME_MATCHER.i [24]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36194));   // verilog/coms.v(158[12:15])
    defparam i31880_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i8_2_lut (.I0(\data_in_frame[18] [4]), .I1(\data_in_frame[18] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n12239));   // verilog/coms.v(99[12:25])
    defparam i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31881_2_lut (.I0(\FRAME_MATCHER.i [25]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36195));   // verilog/coms.v(158[12:15])
    defparam i31881_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_adj_1285 (.I0(\data_in_frame[20] [0]), .I1(\data_in_frame[19]_c [7]), 
            .I2(\data_in_frame[19][5] ), .I3(GND_net), .O(n30964));
    defparam i2_3_lut_adj_1285.LUT_INIT = 16'h9696;
    SB_LUT4 select_438_Select_40_i2_4_lut (.I0(\data_out_frame[5] [0]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(control_mode[0]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .O(n2_adj_4273));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_40_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1286 (.I0(n30964), .I1(n28310), .I2(GND_net), 
            .I3(GND_net), .O(n31297));
    defparam i1_2_lut_adj_1286.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_1287 (.I0(\data_in_frame[19][2] ), .I1(n32921), 
            .I2(GND_net), .I3(GND_net), .O(n28275));
    defparam i1_2_lut_adj_1287.LUT_INIT = 16'h9999;
    SB_LUT4 i31882_2_lut (.I0(\FRAME_MATCHER.i [26]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36196));   // verilog/coms.v(158[12:15])
    defparam i31882_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_438_Select_39_i2_4_lut (.I0(\data_out_frame[4] [7]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[7]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4272));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_39_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1288 (.I0(\data_in_frame[16][6] ), .I1(n28445), 
            .I2(GND_net), .I3(GND_net), .O(n31448));
    defparam i1_2_lut_adj_1288.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1289 (.I0(\data_in_frame[12] [2]), .I1(n31463), 
            .I2(GND_net), .I3(GND_net), .O(n31369));
    defparam i1_2_lut_adj_1289.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_38_i2_4_lut (.I0(\data_out_frame[4] [6]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[6]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4271));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_38_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_37_i2_4_lut (.I0(\data_out_frame[4] [5]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[5]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4270));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_37_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i4_4_lut_adj_1290 (.I0(\data_in_frame[17][1] ), .I1(n31343), 
            .I2(n31369), .I3(n6_adj_4356), .O(n33017));
    defparam i4_4_lut_adj_1290.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1291 (.I0(n33017), .I1(n28412), .I2(GND_net), 
            .I3(GND_net), .O(n28429));
    defparam i1_2_lut_adj_1291.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_36_i2_4_lut (.I0(\data_out_frame[4] [4]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[4]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4269));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_36_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_35_i2_4_lut (.I0(\data_out_frame[4] [3]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[3]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4268));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_35_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_34_i2_4_lut (.I0(\data_out_frame[4] [2]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[2]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4267));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_34_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_2_lut_adj_1292 (.I0(\data_in_frame[8] [4]), .I1(\data_in_frame[4] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4364));   // verilog/coms.v(81[16:27])
    defparam i2_2_lut_adj_1292.LUT_INIT = 16'h6666;
    SB_LUT4 i11131_3_lut_4_lut (.I0(n10_adj_4216), .I1(n30891), .I2(rx_data[0]), 
            .I3(\data_in_frame[7] [0]), .O(n15323));
    defparam i11131_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1293 (.I0(n34367), .I1(n34233), .I2(n32298), 
            .I3(n31235), .O(Kp_23__N_480));
    defparam i1_4_lut_adj_1293.LUT_INIT = 16'h0802;
    SB_LUT4 i31883_2_lut (.I0(\FRAME_MATCHER.i [27]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36197));   // verilog/coms.v(158[12:15])
    defparam i31883_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6_4_lut_adj_1294 (.I0(\data_in_frame[4] [0]), .I1(\data_in_frame[0]_c [0]), 
            .I2(n31313), .I3(\data_in_frame[3] [7]), .O(n14_adj_4365));   // verilog/coms.v(81[16:27])
    defparam i6_4_lut_adj_1294.LUT_INIT = 16'h6996;
    SB_LUT4 i11562_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[3]), 
            .I3(\data_in_frame[20] [3]), .O(n15754));
    defparam i11562_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1295 (.I0(\data_in_frame[20] [7]), .I1(n28335), 
            .I2(\data_in_frame[18] [7]), .I3(GND_net), .O(n31188));
    defparam i2_3_lut_adj_1295.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_1296 (.I0(\data_in_frame[18] [7]), .I1(\data_in_frame[18] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n11734));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1296.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1297 (.I0(\data_in_frame[13] [2]), .I1(\data_in_frame[13] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30921));
    defparam i1_2_lut_adj_1297.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_33_i2_4_lut (.I0(\data_out_frame[4] [1]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[1]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4266));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_33_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_438_Select_32_i2_4_lut (.I0(\data_out_frame[4] [0]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(ID[0]), .I3(\FRAME_MATCHER.state_31__N_2480 [3]), .O(n2_adj_4265));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_32_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1298 (.I0(reset), .I1(n1980), .I2(n161), 
            .I3(n10_adj_4205), .O(n30894));
    defparam i1_2_lut_3_lut_4_lut_adj_1298.LUT_INIT = 16'hffbf;
    SB_LUT4 select_438_Select_31_i2_3_lut (.I0(\data_out_frame[3][7] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4264));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_31_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i31886_2_lut (.I0(\FRAME_MATCHER.i [28]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36198));   // verilog/coms.v(158[12:15])
    defparam i31886_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31874_2_lut (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36200));   // verilog/coms.v(158[12:15])
    defparam i31874_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1299 (.I0(n31427), .I1(n30921), .I2(GND_net), 
            .I3(GND_net), .O(n34461));
    defparam i1_2_lut_adj_1299.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1300 (.I0(n11859), .I1(n31300), .I2(n31421), 
            .I3(n34461), .O(n28258));
    defparam i1_4_lut_adj_1300.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1301 (.I0(\data_in_frame[12] [6]), .I1(\data_in_frame[12] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4366));
    defparam i1_2_lut_adj_1301.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1302 (.I0(\data_in_frame[15] [0]), .I1(\data_in_frame[14] [7]), 
            .I2(n30968), .I3(n6_adj_4366), .O(n31062));
    defparam i4_4_lut_adj_1302.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_30_i2_3_lut (.I0(\data_out_frame[3][6] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4263));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_30_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut_adj_1303 (.I0(\data_in_frame[12] [5]), .I1(n31062), 
            .I2(n12665), .I3(\data_in_frame[14] [5]), .O(n31343));
    defparam i3_4_lut_adj_1303.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1304 (.I0(\data_in_frame[12] [3]), .I1(\data_in_frame[16][7] ), 
            .I2(GND_net), .I3(GND_net), .O(n31436));
    defparam i1_2_lut_adj_1304.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_28_i2_3_lut (.I0(\data_out_frame[3][4] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4262));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_28_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut_adj_1305 (.I0(\data_in_frame[6][4] ), .I1(n31390), 
            .I2(n31212), .I3(\data_in_frame[8][5] ), .O(n11686));   // verilog/coms.v(76[16:42])
    defparam i3_4_lut_adj_1305.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1306 (.I0(n11686), .I1(n11773), .I2(GND_net), 
            .I3(GND_net), .O(Kp_23__N_935));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1306.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1307 (.I0(n27489), .I1(n27491), .I2(Kp_23__N_935), 
            .I3(\data_in_frame[8][7] ), .O(n31337));
    defparam i1_4_lut_adj_1307.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1308 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n30894), .O(n30895));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1308.LUT_INIT = 16'hffdf;
    SB_LUT4 select_438_Select_27_i2_3_lut (.I0(\data_out_frame[3][3] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4261));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_27_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_adj_1309 (.I0(\data_in_frame[10] [6]), .I1(\data_in_frame[12] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n31460));
    defparam i1_2_lut_adj_1309.LUT_INIT = 16'h6666;
    SB_LUT4 i11553_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[2]), 
            .I3(\data_in_frame[20] [2]), .O(n15745));
    defparam i11553_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_438_Select_25_i2_3_lut (.I0(\data_out_frame[3][1] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4259));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_25_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_adj_1310 (.I0(n12220), .I1(n31105), .I2(GND_net), 
            .I3(GND_net), .O(n27621));
    defparam i1_2_lut_adj_1310.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1311 (.I0(\data_in_frame[10] [7]), .I1(\data_in_frame[11] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31099));
    defparam i1_2_lut_adj_1311.LUT_INIT = 16'h6666;
    SB_LUT4 i31888_2_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36201));   // verilog/coms.v(158[12:15])
    defparam i31888_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1312 (.I0(n12262), .I1(\data_in_frame[10] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n31469));
    defparam i1_2_lut_adj_1312.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_1313 (.I0(\data_in_frame[0]_c [3]), .I1(\data_in_frame[2] [5]), 
            .I2(\data_in_frame[2] [6]), .I3(\data_in_frame[0]_c [5]), .O(n30960));   // verilog/coms.v(169[9:87])
    defparam i1_3_lut_4_lut_adj_1313.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1314 (.I0(\data_in_frame[0]_c [3]), .I1(\data_in_frame[2] [5]), 
            .I2(\data_in_frame[0]_c [4]), .I3(GND_net), .O(n6_adj_4367));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_3_lut_adj_1314.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1315 (.I0(\data_in_frame[4] [0]), .I1(\data_in_frame[3] [7]), 
            .I2(\data_in_frame[1] [6]), .I3(GND_net), .O(n31451));   // verilog/coms.v(81[16:27])
    defparam i2_3_lut_adj_1315.LUT_INIT = 16'h9696;
    SB_LUT4 i11550_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[1]), 
            .I3(\data_in_frame[20] [1]), .O(n15742));
    defparam i11550_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1316 (.I0(\data_in_frame[8][6] ), .I1(\data_in_frame[11] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n31118));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_adj_1316.LUT_INIT = 16'h6666;
    SB_LUT4 i31890_2_lut (.I0(\FRAME_MATCHER.i [31]), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n36202));   // verilog/coms.v(158[12:15])
    defparam i31890_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i23_4_lut (.I0(\data_in_frame[10] [4]), .I1(n12220), .I2(\data_in_frame[10] [1]), 
            .I3(\data_in_frame[11] [2]), .O(n54));
    defparam i23_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i21_4_lut (.I0(n31359), .I1(n31118), .I2(n31331), .I3(n31024), 
            .O(n52));
    defparam i21_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i15920_3_lut (.I0(neopxl_color[3]), .I1(\data_in_frame[6] [3]), 
            .I2(n8682), .I3(GND_net), .O(n15251));
    defparam i15920_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11540_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[0]), 
            .I3(\data_in_frame[20] [0]), .O(n15732));
    defparam i11540_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i22_4_lut (.I0(n31000), .I1(\data_in_frame[3] [6]), .I2(n30915), 
            .I3(\data_in_frame[10] [2]), .O(n53));
    defparam i22_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i20_4_lut (.I0(\data_in_frame[11] [7]), .I1(n31466), .I2(\data_in_frame[12] [5]), 
            .I3(n31451), .O(n51));
    defparam i20_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1317 (.I0(\data_in_frame[5] [5]), .I1(n11741), 
            .I2(\data_in_frame[5] [4]), .I3(n31037), .O(n9676));
    defparam i2_3_lut_4_lut_adj_1317.LUT_INIT = 16'h6996;
    SB_LUT4 i11662_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[4]), 
            .I3(\data_in_frame[20] [4]), .O(n15854));
    defparam i11662_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i15922_3_lut (.I0(neopxl_color[2]), .I1(\data_in_frame[6] [2]), 
            .I2(n8682), .I3(GND_net), .O(n15253));
    defparam i15922_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_4_lut_adj_1318 (.I0(n31206), .I1(n31430), .I2(\data_in_frame[9][5] ), 
            .I3(n31015), .O(n48));
    defparam i17_4_lut_adj_1318.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut_adj_1319 (.I0(n31099), .I1(n27621), .I2(n30918), 
            .I3(\data_in_frame[7] [3]), .O(n50_adj_4368));
    defparam i19_4_lut_adj_1319.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut_adj_1320 (.I0(\data_in_frame[12] [6]), .I1(n31460), 
            .I2(\data_in_frame[11] [4]), .I3(n31337), .O(n49));
    defparam i18_4_lut_adj_1320.LUT_INIT = 16'h6996;
    SB_LUT4 i29_4_lut (.I0(n51), .I1(n53), .I2(n52), .I3(n54), .O(n60));
    defparam i29_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i24_4_lut_adj_1321 (.I0(\data_in_frame[12] [2]), .I1(n48), .I2(n31469), 
            .I3(n27613), .O(n55));
    defparam i24_4_lut_adj_1321.LUT_INIT = 16'h6996;
    SB_LUT4 i30_4_lut (.I0(n55), .I1(n60), .I2(n49), .I3(n50_adj_4368), 
            .O(n28225));
    defparam i30_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11665_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[5]), 
            .I3(\data_in_frame[20] [5]), .O(n15857));
    defparam i11665_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1322 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n11797));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1322.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1323 (.I0(n28225), .I1(Kp_23__N_1139), .I2(GND_net), 
            .I3(GND_net), .O(n28450));
    defparam i1_2_lut_adj_1323.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1324 (.I0(n31128), .I1(n28450), .I2(\data_in_frame[17] [3]), 
            .I3(n31260), .O(n10_adj_4369));
    defparam i4_4_lut_adj_1324.LUT_INIT = 16'h9669;
    SB_LUT4 i5_3_lut_adj_1325 (.I0(n28258), .I1(n10_adj_4369), .I2(\data_in_frame[15] [1]), 
            .I3(GND_net), .O(n27696));
    defparam i5_3_lut_adj_1325.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1326 (.I0(n32819), .I1(\data_in_frame[19][4] ), 
            .I2(n27696), .I3(GND_net), .O(n27604));
    defparam i2_3_lut_adj_1326.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_1327 (.I0(\data_in_frame[19][3] ), .I1(n31436), 
            .I2(n31343), .I3(n31108), .O(n28412));
    defparam i1_4_lut_adj_1327.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1328 (.I0(\data_in_frame[8] [2]), .I1(n31227), 
            .I2(GND_net), .I3(GND_net), .O(n4));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1328.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1329 (.I0(n31281), .I1(\data_in_frame[2] [0]), 
            .I2(\data_in_frame[6] [2]), .I3(n31412), .O(n10_adj_4370));   // verilog/coms.v(81[16:27])
    defparam i4_4_lut_adj_1329.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1330 (.I0(n30930), .I1(n10_adj_4370), .I2(\data_in_frame[6][1] ), 
            .I3(GND_net), .O(n12262));   // verilog/coms.v(81[16:27])
    defparam i5_3_lut_adj_1330.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1331 (.I0(\data_in_frame[12] [5]), .I1(n12313), 
            .I2(GND_net), .I3(GND_net), .O(n31006));
    defparam i1_2_lut_adj_1331.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut_4_lut_adj_1332 (.I0(\data_in_frame[21] [7]), .I1(\data_in_frame[22] [1]), 
            .I2(n30964), .I3(n28310), .O(n8_adj_4354));
    defparam i3_3_lut_4_lut_adj_1332.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1333 (.I0(n9676), .I1(\data_in_frame[7] [6]), 
            .I2(Kp_23__N_842), .I3(GND_net), .O(n34313));
    defparam i1_2_lut_3_lut_adj_1333.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1334 (.I0(\data_in_frame[12] [4]), .I1(\data_in_frame[12] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31000));
    defparam i1_2_lut_adj_1334.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1335 (.I0(\data_in_frame[14] [5]), .I1(n12313), 
            .I2(n31000), .I3(n12665), .O(n27477));
    defparam i3_4_lut_adj_1335.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1336 (.I0(\data_in_frame[14] [6]), .I1(\data_in_frame[17][0] ), 
            .I2(GND_net), .I3(GND_net), .O(n31349));
    defparam i1_2_lut_adj_1336.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1337 (.I0(n27477), .I1(n28445), .I2(GND_net), 
            .I3(GND_net), .O(n31439));
    defparam i1_2_lut_adj_1337.LUT_INIT = 16'h9999;
    SB_LUT4 i5_4_lut_adj_1338 (.I0(n31439), .I1(\data_in_frame[16][7] ), 
            .I2(\data_in_frame[18] [7]), .I3(n31349), .O(n12_adj_4371));
    defparam i5_4_lut_adj_1338.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1339 (.I0(n31034), .I1(n12_adj_4371), .I2(n31071), 
            .I3(\data_in_frame[19][1] ), .O(n32921));
    defparam i6_4_lut_adj_1339.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1340 (.I0(n27483), .I1(n31168), .I2(n11734), 
            .I3(GND_net), .O(n28335));
    defparam i2_3_lut_adj_1340.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1341 (.I0(n28412), .I1(\data_in_frame[21] [5]), 
            .I2(n27604), .I3(GND_net), .O(n31356));
    defparam i2_3_lut_adj_1341.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_1342 (.I0(\data_in_frame[21] [2]), .I1(n28335), 
            .I2(\data_in_frame[19]_c [0]), .I3(n32921), .O(n31405));
    defparam i1_4_lut_adj_1342.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1343 (.I0(n28266), .I1(n31374), .I2(n27434), 
            .I3(n45_adj_4345), .O(n27442));
    defparam i2_3_lut_4_lut_adj_1343.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1344 (.I0(\data_in_frame[7] [0]), .I1(n6_adj_4367), 
            .I2(\data_in_frame[6][6] ), .I3(GND_net), .O(n31206));   // verilog/coms.v(77[16:43])
    defparam i2_3_lut_adj_1344.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1345 (.I0(n12162), .I1(n31387), .I2(n31206), 
            .I3(\data_in_frame[6][7] ), .O(n12128));   // verilog/coms.v(77[16:43])
    defparam i3_4_lut_adj_1345.LUT_INIT = 16'h6996;
    SB_LUT4 i4_2_lut_3_lut (.I0(\data_out_frame[14] [6]), .I1(\data_out_frame[12] [7]), 
            .I2(\data_out_frame[13] [1]), .I3(GND_net), .O(n18_adj_4349));
    defparam i4_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1346 (.I0(\data_in_frame[8][6] ), .I1(n12128), 
            .I2(GND_net), .I3(GND_net), .O(n31433));
    defparam i1_2_lut_adj_1346.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1347 (.I0(\data_in_frame[9][0] ), .I1(Kp_23__N_842), 
            .I2(\data_in_frame[9][1] ), .I3(GND_net), .O(n11592));
    defparam i2_3_lut_adj_1347.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1348 (.I0(n31160), .I1(\data_in_frame[15] [6]), 
            .I2(n11784), .I3(GND_net), .O(n31240));
    defparam i2_3_lut_adj_1348.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1349 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [5]), 
            .I2(n30942), .I3(\data_out_frame[12] [5]), .O(n27434));
    defparam i2_3_lut_4_lut_adj_1349.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1350 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[5] [3]), 
            .I2(\data_out_frame[12] [3]), .I3(GND_net), .O(n12071));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_adj_1350.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_1351 (.I0(n31012), .I1(n14_adj_4365), .I2(n10_adj_4364), 
            .I3(n11738), .O(n11773));   // verilog/coms.v(81[16:27])
    defparam i7_4_lut_adj_1351.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1352 (.I0(n11817), .I1(n31240), .I2(\data_in_frame[13] [4]), 
            .I3(\data_in_frame[18] [0]), .O(n12133));
    defparam i3_4_lut_adj_1352.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1353 (.I0(\data_in_frame[20] [2]), .I1(n12133), 
            .I2(\data_in_frame[20] [1]), .I3(GND_net), .O(n31121));
    defparam i2_3_lut_adj_1353.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1354 (.I0(\data_in_frame[20] [4]), .I1(n31181), 
            .I2(\data_in_frame[20] [3]), .I3(GND_net), .O(n32903));
    defparam i2_3_lut_adj_1354.LUT_INIT = 16'h9696;
    SB_LUT4 i1_3_lut_adj_1355 (.I0(n32903), .I1(\data_in_frame[18] [3]), 
            .I2(n28398), .I3(GND_net), .O(n31009));
    defparam i1_3_lut_adj_1355.LUT_INIT = 16'h9696;
    SB_LUT4 i5_4_lut_adj_1356 (.I0(\data_in_frame[19]_c [0]), .I1(n31121), 
            .I2(\data_in_frame[17]_c [7]), .I3(n12236), .O(n12_adj_4372));
    defparam i5_4_lut_adj_1356.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1357 (.I0(n27619), .I1(n12_adj_4372), .I2(n31188), 
            .I3(n28429), .O(n31384));
    defparam i6_4_lut_adj_1357.LUT_INIT = 16'h9669;
    SB_LUT4 i11671_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[6]), 
            .I3(\data_in_frame[20] [6]), .O(n15863));
    defparam i11671_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_4_lut_adj_1358 (.I0(\data_in_frame[21] [1]), .I1(\data_in_frame[21] [6]), 
            .I2(n31405), .I3(n31356), .O(n6_adj_4373));
    defparam i2_4_lut_adj_1358.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1359 (.I0(\data_in_frame[21] [7]), .I1(n6_adj_4373), 
            .I2(n31092), .I3(n31256), .O(n12574));
    defparam i3_4_lut_adj_1359.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1360 (.I0(\data_in_frame[4] [7]), .I1(n30960), 
            .I2(GND_net), .I3(GND_net), .O(n12476));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_adj_1360.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1361 (.I0(\data_in_frame[7] [3]), .I1(n30945), 
            .I2(n12476), .I3(n12024), .O(n27489));   // verilog/coms.v(88[17:70])
    defparam i3_4_lut_adj_1361.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1362 (.I0(\data_in_frame[9][3] ), .I1(\data_in_frame[9][4] ), 
            .I2(n27489), .I3(GND_net), .O(n27628));
    defparam i2_3_lut_adj_1362.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1363 (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[12] [1]), 
            .I2(\data_out_frame[12] [0]), .I3(GND_net), .O(n31378));
    defparam i1_2_lut_3_lut_adj_1363.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1364 (.I0(\data_out_frame[14] [7]), .I1(\data_out_frame[5] [6]), 
            .I2(\data_out_frame[4] [2]), .I3(\data_out_frame[12] [6]), .O(n30942));
    defparam i2_3_lut_4_lut_adj_1364.LUT_INIT = 16'h6996;
    SB_LUT4 i14_2_lut_adj_1365 (.I0(\data_in_frame[6] [2]), .I1(\data_in_frame[6] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n11738));   // verilog/coms.v(99[12:25])
    defparam i14_2_lut_adj_1365.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1366 (.I0(\data_out_frame[13] [0]), .I1(\data_out_frame[5] [6]), 
            .I2(\data_out_frame[5] [7]), .I3(GND_net), .O(n6_adj_4344));
    defparam i1_2_lut_3_lut_adj_1366.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1367 (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[8] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31412));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1367.LUT_INIT = 16'h6666;
    SB_LUT4 i17_2_lut (.I0(n9676), .I1(\data_in_frame[7] [6]), .I2(GND_net), 
            .I3(GND_net), .O(n9835));   // verilog/coms.v(99[12:25])
    defparam i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11674_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30894), .I2(rx_data[7]), 
            .I3(\data_in_frame[20] [7]), .O(n15866));
    defparam i11674_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1368 (.I0(\data_in_frame[3] [7]), .I1(\data_in_frame[4] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31281));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1368.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1369 (.I0(n28042), .I1(\data_out_frame[5] [4]), 
            .I2(n9079), .I3(GND_net), .O(n6_adj_4342));
    defparam i1_2_lut_3_lut_adj_1369.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1370 (.I0(n7_adj_4217), .I1(n11010), .I2(n34371), 
            .I3(n31069), .O(n27623));
    defparam i1_4_lut_adj_1370.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1371 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [1]), .I3(GND_net), .O(n9079));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_3_lut_adj_1371.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1372 (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[4] [1]), 
            .I2(\data_out_frame[4] [2]), .I3(GND_net), .O(n31288));
    defparam i1_2_lut_3_lut_adj_1372.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1373 (.I0(\data_in_frame[5] [1]), .I1(\data_in_frame[3][1] ), 
            .I2(\data_in_frame[5] [2]), .I3(GND_net), .O(n30945));   // verilog/coms.v(88[17:70])
    defparam i2_3_lut_adj_1373.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1374 (.I0(\data_in_frame[2] [0]), .I1(\data_in_frame[2] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31012));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1374.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1375 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[5] [1]), .I3(GND_net), .O(n31285));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_3_lut_adj_1375.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1376 (.I0(\data_in_frame[0]_c [0]), .I1(\data_in_frame[2] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31209));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1376.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1377 (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[12] [2]), .I3(GND_net), .O(n11516));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_adj_1377.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1378 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[4] [4]), 
            .I2(\data_out_frame[4] [3]), .I3(\data_out_frame[5] [1]), .O(n10989));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_4_lut_adj_1378.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1379 (.I0(n27623), .I1(n11773), .I2(GND_net), 
            .I3(GND_net), .O(n31304));
    defparam i1_2_lut_adj_1379.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1380 (.I0(\data_out_frame[14] [4]), .I1(n31053), 
            .I2(\data_out_frame[5] [7]), .I3(n31201), .O(n31165));
    defparam i1_2_lut_4_lut_adj_1380.LUT_INIT = 16'h6996;
    SB_LUT4 i18813_2_lut (.I0(byte_transmit_counter[0]), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n22934));
    defparam i18813_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_1381 (.I0(\data_in_frame[15] [5]), .I1(n31260), 
            .I2(GND_net), .I3(GND_net), .O(n28300));
    defparam i1_2_lut_adj_1381.LUT_INIT = 16'h6666;
    SB_LUT4 i2_4_lut_adj_1382 (.I0(byte_transmit_counter_c[3]), .I1(byte_transmit_counter_c[4]), 
            .I2(n22934), .I3(byte_transmit_counter_c[2]), .O(n32927));   // verilog/coms.v(217[11:56])
    defparam i2_4_lut_adj_1382.LUT_INIT = 16'h8880;
    SB_LUT4 i33308_4_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(Kp_23__N_480), 
            .I2(LED_N_3276), .I3(Kp_23__N_1616), .O(n13430));
    defparam i33308_4_lut.LUT_INIT = 16'hc4a0;
    SB_LUT4 i3_4_lut_adj_1383 (.I0(byte_transmit_counter_c[5]), .I1(byte_transmit_counter_c[6]), 
            .I2(n32927), .I3(byte_transmit_counter_c[7]), .O(n44));
    defparam i3_4_lut_adj_1383.LUT_INIT = 16'hfffe;
    SB_LUT4 i33363_3_lut (.I0(r_SM_Main_2__N_3413[0]), .I1(tx_active), .I2(n44), 
            .I3(GND_net), .O(tx_transmit_N_3284));
    defparam i33363_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i3_4_lut_adj_1384 (.I0(\data_in_frame[6] [3]), .I1(\data_in_frame[4] [2]), 
            .I2(n31415), .I3(n31209), .O(n31390));   // verilog/coms.v(81[16:27])
    defparam i3_4_lut_adj_1384.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1385 (.I0(\data_in_frame[4] [0]), .I1(\data_in_frame[3] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n34237));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1385.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1386 (.I0(\data_in_frame[5] [5]), .I1(\data_in_frame[5] [7]), 
            .I2(\data_in_frame[3] [2]), .I3(GND_net), .O(n34239));   // verilog/coms.v(81[16:27])
    defparam i1_3_lut_adj_1386.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1387 (.I0(\data_in_frame[4] [6]), .I1(\data_in_frame[4] [4]), 
            .I2(\data_in_frame[3] [0]), .I3(\data_in_frame[4] [7]), .O(n34257));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1387.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1388 (.I0(n3_adj_4251), .I1(n34257), .I2(\data_in_frame[1] [5]), 
            .I3(\data_in_frame[3] [6]), .O(n34263));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1388.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1389 (.I0(\data_out_frame[13] [5]), .I1(n10989), 
            .I2(n11919), .I3(n12515), .O(n27567));
    defparam i2_3_lut_4_lut_adj_1389.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1390 (.I0(n30960), .I1(n34263), .I2(n31012), 
            .I3(n11659), .O(n34267));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1390.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1391 (.I0(n34239), .I1(n30945), .I2(n31322), 
            .I3(n34237), .O(n34245));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1391.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1392 (.I0(\data_in_frame[5] [0]), .I1(n12023), 
            .I2(n34267), .I3(Kp_23__N_616), .O(n32992));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1392.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1393 (.I0(n31445), .I1(n32992), .I2(n31415), 
            .I3(n34245), .O(n27613));   // verilog/coms.v(81[16:27])
    defparam i1_4_lut_adj_1393.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1394 (.I0(\data_in_frame[4] [2]), .I1(\data_in_frame[4] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n11659));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_adj_1394.LUT_INIT = 16'h6666;
    SB_LUT4 i31747_2_lut (.I0(n38139), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36170));
    defparam i31747_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_adj_1395 (.I0(n28320), .I1(n27737), .I2(n27415), 
            .I3(n28351), .O(n28441));
    defparam i1_2_lut_4_lut_adj_1395.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1396 (.I0(n12023), .I1(\data_in_frame[0] [7]), 
            .I2(Kp_23__N_635), .I3(GND_net), .O(n12024));   // verilog/coms.v(74[16:69])
    defparam i2_3_lut_adj_1396.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1397 (.I0(n31427), .I1(\data_in_frame[13] [3]), 
            .I2(\data_in_frame[10] [6]), .I3(\data_in_frame[13] [2]), .O(n34309));
    defparam i1_4_lut_adj_1397.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1398 (.I0(\data_in_frame[4] [5]), .I1(n12162), 
            .I2(n31230), .I3(\data_in_frame[6][6] ), .O(Kp_23__N_861));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_4_lut_adj_1398.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1399 (.I0(n28439), .I1(n12583), .I2(n12087), 
            .I3(n32731), .O(n27587));
    defparam i1_2_lut_4_lut_adj_1399.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1400 (.I0(n12304), .I1(\data_in_frame[10] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n27606));
    defparam i1_2_lut_adj_1400.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1401 (.I0(\FRAME_MATCHER.i [0]), .I1(n22692), 
            .I2(n31529), .I3(reset), .O(n30891));
    defparam i1_2_lut_3_lut_4_lut_adj_1401.LUT_INIT = 16'hff7f;
    SB_LUT4 i5_3_lut_adj_1402 (.I0(\data_in_frame[12] [0]), .I1(\data_in_frame[12] [1]), 
            .I2(\data_in_frame[4] [7]), .I3(GND_net), .O(n14_adj_4374));
    defparam i5_3_lut_adj_1402.LUT_INIT = 16'h9696;
    SB_LUT4 i6_4_lut_adj_1403 (.I0(Kp_23__N_743), .I1(n27606), .I2(n27820), 
            .I3(\data_in_frame[5] [2]), .O(n15_adj_4375));
    defparam i6_4_lut_adj_1403.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1404 (.I0(n31374), .I1(n11516), .I2(n31080), 
            .I3(GND_net), .O(n31154));
    defparam i1_2_lut_3_lut_adj_1404.LUT_INIT = 16'h6969;
    SB_LUT4 select_438_Select_15_i2_3_lut (.I0(\data_out_frame[1][7] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4249));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_15_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_438_Select_14_i2_3_lut (.I0(\data_out_frame[1][6] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4244));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_14_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i8_4_lut_adj_1405 (.I0(n15_adj_4375), .I1(\data_in_frame[11] [6]), 
            .I2(n14_adj_4374), .I3(\data_in_frame[9][0] ), .O(n31331));
    defparam i8_4_lut_adj_1405.LUT_INIT = 16'h6996;
    SB_LUT4 i4_2_lut_adj_1406 (.I0(n27613), .I1(n31390), .I2(GND_net), 
            .I3(GND_net), .O(n18_adj_4376));
    defparam i4_2_lut_adj_1406.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_13_i2_3_lut (.I0(\data_out_frame[1][5] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4243));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_13_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_4_lut_adj_1407 (.I0(n27524), .I1(n12087), .I2(n31374), 
            .I3(n11540), .O(n31156));
    defparam i1_2_lut_4_lut_adj_1407.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1408 (.I0(n28439), .I1(\data_out_frame[4] [5]), 
            .I2(n31195), .I3(\data_out_frame[13] [2]), .O(n27541));
    defparam i1_2_lut_4_lut_adj_1408.LUT_INIT = 16'h9669;
    SB_LUT4 select_438_Select_11_i2_3_lut (.I0(\data_out_frame[1][3] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4242));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_11_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i2_3_lut_4_lut_adj_1409 (.I0(n27598), .I1(n31053), .I2(n27617), 
            .I3(\data_out_frame[14] [3]), .O(n31151));
    defparam i2_3_lut_4_lut_adj_1409.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut_adj_1410 (.I0(n31047), .I1(\data_in_frame[8] [4]), 
            .I2(\data_in_frame[8] [2]), .I3(n12304), .O(n24_adj_4377));
    defparam i10_4_lut_adj_1410.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1411 (.I0(n27567), .I1(\data_out_frame[13] [7]), 
            .I2(n30927), .I3(GND_net), .O(n28320));
    defparam i1_2_lut_3_lut_adj_1411.LUT_INIT = 16'h6969;
    SB_LUT4 i8_4_lut_adj_1412 (.I0(n31319), .I1(\data_in_frame[8][7] ), 
            .I2(\data_in_frame[1] [6]), .I3(n31412), .O(n22_adj_4378));
    defparam i8_4_lut_adj_1412.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut_adj_1413 (.I0(\data_in_frame[8][6] ), .I1(n24_adj_4377), 
            .I2(n18_adj_4376), .I3(\data_in_frame[9][6] ), .O(n26_adj_4379));
    defparam i12_4_lut_adj_1413.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1414 (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[5] [1]), .I3(GND_net), .O(n9490));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_3_lut_adj_1414.LUT_INIT = 16'h9696;
    SB_LUT4 select_438_Select_9_i2_3_lut (.I0(\data_out_frame[1][1] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4241));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_9_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i13_4_lut_adj_1415 (.I0(n27820), .I1(n26_adj_4379), .I2(n22_adj_4378), 
            .I3(n31069), .O(n27440));
    defparam i13_4_lut_adj_1415.LUT_INIT = 16'h6996;
    SB_LUT4 equal_1138_i10_2_lut (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[1] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4380));   // verilog/coms.v(169[9:87])
    defparam equal_1138_i10_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1416 (.I0(\data_in_frame[2] [4]), .I1(\data_in_frame[0]_c [3]), 
            .I2(\data_in_frame[0]_c [2]), .I3(GND_net), .O(n11634));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_3_lut_adj_1416.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1417 (.I0(n12165), .I1(\data_in_frame[4] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n31387));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1417.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1418 (.I0(\data_in_frame[6][7] ), .I1(\data_in_frame[7] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n31457));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_adj_1418.LUT_INIT = 16'h6666;
    SB_LUT4 select_438_Select_8_i2_3_lut (.I0(\data_out_frame[1][0] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4233));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_8_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_3_lut_adj_1419 (.I0(\data_in_frame[6][1] ), .I1(n31466), 
            .I2(\data_in_frame[6][6] ), .I3(GND_net), .O(n31027));   // verilog/coms.v(80[16:43])
    defparam i1_3_lut_adj_1419.LUT_INIT = 16'h9696;
    SB_LUT4 i8_4_lut_adj_1420 (.I0(\data_in_frame[6] [0]), .I1(n31387), 
            .I2(n27440), .I3(n31331), .O(n20_adj_4381));
    defparam i8_4_lut_adj_1420.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1421 (.I0(n31027), .I1(\data_in_frame[5] [0]), 
            .I2(\data_in_frame[9][6] ), .I3(n31334), .O(n19));
    defparam i7_4_lut_adj_1421.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1422 (.I0(n30988), .I1(\data_in_frame[7] [0]), 
            .I2(n28235), .I3(\data_in_frame[9][4] ), .O(n21));
    defparam i9_4_lut_adj_1422.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1423 (.I0(\data_in_frame[15] [4]), .I1(n31304), 
            .I2(n31161), .I3(n34309), .O(n28421));
    defparam i1_4_lut_adj_1423.LUT_INIT = 16'h6996;
    SB_LUT4 select_438_Select_4_i2_3_lut (.I0(\data_out_frame[0][4] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4228));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_4_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_4_lut_adj_1424 (.I0(n27524), .I1(n28439), .I2(n27415), 
            .I3(n28351), .O(n28219));
    defparam i1_2_lut_4_lut_adj_1424.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1425 (.I0(n28238), .I1(n27696), .I2(n32675), 
            .I3(GND_net), .O(n28310));
    defparam i1_2_lut_3_lut_adj_1425.LUT_INIT = 16'h6969;
    SB_LUT4 select_438_Select_3_i2_3_lut (.I0(\data_out_frame[0][3] ), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.state_31__N_2480 [3]), .I3(GND_net), .O(n2_adj_4226));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_3_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i28_3_lut (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[5] [2]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n11_adj_4382));   // verilog/coms.v(105[12:33])
    defparam i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_1426 (.I0(\data_in_frame[12] [1]), .I1(n28235), 
            .I2(\data_in_frame[11] [7]), .I3(n31138), .O(n10_adj_4210));
    defparam i4_4_lut_adj_1426.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1427 (.I0(\data_in_frame[14] [2]), .I1(n21), .I2(n19), 
            .I3(n20_adj_4381), .O(n27473));
    defparam i1_4_lut_adj_1427.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1428 (.I0(n28290), .I1(n31269), .I2(n32435), 
            .I3(n27637), .O(n28398));
    defparam i3_4_lut_adj_1428.LUT_INIT = 16'h9669;
    SB_LUT4 data_in_frame_13__7__I_0_2_lut (.I0(\data_in_frame[13] [7]), .I1(\data_in_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1139));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_13__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32223_2_lut (.I0(\data_out_frame[0][2] ), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36298));   // verilog/coms.v(105[12:33])
    defparam i32223_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31825_4_lut (.I0(n36298), .I1(\byte_transmit_counter[1] ), 
            .I2(n11_adj_4382), .I3(byte_transmit_counter_c[2]), .O(n36153));
    defparam i31825_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i1_2_lut_adj_1429 (.I0(n12023), .I1(n31037), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4383));
    defparam i1_2_lut_adj_1429.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_1430 (.I0(n28238), .I1(n27696), .I2(\data_in_frame[19][5] ), 
            .I3(n27604), .O(n28273));
    defparam i1_3_lut_4_lut_adj_1430.LUT_INIT = 16'h9669;
    SB_LUT4 i31952_2_lut (.I0(\data_out_frame[14] [2]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36237));   // verilog/coms.v(109[34:55])
    defparam i31952_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4_4_lut_adj_1431 (.I0(\data_in_frame[5] [3]), .I1(\data_in_frame[7] [4]), 
            .I2(n12169), .I3(n6_adj_4383), .O(n31334));
    defparam i4_4_lut_adj_1431.LUT_INIT = 16'h6996;
    SB_LUT4 data_in_frame_1__7__I_0_2_lut (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[1] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_640));   // verilog/coms.v(81[16:27])
    defparam data_in_frame_1__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_2_i11_3_lut (.I0(\data_out_frame[12] [2]), 
            .I1(\data_out_frame[13] [2]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_4384));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_2_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32224_4_lut (.I0(n11_adj_4384), .I1(byte_transmit_counter_c[2]), 
            .I2(n36237), .I3(\byte_transmit_counter[1] ), .O(n36154));
    defparam i32224_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i15_2_lut_4_lut (.I0(n27567), .I1(\data_out_frame[13] [7]), 
            .I2(n27598), .I3(n31053), .O(n28417));
    defparam i15_2_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i31906_2_lut (.I0(n38163), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36256));
    defparam i31906_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1432 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[1] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n31246));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1432.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1433 (.I0(n31246), .I1(n30924), .I2(Kp_23__N_640), 
            .I3(\data_in_frame[1] [1]), .O(Kp_23__N_635));   // verilog/coms.v(78[16:27])
    defparam i1_4_lut_adj_1433.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1434 (.I0(\data_out_frame[23] [5]), .I1(n11540), 
            .I2(n28439), .I3(n27442), .O(n12202));
    defparam i1_2_lut_4_lut_adj_1434.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1435 (.I0(n31396), .I1(n11926), .I2(\data_out_frame[24] [1]), 
            .I3(GND_net), .O(n8_adj_4245));
    defparam i1_2_lut_3_lut_adj_1435.LUT_INIT = 16'h9696;
    SB_LUT4 i10027_3_lut_4_lut (.I0(n10_adj_4205), .I1(n31529), .I2(reset), 
            .I3(n8_adj_4348), .O(n31489));
    defparam i10027_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_4_lut_adj_1436 (.I0(\data_in_frame[0]_c [5]), .I1(\data_in_frame[2] [7]), 
            .I2(Kp_23__N_635), .I3(\data_in_frame[1] [0]), .O(n12023));
    defparam i1_4_lut_adj_1436.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1437 (.I0(\data_in_frame[7] [2]), .I1(n12023), 
            .I2(n12169), .I3(\data_in_frame[5] [0]), .O(n30915));
    defparam i3_4_lut_adj_1437.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1438 (.I0(n11634), .I1(n30960), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4385));
    defparam i1_2_lut_adj_1438.LUT_INIT = 16'h6666;
    SB_LUT4 i31935_2_lut (.I0(n38127), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36258));
    defparam i31935_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4_4_lut_adj_1439 (.I0(\data_in_frame[5] [1]), .I1(\data_in_frame[4] [6]), 
            .I2(n30915), .I3(n6_adj_4385), .O(n12306));
    defparam i4_4_lut_adj_1439.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1440 (.I0(\data_out_frame[24] [5]), .I1(n27737), 
            .I2(n27415), .I3(n28435), .O(n31125));
    defparam i1_2_lut_4_lut_adj_1440.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1441 (.I0(\data_in_frame[5] [2]), .I1(n31334), 
            .I2(n5_adj_4386), .I3(GND_net), .O(n9831));
    defparam i2_3_lut_adj_1441.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1442 (.I0(n9831), .I1(n12306), .I2(GND_net), 
            .I3(GND_net), .O(n12556));
    defparam i1_2_lut_adj_1442.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1443 (.I0(n11537), .I1(n12556), .I2(\data_in_frame[11] [6]), 
            .I3(GND_net), .O(n31066));
    defparam i2_3_lut_adj_1443.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut_adj_1444 (.I0(\data_in_frame[16][4] ), .I1(n27473), 
            .I2(n31071), .I3(n31075), .O(n28288));
    defparam i1_2_lut_4_lut_adj_1444.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1445 (.I0(n31066), .I1(\data_in_frame[14] [0]), 
            .I2(n11803), .I3(GND_net), .O(n31363));
    defparam i2_3_lut_adj_1445.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_1446 (.I0(\data_in_frame[0]_c [4]), .I1(\data_in_frame[0]_c [6]), 
            .I2(ID[4]), .I3(ID[6]), .O(n12_adj_4387));   // verilog/coms.v(241[12:32])
    defparam i4_4_lut_adj_1446.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_1447 (.I0(\data_in_frame[0]_c [1]), .I1(\data_in_frame[0]_c [2]), 
            .I2(ID[1]), .I3(ID[2]), .O(n10_adj_4388));   // verilog/coms.v(241[12:32])
    defparam i2_4_lut_adj_1447.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_3_lut_adj_1448 (.I0(n32675), .I1(n27619), .I2(\data_in_frame[18] [0]), 
            .I3(GND_net), .O(n32528));
    defparam i1_3_lut_adj_1448.LUT_INIT = 16'h6969;
    SB_LUT4 i3_4_lut_adj_1449 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[0]_c [5]), 
            .I2(ID[7]), .I3(ID[5]), .O(n11_adj_4389));   // verilog/coms.v(241[12:32])
    defparam i3_4_lut_adj_1449.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_adj_1450 (.I0(\data_in_frame[18] [1]), .I1(\data_in_frame[18] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n12522));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1450.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1451 (.I0(\data_in_frame[0]_c [0]), .I1(\data_in_frame[0]_c [3]), 
            .I2(ID[0]), .I3(ID[3]), .O(n9_adj_4390));   // verilog/coms.v(241[12:32])
    defparam i1_4_lut_adj_1451.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_1452 (.I0(n9_adj_4390), .I1(n11_adj_4389), .I2(n10_adj_4388), 
            .I3(n12_adj_4387), .O(n27117));   // verilog/coms.v(241[12:32])
    defparam i7_4_lut_adj_1452.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_adj_1453 (.I0(\data_in_frame[2] [6]), .I1(\data_in_frame[0]_c [4]), 
            .I2(\data_in_frame[0]_c [5]), .I3(GND_net), .O(n5_adj_4386));   // verilog/coms.v(79[16:27])
    defparam i2_3_lut_adj_1453.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1454 (.I0(\data_in_frame[16][5] ), .I1(n11127), 
            .I2(GND_net), .I3(GND_net), .O(n27407));
    defparam i1_2_lut_adj_1454.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1455 (.I0(\data_in_frame[7] [7]), .I1(n12220), 
            .I2(GND_net), .I3(GND_net), .O(n31319));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1455.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1456 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[6] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n31021));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1456.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1457 (.I0(n32528), .I1(n32274), .I2(n31075), 
            .I3(n34391), .O(n31352));
    defparam i1_4_lut_adj_1457.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1458 (.I0(\data_in_frame[16][2] ), .I1(Kp_23__N_1139), 
            .I2(n27473), .I3(n6_adj_4250), .O(n28246));
    defparam i4_4_lut_adj_1458.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1459 (.I0(\data_in_frame[0]_c [1]), .I1(\data_in_frame[0]_c [4]), 
            .I2(GND_net), .I3(GND_net), .O(n34455));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_adj_1459.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1460 (.I0(n30991), .I1(n30934), .I2(n34455), 
            .I3(\data_in_frame[0] [7]), .O(Kp_23__N_616));   // verilog/coms.v(73[16:27])
    defparam i1_4_lut_adj_1460.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1461 (.I0(\data_in_frame[0]_c [6]), .I1(\data_in_frame[0]_c [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30934));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1461.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1462 (.I0(\data_in_frame[0]_c [2]), .I1(\data_in_frame[0]_c [1]), 
            .I2(\data_in_frame[2] [3]), .I3(GND_net), .O(n12165));   // verilog/coms.v(78[16:43])
    defparam i1_3_lut_adj_1462.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1463 (.I0(\data_in_frame[0]_c [6]), .I1(\data_in_frame[1] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30971));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_adj_1463.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1464 (.I0(\data_in_frame[0]_c [0]), .I1(Kp_23__N_616), 
            .I2(GND_net), .I3(GND_net), .O(n31041));   // verilog/coms.v(73[16:69])
    defparam i1_2_lut_adj_1464.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_1465 (.I0(\data_in_frame[2] [0]), .I1(n10_adj_4380), 
            .I2(n31041), .I3(\data_in_frame[1] [5]), .O(n26_adj_4391));
    defparam i9_4_lut_adj_1465.LUT_INIT = 16'h2100;
    SB_LUT4 i1_2_lut_adj_1466 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n31359));
    defparam i1_2_lut_adj_1466.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_1467 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[1] [7]), 
            .I2(n30971), .I3(n31041), .O(n22_adj_4392));
    defparam i5_4_lut_adj_1467.LUT_INIT = 16'h1248;
    SB_LUT4 i1_3_lut_adj_1468 (.I0(n31168), .I1(\data_in_frame[20] [6]), 
            .I2(\data_in_frame[21] [0]), .I3(GND_net), .O(n34399));
    defparam i1_3_lut_adj_1468.LUT_INIT = 16'h9696;
    SB_LUT4 i13_4_lut_adj_1469 (.I0(n12165), .I1(n26_adj_4391), .I2(\data_in_frame[2] [7]), 
            .I3(n30934), .O(n30_adj_4393));
    defparam i13_4_lut_adj_1469.LUT_INIT = 16'h4004;
    SB_LUT4 i11_4_lut_adj_1470 (.I0(Kp_23__N_616), .I1(n22_adj_4392), .I2(n5_adj_4386), 
            .I3(\data_in_frame[2] [1]), .O(n28_adj_4394));
    defparam i11_4_lut_adj_1470.LUT_INIT = 16'h0408;
    SB_LUT4 i12_4_lut_adj_1471 (.I0(\data_in_frame[1] [3]), .I1(n27117), 
            .I2(\data_in_frame[1] [6]), .I3(n6_adj_4367), .O(n29));
    defparam i12_4_lut_adj_1471.LUT_INIT = 16'h0020;
    SB_LUT4 i10_4_lut_adj_1472 (.I0(\data_in_frame[1] [4]), .I1(n3_adj_4251), 
            .I2(\data_in_frame[1] [2]), .I3(n11634), .O(n27_c));
    defparam i10_4_lut_adj_1472.LUT_INIT = 16'h0020;
    SB_LUT4 i1_4_lut_adj_1473 (.I0(n28246), .I1(n31352), .I2(n27407), 
            .I3(n34399), .O(n28277));
    defparam i1_4_lut_adj_1473.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1474 (.I0(n12574), .I1(n31384), .I2(n31009), 
            .I3(\data_in_frame[20] [5]), .O(n18_adj_4395));
    defparam i7_4_lut_adj_1474.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut_adj_1475 (.I0(n27_c), .I1(n29), .I2(n28_adj_4394), 
            .I3(n30_adj_4393), .O(\FRAME_MATCHER.state_31__N_2480 [3]));
    defparam i16_4_lut_adj_1475.LUT_INIT = 16'h8000;
    SB_LUT4 i1_3_lut_4_lut_adj_1476 (.I0(\data_in_frame[16][5] ), .I1(n11127), 
            .I2(n32528), .I3(n31266), .O(n32274));
    defparam i1_3_lut_4_lut_adj_1476.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1477 (.I0(n27415), .I1(n28320), .I2(\data_out_frame[24] [7]), 
            .I3(GND_net), .O(n31192));
    defparam i1_2_lut_3_lut_adj_1477.LUT_INIT = 16'h6969;
    SB_LUT4 n38196_bdd_4_lut (.I0(n38196), .I1(n36116), .I2(n36115), .I3(byte_transmit_counter_c[4]), 
            .O(tx_data[0]));
    defparam n38196_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_2_lut (.I0(\data_in_frame[20] [6]), .I1(n28288), .I2(GND_net), 
            .I3(GND_net), .O(n16_adj_4396));
    defparam i5_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_1478 (.I0(n28275), .I1(n18_adj_4395), .I2(n28300), 
            .I3(\data_in_frame[18] [5]), .O(n20_adj_4397));
    defparam i9_4_lut_adj_1478.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut_adj_1479 (.I0(n28255), .I1(n20_adj_4397), .I2(n16_adj_4396), 
            .I3(n31297), .O(n31083));
    defparam i10_4_lut_adj_1479.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i4_3_lut (.I0(\data_out_frame[4] [7]), 
            .I1(\data_out_frame[5] [7]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4_adj_4398));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_1480 (.I0(\data_in_frame[16][3] ), .I1(n32435), 
            .I2(n27473), .I3(GND_net), .O(n31075));
    defparam i1_2_lut_3_lut_adj_1480.LUT_INIT = 16'h6969;
    SB_LUT4 i31828_4_lut (.I0(\data_out_frame[1][7] ), .I1(byte_transmit_counter[0]), 
            .I2(\data_out_frame[3][7] ), .I3(\byte_transmit_counter[1] ), 
            .O(n36157));   // verilog/coms.v(109[34:55])
    defparam i31828_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i7_4_lut (.I0(n36157), .I1(n4_adj_4398), 
            .I2(byte_transmit_counter_c[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4399));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_1481 (.I0(\FRAME_MATCHER.i_31__N_2377 ), .I1(\FRAME_MATCHER.state_31__N_2480 [3]), 
            .I2(\data_out_frame[0][2] ), .I3(GND_net), .O(n2));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_adj_1481.LUT_INIT = 16'ha8a8;
    SB_LUT4 i31953_2_lut (.I0(\data_out_frame[14] [7]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36155));   // verilog/coms.v(109[34:55])
    defparam i31953_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i22040_3_lut (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[13] [7]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n11_adj_4400));   // verilog/coms.v(105[12:33])
    defparam i22040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26962_3_lut_4_lut (.I0(n10_adj_4205), .I1(n31529), .I2(n8), 
            .I3(reset), .O(n14222));
    defparam i26962_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i10033_3_lut_4_lut (.I0(n10_adj_4205), .I1(n31529), .I2(reset), 
            .I3(n8_adj_4402), .O(n14224));
    defparam i10033_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 n38076_bdd_4_lut (.I0(n38076), .I1(n36242), .I2(n7_adj_4403), 
            .I3(byte_transmit_counter_c[4]), .O(tx_data[6]));
    defparam n38076_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_1482 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30924));
    defparam i1_2_lut_adj_1482.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1483 (.I0(\data_out_frame[25] [0]), .I1(\data_out_frame[24] [6]), 
            .I2(n27503), .I3(n28456), .O(n27596));
    defparam i2_3_lut_4_lut_adj_1483.LUT_INIT = 16'h6996;
    SB_LUT4 i31814_4_lut (.I0(n11_adj_4400), .I1(byte_transmit_counter_c[2]), 
            .I2(n36155), .I3(\byte_transmit_counter[1] ), .O(n36243));
    defparam i31814_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i4_3_lut (.I0(\data_out_frame[4] [1]), 
            .I1(\data_out_frame[5] [1]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4_adj_4404));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31950_4_lut (.I0(\data_out_frame[1][1] ), .I1(byte_transmit_counter[0]), 
            .I2(\data_out_frame[3][1] ), .I3(\byte_transmit_counter[1] ), 
            .O(n36235));   // verilog/coms.v(109[34:55])
    defparam i31950_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i7_4_lut (.I0(n36235), .I1(n4_adj_4404), 
            .I2(byte_transmit_counter_c[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4405));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_3_lut_4_lut_adj_1484 (.I0(n11859), .I1(n31006), .I2(\data_in_frame[13] [0]), 
            .I3(n28403), .O(n31086));
    defparam i2_3_lut_4_lut_adj_1484.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1485 (.I0(n11859), .I1(n31006), .I2(\data_in_frame[12] [4]), 
            .I3(n28363), .O(n28445));
    defparam i2_3_lut_4_lut_adj_1485.LUT_INIT = 16'h6996;
    SB_LUT4 i31932_2_lut (.I0(\data_out_frame[14] [1]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36234));   // verilog/coms.v(109[34:55])
    defparam i31932_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i11_3_lut (.I0(\data_out_frame[12] [1]), 
            .I1(\data_out_frame[13] [1]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_4406));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31797_4_lut (.I0(n11_adj_4406), .I1(byte_transmit_counter_c[2]), 
            .I2(n36234), .I3(\byte_transmit_counter[1] ), .O(n36150));
    defparam i31797_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31700_2_lut (.I0(n38133), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36260));
    defparam i31700_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1486 (.I0(\data_in_frame[17][1] ), .I1(n32819), 
            .I2(GND_net), .I3(GND_net), .O(n31108));
    defparam i1_2_lut_adj_1486.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_4_lut_adj_1487 (.I0(n28343), .I1(n27602), .I2(n27497), 
            .I3(\data_out_frame[24] [7]), .O(n6_adj_4221));
    defparam i1_2_lut_4_lut_adj_1487.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1488 (.I0(n32850), .I1(\data_out_frame[23] [2]), 
            .I2(\data_out_frame[23] [3]), .I3(n28345), .O(n33101));
    defparam i2_3_lut_4_lut_adj_1488.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1489 (.I0(\data_out_frame[23] [0]), .I1(n28320), 
            .I2(n27737), .I3(GND_net), .O(n6_adj_4220));
    defparam i1_2_lut_3_lut_adj_1489.LUT_INIT = 16'h9696;
    SB_LUT4 i31746_2_lut (.I0(n38151), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36168));
    defparam i31746_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15544_3_lut (.I0(n14238), .I1(rx_data[7]), .I2(\data_in_frame[9] [7]), 
            .I3(GND_net), .O(n15413));   // verilog/coms.v(94[13:20])
    defparam i15544_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i5_3_lut_adj_1490 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [6]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n14_adj_4407));   // verilog/coms.v(105[12:33])
    defparam i5_3_lut_adj_1490.LUT_INIT = 16'hcaca;
    SB_LUT4 select_438_Select_221_i3_3_lut_4_lut (.I0(\data_out_frame[25] [3]), 
            .I1(n32861), .I2(\FRAME_MATCHER.state[3] ), .I3(n31171), .O(n3_adj_4333));   // verilog/coms.v(148[4] 304[11])
    defparam select_438_Select_221_i3_3_lut_4_lut.LUT_INIT = 16'h9060;
    SB_LUT4 i1_2_lut_4_lut_adj_1491 (.I0(\data_out_frame[25] [4]), .I1(n32850), 
            .I2(n31249), .I3(n28345), .O(n31171));
    defparam i1_2_lut_4_lut_adj_1491.LUT_INIT = 16'h9669;
    SB_LUT4 i3_3_lut_4_lut_adj_1492 (.I0(\data_out_frame[23] [4]), .I1(n28356), 
            .I2(\data_out_frame[23] [3]), .I3(n31381), .O(n8_adj_4212));
    defparam i3_3_lut_4_lut_adj_1492.LUT_INIT = 16'h9669;
    SB_LUT4 select_440_Select_1_i1_2_lut_3_lut (.I0(\byte_transmit_counter[1] ), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4334));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_1_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_33461 (.I0(byte_transmit_counter_c[3]), 
            .I1(n36167), .I2(n36168), .I3(byte_transmit_counter_c[4]), 
            .O(n38070));
    defparam byte_transmit_counter_3__bdd_4_lut_33461.LUT_INIT = 16'he4aa;
    SB_LUT4 i32064_4_lut (.I0(\data_out_frame[1][6] ), .I1(byte_transmit_counter[0]), 
            .I2(\data_out_frame[3][6] ), .I3(\byte_transmit_counter[1] ), 
            .O(n36224));   // verilog/coms.v(105[12:33])
    defparam i32064_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6_4_lut_adj_1493 (.I0(n36224), .I1(n14_adj_4407), .I2(byte_transmit_counter_c[2]), 
            .I3(\byte_transmit_counter[1] ), .O(n7_adj_4403));   // verilog/coms.v(105[12:33])
    defparam i6_4_lut_adj_1493.LUT_INIT = 16'h0aca;
    SB_LUT4 i31721_2_lut (.I0(\data_out_frame[14] [6]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36148));   // verilog/coms.v(109[34:55])
    defparam i31721_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i11_3_lut (.I0(\data_out_frame[12] [6]), 
            .I1(\data_out_frame[13] [6]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_4408));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31853_4_lut (.I0(n11_adj_4408), .I1(byte_transmit_counter_c[2]), 
            .I2(n36148), .I3(\byte_transmit_counter[1] ), .O(n36242));
    defparam i31853_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_440_Select_2_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4335));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_2_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_1494 (.I0(\data_in_frame[8] [1]), .I1(\data_in_frame[8] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n31047));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1494.LUT_INIT = 16'h6666;
    SB_LUT4 select_440_Select_3_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4336));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_3_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_1495 (.I0(\data_in_frame[14] [7]), .I1(\data_in_frame[14] [3]), 
            .I2(\data_in_frame[16][4] ), .I3(\data_in_frame[15] [4]), .O(n34281));
    defparam i1_4_lut_adj_1495.LUT_INIT = 16'h6996;
    SB_LUT4 i26_3_lut (.I0(\data_out_frame[1][0] ), .I1(\data_out_frame[5] [0]), 
            .I2(byte_transmit_counter_c[2]), .I3(GND_net), .O(n12_adj_4409));   // verilog/coms.v(109[34:55])
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32238_2_lut (.I0(\data_out_frame[4] [0]), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36300));   // verilog/coms.v(109[34:55])
    defparam i32238_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_1496 (.I0(n31445), .I1(n31105), .I2(n30924), 
            .I3(GND_net), .O(n28392));
    defparam i1_3_lut_adj_1496.LUT_INIT = 16'h9696;
    SB_LUT4 i11232_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[0]), 
            .I3(\data_in_frame[11] [0]), .O(n15424));
    defparam i11232_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11235_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[1]), 
            .I3(\data_in_frame[11] [1]), .O(n15427));
    defparam i11235_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31794_4_lut (.I0(n36300), .I1(\byte_transmit_counter[1] ), 
            .I2(n12_adj_4409), .I3(byte_transmit_counter[0]), .O(n36115));
    defparam i31794_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i31916_2_lut (.I0(\data_out_frame[14] [0]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36231));   // verilog/coms.v(105[12:33])
    defparam i31916_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13_3_lut (.I0(\data_out_frame[12] [0]), .I1(\data_out_frame[13] [0]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n12_adj_4410));   // verilog/coms.v(105[12:33])
    defparam i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32246_4_lut (.I0(n12_adj_4410), .I1(byte_transmit_counter_c[2]), 
            .I2(n36231), .I3(\byte_transmit_counter[1] ), .O(n36116));
    defparam i32246_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_440_Select_4_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4337));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_4_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i10496_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n14688));   // verilog/coms.v(130[12] 305[6])
    defparam i10496_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 select_440_Select_5_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4338));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_5_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11240_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[2]), 
            .I3(\data_in_frame[11] [2]), .O(n15432));
    defparam i11240_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11249_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[3]), 
            .I3(\data_in_frame[11] [3]), .O(n15441));
    defparam i11249_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 select_440_Select_6_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4339));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_6_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11252_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[4]), 
            .I3(\data_in_frame[11] [4]), .O(n15444));
    defparam i11252_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_1497 (.I0(\data_in_frame[12] [3]), .I1(n31369), 
            .I2(\data_in_frame[16][6] ), .I3(n27477), .O(n31168));
    defparam i2_3_lut_4_lut_adj_1497.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1498 (.I0(\data_in_frame[5] [0]), .I1(n12476), 
            .I2(n30983), .I3(n30988), .O(n12116));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_4_lut_adj_1498.LUT_INIT = 16'h6996;
    SB_LUT4 select_440_Select_7_i1_2_lut_3_lut (.I0(byte_transmit_counter_c[7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4340));   // verilog/coms.v(148[4] 304[11])
    defparam select_440_Select_7_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11264_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[5]), 
            .I3(\data_in_frame[11] [5]), .O(n15456));
    defparam i11264_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11267_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[6]), 
            .I3(\data_in_frame[11] [6]), .O(n15459));
    defparam i11267_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1499 (.I0(\data_in_frame[5] [0]), .I1(n12476), 
            .I2(n30983), .I3(n31457), .O(n6_adj_4411));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_4_lut_adj_1499.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1500 (.I0(\data_in_frame[6] [0]), .I1(n31307), 
            .I2(n27613), .I3(GND_net), .O(n31105));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_3_lut_adj_1500.LUT_INIT = 16'h9696;
    SB_LUT4 i5_2_lut_3_lut (.I0(\data_in_frame[6] [0]), .I1(n31307), .I2(\data_in_frame[11] [7]), 
            .I3(GND_net), .O(n16_adj_4361));   // verilog/coms.v(78[16:43])
    defparam i5_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i11271_3_lut_4_lut (.I0(n8_adj_4348), .I1(n30884), .I2(rx_data[7]), 
            .I3(\data_in_frame[11] [7]), .O(n15463));
    defparam i11271_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_1501 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [7]), 
            .I2(\data_in_frame[1] [3]), .I3(\data_in_frame[3] [6]), .O(n30930));   // verilog/coms.v(81[16:27])
    defparam i2_3_lut_4_lut_adj_1501.LUT_INIT = 16'h6996;
    SB_LUT4 equal_84_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4229));   // verilog/coms.v(157[7:23])
    defparam equal_84_i8_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i5_3_lut_4_lut (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [7]), 
            .I2(\data_in_frame[1] [4]), .I3(n10_adj_4412), .O(n31227));   // verilog/coms.v(81[16:27])
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11274_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[0]), 
            .I3(\data_in_frame[12] [0]), .O(n15466));
    defparam i11274_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_adj_1502 (.I0(n43_adj_4413), .I1(n28392), .I2(n31047), 
            .I3(GND_net), .O(n27491));   // verilog/coms.v(99[12:25])
    defparam i1_3_lut_adj_1502.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_adj_1503 (.I0(\data_in_frame[8] [2]), .I1(\data_in_frame[10] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30918));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1503.LUT_INIT = 16'h6666;
    SB_LUT4 equal_91_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4348));   // verilog/coms.v(157[7:23])
    defparam equal_91_i8_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i11351_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[1]), 
            .I3(\data_in_frame[12] [1]), .O(n15543));
    defparam i11351_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11354_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[2]), 
            .I3(\data_in_frame[12] [2]), .O(n15546));
    defparam i11354_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11357_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[3]), 
            .I3(\data_in_frame[12] [3]), .O(n15549));
    defparam i11357_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1504 (.I0(Kp_23__N_953), .I1(n12096), .I2(\data_in_frame[9][3] ), 
            .I3(n11537), .O(Kp_23__N_948));   // verilog/coms.v(88[17:63])
    defparam i3_4_lut_adj_1504.LUT_INIT = 16'h6996;
    SB_LUT4 i11360_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[4]), 
            .I3(\data_in_frame[12] [4]), .O(n15552));
    defparam i11360_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11363_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[5]), 
            .I3(\data_in_frame[12] [5]), .O(n15555));
    defparam i11363_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1505 (.I0(n12650), .I1(n31451), .I2(n31246), 
            .I3(\data_in_frame[6][1] ), .O(n10_adj_4412));   // verilog/coms.v(81[16:27])
    defparam i4_4_lut_adj_1505.LUT_INIT = 16'h6996;
    SB_LUT4 i11366_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[6]), 
            .I3(\data_in_frame[12] [6]), .O(n15558));
    defparam i11366_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11369_3_lut_4_lut (.I0(n8_adj_4360), .I1(n30884), .I2(rx_data[7]), 
            .I3(\data_in_frame[12] [7]), .O(n15561));
    defparam i11369_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 equal_96_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(GND_net), .O(n8_adj_4207));   // verilog/coms.v(157[7:23])
    defparam equal_96_i8_2_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i2_3_lut_adj_1506 (.I0(n31021), .I1(n31319), .I2(n30930), 
            .I3(GND_net), .O(n43_adj_4413));   // verilog/coms.v(99[12:25])
    defparam i2_3_lut_adj_1506.LUT_INIT = 16'h9696;
    SB_LUT4 equal_94_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4402));   // verilog/coms.v(157[7:23])
    defparam equal_94_i8_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 equal_93_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8));   // verilog/coms.v(157[7:23])
    defparam equal_93_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_adj_1507 (.I0(\data_in_frame[19] [6]), .I1(n28238), 
            .I2(GND_net), .I3(GND_net), .O(n31115));
    defparam i1_2_lut_adj_1507.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1508 (.I0(n27491), .I1(\data_in_frame[10] [2]), 
            .I2(n9676), .I3(n6_adj_4206), .O(n31142));
    defparam i4_4_lut_adj_1508.LUT_INIT = 16'h6996;
    SB_LUT4 data_in_frame_9__7__I_0_2_lut (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9][6] ), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_953));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_9__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut (.I0(byte_transmit_counter_c[3]), 
            .I1(n36259), .I2(n36260), .I3(byte_transmit_counter_c[4]), 
            .O(n38196));
    defparam byte_transmit_counter_3__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n38190_bdd_4_lut (.I0(n38190), .I1(n36150), .I2(n7_adj_4405), 
            .I3(byte_transmit_counter_c[4]), .O(tx_data[1]));
    defparam n38190_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1509 (.I0(n28266), .I1(n45_adj_4345), 
            .I2(n31147), .I3(n27617), .O(n31374));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_4_lut_adj_1509.LUT_INIT = 16'h9669;
    SB_LUT4 i5_3_lut_3_lut_4_lut (.I0(n28266), .I1(n45_adj_4345), .I2(n31374), 
            .I3(n32731), .O(n14_adj_4254));   // verilog/coms.v(100[12:26])
    defparam i5_3_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i10487_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(GND_net), .I3(GND_net), .O(n14679));   // verilog/coms.v(130[12] 305[6])
    defparam i10487_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i10047_3_lut_4_lut (.I0(n10_adj_4353), .I1(n31529), .I2(reset), 
            .I3(n8), .O(n14238));
    defparam i10047_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i26920_3_lut_4_lut (.I0(n10_adj_4353), .I1(n31529), .I2(n8_adj_4402), 
            .I3(reset), .O(n14240));
    defparam i26920_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i3_4_lut_adj_1510 (.I0(n43_adj_4413), .I1(n31227), .I2(n30918), 
            .I3(\data_in_frame[8] [1]), .O(n12313));   // verilog/coms.v(99[12:25])
    defparam i3_4_lut_adj_1510.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1511 (.I0(n11516), .I1(n31165), .I2(n12583), 
            .I3(n11540), .O(n32850));
    defparam i2_3_lut_4_lut_adj_1511.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1512 (.I0(n11516), .I1(n31165), .I2(n28266), 
            .I3(GND_net), .O(n31375));
    defparam i1_2_lut_3_lut_adj_1512.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1513 (.I0(n11516), .I1(n31165), .I2(n30927), 
            .I3(n27602), .O(n28345));
    defparam i1_2_lut_3_lut_4_lut_adj_1513.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1514 (.I0(\data_in_frame[9][3] ), .I1(n31096), 
            .I2(\data_in_frame[11] [4]), .I3(GND_net), .O(n11803));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_adj_1514.LUT_INIT = 16'h9696;
    SB_LUT4 n38070_bdd_4_lut (.I0(n38070), .I1(n36243), .I2(n7_adj_4399), 
            .I3(byte_transmit_counter_c[4]), .O(tx_data[7]));
    defparam n38070_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_adj_1515 (.I0(n34281), .I1(\data_in_frame[17][0] ), 
            .I2(\data_in_frame[16][3] ), .I3(GND_net), .O(n34283));
    defparam i1_3_lut_adj_1515.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_1516 (.I0(n31436), .I1(\data_in_frame[15] [7]), 
            .I2(\data_in_frame[16][0] ), .I3(\data_in_frame[15] [6]), .O(n34201));
    defparam i1_4_lut_adj_1516.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1517 (.I0(n28262), .I1(n34301), .I2(n34213), 
            .I3(n28310), .O(n27619));
    defparam i1_4_lut_adj_1517.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1518 (.I0(n28227), .I1(n31396), .I2(n27587), 
            .I3(\data_out_frame[23] [7]), .O(n28324));
    defparam i1_2_lut_3_lut_4_lut_adj_1518.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut_adj_1519 (.I0(n31128), .I1(n31363), .I2(\data_in_frame[13] [7]), 
            .I3(\data_in_frame[14] [6]), .O(n12));   // verilog/coms.v(74[16:27])
    defparam i5_4_lut_adj_1519.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1520 (.I0(\data_in_frame[9][4] ), .I1(\data_in_frame[9][5] ), 
            .I2(GND_net), .I3(GND_net), .O(n11537));
    defparam i1_2_lut_adj_1520.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1521 (.I0(\data_in_frame[10] [1]), .I1(\data_in_frame[8] [0]), 
            .I2(n6), .I3(n43_adj_4413), .O(n12665));
    defparam i1_4_lut_adj_1521.LUT_INIT = 16'h9669;
    SB_LUT4 i3_2_lut_3_lut_4_lut (.I0(n28227), .I1(n31396), .I2(\data_out_frame[24] [5]), 
            .I3(\data_out_frame[23] [7]), .O(n16));
    defparam i3_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1522 (.I0(n28227), .I1(n31396), .I2(n28439), 
            .I3(n11540), .O(n31198));
    defparam i1_2_lut_3_lut_4_lut_adj_1522.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1523 (.I0(\FRAME_MATCHER.i [0]), .I1(n7_adj_4203), 
            .I2(n10_adj_4216), .I3(n31529), .O(n14190));
    defparam i1_2_lut_4_lut_adj_1523.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut_3_lut_adj_1524 (.I0(n11540), .I1(n28439), .I2(n27442), 
            .I3(GND_net), .O(n31102));
    defparam i1_2_lut_3_lut_adj_1524.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1525 (.I0(n28246), .I1(n32671), .I2(\data_in_frame[18] [4]), 
            .I3(\data_in_frame[18] [2]), .O(n28255));
    defparam i1_2_lut_3_lut_4_lut_adj_1525.LUT_INIT = 16'h9669;
    SB_LUT4 equal_93_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10_adj_4353));   // verilog/coms.v(157[7:23])
    defparam equal_93_i10_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i4_4_lut_adj_1526 (.I0(\data_in_frame[8][7] ), .I1(n30994), 
            .I2(n31430), .I3(n6_adj_4411), .O(n11784));   // verilog/coms.v(80[16:43])
    defparam i4_4_lut_adj_1526.LUT_INIT = 16'h6996;
    SB_LUT4 i11513_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[7]), 
            .I3(\data_in_frame[18] [7]), .O(n15705));
    defparam i11513_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11510_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[6]), 
            .I3(\data_in_frame[18] [6]), .O(n15702));
    defparam i11510_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11507_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[5]), 
            .I3(\data_in_frame[18] [5]), .O(n15699));
    defparam i11507_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_3_lut_3_lut (.I0(reset), .I1(Kp_23__N_480), .I2(Kp_23__N_1616), 
            .I3(GND_net), .O(n8659));   // verilog/coms.v(130[12] 305[6])
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i11504_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[4]), 
            .I3(\data_in_frame[18] [4]), .O(n15696));
    defparam i11504_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 equal_97_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10_adj_4216));   // verilog/coms.v(157[7:23])
    defparam equal_97_i10_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1527 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n30884), .O(n30889));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1527.LUT_INIT = 16'hffdf;
    SB_LUT4 i26_3_lut_adj_1528 (.I0(\data_out_frame[1][5] ), .I1(\data_out_frame[5] [5]), 
            .I2(byte_transmit_counter_c[2]), .I3(GND_net), .O(n12_adj_4415));   // verilog/coms.v(109[34:55])
    defparam i26_3_lut_adj_1528.LUT_INIT = 16'hcaca;
    SB_LUT4 i32225_2_lut (.I0(\data_out_frame[4] [5]), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36299));   // verilog/coms.v(109[34:55])
    defparam i32225_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31835_4_lut (.I0(n36299), .I1(\byte_transmit_counter[1] ), 
            .I2(n12_adj_4415), .I3(byte_transmit_counter[0]), .O(n36161));
    defparam i31835_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i11501_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[3]), 
            .I3(\data_in_frame[18] [3]), .O(n15693));
    defparam i11501_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11498_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[2]), 
            .I3(\data_in_frame[18] [2]), .O(n15690));
    defparam i11498_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i32196_2_lut (.I0(\data_out_frame[14] [5]), .I1(byte_transmit_counter[0]), 
            .I2(GND_net), .I3(GND_net), .O(n36105));   // verilog/coms.v(109[34:55])
    defparam i32196_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_5_i11_3_lut (.I0(\data_out_frame[12] [5]), 
            .I1(\data_out_frame[13] [5]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_4416));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_5_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32240_4_lut (.I0(n11_adj_4416), .I1(byte_transmit_counter_c[2]), 
            .I2(n36105), .I3(\byte_transmit_counter[1] ), .O(n36162));
    defparam i32240_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i15_2_lut (.I0(n27623), .I1(n11784), .I2(GND_net), .I3(GND_net), 
            .O(n30187));
    defparam i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11495_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[1]), 
            .I3(\data_in_frame[18] [1]), .O(n15687));
    defparam i11495_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i32180_2_lut (.I0(n38109), .I1(byte_transmit_counter_c[2]), 
            .I2(GND_net), .I3(GND_net), .O(n36250));
    defparam i32180_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i4_3_lut (.I0(\data_out_frame[4] [4]), 
            .I1(\data_out_frame[5] [4]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n4_adj_4417));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i3_4_lut (.I0(\data_out_frame[0][4] ), 
            .I1(\data_out_frame[3][4] ), .I2(\byte_transmit_counter[1] ), 
            .I3(byte_transmit_counter[0]), .O(n3_adj_4418));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i3_4_lut.LUT_INIT = 16'hc00a;
    SB_LUT4 i32721_4_lut (.I0(n3_adj_4418), .I1(n4_adj_4417), .I2(byte_transmit_counter_c[2]), 
            .I3(\byte_transmit_counter[1] ), .O(n37335));
    defparam i32721_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_1529 (.I0(n11784), .I1(n11803), .I2(GND_net), 
            .I3(GND_net), .O(n30997));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1529.LUT_INIT = 16'h6666;
    SB_LUT4 i11492_3_lut_4_lut (.I0(n8_adj_4229), .I1(n30894), .I2(rx_data[0]), 
            .I3(\data_in_frame[18] [0]), .O(n15684));
    defparam i11492_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1530 (.I0(\data_in_frame[13] [5]), .I1(n31393), 
            .I2(n28450), .I3(n11797), .O(n28403));
    defparam i3_4_lut_adj_1530.LUT_INIT = 16'h6996;
    SB_LUT4 i31972_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [4]), 
            .O(n36251));   // verilog/coms.v(109[34:55])
    defparam i31972_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i11_3_lut (.I0(\data_out_frame[12] [3]), 
            .I1(\data_out_frame[13] [3]), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n11_adj_4419));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31960_4_lut (.I0(\data_out_frame[4] [3]), .I1(\byte_transmit_counter[1] ), 
            .I2(\data_out_frame[5] [3]), .I3(byte_transmit_counter[0]), 
            .O(n36241));   // verilog/coms.v(109[34:55])
    defparam i31960_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i13_4_lut (.I0(n11_adj_4419), 
            .I1(\data_out_frame[14] [3]), .I2(\byte_transmit_counter[1] ), 
            .I3(byte_transmit_counter[0]), .O(n13_adj_4420));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i13_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i3_4_lut (.I0(\data_out_frame[3][3] ), 
            .I1(n36241), .I2(byte_transmit_counter_c[2]), .I3(byte_transmit_counter[0]), 
            .O(n3_adj_4421));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i31773_2_lut (.I0(byte_transmit_counter_c[2]), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n36387));
    defparam i31773_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i1_3_lut (.I0(\data_out_frame[0][3] ), 
            .I1(\data_out_frame[1][3] ), .I2(byte_transmit_counter[0]), 
            .I3(GND_net), .O(n1_adj_4422));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i7_4_lut (.I0(n3_adj_4421), 
            .I1(n13_adj_4420), .I2(byte_transmit_counter_c[3]), .I3(byte_transmit_counter_c[2]), 
            .O(n7_adj_4423));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i7_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i30157_4_lut (.I0(n36253), .I1(n38157), .I2(byte_transmit_counter_c[3]), 
            .I3(byte_transmit_counter_c[2]), .O(n34771));
    defparam i30157_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i32781_4_lut (.I0(n7_adj_4423), .I1(n1_adj_4422), .I2(byte_transmit_counter_c[3]), 
            .I3(n36387), .O(n37395));
    defparam i32781_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32782_3_lut (.I0(n37395), .I1(n34771), .I2(byte_transmit_counter_c[4]), 
            .I3(GND_net), .O(tx_data[3]));
    defparam i32782_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_1531 (.I0(n27434), .I1(n32731), .I2(n27541), 
            .I3(n32984), .O(n31220));
    defparam i2_3_lut_4_lut_adj_1531.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1532 (.I0(n5_adj_4201), .I1(n3303), .I2(n11335), 
            .I3(\FRAME_MATCHER.i_31__N_2380 ), .O(n32950));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut_adj_1532.LUT_INIT = 16'hfbfa;
    SB_LUT4 i1_4_lut_adj_1533 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(n677), 
            .I2(n746), .I3(n32950), .O(n12796));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1533.LUT_INIT = 16'hb3a0;
    SB_LUT4 i224_2_lut (.I0(n3303), .I1(\FRAME_MATCHER.i_31__N_2380 ), .I2(GND_net), 
            .I3(GND_net), .O(n786));   // verilog/coms.v(148[4] 304[11])
    defparam i224_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_adj_1534 (.I0(n31086), .I1(\data_in_frame[14] [7]), 
            .I2(n11803), .I3(GND_net), .O(n27475));
    defparam i2_3_lut_adj_1534.LUT_INIT = 16'h9696;
    SB_LUT4 i11729_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[0]), 
            .I3(\data_in_frame[0]_c [0]), .O(n15921));
    defparam i11729_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1535 (.I0(\FRAME_MATCHER.i_31__N_2380 ), .I1(n680), 
            .I2(n734), .I3(n32449), .O(n30207));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1535.LUT_INIT = 16'hb3a0;
    SB_LUT4 i11313_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[1]), 
            .I3(\data_in_frame[0]_c [1]), .O(n15505));
    defparam i11313_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11316_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[2]), 
            .I3(\data_in_frame[0]_c [2]), .O(n15508));
    defparam i11316_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3205_4_lut (.I0(n681), .I1(\FRAME_MATCHER.state[3] ), .I2(n683), 
            .I3(n11335), .O(n7076));   // verilog/coms.v(148[4] 304[11])
    defparam i3205_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i11319_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[3]), 
            .I3(\data_in_frame[0]_c [3]), .O(n15511));
    defparam i11319_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11322_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[4]), 
            .I3(\data_in_frame[0]_c [4]), .O(n15514));
    defparam i11322_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11326_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[5]), 
            .I3(\data_in_frame[0]_c [5]), .O(n15518));
    defparam i11326_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i213_2_lut (.I0(\FRAME_MATCHER.state_31__N_2480 [3]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n775));   // verilog/coms.v(148[4] 304[11])
    defparam i213_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i212_2_lut (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2376 ), .I2(GND_net), 
            .I3(GND_net), .O(n774));   // verilog/coms.v(148[4] 304[11])
    defparam i212_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31966_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [5]), 
            .O(n36249));   // verilog/coms.v(109[34:55])
    defparam i31966_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i11329_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[6]), 
            .I3(\data_in_frame[0]_c [6]), .O(n15521));
    defparam i11329_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11332_3_lut_4_lut (.I0(n8_adj_4402), .I1(n30899), .I2(rx_data[7]), 
            .I3(\data_in_frame[0] [7]), .O(n15524));
    defparam i11332_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i18618_4_lut (.I0(n5), .I1(\FRAME_MATCHER.i [31]), .I2(\FRAME_MATCHER.i [2]), 
            .I3(\FRAME_MATCHER.i [3]), .O(n771));   // verilog/coms.v(160[9:60])
    defparam i18618_4_lut.LUT_INIT = 16'h3332;
    SB_LUT4 i2_2_lut_adj_1536 (.I0(n771), .I1(\FRAME_MATCHER.i_31__N_2376 ), 
            .I2(GND_net), .I3(GND_net), .O(n8644));   // verilog/coms.v(148[4] 304[11])
    defparam i2_2_lut_adj_1536.LUT_INIT = 16'h4444;
    SB_LUT4 i31800_2_lut_3_lut_4_lut (.I0(byte_transmit_counter_c[2]), .I1(byte_transmit_counter[0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\data_out_frame[23] [1]), 
            .O(n36257));   // verilog/coms.v(109[34:55])
    defparam i31800_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_1537 (.I0(\data_in_frame[9][1] ), .I1(\data_in_frame[9][2] ), 
            .I2(GND_net), .I3(GND_net), .O(n12096));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1537.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1538 (.I0(\FRAME_MATCHER.i [4]), .I1(n11351), .I2(GND_net), 
            .I3(GND_net), .O(n11253));
    defparam i1_2_lut_adj_1538.LUT_INIT = 16'heeee;
    SB_LUT4 i18612_4_lut (.I0(n8_adj_4402), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n11253), .I3(\FRAME_MATCHER.i [3]), .O(n3303));   // verilog/coms.v(230[9:54])
    defparam i18612_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i1_2_lut_3_lut_adj_1539 (.I0(n27737), .I1(n27415), .I2(n28435), 
            .I3(GND_net), .O(n9610));
    defparam i1_2_lut_3_lut_adj_1539.LUT_INIT = 16'h6969;
    SB_LUT4 i1_4_lut_adj_1540 (.I0(n30968), .I1(n31300), .I2(n11686), 
            .I3(\data_in_frame[10] [6]), .O(n31424));   // verilog/coms.v(74[16:27])
    defparam i1_4_lut_adj_1540.LUT_INIT = 16'h6996;
    SB_LUT4 i3_2_lut_adj_1541 (.I0(n11335), .I1(\FRAME_MATCHER.i_31__N_2375 ), 
            .I2(GND_net), .I3(GND_net), .O(n12791));   // verilog/coms.v(148[4] 304[11])
    defparam i3_2_lut_adj_1541.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1542 (.I0(n743), .I1(n681), .I2(\FRAME_MATCHER.i_31__N_2382 ), 
            .I3(n12791), .O(n4_adj_4424));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1542.LUT_INIT = 16'heca0;
    SB_LUT4 i1_4_lut_adj_1543 (.I0(n683), .I1(n731), .I2(n4_adj_4424), 
            .I3(\FRAME_MATCHER.i_31__N_2380 ), .O(n13415));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1543.LUT_INIT = 16'h5450;
    SB_LUT4 i16185_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), .I2(\data_in_frame[3][1] ), 
            .I3(\data_in_frame[19][1] ), .O(n2764[1]));
    defparam i16185_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 i1_4_lut_adj_1544 (.I0(n680), .I1(n13415), .I2(n677), .I3(n8644), 
            .O(n13416));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1544.LUT_INIT = 16'heccc;
    SB_LUT4 i1_2_lut_adj_1545 (.I0(n12313), .I1(n31142), .I2(GND_net), 
            .I3(GND_net), .O(n28363));
    defparam i1_2_lut_adj_1545.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_1546 (.I0(n31062), .I1(n11859), .I2(\data_in_frame[17] [2]), 
            .I3(n31346), .O(n16_adj_4200));
    defparam i6_4_lut_adj_1546.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_adj_1547 (.I0(\data_in[2] [3]), .I1(\data_in[3] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4425));
    defparam i2_2_lut_adj_1547.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_1548 (.I0(\data_in[0] [2]), .I1(\data_in[3] [5]), 
            .I2(\data_in[3] [1]), .I3(\data_in[0] [7]), .O(n14_adj_4426));
    defparam i6_4_lut_adj_1548.LUT_INIT = 16'hfeff;
    SB_LUT4 i2_3_lut_4_lut_adj_1549 (.I0(n680), .I1(n677), .I2(n683), 
            .I3(\FRAME_MATCHER.i_31__N_2375 ), .O(n32860));   // verilog/coms.v(148[4] 304[11])
    defparam i2_3_lut_4_lut_adj_1549.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_1550 (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(GND_net), .I3(GND_net), .O(n30735));   // verilog/coms.v(130[12] 305[6])
    defparam i1_2_lut_adj_1550.LUT_INIT = 16'h4444;
    SB_LUT4 i7_4_lut_adj_1551 (.I0(\data_in[3] [6]), .I1(n14_adj_4426), 
            .I2(n10_adj_4425), .I3(\data_in[2] [1]), .O(n11409));
    defparam i7_4_lut_adj_1551.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_1552 (.I0(\data_in[3] [7]), .I1(n11348), .I2(\data_in[1] [2]), 
            .I3(\data_in[2] [6]), .O(n22));
    defparam i9_4_lut_adj_1552.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_adj_1553 (.I0(\FRAME_MATCHER.i_31__N_2376 ), .I1(\FRAME_MATCHER.i_31__N_2380 ), 
            .I2(GND_net), .I3(GND_net), .O(n11345));
    defparam i1_2_lut_adj_1553.LUT_INIT = 16'heeee;
    SB_LUT4 i29888_2_lut (.I0(\data_in[0] [5]), .I1(\data_in[2] [5]), .I2(GND_net), 
            .I3(GND_net), .O(n34491));
    defparam i29888_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i30038_3_lut (.I0(\data_in[0] [1]), .I1(\data_in[3] [2]), .I2(\data_in[2] [0]), 
            .I3(GND_net), .O(n34643));
    defparam i30038_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i14_2_lut_adj_1554 (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(GND_net), .I3(GND_net), .O(n161));   // verilog/coms.v(156[9:50])
    defparam i14_2_lut_adj_1554.LUT_INIT = 16'h2222;
    SB_LUT4 i183_4_lut_4_lut (.I0(n680), .I1(n683), .I2(n677), .I3(n3303), 
            .O(n734));   // verilog/coms.v(139[4] 141[7])
    defparam i183_4_lut_4_lut.LUT_INIT = 16'h00d0;
    SB_LUT4 equal_98_i7_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4203));   // verilog/coms.v(157[7:23])
    defparam equal_98_i7_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 mux_643_i17_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[1] [0]), .I3(\data_in_frame[17][0] ), .O(n2764[16]));
    defparam mux_643_i17_3_lut_4_lut.LUT_INIT = 16'hf870;
    SB_LUT4 mux_643_i18_3_lut_4_lut (.I0(Kp_23__N_480), .I1(Kp_23__N_1616), 
            .I2(\data_in_frame[1] [1]), .I3(\data_in_frame[17][1] ), .O(n2764[17]));
    defparam mux_643_i18_3_lut_4_lut.LUT_INIT = 16'hf870;
    uart_tx tx (.tx_o(tx_o), .clk16MHz(clk16MHz), .tx_data({tx_data}), 
            .\o_Rx_DV_N_3356[24] (o_Rx_DV_N_3356[24]), .n27(n27), .GND_net(GND_net), 
            .n29(n29_adj_4428), .\o_Rx_DV_N_3356[12] (o_Rx_DV_N_3356[12]), 
            .n23(n23), .n2857(n2857), .tx_enable(tx_enable), .tx_active(tx_active), 
            .r_Clock_Count({r_Clock_Count}), .VCC_net(VCC_net), .\r_SM_Main_2__N_3404[1] (r_SM_Main_2__N_3404[1]), 
            .\r_SM_Main_2__N_3413[0] (r_SM_Main_2__N_3413[0])) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(110[25:94])
    uart_rx rx (.GND_net(GND_net), .r_Rx_Data(r_Rx_Data), .n29(n29_adj_4428), 
            .n23(n23), .\o_Rx_DV_N_3356[12] (o_Rx_DV_N_3356[12]), .n27(n27), 
            .\o_Rx_DV_N_3356[24] (o_Rx_DV_N_3356[24]), .\r_SM_Main[2] (\r_SM_Main[2] ), 
            .\r_SM_Main[1] (\r_SM_Main[1] ), .baudrate({baudrate}), .VCC_net(VCC_net), 
            .clk16MHz(clk16MHz), .RX_N_2(RX_N_2), .n2854(n2854), .\o_Rx_DV_N_3356[8] (\o_Rx_DV_N_3356[8] ), 
            .n30828(n30828), .n33787(n33787), .n33707(n33707), .n33691(n33691), 
            .n15491(n15491), .rx_data({rx_data}), .n15490(n15490), .n15489(n15489), 
            .n15488(n15488), .n15486(n15486), .n15485(n15485), .n33739(n33739), 
            .n15484(n15484), .n13482(n13482), .n33723(n33723), .n33771(n33771), 
            .n33755(n33755), .n33675(n33675), .r_Clock_Count({r_Clock_Count_adj_9}), 
            .n13640(n13640), .\r_Bit_Index[0] (\r_Bit_Index[0] ), .n31629(n31629), 
            .n2857(n2857), .\r_SM_Main_2__N_3404[1] (r_SM_Main_2__N_3404[1]), 
            .n15990(n15990), .n28495(n28495), .rx_data_ready(rx_data_ready), 
            .n15962(n15962), .\o_Rx_DV_N_3356[7] (\o_Rx_DV_N_3356[7] ), 
            .\o_Rx_DV_N_3356[2] (\o_Rx_DV_N_3356[2] ), .\o_Rx_DV_N_3356[1] (\o_Rx_DV_N_3356[1] ), 
            .\o_Rx_DV_N_3356[5] (\o_Rx_DV_N_3356[5] ), .\o_Rx_DV_N_3356[3] (\o_Rx_DV_N_3356[3] ), 
            .\o_Rx_DV_N_3356[4] (\o_Rx_DV_N_3356[4] ), .\o_Rx_DV_N_3356[6] (\o_Rx_DV_N_3356[6] ), 
            .\o_Rx_DV_N_3356[0] (\o_Rx_DV_N_3356[0] )) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(96[25:68])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (tx_o, clk16MHz, tx_data, \o_Rx_DV_N_3356[24] , n27, 
            GND_net, n29, \o_Rx_DV_N_3356[12] , n23, n2857, tx_enable, 
            tx_active, r_Clock_Count, VCC_net, \r_SM_Main_2__N_3404[1] , 
            \r_SM_Main_2__N_3413[0] ) /* synthesis syn_module_defined=1 */ ;
    output tx_o;
    input clk16MHz;
    input [7:0]tx_data;
    input \o_Rx_DV_N_3356[24] ;
    input n27;
    input GND_net;
    input n29;
    input \o_Rx_DV_N_3356[12] ;
    input n23;
    input n2857;
    output tx_enable;
    output tx_active;
    output [8:0]r_Clock_Count;
    input VCC_net;
    input \r_SM_Main_2__N_3404[1] ;
    input \r_SM_Main_2__N_3413[0] ;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n6, n1, n10927;
    wire [7:0]r_Tx_Data;   // verilog/uart_tx.v(35[16:25])
    
    wire n8421;
    wire [2:0]r_SM_Main;   // verilog/uart_tx.v(32[16:25])
    
    wire n36209, n31617;
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    
    wire n32140, n28515, n38231, n14, n15, n33341, n10, n33347, 
        n28501;
    wire [8:0]n41;
    
    wire n14792, n38100, n4, n38103, n38088, n38091;
    wire [2:0]n460;
    
    wire n15095, n16, n36133, n36130, n36127, n21096, n31483, 
        o_Tx_Serial_N_3466, n26964, n26963, n3, n26962, n26961, 
        n26960, n26959, n26958, n26957;
    
    SB_DFFE o_Tx_Serial_51 (.Q(tx_o), .C(clk16MHz), .E(n1), .D(n6));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[0]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n8421), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i12_4_lut (.I0(n36209), .I1(n31617), .I2(r_Bit_Index[0]), 
            .I3(n32140), .O(n28515));   // verilog/uart_tx.v(32[16:25])
    defparam i12_4_lut.LUT_INIT = 16'h303a;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n38231));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3356[24] ), .I2(n27), 
            .I3(GND_net), .O(n14));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_3356[12] ), .I2(n23), .I3(n2857), 
            .O(n15));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i8_4_lut (.I0(n15), .I1(n1), .I2(n14), .I3(r_SM_Main[1]), 
            .O(n38231));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i8_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 o_Tx_Serial_I_0_1_lut (.I0(tx_o), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(tx_enable));   // verilog/uart_tx.v(39[24:36])
    defparam o_Tx_Serial_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut (.I0(n23), .I1(\o_Rx_DV_N_3356[12] ), .I2(n2857), 
            .I3(r_SM_Main[0]), .O(n33341));
    defparam i1_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_adj_1036 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n27), .I2(n29), 
            .I3(n33341), .O(n10));
    defparam i1_4_lut_adj_1036.LUT_INIT = 16'h0100;
    SB_LUT4 i12_4_lut_adj_1037 (.I0(tx_active), .I1(r_SM_Main[1]), .I2(n33347), 
            .I3(n10), .O(n28501));   // verilog/uart_tx.v(32[16:25])
    defparam i12_4_lut_adj_1037.LUT_INIT = 16'h3aba;
    SB_DFFESR r_Clock_Count_1149__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n1), .D(n41[1]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n1), .D(n41[2]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n1), .D(n41[3]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n1), .D(n41[4]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n1), .D(n41[5]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n1), .D(n41[6]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n1), .D(n41[7]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1149__i8 (.Q(r_Clock_Count[8]), .C(clk16MHz), 
            .E(n1), .D(n41[8]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 r_Bit_Index_2__bdd_4_lut (.I0(r_Bit_Index[2]), .I1(r_Tx_Data[2]), 
            .I2(r_Tx_Data[6]), .I3(r_Bit_Index[1]), .O(n38100));
    defparam r_Bit_Index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n38100_bdd_4_lut (.I0(n38100), .I1(n4), .I2(r_Tx_Data[0]), 
            .I3(r_Bit_Index[1]), .O(n38103));
    defparam n38100_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 r_Bit_Index_2__bdd_4_lut_33480 (.I0(r_Bit_Index[2]), .I1(r_Tx_Data[3]), 
            .I2(r_Tx_Data[7]), .I3(r_Bit_Index[1]), .O(n38088));
    defparam r_Bit_Index_2__bdd_4_lut_33480.LUT_INIT = 16'he4aa;
    SB_LUT4 n38088_bdd_4_lut (.I0(n38088), .I1(n4), .I2(r_Tx_Data[1]), 
            .I3(r_Bit_Index[1]), .O(n38091));
    defparam n38088_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n31617), 
            .D(n460[1]), .R(n15095));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n31617), 
            .D(n460[2]), .R(n15095));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(n16));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_DFF r_Tx_Active_53 (.Q(tx_active), .C(clk16MHz), .D(n28501));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Bit_Index_i0 (.Q(r_Bit_Index[0]), .C(clk16MHz), .E(VCC_net), 
            .D(n28515));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i32109_4_lut (.I0(n36133), .I1(n23), .I2(\o_Rx_DV_N_3356[12] ), 
            .I3(n2857), .O(n36130));   // verilog/uart_tx.v(32[16:25])
    defparam i32109_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i31852_4_lut (.I0(n36130), .I1(n27), .I2(\o_Rx_DV_N_3356[24] ), 
            .I3(n29), .O(n36127));   // verilog/uart_tx.v(32[16:25])
    defparam i31852_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i17384_4_lut (.I0(n36127), .I1(\r_SM_Main_2__N_3404[1] ), .I2(r_SM_Main[0]), 
            .I3(n21096), .O(n8421));   // verilog/uart_tx.v(32[16:25])
    defparam i17384_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i26922_2_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(GND_net), 
            .I3(GND_net), .O(n31483));
    defparam i26922_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut (.I0(r_SM_Main[1]), .I1(\r_SM_Main_2__N_3413[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n21096));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_1_lut (.I0(r_SM_Main[2]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1));
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1890723_i1_3_lut (.I0(n38103), .I1(n38091), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(o_Tx_Serial_N_3466));
    defparam i1890723_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_3466), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n6));
    defparam i14_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i33373_2_lut_4_lut (.I0(\r_SM_Main_2__N_3404[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[2]), .I3(r_SM_Main[0]), .O(n31617));
    defparam i33373_2_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 r_Clock_Count_1149_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[8]), .I3(n26964), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1149_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26963), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3), .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_CARRY r_Clock_Count_1149_add_4_9 (.CI(n26963), .I0(GND_net), .I1(r_Clock_Count[7]), 
            .CO(n26964));
    SB_LUT4 r_Clock_Count_1149_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26962), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_8 (.CI(n26962), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26963));
    SB_LUT4 r_Clock_Count_1149_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26961), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_7 (.CI(n26961), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26962));
    SB_LUT4 r_Clock_Count_1149_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26960), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_6 (.CI(n26960), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26961));
    SB_LUT4 r_Clock_Count_1149_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26959), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFE r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[7]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[6]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[5]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[4]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[3]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(clk16MHz), .E(n10927), 
            .D(tx_data[1]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_CARRY r_Clock_Count_1149_add_4_5 (.CI(n26959), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26960));
    SB_LUT4 r_Clock_Count_1149_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26958), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_4 (.CI(n26958), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26959));
    SB_LUT4 r_Clock_Count_1149_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26957), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_3 (.CI(n26957), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26958));
    SB_LUT4 r_Clock_Count_1149_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1149_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1149_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26957));
    SB_DFFESR r_Clock_Count_1149__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n1), .D(n41[0]), .R(n14792));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 i17387_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(n460[2]));   // verilog/uart_tx.v(34[16:27])
    defparam i17387_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i26918_rep_29_2_lut (.I0(\r_SM_Main_2__N_3404[1] ), .I1(r_SM_Main[1]), 
            .I2(GND_net), .I3(GND_net), .O(n32140));
    defparam i26918_rep_29_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_1038 (.I0(n31483), .I1(n32140), .I2(r_SM_Main[1]), 
            .I3(n16), .O(n15095));
    defparam i1_4_lut_adj_1038.LUT_INIT = 16'h1101;
    SB_LUT4 i8_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[0]), .I2(GND_net), 
            .I3(GND_net), .O(n460[1]));   // verilog/uart_tx.v(34[16:27])
    defparam i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut (.I0(r_SM_Main[1]), .I1(\r_SM_Main_2__N_3413[0] ), 
            .I2(r_SM_Main[2]), .I3(r_SM_Main[0]), .O(n10927));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i32114_2_lut_4_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(r_Bit_Index[0]), .I3(r_SM_Main[1]), .O(n36133));   // verilog/uart_tx.v(32[16:25])
    defparam i32114_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 r_Bit_Index_2__I_0_i4_3_lut (.I0(r_Tx_Data[4]), .I1(r_Tx_Data[5]), 
            .I2(r_Bit_Index[0]), .I3(GND_net), .O(n4));   // verilog/uart_tx.v(85[38:49])
    defparam r_Bit_Index_2__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33348_4_lut (.I0(r_SM_Main[2]), .I1(\r_SM_Main_2__N_3404[1] ), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n14792));
    defparam i33348_4_lut.LUT_INIT = 16'h1115;
    SB_LUT4 i1_4_lut_4_lut (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_3413[0] ), .O(n33347));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h3130;
    SB_LUT4 i32160_2_lut_3_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n36209));   // verilog/uart_tx.v(32[16:25])
    defparam i32160_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i5_2_lut (.I0(n10), .I1(r_SM_Main[1]), .I2(GND_net), .I3(GND_net), 
            .O(n3));   // verilog/uart_tx.v(32[16:25])
    defparam i5_2_lut.LUT_INIT = 16'h6666;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (GND_net, r_Rx_Data, n29, n23, \o_Rx_DV_N_3356[12] , 
            n27, \o_Rx_DV_N_3356[24] , \r_SM_Main[2] , \r_SM_Main[1] , 
            baudrate, VCC_net, clk16MHz, RX_N_2, n2854, \o_Rx_DV_N_3356[8] , 
            n30828, n33787, n33707, n33691, n15491, rx_data, n15490, 
            n15489, n15488, n15486, n15485, n33739, n15484, n13482, 
            n33723, n33771, n33755, n33675, r_Clock_Count, n13640, 
            \r_Bit_Index[0] , n31629, n2857, \r_SM_Main_2__N_3404[1] , 
            n15990, n28495, rx_data_ready, n15962, \o_Rx_DV_N_3356[7] , 
            \o_Rx_DV_N_3356[2] , \o_Rx_DV_N_3356[1] , \o_Rx_DV_N_3356[5] , 
            \o_Rx_DV_N_3356[3] , \o_Rx_DV_N_3356[4] , \o_Rx_DV_N_3356[6] , 
            \o_Rx_DV_N_3356[0] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output r_Rx_Data;
    output n29;
    output n23;
    output \o_Rx_DV_N_3356[12] ;
    output n27;
    output \o_Rx_DV_N_3356[24] ;
    output \r_SM_Main[2] ;
    output \r_SM_Main[1] ;
    input [31:0]baudrate;
    input VCC_net;
    input clk16MHz;
    input RX_N_2;
    input n2854;
    output \o_Rx_DV_N_3356[8] ;
    input n30828;
    output n33787;
    output n33707;
    output n33691;
    input n15491;
    output [7:0]rx_data;
    input n15490;
    input n15489;
    input n15488;
    input n15486;
    input n15485;
    output n33739;
    input n15484;
    output n13482;
    output n33723;
    output n33771;
    output n33755;
    output n33675;
    output [7:0]r_Clock_Count;
    output n13640;
    output \r_Bit_Index[0] ;
    output n31629;
    input n2857;
    output \r_SM_Main_2__N_3404[1] ;
    input n15990;
    input n28495;
    output rx_data_ready;
    input n15962;
    output \o_Rx_DV_N_3356[7] ;
    output \o_Rx_DV_N_3356[2] ;
    output \o_Rx_DV_N_3356[1] ;
    output \o_Rx_DV_N_3356[5] ;
    output \o_Rx_DV_N_3356[3] ;
    output \o_Rx_DV_N_3356[4] ;
    output \o_Rx_DV_N_3356[6] ;
    output \o_Rx_DV_N_3356[0] ;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [23:0]n5370;
    
    wire n2954, n1011, n26765, n26622, n1698, n1460, n26623, n30710, 
        n36184;
    wire [23:0]n5110;
    
    wire n1699, n26621, n26766, n1700, n856, n26620, n36181;
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n36178;
    wire [2:0]r_SM_Main_2__N_3314;
    
    wire n14801, n33387, n2490, n19, n25, n23_adj_3926, n21, n36304, 
        n33393, n13520, n11390, n31675, n31, n29_adj_3927, n27_adj_3928, 
        n36874, n37, n35, n33, n37616, n2955, n26764, n1701, 
        n698, n26619, n18, n41, n37493, n2956, n26763, n2957, 
        n858, n26762, n1702, n43, n37494;
    wire [23:0]n5084;
    
    wire n1552, n1879, n26618, n33323, n538, n31679, n1553, n1742, 
        n26617;
    wire [23:0]n5344;
    
    wire n2827, n3084, n26761, n2828, n2977, n26760, n1554, n1602, 
        n26616, n2829, n2867, n26759, n2830, n2754, n26758, n2831, 
        n2638, n26757, n2832, n2519, n26756, n1555, n1459, n26615, 
        n2833, n2397, n26755, n1414;
    wire [23:0]n5058;
    wire [23:0]n294;
    
    wire n1558, n2834, n2272, n26754, n2835, n2144, n26753, n36301, 
        n37275, n1556, n26614, n2836, n2013, n26752, n2837, n26751, 
        n1557, n26613, n2838, n26750, n26612, n2839, n26749, n24, 
        n26, n2840, n26748, n2841, n26747, n1559, n26611, n2842, 
        n26746, n2843, n26745, n32914, n33369, n33371, n45, n37048, 
        n2844, n26744, n34709, n31729, n33833, n33825, n33829, 
        n33831, n34479, n34481, n22, n30, n33827, n34683, n1837, 
        n2845, n26743, n34717, n34573, n31543, n34743, n33321, 
        n31683, n34747;
    wire [23:0]n5318;
    
    wire n2713, n26742, n1560, n26610, n2714, n26741, n20, n36865, 
        n37770, n37771, n2715, n26740, n2716, n26739, n37671, 
        n1408, n26609, n2717, n26738, n39, n37277, n37557, n37046, 
        n1409, n26608, n2718, n26737, n2719, n26736;
    wire [23:0]n5136;
    
    wire n1972, n11434, n32724, n37559, n2720, n26735, n33995;
    wire [23:0]n5162;
    
    wire n2104, n1410, n26607, n1111;
    wire [23:0]n5006;
    
    wire n1261, n34087, n2721, n26734, n1411, n26606, n2722, n26733;
    wire [23:0]n5188;
    
    wire n2233;
    wire [23:0]n5032;
    
    wire n2723, n26732, n34133, n3, r_Rx_Data_R, n2724, n26731, 
        n34135, n2725, n26730;
    wire [23:0]n5214;
    
    wire n2359, n1412, n26605, n2726, n26729, n2727, n26728, n1693, 
        n1831, n1413, n26604, n2728, n26727;
    wire [23:0]n5240;
    
    wire n2482, n26603;
    wire [23:0]n5266;
    
    wire n2602;
    wire [23:0]n5292;
    
    wire n35_adj_3929, n2729, n26726, n33801, n33821, n34047, n34089, 
        n34045, n11472, n1966, n37_adj_3930, n25_adj_3931, n23_adj_3932, 
        n21_adj_3933, n36752, n2098, n34101, n33285, n33283, n34053, 
        n11468, n31691, n2227, n2353, n2476, n2596, n14, n34057, 
        n34055, n34075, n15, n38232, n2610, n18_adj_3934, n2605, 
        n2609, n36804, n34019, n34021, n20_adj_3935, n2607, n22_adj_3936, 
        n2608, n36815, n34601, n1975, n28, n33775, n33781, n1970, 
        n1974, n36643, n34005, n33969, n34725, n2730, n26725, 
        n33837, n22766, n33261, n31732, n33319, n31687, n30_adj_3937, 
        n1415, n26602, n1839, n30_adj_3938, n1834, n1838, n36682, 
        n32, n961, n42, n33695, n33701, n960, n37644, n959, 
        n37645, n26724, n2597, n26723, n33307, n31721, n19_adj_3939, 
        n17, n37243, n31505, n48, n33679, n33685, n2598, n26722, 
        n2599, n26721, n2600, n26720, n26601, n1262, n26600, n2601, 
        n26719, n1263, n26599, n37785, n3151, n11425, n34033, 
        n34031, n11440, n1116, n26718, n2603, n26717, n2604, n26716, 
        n1264, n26598, n33727, n33733, n26715, n36110, n36107, 
        n2606, n26714, n26713, n26712, n33711, n33717, n1265, 
        n26597, n26711, n26710, n2611, n26709, n2612, n26708, 
        n1266, n26596, n3170, n8, n33759, n33765, n32592, n6, 
        n33317, n1267, n26595, n3167, n12, n26707, n2477, n26706, 
        n3157, n3166, n36508, n14_adj_3940, n2478, n26705, n2479, 
        n26704, n33305, n31725, n48_adj_3941, n34, n33743, n33749, 
        n2480, n26703, n37439, n26594, n48_adj_3942, n34607, n3165, 
        n10, n3169, n36531, n2481, n26702, n31_adj_3943, n29_adj_3944, 
        n27_adj_3945, n37437, n33663, n33669, n1112, n26593, n26701, 
        n12_adj_3946, n2950, n36635, n2483, n26700, n2484, n26699, 
        n1113, n26592, n14_adj_3947, n2485, n26698, n33_adj_3948, 
        n36754, n31699, n2486, n26697, n1114, n26591, n2952, n16, 
        n2487, n26696, n2942, n2951, n36614, n1115, n26590, n2488, 
        n26695, n26528, n26589, n2489, n26694, n26527, n33235, 
        n18_adj_3949, n48_adj_3950, n26693, n26526, n33373, n34685, 
        n2491, n26692, n34705, n33315, n31695, n22768, n33569, 
        n33303, n26691, n26525;
    wire [24:0]o_Rx_DV_N_3356;
    
    wire n2354, n26690, n2355, n26689, n2107, n28_adj_3951, n2102, 
        n2106, n36605, n30_adj_3952, n2356, n26688, n2357, n26687, 
        n2358, n26686, n3064, n10_adj_3953, n14_adj_3954, n3061, 
        n14_adj_3955, n3051, n3060, n36550, n26685, n26524, n16_adj_3956, 
        n2360, n26684, n2361, n26683, n26523, n33515, n2362, n26682, 
        n34025;
    wire [7:0]n1;
    
    wire n2363, n26681, n3059, n12_adj_3961, n34023, n2364, n26680, 
        n26522, n2365, n26679, n3063, n36590, n37483, n2366, n26678, 
        n39_adj_3962, n37484, n26521, n2367, n26677, n33313, n26676, 
        n2228, n26675, n48_adj_3963, n2229, n26674, n26520, n33513;
    wire [23:0]n5422;
    
    wire n3186, n26825, n2230, n26673, n3152, n3082, n26824, n2231, 
        n26672, n2232, n26671, n3153, n3188, n26823, n26670, n3154, 
        n26822, n3155, n26821, n2234, n26669, n3156, n26820, n2235, 
        n26668, n26819, n33965, n26519, n33233, n2238, n24_adj_3964, 
        n2236, n26667, n3158, n26818, n3159, n26817, n2237, n26666, 
        n3160, n26816, n26518, n3161, n26815, n26665, n2239, n26664, 
        n3162, n26814, n2240, n26663, n3163, n26813, n26517, n36367, 
        n33311, n31703, n26_adj_3965, n36430, n34131, n3164, n26812, 
        n34137, n34043, n28_adj_3966, n26662, n26811, n26810, n2099, 
        n26661, n26809, n3168, n26808, n34063, n26807, n26516, 
        n22_adj_3967, n45_adj_3968, n40_adj_3969, n43_adj_3970, n41_adj_3971, 
        n36744, n7817, n6905, n6912, n20_adj_3972, n36742, n37562, 
        n2100, n26660, n962, n22_adj_3973, n36339, n26806, n24_adj_3974, 
        n36347, n26_adj_3975, n33587, n34677, n34577, n34739, n36227, 
        n37911, n48_adj_3976, n46, n32223, n31497, n48_adj_3977, 
        n2101, n26659, n33977, n26658, n3171, n26805, n26515, 
        n2103, n26657, n26656, n7807, n42_adj_3978, n11475, n34103, 
        n11368, n37064, n34649, n2105, n26655, n26654, n44_adj_3979, 
        n18_adj_3980, n26_adj_3981, n36417, n16_adj_3982, n36770, 
        n37774, n805;
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    
    wire n4;
    wire [2:0]n479;
    
    wire n37775, n33847, n26514, n37661, n37606, n37792, n37062, 
        n33353, n37818, n37794, n26653, n3172, n26804, n26513, 
        n33327, n26803, n31671, n2108, n26652;
    wire [23:0]n5396;
    
    wire n3046, n26802, n3047, n26801, n2109, n26651, n2110, n26650, 
        n1967, n26649, n37853, n1968, n26648, n3048, n26800, n33309, 
        n1977, n33835, n48_adj_3983, n37537, n3049, n26799, n40_adj_3984, 
        n1969, n26647, n3050, n26798, n37883, n2938, n3066, n26797, 
        n36811, n3052, n26796, n33849, n3053, n26795, n34_adj_3985, 
        n37365, n33325, n37639, n34597, n41_adj_3986, n26646, n3054, 
        n26794, n36, n3055, n26793, n1971, n26645, n3056, n26792, 
        n33891, n26644, n3057, n26791, n1973, n26643, n3058, n26790, 
        n26512, n26789, n26642, n26788, n26641, n1976, n26640, 
        n26639, n36122, n36123, n38_adj_3987, n40_adj_3988, n36858, 
        n37762, n37763, n37687, n26787, n26511, n3062, n26786, 
        n33297, n33983, n33989, n8_adj_3989, n33985, n26785, n26510, 
        n32980, n26638, n32460, n1832, n26637, n26784, n3065, 
        n26783, n26782, n1833, n26636, n26509, n31501, n26635, 
        n1835, n26634, n26508, n26781, n33429, n803, n6741, n7809, 
        n46_adj_3990, n33435, n34629, n34729, n2, n2939, n26780, 
        n1836, n26633, n7030, n27_adj_3991, n29_adj_3992, n42_adj_3993, 
        n1697, n39_adj_3994, n1696, n41_adj_3995, n37_adj_3996, n2940, 
        n26779, n1695, n43_adj_3997, n29_adj_3998, n31_adj_3999, n31_adj_4000, 
        n29_adj_4001, n46_adj_4002, n33_adj_4003, n31_adj_4004, n35_adj_4005, 
        n37_adj_4006, n41_adj_4007, n2941, n26778, n26632, n26777, 
        n39_adj_4008, n43_adj_4009, n26631, n2943, n26776, n2944, 
        n26775, n19_adj_4010, n38_adj_4011, n40_adj_4012, n43_adj_4013, 
        n42_adj_4014, n43_adj_4015, n33_adj_4016, n36328, n37760, 
        n33943, n35_adj_4017, n23_adj_4018, n21_adj_4019, n17_adj_4020, 
        n26630, n2945, n26774, n26507, n37761, n34041, n36689, 
        n15_adj_4021, n37207, n37423, n25_adj_4022, n1840, n26629, 
        n26506, n29_adj_4023, n27_adj_4024, n37421, n31_adj_4025, 
        n36691, n12_adj_4026, n37479, n2946, n26773, n2947, n26772, 
        n1841, n26628, n2948, n26771, n20_adj_4027, n38_adj_4028, 
        n37_adj_4029, n37480, n41_adj_4030, n39_adj_4031, n36680, 
        n2949, n26770, n31712, n26627, n18_adj_4032, n36667, n37750, 
        n37070, n1694, n26626, n804, n26769, n14_adj_4033, n26768, 
        n26956, n26505, n26767, n26955, n26625, n26954, n26953, 
        n32721, n26952, n26951, n26950, n26624, n3_adj_4035, n16_adj_4036, 
        n24_adj_4037, n2953, n36701, n37776, n37777, n37659, n7819, 
        n37602, n37850, n37068, n37876, n37877, n33625, n34671, 
        n33653, n34737, n34651, n37_adj_4038, n43_adj_4039, n41_adj_4040, 
        n39_adj_4041, n31_adj_4042, n33_adj_4043, n35_adj_4044, n36421, 
        n27_adj_4045, n29_adj_4046, n41_adj_4047, n39_adj_4048, n37_adj_4049, 
        n35_adj_4050, n23_adj_4051, n25_adj_4052, n31_adj_4053, n33_adj_4054, 
        n21_adj_4055, n36352, n36344, n20_adj_4056, n28_adj_4057, 
        n32_adj_4058, n37805, n37806, n37755, n37467, n37782, n37701, 
        n37807, n37808, n37753, n43_adj_4059, n41_adj_4060, n39_adj_4061, 
        n31715, n32_adj_4062, n37517, n37518, n36738, n37209, n36215, 
        n36221, n34_adj_4063, n37541, n36212, n37019, n37682, n36218, 
        n37683, n48_adj_4064, n34073, n11455, n35_adj_4065, n39_adj_4066, 
        n33_adj_4067, n27_adj_4068, n25_adj_4069, n37_adj_4070, n35_adj_4071, 
        n33_adj_4072, n37_adj_4073, n23_adj_4074, n36457, n36369, 
        n27_adj_4075, n29_adj_4076, n22_adj_4077, n30_adj_4078, n44_adj_4079, 
        n23_adj_4080, n34_adj_4081, n25_adj_4082, n37803, n37804, 
        n37757, n37475, n11, n37515, n42_adj_4083, n37638, n44_adj_4084, 
        n15_adj_4085, n17_adj_4086, n41_adj_4087, n39_adj_4088, n33_adj_4089, 
        n19_adj_4090, n35_adj_4091, n37_adj_4092, n29_adj_4093, n31_adj_4094, 
        n13, n21_adj_4095, n36557, n31_adj_4096, n23_adj_4097, n37113, 
        n37381, n37377, n36560, n41_adj_4098, n37_adj_4099, n25_adj_4100, 
        n39_adj_4101, n36833, n45_adj_4102, n33_adj_4103, n7, n43_adj_4104, 
        n9, n17_adj_4105, n19_adj_4106, n21_adj_4107, n11_adj_4108, 
        n8_adj_4109, n37465, n37466, n35_adj_4110, n13_adj_4111, n15_adj_4112, 
        n34_adj_4113, n36552, n37809, n36_adj_4114, n27_adj_4115, 
        n27_adj_4116, n37088, n36419, n36622, n36443, n16_adj_4117, 
        n37469, n37470, n37099, n36391, n20_adj_4118, n37086, n37584, 
        n37872, n8_adj_4119, n24_adj_4120, n3274, n37363, n37886, 
        n36462, n36968, n38_adj_4121, n37887, n37879, n36962, n37672, 
        n31706, n37325, n37786, n12_adj_4122, n48_adj_4123, n4_adj_4124, 
        n41_adj_4125, n37620, n37621, n36409, n10_adj_4126, n30_adj_4127, 
        n37_adj_4128, n35_adj_4129, n36412, n37813, n37581, n37870, 
        n37871, n6_adj_4130, n39_adj_4131, n26_adj_4132, n37622, n37503, 
        n37504, n36607, n37768, n37034, n37856, n37857, n37822, 
        n48_adj_4133, n37623, n36393, n34097, n29_adj_4134, n34105, 
        n31_adj_4135, n37369, n37579, n23_adj_4136, n37845, n25_adj_4137, 
        n27_adj_4138, n36395, n11462, n13_adj_4139, n15_adj_4140, 
        n37712, n40_adj_4141, n33223, n19_adj_4142, n21_adj_4143, 
        n17_adj_4144, n43_adj_4145, n3253, n37714, n33231, n19_adj_4146, 
        n37_adj_4147, n21_adj_4148, n33_adj_4149, n36627, n37163, 
        n37405, n41_adj_4150, n37399, n36629, n39_adj_4151, n32_adj_4152, 
        n37521, n37522, n37229, n33_adj_4153, n9_adj_4154, n37539, 
        n10_adj_4155, n37473, n37474, n37016, n31_adj_4156, n37_adj_4157, 
        n36_adj_4158, n35_adj_4159, n25_adj_4160, n36616, n37780, 
        n37076, n27_adj_4161, n21_adj_4162, n37684, n23_adj_4163, 
        n37685, n13_adj_4164, n15_adj_4165, n22_adj_4166, n37778, 
        n37779, n39_adj_4167, n17_adj_4168, n29_adj_4169, n37657, 
        n37592, n37858, n37074, n43_adj_4170, n11_adj_4171, n19_adj_4172, 
        n36518, n37888, n45_adj_4173, n41_adj_4174, n37889, n37009, 
        n37351, n37349, n36522, n6_adj_4175, n37628, n37523, n37524, 
        n37267, n38_adj_4176, n37012, n32_adj_4177, n37629, n36512, 
        n37811, n37571, n37630, n37631, n36995, n37367, n31_adj_4178, 
        n37569, n37527, n37874, n37624, n37884, n37885, n37881, 
        n37784, n37_adj_4179, n35_adj_4180, n33_adj_4181, n39_adj_4182, 
        n29_adj_4183, n36697, n42_adj_4184, n37646, n40_adj_4185, 
        n28_adj_4186, n37513, n37514, n37647, n36684, n37758, n37022, 
        n37852, n41_adj_4187, n29_adj_4188, n27_adj_4189, n36653, 
        n38_adj_4190, n26_adj_4191, n37507, n37508, n36647, n37766, 
        n37024, n37854, n37855, n37824, n23_adj_4192, n25_adj_4193, 
        n17_adj_4194, n36819, n36808, n37612, n16_adj_4195, n37489, 
        n37490, n37249, n37560, n37054, n28_adj_4196, n37772, n37773, 
        n37667, n37251, n37664, n37052, n37817;
    
    SB_LUT4 add_1562_6_lut (.I0(GND_net), .I1(n2954), .I2(n1011), .I3(n26765), 
            .O(n5370[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_6 (.CI(n26622), .I0(n1698), .I1(n1460), .CO(n26623));
    SB_LUT4 i32150_2_lut (.I0(n30710), .I1(r_Rx_Data), .I2(GND_net), .I3(GND_net), 
            .O(n36184));
    defparam i32150_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_1552_5_lut (.I0(GND_net), .I1(n1699), .I2(n1011), .I3(n26621), 
            .O(n5110[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_6 (.CI(n26765), .I0(n2954), .I1(n1011), .CO(n26766));
    SB_CARRY add_1552_5 (.CI(n26621), .I0(n1699), .I1(n1011), .CO(n26622));
    SB_LUT4 add_1552_4_lut (.I0(GND_net), .I1(n1700), .I2(n856), .I3(n26620), 
            .O(n5110[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_4 (.CI(n26620), .I0(n1700), .I1(n856), .CO(n26621));
    SB_LUT4 i32145_4_lut (.I0(n36184), .I1(n29), .I2(n23), .I3(\o_Rx_DV_N_3356[12] ), 
            .O(n36181));
    defparam i32145_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31861_4_lut (.I0(n36181), .I1(r_SM_Main[0]), .I2(n27), .I3(\o_Rx_DV_N_3356[24] ), 
            .O(n36178));
    defparam i31861_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i33366_4_lut (.I0(\r_SM_Main[2] ), .I1(n36178), .I2(r_SM_Main_2__N_3314[1]), 
            .I3(\r_SM_Main[1] ), .O(n14801));
    defparam i33366_4_lut.LUT_INIT = 16'h0511;
    SB_LUT4 i1_4_lut (.I0(n30710), .I1(\r_SM_Main[1] ), .I2(r_Rx_Data), 
            .I3(r_SM_Main[0]), .O(n33387));
    defparam i1_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 div_37_LessThan_1685_i19_2_lut (.I0(n2490), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n19));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31690_4_lut (.I0(n25), .I1(n23_adj_3926), .I2(n21), .I3(n19), 
            .O(n36304));
    defparam i31690_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_918 (.I0(n29), .I1(n23), .I2(\o_Rx_DV_N_3356[12] ), 
            .I3(n33387), .O(n33393));
    defparam i1_4_lut_adj_918.LUT_INIT = 16'h0100;
    SB_LUT4 i33306_4_lut (.I0(\r_SM_Main[2] ), .I1(\o_Rx_DV_N_3356[24] ), 
            .I2(n27), .I3(n33393), .O(n13520));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i33306_4_lut.LUT_INIT = 16'h5455;
    SB_LUT4 i27104_1_lut (.I0(n11390), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31675));
    defparam i27104_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32260_4_lut (.I0(n31), .I1(n29_adj_3927), .I2(n27_adj_3928), 
            .I3(n36304), .O(n36874));
    defparam i32260_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33002_4_lut (.I0(n37), .I1(n35), .I2(n33), .I3(n36874), 
            .O(n37616));
    defparam i33002_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1562_5_lut (.I0(GND_net), .I1(n2955), .I2(n856), .I3(n26764), 
            .O(n5370[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_3_lut (.I0(GND_net), .I1(n1701), .I2(n698), .I3(n26619), 
            .O(n5110[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32879_3_lut (.I0(n18), .I1(baudrate[13]), .I2(n41), .I3(GND_net), 
            .O(n37493));   // verilog/uart_rx.v(119[33:55])
    defparam i32879_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1562_5 (.CI(n26764), .I0(n2955), .I1(n856), .CO(n26765));
    SB_LUT4 add_1562_4_lut (.I0(GND_net), .I1(n2956), .I2(n698), .I3(n26763), 
            .O(n5370[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1552_3 (.CI(n26619), .I0(n1701), .I1(n698), .CO(n26620));
    SB_CARRY add_1562_4 (.CI(n26763), .I0(n2956), .I1(n698), .CO(n26764));
    SB_LUT4 add_1562_3_lut (.I0(GND_net), .I1(n2957), .I2(n858), .I3(n26762), 
            .O(n5370[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1552_2_lut (.I0(GND_net), .I1(n1702), .I2(n858), .I3(VCC_net), 
            .O(n5110[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_3 (.CI(n26762), .I0(n2957), .I1(n858), .CO(n26763));
    SB_LUT4 i32880_3_lut (.I0(n37493), .I1(baudrate[14]), .I2(n43), .I3(GND_net), 
            .O(n37494));   // verilog/uart_rx.v(119[33:55])
    defparam i32880_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1552_2 (.CI(VCC_net), .I0(n1702), .I1(n858), .CO(n26619));
    SB_LUT4 add_1551_11_lut (.I0(GND_net), .I1(n1552), .I2(n1879), .I3(n26618), 
            .O(n5084[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1562_2_lut (.I0(n31679), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33323)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1562_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26762));
    SB_LUT4 add_1551_10_lut (.I0(GND_net), .I1(n1553), .I2(n1742), .I3(n26617), 
            .O(n5084[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1561_21_lut (.I0(GND_net), .I1(n2827), .I2(n3084), .I3(n26761), 
            .O(n5344[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1561_20_lut (.I0(GND_net), .I1(n2828), .I2(n2977), .I3(n26760), 
            .O(n5344[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_10 (.CI(n26617), .I0(n1553), .I1(n1742), .CO(n26618));
    SB_CARRY add_1561_20 (.CI(n26760), .I0(n2828), .I1(n2977), .CO(n26761));
    SB_LUT4 add_1551_9_lut (.I0(GND_net), .I1(n1554), .I2(n1602), .I3(n26616), 
            .O(n5084[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1561_19_lut (.I0(GND_net), .I1(n2829), .I2(n2867), .I3(n26759), 
            .O(n5344[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_9 (.CI(n26616), .I0(n1554), .I1(n1602), .CO(n26617));
    SB_CARRY add_1561_19 (.CI(n26759), .I0(n2829), .I1(n2867), .CO(n26760));
    SB_LUT4 add_1561_18_lut (.I0(GND_net), .I1(n2830), .I2(n2754), .I3(n26758), 
            .O(n5344[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_18 (.CI(n26758), .I0(n2830), .I1(n2754), .CO(n26759));
    SB_LUT4 add_1561_17_lut (.I0(GND_net), .I1(n2831), .I2(n2638), .I3(n26757), 
            .O(n5344[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_17 (.CI(n26757), .I0(n2831), .I1(n2638), .CO(n26758));
    SB_LUT4 add_1561_16_lut (.I0(GND_net), .I1(n2832), .I2(n2519), .I3(n26756), 
            .O(n5344[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_16 (.CI(n26756), .I0(n2832), .I1(n2519), .CO(n26757));
    SB_LUT4 add_1551_8_lut (.I0(GND_net), .I1(n1555), .I2(n1459), .I3(n26615), 
            .O(n5084[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1561_15_lut (.I0(GND_net), .I1(n2833), .I2(n2397), .I3(n26755), 
            .O(n5344[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_15 (.CI(n26755), .I0(n2833), .I1(n2397), .CO(n26756));
    SB_LUT4 div_37_i1045_3_lut (.I0(n1414), .I1(n5058[17]), .I2(n294[15]), 
            .I3(GND_net), .O(n1558));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1561_14_lut (.I0(GND_net), .I1(n2834), .I2(n2272), .I3(n26754), 
            .O(n5344[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_14 (.CI(n26754), .I0(n2834), .I1(n2272), .CO(n26755));
    SB_CARRY add_1551_8 (.CI(n26615), .I0(n1555), .I1(n1459), .CO(n26616));
    SB_LUT4 add_1561_13_lut (.I0(GND_net), .I1(n2835), .I2(n2144), .I3(n26753), 
            .O(n5344[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32661_4_lut (.I0(n43), .I1(n41), .I2(n29_adj_3927), .I3(n36301), 
            .O(n37275));
    defparam i32661_4_lut.LUT_INIT = 16'heeef;
    SB_CARRY add_1561_13 (.CI(n26753), .I0(n2835), .I1(n2144), .CO(n26754));
    SB_LUT4 add_1551_7_lut (.I0(GND_net), .I1(n1556), .I2(n1460), .I3(n26614), 
            .O(n5084[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_7 (.CI(n26614), .I0(n1556), .I1(n1460), .CO(n26615));
    SB_LUT4 add_1561_12_lut (.I0(GND_net), .I1(n2836), .I2(n2013), .I3(n26752), 
            .O(n5344[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_12 (.CI(n26752), .I0(n2836), .I1(n2013), .CO(n26753));
    SB_LUT4 add_1561_11_lut (.I0(GND_net), .I1(n2837), .I2(n1879), .I3(n26751), 
            .O(n5344[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_11 (.CI(n26751), .I0(n2837), .I1(n1879), .CO(n26752));
    SB_LUT4 add_1551_6_lut (.I0(GND_net), .I1(n1557), .I2(n1011), .I3(n26613), 
            .O(n5084[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1561_10_lut (.I0(GND_net), .I1(n2838), .I2(n1742), .I3(n26750), 
            .O(n5344[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_6 (.CI(n26613), .I0(n1557), .I1(n1011), .CO(n26614));
    SB_LUT4 add_1551_5_lut (.I0(GND_net), .I1(n1558), .I2(n856), .I3(n26612), 
            .O(n5084[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_10 (.CI(n26750), .I0(n2838), .I1(n1742), .CO(n26751));
    SB_LUT4 add_1561_9_lut (.I0(GND_net), .I1(n2839), .I2(n1602), .I3(n26749), 
            .O(n5344[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_9 (.CI(n26749), .I0(n2839), .I1(n1602), .CO(n26750));
    SB_LUT4 div_37_LessThan_1685_i26_3_lut (.I0(n24), .I1(baudrate[7]), 
            .I2(n29_adj_3927), .I3(GND_net), .O(n26));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1561_8_lut (.I0(GND_net), .I1(n2840), .I2(n1459), .I3(n26748), 
            .O(n5344[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_8 (.CI(n26748), .I0(n2840), .I1(n1459), .CO(n26749));
    SB_CARRY add_1551_5 (.CI(n26612), .I0(n1558), .I1(n856), .CO(n26613));
    SB_LUT4 add_1561_7_lut (.I0(GND_net), .I1(n2841), .I2(n1460), .I3(n26747), 
            .O(n5344[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_4_lut (.I0(GND_net), .I1(n1559), .I2(n698), .I3(n26611), 
            .O(n5084[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_7 (.CI(n26747), .I0(n2841), .I1(n1460), .CO(n26748));
    SB_LUT4 add_1561_6_lut (.I0(GND_net), .I1(n2842), .I2(n1011), .I3(n26746), 
            .O(n5344[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_6 (.CI(n26746), .I0(n2842), .I1(n1011), .CO(n26747));
    SB_LUT4 add_1561_5_lut (.I0(GND_net), .I1(n2843), .I2(n856), .I3(n26745), 
            .O(n5344[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_5 (.CI(n26745), .I0(n2843), .I1(n856), .CO(n26746));
    SB_LUT4 i1_2_lut (.I0(n32914), .I1(n33369), .I2(GND_net), .I3(GND_net), 
            .O(n33371));   // verilog/uart_rx.v(69[17:62])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i32434_3_lut (.I0(n37494), .I1(baudrate[15]), .I2(n45), .I3(GND_net), 
            .O(n37048));   // verilog/uart_rx.v(119[33:55])
    defparam i32434_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1140_3_lut (.I0(n1558), .I1(n5084[17]), .I2(n294[14]), 
            .I3(GND_net), .O(n1699));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1561_4_lut (.I0(GND_net), .I1(n2844), .I2(n698), .I3(n26744), 
            .O(n5344[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30105_1_lut (.I0(n34709), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31729));
    defparam i30105_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_919 (.I0(baudrate[7]), .I1(baudrate[8]), .I2(GND_net), 
            .I3(GND_net), .O(n33833));
    defparam i1_2_lut_adj_919.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_920 (.I0(baudrate[15]), .I1(baudrate[16]), .I2(GND_net), 
            .I3(GND_net), .O(n33825));
    defparam i1_2_lut_adj_920.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_921 (.I0(baudrate[11]), .I1(baudrate[12]), .I2(GND_net), 
            .I3(GND_net), .O(n33829));
    defparam i1_2_lut_adj_921.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_922 (.I0(baudrate[9]), .I1(baudrate[10]), .I2(GND_net), 
            .I3(GND_net), .O(n33831));
    defparam i1_2_lut_adj_922.LUT_INIT = 16'heeee;
    SB_LUT4 i29876_2_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(GND_net), 
            .I3(GND_net), .O(n34479));
    defparam i29876_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_923 (.I0(baudrate[17]), .I1(baudrate[18]), .I2(GND_net), 
            .I3(GND_net), .O(n34481));
    defparam i1_2_lut_adj_923.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1685_i30_3_lut (.I0(n22), .I1(baudrate[9]), 
            .I2(n33), .I3(GND_net), .O(n30));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30078_4_lut (.I0(n33831), .I1(n33827), .I2(n33829), .I3(n33825), 
            .O(n34683));
    defparam i30078_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1233_3_lut (.I0(n1699), .I1(n5110[17]), .I2(n294[13]), 
            .I3(GND_net), .O(n1837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1233_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1561_4 (.CI(n26744), .I0(n2844), .I1(n698), .CO(n26745));
    SB_LUT4 add_1561_3_lut (.I0(GND_net), .I1(n2845), .I2(n858), .I3(n26743), 
            .O(n5344[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1561_3 (.CI(n26743), .I0(n2845), .I1(n858), .CO(n26744));
    SB_LUT4 i30138_4_lut (.I0(n34717), .I1(n34573), .I2(n31543), .I3(baudrate[4]), 
            .O(n34743));
    defparam i30138_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1551_4 (.CI(n26611), .I0(n1559), .I1(n698), .CO(n26612));
    SB_LUT4 add_1561_2_lut (.I0(n31683), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33321)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1561_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i33303_4_lut (.I0(n34683), .I1(n34481), .I2(n34743), .I3(n34479), 
            .O(n34747));
    defparam i33303_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1561_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26743));
    SB_LUT4 add_1560_20_lut (.I0(GND_net), .I1(n2713), .I2(n2977), .I3(n26742), 
            .O(n5318[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1551_3_lut (.I0(GND_net), .I1(n1560), .I2(n858), .I3(n26610), 
            .O(n5084[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1551_3 (.CI(n26610), .I0(n1560), .I1(n858), .CO(n26611));
    SB_LUT4 add_1560_19_lut (.I0(GND_net), .I1(n2714), .I2(n2867), .I3(n26741), 
            .O(n5318[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i33156_4_lut (.I0(n30), .I1(n20), .I2(n33), .I3(n36865), 
            .O(n37770));   // verilog/uart_rx.v(119[33:55])
    defparam i33156_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1560_19 (.CI(n26741), .I0(n2714), .I1(n2867), .CO(n26742));
    SB_LUT4 i33157_3_lut (.I0(n37770), .I1(baudrate[10]), .I2(n35), .I3(GND_net), 
            .O(n37771));   // verilog/uart_rx.v(119[33:55])
    defparam i33157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1560_18_lut (.I0(GND_net), .I1(n2715), .I2(n2754), .I3(n26740), 
            .O(n5318[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_18 (.CI(n26740), .I0(n2715), .I1(n2754), .CO(n26741));
    SB_LUT4 add_1551_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n5084[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1551_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1560_17_lut (.I0(GND_net), .I1(n2716), .I2(n2638), .I3(n26739), 
            .O(n5318[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_17 (.CI(n26739), .I0(n2716), .I1(n2638), .CO(n26740));
    SB_LUT4 i33057_3_lut (.I0(n37771), .I1(baudrate[11]), .I2(n37), .I3(GND_net), 
            .O(n37671));   // verilog/uart_rx.v(119[33:55])
    defparam i33057_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1551_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26610));
    SB_LUT4 add_1550_10_lut (.I0(GND_net), .I1(n1408), .I2(n1742), .I3(n26609), 
            .O(n5058[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1560_16_lut (.I0(GND_net), .I1(n2717), .I2(n2519), .I3(n26738), 
            .O(n5318[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32663_4_lut (.I0(n43), .I1(n41), .I2(n39), .I3(n37616), 
            .O(n37277));
    defparam i32663_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32943_4_lut (.I0(n37048), .I1(n26), .I2(n45), .I3(n37275), 
            .O(n37557));   // verilog/uart_rx.v(119[33:55])
    defparam i32943_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32432_3_lut (.I0(n37671), .I1(baudrate[12]), .I2(n39), .I3(GND_net), 
            .O(n37046));   // verilog/uart_rx.v(119[33:55])
    defparam i32432_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1560_16 (.CI(n26738), .I0(n2717), .I1(n2519), .CO(n26739));
    SB_LUT4 add_1550_9_lut (.I0(GND_net), .I1(n1409), .I2(n1602), .I3(n26608), 
            .O(n5058[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1560_15_lut (.I0(GND_net), .I1(n2718), .I2(n2397), .I3(n26737), 
            .O(n5318[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_15 (.CI(n26737), .I0(n2718), .I1(n2397), .CO(n26738));
    SB_LUT4 add_1560_14_lut (.I0(GND_net), .I1(n2719), .I2(n2272), .I3(n26736), 
            .O(n5318[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1324_3_lut (.I0(n1837), .I1(n5136[17]), .I2(n294[12]), 
            .I3(GND_net), .O(n1972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33339_3_lut (.I0(n11434), .I1(baudrate[1]), .I2(baudrate[2]), 
            .I3(GND_net), .O(n32724));   // verilog/uart_rx.v(119[33:55])
    defparam i33339_3_lut.LUT_INIT = 16'h0101;
    SB_CARRY add_1550_9 (.CI(n26608), .I0(n1409), .I1(n1602), .CO(n26609));
    SB_LUT4 i32945_4_lut (.I0(n37046), .I1(n37557), .I2(n45), .I3(n37277), 
            .O(n37559));   // verilog/uart_rx.v(119[33:55])
    defparam i32945_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_adj_924 (.I0(baudrate[13]), .I1(baudrate[14]), .I2(GND_net), 
            .I3(GND_net), .O(n33827));
    defparam i1_2_lut_adj_924.LUT_INIT = 16'heeee;
    SB_CARRY add_1560_14 (.CI(n26736), .I0(n2719), .I1(n2272), .CO(n26737));
    SB_LUT4 add_1560_13_lut (.I0(GND_net), .I1(n2720), .I2(n2144), .I3(n26735), 
            .O(n5318[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_925 (.I0(baudrate[27]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n33995));
    defparam i1_2_lut_adj_925.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1413_3_lut (.I0(n1972), .I1(n5162[17]), .I2(n294[11]), 
            .I3(GND_net), .O(n2104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1550_8_lut (.I0(GND_net), .I1(n1410), .I2(n1459), .I3(n26607), 
            .O(n5058[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_13 (.CI(n26735), .I0(n2720), .I1(n2144), .CO(n26736));
    SB_LUT4 div_37_i843_3_lut (.I0(n1111), .I1(n5006[23]), .I2(n294[17]), 
            .I3(GND_net), .O(n1261));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_926 (.I0(baudrate[22]), .I1(baudrate[23]), .I2(GND_net), 
            .I3(GND_net), .O(n34087));
    defparam i1_2_lut_adj_926.LUT_INIT = 16'heeee;
    SB_CARRY add_1550_8 (.CI(n26607), .I0(n1410), .I1(n1459), .CO(n26608));
    SB_LUT4 add_1560_12_lut (.I0(GND_net), .I1(n2721), .I2(n2013), .I3(n26734), 
            .O(n5318[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_7_lut (.I0(GND_net), .I1(n1411), .I2(n1460), .I3(n26606), 
            .O(n5058[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_12 (.CI(n26734), .I0(n2721), .I1(n2013), .CO(n26735));
    SB_LUT4 add_1560_11_lut (.I0(GND_net), .I1(n2722), .I2(n1879), .I3(n26733), 
            .O(n5318[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_11 (.CI(n26733), .I0(n2722), .I1(n1879), .CO(n26734));
    SB_CARRY add_1550_7 (.CI(n26606), .I0(n1411), .I1(n1460), .CO(n26607));
    SB_LUT4 div_37_i1500_3_lut (.I0(n2104), .I1(n5188[17]), .I2(n294[10]), 
            .I3(GND_net), .O(n2233));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i942_3_lut (.I0(n1261), .I1(n5032[23]), .I2(n294[16]), 
            .I3(GND_net), .O(n1408));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1560_10_lut (.I0(GND_net), .I1(n2723), .I2(n1742), .I3(n26732), 
            .O(n5318[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_927 (.I0(baudrate[25]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n34133));
    defparam i1_2_lut_adj_927.LUT_INIT = 16'heeee;
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n3), .R(\r_SM_Main[2] ));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 div_37_i1039_3_lut (.I0(n1408), .I1(n5058[23]), .I2(n294[15]), 
            .I3(GND_net), .O(n1552));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1039_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF r_Rx_Data_56 (.Q(r_Rx_Data), .C(clk16MHz), .D(r_Rx_Data_R));   // verilog/uart_rx.v(42[10] 46[8])
    SB_CARRY add_1560_10 (.CI(n26732), .I0(n2723), .I1(n1742), .CO(n26733));
    SB_LUT4 add_1560_9_lut (.I0(GND_net), .I1(n2724), .I2(n1602), .I3(n26731), 
            .O(n5318[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Data_R_55 (.Q(r_Rx_Data_R), .C(clk16MHz), .D(RX_N_2));   // verilog/uart_rx.v(42[10] 46[8])
    SB_LUT4 i1_2_lut_adj_928 (.I0(baudrate[24]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n34135));
    defparam i1_2_lut_adj_928.LUT_INIT = 16'heeee;
    SB_CARRY add_1560_9 (.CI(n26731), .I0(n2724), .I1(n1602), .CO(n26732));
    SB_LUT4 add_1560_8_lut (.I0(GND_net), .I1(n2725), .I2(n1459), .I3(n26730), 
            .O(n5318[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1585_3_lut (.I0(n2233), .I1(n5214[17]), .I2(n294[9]), 
            .I3(GND_net), .O(n2359));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1585_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1560_8 (.CI(n26730), .I0(n2725), .I1(n1459), .CO(n26731));
    SB_LUT4 add_1550_6_lut (.I0(GND_net), .I1(n1412), .I2(n1011), .I3(n26605), 
            .O(n5058[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1560_7_lut (.I0(GND_net), .I1(n2726), .I2(n1460), .I3(n26729), 
            .O(n5318[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_7 (.CI(n26729), .I0(n2726), .I1(n1460), .CO(n26730));
    SB_LUT4 add_1560_6_lut (.I0(GND_net), .I1(n2727), .I2(n1011), .I3(n26728), 
            .O(n5318[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_6 (.CI(n26605), .I0(n1412), .I1(n1011), .CO(n26606));
    SB_LUT4 div_37_i1134_3_lut (.I0(n1552), .I1(n5084[23]), .I2(n294[14]), 
            .I3(GND_net), .O(n1693));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1227_3_lut (.I0(n1693), .I1(n5110[23]), .I2(n294[13]), 
            .I3(GND_net), .O(n1831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1227_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1560_6 (.CI(n26728), .I0(n2727), .I1(n1011), .CO(n26729));
    SB_LUT4 add_1550_5_lut (.I0(GND_net), .I1(n1413), .I2(n856), .I3(n26604), 
            .O(n5058[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1560_5_lut (.I0(GND_net), .I1(n2728), .I2(n856), .I3(n26727), 
            .O(n5318[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1550_5 (.CI(n26604), .I0(n1413), .I1(n856), .CO(n26605));
    SB_CARRY add_1560_5 (.CI(n26727), .I0(n2728), .I1(n856), .CO(n26728));
    SB_LUT4 div_37_i1668_3_lut (.I0(n2359), .I1(n5240[17]), .I2(n294[8]), 
            .I3(GND_net), .O(n2482));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1668_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1550_4_lut (.I0(GND_net), .I1(n1414), .I2(n698), .I3(n26603), 
            .O(n5058[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1749_3_lut (.I0(n2482), .I1(n5266[17]), .I2(n294[7]), 
            .I3(GND_net), .O(n2602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1828_3_lut (.I0(n2602), .I1(n5292[17]), .I2(n294[6]), 
            .I3(GND_net), .O(n2719));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i35_2_lut (.I0(n2719), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3929));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1560_4_lut (.I0(GND_net), .I1(n2729), .I2(n698), .I3(n26726), 
            .O(n5318[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1560_4 (.CI(n26726), .I0(n2729), .I1(n698), .CO(n26727));
    SB_LUT4 i1_4_lut_adj_929 (.I0(n34087), .I1(n33995), .I2(n33801), .I3(baudrate[19]), 
            .O(n33821));
    defparam i1_4_lut_adj_929.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_930 (.I0(n33821), .I1(n34047), .I2(n34089), .I3(n34045), 
            .O(n11472));
    defparam i1_4_lut_adj_930.LUT_INIT = 16'hfffe;
    SB_CARRY add_1550_4 (.CI(n26603), .I0(n1414), .I1(n698), .CO(n26604));
    SB_LUT4 div_37_i1318_3_lut (.I0(n1831), .I1(n5136[23]), .I2(n294[12]), 
            .I3(GND_net), .O(n1966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1318_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32138_4_lut (.I0(n37_adj_3930), .I1(n25_adj_3931), .I2(n23_adj_3932), 
            .I3(n21_adj_3933), .O(n36752));
    defparam i32138_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1407_3_lut (.I0(n1966), .I1(n5162[23]), .I2(n294[11]), 
            .I3(GND_net), .O(n2098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_931 (.I0(baudrate[20]), .I1(baudrate[21]), .I2(GND_net), 
            .I3(GND_net), .O(n34089));
    defparam i1_2_lut_adj_931.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_932 (.I0(n34101), .I1(n33285), .I2(n33283), .I3(n34053), 
            .O(n11468));
    defparam i1_4_lut_adj_932.LUT_INIT = 16'hfffe;
    SB_LUT4 i27120_1_lut (.I0(n11468), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31691));
    defparam i27120_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1494_3_lut (.I0(n2098), .I1(n5188[23]), .I2(n294[10]), 
            .I3(GND_net), .O(n2227));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1579_3_lut (.I0(n2227), .I1(n5214[23]), .I2(n294[9]), 
            .I3(GND_net), .O(n2353));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1579_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1662_3_lut (.I0(n2353), .I1(n5240[23]), .I2(n294[8]), 
            .I3(GND_net), .O(n2476));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1743_3_lut (.I0(n2476), .I1(n5266[23]), .I2(n294[7]), 
            .I3(GND_net), .O(n2596));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3356[24] ), .I2(n27), 
            .I3(GND_net), .O(n14));
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_933 (.I0(n34057), .I1(n34053), .I2(n34055), .I3(n34089), 
            .O(n34075));
    defparam i1_4_lut_adj_933.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_3356[12] ), .I2(n23), .I3(n2854), 
            .O(n15));
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i8_4_lut (.I0(n15), .I1(\o_Rx_DV_N_3356[8] ), .I2(n14), .I3(n30828), 
            .O(n38232));
    defparam i8_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 div_37_i1822_3_lut (.I0(n2596), .I1(n5292[23]), .I2(n294[6]), 
            .I3(GND_net), .O(n2713));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i18_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2610), .I3(GND_net), .O(n18_adj_3934));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32190_2_lut_4_lut (.I0(n2605), .I1(baudrate[8]), .I2(n2609), 
            .I3(baudrate[4]), .O(n36804));
    defparam i32190_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_adj_934 (.I0(baudrate[14]), .I1(baudrate[15]), .I2(GND_net), 
            .I3(GND_net), .O(n34057));
    defparam i1_2_lut_adj_934.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_935 (.I0(baudrate[12]), .I1(baudrate[13]), .I2(GND_net), 
            .I3(GND_net), .O(n34019));
    defparam i1_2_lut_adj_935.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_936 (.I0(baudrate[10]), .I1(baudrate[11]), .I2(GND_net), 
            .I3(GND_net), .O(n34021));
    defparam i1_2_lut_adj_936.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1766_i20_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2605), .I3(GND_net), .O(n20_adj_3935));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1766_i22_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2607), .I3(GND_net), .O(n22_adj_3936));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32201_2_lut_4_lut (.I0(n2607), .I1(baudrate[6]), .I2(n2608), 
            .I3(baudrate[5]), .O(n36815));
    defparam i32201_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i26974_2_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(GND_net), 
            .I3(GND_net), .O(n31543));
    defparam i26974_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i29996_2_lut (.I0(baudrate[21]), .I1(baudrate[22]), .I2(GND_net), 
            .I3(GND_net), .O(n34601));
    defparam i29996_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1341_i28_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1975), .I3(GND_net), .O(n28));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_937 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33775), .O(n33781));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_937.LUT_INIT = 16'hfffe;
    SB_LUT4 i32029_2_lut_4_lut (.I0(n1970), .I1(baudrate[8]), .I2(n1974), 
            .I3(baudrate[4]), .O(n36643));
    defparam i32029_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_4_lut_adj_938 (.I0(n34133), .I1(n34005), .I2(n34087), .I3(n33995), 
            .O(n11390));
    defparam i1_4_lut_adj_938.LUT_INIT = 16'hfffe;
    SB_LUT4 i30120_4_lut (.I0(n34601), .I1(n33969), .I2(n34021), .I3(baudrate[9]), 
            .O(n34725));
    defparam i30120_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1560_3_lut (.I0(GND_net), .I1(n2730), .I2(n858), .I3(n26725), 
            .O(n5318[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_939 (.I0(baudrate[17]), .I1(n33837), .I2(baudrate[2]), 
            .I3(n22766), .O(n33261));
    defparam i1_4_lut_adj_939.LUT_INIT = 16'h0100;
    SB_CARRY add_1560_3 (.CI(n26725), .I0(n2730), .I1(n858), .CO(n26726));
    SB_LUT4 i1_4_lut_adj_940 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33781), .O(n33787));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_940.LUT_INIT = 16'hfffe;
    SB_LUT4 i18650_rep_4_2_lut (.I0(baudrate[0]), .I1(n294[19]), .I2(GND_net), 
            .I3(GND_net), .O(n31732));   // verilog/uart_rx.v(119[33:55])
    defparam i18650_rep_4_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_1560_2_lut (.I0(n31687), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33319)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1560_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1560_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26725));
    SB_LUT4 div_37_LessThan_1341_i30_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1970), .I3(GND_net), .O(n30_adj_3937));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1550_3_lut (.I0(GND_net), .I1(n1415), .I2(n858), .I3(n26602), 
            .O(n5058[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1250_i30_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1839), .I3(GND_net), .O(n30_adj_3938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1550_3 (.CI(n26602), .I0(n1415), .I1(n858), .CO(n26603));
    SB_LUT4 i32068_2_lut_4_lut (.I0(n1834), .I1(baudrate[8]), .I2(n1838), 
            .I3(baudrate[4]), .O(n36682));
    defparam i32068_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1250_i32_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1834), .I3(GND_net), .O(n32));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i32_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_662_i42_4_lut (.I0(n31732), .I1(baudrate[2]), 
            .I2(n961), .I3(baudrate[1]), .O(n42));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_662_i42_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i1_4_lut_adj_941 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33695), .O(n33701));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_941.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_942 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33701), .O(n33707));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_942.LUT_INIT = 16'hfffe;
    SB_LUT4 i33030_3_lut (.I0(n42), .I1(baudrate[3]), .I2(n960), .I3(GND_net), 
            .O(n37644));   // verilog/uart_rx.v(119[33:55])
    defparam i33030_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33031_3_lut (.I0(n37644), .I1(baudrate[4]), .I2(n959), .I3(GND_net), 
            .O(n37645));   // verilog/uart_rx.v(119[33:55])
    defparam i33031_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1559_19_lut (.I0(GND_net), .I1(n2596), .I2(n2867), .I3(n26724), 
            .O(n5292[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1559_18_lut (.I0(GND_net), .I1(n2597), .I2(n2754), .I3(n26723), 
            .O(n5292[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1550_2_lut (.I0(n31721), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33307)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1550_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i32629_4_lut (.I0(n19_adj_3939), .I1(n17), .I2(n2729), .I3(baudrate[2]), 
            .O(n37243));
    defparam i32629_4_lut.LUT_INIT = 16'heffe;
    SB_CARRY add_1559_18 (.CI(n26723), .I0(n2597), .I1(n2754), .CO(n26724));
    SB_LUT4 i32920_3_lut (.I0(n37645), .I1(baudrate[5]), .I2(n31505), 
            .I3(GND_net), .O(n48));   // verilog/uart_rx.v(119[33:55])
    defparam i32920_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i1_4_lut_adj_943 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33679), .O(n33685));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_943.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1559_17_lut (.I0(GND_net), .I1(n2598), .I2(n2638), .I3(n26722), 
            .O(n5292[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_17 (.CI(n26722), .I0(n2598), .I1(n2638), .CO(n26723));
    SB_LUT4 add_1559_16_lut (.I0(GND_net), .I1(n2599), .I2(n2519), .I3(n26721), 
            .O(n5292[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_16 (.CI(n26721), .I0(n2599), .I1(n2519), .CO(n26722));
    SB_CARRY add_1550_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26602));
    SB_LUT4 add_1559_15_lut (.I0(GND_net), .I1(n2600), .I2(n2397), .I3(n26720), 
            .O(n5292[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_944 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33685), .O(n33691));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_944.LUT_INIT = 16'hfffe;
    SB_CARRY add_1559_15 (.CI(n26720), .I0(n2600), .I1(n2397), .CO(n26721));
    SB_LUT4 add_1549_9_lut (.I0(GND_net), .I1(n1261), .I2(n1602), .I3(n26601), 
            .O(n5032[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_8_lut (.I0(GND_net), .I1(n1262), .I2(n1459), .I3(n26600), 
            .O(n5032[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1559_14_lut (.I0(GND_net), .I1(n2601), .I2(n2272), .I3(n26719), 
            .O(n5292[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_8 (.CI(n26600), .I0(n1262), .I1(n1459), .CO(n26601));
    SB_LUT4 add_1549_7_lut (.I0(GND_net), .I1(n1263), .I2(n1460), .I3(n26599), 
            .O(n5032[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_14 (.CI(n26719), .I0(n2601), .I1(n2272), .CO(n26720));
    SB_LUT4 i33446_2_lut_4_lut (.I0(n37785), .I1(baudrate[22]), .I2(n3151), 
            .I3(n11425), .O(n294[1]));
    defparam i33446_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_4_lut_adj_945 (.I0(n34033), .I1(n11390), .I2(n34075), .I3(n34031), 
            .O(n11440));
    defparam i1_4_lut_adj_945.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(n11440), .I1(n48), .I2(baudrate[0]), .I3(GND_net), 
            .O(n1116));
    defparam i1_3_lut.LUT_INIT = 16'hefef;
    SB_DFF r_Rx_Byte_i7 (.Q(rx_data[7]), .C(clk16MHz), .D(n15491));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1549_7 (.CI(n26599), .I0(n1263), .I1(n1460), .CO(n26600));
    SB_LUT4 add_1559_13_lut (.I0(GND_net), .I1(n2602), .I2(n2144), .I3(n26718), 
            .O(n5292[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_13 (.CI(n26718), .I0(n2602), .I1(n2144), .CO(n26719));
    SB_LUT4 add_1559_12_lut (.I0(GND_net), .I1(n2603), .I2(n2013), .I3(n26717), 
            .O(n5292[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_12 (.CI(n26717), .I0(n2603), .I1(n2013), .CO(n26718));
    SB_DFF r_Rx_Byte_i6 (.Q(rx_data[6]), .C(clk16MHz), .D(n15490));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1559_11_lut (.I0(GND_net), .I1(n2604), .I2(n1879), .I3(n26716), 
            .O(n5292[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Byte_i5 (.Q(rx_data[5]), .C(clk16MHz), .D(n15489));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1559_11 (.CI(n26716), .I0(n2604), .I1(n1879), .CO(n26717));
    SB_DFF r_Rx_Byte_i4 (.Q(rx_data[4]), .C(clk16MHz), .D(n15488));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1549_6_lut (.I0(GND_net), .I1(n1264), .I2(n1011), .I3(n26598), 
            .O(n5032[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_Rx_Byte_i3 (.Q(rx_data[3]), .C(clk16MHz), .D(n15486));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i2 (.Q(rx_data[2]), .C(clk16MHz), .D(n15485));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i1_4_lut_adj_946 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33727), .O(n33733));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_946.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_947 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33733), .O(n33739));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_947.LUT_INIT = 16'hfffe;
    SB_DFF r_Rx_Byte_i1 (.Q(rx_data[1]), .C(clk16MHz), .D(n15484));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1559_10_lut (.I0(GND_net), .I1(n2605), .I2(n1742), .I3(n26715), 
            .O(n5292[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32120_4_lut (.I0(\o_Rx_DV_N_3356[8] ), .I1(\o_Rx_DV_N_3356[12] ), 
            .I2(n2854), .I3(n30828), .O(n36110));
    defparam i32120_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i32117_4_lut (.I0(n36110), .I1(\o_Rx_DV_N_3356[24] ), .I2(n29), 
            .I3(n23), .O(n36107));
    defparam i32117_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i14_4_lut (.I0(\r_SM_Main[1] ), .I1(n36107), .I2(r_SM_Main[0]), 
            .I3(n27), .O(n13482));
    defparam i14_4_lut.LUT_INIT = 16'h05c5;
    SB_CARRY add_1559_10 (.CI(n26715), .I0(n2605), .I1(n1742), .CO(n26716));
    SB_LUT4 add_1559_9_lut (.I0(GND_net), .I1(n2606), .I2(n1602), .I3(n26714), 
            .O(n5292[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_9 (.CI(n26714), .I0(n2606), .I1(n1602), .CO(n26715));
    SB_LUT4 add_1559_8_lut (.I0(GND_net), .I1(n2607), .I2(n1459), .I3(n26713), 
            .O(n5292[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_6 (.CI(n26598), .I0(n1264), .I1(n1011), .CO(n26599));
    SB_CARRY add_1559_8 (.CI(n26713), .I0(n2607), .I1(n1459), .CO(n26714));
    SB_LUT4 add_1559_7_lut (.I0(GND_net), .I1(n2608), .I2(n1460), .I3(n26712), 
            .O(n5292[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_948 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33711), .O(n33717));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_948.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1549_5_lut (.I0(GND_net), .I1(n1265), .I2(n856), .I3(n26597), 
            .O(n5032[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_949 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33717), .O(n33723));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_949.LUT_INIT = 16'hfffe;
    SB_CARRY add_1559_7 (.CI(n26712), .I0(n2608), .I1(n1460), .CO(n26713));
    SB_LUT4 add_1559_6_lut (.I0(GND_net), .I1(n2609), .I2(n1011), .I3(n26711), 
            .O(n5292[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1549_5 (.CI(n26597), .I0(n1265), .I1(n856), .CO(n26598));
    SB_CARRY add_1559_6 (.CI(n26711), .I0(n2609), .I1(n1011), .CO(n26712));
    SB_LUT4 add_1559_5_lut (.I0(GND_net), .I1(n2610), .I2(n856), .I3(n26710), 
            .O(n5292[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_5 (.CI(n26710), .I0(n2610), .I1(n856), .CO(n26711));
    SB_LUT4 add_1559_4_lut (.I0(GND_net), .I1(n2611), .I2(n698), .I3(n26709), 
            .O(n5292[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF r_SM_Main_i2 (.Q(\r_SM_Main[2] ), .C(clk16MHz), .D(n38232));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1559_4 (.CI(n26709), .I0(n2611), .I1(n698), .CO(n26710));
    SB_LUT4 add_1559_3_lut (.I0(GND_net), .I1(n2612), .I2(n858), .I3(n26708), 
            .O(n5292[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1549_4_lut (.I0(GND_net), .I1(n1266), .I2(n698), .I3(n26596), 
            .O(n5032[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2141_i8_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3170), .I3(GND_net), .O(n8));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i8_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_950 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33759), .O(n33765));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_950.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_951 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33765), .O(n33771));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_951.LUT_INIT = 16'hfffe;
    SB_CARRY add_1549_4 (.CI(n26596), .I0(n1266), .I1(n698), .CO(n26597));
    SB_LUT4 i1_4_lut_adj_952 (.I0(n34683), .I1(n33261), .I2(n11468), .I3(n34573), 
            .O(n32592));
    defparam i1_4_lut_adj_952.LUT_INIT = 16'h0004;
    SB_LUT4 i2_2_lut (.I0(r_SM_Main[0]), .I1(\r_SM_Main[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_1559_3 (.CI(n26708), .I0(n2612), .I1(n858), .CO(n26709));
    SB_LUT4 add_1559_2_lut (.I0(n31691), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33317)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1559_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_1549_3_lut (.I0(GND_net), .I1(n1267), .I2(n858), .I3(n26595), 
            .O(n5032[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1559_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26708));
    SB_LUT4 div_37_LessThan_2141_i12_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3167), .I3(GND_net), .O(n12));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1558_18_lut (.I0(GND_net), .I1(n2476), .I2(n2754), .I3(n26707), 
            .O(n5266[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1558_17_lut (.I0(GND_net), .I1(n2477), .I2(n2638), .I3(n26706), 
            .O(n5266[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i848_3_lut (.I0(n1116), .I1(n5006[18]), .I2(n294[17]), 
            .I3(GND_net), .O(n1266));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i848_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31894_2_lut_4_lut (.I0(n3157), .I1(baudrate[16]), .I2(n3166), 
            .I3(baudrate[7]), .O(n36508));
    defparam i31894_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1558_17 (.CI(n26706), .I0(n2477), .I1(n2638), .CO(n26707));
    SB_LUT4 div_37_LessThan_2141_i14_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3157), .I3(GND_net), .O(n14_adj_3940));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1549_3 (.CI(n26595), .I0(n1267), .I1(n858), .CO(n26596));
    SB_LUT4 add_1558_16_lut (.I0(GND_net), .I1(n2478), .I2(n2519), .I3(n26705), 
            .O(n5266[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_16 (.CI(n26705), .I0(n2478), .I1(n2519), .CO(n26706));
    SB_LUT4 add_1558_15_lut (.I0(GND_net), .I1(n2479), .I2(n2397), .I3(n26704), 
            .O(n5266[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_15 (.CI(n26704), .I0(n2479), .I1(n2397), .CO(n26705));
    SB_LUT4 add_1549_2_lut (.I0(n31725), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33305)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1549_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 div_37_LessThan_965_i34_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n33305), .I3(n48_adj_3941), .O(n34));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i34_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i1_4_lut_adj_953 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33743), .O(n33749));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_953.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1558_14_lut (.I0(GND_net), .I1(n2480), .I2(n2272), .I3(n26703), 
            .O(n5266[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32825_4_lut (.I0(n25_adj_3931), .I1(n23_adj_3932), .I2(n21_adj_3933), 
            .I3(n37243), .O(n37439));
    defparam i32825_4_lut.LUT_INIT = 16'hfeff;
    SB_CARRY add_1549_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26595));
    SB_LUT4 add_1548_8_lut (.I0(GND_net), .I1(n1111), .I2(n1459), .I3(n26594), 
            .O(n5006[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i33419_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11468), .I3(n48_adj_3942), .O(n294[8]));
    defparam i33419_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1558_14 (.CI(n26703), .I0(n2480), .I1(n2272), .CO(n26704));
    SB_LUT4 i1_4_lut_adj_954 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33749), .O(n33755));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_954.LUT_INIT = 16'hfffe;
    SB_LUT4 i30002_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11468), .I3(baudrate[15]), .O(n34607));
    defparam i30002_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i947_3_lut (.I0(n1266), .I1(n5032[18]), .I2(n294[16]), 
            .I3(GND_net), .O(n1413));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i10_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3165), .I3(GND_net), .O(n10));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31917_2_lut_4_lut (.I0(n3165), .I1(baudrate[8]), .I2(n3169), 
            .I3(baudrate[4]), .O(n36531));
    defparam i31917_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1558_13_lut (.I0(GND_net), .I1(n2481), .I2(n2144), .I3(n26702), 
            .O(n5266[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32823_4_lut (.I0(n31_adj_3943), .I1(n29_adj_3944), .I2(n27_adj_3945), 
            .I3(n37439), .O(n37437));
    defparam i32823_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_955 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n33663), .O(n33669));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_955.LUT_INIT = 16'hfffe;
    SB_CARRY add_1558_13 (.CI(n26702), .I0(n2481), .I1(n2144), .CO(n26703));
    SB_LUT4 add_1548_7_lut (.I0(GND_net), .I1(n1112), .I2(n1460), .I3(n26593), 
            .O(n5006[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1558_12_lut (.I0(GND_net), .I1(n2482), .I2(n2013), .I3(n26701), 
            .O(n5266[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_956 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33669), .O(n33675));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_956.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1997_i12_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2955), .I3(GND_net), .O(n12_adj_3946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32021_2_lut_4_lut (.I0(n2950), .I1(baudrate[8]), .I2(n2954), 
            .I3(baudrate[4]), .O(n36635));
    defparam i32021_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1548_7 (.CI(n26593), .I0(n1112), .I1(n1460), .CO(n26594));
    SB_CARRY add_1558_12 (.CI(n26701), .I0(n2482), .I1(n2013), .CO(n26702));
    SB_LUT4 add_1558_11_lut (.I0(GND_net), .I1(n2483), .I2(n1879), .I3(n26700), 
            .O(n5266[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_11 (.CI(n26700), .I0(n2483), .I1(n1879), .CO(n26701));
    SB_LUT4 add_1558_10_lut (.I0(GND_net), .I1(n2484), .I2(n1742), .I3(n26699), 
            .O(n5266[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_10 (.CI(n26699), .I0(n2484), .I1(n1742), .CO(n26700));
    SB_LUT4 add_1548_6_lut (.I0(GND_net), .I1(n1113), .I2(n1011), .I3(n26592), 
            .O(n5006[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i14_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2950), .I3(GND_net), .O(n14_adj_3947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1558_9_lut (.I0(GND_net), .I1(n2485), .I2(n1602), .I3(n26698), 
            .O(n5266[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_9 (.CI(n26698), .I0(n2485), .I1(n1602), .CO(n26699));
    SB_LUT4 i32140_4_lut (.I0(n37_adj_3930), .I1(n35_adj_3929), .I2(n33_adj_3948), 
            .I3(n37437), .O(n36754));
    defparam i32140_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i29999_1_lut_2_lut_3_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11468), .I3(GND_net), .O(n31699));
    defparam i29999_1_lut_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 add_1558_8_lut (.I0(GND_net), .I1(n2486), .I2(n1459), .I3(n26697), 
            .O(n5266[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1044_3_lut (.I0(n1413), .I1(n5058[18]), .I2(n294[15]), 
            .I3(GND_net), .O(n1557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1044_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1548_6 (.CI(n26592), .I0(n1113), .I1(n1011), .CO(n26593));
    SB_CARRY add_1558_8 (.CI(n26697), .I0(n2486), .I1(n1459), .CO(n26698));
    SB_LUT4 add_1548_5_lut (.I0(GND_net), .I1(n1114), .I2(n856), .I3(n26591), 
            .O(n5006[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i16_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2952), .I3(GND_net), .O(n16));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1558_7_lut (.I0(GND_net), .I1(n2487), .I2(n1460), .I3(n26696), 
            .O(n5266[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_7 (.CI(n26696), .I0(n2487), .I1(n1460), .CO(n26697));
    SB_CARRY add_1548_5 (.CI(n26591), .I0(n1114), .I1(n856), .CO(n26592));
    SB_LUT4 i32000_2_lut_4_lut (.I0(n2942), .I1(baudrate[16]), .I2(n2951), 
            .I3(baudrate[7]), .O(n36614));
    defparam i32000_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1548_4_lut (.I0(GND_net), .I1(n1115), .I2(n698), .I3(n26590), 
            .O(n5006[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1558_6_lut (.I0(GND_net), .I1(n2488), .I2(n1011), .I3(n26695), 
            .O(n5266[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_26_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n26528), .O(\o_Rx_DV_N_3356[24] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_6 (.CI(n26695), .I0(n2488), .I1(n1011), .CO(n26696));
    SB_CARRY add_1548_4 (.CI(n26590), .I0(n1115), .I1(n698), .CO(n26591));
    SB_LUT4 add_1548_3_lut (.I0(GND_net), .I1(n1116), .I2(n858), .I3(n26589), 
            .O(n5006[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1558_5_lut (.I0(GND_net), .I1(n2489), .I2(n856), .I3(n26694), 
            .O(n5266[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1558_5 (.CI(n26694), .I0(n2489), .I1(n856), .CO(n26695));
    SB_LUT4 sub_38_add_2_25_lut (.I0(n33235), .I1(n32724), .I2(VCC_net), 
            .I3(n26527), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_25 (.CI(n26527), .I0(n32724), .I1(VCC_net), 
            .CO(n26528));
    SB_CARRY add_1548_3 (.CI(n26589), .I0(n1116), .I1(n858), .CO(n26590));
    SB_LUT4 div_37_LessThan_1997_i18_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2942), .I3(GND_net), .O(n18_adj_3949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2170_1_lut (.I0(baudrate[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1460));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2170_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i33382_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n34607), .I3(n48_adj_3950), .O(n294[11]));
    defparam i33382_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 add_1558_4_lut (.I0(GND_net), .I1(n2490), .I2(n698), .I3(n26693), 
            .O(n5266[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_24_lut (.I0(n33373), .I1(n34747), .I2(VCC_net), 
            .I3(n26526), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_38_add_2_24 (.CI(n26526), .I0(n34747), .I1(VCC_net), 
            .CO(n26527));
    SB_CARRY add_1558_4 (.CI(n26693), .I0(n2490), .I1(n698), .CO(n26694));
    SB_LUT4 div_37_i1139_3_lut (.I0(n1557), .I1(n5084[18]), .I2(n294[14]), 
            .I3(GND_net), .O(n1698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1139_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30080_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n34607), .I3(baudrate[12]), .O(n34685));
    defparam i30080_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1558_3_lut (.I0(GND_net), .I1(n2491), .I2(n858), .I3(n26692), 
            .O(n5266[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30101_1_lut (.I0(n34705), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31721));
    defparam i30101_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1558_3 (.CI(n26692), .I0(n2491), .I1(n858), .CO(n26693));
    SB_LUT4 add_1558_2_lut (.I0(n31695), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33315)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1558_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_957 (.I0(baudrate[23]), .I1(baudrate[27]), .I2(baudrate[25]), 
            .I3(n22768), .O(n33569));
    defparam i1_4_lut_adj_957.LUT_INIT = 16'h0100;
    SB_CARRY add_1558_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26692));
    SB_LUT4 add_1548_2_lut (.I0(n31729), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33303)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1548_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26589));
    SB_LUT4 add_1557_17_lut (.I0(GND_net), .I1(n2353), .I2(n2638), .I3(n26691), 
            .O(n5240[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_23_lut (.I0(o_Rx_DV_N_3356[18]), .I1(n294[21]), 
            .I2(VCC_net), .I3(n26525), .O(n23)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1557_16_lut (.I0(GND_net), .I1(n2354), .I2(n2519), .I3(n26690), 
            .O(n5240[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_16 (.CI(n26690), .I0(n2354), .I1(n2519), .CO(n26691));
    SB_LUT4 add_1557_15_lut (.I0(GND_net), .I1(n2355), .I2(n2397), .I3(n26689), 
            .O(n5240[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_15 (.CI(n26689), .I0(n2355), .I1(n2397), .CO(n26690));
    SB_LUT4 div_37_LessThan_1430_i28_3_lut_3_lut (.I0(baudrate[3]), .I1(baudrate[4]), 
            .I2(n2107), .I3(GND_net), .O(n28_adj_3951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31991_2_lut_4_lut (.I0(n2102), .I1(baudrate[9]), .I2(n2106), 
            .I3(baudrate[5]), .O(n36605));
    defparam i31991_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1430_i30_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[9]), 
            .I2(n2102), .I3(GND_net), .O(n30_adj_3952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1557_14_lut (.I0(GND_net), .I1(n2356), .I2(n2272), .I3(n26688), 
            .O(n5240[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_14 (.CI(n26688), .I0(n2356), .I1(n2272), .CO(n26689));
    SB_LUT4 add_1557_13_lut (.I0(GND_net), .I1(n2357), .I2(n2144), .I3(n26687), 
            .O(n5240[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_23 (.CI(n26525), .I0(n294[21]), .I1(VCC_net), 
            .CO(n26526));
    SB_CARRY add_1557_13 (.CI(n26687), .I0(n2357), .I1(n2144), .CO(n26688));
    SB_LUT4 add_1557_12_lut (.I0(GND_net), .I1(n2358), .I2(n2013), .I3(n26686), 
            .O(n5240[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2070_i10_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3064), .I3(GND_net), .O(n10_adj_3953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1845_i14_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2730), .I3(GND_net), .O(n14_adj_3954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i14_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2070_i14_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3061), .I3(GND_net), .O(n14_adj_3955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31936_2_lut_4_lut (.I0(n3051), .I1(baudrate[16]), .I2(n3060), 
            .I3(baudrate[7]), .O(n36550));
    defparam i31936_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1557_12 (.CI(n26686), .I0(n2358), .I1(n2013), .CO(n26687));
    SB_LUT4 add_1557_11_lut (.I0(GND_net), .I1(n2359), .I2(n1879), .I3(n26685), 
            .O(n5240[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_22_lut (.I0(n33371), .I1(n294[20]), .I2(VCC_net), 
            .I3(n26524), .O(n33373)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 div_37_LessThan_2070_i16_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3051), .I3(GND_net), .O(n16_adj_3956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1557_11 (.CI(n26685), .I0(n2359), .I1(n1879), .CO(n26686));
    SB_LUT4 add_1557_10_lut (.I0(GND_net), .I1(n2360), .I2(n1742), .I3(n26684), 
            .O(n5240[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_10 (.CI(n26684), .I0(n2360), .I1(n1742), .CO(n26685));
    SB_LUT4 add_1557_9_lut (.I0(GND_net), .I1(n2361), .I2(n1602), .I3(n26683), 
            .O(n5240[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_22 (.CI(n26524), .I0(n294[20]), .I1(VCC_net), 
            .CO(n26525));
    SB_LUT4 sub_38_add_2_21_lut (.I0(n33515), .I1(n294[19]), .I2(VCC_net), 
            .I3(n26523), .O(n32914)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1557_9 (.CI(n26683), .I0(n2361), .I1(n1602), .CO(n26684));
    SB_LUT4 add_1557_8_lut (.I0(GND_net), .I1(n2362), .I2(n1459), .I3(n26682), 
            .O(n5240[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_958 (.I0(baudrate[6]), .I1(baudrate[7]), .I2(GND_net), 
            .I3(GND_net), .O(n34025));
    defparam i1_2_lut_adj_958.LUT_INIT = 16'heeee;
    SB_DFFESR r_Clock_Count_1147__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n13520), .D(n1[1]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1147__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n13520), .D(n1[2]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1147__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n13520), .D(n1[3]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1147__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n13520), .D(n1[4]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1147__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n13520), .D(n1[5]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1147__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n13520), .D(n1[6]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_CARRY add_1557_8 (.CI(n26682), .I0(n2362), .I1(n1459), .CO(n26683));
    SB_LUT4 add_1557_7_lut (.I0(GND_net), .I1(n2363), .I2(n1460), .I3(n26681), 
            .O(n5240[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_7 (.CI(n26681), .I0(n2363), .I1(n1460), .CO(n26682));
    SB_LUT4 div_37_LessThan_2070_i12_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3059), .I3(GND_net), .O(n12_adj_3961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_959 (.I0(baudrate[8]), .I1(baudrate[9]), .I2(GND_net), 
            .I3(GND_net), .O(n34023));
    defparam i1_2_lut_adj_959.LUT_INIT = 16'heeee;
    SB_LUT4 add_1557_6_lut (.I0(GND_net), .I1(n2364), .I2(n1011), .I3(n26680), 
            .O(n5240[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_21 (.CI(n26523), .I0(n294[19]), .I1(VCC_net), 
            .CO(n26524));
    SB_CARRY add_1557_6 (.CI(n26680), .I0(n2364), .I1(n1011), .CO(n26681));
    SB_LUT4 sub_38_add_2_20_lut (.I0(GND_net), .I1(n294[18]), .I2(VCC_net), 
            .I3(n26522), .O(o_Rx_DV_N_3356[18])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1557_5_lut (.I0(GND_net), .I1(n2365), .I2(n856), .I3(n26679), 
            .O(n5240[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31976_2_lut_4_lut (.I0(n3059), .I1(baudrate[8]), .I2(n3063), 
            .I3(baudrate[4]), .O(n36590));
    defparam i31976_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i32869_3_lut (.I0(n14_adj_3954), .I1(baudrate[13]), .I2(n37_adj_3930), 
            .I3(GND_net), .O(n37483));   // verilog/uart_rx.v(119[33:55])
    defparam i32869_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1557_5 (.CI(n26679), .I0(n2365), .I1(n856), .CO(n26680));
    SB_LUT4 add_1557_4_lut (.I0(GND_net), .I1(n2366), .I2(n698), .I3(n26678), 
            .O(n5240[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_20 (.CI(n26522), .I0(n294[18]), .I1(VCC_net), 
            .CO(n26523));
    SB_LUT4 i32870_3_lut (.I0(n37483), .I1(baudrate[14]), .I2(n39_adj_3962), 
            .I3(GND_net), .O(n37484));   // verilog/uart_rx.v(119[33:55])
    defparam i32870_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_19_lut (.I0(o_Rx_DV_N_3356[10]), .I1(n294[17]), 
            .I2(VCC_net), .I3(n26521), .O(n33369)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1557_4 (.CI(n26678), .I0(n2366), .I1(n698), .CO(n26679));
    SB_LUT4 add_1557_3_lut (.I0(GND_net), .I1(n2367), .I2(n858), .I3(n26677), 
            .O(n5240[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1557_3 (.CI(n26677), .I0(n2367), .I1(n858), .CO(n26678));
    SB_LUT4 add_1557_2_lut (.I0(n31699), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33313)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1557_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1557_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26677));
    SB_CARRY sub_38_add_2_19 (.CI(n26521), .I0(n294[17]), .I1(VCC_net), 
            .CO(n26522));
    SB_LUT4 add_1556_16_lut (.I0(GND_net), .I1(n2227), .I2(n2519), .I3(n26676), 
            .O(n5214[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1556_15_lut (.I0(GND_net), .I1(n2228), .I2(n2397), .I3(n26675), 
            .O(n5214[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i33360_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n34685), .I3(n48_adj_3963), .O(n294[14]));
    defparam i33360_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1556_15 (.CI(n26675), .I0(n2228), .I1(n2397), .CO(n26676));
    SB_LUT4 add_1556_14_lut (.I0(GND_net), .I1(n2229), .I2(n2272), .I3(n26674), 
            .O(n5214[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_14 (.CI(n26674), .I0(n2229), .I1(n2272), .CO(n26675));
    SB_LUT4 sub_38_add_2_18_lut (.I0(n33513), .I1(n294[16]), .I2(VCC_net), 
            .I3(n26520), .O(n33515)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1564_25_lut (.I0(GND_net), .I1(n3151), .I2(n3186), .I3(n26825), 
            .O(n5422[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1556_13_lut (.I0(GND_net), .I1(n2230), .I2(n2144), .I3(n26673), 
            .O(n5214[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_13 (.CI(n26673), .I0(n2230), .I1(n2144), .CO(n26674));
    SB_LUT4 add_1564_24_lut (.I0(GND_net), .I1(n3152), .I2(n3082), .I3(n26824), 
            .O(n5422[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1556_12_lut (.I0(GND_net), .I1(n2231), .I2(n2013), .I3(n26672), 
            .O(n5214[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut (.I0(baudrate[20]), .I1(baudrate[21]), .I2(baudrate[22]), 
            .I3(baudrate[23]), .O(n34101));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1556_12 (.CI(n26672), .I0(n2231), .I1(n2013), .CO(n26673));
    SB_CARRY add_1564_24 (.CI(n26824), .I0(n3152), .I1(n3082), .CO(n26825));
    SB_LUT4 add_1556_11_lut (.I0(GND_net), .I1(n2232), .I2(n1879), .I3(n26671), 
            .O(n5214[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_23_lut (.I0(GND_net), .I1(n3153), .I2(n3188), .I3(n26823), 
            .O(n5422[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_11 (.CI(n26671), .I0(n2232), .I1(n1879), .CO(n26672));
    SB_LUT4 add_1556_10_lut (.I0(GND_net), .I1(n2233), .I2(n1742), .I3(n26670), 
            .O(n5214[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_23 (.CI(n26823), .I0(n3153), .I1(n3188), .CO(n26824));
    SB_CARRY add_1556_10 (.CI(n26670), .I0(n2233), .I1(n1742), .CO(n26671));
    SB_LUT4 add_1564_22_lut (.I0(GND_net), .I1(n3154), .I2(n3084), .I3(n26822), 
            .O(n5422[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_22 (.CI(n26822), .I0(n3154), .I1(n3084), .CO(n26823));
    SB_LUT4 add_1564_21_lut (.I0(GND_net), .I1(n3155), .I2(n2977), .I3(n26821), 
            .O(n5422[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_21 (.CI(n26821), .I0(n3155), .I1(n2977), .CO(n26822));
    SB_LUT4 add_1556_9_lut (.I0(GND_net), .I1(n2234), .I2(n1602), .I3(n26669), 
            .O(n5214[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_20_lut (.I0(GND_net), .I1(n3156), .I2(n2867), .I3(n26820), 
            .O(n5422[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_9 (.CI(n26669), .I0(n2234), .I1(n1602), .CO(n26670));
    SB_LUT4 add_1556_8_lut (.I0(GND_net), .I1(n2235), .I2(n1459), .I3(n26668), 
            .O(n5214[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_20 (.CI(n26820), .I0(n3156), .I1(n2867), .CO(n26821));
    SB_LUT4 add_1564_19_lut (.I0(GND_net), .I1(n3157), .I2(n2754), .I3(n26819), 
            .O(n5422[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_8 (.CI(n26668), .I0(n2235), .I1(n1459), .CO(n26669));
    SB_LUT4 i1_2_lut_adj_960 (.I0(baudrate[4]), .I1(baudrate[5]), .I2(GND_net), 
            .I3(GND_net), .O(n33965));
    defparam i1_2_lut_adj_960.LUT_INIT = 16'heeee;
    SB_CARRY sub_38_add_2_18 (.CI(n26520), .I0(n294[16]), .I1(VCC_net), 
            .CO(n26521));
    SB_LUT4 sub_38_add_2_17_lut (.I0(n33233), .I1(n294[15]), .I2(VCC_net), 
            .I3(n26519), .O(n33235)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1564_19 (.CI(n26819), .I0(n3157), .I1(n2754), .CO(n26820));
    SB_LUT4 div_37_LessThan_1517_i24_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2238), .I3(GND_net), .O(n24_adj_3964));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30100_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n34685), .I3(baudrate[9]), .O(n34705));
    defparam i30100_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1556_7_lut (.I0(GND_net), .I1(n2236), .I2(n1460), .I3(n26667), 
            .O(n5214[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_7 (.CI(n26667), .I0(n2236), .I1(n1460), .CO(n26668));
    SB_LUT4 add_1564_18_lut (.I0(GND_net), .I1(n3158), .I2(n2638), .I3(n26818), 
            .O(n5422[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_18 (.CI(n26818), .I0(n3158), .I1(n2638), .CO(n26819));
    SB_LUT4 add_1564_17_lut (.I0(GND_net), .I1(n3159), .I2(n2519), .I3(n26817), 
            .O(n5422[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1556_6_lut (.I0(GND_net), .I1(n2237), .I2(n1011), .I3(n26666), 
            .O(n5214[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_17 (.CI(n26817), .I0(n3159), .I1(n2519), .CO(n26818));
    SB_CARRY sub_38_add_2_17 (.CI(n26519), .I0(n294[15]), .I1(VCC_net), 
            .CO(n26520));
    SB_LUT4 add_1564_16_lut (.I0(GND_net), .I1(n3160), .I2(n2397), .I3(n26816), 
            .O(n5422[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_6 (.CI(n26666), .I0(n2237), .I1(n1011), .CO(n26667));
    SB_LUT4 sub_38_add_2_16_lut (.I0(o_Rx_DV_N_3356[13]), .I1(n294[14]), 
            .I2(VCC_net), .I3(n26518), .O(n33513)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1564_16 (.CI(n26816), .I0(n3160), .I1(n2397), .CO(n26817));
    SB_DFFESR r_Clock_Count_1147__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n13520), .D(n1[7]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 add_1564_15_lut (.I0(GND_net), .I1(n3161), .I2(n2272), .I3(n26815), 
            .O(n5422[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_961 (.I0(baudrate[18]), .I1(baudrate[19]), .I2(GND_net), 
            .I3(GND_net), .O(n34053));
    defparam i1_2_lut_adj_961.LUT_INIT = 16'heeee;
    SB_CARRY add_1564_15 (.CI(n26815), .I0(n3161), .I1(n2272), .CO(n26816));
    SB_LUT4 add_1556_5_lut (.I0(GND_net), .I1(n2238), .I2(n856), .I3(n26665), 
            .O(n5214[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_5 (.CI(n26665), .I0(n2238), .I1(n856), .CO(n26666));
    SB_LUT4 add_1556_4_lut (.I0(GND_net), .I1(n2239), .I2(n698), .I3(n26664), 
            .O(n5214[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_14_lut (.I0(GND_net), .I1(n3162), .I2(n2144), .I3(n26814), 
            .O(n5422[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_4 (.CI(n26664), .I0(n2239), .I1(n698), .CO(n26665));
    SB_LUT4 add_1556_3_lut (.I0(GND_net), .I1(n2240), .I2(n858), .I3(n26663), 
            .O(n5214[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_14 (.CI(n26814), .I0(n3162), .I1(n2144), .CO(n26815));
    SB_LUT4 add_1564_13_lut (.I0(GND_net), .I1(n3163), .I2(n2013), .I3(n26813), 
            .O(n5422[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_16 (.CI(n26518), .I0(n294[14]), .I1(VCC_net), 
            .CO(n26519));
    SB_LUT4 sub_38_add_2_15_lut (.I0(GND_net), .I1(n294[13]), .I2(VCC_net), 
            .I3(n26517), .O(o_Rx_DV_N_3356[13])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1556_3 (.CI(n26663), .I0(n2240), .I1(n858), .CO(n26664));
    SB_LUT4 i31753_2_lut_4_lut (.I0(n2233), .I1(baudrate[8]), .I2(n2237), 
            .I3(baudrate[4]), .O(n36367));
    defparam i31753_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1564_13 (.CI(n26813), .I0(n3163), .I1(n2013), .CO(n26814));
    SB_LUT4 add_1556_2_lut (.I0(n31703), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33311)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1556_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 div_37_LessThan_1517_i26_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2233), .I3(GND_net), .O(n26_adj_3965));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31816_2_lut_4_lut (.I0(n2235), .I1(baudrate[6]), .I2(n2236), 
            .I3(baudrate[5]), .O(n36430));
    defparam i31816_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1556_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26663));
    SB_LUT4 i1_2_lut_adj_962 (.I0(baudrate[26]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n34131));
    defparam i1_2_lut_adj_962.LUT_INIT = 16'heeee;
    SB_LUT4 add_1564_12_lut (.I0(GND_net), .I1(n3164), .I2(n1879), .I3(n26812), 
            .O(n5422[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_963 (.I0(baudrate[16]), .I1(baudrate[17]), .I2(GND_net), 
            .I3(GND_net), .O(n34055));
    defparam i1_2_lut_adj_963.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_964 (.I0(n34135), .I1(n34137), .I2(n34043), .I3(n34133), 
            .O(n11425));
    defparam i1_4_lut_adj_964.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1517_i28_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2235), .I3(GND_net), .O(n28_adj_3966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1555_14_lut (.I0(GND_net), .I1(n2098), .I2(n2397), .I3(n26662), 
            .O(n5188[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_15 (.CI(n26517), .I0(n294[13]), .I1(VCC_net), 
            .CO(n26518));
    SB_CARRY add_1564_12 (.CI(n26812), .I0(n3164), .I1(n1879), .CO(n26813));
    SB_LUT4 add_1564_11_lut (.I0(GND_net), .I1(n3165), .I2(n1742), .I3(n26811), 
            .O(n5422[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_11 (.CI(n26811), .I0(n3165), .I1(n1742), .CO(n26812));
    SB_LUT4 i27116_1_lut (.I0(n11472), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31687));
    defparam i27116_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_1564_10_lut (.I0(GND_net), .I1(n3166), .I2(n1602), .I3(n26810), 
            .O(n5422[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1555_13_lut (.I0(GND_net), .I1(n2099), .I2(n2272), .I3(n26661), 
            .O(n5188[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_10 (.CI(n26810), .I0(n3166), .I1(n1602), .CO(n26811));
    SB_CARRY add_1555_13 (.CI(n26661), .I0(n2099), .I1(n2272), .CO(n26662));
    SB_LUT4 add_1564_9_lut (.I0(GND_net), .I1(n3167), .I2(n1459), .I3(n26809), 
            .O(n5422[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_9 (.CI(n26809), .I0(n3167), .I1(n1459), .CO(n26810));
    SB_LUT4 add_1564_8_lut (.I0(GND_net), .I1(n3168), .I2(n1460), .I3(n26808), 
            .O(n5422[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_8 (.CI(n26808), .I0(n3168), .I1(n1460), .CO(n26809));
    SB_LUT4 i1_2_lut_4_lut_adj_965 (.I0(baudrate[30]), .I1(baudrate[25]), 
            .I2(baudrate[31]), .I3(baudrate[26]), .O(n34063));
    defparam i1_2_lut_4_lut_adj_965.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1564_7_lut (.I0(GND_net), .I1(n3169), .I2(n1011), .I3(n26807), 
            .O(n5422[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_14_lut (.I0(GND_net), .I1(n294[12]), .I2(VCC_net), 
            .I3(n26516), .O(\o_Rx_DV_N_3356[12] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i40_3_lut (.I0(n22_adj_3967), .I1(baudrate[17]), 
            .I2(n45_adj_3968), .I3(GND_net), .O(n40_adj_3969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32130_4_lut (.I0(n43_adj_3970), .I1(n41_adj_3971), .I2(n39_adj_3962), 
            .I3(n36752), .O(n36744));
    defparam i32130_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i3030_2_lut_3_lut (.I0(baudrate[3]), .I1(n7817), .I2(n6905), 
            .I3(GND_net), .O(n6912));   // verilog/uart_rx.v(119[33:55])
    defparam i3030_2_lut_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i32948_4_lut (.I0(n40_adj_3969), .I1(n20_adj_3972), .I2(n45_adj_3968), 
            .I3(n36742), .O(n37562));   // verilog/uart_rx.v(119[33:55])
    defparam i32948_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33311_2_lut_3_lut_4_lut (.I0(r_SM_Main_2__N_3314[1]), .I1(\r_SM_Main[1] ), 
            .I2(r_SM_Main[0]), .I3(\r_SM_Main[2] ), .O(n13640));
    defparam i33311_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 add_1555_12_lut (.I0(GND_net), .I1(n2100), .I2(n2144), .I3(n26660), 
            .O(n5188[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3023_2_lut_3_lut (.I0(baudrate[2]), .I1(n962), .I2(baudrate[1]), 
            .I3(GND_net), .O(n6905));   // verilog/uart_rx.v(119[33:55])
    defparam i3023_2_lut_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 div_37_LessThan_1602_i22_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2365), .I3(GND_net), .O(n22_adj_3973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31725_2_lut_4_lut (.I0(n2360), .I1(baudrate[8]), .I2(n2364), 
            .I3(baudrate[4]), .O(n36339));
    defparam i31725_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1564_7 (.CI(n26807), .I0(n3169), .I1(n1011), .CO(n26808));
    SB_LUT4 add_1564_6_lut (.I0(GND_net), .I1(n3170), .I2(n856), .I3(n26806), 
            .O(n5422[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1602_i24_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2360), .I3(GND_net), .O(n24_adj_3974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31733_2_lut_4_lut (.I0(n2362), .I1(baudrate[6]), .I2(n2363), 
            .I3(baudrate[5]), .O(n36347));
    defparam i31733_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1602_i26_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2362), .I3(GND_net), .O(n26_adj_3975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_966 (.I0(n33569), .I1(baudrate[29]), .I2(baudrate[16]), 
            .I3(baudrate[28]), .O(n33587));
    defparam i1_4_lut_adj_966.LUT_INIT = 16'h0002;
    SB_LUT4 i30134_4_lut (.I0(n34677), .I1(n34573), .I2(n34577), .I3(n34481), 
            .O(n34739));
    defparam i30134_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_450_i46_4_lut (.I0(n36227), .I1(baudrate[2]), 
            .I2(n37911), .I3(n48_adj_3976), .O(n46));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i46_4_lut.LUT_INIT = 16'hc0e8;
    SB_LUT4 i1_4_lut_adj_967 (.I0(n34725), .I1(n34739), .I2(n31543), .I3(n33587), 
            .O(n32223));
    defparam i1_4_lut_adj_967.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_LessThan_450_i48_3_lut (.I0(n46), .I1(baudrate[3]), .I2(n31497), 
            .I3(GND_net), .O(n48_adj_3977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_CARRY add_1555_12 (.CI(n26660), .I0(n2100), .I1(n2144), .CO(n26661));
    SB_CARRY add_1564_6 (.CI(n26806), .I0(n3170), .I1(n856), .CO(n26807));
    SB_LUT4 add_1555_11_lut (.I0(GND_net), .I1(n2101), .I2(n2013), .I3(n26659), 
            .O(n5188[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_11 (.CI(n26659), .I0(n2101), .I1(n2013), .CO(n26660));
    SB_LUT4 i1_4_lut_adj_968 (.I0(n33965), .I1(n34023), .I2(n34025), .I3(n34021), 
            .O(n33977));
    defparam i1_4_lut_adj_968.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1555_10_lut (.I0(GND_net), .I1(n2102), .I2(n1879), .I3(n26658), 
            .O(n5188[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_5_lut (.I0(GND_net), .I1(n3171), .I2(n698), .I3(n26805), 
            .O(n5422[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_10 (.CI(n26658), .I0(n2102), .I1(n1879), .CO(n26659));
    SB_CARRY sub_38_add_2_14 (.CI(n26516), .I0(n294[12]), .I1(VCC_net), 
            .CO(n26517));
    SB_LUT4 sub_38_add_2_13_lut (.I0(o_Rx_DV_N_3356[9]), .I1(n294[11]), 
            .I2(VCC_net), .I3(n26515), .O(n33233)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_13_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1555_9_lut (.I0(GND_net), .I1(n2103), .I2(n1742), .I3(n26657), 
            .O(n5188[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_13 (.CI(n26515), .I0(n294[11]), .I1(VCC_net), 
            .CO(n26516));
    SB_CARRY add_1555_9 (.CI(n26657), .I0(n2103), .I1(n1742), .CO(n26658));
    SB_LUT4 add_1555_8_lut (.I0(GND_net), .I1(n2104), .I2(n1602), .I3(n26656), 
            .O(n5188[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_8 (.CI(n26656), .I0(n2104), .I1(n1602), .CO(n26657));
    SB_LUT4 i2854_2_lut_3_lut (.I0(n7807), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n42_adj_3978));   // verilog/uart_rx.v(119[33:55])
    defparam i2854_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i1_4_lut_adj_969 (.I0(n33977), .I1(n11475), .I2(n33969), .I3(n34103), 
            .O(n11368));
    defparam i1_4_lut_adj_969.LUT_INIT = 16'hfffe;
    SB_LUT4 i32450_3_lut (.I0(n37484), .I1(baudrate[15]), .I2(n41_adj_3971), 
            .I3(GND_net), .O(n37064));   // verilog/uart_rx.v(119[33:55])
    defparam i32450_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30044_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[29]), .I3(baudrate[24]), .O(n34649));
    defparam i30044_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1564_5 (.CI(n26805), .I0(n3171), .I1(n698), .CO(n26806));
    SB_LUT4 add_1555_7_lut (.I0(GND_net), .I1(n2105), .I2(n1459), .I3(n26655), 
            .O(n5188[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_7 (.CI(n26655), .I0(n2105), .I1(n1459), .CO(n26656));
    SB_LUT4 add_1555_6_lut (.I0(GND_net), .I1(n2106), .I2(n1460), .I3(n26654), 
            .O(n5188[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(n11434), .I1(n48_adj_3976), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n44_adj_3979));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[24]), .I3(baudrate[31]), .O(n34005));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1845_i26_3_lut (.I0(n18_adj_3980), .I1(baudrate[9]), 
            .I2(n29_adj_3944), .I3(GND_net), .O(n26_adj_3981));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31803_2_lut_3_lut (.I0(baudrate[1]), .I1(n48_adj_3976), .I2(n11434), 
            .I3(GND_net), .O(n36417));   // verilog/uart_rx.v(119[33:55])
    defparam i31803_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i33160_4_lut (.I0(n26_adj_3981), .I1(n16_adj_3982), .I2(n29_adj_3944), 
            .I3(n36770), .O(n37774));   // verilog/uart_rx.v(119[33:55])
    defparam i33160_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_3_lut_adj_970 (.I0(n11368), .I1(n48_adj_3977), .I2(baudrate[0]), 
            .I3(GND_net), .O(n805));
    defparam i1_3_lut_adj_970.LUT_INIT = 16'hefef;
    SB_LUT4 i1_3_lut_4_lut_adj_971 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33759));
    defparam i1_3_lut_4_lut_adj_971.LUT_INIT = 16'hfff7;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n13640), 
            .D(n479[1]), .R(n31629));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n13640), 
            .D(n479[2]), .R(n31629));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i33161_3_lut (.I0(n37774), .I1(baudrate[10]), .I2(n31_adj_3943), 
            .I3(GND_net), .O(n37775));   // verilog/uart_rx.v(119[33:55])
    defparam i33161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_972 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33743));
    defparam i1_3_lut_4_lut_adj_972.LUT_INIT = 16'hff7f;
    SB_CARRY add_1555_6 (.CI(n26654), .I0(n2106), .I1(n1460), .CO(n26655));
    SB_LUT4 i1_4_lut_adj_973 (.I0(n33829), .I1(n33825), .I2(n33827), .I3(n34481), 
            .O(n33847));
    defparam i1_4_lut_adj_973.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_38_add_2_12_lut (.I0(GND_net), .I1(n294[10]), .I2(VCC_net), 
            .I3(n26514), .O(o_Rx_DV_N_3356[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i33047_3_lut (.I0(n37775), .I1(baudrate[11]), .I2(n33_adj_3948), 
            .I3(GND_net), .O(n37661));   // verilog/uart_rx.v(119[33:55])
    defparam i33047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32992_4_lut (.I0(n43_adj_3970), .I1(n41_adj_3971), .I2(n39_adj_3962), 
            .I3(n36754), .O(n37606));
    defparam i32992_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i33178_4_lut (.I0(n37064), .I1(n37562), .I2(n45_adj_3968), 
            .I3(n36744), .O(n37792));   // verilog/uart_rx.v(119[33:55])
    defparam i33178_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32448_3_lut (.I0(n37661), .I1(baudrate[12]), .I2(n35_adj_3929), 
            .I3(GND_net), .O(n37062));   // verilog/uart_rx.v(119[33:55])
    defparam i32448_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_974 (.I0(n23), .I1(\o_Rx_DV_N_3356[12] ), .I2(n2857), 
            .I3(GND_net), .O(n33353));   // verilog/uart_rx.v(69[17:62])
    defparam i1_3_lut_adj_974.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_975 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n27), .I2(n29), 
            .I3(n33353), .O(\r_SM_Main_2__N_3404[1] ));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_975.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_976 (.I0(n37818), .I1(baudrate[17]), .I2(n2596), 
            .I3(n33317), .O(n2730));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_976.LUT_INIT = 16'h7100;
    SB_LUT4 i33180_4_lut (.I0(n37062), .I1(n37792), .I2(n45_adj_3968), 
            .I3(n37606), .O(n37794));   // verilog/uart_rx.v(119[33:55])
    defparam i33180_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33428_2_lut_4_lut (.I0(n37818), .I1(baudrate[17]), .I2(n2596), 
            .I3(n11468), .O(n294[6]));   // verilog/uart_rx.v(119[33:55])
    defparam i33428_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_1555_5_lut (.I0(GND_net), .I1(n2107), .I2(n1011), .I3(n26653), 
            .O(n5188[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_4_lut (.I0(GND_net), .I1(n3172), .I2(n858), .I3(n26804), 
            .O(n5422[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_4 (.CI(n26804), .I0(n3172), .I1(n858), .CO(n26805));
    SB_CARRY add_1555_5 (.CI(n26653), .I0(n2107), .I1(n1011), .CO(n26654));
    SB_CARRY sub_38_add_2_12 (.CI(n26514), .I0(n294[10]), .I1(VCC_net), 
            .CO(n26515));
    SB_LUT4 sub_38_add_2_11_lut (.I0(GND_net), .I1(n294[9]), .I2(VCC_net), 
            .I3(n26513), .O(o_Rx_DV_N_3356[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1564_3_lut (.I0(n31671), .I1(GND_net), .I2(n538), .I3(n26803), 
            .O(n33327)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1564_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1564_3 (.CI(n26803), .I0(GND_net), .I1(n538), .CO(n26804));
    SB_LUT4 add_1555_4_lut (.I0(GND_net), .I1(n2108), .I2(n856), .I3(n26652), 
            .O(n5188[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1564_2 (.CI(VCC_net), .I0(GND_net), .I1(VCC_net), .CO(n26803));
    SB_LUT4 add_1563_23_lut (.I0(GND_net), .I1(n3046), .I2(n3082), .I3(n26802), 
            .O(n5396[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_4 (.CI(n26652), .I0(n2108), .I1(n856), .CO(n26653));
    SB_LUT4 add_1563_22_lut (.I0(GND_net), .I1(n3047), .I2(n3188), .I3(n26801), 
            .O(n5396[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_22 (.CI(n26801), .I0(n3047), .I1(n3188), .CO(n26802));
    SB_LUT4 add_1555_3_lut (.I0(GND_net), .I1(n2109), .I2(n698), .I3(n26651), 
            .O(n5188[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_3 (.CI(n26651), .I0(n2109), .I1(n698), .CO(n26652));
    SB_LUT4 add_1555_2_lut (.I0(GND_net), .I1(n2110), .I2(n858), .I3(VCC_net), 
            .O(n5188[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1555_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1555_2 (.CI(VCC_net), .I0(n2110), .I1(n858), .CO(n26651));
    SB_LUT4 add_1554_14_lut (.I0(GND_net), .I1(n1966), .I2(n2272), .I3(n26650), 
            .O(n5162[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_11 (.CI(n26513), .I0(n294[9]), .I1(VCC_net), 
            .CO(n26514));
    SB_LUT4 add_1554_13_lut (.I0(GND_net), .I1(n1967), .I2(n2144), .I3(n26649), 
            .O(n5162[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_13 (.CI(n26649), .I0(n1967), .I1(n2144), .CO(n26650));
    SB_LUT4 i33369_2_lut_4_lut (.I0(n37853), .I1(baudrate[11]), .I2(n1831), 
            .I3(n34685), .O(n294[12]));   // verilog/uart_rx.v(119[33:55])
    defparam i33369_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_1554_12_lut (.I0(GND_net), .I1(n1968), .I2(n2013), .I3(n26648), 
            .O(n5162[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1563_21_lut (.I0(GND_net), .I1(n3048), .I2(n3084), .I3(n26800), 
            .O(n5396[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_977 (.I0(n37853), .I1(baudrate[11]), .I2(n1831), 
            .I3(n33309), .O(n1977));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_977.LUT_INIT = 16'h7100;
    SB_LUT4 i1_3_lut_4_lut_adj_978 (.I0(n33835), .I1(n34709), .I2(baudrate[0]), 
            .I3(n48_adj_3983), .O(n962));
    defparam i1_3_lut_4_lut_adj_978.LUT_INIT = 16'h0010;
    SB_LUT4 i1_2_lut_4_lut_adj_979 (.I0(n37537), .I1(baudrate[8]), .I2(n1408), 
            .I3(n33307), .O(n1560));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_979.LUT_INIT = 16'h7100;
    SB_CARRY add_1563_21 (.CI(n26800), .I0(n3048), .I1(n3084), .CO(n26801));
    SB_CARRY add_1554_12 (.CI(n26648), .I0(n1968), .I1(n2013), .CO(n26649));
    SB_LUT4 add_1563_20_lut (.I0(GND_net), .I1(n3049), .I2(n2977), .I3(n26799), 
            .O(n5396[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_20 (.CI(n26799), .I0(n3049), .I1(n2977), .CO(n26800));
    SB_LUT4 i33336_2_lut_4_lut (.I0(n37537), .I1(baudrate[8]), .I2(n1408), 
            .I3(n34705), .O(n294[15]));   // verilog/uart_rx.v(119[33:55])
    defparam i33336_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i3017_2_lut (.I0(n962), .I1(baudrate[1]), .I2(GND_net), .I3(GND_net), 
            .O(n40_adj_3984));   // verilog/uart_rx.v(119[33:55])
    defparam i3017_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_1554_11_lut (.I0(GND_net), .I1(n1969), .I2(n1879), .I3(n26647), 
            .O(n5162[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1563_19_lut (.I0(GND_net), .I1(n3050), .I2(n2867), .I3(n26798), 
            .O(n5396[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_19 (.CI(n26798), .I0(n3050), .I1(n2867), .CO(n26799));
    SB_DFF r_Rx_Byte_i0 (.Q(rx_data[0]), .C(clk16MHz), .D(n15990));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1554_11 (.CI(n26647), .I0(n1969), .I1(n1879), .CO(n26648));
    SB_LUT4 i1_2_lut_4_lut_adj_980 (.I0(n37883), .I1(baudrate[20]), .I2(n2938), 
            .I3(n33323), .O(n3066));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_980.LUT_INIT = 16'h7100;
    SB_LUT4 i1_3_lut_4_lut_adj_981 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33727));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_981.LUT_INIT = 16'hfffb;
    SB_LUT4 add_1563_18_lut (.I0(GND_net), .I1(n3051), .I2(n2754), .I3(n26797), 
            .O(n5396[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_18 (.CI(n26797), .I0(n3051), .I1(n2754), .CO(n26798));
    SB_LUT4 i33440_2_lut_4_lut (.I0(n37883), .I1(baudrate[20]), .I2(n2938), 
            .I3(n34717), .O(n294[3]));   // verilog/uart_rx.v(119[33:55])
    defparam i33440_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i32197_3_lut_4_lut (.I0(n1558), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1559), .O(n36811));   // verilog/uart_rx.v(119[33:55])
    defparam i32197_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_3_lut_4_lut_adj_982 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33711));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_982.LUT_INIT = 16'hffbf;
    SB_LUT4 add_1563_17_lut (.I0(GND_net), .I1(n3052), .I2(n2638), .I3(n26796), 
            .O(n5396[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_17 (.CI(n26796), .I0(n3052), .I1(n2638), .CO(n26797));
    SB_LUT4 i1_4_lut_adj_983 (.I0(n33837), .I1(n33833), .I2(n33835), .I3(n33831), 
            .O(n33849));
    defparam i1_4_lut_adj_983.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_984 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33695));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_984.LUT_INIT = 16'hfffd;
    SB_LUT4 add_1563_16_lut (.I0(GND_net), .I1(n3053), .I2(n2519), .I3(n26795), 
            .O(n5396[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_16 (.CI(n26795), .I0(n3053), .I1(n2519), .CO(n26796));
    SB_LUT4 div_37_LessThan_1062_i34_3_lut_3_lut (.I0(n1558), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n34_adj_3985));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i1_2_lut_4_lut_adj_985 (.I0(n37365), .I1(baudrate[21]), .I2(n3046), 
            .I3(n33325), .O(n3172));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_985.LUT_INIT = 16'h7100;
    SB_DFFE r_Rx_DV_58 (.Q(rx_data_ready), .C(clk16MHz), .E(VCC_net), 
            .D(n28495));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i33443_2_lut_4_lut (.I0(n37365), .I1(baudrate[21]), .I2(n3046), 
            .I3(n11390), .O(n294[2]));   // verilog/uart_rx.v(119[33:55])
    defparam i33443_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_DFFE r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .E(VCC_net), 
            .D(n15962));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i1_2_lut_4_lut_adj_986 (.I0(n37639), .I1(baudrate[14]), .I2(n2227), 
            .I3(n33311), .O(n2367));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_986.LUT_INIT = 16'h7100;
    SB_LUT4 i33412_2_lut_4_lut (.I0(n37639), .I1(baudrate[14]), .I2(n2227), 
            .I3(n34607), .O(n294[9]));   // verilog/uart_rx.v(119[33:55])
    defparam i33412_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_3_lut_adj_987 (.I0(n33849), .I1(n11472), .I2(n33847), .I3(GND_net), 
            .O(n11434));
    defparam i1_3_lut_adj_987.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_341_i48_3_lut (.I0(n32223), .I1(baudrate[2]), 
            .I2(n32592), .I3(GND_net), .O(n48_adj_3976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_341_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 div_37_i642_4_lut (.I0(n805), .I1(baudrate[1]), .I2(n294[19]), 
            .I3(baudrate[0]), .O(n961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i642_4_lut.LUT_INIT = 16'h9a6a;
    SB_LUT4 i1_3_lut_4_lut_adj_988 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33679));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_988.LUT_INIT = 16'hffdf;
    SB_LUT4 div_37_i745_4_lut (.I0(n961), .I1(n40_adj_3984), .I2(n294[18]), 
            .I3(baudrate[2]), .O(n1114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i745_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i846_3_lut (.I0(n1114), .I1(n5006[20]), .I2(n294[17]), 
            .I3(GND_net), .O(n1264));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29992_2_lut (.I0(baudrate[17]), .I1(n11468), .I2(GND_net), 
            .I3(GND_net), .O(n34597));
    defparam i29992_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_866_i41_2_lut (.I0(n1264), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3986));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1838_3_lut (.I0(n2612), .I1(n5292[7]), .I2(n294[6]), 
            .I3(GND_net), .O(n2729));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33376_2_lut (.I0(n48_adj_3976), .I1(n11434), .I2(GND_net), 
            .I3(GND_net), .O(n294[21]));
    defparam i33376_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1_3_lut_4_lut_adj_989 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33663));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_989.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_990 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(\r_Bit_Index[0] ), .I3(n4), .O(n33775));   // verilog/uart_rx.v(98[17:39])
    defparam i1_3_lut_4_lut_adj_990.LUT_INIT = 16'hffef;
    SB_LUT4 add_1554_10_lut (.I0(GND_net), .I1(n1970), .I2(n1742), .I3(n26646), 
            .O(n5162[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1563_15_lut (.I0(GND_net), .I1(n3054), .I2(n2397), .I3(n26794), 
            .O(n5396[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_866_i36_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1267), .I3(GND_net), .O(n36));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i36_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1554_10 (.CI(n26646), .I0(n1970), .I1(n1742), .CO(n26647));
    SB_CARRY add_1563_15 (.CI(n26794), .I0(n3054), .I1(n2397), .CO(n26795));
    SB_LUT4 add_1563_14_lut (.I0(GND_net), .I1(n3055), .I2(n2272), .I3(n26793), 
            .O(n5396[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1554_9_lut (.I0(GND_net), .I1(n1971), .I2(n1602), .I3(n26645), 
            .O(n5162[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_14 (.CI(n26793), .I0(n3055), .I1(n2272), .CO(n26794));
    SB_LUT4 add_1563_13_lut (.I0(GND_net), .I1(n3056), .I2(n2144), .I3(n26792), 
            .O(n5396[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_991 (.I0(n34031), .I1(n34057), .I2(baudrate[16]), 
            .I3(n22766), .O(n33891));
    defparam i1_4_lut_adj_991.LUT_INIT = 16'h0100;
    SB_CARRY add_1554_9 (.CI(n26645), .I0(n1971), .I1(n1602), .CO(n26646));
    SB_LUT4 add_1554_8_lut (.I0(GND_net), .I1(n1972), .I2(n1459), .I3(n26644), 
            .O(n5162[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_13 (.CI(n26792), .I0(n3056), .I1(n2144), .CO(n26793));
    SB_LUT4 add_1563_12_lut (.I0(GND_net), .I1(n3057), .I2(n2013), .I3(n26791), 
            .O(n5396[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_8 (.CI(n26644), .I0(n1972), .I1(n1459), .CO(n26645));
    SB_CARRY add_1563_12 (.CI(n26791), .I0(n3057), .I1(n2013), .CO(n26792));
    SB_LUT4 add_1554_7_lut (.I0(GND_net), .I1(n1973), .I2(n1460), .I3(n26643), 
            .O(n5162[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1563_11_lut (.I0(GND_net), .I1(n3058), .I2(n1879), .I3(n26790), 
            .O(n5396[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_11 (.CI(n26790), .I0(n3058), .I1(n1879), .CO(n26791));
    SB_LUT4 sub_38_add_2_10_lut (.I0(GND_net), .I1(n294[8]), .I2(VCC_net), 
            .I3(n26512), .O(\o_Rx_DV_N_3356[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1563_10_lut (.I0(GND_net), .I1(n3059), .I2(n1742), .I3(n26789), 
            .O(n5396[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_7 (.CI(n26643), .I0(n1973), .I1(n1460), .CO(n26644));
    SB_CARRY sub_38_add_2_10 (.CI(n26512), .I0(n294[8]), .I1(VCC_net), 
            .CO(n26513));
    SB_LUT4 add_1554_6_lut (.I0(GND_net), .I1(n1974), .I2(n1011), .I3(n26642), 
            .O(n5162[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_10 (.CI(n26789), .I0(n3059), .I1(n1742), .CO(n26790));
    SB_CARRY add_1554_6 (.CI(n26642), .I0(n1974), .I1(n1011), .CO(n26643));
    SB_LUT4 add_1563_9_lut (.I0(GND_net), .I1(n3060), .I2(n1602), .I3(n26788), 
            .O(n5396[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_9 (.CI(n26788), .I0(n3060), .I1(n1602), .CO(n26789));
    SB_LUT4 add_1554_5_lut (.I0(GND_net), .I1(n1975), .I2(n856), .I3(n26641), 
            .O(n5162[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_5 (.CI(n26641), .I0(n1975), .I1(n856), .CO(n26642));
    SB_LUT4 add_1554_4_lut (.I0(GND_net), .I1(n1976), .I2(n698), .I3(n26640), 
            .O(n5162[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_4 (.CI(n26640), .I0(n1976), .I1(n698), .CO(n26641));
    SB_LUT4 add_1554_3_lut (.I0(GND_net), .I1(n1977), .I2(n858), .I3(n26639), 
            .O(n5162[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32256_3_lut (.I0(n32223), .I1(n32592), .I2(baudrate[2]), 
            .I3(GND_net), .O(n36122));   // verilog/uart_rx.v(119[33:55])
    defparam i32256_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i32055_4_lut (.I0(n31543), .I1(n33891), .I2(n34033), .I3(n33965), 
            .O(n36123));   // verilog/uart_rx.v(119[33:55])
    defparam i32055_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 div_37_LessThan_866_i40_3_lut (.I0(n38_adj_3987), .I1(baudrate[4]), 
            .I2(n41_adj_3986), .I3(GND_net), .O(n40_adj_3988));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33148_4_lut (.I0(n40_adj_3988), .I1(n36), .I2(n41_adj_3986), 
            .I3(n36858), .O(n37762));   // verilog/uart_rx.v(119[33:55])
    defparam i33148_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33149_3_lut (.I0(n37762), .I1(baudrate[5]), .I2(n1263), .I3(GND_net), 
            .O(n37763));   // verilog/uart_rx.v(119[33:55])
    defparam i33149_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1554_3 (.CI(n26639), .I0(n1977), .I1(n858), .CO(n26640));
    SB_LUT4 i33073_3_lut (.I0(n37763), .I1(baudrate[6]), .I2(n1262), .I3(GND_net), 
            .O(n37687));   // verilog/uart_rx.v(119[33:55])
    defparam i33073_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1563_8_lut (.I0(GND_net), .I1(n3061), .I2(n1459), .I3(n26787), 
            .O(n5396[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_8 (.CI(n26787), .I0(n3061), .I1(n1459), .CO(n26788));
    SB_LUT4 sub_38_add_2_9_lut (.I0(GND_net), .I1(n294[7]), .I2(VCC_net), 
            .I3(n26511), .O(\o_Rx_DV_N_3356[7] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1554_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n5162[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1554_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32394_3_lut (.I0(n37687), .I1(baudrate[7]), .I2(n1261), .I3(GND_net), 
            .O(n48_adj_3941));   // verilog/uart_rx.v(119[33:55])
    defparam i32394_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1563_7_lut (.I0(GND_net), .I1(n3062), .I2(n1460), .I3(n26786), 
            .O(n5396[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_992 (.I0(n33305), .I1(n48_adj_3941), .I2(GND_net), 
            .I3(GND_net), .O(n1415));
    defparam i1_2_lut_adj_992.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i427_4_lut (.I0(n36123), .I1(n36122), .I2(n294[21]), 
            .I3(n34597), .O(n31497));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i427_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 div_37_i1046_3_lut (.I0(n1415), .I1(n5058[16]), .I2(n294[15]), 
            .I3(GND_net), .O(n1559));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_993 (.I0(n23), .I1(\o_Rx_DV_N_3356[12] ), .I2(n2854), 
            .I3(\o_Rx_DV_N_3356[8] ), .O(n33297));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_993.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_994 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n27), .I2(n29), 
            .I3(n33297), .O(r_SM_Main_2__N_3314[1]));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_994.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_995 (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[0]), 
            .I2(\o_Rx_DV_N_3356[2] ), .I3(\o_Rx_DV_N_3356[1] ), .O(n33983));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_995.LUT_INIT = 16'h7bde;
    SB_LUT4 div_37_i1141_3_lut (.I0(n1559), .I1(n5084[16]), .I2(n294[14]), 
            .I3(GND_net), .O(n1700));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1234_3_lut (.I0(n1700), .I1(n5110[16]), .I2(n294[13]), 
            .I3(GND_net), .O(n1838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_996 (.I0(r_Clock_Count[4]), .I1(r_Clock_Count[2]), 
            .I2(\o_Rx_DV_N_3356[5] ), .I3(\o_Rx_DV_N_3356[3] ), .O(n33989));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_996.LUT_INIT = 16'h7bde;
    SB_LUT4 equal_53_i8_2_lut (.I0(r_Clock_Count[7]), .I1(\o_Rx_DV_N_3356[8] ), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_3989));   // verilog/uart_rx.v(69[17:62])
    defparam equal_53_i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_997 (.I0(r_Clock_Count[3]), .I1(n33983), .I2(\o_Rx_DV_N_3356[4] ), 
            .I3(GND_net), .O(n33985));   // verilog/uart_rx.v(69[17:62])
    defparam i1_3_lut_adj_997.LUT_INIT = 16'hdede;
    SB_LUT4 div_37_i1915_3_lut (.I0(n2729), .I1(n5318[7]), .I2(n294[5]), 
            .I3(GND_net), .O(n2843));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1915_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2171_1_lut (.I0(baudrate[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2171_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1563_7 (.CI(n26786), .I0(n3062), .I1(n1460), .CO(n26787));
    SB_LUT4 add_1563_6_lut (.I0(GND_net), .I1(n3063), .I2(n1011), .I3(n26785), 
            .O(n5396[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1554_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26639));
    SB_CARRY sub_38_add_2_9 (.CI(n26511), .I0(n294[7]), .I1(VCC_net), 
            .CO(n26512));
    SB_LUT4 div_37_i1990_3_lut (.I0(n2843), .I1(n5344[7]), .I2(n294[4]), 
            .I3(GND_net), .O(n2954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_8_lut (.I0(GND_net), .I1(n294[6]), .I2(VCC_net), 
            .I3(n26510), .O(\o_Rx_DV_N_3356[6] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_998 (.I0(r_Clock_Count[5]), .I1(n8_adj_3989), .I2(n33989), 
            .I3(\o_Rx_DV_N_3356[6] ), .O(n32980));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_998.LUT_INIT = 16'hfdfe;
    SB_LUT4 i1_4_lut_adj_999 (.I0(r_Clock_Count[6]), .I1(n32980), .I2(n33985), 
            .I3(\o_Rx_DV_N_3356[7] ), .O(n30710));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_999.LUT_INIT = 16'hfdfe;
    SB_LUT4 add_1553_13_lut (.I0(GND_net), .I1(n1831), .I2(n2144), .I3(n26638), 
            .O(n5136[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1325_3_lut (.I0(n1838), .I1(n5136[16]), .I2(n294[12]), 
            .I3(GND_net), .O(n1973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1414_3_lut (.I0(n1973), .I1(n5162[16]), .I2(n294[11]), 
            .I3(GND_net), .O(n2105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n32460));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 add_1553_12_lut (.I0(GND_net), .I1(n1832), .I2(n2013), .I3(n26637), 
            .O(n5136[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_6 (.CI(n26785), .I0(n3063), .I1(n1011), .CO(n26786));
    SB_CARRY sub_38_add_2_8 (.CI(n26510), .I0(n294[6]), .I1(VCC_net), 
            .CO(n26511));
    SB_LUT4 add_1563_5_lut (.I0(GND_net), .I1(n3064), .I2(n856), .I3(n26784), 
            .O(n5396[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1553_12 (.CI(n26637), .I0(n1832), .I1(n2013), .CO(n26638));
    SB_CARRY add_1563_5 (.CI(n26784), .I0(n3064), .I1(n856), .CO(n26785));
    SB_LUT4 add_1563_4_lut (.I0(GND_net), .I1(n3065), .I2(n698), .I3(n26783), 
            .O(n5396[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_4 (.CI(n26783), .I0(n3065), .I1(n698), .CO(n26784));
    SB_LUT4 add_1563_3_lut (.I0(GND_net), .I1(n3066), .I2(n858), .I3(n26782), 
            .O(n5396[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1553_11_lut (.I0(GND_net), .I1(n1833), .I2(n1879), .I3(n26636), 
            .O(n5136[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_7_lut (.I0(GND_net), .I1(n294[5]), .I2(VCC_net), 
            .I3(n26509), .O(\o_Rx_DV_N_3356[5] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1553_11 (.CI(n26636), .I0(n1833), .I1(n1879), .CO(n26637));
    SB_LUT4 div_37_i534_3_lut (.I0(n31497), .I1(n294[20]), .I2(baudrate[3]), 
            .I3(GND_net), .O(n31501));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i534_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 div_37_i1501_3_lut (.I0(n2105), .I1(n5188[16]), .I2(n294[10]), 
            .I3(GND_net), .O(n2234));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1586_3_lut (.I0(n2234), .I1(n5214[16]), .I2(n294[9]), 
            .I3(GND_net), .O(n2360));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1553_10_lut (.I0(GND_net), .I1(n1834), .I2(n1742), .I3(n26635), 
            .O(n5136[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1563_3 (.CI(n26782), .I0(n3066), .I1(n858), .CO(n26783));
    SB_LUT4 add_1563_2_lut (.I0(n31675), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33325)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1563_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_38_add_2_7 (.CI(n26509), .I0(n294[5]), .I1(VCC_net), 
            .CO(n26510));
    SB_CARRY add_1553_10 (.CI(n26635), .I0(n1834), .I1(n1742), .CO(n26636));
    SB_CARRY add_1563_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26782));
    SB_LUT4 add_1553_9_lut (.I0(GND_net), .I1(n1835), .I2(n1602), .I3(n26634), 
            .O(n5136[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1553_9 (.CI(n26634), .I0(n1835), .I1(n1602), .CO(n26635));
    SB_LUT4 sub_38_add_2_6_lut (.I0(GND_net), .I1(n294[4]), .I2(VCC_net), 
            .I3(n26508), .O(\o_Rx_DV_N_3356[4] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1562_22_lut (.I0(GND_net), .I1(n2938), .I2(n3188), .I3(n26781), 
            .O(n5370[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1669_3_lut (.I0(n2360), .I1(n5240[16]), .I2(n294[8]), 
            .I3(GND_net), .O(n2483));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1000 (.I0(\o_Rx_DV_N_3356[12] ), .I1(n2854), .I2(\o_Rx_DV_N_3356[8] ), 
            .I3(n32460), .O(n33429));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1000.LUT_INIT = 16'hfeff;
    SB_LUT4 i2868_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n6741), .I3(n7809), 
            .O(n46_adj_3990));   // verilog/uart_rx.v(119[33:55])
    defparam i2868_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 div_37_i1750_3_lut (.I0(n2483), .I1(n5266[16]), .I2(n294[7]), 
            .I3(GND_net), .O(n2603));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1001 (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n33429), .O(n33435));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1001.LUT_INIT = 16'hfffe;
    SB_LUT4 i30024_2_lut (.I0(\o_Rx_DV_N_3356[12] ), .I1(n30710), .I2(GND_net), 
            .I3(GND_net), .O(n34629));
    defparam i30024_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30124_4_lut (.I0(\o_Rx_DV_N_3356[24] ), .I1(n29), .I2(n23), 
            .I3(n34629), .O(n34729));
    defparam i30124_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i2_4_lut (.I0(n33435), .I1(r_SM_Main_2__N_3314[1]), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n2));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i2_4_lut.LUT_INIT = 16'hc0c5;
    SB_LUT4 add_1562_21_lut (.I0(GND_net), .I1(n2939), .I2(n3084), .I3(n26780), 
            .O(n5370[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1553_8_lut (.I0(GND_net), .I1(n1836), .I2(n1459), .I3(n26633), 
            .O(n5136[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i1_4_lut (.I0(r_Rx_Data), .I1(n34729), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n7030));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 div_37_i1829_3_lut (.I0(n2603), .I1(n5292[16]), .I2(n294[6]), 
            .I3(GND_net), .O(n2720));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i639_4_lut (.I0(n31501), .I1(n294[19]), .I2(n46_adj_3990), 
            .I3(baudrate[4]), .O(n31505));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i639_4_lut.LUT_INIT = 16'h6aa6;
    SB_LUT4 div_37_i1906_3_lut (.I0(n2720), .I1(n5318[16]), .I2(n294[5]), 
            .I3(GND_net), .O(n2834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i3_3_lut (.I0(n7030), .I1(n2), .I2(\r_SM_Main[1] ), 
            .I3(GND_net), .O(n3));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i3_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 div_37_i1900_3_lut (.I0(n2714), .I1(n5318[22]), .I2(n294[5]), 
            .I3(GND_net), .O(n2828));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i27_2_lut (.I0(n2363), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3991));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i29_2_lut (.I0(n2362), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3992));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1899_3_lut (.I0(n2713), .I1(n5318[23]), .I2(n294[5]), 
            .I3(GND_net), .O(n2827));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3025_2_lut (.I0(n7817), .I1(n6905), .I2(GND_net), .I3(GND_net), 
            .O(n42_adj_3993));   // verilog/uart_rx.v(119[33:55])
    defparam i3025_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1157_i39_2_lut (.I0(n1697), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3994));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i41_2_lut (.I0(n1696), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3995));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i41_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1553_8 (.CI(n26633), .I0(n1836), .I1(n1459), .CO(n26634));
    SB_LUT4 div_37_LessThan_1157_i37_2_lut (.I0(n1698), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3996));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i37_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1562_21 (.CI(n26780), .I0(n2939), .I1(n3084), .CO(n26781));
    SB_LUT4 add_1562_20_lut (.I0(GND_net), .I1(n2940), .I2(n2977), .I3(n26779), 
            .O(n5370[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i744_4_lut (.I0(n960), .I1(baudrate[3]), .I2(n294[18]), 
            .I3(n42_adj_3993), .O(n1113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i744_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i845_3_lut (.I0(n1113), .I1(n5006[21]), .I2(n294[17]), 
            .I3(GND_net), .O(n1263));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i944_3_lut (.I0(n1263), .I1(n5032[21]), .I2(n294[16]), 
            .I3(GND_net), .O(n1410));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1157_i43_2_lut (.I0(n1695), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3997));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i29_2_lut (.I0(n2236), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3998));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i31_2_lut (.I0(n2235), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3999));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i31_2_lut (.I0(n2106), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4000));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i29_2_lut (.I0(n2107), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4001));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1041_3_lut (.I0(n1410), .I1(n5058[21]), .I2(n294[15]), 
            .I3(GND_net), .O(n1554));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i742_4_lut (.I0(n31505), .I1(n294[18]), .I2(n46_adj_4002), 
            .I3(baudrate[5]), .O(n1111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i742_4_lut.LUT_INIT = 16'h9559;
    SB_LUT4 div_37_i1136_3_lut (.I0(n1554), .I1(n5084[21]), .I2(n294[14]), 
            .I3(GND_net), .O(n1695));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1229_3_lut (.I0(n1695), .I1(n5110[21]), .I2(n294[13]), 
            .I3(GND_net), .O(n1833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1320_3_lut (.I0(n1833), .I1(n5136[21]), .I2(n294[12]), 
            .I3(GND_net), .O(n1968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1320_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i33_2_lut (.I0(n1838), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4003));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1409_3_lut (.I0(n1968), .I1(n5162[21]), .I2(n294[11]), 
            .I3(GND_net), .O(n2100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i31_2_lut (.I0(n1839), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4004));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i35_2_lut (.I0(n1837), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4005));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i37_2_lut (.I0(n1836), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4006));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1496_3_lut (.I0(n2100), .I1(n5188[21]), .I2(n294[10]), 
            .I3(GND_net), .O(n2229));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1496_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1581_3_lut (.I0(n2229), .I1(n5214[21]), .I2(n294[9]), 
            .I3(GND_net), .O(n2355));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1664_3_lut (.I0(n2355), .I1(n5240[21]), .I2(n294[8]), 
            .I3(GND_net), .O(n2478));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i41_2_lut (.I0(n1834), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4007));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i41_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1562_20 (.CI(n26779), .I0(n2940), .I1(n2977), .CO(n26780));
    SB_LUT4 add_1562_19_lut (.I0(GND_net), .I1(n2941), .I2(n2867), .I3(n26778), 
            .O(n5370[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1553_7_lut (.I0(GND_net), .I1(n1837), .I2(n1460), .I3(n26632), 
            .O(n5136[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_19 (.CI(n26778), .I0(n2941), .I1(n2867), .CO(n26779));
    SB_LUT4 add_1562_18_lut (.I0(GND_net), .I1(n2942), .I2(n2754), .I3(n26777), 
            .O(n5370[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1250_i39_2_lut (.I0(n1835), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4008));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i43_2_lut (.I0(n1833), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4009));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1745_3_lut (.I0(n2478), .I1(n5266[21]), .I2(n294[7]), 
            .I3(GND_net), .O(n2598));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1824_3_lut (.I0(n2598), .I1(n5292[21]), .I2(n294[6]), 
            .I3(GND_net), .O(n2715));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1901_3_lut (.I0(n2715), .I1(n5318[21]), .I2(n294[5]), 
            .I3(GND_net), .O(n2829));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1553_7 (.CI(n26632), .I0(n1837), .I1(n1460), .CO(n26633));
    SB_LUT4 add_1553_6_lut (.I0(GND_net), .I1(n1838), .I2(n1011), .I3(n26631), 
            .O(n5136[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_18 (.CI(n26777), .I0(n2942), .I1(n2754), .CO(n26778));
    SB_LUT4 add_1562_17_lut (.I0(GND_net), .I1(n2943), .I2(n2638), .I3(n26776), 
            .O(n5370[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_17 (.CI(n26776), .I0(n2943), .I1(n2638), .CO(n26777));
    SB_LUT4 add_1562_16_lut (.I0(GND_net), .I1(n2944), .I2(n2519), .I3(n26775), 
            .O(n5370[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1922_i19_2_lut (.I0(n2841), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4010));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_1002 (.I0(baudrate[30]), .I1(baudrate[31]), 
            .I2(baudrate[27]), .I3(baudrate[24]), .O(n33283));
    defparam i1_3_lut_4_lut_adj_1002.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_765_i38_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1116), .I3(GND_net), .O(n38_adj_4011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i38_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_765_i42_3_lut (.I0(n40_adj_4012), .I1(baudrate[4]), 
            .I2(n43_adj_4013), .I3(GND_net), .O(n42_adj_4014));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i43_2_lut (.I0(n2829), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4015));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i33_2_lut (.I0(n2834), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4016));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33146_4_lut (.I0(n42_adj_4014), .I1(n38_adj_4011), .I2(n43_adj_4013), 
            .I3(n36328), .O(n37760));   // verilog/uart_rx.v(119[33:55])
    defparam i33146_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_1003 (.I0(baudrate[28]), .I1(baudrate[27]), .I2(baudrate[31]), 
            .I3(baudrate[26]), .O(n33943));
    defparam i1_4_lut_adj_1003.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1922_i35_2_lut (.I0(n2833), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4017));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i35_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1562_16 (.CI(n26775), .I0(n2944), .I1(n2519), .CO(n26776));
    SB_LUT4 div_37_LessThan_1922_i23_2_lut (.I0(n2839), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4018));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i23_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY sub_38_add_2_6 (.CI(n26508), .I0(n294[4]), .I1(VCC_net), 
            .CO(n26509));
    SB_LUT4 div_37_LessThan_1922_i21_2_lut (.I0(n2840), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4019));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i17_2_lut (.I0(n2842), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4020));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i17_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1553_6 (.CI(n26631), .I0(n1838), .I1(n1011), .CO(n26632));
    SB_LUT4 add_1553_5_lut (.I0(GND_net), .I1(n1839), .I2(n856), .I3(n26630), 
            .O(n5136[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1562_15_lut (.I0(GND_net), .I1(n2945), .I2(n2397), .I3(n26774), 
            .O(n5370[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_5_lut (.I0(GND_net), .I1(n294[3]), .I2(VCC_net), 
            .I3(n26507), .O(\o_Rx_DV_N_3356[3] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i33147_3_lut (.I0(n37760), .I1(baudrate[5]), .I2(n1112), .I3(GND_net), 
            .O(n37761));   // verilog/uart_rx.v(119[33:55])
    defparam i33147_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_1004 (.I0(n33943), .I1(n34101), .I2(n34045), 
            .I3(n34041), .O(n11475));
    defparam i1_4_lut_adj_1004.LUT_INIT = 16'hfffe;
    SB_LUT4 i27112_1_lut (.I0(n11475), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31683));
    defparam i27112_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32075_4_lut (.I0(n35_adj_4017), .I1(n23_adj_4018), .I2(n21_adj_4019), 
            .I3(n19_adj_4010), .O(n36689));
    defparam i32075_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32593_4_lut (.I0(n17_adj_4020), .I1(n15_adj_4021), .I2(n2844), 
            .I3(baudrate[2]), .O(n37207));
    defparam i32593_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i32809_4_lut (.I0(n23_adj_4018), .I1(n21_adj_4019), .I2(n19_adj_4010), 
            .I3(n37207), .O(n37423));
    defparam i32809_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 div_37_LessThan_1922_i25_2_lut (.I0(n2838), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4022));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i25_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1553_5 (.CI(n26630), .I0(n1839), .I1(n856), .CO(n26631));
    SB_CARRY add_1562_15 (.CI(n26774), .I0(n2945), .I1(n2397), .CO(n26775));
    SB_CARRY sub_38_add_2_5 (.CI(n26507), .I0(n294[3]), .I1(VCC_net), 
            .CO(n26508));
    SB_LUT4 add_1553_4_lut (.I0(GND_net), .I1(n1840), .I2(n698), .I3(n26629), 
            .O(n5136[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_4_lut (.I0(GND_net), .I1(n294[2]), .I2(VCC_net), 
            .I3(n26506), .O(\o_Rx_DV_N_3356[2] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32807_4_lut (.I0(n29_adj_4023), .I1(n27_adj_4024), .I2(n25_adj_4022), 
            .I3(n37423), .O(n37421));
    defparam i32807_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32077_4_lut (.I0(n35_adj_4017), .I1(n33_adj_4016), .I2(n31_adj_4025), 
            .I3(n37421), .O(n36691));
    defparam i32077_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1922_i12_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2845), .I3(GND_net), .O(n12_adj_4026));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i12_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32865_3_lut (.I0(n12_adj_4026), .I1(baudrate[13]), .I2(n35_adj_4017), 
            .I3(GND_net), .O(n37479));   // verilog/uart_rx.v(119[33:55])
    defparam i32865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i948_3_lut (.I0(n1267), .I1(n5032[17]), .I2(n294[16]), 
            .I3(GND_net), .O(n1414));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1562_14_lut (.I0(GND_net), .I1(n2946), .I2(n2272), .I3(n26773), 
            .O(n5370[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_14 (.CI(n26773), .I0(n2946), .I1(n2272), .CO(n26774));
    SB_CARRY add_1553_4 (.CI(n26629), .I0(n1840), .I1(n698), .CO(n26630));
    SB_LUT4 add_1562_13_lut (.I0(GND_net), .I1(n2947), .I2(n2144), .I3(n26772), 
            .O(n5370[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_13 (.CI(n26772), .I0(n2947), .I1(n2144), .CO(n26773));
    SB_LUT4 add_1553_3_lut (.I0(GND_net), .I1(n1841), .I2(n858), .I3(n26628), 
            .O(n5136[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1562_12_lut (.I0(GND_net), .I1(n2948), .I2(n2013), .I3(n26771), 
            .O(n5370[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1922_i38_3_lut (.I0(n20_adj_4027), .I1(baudrate[17]), 
            .I2(n43_adj_4015), .I3(GND_net), .O(n38_adj_4028));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32866_3_lut (.I0(n37479), .I1(baudrate[14]), .I2(n37_adj_4029), 
            .I3(GND_net), .O(n37480));   // verilog/uart_rx.v(119[33:55])
    defparam i32866_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32066_4_lut (.I0(n41_adj_4030), .I1(n39_adj_4031), .I2(n37_adj_4029), 
            .I3(n36689), .O(n36680));
    defparam i32066_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30072_3_lut_4_lut (.I0(baudrate[30]), .I1(baudrate[31]), .I2(baudrate[26]), 
            .I3(baudrate[24]), .O(n34677));
    defparam i30072_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_1553_3 (.CI(n26628), .I0(n1841), .I1(n858), .CO(n26629));
    SB_CARRY add_1562_12 (.CI(n26771), .I0(n2948), .I1(n2013), .CO(n26772));
    SB_LUT4 add_1562_11_lut (.I0(GND_net), .I1(n2949), .I2(n1879), .I3(n26770), 
            .O(n5370[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1553_2_lut (.I0(n31712), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n33309)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1553_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1553_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26628));
    SB_LUT4 add_1552_11_lut (.I0(GND_net), .I1(n1693), .I2(n2013), .I3(n26627), 
            .O(n5110[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_11 (.CI(n26770), .I0(n2949), .I1(n1879), .CO(n26771));
    SB_LUT4 div_37_LessThan_1922_i15_2_lut (.I0(n2843), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4021));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i27_2_lut (.I0(n2837), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4024));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i29_2_lut (.I0(n2836), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4023));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33136_4_lut (.I0(n38_adj_4028), .I1(n18_adj_4032), .I2(n43_adj_4015), 
            .I3(n36667), .O(n37750));   // verilog/uart_rx.v(119[33:55])
    defparam i33136_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_1922_i31_2_lut (.I0(n2835), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4025));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i37_2_lut (.I0(n2832), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4029));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i39_2_lut (.I0(n2831), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4031));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i41_2_lut (.I0(n2830), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4030));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i25_2_lut (.I0(n2487), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n25));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1837_3_lut (.I0(n2611), .I1(n5292[8]), .I2(n294[6]), 
            .I3(GND_net), .O(n2728));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1914_3_lut (.I0(n2728), .I1(n5318[8]), .I2(n294[5]), 
            .I3(GND_net), .O(n2842));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i27_2_lut (.I0(n2486), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3928));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i29_2_lut (.I0(n2485), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3927));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i23_2_lut (.I0(n2488), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3926));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i31_2_lut (.I0(n2484), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n31));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i21_2_lut (.I0(n2489), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n21));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i33_2_lut (.I0(n2483), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n33));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1836_3_lut (.I0(n2610), .I1(n5292[9]), .I2(n294[6]), 
            .I3(GND_net), .O(n2727));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1913_3_lut (.I0(n2727), .I1(n5318[9]), .I2(n294[5]), 
            .I3(GND_net), .O(n2841));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i35_2_lut (.I0(n2482), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i37_2_lut (.I0(n2481), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n37));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i41_2_lut (.I0(n2479), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n41));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i43_2_lut (.I0(n2478), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n43));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32456_3_lut (.I0(n37480), .I1(baudrate[15]), .I2(n39_adj_4031), 
            .I3(GND_net), .O(n37070));   // verilog/uart_rx.v(119[33:55])
    defparam i32456_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1005 (.I0(baudrate[3]), .I1(baudrate[4]), .I2(GND_net), 
            .I3(GND_net), .O(n33837));
    defparam i1_2_lut_adj_1005.LUT_INIT = 16'heeee;
    SB_LUT4 add_1552_10_lut (.I0(GND_net), .I1(n1694), .I2(n1879), .I3(n26626), 
            .O(n5110[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2859_2_lut_3_lut_4_lut (.I0(baudrate[2]), .I1(n7807), .I2(baudrate[1]), 
            .I3(baudrate[0]), .O(n6741));   // verilog/uart_rx.v(119[33:55])
    defparam i2859_2_lut_3_lut_4_lut.LUT_INIT = 16'h4445;
    SB_LUT4 div_37_i1835_3_lut (.I0(n2609), .I1(n5292[10]), .I2(n294[6]), 
            .I3(GND_net), .O(n2726));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1912_3_lut (.I0(n2726), .I1(n5318[10]), .I2(n294[5]), 
            .I3(GND_net), .O(n2840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1912_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18645_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22766));
    defparam i18645_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3926_4_lut (.I0(n804), .I1(n22766), .I2(n7807), .I3(baudrate[2]), 
            .O(n7809));   // verilog/uart_rx.v(119[33:55])
    defparam i3926_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 div_37_LessThan_765_i43_2_lut (.I0(n1113), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i43_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY sub_38_add_2_4 (.CI(n26506), .I0(n294[2]), .I1(VCC_net), 
            .CO(n26507));
    SB_LUT4 add_1562_10_lut (.I0(GND_net), .I1(n2950), .I2(n1742), .I3(n26769), 
            .O(n5370[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_10 (.CI(n26769), .I0(n2950), .I1(n1742), .CO(n26770));
    SB_LUT4 div_37_LessThan_1845_i21_2_lut (.I0(n2726), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_3933));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i14_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2843), .I3(GND_net), .O(n14_adj_4033));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1562_9_lut (.I0(GND_net), .I1(n2951), .I2(n1602), .I3(n26768), 
            .O(n5370[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i37_2_lut (.I0(n2718), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3930));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i37_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1562_9 (.CI(n26768), .I0(n2951), .I1(n1602), .CO(n26769));
    SB_LUT4 r_Clock_Count_1147_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26956), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i25_2_lut (.I0(n2724), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3931));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i25_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1552_10 (.CI(n26626), .I0(n1694), .I1(n1879), .CO(n26627));
    SB_LUT4 sub_38_add_2_3_lut (.I0(GND_net), .I1(n294[1]), .I2(VCC_net), 
            .I3(n26505), .O(\o_Rx_DV_N_3356[1] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i23_2_lut (.I0(n2725), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3932));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1562_8_lut (.I0(GND_net), .I1(n2952), .I2(n1459), .I3(n26767), 
            .O(n5370[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i19_2_lut (.I0(n2727), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_3939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 r_Clock_Count_1147_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26955), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1147_add_4_8 (.CI(n26955), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26956));
    SB_LUT4 add_1552_9_lut (.I0(GND_net), .I1(n1695), .I2(n1742), .I3(n26625), 
            .O(n5110[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1147_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26954), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i27_2_lut (.I0(n2723), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i27_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY r_Clock_Count_1147_add_4_7 (.CI(n26954), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26955));
    SB_LUT4 r_Clock_Count_1147_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26953), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_3 (.CI(n26505), .I0(n294[1]), .I1(VCC_net), 
            .CO(n26506));
    SB_CARRY r_Clock_Count_1147_add_4_6 (.CI(n26953), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26954));
    SB_LUT4 sub_38_add_2_2_lut (.I0(GND_net), .I1(n32721), .I2(GND_net), 
            .I3(VCC_net), .O(\o_Rx_DV_N_3356[0] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1147_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26952), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1147_add_4_5 (.CI(n26952), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26953));
    SB_LUT4 r_Clock_Count_1147_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26951), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1147_add_4_4 (.CI(n26951), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26952));
    SB_LUT4 r_Clock_Count_1147_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26950), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1147_add_4_3 (.CI(n26950), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26951));
    SB_LUT4 r_Clock_Count_1147_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1147_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1147_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26950));
    SB_CARRY add_1552_9 (.CI(n26625), .I0(n1695), .I1(n1742), .CO(n26626));
    SB_CARRY add_1562_8 (.CI(n26767), .I0(n2952), .I1(n1459), .CO(n26768));
    SB_LUT4 add_1552_8_lut (.I0(GND_net), .I1(n1696), .I2(n1602), .I3(n26624), 
            .O(n5110[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_2 (.CI(VCC_net), .I0(n32721), .I1(GND_net), 
            .CO(n26505));
    SB_DFFSR r_SM_Main_i1 (.Q(\r_SM_Main[1] ), .C(clk16MHz), .D(n3_adj_4035), 
            .R(\r_SM_Main[2] ));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFFESR r_Clock_Count_1147__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n13520), .D(n1[0]), .R(n14801));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 div_37_LessThan_1845_i17_2_lut (.I0(n2728), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n17));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i29_2_lut (.I0(n2722), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3944));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i24_3_lut (.I0(n16_adj_4036), .I1(baudrate[9]), 
            .I2(n27_adj_4024), .I3(GND_net), .O(n24_adj_4037));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1562_7_lut (.I0(GND_net), .I1(n2953), .I2(n1460), .I3(n26766), 
            .O(n5370[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1562_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32087_2_lut_4_lut (.I0(n2838), .I1(baudrate[8]), .I2(n2842), 
            .I3(baudrate[4]), .O(n36701));
    defparam i32087_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_CARRY add_1552_8 (.CI(n26624), .I0(n1696), .I1(n1602), .CO(n26625));
    SB_LUT4 div_37_LessThan_1845_i31_2_lut (.I0(n2721), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1552_7_lut (.I0(GND_net), .I1(n1697), .I2(n1459), .I3(n26623), 
            .O(n5110[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1562_7 (.CI(n26766), .I0(n2953), .I1(n1460), .CO(n26767));
    SB_CARRY add_1552_7 (.CI(n26623), .I0(n1697), .I1(n1459), .CO(n26624));
    SB_LUT4 add_1552_6_lut (.I0(GND_net), .I1(n1698), .I2(n1460), .I3(n26622), 
            .O(n5110[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1552_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i33_2_lut (.I0(n2720), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i39_2_lut (.I0(n2717), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3962));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i41_2_lut (.I0(n2716), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i43_2_lut (.I0(n2715), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3925_2_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n7807));   // verilog/uart_rx.v(119[33:55])
    defparam i3925_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 div_37_LessThan_1922_i16_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2838), .I3(GND_net), .O(n16_adj_4036));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1834_3_lut (.I0(n2608), .I1(n5292[11]), .I2(n294[6]), 
            .I3(GND_net), .O(n2725));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29972_2_lut_3_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(baudrate[4]), 
            .I3(GND_net), .O(n34577));
    defparam i29972_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1911_3_lut (.I0(n2725), .I1(n5318[11]), .I2(n294[5]), 
            .I3(GND_net), .O(n2839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i18_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2840), .I3(GND_net), .O(n18_adj_4032));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32053_2_lut_4_lut (.I0(n2830), .I1(baudrate[16]), .I2(n2839), 
            .I3(baudrate[7]), .O(n36667));
    defparam i32053_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1922_i20_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2830), .I3(GND_net), .O(n20_adj_4027));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33162_4_lut (.I0(n24_adj_4037), .I1(n14_adj_4033), .I2(n27_adj_4024), 
            .I3(n36701), .O(n37776));   // verilog/uart_rx.v(119[33:55])
    defparam i33162_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33163_3_lut (.I0(n37776), .I1(baudrate[10]), .I2(n29_adj_4023), 
            .I3(GND_net), .O(n37777));   // verilog/uart_rx.v(119[33:55])
    defparam i33163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1833_3_lut (.I0(n2607), .I1(n5292[12]), .I2(n294[6]), 
            .I3(GND_net), .O(n2724));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33045_3_lut (.I0(n37777), .I1(baudrate[11]), .I2(n31_adj_4025), 
            .I3(GND_net), .O(n37659));   // verilog/uart_rx.v(119[33:55])
    defparam i33045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1910_3_lut (.I0(n2724), .I1(n5318[12]), .I2(n294[5]), 
            .I3(GND_net), .O(n2838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3039_4_lut_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n7819), 
            .I3(n6912), .O(n46_adj_4002));   // verilog/uart_rx.v(119[33:55])
    defparam i3039_4_lut_4_lut.LUT_INIT = 16'hbbb2;
    SB_LUT4 i32988_4_lut (.I0(n41_adj_4030), .I1(n39_adj_4031), .I2(n37_adj_4029), 
            .I3(n36691), .O(n37602));
    defparam i32988_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1832_3_lut (.I0(n2606), .I1(n5292[13]), .I2(n294[6]), 
            .I3(GND_net), .O(n2723));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1909_3_lut (.I0(n2723), .I1(n5318[13]), .I2(n294[5]), 
            .I3(GND_net), .O(n2837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33236_4_lut (.I0(n37070), .I1(n37750), .I2(n43_adj_4015), 
            .I3(n36680), .O(n37850));   // verilog/uart_rx.v(119[33:55])
    defparam i33236_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32454_3_lut (.I0(n37659), .I1(baudrate[12]), .I2(n33_adj_4016), 
            .I3(GND_net), .O(n37068));   // verilog/uart_rx.v(119[33:55])
    defparam i32454_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1831_3_lut (.I0(n2605), .I1(n5292[14]), .I2(n294[6]), 
            .I3(GND_net), .O(n2722));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2165_1_lut (.I0(baudrate[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2165_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i33262_4_lut (.I0(n37068), .I1(n37850), .I2(n43_adj_4015), 
            .I3(n37602), .O(n37876));   // verilog/uart_rx.v(119[33:55])
    defparam i33262_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_i1908_3_lut (.I0(n2722), .I1(n5318[14]), .I2(n294[5]), 
            .I3(GND_net), .O(n2836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33263_3_lut (.I0(n37876), .I1(baudrate[18]), .I2(n2828), 
            .I3(GND_net), .O(n37877));   // verilog/uart_rx.v(119[33:55])
    defparam i33263_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1273_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n479[2]));   // verilog/uart_rx.v(103[36:51])
    defparam i1273_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1266_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n479[1]));   // verilog/uart_rx.v(103[36:51])
    defparam i1266_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33345_2_lut_4_lut (.I0(n37645), .I1(baudrate[5]), .I2(n31505), 
            .I3(n11440), .O(n294[18]));   // verilog/uart_rx.v(119[33:55])
    defparam i33345_2_lut_4_lut.LUT_INIT = 16'h0017;
    SB_LUT4 div_37_i1744_3_lut (.I0(n2477), .I1(n5266[22]), .I2(n294[7]), 
            .I3(GND_net), .O(n2597));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1823_3_lut (.I0(n2597), .I1(n5292[22]), .I2(n294[6]), 
            .I3(GND_net), .O(n2714));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33342_2_lut_4_lut (.I0(n46), .I1(baudrate[3]), .I2(n31497), 
            .I3(n11368), .O(n294[20]));   // verilog/uart_rx.v(119[33:55])
    defparam i33342_2_lut_4_lut.LUT_INIT = 16'h0017;
    SB_LUT4 div_37_LessThan_1845_i45_2_lut (.I0(n2714), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_3968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1830_3_lut (.I0(n2604), .I1(n5292[15]), .I2(n294[6]), 
            .I3(GND_net), .O(n2721));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2164_1_lut (.I0(baudrate[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2164_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1907_3_lut (.I0(n2721), .I1(n5318[15]), .I2(n294[5]), 
            .I3(GND_net), .O(n2835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2163_1_lut (.I0(baudrate[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2272));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2163_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2162_1_lut (.I0(baudrate[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2397));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2162_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1905_3_lut (.I0(n2719), .I1(n5318[17]), .I2(n294[5]), 
            .I3(GND_net), .O(n2833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18647_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22768));
    defparam i18647_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_1006 (.I0(baudrate[23]), .I1(baudrate[28]), .I2(baudrate[27]), 
            .I3(baudrate[0]), .O(n33625));
    defparam i1_4_lut_adj_1006.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_i2169_1_lut (.I0(baudrate[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1459));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2169_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1827_3_lut (.I0(n2601), .I1(n5292[18]), .I2(n294[6]), 
            .I3(GND_net), .O(n2718));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2161_1_lut (.I0(baudrate[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2519));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2161_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1904_3_lut (.I0(n2718), .I1(n5318[18]), .I2(n294[5]), 
            .I3(GND_net), .O(n2832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1826_3_lut (.I0(n2600), .I1(n5292[19]), .I2(n294[6]), 
            .I3(GND_net), .O(n2717));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30066_4_lut (.I0(baudrate[25]), .I1(baudrate[31]), .I2(baudrate[24]), 
            .I3(baudrate[29]), .O(n34671));
    defparam i30066_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2160_1_lut (.I0(baudrate[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2638));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2160_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1903_3_lut (.I0(n2717), .I1(n5318[19]), .I2(n294[5]), 
            .I3(GND_net), .O(n2831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1825_3_lut (.I0(n2599), .I1(n5292[20]), .I2(n294[6]), 
            .I3(GND_net), .O(n2716));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33314_2_lut_3_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n34709), .I3(n48_adj_3983), .O(n294[19]));
    defparam i33314_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_i2159_1_lut (.I0(baudrate[16]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2754));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2159_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1902_3_lut (.I0(n2716), .I1(n5318[20]), .I2(n294[5]), 
            .I3(GND_net), .O(n2830));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2158_1_lut (.I0(baudrate[17]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2867));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2158_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2168_1_lut (.I0(baudrate[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2168_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2157_1_lut (.I0(baudrate[18]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2157_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2156_1_lut (.I0(baudrate[19]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2156_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2167_1_lut (.I0(baudrate[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1742));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2167_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_1007 (.I0(n31543), .I1(n33625), .I2(n34131), 
            .I3(baudrate[16]), .O(n33653));
    defparam i1_4_lut_adj_1007.LUT_INIT = 16'h0004;
    SB_LUT4 i30132_4_lut (.I0(n34671), .I1(n34573), .I2(n34577), .I3(n34481), 
            .O(n34737));
    defparam i30132_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2138_3_lut (.I0(n3066), .I1(n5396[3]), .I2(n294[2]), 
            .I3(GND_net), .O(n3171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2137_3_lut (.I0(n3065), .I1(n5396[4]), .I2(n294[2]), 
            .I3(GND_net), .O(n3170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i16_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2728), .I3(GND_net), .O(n16_adj_3982));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30046_3_lut (.I0(baudrate[31]), .I1(baudrate[21]), .I2(baudrate[27]), 
            .I3(GND_net), .O(n34651));
    defparam i30046_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i30112_4_lut (.I0(n34651), .I1(n34087), .I2(n34649), .I3(n34041), 
            .O(n34717));
    defparam i30112_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i30113_1_lut (.I0(n34717), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31679));
    defparam i30113_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2175_1_lut (.I0(baudrate[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n538));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2175_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2166_1_lut (.I0(baudrate[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1879));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2166_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2174_1_lut (.I0(baudrate[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n858));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2174_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32156_2_lut_4_lut (.I0(n2723), .I1(baudrate[8]), .I2(n2727), 
            .I3(baudrate[4]), .O(n36770));
    defparam i32156_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i33297_4_lut (.I0(n34725), .I1(n36417), .I2(n34737), .I3(n33653), 
            .O(n37911));
    defparam i33297_4_lut.LUT_INIT = 16'hc9cc;
    SB_LUT4 div_37_i1992_3_lut (.I0(n2845), .I1(n5344[5]), .I2(n294[4]), 
            .I3(GND_net), .O(n2956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i535_4_lut (.I0(n37911), .I1(n44_adj_3979), .I2(n294[20]), 
            .I3(baudrate[2]), .O(n803));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i535_4_lut.LUT_INIT = 16'h9565;
    SB_LUT4 div_37_i2173_1_lut (.I0(baudrate[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2173_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1673_3_lut (.I0(n2364), .I1(n5240[12]), .I2(n294[8]), 
            .I3(GND_net), .O(n2487));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1673_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1754_3_lut (.I0(n2487), .I1(n5266[12]), .I2(n294[7]), 
            .I3(GND_net), .O(n2607));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2136_3_lut (.I0(n3064), .I1(n5396[5]), .I2(n294[2]), 
            .I3(GND_net), .O(n3169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1667_3_lut (.I0(n2358), .I1(n5240[18]), .I2(n294[8]), 
            .I3(GND_net), .O(n2481));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1748_3_lut (.I0(n2481), .I1(n5266[18]), .I2(n294[7]), 
            .I3(GND_net), .O(n2601));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2135_3_lut (.I0(n3063), .I1(n5396[6]), .I2(n294[2]), 
            .I3(GND_net), .O(n3168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2134_3_lut (.I0(n3062), .I1(n5396[7]), .I2(n294[2]), 
            .I3(GND_net), .O(n3167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i37_2_lut (.I0(n2601), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4038));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2133_3_lut (.I0(n3061), .I1(n5396[8]), .I2(n294[2]), 
            .I3(GND_net), .O(n3166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i43_2_lut (.I0(n2598), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4039));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1665_3_lut (.I0(n2356), .I1(n5240[20]), .I2(n294[8]), 
            .I3(GND_net), .O(n2479));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1665_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1746_3_lut (.I0(n2479), .I1(n5266[20]), .I2(n294[7]), 
            .I3(GND_net), .O(n2599));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2132_3_lut (.I0(n3060), .I1(n5396[9]), .I2(n294[2]), 
            .I3(GND_net), .O(n3165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i41_2_lut (.I0(n2599), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4040));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1747_3_lut (.I0(n2480), .I1(n5266[19]), .I2(n294[7]), 
            .I3(GND_net), .O(n2600));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i18_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2723), .I3(GND_net), .O(n18_adj_3980));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32099_2_lut_3_lut (.I0(n11434), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n36227));   // verilog/uart_rx.v(119[33:55])
    defparam i32099_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 div_37_LessThan_1766_i39_2_lut (.I0(n2600), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4041));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2131_3_lut (.I0(n3059), .I1(n5396[10]), .I2(n294[2]), 
            .I3(GND_net), .O(n3164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2131_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1670_3_lut (.I0(n2361), .I1(n5240[15]), .I2(n294[8]), 
            .I3(GND_net), .O(n2484));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1670_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1751_3_lut (.I0(n2484), .I1(n5266[15]), .I2(n294[7]), 
            .I3(GND_net), .O(n2604));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i31_2_lut (.I0(n2604), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4042));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i33_2_lut (.I0(n2603), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4043));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i35_2_lut (.I0(n2602), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4044));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1589_3_lut (.I0(n2237), .I1(n5214[13]), .I2(n294[9]), 
            .I3(GND_net), .O(n2363));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1589_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1672_3_lut (.I0(n2363), .I1(n5240[13]), .I2(n294[8]), 
            .I3(GND_net), .O(n2486));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1416_3_lut (.I0(n1975), .I1(n5162[14]), .I2(n294[11]), 
            .I3(GND_net), .O(n2107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1503_3_lut (.I0(n2107), .I1(n5188[14]), .I2(n294[10]), 
            .I3(GND_net), .O(n2236));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31807_2_lut (.I0(baudrate[1]), .I1(n294[20]), .I2(GND_net), 
            .I3(GND_net), .O(n36421));   // verilog/uart_rx.v(119[33:55])
    defparam i31807_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_i1588_3_lut (.I0(n2236), .I1(n5214[14]), .I2(n294[9]), 
            .I3(GND_net), .O(n2362));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1671_3_lut (.I0(n2362), .I1(n5240[14]), .I2(n294[8]), 
            .I3(GND_net), .O(n2485));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1752_3_lut (.I0(n2485), .I1(n5266[14]), .I2(n294[7]), 
            .I3(GND_net), .O(n2605));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1753_3_lut (.I0(n2486), .I1(n5266[13]), .I2(n294[7]), 
            .I3(GND_net), .O(n2606));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i27_2_lut (.I0(n2606), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4045));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i29_2_lut (.I0(n2605), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1582_3_lut (.I0(n2230), .I1(n5214[20]), .I2(n294[9]), 
            .I3(GND_net), .O(n2356));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30003_1_lut (.I0(n34607), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31703));
    defparam i30003_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1602_i41_2_lut (.I0(n2356), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i39_2_lut (.I0(n2357), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32183_4_lut (.I0(n11434), .I1(n36421), .I2(n48_adj_3976), 
            .I3(baudrate[0]), .O(n804));
    defparam i32183_4_lut.LUT_INIT = 16'h3633;
    SB_LUT4 div_37_i1584_3_lut (.I0(n2232), .I1(n5214[18]), .I2(n294[9]), 
            .I3(GND_net), .O(n2358));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1008 (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(baudrate[18]), .I3(baudrate[19]), .O(n34103));
    defparam i1_2_lut_4_lut_adj_1008.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1602_i37_2_lut (.I0(n2358), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4049));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i35_2_lut (.I0(n2359), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i23_2_lut (.I0(n2365), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i27100_1_lut_4_lut (.I0(n34135), .I1(n34137), .I2(n34043), 
            .I3(n34133), .O(n31671));
    defparam i27100_1_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_i1590_3_lut (.I0(n2238), .I1(n5214[12]), .I2(n294[9]), 
            .I3(GND_net), .O(n2364));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1590_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i25_2_lut (.I0(n2364), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1415_3_lut (.I0(n1974), .I1(n5162[15]), .I2(n294[11]), 
            .I3(GND_net), .O(n2106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1502_3_lut (.I0(n2106), .I1(n5188[15]), .I2(n294[10]), 
            .I3(GND_net), .O(n2235));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1587_3_lut (.I0(n2235), .I1(n5214[15]), .I2(n294[9]), 
            .I3(GND_net), .O(n2361));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i31_2_lut (.I0(n2361), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i33_2_lut (.I0(n2360), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut (.I0(baudrate[26]), .I1(baudrate[30]), .I2(baudrate[23]), 
            .I3(GND_net), .O(n34137));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_1602_i21_2_lut (.I0(n2366), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31738_4_lut (.I0(n27_adj_3991), .I1(n25_adj_4052), .I2(n23_adj_4051), 
            .I3(n21_adj_4055), .O(n36352));
    defparam i31738_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i2130_3_lut (.I0(n3058), .I1(n5396[11]), .I2(n294[2]), 
            .I3(GND_net), .O(n3163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31730_4_lut (.I0(n33_adj_4054), .I1(n31_adj_4053), .I2(n29_adj_3992), 
            .I3(n36352), .O(n36344));
    defparam i31730_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1602_i20_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2367), .I3(GND_net), .O(n20_adj_4056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i20_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30103_1_lut_2_lut (.I0(baudrate[8]), .I1(n34705), .I2(GND_net), 
            .I3(GND_net), .O(n31725));
    defparam i30103_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_LessThan_1602_i28_3_lut (.I0(n26_adj_3975), .I1(baudrate[7]), 
            .I2(n31_adj_4053), .I3(GND_net), .O(n28_adj_4057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30104_2_lut_3_lut (.I0(baudrate[8]), .I1(n34705), .I2(baudrate[7]), 
            .I3(GND_net), .O(n34709));
    defparam i30104_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i2129_3_lut (.I0(n3057), .I1(n5396[12]), .I2(n294[2]), 
            .I3(GND_net), .O(n3162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2128_3_lut (.I0(n3056), .I1(n5396[13]), .I2(n294[2]), 
            .I3(GND_net), .O(n3161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2128_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2127_3_lut (.I0(n3055), .I1(n5396[14]), .I2(n294[2]), 
            .I3(GND_net), .O(n3160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1845_i20_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2725), .I3(GND_net), .O(n20_adj_3972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2126_3_lut (.I0(n3054), .I1(n5396[15]), .I2(n294[2]), 
            .I3(GND_net), .O(n3159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2126_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i32_3_lut (.I0(n24_adj_3974), .I1(baudrate[9]), 
            .I2(n35_adj_4050), .I3(GND_net), .O(n32_adj_4058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33191_4_lut (.I0(n32_adj_4058), .I1(n22_adj_3973), .I2(n35_adj_4050), 
            .I3(n36339), .O(n37805));   // verilog/uart_rx.v(119[33:55])
    defparam i33191_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i2125_3_lut (.I0(n3053), .I1(n5396[16]), .I2(n294[2]), 
            .I3(GND_net), .O(n3158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33333_2_lut_3_lut (.I0(baudrate[8]), .I1(n34705), .I2(n48_adj_3941), 
            .I3(GND_net), .O(n294[16]));
    defparam i33333_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i32128_2_lut_4_lut (.I0(n2715), .I1(baudrate[16]), .I2(n2724), 
            .I3(baudrate[7]), .O(n36742));
    defparam i32128_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i33192_3_lut (.I0(n37805), .I1(baudrate[10]), .I2(n37_adj_4049), 
            .I3(GND_net), .O(n37806));   // verilog/uart_rx.v(119[33:55])
    defparam i33192_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33141_3_lut (.I0(n37806), .I1(baudrate[11]), .I2(n39_adj_4048), 
            .I3(GND_net), .O(n37755));   // verilog/uart_rx.v(119[33:55])
    defparam i33141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32853_4_lut (.I0(n39_adj_4048), .I1(n37_adj_4049), .I2(n35_adj_4050), 
            .I3(n36344), .O(n37467));
    defparam i32853_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3932_4_lut (.I0(n961), .I1(baudrate[2]), .I2(n962), .I3(baudrate[1]), 
            .O(n7817));   // verilog/uart_rx.v(119[33:55])
    defparam i3932_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i33168_4_lut (.I0(n28_adj_4057), .I1(n20_adj_4056), .I2(n31_adj_4053), 
            .I3(n36347), .O(n37782));   // verilog/uart_rx.v(119[33:55])
    defparam i33168_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33087_3_lut (.I0(n37755), .I1(baudrate[12]), .I2(n41_adj_4047), 
            .I3(GND_net), .O(n37701));   // verilog/uart_rx.v(119[33:55])
    defparam i33087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33193_4_lut (.I0(n37701), .I1(n37782), .I2(n41_adj_4047), 
            .I3(n37467), .O(n37807));   // verilog/uart_rx.v(119[33:55])
    defparam i33193_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33194_3_lut (.I0(n37807), .I1(baudrate[13]), .I2(n2355), 
            .I3(GND_net), .O(n37808));   // verilog/uart_rx.v(119[33:55])
    defparam i33194_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33139_3_lut (.I0(n37808), .I1(baudrate[14]), .I2(n2354), 
            .I3(GND_net), .O(n37753));   // verilog/uart_rx.v(119[33:55])
    defparam i33139_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2124_3_lut (.I0(n3052), .I1(n5396[17]), .I2(n294[2]), 
            .I3(GND_net), .O(n3157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33089_3_lut (.I0(n37753), .I1(baudrate[15]), .I2(n2353), 
            .I3(GND_net), .O(n48_adj_3942));   // verilog/uart_rx.v(119[33:55])
    defparam i33089_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_1009 (.I0(n33313), .I1(n48_adj_3942), .I2(GND_net), 
            .I3(GND_net), .O(n2491));
    defparam i1_2_lut_adj_1009.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1758_3_lut (.I0(n2491), .I1(n5266[8]), .I2(n294[7]), 
            .I3(GND_net), .O(n2611));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1499_3_lut (.I0(n2103), .I1(n5188[18]), .I2(n294[10]), 
            .I3(GND_net), .O(n2232));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i43_2_lut (.I0(n2229), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1497_3_lut (.I0(n2101), .I1(n5188[20]), .I2(n294[10]), 
            .I3(GND_net), .O(n2230));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2123_3_lut (.I0(n3051), .I1(n5396[18]), .I2(n294[2]), 
            .I3(GND_net), .O(n3156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i41_2_lut (.I0(n2230), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i39_2_lut (.I0(n2231), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1010 (.I0(baudrate[30]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n34041));
    defparam i1_2_lut_adj_1010.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_1011 (.I0(baudrate[29]), .I1(baudrate[24]), .I2(GND_net), 
            .I3(GND_net), .O(n34045));
    defparam i1_2_lut_adj_1011.LUT_INIT = 16'heeee;
    SB_LUT4 i33402_4_lut_4_lut (.I0(r_SM_Main_2__N_3314[1]), .I1(\r_SM_Main[1] ), 
            .I2(n6), .I3(n32460), .O(n31629));
    defparam i33402_4_lut_4_lut.LUT_INIT = 16'h0703;
    SB_LUT4 div_37_i2122_3_lut (.I0(n3050), .I1(n5396[19]), .I2(n294[2]), 
            .I3(GND_net), .O(n3155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1012 (.I0(n37877), .I1(baudrate[19]), .I2(n2827), 
            .I3(n33321), .O(n2957));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1012.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i2121_3_lut (.I0(n3049), .I1(n5396[20]), .I2(n294[2]), 
            .I3(GND_net), .O(n3154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2155_1_lut (.I0(baudrate[20]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2155_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2120_3_lut (.I0(n3048), .I1(n5396[21]), .I2(n294[2]), 
            .I3(GND_net), .O(n3153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i641_4_lut (.I0(n804), .I1(n42_adj_3978), .I2(n294[19]), 
            .I3(baudrate[2]), .O(n960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i641_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 i1_2_lut_adj_1013 (.I0(baudrate[27]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n34043));
    defparam i1_2_lut_adj_1013.LUT_INIT = 16'heeee;
    SB_LUT4 i3933_4_lut (.I0(n960), .I1(n6905), .I2(n7817), .I3(baudrate[3]), 
            .O(n7819));   // verilog/uart_rx.v(119[33:55])
    defparam i3933_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i33437_2_lut_4_lut (.I0(n37877), .I1(baudrate[19]), .I2(n2827), 
            .I3(n11475), .O(n294[4]));   // verilog/uart_rx.v(119[33:55])
    defparam i33437_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i18687_rep_3_2_lut (.I0(n5084[14]), .I1(n294[14]), .I2(GND_net), 
            .I3(GND_net), .O(n31715));   // verilog/uart_rx.v(119[33:55])
    defparam i18687_rep_3_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_LessThan_1157_i32_4_lut (.I0(n31715), .I1(baudrate[2]), 
            .I2(n1701), .I3(baudrate[1]), .O(n32_adj_4062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i32_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32903_3_lut (.I0(n32_adj_4062), .I1(baudrate[6]), .I2(n39_adj_3994), 
            .I3(GND_net), .O(n37517));   // verilog/uart_rx.v(119[33:55])
    defparam i32903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32904_3_lut (.I0(n37517), .I1(baudrate[7]), .I2(n41_adj_3995), 
            .I3(GND_net), .O(n37518));   // verilog/uart_rx.v(119[33:55])
    defparam i32904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32595_4_lut (.I0(n41_adj_3995), .I1(n39_adj_3994), .I2(n37_adj_3996), 
            .I3(n36738), .O(n37209));
    defparam i32595_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31969_4_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3356[12] ), 
            .I2(n2854), .I3(\o_Rx_DV_N_3356[8] ), .O(n36215));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31969_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i32059_4_lut (.I0(r_Rx_Data), .I1(\o_Rx_DV_N_3356[12] ), .I2(n30710), 
            .I3(r_SM_Main[0]), .O(n36221));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i32059_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i32927_3_lut (.I0(n34_adj_4063), .I1(baudrate[5]), .I2(n37_adj_3996), 
            .I3(GND_net), .O(n37541));   // verilog/uart_rx.v(119[33:55])
    defparam i32927_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31965_4_lut (.I0(n36215), .I1(\o_Rx_DV_N_3356[24] ), .I2(n29), 
            .I3(n23), .O(n36212));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31965_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2083_1_lut (.I0(baudrate[21]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2083_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32405_3_lut (.I0(n37518), .I1(baudrate[8]), .I2(n43_adj_3997), 
            .I3(GND_net), .O(n37019));   // verilog/uart_rx.v(119[33:55])
    defparam i32405_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33068_4_lut (.I0(n37019), .I1(n37541), .I2(n43_adj_3997), 
            .I3(n37209), .O(n37682));   // verilog/uart_rx.v(119[33:55])
    defparam i33068_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i2119_3_lut (.I0(n3047), .I1(n5396[22]), .I2(n294[2]), 
            .I3(GND_net), .O(n3152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2119_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31973_4_lut (.I0(n36221), .I1(\o_Rx_DV_N_3356[24] ), .I2(n29), 
            .I3(n23), .O(n36218));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31973_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i33069_3_lut (.I0(n37682), .I1(baudrate[9]), .I2(n1694), .I3(GND_net), 
            .O(n37683));   // verilog/uart_rx.v(119[33:55])
    defparam i33069_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1157_i48_3_lut (.I0(n37683), .I1(baudrate[10]), 
            .I2(n1693), .I3(GND_net), .O(n48_adj_4064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2060_3_lut (.I0(n2951), .I1(n5370[10]), .I2(n294[3]), 
            .I3(GND_net), .O(n3059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_1_i3_4_lut (.I0(n36218), .I1(n36212), 
            .I2(\r_SM_Main[1] ), .I3(n27), .O(n3_adj_4035));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_1_i3_4_lut.LUT_INIT = 16'hf0ca;
    SB_LUT4 i1_4_lut_adj_1014 (.I0(n34087), .I1(n34043), .I2(n34045), 
            .I3(baudrate[11]), .O(n34073));
    defparam i1_4_lut_adj_1014.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2049_3_lut (.I0(n2940), .I1(n5370[21]), .I2(n294[3]), 
            .I3(GND_net), .O(n3048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1015 (.I0(n34073), .I1(n34075), .I2(n34063), 
            .I3(n34019), .O(n11455));
    defparam i1_4_lut_adj_1015.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2048_3_lut (.I0(n2939), .I1(n5370[22]), .I2(n294[3]), 
            .I3(GND_net), .O(n3047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2050_3_lut (.I0(n2941), .I1(n5370[20]), .I2(n294[3]), 
            .I3(GND_net), .O(n3049));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2053_3_lut (.I0(n2944), .I1(n5370[17]), .I2(n294[3]), 
            .I3(GND_net), .O(n3052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i35_2_lut (.I0(n3052), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2051_3_lut (.I0(n2942), .I1(n5370[19]), .I2(n294[3]), 
            .I3(GND_net), .O(n3050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i39_2_lut (.I0(n3050), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4066));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2054_3_lut (.I0(n2945), .I1(n5370[16]), .I2(n294[3]), 
            .I3(GND_net), .O(n3053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_1016 (.I0(n11455), .I1(n48_adj_4064), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1841));
    defparam i1_3_lut_adj_1016.LUT_INIT = 16'hefef;
    SB_LUT4 div_37_i1328_3_lut (.I0(n1841), .I1(n5136[13]), .I2(n294[12]), 
            .I3(GND_net), .O(n1976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1417_3_lut (.I0(n1976), .I1(n5162[13]), .I2(n294[11]), 
            .I3(GND_net), .O(n2108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i33_2_lut (.I0(n3053), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4067));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1504_3_lut (.I0(n2108), .I1(n5188[13]), .I2(n294[10]), 
            .I3(GND_net), .O(n2237));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i27_2_lut (.I0(n2237), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4068));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1505_3_lut (.I0(n2109), .I1(n5188[12]), .I2(n294[10]), 
            .I3(GND_net), .O(n2238));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2052_3_lut (.I0(n2943), .I1(n5370[18]), .I2(n294[3]), 
            .I3(GND_net), .O(n3051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2052_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i25_2_lut (.I0(n2238), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4069));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i37_2_lut (.I0(n3051), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4070));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i35_2_lut (.I0(n2233), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4071));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i33_2_lut (.I0(n2234), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4072));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i37_2_lut (.I0(n2232), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4073));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i23_2_lut (.I0(n2239), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4074));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31843_4_lut (.I0(n29_adj_3998), .I1(n27_adj_4068), .I2(n25_adj_4069), 
            .I3(n23_adj_4074), .O(n36457));
    defparam i31843_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1845_i22_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2715), .I3(GND_net), .O(n22_adj_3967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2056_3_lut (.I0(n2947), .I1(n5370[14]), .I2(n294[3]), 
            .I3(GND_net), .O(n3055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31755_4_lut (.I0(n35_adj_4071), .I1(n33_adj_4072), .I2(n31_adj_3999), 
            .I3(n36457), .O(n36369));
    defparam i31755_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i2057_3_lut (.I0(n2948), .I1(n5370[13]), .I2(n294[3]), 
            .I3(GND_net), .O(n3056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i27_2_lut (.I0(n3056), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4075));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i29_2_lut (.I0(n3055), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4076));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i22_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2240), .I3(GND_net), .O(n22_adj_4077));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i22_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_765_i40_3_lut_3_lut (.I0(n1114), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n40_adj_4012));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i40_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_LessThan_1517_i30_3_lut (.I0(n28_adj_3966), .I1(baudrate[7]), 
            .I2(n33_adj_4072), .I3(GND_net), .O(n30_adj_4078));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31714_3_lut_4_lut (.I0(n1114), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1115), .O(n36328));   // verilog/uart_rx.v(119[33:55])
    defparam i31714_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i2861_2_lut (.I0(n7809), .I1(n6741), .I2(GND_net), .I3(GND_net), 
            .O(n44_adj_4079));   // verilog/uart_rx.v(119[33:55])
    defparam i2861_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_4_lut_adj_1017 (.I0(n34021), .I1(n34685), .I2(n5084[14]), 
            .I3(n48_adj_3963), .O(n1702));
    defparam i1_3_lut_4_lut_adj_1017.LUT_INIT = 16'h0010;
    SB_LUT4 div_37_i640_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n294[19]), 
            .I3(n44_adj_4079), .O(n959));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i640_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i2058_3_lut (.I0(n2949), .I1(n5370[12]), .I2(n294[3]), 
            .I3(GND_net), .O(n3057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2059_3_lut (.I0(n2950), .I1(n5370[11]), .I2(n294[3]), 
            .I3(GND_net), .O(n3058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i23_2_lut (.I0(n3058), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4080));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i34_3_lut (.I0(n26_adj_3965), .I1(baudrate[9]), 
            .I2(n37_adj_4073), .I3(GND_net), .O(n34_adj_4081));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i25_2_lut (.I0(n3057), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2065_3_lut (.I0(n2956), .I1(n5370[5]), .I2(n294[3]), 
            .I3(GND_net), .O(n3064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33189_4_lut (.I0(n34_adj_4081), .I1(n24_adj_3964), .I2(n37_adj_4073), 
            .I3(n36367), .O(n37803));   // verilog/uart_rx.v(119[33:55])
    defparam i33189_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33190_3_lut (.I0(n37803), .I1(baudrate[10]), .I2(n39_adj_4061), 
            .I3(GND_net), .O(n37804));   // verilog/uart_rx.v(119[33:55])
    defparam i33190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2066_3_lut (.I0(n2957), .I1(n5370[4]), .I2(n294[3]), 
            .I3(GND_net), .O(n3065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33143_3_lut (.I0(n37804), .I1(baudrate[11]), .I2(n41_adj_4060), 
            .I3(GND_net), .O(n37757));   // verilog/uart_rx.v(119[33:55])
    defparam i33143_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32861_4_lut (.I0(n41_adj_4060), .I1(n39_adj_4061), .I2(n37_adj_4073), 
            .I3(n36369), .O(n37475));
    defparam i32861_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2070_i11_2_lut (.I0(n3064), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32901_4_lut (.I0(n30_adj_4078), .I1(n22_adj_4077), .I2(n33_adj_4072), 
            .I3(n36430), .O(n37515));   // verilog/uart_rx.v(119[33:55])
    defparam i32901_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33085_3_lut (.I0(n37757), .I1(baudrate[12]), .I2(n43_adj_4059), 
            .I3(GND_net), .O(n42_adj_4083));   // verilog/uart_rx.v(119[33:55])
    defparam i33085_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33317_2_lut_4_lut (.I0(n37761), .I1(baudrate[6]), .I2(n1111), 
            .I3(n34709), .O(n294[17]));   // verilog/uart_rx.v(119[33:55])
    defparam i33317_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i33024_4_lut (.I0(n42_adj_4083), .I1(n37515), .I2(n43_adj_4059), 
            .I3(n37475), .O(n37638));   // verilog/uart_rx.v(119[33:55])
    defparam i33024_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_2_lut_4_lut_adj_1018 (.I0(n37761), .I1(baudrate[6]), .I2(n1111), 
            .I3(n33303), .O(n1267));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1018.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i2061_3_lut (.I0(n2952), .I1(n5370[9]), .I2(n294[3]), 
            .I3(GND_net), .O(n3060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2062_3_lut (.I0(n2953), .I1(n5370[8]), .I2(n294[3]), 
            .I3(GND_net), .O(n3061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2062_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33025_3_lut (.I0(n37638), .I1(baudrate[13]), .I2(n2228), 
            .I3(GND_net), .O(n37639));   // verilog/uart_rx.v(119[33:55])
    defparam i33025_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i743_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n294[18]), 
            .I3(n44_adj_4084), .O(n1112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i743_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i2063_3_lut (.I0(n2954), .I1(n5370[7]), .I2(n294[3]), 
            .I3(GND_net), .O(n3062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_866_i38_3_lut_3_lut (.I0(n1265), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n38_adj_3987));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i38_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_i2055_3_lut (.I0(n2946), .I1(n5370[15]), .I2(n294[3]), 
            .I3(GND_net), .O(n3054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32244_3_lut_4_lut (.I0(n1265), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1266), .O(n36858));   // verilog/uart_rx.v(119[33:55])
    defparam i32244_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2070_i15_2_lut (.I0(n3062), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4085));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i17_2_lut (.I0(n3061), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4086));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1676_3_lut (.I0(n2367), .I1(n5240[9]), .I2(n294[8]), 
            .I3(GND_net), .O(n2490));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1019 (.I0(baudrate[28]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n33801));
    defparam i1_2_lut_adj_1019.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_1020 (.I0(baudrate[31]), .I1(baudrate[26]), .I2(GND_net), 
            .I3(GND_net), .O(n34047));
    defparam i1_2_lut_adj_1020.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i41_4_lut (.I0(n3154), .I1(baudrate[20]), 
            .I2(n5422[20]), .I3(n294[1]), .O(n41_adj_4087));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i41_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i39_4_lut (.I0(n3155), .I1(baudrate[19]), 
            .I2(n5422[19]), .I3(n294[1]), .O(n39_adj_4088));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i39_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i33_4_lut (.I0(n3158), .I1(baudrate[16]), 
            .I2(n5422[16]), .I3(n294[1]), .O(n33_adj_4089));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i33_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2070_i19_2_lut (.I0(n3060), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4090));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i35_4_lut (.I0(n3157), .I1(baudrate[17]), 
            .I2(n5422[17]), .I3(n294[1]), .O(n35_adj_4091));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i35_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i37_4_lut (.I0(n3156), .I1(baudrate[18]), 
            .I2(n5422[18]), .I3(n294[1]), .O(n37_adj_4092));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i37_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i29_4_lut (.I0(n3160), .I1(baudrate[14]), 
            .I2(n5422[14]), .I3(n294[1]), .O(n29_adj_4093));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i29_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2070_i31_2_lut (.I0(n3054), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4094));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2064_3_lut (.I0(n2955), .I1(n5370[6]), .I2(n294[3]), 
            .I3(GND_net), .O(n3063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2064_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i13_2_lut (.I0(n3063), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n13));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i21_2_lut (.I0(n3059), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4095));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31943_4_lut (.I0(n31_adj_4094), .I1(n19_adj_4090), .I2(n17_adj_4086), 
            .I3(n15_adj_4085), .O(n36557));
    defparam i31943_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i31_4_lut (.I0(n3159), .I1(baudrate[15]), 
            .I2(n5422[15]), .I3(n294[1]), .O(n31_adj_4096));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i31_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i23_4_lut (.I0(n3163), .I1(baudrate[11]), 
            .I2(n5422[11]), .I3(n294[1]), .O(n23_adj_4097));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i23_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i32499_4_lut (.I0(n13), .I1(n11), .I2(n3065), .I3(baudrate[2]), 
            .O(n37113));
    defparam i32499_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i32767_4_lut (.I0(n19_adj_4090), .I1(n17_adj_4086), .I2(n15_adj_4085), 
            .I3(n37113), .O(n37381));
    defparam i32767_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32763_4_lut (.I0(n25_adj_4082), .I1(n23_adj_4080), .I2(n21_adj_4095), 
            .I3(n37381), .O(n37377));
    defparam i32763_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31946_4_lut (.I0(n31_adj_4094), .I1(n29_adj_4076), .I2(n27_adj_4075), 
            .I3(n37377), .O(n36560));
    defparam i31946_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1410_3_lut (.I0(n1969), .I1(n5162[20]), .I2(n294[11]), 
            .I3(GND_net), .O(n2101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i41_2_lut (.I0(n2101), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1412_3_lut (.I0(n1971), .I1(n5162[18]), .I2(n294[11]), 
            .I3(GND_net), .O(n2103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i37_2_lut (.I0(n2103), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i25_4_lut (.I0(n3162), .I1(baudrate[12]), 
            .I2(n5422[12]), .I3(n294[1]), .O(n25_adj_4100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i25_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1430_i39_2_lut (.I0(n2102), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32219_3_lut_4_lut (.I0(n1413), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1414), .O(n36833));   // verilog/uart_rx.v(119[33:55])
    defparam i32219_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2210_i45_4_lut (.I0(n3152), .I1(baudrate[22]), 
            .I2(n5422[22]), .I3(n294[1]), .O(n45_adj_4102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i45_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_1430_i33_2_lut (.I0(n2105), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_adj_1021 (.I0(n33827), .I1(n34607), .I2(n5162[11]), 
            .I3(n48_adj_3950), .O(n2110));
    defparam i1_3_lut_4_lut_adj_1021.LUT_INIT = 16'h0010;
    SB_LUT4 div_37_LessThan_2210_i7_4_lut (.I0(n3171), .I1(baudrate[3]), 
            .I2(n5422[3]), .I3(n294[1]), .O(n7));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i43_4_lut (.I0(n3153), .I1(baudrate[21]), 
            .I2(n5422[21]), .I3(n294[1]), .O(n43_adj_4104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i43_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i9_4_lut (.I0(n3170), .I1(baudrate[4]), 
            .I2(n5422[4]), .I3(n294[1]), .O(n9));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i9_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i17_4_lut (.I0(n3166), .I1(baudrate[8]), 
            .I2(n5422[8]), .I3(n294[1]), .O(n17_adj_4105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i17_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i19_4_lut (.I0(n3165), .I1(baudrate[9]), 
            .I2(n5422[9]), .I3(n294[1]), .O(n19_adj_4106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i19_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i21_4_lut (.I0(n3164), .I1(baudrate[10]), 
            .I2(n5422[10]), .I3(n294[1]), .O(n21_adj_4107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i21_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i11_4_lut (.I0(n3169), .I1(baudrate[5]), 
            .I2(n5422[5]), .I3(n294[1]), .O(n11_adj_4108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i11_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2070_i8_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3066), .I3(GND_net), .O(n8_adj_4109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i8_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32851_3_lut (.I0(n8_adj_4109), .I1(baudrate[13]), .I2(n31_adj_4094), 
            .I3(GND_net), .O(n37465));   // verilog/uart_rx.v(119[33:55])
    defparam i32851_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32852_3_lut (.I0(n37465), .I1(baudrate[14]), .I2(n33_adj_4067), 
            .I3(GND_net), .O(n37466));   // verilog/uart_rx.v(119[33:55])
    defparam i32852_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1418_3_lut (.I0(n1977), .I1(n5162[12]), .I2(n294[11]), 
            .I3(GND_net), .O(n2109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i35_2_lut (.I0(n2104), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4110));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i13_4_lut (.I0(n3168), .I1(baudrate[6]), 
            .I2(n5422[6]), .I3(n294[1]), .O(n13_adj_4111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i13_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i15_4_lut (.I0(n3167), .I1(baudrate[7]), 
            .I2(n5422[7]), .I3(n294[1]), .O(n15_adj_4112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i15_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2070_i34_3_lut (.I0(n16_adj_3956), .I1(baudrate[17]), 
            .I2(n39_adj_4066), .I3(GND_net), .O(n34_adj_4113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31938_4_lut (.I0(n37_adj_4070), .I1(n35_adj_4065), .I2(n33_adj_4067), 
            .I3(n36557), .O(n36552));
    defparam i31938_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33195_4_lut (.I0(n34_adj_4113), .I1(n14_adj_3955), .I2(n39_adj_4066), 
            .I3(n36550), .O(n37809));   // verilog/uart_rx.v(119[33:55])
    defparam i33195_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_965_i36_3_lut_3_lut (.I0(n1413), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n36_adj_4114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i36_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_LessThan_1430_i27_2_lut (.I0(n2108), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4115));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i27_4_lut (.I0(n3161), .I1(baudrate[13]), 
            .I2(n5422[13]), .I3(n294[1]), .O(n27_adj_4116));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i27_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i32474_3_lut (.I0(n37466), .I1(baudrate[15]), .I2(n35_adj_4065), 
            .I3(GND_net), .O(n37088));   // verilog/uart_rx.v(119[33:55])
    defparam i32474_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32124_3_lut_4_lut (.I0(n1699), .I1(baudrate[4]), .I2(baudrate[3]), 
            .I3(n1700), .O(n36738));   // verilog/uart_rx.v(119[33:55])
    defparam i32124_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i31805_4_lut (.I0(n27_adj_4116), .I1(n15_adj_4112), .I2(n13_adj_4111), 
            .I3(n11_adj_4108), .O(n36419));
    defparam i31805_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32008_4_lut (.I0(n33_adj_4103), .I1(n31_adj_4000), .I2(n29_adj_4001), 
            .I3(n27_adj_4115), .O(n36622));
    defparam i32008_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31829_4_lut (.I0(n21_adj_4107), .I1(n19_adj_4106), .I2(n17_adj_4105), 
            .I3(n9), .O(n36443));
    defparam i31829_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i16_3_lut (.I0(baudrate[9]), .I1(baudrate[21]), 
            .I2(n43_adj_4104), .I3(GND_net), .O(n16_adj_4117));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32855_3_lut (.I0(n10_adj_3953), .I1(baudrate[10]), .I2(n25_adj_4082), 
            .I3(GND_net), .O(n37469));   // verilog/uart_rx.v(119[33:55])
    defparam i32855_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32856_3_lut (.I0(n37469), .I1(baudrate[11]), .I2(n27_adj_4075), 
            .I3(GND_net), .O(n37470));   // verilog/uart_rx.v(119[33:55])
    defparam i32856_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32485_4_lut (.I0(n27_adj_4075), .I1(n25_adj_4082), .I2(n23_adj_4080), 
            .I3(n36590), .O(n37099));
    defparam i32485_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31777_2_lut (.I0(n43_adj_4104), .I1(n19_adj_4106), .I2(GND_net), 
            .I3(GND_net), .O(n36391));
    defparam i31777_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2070_i20_3_lut (.I0(n12_adj_3961), .I1(baudrate[9]), 
            .I2(n23_adj_4080), .I3(GND_net), .O(n20_adj_4118));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32472_3_lut (.I0(n37470), .I1(baudrate[12]), .I2(n29_adj_4076), 
            .I3(GND_net), .O(n37086));   // verilog/uart_rx.v(119[33:55])
    defparam i32472_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32970_4_lut (.I0(n37_adj_4070), .I1(n35_adj_4065), .I2(n33_adj_4067), 
            .I3(n36560), .O(n37584));
    defparam i32970_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1157_i34_3_lut_3_lut (.I0(n1699), .I1(baudrate[4]), 
            .I2(baudrate[3]), .I3(GND_net), .O(n34_adj_4063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_i844_3_lut (.I0(n1112), .I1(n5006[22]), .I2(n294[17]), 
            .I3(GND_net), .O(n1262));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33258_4_lut (.I0(n37088), .I1(n37809), .I2(n39_adj_4066), 
            .I3(n36552), .O(n37872));   // verilog/uart_rx.v(119[33:55])
    defparam i33258_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_2210_i8_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n17_adj_4105), .I3(GND_net), .O(n8_adj_4119));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i24_3_lut (.I0(n16_adj_4117), .I1(baudrate[22]), 
            .I2(n45_adj_4102), .I3(GND_net), .O(n24_adj_4120));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2208_3_lut (.I0(n3172), .I1(n5422[2]), .I2(n294[1]), 
            .I3(GND_net), .O(n3274));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32749_4_lut (.I0(n37086), .I1(n20_adj_4118), .I2(n29_adj_4076), 
            .I3(n37099), .O(n37363));   // verilog/uart_rx.v(119[33:55])
    defparam i32749_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33272_4_lut (.I0(n37363), .I1(n37872), .I2(n39_adj_4066), 
            .I3(n37584), .O(n37886));   // verilog/uart_rx.v(119[33:55])
    defparam i33272_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31848_3_lut (.I0(n7), .I1(n3274), .I2(baudrate[2]), .I3(GND_net), 
            .O(n36462));
    defparam i31848_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i32354_4_lut (.I0(n13_adj_4111), .I1(n11_adj_4108), .I2(n9), 
            .I3(n36462), .O(n36968));
    defparam i32354_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_1430_i38_3_lut (.I0(n30_adj_3952), .I1(baudrate[10]), 
            .I2(n41_adj_4098), .I3(GND_net), .O(n38_adj_4121));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33273_3_lut (.I0(n37886), .I1(baudrate[18]), .I2(n3049), 
            .I3(GND_net), .O(n37887));   // verilog/uart_rx.v(119[33:55])
    defparam i33273_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33265_3_lut (.I0(n37887), .I1(baudrate[19]), .I2(n3048), 
            .I3(GND_net), .O(n37879));   // verilog/uart_rx.v(119[33:55])
    defparam i33265_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32751_3_lut (.I0(n37879), .I1(baudrate[20]), .I2(n3047), 
            .I3(GND_net), .O(n37365));   // verilog/uart_rx.v(119[33:55])
    defparam i32751_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32348_4_lut (.I0(n19_adj_4106), .I1(n17_adj_4105), .I2(n15_adj_4112), 
            .I3(n36968), .O(n36962));
    defparam i32348_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i33058_4_lut (.I0(n25_adj_4100), .I1(n23_adj_4097), .I2(n21_adj_4107), 
            .I3(n36962), .O(n37672));
    defparam i33058_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1981_3_lut (.I0(n2834), .I1(n5344[16]), .I2(n294[4]), 
            .I3(GND_net), .O(n2945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1975_3_lut (.I0(n2828), .I1(n5344[22]), .I2(n294[4]), 
            .I3(GND_net), .O(n2939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18708_rep_2_2_lut (.I0(n5162[11]), .I1(n294[11]), .I2(GND_net), 
            .I3(GND_net), .O(n31706));   // verilog/uart_rx.v(119[33:55])
    defparam i18708_rep_2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32711_4_lut (.I0(n31_adj_4096), .I1(n29_adj_4093), .I2(n27_adj_4116), 
            .I3(n37672), .O(n37325));
    defparam i32711_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i33172_4_lut (.I0(n37_adj_4092), .I1(n35_adj_4091), .I2(n33_adj_4089), 
            .I3(n37325), .O(n37786));
    defparam i33172_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1976_3_lut (.I0(n2829), .I1(n5344[21]), .I2(n294[4]), 
            .I3(GND_net), .O(n2940));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1977_3_lut (.I0(n2830), .I1(n5344[20]), .I2(n294[4]), 
            .I3(GND_net), .O(n2941));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i12_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n33_adj_4089), .I3(GND_net), .O(n12_adj_4122));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i4_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n33327), .I3(n48_adj_4123), .O(n4_adj_4124));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i4_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 div_37_LessThan_1997_i41_2_lut (.I0(n2941), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4125));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33006_3_lut (.I0(n4_adj_4124), .I1(baudrate[13]), .I2(n27_adj_4116), 
            .I3(GND_net), .O(n37620));   // verilog/uart_rx.v(119[33:55])
    defparam i33006_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33007_3_lut (.I0(n37620), .I1(baudrate[14]), .I2(n29_adj_4093), 
            .I3(GND_net), .O(n37621));   // verilog/uart_rx.v(119[33:55])
    defparam i33007_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i943_3_lut (.I0(n1262), .I1(n5032[22]), .I2(n294[16]), 
            .I3(GND_net), .O(n1409));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31795_2_lut (.I0(n33_adj_4089), .I1(n15_adj_4112), .I2(GND_net), 
            .I3(GND_net), .O(n36409));
    defparam i31795_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i10_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n13_adj_4111), .I3(GND_net), .O(n10_adj_4126));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i30_3_lut (.I0(n12_adj_4122), .I1(baudrate[17]), 
            .I2(n35_adj_4091), .I3(GND_net), .O(n30_adj_4127));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1979_3_lut (.I0(n2832), .I1(n5344[18]), .I2(n294[4]), 
            .I3(GND_net), .O(n2943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i37_2_lut (.I0(n2943), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4128));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1980_3_lut (.I0(n2833), .I1(n5344[17]), .I2(n294[4]), 
            .I3(GND_net), .O(n2944));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i35_2_lut (.I0(n2944), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4129));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31798_4_lut (.I0(n33_adj_4089), .I1(n31_adj_4096), .I2(n29_adj_4093), 
            .I3(n36419), .O(n36412));
    defparam i31798_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33199_4_lut (.I0(n30_adj_4127), .I1(n10_adj_4126), .I2(n35_adj_4091), 
            .I3(n36409), .O(n37813));   // verilog/uart_rx.v(119[33:55])
    defparam i33199_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1978_3_lut (.I0(n2831), .I1(n5344[19]), .I2(n294[4]), 
            .I3(GND_net), .O(n2942));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32967_3_lut (.I0(n37621), .I1(baudrate[15]), .I2(n31_adj_4096), 
            .I3(GND_net), .O(n37581));   // verilog/uart_rx.v(119[33:55])
    defparam i32967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33256_4_lut (.I0(n37581), .I1(n37813), .I2(n35_adj_4091), 
            .I3(n36412), .O(n37870));   // verilog/uart_rx.v(119[33:55])
    defparam i33256_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33257_3_lut (.I0(n37870), .I1(baudrate[18]), .I2(n37_adj_4092), 
            .I3(GND_net), .O(n37871));   // verilog/uart_rx.v(119[33:55])
    defparam i33257_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i6_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n7), .I3(GND_net), .O(n6_adj_4130));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i39_2_lut (.I0(n2942), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4131));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i26_4_lut (.I0(n31706), .I1(baudrate[2]), 
            .I2(n2109), .I3(baudrate[1]), .O(n26_adj_4132));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i26_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i33008_3_lut (.I0(n6_adj_4130), .I1(baudrate[10]), .I2(n21_adj_4107), 
            .I3(GND_net), .O(n37622));   // verilog/uart_rx.v(119[33:55])
    defparam i33008_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1982_3_lut (.I0(n2835), .I1(n5344[15]), .I2(n294[4]), 
            .I3(GND_net), .O(n2946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1983_3_lut (.I0(n2836), .I1(n5344[14]), .I2(n294[4]), 
            .I3(GND_net), .O(n2947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32889_3_lut (.I0(n26_adj_4132), .I1(baudrate[6]), .I2(n33_adj_4103), 
            .I3(GND_net), .O(n37503));   // verilog/uart_rx.v(119[33:55])
    defparam i32889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32890_3_lut (.I0(n37503), .I1(baudrate[7]), .I2(n35_adj_4110), 
            .I3(GND_net), .O(n37504));   // verilog/uart_rx.v(119[33:55])
    defparam i32890_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31993_4_lut (.I0(n39_adj_4101), .I1(n37_adj_4099), .I2(n35_adj_4110), 
            .I3(n36622), .O(n36607));
    defparam i31993_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33154_4_lut (.I0(n38_adj_4121), .I1(n28_adj_3951), .I2(n41_adj_4098), 
            .I3(n36605), .O(n37768));   // verilog/uart_rx.v(119[33:55])
    defparam i33154_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32420_3_lut (.I0(n37504), .I1(baudrate[8]), .I2(n37_adj_4099), 
            .I3(GND_net), .O(n37034));   // verilog/uart_rx.v(119[33:55])
    defparam i32420_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33242_4_lut (.I0(n37034), .I1(n37768), .I2(n41_adj_4098), 
            .I3(n36607), .O(n37856));   // verilog/uart_rx.v(119[33:55])
    defparam i33242_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33243_3_lut (.I0(n37856), .I1(baudrate[11]), .I2(n2100), 
            .I3(GND_net), .O(n37857));   // verilog/uart_rx.v(119[33:55])
    defparam i33243_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1040_3_lut (.I0(n1409), .I1(n5058[22]), .I2(n294[15]), 
            .I3(GND_net), .O(n1553));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33208_3_lut (.I0(n37857), .I1(baudrate[12]), .I2(n2099), 
            .I3(GND_net), .O(n37822));   // verilog/uart_rx.v(119[33:55])
    defparam i33208_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32426_3_lut (.I0(n37822), .I1(baudrate[13]), .I2(n2098), 
            .I3(GND_net), .O(n48_adj_4133));   // verilog/uart_rx.v(119[33:55])
    defparam i32426_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1135_3_lut (.I0(n1553), .I1(n5084[22]), .I2(n294[14]), 
            .I3(GND_net), .O(n1694));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33009_3_lut (.I0(n37622), .I1(baudrate[11]), .I2(n23_adj_4097), 
            .I3(GND_net), .O(n37623));   // verilog/uart_rx.v(119[33:55])
    defparam i33009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31779_4_lut (.I0(n43_adj_4104), .I1(n25_adj_4100), .I2(n23_adj_4097), 
            .I3(n36443), .O(n36393));
    defparam i31779_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_1022 (.I0(baudrate[27]), .I1(baudrate[24]), .I2(baudrate[29]), 
            .I3(baudrate[30]), .O(n34097));
    defparam i1_4_lut_adj_1022.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1997_i29_2_lut (.I0(n2947), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4134));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1023 (.I0(n34047), .I1(n34057), .I2(n33801), 
            .I3(GND_net), .O(n34105));
    defparam i1_3_lut_adj_1023.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_LessThan_1997_i31_2_lut (.I0(n2946), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4135));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1986_3_lut (.I0(n2839), .I1(n5344[11]), .I2(n294[4]), 
            .I3(GND_net), .O(n2950));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32755_4_lut (.I0(n24_adj_4120), .I1(n8_adj_4119), .I2(n45_adj_4102), 
            .I3(n36391), .O(n37369));   // verilog/uart_rx.v(119[33:55])
    defparam i32755_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1984_3_lut (.I0(n2837), .I1(n5344[13]), .I2(n294[4]), 
            .I3(GND_net), .O(n2948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32965_3_lut (.I0(n37623), .I1(baudrate[12]), .I2(n25_adj_4100), 
            .I3(GND_net), .O(n37579));   // verilog/uart_rx.v(119[33:55])
    defparam i32965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1985_3_lut (.I0(n2838), .I1(n5344[12]), .I2(n294[4]), 
            .I3(GND_net), .O(n2949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1228_3_lut (.I0(n1694), .I1(n5110[22]), .I2(n294[13]), 
            .I3(GND_net), .O(n1832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i23_2_lut (.I0(n2950), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4136));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33231_3_lut (.I0(n37871), .I1(baudrate[19]), .I2(n39_adj_4088), 
            .I3(GND_net), .O(n37845));   // verilog/uart_rx.v(119[33:55])
    defparam i33231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i25_2_lut (.I0(n2949), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4137));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i27_2_lut (.I0(n2948), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4138));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31781_4_lut (.I0(n43_adj_4104), .I1(n41_adj_4087), .I2(n39_adj_4088), 
            .I3(n37786), .O(n36395));
    defparam i31781_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i1_4_lut_adj_1024 (.I0(n34105), .I1(n34101), .I2(n34103), 
            .I3(n34097), .O(n11462));
    defparam i1_4_lut_adj_1024.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_1025 (.I0(n11462), .I1(n48_adj_4133), .I2(baudrate[0]), 
            .I3(GND_net), .O(n2240));
    defparam i1_3_lut_adj_1025.LUT_INIT = 16'hefef;
    SB_LUT4 div_37_i1592_3_lut (.I0(n2240), .I1(n5214[10]), .I2(n294[9]), 
            .I3(GND_net), .O(n2366));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1592_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1675_3_lut (.I0(n2366), .I1(n5240[10]), .I2(n294[8]), 
            .I3(GND_net), .O(n2489));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i13_2_lut (.I0(n2955), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4139));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i15_2_lut (.I0(n2954), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4140));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33098_4_lut (.I0(n37579), .I1(n37369), .I2(n45_adj_4102), 
            .I3(n36393), .O(n37712));   // verilog/uart_rx.v(119[33:55])
    defparam i33098_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_i1756_3_lut (.I0(n2489), .I1(n5266[10]), .I2(n294[7]), 
            .I3(GND_net), .O(n2609));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1757_3_lut (.I0(n2490), .I1(n5266[9]), .I2(n294[7]), 
            .I3(GND_net), .O(n2610));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33225_3_lut (.I0(n37845), .I1(baudrate[20]), .I2(n41_adj_4087), 
            .I3(GND_net), .O(n40_adj_4141));   // verilog/uart_rx.v(119[33:55])
    defparam i33225_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1026 (.I0(baudrate[25]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n33223));
    defparam i1_2_lut_adj_1026.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1987_3_lut (.I0(n2840), .I1(n5344[10]), .I2(n294[4]), 
            .I3(GND_net), .O(n2951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1988_3_lut (.I0(n2841), .I1(n5344[9]), .I2(n294[4]), 
            .I3(GND_net), .O(n2952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i19_2_lut (.I0(n2610), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4142));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i21_2_lut (.I0(n2609), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4143));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1989_3_lut (.I0(n2842), .I1(n5344[8]), .I2(n294[4]), 
            .I3(GND_net), .O(n2953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i17_2_lut (.I0(n2953), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1062_i43_2_lut (.I0(n1554), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4145));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2187_3_lut (.I0(n3151), .I1(n5422[23]), .I2(n294[1]), 
            .I3(GND_net), .O(n3253));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33100_4_lut (.I0(n40_adj_4141), .I1(n37712), .I2(n45_adj_4102), 
            .I3(n36395), .O(n37714));   // verilog/uart_rx.v(119[33:55])
    defparam i33100_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1027 (.I0(n34131), .I1(n34045), .I2(n33223), 
            .I3(n34043), .O(n33231));
    defparam i1_4_lut_adj_1027.LUT_INIT = 16'hfffe;
    SB_LUT4 i33357_4_lut (.I0(n33231), .I1(n37714), .I2(baudrate[23]), 
            .I3(n3253), .O(n32721));   // verilog/uart_rx.v(119[33:55])
    defparam i33357_4_lut.LUT_INIT = 16'h1501;
    SB_LUT4 div_37_LessThan_1997_i19_2_lut (.I0(n2952), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4146));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1062_i37_2_lut (.I0(n1557), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4147));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i21_2_lut (.I0(n2951), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4148));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i33_2_lut (.I0(n2945), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4149));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32013_4_lut (.I0(n33_adj_4149), .I1(n21_adj_4148), .I2(n19_adj_4146), 
            .I3(n17_adj_4144), .O(n36627));
    defparam i32013_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32549_4_lut (.I0(n15_adj_4140), .I1(n13_adj_4139), .I2(n2956), 
            .I3(baudrate[2]), .O(n37163));
    defparam i32549_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i32791_4_lut (.I0(n21_adj_4148), .I1(n19_adj_4146), .I2(n17_adj_4144), 
            .I3(n37163), .O(n37405));
    defparam i32791_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 div_37_LessThan_1062_i41_2_lut (.I0(n1555), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4150));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32785_4_lut (.I0(n27_adj_4138), .I1(n25_adj_4137), .I2(n23_adj_4136), 
            .I3(n37405), .O(n37399));
    defparam i32785_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32015_4_lut (.I0(n33_adj_4149), .I1(n31_adj_4135), .I2(n29_adj_4134), 
            .I3(n37399), .O(n36629));
    defparam i32015_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1062_i39_2_lut (.I0(n1556), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1028 (.I0(\r_SM_Main[1] ), .I1(r_SM_Main[0]), 
            .I2(\r_SM_Main[2] ), .I3(GND_net), .O(n4));
    defparam i1_2_lut_3_lut_adj_1028.LUT_INIT = 16'hfdfd;
    SB_LUT4 div_37_LessThan_1062_i32_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1560), .I3(GND_net), .O(n32_adj_4152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i32_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32907_3_lut (.I0(n32_adj_4152), .I1(baudrate[5]), .I2(n39_adj_4151), 
            .I3(GND_net), .O(n37521));   // verilog/uart_rx.v(119[33:55])
    defparam i32907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32908_3_lut (.I0(n37521), .I1(baudrate[6]), .I2(n41_adj_4150), 
            .I3(GND_net), .O(n37522));   // verilog/uart_rx.v(119[33:55])
    defparam i32908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32615_4_lut (.I0(n41_adj_4150), .I1(n39_adj_4151), .I2(n37_adj_4147), 
            .I3(n36811), .O(n37229));
    defparam i32615_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_2141_i33_2_lut (.I0(n3158), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i9_2_lut (.I0(n3170), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32925_3_lut (.I0(n34_adj_3985), .I1(baudrate[4]), .I2(n37_adj_4147), 
            .I3(GND_net), .O(n37539));   // verilog/uart_rx.v(119[33:55])
    defparam i32925_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i10_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2957), .I3(GND_net), .O(n10_adj_4155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i10_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32859_3_lut (.I0(n10_adj_4155), .I1(baudrate[13]), .I2(n33_adj_4149), 
            .I3(GND_net), .O(n37473));   // verilog/uart_rx.v(119[33:55])
    defparam i32859_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32860_3_lut (.I0(n37473), .I1(baudrate[14]), .I2(n35_adj_4129), 
            .I3(GND_net), .O(n37474));   // verilog/uart_rx.v(119[33:55])
    defparam i32860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32402_3_lut (.I0(n37522), .I1(baudrate[7]), .I2(n43_adj_4145), 
            .I3(GND_net), .O(n37016));   // verilog/uart_rx.v(119[33:55])
    defparam i32402_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i31_2_lut (.I0(n3159), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i37_2_lut (.I0(n3156), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i36_3_lut (.I0(n18_adj_3949), .I1(baudrate[17]), 
            .I2(n41_adj_4125), .I3(GND_net), .O(n36_adj_4158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i35_2_lut (.I0(n3157), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i25_2_lut (.I0(n3162), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32002_4_lut (.I0(n39_adj_4131), .I1(n37_adj_4128), .I2(n35_adj_4129), 
            .I3(n36627), .O(n36616));
    defparam i32002_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33166_4_lut (.I0(n36_adj_4158), .I1(n16), .I2(n41_adj_4125), 
            .I3(n36614), .O(n37780));   // verilog/uart_rx.v(119[33:55])
    defparam i33166_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32462_3_lut (.I0(n37474), .I1(baudrate[15]), .I2(n37_adj_4128), 
            .I3(GND_net), .O(n37076));   // verilog/uart_rx.v(119[33:55])
    defparam i32462_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i27_2_lut (.I0(n3161), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i21_2_lut (.I0(n3164), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33070_4_lut (.I0(n37016), .I1(n37539), .I2(n43_adj_4145), 
            .I3(n37229), .O(n37684));   // verilog/uart_rx.v(119[33:55])
    defparam i33070_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_2141_i23_2_lut (.I0(n3163), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33071_3_lut (.I0(n37684), .I1(baudrate[8]), .I2(n1553), .I3(GND_net), 
            .O(n37685));   // verilog/uart_rx.v(119[33:55])
    defparam i33071_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1062_i48_3_lut (.I0(n37685), .I1(baudrate[9]), 
            .I2(n1552), .I3(GND_net), .O(n48_adj_3963));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2141_i13_2_lut (.I0(n3168), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i15_2_lut (.I0(n3167), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1029 (.I0(baudrate[6]), .I1(baudrate[7]), 
            .I2(baudrate[8]), .I3(baudrate[9]), .O(n34033));
    defparam i1_2_lut_4_lut_adj_1029.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1236_3_lut (.I0(n1702), .I1(n5110[14]), .I2(n294[13]), 
            .I3(GND_net), .O(n1840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i22_3_lut (.I0(n14_adj_3947), .I1(baudrate[9]), 
            .I2(n25_adj_4137), .I3(GND_net), .O(n22_adj_4166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1030 (.I0(n37794), .I1(baudrate[18]), .I2(n2713), 
            .I3(n33319), .O(n2845));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1030.LUT_INIT = 16'h7100;
    SB_LUT4 i33431_2_lut_4_lut (.I0(n37794), .I1(baudrate[18]), .I2(n2713), 
            .I3(n11472), .O(n294[5]));   // verilog/uart_rx.v(119[33:55])
    defparam i33431_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i33164_4_lut (.I0(n22_adj_4166), .I1(n12_adj_3946), .I2(n25_adj_4137), 
            .I3(n36635), .O(n37778));   // verilog/uart_rx.v(119[33:55])
    defparam i33164_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33165_3_lut (.I0(n37778), .I1(baudrate[10]), .I2(n27_adj_4138), 
            .I3(GND_net), .O(n37779));   // verilog/uart_rx.v(119[33:55])
    defparam i33165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1319_3_lut (.I0(n1832), .I1(n5136[22]), .I2(n294[12]), 
            .I3(GND_net), .O(n1967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1408_3_lut (.I0(n1967), .I1(n5162[22]), .I2(n294[11]), 
            .I3(GND_net), .O(n2099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1327_3_lut (.I0(n1840), .I1(n5136[14]), .I2(n294[12]), 
            .I3(GND_net), .O(n1975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1327_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_965_i39_2_lut (.I0(n1412), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i17_2_lut (.I0(n3166), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1495_3_lut (.I0(n2099), .I1(n5188[22]), .I2(n294[10]), 
            .I3(GND_net), .O(n2228));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i29_2_lut (.I0(n3160), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33043_3_lut (.I0(n37779), .I1(baudrate[11]), .I2(n29_adj_4134), 
            .I3(GND_net), .O(n37657));   // verilog/uart_rx.v(119[33:55])
    defparam i33043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32978_4_lut (.I0(n39_adj_4131), .I1(n37_adj_4128), .I2(n35_adj_4129), 
            .I3(n36629), .O(n37592));
    defparam i32978_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i33244_4_lut (.I0(n37076), .I1(n37780), .I2(n41_adj_4125), 
            .I3(n36616), .O(n37858));   // verilog/uart_rx.v(119[33:55])
    defparam i33244_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32460_3_lut (.I0(n37657), .I1(baudrate[12]), .I2(n31_adj_4135), 
            .I3(GND_net), .O(n37074));   // verilog/uart_rx.v(119[33:55])
    defparam i32460_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_965_i43_2_lut (.I0(n1410), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i11_2_lut (.I0(n3169), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_4171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i19_2_lut (.I0(n3165), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4172));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1031 (.I0(baudrate[12]), .I1(baudrate[13]), 
            .I2(baudrate[14]), .I3(baudrate[15]), .O(n33969));
    defparam i1_2_lut_4_lut_adj_1031.LUT_INIT = 16'hfffe;
    SB_LUT4 i31904_4_lut (.I0(n29_adj_4169), .I1(n17_adj_4168), .I2(n15_adj_4165), 
            .I3(n13_adj_4164), .O(n36518));
    defparam i31904_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33274_4_lut (.I0(n37074), .I1(n37858), .I2(n41_adj_4125), 
            .I3(n37592), .O(n37888));   // verilog/uart_rx.v(119[33:55])
    defparam i33274_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_965_i45_2_lut (.I0(n1409), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_4173));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_965_i41_2_lut (.I0(n1411), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4174));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33275_3_lut (.I0(n37888), .I1(baudrate[18]), .I2(n2940), 
            .I3(GND_net), .O(n37889));   // verilog/uart_rx.v(119[33:55])
    defparam i33275_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33269_3_lut (.I0(n37889), .I1(baudrate[19]), .I2(n2939), 
            .I3(GND_net), .O(n37883));   // verilog/uart_rx.v(119[33:55])
    defparam i33269_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_4_lut_adj_1032 (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(baudrate[12]), .I3(baudrate[13]), .O(n34031));
    defparam i1_2_lut_4_lut_adj_1032.LUT_INIT = 16'hfffe;
    SB_LUT4 i32395_4_lut (.I0(n11_adj_4171), .I1(n9_adj_4154), .I2(n3171), 
            .I3(baudrate[2]), .O(n37009));
    defparam i32395_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i32737_4_lut (.I0(n17_adj_4168), .I1(n15_adj_4165), .I2(n13_adj_4164), 
            .I3(n37009), .O(n37351));
    defparam i32737_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32735_4_lut (.I0(n23_adj_4163), .I1(n21_adj_4162), .I2(n19_adj_4172), 
            .I3(n37351), .O(n37349));
    defparam i32735_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31908_4_lut (.I0(n29_adj_4169), .I1(n27_adj_4161), .I2(n25_adj_4160), 
            .I3(n37349), .O(n36522));
    defparam i31908_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1974_3_lut (.I0(n2827), .I1(n5344[23]), .I2(n294[4]), 
            .I3(GND_net), .O(n2938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i6_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3172), .I3(GND_net), .O(n6_adj_4175));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i6_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33014_3_lut (.I0(n6_adj_4175), .I1(baudrate[13]), .I2(n29_adj_4169), 
            .I3(GND_net), .O(n37628));   // verilog/uart_rx.v(119[33:55])
    defparam i33014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_1033 (.I0(baudrate[28]), .I1(baudrate[25]), 
            .I2(baudrate[26]), .I3(baudrate[29]), .O(n33285));
    defparam i1_3_lut_4_lut_adj_1033.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2047_3_lut (.I0(n2938), .I1(n5370[23]), .I2(n294[3]), 
            .I3(GND_net), .O(n3046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2153_1_lut (.I0(baudrate[22]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2153_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2118_3_lut (.I0(n3046), .I1(n5396[23]), .I2(n294[2]), 
            .I3(GND_net), .O(n3151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2118_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32909_3_lut (.I0(n34), .I1(baudrate[5]), .I2(n41_adj_4174), 
            .I3(GND_net), .O(n37523));   // verilog/uart_rx.v(119[33:55])
    defparam i32909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32910_3_lut (.I0(n37523), .I1(baudrate[6]), .I2(n43_adj_4170), 
            .I3(GND_net), .O(n37524));   // verilog/uart_rx.v(119[33:55])
    defparam i32910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32653_4_lut (.I0(n43_adj_4170), .I1(n41_adj_4174), .I2(n39_adj_4167), 
            .I3(n36833), .O(n37267));
    defparam i32653_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i33354_2_lut_4_lut (.I0(n37822), .I1(baudrate[13]), .I2(n2098), 
            .I3(n11462), .O(n294[10]));   // verilog/uart_rx.v(119[33:55])
    defparam i33354_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_965_i38_3_lut (.I0(n36_adj_4114), .I1(baudrate[4]), 
            .I2(n39_adj_4167), .I3(GND_net), .O(n38_adj_4176));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32398_3_lut (.I0(n37524), .I1(baudrate[7]), .I2(n45_adj_4173), 
            .I3(GND_net), .O(n37012));   // verilog/uart_rx.v(119[33:55])
    defparam i32398_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1580_3_lut (.I0(n2228), .I1(n5214[22]), .I2(n294[9]), 
            .I3(GND_net), .O(n2354));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i32_3_lut (.I0(n14_adj_3940), .I1(baudrate[17]), 
            .I2(n37_adj_4157), .I3(GND_net), .O(n32_adj_4177));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33015_3_lut (.I0(n37628), .I1(baudrate[14]), .I2(n31_adj_4156), 
            .I3(GND_net), .O(n37629));   // verilog/uart_rx.v(119[33:55])
    defparam i33015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1663_3_lut (.I0(n2354), .I1(n5240[22]), .I2(n294[8]), 
            .I3(GND_net), .O(n2477));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32923_4_lut (.I0(n37012), .I1(n38_adj_4176), .I2(n45_adj_4173), 
            .I3(n37267), .O(n37537));   // verilog/uart_rx.v(119[33:55])
    defparam i32923_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31898_4_lut (.I0(n35_adj_4159), .I1(n33_adj_4153), .I2(n31_adj_4156), 
            .I3(n36518), .O(n36512));
    defparam i31898_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33197_4_lut (.I0(n32_adj_4177), .I1(n12), .I2(n37_adj_4157), 
            .I3(n36508), .O(n37811));   // verilog/uart_rx.v(119[33:55])
    defparam i33197_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i29968_2_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), .I2(baudrate[7]), 
            .I3(baudrate[8]), .O(n34573));
    defparam i29968_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32957_3_lut (.I0(n37629), .I1(baudrate[15]), .I2(n33_adj_4153), 
            .I3(GND_net), .O(n37571));   // verilog/uart_rx.v(119[33:55])
    defparam i32957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1142_3_lut (.I0(n1560), .I1(n5084[15]), .I2(n294[14]), 
            .I3(GND_net), .O(n1701));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1142_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1235_3_lut (.I0(n1701), .I1(n5110[15]), .I2(n294[13]), 
            .I3(GND_net), .O(n1839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1235_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1326_3_lut (.I0(n1839), .I1(n5136[15]), .I2(n294[12]), 
            .I3(GND_net), .O(n1974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1326_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33016_3_lut (.I0(n8), .I1(baudrate[10]), .I2(n23_adj_4163), 
            .I3(GND_net), .O(n37630));   // verilog/uart_rx.v(119[33:55])
    defparam i33016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33017_3_lut (.I0(n37630), .I1(baudrate[11]), .I2(n25_adj_4160), 
            .I3(GND_net), .O(n37631));   // verilog/uart_rx.v(119[33:55])
    defparam i33017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i20_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2489), .I3(GND_net), .O(n20));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32381_4_lut (.I0(n25_adj_4160), .I1(n23_adj_4163), .I2(n21_adj_4162), 
            .I3(n36531), .O(n36995));
    defparam i32381_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32753_3_lut (.I0(n10), .I1(baudrate[9]), .I2(n21_adj_4162), 
            .I3(GND_net), .O(n37367));   // verilog/uart_rx.v(119[33:55])
    defparam i32753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29993_1_lut_2_lut (.I0(baudrate[17]), .I1(n11468), .I2(GND_net), 
            .I3(GND_net), .O(n31695));
    defparam i29993_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_LessThan_1341_i31_2_lut (.I0(n1974), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4178));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32955_3_lut (.I0(n37631), .I1(baudrate[12]), .I2(n27_adj_4161), 
            .I3(GND_net), .O(n37569));   // verilog/uart_rx.v(119[33:55])
    defparam i32955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32913_4_lut (.I0(n35_adj_4159), .I1(n33_adj_4153), .I2(n31_adj_4156), 
            .I3(n36522), .O(n37527));
    defparam i32913_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32251_2_lut_4_lut (.I0(n2484), .I1(baudrate[8]), .I2(n2488), 
            .I3(baudrate[4]), .O(n36865));
    defparam i32251_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1685_i22_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2484), .I3(GND_net), .O(n22));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33260_4_lut (.I0(n37571), .I1(n37811), .I2(n37_adj_4157), 
            .I3(n36512), .O(n37874));   // verilog/uart_rx.v(119[33:55])
    defparam i33260_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33010_4_lut (.I0(n37569), .I1(n37367), .I2(n27_adj_4161), 
            .I3(n36995), .O(n37624));   // verilog/uart_rx.v(119[33:55])
    defparam i33010_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_i1232_3_lut (.I0(n1698), .I1(n5110[18]), .I2(n294[13]), 
            .I3(GND_net), .O(n1836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33270_4_lut (.I0(n37624), .I1(n37874), .I2(n37_adj_4157), 
            .I3(n37527), .O(n37884));   // verilog/uart_rx.v(119[33:55])
    defparam i33270_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33271_3_lut (.I0(n37884), .I1(baudrate[18]), .I2(n3155), 
            .I3(GND_net), .O(n37885));   // verilog/uart_rx.v(119[33:55])
    defparam i33271_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33267_3_lut (.I0(n37885), .I1(baudrate[19]), .I2(n3154), 
            .I3(GND_net), .O(n37881));   // verilog/uart_rx.v(119[33:55])
    defparam i33267_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33170_3_lut (.I0(n37881), .I1(baudrate[20]), .I2(n3153), 
            .I3(GND_net), .O(n37784));   // verilog/uart_rx.v(119[33:55])
    defparam i33170_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33171_3_lut (.I0(n37784), .I1(baudrate[21]), .I2(n3152), 
            .I3(GND_net), .O(n37785));   // verilog/uart_rx.v(119[33:55])
    defparam i33171_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32963_3_lut (.I0(n37785), .I1(baudrate[22]), .I2(n3151), 
            .I3(GND_net), .O(n48_adj_4123));   // verilog/uart_rx.v(119[33:55])
    defparam i32963_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33351_2_lut_4_lut (.I0(n37683), .I1(baudrate[10]), .I2(n1693), 
            .I3(n11455), .O(n294[13]));   // verilog/uart_rx.v(119[33:55])
    defparam i33351_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1323_3_lut (.I0(n1836), .I1(n5136[18]), .I2(n294[12]), 
            .I3(GND_net), .O(n1971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i37_2_lut (.I0(n1971), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4179));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i35_2_lut (.I0(n1972), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4180));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i33_2_lut (.I0(n1973), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4181));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i33425_2_lut_4_lut (.I0(n37559), .I1(baudrate[16]), .I2(n2476), 
            .I3(n34597), .O(n294[7]));   // verilog/uart_rx.v(119[33:55])
    defparam i33425_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_1341_i39_2_lut (.I0(n1970), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4182));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i29_2_lut (.I0(n1840), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4183));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1034 (.I0(baudrate[5]), .I1(baudrate[6]), .I2(GND_net), 
            .I3(GND_net), .O(n33835));
    defparam i1_2_lut_adj_1034.LUT_INIT = 16'heeee;
    SB_LUT4 i32083_4_lut (.I0(n35_adj_4005), .I1(n33_adj_4003), .I2(n31_adj_4004), 
            .I3(n29_adj_4183), .O(n36697));
    defparam i32083_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_557_i42_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n805), .I3(GND_net), .O(n42_adj_4184));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_557_i42_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33032_3_lut (.I0(n42_adj_4184), .I1(baudrate[2]), .I2(n804), 
            .I3(GND_net), .O(n37646));   // verilog/uart_rx.v(119[33:55])
    defparam i33032_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1250_i40_3_lut (.I0(n32), .I1(baudrate[9]), 
            .I2(n43_adj_4009), .I3(GND_net), .O(n40_adj_4185));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i28_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1841), .I3(GND_net), .O(n28_adj_4186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i28_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32899_3_lut (.I0(n28_adj_4186), .I1(baudrate[5]), .I2(n35_adj_4005), 
            .I3(GND_net), .O(n37513));   // verilog/uart_rx.v(119[33:55])
    defparam i32899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32900_3_lut (.I0(n37513), .I1(baudrate[6]), .I2(n37_adj_4006), 
            .I3(GND_net), .O(n37514));   // verilog/uart_rx.v(119[33:55])
    defparam i32900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33033_3_lut (.I0(n37646), .I1(baudrate[3]), .I2(n803), .I3(GND_net), 
            .O(n37647));   // verilog/uart_rx.v(119[33:55])
    defparam i33033_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32070_4_lut (.I0(n41_adj_4007), .I1(n39_adj_4008), .I2(n37_adj_4006), 
            .I3(n36697), .O(n36684));
    defparam i32070_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33144_4_lut (.I0(n40_adj_4185), .I1(n30_adj_3938), .I2(n43_adj_4009), 
            .I3(n36682), .O(n37758));   // verilog/uart_rx.v(119[33:55])
    defparam i33144_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32408_3_lut (.I0(n37514), .I1(baudrate[7]), .I2(n39_adj_4008), 
            .I3(GND_net), .O(n37022));   // verilog/uart_rx.v(119[33:55])
    defparam i32408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33238_4_lut (.I0(n37022), .I1(n37758), .I2(n43_adj_4009), 
            .I3(n36684), .O(n37852));   // verilog/uart_rx.v(119[33:55])
    defparam i33238_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32918_3_lut (.I0(n37647), .I1(baudrate[4]), .I2(n31501), 
            .I3(GND_net), .O(n48_adj_3983));   // verilog/uart_rx.v(119[33:55])
    defparam i32918_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 i33239_3_lut (.I0(n37852), .I1(baudrate[10]), .I2(n1832), 
            .I3(GND_net), .O(n37853));   // verilog/uart_rx.v(119[33:55])
    defparam i33239_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i945_3_lut (.I0(n1264), .I1(n5032[20]), .I2(n294[16]), 
            .I3(GND_net), .O(n1411));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i24_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2486), .I3(GND_net), .O(n24));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1042_3_lut (.I0(n1411), .I1(n5058[20]), .I2(n294[15]), 
            .I3(GND_net), .O(n1555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1137_3_lut (.I0(n1555), .I1(n5084[20]), .I2(n294[14]), 
            .I3(GND_net), .O(n1696));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32177_3_lut (.I0(n962), .I1(baudrate[1]), .I2(n294[18]), 
            .I3(GND_net), .O(n1115));
    defparam i32177_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 div_37_i1230_3_lut (.I0(n1696), .I1(n5110[20]), .I2(n294[13]), 
            .I3(GND_net), .O(n1834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i847_3_lut (.I0(n1115), .I1(n5006[19]), .I2(n294[17]), 
            .I3(GND_net), .O(n1265));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1321_3_lut (.I0(n1834), .I1(n5136[20]), .I2(n294[12]), 
            .I3(GND_net), .O(n1969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1321_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i41_2_lut (.I0(n1969), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4187));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i29_2_lut (.I0(n1975), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i27_2_lut (.I0(n1976), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4189));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32039_4_lut (.I0(n33_adj_4181), .I1(n31_adj_4178), .I2(n29_adj_4188), 
            .I3(n27_adj_4189), .O(n36653));
    defparam i32039_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i946_3_lut (.I0(n1265), .I1(n5032[19]), .I2(n294[16]), 
            .I3(GND_net), .O(n1412));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1035 (.I0(n37559), .I1(baudrate[16]), .I2(n2476), 
            .I3(n33315), .O(n2612));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1035.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i1043_3_lut (.I0(n1412), .I1(n5058[19]), .I2(n294[15]), 
            .I3(GND_net), .O(n1556));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i38_3_lut (.I0(n30_adj_3937), .I1(baudrate[9]), 
            .I2(n41_adj_4187), .I3(GND_net), .O(n38_adj_4190));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i26_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1977), .I3(GND_net), .O(n26_adj_4191));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i26_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32893_3_lut (.I0(n26_adj_4191), .I1(baudrate[5]), .I2(n33_adj_4181), 
            .I3(GND_net), .O(n37507));   // verilog/uart_rx.v(119[33:55])
    defparam i32893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1138_3_lut (.I0(n1556), .I1(n5084[19]), .I2(n294[14]), 
            .I3(GND_net), .O(n1697));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1231_3_lut (.I0(n1697), .I1(n5110[19]), .I2(n294[13]), 
            .I3(GND_net), .O(n1835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32894_3_lut (.I0(n37507), .I1(baudrate[6]), .I2(n35_adj_4180), 
            .I3(GND_net), .O(n37508));   // verilog/uart_rx.v(119[33:55])
    defparam i32894_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32033_4_lut (.I0(n39_adj_4182), .I1(n37_adj_4179), .I2(n35_adj_4180), 
            .I3(n36653), .O(n36647));
    defparam i32033_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i33152_4_lut (.I0(n38_adj_4190), .I1(n28), .I2(n41_adj_4187), 
            .I3(n36643), .O(n37766));   // verilog/uart_rx.v(119[33:55])
    defparam i33152_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32410_3_lut (.I0(n37508), .I1(baudrate[7]), .I2(n37_adj_4179), 
            .I3(GND_net), .O(n37024));   // verilog/uart_rx.v(119[33:55])
    defparam i32410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1322_3_lut (.I0(n1835), .I1(n5136[19]), .I2(n294[12]), 
            .I3(GND_net), .O(n1970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1322_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33240_4_lut (.I0(n37024), .I1(n37766), .I2(n41_adj_4187), 
            .I3(n36647), .O(n37854));   // verilog/uart_rx.v(119[33:55])
    defparam i33240_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33241_3_lut (.I0(n37854), .I1(baudrate[10]), .I2(n1968), 
            .I3(GND_net), .O(n37855));   // verilog/uart_rx.v(119[33:55])
    defparam i33241_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i33210_3_lut (.I0(n37855), .I1(baudrate[11]), .I2(n1967), 
            .I3(GND_net), .O(n37824));   // verilog/uart_rx.v(119[33:55])
    defparam i33210_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32416_3_lut (.I0(n37824), .I1(baudrate[12]), .I2(n1966), 
            .I3(GND_net), .O(n48_adj_3950));   // verilog/uart_rx.v(119[33:55])
    defparam i32416_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1506_3_lut (.I0(n2110), .I1(n5188[11]), .I2(n294[10]), 
            .I3(GND_net), .O(n2239));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i18_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n33313), .I3(n48_adj_3942), .O(n18));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i18_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 div_37_i1591_3_lut (.I0(n2239), .I1(n5214[11]), .I2(n294[9]), 
            .I3(GND_net), .O(n2365));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1674_3_lut (.I0(n2365), .I1(n5240[11]), .I2(n294[8]), 
            .I3(GND_net), .O(n2488));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1674_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1755_3_lut (.I0(n2488), .I1(n5266[11]), .I2(n294[7]), 
            .I3(GND_net), .O(n2608));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i23_2_lut (.I0(n2608), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4192));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i25_2_lut (.I0(n2607), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4193));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1411_3_lut (.I0(n1970), .I1(n5162[19]), .I2(n294[11]), 
            .I3(GND_net), .O(n2102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1498_3_lut (.I0(n2102), .I1(n5188[19]), .I2(n294[10]), 
            .I3(GND_net), .O(n2231));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i17_2_lut (.I0(n2611), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4194));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32205_4_lut (.I0(n23_adj_4192), .I1(n21_adj_4143), .I2(n19_adj_4142), 
            .I3(n17_adj_4194), .O(n36819));
    defparam i32205_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32194_4_lut (.I0(n29_adj_4046), .I1(n27_adj_4045), .I2(n25_adj_4193), 
            .I3(n36819), .O(n36808));
    defparam i32194_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32998_4_lut (.I0(n35_adj_4044), .I1(n33_adj_4043), .I2(n31_adj_4042), 
            .I3(n36808), .O(n37612));
    defparam i32998_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1766_i16_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2612), .I3(GND_net), .O(n16_adj_4195));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i16_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32875_3_lut (.I0(n16_adj_4195), .I1(baudrate[13]), .I2(n39_adj_4041), 
            .I3(GND_net), .O(n37489));   // verilog/uart_rx.v(119[33:55])
    defparam i32875_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32876_3_lut (.I0(n37489), .I1(baudrate[14]), .I2(n41_adj_4040), 
            .I3(GND_net), .O(n37490));   // verilog/uart_rx.v(119[33:55])
    defparam i32876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1583_3_lut (.I0(n2231), .I1(n5214[19]), .I2(n294[9]), 
            .I3(GND_net), .O(n2357));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32635_4_lut (.I0(n41_adj_4040), .I1(n39_adj_4041), .I2(n27_adj_4045), 
            .I3(n36815), .O(n37249));
    defparam i32635_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32946_3_lut (.I0(n22_adj_3936), .I1(baudrate[7]), .I2(n27_adj_4045), 
            .I3(GND_net), .O(n37560));   // verilog/uart_rx.v(119[33:55])
    defparam i32946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32440_3_lut (.I0(n37490), .I1(baudrate[15]), .I2(n43_adj_4039), 
            .I3(GND_net), .O(n37054));   // verilog/uart_rx.v(119[33:55])
    defparam i32440_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31687_2_lut_4_lut (.I0(n2486), .I1(baudrate[6]), .I2(n2487), 
            .I3(baudrate[5]), .O(n36301));
    defparam i31687_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1666_3_lut (.I0(n2357), .I1(n5240[19]), .I2(n294[8]), 
            .I3(GND_net), .O(n2480));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1666_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i28_3_lut (.I0(n20_adj_3935), .I1(baudrate[9]), 
            .I2(n31_adj_4042), .I3(GND_net), .O(n28_adj_4196));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33158_4_lut (.I0(n28_adj_4196), .I1(n18_adj_3934), .I2(n31_adj_4042), 
            .I3(n36804), .O(n37772));   // verilog/uart_rx.v(119[33:55])
    defparam i33158_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i33159_3_lut (.I0(n37772), .I1(baudrate[10]), .I2(n33_adj_4043), 
            .I3(GND_net), .O(n37773));   // verilog/uart_rx.v(119[33:55])
    defparam i33159_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33053_3_lut (.I0(n37773), .I1(baudrate[11]), .I2(n35_adj_4044), 
            .I3(GND_net), .O(n37667));   // verilog/uart_rx.v(119[33:55])
    defparam i33053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32637_4_lut (.I0(n41_adj_4040), .I1(n39_adj_4041), .I2(n37_adj_4038), 
            .I3(n37612), .O(n37251));
    defparam i32637_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i33050_4_lut (.I0(n37054), .I1(n37560), .I2(n43_adj_4039), 
            .I3(n37249), .O(n37664));   // verilog/uart_rx.v(119[33:55])
    defparam i33050_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32438_3_lut (.I0(n37667), .I1(baudrate[12]), .I2(n37_adj_4038), 
            .I3(GND_net), .O(n37052));   // verilog/uart_rx.v(119[33:55])
    defparam i32438_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33203_4_lut (.I0(n37052), .I1(n37664), .I2(n43_adj_4039), 
            .I3(n37251), .O(n37817));   // verilog/uart_rx.v(119[33:55])
    defparam i33203_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i33204_3_lut (.I0(n37817), .I1(baudrate[16]), .I2(n2597), 
            .I3(GND_net), .O(n37818));   // verilog/uart_rx.v(119[33:55])
    defparam i33204_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i30081_1_lut (.I0(n34685), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31712));
    defparam i30081_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1916_3_lut (.I0(n2730), .I1(n5318[6]), .I2(n294[5]), 
            .I3(GND_net), .O(n2844));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1916_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1991_3_lut (.I0(n2844), .I1(n5344[6]), .I2(n294[4]), 
            .I3(GND_net), .O(n2955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1991_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i39_2_lut (.I0(n2480), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n39));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i45_2_lut (.I0(n2477), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n45));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2172_1_lut (.I0(baudrate[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n856));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2172_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3032_2_lut_4_lut (.I0(n960), .I1(n6905), .I2(n7817), .I3(baudrate[3]), 
            .O(n44_adj_4084));   // verilog/uart_rx.v(119[33:55])
    defparam i3032_2_lut_4_lut.LUT_INIT = 16'ha8fe;
    
endmodule
