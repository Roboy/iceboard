// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Mar  9 10:14:58 2020
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
    
    wire tx_o, tx_enable;
    wire [31:0]baudrate;   // verilog/TinyFPGA_B.v(88[15:23])
    
    wire data_ready, sda_out, sda_enable, scl, scl_enable;
    wire [31:0]delay_counter;   // verilog/TinyFPGA_B.v(143[11:24])
    
    wire read;
    wire [2:0]\ID_READOUT_FSM.state ;   // verilog/TinyFPGA_B.v(151[15:20])
    
    wire RX_N_2, n229, n230, n231, n232, n233, n234, n235, n236, 
        n237, n238, n239, n240, n241, n242, n243, n244, n245, 
        n246, n247, n248, n249, n250, n251, n252, n253, n254, 
        n255, n256, n257, n258, n259, n260, read_N_122, n340;
    wire [31:0]timer;   // verilog/neopixel.v(9[12:17])
    wire [3:0]state;   // verilog/neopixel.v(16[11:16])
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire start, \neo_pixel_transmitter.done ;
    wire [31:0]\neo_pixel_transmitter.t0 ;   // verilog/neopixel.v(28[14:16])
    
    wire n30204;
    wire [31:0]color_bit_N_423;
    wire [3:0]state_3__N_229;
    wire [31:0]one_wire_N_380;
    
    wire n22069, n11337, n11230, n31807, n6, n36975, n2859, n2856, 
        n2773, n11225, rx_data_ready;
    wire [7:0]rx_data;   // verilog/coms.v(94[13:20])
    wire [7:0]\data_in_frame[23] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[22] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[21] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[20] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[18] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[17] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[15] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[6] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[5] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[4] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[3] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[1] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[0] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_out_frame[27] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[26] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[25] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[24] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[23] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[14] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[13] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[12] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[5] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[4] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[3] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[1] ;   // verilog/coms.v(100[12:26])
    wire [7:0]\data_out_frame[0] ;   // verilog/coms.v(100[12:26])
    wire [7:0]byte_transmit_counter;   // verilog/coms.v(105[12:33])
    
    wire tx_active;
    wire [31:0]\FRAME_MATCHER.state ;   // verilog/coms.v(115[11:16])
    
    wire \FRAME_MATCHER.rx_data_ready_prev , n36855, n32650, n27802, 
        n26044, n26043, n30383, n32618, n30226, n30210, n30211, 
        n30212, n30213, n30208, n30250, n30217, n30205, n30252, 
        n30219, n30247, n30220, n30221, n30222, n30223, n30224, 
        n14709, n30203, n30225, n14706, n30207, n14704, n30215, 
        n30227, n30228, n30229, n30230, n30231, n30232, n30233, 
        n30234, n30235, n14693, n14692, n30236, n30237, n14689, 
        n14688, n30238, n30239, n30240, n14684, n30216, n30214, 
        n30241, n30242, n30243, n30244, n14676, n30245, n30246, 
        n31801, n30248, n30249, n14670, n30206, n30251, n30253, 
        n30254, n30255, n30256, n30257, n30209, n30258, n30259, 
        n30260, n30261, n30262, n30263, n14654, n14653, n30264, 
        n30265, n30266, n30267, n30285, n30286, n14646, n30287, 
        n30288, n30289, n30290, n30291, n30292, n14638, n30293, 
        n30294, n30295, n30283, n30284, n16107, n16106, n26042, 
        n26041, n26040, n26039, n26038, n26037, n26036, n26035, 
        n20810, n31667, n26034, n1, n22038, n25464, n30202, n25503, 
        n26033, n26032, n26031, n2520, n1397, n37368, n37365, 
        n16090, n15, n14, n26030, n26029, n26028, n26055, n4, 
        n26054, n26053, n24581, n12, n26052, n26051, n36535, n26050, 
        n26049, n26048, n26027, n26047, n26026, n6_adj_4548, \FRAME_MATCHER.i_31__N_2378 , 
        \FRAME_MATCHER.i_31__N_2379 , \FRAME_MATCHER.i_31__N_2383 , n4_adj_4549, 
        n30308, n31817, n26025, n15403, n22418, n15400, n15396, 
        n15393, n15390, n30218, n15387, n15384, n15379, n29737, 
        n15374, n15372, n15371, n15370, n15369, n15367, n15366, 
        n15362, n15361, n15360, n15359, n15358, n15357, n15356, 
        n15318, n15316, n15309, n26046, n15281, n17410, n17417, 
        n15236, n15232, n15229, n15226, n15222, n15218, n15217, 
        n15216, n15215, n15214, n15211, n15208, n15207, n15206, 
        n62, n11874, n16056, n16054, n16051, n15912, n15910, n15905, 
        n15900, n15899, n15898, n15897, n15891, n15890, n15886, 
        n15878, n15877, n15875, n15872, n15869, n15866, n35520, 
        n15860, n15857, n15854, n15851, n15848, n15845, n15842, 
        n15839, n15832, n29905, n15825, n15822, n15819, n15816, 
        n27889, n15804, n15795, n15205, n15204, n15203, n15202, 
        n15201, n15200, n15199;
    wire [7:0]data_adj_4613;   // verilog/eeprom.v(23[12:16])
    
    wire rw;
    wire [7:0]state_adj_4614;   // verilog/eeprom.v(27[11:16])
    
    wire n35517, n35515, n15792, n15789, n21998, n35512, n15198, 
        n3201, n15197, n15194, n15786, n35510, n15191, n15188, 
        n15187, n15184, n15183, n15182, n15181, n15180, n15178, 
        n32020, n4_adj_4552, n15783, n15781, n15780, n24, n15777, 
        n15774, n4_adj_4553, n15771, n15768, n15765, n15762, n15759, 
        n15756, r_Rx_Data;
    wire [7:0]r_Clock_Count;   // verilog/uart_rx.v(33[17:30])
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]r_SM_Main;   // verilog/uart_rx.v(37[17:26])
    
    wire n15729, n15726;
    wire [24:0]o_Rx_DV_N_3358;
    
    wire n37344, n37341;
    wire [2:0]r_SM_Main_2__N_3316;
    
    wire n15717, n15175, n15711, n15705, n15704, n15703, n15702, 
        n15701, n15700;
    wire [2:0]r_SM_Main_adj_4619;   // verilog/uart_tx.v(32[16:25])
    wire [8:0]r_Clock_Count_adj_4620;   // verilog/uart_tx.v(33[16:29])
    
    wire n15699, n15698, n15697, n4253, n15696;
    wire [2:0]r_SM_Main_2__N_3406;
    
    wire n15695, n15694, n15693, n15692, n15691, n15690, n15689, 
        n15688, n15687, n15686, n15685, n15684, n15683, n15682, 
        n15681, n15680, n15679, n15678, n15677, n15676, n15675, 
        n15673;
    wire [7:0]state_adj_4627;   // verilog/i2c_controller.v(33[12:17])
    wire [7:0]saved_addr;   // verilog/i2c_controller.v(34[12:22])
    
    wire n15672, enable_slow_N_3927;
    wire [7:0]state_7__N_3824;
    
    wire n32620, n15174, n4091, n15663, n15173;
    wire [7:0]state_7__N_3840;
    
    wire n29767, n15659, n15656, n15651, n15167, n15166, n15165, 
        n15645, n32412, n26045, n33334, n33328, n33322, n33316, 
        n7, n7_adj_4566, n29853, n33310, n33304, n15161, n33302, 
        n33298, n24_adj_4567, n25, n33292, n17, n13594, n33286, 
        n6_adj_4568, n15637, n15_adj_4569, n14_adj_4570, n33280, n33274, 
        n33268, n30724, n15631, n8, n7_adj_4571, n33262, n33256, 
        n12181, n33250, n33248, n31932, n33244, n32114, n33238, 
        n33232, n33226, n11864, n33220, n11389, n33214, n11236, 
        n32102, n30620, n4_adj_4572, n33208, n31955, n14_adj_4573, 
        n4_adj_4574, n6_adj_4575, n8_adj_4576, n9, n11, n13, n14_adj_4577, 
        n15_adj_4578, n4_adj_4579, n6_adj_4580, n8_adj_4581, n9_adj_4582, 
        n33202, n6_adj_4583, n28009, n33196, n15628, n13450, n13431, 
        n15618, n13383, n14209, n14203, n30344, n14179, n14177, 
        n14172, n14170, n14623, n14615, n30576, n29597, n4_adj_4584, 
        n15158, n15152, n15151, n15150, n15148, n15145, n15142, 
        n15141, n15138, n15137, n15134, n15131, n15614, n15610, 
        n15607, n15604, n15598, n30812, n37284, n37281, n8647, 
        n15128, n15127, n15126, n15118, n15115, n15112, n15109, 
        n15106, n15103, n15100, n15097, n15571, n15568, n15565, 
        n15562, n15559, n15556, n15553, n15094, n15091, n15088, 
        n15550, n11342, n15085, n15084, n15083, n15081, n31899, 
        n31136, n31122, n32365, n31081, n37010, n31935, n31781, 
        n35554, n22110, n33941, n10, n37009, n27167, n36108, n30386, 
        n32960, n30737, n32954, n30922, n35372, n29, n27, n23, 
        n30827, n6_adj_4585, n32896, n14_adj_4586, n13_adj_4587, n31830, 
        n30715, n32860, n9490, n26954, n9456, n30357, n30282, 
        n8_adj_4588, n29903, n32816, n30356, n30334, n36854, n35569;
    
    VCC i2 (.Y(VCC_net));
    SB_IO sda_output (.PACKAGE_PIN(SDA), .LATCH_INPUT_VALUE(GND_net), .INPUT_CLK(GND_net), 
          .OUTPUT_CLK(GND_net), .OUTPUT_ENABLE(sda_enable), .D_OUT_1(GND_net), 
          .D_OUT_0(sda_out), .D_IN_0(state_7__N_3840[3])) /* synthesis syn_instantiated=1 */ ;   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
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
    SB_LUT4 i1_2_lut (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[4] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30724));
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11853_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [1]), 
            .O(n16056));   // verilog/coms.v(130[12] 305[6])
    defparam i11853_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_4_11_lut (.I0(GND_net), .I1(delay_counter[9]), .I2(GND_net), 
            .I3(n26033), .O(n251)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_4_27_lut (.I0(GND_net), .I1(delay_counter[25]), .I2(GND_net), 
            .I3(n26049), .O(n235)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_27 (.CI(n26049), .I0(delay_counter[25]), .I1(GND_net), 
            .CO(n26050));
    SB_LUT4 add_4_26_lut (.I0(GND_net), .I1(delay_counter[24]), .I2(GND_net), 
            .I3(n26048), .O(n236)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_26 (.CI(n26048), .I0(delay_counter[24]), .I1(GND_net), 
            .CO(n26049));
    SB_LUT4 add_4_25_lut (.I0(GND_net), .I1(delay_counter[23]), .I2(GND_net), 
            .I3(n26047), .O(n237)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_25 (.CI(n26047), .I0(delay_counter[23]), .I1(GND_net), 
            .CO(n26048));
    SB_LUT4 i10935_3_lut (.I0(\data_in_frame[4] [4]), .I1(rx_data[4]), .I2(n32020), 
            .I3(GND_net), .O(n15138));   // verilog/coms.v(130[12] 305[6])
    defparam i10935_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_24_lut (.I0(GND_net), .I1(delay_counter[22]), .I2(GND_net), 
            .I3(n26046), .O(n238)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_11 (.CI(n26033), .I0(delay_counter[9]), .I1(GND_net), 
            .CO(n26034));
    SB_LUT4 i10915_3_lut (.I0(neopxl_color[0]), .I1(\data_in_frame[6] [0]), 
            .I2(n8647), .I3(GND_net), .O(n15118));   // verilog/coms.v(130[12] 305[6])
    defparam i10915_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_4_24 (.CI(n26046), .I0(delay_counter[22]), .I1(GND_net), 
            .CO(n26047));
    SB_LUT4 add_4_10_lut (.I0(GND_net), .I1(delay_counter[8]), .I2(GND_net), 
            .I3(n26032), .O(n252)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(n24581), .I1(data_ready), .I2(n4_adj_4572), 
            .I3(n7_adj_4566), .O(n29853));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_4_lut.LUT_INIT = 16'hdc50;
    SB_CARRY add_4_10 (.CI(n26032), .I0(delay_counter[8]), .I1(GND_net), 
            .CO(n26033));
    SB_LUT4 add_4_9_lut (.I0(GND_net), .I1(delay_counter[7]), .I2(GND_net), 
            .I3(n26031), .O(n253)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_9 (.CI(n26031), .I0(delay_counter[7]), .I1(GND_net), 
            .CO(n26032));
    SB_LUT4 add_4_23_lut (.I0(GND_net), .I1(delay_counter[21]), .I2(GND_net), 
            .I3(n26045), .O(n239)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10923_4_lut (.I0(rw), .I1(state_adj_4614[1]), .I2(state_adj_4614[2]), 
            .I3(n3201), .O(n15126));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10923_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 add_4_8_lut (.I0(GND_net), .I1(delay_counter[6]), .I2(GND_net), 
            .I3(n26030), .O(n254)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10924_3_lut (.I0(neopxl_color[19]), .I1(\data_in_frame[4] [3]), 
            .I2(n8647), .I3(GND_net), .O(n15127));   // verilog/coms.v(130[12] 305[6])
    defparam i10924_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_4_23 (.CI(n26045), .I0(delay_counter[21]), .I1(GND_net), 
            .CO(n26046));
    SB_LUT4 add_4_22_lut (.I0(GND_net), .I1(delay_counter[20]), .I2(GND_net), 
            .I3(n26044), .O(n240)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_22 (.CI(n26044), .I0(delay_counter[20]), .I1(GND_net), 
            .CO(n26045));
    SB_LUT4 add_4_21_lut (.I0(GND_net), .I1(delay_counter[19]), .I2(GND_net), 
            .I3(n26043), .O(n241)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_21 (.CI(n26043), .I0(delay_counter[19]), .I1(GND_net), 
            .CO(n26044));
    SB_LUT4 add_4_20_lut (.I0(GND_net), .I1(delay_counter[18]), .I2(GND_net), 
            .I3(n26042), .O(n242)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_8 (.CI(n26030), .I0(delay_counter[6]), .I1(GND_net), 
            .CO(n26031));
    SB_CARRY add_4_20 (.CI(n26042), .I0(delay_counter[18]), .I1(GND_net), 
            .CO(n26043));
    SB_LUT4 i1830921_i1_3_lut (.I0(n37368), .I1(n37284), .I2(color_bit_N_423[1]), 
            .I3(GND_net), .O(n14_adj_4573));
    defparam i1830921_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10931_3_lut (.I0(\data_in_frame[4] [3]), .I1(rx_data[3]), .I2(n32020), 
            .I3(GND_net), .O(n15134));   // verilog/coms.v(130[12] 305[6])
    defparam i10931_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1563 (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2859), 
            .I3(r_SM_Main_adj_4619[0]), .O(n32896));
    defparam i1_4_lut_adj_1563.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_1564 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32896), .O(n31667));
    defparam i1_4_lut_adj_1564.LUT_INIT = 16'hfffe;
    SB_LUT4 add_4_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(GND_net), 
            .I3(n26029), .O(n255)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_7 (.CI(n26029), .I0(delay_counter[5]), .I1(GND_net), 
            .CO(n26030));
    SB_LUT4 i10938_3_lut (.I0(neopxl_color[18]), .I1(\data_in_frame[4] [2]), 
            .I2(n8647), .I3(GND_net), .O(n15141));   // verilog/coms.v(130[12] 305[6])
    defparam i10938_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10945_3_lut (.I0(neopxl_color[17]), .I1(\data_in_frame[4] [1]), 
            .I2(n8647), .I3(GND_net), .O(n15148));   // verilog/coms.v(130[12] 305[6])
    defparam i10945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15268_3_lut (.I0(neopxl_color[15]), .I1(\data_in_frame[5] [7]), 
            .I2(n8647), .I3(GND_net), .O(n15150));
    defparam i15268_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15269_3_lut (.I0(neopxl_color[14]), .I1(\data_in_frame[5] [6]), 
            .I2(n8647), .I3(GND_net), .O(n15151));
    defparam i15269_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10963_3_lut (.I0(neopxl_color[13]), .I1(\data_in_frame[5] [5]), 
            .I2(n8647), .I3(GND_net), .O(n15166));   // verilog/coms.v(130[12] 305[6])
    defparam i10963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10964_3_lut (.I0(neopxl_color[12]), .I1(\data_in_frame[5] [4]), 
            .I2(n8647), .I3(GND_net), .O(n15167));   // verilog/coms.v(130[12] 305[6])
    defparam i10964_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n62), .I2(delay_counter[31]), 
            .I3(\ID_READOUT_FSM.state [0]), .O(n32650));
    defparam i3_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i15309_3_lut (.I0(neopxl_color[11]), .I1(\data_in_frame[5] [3]), 
            .I2(n8647), .I3(GND_net), .O(n15173));
    defparam i15309_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10971_3_lut (.I0(neopxl_color[10]), .I1(\data_in_frame[5] [2]), 
            .I2(n8647), .I3(GND_net), .O(n15174));   // verilog/coms.v(130[12] 305[6])
    defparam i10971_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10975_3_lut (.I0(neopxl_color[9]), .I1(\data_in_frame[5] [1]), 
            .I2(n8647), .I3(GND_net), .O(n15178));   // verilog/coms.v(130[12] 305[6])
    defparam i10975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10977_3_lut (.I0(neopxl_color[7]), .I1(\data_in_frame[6] [7]), 
            .I2(n8647), .I3(GND_net), .O(n15180));   // verilog/coms.v(130[12] 305[6])
    defparam i10977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10978_3_lut (.I0(neopxl_color[6]), .I1(\data_in_frame[6] [6]), 
            .I2(n8647), .I3(GND_net), .O(n15181));   // verilog/coms.v(130[12] 305[6])
    defparam i10978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10979_3_lut (.I0(neopxl_color[5]), .I1(\data_in_frame[6] [5]), 
            .I2(n8647), .I3(GND_net), .O(n15182));   // verilog/coms.v(130[12] 305[6])
    defparam i10979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10412_4_lut (.I0(n13450), .I1(n340), .I2(n35372), .I3(n22069), 
            .O(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i10412_4_lut.LUT_INIT = 16'ha088;
    SB_IO LED_pad (.PACKAGE_PIN(LED), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LED_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LED_pad.PIN_TYPE = 6'b011001;
    defparam LED_pad.PULLUP = 1'b0;
    defparam LED_pad.NEG_TRIGGER = 1'b0;
    defparam LED_pad.IO_STANDARD = "SB_LVCMOS";
    SB_CARRY add_4_2 (.CI(VCC_net), .I0(delay_counter[0]), .I1(GND_net), 
            .CO(n26025));
    SB_LUT4 add_4_6_lut (.I0(GND_net), .I1(delay_counter[4]), .I2(GND_net), 
            .I3(n26028), .O(n256)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10878_4_lut (.I0(saved_addr[0]), .I1(rw), .I2(n32620), .I3(state_7__N_3824[0]), 
            .O(n15081));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10878_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i30930_2_lut (.I0(start), .I1(n31081), .I2(GND_net), .I3(GND_net), 
            .O(n35512));   // verilog/neopixel.v(35[12] 117[6])
    defparam i30930_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i10980_3_lut (.I0(neopxl_color[4]), .I1(\data_in_frame[6] [4]), 
            .I2(n8647), .I3(GND_net), .O(n15183));   // verilog/coms.v(130[12] 305[6])
    defparam i10980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31_4_lut (.I0(n35512), .I1(n35510), .I2(state[1]), .I3(\neo_pixel_transmitter.done ), 
            .O(n29597));   // verilog/neopixel.v(35[12] 117[6])
    defparam i31_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i10880_3_lut (.I0(neopxl_color[21]), .I1(\data_in_frame[4] [5]), 
            .I2(n8647), .I3(GND_net), .O(n15083));   // verilog/coms.v(130[12] 305[6])
    defparam i10880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10881_3_lut (.I0(neopxl_color[20]), .I1(\data_in_frame[4] [4]), 
            .I2(n8647), .I3(GND_net), .O(n15084));   // verilog/coms.v(130[12] 305[6])
    defparam i10881_3_lut.LUT_INIT = 16'hcaca;
    SB_GB_IO CLK_pad (.PACKAGE_PIN(CLK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(clk16MHz));   // verilog/TinyFPGA_B.v(3[9:12])
    defparam CLK_pad.PIN_TYPE = 6'b000001;
    defparam CLK_pad.PULLUP = 1'b0;
    defparam CLK_pad.NEG_TRIGGER = 1'b0;
    defparam CLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i10984_3_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(timer[0]), 
            .I2(n31830), .I3(GND_net), .O(n15187));   // verilog/neopixel.v(35[12] 117[6])
    defparam i10984_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15969_3_lut (.I0(\data_in_frame[17] [1]), .I1(\data_in_frame[1] [1]), 
            .I2(n17410), .I3(GND_net), .O(n2773));
    defparam i15969_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(\FRAME_MATCHER.state [3]), .I1(reset), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [1]), 
            .O(n30262));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'h2300;
    SB_LUT4 i10994_3_lut (.I0(neopxl_color[3]), .I1(\data_in_frame[6] [3]), 
            .I2(n8647), .I3(GND_net), .O(n15197));   // verilog/coms.v(130[12] 305[6])
    defparam i10994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10995_3_lut (.I0(baudrate[11]), .I1(data_adj_4613[3]), .I2(n30356), 
            .I3(GND_net), .O(n15198));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10995_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10996_3_lut (.I0(baudrate[10]), .I1(data_adj_4613[2]), .I2(n30356), 
            .I3(GND_net), .O(n15199));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10996_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1565 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [2]), 
            .O(n30263));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1565.LUT_INIT = 16'h2300;
    SB_LUT4 i10997_3_lut (.I0(neopxl_color[2]), .I1(\data_in_frame[6] [2]), 
            .I2(n8647), .I3(GND_net), .O(n15200));   // verilog/coms.v(130[12] 305[6])
    defparam i10997_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10998_3_lut (.I0(neopxl_color[1]), .I1(\data_in_frame[6] [1]), 
            .I2(n8647), .I3(GND_net), .O(n15201));   // verilog/coms.v(130[12] 305[6])
    defparam i10998_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11000_3_lut (.I0(baudrate[9]), .I1(data_adj_4613[1]), .I2(n30356), 
            .I3(GND_net), .O(n15203));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11000_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1566 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [3]), 
            .O(n14654));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1566.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1567 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [4]), 
            .O(n14653));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1567.LUT_INIT = 16'h2300;
    SB_LUT4 i11001_3_lut (.I0(baudrate[8]), .I1(data_adj_4613[0]), .I2(n30356), 
            .I3(GND_net), .O(n15204));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11001_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11002_3_lut (.I0(baudrate[7]), .I1(data_adj_4613[7]), .I2(n31899), 
            .I3(GND_net), .O(n15205));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11002_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11003_3_lut (.I0(baudrate[6]), .I1(data_adj_4613[6]), .I2(n31899), 
            .I3(GND_net), .O(n15206));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11003_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11004_3_lut (.I0(baudrate[5]), .I1(data_adj_4613[5]), .I2(n31899), 
            .I3(GND_net), .O(n15207));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11004_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11011_3_lut (.I0(baudrate[4]), .I1(data_adj_4613[4]), .I2(n31899), 
            .I3(GND_net), .O(n15214));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11011_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11012_3_lut (.I0(baudrate[3]), .I1(data_adj_4613[3]), .I2(n31899), 
            .I3(GND_net), .O(n15215));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11012_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11013_3_lut (.I0(baudrate[2]), .I1(data_adj_4613[2]), .I2(n31899), 
            .I3(GND_net), .O(n15216));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11013_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11014_3_lut (.I0(baudrate[1]), .I1(data_adj_4613[1]), .I2(n31899), 
            .I3(GND_net), .O(n15217));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11014_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1568 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [5]), 
            .O(n30264));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1568.LUT_INIT = 16'h2300;
    SB_LUT4 i11_2_lut_3_lut (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[5] [1]), .I3(GND_net), .O(n11864));   // verilog/coms.v(100[12:26])
    defparam i11_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i11015_3_lut (.I0(baudrate[0]), .I1(data_adj_4613[0]), .I2(n31899), 
            .I3(GND_net), .O(n15218));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11015_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1569 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [6]), 
            .O(n30265));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1569.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1570 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [7]), 
            .O(n30266));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1570.LUT_INIT = 16'h2300;
    SB_LUT4 i10928_3_lut (.I0(\data_in_frame[4] [2]), .I1(rx_data[2]), .I2(n32020), 
            .I3(GND_net), .O(n15131));   // verilog/coms.v(130[12] 305[6])
    defparam i10928_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10925_3_lut (.I0(\data_in_frame[4] [1]), .I1(rx_data[1]), .I2(n32020), 
            .I3(GND_net), .O(n15128));   // verilog/coms.v(130[12] 305[6])
    defparam i10925_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10912_3_lut (.I0(\data_in_frame[3] [7]), .I1(rx_data[7]), .I2(n30344), 
            .I3(GND_net), .O(n15115));   // verilog/coms.v(130[12] 305[6])
    defparam i10912_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_19_lut (.I0(GND_net), .I1(delay_counter[17]), .I2(GND_net), 
            .I3(n26041), .O(n243)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_6 (.CI(n26028), .I0(delay_counter[4]), .I1(GND_net), 
            .CO(n26029));
    SB_LUT4 add_4_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(GND_net), 
            .I3(n26027), .O(n257)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_19 (.CI(n26041), .I0(delay_counter[17]), .I1(GND_net), 
            .CO(n26042));
    SB_LUT4 add_4_18_lut (.I0(GND_net), .I1(delay_counter[16]), .I2(GND_net), 
            .I3(n26040), .O(n244)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_5 (.CI(n26027), .I0(delay_counter[3]), .I1(GND_net), 
            .CO(n26028));
    SB_LUT4 i11851_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [7]), 
            .O(n16054));   // verilog/coms.v(130[12] 305[6])
    defparam i11851_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10909_3_lut (.I0(\data_in_frame[3] [6]), .I1(rx_data[6]), .I2(n30344), 
            .I3(GND_net), .O(n15112));   // verilog/coms.v(130[12] 305[6])
    defparam i10909_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_18 (.CI(n26040), .I0(delay_counter[16]), .I1(GND_net), 
            .CO(n26041));
    SB_LUT4 add_4_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(GND_net), 
            .I3(n26039), .O(n245)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_17 (.CI(n26039), .I0(delay_counter[15]), .I1(GND_net), 
            .CO(n26040));
    SB_LUT4 add_4_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(GND_net), 
            .I3(n26026), .O(n258)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10906_3_lut (.I0(\data_in_frame[3] [5]), .I1(rx_data[5]), .I2(n30344), 
            .I3(GND_net), .O(n15109));   // verilog/coms.v(130[12] 305[6])
    defparam i10906_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 RX_I_0_1_lut (.I0(RX_c), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(RX_N_2));   // verilog/TinyFPGA_B.v(97[10:13])
    defparam RX_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11848_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [4]), 
            .O(n16051));   // verilog/coms.v(130[12] 305[6])
    defparam i11848_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_4_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(GND_net), 
            .I3(n26038), .O(n246)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_16 (.CI(n26038), .I0(delay_counter[14]), .I1(GND_net), 
            .CO(n26039));
    SB_LUT4 i10903_3_lut (.I0(\data_in_frame[3] [4]), .I1(rx_data[4]), .I2(n30344), 
            .I3(GND_net), .O(n15106));   // verilog/coms.v(130[12] 305[6])
    defparam i10903_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1571 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n31807), .O(n32954));
    defparam i1_4_lut_adj_1571.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_4_lut_adj_1572 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n32954), .O(n32960));
    defparam i1_4_lut_adj_1572.LUT_INIT = 16'hfffe;
    SB_LUT4 i10900_3_lut (.I0(\data_in_frame[3] [3]), .I1(rx_data[3]), .I2(n30344), 
            .I3(GND_net), .O(n15103));   // verilog/coms.v(130[12] 305[6])
    defparam i10900_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10897_3_lut (.I0(\data_in_frame[3] [2]), .I1(rx_data[2]), .I2(n30344), 
            .I3(GND_net), .O(n15100));   // verilog/coms.v(130[12] 305[6])
    defparam i10897_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(GND_net), 
            .I3(n26037), .O(n247)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_4 (.CI(n26026), .I0(delay_counter[2]), .I1(GND_net), 
            .CO(n26027));
    SB_CARRY add_4_15 (.CI(n26037), .I0(delay_counter[13]), .I1(GND_net), 
            .CO(n26038));
    SB_LUT4 add_4_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(GND_net), 
            .I3(n26025), .O(n259)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11453_3_lut (.I0(baudrate[27]), .I1(data_adj_4613[3]), .I2(n32618), 
            .I3(GND_net), .O(n15656));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11453_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11456_3_lut (.I0(baudrate[26]), .I1(data_adj_4613[2]), .I2(n32618), 
            .I3(GND_net), .O(n15659));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11456_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10894_3_lut (.I0(\data_in_frame[3] [1]), .I1(rx_data[1]), .I2(n30344), 
            .I3(GND_net), .O(n15097));   // verilog/coms.v(130[12] 305[6])
    defparam i10894_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(GND_net), 
            .I3(n26036), .O(n248)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11460_3_lut (.I0(baudrate[25]), .I1(data_adj_4613[1]), .I2(n32618), 
            .I3(GND_net), .O(n15663));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11460_3_lut.LUT_INIT = 16'hacac;
    SB_IO RX_pad (.PACKAGE_PIN(RX), .OUTPUT_ENABLE(VCC_net), .D_IN_0(RX_c));   // /home/letrend/lscc/iCEcube2.2017.08/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam RX_pad.PIN_TYPE = 6'b000001;
    defparam RX_pad.PULLUP = 1'b0;
    defparam RX_pad.NEG_TRIGGER = 1'b0;
    defparam RX_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i11448_3_lut (.I0(\data_in_frame[18] [5]), .I1(rx_data[5]), 
            .I2(n14177), .I3(GND_net), .O(n15651));   // verilog/coms.v(130[12] 305[6])
    defparam i11448_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_14 (.CI(n26036), .I0(delay_counter[12]), .I1(GND_net), 
            .CO(n26037));
    SB_LUT4 i11442_3_lut (.I0(\data_in_frame[18] [3]), .I1(rx_data[3]), 
            .I2(n14177), .I3(GND_net), .O(n15645));   // verilog/coms.v(130[12] 305[6])
    defparam i11442_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_3 (.CI(n26025), .I0(delay_counter[1]), .I1(GND_net), 
            .CO(n26026));
    SB_LUT4 add_4_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n260)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11434_3_lut (.I0(\data_in_frame[18] [2]), .I1(rx_data[2]), 
            .I2(n14177), .I3(GND_net), .O(n15637));   // verilog/coms.v(130[12] 305[6])
    defparam i11434_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11428_3_lut (.I0(\data_in_frame[18] [0]), .I1(rx_data[0]), 
            .I2(n14177), .I3(GND_net), .O(n15631));   // verilog/coms.v(130[12] 305[6])
    defparam i11428_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11425_3_lut (.I0(\data_in_frame[17] [7]), .I1(rx_data[7]), 
            .I2(n14179), .I3(GND_net), .O(n15628));   // verilog/coms.v(130[12] 305[6])
    defparam i11425_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11469_3_lut (.I0(baudrate[24]), .I1(data_adj_4613[0]), .I2(n32618), 
            .I3(GND_net), .O(n15672));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11469_3_lut.LUT_INIT = 16'hacac;
    SB_DFFE \ID_READOUT_FSM.state__i1  (.Q(\ID_READOUT_FSM.state [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i11470_3_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(timer[31]), 
            .I2(n31830), .I3(GND_net), .O(n15673));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11470_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11415_3_lut (.I0(\data_in_frame[17] [6]), .I1(rx_data[6]), 
            .I2(n14179), .I3(GND_net), .O(n15618));   // verilog/coms.v(130[12] 305[6])
    defparam i11415_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11472_3_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(timer[30]), 
            .I2(n31830), .I3(GND_net), .O(n15675));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11472_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_4_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(GND_net), 
            .I3(n26035), .O(n249)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11473_3_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(timer[29]), 
            .I2(n31830), .I3(GND_net), .O(n15676));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11473_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11474_3_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(timer[28]), 
            .I2(n31830), .I3(GND_net), .O(n15677));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11474_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11475_3_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(timer[27]), 
            .I2(n31830), .I3(GND_net), .O(n15678));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11475_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11476_3_lut (.I0(\neo_pixel_transmitter.t0 [26]), .I1(timer[26]), 
            .I2(n31830), .I3(GND_net), .O(n15679));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11476_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11477_3_lut (.I0(\neo_pixel_transmitter.t0 [25]), .I1(timer[25]), 
            .I2(n31830), .I3(GND_net), .O(n15680));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11477_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11478_3_lut (.I0(\neo_pixel_transmitter.t0 [24]), .I1(timer[24]), 
            .I2(n31830), .I3(GND_net), .O(n15681));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11478_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11479_3_lut (.I0(\neo_pixel_transmitter.t0 [23]), .I1(timer[23]), 
            .I2(n31830), .I3(GND_net), .O(n15682));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11479_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11480_3_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(timer[22]), 
            .I2(n31830), .I3(GND_net), .O(n15683));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11480_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11481_3_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(timer[21]), 
            .I2(n31830), .I3(GND_net), .O(n15684));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11481_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11482_3_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(timer[20]), 
            .I2(n31830), .I3(GND_net), .O(n15685));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11482_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11483_3_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(timer[19]), 
            .I2(n31830), .I3(GND_net), .O(n15686));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11483_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11484_3_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(timer[18]), 
            .I2(n31830), .I3(GND_net), .O(n15687));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11484_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11485_3_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(timer[17]), 
            .I2(n31830), .I3(GND_net), .O(n15688));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11485_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_13 (.CI(n26035), .I0(delay_counter[11]), .I1(GND_net), 
            .CO(n26036));
    SB_LUT4 i11486_3_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(timer[16]), 
            .I2(n31830), .I3(GND_net), .O(n15689));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11486_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11487_3_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(timer[15]), 
            .I2(n31830), .I3(GND_net), .O(n15690));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11487_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11488_3_lut (.I0(baudrate[23]), .I1(data_adj_4613[7]), .I2(n30357), 
            .I3(GND_net), .O(n15691));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11488_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11489_3_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(timer[14]), 
            .I2(n31830), .I3(GND_net), .O(n15692));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11489_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11490_3_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(timer[13]), 
            .I2(n31830), .I3(GND_net), .O(n15693));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11490_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11491_3_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(timer[12]), 
            .I2(n31830), .I3(GND_net), .O(n15694));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11491_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_2_lut_4_lut (.I0(n26954), .I1(n30386), .I2(n27889), .I3(n30715), 
            .O(n6_adj_4583));   // verilog/coms.v(100[12:26])
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11492_3_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(timer[11]), 
            .I2(n31830), .I3(GND_net), .O(n15695));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11492_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11493_3_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(timer[10]), 
            .I2(n31830), .I3(GND_net), .O(n15696));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11493_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11494_3_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(timer[9]), 
            .I2(n31830), .I3(GND_net), .O(n15697));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11494_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11495_3_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(timer[8]), 
            .I2(n31830), .I3(GND_net), .O(n15698));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11495_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11496_3_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(timer[7]), 
            .I2(n31830), .I3(GND_net), .O(n15699));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11496_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 bit_ctr_0__bdd_4_lut (.I0(bit_ctr[0]), .I1(neopxl_color[12]), 
            .I2(neopxl_color[13]), .I3(color_bit_N_423[2]), .O(n37365));
    defparam bit_ctr_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i11497_3_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(timer[6]), 
            .I2(n31830), .I3(GND_net), .O(n15700));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11497_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 n37365_bdd_4_lut (.I0(n37365), .I1(neopxl_color[9]), .I2(neopxl_color[8]), 
            .I3(color_bit_N_423[2]), .O(n37368));
    defparam n37365_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_4_12_lut (.I0(GND_net), .I1(delay_counter[10]), .I2(GND_net), 
            .I3(n26034), .O(n250)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11498_3_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(timer[5]), 
            .I2(n31830), .I3(GND_net), .O(n15701));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11498_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11499_3_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(timer[4]), 
            .I2(n31830), .I3(GND_net), .O(n15702));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11499_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11500_3_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(timer[3]), 
            .I2(n31830), .I3(GND_net), .O(n15703));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11500_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11501_3_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(timer[2]), 
            .I2(n31830), .I3(GND_net), .O(n15704));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11501_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1043_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n340), .I3(n21998), .O(n4253));   // verilog/TinyFPGA_B.v(153[5] 179[12])
    defparam i1043_4_lut_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 i1_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2378 ), 
            .I2(GND_net), .I3(GND_net), .O(n14623));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i11502_3_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(timer[1]), 
            .I2(n31830), .I3(GND_net), .O(n15705));   // verilog/neopixel.v(35[12] 117[6])
    defparam i11502_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11411_3_lut (.I0(\data_in_frame[17] [5]), .I1(rx_data[5]), 
            .I2(n14179), .I3(GND_net), .O(n15614));   // verilog/coms.v(130[12] 305[6])
    defparam i11411_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11407_3_lut (.I0(\data_in_frame[17] [4]), .I1(rx_data[4]), 
            .I2(n14179), .I3(GND_net), .O(n15610));   // verilog/coms.v(130[12] 305[6])
    defparam i11407_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11404_3_lut (.I0(\data_in_frame[17] [3]), .I1(rx_data[3]), 
            .I2(n14179), .I3(GND_net), .O(n15607));   // verilog/coms.v(130[12] 305[6])
    defparam i11404_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11078_3_lut (.I0(baudrate[31]), .I1(data_adj_4613[7]), .I2(n32618), 
            .I3(GND_net), .O(n15281));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11078_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11401_3_lut (.I0(\data_in_frame[17] [2]), .I1(rx_data[2]), 
            .I2(n14179), .I3(GND_net), .O(n15604));   // verilog/coms.v(130[12] 305[6])
    defparam i11401_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15958_3_lut (.I0(n14179), .I1(rx_data[1]), .I2(\data_in_frame[17] [1]), 
            .I3(GND_net), .O(n15711));   // verilog/coms.v(94[13:20])
    defparam i15958_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i1_3_lut_4_lut (.I0(r_Bit_Index[0]), .I1(r_SM_Main[1]), .I2(r_SM_Main[0]), 
            .I3(r_SM_Main[2]), .O(n33302));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i1_3_lut_4_lut_adj_1573 (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), 
            .I2(r_SM_Main[1]), .I3(r_Bit_Index[0]), .O(n33248));
    defparam i1_3_lut_4_lut_adj_1573.LUT_INIT = 16'hffef;
    SB_LUT4 i11395_3_lut (.I0(\data_in_frame[17] [0]), .I1(rx_data[0]), 
            .I2(n14179), .I3(GND_net), .O(n15598));   // verilog/coms.v(130[12] 305[6])
    defparam i11395_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_3_lut_4_lut (.I0(rx_data_ready), .I1(r_SM_Main[1]), .I2(r_SM_Main[2]), 
            .I3(n13431), .O(n28009));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h0caa;
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
    SB_LUT4 i11514_3_lut (.I0(baudrate[22]), .I1(data_adj_4613[6]), .I2(n30357), 
            .I3(GND_net), .O(n15717));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11514_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32679 (.I0(byte_transmit_counter[0]), 
            .I1(\data_out_frame[26] [2]), .I2(\data_out_frame[27] [2]), 
            .I3(byte_transmit_counter[1]), .O(n37341));
    defparam byte_transmit_counter_0__bdd_4_lut_32679.LUT_INIT = 16'he4aa;
    SB_LUT4 n37341_bdd_4_lut (.I0(n37341), .I1(\data_out_frame[25] [2]), 
            .I2(\data_out_frame[24] [2]), .I3(byte_transmit_counter[1]), 
            .O(n37344));
    defparam n37341_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_3_lut (.I0(state[1]), .I1(one_wire_N_380[4]), .I2(start), 
            .I3(GND_net), .O(n14_adj_4570));
    defparam i5_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11368_3_lut (.I0(\data_in_frame[15] [7]), .I1(rx_data[7]), 
            .I2(n31955), .I3(GND_net), .O(n15571));   // verilog/coms.v(130[12] 305[6])
    defparam i11368_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11365_3_lut (.I0(\data_in_frame[15] [6]), .I1(rx_data[6]), 
            .I2(n31955), .I3(GND_net), .O(n15568));   // verilog/coms.v(130[12] 305[6])
    defparam i11365_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i6_4_lut (.I0(one_wire_N_380[10]), .I1(one_wire_N_380[8]), .I2(one_wire_N_380[6]), 
            .I3(one_wire_N_380[5]), .O(n15_adj_4569));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11362_3_lut (.I0(\data_in_frame[15] [5]), .I1(rx_data[5]), 
            .I2(n31955), .I3(GND_net), .O(n15565));   // verilog/coms.v(130[12] 305[6])
    defparam i11362_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11359_3_lut (.I0(\data_in_frame[15] [4]), .I1(rx_data[4]), 
            .I2(n31955), .I3(GND_net), .O(n15562));   // verilog/coms.v(130[12] 305[6])
    defparam i11359_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i8_4_lut (.I0(n15_adj_4569), .I1(one_wire_N_380[9]), .I2(n14_adj_4570), 
            .I3(one_wire_N_380[7]), .O(n31136));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11523_3_lut (.I0(\data_in_frame[18] [6]), .I1(rx_data[6]), 
            .I2(n14177), .I3(GND_net), .O(n15726));   // verilog/coms.v(130[12] 305[6])
    defparam i11523_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11526_3_lut (.I0(\data_in_frame[18] [7]), .I1(rx_data[7]), 
            .I2(n14177), .I3(GND_net), .O(n15729));   // verilog/coms.v(130[12] 305[6])
    defparam i11526_3_lut.LUT_INIT = 16'hacac;
    SB_DFFESR delay_counter__i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13450), 
            .D(n259), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13450), 
            .D(n258), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13450), 
            .D(n257), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13450), 
            .D(n256), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13450), 
            .D(n255), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13450), 
            .D(n254), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13450), 
            .D(n253), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13450), 
            .D(n252), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13450), 
            .D(n251), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i10 (.Q(delay_counter[10]), .C(clk16MHz), .E(n13450), 
            .D(n250), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i11 (.Q(delay_counter[11]), .C(clk16MHz), .E(n13450), 
            .D(n249), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i12 (.Q(delay_counter[12]), .C(clk16MHz), .E(n13450), 
            .D(n248), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i13 (.Q(delay_counter[13]), .C(clk16MHz), .E(n13450), 
            .D(n247), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i14 (.Q(delay_counter[14]), .C(clk16MHz), .E(n13450), 
            .D(n246), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFF read_34 (.Q(read), .C(clk16MHz), .D(n32650));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i15 (.Q(delay_counter[15]), .C(clk16MHz), .E(n13450), 
            .D(n245), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i16 (.Q(delay_counter[16]), .C(clk16MHz), .E(n13450), 
            .D(n244), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i17 (.Q(delay_counter[17]), .C(clk16MHz), .E(n13450), 
            .D(n243), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i18 (.Q(delay_counter[18]), .C(clk16MHz), .E(n13450), 
            .D(n242), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i19 (.Q(delay_counter[19]), .C(clk16MHz), .E(n13450), 
            .D(n241), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i20 (.Q(delay_counter[20]), .C(clk16MHz), .E(n13450), 
            .D(n240), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i21 (.Q(delay_counter[21]), .C(clk16MHz), .E(n13450), 
            .D(n239), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i22 (.Q(delay_counter[22]), .C(clk16MHz), .E(n13450), 
            .D(n238), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i23 (.Q(delay_counter[23]), .C(clk16MHz), .E(n13450), 
            .D(n237), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i24 (.Q(delay_counter[24]), .C(clk16MHz), .E(n13450), 
            .D(n236), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i25 (.Q(delay_counter[25]), .C(clk16MHz), .E(n13450), 
            .D(n235), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i26 (.Q(delay_counter[26]), .C(clk16MHz), .E(n13450), 
            .D(n234), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i27 (.Q(delay_counter[27]), .C(clk16MHz), .E(n13450), 
            .D(n233), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i28 (.Q(delay_counter[28]), .C(clk16MHz), .E(n13450), 
            .D(n232), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i29 (.Q(delay_counter[29]), .C(clk16MHz), .E(n13450), 
            .D(n231), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i30 (.Q(delay_counter[30]), .C(clk16MHz), .E(n13450), 
            .D(n230), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_DFFESR delay_counter__i31 (.Q(delay_counter[31]), .C(clk16MHz), .E(n13450), 
            .D(n229), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1574 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [0]), 
            .O(n30284));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1574.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1575 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [1]), 
            .O(n30285));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1575.LUT_INIT = 16'h5100;
    SB_LUT4 i11553_3_lut (.I0(\data_in_frame[20] [0]), .I1(rx_data[0]), 
            .I2(n32412), .I3(GND_net), .O(n15756));   // verilog/coms.v(130[12] 305[6])
    defparam i11553_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11556_3_lut (.I0(\data_in_frame[20] [1]), .I1(rx_data[1]), 
            .I2(n32412), .I3(GND_net), .O(n15759));   // verilog/coms.v(130[12] 305[6])
    defparam i11556_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1576 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [2]), 
            .O(n30286));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1576.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1577 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [3]), 
            .O(n14646));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1577.LUT_INIT = 16'h5100;
    SB_LUT4 i11559_3_lut (.I0(\data_in_frame[20] [2]), .I1(rx_data[2]), 
            .I2(n32412), .I3(GND_net), .O(n15762));   // verilog/coms.v(130[12] 305[6])
    defparam i11559_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11562_3_lut (.I0(\data_in_frame[20] [3]), .I1(rx_data[3]), 
            .I2(n32412), .I3(GND_net), .O(n15765));   // verilog/coms.v(130[12] 305[6])
    defparam i11562_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11565_3_lut (.I0(\data_in_frame[20] [4]), .I1(rx_data[4]), 
            .I2(n32412), .I3(GND_net), .O(n15768));   // verilog/coms.v(130[12] 305[6])
    defparam i11565_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11568_3_lut (.I0(\data_in_frame[20] [5]), .I1(rx_data[5]), 
            .I2(n32412), .I3(GND_net), .O(n15771));   // verilog/coms.v(130[12] 305[6])
    defparam i11568_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1578 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [4]), 
            .O(n30287));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1578.LUT_INIT = 16'h5100;
    SB_LUT4 i11571_3_lut (.I0(\data_in_frame[20] [6]), .I1(rx_data[6]), 
            .I2(n32412), .I3(GND_net), .O(n15774));   // verilog/coms.v(130[12] 305[6])
    defparam i11571_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11574_3_lut (.I0(\data_in_frame[0] [0]), .I1(rx_data[0]), .I2(n30334), 
            .I3(GND_net), .O(n15777));   // verilog/coms.v(130[12] 305[6])
    defparam i11574_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11106_3_lut (.I0(baudrate[30]), .I1(data_adj_4613[6]), .I2(n32618), 
            .I3(GND_net), .O(n15309));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11106_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11577_3_lut (.I0(baudrate[21]), .I1(data_adj_4613[5]), .I2(n30357), 
            .I3(GND_net), .O(n15780));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11577_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1579 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [5]), 
            .O(n30288));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1579.LUT_INIT = 16'h5100;
    SB_LUT4 i11578_3_lut (.I0(neopxl_color[23]), .I1(\data_in_frame[4] [7]), 
            .I2(n8647), .I3(GND_net), .O(n15781));   // verilog/coms.v(130[12] 305[6])
    defparam i11578_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11113_3_lut (.I0(baudrate[29]), .I1(data_adj_4613[5]), .I2(n32618), 
            .I3(GND_net), .O(n15316));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11113_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1580 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [6]), 
            .O(n30289));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1580.LUT_INIT = 16'h5100;
    SB_LUT4 i10891_3_lut (.I0(\data_in_frame[3] [0]), .I1(rx_data[0]), .I2(n30344), 
            .I3(GND_net), .O(n15094));   // verilog/coms.v(130[12] 305[6])
    defparam i10891_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1581 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[26] [7]), 
            .O(n30295));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1581.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1582 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [0]), 
            .O(n30290));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1582.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1583 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [1]), 
            .O(n30291));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1583.LUT_INIT = 16'h5100;
    SB_LUT4 i11580_3_lut (.I0(\data_in_frame[20] [7]), .I1(rx_data[7]), 
            .I2(n32412), .I3(GND_net), .O(n15783));   // verilog/coms.v(130[12] 305[6])
    defparam i11580_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1584 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [2]), 
            .O(n30292));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1584.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1585 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [3]), 
            .O(n14638));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1585.LUT_INIT = 16'h5100;
    SB_LUT4 i11583_3_lut (.I0(\data_in_frame[21] [0]), .I1(rx_data[0]), 
            .I2(n14172), .I3(GND_net), .O(n15786));   // verilog/coms.v(130[12] 305[6])
    defparam i11583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11586_3_lut (.I0(\data_in_frame[21] [1]), .I1(rx_data[1]), 
            .I2(n14172), .I3(GND_net), .O(n15789));   // verilog/coms.v(130[12] 305[6])
    defparam i11586_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_4_12 (.CI(n26034), .I0(delay_counter[10]), .I1(GND_net), 
            .CO(n26035));
    SB_LUT4 i11589_3_lut (.I0(\data_in_frame[21] [2]), .I1(rx_data[2]), 
            .I2(n14172), .I3(GND_net), .O(n15792));   // verilog/coms.v(130[12] 305[6])
    defparam i11589_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11592_3_lut (.I0(\data_in_frame[21] [3]), .I1(rx_data[3]), 
            .I2(n14172), .I3(GND_net), .O(n15795));   // verilog/coms.v(130[12] 305[6])
    defparam i11592_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE \ID_READOUT_FSM.state__i0  (.Q(\ID_READOUT_FSM.state [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n29737));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1586 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [4]), 
            .O(n30293));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1586.LUT_INIT = 16'h5100;
    SB_LUT4 i11115_3_lut (.I0(baudrate[28]), .I1(data_adj_4613[4]), .I2(n32618), 
            .I3(GND_net), .O(n15318));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11115_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1587 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [5]), 
            .O(n30294));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1587.LUT_INIT = 16'h5100;
    SB_LUT4 add_4_33_lut (.I0(GND_net), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(n26055), .O(n229)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11601_3_lut (.I0(\data_in_frame[21] [5]), .I1(rx_data[5]), 
            .I2(n14172), .I3(GND_net), .O(n15804));   // verilog/coms.v(130[12] 305[6])
    defparam i11601_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1588 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [6]), 
            .O(n30283));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1588.LUT_INIT = 16'h5100;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1589 (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[27] [7]), 
            .O(n30282));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1589.LUT_INIT = 16'h5100;
    SB_LUT4 i26329_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30922));
    defparam i26329_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_4_32_lut (.I0(GND_net), .I1(delay_counter[30]), .I2(GND_net), 
            .I3(n26054), .O(n230)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31363_4_lut (.I0(n24_adj_4567), .I1(read_N_122), .I2(n4253), 
            .I3(n30922), .O(n35515));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i31363_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i49_4_lut (.I0(n35515), .I1(n35517), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(n4253), .O(n29737));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i49_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut (.I0(\data_in_frame[21] [6]), .I1(n25503), .I2(n14172), 
            .I3(rx_data[6]), .O(n29905));   // verilog/coms.v(130[12] 305[6])
    defparam i12_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i31372_2_lut_3_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(n24_adj_4567), .I3(GND_net), .O(n35517));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i31372_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i1_2_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n340), .I3(n21998), .O(n24_adj_4567));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_DFFESR delay_counter__i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13450), 
            .D(n260), .R(n14615));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i11613_3_lut (.I0(\data_in_frame[22] [0]), .I1(rx_data[0]), 
            .I2(n14170), .I3(GND_net), .O(n15816));   // verilog/coms.v(130[12] 305[6])
    defparam i11613_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11616_3_lut (.I0(\data_in_frame[22] [1]), .I1(rx_data[1]), 
            .I2(n14170), .I3(GND_net), .O(n15819));   // verilog/coms.v(130[12] 305[6])
    defparam i11616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11619_3_lut (.I0(\data_in_frame[22] [2]), .I1(rx_data[2]), 
            .I2(n14170), .I3(GND_net), .O(n15822));   // verilog/coms.v(130[12] 305[6])
    defparam i11619_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11622_3_lut (.I0(baudrate[20]), .I1(data_adj_4613[4]), .I2(n30357), 
            .I3(GND_net), .O(n15825));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11622_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_4_32 (.CI(n26054), .I0(delay_counter[30]), .I1(GND_net), 
            .CO(n26055));
    SB_LUT4 i13_4_lut (.I0(\data_in_frame[22] [4]), .I1(n25464), .I2(n14170), 
            .I3(rx_data[4]), .O(n29903));   // verilog/coms.v(130[12] 305[6])
    defparam i13_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i11629_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[0]), 
            .I2(n10), .I3(n11342), .O(n15832));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11629_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_4_31_lut (.I0(GND_net), .I1(delay_counter[29]), .I2(GND_net), 
            .I3(n26053), .O(n231)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_31 (.CI(n26053), .I0(delay_counter[29]), .I1(GND_net), 
            .CO(n26054));
    SB_LUT4 add_4_30_lut (.I0(GND_net), .I1(delay_counter[28]), .I2(GND_net), 
            .I3(n26052), .O(n232)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_30 (.CI(n26052), .I0(delay_counter[28]), .I1(GND_net), 
            .CO(n26053));
    SB_LUT4 add_4_29_lut (.I0(GND_net), .I1(delay_counter[27]), .I2(GND_net), 
            .I3(n26051), .O(n233)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_4_29 (.CI(n26051), .I0(delay_counter[27]), .I1(GND_net), 
            .CO(n26052));
    SB_LUT4 add_4_28_lut (.I0(GND_net), .I1(delay_counter[26]), .I2(GND_net), 
            .I3(n26050), .O(n234)) /* synthesis syn_instantiated=1 */ ;
    defparam add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_2_lut (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[5] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n12181));   // verilog/coms.v(99[12:25])
    defparam i10_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11636_3_lut (.I0(\data_in_frame[22] [7]), .I1(rx_data[7]), 
            .I2(n14170), .I3(GND_net), .O(n15839));   // verilog/coms.v(130[12] 305[6])
    defparam i11636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11639_3_lut (.I0(\data_in_frame[23] [0]), .I1(rx_data[0]), 
            .I2(n31801), .I3(GND_net), .O(n15842));   // verilog/coms.v(130[12] 305[6])
    defparam i11639_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11642_3_lut (.I0(\data_in_frame[23] [1]), .I1(rx_data[1]), 
            .I2(n31801), .I3(GND_net), .O(n15845));   // verilog/coms.v(130[12] 305[6])
    defparam i11642_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11645_3_lut (.I0(\data_in_frame[2] [0]), .I1(rx_data[0]), .I2(n14209), 
            .I3(GND_net), .O(n15848));   // verilog/coms.v(130[12] 305[6])
    defparam i11645_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11648_3_lut (.I0(\data_in_frame[23] [2]), .I1(rx_data[2]), 
            .I2(n31801), .I3(GND_net), .O(n15851));   // verilog/coms.v(130[12] 305[6])
    defparam i11648_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11651_3_lut (.I0(\data_in_frame[23] [3]), .I1(rx_data[3]), 
            .I2(n31801), .I3(GND_net), .O(n15854));   // verilog/coms.v(130[12] 305[6])
    defparam i11651_3_lut.LUT_INIT = 16'hacac;
    SB_DFF reset_35 (.Q(reset), .C(clk16MHz), .D(n29767));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    SB_LUT4 i11654_3_lut (.I0(\data_in_frame[23] [4]), .I1(rx_data[4]), 
            .I2(n31801), .I3(GND_net), .O(n15857));   // verilog/coms.v(130[12] 305[6])
    defparam i11654_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1590 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [2]), 
            .O(n30225));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1590.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_adj_1591 (.I0(r_SM_Main[1]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n30308));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i1_2_lut_adj_1591.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1592 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [3]), 
            .O(n30209));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1592.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1593 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[0] [4]), 
            .O(n30210));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1593.LUT_INIT = 16'h2300;
    SB_CARRY add_4_28 (.CI(n26050), .I0(delay_counter[26]), .I1(GND_net), 
            .CO(n26051));
    SB_LUT4 i11657_3_lut (.I0(\data_in_frame[23] [5]), .I1(rx_data[5]), 
            .I2(n31801), .I3(GND_net), .O(n15860));   // verilog/coms.v(130[12] 305[6])
    defparam i11657_3_lut.LUT_INIT = 16'hacac;
    GND i1 (.Y(GND_net));
    SB_LUT4 i11663_3_lut (.I0(\data_in_frame[23] [6]), .I1(rx_data[6]), 
            .I2(n31801), .I3(GND_net), .O(n15866));   // verilog/coms.v(130[12] 305[6])
    defparam i11663_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1594 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [0]), 
            .O(n30211));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1594.LUT_INIT = 16'h2300;
    SB_LUT4 i11666_3_lut (.I0(\data_in_frame[23] [7]), .I1(rx_data[7]), 
            .I2(n31801), .I3(GND_net), .O(n15869));   // verilog/coms.v(130[12] 305[6])
    defparam i11666_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1595 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [1]), 
            .O(n30212));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1595.LUT_INIT = 16'h2300;
    SB_LUT4 i11669_3_lut (.I0(baudrate[19]), .I1(data_adj_4613[3]), .I2(n30357), 
            .I3(GND_net), .O(n15872));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11669_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11672_3_lut (.I0(n31122), .I1(r_Bit_Index[0]), .I2(n13594), 
            .I3(GND_net), .O(n15875));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11672_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1596 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [3]), 
            .O(n30207));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1596.LUT_INIT = 16'h2300;
    SB_LUT4 i10888_3_lut (.I0(\data_in_frame[2] [7]), .I1(rx_data[7]), .I2(n14209), 
            .I3(GND_net), .O(n15091));   // verilog/coms.v(130[12] 305[6])
    defparam i10888_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11674_3_lut (.I0(baudrate[18]), .I1(data_adj_4613[2]), .I2(n30357), 
            .I3(GND_net), .O(n15877));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11674_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11675_3_lut (.I0(baudrate[17]), .I1(data_adj_4613[1]), .I2(n30357), 
            .I3(GND_net), .O(n15878));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11675_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11356_3_lut (.I0(\data_in_frame[15] [3]), .I1(rx_data[3]), 
            .I2(n31955), .I3(GND_net), .O(n15559));   // verilog/coms.v(130[12] 305[6])
    defparam i11356_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11353_3_lut (.I0(\data_in_frame[15] [2]), .I1(rx_data[2]), 
            .I2(n31955), .I3(GND_net), .O(n15556));   // verilog/coms.v(130[12] 305[6])
    defparam i11353_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11350_3_lut (.I0(\data_in_frame[15] [1]), .I1(rx_data[1]), 
            .I2(n31955), .I3(GND_net), .O(n15553));   // verilog/coms.v(130[12] 305[6])
    defparam i11350_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11347_3_lut (.I0(\data_in_frame[15] [0]), .I1(rx_data[0]), 
            .I2(n31955), .I3(GND_net), .O(n15550));   // verilog/coms.v(130[12] 305[6])
    defparam i11347_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1597 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [5]), 
            .O(n30216));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1597.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1598 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [6]), 
            .O(n30249));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1598.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1599 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[1] [7]), 
            .O(n30204));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1599.LUT_INIT = 16'h2300;
    SB_LUT4 i11683_3_lut (.I0(baudrate[16]), .I1(data_adj_4613[0]), .I2(n30357), 
            .I3(GND_net), .O(n15886));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11683_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1600 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [1]), 
            .O(n30218));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1600.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1601 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [3]), 
            .O(n30251));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1601.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1602 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [4]), 
            .O(n30219));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1602.LUT_INIT = 16'h2300;
    SB_LUT4 i30914_3_lut_4_lut (.I0(r_Clock_Count_adj_4620[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(r_Clock_Count_adj_4620[2]), .O(n35569));   // verilog/uart_tx.v(117[17:57])
    defparam i30914_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 LessThan_666_i6_3_lut_3_lut (.I0(r_Clock_Count_adj_4620[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(GND_net), .O(n6_adj_4575));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1603 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [6]), 
            .O(n30246));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1603.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1604 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[3] [7]), 
            .O(n30220));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1604.LUT_INIT = 16'h2300;
    SB_LUT4 i11687_3_lut (.I0(baudrate[15]), .I1(data_adj_4613[7]), .I2(n30356), 
            .I3(GND_net), .O(n15890));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11687_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 LessThan_663_i6_3_lut_3_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(GND_net), .O(n6_adj_4580));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_663_i6_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i11688_3_lut (.I0(baudrate[14]), .I1(data_adj_4613[6]), .I2(n30356), 
            .I3(GND_net), .O(n15891));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11688_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i30899_3_lut_4_lut (.I0(r_Clock_Count[3]), .I1(o_Rx_DV_N_3358[3]), 
            .I2(o_Rx_DV_N_3358[2]), .I3(r_Clock_Count[2]), .O(n35554));   // verilog/uart_rx.v(119[17:57])
    defparam i30899_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1605 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [0]), 
            .O(n30221));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1605.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1606 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [1]), 
            .O(n30222));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1606.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1607 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [2]), 
            .O(n30223));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1607.LUT_INIT = 16'h2300;
    SB_LUT4 i10885_3_lut (.I0(\data_in_frame[2] [6]), .I1(rx_data[6]), .I2(n14209), 
            .I3(GND_net), .O(n15088));   // verilog/coms.v(130[12] 305[6])
    defparam i10885_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10882_3_lut (.I0(\data_in_frame[2] [5]), .I1(rx_data[5]), .I2(n14209), 
            .I3(GND_net), .O(n15085));   // verilog/coms.v(130[12] 305[6])
    defparam i10882_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11694_3_lut (.I0(baudrate[13]), .I1(data_adj_4613[5]), .I2(n30356), 
            .I3(GND_net), .O(n15897));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11694_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11695_3_lut (.I0(baudrate[12]), .I1(data_adj_4613[4]), .I2(n30356), 
            .I3(GND_net), .O(n15898));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11695_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1608 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [3]), 
            .O(n30202));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1608.LUT_INIT = 16'h2300;
    SB_LUT4 i11033_3_lut (.I0(\data_in_frame[6] [7]), .I1(rx_data[7]), .I2(n31932), 
            .I3(GND_net), .O(n15236));   // verilog/coms.v(130[12] 305[6])
    defparam i11033_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11696_3_lut (.I0(neopxl_color[22]), .I1(\data_in_frame[4] [6]), 
            .I2(n8647), .I3(GND_net), .O(n15899));   // verilog/coms.v(130[12] 305[6])
    defparam i11696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1609 (.I0(n4_adj_4552), .I1(r_SM_Main[1]), .I2(n6_adj_4548), 
            .I3(r_Bit_Index[0]), .O(n33196));
    defparam i1_4_lut_adj_1609.LUT_INIT = 16'hfffb;
    SB_LUT4 i11029_3_lut (.I0(\data_in_frame[6] [6]), .I1(rx_data[6]), .I2(n31932), 
            .I3(GND_net), .O(n15232));   // verilog/coms.v(130[12] 305[6])
    defparam i11029_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1610 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [4]), 
            .O(n14709));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1610.LUT_INIT = 16'h2300;
    SB_LUT4 i11026_3_lut (.I0(\data_in_frame[6] [5]), .I1(rx_data[5]), .I2(n31932), 
            .I3(GND_net), .O(n15229));   // verilog/coms.v(130[12] 305[6])
    defparam i11026_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_4_lut_adj_1611 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33196), .O(n33202));
    defparam i1_4_lut_adj_1611.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1612 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33202), .O(n33208));
    defparam i1_4_lut_adj_1612.LUT_INIT = 16'hfffe;
    SB_LUT4 i11697_4_lut (.I0(r_Rx_Data), .I1(rx_data[0]), .I2(n33208), 
            .I3(n27), .O(n15900));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11697_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11023_3_lut (.I0(\data_in_frame[6] [4]), .I1(rx_data[4]), .I2(n31932), 
            .I3(GND_net), .O(n15226));   // verilog/coms.v(130[12] 305[6])
    defparam i11023_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11019_3_lut (.I0(\data_in_frame[6] [3]), .I1(rx_data[3]), .I2(n31932), 
            .I3(GND_net), .O(n15222));   // verilog/coms.v(130[12] 305[6])
    defparam i11019_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11008_3_lut (.I0(\data_in_frame[6] [2]), .I1(rx_data[2]), .I2(n31932), 
            .I3(GND_net), .O(n15211));   // verilog/coms.v(130[12] 305[6])
    defparam i11008_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1613 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [5]), 
            .O(n30224));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1613.LUT_INIT = 16'h2300;
    SB_LUT4 i11005_3_lut (.I0(\data_in_frame[6] [1]), .I1(rx_data[1]), .I2(n31932), 
            .I3(GND_net), .O(n15208));   // verilog/coms.v(130[12] 305[6])
    defparam i11005_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_3_lut_4_lut (.I0(\neo_pixel_transmitter.done ), .I1(state[0]), 
            .I2(n22418), .I3(state[1]), .O(n31935));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_adj_1614 (.I0(r_SM_Main[1]), .I1(n6_adj_4548), .I2(r_Bit_Index[0]), 
            .I3(n4_adj_4552), .O(n33268));
    defparam i1_4_lut_adj_1614.LUT_INIT = 16'hffdf;
    SB_LUT4 i1_4_lut_adj_1615 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33268), .O(n33274));
    defparam i1_4_lut_adj_1615.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1616 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33274), .O(n33280));
    defparam i1_4_lut_adj_1616.LUT_INIT = 16'hfffe;
    SB_LUT4 i30955_3_lut_4_lut (.I0(\neo_pixel_transmitter.done ), .I1(state[0]), 
            .I2(n22418), .I3(start), .O(n35510));
    defparam i30955_3_lut_4_lut.LUT_INIT = 16'hff10;
    SB_LUT4 i11702_3_lut (.I0(\data_in_frame[2] [2]), .I1(rx_data[2]), .I2(n14209), 
            .I3(GND_net), .O(n15905));   // verilog/coms.v(130[12] 305[6])
    defparam i11702_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11153_4_lut (.I0(r_Rx_Data), .I1(rx_data[1]), .I2(n33280), 
            .I3(n27), .O(n15356));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11153_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1617 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [6]), 
            .O(n30206));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1617.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1618 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[4] [7]), 
            .O(n14706));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1618.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1619 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33286), .O(n33292));
    defparam i1_4_lut_adj_1619.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1620 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [0]), 
            .O(n30226));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1620.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1621 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33292), .O(n33298));
    defparam i1_4_lut_adj_1621.LUT_INIT = 16'hfffe;
    SB_LUT4 i11154_4_lut (.I0(r_Rx_Data), .I1(rx_data[2]), .I2(n33298), 
            .I3(n27), .O(n15357));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11154_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1622 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [1]), 
            .O(n14704));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1622.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1623 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33304), .O(n33310));
    defparam i1_4_lut_adj_1623.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1624 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33310), .O(n33316));
    defparam i1_4_lut_adj_1624.LUT_INIT = 16'hfffe;
    SB_LUT4 i11155_4_lut (.I0(r_Rx_Data), .I1(rx_data[3]), .I2(n33316), 
            .I3(n27), .O(n15358));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11155_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1625 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [2]), 
            .O(n30214));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1625.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1626 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33250), .O(n33256));
    defparam i1_4_lut_adj_1626.LUT_INIT = 16'hfffe;
    SB_LUT4 i11707_4_lut (.I0(n4_adj_4572), .I1(state_adj_4614[0]), .I2(n32365), 
            .I3(n4_adj_4584), .O(n15910));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11707_4_lut.LUT_INIT = 16'h4144;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1627 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [3]), 
            .O(n30227));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1627.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1628 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [4]), 
            .O(n30228));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1628.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1629 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [5]), 
            .O(n30229));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1629.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1630 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33256), .O(n33262));
    defparam i1_4_lut_adj_1630.LUT_INIT = 16'hfffe;
    SB_LUT4 i11156_4_lut (.I0(r_Rx_Data), .I1(rx_data[4]), .I2(n33262), 
            .I3(n27), .O(n15359));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11156_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1631 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33214), .O(n33220));
    defparam i1_4_lut_adj_1631.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1632 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33220), .O(n33226));
    defparam i1_4_lut_adj_1632.LUT_INIT = 16'hfffe;
    SB_LUT4 i11157_4_lut (.I0(r_Rx_Data), .I1(rx_data[5]), .I2(n33226), 
            .I3(n27), .O(n15360));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11157_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1633 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [6]), 
            .O(n30230));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1633.LUT_INIT = 16'h2300;
    SB_LUT4 LessThan_663_i9_2_lut (.I0(r_Clock_Count[4]), .I1(o_Rx_DV_N_3358[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9_adj_4582));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_663_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1634 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[5] [7]), 
            .O(n30231));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1634.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1635 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [0]), 
            .O(n30232));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1635.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1636 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33232), .O(n33238));
    defparam i1_4_lut_adj_1636.LUT_INIT = 16'hfffe;
    SB_LUT4 LessThan_663_i4_4_lut (.I0(r_Clock_Count[0]), .I1(o_Rx_DV_N_3358[1]), 
            .I2(r_Clock_Count[1]), .I3(o_Rx_DV_N_3358[0]), .O(n4_adj_4579));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_663_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 LessThan_663_i8_3_lut (.I0(n6_adj_4580), .I1(o_Rx_DV_N_3358[4]), 
            .I2(n9_adj_4582), .I3(GND_net), .O(n8_adj_4581));   // verilog/uart_rx.v(119[17:57])
    defparam LessThan_663_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32354_4_lut (.I0(n8_adj_4581), .I1(n4_adj_4579), .I2(n9_adj_4582), 
            .I3(n35554), .O(n37009));   // verilog/uart_rx.v(119[17:57])
    defparam i32354_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i1_4_lut_adj_1637 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33238), .O(n33244));
    defparam i1_4_lut_adj_1637.LUT_INIT = 16'hfffe;
    SB_LUT4 i32355_3_lut (.I0(n37009), .I1(o_Rx_DV_N_3358[5]), .I2(r_Clock_Count[5]), 
            .I3(GND_net), .O(n37010));   // verilog/uart_rx.v(119[17:57])
    defparam i32355_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32320_3_lut (.I0(n37010), .I1(o_Rx_DV_N_3358[6]), .I2(r_Clock_Count[6]), 
            .I3(GND_net), .O(n36975));   // verilog/uart_rx.v(119[17:57])
    defparam i32320_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i11158_4_lut (.I0(r_Rx_Data), .I1(rx_data[6]), .I2(n33244), 
            .I3(n27), .O(n15361));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11158_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32234_3_lut (.I0(n36975), .I1(o_Rx_DV_N_3358[7]), .I2(r_Clock_Count[7]), 
            .I3(GND_net), .O(n2856));   // verilog/uart_rx.v(119[17:57])
    defparam i32234_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1638 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [1]), 
            .O(n30233));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1638.LUT_INIT = 16'h2300;
    SB_LUT4 i1_4_lut_adj_1639 (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2856), 
            .I3(o_Rx_DV_N_3358[8]), .O(n32816));
    defparam i1_4_lut_adj_1639.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1640 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32816), .O(r_SM_Main_2__N_3316[1]));
    defparam i1_4_lut_adj_1640.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1641 (.I0(o_Rx_DV_N_3358[12]), .I1(n2856), .I2(o_Rx_DV_N_3358[8]), 
            .I3(n33322), .O(n33328));
    defparam i1_4_lut_adj_1641.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1642 (.I0(o_Rx_DV_N_3358[24]), .I1(n29), .I2(n23), 
            .I3(n33328), .O(n33334));
    defparam i1_4_lut_adj_1642.LUT_INIT = 16'hfffe;
    SB_LUT4 i11159_4_lut (.I0(r_Rx_Data), .I1(rx_data[7]), .I2(n33334), 
            .I3(n27), .O(n15362));   // verilog/uart_rx.v(50[10] 145[8])
    defparam i11159_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1643 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [2]), 
            .O(n30234));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1643.LUT_INIT = 16'h2300;
    SB_LUT4 i10991_3_lut (.I0(\data_in_frame[6] [0]), .I1(rx_data[0]), .I2(n31932), 
            .I3(GND_net), .O(n15194));   // verilog/coms.v(130[12] 305[6])
    defparam i10991_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10988_3_lut (.I0(\data_in_frame[5] [7]), .I1(rx_data[7]), .I2(n14203), 
            .I3(GND_net), .O(n15191));   // verilog/coms.v(130[12] 305[6])
    defparam i10988_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11163_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[1]), 
            .I2(n10), .I3(n11337), .O(n15366));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11163_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11164_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[2]), 
            .I2(n4_adj_4549), .I3(n11342), .O(n15367));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11164_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10985_3_lut (.I0(\data_in_frame[5] [6]), .I1(rx_data[6]), .I2(n14203), 
            .I3(GND_net), .O(n15188));   // verilog/coms.v(130[12] 305[6])
    defparam i10985_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11166_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[3]), 
            .I2(n4_adj_4549), .I3(n11337), .O(n15369));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11166_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i11167_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[4]), 
            .I2(n4_adj_4553), .I3(n11342), .O(n15370));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11167_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 LessThan_666_i15_2_lut (.I0(r_Clock_Count_adj_4620[7]), .I1(o_Rx_DV_N_3358[7]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4578));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11168_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[5]), 
            .I2(n4_adj_4553), .I3(n11337), .O(n15371));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11168_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 LessThan_666_i9_2_lut (.I0(r_Clock_Count_adj_4620[4]), .I1(o_Rx_DV_N_3358[4]), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_666_i13_2_lut (.I0(r_Clock_Count_adj_4620[6]), .I1(o_Rx_DV_N_3358[6]), 
            .I2(GND_net), .I3(GND_net), .O(n13));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 LessThan_666_i11_2_lut (.I0(r_Clock_Count_adj_4620[5]), .I1(o_Rx_DV_N_3358[5]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11169_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[6]), 
            .I2(n22110), .I3(n11342), .O(n15372));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11169_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 i10981_3_lut (.I0(\data_in_frame[5] [5]), .I1(rx_data[5]), .I2(n14203), 
            .I3(GND_net), .O(n15184));   // verilog/coms.v(130[12] 305[6])
    defparam i10981_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1644 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [3]), 
            .O(n30235));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1644.LUT_INIT = 16'h2300;
    SB_LUT4 LessThan_666_i4_4_lut (.I0(r_Clock_Count_adj_4620[0]), .I1(o_Rx_DV_N_3358[1]), 
            .I2(r_Clock_Count_adj_4620[1]), .I3(o_Rx_DV_N_3358[0]), .O(n4_adj_4574));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i4_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32199_3_lut (.I0(n4_adj_4574), .I1(o_Rx_DV_N_3358[5]), .I2(n11), 
            .I3(GND_net), .O(n36854));   // verilog/uart_tx.v(117[17:57])
    defparam i32199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1645 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [4]), 
            .O(n14693));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1645.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1646 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [5]), 
            .O(n14692));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1646.LUT_INIT = 16'h2300;
    SB_LUT4 i32200_3_lut (.I0(n36854), .I1(o_Rx_DV_N_3358[6]), .I2(n13), 
            .I3(GND_net), .O(n36855));   // verilog/uart_tx.v(117[17:57])
    defparam i32200_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31453_4_lut (.I0(n13), .I1(n11), .I2(n9), .I3(n35569), 
            .O(n36108));
    defparam i31453_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i11171_4_lut (.I0(state_7__N_3840[3]), .I1(data_adj_4613[7]), 
            .I2(n22110), .I3(n11337), .O(n15374));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i11171_4_lut.LUT_INIT = 16'hccac;
    SB_LUT4 LessThan_666_i8_3_lut (.I0(n6_adj_4575), .I1(o_Rx_DV_N_3358[4]), 
            .I2(n9), .I3(GND_net), .O(n8_adj_4576));   // verilog/uart_tx.v(117[17:57])
    defparam LessThan_666_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1647 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [6]), 
            .O(n30236));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1647.LUT_INIT = 16'h2300;
    SB_LUT4 i32053_3_lut (.I0(n36855), .I1(o_Rx_DV_N_3358[7]), .I2(n15_adj_4578), 
            .I3(GND_net), .O(n14_adj_4577));   // verilog/uart_tx.v(117[17:57])
    defparam i32053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31880_4_lut (.I0(n14_adj_4577), .I1(n8_adj_4576), .I2(n15_adj_4578), 
            .I3(n36108), .O(n36535));   // verilog/uart_tx.v(117[17:57])
    defparam i31880_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i15963_3_lut (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [1]), 
            .I2(byte_transmit_counter[0]), .I3(GND_net), .O(n1));   // verilog/coms.v(105[12:33])
    defparam i15963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1648 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[12] [7]), 
            .O(n30237));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1648.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1649 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [0]), 
            .O(n14689));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1649.LUT_INIT = 16'h2300;
    SB_LUT4 i31881_3_lut (.I0(n36535), .I1(o_Rx_DV_N_3358[8]), .I2(r_Clock_Count_adj_4620[8]), 
            .I3(GND_net), .O(n2859));   // verilog/uart_tx.v(117[17:57])
    defparam i31881_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut (.I0(n23), .I1(o_Rx_DV_N_3358[12]), .I2(n2859), .I3(GND_net), 
            .O(n32860));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_1650 (.I0(o_Rx_DV_N_3358[24]), .I1(n27), .I2(n29), 
            .I3(n32860), .O(r_SM_Main_2__N_3406[1]));
    defparam i1_4_lut_adj_1650.LUT_INIT = 16'hfffe;
    EEPROM eeprom (.GND_net(GND_net), .clk16MHz(clk16MHz), .enable_slow_N_3927(enable_slow_N_3927), 
           .n3200({n3201}), .\state[2] (state_adj_4614[2]), .\state[0] (state_adj_4614[0]), 
           .\state[1] (state_adj_4614[1]), .read(read), .n15318(n15318), 
           .baudrate({baudrate}), .n15316(n15316), .n15309(n15309), .n15281(n15281), 
           .\state[0]_adj_18 (state_adj_4627[0]), .ID({ID}), .n15218(n15218), 
           .n15217(n15217), .n15216(n15216), .n15215(n15215), .n15214(n15214), 
           .n15207(n15207), .n15206(n15206), .n15205(n15205), .n15204(n15204), 
           .n15203(n15203), .n15199(n15199), .n15198(n15198), .n15126(n15126), 
           .rw(rw), .n29853(n29853), .data_ready(data_ready), .data({data_adj_4613}), 
           .n32620(n32620), .n15910(n15910), .VCC_net(VCC_net), .n15898(n15898), 
           .n15897(n15897), .n15891(n15891), .n15890(n15890), .n15886(n15886), 
           .n15878(n15878), .n15877(n15877), .n15872(n15872), .n32618(n32618), 
           .n15825(n15825), .n15780(n15780), .n15717(n15717), .n15691(n15691), 
           .n15672(n15672), .n31899(n31899), .n15663(n15663), .n15659(n15659), 
           .n15656(n15656), .n30356(n30356), .n30357(n30357), .n4(n4_adj_4584), 
           .n32365(n32365), .n24581(n24581), .scl_enable(scl_enable), 
           .\state_7__N_3824[0] (state_7__N_3824[0]), .\saved_addr[0] (saved_addr[0]), 
           .\state_7__N_3840[3] (state_7__N_3840[3]), .n4091(n4091), .n15374(n15374), 
           .n15372(n15372), .n15371(n15371), .n15370(n15370), .n15369(n15369), 
           .n15367(n15367), .n15366(n15366), .n8(n8_adj_4588), .n15832(n15832), 
           .sda_enable(sda_enable), .n15081(n15081), .n22038(n22038), 
           .scl(scl), .n10(n10), .n4_adj_19(n4_adj_4549), .n4_adj_20(n4_adj_4553), 
           .n11342(n11342), .n11337(n11337), .n22110(n22110), .n6(n6_adj_4568), 
           .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(182[10] 194[6])
    SB_LUT4 i1_1_lut (.I0(r_SM_Main_adj_4619[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n20810));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10999_3_lut_3_lut (.I0(\FRAME_MATCHER.rx_data_ready_prev ), .I1(rx_data_ready), 
            .I2(reset), .I3(GND_net), .O(n15202));   // verilog/coms.v(130[12] 305[6])
    defparam i10999_3_lut_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i6_4_lut_adj_1651 (.I0(ID[7]), .I1(ID[4]), .I2(ID[5]), .I3(ID[6]), 
            .O(n14_adj_4586));   // verilog/TinyFPGA_B.v(169[12:17])
    defparam i6_4_lut_adj_1651.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_4_lut (.I0(ID[0]), .I1(ID[1]), .I2(ID[3]), .I3(ID[2]), 
            .O(n13_adj_4587));   // verilog/TinyFPGA_B.v(169[12:17])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17865_4_lut (.I0(n13_adj_4587), .I1(baudrate[0]), .I2(n14_adj_4586), 
            .I3(n11389), .O(n21998));
    defparam i17865_4_lut.LUT_INIT = 16'hc8fa;
    SB_LUT4 i1_2_lut_adj_1652 (.I0(delay_counter[12]), .I1(delay_counter[11]), 
            .I2(GND_net), .I3(GND_net), .O(n4));
    defparam i1_2_lut_adj_1652.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut (.I0(delay_counter[9]), .I1(n4), .I2(delay_counter[10]), 
            .I3(n11236), .O(n32102));
    defparam i2_4_lut.LUT_INIT = 16'hfcec;
    SB_LUT4 i2_4_lut_adj_1653 (.I0(n32102), .I1(n11230), .I2(delay_counter[13]), 
            .I3(delay_counter[14]), .O(n32114));
    defparam i2_4_lut_adj_1653.LUT_INIT = 16'hffec;
    SB_LUT4 i3_3_lut (.I0(delay_counter[20]), .I1(delay_counter[21]), .I2(delay_counter[23]), 
            .I3(GND_net), .O(n8));
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_4_lut_adj_1654 (.I0(delay_counter[22]), .I1(n32114), .I2(delay_counter[19]), 
            .I3(delay_counter[18]), .O(n7_adj_4571));
    defparam i2_4_lut_adj_1654.LUT_INIT = 16'ha8a0;
    SB_LUT4 i17981_4_lut (.I0(n7_adj_4571), .I1(delay_counter[31]), .I2(n11225), 
            .I3(n8), .O(n340));   // verilog/TinyFPGA_B.v(171[14:38])
    defparam i17981_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i5_4_lut_adj_1655 (.I0(delay_counter[27]), .I1(delay_counter[29]), 
            .I2(delay_counter[24]), .I3(delay_counter[26]), .O(n12));
    defparam i5_4_lut_adj_1655.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_1656 (.I0(delay_counter[28]), .I1(n12), .I2(delay_counter[25]), 
            .I3(delay_counter[30]), .O(n11225));
    defparam i6_4_lut_adj_1656.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut (.I0(delay_counter[17]), .I1(delay_counter[16]), .I2(delay_counter[15]), 
            .I3(GND_net), .O(n11230));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i5_3_lut_adj_1657 (.I0(delay_counter[3]), .I1(delay_counter[5]), 
            .I2(delay_counter[4]), .I3(GND_net), .O(n14));
    defparam i5_3_lut_adj_1657.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_3_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2383 ), 
            .I2(n17417), .I3(GND_net), .O(n8647));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i2_3_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i6_4_lut_adj_1658 (.I0(delay_counter[8]), .I1(delay_counter[7]), 
            .I2(delay_counter[1]), .I3(delay_counter[0]), .O(n15));
    defparam i6_4_lut_adj_1658.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_1659 (.I0(n15), .I1(delay_counter[2]), .I2(n14), 
            .I3(delay_counter[6]), .O(n11236));
    defparam i8_4_lut_adj_1659.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1660 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [1]), 
            .O(n14688));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1660.LUT_INIT = 16'h2300;
    SB_LUT4 i3080_4_lut (.I0(n11236), .I1(delay_counter[11]), .I2(delay_counter[10]), 
            .I3(delay_counter[9]), .O(n24));
    defparam i3080_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i2_4_lut_adj_1661 (.I0(n24), .I1(delay_counter[14]), .I2(delay_counter[12]), 
            .I3(delay_counter[13]), .O(n31781));
    defparam i2_4_lut_adj_1661.LUT_INIT = 16'hc800;
    SB_LUT4 i2_3_lut_adj_1662 (.I0(n31781), .I1(delay_counter[18]), .I2(n11230), 
            .I3(GND_net), .O(n31817));
    defparam i2_3_lut_adj_1662.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_1663 (.I0(delay_counter[23]), .I1(n31817), .I2(delay_counter[20]), 
            .I3(delay_counter[19]), .O(n7));
    defparam i2_4_lut_adj_1663.LUT_INIT = 16'heaaa;
    SB_LUT4 i4_4_lut (.I0(n7), .I1(delay_counter[21]), .I2(delay_counter[22]), 
            .I3(n11225), .O(n62));
    defparam i4_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18003_2_lut (.I0(n62), .I1(delay_counter[31]), .I2(GND_net), 
            .I3(GND_net), .O(read_N_122));   // verilog/TinyFPGA_B.v(157[12:35])
    defparam i18003_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i292_2_lut (.I0(n340), .I1(n21998), .I2(GND_net), .I3(GND_net), 
            .O(n1397));   // verilog/TinyFPGA_B.v(175[18] 177[12])
    defparam i292_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i29295_2_lut (.I0(data_ready), .I1(\ID_READOUT_FSM.state [0]), 
            .I2(GND_net), .I3(GND_net), .O(n33941));
    defparam i29295_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32585_4_lut (.I0(\ID_READOUT_FSM.state [1]), .I1(n4253), .I2(n33941), 
            .I3(n25), .O(n17));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i32585_4_lut.LUT_INIT = 16'h88ba;
    SB_LUT4 i10972_3_lut (.I0(\data_in_frame[5] [4]), .I1(rx_data[4]), .I2(n14203), 
            .I3(GND_net), .O(n15175));   // verilog/coms.v(130[12] 305[6])
    defparam i10972_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15307_3_lut (.I0(n14203), .I1(rx_data[3]), .I2(\data_in_frame[5] [3]), 
            .I3(GND_net), .O(n15379));   // verilog/coms.v(94[13:20])
    defparam i15307_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1664 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [2]), 
            .O(n30238));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1664.LUT_INIT = 16'h2300;
    SB_LUT4 i10958_3_lut (.I0(\data_in_frame[5] [2]), .I1(rx_data[2]), .I2(n14203), 
            .I3(GND_net), .O(n15161));   // verilog/coms.v(130[12] 305[6])
    defparam i10958_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10955_3_lut (.I0(\data_in_frame[5] [1]), .I1(rx_data[1]), .I2(n14203), 
            .I3(GND_net), .O(n15158));   // verilog/coms.v(130[12] 305[6])
    defparam i10955_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1665 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [3]), 
            .O(n30239));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1665.LUT_INIT = 16'h2300;
    SB_LUT4 i10949_3_lut (.I0(\data_in_frame[4] [7]), .I1(rx_data[7]), .I2(n32020), 
            .I3(GND_net), .O(n15152));   // verilog/coms.v(130[12] 305[6])
    defparam i10949_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11709_3_lut (.I0(\data_in_frame[2] [3]), .I1(rx_data[3]), .I2(n14209), 
            .I3(GND_net), .O(n15912));   // verilog/coms.v(130[12] 305[6])
    defparam i11709_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1666 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [4]), 
            .O(n30240));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1666.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1667 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [5]), 
            .O(n14684));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1667.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1668 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [6]), 
            .O(n30267));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1668.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1669 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[13] [7]), 
            .O(n30215));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1669.LUT_INIT = 16'h2300;
    SB_LUT4 i30970_3_lut (.I0(state_7__N_3824[0]), .I1(n22038), .I2(enable_slow_N_3927), 
            .I3(GND_net), .O(n35520));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i30970_3_lut.LUT_INIT = 16'h4c4c;
    SB_LUT4 i11181_3_lut (.I0(\data_in_frame[0] [1]), .I1(rx_data[1]), .I2(n30334), 
            .I3(GND_net), .O(n15384));   // verilog/coms.v(130[12] 305[6])
    defparam i11181_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11184_3_lut (.I0(\data_in_frame[0] [2]), .I1(rx_data[2]), .I2(n30334), 
            .I3(GND_net), .O(n15387));   // verilog/coms.v(130[12] 305[6])
    defparam i11184_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i16_4_lut (.I0(state_adj_4627[0]), .I1(n35520), .I2(n4091), 
            .I3(n6_adj_4568), .O(n8_adj_4588));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i16_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1670 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [0]), 
            .O(n30213));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1670.LUT_INIT = 16'h2300;
    SB_LUT4 i11187_3_lut (.I0(\data_in_frame[0] [3]), .I1(rx_data[3]), .I2(n30334), 
            .I3(GND_net), .O(n15390));   // verilog/coms.v(130[12] 305[6])
    defparam i11187_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1671 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [1]), 
            .O(n30241));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1671.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1672 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [2]), 
            .O(n30242));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1672.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1673 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [3]), 
            .O(n30243));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1673.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1674 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [4]), 
            .O(n30244));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1674.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1675 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [5]), 
            .O(n14676));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1675.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1676 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [6]), 
            .O(n30245));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1676.LUT_INIT = 16'h2300;
    SB_LUT4 i32479_3_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21998), .I3(GND_net), .O(n13450));
    defparam i32479_3_lut_3_lut.LUT_INIT = 16'h1515;
    SB_LUT4 i11190_3_lut (.I0(\data_in_frame[0] [4]), .I1(rx_data[4]), .I2(n30334), 
            .I3(GND_net), .O(n15393));   // verilog/coms.v(130[12] 305[6])
    defparam i11190_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11193_3_lut (.I0(\data_in_frame[0] [5]), .I1(rx_data[5]), .I2(n30334), 
            .I3(GND_net), .O(n15396));   // verilog/coms.v(130[12] 305[6])
    defparam i11193_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1677 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[14] [7]), 
            .O(n30203));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1677.LUT_INIT = 16'h2300;
    SB_LUT4 i30994_2_lut_3_lut (.I0(n62), .I1(delay_counter[31]), .I2(\ID_READOUT_FSM.state [0]), 
            .I3(GND_net), .O(n35372));
    defparam i30994_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 i17936_2_lut_3_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(n21998), .I3(GND_net), .O(n22069));
    defparam i17936_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i10942_3_lut (.I0(\data_in_frame[4] [6]), .I1(rx_data[6]), .I2(n32020), 
            .I3(GND_net), .O(n15145));   // verilog/coms.v(130[12] 305[6])
    defparam i10942_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1678 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [0]), 
            .O(n30247));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1678.LUT_INIT = 16'h2300;
    SB_LUT4 i10962_4_lut_4_lut (.I0(n13383), .I1(state[0]), .I2(state[1]), 
            .I3(state_3__N_229[1]), .O(n15165));   // verilog/neopixel.v(35[12] 117[6])
    defparam i10962_4_lut_4_lut.LUT_INIT = 16'hfa7a;
    SB_LUT4 i11197_3_lut (.I0(\data_in_frame[0] [6]), .I1(rx_data[6]), .I2(n30334), 
            .I3(GND_net), .O(n15400));   // verilog/coms.v(130[12] 305[6])
    defparam i11197_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1679 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [1]), 
            .O(n30248));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1679.LUT_INIT = 16'h2300;
    SB_LUT4 i11200_3_lut (.I0(\data_in_frame[0] [7]), .I1(rx_data[7]), .I2(n30334), 
            .I3(GND_net), .O(n15403));   // verilog/coms.v(130[12] 305[6])
    defparam i11200_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1680 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [2]), 
            .O(n30205));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1680.LUT_INIT = 16'h2300;
    SB_LUT4 i10939_3_lut (.I0(\data_in_frame[4] [5]), .I1(rx_data[5]), .I2(n32020), 
            .I3(GND_net), .O(n15142));   // verilog/coms.v(130[12] 305[6])
    defparam i10939_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1681 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [3]), 
            .O(n14670));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1681.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_adj_1682 (.I0(n26954), .I1(n30386), .I2(GND_net), 
            .I3(GND_net), .O(n30737));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1682.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1683 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [4]), 
            .O(n30250));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1683.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_adj_1684 (.I0(\data_out_frame[25] [1]), .I1(\data_out_frame[25] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30383));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1684.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1685 (.I0(\data_out_frame[25] [5]), .I1(\data_out_frame[25] [4]), 
            .I2(n30383), .I3(n6), .O(n2520));   // verilog/coms.v(100[12:26])
    defparam i4_4_lut_adj_1685.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_4_lut (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(reset), .I3(n21998), .O(n29767));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hb1f1;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1686 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [5]), 
            .O(n30217));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1686.LUT_INIT = 16'h2300;
    SB_LUT4 i10934_4_lut_4_lut (.I0(tx_active), .I1(r_SM_Main_adj_4619[1]), 
            .I2(r_SM_Main_adj_4619[2]), .I3(n6_adj_4585), .O(n15137));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i10934_4_lut_4_lut.LUT_INIT = 16'ha3aa;
    coms neopxl_color_23__I_0 (.VCC_net(VCC_net), .clk16MHz(clk16MHz), .GND_net(GND_net), 
         .\data_out_frame[4] ({\data_out_frame[4] }), .\data_out_frame[12] ({\data_out_frame[12] }), 
         .\data_out_frame[5] ({\data_out_frame[5] }), .reset(reset), .\data_out_frame[14] ({\data_out_frame[14] }), 
         .\data_out_frame[13] ({\data_out_frame[13] }), .\data_out_frame[23] ({\data_out_frame[23] }), 
         .\FRAME_MATCHER.state[3] (\FRAME_MATCHER.state [3]), .\data_out_frame[25] ({\data_out_frame[25] }), 
         .\FRAME_MATCHER.i_31__N_2379 (\FRAME_MATCHER.i_31__N_2379 ), .neopxl_color({neopxl_color}), 
         .\data_in_frame[20] ({\data_in_frame[20] }), .\data_in_frame[6] ({\data_in_frame[6] }), 
         .\data_out_frame[24] ({\data_out_frame[24] }), .\data_in_frame[23] ({\data_in_frame[23] }), 
         .rx_data_ready(rx_data_ready), .\FRAME_MATCHER.rx_data_ready_prev (\FRAME_MATCHER.rx_data_ready_prev ), 
         .\data_in_frame[22][7] (\data_in_frame[22] [7]), .\data_in_frame[18] ({Open_0, 
         Open_1, \data_in_frame[18] [5], Open_2, Open_3, Open_4, Open_5, 
         Open_6}), .\data_in_frame[22][4] (\data_in_frame[22] [4]), .\data_in_frame[3] ({\data_in_frame[3] }), 
         .\data_in_frame[4][1] (\data_in_frame[4] [1]), .\byte_transmit_counter[1] (byte_transmit_counter[1]), 
         .\data_in_frame[15] ({\data_in_frame[15] }), .\data_in_frame[17] ({\data_in_frame[17] }), 
         .\byte_transmit_counter[0] (byte_transmit_counter[0]), .\data_out_frame[1][7] (\data_out_frame[1] [7]), 
         .\data_out_frame[3][7] (\data_out_frame[3] [7]), .n17410(n17410), 
         .\data_out_frame[0][3] (\data_out_frame[0] [3]), .\data_out_frame[1][3] (\data_out_frame[1] [3]), 
         .\data_out_frame[3][3] (\data_out_frame[3] [3]), .\data_in_frame[21][6] (\data_in_frame[21] [6]), 
         .n30620(n30620), .n27802(n27802), .ID({ID}), .\data_out_frame[3][6] (\data_out_frame[3] [6]), 
         .\FRAME_MATCHER.i_31__N_2378 (\FRAME_MATCHER.i_31__N_2378 ), .\data_out_frame[3][4] (\data_out_frame[3] [4]), 
         .\data_out_frame[3][1] (\data_out_frame[3] [1]), .\data_out_frame[1][6] (\data_out_frame[1] [6]), 
         .\data_out_frame[1][5] (\data_out_frame[1] [5]), .\data_out_frame[1][1] (\data_out_frame[1] [1]), 
         .\data_out_frame[1][0] (\data_out_frame[1] [0]), .n8647(n8647), 
         .\data_in_frame[21][3] (\data_in_frame[21] [3]), .n30827(n30827), 
         .\FRAME_MATCHER.i_31__N_2383 (\FRAME_MATCHER.i_31__N_2383 ), .n17417(n17417), 
         .\data_in_frame[21][2] (\data_in_frame[21] [2]), .\data_in_frame[0] ({\data_in_frame[0] }), 
         .\data_in_frame[4][5] (\data_in_frame[4] [5]), .\data_in_frame[5][6] (\data_in_frame[5] [6]), 
         .rx_data({rx_data}), .n32020(n32020), .n15134(n15134), .\data_in_frame[4][3] (\data_in_frame[4] [3]), 
         .n15138(n15138), .\data_in_frame[4][4] (\data_in_frame[4] [4]), 
         .\data_out_frame[0][4] (\data_out_frame[0] [4]), .\data_in_frame[1][1] (\data_in_frame[1] [1]), 
         .n15142(n15142), .\data_in_frame[18][0] (\data_in_frame[18] [0]), 
         .n15403(n15403), .n15400(n15400), .\data_in_frame[18][2] (\data_in_frame[18] [2]), 
         .\data_out_frame[0][2] (\data_out_frame[0] [2]), .n15145(n15145), 
         .\data_in_frame[4][6] (\data_in_frame[4] [6]), .\data_in_frame[21][1] (\data_in_frame[21] [1]), 
         .\data_in_frame[21][0] (\data_in_frame[21] [0]), .n15396(n15396), 
         .n15393(n15393), .n15390(n15390), .n14177(n14177), .n15387(n15387), 
         .n15384(n15384), .n9490(n9490), .tx_active(tx_active), .n15152(n15152), 
         .\data_in_frame[4][7] (\data_in_frame[4] [7]), .n15158(n15158), 
         .\data_in_frame[5][1] (\data_in_frame[5] [1]), .n15161(n15161), 
         .\data_in_frame[5][2] (\data_in_frame[5] [2]), .n15379(n15379), 
         .\data_in_frame[5][3] (\data_in_frame[5] [3]), .n15175(n15175), 
         .\data_in_frame[5][4] (\data_in_frame[5] [4]), .n37344(n37344), 
         .n15184(n15184), .\data_in_frame[5][5] (\data_in_frame[5] [5]), 
         .n15188(n15188), .n15191(n15191), .\data_in_frame[5][7] (\data_in_frame[5] [7]), 
         .n15194(n15194), .n15208(n15208), .n15211(n15211), .n15222(n15222), 
         .n15226(n15226), .n15229(n15229), .n15232(n15232), .n15236(n15236), 
         .\data_out_frame[27] ({\data_out_frame[27] }), .\data_out_frame[26] ({\data_out_frame[26] }), 
         .n27889(n27889), .n30715(n30715), .\data_in_frame[2][0] (\data_in_frame[2] [0]), 
         .n14209(n14209), .n14172(n14172), .n14170(n14170), .n30225(n30225), 
         .n30209(n30209), .n30210(n30210), .n25464(n25464), .n14179(n14179), 
         .n15202(n15202), .n15201(n15201), .n15200(n15200), .n15197(n15197), 
         .n15183(n15183), .n15182(n15182), .n15181(n15181), .n15180(n15180), 
         .n15178(n15178), .n15174(n15174), .n15173(n15173), .n15167(n15167), 
         .n15166(n15166), .n15151(n15151), .n15150(n15150), .n15148(n15148), 
         .n15141(n15141), .n30211(n30211), .n30212(n30212), .n30207(n30207), 
         .n30216(n30216), .n30249(n30249), .n30204(n30204), .n30218(n30218), 
         .n30251(n30251), .n30219(n30219), .n30246(n30246), .n30220(n30220), 
         .n30221(n30221), .n30222(n30222), .n30223(n30223), .n30202(n30202), 
         .n16051(n16051), .n14709(n14709), .n30224(n30224), .n30206(n30206), 
         .n16054(n16054), .n14706(n14706), .n30226(n30226), .n16056(n16056), 
         .n14704(n14704), .n30214(n30214), .n30227(n30227), .n30228(n30228), 
         .n30229(n30229), .n30230(n30230), .n30231(n30231), .n30232(n30232), 
         .n30233(n30233), .n30234(n30234), .n30235(n30235), .n14693(n14693), 
         .n14692(n14692), .n30236(n30236), .n30237(n30237), .n14689(n14689), 
         .n14688(n14688), .n30238(n30238), .n30239(n30239), .n30240(n30240), 
         .n14684(n14684), .n30267(n30267), .n30215(n30215), .n30213(n30213), 
         .n30241(n30241), .n30242(n30242), .n30243(n30243), .n30244(n30244), 
         .n14676(n14676), .n30245(n30245), .n30203(n30203), .n30247(n30247), 
         .n30248(n30248), .n30205(n30205), .n16090(n16090), .n14670(n14670), 
         .n30250(n30250), .\data_in_frame[2][7] (\data_in_frame[2] [7]), 
         .n15127(n15127), .n15118(n15118), .n30217(n30217), .n30252(n30252), 
         .n30253(n30253), .n30254(n30254), .n30255(n30255), .n30256(n30256), 
         .n30257(n30257), .n30208(n30208), .n30258(n30258), .n30259(n30259), 
         .n30260(n30260), .n30261(n30261), .n30262(n30262), .n30263(n30263), 
         .n16106(n16106), .n14654(n14654), .n16107(n16107), .n14653(n14653), 
         .n30264(n30264), .n30265(n30265), .n30266(n30266), .n30284(n30284), 
         .n30285(n30285), .n30286(n30286), .n14646(n14646), .n30287(n30287), 
         .n30288(n30288), .n30289(n30289), .n30295(n30295), .n30290(n30290), 
         .n30291(n30291), .n30292(n30292), .n14638(n14638), .n30293(n30293), 
         .n30294(n30294), .n30283(n30283), .n30282(n30282), .n15912(n15912), 
         .\data_in_frame[2][3] (\data_in_frame[2] [3]), .LED_c(LED_c), .DE_c(DE_c), 
         .n14623(n14623), .n15905(n15905), .\data_in_frame[2][2] (\data_in_frame[2] [2]), 
         .n15899(n15899), .n15085(n15085), .\data_in_frame[2][5] (\data_in_frame[2] [5]), 
         .n15088(n15088), .\data_in_frame[2][6] (\data_in_frame[2] [6]), 
         .n15550(n15550), .n15553(n15553), .n15556(n15556), .n15559(n15559), 
         .n15091(n15091), .n15869(n15869), .n15866(n15866), .n15860(n15860), 
         .n15857(n15857), .n15854(n15854), .n15851(n15851), .n15848(n15848), 
         .n15845(n15845), .n15842(n15842), .n15839(n15839), .n29903(n29903), 
         .n15822(n15822), .\data_in_frame[22][2] (\data_in_frame[22] [2]), 
         .n15819(n15819), .\data_in_frame[22][1] (\data_in_frame[22] [1]), 
         .n15816(n15816), .\data_in_frame[22][0] (\data_in_frame[22] [0]), 
         .n29905(n29905), .n15804(n15804), .\data_in_frame[21][5] (\data_in_frame[21] [5]), 
         .n15795(n15795), .n15792(n15792), .n15789(n15789), .n15786(n15786), 
         .n15783(n15783), .n15094(n15094), .n15781(n15781), .n15777(n15777), 
         .n15774(n15774), .n15771(n15771), .n15768(n15768), .n15765(n15765), 
         .n15762(n15762), .n15759(n15759), .n15756(n15756), .n25503(n25503), 
         .n15729(n15729), .\data_in_frame[18][7] (\data_in_frame[18] [7]), 
         .n15726(n15726), .\data_in_frame[18][6] (\data_in_frame[18] [6]), 
         .n15562(n15562), .n15565(n15565), .n15568(n15568), .n15571(n15571), 
         .n15598(n15598), .n15711(n15711), .n15604(n15604), .n15607(n15607), 
         .n15610(n15610), .n15614(n15614), .n15618(n15618), .n15628(n15628), 
         .n15631(n15631), .n15637(n15637), .n15645(n15645), .\data_in_frame[18][3] (\data_in_frame[18] [3]), 
         .n15651(n15651), .n15097(n15097), .n15100(n15100), .n15103(n15103), 
         .n15106(n15106), .n15109(n15109), .n15112(n15112), .n15115(n15115), 
         .n15128(n15128), .n15131(n15131), .\data_in_frame[4][2] (\data_in_frame[4] [2]), 
         .n2773(n2773), .n15084(n15084), .n15083(n15083), .n12181(n12181), 
         .n31801(n31801), .n1(n1), .n30344(n30344), .n14203(n14203), 
         .n30334(n30334), .n9456(n9456), .n32412(n32412), .n31955(n31955), 
         .n6(n6_adj_4583), .n30383(n30383), .n26954(n26954), .n30737(n30737), 
         .n2520(n2520), .n30812(n30812), .n30724(n30724), .n31932(n31932), 
         .n30386(n30386), .n27167(n27167), .n6_adj_1(n6), .n11874(n11874), 
         .r_Clock_Count({r_Clock_Count_adj_4620}), .n20810(n20810), .r_SM_Main({r_SM_Main_adj_4619}), 
         .n31667(n31667), .n6_adj_2(n6_adj_4585), .n2859(n2859), .n29(n29), 
         .n23(n23), .\o_Rx_DV_N_3358[12] (o_Rx_DV_N_3358[12]), .\o_Rx_DV_N_3358[24] (o_Rx_DV_N_3358[24]), 
         .n27(n27), .tx_o(tx_o), .\r_SM_Main_2__N_3406[1] (r_SM_Main_2__N_3406[1]), 
         .n15137(n15137), .tx_enable(tx_enable), .r_Clock_Count_adj_15({r_Clock_Count}), 
         .baudrate({baudrate}), .r_SM_Main_adj_16({r_SM_Main}), .r_Rx_Data(r_Rx_Data), 
         .RX_N_2(RX_N_2), .\r_Bit_Index[0] (r_Bit_Index[0]), .n31807(n31807), 
         .n32960(n32960), .\r_SM_Main_2__N_3316[1] (r_SM_Main_2__N_3316[1]), 
         .\o_Rx_DV_N_3358[8] (o_Rx_DV_N_3358[8]), .\o_Rx_DV_N_3358[7] (o_Rx_DV_N_3358[7]), 
         .\o_Rx_DV_N_3358[6] (o_Rx_DV_N_3358[6]), .\o_Rx_DV_N_3358[5] (o_Rx_DV_N_3358[5]), 
         .n15362(n15362), .n15361(n15361), .n15360(n15360), .n15359(n15359), 
         .n15358(n15358), .n15357(n15357), .n15356(n15356), .\o_Rx_DV_N_3358[4] (o_Rx_DV_N_3358[4]), 
         .\o_Rx_DV_N_3358[3] (o_Rx_DV_N_3358[3]), .\o_Rx_DV_N_3358[2] (o_Rx_DV_N_3358[2]), 
         .n13594(n13594), .\o_Rx_DV_N_3358[1] (o_Rx_DV_N_3358[1]), .n31122(n31122), 
         .\o_Rx_DV_N_3358[0] (o_Rx_DV_N_3358[0]), .n15900(n15900), .n28009(n28009), 
         .n15875(n15875), .n11389(n11389), .n2856(n2856), .n30308(n30308), 
         .n6_adj_14(n6_adj_4548), .n33248(n33248), .n33232(n33232), .n33302(n33302), 
         .n33322(n33322), .n33214(n33214), .n33250(n33250), .n13431(n13431), 
         .n33286(n33286), .n33304(n33304), .n4(n4_adj_4552)) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(90[22] 115[4])
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1687 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [6]), 
            .O(n30252));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1687.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1688 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [7]), 
            .O(n30253));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1688.LUT_INIT = 16'h2300;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32632 (.I0(bit_ctr[0]), .I1(neopxl_color[14]), 
            .I2(neopxl_color[15]), .I3(color_bit_N_423[2]), .O(n37281));
    defparam bit_ctr_0__bdd_4_lut_32632.LUT_INIT = 16'he4aa;
    SB_LUT4 n37281_bdd_4_lut (.I0(n37281), .I1(neopxl_color[11]), .I2(neopxl_color[10]), 
            .I3(color_bit_N_423[2]), .O(n37284));
    defparam n37281_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1689 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [0]), 
            .O(n30254));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1689.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1690 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [1]), 
            .O(n30255));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1690.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_3_lut (.I0(state_adj_4614[2]), .I1(state_adj_4614[0]), 
            .I2(state_adj_4614[1]), .I3(GND_net), .O(n7_adj_4566));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_1691 (.I0(state_adj_4614[0]), .I1(state_adj_4614[1]), 
            .I2(state_adj_4614[2]), .I3(GND_net), .O(n4_adj_4572));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut_3_lut_adj_1691.LUT_INIT = 16'h1010;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1692 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [2]), 
            .O(n30256));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1692.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1693 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [3]), 
            .O(n30257));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1693.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1694 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [4]), 
            .O(n30208));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1694.LUT_INIT = 16'h2300;
    SB_LUT4 i3_4_lut_adj_1695 (.I0(\data_out_frame[13] [6]), .I1(n30812), 
            .I2(n30576), .I3(n9456), .O(n27802));
    defparam i3_4_lut_adj_1695.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1696 (.I0(\data_out_frame[13] [7]), .I1(n30620), 
            .I2(GND_net), .I3(GND_net), .O(n30812));
    defparam i1_2_lut_adj_1696.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1697 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [5]), 
            .O(n30258));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1697.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_adj_1698 (.I0(\data_out_frame[24] [2]), .I1(\data_out_frame[24] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30827));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1698.LUT_INIT = 16'h6666;
    \neopixel(CLOCK_SPEED_HZ=16000000)  nx (.timer({timer}), .GND_net(GND_net), 
            .\neo_pixel_transmitter.done (\neo_pixel_transmitter.done ), .clk16MHz(clk16MHz), 
            .VCC_net(VCC_net), .\neo_pixel_transmitter.t0 ({\neo_pixel_transmitter.t0 }), 
            .\state[1] (state[1]), .n31136(n31136), .\state[0] (state[0]), 
            .\color_bit_N_423[2] (color_bit_N_423[2]), .n14(n14_adj_4573), 
            .\state_3__N_229[1] (state_3__N_229[1]), .\one_wire_N_380[8] (one_wire_N_380[8]), 
            .\one_wire_N_380[10] (one_wire_N_380[10]), .\one_wire_N_380[9] (one_wire_N_380[9]), 
            .n22418(n22418), .n31081(n31081), .n13383(n13383), .\bit_ctr[0] (bit_ctr[0]), 
            .n31830(n31830), .start(start), .LED_c(LED_c), .\one_wire_N_380[5] (one_wire_N_380[5]), 
            .\one_wire_N_380[4] (one_wire_N_380[4]), .\one_wire_N_380[7] (one_wire_N_380[7]), 
            .\one_wire_N_380[6] (one_wire_N_380[6]), .\color_bit_N_423[1] (color_bit_N_423[1]), 
            .\neopxl_color[22] (neopxl_color[22]), .\neopxl_color[23] (neopxl_color[23]), 
            .\neopxl_color[5] (neopxl_color[5]), .\neopxl_color[4] (neopxl_color[4]), 
            .\neopxl_color[17] (neopxl_color[17]), .\neopxl_color[16] (neopxl_color[16]), 
            .\neopxl_color[1] (neopxl_color[1]), .\neopxl_color[0] (neopxl_color[0]), 
            .n15187(n15187), .n15165(n15165), .n15705(n15705), .n15704(n15704), 
            .n15703(n15703), .n15702(n15702), .n15701(n15701), .n15700(n15700), 
            .n15699(n15699), .n15698(n15698), .n15697(n15697), .n15696(n15696), 
            .n15695(n15695), .n15694(n15694), .n15693(n15693), .n15692(n15692), 
            .n15690(n15690), .n15689(n15689), .n15688(n15688), .n15687(n15687), 
            .n15686(n15686), .n15685(n15685), .n15684(n15684), .n15683(n15683), 
            .n15682(n15682), .n15681(n15681), .n15680(n15680), .n15679(n15679), 
            .n15678(n15678), .n15677(n15677), .n15676(n15676), .n15675(n15675), 
            .n15673(n15673), .n29597(n29597), .NEOPXL_c(NEOPXL_c), .n31935(n31935), 
            .\neopxl_color[2] (neopxl_color[2]), .\neopxl_color[3] (neopxl_color[3]), 
            .\neopxl_color[18] (neopxl_color[18]), .\neopxl_color[19] (neopxl_color[19]), 
            .\neopxl_color[6] (neopxl_color[6]), .\neopxl_color[7] (neopxl_color[7]), 
            .\neopxl_color[21] (neopxl_color[21]), .\neopxl_color[20] (neopxl_color[20])) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B.v(51[24] 57[2])
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1699 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [6]), 
            .O(n30259));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1699.LUT_INIT = 16'h2300;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1700 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[24] [7]), 
            .O(n30260));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1700.LUT_INIT = 16'h2300;
    SB_LUT4 i2_4_lut_adj_1701 (.I0(\data_out_frame[5] [2]), .I1(n11864), 
            .I2(\data_out_frame[5] [3]), .I3(\data_out_frame[14] [0]), .O(n30576));   // verilog/coms.v(100[12:26])
    defparam i2_4_lut_adj_1701.LUT_INIT = 16'h6996;
    SB_LUT4 i11904_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [4]), 
            .O(n16107));   // verilog/coms.v(130[12] 305[6])
    defparam i11904_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11903_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [3]), 
            .O(n16106));   // verilog/coms.v(130[12] 305[6])
    defparam i11903_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3_4_lut_adj_1702 (.I0(n11874), .I1(n27167), .I2(\data_out_frame[13] [7]), 
            .I3(n30576), .O(n9490));   // verilog/coms.v(100[12:26])
    defparam i3_4_lut_adj_1702.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_4_lut_adj_1703 (.I0(\FRAME_MATCHER.state [3]), 
            .I1(reset), .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[25] [0]), 
            .O(n30261));   // verilog/TinyFPGA_B.v(150[10] 180[6])
    defparam i1_2_lut_4_lut_4_lut_adj_1703.LUT_INIT = 16'h2300;
    SB_LUT4 i11887_2_lut_2_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.state [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(\data_out_frame[23] [3]), 
            .O(n16090));   // verilog/coms.v(130[12] 305[6])
    defparam i11887_2_lut_2_lut_4_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_4_lut_adj_1704 (.I0(\ID_READOUT_FSM.state [0]), .I1(\ID_READOUT_FSM.state [1]), 
            .I2(read_N_122), .I3(n1397), .O(n25));   // verilog/TinyFPGA_B.v(168[7:11])
    defparam i1_4_lut_4_lut_adj_1704.LUT_INIT = 16'h5450;
    
endmodule
//
// Verilog Description of module EEPROM
//

module EEPROM (GND_net, clk16MHz, enable_slow_N_3927, n3200, \state[2] , 
            \state[0] , \state[1] , read, n15318, baudrate, n15316, 
            n15309, n15281, \state[0]_adj_18 , ID, n15218, n15217, 
            n15216, n15215, n15214, n15207, n15206, n15205, n15204, 
            n15203, n15199, n15198, n15126, rw, n29853, data_ready, 
            data, n32620, n15910, VCC_net, n15898, n15897, n15891, 
            n15890, n15886, n15878, n15877, n15872, n32618, n15825, 
            n15780, n15717, n15691, n15672, n31899, n15663, n15659, 
            n15656, n30356, n30357, n4, n32365, n24581, scl_enable, 
            \state_7__N_3824[0] , \saved_addr[0] , \state_7__N_3840[3] , 
            n4091, n15374, n15372, n15371, n15370, n15369, n15367, 
            n15366, n8, n15832, sda_enable, n15081, n22038, scl, 
            n10, n4_adj_19, n4_adj_20, n11342, n11337, n22110, n6, 
            sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input clk16MHz;
    output enable_slow_N_3927;
    output [0:0]n3200;
    output \state[2] ;
    output \state[0] ;
    output \state[1] ;
    input read;
    input n15318;
    output [31:0]baudrate;
    input n15316;
    input n15309;
    input n15281;
    output \state[0]_adj_18 ;
    output [7:0]ID;
    input n15218;
    input n15217;
    input n15216;
    input n15215;
    input n15214;
    input n15207;
    input n15206;
    input n15205;
    input n15204;
    input n15203;
    input n15199;
    input n15198;
    input n15126;
    output rw;
    input n29853;
    output data_ready;
    output [7:0]data;
    output n32620;
    input n15910;
    input VCC_net;
    input n15898;
    input n15897;
    input n15891;
    input n15890;
    input n15886;
    input n15878;
    input n15877;
    input n15872;
    output n32618;
    input n15825;
    input n15780;
    input n15717;
    input n15691;
    input n15672;
    output n31899;
    input n15663;
    input n15659;
    input n15656;
    output n30356;
    output n30357;
    output n4;
    output n32365;
    output n24581;
    output scl_enable;
    output \state_7__N_3824[0] ;
    output \saved_addr[0] ;
    input \state_7__N_3840[3] ;
    output n4091;
    input n15374;
    input n15372;
    input n15371;
    input n15370;
    input n15369;
    input n15367;
    input n15366;
    input n8;
    input n15832;
    output sda_enable;
    input n15081;
    output n22038;
    output scl;
    output n10;
    output n4_adj_19;
    output n4_adj_20;
    output n11342;
    output n11337;
    output n22110;
    output n6;
    output sda_out;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [31:0]n133;
    wire [31:0]byte_counter;   // verilog/eeprom.v(30[9:21])
    
    wire n26500, n26499, n26498, n26497, n26496, n26495, n26494, 
        n26493, n26492, n26491, n26490, n26489, n26488, n26487, 
        n26486, n26485, n26484, n26483, n26482, n26481, n26480, 
        n26479, n26478, n26477, n26476, n26475, n26474, n26473, 
        n26472, n26471, n26470, n119, n13516, n14748, ready_prev, 
        enable;
    wire [15:0]delay_counter_15__N_3670;
    wire [15:0]delay_counter;   // verilog/eeprom.v(28[12:25])
    wire [15:0]n2935;
    
    wire n26094, n11223, n6_c, n26093, n26092, n26091, n28, n26, 
        n27, n25, n26090, n4204, n26089, n24590, n4203, n26088, 
        n4202, n26087, n4201, n26086, n4200, n26085, n26084;
    wire [7:0]n3105;
    
    wire data_ready_N_3742;
    wire [7:0]state_7__N_3512;
    
    wire n32405, n4198, n26083, n24587, n13407, n26082;
    wire [7:0]state;   // verilog/i2c_controller.v(33[12:17])
    
    wire n33774, n26081, n15225, n15221, n15220, n15219, n26080, 
        n15123, n30330, n15657, n15661, n15662, n30305, n32074, 
        n24603, n30, n4_c, n35525, n11347, n32363, n4_adj_4543, 
        n32, n46, n50, n48, n49, n47, n52, n56, n51;
    
    SB_LUT4 byte_counter_1112_add_4_33_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[31]), .I3(n26500), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 byte_counter_1112_add_4_32_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[30]), .I3(n26499), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_32 (.CI(n26499), .I0(GND_net), .I1(byte_counter[30]), 
            .CO(n26500));
    SB_LUT4 byte_counter_1112_add_4_31_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[29]), .I3(n26498), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_31 (.CI(n26498), .I0(GND_net), .I1(byte_counter[29]), 
            .CO(n26499));
    SB_LUT4 byte_counter_1112_add_4_30_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[28]), .I3(n26497), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_30 (.CI(n26497), .I0(GND_net), .I1(byte_counter[28]), 
            .CO(n26498));
    SB_LUT4 byte_counter_1112_add_4_29_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[27]), .I3(n26496), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_29 (.CI(n26496), .I0(GND_net), .I1(byte_counter[27]), 
            .CO(n26497));
    SB_LUT4 byte_counter_1112_add_4_28_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[26]), .I3(n26495), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_28 (.CI(n26495), .I0(GND_net), .I1(byte_counter[26]), 
            .CO(n26496));
    SB_LUT4 byte_counter_1112_add_4_27_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[25]), .I3(n26494), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_27 (.CI(n26494), .I0(GND_net), .I1(byte_counter[25]), 
            .CO(n26495));
    SB_LUT4 byte_counter_1112_add_4_26_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[24]), .I3(n26493), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_26 (.CI(n26493), .I0(GND_net), .I1(byte_counter[24]), 
            .CO(n26494));
    SB_LUT4 byte_counter_1112_add_4_25_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[23]), .I3(n26492), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_25 (.CI(n26492), .I0(GND_net), .I1(byte_counter[23]), 
            .CO(n26493));
    SB_LUT4 byte_counter_1112_add_4_24_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[22]), .I3(n26491), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_24 (.CI(n26491), .I0(GND_net), .I1(byte_counter[22]), 
            .CO(n26492));
    SB_LUT4 byte_counter_1112_add_4_23_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[21]), .I3(n26490), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_23 (.CI(n26490), .I0(GND_net), .I1(byte_counter[21]), 
            .CO(n26491));
    SB_LUT4 byte_counter_1112_add_4_22_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[20]), .I3(n26489), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_22 (.CI(n26489), .I0(GND_net), .I1(byte_counter[20]), 
            .CO(n26490));
    SB_LUT4 byte_counter_1112_add_4_21_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[19]), .I3(n26488), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_21 (.CI(n26488), .I0(GND_net), .I1(byte_counter[19]), 
            .CO(n26489));
    SB_LUT4 byte_counter_1112_add_4_20_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[18]), .I3(n26487), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_20 (.CI(n26487), .I0(GND_net), .I1(byte_counter[18]), 
            .CO(n26488));
    SB_LUT4 byte_counter_1112_add_4_19_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[17]), .I3(n26486), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_19 (.CI(n26486), .I0(GND_net), .I1(byte_counter[17]), 
            .CO(n26487));
    SB_LUT4 byte_counter_1112_add_4_18_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[16]), .I3(n26485), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_18 (.CI(n26485), .I0(GND_net), .I1(byte_counter[16]), 
            .CO(n26486));
    SB_LUT4 byte_counter_1112_add_4_17_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[15]), .I3(n26484), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_17 (.CI(n26484), .I0(GND_net), .I1(byte_counter[15]), 
            .CO(n26485));
    SB_LUT4 byte_counter_1112_add_4_16_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[14]), .I3(n26483), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_16 (.CI(n26483), .I0(GND_net), .I1(byte_counter[14]), 
            .CO(n26484));
    SB_LUT4 byte_counter_1112_add_4_15_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[13]), .I3(n26482), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_15 (.CI(n26482), .I0(GND_net), .I1(byte_counter[13]), 
            .CO(n26483));
    SB_LUT4 byte_counter_1112_add_4_14_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[12]), .I3(n26481), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_14 (.CI(n26481), .I0(GND_net), .I1(byte_counter[12]), 
            .CO(n26482));
    SB_LUT4 byte_counter_1112_add_4_13_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[11]), .I3(n26480), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_13 (.CI(n26480), .I0(GND_net), .I1(byte_counter[11]), 
            .CO(n26481));
    SB_LUT4 byte_counter_1112_add_4_12_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[10]), .I3(n26479), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_12 (.CI(n26479), .I0(GND_net), .I1(byte_counter[10]), 
            .CO(n26480));
    SB_LUT4 byte_counter_1112_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[9]), .I3(n26478), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_11 (.CI(n26478), .I0(GND_net), .I1(byte_counter[9]), 
            .CO(n26479));
    SB_LUT4 byte_counter_1112_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(byte_counter[8]), .I3(n26477), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_10 (.CI(n26477), .I0(GND_net), .I1(byte_counter[8]), 
            .CO(n26478));
    SB_LUT4 byte_counter_1112_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[7]), 
            .I3(n26476), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_9 (.CI(n26476), .I0(GND_net), .I1(byte_counter[7]), 
            .CO(n26477));
    SB_LUT4 byte_counter_1112_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[6]), 
            .I3(n26475), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_8 (.CI(n26475), .I0(GND_net), .I1(byte_counter[6]), 
            .CO(n26476));
    SB_LUT4 byte_counter_1112_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[5]), 
            .I3(n26474), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_7 (.CI(n26474), .I0(GND_net), .I1(byte_counter[5]), 
            .CO(n26475));
    SB_LUT4 byte_counter_1112_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[4]), 
            .I3(n26473), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_6 (.CI(n26473), .I0(GND_net), .I1(byte_counter[4]), 
            .CO(n26474));
    SB_LUT4 byte_counter_1112_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[3]), 
            .I3(n26472), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_5 (.CI(n26472), .I0(GND_net), .I1(byte_counter[3]), 
            .CO(n26473));
    SB_LUT4 byte_counter_1112_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[2]), 
            .I3(n26471), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_4 (.CI(n26471), .I0(GND_net), .I1(byte_counter[2]), 
            .CO(n26472));
    SB_LUT4 byte_counter_1112_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(byte_counter[1]), 
            .I3(n26470), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_3 (.CI(n26470), .I0(GND_net), .I1(byte_counter[1]), 
            .CO(n26471));
    SB_LUT4 byte_counter_1112_add_4_2_lut (.I0(GND_net), .I1(n119), .I2(byte_counter[0]), 
            .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam byte_counter_1112_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY byte_counter_1112_add_4_2 (.CI(GND_net), .I0(n119), .I1(byte_counter[0]), 
            .CO(n26470));
    SB_DFFESR byte_counter_1112__i0 (.Q(byte_counter[0]), .C(clk16MHz), 
            .E(n13516), .D(n133[0]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFF ready_prev_59 (.Q(ready_prev), .C(clk16MHz), .D(enable_slow_N_3927));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFSR enable_58 (.Q(enable), .C(clk16MHz), .D(n3200[0]), .R(\state[2] ));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_677_17_lut (.I0(GND_net), .I1(delay_counter[15]), .I2(n2935[7]), 
            .I3(n26094), .O(delay_counter_15__N_3670[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32502_2_lut (.I0(n11223), .I1(enable_slow_N_3927), .I2(GND_net), 
            .I3(GND_net), .O(n2935[7]));   // verilog/eeprom.v(59[18] 61[12])
    defparam i32502_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR byte_counter_1112__i1 (.Q(byte_counter[1]), .C(clk16MHz), 
            .E(n13516), .D(n133[1]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i2 (.Q(byte_counter[2]), .C(clk16MHz), 
            .E(n13516), .D(n133[2]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i3 (.Q(byte_counter[3]), .C(clk16MHz), 
            .E(n13516), .D(n133[3]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i4 (.Q(byte_counter[4]), .C(clk16MHz), 
            .E(n13516), .D(n133[4]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i5 (.Q(byte_counter[5]), .C(clk16MHz), 
            .E(n13516), .D(n133[5]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i6 (.Q(byte_counter[6]), .C(clk16MHz), 
            .E(n13516), .D(n133[6]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i7 (.Q(byte_counter[7]), .C(clk16MHz), 
            .E(n13516), .D(n133[7]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 equal_107_i6_2_lut (.I0(byte_counter[2]), .I1(byte_counter[3]), 
            .I2(GND_net), .I3(GND_net), .O(n6_c));   // verilog/eeprom.v(66[9:28])
    defparam equal_107_i6_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESR byte_counter_1112__i8 (.Q(byte_counter[8]), .C(clk16MHz), 
            .E(n13516), .D(n133[8]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i9 (.Q(byte_counter[9]), .C(clk16MHz), 
            .E(n13516), .D(n133[9]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i10 (.Q(byte_counter[10]), .C(clk16MHz), 
            .E(n13516), .D(n133[10]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i11 (.Q(byte_counter[11]), .C(clk16MHz), 
            .E(n13516), .D(n133[11]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i12 (.Q(byte_counter[12]), .C(clk16MHz), 
            .E(n13516), .D(n133[12]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i13 (.Q(byte_counter[13]), .C(clk16MHz), 
            .E(n13516), .D(n133[13]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i14 (.Q(byte_counter[14]), .C(clk16MHz), 
            .E(n13516), .D(n133[14]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_677_16_lut (.I0(GND_net), .I1(delay_counter[14]), .I2(n2935[7]), 
            .I3(n26093), .O(delay_counter_15__N_3670[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_16 (.CI(n26093), .I0(delay_counter[14]), .I1(n2935[7]), 
            .CO(n26094));
    SB_LUT4 add_677_15_lut (.I0(GND_net), .I1(delay_counter[13]), .I2(n2935[7]), 
            .I3(n26092), .O(delay_counter_15__N_3670[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_15 (.CI(n26092), .I0(delay_counter[13]), .I1(n2935[7]), 
            .CO(n26093));
    SB_DFFESR byte_counter_1112__i15 (.Q(byte_counter[15]), .C(clk16MHz), 
            .E(n13516), .D(n133[15]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_677_14_lut (.I0(GND_net), .I1(delay_counter[12]), .I2(n2935[7]), 
            .I3(n26091), .O(delay_counter_15__N_3670[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR byte_counter_1112__i16 (.Q(byte_counter[16]), .C(clk16MHz), 
            .E(n13516), .D(n133[16]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i17 (.Q(byte_counter[17]), .C(clk16MHz), 
            .E(n13516), .D(n133[17]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i18 (.Q(byte_counter[18]), .C(clk16MHz), 
            .E(n13516), .D(n133[18]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i19 (.Q(byte_counter[19]), .C(clk16MHz), 
            .E(n13516), .D(n133[19]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_677_14 (.CI(n26091), .I0(delay_counter[12]), .I1(n2935[7]), 
            .CO(n26092));
    SB_DFFESR byte_counter_1112__i20 (.Q(byte_counter[20]), .C(clk16MHz), 
            .E(n13516), .D(n133[20]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i21 (.Q(byte_counter[21]), .C(clk16MHz), 
            .E(n13516), .D(n133[21]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i22 (.Q(byte_counter[22]), .C(clk16MHz), 
            .E(n13516), .D(n133[22]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i23 (.Q(byte_counter[23]), .C(clk16MHz), 
            .E(n13516), .D(n133[23]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i24 (.Q(byte_counter[24]), .C(clk16MHz), 
            .E(n13516), .D(n133[24]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i25 (.Q(byte_counter[25]), .C(clk16MHz), 
            .E(n13516), .D(n133[25]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 i12_4_lut (.I0(delay_counter[6]), .I1(delay_counter[10]), .I2(delay_counter[12]), 
            .I3(delay_counter[8]), .O(n28));   // verilog/eeprom.v(55[12:28])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR byte_counter_1112__i26 (.Q(byte_counter[26]), .C(clk16MHz), 
            .E(n13516), .D(n133[26]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 i10_4_lut (.I0(delay_counter[11]), .I1(delay_counter[2]), .I2(delay_counter[7]), 
            .I3(delay_counter[5]), .O(n26));   // verilog/eeprom.v(55[12:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(delay_counter[15]), .I1(delay_counter[3]), .I2(delay_counter[14]), 
            .I3(delay_counter[1]), .O(n27));   // verilog/eeprom.v(55[12:28])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(delay_counter[4]), .I1(delay_counter[9]), .I2(delay_counter[13]), 
            .I3(delay_counter[0]), .O(n25));   // verilog/eeprom.v(55[12:28])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n11223));   // verilog/eeprom.v(55[12:28])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_769_Mux_0_i3_4_lut (.I0(\state[0] ), .I1(n11223), .I2(\state[1] ), 
            .I3(enable_slow_N_3927), .O(n3200[0]));   // verilog/eeprom.v(38[3] 82[10])
    defparam mux_769_Mux_0_i3_4_lut.LUT_INIT = 16'h1a0a;
    SB_LUT4 add_677_13_lut (.I0(GND_net), .I1(delay_counter[11]), .I2(n2935[7]), 
            .I3(n26090), .O(delay_counter_15__N_3670[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_13 (.CI(n26090), .I0(delay_counter[11]), .I1(n2935[7]), 
            .CO(n26091));
    SB_LUT4 i10574_4_lut (.I0(n13516), .I1(\state[0] ), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n14748));   // verilog/eeprom.v(68[25:39])
    defparam i10574_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i1_4_lut (.I0(\state[2] ), .I1(read), .I2(\state[1] ), .I3(\state[0] ), 
            .O(n13516));
    defparam i1_4_lut.LUT_INIT = 16'h5004;
    SB_LUT4 add_677_12_lut (.I0(n24590), .I1(delay_counter[10]), .I2(n2935[7]), 
            .I3(n26089), .O(n4204)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_12_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1112__i27 (.Q(byte_counter[27]), .C(clk16MHz), 
            .E(n13516), .D(n133[27]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_677_12 (.CI(n26089), .I0(delay_counter[10]), .I1(n2935[7]), 
            .CO(n26090));
    SB_LUT4 add_677_11_lut (.I0(n24590), .I1(delay_counter[9]), .I2(n2935[7]), 
            .I3(n26088), .O(n4203)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_677_11 (.CI(n26088), .I0(delay_counter[9]), .I1(n2935[7]), 
            .CO(n26089));
    SB_LUT4 add_677_10_lut (.I0(n24590), .I1(delay_counter[8]), .I2(n2935[7]), 
            .I3(n26087), .O(n4202)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_677_10 (.CI(n26087), .I0(delay_counter[8]), .I1(n2935[7]), 
            .CO(n26088));
    SB_LUT4 add_677_9_lut (.I0(n24590), .I1(delay_counter[7]), .I2(n2935[7]), 
            .I3(n26086), .O(n4201)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_9_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1112__i28 (.Q(byte_counter[28]), .C(clk16MHz), 
            .E(n13516), .D(n133[28]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_677_9 (.CI(n26086), .I0(delay_counter[7]), .I1(n2935[7]), 
            .CO(n26087));
    SB_DFFESR byte_counter_1112__i29 (.Q(byte_counter[29]), .C(clk16MHz), 
            .E(n13516), .D(n133[29]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_LUT4 add_677_8_lut (.I0(n24590), .I1(delay_counter[6]), .I2(n2935[7]), 
            .I3(n26085), .O(n4200)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_8_lut.LUT_INIT = 16'h8228;
    SB_DFFESR byte_counter_1112__i30 (.Q(byte_counter[30]), .C(clk16MHz), 
            .E(n13516), .D(n133[30]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_DFFESR byte_counter_1112__i31 (.Q(byte_counter[31]), .C(clk16MHz), 
            .E(n13516), .D(n133[31]), .R(n14748));   // verilog/eeprom.v(68[25:39])
    SB_CARRY add_677_8 (.CI(n26085), .I0(delay_counter[6]), .I1(n2935[7]), 
            .CO(n26086));
    SB_LUT4 add_677_7_lut (.I0(GND_net), .I1(delay_counter[5]), .I2(n2935[7]), 
            .I3(n26084), .O(delay_counter_15__N_3670[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_7 (.CI(n26084), .I0(delay_counter[5]), .I1(n2935[7]), 
            .CO(n26085));
    SB_DFFSR state_i2 (.Q(\state[2] ), .C(clk16MHz), .D(n3105[2]), .R(data_ready_N_3742));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFE state_i1 (.Q(\state[1] ), .C(clk16MHz), .E(n32405), .D(state_7__N_3512[1]));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i37 (.Q(baudrate[28]), .C(clk16MHz), .D(n15318));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_677_6_lut (.I0(n24590), .I1(delay_counter[4]), .I2(n2935[7]), 
            .I3(n26083), .O(n4198)) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_6_lut.LUT_INIT = 16'h8228;
    SB_DFF bytes_0___i38 (.Q(baudrate[29]), .C(clk16MHz), .D(n15316));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i39 (.Q(baudrate[30]), .C(clk16MHz), .D(n15309));   // verilog/eeprom.v(35[8] 83[4])
    SB_CARRY add_677_6 (.CI(n26083), .I0(delay_counter[4]), .I1(n2935[7]), 
            .CO(n26084));
    SB_LUT4 i1_3_lut_4_lut (.I0(\state[0] ), .I1(n24587), .I2(\state[1] ), 
            .I3(\state[2] ), .O(n13407));   // verilog/eeprom.v(27[11:16])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hccdc;
    SB_LUT4 add_677_5_lut (.I0(GND_net), .I1(delay_counter[3]), .I2(n2935[7]), 
            .I3(n26082), .O(delay_counter_15__N_3670[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_5 (.CI(n26082), .I0(delay_counter[3]), .I1(n2935[7]), 
            .CO(n26083));
    SB_DFF bytes_0___i40 (.Q(baudrate[31]), .C(clk16MHz), .D(n15281));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i32482_2_lut_3_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(GND_net), .O(data_ready_N_3742));   // verilog/eeprom.v(71[5:15])
    defparam i32482_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i29130_2_lut_3_lut (.I0(\state[0]_adj_18 ), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(n33774));
    defparam i29130_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 add_677_4_lut (.I0(GND_net), .I1(delay_counter[2]), .I2(n2935[7]), 
            .I3(n26081), .O(delay_counter_15__N_3670[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_4 (.CI(n26081), .I0(delay_counter[2]), .I1(n2935[7]), 
            .CO(n26082));
    SB_DFF bytes_0___i5 (.Q(ID[4]), .C(clk16MHz), .D(n15225));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i6 (.Q(ID[5]), .C(clk16MHz), .D(n15221));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i7 (.Q(ID[6]), .C(clk16MHz), .D(n15220));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i8 (.Q(ID[7]), .C(clk16MHz), .D(n15219));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i9 (.Q(baudrate[0]), .C(clk16MHz), .D(n15218));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i10 (.Q(baudrate[1]), .C(clk16MHz), .D(n15217));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i11 (.Q(baudrate[2]), .C(clk16MHz), .D(n15216));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i12 (.Q(baudrate[3]), .C(clk16MHz), .D(n15215));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i13 (.Q(baudrate[4]), .C(clk16MHz), .D(n15214));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i14 (.Q(baudrate[5]), .C(clk16MHz), .D(n15207));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i15 (.Q(baudrate[6]), .C(clk16MHz), .D(n15206));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i16 (.Q(baudrate[7]), .C(clk16MHz), .D(n15205));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i17 (.Q(baudrate[8]), .C(clk16MHz), .D(n15204));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i18 (.Q(baudrate[9]), .C(clk16MHz), .D(n15203));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i19 (.Q(baudrate[10]), .C(clk16MHz), .D(n15199));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i20 (.Q(baudrate[11]), .C(clk16MHz), .D(n15198));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_677_3_lut (.I0(GND_net), .I1(delay_counter[1]), .I2(n2935[7]), 
            .I3(n26080), .O(delay_counter_15__N_3670[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_677_3 (.CI(n26080), .I0(delay_counter[1]), .I1(n2935[7]), 
            .CO(n26081));
    SB_DFF rw_64 (.Q(rw), .C(clk16MHz), .D(n15126));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF data_ready_61 (.Q(data_ready), .C(clk16MHz), .D(n29853));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i1 (.Q(ID[0]), .C(clk16MHz), .D(n15123));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i11454_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[3]), 
            .I3(ID[3]), .O(n15657));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11454_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11458_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[2]), 
            .I3(ID[2]), .O(n15661));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11458_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11459_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[1]), 
            .I3(ID[1]), .O(n15662));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11459_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut (.I0(\state[1] ), .I1(\state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n30305));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i10920_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[0]), 
            .I3(ID[0]), .O(n15123));   // verilog/eeprom.v(35[8] 83[4])
    defparam i10920_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11016_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[7]), 
            .I3(ID[7]), .O(n15219));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11016_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFESR delay_counter_i0_i1 (.Q(delay_counter[1]), .C(clk16MHz), .E(n13407), 
            .D(delay_counter_15__N_3670[1]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 add_677_2_lut (.I0(GND_net), .I1(delay_counter[0]), .I2(n2935[7]), 
            .I3(GND_net), .O(delay_counter_15__N_3670[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_677_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_4_lut (.I0(\state[0] ), .I1(n30305), .I2(ready_prev), .I3(n32620), 
            .O(n32074));
    defparam i3_4_lut.LUT_INIT = 16'h0008;
    SB_DFFE state_i0 (.Q(\state[0] ), .C(clk16MHz), .E(VCC_net), .D(n15910));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i21 (.Q(baudrate[12]), .C(clk16MHz), .D(n15898));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i22 (.Q(baudrate[13]), .C(clk16MHz), .D(n15897));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i23 (.Q(baudrate[14]), .C(clk16MHz), .D(n15891));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i24 (.Q(baudrate[15]), .C(clk16MHz), .D(n15890));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i25 (.Q(baudrate[16]), .C(clk16MHz), .D(n15886));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i26 (.Q(baudrate[17]), .C(clk16MHz), .D(n15878));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i27 (.Q(baudrate[18]), .C(clk16MHz), .D(n15877));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i28 (.Q(baudrate[19]), .C(clk16MHz), .D(n15872));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i11017_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[6]), 
            .I3(ID[6]), .O(n15220));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11017_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut (.I0(byte_counter[2]), .I1(n30330), .I2(byte_counter[3]), 
            .I3(GND_net), .O(n32618));   // verilog/eeprom.v(35[8] 83[4])
    defparam i2_3_lut.LUT_INIT = 16'hfdfd;
    SB_DFF bytes_0___i29 (.Q(baudrate[20]), .C(clk16MHz), .D(n15825));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i11018_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[5]), 
            .I3(ID[5]), .O(n15221));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11018_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11022_3_lut_4_lut (.I0(n6_c), .I1(n30330), .I2(data[4]), 
            .I3(ID[4]), .O(n15225));   // verilog/eeprom.v(35[8] 83[4])
    defparam i11022_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY add_677_2 (.CI(GND_net), .I0(delay_counter[0]), .I1(n2935[7]), 
            .CO(n26080));
    SB_DFF bytes_0___i30 (.Q(baudrate[21]), .C(clk16MHz), .D(n15780));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i31 (.Q(baudrate[22]), .C(clk16MHz), .D(n15717));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i32 (.Q(baudrate[23]), .C(clk16MHz), .D(n15691));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i33 (.Q(baudrate[24]), .C(clk16MHz), .D(n15672));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i3_3_lut_4_lut (.I0(n32074), .I1(n6_c), .I2(byte_counter[0]), 
            .I3(byte_counter[1]), .O(n31899));   // verilog/eeprom.v(66[9:28])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFF bytes_0___i34 (.Q(baudrate[25]), .C(clk16MHz), .D(n15663));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i2 (.Q(ID[1]), .C(clk16MHz), .D(n15662));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i3 (.Q(ID[2]), .C(clk16MHz), .D(n15661));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i35 (.Q(baudrate[26]), .C(clk16MHz), .D(n15659));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i4 (.Q(ID[3]), .C(clk16MHz), .D(n15657));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFF bytes_0___i36 (.Q(baudrate[27]), .C(clk16MHz), .D(n15656));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n32074), .I1(n6_c), .I2(byte_counter[0]), 
            .I3(byte_counter[1]), .O(n30356));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1552 (.I0(n32074), .I1(n6_c), .I2(byte_counter[0]), 
            .I3(byte_counter[1]), .O(n30357));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_3_lut_4_lut_adj_1552.LUT_INIT = 16'hdfff;
    SB_DFFESR delay_counter_i0_i2 (.Q(delay_counter[2]), .C(clk16MHz), .E(n13407), 
            .D(delay_counter_15__N_3670[2]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i3 (.Q(delay_counter[3]), .C(clk16MHz), .E(n13407), 
            .D(delay_counter_15__N_3670[3]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i4 (.Q(delay_counter[4]), .C(clk16MHz), .E(n13407), 
            .D(n4198), .S(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i5 (.Q(delay_counter[5]), .C(clk16MHz), .E(n13407), 
            .D(delay_counter_15__N_3670[5]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i6 (.Q(delay_counter[6]), .C(clk16MHz), .E(n13407), 
            .D(n4200), .S(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i7 (.Q(delay_counter[7]), .C(clk16MHz), .E(n13407), 
            .D(n4201), .S(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i8 (.Q(delay_counter[8]), .C(clk16MHz), .E(n13407), 
            .D(n4202), .S(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i9 (.Q(delay_counter[9]), .C(clk16MHz), .E(n13407), 
            .D(n4203), .S(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESS delay_counter_i0_i10 (.Q(delay_counter[10]), .C(clk16MHz), 
            .E(n13407), .D(n4204), .S(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i11 (.Q(delay_counter[11]), .C(clk16MHz), 
            .E(n13407), .D(delay_counter_15__N_3670[11]), .R(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i12 (.Q(delay_counter[12]), .C(clk16MHz), 
            .E(n13407), .D(delay_counter_15__N_3670[12]), .R(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i0 (.Q(delay_counter[0]), .C(clk16MHz), .E(n13407), 
            .D(delay_counter_15__N_3670[0]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i13 (.Q(delay_counter[13]), .C(clk16MHz), 
            .E(n13407), .D(delay_counter_15__N_3670[13]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i14 (.Q(delay_counter[14]), .C(clk16MHz), 
            .E(n13407), .D(delay_counter_15__N_3670[14]), .R(n24603));   // verilog/eeprom.v(35[8] 83[4])
    SB_DFFESR delay_counter_i0_i15 (.Q(delay_counter[15]), .C(clk16MHz), 
            .E(n13407), .D(delay_counter_15__N_3670[15]), .R(n24587));   // verilog/eeprom.v(35[8] 83[4])
    SB_LUT4 i1_3_lut_4_lut_adj_1553 (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(byte_counter[2]), .I3(byte_counter[18]), .O(n30));   // verilog/eeprom.v(66[9:28])
    defparam i1_3_lut_4_lut_adj_1553.LUT_INIT = 16'hffe0;
    SB_LUT4 i1_2_lut_3_lut (.I0(byte_counter[0]), .I1(byte_counter[1]), 
            .I2(n32074), .I3(GND_net), .O(n30330));   // verilog/eeprom.v(66[9:28])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_1554 (.I0(\state[2] ), .I1(\state[1] ), .I2(read), 
            .I3(\state[0] ), .O(n4_c));
    defparam i1_4_lut_adj_1554.LUT_INIT = 16'hbbba;
    SB_LUT4 i31407_4_lut (.I0(n33774), .I1(n11223), .I2(\state[1] ), .I3(state[3]), 
            .O(n35525));
    defparam i31407_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i2_4_lut (.I0(n35525), .I1(n4_c), .I2(n119), .I3(\state[0] ), 
            .O(n32405));
    defparam i2_4_lut.LUT_INIT = 16'hfcee;
    SB_LUT4 i1_2_lut_adj_1555 (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n11347));   // verilog/eeprom.v(38[3] 82[10])
    defparam i1_2_lut_adj_1555.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1556 (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[1] ), 
            .I3(n119), .O(n3105[2]));   // verilog/eeprom.v(27[11:16])
    defparam i1_4_lut_adj_1556.LUT_INIT = 16'heccc;
    SB_LUT4 i1_4_lut_adj_1557 (.I0(\state[0] ), .I1(n32363), .I2(read), 
            .I3(\state[1] ), .O(n4_adj_4543));
    defparam i1_4_lut_adj_1557.LUT_INIT = 16'hbbfa;
    SB_LUT4 i1_4_lut_adj_1558 (.I0(data_ready_N_3742), .I1(\state[2] ), 
            .I2(n4_adj_4543), .I3(n11347), .O(n4));
    defparam i1_4_lut_adj_1558.LUT_INIT = 16'h32fa;
    SB_LUT4 i3_4_lut_adj_1559 (.I0(\state[1] ), .I1(data_ready_N_3742), 
            .I2(n119), .I3(\state[0] ), .O(n32365));
    defparam i3_4_lut_adj_1559.LUT_INIT = 16'h0200;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[2] ), .I1(n24581), .I2(\state[0] ), 
            .I3(\state[1] ), .O(n24603));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h0058;
    SB_LUT4 i20474_4_lut_4_lut (.I0(\state[2] ), .I1(n24581), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n24587));   // verilog/eeprom.v(35[8] 83[4])
    defparam i20474_4_lut_4_lut.LUT_INIT = 16'h0508;
    SB_LUT4 i1_4_lut_4_lut_adj_1560 (.I0(\state[2] ), .I1(n24581), .I2(\state[1] ), 
            .I3(\state[0] ), .O(state_7__N_3512[1]));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_4_lut_4_lut_adj_1560.LUT_INIT = 16'ha5f8;
    SB_LUT4 i3_2_lut (.I0(byte_counter[7]), .I1(byte_counter[12]), .I2(GND_net), 
            .I3(GND_net), .O(n32));   // verilog/eeprom.v(30[9:21])
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i17_4_lut (.I0(byte_counter[30]), .I1(byte_counter[8]), .I2(byte_counter[6]), 
            .I3(byte_counter[5]), .O(n46));   // verilog/eeprom.v(30[9:21])
    defparam i17_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(byte_counter[4]), .I1(byte_counter[13]), .I2(byte_counter[29]), 
            .I3(byte_counter[25]), .O(n50));   // verilog/eeprom.v(30[9:21])
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut (.I0(byte_counter[15]), .I1(byte_counter[20]), .I2(byte_counter[16]), 
            .I3(byte_counter[17]), .O(n48));   // verilog/eeprom.v(30[9:21])
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20_4_lut (.I0(byte_counter[28]), .I1(byte_counter[9]), .I2(byte_counter[24]), 
            .I3(byte_counter[21]), .O(n49));   // verilog/eeprom.v(30[9:21])
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(byte_counter[10]), .I1(byte_counter[14]), .I2(byte_counter[19]), 
            .I3(byte_counter[11]), .O(n47));   // verilog/eeprom.v(30[9:21])
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i23_4_lut (.I0(byte_counter[26]), .I1(n46), .I2(n32), .I3(byte_counter[22]), 
            .O(n52));   // verilog/eeprom.v(30[9:21])
    defparam i23_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut (.I0(n47), .I1(n49), .I2(n48), .I3(n50), .O(n56));   // verilog/eeprom.v(30[9:21])
    defparam i27_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i22_4_lut (.I0(byte_counter[23]), .I1(byte_counter[27]), .I2(byte_counter[3]), 
            .I3(n30), .O(n51));   // verilog/eeprom.v(30[9:21])
    defparam i22_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_1561 (.I0(byte_counter[31]), .I1(n51), .I2(n56), 
            .I3(n52), .O(n24581));   // verilog/eeprom.v(30[9:21])
    defparam i1_4_lut_adj_1561.LUT_INIT = 16'haaab;
    SB_LUT4 i1_2_lut_adj_1562 (.I0(\state[2] ), .I1(n24581), .I2(GND_net), 
            .I3(GND_net), .O(n24590));   // verilog/eeprom.v(35[8] 83[4])
    defparam i1_2_lut_adj_1562.LUT_INIT = 16'hdddd;
    i2c_controller i2c (.VCC_net(VCC_net), .GND_net(GND_net), .clk16MHz(clk16MHz), 
            .scl_enable(scl_enable), .\state_7__N_3824[0] (\state_7__N_3824[0] ), 
            .enable_slow_N_3927(enable_slow_N_3927), .\state[3] (state[3]), 
            .\state[1] (state[1]), .\state[0] (\state[0]_adj_18 ), .\state[2] (state[2]), 
            .\saved_addr[0] (\saved_addr[0] ), .\state_7__N_3840[3] (\state_7__N_3840[3] ), 
            .enable(enable), .n4091(n4091), .n15374(n15374), .data({data}), 
            .n15372(n15372), .n15371(n15371), .n15370(n15370), .n15369(n15369), 
            .n15367(n15367), .n15366(n15366), .ready_prev(ready_prev), 
            .n119(n119), .n8(n8), .n15832(n15832), .sda_enable(sda_enable), 
            .n15081(n15081), .n22038(n22038), .scl(scl), .n10(n10), 
            .n4(n4_adj_19), .n4_adj_17(n4_adj_20), .n11342(n11342), .n11337(n11337), 
            .n22110(n22110), .n6(n6), .n11223(n11223), .n32363(n32363), 
            .n32620(n32620), .sda_out(sda_out)) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;   // verilog/eeprom.v(85[16] 99[4])
    
endmodule
//
// Verilog Description of module i2c_controller
//

module i2c_controller (VCC_net, GND_net, clk16MHz, scl_enable, \state_7__N_3824[0] , 
            enable_slow_N_3927, \state[3] , \state[1] , \state[0] , 
            \state[2] , \saved_addr[0] , \state_7__N_3840[3] , enable, 
            n4091, n15374, data, n15372, n15371, n15370, n15369, 
            n15367, n15366, ready_prev, n119, n8, n15832, sda_enable, 
            n15081, n22038, scl, n10, n4, n4_adj_17, n11342, n11337, 
            n22110, n6, n11223, n32363, n32620, sda_out) /* synthesis syn_noprune=1, syn_module_defined=1 */ ;
    input VCC_net;
    input GND_net;
    input clk16MHz;
    output scl_enable;
    output \state_7__N_3824[0] ;
    output enable_slow_N_3927;
    output \state[3] ;
    output \state[1] ;
    output \state[0] ;
    output \state[2] ;
    output \saved_addr[0] ;
    input \state_7__N_3840[3] ;
    input enable;
    output n4091;
    input n15374;
    output [7:0]data;
    input n15372;
    input n15371;
    input n15370;
    input n15369;
    input n15367;
    input n15366;
    input ready_prev;
    output n119;
    input n8;
    input n15832;
    output sda_enable;
    input n15081;
    output n22038;
    output scl;
    output n10;
    output n4;
    output n4_adj_17;
    output n11342;
    output n11337;
    output n22110;
    output n6;
    input n11223;
    output n32363;
    output n32620;
    output sda_out;
    
    wire i2c_clk /* synthesis is_clock=1, SET_AS_NETWORK=\eeprom/i2c/i2c_clk */ ;   // verilog/i2c_controller.v(41[6:13])
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [7:0]n1;
    wire [7:0]counter;   // verilog/i2c_controller.v(36[12:19])
    
    wire n26139, n26138, n26137, n26136, n26135, i2c_clk_N_3913, 
        scl_enable_N_3914, n26134, n4084, n35527, n4424, n4_c, n13456, 
        enable_slow_N_3926, n28, n37127, n11, n31003, n13462;
    wire [1:0]n4136;
    
    wire n26, n29925, n13464;
    wire [7:0]counter2;   // verilog/i2c_controller.v(37[12:20])
    
    wire n10_c, n14729, n13465, n26133, n11_adj_4530, n4_adj_4531, 
        n15, n11_adj_4532, n22356, n22262;
    wire [5:0]n29;
    
    wire n5, n22085, n32642, n31989, n31992, n32030, sda_out_adj_4533, 
        n14617, n26520, n26519, n26518, n26517, n26516, state_7__N_3823, 
        n11_adj_4534, n10_adj_4535, n11_adj_4536, n12;
    
    SB_LUT4 sub_39_add_2_9_lut (.I0(GND_net), .I1(counter[7]), .I2(VCC_net), 
            .I3(n26139), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_39_add_2_8_lut (.I0(GND_net), .I1(counter[6]), .I2(VCC_net), 
            .I3(n26138), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_8 (.CI(n26138), .I0(counter[6]), .I1(VCC_net), 
            .CO(n26139));
    SB_LUT4 sub_39_add_2_7_lut (.I0(GND_net), .I1(counter[5]), .I2(VCC_net), 
            .I3(n26137), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_7 (.CI(n26137), .I0(counter[5]), .I1(VCC_net), 
            .CO(n26138));
    SB_LUT4 sub_39_add_2_6_lut (.I0(GND_net), .I1(counter[4]), .I2(VCC_net), 
            .I3(n26136), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_6 (.CI(n26136), .I0(counter[4]), .I1(VCC_net), 
            .CO(n26137));
    SB_LUT4 sub_39_add_2_5_lut (.I0(GND_net), .I1(counter[3]), .I2(VCC_net), 
            .I3(n26135), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF i2c_clk_122 (.Q(i2c_clk), .C(clk16MHz), .D(i2c_clk_N_3913));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_DFFN i2c_scl_enable_124 (.Q(scl_enable), .C(i2c_clk), .D(scl_enable_N_3914));   // verilog/i2c_controller.v(76[12] 82[6])
    SB_CARRY sub_39_add_2_5 (.CI(n26135), .I0(counter[3]), .I1(VCC_net), 
            .CO(n26136));
    SB_LUT4 sub_39_add_2_4_lut (.I0(GND_net), .I1(counter[2]), .I2(VCC_net), 
            .I3(n26134), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_4 (.CI(n26134), .I0(counter[2]), .I1(VCC_net), 
            .CO(n26135));
    SB_LUT4 i14_4_lut (.I0(n4084), .I1(n35527), .I2(n4424), .I3(n4_c), 
            .O(n13456));
    defparam i14_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 i32492_2_lut (.I0(\state_7__N_3824[0] ), .I1(enable_slow_N_3927), 
            .I2(GND_net), .I3(GND_net), .O(enable_slow_N_3926));   // verilog/i2c_controller.v(62[6:32])
    defparam i32492_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_4_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[0] ), 
            .I3(\state[2] ), .O(n28));
    defparam i1_4_lut.LUT_INIT = 16'h5110;
    SB_LUT4 i32472_2_lut (.I0(\state[3] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n37127));
    defparam i32472_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1539 (.I0(n11), .I1(n37127), .I2(n28), .I3(n31003), 
            .O(n13462));
    defparam i1_4_lut_adj_1539.LUT_INIT = 16'ha0a8;
    SB_LUT4 mux_942_Mux_1_i7_4_lut (.I0(counter[1]), .I1(counter[0]), .I2(counter[2]), 
            .I3(\saved_addr[0] ), .O(n4136[1]));   // verilog/i2c_controller.v(201[28:35])
    defparam mux_942_Mux_1_i7_4_lut.LUT_INIT = 16'hc1c0;
    SB_LUT4 i26394_2_lut (.I0(\state[2] ), .I1(\state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n31003));
    defparam i26394_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut (.I0(\state[0] ), .I1(n26), .I2(\state[3] ), .I3(n11), 
            .O(n29925));
    defparam i3_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i1_4_lut_adj_1540 (.I0(n11), .I1(\state[1] ), .I2(\state[3] ), 
            .I3(n31003), .O(n13464));
    defparam i1_4_lut_adj_1540.LUT_INIT = 16'h0a22;
    SB_LUT4 i1_2_lut (.I0(\state[2] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n26));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut (.I0(counter2[3]), .I1(counter2[5]), .I2(counter2[2]), 
            .I3(counter2[4]), .O(n10_c));
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_3_lut (.I0(counter2[1]), .I1(n10_c), .I2(counter2[0]), 
            .I3(GND_net), .O(n14729));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_1541 (.I0(i2c_clk), .I1(n14729), .I2(GND_net), 
            .I3(GND_net), .O(i2c_clk_N_3913));
    defparam i1_2_lut_adj_1541.LUT_INIT = 16'h6666;
    SB_DFFE enable_slow_121 (.Q(\state_7__N_3824[0] ), .C(clk16MHz), .E(n13465), 
            .D(enable_slow_N_3926));   // verilog/i2c_controller.v(58[9] 71[5])
    SB_LUT4 sub_39_add_2_3_lut (.I0(GND_net), .I1(counter[1]), .I2(VCC_net), 
            .I3(n26133), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_1542 (.I0(\state_7__N_3840[3] ), .I1(n11_adj_4530), 
            .I2(n11), .I3(enable), .O(n4_adj_4531));
    defparam i1_4_lut_adj_1542.LUT_INIT = 16'h2a2f;
    SB_LUT4 i32498_3_lut (.I0(n4091), .I1(n15), .I2(n11_adj_4532), .I3(GND_net), 
            .O(n22356));
    defparam i32498_3_lut.LUT_INIT = 16'h2a2a;
    SB_CARRY sub_39_add_2_3 (.CI(n26133), .I0(counter[1]), .I1(VCC_net), 
            .CO(n26134));
    SB_LUT4 i32552_2_lut (.I0(\state_7__N_3840[3] ), .I1(n11_adj_4530), 
            .I2(GND_net), .I3(GND_net), .O(n22262));
    defparam i32552_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 sub_39_add_2_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_39_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_39_add_2_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), 
            .CO(n26133));
    SB_DFF data_out_i0_i7 (.Q(data[7]), .C(i2c_clk), .D(n15374));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i6 (.Q(data[6]), .C(i2c_clk), .D(n15372));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i5 (.Q(data[5]), .C(i2c_clk), .D(n15371));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i4 (.Q(data[4]), .C(i2c_clk), .D(n15370));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i3 (.Q(data[3]), .C(i2c_clk), .D(n15369));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i2 (.Q(data[2]), .C(i2c_clk), .D(n15367));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i1 (.Q(data[1]), .C(i2c_clk), .D(n15366));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFSR counter2_1117_1118__i5 (.Q(counter2[4]), .C(clk16MHz), .D(n29[4]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1117_1118__i4 (.Q(counter2[3]), .C(clk16MHz), .D(n29[3]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1117_1118__i3 (.Q(counter2[2]), .C(clk16MHz), .D(n29[2]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFSR counter2_1117_1118__i2 (.Q(counter2[1]), .C(clk16MHz), .D(n29[1]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 i32522_2_lut (.I0(enable_slow_N_3927), .I1(ready_prev), .I2(GND_net), 
            .I3(GND_net), .O(n119));
    defparam i32522_2_lut.LUT_INIT = 16'h2222;
    SB_DFFSR counter2_1117_1118__i6 (.Q(counter2[5]), .C(clk16MHz), .D(n29[5]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_LUT4 state_7__I_0_142_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[2] ), .I3(\state[3] ), .O(n11_adj_4532));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_142_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_DFFSR counter2_1117_1118__i1 (.Q(counter2[0]), .C(clk16MHz), .D(n29[0]), 
            .R(n14729));   // verilog/i2c_controller.v(69[20:35])
    SB_DFFE state_i0_i0 (.Q(\state[0] ), .C(i2c_clk), .E(VCC_net), .D(n8));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i1 (.Q(\state[1] ), .C(i2c_clk), .E(n4091), .D(n5), 
            .S(n22085));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF data_out_i0_i0 (.Q(data[0]), .C(i2c_clk), .D(n15832));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i2 (.Q(\state[2] ), .C(i2c_clk), .E(n4091), .D(n22262), 
            .S(n22356));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS state_i0_i3 (.Q(\state[3] ), .C(i2c_clk), .E(n4091), .D(n32642), 
            .S(n31989));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFNESS write_enable_132 (.Q(sda_enable), .C(i2c_clk), .E(n13464), 
            .D(n31992), .S(n29925));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFNESS sda_out_133 (.Q(sda_out_adj_4533), .C(i2c_clk), .E(n13462), 
            .D(n32030), .S(n29925));   // verilog/i2c_controller.v(180[12] 218[6])
    SB_DFFESS counter_i0 (.Q(counter[0]), .C(i2c_clk), .E(n13456), .D(n1[0]), 
            .S(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i1 (.Q(counter[1]), .C(i2c_clk), .E(n13456), .D(n1[1]), 
            .S(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESS counter_i2 (.Q(counter[2]), .C(i2c_clk), .E(n13456), .D(n1[2]), 
            .S(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i3 (.Q(counter[3]), .C(i2c_clk), .E(n13456), .D(n1[3]), 
            .R(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i4 (.Q(counter[4]), .C(i2c_clk), .E(n13456), .D(n1[4]), 
            .R(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i5 (.Q(counter[5]), .C(i2c_clk), .E(n13456), .D(n1[5]), 
            .R(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i6 (.Q(counter[6]), .C(i2c_clk), .E(n13456), .D(n1[6]), 
            .R(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFFESR counter_i7 (.Q(counter[7]), .C(i2c_clk), .E(n13456), .D(n1[7]), 
            .R(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_DFF saved_addr__i1 (.Q(\saved_addr[0] ), .C(i2c_clk), .D(n15081));   // verilog/i2c_controller.v(91[8] 173[6])
    SB_LUT4 counter2_1117_1118_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[5]), .I3(n26520), .O(n29[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter2_1117_1118_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[4]), .I3(n26519), .O(n29[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1117_1118_add_4_6 (.CI(n26519), .I0(GND_net), .I1(counter2[4]), 
            .CO(n26520));
    SB_LUT4 counter2_1117_1118_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[3]), .I3(n26518), .O(n29[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1117_1118_add_4_5 (.CI(n26518), .I0(GND_net), .I1(counter2[3]), 
            .CO(n26519));
    SB_LUT4 counter2_1117_1118_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[2]), .I3(n26517), .O(n29[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1117_1118_add_4_4 (.CI(n26517), .I0(GND_net), .I1(counter2[2]), 
            .CO(n26518));
    SB_LUT4 counter2_1117_1118_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[1]), .I3(n26516), .O(n29[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1117_1118_add_4_3 (.CI(n26516), .I0(GND_net), .I1(counter2[1]), 
            .CO(n26517));
    SB_LUT4 counter2_1117_1118_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(counter2[0]), .I3(VCC_net), .O(n29[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter2_1117_1118_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter2_1117_1118_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter2[0]), 
            .CO(n26516));
    SB_LUT4 state_7__I_0_143_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11));
    defparam state_7__I_0_143_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hf7ff;
    SB_LUT4 i18214_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[3] ), .O(state_7__N_3823));
    defparam i18214_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_LUT4 state_7__I_0_140_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11_adj_4530));
    defparam state_7__I_0_140_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i31007_2_lut_3_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(\state_7__N_3840[3] ), 
            .I3(GND_net), .O(n35527));   // verilog/i2c_controller.v(77[27:43])
    defparam i31007_2_lut_3_lut.LUT_INIT = 16'hd0d0;
    SB_LUT4 state_7__I_0_145_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11_adj_4534));   // verilog/i2c_controller.v(77[27:43])
    defparam state_7__I_0_145_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i2_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(n10_adj_4535), 
            .I3(n4_adj_4531), .O(n32642));   // verilog/i2c_controller.v(109[5:12])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hff04;
    SB_LUT4 state_7__I_0_144_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n15));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_144_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 state_7__I_0_139_i11_2_lut_3_lut_4_lut (.I0(\state[0] ), .I1(\state[1] ), 
            .I2(\state[3] ), .I3(\state[2] ), .O(n11_adj_4536));   // verilog/i2c_controller.v(109[5:12])
    defparam state_7__I_0_139_i11_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i32495_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(n4091), 
            .I3(\state[1] ), .O(n31989));   // verilog/i2c_controller.v(143[5:14])
    defparam i32495_3_lut_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i18108_2_lut_3_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n22038));   // verilog/i2c_controller.v(143[5:14])
    defparam i18108_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i17942_2_lut (.I0(i2c_clk), .I1(scl_enable), .I2(GND_net), 
            .I3(GND_net), .O(scl));   // verilog/i2c_controller.v(45[19:61])
    defparam i17942_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2_2_lut (.I0(counter[2]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // verilog/i2c_controller.v(110[10:22])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 equal_123_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_123_i4_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_121_i4_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_17));   // verilog/i2c_controller.v(153[6:23])
    defparam equal_121_i4_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_1543 (.I0(counter[0]), .I1(n15), .I2(GND_net), 
            .I3(GND_net), .O(n11342));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_1543.LUT_INIT = 16'heeee;
    SB_LUT4 i26466_3_lut_4_lut (.I0(\state[0] ), .I1(\state[2] ), .I2(\state[1] ), 
            .I3(\state[3] ), .O(scl_enable_N_3914));
    defparam i26466_3_lut_4_lut.LUT_INIT = 16'hfefc;
    SB_LUT4 i2_3_lut_4_lut_adj_1544 (.I0(\state[3] ), .I1(\state[1] ), .I2(\state[2] ), 
            .I3(\state[0] ), .O(n31992));   // verilog/i2c_controller.v(181[4] 217[11])
    defparam i2_3_lut_4_lut_adj_1544.LUT_INIT = 16'h1110;
    SB_LUT4 i1_2_lut_adj_1545 (.I0(n15), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11337));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i1_2_lut_adj_1545.LUT_INIT = 16'hbbbb;
    SB_LUT4 i17976_2_lut (.I0(counter[1]), .I1(counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n22110));
    defparam i17976_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i32500_4_lut (.I0(n4091), .I1(\state[0] ), .I2(n11_adj_4536), 
            .I3(n26), .O(n22085));
    defparam i32500_4_lut.LUT_INIT = 16'h0a8a;
    SB_LUT4 i1_4_lut_adj_1546 (.I0(n11_adj_4534), .I1(n11_adj_4530), .I2(\state_7__N_3840[3] ), 
            .I3(\saved_addr[0] ), .O(n5));   // verilog/i2c_controller.v(92[4] 172[11])
    defparam i1_4_lut_adj_1546.LUT_INIT = 16'h5755;
    SB_LUT4 i1_4_lut_4_lut (.I0(\state[3] ), .I1(\state[2] ), .I2(\state[1] ), 
            .I3(\state[0] ), .O(n4_c));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'heeab;
    SB_LUT4 i5_4_lut (.I0(counter[3]), .I1(counter[5]), .I2(counter[0]), 
            .I3(counter[4]), .O(n12));   // verilog/i2c_controller.v(110[10:22])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(counter[6]), .I1(n12), .I2(counter[7]), .I3(n10), 
            .O(n4084));   // verilog/i2c_controller.v(110[10:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10414_2_lut_4_lut (.I0(n13456), .I1(\state[2] ), .I2(\state[3] ), 
            .I3(\state[0] ), .O(n14617));   // verilog/i2c_controller.v(91[8] 173[6])
    defparam i10414_2_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 state_7__I_0_142_i10_2_lut (.I0(\state[2] ), .I1(\state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4535));   // verilog/i2c_controller.v(139[9:14])
    defparam state_7__I_0_142_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_3_lut (.I0(enable), .I1(\state_7__N_3824[0] ), .I2(enable_slow_N_3927), 
            .I3(GND_net), .O(n13465));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'haeae;
    SB_LUT4 i32569_4_lut (.I0(state_7__N_3823), .I1(n4084), .I2(n11_adj_4536), 
            .I3(n22038), .O(n4091));
    defparam i32569_4_lut.LUT_INIT = 16'h5111;
    SB_LUT4 i2_2_lut_adj_1547 (.I0(n11_adj_4536), .I1(n11_adj_4532), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i2_2_lut_adj_1547.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_4_lut_adj_1548 (.I0(\state[0] ), .I1(\state[3] ), .I2(n26), 
            .I3(n11223), .O(n32363));
    defparam i2_3_lut_4_lut_adj_1548.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_4_lut_adj_1549 (.I0(\state[0] ), .I1(\state[3] ), .I2(\state[2] ), 
            .I3(\state[1] ), .O(n32620));
    defparam i2_3_lut_4_lut_adj_1549.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_adj_1550 (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n4424));   // verilog/i2c_controller.v(44[32:47])
    defparam i1_2_lut_3_lut_adj_1550.LUT_INIT = 16'h1010;
    SB_LUT4 i2_3_lut_4_lut_adj_1551 (.I0(\state[2] ), .I1(\state[3] ), .I2(n4136[1]), 
            .I3(\state[1] ), .O(n32030));   // verilog/i2c_controller.v(44[32:47])
    defparam i2_3_lut_4_lut_adj_1551.LUT_INIT = 16'h1000;
    SB_LUT4 i32509_3_lut_4_lut (.I0(\state[2] ), .I1(\state[3] ), .I2(\state[0] ), 
            .I3(\state[1] ), .O(enable_slow_N_3927));   // verilog/i2c_controller.v(44[32:47])
    defparam i32509_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i1410_2_lut (.I0(sda_out_adj_4533), .I1(sda_enable), .I2(GND_net), 
            .I3(GND_net), .O(sda_out));   // verilog/i2c_controller.v(46[9:20])
    defparam i1410_2_lut.LUT_INIT = 16'h8888;
    
endmodule
//
// Verilog Description of module coms
//

module coms (VCC_net, clk16MHz, GND_net, \data_out_frame[4] , \data_out_frame[12] , 
            \data_out_frame[5] , reset, \data_out_frame[14] , \data_out_frame[13] , 
            \data_out_frame[23] , \FRAME_MATCHER.state[3] , \data_out_frame[25] , 
            \FRAME_MATCHER.i_31__N_2379 , neopxl_color, \data_in_frame[20] , 
            \data_in_frame[6] , \data_out_frame[24] , \data_in_frame[23] , 
            rx_data_ready, \FRAME_MATCHER.rx_data_ready_prev , \data_in_frame[22][7] , 
            \data_in_frame[18] , \data_in_frame[22][4] , \data_in_frame[3] , 
            \data_in_frame[4][1] , \byte_transmit_counter[1] , \data_in_frame[15] , 
            \data_in_frame[17] , \byte_transmit_counter[0] , \data_out_frame[1][7] , 
            \data_out_frame[3][7] , n17410, \data_out_frame[0][3] , \data_out_frame[1][3] , 
            \data_out_frame[3][3] , \data_in_frame[21][6] , n30620, n27802, 
            ID, \data_out_frame[3][6] , \FRAME_MATCHER.i_31__N_2378 , 
            \data_out_frame[3][4] , \data_out_frame[3][1] , \data_out_frame[1][6] , 
            \data_out_frame[1][5] , \data_out_frame[1][1] , \data_out_frame[1][0] , 
            n8647, \data_in_frame[21][3] , n30827, \FRAME_MATCHER.i_31__N_2383 , 
            n17417, \data_in_frame[21][2] , \data_in_frame[0] , \data_in_frame[4][5] , 
            \data_in_frame[5][6] , rx_data, n32020, n15134, \data_in_frame[4][3] , 
            n15138, \data_in_frame[4][4] , \data_out_frame[0][4] , \data_in_frame[1][1] , 
            n15142, \data_in_frame[18][0] , n15403, n15400, \data_in_frame[18][2] , 
            \data_out_frame[0][2] , n15145, \data_in_frame[4][6] , \data_in_frame[21][1] , 
            \data_in_frame[21][0] , n15396, n15393, n15390, n14177, 
            n15387, n15384, n9490, tx_active, n15152, \data_in_frame[4][7] , 
            n15158, \data_in_frame[5][1] , n15161, \data_in_frame[5][2] , 
            n15379, \data_in_frame[5][3] , n15175, \data_in_frame[5][4] , 
            n37344, n15184, \data_in_frame[5][5] , n15188, n15191, 
            \data_in_frame[5][7] , n15194, n15208, n15211, n15222, 
            n15226, n15229, n15232, n15236, \data_out_frame[27] , 
            \data_out_frame[26] , n27889, n30715, \data_in_frame[2][0] , 
            n14209, n14172, n14170, n30225, n30209, n30210, n25464, 
            n14179, n15202, n15201, n15200, n15197, n15183, n15182, 
            n15181, n15180, n15178, n15174, n15173, n15167, n15166, 
            n15151, n15150, n15148, n15141, n30211, n30212, n30207, 
            n30216, n30249, n30204, n30218, n30251, n30219, n30246, 
            n30220, n30221, n30222, n30223, n30202, n16051, n14709, 
            n30224, n30206, n16054, n14706, n30226, n16056, n14704, 
            n30214, n30227, n30228, n30229, n30230, n30231, n30232, 
            n30233, n30234, n30235, n14693, n14692, n30236, n30237, 
            n14689, n14688, n30238, n30239, n30240, n14684, n30267, 
            n30215, n30213, n30241, n30242, n30243, n30244, n14676, 
            n30245, n30203, n30247, n30248, n30205, n16090, n14670, 
            n30250, \data_in_frame[2][7] , n15127, n15118, n30217, 
            n30252, n30253, n30254, n30255, n30256, n30257, n30208, 
            n30258, n30259, n30260, n30261, n30262, n30263, n16106, 
            n14654, n16107, n14653, n30264, n30265, n30266, n30284, 
            n30285, n30286, n14646, n30287, n30288, n30289, n30295, 
            n30290, n30291, n30292, n14638, n30293, n30294, n30283, 
            n30282, n15912, \data_in_frame[2][3] , LED_c, DE_c, n14623, 
            n15905, \data_in_frame[2][2] , n15899, n15085, \data_in_frame[2][5] , 
            n15088, \data_in_frame[2][6] , n15550, n15553, n15556, 
            n15559, n15091, n15869, n15866, n15860, n15857, n15854, 
            n15851, n15848, n15845, n15842, n15839, n29903, n15822, 
            \data_in_frame[22][2] , n15819, \data_in_frame[22][1] , n15816, 
            \data_in_frame[22][0] , n29905, n15804, \data_in_frame[21][5] , 
            n15795, n15792, n15789, n15786, n15783, n15094, n15781, 
            n15777, n15774, n15771, n15768, n15765, n15762, n15759, 
            n15756, n25503, n15729, \data_in_frame[18][7] , n15726, 
            \data_in_frame[18][6] , n15562, n15565, n15568, n15571, 
            n15598, n15711, n15604, n15607, n15610, n15614, n15618, 
            n15628, n15631, n15637, n15645, \data_in_frame[18][3] , 
            n15651, n15097, n15100, n15103, n15106, n15109, n15112, 
            n15115, n15128, n15131, \data_in_frame[4][2] , n2773, 
            n15084, n15083, n12181, n31801, n1, n30344, n14203, 
            n30334, n9456, n32412, n31955, n6, n30383, n26954, 
            n30737, n2520, n30812, n30724, n31932, n30386, n27167, 
            n6_adj_1, n11874, r_Clock_Count, n20810, r_SM_Main, n31667, 
            n6_adj_2, n2859, n29, n23, \o_Rx_DV_N_3358[12] , \o_Rx_DV_N_3358[24] , 
            n27, tx_o, \r_SM_Main_2__N_3406[1] , n15137, tx_enable, 
            r_Clock_Count_adj_15, baudrate, r_SM_Main_adj_16, r_Rx_Data, 
            RX_N_2, \r_Bit_Index[0] , n31807, n32960, \r_SM_Main_2__N_3316[1] , 
            \o_Rx_DV_N_3358[8] , \o_Rx_DV_N_3358[7] , \o_Rx_DV_N_3358[6] , 
            \o_Rx_DV_N_3358[5] , n15362, n15361, n15360, n15359, n15358, 
            n15357, n15356, \o_Rx_DV_N_3358[4] , \o_Rx_DV_N_3358[3] , 
            \o_Rx_DV_N_3358[2] , n13594, \o_Rx_DV_N_3358[1] , n31122, 
            \o_Rx_DV_N_3358[0] , n15900, n28009, n15875, n11389, n2856, 
            n30308, n6_adj_14, n33248, n33232, n33302, n33322, n33214, 
            n33250, n13431, n33286, n33304, n4) /* synthesis syn_module_defined=1 */ ;
    input VCC_net;
    input clk16MHz;
    input GND_net;
    output [7:0]\data_out_frame[4] ;
    output [7:0]\data_out_frame[12] ;
    output [7:0]\data_out_frame[5] ;
    input reset;
    output [7:0]\data_out_frame[14] ;
    output [7:0]\data_out_frame[13] ;
    output [7:0]\data_out_frame[23] ;
    output \FRAME_MATCHER.state[3] ;
    output [7:0]\data_out_frame[25] ;
    output \FRAME_MATCHER.i_31__N_2379 ;
    output [23:0]neopxl_color;
    output [7:0]\data_in_frame[20] ;
    output [7:0]\data_in_frame[6] ;
    output [7:0]\data_out_frame[24] ;
    output [7:0]\data_in_frame[23] ;
    output rx_data_ready;
    output \FRAME_MATCHER.rx_data_ready_prev ;
    output \data_in_frame[22][7] ;
    output [7:0]\data_in_frame[18] ;
    output \data_in_frame[22][4] ;
    output [7:0]\data_in_frame[3] ;
    output \data_in_frame[4][1] ;
    output \byte_transmit_counter[1] ;
    output [7:0]\data_in_frame[15] ;
    output [7:0]\data_in_frame[17] ;
    output \byte_transmit_counter[0] ;
    output \data_out_frame[1][7] ;
    output \data_out_frame[3][7] ;
    output n17410;
    output \data_out_frame[0][3] ;
    output \data_out_frame[1][3] ;
    output \data_out_frame[3][3] ;
    output \data_in_frame[21][6] ;
    output n30620;
    input n27802;
    input [7:0]ID;
    output \data_out_frame[3][6] ;
    output \FRAME_MATCHER.i_31__N_2378 ;
    output \data_out_frame[3][4] ;
    output \data_out_frame[3][1] ;
    output \data_out_frame[1][6] ;
    output \data_out_frame[1][5] ;
    output \data_out_frame[1][1] ;
    output \data_out_frame[1][0] ;
    input n8647;
    output \data_in_frame[21][3] ;
    input n30827;
    output \FRAME_MATCHER.i_31__N_2383 ;
    output n17417;
    output \data_in_frame[21][2] ;
    output [7:0]\data_in_frame[0] ;
    output \data_in_frame[4][5] ;
    output \data_in_frame[5][6] ;
    output [7:0]rx_data;
    output n32020;
    input n15134;
    output \data_in_frame[4][3] ;
    input n15138;
    output \data_in_frame[4][4] ;
    output \data_out_frame[0][4] ;
    output \data_in_frame[1][1] ;
    input n15142;
    output \data_in_frame[18][0] ;
    input n15403;
    input n15400;
    output \data_in_frame[18][2] ;
    output \data_out_frame[0][2] ;
    input n15145;
    output \data_in_frame[4][6] ;
    output \data_in_frame[21][1] ;
    output \data_in_frame[21][0] ;
    input n15396;
    input n15393;
    input n15390;
    output n14177;
    input n15387;
    input n15384;
    input n9490;
    output tx_active;
    input n15152;
    output \data_in_frame[4][7] ;
    input n15158;
    output \data_in_frame[5][1] ;
    input n15161;
    output \data_in_frame[5][2] ;
    input n15379;
    output \data_in_frame[5][3] ;
    input n15175;
    output \data_in_frame[5][4] ;
    input n37344;
    input n15184;
    output \data_in_frame[5][5] ;
    input n15188;
    input n15191;
    output \data_in_frame[5][7] ;
    input n15194;
    input n15208;
    input n15211;
    input n15222;
    input n15226;
    input n15229;
    input n15232;
    input n15236;
    output [7:0]\data_out_frame[27] ;
    output [7:0]\data_out_frame[26] ;
    output n27889;
    output n30715;
    output \data_in_frame[2][0] ;
    output n14209;
    output n14172;
    output n14170;
    input n30225;
    input n30209;
    input n30210;
    output n25464;
    output n14179;
    input n15202;
    input n15201;
    input n15200;
    input n15197;
    input n15183;
    input n15182;
    input n15181;
    input n15180;
    input n15178;
    input n15174;
    input n15173;
    input n15167;
    input n15166;
    input n15151;
    input n15150;
    input n15148;
    input n15141;
    input n30211;
    input n30212;
    input n30207;
    input n30216;
    input n30249;
    input n30204;
    input n30218;
    input n30251;
    input n30219;
    input n30246;
    input n30220;
    input n30221;
    input n30222;
    input n30223;
    input n30202;
    input n16051;
    input n14709;
    input n30224;
    input n30206;
    input n16054;
    input n14706;
    input n30226;
    input n16056;
    input n14704;
    input n30214;
    input n30227;
    input n30228;
    input n30229;
    input n30230;
    input n30231;
    input n30232;
    input n30233;
    input n30234;
    input n30235;
    input n14693;
    input n14692;
    input n30236;
    input n30237;
    input n14689;
    input n14688;
    input n30238;
    input n30239;
    input n30240;
    input n14684;
    input n30267;
    input n30215;
    input n30213;
    input n30241;
    input n30242;
    input n30243;
    input n30244;
    input n14676;
    input n30245;
    input n30203;
    input n30247;
    input n30248;
    input n30205;
    input n16090;
    input n14670;
    input n30250;
    output \data_in_frame[2][7] ;
    input n15127;
    input n15118;
    input n30217;
    input n30252;
    input n30253;
    input n30254;
    input n30255;
    input n30256;
    input n30257;
    input n30208;
    input n30258;
    input n30259;
    input n30260;
    input n30261;
    input n30262;
    input n30263;
    input n16106;
    input n14654;
    input n16107;
    input n14653;
    input n30264;
    input n30265;
    input n30266;
    input n30284;
    input n30285;
    input n30286;
    input n14646;
    input n30287;
    input n30288;
    input n30289;
    input n30295;
    input n30290;
    input n30291;
    input n30292;
    input n14638;
    input n30293;
    input n30294;
    input n30283;
    input n30282;
    input n15912;
    output \data_in_frame[2][3] ;
    output LED_c;
    output DE_c;
    input n14623;
    input n15905;
    output \data_in_frame[2][2] ;
    input n15899;
    input n15085;
    output \data_in_frame[2][5] ;
    input n15088;
    output \data_in_frame[2][6] ;
    input n15550;
    input n15553;
    input n15556;
    input n15559;
    input n15091;
    input n15869;
    input n15866;
    input n15860;
    input n15857;
    input n15854;
    input n15851;
    input n15848;
    input n15845;
    input n15842;
    input n15839;
    input n29903;
    input n15822;
    output \data_in_frame[22][2] ;
    input n15819;
    output \data_in_frame[22][1] ;
    input n15816;
    output \data_in_frame[22][0] ;
    input n29905;
    input n15804;
    output \data_in_frame[21][5] ;
    input n15795;
    input n15792;
    input n15789;
    input n15786;
    input n15783;
    input n15094;
    input n15781;
    input n15777;
    input n15774;
    input n15771;
    input n15768;
    input n15765;
    input n15762;
    input n15759;
    input n15756;
    output n25503;
    input n15729;
    output \data_in_frame[18][7] ;
    input n15726;
    output \data_in_frame[18][6] ;
    input n15562;
    input n15565;
    input n15568;
    input n15571;
    input n15598;
    input n15711;
    input n15604;
    input n15607;
    input n15610;
    input n15614;
    input n15618;
    input n15628;
    input n15631;
    input n15637;
    input n15645;
    output \data_in_frame[18][3] ;
    input n15651;
    input n15097;
    input n15100;
    input n15103;
    input n15106;
    input n15109;
    input n15112;
    input n15115;
    input n15128;
    input n15131;
    output \data_in_frame[4][2] ;
    input n2773;
    input n15084;
    input n15083;
    input n12181;
    output n31801;
    input n1;
    output n30344;
    output n14203;
    output n30334;
    output n9456;
    output n32412;
    output n31955;
    input n6;
    input n30383;
    output n26954;
    input n30737;
    input n2520;
    input n30812;
    input n30724;
    output n31932;
    output n30386;
    output n27167;
    output n6_adj_1;
    output n11874;
    output [8:0]r_Clock_Count;
    input n20810;
    output [2:0]r_SM_Main;
    input n31667;
    output n6_adj_2;
    input n2859;
    output n29;
    output n23;
    output \o_Rx_DV_N_3358[12] ;
    output \o_Rx_DV_N_3358[24] ;
    output n27;
    output tx_o;
    input \r_SM_Main_2__N_3406[1] ;
    input n15137;
    output tx_enable;
    output [7:0]r_Clock_Count_adj_15;
    input [31:0]baudrate;
    output [2:0]r_SM_Main_adj_16;
    output r_Rx_Data;
    input RX_N_2;
    output \r_Bit_Index[0] ;
    output n31807;
    input n32960;
    input \r_SM_Main_2__N_3316[1] ;
    output \o_Rx_DV_N_3358[8] ;
    output \o_Rx_DV_N_3358[7] ;
    output \o_Rx_DV_N_3358[6] ;
    output \o_Rx_DV_N_3358[5] ;
    input n15362;
    input n15361;
    input n15360;
    input n15359;
    input n15358;
    input n15357;
    input n15356;
    output \o_Rx_DV_N_3358[4] ;
    output \o_Rx_DV_N_3358[3] ;
    output \o_Rx_DV_N_3358[2] ;
    output n13594;
    output \o_Rx_DV_N_3358[1] ;
    output n31122;
    output \o_Rx_DV_N_3358[0] ;
    input n15900;
    input n28009;
    input n15875;
    output n11389;
    input n2856;
    input n30308;
    output n6_adj_14;
    input n33248;
    output n33232;
    input n33302;
    output n33322;
    output n33214;
    output n33250;
    output n13431;
    output n33286;
    output n33304;
    output n4;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n15526;
    wire [7:0]\data_in_frame[14] ;   // verilog/coms.v(99[12:25])
    
    wire n12036, n30476, n27131, n30631, n10, n30396, n14, n30605, 
        n30444, n30752;
    wire [7:0]\data_in_frame[16] ;   // verilog/coms.v(99[12:25])
    
    wire n30640, n4_c, n30861;
    wire [23:0]n2766;
    
    wire n13378;
    wire [23:0]setpoint;   // verilog/coms.v(16[27:35])
    
    wire n6_c, n15523;
    wire [7:0]\data_in_frame[13] ;   // verilog/coms.v(99[12:25])
    
    wire n11135, n27653;
    wire [31:0]\FRAME_MATCHER.i ;   // verilog/coms.v(118[11:12])
    
    wire \FRAME_MATCHER.i_31__N_2377 , n35409, n27035, n40, n30877, 
        n30749, n38, n30, n44, n30430, n42, n26, n30390, n43, 
        n12545, n10950, n41, n32270, n11611, n12588, n12411, n12196, 
        n11850, n37115, n30499, n30675, n27002, n30516, n27312, 
        n27212, n11551, n11022, n32149, n30701, n12432, n27832, 
        n30297;
    wire [7:0]byte_transmit_counter;   // verilog/coms.v(105[12:33])
    
    wire n26101, n30296, n30304, n26100, n15520, n1516, n10_adj_4249, 
        n30452, n30873, n1522, n1191, n15517, n30796, n30901, 
        n12349, n11890, n9545, n15514, n8, n9547, n3;
    wire [31:0]\FRAME_MATCHER.state_31__N_2482 ;
    
    wire n2, n17, n32533, n16, n32143, n2_adj_4250, n2_adj_4251, 
        n2_adj_4252, n2_adj_4253, n35410, n13, n31973, n14_adj_4254, 
        n22, n15511, n2_adj_4255, n2_adj_4256, n2_adj_4257, n30809, 
        n30420, n6_adj_4258, n30496, n15508, n2_adj_4259, n30303, 
        n26099, n15505, n2_adj_4260, n30302, n26098, n2_adj_4261, 
        n2_adj_4262, n2_adj_4263, n2_adj_4264, n2_adj_4265, n2_adj_4266;
    wire [7:0]\data_in_frame[22] ;   // verilog/coms.v(99[12:25])
    
    wire n33764, n32242, n32510, n28, n2_adj_4267, n30594, n11797, 
        n32257, n31824, n30301, n26097, n2_adj_4268, n2_adj_4269, 
        n161, n30300, n26096, n15502;
    wire [31:0]n133;
    
    wire n1982, n13749, n2_adj_4270, n30_adj_4271, n30830, n34, 
        n30898, n30793, n30840, n30646, n32, n30458, n27901, n27824;
    wire [7:0]\data_in_frame[19] ;   // verilog/coms.v(99[12:25])
    
    wire n33, n30731, n30399, n27872, n31, n30685, n27998, n32288, 
        n30649, n27908, n32542, n6_adj_4272, n32262, n2_adj_4273;
    wire [7:0]\data_in_frame[1] ;   // verilog/coms.v(99[12:25])
    
    wire Kp_23__N_642;
    wire [7:0]\data_in_frame[4] ;   // verilog/coms.v(99[12:25])
    
    wire n30806;
    wire [7:0]\data_in_frame[10] ;   // verilog/coms.v(99[12:25])
    wire [7:0]\data_in_frame[11] ;   // verilog/coms.v(99[12:25])
    
    wire n30718;
    wire [7:0]\data_in_frame[12] ;   // verilog/coms.v(99[12:25])
    
    wire n11650, n30821, n30719, n30426, n30746, n31964, n27557, 
        n31969, n27996, n30883, n2_adj_4274, n30299, n26095, n12235, 
        n6_adj_4275, n27847, n30889, n27124, n30692, n37117, n30907, 
        n2_adj_4276;
    wire [7:0]\data_in_frame[21] ;   // verilog/coms.v(99[12:25])
    
    wire n4_adj_4277, n30544, n2_adj_4278, n10997, n12555, n32007, 
        n35421, n2_adj_4279, n2_adj_4280, n2_adj_4281, n2_adj_4282, 
        n13687, n14116, n26469, n35448, n13689, n26468, n35447, 
        n13691, n26467, n35446, n2_adj_4283, n2_adj_4284, n13693, 
        n26466, n35445, n2_adj_4285, n4_adj_4286, n2_adj_4287, n15499, 
        n35504, n7, n15496, n15493, n35503, n32501, n35426, n11, 
        n29967, n35496, n37398, n35418, n15487, n2_adj_4288, n2_adj_4289, 
        n15484, n15481, n15478, n15475, n2_adj_4290, n2_adj_4291, 
        n2_adj_4292, n15472, n2_adj_4293, n2_adj_4294, n9803, n12229, 
        n30778, n2_adj_4295, n27320, n30625, n27885, n2_adj_4296, 
        n2_adj_4297, n2_adj_4298, n2_adj_4299, n2_adj_4300, n13695, 
        n26465, n35444;
    wire [7:0]\data_in_frame[7] ;   // verilog/coms.v(99[12:25])
    
    wire n6_adj_4301, n30698, n1_c, n2_adj_4302, n35531, n23_c, 
        n32150, n10_adj_4303, n33766, n32259, n8_adj_4304, n19, 
        n19_adj_4305, n35, n35322, n11_adj_4306, n30_adj_4307, n30668, 
        n26_adj_4308, n35532, n37386, n29_c, n36655;
    wire [7:0]tx_data;   // verilog/coms.v(108[13:20])
    
    wire n2_adj_4309, n2_adj_4310;
    wire [7:0]control_mode;   // verilog/coms.v(17[19:31])
    
    wire n2_adj_4311, n2_adj_4312, n12263, n32353, n2_adj_4313, n25, 
        n2_adj_4314, n35427, n2_adj_4315, n2_adj_4316, n2_adj_4317, 
        n13697, n26464, n35443, n35428, n11888, n27910, n2_adj_4318, 
        n2_adj_4319, n5, n3303, \FRAME_MATCHER.i_31__N_2382 , n31934, 
        n2_adj_4320, n2_adj_4321, n30867, n11640, n30695, n30608, 
        n12168, n30441, n17408, \FRAME_MATCHER.i_31__N_2384 , n679, 
        n748, n12732, n788, n2_adj_4322, n2_adj_4323, n2_adj_4324, 
        n682, n7_adj_4325, n13_adj_4326, n29797, n2_adj_4327, n2_adj_4328, 
        n2_adj_4329, n30277, n685, n11296, n7053, n2_adj_4330, n777, 
        n93, n776, n5_adj_4331, n2_adj_4332, n2_adj_4333, n11233, 
        n24464, n11363, n31991, n30298, tx_transmit_N_3286, n2_adj_4334, 
        n2_adj_4335, n2_adj_4336, n2_adj_4337, n30850, n2_adj_4338, 
        n2_adj_4339, n13699, n26463, n35442, n2_adj_4340, n15149, 
        n745, n8607, n30987, n32494, n13364;
    wire [7:0]\data_in[2] ;   // verilog/coms.v(98[12:19])
    wire [7:0]\data_in[3] ;   // verilog/coms.v(98[12:19])
    
    wire n10_adj_4341;
    wire [7:0]\data_in[0] ;   // verilog/coms.v(98[12:19])
    
    wire n14_adj_4342, n11360;
    wire [7:0]\data_in[1] ;   // verilog/coms.v(98[12:19])
    
    wire n11380, n18, n11372, n20, n15, n20_adj_4343, n11216, 
        n19_adj_4344, n33901, n16_adj_4345, n17_adj_4346, n10_adj_4347, 
        n14_adj_4348, n13701, n26462, n35441, n15_adj_4349, n35429, 
        n16_adj_4350, n35430, n30_adj_4351, n17_adj_4352;
    wire [7:0]\data_in_frame[5] ;   // verilog/coms.v(99[12:25])
    
    wire n15179, n35431, n35432, n15469, n35433, n22372, n32023, 
        \FRAME_MATCHER.i_31__N_2381 , n22013, n6_adj_4353, n17411, n37448, 
        n35434, n35435, n15466, n30689, n42_adj_4354, n26952, n8_adj_4355, 
        n796, Kp_23__N_1618, n27895, n40_adj_4356, n35436, n15463, 
        n15460, n35437, n13703, n26461, n35440, n35438, Kp_23__N_937, 
        n45, n30892, n30706, n30535, n44_adj_4357, n27881, n30617, 
        n43_adj_4358, n35368, n31886, n47, n35439;
    wire [7:0]\data_in_frame[18]_c ;   // verilog/coms.v(99[12:25])
    
    wire n30847, n6_adj_4359, n26989, n13705, n26460, n30763, n11758, 
        n49, n27891, n31794, n44_adj_4360, n42_adj_4361, n43_adj_4362, 
        n41_adj_4363, n40_adj_4364, n39, n15457, n50, n11686, n6_adj_4365, 
        n45_adj_4366, n4452, n11658, n30480, n15454, n30374, n30557, 
        n15451, n15448, n27140, n26963, n30721, n8_adj_4367, n27864, 
        n26959, n12172, n6_adj_4368, n27830, n11956;
    wire [7:0]\data_in_frame[9] ;   // verilog/coms.v(99[12:25])
    
    wire n27487, n27887, n13707, n26459, n15445, n6_adj_4369, n29_adj_4370, 
        n27175, n22_adj_4371, n37487, n12456, n30502, n12130, n12426, 
        n27021, n6_adj_4372, n26961, n30628, n11_adj_4373, n14_adj_4374, 
        n4_adj_4375, n35501, n15442, n15119, n7_adj_4376, n35500, 
        n11_adj_4377, n35495, n15439, n13709, n26458, n4_adj_4378, 
        n13711, n26457, n15436, n13713, n26456, n35413, n7_adj_4379;
    wire [7:0]\data_in_frame[8] ;   // verilog/coms.v(99[12:25])
    
    wire n30727, n37380, n13_adj_4380, n13715, n26455, n13920, n19530, 
        n15433, n13717, n26454, n37350, n35420, n11818, n12619, 
        n10_adj_4381, n13719, n26453, n35419, n13721, n26452, n13723, 
        n26451, n13725, n26450, n10_adj_4382, n35536, n15430, n35493, 
        n13727, n26449, n13729, n26448, n15427, n15423, Kp_23__N_585, 
        n11727, n13731, n26447, n13733, n26446, n35506, n15419, 
        n17_adj_4383, n35494, n37356, n35467, n35466, n4_adj_4384, 
        n3_adj_4385, n36575, n13735, n26445, n15416, n35488, n11_adj_4386, 
        n30781, n35490, n37362, n35469, n13737, n26444, n15413, 
        n15410, n30467, n35468, n27088, n30552, n8_adj_4387, n15406, 
        n30910, n35383, n21600, n35486, n27094, n30844, n32490, 
        n35482, n11_adj_4388, n35487, n27851, n13739, n26443, n35408, 
        n13741, n26442, n35396, n13743, n26441, n35395, n13745, 
        n26440, n35394, n29971, n13747, n26439, n35393, n22276, 
        n22366, n32082, n27812, n35507, n35508, n37389, n29941;
    wire [2:0]r_SM_Main_2__N_3415;
    
    wire n15155, n37395, n35363, n7_adj_4389, n11933, n27922, n30853, 
        n35471, n35470, n12067, Kp_23__N_844, n30510, n30815, n14_adj_4390, 
        n35417, n6_adj_4391, n2_adj_4392, n37383, n30824, n3_adj_4393, 
        n7_adj_4394, n15239, n30379, n15242, n2_adj_4395, n15344, 
        n9505, n30836, n6_adj_4396, n15341, n27007, n13_adj_4397, 
        n15338, Kp_23__N_618, n30470, n30657, n30417, n15335, n15332, 
        n37377;
    wire [7:0]\data_in_frame[2] ;   // verilog/coms.v(99[12:25])
    
    wire n3_adj_4398, n26_adj_4399, n30434, n30_adj_4400, n15328, 
        n30591, n15325, n26525, n10_adj_4401, n78, n15322, n15319, 
        n15317, n12616, n33770, n23_adj_4402, n32_adj_4403, n11620, 
        n12146, n11598, n27_c, n15313, n15310, n22_adj_4404, n1_adj_4405, 
        n1449, n2_adj_4406, n15306, n30523, n1_adj_4407, n1_adj_4408, 
        n1_adj_4409, n37371, n1_adj_4410, n37374, Kp_23__N_742, Kp_23__N_745, 
        n30858, n6_adj_4411, n25470, n10_adj_4412, n1_adj_4413, n37359, 
        n37353, n14627, n1_adj_4414, n37347, n12851, n18_adj_4415, 
        n14625, n164, n8_adj_4416, n57, Kp_23__N_1259, n15303, n15275, 
        n15278, n15282, n15297, n15294, n15291, n15288, n15285, 
        n15274, n15273, n15272, n15271, n15270, n15269, n15268, 
        n15267, n15266, n15265, n15264, n15263, n11731, n12225, 
        n15262, n12247, n15261, n15260, n30569, n12471, n10_adj_4417, 
        n15259, n15258, n15257, n15256, n15255, n15254, Kp_23__N_669, 
        n15253, n30573, n15252, n30769, n8_adj_4418, n4_adj_4419, 
        n15251, n27925, n32572, n27009, n30654, n37317, n30341, 
        n15250, n37311, n37305, n37299, n25460, n30351, n15249, 
        n11630, n7_adj_4420, n15248, n15247, n15246, n15245, n15235, 
        n27573, n32265, n27222, n30402, n27097, n30880, n30527, 
        Kp_23__N_637, n11979, n7_adj_4421, n15125, n15122, n30637, 
        n3_adj_4422, n3_adj_4423, n3_adj_4424, n3_adj_4425, n3_adj_4426, 
        n3_adj_4427, n3_adj_4428, n3_adj_4429, n3_adj_4430, n3_adj_4431, 
        n3_adj_4432, n3_adj_4433, n3_adj_4434, n3_adj_4435, n30775, 
        n37119, n7_adj_4436, n1_adj_4437, n5_adj_4438, n12875, n15529, 
        n29865, n29895, n15532, n15535, n15538, n15541, n15544, 
        n29911, n15838, n15835, n15828, n15815, n15803, n15798, 
        n12153, n30448, n10_adj_4439, n15753, n15750, n15747, n15744, 
        n15741, n15738, n117, n21305, n15735, n15732, n15574, 
        n15577, n15580, n15583, n15586, n15589, n15592, n15595, 
        n15706, n30755, n30506, n15642, n15658, n15655, n29781, 
        n6_adj_4440, n15641, n9799, n15640, n12253, n6_adj_4441, 
        n71, n30371, n30393, n27956, n6_adj_4442, n30790, n21335, 
        n30864, n10_adj_4443, n30405, n30766, n30464, n32_adj_4444, 
        n116, n21320, n30411, Kp_23__N_748, n30548, n21275, n30566, 
        n10_adj_4445, n25461, Kp_23__N_955, n27795, n30662, n8_adj_4446, 
        n12, n21290, n10_adj_4447, Kp_23__N_713, n33754, n12661, 
        n27992, n6_adj_4448, Kp_23__N_739, n26818, n18_adj_4449, n1_adj_4450, 
        n27011, n6_adj_4451, n6_adj_4452, n32418, n27080, n30611, 
        n30473, n25469, n27883, n26680, n26_adj_4453, n11774, n8_adj_4454, 
        n14153, n6_adj_4455, n30368, n27793, n30681, n30414, n81, 
        n87, n12280, n31858, n30740, n30784, n30622, n32_adj_4456, 
        Kp_23__N_1141, n36, n30743, n34_adj_4457, n35_adj_4458, n33_adj_4459, 
        n30818, n35479, n30803, n35477, n11_adj_4461, n30333, n37293, 
        n1_adj_4462, n8_adj_4463, n17414, n11583, n11811, n12_adj_4464, 
        n10_adj_4465, n30485, n11_adj_4466, n9, n27853, n12_adj_4467, 
        n32009, n12212, n6_adj_4468, n27359, n28_adj_4469, n27845, 
        n19_adj_4470, n33895, n30710, n6_adj_4472, n30423, n10_adj_4473, 
        n31_adj_4474, n30513, n32072, n27860, n30634, n14_adj_4475, 
        n30678, n15_adj_4476, n27820, n27980, n10_adj_4477, n31736, 
        n5_adj_4478, n27964, n27843, n30904, n20_adj_4479, n19_adj_4480, 
        n27804, n21, n27818, n27473, n10_adj_4481, n30886, n30800, 
        n10_adj_4482, n21_adj_4483, n20_adj_4484, n24, n30870, n30734, 
        n10_adj_4485, n40_adj_4486, n38_adj_4487, n39_adj_4488, n37486, 
        n37, n42_adj_4489, n46, n41_adj_4490, n26984, n16_adj_4491, 
        n12_adj_4492, n17_adj_4493, n30563, n30643, n12_adj_4494, 
        n30582, n14_adj_4495, n15_adj_4496, n16_adj_4497, n17_adj_4498, 
        n37_adj_4499, n36_adj_4500, n27940, n42_adj_4501, n40_adj_4502, 
        n41_adj_4503, n39_adj_4504, n22_adj_4505, n21_adj_4506, n23_adj_4507, 
        n30772, n30585, n30600, n27814, n6_adj_4509, n8_adj_4510, 
        n30579, n31978;
    
    SB_DFFE data_in_frame_0___i113 (.Q(\data_in_frame[14] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15526));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut (.I0(n12036), .I1(n30476), .I2(GND_net), .I3(GND_net), 
            .O(n27131));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut (.I0(\data_out_frame[4] [4]), .I1(\data_out_frame[4] [0]), 
            .I2(\data_out_frame[4] [1]), .I3(GND_net), .O(n30631));   // verilog/coms.v(75[16:27])
    defparam i2_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i2_2_lut (.I0(\data_out_frame[12] [1]), .I1(\data_out_frame[12] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n10));   // verilog/coms.v(100[12:26])
    defparam i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut (.I0(\data_out_frame[12] [3]), .I1(\data_out_frame[12] [4]), 
            .I2(n30396), .I3(\data_out_frame[12] [5]), .O(n14));   // verilog/coms.v(100[12:26])
    defparam i6_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut (.I0(\data_out_frame[5] [7]), .I1(n14), .I2(n10), 
            .I3(\data_out_frame[4] [1]), .O(n30605));   // verilog/coms.v(100[12:26])
    defparam i7_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1029 (.I0(\data_out_frame[5] [4]), .I1(n30444), 
            .I2(\data_out_frame[5] [3]), .I3(GND_net), .O(n30752));   // verilog/coms.v(74[16:62])
    defparam i2_3_lut_adj_1029.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1030 (.I0(\data_in_frame[16] [4]), .I1(\data_in_frame[16] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30640));
    defparam i1_2_lut_adj_1030.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1031 (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n4_c));   // verilog/coms.v(74[16:62])
    defparam i1_2_lut_adj_1031.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1032 (.I0(\data_out_frame[5] [0]), .I1(\data_out_frame[4] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30861));
    defparam i1_2_lut_adj_1032.LUT_INIT = 16'h6666;
    SB_DFFER setpoint_i0_i2 (.Q(setpoint[2]), .C(clk16MHz), .E(n13378), 
            .D(n2766[2]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i1 (.Q(setpoint[1]), .C(clk16MHz), .E(n13378), 
            .D(n2766[1]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1033 (.I0(\data_out_frame[12] [0]), .I1(n30605), 
            .I2(GND_net), .I3(GND_net), .O(n6_c));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_adj_1033.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i112 (.Q(\data_in_frame[13] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15523));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[4] [0]), 
            .I2(n11135), .I3(n6_c), .O(n27653));   // verilog/coms.v(76[16:42])
    defparam i4_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i31028_2_lut (.I0(\FRAME_MATCHER.i [6]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35409));   // verilog/coms.v(158[12:15])
    defparam i31028_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i16_4_lut (.I0(\data_out_frame[12] [4]), .I1(n27035), .I2(\data_out_frame[14] [2]), 
            .I3(\data_out_frame[14] [6]), .O(n40));   // verilog/coms.v(74[16:62])
    defparam i16_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut (.I0(n30877), .I1(n4_c), .I2(n30749), .I3(\data_out_frame[13] [1]), 
            .O(n38));   // verilog/coms.v(74[16:62])
    defparam i14_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i20_4_lut (.I0(\data_out_frame[14] [1]), .I1(n40), .I2(n30), 
            .I3(n30861), .O(n44));   // verilog/coms.v(74[16:62])
    defparam i20_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut (.I0(n30752), .I1(n30631), .I2(\data_out_frame[4] [2]), 
            .I3(n30430), .O(n42));   // verilog/coms.v(74[16:62])
    defparam i18_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut (.I0(\data_out_frame[14] [3]), .I1(n38), .I2(n26), 
            .I3(n30390), .O(n43));   // verilog/coms.v(74[16:62])
    defparam i19_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i17_4_lut (.I0(n27653), .I1(n30444), .I2(n12545), .I3(n10950), 
            .O(n41));   // verilog/coms.v(74[16:62])
    defparam i17_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i23_4_lut (.I0(n41), .I1(n43), .I2(n42), .I3(n44), .O(n32270));   // verilog/coms.v(74[16:62])
    defparam i23_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut (.I0(n27131), .I1(n32270), .I2(n27035), .I3(n11611), 
            .O(n12588));
    defparam i3_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1034 (.I0(\data_out_frame[14] [5]), .I1(n12588), 
            .I2(n12411), .I3(GND_net), .O(n12196));
    defparam i2_3_lut_adj_1034.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1035 (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[5] [3]), .I3(GND_net), .O(n11850));   // verilog/coms.v(100[12:26])
    defparam i2_3_lut_adj_1035.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1036 (.I0(\data_out_frame[5] [5]), .I1(\data_out_frame[5] [3]), 
            .I2(\data_out_frame[14] [3]), .I3(n37115), .O(n30499));   // verilog/coms.v(100[12:26])
    defparam i3_4_lut_adj_1036.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut (.I0(\data_out_frame[14] [2]), .I1(\data_out_frame[12] [0]), 
            .I2(n30675), .I3(\data_out_frame[12] [1]), .O(n27002));
    defparam i1_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1037 (.I0(n27002), .I1(n11611), .I2(n30516), 
            .I3(n30499), .O(n27312));   // verilog/coms.v(88[17:28])
    defparam i3_4_lut_adj_1037.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1038 (.I0(n27212), .I1(n11551), .I2(n11022), 
            .I3(GND_net), .O(n32149));
    defparam i2_3_lut_adj_1038.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1039 (.I0(\data_out_frame[23] [4]), .I1(n32149), 
            .I2(GND_net), .I3(GND_net), .O(n30701));
    defparam i1_2_lut_adj_1039.LUT_INIT = 16'h9999;
    SB_LUT4 i2_3_lut_adj_1040 (.I0(n27212), .I1(n12432), .I2(n27312), 
            .I3(GND_net), .O(n27832));
    defparam i2_3_lut_adj_1040.LUT_INIT = 16'h9696;
    SB_LUT4 add_673_9_lut (.I0(n30296), .I1(byte_transmit_counter[7]), .I2(GND_net), 
            .I3(n26101), .O(n30297)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_2_lut_adj_1041 (.I0(\data_out_frame[14] [5]), .I1(n12411), 
            .I2(GND_net), .I3(GND_net), .O(n11611));
    defparam i1_2_lut_adj_1041.LUT_INIT = 16'h6666;
    SB_LUT4 add_673_8_lut (.I0(n30296), .I1(byte_transmit_counter[6]), .I2(GND_net), 
            .I3(n26100), .O(n30304)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_8_lut.LUT_INIT = 16'h8228;
    SB_DFFE data_in_frame_0___i111 (.Q(\data_in_frame[13] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15520));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_2_lut (.I0(\data_out_frame[4] [0]), .I1(\data_out_frame[5] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n1516));   // verilog/coms.v(88[17:70])
    defparam i6_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1042 (.I0(\data_out_frame[13] [1]), .I1(\data_out_frame[5] [7]), 
            .I2(\data_out_frame[12] [7]), .I3(\data_out_frame[4] [4]), .O(n10_adj_4249));   // verilog/coms.v(76[16:42])
    defparam i4_4_lut_adj_1042.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut (.I0(\data_out_frame[4] [0]), .I1(n10_adj_4249), .I2(\data_out_frame[4] [3]), 
            .I3(GND_net), .O(n30452));   // verilog/coms.v(76[16:42])
    defparam i5_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1043 (.I0(\data_out_frame[12] [6]), .I1(\data_out_frame[14] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30873));
    defparam i1_2_lut_adj_1043.LUT_INIT = 16'h6666;
    SB_LUT4 i13_2_lut (.I0(\data_out_frame[5] [6]), .I1(\data_out_frame[4] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n1522));   // verilog/coms.v(100[12:26])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i375_2_lut (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n1191));   // verilog/coms.v(74[16:27])
    defparam i375_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i110 (.Q(\data_in_frame[13] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15517));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1044 (.I0(\data_out_frame[12] [6]), .I1(\data_out_frame[12] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30396));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_adj_1044.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1045 (.I0(n1522), .I1(n30873), .I2(n30796), .I3(n30452), 
            .O(n30901));
    defparam i3_4_lut_adj_1045.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1046 (.I0(n11022), .I1(n12432), .I2(n12349), 
            .I3(GND_net), .O(n11890));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_adj_1046.LUT_INIT = 16'h9696;
    SB_LUT4 i9_2_lut (.I0(n12349), .I1(n11551), .I2(GND_net), .I3(GND_net), 
            .O(n9545));
    defparam i9_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i109 (.Q(\data_in_frame[13] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15514));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_441_Select_208_i3_4_lut (.I0(\data_out_frame[23] [6]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n8), .I3(n9547), .O(n3));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_208_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 select_441_Select_207_i2_4_lut (.I0(\data_out_frame[25] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_207_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i9_4_lut (.I0(n17), .I1(n32533), .I2(n16), .I3(\data_in_frame[20] [0]), 
            .O(n32143));
    defparam i9_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 select_441_Select_206_i2_4_lut (.I0(\data_out_frame[25] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4250));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_206_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_205_i2_4_lut (.I0(\data_out_frame[25] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4251));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_205_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_204_i2_4_lut (.I0(\data_out_frame[25] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4252));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_204_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1047 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[25] [3]), 
            .I2(neopxl_color[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4253));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1047.LUT_INIT = 16'ha088;
    SB_LUT4 i31033_2_lut (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35410));   // verilog/coms.v(158[12:15])
    defparam i31033_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6_3_lut (.I0(n13), .I1(n31973), .I2(n14_adj_4254), .I3(GND_net), 
            .O(n22));
    defparam i6_3_lut.LUT_INIT = 16'h4848;
    SB_DFFE data_in_frame_0___i108 (.Q(\data_in_frame[13] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15511));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY add_673_8 (.CI(n26100), .I0(byte_transmit_counter[6]), .I1(GND_net), 
            .CO(n26101));
    SB_LUT4 select_441_Select_202_i2_4_lut (.I0(\data_out_frame[25] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4255));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_202_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_201_i2_4_lut (.I0(\data_out_frame[25] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4256));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_201_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_200_i2_4_lut (.I0(\data_out_frame[25] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4257));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_200_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i4_4_lut_adj_1048 (.I0(n30809), .I1(n30420), .I2(\data_in_frame[6] [1]), 
            .I3(n6_adj_4258), .O(n30496));   // verilog/coms.v(80[16:43])
    defparam i4_4_lut_adj_1048.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i107 (.Q(\data_in_frame[13] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15508));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_441_Select_199_i2_4_lut (.I0(\data_out_frame[24] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[15]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4259));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_199_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 add_673_7_lut (.I0(n30296), .I1(byte_transmit_counter[5]), .I2(GND_net), 
            .I3(n26099), .O(n30303)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_673_7 (.CI(n26099), .I0(byte_transmit_counter[5]), .I1(GND_net), 
            .CO(n26100));
    SB_DFFE data_in_frame_0___i106 (.Q(\data_in_frame[13] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15505));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_441_Select_198_i2_4_lut (.I0(\data_out_frame[24] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[14]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4260));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_198_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 add_673_6_lut (.I0(n30296), .I1(byte_transmit_counter[4]), .I2(GND_net), 
            .I3(n26098), .O(n30302)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_441_Select_197_i2_4_lut (.I0(\data_out_frame[24] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[13]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4261));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_197_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1049 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[24] [4]), 
            .I2(neopxl_color[12]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4262));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1049.LUT_INIT = 16'ha088;
    SB_CARRY add_673_6 (.CI(n26098), .I0(byte_transmit_counter[4]), .I1(GND_net), 
            .CO(n26099));
    SB_LUT4 select_441_Select_195_i2_4_lut (.I0(\data_out_frame[24] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[11]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4263));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_195_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1050 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[24] [2]), 
            .I2(neopxl_color[10]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4264));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1050.LUT_INIT = 16'ha088;
    SB_LUT4 select_441_Select_193_i2_4_lut (.I0(\data_out_frame[24] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[9]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4265));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_193_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_192_i2_4_lut (.I0(\data_out_frame[24] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[8]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4266));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_192_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i12_4_lut (.I0(\data_in_frame[22] [6]), .I1(n33764), .I2(n32242), 
            .I3(n32510), .O(n28));
    defparam i12_4_lut.LUT_INIT = 16'h2010;
    SB_LUT4 select_441_Select_191_i2_4_lut (.I0(\data_out_frame[23] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[23]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4267));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_191_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i3_4_lut_adj_1051 (.I0(\data_in_frame[23] [7]), .I1(n30594), 
            .I2(n11797), .I3(n32257), .O(n31824));
    defparam i3_4_lut_adj_1051.LUT_INIT = 16'h9669;
    SB_LUT4 add_673_5_lut (.I0(n30296), .I1(byte_transmit_counter[3]), .I2(GND_net), 
            .I3(n26097), .O(n30301)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_441_Select_190_i2_4_lut (.I0(\data_out_frame[23] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[22]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4268));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_190_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_189_i2_4_lut (.I0(\data_out_frame[23] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[21]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4269));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_189_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY add_673_5 (.CI(n26097), .I0(byte_transmit_counter[3]), .I1(GND_net), 
            .CO(n26098));
    SB_LUT4 i14_2_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(GND_net), .I3(GND_net), .O(n161));   // verilog/coms.v(156[9:50])
    defparam i14_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_673_4_lut (.I0(n30296), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(n26096), .O(n30300)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_4_lut.LUT_INIT = 16'h8228;
    SB_DFFE data_in_frame_0___i105 (.Q(\data_in_frame[13] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15502));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY add_673_4 (.CI(n26096), .I0(byte_transmit_counter[2]), .I1(GND_net), 
            .CO(n26097));
    SB_LUT4 i9556_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(n133[0]), .I2(n1982), 
            .I3(\FRAME_MATCHER.i_31__N_2377 ), .O(n13749));   // verilog/coms.v(158[12:15])
    defparam i9556_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 select_441_Select_188_i2_4_lut (.I0(\data_out_frame[23] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[20]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4270));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_188_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i15_4_lut (.I0(\data_in_frame[22][7] ), .I1(n30_adj_4271), .I2(\data_in_frame[18] [5]), 
            .I3(n30830), .O(n34));
    defparam i15_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut (.I0(n30898), .I1(n30793), .I2(n30840), .I3(n30646), 
            .O(n32));
    defparam i13_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_1052 (.I0(n30458), .I1(n27901), .I2(n27824), 
            .I3(\data_in_frame[19] [6]), .O(n33));
    defparam i14_4_lut_adj_1052.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut_adj_1053 (.I0(n30731), .I1(\data_in_frame[19] [3]), 
            .I2(n30399), .I3(n27872), .O(n31));
    defparam i12_4_lut_adj_1053.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1054 (.I0(\data_in_frame[20] [2]), .I1(n30685), 
            .I2(\data_in_frame[22][4] ), .I3(n27998), .O(n32288));
    defparam i3_4_lut_adj_1054.LUT_INIT = 16'h9669;
    SB_LUT4 i4_4_lut_adj_1055 (.I0(n30649), .I1(n27908), .I2(n32542), 
            .I3(n6_adj_4272), .O(n32262));
    defparam i4_4_lut_adj_1055.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_187_i2_4_lut (.I0(\data_out_frame[23] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[19]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4273));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_187_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 data_in_frame_1__7__I_0_2_lut (.I0(\data_in_frame[1] [7]), .I1(\data_in_frame[1] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_642));   // verilog/coms.v(81[16:27])
    defparam data_in_frame_1__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1056 (.I0(\data_in_frame[3] [6]), .I1(\data_in_frame[4] [0]), 
            .I2(\data_in_frame[4][1] ), .I3(GND_net), .O(n30806));   // verilog/coms.v(81[16:27])
    defparam i2_3_lut_adj_1056.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1057 (.I0(\data_in_frame[10] [7]), .I1(\data_in_frame[11] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30718));
    defparam i1_2_lut_adj_1057.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1058 (.I0(\data_in_frame[12] [7]), .I1(n11650), 
            .I2(GND_net), .I3(GND_net), .O(n30821));
    defparam i1_2_lut_adj_1058.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1059 (.I0(n30719), .I1(n30821), .I2(n30426), 
            .I3(\data_in_frame[10] [6]), .O(n30746));
    defparam i3_4_lut_adj_1059.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_1060 (.I0(n31964), .I1(n27557), .I2(n31969), 
            .I3(n27996), .O(n30883));
    defparam i3_4_lut_adj_1060.LUT_INIT = 16'h9669;
    SB_LUT4 select_441_Select_186_i2_4_lut (.I0(\data_out_frame[23] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[18]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4274));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_186_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 add_673_3_lut (.I0(n30296), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(n26095), .O(n30299)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_673_3 (.CI(n26095), .I0(\byte_transmit_counter[1] ), .I1(GND_net), 
            .CO(n26096));
    SB_LUT4 i4_4_lut_adj_1061 (.I0(n12235), .I1(\data_in_frame[15] [5]), 
            .I2(n30458), .I3(n6_adj_4275), .O(n27847));
    defparam i4_4_lut_adj_1061.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1062 (.I0(n30889), .I1(n27124), .I2(\data_in_frame[17] [7]), 
            .I3(GND_net), .O(n30692));
    defparam i2_3_lut_adj_1062.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1063 (.I0(n37117), .I1(\data_in_frame[17] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30907));
    defparam i1_2_lut_adj_1063.LUT_INIT = 16'h9999;
    SB_LUT4 select_441_Select_185_i2_4_lut (.I0(\data_out_frame[23] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(neopxl_color[17]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4276));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_185_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut (.I0(\data_in_frame[19] [5]), .I1(\data_in_frame[21] [7]), 
            .I2(n4_adj_4277), .I3(\data_in_frame[19] [7]), .O(n30544));
    defparam i2_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i1_4_lut_adj_1064 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[23] [0]), 
            .I2(neopxl_color[16]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4278));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1064.LUT_INIT = 16'ha088;
    SB_LUT4 i2_3_lut_adj_1065 (.I0(n10997), .I1(n12555), .I2(\data_in_frame[23] [1]), 
            .I3(GND_net), .O(n32007));
    defparam i2_3_lut_adj_1065.LUT_INIT = 16'h9696;
    SB_LUT4 i31197_2_lut (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35421));   // verilog/coms.v(158[12:15])
    defparam i31197_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_441_Select_119_i2_4_lut (.I0(\data_out_frame[14] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4279));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_119_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_118_i2_4_lut (.I0(\data_out_frame[14] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4280));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_118_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_117_i2_4_lut (.I0(\data_out_frame[14] [5]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4281));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_117_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_116_i2_4_lut (.I0(\data_out_frame[14] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4282));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_116_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_33_lut  (.I0(n35448), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [31]), .I3(n26469), .O(n13687)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_33_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_32_lut  (.I0(n35447), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [30]), .I3(n26468), .O(n13689)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_32_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_32  (.CI(n26468), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [30]), .CO(n26469));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_31_lut  (.I0(n35446), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [29]), .I3(n26467), .O(n13691)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_31_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_31  (.CI(n26467), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [29]), .CO(n26468));
    SB_LUT4 select_441_Select_115_i2_4_lut (.I0(\data_out_frame[14] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4283));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_115_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_114_i2_4_lut (.I0(\data_out_frame[14] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4284));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_114_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_30_lut  (.I0(n35445), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [28]), .I3(n26466), .O(n13693)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_30_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_441_Select_113_i2_4_lut (.I0(\data_out_frame[14] [1]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4285));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_113_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i4_3_lut (.I0(\data_out_frame[4] [7]), 
            .I1(\data_out_frame[5] [7]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4286));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1066 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[14] [0]), 
            .I2(setpoint[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4287));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1066.LUT_INIT = 16'ha088;
    SB_DFFE data_in_frame_0___i104 (.Q(\data_in_frame[12] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15499));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31207_4_lut (.I0(\data_out_frame[1][7] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][7] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35504));   // verilog/coms.v(109[34:55])
    defparam i31207_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i7_4_lut (.I0(n35504), .I1(n4_adj_4286), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE data_in_frame_0___i103 (.Q(\data_in_frame[12] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15496));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i102 (.Q(\data_in_frame[12] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15493));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31205_2_lut (.I0(\data_out_frame[14] [7]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35503));   // verilog/coms.v(109[34:55])
    defparam i31205_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18_4_lut_adj_1067 (.I0(n31), .I1(n33), .I2(n32), .I3(n34), 
            .O(n32501));
    defparam i18_4_lut_adj_1067.LUT_INIT = 16'h6996;
    SB_LUT4 i31418_2_lut (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35426));   // verilog/coms.v(158[12:15])
    defparam i31418_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_7_i11_3_lut (.I0(\data_out_frame[12] [7]), 
            .I1(\data_out_frame[13] [7]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_7_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i101 (.Q(\data_in_frame[12] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n29967));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31202_4_lut (.I0(n11), .I1(byte_transmit_counter[2]), .I2(n35503), 
            .I3(\byte_transmit_counter[1] ), .O(n35496));
    defparam i31202_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31154_2_lut (.I0(n37398), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35418));
    defparam i31154_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i100 (.Q(\data_in_frame[12] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15487));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1068 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[13] [7]), 
            .I2(setpoint[15]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4288));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1068.LUT_INIT = 16'ha088;
    SB_LUT4 select_441_Select_110_i2_4_lut (.I0(\data_out_frame[13] [6]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[14]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4289));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_110_i2_4_lut.LUT_INIT = 16'hc088;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_30  (.CI(n26466), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [28]), .CO(n26467));
    SB_DFFE data_in_frame_0___i99 (.Q(\data_in_frame[12] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15484));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i98 (.Q(\data_in_frame[12] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15481));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i97 (.Q(\data_in_frame[12] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15478));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_646_i1_3_lut (.I0(\data_in_frame[19] [0]), .I1(\data_in_frame[3] [0]), 
            .I2(n17410), .I3(GND_net), .O(n2766[0]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i1_3_lut.LUT_INIT = 16'hacac;
    SB_DFFE data_in_frame_0___i96 (.Q(\data_in_frame[11] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15475));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_4_lut_adj_1069 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[13] [5]), 
            .I2(setpoint[13]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4290));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1069.LUT_INIT = 16'ha088;
    SB_LUT4 select_441_Select_108_i2_4_lut (.I0(\data_out_frame[13] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[12]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4291));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_108_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_107_i2_4_lut (.I0(\data_out_frame[13] [3]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[11]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4292));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_107_i2_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i95 (.Q(\data_in_frame[11] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15472));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_441_Select_106_i2_4_lut (.I0(\data_out_frame[13] [2]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[10]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4293));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_106_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1070 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[13] [1]), 
            .I2(setpoint[9]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4294));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1070.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_1071 (.I0(n9803), .I1(n12229), .I2(GND_net), 
            .I3(GND_net), .O(n30778));
    defparam i1_2_lut_adj_1071.LUT_INIT = 16'h6666;
    SB_LUT4 select_441_Select_104_i2_4_lut (.I0(\data_out_frame[13] [0]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[8]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4295));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_104_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1072 (.I0(n27320), .I1(n30625), .I2(GND_net), 
            .I3(GND_net), .O(n27885));
    defparam i1_2_lut_adj_1072.LUT_INIT = 16'h6666;
    SB_LUT4 select_441_Select_103_i2_4_lut (.I0(\data_out_frame[12] [7]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[23]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4296));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_103_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1073 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[12] [6]), 
            .I2(setpoint[22]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4297));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1073.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_1074 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[12] [5]), 
            .I2(setpoint[21]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4298));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1074.LUT_INIT = 16'ha088;
    SB_LUT4 select_441_Select_100_i2_4_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\FRAME_MATCHER.i_31__N_2379 ), .I2(setpoint[20]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4299));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_100_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_99_i2_4_lut (.I0(\data_out_frame[12] [3]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[19]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4300));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_99_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_29_lut  (.I0(n35444), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [27]), .I3(n26465), .O(n13695)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_29_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i4_4_lut_adj_1075 (.I0(n27885), .I1(\data_in_frame[7] [7]), 
            .I2(n30778), .I3(n6_adj_4301), .O(n30698));
    defparam i4_4_lut_adj_1075.LUT_INIT = 16'h9669;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i1_3_lut (.I0(\data_out_frame[0][3] ), 
            .I1(\data_out_frame[1][3] ), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n1_c));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 select_441_Select_98_i2_4_lut (.I0(\data_out_frame[12] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[18]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4302));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_98_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31181_4_lut (.I0(\data_out_frame[4] [3]), .I1(\byte_transmit_counter[1] ), 
            .I2(\data_out_frame[5] [3]), .I3(\byte_transmit_counter[0] ), 
            .O(n35531));   // verilog/coms.v(109[34:55])
    defparam i31181_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i60_4_lut (.I0(n1_c), .I1(\data_out_frame[3][3] ), .I2(\byte_transmit_counter[1] ), 
            .I3(\byte_transmit_counter[0] ), .O(n23_c));   // verilog/coms.v(109[34:55])
    defparam i60_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i29122_4_lut (.I0(n32150), .I1(n32257), .I2(n10_adj_4303), 
            .I3(\data_in_frame[21][6] ), .O(n33766));
    defparam i29122_4_lut.LUT_INIT = 16'hbeeb;
    SB_LUT4 i3_4_lut_adj_1076 (.I0(\data_in_frame[20] [3]), .I1(n32259), 
            .I2(n8_adj_4304), .I3(n19), .O(n19_adj_4305));
    defparam i3_4_lut_adj_1076.LUT_INIT = 16'h4884;
    SB_LUT4 i59_4_lut (.I0(\data_out_frame[14] [3]), .I1(n35531), .I2(byte_transmit_counter[3]), 
            .I3(\byte_transmit_counter[0] ), .O(n35));   // verilog/coms.v(109[34:55])
    defparam i59_4_lut.LUT_INIT = 16'h0cac;
    SB_LUT4 i30667_2_lut (.I0(byte_transmit_counter[3]), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n35322));   // verilog/coms.v(109[34:55])
    defparam i30667_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_3_i11_3_lut (.I0(\data_out_frame[12] [3]), 
            .I1(\data_out_frame[13] [3]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4306));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_3_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_1077 (.I0(n31824), .I1(n28), .I2(n22), .I3(n32143), 
            .O(n30_adj_4307));
    defparam i14_4_lut_adj_1077.LUT_INIT = 16'h4000;
    SB_LUT4 i2_3_lut_adj_1078 (.I0(\data_in_frame[12] [2]), .I1(n30698), 
            .I2(\data_in_frame[10] [0]), .I3(GND_net), .O(n30668));
    defparam i2_3_lut_adj_1078.LUT_INIT = 16'h9696;
    SB_LUT4 i56_4_lut (.I0(n35), .I1(n23_c), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[3]), .O(n26_adj_4308));   // verilog/coms.v(109[34:55])
    defparam i56_4_lut.LUT_INIT = 16'ha0ac;
    SB_LUT4 i58_4_lut (.I0(n35532), .I1(n37386), .I2(byte_transmit_counter[3]), 
            .I3(byte_transmit_counter[2]), .O(n29_c));   // verilog/coms.v(109[34:55])
    defparam i58_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i32000_4_lut (.I0(n26_adj_4308), .I1(n11_adj_4306), .I2(byte_transmit_counter[2]), 
            .I3(n35322), .O(n36655));   // verilog/coms.v(109[34:55])
    defparam i32000_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i32001_3_lut (.I0(n36655), .I1(n29_c), .I2(byte_transmit_counter[4]), 
            .I3(GND_net), .O(tx_data[3]));   // verilog/coms.v(109[34:55])
    defparam i32001_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1079 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[12] [1]), 
            .I2(setpoint[17]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4309));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1079.LUT_INIT = 16'ha088;
    SB_LUT4 select_441_Select_96_i2_4_lut (.I0(\data_out_frame[12] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(setpoint[16]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4310));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_96_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_47_i2_4_lut (.I0(\data_out_frame[5] [7]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4311));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_47_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1080 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[5] [6]), 
            .I2(control_mode[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4312));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1080.LUT_INIT = 16'ha088;
    SB_LUT4 i3_4_lut_adj_1081 (.I0(\data_in_frame[14] [4]), .I1(n30668), 
            .I2(\data_in_frame[12] [3]), .I3(n12263), .O(n32353));
    defparam i3_4_lut_adj_1081.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_45_i2_4_lut (.I0(\data_out_frame[5] [5]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4313));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_45_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i9_4_lut_adj_1082 (.I0(n32501), .I1(n32007), .I2(n32262), 
            .I3(n32288), .O(n25));
    defparam i9_4_lut_adj_1082.LUT_INIT = 16'h4000;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_29  (.CI(n26465), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [27]), .CO(n26466));
    SB_LUT4 i1_4_lut_adj_1083 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[5] [4]), 
            .I2(control_mode[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4314));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1083.LUT_INIT = 16'ha088;
    SB_LUT4 i31063_2_lut (.I0(\FRAME_MATCHER.i [10]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35427));   // verilog/coms.v(158[12:15])
    defparam i31063_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 select_441_Select_43_i2_4_lut (.I0(\data_out_frame[5] [3]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4315));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_43_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_42_i2_4_lut (.I0(\data_out_frame[5] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4316));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_42_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1084 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[5] [1]), 
            .I2(control_mode[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4317));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1084.LUT_INIT = 16'ha088;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_28_lut  (.I0(n35443), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [26]), .I3(n26464), .O(n13697)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_28_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31064_2_lut (.I0(\FRAME_MATCHER.i [11]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35428));   // verilog/coms.v(158[12:15])
    defparam i31064_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i32462_4_lut (.I0(\data_in_frame[13] [1]), .I1(\data_in_frame[15] [3]), 
            .I2(n30746), .I3(\data_in_frame[13] [2]), .O(n37117));   // verilog/coms.v(99[12:25])
    defparam i32462_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_3_lut_4_lut_4_lut (.I0(n30620), .I1(n27002), .I2(n27802), 
            .I3(n11888), .O(n27910));
    defparam i3_4_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_40_i2_4_lut (.I0(\data_out_frame[5] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(control_mode[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .O(n2_adj_4318));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_40_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_39_i2_4_lut (.I0(\data_out_frame[4] [7]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[7]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4319));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_39_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i3_4_lut_adj_1085 (.I0(n5), .I1(n3303), .I2(\FRAME_MATCHER.i_31__N_2377 ), 
            .I3(\FRAME_MATCHER.i_31__N_2382 ), .O(n31934));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut_adj_1085.LUT_INIT = 16'hfbfa;
    SB_LUT4 select_441_Select_38_i2_4_lut (.I0(\data_out_frame[4] [6]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[6]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4320));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_38_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_37_i2_4_lut (.I0(\data_out_frame[4] [5]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[5]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4321));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_37_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_adj_1086 (.I0(\data_in_frame[10] [6]), .I1(\data_in_frame[12] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30867));
    defparam i1_2_lut_adj_1086.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1087 (.I0(n11640), .I1(n30695), .I2(n30608), 
            .I3(n12168), .O(n30441));   // verilog/coms.v(99[12:25])
    defparam i3_4_lut_adj_1087.LUT_INIT = 16'h6996;
    SB_LUT4 i15_4_lut_adj_1088 (.I0(n25), .I1(n30_adj_4307), .I2(n19_adj_4305), 
            .I3(n33766), .O(n17408));
    defparam i15_4_lut_adj_1088.LUT_INIT = 16'h0080;
    SB_LUT4 i1_2_lut_adj_1089 (.I0(\data_in_frame[16] [3]), .I1(\data_in_frame[16] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30646));
    defparam i1_2_lut_adj_1089.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1090 (.I0(\FRAME_MATCHER.i_31__N_2384 ), .I1(n679), 
            .I2(n748), .I3(n31934), .O(n12732));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1090.LUT_INIT = 16'hb3a0;
    SB_LUT4 i227_2_lut (.I0(n3303), .I1(\FRAME_MATCHER.i_31__N_2382 ), .I2(GND_net), 
            .I3(GND_net), .O(n788));   // verilog/coms.v(148[4] 304[11])
    defparam i227_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 select_441_Select_36_i2_4_lut (.I0(\data_out_frame[4] [4]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[4]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4322));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_36_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_35_i2_4_lut (.I0(\data_out_frame[4] [3]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[3]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4323));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_35_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_34_i2_4_lut (.I0(\data_out_frame[4] [2]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[2]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4324));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_34_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_1091 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(n682), 
            .I2(n7_adj_4325), .I3(n13_adj_4326), .O(n29797));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1091.LUT_INIT = 16'hb3a0;
    SB_LUT4 select_441_Select_33_i2_4_lut (.I0(\data_out_frame[4] [1]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[1]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4327));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_33_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_32_i2_4_lut (.I0(\data_out_frame[4] [0]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(ID[0]), .I3(\FRAME_MATCHER.state_31__N_2482 [3]), .O(n2_adj_4328));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_32_i2_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 select_441_Select_31_i2_3_lut (.I0(\data_out_frame[3][7] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4329));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_31_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3170_4_lut (.I0(n30277), .I1(\FRAME_MATCHER.state[3] ), .I2(n685), 
            .I3(n11296), .O(n7053));   // verilog/coms.v(148[4] 304[11])
    defparam i3170_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i1_3_lut (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[3][6] ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4330));
    defparam i1_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i216_2_lut (.I0(\FRAME_MATCHER.state_31__N_2482 [3]), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(GND_net), .I3(GND_net), .O(n777));   // verilog/coms.v(148[4] 304[11])
    defparam i216_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_1092 (.I0(\FRAME_MATCHER.i_31__N_2378 ), .I1(n93), 
            .I2(GND_net), .I3(GND_net), .O(n776));   // verilog/coms.v(118[11:12])
    defparam i1_2_lut_adj_1092.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_1093 (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i [0]), 
            .I2(\FRAME_MATCHER.i [1]), .I3(GND_net), .O(n5_adj_4331));   // verilog/coms.v(118[11:12])
    defparam i1_3_lut_adj_1093.LUT_INIT = 16'heaea;
    SB_LUT4 select_441_Select_28_i2_3_lut (.I0(\data_out_frame[3][4] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4332));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_28_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_3_lut_adj_1094 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .I2(\data_out_frame[3][3] ), .I3(GND_net), .O(n2_adj_4333));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_adj_1094.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_4_lut_adj_1095 (.I0(\FRAME_MATCHER.i [31]), .I1(n5_adj_4331), 
            .I2(n11233), .I3(\FRAME_MATCHER.i [3]), .O(n93));   // verilog/coms.v(118[11:12])
    defparam i1_4_lut_adj_1095.LUT_INIT = 16'h5554;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_28  (.CI(n26464), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [26]), .CO(n26465));
    SB_LUT4 i1_2_lut_adj_1096 (.I0(\FRAME_MATCHER.i_31__N_2378 ), .I1(n93), 
            .I2(GND_net), .I3(GND_net), .O(n24464));   // verilog/coms.v(118[11:12])
    defparam i1_2_lut_adj_1096.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1097 (.I0(\FRAME_MATCHER.i [4]), .I1(n11363), .I2(GND_net), 
            .I3(GND_net), .O(n11233));
    defparam i1_2_lut_adj_1097.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1098 (.I0(\FRAME_MATCHER.i [31]), .I1(\FRAME_MATCHER.i [3]), 
            .I2(n11233), .I3(n31991), .O(n3303));   // verilog/coms.v(118[11:12])
    defparam i1_4_lut_adj_1098.LUT_INIT = 16'h5450;
    SB_LUT4 add_673_2_lut (.I0(n30296), .I1(\byte_transmit_counter[0] ), 
            .I2(tx_transmit_N_3286), .I3(GND_net), .O(n30298)) /* synthesis syn_instantiated=1 */ ;
    defparam add_673_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_441_Select_25_i2_3_lut (.I0(\data_out_frame[3][1] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4334));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_25_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_441_Select_15_i2_3_lut (.I0(\data_out_frame[1][7] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4335));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_15_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_3_lut_adj_1099 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\data_out_frame[1][6] ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4336));
    defparam i1_3_lut_adj_1099.LUT_INIT = 16'ha8a8;
    SB_LUT4 select_441_Select_13_i2_3_lut (.I0(\data_out_frame[1][5] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4337));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_13_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut_3_lut_4_lut (.I0(n30850), .I1(n30390), .I2(\data_out_frame[14] [7]), 
            .I3(n30396), .O(n11022));   // verilog/coms.v(100[12:26])
    defparam i3_4_lut_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 select_441_Select_11_i2_3_lut (.I0(\data_out_frame[1][3] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4338));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_11_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 select_441_Select_9_i2_3_lut (.I0(\data_out_frame[1][1] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4339));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_9_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_27_lut  (.I0(n35442), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [25]), .I3(n26463), .O(n13699)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_27_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 select_441_Select_8_i2_3_lut (.I0(\data_out_frame[1][0] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4340));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_8_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_27  (.CI(n26463), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [25]), .CO(n26464));
    SB_LUT4 i15369_3_lut (.I0(neopxl_color[16]), .I1(\data_in_frame[4] [0]), 
            .I2(n8647), .I3(GND_net), .O(n15149));
    defparam i15369_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_1100 (.I0(n745), .I1(n8607), .I2(\FRAME_MATCHER.i_31__N_2384 ), 
            .I3(n30987), .O(n32494));   // verilog/coms.v(148[4] 304[11])
    defparam i2_4_lut_adj_1100.LUT_INIT = 16'hffec;
    SB_LUT4 i1_4_lut_adj_1101 (.I0(n24464), .I1(n685), .I2(n30277), .I3(n32494), 
            .O(n13364));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1101.LUT_INIT = 16'hb3a0;
    SB_LUT4 i2_2_lut_adj_1102 (.I0(\data_in[2] [3]), .I1(\data_in[3] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n10_adj_4341));
    defparam i2_2_lut_adj_1102.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_1103 (.I0(\data_in[0] [2]), .I1(\data_in[3] [3]), 
            .I2(\data_in[3] [1]), .I3(\data_in[0] [7]), .O(n14_adj_4342));
    defparam i6_4_lut_adj_1103.LUT_INIT = 16'hfeff;
    SB_LUT4 i7_4_lut_adj_1104 (.I0(\data_in[3] [6]), .I1(n14_adj_4342), 
            .I2(n10_adj_4341), .I3(\data_in[2] [1]), .O(n11360));
    defparam i7_4_lut_adj_1104.LUT_INIT = 16'hfffd;
    SB_LUT4 i7_4_lut_adj_1105 (.I0(\data_in[2] [4]), .I1(n11360), .I2(\data_in[1] [5]), 
            .I3(n11380), .O(n18));
    defparam i7_4_lut_adj_1105.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_1106 (.I0(\data_in[0] [6]), .I1(n18), .I2(\data_in[3] [0]), 
            .I3(n11372), .O(n20));
    defparam i9_4_lut_adj_1106.LUT_INIT = 16'hfffd;
    SB_LUT4 i4_2_lut (.I0(\data_in[1] [0]), .I1(\data_in[0] [3]), .I2(GND_net), 
            .I3(GND_net), .O(n15));
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut (.I0(n15), .I1(n20), .I2(\data_in[2] [2]), .I3(\data_in[1] [4]), 
            .O(n682));
    defparam i10_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i8_4_lut (.I0(\data_in[2] [6]), .I1(\data_in[2] [0]), .I2(n11360), 
            .I3(\data_in[0] [1]), .O(n20_adj_4343));
    defparam i8_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i7_4_lut_adj_1107 (.I0(n11216), .I1(\data_in[3] [7]), .I2(\data_in[1] [6]), 
            .I3(\data_in[2] [5]), .O(n19_adj_4344));
    defparam i7_4_lut_adj_1107.LUT_INIT = 16'hfeff;
    SB_LUT4 i29255_4_lut (.I0(\data_in[1] [3]), .I1(\data_in[0] [5]), .I2(\data_in[3] [2]), 
            .I3(\data_in[1] [2]), .O(n33901));
    defparam i29255_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i11_3_lut (.I0(n33901), .I1(n19_adj_4344), .I2(n20_adj_4343), 
            .I3(GND_net), .O(n679));
    defparam i11_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i6_4_lut_adj_1108 (.I0(\data_in[0] [1]), .I1(\data_in[1] [2]), 
            .I2(\data_in[3] [2]), .I3(\data_in[0] [5]), .O(n16_adj_4345));
    defparam i6_4_lut_adj_1108.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_1109 (.I0(\data_in[1] [6]), .I1(\data_in[2] [5]), 
            .I2(\data_in[2] [0]), .I3(\data_in[1] [3]), .O(n17_adj_4346));
    defparam i7_4_lut_adj_1109.LUT_INIT = 16'hfffd;
    SB_LUT4 i9_4_lut_adj_1110 (.I0(n17_adj_4346), .I1(\data_in[3] [7]), 
            .I2(n16_adj_4345), .I3(\data_in[2] [6]), .O(n11372));
    defparam i9_4_lut_adj_1110.LUT_INIT = 16'hfbff;
    SB_LUT4 i4_4_lut_adj_1111 (.I0(\data_in[1] [7]), .I1(\data_in[0] [0]), 
            .I2(\data_in[1] [1]), .I3(\data_in[0] [4]), .O(n10_adj_4347));
    defparam i4_4_lut_adj_1111.LUT_INIT = 16'hfdff;
    SB_LUT4 i5_3_lut_adj_1112 (.I0(\data_in[3] [4]), .I1(n10_adj_4347), 
            .I2(\data_in[2] [7]), .I3(GND_net), .O(n11380));
    defparam i5_3_lut_adj_1112.LUT_INIT = 16'hdfdf;
    SB_LUT4 i5_3_lut_adj_1113 (.I0(\data_in[0] [3]), .I1(\data_in[1] [4]), 
            .I2(\data_in[1] [5]), .I3(GND_net), .O(n14_adj_4348));
    defparam i5_3_lut_adj_1113.LUT_INIT = 16'hdfdf;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_26_lut  (.I0(n35441), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [24]), .I3(n26462), .O(n13701)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_26_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i6_4_lut_adj_1114 (.I0(\data_in[0] [6]), .I1(n11380), .I2(\data_in[2] [4]), 
            .I3(\data_in[1] [0]), .O(n15_adj_4349));
    defparam i6_4_lut_adj_1114.LUT_INIT = 16'hfeff;
    SB_LUT4 i8_4_lut_adj_1115 (.I0(n15_adj_4349), .I1(\data_in[3] [0]), 
            .I2(n14_adj_4348), .I3(\data_in[2] [2]), .O(n11216));
    defparam i8_4_lut_adj_1115.LUT_INIT = 16'hfbff;
    SB_LUT4 i31065_2_lut (.I0(\FRAME_MATCHER.i [12]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35429));   // verilog/coms.v(158[12:15])
    defparam i31065_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6_4_lut_adj_1116 (.I0(\data_in[3] [6]), .I1(\data_in[0] [7]), 
            .I2(\data_in[2] [1]), .I3(n11216), .O(n16_adj_4350));
    defparam i6_4_lut_adj_1116.LUT_INIT = 16'hffef;
    SB_LUT4 i31066_2_lut (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35430));   // verilog/coms.v(158[12:15])
    defparam i31066_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4_3_lut (.I0(\data_in_frame[21][3] ), .I1(n30544), .I2(\data_in_frame[21] [4]), 
            .I3(GND_net), .O(n30_adj_4351));   // verilog/coms.v(99[12:25])
    defparam i4_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i7_4_lut_adj_1117 (.I0(n11372), .I1(\data_in[3] [3]), .I2(\data_in[0] [2]), 
            .I3(\data_in[2] [3]), .O(n17_adj_4352));
    defparam i7_4_lut_adj_1117.LUT_INIT = 16'hbfff;
    SB_LUT4 i15348_3_lut (.I0(neopxl_color[8]), .I1(\data_in_frame[5] [0]), 
            .I2(n8647), .I3(GND_net), .O(n15179));
    defparam i15348_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31067_2_lut (.I0(\FRAME_MATCHER.i [14]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35431));   // verilog/coms.v(158[12:15])
    defparam i31067_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_26  (.CI(n26462), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [24]), .CO(n26463));
    SB_LUT4 i9_4_lut_adj_1118 (.I0(n17_adj_4352), .I1(\data_in[3] [5]), 
            .I2(n16_adj_4350), .I3(\data_in[3] [1]), .O(n685));
    defparam i9_4_lut_adj_1118.LUT_INIT = 16'hfbff;
    SB_LUT4 i31068_2_lut (.I0(\FRAME_MATCHER.i [15]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35432));   // verilog/coms.v(158[12:15])
    defparam i31068_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_1119 (.I0(n679), .I1(n682), .I2(GND_net), .I3(GND_net), 
            .O(n30277));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_adj_1119.LUT_INIT = 16'h8888;
    SB_DFFE data_in_frame_0___i94 (.Q(\data_in_frame[11] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15469));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31072_2_lut (.I0(\FRAME_MATCHER.i [16]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35433));   // verilog/coms.v(158[12:15])
    defparam i31072_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_1120 (.I0(n22372), .I1(n32023), .I2(\FRAME_MATCHER.i_31__N_2381 ), 
            .I3(n22013), .O(n6_adj_4353));   // verilog/coms.v(148[4] 304[11])
    defparam i2_4_lut_adj_1120.LUT_INIT = 16'hccec;
    SB_LUT4 i3_4_lut_adj_1121 (.I0(n17411), .I1(n6_adj_4353), .I2(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .I3(\FRAME_MATCHER.i_31__N_2379 ), .O(n37448));   // verilog/coms.v(148[4] 304[11])
    defparam i3_4_lut_adj_1121.LUT_INIT = 16'hefee;
    SB_LUT4 i31073_2_lut (.I0(\FRAME_MATCHER.i [17]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35434));   // verilog/coms.v(158[12:15])
    defparam i31073_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31050_2_lut (.I0(\FRAME_MATCHER.i [18]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35435));   // verilog/coms.v(158[12:15])
    defparam i31050_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i93 (.Q(\data_in_frame[11] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15466));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i16_4_lut_adj_1122 (.I0(n30689), .I1(n30441), .I2(n30867), 
            .I3(n37117), .O(n42_adj_4354));   // verilog/coms.v(99[12:25])
    defparam i16_4_lut_adj_1122.LUT_INIT = 16'h9669;
    SB_LUT4 i3_3_lut_4_lut (.I0(n12349), .I1(n30901), .I2(n30827), .I3(n26952), 
            .O(n8_adj_4355));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_CARRY add_673_2 (.CI(GND_net), .I0(\byte_transmit_counter[0] ), .I1(tx_transmit_N_3286), 
            .CO(n26095));
    SB_DFFR \FRAME_MATCHER.state_FSM_i1  (.Q(Kp_23__N_1618), .C(clk16MHz), 
            .D(n796), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 i14_4_lut_adj_1123 (.I0(\data_in_frame[20] [7]), .I1(n30594), 
            .I2(n27895), .I3(n32510), .O(n40_adj_4356));   // verilog/coms.v(99[12:25])
    defparam i14_4_lut_adj_1123.LUT_INIT = 16'h6996;
    SB_LUT4 i31077_2_lut (.I0(\FRAME_MATCHER.i [19]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35436));   // verilog/coms.v(158[12:15])
    defparam i31077_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_in_frame_0___i92 (.Q(\data_in_frame[11] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15463));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i91 (.Q(\data_in_frame[11] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15460));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31082_2_lut (.I0(\FRAME_MATCHER.i [20]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35437));   // verilog/coms.v(158[12:15])
    defparam i31082_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_25_lut  (.I0(n35440), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [23]), .I3(n26461), .O(n13703)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_25_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31091_2_lut (.I0(\FRAME_MATCHER.i [21]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35438));   // verilog/coms.v(158[12:15])
    defparam i31091_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19_4_lut_adj_1124 (.I0(Kp_23__N_937), .I1(\data_in_frame[15] [6]), 
            .I2(\data_in_frame[16] [6]), .I3(\data_in_frame[15] [2]), .O(n45));   // verilog/coms.v(99[12:25])
    defparam i19_4_lut_adj_1124.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut_adj_1125 (.I0(n30892), .I1(n30640), .I2(n30706), 
            .I3(n30535), .O(n44_adj_4357));   // verilog/coms.v(99[12:25])
    defparam i18_4_lut_adj_1125.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_25  (.CI(n26461), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [23]), .CO(n26462));
    SB_LUT4 i17_4_lut_adj_1126 (.I0(n30458), .I1(n27881), .I2(n30617), 
            .I3(\data_in_frame[15] [4]), .O(n43_adj_4358));   // verilog/coms.v(99[12:25])
    defparam i17_4_lut_adj_1126.LUT_INIT = 16'h9669;
    SB_LUT4 i31001_2_lut (.I0(Kp_23__N_1618), .I1(n17408), .I2(GND_net), 
            .I3(GND_net), .O(n35368));   // verilog/coms.v(118[11:12])
    defparam i31001_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i21_4_lut (.I0(n30685), .I1(n42_adj_4354), .I2(n30_adj_4351), 
            .I3(n31886), .O(n47));   // verilog/coms.v(99[12:25])
    defparam i21_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i13217_4_lut (.I0(n17410), .I1(n35368), .I2(\FRAME_MATCHER.i_31__N_2383 ), 
            .I3(n17417), .O(n13378));   // verilog/coms.v(118[11:12])
    defparam i13217_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_646_i3_3_lut (.I0(\data_in_frame[19] [2]), .I1(\data_in_frame[3] [2]), 
            .I2(n17410), .I3(GND_net), .O(n2766[2]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i3_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut (.I0(\data_out_frame[13] [3]), .I1(\data_out_frame[4] [5]), 
            .I2(\data_out_frame[4] [6]), .I3(GND_net), .O(n30749));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i31094_2_lut (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35439));   // verilog/coms.v(158[12:15])
    defparam i31094_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_1127 (.I0(n12349), .I1(n30901), .I2(n11890), 
            .I3(GND_net), .O(n9547));
    defparam i1_2_lut_3_lut_adj_1127.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1128 (.I0(n31964), .I1(\data_in_frame[18]_c [4]), 
            .I2(n30847), .I3(GND_net), .O(n6_adj_4359));
    defparam i1_2_lut_3_lut_adj_1128.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1129 (.I0(\data_in_frame[21][2] ), .I1(n32542), 
            .I2(n26989), .I3(GND_net), .O(n30649));
    defparam i1_2_lut_3_lut_adj_1129.LUT_INIT = 16'h9696;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_24_lut  (.I0(n35439), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [22]), .I3(n26460), .O(n13705)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_24_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31095_2_lut (.I0(\FRAME_MATCHER.i [23]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35440));   // verilog/coms.v(158[12:15])
    defparam i31095_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i23_4_lut_adj_1130 (.I0(n45), .I1(n30763), .I2(n40_adj_4356), 
            .I3(n11758), .O(n49));   // verilog/coms.v(99[12:25])
    defparam i23_4_lut_adj_1130.LUT_INIT = 16'h6996;
    SB_LUT4 i25_4_lut (.I0(n49), .I1(n47), .I2(n43_adj_4358), .I3(n44_adj_4357), 
            .O(n30898));   // verilog/coms.v(99[12:25])
    defparam i25_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut (.I0(\data_in_frame[17] [0]), .I1(\data_in_frame[19] [2]), 
            .I2(n27891), .I3(n31794), .O(n27908));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i18_4_lut_adj_1131 (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i [21]), 
            .I2(\FRAME_MATCHER.i [24]), .I3(\FRAME_MATCHER.i [17]), .O(n44_adj_4360));
    defparam i18_4_lut_adj_1131.LUT_INIT = 16'hfffe;
    SB_LUT4 i16_4_lut_adj_1132 (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i [6]), 
            .I2(\FRAME_MATCHER.i [18]), .I3(\FRAME_MATCHER.i [23]), .O(n42_adj_4361));
    defparam i16_4_lut_adj_1132.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_4_lut_adj_1133 (.I0(\FRAME_MATCHER.i [7]), .I1(\FRAME_MATCHER.i [20]), 
            .I2(\FRAME_MATCHER.i [12]), .I3(\FRAME_MATCHER.i [14]), .O(n43_adj_4362));
    defparam i17_4_lut_adj_1133.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_1134 (.I0(\FRAME_MATCHER.i [22]), .I1(\FRAME_MATCHER.i [11]), 
            .I2(\FRAME_MATCHER.i [26]), .I3(\FRAME_MATCHER.i [16]), .O(n41_adj_4363));
    defparam i15_4_lut_adj_1134.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut_adj_1135 (.I0(\FRAME_MATCHER.i [13]), .I1(\FRAME_MATCHER.i [15]), 
            .I2(\FRAME_MATCHER.i [10]), .I3(\FRAME_MATCHER.i [28]), .O(n40_adj_4364));
    defparam i14_4_lut_adj_1135.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_2_lut_adj_1136 (.I0(\FRAME_MATCHER.i [9]), .I1(\FRAME_MATCHER.i [27]), 
            .I2(GND_net), .I3(GND_net), .O(n39));
    defparam i13_2_lut_adj_1136.LUT_INIT = 16'heeee;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_24  (.CI(n26460), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [22]), .CO(n26461));
    SB_DFFE data_in_frame_0___i90 (.Q(\data_in_frame[11] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15457));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i24_4_lut (.I0(n41_adj_4363), .I1(n43_adj_4362), .I2(n42_adj_4361), 
            .I3(n44_adj_4360), .O(n50));
    defparam i24_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4_4_lut_adj_1137 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[3] [3]), 
            .I2(n11686), .I3(n6_adj_4365), .O(n30625));
    defparam i4_4_lut_adj_1137.LUT_INIT = 16'h6996;
    SB_LUT4 i19_4_lut_adj_1138 (.I0(\FRAME_MATCHER.i [8]), .I1(\FRAME_MATCHER.i [25]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(\FRAME_MATCHER.i [19]), .O(n45_adj_4366));
    defparam i19_4_lut_adj_1138.LUT_INIT = 16'hfffe;
    SB_LUT4 i25_4_lut_adj_1139 (.I0(n45_adj_4366), .I1(n50), .I2(n39), 
            .I3(n40_adj_4364), .O(n11363));
    defparam i25_4_lut_adj_1139.LUT_INIT = 16'hfffe;
    SB_LUT4 i18013_4_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i [31]), 
            .I2(n11363), .I3(\FRAME_MATCHER.i [4]), .O(n4452));   // verilog/coms.v(262[9:58])
    defparam i18013_4_lut.LUT_INIT = 16'h3230;
    SB_LUT4 i2_3_lut_adj_1140 (.I0(\data_in_frame[7] [7]), .I1(n30625), 
            .I2(\data_in_frame[1] [5]), .I3(GND_net), .O(n11658));
    defparam i2_3_lut_adj_1140.LUT_INIT = 16'h9696;
    SB_LUT4 i235_2_lut (.I0(n4452), .I1(\FRAME_MATCHER.i_31__N_2384 ), .I2(GND_net), 
            .I3(GND_net), .O(n796));   // verilog/coms.v(148[4] 304[11])
    defparam i235_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_1141 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[1] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30480));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1141.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i89 (.Q(\data_in_frame[11] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15454));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_646_i19_3_lut (.I0(\data_in_frame[17] [2]), .I1(\data_in_frame[1] [2]), 
            .I2(n17410), .I3(GND_net), .O(n2766[18]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i19_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_1142 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[3] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30374));
    defparam i1_2_lut_adj_1142.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1143 (.I0(n4_c), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[5] [5]), .I3(\data_out_frame[5] [4]), .O(n30675));   // verilog/coms.v(100[12:26])
    defparam i2_3_lut_4_lut_adj_1143.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1144 (.I0(\data_in_frame[6] [0]), .I1(\data_in_frame[3] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30557));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_adj_1144.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i88 (.Q(\data_in_frame[10] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15451));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i87 (.Q(\data_in_frame[10] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15448));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_3_lut_4_lut_adj_1145 (.I0(\data_out_frame[25] [7]), .I1(n27140), 
            .I2(n26963), .I3(n30721), .O(n8_adj_4367));
    defparam i3_3_lut_4_lut_adj_1145.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1146 (.I0(\data_out_frame[24] [0]), .I1(n27864), 
            .I2(n26959), .I3(n12172), .O(n27140));
    defparam i2_3_lut_4_lut_adj_1146.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1147 (.I0(\data_in_frame[19] [0]), .I1(n31794), 
            .I2(n30830), .I3(GND_net), .O(n6_adj_4368));
    defparam i1_2_lut_3_lut_adj_1147.LUT_INIT = 16'h6969;
    SB_LUT4 i2_3_lut_4_lut_adj_1148 (.I0(n27824), .I1(\data_in_frame[14] [3]), 
            .I2(\data_in_frame[16] [4]), .I3(n27830), .O(n11956));
    defparam i2_3_lut_4_lut_adj_1148.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1149 (.I0(n11650), .I1(\data_in_frame[9] [0]), 
            .I2(n27487), .I3(GND_net), .O(n27887));
    defparam i1_2_lut_3_lut_adj_1149.LUT_INIT = 16'h9696;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_23_lut  (.I0(n35438), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [21]), .I3(n26459), .O(n13707)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_23_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_23  (.CI(n26459), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [21]), .CO(n26460));
    SB_DFFE data_in_frame_0___i86 (.Q(\data_in_frame[10] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15445));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2384 ), 
            .I2(\FRAME_MATCHER.i_31__N_2383 ), .I3(Kp_23__N_1618), .O(n6_adj_4369));   // verilog/coms.v(148[4] 304[11])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_2_lut_4_lut (.I0(\data_out_frame[23] [5]), .I1(n12349), .I2(n30901), 
            .I3(n11890), .O(n29_adj_4370));
    defparam i6_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1150 (.I0(\data_in_frame[12] [5]), .I1(n27175), 
            .I2(\data_in_frame[10] [7]), .I3(\data_in_frame[11] [1]), .O(n22_adj_4371));
    defparam i2_2_lut_3_lut_4_lut_adj_1150.LUT_INIT = 16'h6996;
    SB_LUT4 i1_rep_81_2_lut_3_lut (.I0(\data_in_frame[19] [6]), .I1(n11956), 
            .I2(n30535), .I3(GND_net), .O(n37487));
    defparam i1_rep_81_2_lut_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_4_lut (.I0(\data_in_frame[4][5] ), .I1(n12456), .I2(n30502), 
            .I3(n12130), .O(n12426));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1151 (.I0(n27021), .I1(n27035), .I2(n6_adj_4372), 
            .I3(n12036), .O(n26961));
    defparam i1_2_lut_4_lut_adj_1151.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1152 (.I0(\data_in_frame[3] [5]), .I1(\data_in_frame[1] [4]), 
            .I2(\data_in_frame[1] [3]), .I3(\data_in_frame[5][6] ), .O(n30628));
    defparam i2_3_lut_4_lut_adj_1152.LUT_INIT = 16'h6996;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i11_3_lut (.I0(\data_out_frame[12] [0]), 
            .I1(\data_out_frame[13] [0]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4373));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16_4_lut_adj_1153 (.I0(n11_adj_4373), .I1(\data_out_frame[14] [0]), 
            .I2(\byte_transmit_counter[1] ), .I3(\byte_transmit_counter[0] ), 
            .O(n14_adj_4374));   // verilog/coms.v(105[12:33])
    defparam i16_4_lut_adj_1153.LUT_INIT = 16'h0aca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i4_3_lut (.I0(\data_out_frame[4] [6]), 
            .I1(\data_out_frame[5] [6]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4375));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31204_4_lut (.I0(\data_out_frame[1][6] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][6] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35501));   // verilog/coms.v(109[34:55])
    defparam i31204_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i85 (.Q(\data_in_frame[10] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15442));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10916_3_lut (.I0(\data_in_frame[4] [0]), .I1(rx_data[0]), .I2(n32020), 
            .I3(GND_net), .O(n15119));   // verilog/coms.v(130[12] 305[6])
    defparam i10916_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i7_4_lut (.I0(n35501), .I1(n4_adj_4375), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4376));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i31428_2_lut (.I0(\data_out_frame[14] [6]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35500));   // verilog/coms.v(109[34:55])
    defparam i31428_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_6_i11_3_lut (.I0(\data_out_frame[12] [6]), 
            .I1(\data_out_frame[13] [6]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4377));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_6_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31210_4_lut (.I0(n11_adj_4377), .I1(byte_transmit_counter[2]), 
            .I2(n35500), .I3(\byte_transmit_counter[1] ), .O(n35495));
    defparam i31210_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE data_in_frame_0___i84 (.Q(\data_in_frame[10] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15439));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_22_lut  (.I0(n35437), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [20]), .I3(n26458), .O(n13709)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_22_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i4_3_lut (.I0(\data_out_frame[4] [0]), 
            .I1(\data_out_frame[5] [0]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4378));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_22  (.CI(n26458), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [20]), .CO(n26459));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_21_lut  (.I0(n35436), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [19]), .I3(n26457), .O(n13711)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_21_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i83 (.Q(\data_in_frame[10] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15436));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_21  (.CI(n26457), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [19]), .CO(n26458));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_20_lut  (.I0(n35435), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [18]), .I3(n26456), .O(n13713)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_20_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31402_3_lut (.I0(\data_out_frame[1][0] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\byte_transmit_counter[1] ), .I3(GND_net), .O(n35413));   // verilog/coms.v(109[34:55])
    defparam i31402_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_0_i7_4_lut (.I0(n35413), .I1(n4_adj_4378), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4379));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_1154 (.I0(\data_in_frame[8] [1]), .I1(n30727), 
            .I2(n30557), .I3(\data_in_frame[1] [3]), .O(n12229));   // verilog/coms.v(78[16:27])
    defparam i3_4_lut_adj_1154.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_20  (.CI(n26456), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [18]), .CO(n26457));
    SB_LUT4 i17_4_lut_adj_1155 (.I0(n37380), .I1(n14_adj_4374), .I2(byte_transmit_counter[2]), 
            .I3(byte_transmit_counter[4]), .O(n13_adj_4380));   // verilog/coms.v(105[12:33])
    defparam i17_4_lut_adj_1155.LUT_INIT = 16'h0ac0;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_19_lut  (.I0(n35434), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [17]), .I3(n26455), .O(n13715)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_19_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_19  (.CI(n26455), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [17]), .CO(n26456));
    SB_LUT4 i15355_4_lut (.I0(n7_adj_4379), .I1(\data_out_frame[23] [0]), 
            .I2(byte_transmit_counter[4]), .I3(n13920), .O(n19530));   // verilog/coms.v(105[12:33])
    defparam i15355_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE data_in_frame_0___i82 (.Q(\data_in_frame[10] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15433));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i10_3_lut (.I0(n19530), .I1(n13_adj_4380), .I2(byte_transmit_counter[3]), 
            .I3(GND_net), .O(tx_data[0]));   // verilog/coms.v(105[12:33])
    defparam i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_18_lut  (.I0(n35433), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [16]), .I3(n26454), .O(n13717)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_18_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31220_2_lut (.I0(n37350), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35420));
    defparam i31220_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i4_4_lut_adj_1156 (.I0(n11818), .I1(n12619), .I2(\data_in_frame[8] [2]), 
            .I3(n30557), .O(n10_adj_4381));   // verilog/coms.v(78[16:27])
    defparam i4_4_lut_adj_1156.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_18  (.CI(n26454), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [16]), .CO(n26455));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_17_lut  (.I0(n35432), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [15]), .I3(n26453), .O(n13719)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_17_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i30905_2_lut (.I0(\data_out_frame[23] [6]), .I1(n13920), .I2(GND_net), 
            .I3(GND_net), .O(n35419));
    defparam i30905_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_17  (.CI(n26453), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [15]), .CO(n26454));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_16_lut  (.I0(n35431), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [14]), .I3(n26452), .O(n13721)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_16_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_16  (.CI(n26452), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [14]), .CO(n26453));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_15_lut  (.I0(n35430), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [13]), .I3(n26451), .O(n13723)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_15_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_15  (.CI(n26451), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [13]), .CO(n26452));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_14_lut  (.I0(n35429), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [12]), .I3(n26450), .O(n13725)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_14_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_14  (.CI(n26450), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [12]), .CO(n26451));
    SB_LUT4 i27_3_lut (.I0(\data_out_frame[1][5] ), .I1(\data_out_frame[5] [5]), 
            .I2(byte_transmit_counter[2]), .I3(GND_net), .O(n10_adj_4382));   // verilog/coms.v(109[34:55])
    defparam i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31430_2_lut (.I0(\data_out_frame[4] [5]), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n35536));   // verilog/coms.v(109[34:55])
    defparam i31430_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE data_in_frame_0___i81 (.Q(\data_in_frame[10] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15430));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31189_4_lut (.I0(n35536), .I1(\byte_transmit_counter[1] ), 
            .I2(n10_adj_4382), .I3(\byte_transmit_counter[0] ), .O(n35493));
    defparam i31189_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_13_lut  (.I0(n35428), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [11]), .I3(n26449), .O(n13727)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_13_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_13  (.CI(n26449), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [11]), .CO(n26450));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_12_lut  (.I0(n35427), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [10]), .I3(n26448), .O(n13729)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_12_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_12  (.CI(n26448), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [10]), .CO(n26449));
    SB_DFFE data_in_frame_0___i80 (.Q(\data_in_frame[9] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15427));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i36 (.Q(\data_in_frame[4][3] ), .C(clk16MHz), 
           .D(n15134));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i14 (.Q(\data_in_frame[1] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15423));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_3_lut_adj_1157 (.I0(Kp_23__N_585), .I1(n10_adj_4381), .I2(\data_in_frame[6] [1]), 
            .I3(GND_net), .O(n11727));   // verilog/coms.v(78[16:27])
    defparam i5_3_lut_adj_1157.LUT_INIT = 16'h9696;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_11_lut  (.I0(n35426), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [9]), .I3(n26447), .O(n13731)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_11_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_11  (.CI(n26447), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [9]), .CO(n26448));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_10_lut  (.I0(n35421), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [8]), .I3(n26446), .O(n13733)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_10_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i31209_2_lut (.I0(\data_out_frame[14] [5]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35506));   // verilog/coms.v(105[12:33])
    defparam i31209_2_lut.LUT_INIT = 16'h2222;
    SB_DFF data_in_frame_0___i37 (.Q(\data_in_frame[4][4] ), .C(clk16MHz), 
           .D(n15138));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i13 (.Q(\data_in_frame[1] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15419));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i18_3_lut (.I0(\data_out_frame[12] [5]), .I1(\data_out_frame[13] [5]), 
            .I2(\byte_transmit_counter[0] ), .I3(GND_net), .O(n17_adj_4383));   // verilog/coms.v(105[12:33])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_10  (.CI(n26446), .I0(n14116), 
            .I1(\FRAME_MATCHER.i [8]), .CO(n26447));
    SB_LUT4 i31436_4_lut (.I0(n17_adj_4383), .I1(byte_transmit_counter[2]), 
            .I2(n35506), .I3(\byte_transmit_counter[1] ), .O(n35494));
    defparam i31436_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i31074_2_lut (.I0(n37356), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35467));
    defparam i31074_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31216_2_lut (.I0(\data_out_frame[23] [5]), .I1(n13920), .I2(GND_net), 
            .I3(GND_net), .O(n35466));
    defparam i31216_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i4_3_lut (.I0(\data_out_frame[4] [4]), 
            .I1(\data_out_frame[5] [4]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n4_adj_4384));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i3_4_lut (.I0(\data_out_frame[0][4] ), 
            .I1(\data_out_frame[3][4] ), .I2(\byte_transmit_counter[1] ), 
            .I3(\byte_transmit_counter[0] ), .O(n3_adj_4385));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i3_4_lut.LUT_INIT = 16'hc00a;
    SB_LUT4 i31920_4_lut (.I0(n3_adj_4385), .I1(n4_adj_4384), .I2(byte_transmit_counter[2]), 
            .I3(\byte_transmit_counter[1] ), .O(n36575));
    defparam i31920_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_9_lut  (.I0(n35410), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [7]), .I3(n26445), .O(n13735)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_9_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i12 (.Q(\data_in_frame[1] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15416));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31176_2_lut (.I0(\data_out_frame[14] [4]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35488));   // verilog/coms.v(109[34:55])
    defparam i31176_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_4_i11_3_lut (.I0(\data_out_frame[12] [4]), 
            .I1(\data_out_frame[13] [4]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4386));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_4_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_9  (.CI(n26445), .I0(n14116), .I1(\FRAME_MATCHER.i [7]), 
            .CO(n26446));
    SB_LUT4 i2_3_lut_4_lut_adj_1158 (.I0(n12456), .I1(\data_in_frame[6] [7]), 
            .I2(\data_in_frame[7] [1]), .I3(n12130), .O(n30781));   // verilog/coms.v(73[16:27])
    defparam i2_3_lut_4_lut_adj_1158.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1159 (.I0(n32149), .I1(n12349), .I2(n11551), 
            .I3(\data_out_frame[23] [5]), .O(n27864));
    defparam i2_3_lut_4_lut_adj_1159.LUT_INIT = 16'h9669;
    SB_LUT4 i31188_4_lut (.I0(n11_adj_4386), .I1(byte_transmit_counter[2]), 
            .I2(n35488), .I3(\byte_transmit_counter[1] ), .O(n35490));   // verilog/coms.v(109[34:55])
    defparam i31188_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i30920_2_lut (.I0(n37362), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35469));
    defparam i30920_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_8_lut  (.I0(n35409), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [6]), .I3(n26444), .O(n13737)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_8_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i11 (.Q(\data_in_frame[1] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15413));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i10 (.Q(\data_in_frame[1][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15410));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1160 (.I0(n11727), .I1(n12229), .I2(GND_net), 
            .I3(GND_net), .O(n30467));
    defparam i1_2_lut_adj_1160.LUT_INIT = 16'h6666;
    SB_LUT4 i31190_2_lut (.I0(\data_out_frame[23] [4]), .I1(n13920), .I2(GND_net), 
            .I3(GND_net), .O(n35468));
    defparam i31190_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31098_2_lut (.I0(\FRAME_MATCHER.i [24]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35441));   // verilog/coms.v(158[12:15])
    defparam i31098_2_lut.LUT_INIT = 16'h2222;
    SB_DFF data_in_frame_0___i38 (.Q(\data_in_frame[4][5] ), .C(clk16MHz), 
           .D(n15142));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n27088), .I1(n37117), .I2(\data_in_frame[17] [5]), 
            .I3(\data_in_frame[18][0] ), .O(n30552));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h9669;
    SB_LUT4 i3_3_lut_4_lut_adj_1161 (.I0(\data_out_frame[24] [0]), .I1(n11890), 
            .I2(\data_out_frame[23] [6]), .I3(\data_out_frame[24] [1]), 
            .O(n8_adj_4387));   // verilog/coms.v(74[16:27])
    defparam i3_3_lut_4_lut_adj_1161.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i9 (.Q(\data_in_frame[1] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15406));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i8 (.Q(\data_in_frame[0] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15403));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i7 (.Q(\data_in_frame[0] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15400));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1162 (.I0(\data_in_frame[18][2] ), .I1(n27557), 
            .I2(n30910), .I3(\data_in_frame[20] [4]), .O(n32510));
    defparam i2_3_lut_4_lut_adj_1162.LUT_INIT = 16'h9669;
    SB_LUT4 i30897_2_lut (.I0(\data_out_frame[5] [2]), .I1(byte_transmit_counter[2]), 
            .I2(GND_net), .I3(GND_net), .O(n35383));   // verilog/coms.v(105[12:33])
    defparam i30897_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17454_3_lut (.I0(\data_out_frame[0][2] ), .I1(\data_out_frame[4] [2]), 
            .I2(byte_transmit_counter[2]), .I3(GND_net), .O(n21600));   // verilog/coms.v(105[12:33])
    defparam i17454_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30964_4_lut (.I0(n21600), .I1(\byte_transmit_counter[1] ), 
            .I2(n35383), .I3(\byte_transmit_counter[0] ), .O(n35486));
    defparam i30964_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i3_4_lut_adj_1163 (.I0(\data_in_frame[10] [1]), .I1(n27094), 
            .I2(n30844), .I3(\data_in_frame[9] [7]), .O(n32490));
    defparam i3_4_lut_adj_1163.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i39 (.Q(\data_in_frame[4][6] ), .C(clk16MHz), 
           .D(n15145));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_8  (.CI(n26444), .I0(n14116), .I1(\FRAME_MATCHER.i [6]), 
            .CO(n26445));
    SB_LUT4 i31184_2_lut (.I0(\data_out_frame[14] [2]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35482));   // verilog/coms.v(109[34:55])
    defparam i31184_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_2_i11_3_lut (.I0(\data_out_frame[12] [2]), 
            .I1(\data_out_frame[13] [2]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4388));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_2_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31008_4_lut (.I0(n11_adj_4388), .I1(byte_transmit_counter[2]), 
            .I2(n35482), .I3(\byte_transmit_counter[1] ), .O(n35487));
    defparam i31008_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_3_lut_adj_1164 (.I0(\data_in_frame[12] [4]), .I1(n32490), 
            .I2(\data_in_frame[12] [3]), .I3(GND_net), .O(n27175));
    defparam i2_3_lut_adj_1164.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1165 (.I0(n27088), .I1(n37117), .I2(\data_in_frame[17] [5]), 
            .I3(n32533), .O(n27851));
    defparam i1_2_lut_3_lut_4_lut_adj_1165.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1166 (.I0(\data_in_frame[21][1] ), .I1(\data_in_frame[20] [6]), 
            .I2(\data_in_frame[21][0] ), .I3(GND_net), .O(n30731));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1166.LUT_INIT = 16'h9696;
    SB_DFFE data_in_frame_0___i6 (.Q(\data_in_frame[0] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15396));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i5 (.Q(\data_in_frame[0] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15393));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1167 (.I0(n11956), .I1(n30535), .I2(\data_in_frame[18] [5]), 
            .I3(n26989), .O(n30847));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_4_lut_adj_1167.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1168 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [5]), 
            .I2(\data_out_frame[12] [5]), .I3(n30796), .O(n12432));   // verilog/coms.v(75[16:27])
    defparam i1_2_lut_4_lut_adj_1168.LUT_INIT = 16'h6996;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_7_lut  (.I0(n35408), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [5]), .I3(n26443), .O(n13739)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_7_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i4 (.Q(\data_in_frame[0] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15390));   // verilog/coms.v(130[12] 305[6])
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_7  (.CI(n26443), .I0(n14116), .I1(\FRAME_MATCHER.i [5]), 
            .CO(n26444));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_6_lut  (.I0(n35396), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [4]), .I3(n26442), .O(n13741)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_6_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_6  (.CI(n26442), .I0(n14116), .I1(\FRAME_MATCHER.i [4]), 
            .CO(n26443));
    SB_DFFER setpoint_i0_i6 (.Q(setpoint[6]), .C(clk16MHz), .E(n13378), 
            .D(n2766[6]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31099_2_lut (.I0(\FRAME_MATCHER.i [25]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35442));   // verilog/coms.v(158[12:15])
    defparam i31099_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_5_lut  (.I0(n35395), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [3]), .I3(n26441), .O(n13743)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_5_lut .LUT_INIT = 16'h8BB8;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_5  (.CI(n26441), .I0(n14116), .I1(\FRAME_MATCHER.i [3]), 
            .CO(n26442));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_4_lut  (.I0(n35394), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n26440), .O(n13745)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_4_lut .LUT_INIT = 16'h8BB8;
    SB_LUT4 i32459_3_lut (.I0(rx_data[4]), .I1(\data_in_frame[18]_c [4]), 
            .I2(n14177), .I3(GND_net), .O(n29971));   // verilog/coms.v(94[13:20])
    defparam i32459_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_4  (.CI(n26440), .I0(n14116), .I1(\FRAME_MATCHER.i [2]), 
            .CO(n26441));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_3_lut  (.I0(n35393), .I1(n14116), 
            .I2(\FRAME_MATCHER.i [1]), .I3(n26439), .O(n13747)) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_3_lut .LUT_INIT = 16'h8BB8;
    SB_DFFE data_in_frame_0___i3 (.Q(\data_in_frame[0] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15387));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i18140_2_lut (.I0(\byte_transmit_counter[0] ), .I1(\byte_transmit_counter[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n22276));
    defparam i18140_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE data_in_frame_0___i2 (.Q(\data_in_frame[0] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15384));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i5 (.Q(setpoint[5]), .C(clk16MHz), .E(n13378), 
            .D(n2766[5]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i16 (.Q(setpoint[16]), .C(clk16MHz), .E(n13378), 
            .D(n2766[16]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i4 (.Q(setpoint[4]), .C(clk16MHz), .E(n13378), 
            .D(n2766[4]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_4_lut_adj_1169 (.I0(byte_transmit_counter[3]), .I1(byte_transmit_counter[4]), 
            .I2(n22276), .I3(byte_transmit_counter[2]), .O(n22366));
    defparam i2_4_lut_adj_1169.LUT_INIT = 16'h8880;
    SB_LUT4 i1_2_lut_4_lut_adj_1170 (.I0(n30620), .I1(n27002), .I2(n9490), 
            .I3(n32082), .O(n27812));
    defparam i1_2_lut_4_lut_adj_1170.LUT_INIT = 16'h6996;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_3  (.CI(n26439), .I0(n14116), .I1(\FRAME_MATCHER.i [1]), 
            .CO(n26440));
    SB_LUT4 \FRAME_MATCHER.i_1111_add_4_2_lut  (.I0(GND_net), .I1(n161), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam \FRAME_MATCHER.i_1111_add_4_2_lut .LUT_INIT = 16'hC33C;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut (.I0(byte_transmit_counter[3]), 
            .I1(n35507), .I2(n35508), .I3(byte_transmit_counter[4]), .O(n37389));
    defparam byte_transmit_counter_3__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY \FRAME_MATCHER.i_1111_add_4_2  (.CI(GND_net), .I0(n161), .I1(\FRAME_MATCHER.i [0]), 
            .CO(n26439));
    SB_LUT4 i32458_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[18]_c [1]), 
            .I2(n14177), .I3(GND_net), .O(n29941));   // verilog/coms.v(94[13:20])
    defparam i32458_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18233_4_lut (.I0(n22366), .I1(byte_transmit_counter[7]), .I2(byte_transmit_counter[6]), 
            .I3(byte_transmit_counter[5]), .O(n22372));
    defparam i18233_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17880_2_lut (.I0(tx_active), .I1(r_SM_Main_2__N_3415[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22013));
    defparam i17880_2_lut.LUT_INIT = 16'heeee;
    SB_DFFER setpoint_i0_i3 (.Q(setpoint[3]), .C(clk16MHz), .E(n13378), 
            .D(n2766[3]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i15 (.Q(setpoint[15]), .C(clk16MHz), .E(n13378), 
            .D(n2766[15]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i14 (.Q(setpoint[14]), .C(clk16MHz), .E(n13378), 
            .D(n2766[14]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i40 (.Q(\data_in_frame[4][7] ), .C(clk16MHz), 
           .D(n15152));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i41 (.Q(\data_in_frame[5] [0]), .C(clk16MHz), 
           .D(n15155));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i42 (.Q(\data_in_frame[5][1] ), .C(clk16MHz), 
           .D(n15158));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i43 (.Q(\data_in_frame[5][2] ), .C(clk16MHz), 
           .D(n15161));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i44 (.Q(\data_in_frame[5][3] ), .C(clk16MHz), 
           .D(n15379));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i45 (.Q(\data_in_frame[5][4] ), .C(clk16MHz), 
           .D(n15175));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i13 (.Q(setpoint[13]), .C(clk16MHz), .E(n13378), 
            .D(n2766[13]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 n37395_bdd_4_lut (.I0(n37395), .I1(\data_out_frame[25] [7]), 
            .I2(\data_out_frame[24] [7]), .I3(\byte_transmit_counter[1] ), 
            .O(n37398));
    defparam n37395_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n37389_bdd_4_lut (.I0(n37389), .I1(n35363), .I2(n7_adj_4389), 
            .I3(byte_transmit_counter[4]), .O(tx_data[1]));
    defparam n37389_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_3_lut_adj_1171 (.I0(\data_in_frame[14] [5]), .I1(n11933), 
            .I2(n27175), .I3(GND_net), .O(n27922));
    defparam i2_3_lut_adj_1171.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i12 (.Q(setpoint[12]), .C(clk16MHz), .E(n13378), 
            .D(n2766[12]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i11 (.Q(setpoint[11]), .C(clk16MHz), .E(n13378), 
            .D(n2766[11]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31101_2_lut (.I0(\FRAME_MATCHER.i [26]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35443));   // verilog/coms.v(158[12:15])
    defparam i31101_2_lut.LUT_INIT = 16'h2222;
    SB_DFFER setpoint_i0_i10 (.Q(setpoint[10]), .C(clk16MHz), .E(n13378), 
            .D(n2766[10]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1172 (.I0(\data_in_frame[13] [5]), .I1(\data_in_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30853));
    defparam i1_2_lut_adj_1172.LUT_INIT = 16'h6666;
    SB_DFFER setpoint_i0_i9 (.Q(setpoint[9]), .C(clk16MHz), .E(n13378), 
            .D(n2766[9]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31069_2_lut (.I0(n37344), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35471));
    defparam i31069_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31102_2_lut (.I0(\FRAME_MATCHER.i [27]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35444));   // verilog/coms.v(158[12:15])
    defparam i31102_2_lut.LUT_INIT = 16'h2222;
    SB_DFFER setpoint_i0_i8 (.Q(setpoint[8]), .C(clk16MHz), .E(n13378), 
            .D(n2766[8]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i31185_2_lut (.I0(\data_out_frame[23] [2]), .I1(n13920), .I2(GND_net), 
            .I3(GND_net), .O(n35470));
    defparam i31185_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_in_frame_0___i46 (.Q(\data_in_frame[5][5] ), .C(clk16MHz), 
           .D(n15184));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 mux_646_i20_3_lut (.I0(\data_in_frame[17] [3]), .I1(\data_in_frame[1] [3]), 
            .I2(n17410), .I3(GND_net), .O(n2766[19]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i20_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1173 (.I0(\data_in_frame[9] [0]), .I1(n12067), 
            .I2(Kp_23__N_844), .I3(\data_in_frame[9] [1]), .O(n30510));
    defparam i1_2_lut_3_lut_4_lut_adj_1173.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1174 (.I0(\data_in_frame[9] [0]), .I1(n12067), 
            .I2(Kp_23__N_844), .I3(n30815), .O(n14_adj_4390));
    defparam i1_2_lut_3_lut_4_lut_adj_1174.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i47 (.Q(\data_in_frame[5][6] ), .C(clk16MHz), 
           .D(n15188));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i48 (.Q(\data_in_frame[5][7] ), .C(clk16MHz), 
           .D(n15191));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i49 (.Q(\data_in_frame[6] [0]), .C(clk16MHz), 
           .D(n15194));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i50 (.Q(\data_in_frame[6] [1]), .C(clk16MHz), 
           .D(n15208));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i51 (.Q(\data_in_frame[6] [2]), .C(clk16MHz), 
           .D(n15211));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i30892_2_lut_3_lut_4_lut (.I0(\data_out_frame[23] [7]), .I1(byte_transmit_counter[2]), 
            .I2(\byte_transmit_counter[0] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35417));
    defparam i30892_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i31182_2_lut_3_lut_4_lut (.I0(\data_out_frame[23] [3]), .I1(byte_transmit_counter[2]), 
            .I2(\byte_transmit_counter[0] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35532));   // verilog/coms.v(109[34:55])
    defparam i31182_2_lut_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_DFF data_in_frame_0___i52 (.Q(\data_in_frame[6] [3]), .C(clk16MHz), 
           .D(n15222));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i53 (.Q(\data_in_frame[6] [4]), .C(clk16MHz), 
           .D(n15226));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i54 (.Q(\data_in_frame[6] [5]), .C(clk16MHz), 
           .D(n15229));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i55 (.Q(\data_in_frame[6] [6]), .C(clk16MHz), 
           .D(n15232));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i56 (.Q(\data_in_frame[6] [7]), .C(clk16MHz), 
           .D(n15236));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1175 (.I0(n27021), .I1(n30452), .I2(n27035), 
            .I3(GND_net), .O(n6_adj_4391));
    defparam i1_2_lut_4_lut_adj_1175.LUT_INIT = 16'h6969;
    SB_LUT4 select_441_Select_4_i2_3_lut (.I0(\data_out_frame[0][4] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4392));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_4_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 byte_transmit_counter_1__bdd_4_lut (.I0(\byte_transmit_counter[1] ), 
            .I1(\data_out_frame[25] [3]), .I2(\data_out_frame[27] [3]), 
            .I3(\byte_transmit_counter[0] ), .O(n37383));
    defparam byte_transmit_counter_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 select_441_Select_214_i3_3_lut_4_lut (.I0(\data_out_frame[24] [4]), 
            .I1(\data_out_frame[24] [5]), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(n30824), .O(n3_adj_4393));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_214_i3_3_lut_4_lut.LUT_INIT = 16'h9060;
    SB_LUT4 n37383_bdd_4_lut (.I0(n37383), .I1(\data_out_frame[26] [3]), 
            .I2(\data_out_frame[24] [3]), .I3(\byte_transmit_counter[0] ), 
            .O(n37386));
    defparam n37383_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 equal_95_i7_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4394));   // verilog/coms.v(157[7:23])
    defparam equal_95_i7_2_lut.LUT_INIT = 16'hdddd;
    SB_DFF data_in_frame_0___i57 (.Q(\data_in_frame[7] [0]), .C(clk16MHz), 
           .D(n15239));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1176 (.I0(n30535), .I1(\data_in_frame[18] [5]), 
            .I2(n26989), .I3(GND_net), .O(n30379));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1176.LUT_INIT = 16'h9696;
    SB_DFF data_in_frame_0___i58 (.Q(\data_in_frame[7] [1]), .C(clk16MHz), 
           .D(n15242));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 select_441_Select_3_i2_3_lut (.I0(\data_out_frame[0][3] ), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(\FRAME_MATCHER.state_31__N_2482 [3]), .I3(GND_net), .O(n2_adj_4395));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_3_i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFE data_in_frame_0___i79 (.Q(\data_in_frame[9] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15344));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i6_2_lut_3_lut_4_lut (.I0(n9505), .I1(\data_out_frame[12] [6]), 
            .I2(\data_out_frame[14] [7]), .I3(n30516), .O(n30));   // verilog/coms.v(100[12:26])
    defparam i6_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1177 (.I0(\data_in_frame[16] [5]), .I1(n27824), 
            .I2(\data_in_frame[14] [3]), .I3(n32353), .O(n27996));
    defparam i1_2_lut_4_lut_adj_1177.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1178 (.I0(\data_in_frame[20] [5]), .I1(n31964), 
            .I2(\data_in_frame[18]_c [4]), .I3(GND_net), .O(n30910));
    defparam i1_2_lut_3_lut_adj_1178.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1179 (.I0(\data_in_frame[16] [3]), .I1(\data_in_frame[16] [2]), 
            .I2(n30836), .I3(GND_net), .O(n6_adj_4396));
    defparam i1_2_lut_3_lut_adj_1179.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1180 (.I0(\data_in_frame[6] [5]), .I1(\data_in_frame[6] [4]), 
            .I2(\data_in_frame[6] [7]), .I3(\data_in_frame[6] [6]), .O(n30809));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1180.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i78 (.Q(\data_in_frame[9] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15341));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_2_lut_3_lut (.I0(n27889), .I1(n30715), .I2(n27007), .I3(GND_net), 
            .O(n13_adj_4397));
    defparam i4_2_lut_3_lut.LUT_INIT = 16'h6969;
    SB_DFFE data_in_frame_0___i77 (.Q(\data_in_frame[9] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15338));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1181 (.I0(\data_in_frame[0] [0]), .I1(Kp_23__N_618), 
            .I2(GND_net), .I3(GND_net), .O(n30470));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1181.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1182 (.I0(\data_in_frame[0] [2]), .I1(n30657), 
            .I2(n30417), .I3(\data_in_frame[0] [1]), .O(Kp_23__N_618));   // verilog/coms.v(73[16:62])
    defparam i3_4_lut_adj_1182.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i76 (.Q(\data_in_frame[9] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15335));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i75 (.Q(\data_in_frame[9] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15332));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32718 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [0]), .I2(\data_out_frame[27] [0]), 
            .I3(\byte_transmit_counter[1] ), .O(n37377));
    defparam byte_transmit_counter_0__bdd_4_lut_32718.LUT_INIT = 16'he4aa;
    SB_LUT4 i14_2_lut_adj_1183 (.I0(Kp_23__N_618), .I1(\data_in_frame[2] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n3_adj_4398));   // verilog/coms.v(99[12:25])
    defparam i14_2_lut_adj_1183.LUT_INIT = 16'h6666;
    SB_LUT4 i9_4_lut_adj_1184 (.I0(\data_in_frame[2][0] ), .I1(n3_adj_4398), 
            .I2(n30470), .I3(\data_in_frame[1] [5]), .O(n26_adj_4399));
    defparam i9_4_lut_adj_1184.LUT_INIT = 16'h8400;
    SB_LUT4 i13_4_lut_adj_1185 (.I0(\data_in_frame[1] [4]), .I1(n26_adj_4399), 
            .I2(\data_in_frame[0] [5]), .I3(n30434), .O(n30_adj_4400));
    defparam i13_4_lut_adj_1185.LUT_INIT = 16'h8008;
    SB_DFFE data_in_frame_0___i74 (.Q(\data_in_frame[9] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15328));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1186 (.I0(n12235), .I1(n11758), .I2(GND_net), 
            .I3(GND_net), .O(n30591));
    defparam i1_2_lut_adj_1186.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i73 (.Q(\data_in_frame[9] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15325));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1187 (.I0(n26525), .I1(n10_adj_4401), .I2(GND_net), 
            .I3(GND_net), .O(n78));
    defparam i1_2_lut_adj_1187.LUT_INIT = 16'hdddd;
    SB_DFFE data_in_frame_0___i72 (.Q(\data_in_frame[8] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15322));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i71 (.Q(\data_in_frame[8] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15319));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i7 (.Q(control_mode[7]), .C(clk16MHz), .D(n15317));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 n37377_bdd_4_lut (.I0(n37377), .I1(\data_out_frame[25] [0]), 
            .I2(\data_out_frame[24] [0]), .I3(\byte_transmit_counter[1] ), 
            .O(n37380));
    defparam n37377_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i29126_3_lut (.I0(\data_in_frame[0] [7]), .I1(n12616), .I2(\data_in_frame[1][1] ), 
            .I3(GND_net), .O(n33770));
    defparam i29126_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 i15_4_lut_adj_1188 (.I0(n23_adj_4402), .I1(n30_adj_4400), .I2(\data_in_frame[1] [3]), 
            .I3(\data_in_frame[1] [6]), .O(n32_adj_4403));
    defparam i15_4_lut_adj_1188.LUT_INIT = 16'h8000;
    SB_LUT4 i10_4_lut_adj_1189 (.I0(\data_in_frame[1] [2]), .I1(n11620), 
            .I2(n12146), .I3(n11598), .O(n27_c));
    defparam i10_4_lut_adj_1189.LUT_INIT = 16'h0002;
    SB_DFFE data_in_frame_0___i70 (.Q(\data_in_frame[8] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15313));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i69 (.Q(\data_in_frame[8] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15310));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i16_4_lut_adj_1190 (.I0(n27_c), .I1(n32_adj_4403), .I2(n33770), 
            .I3(n22_adj_4404), .O(\FRAME_MATCHER.state_31__N_2482 [3]));
    defparam i16_4_lut_adj_1190.LUT_INIT = 16'h0800;
    SB_LUT4 select_443_Select_1_i1_2_lut_3_lut (.I0(\byte_transmit_counter[1] ), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4405));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_1_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_1_lut (.I0(reset), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n1449));   // verilog/coms.v(94[13:20])
    defparam i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_3_lut_adj_1191 (.I0(\FRAME_MATCHER.i_31__N_2379 ), .I1(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .I2(\data_out_frame[0][2] ), .I3(GND_net), .O(n2_adj_4406));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_adj_1191.LUT_INIT = 16'ha8a8;
    SB_DFFE data_in_frame_0___i68 (.Q(\data_in_frame[8] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15306));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1192 (.I0(\data_in_frame[15] [6]), .I1(\data_in_frame[13] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30523));
    defparam i1_2_lut_adj_1192.LUT_INIT = 16'h6666;
    SB_LUT4 select_443_Select_2_i1_2_lut_3_lut (.I0(byte_transmit_counter[2]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4407));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_2_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 select_443_Select_3_i1_2_lut_3_lut (.I0(byte_transmit_counter[3]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4408));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_3_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 select_443_Select_4_i1_2_lut_3_lut (.I0(byte_transmit_counter[4]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4409));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_4_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32704 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [1]), .I2(\data_out_frame[27] [1]), 
            .I3(\byte_transmit_counter[1] ), .O(n37371));
    defparam byte_transmit_counter_0__bdd_4_lut_32704.LUT_INIT = 16'he4aa;
    SB_LUT4 select_443_Select_5_i1_2_lut_3_lut (.I0(byte_transmit_counter[5]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4410));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_5_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n37371_bdd_4_lut (.I0(n37371), .I1(\data_out_frame[25] [1]), 
            .I2(\data_out_frame[24] [1]), .I3(\byte_transmit_counter[1] ), 
            .O(n37374));
    defparam n37371_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_1193 (.I0(Kp_23__N_742), .I1(Kp_23__N_745), 
            .I2(n30858), .I3(GND_net), .O(n6_adj_4411));
    defparam i1_2_lut_3_lut_adj_1193.LUT_INIT = 16'h9696;
    SB_LUT4 i26351_4_lut_4_lut (.I0(reset), .I1(n1982), .I2(n25470), .I3(n10_adj_4412), 
            .O(n14209));
    defparam i26351_4_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 select_443_Select_6_i1_2_lut_3_lut (.I0(byte_transmit_counter[6]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4413));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_6_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32699 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [4]), .I2(\data_out_frame[27] [4]), 
            .I3(\byte_transmit_counter[1] ), .O(n37359));
    defparam byte_transmit_counter_0__bdd_4_lut_32699.LUT_INIT = 16'he4aa;
    SB_LUT4 i31103_2_lut (.I0(\FRAME_MATCHER.i [28]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35445));   // verilog/coms.v(158[12:15])
    defparam i31103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n37359_bdd_4_lut (.I0(n37359), .I1(\data_out_frame[25] [4]), 
            .I2(\data_out_frame[24] [4]), .I3(\byte_transmit_counter[1] ), 
            .O(n37362));
    defparam n37359_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i31104_2_lut (.I0(\FRAME_MATCHER.i [29]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35446));   // verilog/coms.v(158[12:15])
    defparam i31104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32689 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [5]), .I2(\data_out_frame[27] [5]), 
            .I3(\byte_transmit_counter[1] ), .O(n37353));
    defparam byte_transmit_counter_0__bdd_4_lut_32689.LUT_INIT = 16'he4aa;
    SB_LUT4 i10424_2_lut_2_lut (.I0(reset), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n14627));   // verilog/coms.v(130[12] 305[6])
    defparam i10424_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 select_443_Select_7_i1_2_lut_3_lut (.I0(byte_transmit_counter[7]), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4414));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_7_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n37353_bdd_4_lut (.I0(n37353), .I1(\data_out_frame[25] [5]), 
            .I2(\data_out_frame[24] [5]), .I3(\byte_transmit_counter[1] ), 
            .O(n37356));
    defparam n37353_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut_32684 (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [6]), .I2(\data_out_frame[27] [6]), 
            .I3(\byte_transmit_counter[1] ), .O(n37347));
    defparam byte_transmit_counter_0__bdd_4_lut_32684.LUT_INIT = 16'he4aa;
    SB_LUT4 i31105_2_lut (.I0(\FRAME_MATCHER.i [30]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35447));   // verilog/coms.v(158[12:15])
    defparam i31105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n37347_bdd_4_lut (.I0(n37347), .I1(\data_out_frame[25] [6]), 
            .I2(\data_out_frame[24] [6]), .I3(\byte_transmit_counter[1] ), 
            .O(n37350));
    defparam n37347_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1194 (.I0(\data_out_frame[5] [5]), .I1(n30752), 
            .I2(\data_out_frame[4] [6]), .I3(\data_out_frame[5] [0]), .O(n12545));   // verilog/coms.v(74[16:62])
    defparam i2_2_lut_3_lut_4_lut_adj_1194.LUT_INIT = 16'h6996;
    SB_LUT4 i10422_4_lut_4_lut (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2383 ), 
            .I2(n12851), .I3(n18_adj_4415), .O(n14625));   // verilog/coms.v(130[12] 305[6])
    defparam i10422_4_lut_4_lut.LUT_INIT = 16'h5450;
    SB_LUT4 i31110_2_lut (.I0(\FRAME_MATCHER.i [31]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35448));   // verilog/coms.v(158[12:15])
    defparam i31110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i9914_1_lut (.I0(n1982), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n14116));
    defparam i9914_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut (.I0(reset), .I1(n164), .I2(n8_adj_4416), 
            .I3(\FRAME_MATCHER.i [5]), .O(n14172));
    defparam i1_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i1_2_lut_3_lut_3_lut (.I0(reset), .I1(n164), .I2(n57), .I3(GND_net), 
            .O(n14170));
    defparam i1_2_lut_3_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 data_in_frame_17__7__I_0_4040_2_lut (.I0(\data_in_frame[17] [7]), 
            .I1(\data_in_frame[17] [6]), .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1259));   // verilog/coms.v(73[16:27])
    defparam data_in_frame_17__7__I_0_4040_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE data_in_frame_0___i67 (.Q(\data_in_frame[8] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15303));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i59 (.Q(\data_in_frame[7] [2]), .C(clk16MHz), 
           .D(n15275));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i60 (.Q(\data_in_frame[7] [3]), .C(clk16MHz), 
           .D(n15278));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i61 (.Q(\data_in_frame[7] [4]), .C(clk16MHz), 
           .D(n15282));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i66 (.Q(\data_in_frame[8] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15297));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i65 (.Q(\data_in_frame[8] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15294));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i64 (.Q(\data_in_frame[7] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15291));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i63 (.Q(\data_in_frame[7] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15288));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1195 (.I0(\data_in_frame[5][5] ), .I1(\data_in_frame[1] [3]), 
            .I2(\data_in_frame[1] [2]), .I3(\data_in_frame[3] [4]), .O(n6_adj_4365));
    defparam i1_2_lut_3_lut_4_lut_adj_1195.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i62 (.Q(\data_in_frame[7] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15285));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1196 (.I0(\data_out_frame[5] [1]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [7]), .I3(\data_out_frame[5] [6]), .O(n30444));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_4_lut_adj_1196.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i2 (.Q(\data_in[0] [1]), .C(clk16MHz), .D(n15274));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1197 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30657));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_adj_1197.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i3 (.Q(\data_in[0] [2]), .C(clk16MHz), .D(n15273));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i4 (.Q(\data_in[0] [3]), .C(clk16MHz), .D(n15272));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i5 (.Q(\data_in[0] [4]), .C(clk16MHz), .D(n15271));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i6 (.Q(\data_in[0] [5]), .C(clk16MHz), .D(n15270));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i7 (.Q(\data_in[0] [6]), .C(clk16MHz), .D(n15269));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i8 (.Q(\data_in[0] [7]), .C(clk16MHz), .D(n15268));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i9 (.Q(\data_in[1] [0]), .C(clk16MHz), .D(n15267));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i10 (.Q(\data_in[1] [1]), .C(clk16MHz), .D(n15266));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1198 (.I0(\data_out_frame[5] [1]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [0]), .I3(\data_out_frame[4] [5]), .O(n11135));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_4_lut_adj_1198.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_3_lut_4_lut (.I0(n682), .I1(n679), .I2(n3303), .I3(n685), 
            .O(n7_adj_4325));   // verilog/coms.v(142[4] 144[7])
    defparam i1_4_lut_3_lut_4_lut.LUT_INIT = 16'h0c04;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1199 (.I0(n682), .I1(n679), .I2(n3303), 
            .I3(\FRAME_MATCHER.i_31__N_2382 ), .O(n8607));   // verilog/coms.v(142[4] 144[7])
    defparam i2_2_lut_3_lut_4_lut_adj_1199.LUT_INIT = 16'h0800;
    SB_DFFR \FRAME_MATCHER.i_1111__i31  (.Q(\FRAME_MATCHER.i [31]), .C(clk16MHz), 
            .D(n13687), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFF data_in_0___i11 (.Q(\data_in[1] [2]), .C(clk16MHz), .D(n15265));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i12 (.Q(\data_in[1] [3]), .C(clk16MHz), .D(n15264));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i13 (.Q(\data_in[1] [4]), .C(clk16MHz), .D(n15263));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_3_lut_4_lut_adj_1200 (.I0(n11731), .I1(n12225), .I2(\data_in_frame[10] [5]), 
            .I3(\data_in_frame[15] [0]), .O(n11640));
    defparam i2_3_lut_4_lut_adj_1200.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i14 (.Q(\data_in[1] [5]), .C(clk16MHz), .D(n15262));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1201 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13] [4]), 
            .I2(n12235), .I3(n30719), .O(n12247));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_3_lut_4_lut_adj_1201.LUT_INIT = 16'h9669;
    SB_DFF data_in_0___i15 (.Q(\data_in[1] [6]), .C(clk16MHz), .D(n15261));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i3 (.Q(\data_out_frame[0][2] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4406), .S(n30225));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i16 (.Q(\data_in[1] [7]), .C(clk16MHz), .D(n15260));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1202 (.I0(\data_in_frame[6] [7]), .I1(\data_in_frame[6] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30569));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1202.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1203 (.I0(n11598), .I1(n12471), .I2(\data_in_frame[7] [0]), 
            .I3(n30569), .O(n10_adj_4417));   // verilog/coms.v(77[16:43])
    defparam i4_4_lut_adj_1203.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i17 (.Q(\data_in[2] [0]), .C(clk16MHz), .D(n15259));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i18 (.Q(\data_in[2] [1]), .C(clk16MHz), .D(n15258));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i19 (.Q(\data_in[2] [2]), .C(clk16MHz), .D(n15257));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i20 (.Q(\data_in[2] [3]), .C(clk16MHz), .D(n15256));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i21 (.Q(\data_in[2] [4]), .C(clk16MHz), .D(n15255));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1111__i30  (.Q(\FRAME_MATCHER.i [30]), .C(clk16MHz), 
            .D(n13689), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i29  (.Q(\FRAME_MATCHER.i [29]), .C(clk16MHz), 
            .D(n13691), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i28  (.Q(\FRAME_MATCHER.i [28]), .C(clk16MHz), 
            .D(n13693), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i27  (.Q(\FRAME_MATCHER.i [27]), .C(clk16MHz), 
            .D(n13695), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i26  (.Q(\FRAME_MATCHER.i [26]), .C(clk16MHz), 
            .D(n13697), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i25  (.Q(\FRAME_MATCHER.i [25]), .C(clk16MHz), 
            .D(n13699), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i24  (.Q(\FRAME_MATCHER.i [24]), .C(clk16MHz), 
            .D(n13701), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i23  (.Q(\FRAME_MATCHER.i [23]), .C(clk16MHz), 
            .D(n13703), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i22  (.Q(\FRAME_MATCHER.i [22]), .C(clk16MHz), 
            .D(n13705), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i21  (.Q(\FRAME_MATCHER.i [21]), .C(clk16MHz), 
            .D(n13707), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i20  (.Q(\FRAME_MATCHER.i [20]), .C(clk16MHz), 
            .D(n13709), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i19  (.Q(\FRAME_MATCHER.i [19]), .C(clk16MHz), 
            .D(n13711), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i18  (.Q(\FRAME_MATCHER.i [18]), .C(clk16MHz), 
            .D(n13713), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i17  (.Q(\FRAME_MATCHER.i [17]), .C(clk16MHz), 
            .D(n13715), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i16  (.Q(\FRAME_MATCHER.i [16]), .C(clk16MHz), 
            .D(n13717), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i15  (.Q(\FRAME_MATCHER.i [15]), .C(clk16MHz), 
            .D(n13719), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i14  (.Q(\FRAME_MATCHER.i [14]), .C(clk16MHz), 
            .D(n13721), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFESS data_out_frame_0___i4 (.Q(\data_out_frame[0][3] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4395), .S(n30209));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i5 (.Q(\data_out_frame[0][4] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4392), .S(n30210));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i22 (.Q(\data_in[2] [5]), .C(clk16MHz), .D(n15254));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_3_lut_adj_1204 (.I0(\data_in_frame[4][6] ), .I1(n10_adj_4417), 
            .I2(Kp_23__N_669), .I3(GND_net), .O(n12067));   // verilog/coms.v(77[16:43])
    defparam i5_3_lut_adj_1204.LUT_INIT = 16'h9696;
    SB_DFF data_in_0___i23 (.Q(\data_in[2] [6]), .C(clk16MHz), .D(n15253));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1205 (.I0(n12067), .I1(Kp_23__N_844), .I2(GND_net), 
            .I3(GND_net), .O(n30573));
    defparam i1_2_lut_adj_1205.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i24 (.Q(\data_in[2] [7]), .C(clk16MHz), .D(n15252));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1206 (.I0(\data_in_frame[8] [3]), .I1(\data_in_frame[6] [1]), 
            .I2(\data_in_frame[6] [2]), .I3(n30769), .O(n12225));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_4_lut_adj_1206.LUT_INIT = 16'h6996;
    SB_LUT4 i9977_3_lut_4_lut_4_lut (.I0(n8_adj_4418), .I1(reset), .I2(n1982), 
            .I3(n25464), .O(n14179));
    defparam i9977_3_lut_4_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i2_2_lut_3_lut_4_lut_adj_1207 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [2]), 
            .I2(\data_in_frame[2] [4]), .I3(n4_adj_4419), .O(Kp_23__N_669));   // verilog/coms.v(78[16:43])
    defparam i2_2_lut_3_lut_4_lut_adj_1207.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1208 (.I0(\data_out_frame[4] [1]), .I1(\data_out_frame[5] [5]), 
            .I2(\data_out_frame[12] [5]), .I3(n1522), .O(n30850));   // verilog/coms.v(75[16:27])
    defparam i1_2_lut_4_lut_adj_1208.LUT_INIT = 16'h6996;
    SB_DFF data_in_0___i25 (.Q(\data_in[3] [0]), .C(clk16MHz), .D(n15251));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1209 (.I0(\FRAME_MATCHER.i [0]), .I1(\FRAME_MATCHER.i [1]), 
            .I2(\FRAME_MATCHER.i [2]), .I3(n161), .O(n25470));   // verilog/coms.v(157[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_1209.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1210 (.I0(n27925), .I1(n11888), .I2(n32572), 
            .I3(n27009), .O(n30654));
    defparam i1_2_lut_3_lut_4_lut_adj_1210.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1211 (.I0(\data_in_frame[8] [6]), .I1(n30510), 
            .I2(\data_in_frame[11] [2]), .I3(GND_net), .O(n12235));   // verilog/coms.v(74[16:27])
    defparam i2_3_lut_adj_1211.LUT_INIT = 16'h9696;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32713 (.I0(byte_transmit_counter[3]), 
            .I1(n35470), .I2(n35471), .I3(byte_transmit_counter[4]), .O(n37317));
    defparam byte_transmit_counter_3__bdd_4_lut_32713.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_4_lut_adj_1212 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[12] [3]), 
            .I2(\data_out_frame[5] [3]), .I3(\data_out_frame[14] [4]), .O(n30516));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_4_lut_adj_1212.LUT_INIT = 16'h6996;
    SB_LUT4 n37317_bdd_4_lut (.I0(n37317), .I1(n35487), .I2(n35486), .I3(byte_transmit_counter[4]), 
            .O(tx_data[2]));
    defparam n37317_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11251_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[0]), 
            .I3(\data_in_frame[11] [0]), .O(n15454));
    defparam i11251_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11254_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[1]), 
            .I3(\data_in_frame[11] [1]), .O(n15457));
    defparam i11254_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFF data_in_0___i26 (.Q(\data_in[3] [1]), .C(clk16MHz), .D(n15250));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32656 (.I0(byte_transmit_counter[3]), 
            .I1(n35468), .I2(n35469), .I3(byte_transmit_counter[4]), .O(n37311));
    defparam byte_transmit_counter_3__bdd_4_lut_32656.LUT_INIT = 16'he4aa;
    SB_LUT4 n37311_bdd_4_lut (.I0(n37311), .I1(n35490), .I2(n36575), .I3(byte_transmit_counter[4]), 
            .O(tx_data[4]));
    defparam n37311_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32651 (.I0(byte_transmit_counter[3]), 
            .I1(n35466), .I2(n35467), .I3(byte_transmit_counter[4]), .O(n37305));
    defparam byte_transmit_counter_3__bdd_4_lut_32651.LUT_INIT = 16'he4aa;
    SB_LUT4 i11257_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[2]), 
            .I3(\data_in_frame[11] [2]), .O(n15460));
    defparam i11257_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n37305_bdd_4_lut (.I0(n37305), .I1(n35494), .I2(n35493), .I3(byte_transmit_counter[4]), 
            .O(tx_data[5]));
    defparam n37305_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11260_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[3]), 
            .I3(\data_in_frame[11] [3]), .O(n15463));
    defparam i11260_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32646 (.I0(byte_transmit_counter[3]), 
            .I1(n35419), .I2(n35420), .I3(byte_transmit_counter[4]), .O(n37299));
    defparam byte_transmit_counter_3__bdd_4_lut_32646.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1213 (.I0(n1982), .I1(rx_data_ready), 
            .I2(\FRAME_MATCHER.rx_data_ready_prev ), .I3(n25460), .O(n30351));
    defparam i1_2_lut_3_lut_4_lut_adj_1213.LUT_INIT = 16'hfff7;
    SB_LUT4 n37299_bdd_4_lut (.I0(n37299), .I1(n35495), .I2(n7_adj_4376), 
            .I3(byte_transmit_counter[4]), .O(tx_data[6]));
    defparam n37299_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF data_in_0___i27 (.Q(\data_in[3] [2]), .C(clk16MHz), .D(n15249));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11263_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[4]), 
            .I3(\data_in_frame[11] [4]), .O(n15466));
    defparam i11263_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1214 (.I0(\data_in_frame[4][3] ), .I1(n12146), 
            .I2(\data_in_frame[2][0] ), .I3(n11630), .O(Kp_23__N_745));   // verilog/coms.v(76[16:42])
    defparam i3_4_lut_adj_1214.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_adj_1215 (.I0(\data_in_frame[8] [7]), .I1(n27487), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4420));
    defparam i2_2_lut_adj_1215.LUT_INIT = 16'h6666;
    SB_DFF data_in_0___i28 (.Q(\data_in[3] [3]), .C(clk16MHz), .D(n15248));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i29 (.Q(\data_in[3] [4]), .C(clk16MHz), .D(n15247));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i30 (.Q(\data_in[3] [5]), .C(clk16MHz), .D(n15246));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i31 (.Q(\data_in[3] [6]), .C(clk16MHz), .D(n15245));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i32 (.Q(\data_in[3] [7]), .C(clk16MHz), .D(n15235));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i11266_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[5]), 
            .I3(\data_in_frame[11] [5]), .O(n15469));
    defparam i11266_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1216 (.I0(n7_adj_4420), .I1(n27573), .I2(n32265), 
            .I3(n30718), .O(n30719));
    defparam i4_4_lut_adj_1216.LUT_INIT = 16'h9669;
    SB_LUT4 i11269_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[6]), 
            .I3(\data_in_frame[11] [6]), .O(n15472));
    defparam i11269_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1217 (.I0(n27222), .I1(n27021), .I2(n30452), 
            .I3(n27035), .O(n26963));
    defparam i1_2_lut_3_lut_4_lut_adj_1217.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1218 (.I0(\data_in_frame[9] [2]), .I1(\data_in_frame[9] [3]), 
            .I2(n27094), .I3(\data_in_frame[9] [1]), .O(n30402));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_4_lut_adj_1218.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1219 (.I0(n12616), .I1(n11598), .I2(\data_in_frame[4][7] ), 
            .I3(GND_net), .O(n12456));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_3_lut_adj_1219.LUT_INIT = 16'h9696;
    SB_DFF \FRAME_MATCHER.rx_data_ready_prev_4012  (.Q(\FRAME_MATCHER.rx_data_ready_prev ), 
           .C(clk16MHz), .D(n15202));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i1 (.Q(neopxl_color[1]), .C(clk16MHz), .D(n15201));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i2 (.Q(neopxl_color[2]), .C(clk16MHz), .D(n15200));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i3 (.Q(neopxl_color[3]), .C(clk16MHz), .D(n15197));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i4 (.Q(neopxl_color[4]), .C(clk16MHz), .D(n15183));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i5 (.Q(neopxl_color[5]), .C(clk16MHz), .D(n15182));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i6 (.Q(neopxl_color[6]), .C(clk16MHz), .D(n15181));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i7 (.Q(neopxl_color[7]), .C(clk16MHz), .D(n15180));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i8 (.Q(neopxl_color[8]), .C(clk16MHz), .D(n15179));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i9 (.Q(neopxl_color[9]), .C(clk16MHz), .D(n15178));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i10 (.Q(neopxl_color[10]), .C(clk16MHz), .D(n15174));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i11 (.Q(neopxl_color[11]), .C(clk16MHz), .D(n15173));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i12 (.Q(neopxl_color[12]), .C(clk16MHz), .D(n15167));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i13 (.Q(neopxl_color[13]), .C(clk16MHz), .D(n15166));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i14 (.Q(neopxl_color[14]), .C(clk16MHz), .D(n15151));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i15 (.Q(neopxl_color[15]), .C(clk16MHz), .D(n15150));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i16 (.Q(neopxl_color[16]), .C(clk16MHz), .D(n15149));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i17 (.Q(neopxl_color[17]), .C(clk16MHz), .D(n15148));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i18 (.Q(neopxl_color[18]), .C(clk16MHz), .D(n15141));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i9 (.Q(\data_out_frame[1][0] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4340), .S(n30211));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1220 (.I0(\data_in_frame[12] [1]), .I1(n27097), 
            .I2(\data_in_frame[9] [4]), .I3(GND_net), .O(n30880));
    defparam i1_2_lut_3_lut_adj_1220.LUT_INIT = 16'h9696;
    SB_DFFESS data_out_frame_0___i10 (.Q(\data_out_frame[1][1] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4339), .S(n30212));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i12 (.Q(\data_out_frame[1][3] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4338), .S(n30207));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i14 (.Q(\data_out_frame[1][5] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4337), .S(n30216));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i15 (.Q(\data_out_frame[1][6] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4336), .S(n30249));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i16 (.Q(\data_out_frame[1][7] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4335), .S(n30204));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i26 (.Q(\data_out_frame[3][1] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4334), .S(n30218));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i28 (.Q(\data_out_frame[3][3] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4333), .S(n30251));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i29 (.Q(\data_out_frame[3][4] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4332), .S(n30219));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i31 (.Q(\data_out_frame[3][6] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4330), .S(n30246));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i32 (.Q(\data_out_frame[3][7] ), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4329), .S(n30220));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i33 (.Q(\data_out_frame[4] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4328), .S(n30221));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i34 (.Q(\data_out_frame[4] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4327), .S(n30222));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i35 (.Q(\data_out_frame[4] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4324), .S(n30223));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i36 (.Q(\data_out_frame[4] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4323), .S(n30202));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i37 (.Q(\data_out_frame[4] [4]), .C(clk16MHz), 
            .E(n16051), .D(n2_adj_4322), .S(n14709));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i38 (.Q(\data_out_frame[4] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4321), .S(n30224));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i39 (.Q(\data_out_frame[4] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4320), .S(n30206));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i40 (.Q(\data_out_frame[4] [7]), .C(clk16MHz), 
            .E(n16054), .D(n2_adj_4319), .S(n14706));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i41 (.Q(\data_out_frame[5] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4318), .S(n30226));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i42 (.Q(\data_out_frame[5] [1]), .C(clk16MHz), 
            .E(n16056), .D(n2_adj_4317), .S(n14704));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i43 (.Q(\data_out_frame[5] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4316), .S(n30214));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i44 (.Q(\data_out_frame[5] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4315), .S(n30227));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i45 (.Q(\data_out_frame[5] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4314), .S(n30228));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i46 (.Q(\data_out_frame[5] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4313), .S(n30229));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i47 (.Q(\data_out_frame[5] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4312), .S(n30230));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i48 (.Q(\data_out_frame[5] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4311), .S(n30231));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i97 (.Q(\data_out_frame[12] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4310), .S(n30232));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i98 (.Q(\data_out_frame[12] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4309), .S(n30233));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i99 (.Q(\data_out_frame[12] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4302), .S(n30234));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i100 (.Q(\data_out_frame[12] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4300), .S(n30235));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i101 (.Q(\data_out_frame[12] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4299), .S(n14693));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i102 (.Q(\data_out_frame[12] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4298), .S(n14692));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i103 (.Q(\data_out_frame[12] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4297), .S(n30236));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i104 (.Q(\data_out_frame[12] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4296), .S(n30237));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i105 (.Q(\data_out_frame[13] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4295), .S(n14689));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i106 (.Q(\data_out_frame[13] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4294), .S(n14688));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i107 (.Q(\data_out_frame[13] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4293), .S(n30238));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i108 (.Q(\data_out_frame[13] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4292), .S(n30239));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i109 (.Q(\data_out_frame[13] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4291), .S(n30240));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i110 (.Q(\data_out_frame[13] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4290), .S(n14684));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i111 (.Q(\data_out_frame[13] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4289), .S(n30267));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i112 (.Q(\data_out_frame[13] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4288), .S(n30215));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i113 (.Q(\data_out_frame[14] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4287), .S(n30213));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i114 (.Q(\data_out_frame[14] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4285), .S(n30241));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i115 (.Q(\data_out_frame[14] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4284), .S(n30242));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i116 (.Q(\data_out_frame[14] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4283), .S(n30243));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i117 (.Q(\data_out_frame[14] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4282), .S(n30244));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i118 (.Q(\data_out_frame[14] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4281), .S(n14676));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i119 (.Q(\data_out_frame[14] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4280), .S(n30245));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i120 (.Q(\data_out_frame[14] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4279), .S(n30203));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i185 (.Q(\data_out_frame[23] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4278), .S(n30247));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i186 (.Q(\data_out_frame[23] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4276), .S(n30248));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i187 (.Q(\data_out_frame[23] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4274), .S(n30205));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i188 (.Q(\data_out_frame[23] [3]), .C(clk16MHz), 
            .E(n16090), .D(n2_adj_4273), .S(n14670));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i189 (.Q(\data_out_frame[23] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4270), .S(n30250));   // verilog/coms.v(130[12] 305[6])
    SB_DFFR \FRAME_MATCHER.i_1111__i13  (.Q(\FRAME_MATCHER.i [13]), .C(clk16MHz), 
            .D(n13723), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i12  (.Q(\FRAME_MATCHER.i [12]), .C(clk16MHz), 
            .D(n13725), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i11  (.Q(\FRAME_MATCHER.i [11]), .C(clk16MHz), 
            .D(n13727), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i10  (.Q(\FRAME_MATCHER.i [10]), .C(clk16MHz), 
            .D(n13729), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i9  (.Q(\FRAME_MATCHER.i [9]), .C(clk16MHz), 
            .D(n13731), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i8  (.Q(\FRAME_MATCHER.i [8]), .C(clk16MHz), 
            .D(n13733), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i7  (.Q(\FRAME_MATCHER.i [7]), .C(clk16MHz), 
            .D(n13735), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i6  (.Q(\FRAME_MATCHER.i [6]), .C(clk16MHz), 
            .D(n13737), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i5  (.Q(\FRAME_MATCHER.i [5]), .C(clk16MHz), 
            .D(n13739), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i4  (.Q(\FRAME_MATCHER.i [4]), .C(clk16MHz), 
            .D(n13741), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i3  (.Q(\FRAME_MATCHER.i [3]), .C(clk16MHz), 
            .D(n13743), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i2  (.Q(\FRAME_MATCHER.i [2]), .C(clk16MHz), 
            .D(n13745), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i1  (.Q(\FRAME_MATCHER.i [1]), .C(clk16MHz), 
            .D(n13747), .R(reset));   // verilog/coms.v(158[12:15])
    SB_DFFR \FRAME_MATCHER.i_1111__i0  (.Q(\FRAME_MATCHER.i [0]), .C(clk16MHz), 
            .D(n13749), .R(reset));   // verilog/coms.v(158[12:15])
    SB_LUT4 i11272_3_lut_4_lut (.I0(n78), .I1(n30341), .I2(rx_data[7]), 
            .I3(\data_in_frame[11] [7]), .O(n15475));
    defparam i11272_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1221 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[12] [3]), 
            .I2(\data_out_frame[5] [3]), .I3(n30527), .O(n12411));   // verilog/coms.v(78[16:27])
    defparam i1_2_lut_4_lut_adj_1221.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_4_lut_adj_1222 (.I0(\data_in_frame[0] [5]), .I1(\data_in_frame[1] [0]), 
            .I2(Kp_23__N_637), .I3(\data_in_frame[2][7] ), .O(n11979));
    defparam i1_2_lut_4_lut_adj_1222.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_adj_1223 (.I0(\data_in_frame[10] [7]), .I1(\data_in_frame[8] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n7_adj_4421));   // verilog/coms.v(74[16:27])
    defparam i2_2_lut_adj_1223.LUT_INIT = 16'h6666;
    SB_DFF neopxl_color_i0_i19 (.Q(neopxl_color[19]), .C(clk16MHz), .D(n15127));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_0___i1 (.Q(\data_in[0] [0]), .C(clk16MHz), .D(n15125));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i0 (.Q(control_mode[0]), .C(clk16MHz), .D(n15122));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i0 (.Q(neopxl_color[0]), .C(clk16MHz), .D(n15118));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1224 (.I0(n7_adj_4421), .I1(Kp_23__N_844), .I2(\data_in_frame[11] [0]), 
            .I3(n30719), .O(n30637));   // verilog/coms.v(74[16:27])
    defparam i4_4_lut_adj_1224.LUT_INIT = 16'h9669;
    SB_DFFESS data_out_frame_0___i190 (.Q(\data_out_frame[23] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4269), .S(n30217));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i191 (.Q(\data_out_frame[23] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4268), .S(n30252));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i192 (.Q(\data_out_frame[23] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4267), .S(n30253));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i193 (.Q(\data_out_frame[24] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4266), .S(n30254));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i194 (.Q(\data_out_frame[24] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4265), .S(n30255));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i195 (.Q(\data_out_frame[24] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4264), .S(n30256));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i196 (.Q(\data_out_frame[24] [3]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4263), .S(n30257));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i197 (.Q(\data_out_frame[24] [4]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4262), .S(n30208));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i198 (.Q(\data_out_frame[24] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4261), .S(n30258));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i199 (.Q(\data_out_frame[24] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4260), .S(n30259));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i200 (.Q(\data_out_frame[24] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4259), .S(n30260));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i201 (.Q(\data_out_frame[25] [0]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4257), .S(n30261));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i202 (.Q(\data_out_frame[25] [1]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4256), .S(n30262));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i203 (.Q(\data_out_frame[25] [2]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4255), .S(n30263));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i204 (.Q(\data_out_frame[25] [3]), .C(clk16MHz), 
            .E(n16106), .D(n2_adj_4253), .S(n14654));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i205 (.Q(\data_out_frame[25] [4]), .C(clk16MHz), 
            .E(n16107), .D(n2_adj_4252), .S(n14653));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i206 (.Q(\data_out_frame[25] [5]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4251), .S(n30264));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i207 (.Q(\data_out_frame[25] [6]), .C(clk16MHz), 
            .E(n1449), .D(n2_adj_4250), .S(n30265));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i208 (.Q(\data_out_frame[25] [7]), .C(clk16MHz), 
            .E(n1449), .D(n2), .S(n30266));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i209 (.Q(\data_out_frame[26] [0]), .C(clk16MHz), 
            .E(n1449), .D(n3), .S(n30284));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i210 (.Q(\data_out_frame[26] [1]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4422), .S(n30285));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i211 (.Q(\data_out_frame[26] [2]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4423), .S(n30286));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i212 (.Q(\data_out_frame[26] [3]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4424), .S(n14646));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i213 (.Q(\data_out_frame[26] [4]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4425), .S(n30287));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i214 (.Q(\data_out_frame[26] [5]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4426), .S(n30288));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i215 (.Q(\data_out_frame[26] [6]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4393), .S(n30289));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i216 (.Q(\data_out_frame[26] [7]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4427), .S(n30295));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i217 (.Q(\data_out_frame[27] [0]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4428), .S(n30290));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i218 (.Q(\data_out_frame[27] [1]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4429), .S(n30291));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i219 (.Q(\data_out_frame[27] [2]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4430), .S(n30292));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i220 (.Q(\data_out_frame[27] [3]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4431), .S(n14638));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i221 (.Q(\data_out_frame[27] [4]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4432), .S(n30293));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i222 (.Q(\data_out_frame[27] [5]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4433), .S(n30294));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i223 (.Q(\data_out_frame[27] [6]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4434), .S(n30283));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS data_out_frame_0___i224 (.Q(\data_out_frame[27] [7]), .C(clk16MHz), 
            .E(n1449), .D(n3_adj_4435), .S(n30282));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i1 (.Q(\byte_transmit_counter[1] ), 
            .C(clk16MHz), .E(n1449), .D(n1_adj_4405), .S(n30299));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i2 (.Q(byte_transmit_counter[2]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4407), .S(n30300));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i3 (.Q(byte_transmit_counter[3]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4408), .S(n30301));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i4 (.Q(byte_transmit_counter[4]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4409), .S(n30302));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i5 (.Q(byte_transmit_counter[5]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4410), .S(n30303));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_adj_1225 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1][1] ), 
            .I2(n30775), .I3(GND_net), .O(Kp_23__N_637));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_3_lut_adj_1225.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i23 (.Q(setpoint[23]), .C(clk16MHz), .E(n13378), 
            .D(n2766[23]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i7 (.Q(setpoint[7]), .C(clk16MHz), .E(n13378), 
            .D(n2766[7]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i32464_2_lut (.I0(n12235), .I1(n30719), .I2(GND_net), .I3(GND_net), 
            .O(n37119));
    defparam i32464_2_lut.LUT_INIT = 16'h6666;
    SB_DFFER setpoint_i0_i22 (.Q(setpoint[22]), .C(clk16MHz), .E(n13378), 
            .D(n2766[22]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_4_lut_adj_1226 (.I0(n37119), .I1(\data_in_frame[10] [6]), 
            .I2(n30637), .I3(n11731), .O(n7_adj_4436));
    defparam i2_4_lut_adj_1226.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1227 (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(n25460), .I3(GND_net), .O(n25464));   // verilog/coms.v(156[9:50])
    defparam i1_2_lut_3_lut_adj_1227.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut_adj_1228 (.I0(\data_in_frame[0] [3]), .I1(\data_in_frame[0] [2]), 
            .I2(\data_in_frame[2] [4]), .I3(GND_net), .O(n11620));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_3_lut_adj_1228.LUT_INIT = 16'h9696;
    SB_DFFER setpoint_i0_i21 (.Q(setpoint[21]), .C(clk16MHz), .E(n13378), 
            .D(n2766[21]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i20 (.Q(\data_in_frame[2][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15912));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i6 (.Q(byte_transmit_counter[6]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4413), .S(n30304));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS tx_transmit_4011 (.Q(r_SM_Main_2__N_3415[0]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4437), .S(n14627));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS byte_transmit_counter_i0_i7 (.Q(byte_transmit_counter[7]), .C(clk16MHz), 
            .E(n1449), .D(n1_adj_4414), .S(n30297));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS LED_4014 (.Q(LED_c), .C(clk16MHz), .E(n1449), .D(n5_adj_4438), 
            .S(n14625));   // verilog/coms.v(130[12] 305[6])
    SB_DFFESS driver_enable_4015 (.Q(DE_c), .C(clk16MHz), .E(n1449), .D(n12875), 
            .S(n14623));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i114 (.Q(\data_in_frame[14] [1]), .C(clk16MHz), 
           .D(n15529));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i19 (.Q(\data_in_frame[2][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15905));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i18 (.Q(\data_in_frame[2] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n29865));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i21 (.Q(\data_in_frame[2] [4]), .C(clk16MHz), 
           .D(n29895));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i22 (.Q(neopxl_color[22]), .C(clk16MHz), .D(n15899));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i22 (.Q(\data_in_frame[2][5] ), .C(clk16MHz), 
           .D(n15085));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i23 (.Q(\data_in_frame[2][6] ), .C(clk16MHz), 
           .D(n15088));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i115 (.Q(\data_in_frame[14] [2]), .C(clk16MHz), 
           .D(n15532));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i116 (.Q(\data_in_frame[14] [3]), .C(clk16MHz), 
           .D(n15535));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i117 (.Q(\data_in_frame[14] [4]), .C(clk16MHz), 
           .D(n15538));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i118 (.Q(\data_in_frame[14] [5]), .C(clk16MHz), 
           .D(n15541));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i20 (.Q(setpoint[20]), .C(clk16MHz), .E(n13378), 
            .D(n2766[20]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i119 (.Q(\data_in_frame[14] [6]), .C(clk16MHz), 
           .D(n15544));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i120 (.Q(\data_in_frame[14] [7]), .C(clk16MHz), 
           .D(n29911));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i121 (.Q(\data_in_frame[15] [0]), .C(clk16MHz), 
           .D(n15550));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i122 (.Q(\data_in_frame[15] [1]), .C(clk16MHz), 
           .D(n15553));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i123 (.Q(\data_in_frame[15] [2]), .C(clk16MHz), 
           .D(n15556));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i124 (.Q(\data_in_frame[15] [3]), .C(clk16MHz), 
           .D(n15559));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i24 (.Q(\data_in_frame[2][7] ), .C(clk16MHz), 
           .D(n15091));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i192 (.Q(\data_in_frame[23] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15869));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i191 (.Q(\data_in_frame[23] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15866));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1229 (.I0(n7_adj_4436), .I1(\data_in_frame[13] [3]), 
            .I2(\data_in_frame[15] [4]), .I3(\data_in_frame[13] [2]), .O(n27088));
    defparam i4_4_lut_adj_1229.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i190 (.Q(\data_in_frame[23] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15860));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i189 (.Q(\data_in_frame[23] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15857));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i188 (.Q(\data_in_frame[23] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15854));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i187 (.Q(\data_in_frame[23] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15851));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i17 (.Q(\data_in_frame[2][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15848));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i186 (.Q(\data_in_frame[23] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15845));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i185 (.Q(\data_in_frame[23] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15842));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i184 (.Q(\data_in_frame[22][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15839));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i183 (.Q(\data_in_frame[22] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15838));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i182 (.Q(\data_in_frame[22] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15835));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i181 (.Q(\data_in_frame[22][4] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29903));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i180 (.Q(\data_in_frame[22] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15828));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i179 (.Q(\data_in_frame[22][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15822));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i178 (.Q(\data_in_frame[22][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15819));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i177 (.Q(\data_in_frame[22][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15816));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i176 (.Q(\data_in_frame[21] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15815));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i175 (.Q(\data_in_frame[21][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n29905));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i174 (.Q(\data_in_frame[21][5] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15804));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i173 (.Q(\data_in_frame[21] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15803));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i16 (.Q(\data_in_frame[1] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15798));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i172 (.Q(\data_in_frame[21][3] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15795));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i171 (.Q(\data_in_frame[21][2] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15792));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i170 (.Q(\data_in_frame[21][1] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15789));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i169 (.Q(\data_in_frame[21][0] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15786));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i168 (.Q(\data_in_frame[20] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15783));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i25 (.Q(\data_in_frame[3] [0]), .C(clk16MHz), 
           .D(n15094));   // verilog/coms.v(130[12] 305[6])
    SB_DFF neopxl_color_i0_i23 (.Q(neopxl_color[23]), .C(clk16MHz), .D(n15781));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i1 (.Q(\data_in_frame[0] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15777));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i167 (.Q(\data_in_frame[20] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15774));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i166 (.Q(\data_in_frame[20] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15771));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i165 (.Q(\data_in_frame[20] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15768));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i164 (.Q(\data_in_frame[20] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15765));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i163 (.Q(\data_in_frame[20] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15762));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1230 (.I0(n12153), .I1(n11979), .I2(\data_in_frame[5][3] ), 
            .I3(n30448), .O(n10_adj_4439));
    defparam i4_4_lut_adj_1230.LUT_INIT = 16'h6996;
    SB_DFFE data_in_frame_0___i162 (.Q(\data_in_frame[20] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15759));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i161 (.Q(\data_in_frame[20] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15756));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i160 (.Q(\data_in_frame[19] [7]), .C(clk16MHz), 
            .E(VCC_net), .D(n15753));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i159 (.Q(\data_in_frame[19] [6]), .C(clk16MHz), 
            .E(VCC_net), .D(n15750));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i158 (.Q(\data_in_frame[19] [5]), .C(clk16MHz), 
            .E(VCC_net), .D(n15747));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i157 (.Q(\data_in_frame[19] [4]), .C(clk16MHz), 
            .E(VCC_net), .D(n15744));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i156 (.Q(\data_in_frame[19] [3]), .C(clk16MHz), 
            .E(VCC_net), .D(n15741));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i155 (.Q(\data_in_frame[19] [2]), .C(clk16MHz), 
            .E(VCC_net), .D(n15738));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i17154_4_lut (.I0(n25503), .I1(n117), .I2(rx_data[4]), .I3(\data_in_frame[21] [4]), 
            .O(n21305));   // verilog/coms.v(94[13:20])
    defparam i17154_4_lut.LUT_INIT = 16'hfac0;
    SB_DFFE data_in_frame_0___i154 (.Q(\data_in_frame[19] [1]), .C(clk16MHz), 
            .E(VCC_net), .D(n15735));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i153 (.Q(\data_in_frame[19] [0]), .C(clk16MHz), 
            .E(VCC_net), .D(n15732));   // verilog/coms.v(130[12] 305[6])
    SB_DFFE data_in_frame_0___i152 (.Q(\data_in_frame[18][7] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15729));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i17155_3_lut (.I0(n21305), .I1(\data_in_frame[21] [4]), .I2(reset), 
            .I3(GND_net), .O(n15803));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i17155_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_in_frame_0___i151 (.Q(\data_in_frame[18][6] ), .C(clk16MHz), 
            .E(VCC_net), .D(n15726));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i125 (.Q(\data_in_frame[15] [4]), .C(clk16MHz), 
           .D(n15562));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i126 (.Q(\data_in_frame[15] [5]), .C(clk16MHz), 
           .D(n15565));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i127 (.Q(\data_in_frame[15] [6]), .C(clk16MHz), 
           .D(n15568));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i128 (.Q(\data_in_frame[15] [7]), .C(clk16MHz), 
           .D(n15571));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i129 (.Q(\data_in_frame[16] [0]), .C(clk16MHz), 
           .D(n15574));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1231 (.I0(\data_out_frame[12] [2]), .I1(\data_out_frame[5] [2]), 
            .I2(\data_out_frame[5] [6]), .I3(n30516), .O(n11551));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1231.LUT_INIT = 16'h6996;
    SB_DFF data_in_frame_0___i130 (.Q(\data_in_frame[16] [1]), .C(clk16MHz), 
           .D(n15577));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i131 (.Q(\data_in_frame[16] [2]), .C(clk16MHz), 
           .D(n15580));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i132 (.Q(\data_in_frame[16] [3]), .C(clk16MHz), 
           .D(n15583));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i133 (.Q(\data_in_frame[16] [4]), .C(clk16MHz), 
           .D(n15586));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i134 (.Q(\data_in_frame[16] [5]), .C(clk16MHz), 
           .D(n15589));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i135 (.Q(\data_in_frame[16] [6]), .C(clk16MHz), 
           .D(n15592));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i136 (.Q(\data_in_frame[16] [7]), .C(clk16MHz), 
           .D(n15595));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i137 (.Q(\data_in_frame[17] [0]), .C(clk16MHz), 
           .D(n15598));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i138 (.Q(\data_in_frame[17] [1]), .C(clk16MHz), 
           .D(n15711));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i139 (.Q(\data_in_frame[17] [2]), .C(clk16MHz), 
           .D(n15604));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i140 (.Q(\data_in_frame[17] [3]), .C(clk16MHz), 
           .D(n15607));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i141 (.Q(\data_in_frame[17] [4]), .C(clk16MHz), 
           .D(n15610));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i142 (.Q(\data_in_frame[17] [5]), .C(clk16MHz), 
           .D(n15614));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i1 (.Q(control_mode[1]), .C(clk16MHz), .D(n15706));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i19 (.Q(setpoint[19]), .C(clk16MHz), .E(n13378), 
            .D(n2766[19]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_3_lut_adj_1232 (.I0(\data_in_frame[5][2] ), .I1(n10_adj_4439), 
            .I2(\data_in_frame[7] [4]), .I3(GND_net), .O(n30755));
    defparam i5_3_lut_adj_1232.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1233 (.I0(n8_adj_4416), .I1(n26525), .I2(n25460), 
            .I3(GND_net), .O(n25503));
    defparam i1_2_lut_3_lut_adj_1233.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_2_lut_adj_1234 (.I0(\data_in_frame[9] [5]), .I1(\data_in_frame[11] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30506));
    defparam i1_2_lut_adj_1234.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i143 (.Q(\data_in_frame[17] [6]), .C(clk16MHz), 
           .D(n15618));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i144 (.Q(\data_in_frame[17] [7]), .C(clk16MHz), 
           .D(n15628));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i145 (.Q(\data_in_frame[18][0] ), .C(clk16MHz), 
           .D(n15631));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i146 (.Q(\data_in_frame[18]_c [1]), .C(clk16MHz), 
           .D(n29941));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i147 (.Q(\data_in_frame[18][2] ), .C(clk16MHz), 
           .D(n15637));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i15 (.Q(\data_in_frame[1] [6]), .C(clk16MHz), 
           .D(n15642));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i148 (.Q(\data_in_frame[18][3] ), .C(clk16MHz), 
           .D(n15645));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i149 (.Q(\data_in_frame[18]_c [4]), .C(clk16MHz), 
           .D(n29971));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i150 (.Q(\data_in_frame[18] [5]), .C(clk16MHz), 
           .D(n15651));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i26 (.Q(\data_in_frame[3] [1]), .C(clk16MHz), 
           .D(n15097));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i2 (.Q(control_mode[2]), .C(clk16MHz), .D(n15658));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i3 (.Q(control_mode[3]), .C(clk16MHz), .D(n15655));   // verilog/coms.v(130[12] 305[6])
    SB_DFF control_mode_i0_i4 (.Q(control_mode[4]), .C(clk16MHz), .D(n29781));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1235 (.I0(\data_in_frame[16] [0]), .I1(\data_in_frame[16] [1]), 
            .I2(\data_in_frame[13] [7]), .I3(n30836), .O(n6_adj_4440));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_4_lut_adj_1235.LUT_INIT = 16'h6996;
    SB_DFF control_mode_i0_i5 (.Q(control_mode[5]), .C(clk16MHz), .D(n15641));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_4_lut_adj_1236 (.I0(n12616), .I1(\data_in_frame[5][2] ), 
            .I2(n10_adj_4439), .I3(\data_in_frame[7] [4]), .O(n9799));
    defparam i1_2_lut_4_lut_adj_1236.LUT_INIT = 16'h6996;
    SB_DFF control_mode_i0_i6 (.Q(control_mode[6]), .C(clk16MHz), .D(n15640));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i27 (.Q(\data_in_frame[3] [2]), .C(clk16MHz), 
           .D(n15100));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1237 (.I0(\data_in_frame[14] [0]), .I1(n12253), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4441));
    defparam i1_2_lut_adj_1237.LUT_INIT = 16'h6666;
    SB_DFF data_in_frame_0___i28 (.Q(\data_in_frame[3] [3]), .C(clk16MHz), 
           .D(n15103));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i29 (.Q(\data_in_frame[3] [4]), .C(clk16MHz), 
           .D(n15106));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i30 (.Q(\data_in_frame[3] [5]), .C(clk16MHz), 
           .D(n15109));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i31 (.Q(\data_in_frame[3] [6]), .C(clk16MHz), 
           .D(n15112));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i32 (.Q(\data_in_frame[3] [7]), .C(clk16MHz), 
           .D(n15115));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i33 (.Q(\data_in_frame[4] [0]), .C(clk16MHz), 
           .D(n15119));   // verilog/coms.v(130[12] 305[6])
    SB_DFF data_in_frame_0___i34 (.Q(\data_in_frame[4][1] ), .C(clk16MHz), 
           .D(n15128));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1238 (.I0(n9799), .I1(\data_in_frame[9] [4]), .I2(n30506), 
            .I3(n6_adj_4441), .O(n30836));
    defparam i4_4_lut_adj_1238.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1239 (.I0(\data_in_frame[13] [7]), .I1(n30836), 
            .I2(GND_net), .I3(GND_net), .O(n30892));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1239.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1240 (.I0(\data_in_frame[16] [0]), .I1(\data_in_frame[16] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30793));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1240.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1241 (.I0(n26525), .I1(n25460), .I2(GND_net), 
            .I3(GND_net), .O(n71));
    defparam i1_2_lut_adj_1241.LUT_INIT = 16'hdddd;
    SB_DFF data_in_frame_0___i35 (.Q(\data_in_frame[4][2] ), .C(clk16MHz), 
           .D(n15131));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i18 (.Q(setpoint[18]), .C(clk16MHz), .E(n13378), 
            .D(n2766[18]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i4_4_lut_adj_1242 (.I0(n12235), .I1(n30523), .I2(n30853), 
            .I3(n6_adj_4440), .O(n27557));   // verilog/coms.v(88[17:63])
    defparam i4_4_lut_adj_1242.LUT_INIT = 16'h6996;
    SB_LUT4 i11227_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[0]), 
            .I3(\data_in_frame[10] [0]), .O(n15430));
    defparam i11227_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1243 (.I0(\data_in_frame[18][2] ), .I1(n27557), 
            .I2(GND_net), .I3(GND_net), .O(n27998));
    defparam i1_2_lut_adj_1243.LUT_INIT = 16'h6666;
    SB_LUT4 i11230_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[1]), 
            .I3(\data_in_frame[10] [1]), .O(n15433));
    defparam i11230_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1244 (.I0(\data_out_frame[12] [2]), .I1(n30393), 
            .I2(n27312), .I3(n30499), .O(n27956));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1244.LUT_INIT = 16'h6996;
    SB_LUT4 i11233_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[2]), 
            .I3(\data_in_frame[10] [2]), .O(n15436));
    defparam i11233_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11236_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[3]), 
            .I3(\data_in_frame[10] [3]), .O(n15439));
    defparam i11236_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1245 (.I0(n27088), .I1(\data_in_frame[18][0] ), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4442));
    defparam i1_2_lut_adj_1245.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1246 (.I0(\data_in_frame[20] [3]), .I1(n30790), 
            .I2(Kp_23__N_1259), .I3(n6_adj_4442), .O(n30685));
    defparam i4_4_lut_adj_1246.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1247 (.I0(\data_out_frame[12] [2]), .I1(n30393), 
            .I2(n30620), .I3(n30499), .O(n27925));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_3_lut_4_lut_adj_1247.LUT_INIT = 16'h9669;
    SB_LUT4 i11239_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[4]), 
            .I3(\data_in_frame[10] [4]), .O(n15442));
    defparam i11239_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i17184_4_lut (.I0(n25503), .I1(n117), .I2(rx_data[7]), .I3(\data_in_frame[21] [7]), 
            .O(n21335));   // verilog/coms.v(94[13:20])
    defparam i17184_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i1_2_lut_adj_1248 (.I0(\data_in_frame[5][3] ), .I1(\data_in_frame[3] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30864));   // verilog/coms.v(88[17:63])
    defparam i1_2_lut_adj_1248.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1249 (.I0(n30775), .I1(n11979), .I2(\data_in_frame[7] [5]), 
            .I3(n30864), .O(n10_adj_4443));   // verilog/coms.v(88[17:63])
    defparam i4_4_lut_adj_1249.LUT_INIT = 16'h6996;
    SB_LUT4 i11242_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[5]), 
            .I3(\data_in_frame[10] [5]), .O(n15445));
    defparam i11242_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i17185_3_lut (.I0(n21335), .I1(\data_in_frame[21] [7]), .I2(reset), 
            .I3(GND_net), .O(n15815));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i17185_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFER setpoint_i0_i17 (.Q(setpoint[17]), .C(clk16MHz), .E(n13378), 
            .D(n2773), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i5_3_lut_adj_1250 (.I0(\data_in_frame[3] [1]), .I1(n10_adj_4443), 
            .I2(\data_in_frame[5][4] ), .I3(GND_net), .O(n27094));   // verilog/coms.v(88[17:63])
    defparam i5_3_lut_adj_1250.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1251 (.I0(\data_in_frame[9] [2]), .I1(\data_in_frame[9] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30405));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_adj_1251.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_1252 (.I0(\data_in_frame[2][3] ), .I1(\data_in_frame[0] [2]), 
            .I2(\data_in_frame[0] [1]), .I3(GND_net), .O(n4_adj_4419));   // verilog/coms.v(78[16:43])
    defparam i1_3_lut_adj_1252.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1253 (.I0(\data_in_frame[4][3] ), .I1(\data_in_frame[4][4] ), 
            .I2(GND_net), .I3(GND_net), .O(n30766));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1253.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut (.I0(\data_in_frame[0] [0]), .I1(n4_adj_4419), .I2(\data_in_frame[2] [1]), 
            .I3(GND_net), .O(n30464));   // verilog/coms.v(77[16:43])
    defparam i3_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i17169_4_lut (.I0(n32_adj_4444), .I1(n116), .I2(rx_data[3]), 
            .I3(\data_in_frame[22] [3]), .O(n21320));   // verilog/coms.v(94[13:20])
    defparam i17169_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i2_3_lut_adj_1254 (.I0(\data_in_frame[0] [1]), .I1(\data_in_frame[0] [0]), 
            .I2(\data_in_frame[2][2] ), .I3(GND_net), .O(n12146));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_adj_1254.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1255 (.I0(\data_in_frame[0] [2]), .I1(\data_in_frame[2] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30411));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1255.LUT_INIT = 16'h6666;
    SB_LUT4 i21428_3_lut (.I0(n21320), .I1(\data_in_frame[22] [3]), .I2(reset), 
            .I3(GND_net), .O(n15828));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i21428_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF neopxl_color_i0_i20 (.Q(neopxl_color[20]), .C(clk16MHz), .D(n15084));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i1_2_lut_adj_1256 (.I0(\data_in_frame[4][4] ), .I1(n12146), 
            .I2(GND_net), .I3(GND_net), .O(n12471));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1256.LUT_INIT = 16'h6666;
    SB_LUT4 i11245_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[6]), 
            .I3(\data_in_frame[10] [6]), .O(n15448));
    defparam i11245_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1257 (.I0(n30464), .I1(n30766), .I2(\data_in_frame[1] [7]), 
            .I3(GND_net), .O(Kp_23__N_748));   // verilog/coms.v(77[16:43])
    defparam i2_3_lut_adj_1257.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1258 (.I0(Kp_23__N_748), .I1(n12471), .I2(n11620), 
            .I3(GND_net), .O(n30858));
    defparam i2_3_lut_adj_1258.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1259 (.I0(\data_in_frame[6] [5]), .I1(n30858), 
            .I2(\data_in_frame[6] [6]), .I3(GND_net), .O(n30548));   // verilog/coms.v(80[16:43])
    defparam i2_3_lut_adj_1259.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1260 (.I0(Kp_23__N_642), .I1(n30480), .I2(\data_in_frame[1] [3]), 
            .I3(GND_net), .O(n30775));   // verilog/coms.v(88[17:63])
    defparam i2_3_lut_adj_1260.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1261 (.I0(\data_in_frame[1] [2]), .I1(\data_in_frame[1][1] ), 
            .I2(GND_net), .I3(GND_net), .O(n11686));   // verilog/coms.v(76[16:34])
    defparam i1_2_lut_adj_1261.LUT_INIT = 16'h6666;
    SB_LUT4 i17124_4_lut (.I0(n32_adj_4444), .I1(n116), .I2(rx_data[5]), 
            .I3(\data_in_frame[22] [5]), .O(n21275));   // verilog/coms.v(94[13:20])
    defparam i17124_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i17125_3_lut (.I0(n21275), .I1(\data_in_frame[22] [5]), .I2(reset), 
            .I3(GND_net), .O(n15835));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i17125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1262 (.I0(n57), .I1(n164), .I2(GND_net), .I3(GND_net), 
            .O(n116));
    defparam i1_2_lut_adj_1262.LUT_INIT = 16'h4444;
    SB_LUT4 i2_3_lut_adj_1263 (.I0(\data_in_frame[5][1] ), .I1(\data_in_frame[3] [1]), 
            .I2(\data_in_frame[5][2] ), .I3(GND_net), .O(n30566));   // verilog/coms.v(88[17:70])
    defparam i2_3_lut_adj_1263.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_1264 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[7] [3]), 
            .I2(n12456), .I3(Kp_23__N_637), .O(n10_adj_4445));   // verilog/coms.v(88[17:70])
    defparam i4_4_lut_adj_1264.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1265 (.I0(n25461), .I1(n26525), .I2(\FRAME_MATCHER.i [0]), 
            .I3(GND_net), .O(n32_adj_4444));
    defparam i2_3_lut_adj_1265.LUT_INIT = 16'hfbfb;
    SB_LUT4 i5_3_lut_adj_1266 (.I0(n11979), .I1(n10_adj_4445), .I2(n30566), 
            .I3(GND_net), .O(n27097));   // verilog/coms.v(88[17:70])
    defparam i5_3_lut_adj_1266.LUT_INIT = 16'h9696;
    SB_LUT4 data_in_frame_9__7__I_0_2_lut (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_955));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_9__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1267 (.I0(n27097), .I1(\data_in_frame[9] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n27795));
    defparam i1_2_lut_adj_1267.LUT_INIT = 16'h6666;
    SB_DFF neopxl_color_i0_i21 (.Q(neopxl_color[21]), .C(clk16MHz), .D(n15083));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i3_4_lut_adj_1268 (.I0(\data_in_frame[9] [4]), .I1(n30402), 
            .I2(\data_in_frame[9] [5]), .I3(Kp_23__N_955), .O(n27573));
    defparam i3_4_lut_adj_1268.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1269 (.I0(n11598), .I1(\data_in_frame[4][7] ), 
            .I2(GND_net), .I3(GND_net), .O(n30662));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_adj_1269.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut_4_lut_adj_1270 (.I0(n27222), .I1(n27021), .I2(n27812), 
            .I3(\data_out_frame[24] [4]), .O(n8_adj_4446));
    defparam i3_3_lut_4_lut_adj_1270.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_adj_1271 (.I0(\data_in_frame[2][6] ), .I1(\data_in_frame[0] [4]), 
            .I2(\data_in_frame[0] [5]), .I3(GND_net), .O(n12616));
    defparam i2_3_lut_adj_1271.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1272 (.I0(\data_in_frame[5] [0]), .I1(Kp_23__N_669), 
            .I2(GND_net), .I3(GND_net), .O(n12130));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_adj_1272.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1273 (.I0(\data_in_frame[6] [7]), .I1(\data_in_frame[7] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30502));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_adj_1273.LUT_INIT = 16'h6666;
    SB_DFFS \FRAME_MATCHER.state_FSM_i9  (.Q(\FRAME_MATCHER.i_31__N_2377 ), 
            .C(clk16MHz), .D(n37448), .S(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 i1_2_lut_3_lut_adj_1274 (.I0(n27222), .I1(n27021), .I2(n32082), 
            .I3(GND_net), .O(n26959));
    defparam i1_2_lut_3_lut_adj_1274.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1275 (.I0(n30374), .I1(n30727), .I2(n12619), 
            .I3(\data_in_frame[8] [0]), .O(n30844));
    defparam i3_4_lut_adj_1275.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut (.I0(n30402), .I1(n30844), .I2(\data_in_frame[12] [2]), 
            .I3(\data_in_frame[11] [7]), .O(n12));
    defparam i5_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1276 (.I0(\data_in_frame[10] [1]), .I1(n12), .I2(n30880), 
            .I3(n27573), .O(n27824));
    defparam i6_4_lut_adj_1276.LUT_INIT = 16'h6996;
    SB_LUT4 i17139_4_lut (.I0(n32_adj_4444), .I1(n116), .I2(rx_data[6]), 
            .I3(\data_in_frame[22] [6]), .O(n21290));   // verilog/coms.v(94[13:20])
    defparam i17139_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i4_4_lut_adj_1277 (.I0(\data_in_frame[11] [3]), .I1(n30781), 
            .I2(\data_in_frame[9] [2]), .I3(\data_in_frame[9] [1]), .O(n10_adj_4447));   // verilog/coms.v(80[16:43])
    defparam i4_4_lut_adj_1277.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1278 (.I0(n30548), .I1(n10_adj_4447), .I2(\data_in_frame[8] [7]), 
            .I3(GND_net), .O(n30458));   // verilog/coms.v(80[16:43])
    defparam i5_3_lut_adj_1278.LUT_INIT = 16'h9696;
    SB_LUT4 data_in_frame_1__4__I_0_2_lut (.I0(\data_in_frame[1] [4]), .I1(\data_in_frame[1] [3]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_713));   // verilog/coms.v(78[16:27])
    defparam data_in_frame_1__4__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i29110_3_lut_4_lut (.I0(\data_in_frame[4][5] ), .I1(n30548), 
            .I2(\data_in_frame[8] [7]), .I3(n11727), .O(n33754));   // verilog/coms.v(80[16:43])
    defparam i29110_3_lut_4_lut.LUT_INIT = 16'hff96;
    SB_LUT4 i11248_3_lut_4_lut (.I0(n25470), .I1(n30371), .I2(rx_data[7]), 
            .I3(\data_in_frame[10] [7]), .O(n15451));
    defparam i11248_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i21427_3_lut (.I0(n21290), .I1(\data_in_frame[22] [6]), .I2(reset), 
            .I3(GND_net), .O(n15838));   // verilog/TinyFPGA_B.v(47[5:10])
    defparam i21427_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_1279 (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [3]), 
            .I2(n1982), .I3(n161), .O(n164));
    defparam i3_4_lut_adj_1279.LUT_INIT = 16'h2000;
    SB_LUT4 i1_2_lut_3_lut_adj_1280 (.I0(\data_in_frame[4][5] ), .I1(n30548), 
            .I2(n12661), .I3(GND_net), .O(n30815));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_3_lut_adj_1280.LUT_INIT = 16'h9696;
    SB_LUT4 i26331_3_lut_4_lut (.I0(\FRAME_MATCHER.i [0]), .I1(n7_adj_4394), 
            .I2(n30351), .I3(reset), .O(n14177));   // verilog/coms.v(157[7:23])
    defparam i26331_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_3_lut_4_lut_adj_1281 (.I0(\data_in_frame[4][5] ), .I1(n30548), 
            .I2(n27887), .I3(n27573), .O(n32265));   // verilog/coms.v(80[16:43])
    defparam i2_3_lut_4_lut_adj_1281.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_adj_1282 (.I0(n12036), .I1(n30452), .I2(n27212), 
            .I3(GND_net), .O(n27992));
    defparam i1_2_lut_3_lut_adj_1282.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1283 (.I0(n12036), .I1(n30452), .I2(n9505), 
            .I3(GND_net), .O(n26952));
    defparam i1_2_lut_3_lut_adj_1283.LUT_INIT = 16'h9696;
    SB_LUT4 i5_3_lut_4_lut (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[0] [6]), 
            .I2(\data_in_frame[1] [0]), .I3(n4_adj_4419), .O(n22_adj_4404));   // verilog/coms.v(73[16:27])
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h0096;
    SB_LUT4 i1_2_lut_3_lut_adj_1284 (.I0(\data_in_frame[4][2] ), .I1(\data_in_frame[1] [7]), 
            .I2(\data_in_frame[1] [6]), .I3(GND_net), .O(n11630));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1284.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_3_lut_adj_1285 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[0] [6]), 
            .I2(\data_in_frame[0] [5]), .I3(GND_net), .O(n30417));   // verilog/coms.v(73[16:27])
    defparam i1_2_lut_3_lut_adj_1285.LUT_INIT = 16'h9696;
    SB_LUT4 i4_4_lut_adj_1286 (.I0(\data_in_frame[1] [6]), .I1(n12181), 
            .I2(Kp_23__N_713), .I3(n6_adj_4448), .O(Kp_23__N_585));   // verilog/coms.v(81[16:27])
    defparam i4_4_lut_adj_1286.LUT_INIT = 16'h6996;
    SB_DFFR \FRAME_MATCHER.state_FSM_i8  (.Q(\FRAME_MATCHER.i_31__N_2378 ), 
            .C(clk16MHz), .D(n13364), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i7  (.Q(\FRAME_MATCHER.i_31__N_2379 ), 
            .C(clk16MHz), .D(n776), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i6  (.Q(\FRAME_MATCHER.state[3] ), .C(clk16MHz), 
            .D(n777), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i5  (.Q(\FRAME_MATCHER.i_31__N_2381 ), 
            .C(clk16MHz), .D(n7053), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i4  (.Q(\FRAME_MATCHER.i_31__N_2382 ), 
            .C(clk16MHz), .D(n29797), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i3  (.Q(\FRAME_MATCHER.i_31__N_2383 ), 
            .C(clk16MHz), .D(n788), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_DFFR \FRAME_MATCHER.state_FSM_i2  (.Q(\FRAME_MATCHER.i_31__N_2384 ), 
            .C(clk16MHz), .D(n12732), .R(reset));   // verilog/coms.v(148[4] 304[11])
    SB_LUT4 i1_2_lut_adj_1287 (.I0(Kp_23__N_585), .I1(Kp_23__N_739), .I2(GND_net), 
            .I3(GND_net), .O(n30769));   // verilog/coms.v(76[16:42])
    defparam i1_2_lut_adj_1287.LUT_INIT = 16'h6666;
    SB_LUT4 i5_3_lut_4_lut_adj_1288 (.I0(\data_in_frame[21][1] ), .I1(n30649), 
            .I2(n26818), .I3(\data_in_frame[19] [6]), .O(n18_adj_4449));
    defparam i5_3_lut_4_lut_adj_1288.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1289 (.I0(\data_in_frame[21][1] ), .I1(n30649), 
            .I2(\data_in_frame[23] [3]), .I3(n10997), .O(n32150));
    defparam i2_3_lut_4_lut_adj_1289.LUT_INIT = 16'h6996;
    SB_DFFESS byte_transmit_counter_i0_i0 (.Q(\byte_transmit_counter[0] ), 
            .C(clk16MHz), .E(n1449), .D(n1_adj_4450), .S(n30298));   // verilog/coms.v(130[12] 305[6])
    SB_DFFER setpoint_i0_i0 (.Q(setpoint[0]), .C(clk16MHz), .E(n13378), 
            .D(n2766[0]), .R(reset));   // verilog/coms.v(130[12] 305[6])
    SB_LUT4 i2_2_lut_4_lut (.I0(n26961), .I1(\data_out_frame[25] [0]), .I2(\data_out_frame[24] [6]), 
            .I3(n27011), .O(n6_adj_4451));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i2_2_lut_4_lut_adj_1290 (.I0(n26961), .I1(\data_out_frame[25] [0]), 
            .I2(\data_out_frame[24] [6]), .I3(n27140), .O(n6_adj_4452));
    defparam i2_2_lut_4_lut_adj_1290.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_222_i3_3_lut_4_lut (.I0(\data_out_frame[25] [4]), 
            .I1(n32418), .I2(\FRAME_MATCHER.state[3] ), .I3(n27080), .O(n3_adj_4434));
    defparam select_441_Select_222_i3_3_lut_4_lut.LUT_INIT = 16'h6090;
    SB_LUT4 select_441_Select_221_i3_3_lut_4_lut (.I0(\data_out_frame[25] [4]), 
            .I1(n32418), .I2(n30611), .I3(\FRAME_MATCHER.state[3] ), .O(n3_adj_4433));
    defparam select_441_Select_221_i3_3_lut_4_lut.LUT_INIT = 16'h6900;
    SB_LUT4 i2_3_lut_adj_1291 (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [3]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(GND_net), .O(n25460));   // verilog/coms.v(158[12:15])
    defparam i2_3_lut_adj_1291.LUT_INIT = 16'hfdfd;
    SB_LUT4 i2_3_lut_adj_1292 (.I0(\data_in_frame[8] [3]), .I1(\data_in_frame[6] [1]), 
            .I2(\data_in_frame[6] [2]), .I3(GND_net), .O(n30473));   // verilog/coms.v(76[16:42])
    defparam i2_3_lut_adj_1292.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1293 (.I0(\data_in_frame[2][0] ), .I1(n30806), 
            .I2(Kp_23__N_642), .I3(n30480), .O(Kp_23__N_739));   // verilog/coms.v(81[16:27])
    defparam i3_4_lut_adj_1293.LUT_INIT = 16'h6996;
    SB_LUT4 i11_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(\data_in_frame[14] [7]), 
            .I3(rx_data[7]), .O(n29911));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i9_3_lut_4_lut (.I0(\data_in_frame[8] [0]), .I1(n27883), .I2(n26680), 
            .I3(n9803), .O(n26_adj_4453));
    defparam i9_3_lut_4_lut.LUT_INIT = 16'h0900;
    SB_LUT4 i1_2_lut_3_lut_adj_1294 (.I0(\data_in_frame[8] [0]), .I1(n27883), 
            .I2(\data_in_frame[10] [2]), .I3(GND_net), .O(n6_adj_4301));
    defparam i1_2_lut_3_lut_adj_1294.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_3_lut_adj_1295 (.I0(\data_in_frame[2][5] ), .I1(\data_in_frame[0] [3]), 
            .I2(\data_in_frame[0] [4]), .I3(GND_net), .O(n11598));   // verilog/coms.v(169[9:87])
    defparam i1_2_lut_3_lut_adj_1295.LUT_INIT = 16'h9696;
    SB_LUT4 mux_646_i21_3_lut (.I0(\data_in_frame[17] [4]), .I1(\data_in_frame[1] [4]), 
            .I2(n17410), .I3(GND_net), .O(n2766[20]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i21_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_adj_1296 (.I0(\data_in_frame[6] [2]), .I1(\data_in_frame[6] [3]), 
            .I2(GND_net), .I3(GND_net), .O(n30420));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1296.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1297 (.I0(\data_in_frame[13] [5]), .I1(n12235), 
            .I2(n11758), .I3(n30523), .O(n30790));
    defparam i1_2_lut_4_lut_adj_1297.LUT_INIT = 16'h6996;
    SB_LUT4 i11341_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[6]), 
            .I3(\data_in_frame[14] [6]), .O(n15544));
    defparam i11341_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1298 (.I0(reset), .I1(\FRAME_MATCHER.i_31__N_2381 ), 
            .I2(GND_net), .I3(GND_net), .O(n30296));   // verilog/coms.v(130[12] 305[6])
    defparam i1_2_lut_adj_1298.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut_adj_1299 (.I0(\data_in_frame[13] [5]), .I1(n12235), 
            .I2(n11758), .I3(GND_net), .O(n11774));
    defparam i1_2_lut_3_lut_adj_1299.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1300 (.I0(n12225), .I1(\data_in_frame[10] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30426));
    defparam i1_2_lut_adj_1300.LUT_INIT = 16'h6666;
    SB_LUT4 i11338_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[5]), 
            .I3(\data_in_frame[14] [5]), .O(n15541));
    defparam i11338_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_2_lut_3_lut (.I0(n8_adj_4454), .I1(n26525), .I2(n10_adj_4401), 
            .I3(GND_net), .O(n14153));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i3_4_lut_adj_1301 (.I0(\data_in_frame[8] [4]), .I1(n30420), 
            .I2(Kp_23__N_742), .I3(Kp_23__N_739), .O(n11731));   // verilog/coms.v(88[17:28])
    defparam i3_4_lut_adj_1301.LUT_INIT = 16'h6996;
    SB_LUT4 i21933_2_lut_3_lut (.I0(rx_data_ready), .I1(\FRAME_MATCHER.rx_data_ready_prev ), 
            .I2(n1982), .I3(GND_net), .O(n26525));
    defparam i21933_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i11335_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[4]), 
            .I3(\data_in_frame[14] [4]), .O(n15538));
    defparam i11335_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i6_3_lut_4_lut (.I0(\data_in_frame[1] [7]), .I1(n26680), .I2(\data_in_frame[0] [0]), 
            .I3(Kp_23__N_618), .O(n23_adj_4402));
    defparam i6_3_lut_4_lut.LUT_INIT = 16'h2112;
    SB_LUT4 i2_3_lut_4_lut_adj_1302 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(reset), .I3(\FRAME_MATCHER.i [0]), .O(n30341));   // verilog/coms.v(157[7:23])
    defparam i2_3_lut_4_lut_adj_1302.LUT_INIT = 16'hfdff;
    SB_LUT4 i2_3_lut_4_lut_adj_1303 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13] [4]), 
            .I2(\data_in_frame[13] [1]), .I3(\data_in_frame[13] [2]), .O(n30689));   // verilog/coms.v(88[17:63])
    defparam i2_3_lut_4_lut_adj_1303.LUT_INIT = 16'h6996;
    SB_LUT4 i11332_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[3]), 
            .I3(\data_in_frame[14] [3]), .O(n15535));
    defparam i11332_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_1304 (.I0(\data_in_frame[13] [3]), .I1(\data_in_frame[13] [4]), 
            .I2(n30719), .I3(\data_in_frame[15] [5]), .O(n30840));   // verilog/coms.v(88[17:63])
    defparam i2_3_lut_4_lut_adj_1304.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1305 (.I0(n11640), .I1(n30617), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4455));
    defparam i1_2_lut_adj_1305.LUT_INIT = 16'h6666;
    SB_LUT4 i11329_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[2]), 
            .I3(\data_in_frame[14] [2]), .O(n15532));
    defparam i11329_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11326_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[1]), 
            .I3(\data_in_frame[14] [1]), .O(n15529));
    defparam i11326_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11323_3_lut_4_lut (.I0(n25469), .I1(n30371), .I2(rx_data[0]), 
            .I3(\data_in_frame[14] [0]), .O(n15526));
    defparam i11323_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_4_lut_adj_1306 (.I0(\data_in_frame[18][7] ), .I1(\data_in_frame[14] [5]), 
            .I2(n11933), .I3(n27175), .O(n30830));
    defparam i1_2_lut_4_lut_adj_1306.LUT_INIT = 16'h6996;
    SB_LUT4 i32531_2_lut_3_lut (.I0(tx_active), .I1(r_SM_Main_2__N_3415[0]), 
            .I2(n22372), .I3(GND_net), .O(tx_transmit_N_3286));
    defparam i32531_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i11299_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[0]), 
            .I3(\data_in_frame[13] [0]), .O(n15502));
    defparam i11299_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1307 (.I0(\data_in_frame[12] [6]), .I1(\data_in_frame[17] [1]), 
            .I2(\data_in_frame[14] [7]), .I3(n6_adj_4455), .O(n27891));
    defparam i4_4_lut_adj_1307.LUT_INIT = 16'h6996;
    SB_LUT4 i11302_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[1]), 
            .I3(\data_in_frame[13] [1]), .O(n15505));
    defparam i11302_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11305_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[2]), 
            .I3(\data_in_frame[13] [2]), .O(n15508));
    defparam i11305_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11308_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[3]), 
            .I3(\data_in_frame[13] [3]), .O(n15511));
    defparam i11308_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1308 (.I0(n27793), .I1(\data_in_frame[15] [3]), 
            .I2(\data_in_frame[17] [4]), .I3(GND_net), .O(n32533));
    defparam i2_3_lut_adj_1308.LUT_INIT = 16'h9696;
    SB_LUT4 i32457_3_lut (.I0(rx_data[4]), .I1(\data_in_frame[2] [4]), .I2(n14209), 
            .I3(GND_net), .O(n29895));   // verilog/coms.v(94[13:20])
    defparam i32457_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11311_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[4]), 
            .I3(\data_in_frame[13] [4]), .O(n15514));
    defparam i11311_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11314_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[5]), 
            .I3(\data_in_frame[13] [5]), .O(n15517));
    defparam i11314_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i32456_3_lut (.I0(rx_data[1]), .I1(\data_in_frame[2] [1]), .I2(n14209), 
            .I3(GND_net), .O(n29865));   // verilog/coms.v(94[13:20])
    defparam i32456_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_1309 (.I0(\data_in_frame[19] [5]), .I1(n32533), 
            .I2(n30681), .I3(GND_net), .O(n27901));
    defparam i1_3_lut_adj_1309.LUT_INIT = 16'h9696;
    SB_LUT4 i11317_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[6]), 
            .I3(\data_in_frame[13] [6]), .O(n15520));
    defparam i11317_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11320_3_lut_4_lut (.I0(n8_adj_4416), .I1(n30368), .I2(rx_data[7]), 
            .I3(\data_in_frame[13] [7]), .O(n15523));
    defparam i11320_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1310 (.I0(\data_in_frame[19] [3]), .I1(n27891), 
            .I2(GND_net), .I3(GND_net), .O(n30414));
    defparam i1_2_lut_adj_1310.LUT_INIT = 16'h9999;
    SB_LUT4 i11082_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[5]), .I3(\data_in_frame[7] [5]), 
            .O(n15285));
    defparam i11082_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_2_lut_adj_1311 (.I0(n12280), .I1(n30414), .I2(GND_net), 
            .I3(GND_net), .O(n11797));
    defparam i1_2_lut_adj_1311.LUT_INIT = 16'h6666;
    SB_LUT4 i2_4_lut_adj_1312 (.I0(\data_in_frame[21][5] ), .I1(n32257), 
            .I2(\data_in_frame[21][6] ), .I3(n27901), .O(n30594));   // verilog/coms.v(88[17:28])
    defparam i2_4_lut_adj_1312.LUT_INIT = 16'h9669;
    SB_LUT4 i11085_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[6]), .I3(\data_in_frame[7] [6]), 
            .O(n15288));
    defparam i11085_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11088_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[7]), .I3(\data_in_frame[7] [7]), 
            .O(n15291));
    defparam i11088_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11079_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[4]), .I3(\data_in_frame[7] [4]), 
            .O(n15282));
    defparam i11079_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11075_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[3]), .I3(\data_in_frame[7] [3]), 
            .O(n15278));
    defparam i11075_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11072_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[2]), .I3(\data_in_frame[7] [2]), 
            .O(n15275));
    defparam i11072_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_2_lut_3_lut_adj_1313 (.I0(\data_in_frame[10] [3]), .I1(n11727), 
            .I2(n12229), .I3(GND_net), .O(n11933));
    defparam i1_2_lut_3_lut_adj_1313.LUT_INIT = 16'h9696;
    SB_LUT4 i11039_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[1]), .I3(\data_in_frame[7] [1]), 
            .O(n15242));
    defparam i11039_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i11036_3_lut_4_lut (.I0(n81), .I1(n87), .I2(rx_data[0]), .I3(\data_in_frame[7] [0]), 
            .O(n15239));
    defparam i11036_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 equal_93_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4454));   // verilog/coms.v(157[7:23])
    defparam equal_93_i8_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 mux_646_i2_3_lut (.I0(\data_in_frame[19] [1]), .I1(\data_in_frame[3] [1]), 
            .I2(n17410), .I3(GND_net), .O(n2766[1]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i2_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 equal_92_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4416));   // verilog/coms.v(157[7:23])
    defparam equal_92_i8_2_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i1_2_lut_4_lut_adj_1314 (.I0(\data_in_frame[7] [7]), .I1(n30625), 
            .I2(\data_in_frame[1] [5]), .I3(n12181), .O(n30727));
    defparam i1_2_lut_4_lut_adj_1314.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_4_lut (.I0(n679), .I1(n4452), .I2(n31858), .I3(\FRAME_MATCHER.i_31__N_2384 ), 
            .O(n13_adj_4326));   // verilog/coms.v(145[4] 147[7])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'ha2a0;
    SB_LUT4 i8_2_lut_3_lut_4_lut (.I0(\data_out_frame[12] [6]), .I1(\data_out_frame[12] [7]), 
            .I2(n30740), .I3(\data_out_frame[13] [0]), .O(n12349));   // verilog/coms.v(100[12:26])
    defparam i8_2_lut_3_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i195_2_lut_3_lut (.I0(n679), .I1(n4452), .I2(n682), .I3(GND_net), 
            .O(n745));   // verilog/coms.v(145[4] 147[7])
    defparam i195_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i2_2_lut_3_lut_adj_1315 (.I0(byte_transmit_counter[2]), .I1(\byte_transmit_counter[0] ), 
            .I2(\byte_transmit_counter[1] ), .I3(GND_net), .O(n13920));   // verilog/coms.v(109[34:55])
    defparam i2_2_lut_3_lut_adj_1315.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_3_lut_adj_1316 (.I0(\data_in_frame[1] [3]), .I1(\data_in_frame[1] [2]), 
            .I2(\data_in_frame[3] [4]), .I3(GND_net), .O(n11818));
    defparam i1_2_lut_3_lut_adj_1316.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_4_lut_adj_1317 (.I0(\data_in_frame[5][7] ), .I1(\data_in_frame[1] [5]), 
            .I2(\data_in_frame[1] [4]), .I3(\data_in_frame[5][6] ), .O(n12619));
    defparam i2_3_lut_4_lut_adj_1317.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1318 (.I0(n27824), .I1(\data_in_frame[14] [3]), 
            .I2(\data_in_frame[16] [5]), .I3(\data_in_frame[16] [6]), .O(n31886));
    defparam i2_3_lut_4_lut_adj_1318.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1319 (.I0(n27824), .I1(\data_in_frame[14] [3]), 
            .I2(n32353), .I3(GND_net), .O(n27895));
    defparam i1_2_lut_3_lut_adj_1319.LUT_INIT = 16'h6969;
    SB_LUT4 i2_3_lut_4_lut_adj_1320 (.I0(n25461), .I1(n26525), .I2(\FRAME_MATCHER.i [0]), 
            .I3(reset), .O(n31801));
    defparam i2_3_lut_4_lut_adj_1320.LUT_INIT = 16'hffbf;
    SB_LUT4 i12_4_lut_adj_1321 (.I0(\data_in_frame[12] [1]), .I1(n30784), 
            .I2(\data_in_frame[11] [4]), .I3(n30622), .O(n32_adj_4456));
    defparam i12_4_lut_adj_1321.LUT_INIT = 16'h6996;
    SB_LUT4 i11122_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[0]), 
            .I3(\data_in_frame[9] [0]), .O(n15325));
    defparam i11122_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11125_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[1]), 
            .I3(\data_in_frame[9] [1]), .O(n15328));
    defparam i11125_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i16_4_lut_adj_1322 (.I0(Kp_23__N_1141), .I1(n32_adj_4456), .I2(n22_adj_4371), 
            .I3(n12426), .O(n36));
    defparam i16_4_lut_adj_1322.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_4_lut_adj_1323 (.I0(\data_out_frame[5] [5]), .I1(n30752), 
            .I2(\data_out_frame[13] [4]), .I3(n30743), .O(n30476));   // verilog/coms.v(74[16:62])
    defparam i2_3_lut_4_lut_adj_1323.LUT_INIT = 16'h6996;
    SB_LUT4 i11129_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[2]), 
            .I3(\data_in_frame[9] [2]), .O(n15332));
    defparam i11129_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i14_4_lut_adj_1324 (.I0(n30778), .I1(n30506), .I2(n30668), 
            .I3(\data_in_frame[10] [5]), .O(n34_adj_4457));
    defparam i14_4_lut_adj_1324.LUT_INIT = 16'h6996;
    SB_LUT4 i11132_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[3]), 
            .I3(\data_in_frame[9] [3]), .O(n15335));
    defparam i11132_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i15_4_lut_adj_1325 (.I0(\data_in_frame[12] [6]), .I1(\data_in_frame[11] [3]), 
            .I2(\data_in_frame[9] [1]), .I3(\data_in_frame[11] [2]), .O(n35_adj_4458));
    defparam i15_4_lut_adj_1325.LUT_INIT = 16'h6996;
    SB_LUT4 mux_646_i9_3_lut (.I0(\data_in_frame[18][0] ), .I1(\data_in_frame[2][0] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[8]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i9_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15690_3_lut (.I0(\data_in_frame[18]_c [1]), .I1(\data_in_frame[2] [1]), 
            .I2(n17410), .I3(GND_net), .O(n2766[9]));
    defparam i15690_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i13_4_lut_adj_1326 (.I0(\data_in_frame[10] [3]), .I1(\data_in_frame[10] [4]), 
            .I2(\data_in_frame[11] [0]), .I3(n30867), .O(n33_adj_4459));
    defparam i13_4_lut_adj_1326.LUT_INIT = 16'h6996;
    SB_LUT4 mux_646_i11_3_lut (.I0(\data_in_frame[18][2] ), .I1(\data_in_frame[2][2] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[10]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i11_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i19_4_lut_adj_1327 (.I0(n33_adj_4459), .I1(n35_adj_4458), .I2(n34_adj_4457), 
            .I3(n36), .O(n30818));
    defparam i19_4_lut_adj_1327.LUT_INIT = 16'h6996;
    SB_LUT4 i11135_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[4]), 
            .I3(\data_in_frame[9] [4]), .O(n15338));
    defparam i11135_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_646_i12_3_lut (.I0(\data_in_frame[18][3] ), .I1(\data_in_frame[2][3] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[11]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i12_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i15691_3_lut (.I0(\data_in_frame[18]_c [4]), .I1(\data_in_frame[2] [4]), 
            .I2(n17410), .I3(GND_net), .O(n2766[12]));
    defparam i15691_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut_3_lut_adj_1328 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(\data_in_frame[4] [0]), .I3(GND_net), .O(n6_adj_4448));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1328.LUT_INIT = 16'h9696;
    SB_LUT4 i31173_4_lut (.I0(\data_out_frame[1][1] ), .I1(\byte_transmit_counter[0] ), 
            .I2(\data_out_frame[3][1] ), .I3(\byte_transmit_counter[1] ), 
            .O(n35479));   // verilog/coms.v(109[34:55])
    defparam i31173_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i7_4_lut (.I0(n35479), .I1(n1), 
            .I2(byte_transmit_counter[2]), .I3(\byte_transmit_counter[1] ), 
            .O(n7_adj_4389));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i11138_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[5]), 
            .I3(\data_in_frame[9] [5]), .O(n15341));
    defparam i11138_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_1329 (.I0(\data_in_frame[1] [5]), .I1(\data_in_frame[3] [7]), 
            .I2(n30803), .I3(GND_net), .O(Kp_23__N_742));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_3_lut_adj_1329.LUT_INIT = 16'h9696;
    SB_LUT4 i11141_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[6]), 
            .I3(\data_in_frame[9] [6]), .O(n15344));
    defparam i11141_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31158_2_lut (.I0(\data_out_frame[14] [1]), .I1(\byte_transmit_counter[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35477));   // verilog/coms.v(109[34:55])
    defparam i31158_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 byte_transmit_counter_4__I_0_Mux_1_i11_3_lut (.I0(\data_out_frame[12] [1]), 
            .I1(\data_out_frame[13] [1]), .I2(\byte_transmit_counter[0] ), 
            .I3(GND_net), .O(n11_adj_4461));   // verilog/coms.v(109[34:55])
    defparam byte_transmit_counter_4__I_0_Mux_1_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31390_4_lut (.I0(n11_adj_4461), .I1(byte_transmit_counter[2]), 
            .I2(n35477), .I3(\byte_transmit_counter[1] ), .O(n35363));
    defparam i31390_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 mux_646_i14_3_lut (.I0(\data_in_frame[18] [5]), .I1(\data_in_frame[2][5] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[13]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i14_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11224_3_lut_4_lut (.I0(n8_adj_4418), .I1(n30368), .I2(rx_data[7]), 
            .I3(\data_in_frame[9] [7]), .O(n15427));
    defparam i11224_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_4_lut_adj_1330 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(reset), .O(n30333));   // verilog/coms.v(157[7:23])
    defparam i2_3_lut_4_lut_adj_1330.LUT_INIT = 16'hfffe;
    SB_LUT4 equal_104_i8_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n8_adj_4418));   // verilog/coms.v(157[7:23])
    defparam equal_104_i8_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 byte_transmit_counter_3__bdd_4_lut_32641 (.I0(byte_transmit_counter[3]), 
            .I1(n35417), .I2(n35418), .I3(byte_transmit_counter[4]), .O(n37293));
    defparam byte_transmit_counter_3__bdd_4_lut_32641.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_1331 (.I0(\FRAME_MATCHER.i_31__N_2383 ), .I1(Kp_23__N_1618), 
            .I2(GND_net), .I3(GND_net), .O(n17411));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_adj_1331.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1332 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(n161), .I3(\FRAME_MATCHER.i [0]), .O(n25469));
    defparam i1_2_lut_3_lut_4_lut_adj_1332.LUT_INIT = 16'hff7f;
    SB_LUT4 i2_2_lut_3_lut_adj_1333 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n31991));   // verilog/coms.v(157[7:23])
    defparam i2_2_lut_3_lut_adj_1333.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_1334 (.I0(n26525), .I1(n10_adj_4412), .I2(n30341), 
            .I3(GND_net), .O(n30344));
    defparam i1_2_lut_3_lut_adj_1334.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_4_lut_adj_1335 (.I0(DE_c), .I1(\FRAME_MATCHER.i_31__N_2379 ), 
            .I2(n6_adj_4369), .I3(n1_adj_4462), .O(n12875));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1335.LUT_INIT = 16'haaa8;
    SB_LUT4 i10001_3_lut_4_lut (.I0(n26525), .I1(n10_adj_4412), .I2(reset), 
            .I3(n8_adj_4416), .O(n14203));
    defparam i10001_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i105_2_lut_3_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [0]), .I3(GND_net), .O(n87));
    defparam i105_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3_3_lut_adj_1336 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2381 ), 
            .I2(\FRAME_MATCHER.i_31__N_2378 ), .I3(GND_net), .O(n8_adj_4463));   // verilog/coms.v(148[4] 304[11])
    defparam i3_3_lut_adj_1336.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_adj_1337 (.I0(n26525), .I1(n10_adj_4412), .I2(n30333), 
            .I3(GND_net), .O(n30334));
    defparam i1_2_lut_3_lut_adj_1337.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_adj_1338 (.I0(LED_c), .I1(n17417), .I2(GND_net), 
            .I3(GND_net), .O(n18_adj_4415));   // verilog/coms.v(130[12] 305[6])
    defparam i1_2_lut_adj_1338.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1339 (.I0(LED_c), .I1(\FRAME_MATCHER.i_31__N_2384 ), 
            .I2(n8_adj_4463), .I3(\FRAME_MATCHER.state[3] ), .O(n12851));   // verilog/coms.v(148[4] 304[11])
    defparam i1_4_lut_adj_1339.LUT_INIT = 16'haaa8;
    SB_LUT4 i2_3_lut_4_lut_4_lut (.I0(\data_out_frame[4] [6]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[5] [1]), .I3(\data_out_frame[4] [4]), .O(n9456));   // verilog/coms.v(100[12:26])
    defparam i2_3_lut_4_lut_4_lut.LUT_INIT = 16'hc33c;
    SB_LUT4 i2_3_lut_4_lut_adj_1340 (.I0(n30499), .I1(\data_out_frame[14] [5]), 
            .I2(n12411), .I3(n30516), .O(n27212));
    defparam i2_3_lut_4_lut_adj_1340.LUT_INIT = 16'h6996;
    SB_LUT4 i13211_4_lut (.I0(Kp_23__N_1618), .I1(\FRAME_MATCHER.state_31__N_2482 [3]), 
            .I2(\FRAME_MATCHER.i_31__N_2379 ), .I3(LED_c), .O(n17414));   // verilog/coms.v(118[11:12])
    defparam i13211_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i2_3_lut_4_lut_adj_1341 (.I0(n26525), .I1(n10_adj_4412), .I2(n8_adj_4454), 
            .I3(reset), .O(n32020));
    defparam i2_3_lut_4_lut_adj_1341.LUT_INIT = 16'hfffd;
    SB_LUT4 i11439_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[6]), 
            .I3(\data_in_frame[1] [6]), .O(n15642));
    defparam i11439_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1342 (.I0(n17414), .I1(n17410), .I2(GND_net), 
            .I3(GND_net), .O(n5_adj_4438));
    defparam i1_2_lut_adj_1342.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_1343 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(n25460), .I3(GND_net), .O(n25461));
    defparam i1_2_lut_3_lut_adj_1343.LUT_INIT = 16'hf7f7;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_1344 (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i [2]), 
            .I2(\FRAME_MATCHER.i [5]), .I3(\FRAME_MATCHER.i [0]), .O(n57));
    defparam i1_2_lut_3_lut_4_lut_adj_1344.LUT_INIT = 16'hfff7;
    SB_LUT4 i11595_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[7]), 
            .I3(\data_in_frame[1] [7]), .O(n15798));
    defparam i11595_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11203_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[0]), 
            .I3(\data_in_frame[1] [0]), .O(n15406));
    defparam i11203_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1345 (.I0(\data_in_frame[3] [2]), .I1(\data_in_frame[1] [0]), 
            .I2(\data_in_frame[0] [6]), .I3(\data_in_frame[1][1] ), .O(n30448));   // verilog/coms.v(73[16:27])
    defparam i3_4_lut_adj_1345.LUT_INIT = 16'h6996;
    SB_LUT4 i11207_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[1]), 
            .I3(\data_in_frame[1][1] ), .O(n15410));
    defparam i11207_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1346 (.I0(\data_in_frame[5][4] ), .I1(n30448), 
            .I2(\data_in_frame[5][5] ), .I3(GND_net), .O(n11583));
    defparam i2_3_lut_adj_1346.LUT_INIT = 16'h9696;
    SB_LUT4 select_861_Select_0_i1_2_lut (.I0(tx_transmit_N_3286), .I1(\FRAME_MATCHER.i_31__N_2381 ), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_4437));   // verilog/coms.v(148[4] 304[11])
    defparam select_861_Select_0_i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_adj_1347 (.I0(\data_in_frame[7] [6]), .I1(n11583), 
            .I2(n11818), .I3(GND_net), .O(n9803));
    defparam i2_3_lut_adj_1347.LUT_INIT = 16'h9696;
    SB_LUT4 i10952_3_lut (.I0(\data_in_frame[5] [0]), .I1(rx_data[0]), .I2(n14203), 
            .I3(GND_net), .O(n15155));   // verilog/coms.v(130[12] 305[6])
    defparam i10952_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_646_i15_3_lut (.I0(\data_in_frame[18][6] ), .I1(\data_in_frame[2][6] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[14]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i15_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 mux_646_i16_3_lut (.I0(\data_in_frame[18][7] ), .I1(\data_in_frame[2][7] ), 
            .I2(n17410), .I3(GND_net), .O(n2766[15]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i16_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i3_4_lut_adj_1348 (.I0(\data_in_frame[11] [4]), .I1(n30405), 
            .I2(n12067), .I3(n12253), .O(n11758));   // verilog/coms.v(76[16:42])
    defparam i3_4_lut_adj_1348.LUT_INIT = 16'h6996;
    SB_LUT4 mux_646_i4_3_lut (.I0(\data_in_frame[19] [3]), .I1(\data_in_frame[3] [3]), 
            .I2(n17410), .I3(GND_net), .O(n2766[3]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i4_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11210_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[2]), 
            .I3(\data_in_frame[1] [2]), .O(n15413));
    defparam i11210_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 equal_100_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10_adj_4412));   // verilog/coms.v(158[12:15])
    defparam equal_100_i10_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_adj_1349 (.I0(n11933), .I1(n12168), .I2(\data_in_frame[12] [5]), 
            .I3(GND_net), .O(n11811));
    defparam i2_3_lut_adj_1349.LUT_INIT = 16'h9696;
    SB_LUT4 i31100_2_lut (.I0(n37374), .I1(byte_transmit_counter[2]), .I2(GND_net), 
            .I3(GND_net), .O(n35508));
    defparam i31100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i31211_2_lut (.I0(\data_out_frame[23] [1]), .I1(n13920), .I2(GND_net), 
            .I3(GND_net), .O(n35507));
    defparam i31211_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 equal_97_i10_2_lut_3_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i [5]), 
            .I2(\FRAME_MATCHER.i [3]), .I3(GND_net), .O(n10_adj_4401));   // verilog/coms.v(158[12:15])
    defparam equal_97_i10_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 mux_646_i5_3_lut (.I0(\data_in_frame[19] [4]), .I1(\data_in_frame[3] [4]), 
            .I2(n17410), .I3(GND_net), .O(n2766[4]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i5_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i4_4_lut_adj_1350 (.I0(\data_in_frame[0] [4]), .I1(\data_in_frame[0] [6]), 
            .I2(ID[4]), .I3(ID[6]), .O(n12_adj_4464));   // verilog/coms.v(241[12:32])
    defparam i4_4_lut_adj_1350.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_3_lut_4_lut_adj_1351 (.I0(\data_in_frame[1] [0]), .I1(Kp_23__N_637), 
            .I2(\data_in_frame[3] [0]), .I3(\data_in_frame[0] [6]), .O(n12153));   // verilog/coms.v(80[16:27])
    defparam i2_3_lut_4_lut_adj_1351.LUT_INIT = 16'h6996;
    SB_LUT4 mux_646_i17_3_lut (.I0(\data_in_frame[17] [0]), .I1(\data_in_frame[1] [0]), 
            .I2(n17410), .I3(GND_net), .O(n2766[16]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i17_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_4_lut_adj_1352 (.I0(\data_in_frame[0] [1]), .I1(\data_in_frame[0] [2]), 
            .I2(ID[1]), .I3(ID[2]), .O(n10_adj_4465));   // verilog/coms.v(241[12:32])
    defparam i2_4_lut_adj_1352.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_3_lut_adj_1353 (.I0(\data_in_frame[1] [0]), .I1(Kp_23__N_637), 
            .I2(\data_in_frame[2][7] ), .I3(GND_net), .O(n30485));   // verilog/coms.v(80[16:27])
    defparam i1_2_lut_3_lut_adj_1353.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1354 (.I0(\data_in_frame[0] [7]), .I1(\data_in_frame[0] [5]), 
            .I2(ID[7]), .I3(ID[5]), .O(n11_adj_4466));   // verilog/coms.v(241[12:32])
    defparam i3_4_lut_adj_1354.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_646_i6_3_lut (.I0(\data_in_frame[19] [5]), .I1(\data_in_frame[3] [5]), 
            .I2(n17410), .I3(GND_net), .O(n2766[5]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i6_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11213_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[3]), 
            .I3(\data_in_frame[1] [3]), .O(n15416));
    defparam i11213_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_4_lut_adj_1355 (.I0(\data_in_frame[0] [0]), .I1(\data_in_frame[0] [3]), 
            .I2(ID[0]), .I3(ID[3]), .O(n9));   // verilog/coms.v(241[12:32])
    defparam i1_4_lut_adj_1355.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_3_lut_adj_1356 (.I0(\FRAME_MATCHER.i [5]), .I1(n8_adj_4416), 
            .I2(n164), .I3(GND_net), .O(n117));   // verilog/coms.v(158[12:15])
    defparam i1_2_lut_3_lut_adj_1356.LUT_INIT = 16'h1010;
    SB_LUT4 mux_646_i22_3_lut (.I0(\data_in_frame[17] [5]), .I1(\data_in_frame[1] [5]), 
            .I2(n17410), .I3(GND_net), .O(n2766[21]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i22_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i7_4_lut_adj_1357 (.I0(n9), .I1(n11_adj_4466), .I2(n10_adj_4465), 
            .I3(n12_adj_4464), .O(n26680));   // verilog/coms.v(241[12:32])
    defparam i7_4_lut_adj_1357.LUT_INIT = 16'hfffe;
    SB_LUT4 i11091_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[0]), 
            .I3(\data_in_frame[8] [0]), .O(n15294));
    defparam i11091_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11094_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[1]), 
            .I3(\data_in_frame[8] [1]), .O(n15297));
    defparam i11094_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11216_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[4]), 
            .I3(\data_in_frame[1] [4]), .O(n15419));
    defparam i11216_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11100_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[2]), 
            .I3(\data_in_frame[8] [2]), .O(n15303));
    defparam i11100_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1358 (.I0(n30689), .I1(n30818), .I2(\data_in_frame[13] [5]), 
            .I3(GND_net), .O(n27853));
    defparam i2_3_lut_adj_1358.LUT_INIT = 16'h9696;
    SB_LUT4 i11220_3_lut_4_lut (.I0(n8_adj_4418), .I1(n81), .I2(rx_data[5]), 
            .I3(\data_in_frame[1] [5]), .O(n15423));
    defparam i11220_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i5_4_lut_adj_1359 (.I0(\data_in_frame[13] [0]), .I1(n30637), 
            .I2(\data_in_frame[15] [2]), .I3(\data_in_frame[12] [6]), .O(n12_adj_4467));
    defparam i5_4_lut_adj_1359.LUT_INIT = 16'h6996;
    SB_LUT4 mux_646_i23_3_lut (.I0(\data_in_frame[17] [6]), .I1(\data_in_frame[1] [6]), 
            .I2(n17410), .I3(GND_net), .O(n2766[22]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i23_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11103_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[3]), 
            .I3(\data_in_frame[8] [3]), .O(n15306));
    defparam i11103_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i4_4_lut_adj_1360 (.I0(\data_in_frame[8] [1]), .I1(n30496), 
            .I2(n30769), .I3(n6_adj_4411), .O(n32009));
    defparam i4_4_lut_adj_1360.LUT_INIT = 16'h6996;
    SB_LUT4 i30898_2_lut (.I0(\FRAME_MATCHER.i [1]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35393));   // verilog/coms.v(158[12:15])
    defparam i30898_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_646_i8_3_lut (.I0(\data_in_frame[19] [7]), .I1(\data_in_frame[3] [7]), 
            .I2(n17410), .I3(GND_net), .O(n2766[7]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i8_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11107_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[4]), 
            .I3(\data_in_frame[8] [4]), .O(n15310));
    defparam i11107_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31011_2_lut (.I0(\FRAME_MATCHER.i [2]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35394));   // verilog/coms.v(158[12:15])
    defparam i31011_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_646_i24_3_lut (.I0(\data_in_frame[17] [7]), .I1(\data_in_frame[1] [7]), 
            .I2(n17410), .I3(GND_net), .O(n2766[23]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i24_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_3_lut_4_lut_adj_1361 (.I0(n26525), .I1(reset), .I2(n25460), 
            .I3(n8_adj_4454), .O(n32412));
    defparam i2_3_lut_4_lut_adj_1361.LUT_INIT = 16'hfffd;
    SB_LUT4 i11110_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[5]), 
            .I3(\data_in_frame[8] [5]), .O(n15313));
    defparam i11110_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31016_2_lut (.I0(\FRAME_MATCHER.i [3]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35395));   // verilog/coms.v(158[12:15])
    defparam i31016_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_646_i7_3_lut (.I0(\data_in_frame[19] [6]), .I1(\data_in_frame[3] [6]), 
            .I2(n17410), .I3(GND_net), .O(n2766[6]));   // verilog/coms.v(148[4] 304[11])
    defparam mux_646_i7_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i11116_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[6]), 
            .I3(\data_in_frame[8] [6]), .O(n15319));
    defparam i11116_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i31020_2_lut (.I0(\FRAME_MATCHER.i [4]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35396));   // verilog/coms.v(158[12:15])
    defparam i31020_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11119_3_lut_4_lut (.I0(n78), .I1(n30333), .I2(rx_data[7]), 
            .I3(\data_in_frame[8] [7]), .O(n15322));
    defparam i11119_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 reduce_nor_1136_i1_2_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n1_adj_4462));
    defparam reduce_nor_1136_i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_2_lut_adj_1362 (.I0(n12212), .I1(\data_out_frame[25] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4468));
    defparam i2_2_lut_adj_1362.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1363 (.I0(n26525), .I1(reset), .I2(n87), 
            .I3(n10_adj_4401), .O(n31955));
    defparam i2_3_lut_4_lut_adj_1363.LUT_INIT = 16'hffdf;
    SB_LUT4 i11455_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [2]), 
            .I3(control_mode[2]), .O(n15658));   // verilog/coms.v(130[12] 305[6])
    defparam i11455_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 select_441_Select_223_i3_4_lut (.I0(n27080), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n6_adj_4468), .I3(n27864), .O(n3_adj_4435));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_223_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i1_2_lut_adj_1364 (.I0(\data_out_frame[25] [5]), .I1(n27007), 
            .I2(GND_net), .I3(GND_net), .O(n27080));
    defparam i1_2_lut_adj_1364.LUT_INIT = 16'h6666;
    SB_LUT4 i11452_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [3]), 
            .I3(control_mode[3]), .O(n15655));   // verilog/coms.v(130[12] 305[6])
    defparam i11452_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 n37293_bdd_4_lut (.I0(n37293), .I1(n35496), .I2(n7), .I3(byte_transmit_counter[4]), 
            .O(tx_data[7]));
    defparam n37293_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_3_lut_4_lut_adj_1365 (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [4]), 
            .I3(control_mode[4]), .O(n29781));   // verilog/coms.v(130[12] 305[6])
    defparam i11_3_lut_4_lut_adj_1365.LUT_INIT = 16'hfb40;
    SB_LUT4 i11438_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [5]), 
            .I3(control_mode[5]), .O(n15641));   // verilog/coms.v(130[12] 305[6])
    defparam i11438_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_2_lut_adj_1366 (.I0(\data_out_frame[25] [3]), .I1(n27359), 
            .I2(GND_net), .I3(GND_net), .O(n30611));
    defparam i1_2_lut_adj_1366.LUT_INIT = 16'h6666;
    SB_LUT4 i31034_2_lut (.I0(\FRAME_MATCHER.i [5]), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(GND_net), .I3(GND_net), .O(n35408));   // verilog/coms.v(158[12:15])
    defparam i31034_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut_4_lut_adj_1367 (.I0(n679), .I1(n682), .I2(n685), 
            .I3(\FRAME_MATCHER.i_31__N_2377 ), .O(n32023));   // verilog/coms.v(148[4] 304[11])
    defparam i2_3_lut_4_lut_adj_1367.LUT_INIT = 16'h8000;
    SB_LUT4 i11_4_lut (.I0(n9799), .I1(n27094), .I2(n27097), .I3(n11731), 
            .O(n28_adj_4469));
    defparam i11_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 select_441_Select_220_i3_4_lut (.I0(\data_out_frame[25] [2]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n30611), .I3(n27845), .O(n3_adj_4432));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_220_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i11114_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [7]), 
            .I3(control_mode[7]), .O(n15317));   // verilog/coms.v(130[12] 305[6])
    defparam i11114_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i6_4_lut_adj_1368 (.I0(n12168), .I1(n12_adj_4467), .I2(n30821), 
            .I3(\data_in_frame[13] [2]), .O(n27793));
    defparam i6_4_lut_adj_1368.LUT_INIT = 16'h6996;
    SB_LUT4 i2_4_lut_adj_1369 (.I0(n27885), .I1(Kp_23__N_844), .I2(\data_in_frame[7] [7]), 
            .I3(\data_in_frame[8] [6]), .O(n19_adj_4470));
    defparam i2_4_lut_adj_1369.LUT_INIT = 16'h4812;
    SB_LUT4 i1_2_lut_3_lut_adj_1370 (.I0(n26525), .I1(reset), .I2(n10_adj_4412), 
            .I3(GND_net), .O(n81));
    defparam i1_2_lut_3_lut_adj_1370.LUT_INIT = 16'hfdfd;
    SB_LUT4 select_441_Select_219_i3_4_lut (.I0(n27845), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n6), .I3(n30383), .O(n3_adj_4431));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_219_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i10919_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [0]), 
            .I3(control_mode[0]), .O(n15122));   // verilog/coms.v(130[12] 305[6])
    defparam i10919_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 select_441_Select_218_i3_4_lut (.I0(\data_out_frame[25] [1]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n6_adj_4451), .I3(n26959), 
            .O(n3_adj_4430));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_218_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i29249_4_lut (.I0(n12253), .I1(n12067), .I2(n32009), .I3(n12225), 
            .O(n33895));
    defparam i29249_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17470_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1] [6]), 
            .I3(control_mode[6]), .O(n15640));   // verilog/coms.v(130[12] 305[6])
    defparam i17470_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i15964_3_lut_4_lut (.I0(reset), .I1(n17410), .I2(\data_in_frame[1][1] ), 
            .I3(control_mode[1]), .O(n15706));   // verilog/coms.v(130[12] 305[6])
    defparam i15964_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_2_lut_adj_1371 (.I0(n27925), .I1(n30710), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4472));
    defparam i1_2_lut_adj_1371.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1372 (.I0(n11551), .I1(n27312), .I2(n32082), 
            .I3(n6_adj_4472), .O(n26954));
    defparam i4_4_lut_adj_1372.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1373 (.I0(\data_out_frame[23] [0]), .I1(n26954), 
            .I2(GND_net), .I3(GND_net), .O(n27011));
    defparam i1_2_lut_adj_1373.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1374 (.I0(n27009), .I1(\data_out_frame[23] [2]), 
            .I2(\data_out_frame[23] [3]), .I3(n27832), .O(n32418));
    defparam i3_4_lut_adj_1374.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1375 (.I0(n30423), .I1(n27802), .I2(n27011), 
            .I3(n30654), .O(n10_adj_4473));
    defparam i4_4_lut_adj_1375.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1376 (.I0(n9490), .I1(n10_adj_4473), .I2(\data_out_frame[23] [1]), 
            .I3(GND_net), .O(n27845));
    defparam i5_3_lut_adj_1376.LUT_INIT = 16'h9696;
    SB_LUT4 i14_4_lut_adj_1377 (.I0(n19_adj_4470), .I1(n28_adj_4469), .I2(n12426), 
            .I3(n11650), .O(n31_adj_4474));
    defparam i14_4_lut_adj_1377.LUT_INIT = 16'h0008;
    SB_LUT4 i16_4_lut_adj_1378 (.I0(n31_adj_4474), .I1(n33895), .I2(n33754), 
            .I3(n26_adj_4453), .O(n17417));
    defparam i16_4_lut_adj_1378.LUT_INIT = 16'h0200;
    SB_LUT4 i3_4_lut_adj_1379 (.I0(n27832), .I1(n30513), .I2(n30620), 
            .I3(n27956), .O(n32072));
    defparam i3_4_lut_adj_1379.LUT_INIT = 16'h6996;
    SB_LUT4 i26381_3_lut_4_lut (.I0(n679), .I1(n682), .I2(n11296), .I3(\FRAME_MATCHER.i_31__N_2377 ), 
            .O(n30987));   // verilog/coms.v(148[4] 304[11])
    defparam i26381_3_lut_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i11529_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[0]), 
            .I3(\data_in_frame[19] [0]), .O(n15732));
    defparam i11529_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1380 (.I0(n27832), .I1(n30701), .I2(\data_out_frame[23] [3]), 
            .I3(n32072), .O(n27007));
    defparam i3_4_lut_adj_1380.LUT_INIT = 16'h6996;
    SB_LUT4 i1_3_lut_4_lut (.I0(\FRAME_MATCHER.i_31__N_2381 ), .I1(tx_active), 
            .I2(r_SM_Main_2__N_3415[0]), .I3(n22372), .O(n11296));   // verilog/coms.v(148[4] 304[11])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i11532_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[1]), 
            .I3(\data_in_frame[19] [1]), .O(n15735));
    defparam i11532_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11535_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[2]), 
            .I3(\data_in_frame[19] [2]), .O(n15738));
    defparam i11535_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_4_lut_adj_1381 (.I0(n27860), .I1(n30654), .I2(n11888), 
            .I3(n27992), .O(n30710));
    defparam i2_4_lut_adj_1381.LUT_INIT = 16'h9669;
    SB_LUT4 i11538_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[3]), 
            .I3(\data_in_frame[19] [3]), .O(n15741));
    defparam i11538_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_3_lut_adj_1382 (.I0(Kp_23__N_1618), .I1(n26680), .I2(n17408), 
            .I3(GND_net), .O(n17410));   // verilog/coms.v(148[4] 304[11])
    defparam i2_3_lut_adj_1382.LUT_INIT = 16'h2020;
    SB_LUT4 i11541_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[4]), 
            .I3(\data_in_frame[19] [4]), .O(n15744));
    defparam i11541_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1383 (.I0(n30620), .I1(n30710), .I2(n30634), 
            .I3(n9490), .O(n27359));
    defparam i3_4_lut_adj_1383.LUT_INIT = 16'h9669;
    SB_LUT4 i11544_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[5]), 
            .I3(\data_in_frame[19] [5]), .O(n15747));
    defparam i11544_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11547_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[6]), 
            .I3(\data_in_frame[19] [6]), .O(n15750));
    defparam i11547_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11550_3_lut_4_lut (.I0(n71), .I1(n30341), .I2(rx_data[7]), 
            .I3(\data_in_frame[19] [7]), .O(n15753));
    defparam i11550_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i5_3_lut_adj_1384 (.I0(n27845), .I1(n32418), .I2(n12212), 
            .I3(GND_net), .O(n14_adj_4475));
    defparam i5_3_lut_adj_1384.LUT_INIT = 16'h6969;
    SB_LUT4 i6_4_lut_adj_1385 (.I0(n30737), .I1(n27140), .I2(n27359), 
            .I3(n30678), .O(n15_adj_4476));
    defparam i6_4_lut_adj_1385.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_217_i3_4_lut (.I0(n15_adj_4476), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n13_adj_4397), .I3(n14_adj_4475), .O(n3_adj_4429));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_217_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i2_3_lut_4_lut_adj_1386 (.I0(n11296), .I1(\FRAME_MATCHER.i_31__N_2377 ), 
            .I2(\FRAME_MATCHER.i_31__N_2378 ), .I3(n93), .O(n31858));   // verilog/coms.v(148[4] 304[11])
    defparam i2_3_lut_4_lut_adj_1386.LUT_INIT = 16'heefe;
    SB_LUT4 data_in_frame_13__7__I_0_2_lut (.I0(\data_in_frame[13] [7]), .I1(\data_in_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(Kp_23__N_1141));   // verilog/coms.v(88[17:28])
    defparam data_in_frame_13__7__I_0_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1387 (.I0(\data_in_frame[6] [5]), .I1(\data_in_frame[6] [4]), 
            .I2(Kp_23__N_748), .I3(Kp_23__N_745), .O(Kp_23__N_844));   // verilog/coms.v(78[16:43])
    defparam i2_3_lut_4_lut_adj_1387.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1388 (.I0(Kp_23__N_1141), .I1(n11758), .I2(n27830), 
            .I3(n6_adj_4396), .O(n31964));
    defparam i4_4_lut_adj_1388.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1389 (.I0(n31964), .I1(\data_in_frame[18]_c [4]), 
            .I2(GND_net), .I3(GND_net), .O(n27820));
    defparam i1_2_lut_adj_1389.LUT_INIT = 16'h9999;
    SB_LUT4 select_441_Select_216_i3_4_lut (.I0(n27980), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n6_adj_4452), .I3(n2520), .O(n3_adj_4428));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_216_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i198_4_lut_4_lut (.I0(n679), .I1(n685), .I2(n4452), .I3(n682), 
            .O(n748));   // verilog/coms.v(139[4] 141[7])
    defparam i198_4_lut_4_lut.LUT_INIT = 16'h0d05;
    SB_LUT4 i3_4_lut_adj_1390 (.I0(n27853), .I1(n11811), .I2(n11758), 
            .I3(\data_in_frame[13] [0]), .O(n27881));
    defparam i3_4_lut_adj_1390.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1391 (.I0(\FRAME_MATCHER.i_31__N_2378 ), .I1(n93), 
            .I2(n11296), .I3(GND_net), .O(n5));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_3_lut_adj_1391.LUT_INIT = 16'hf2f2;
    SB_LUT4 i4_4_lut_adj_1392 (.I0(n30591), .I1(\data_in_frame[14] [7]), 
            .I2(n37119), .I3(n30746), .O(n10_adj_4477));
    defparam i4_4_lut_adj_1392.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1393 (.I0(n27864), .I1(n2520), .I2(GND_net), 
            .I3(GND_net), .O(n30678));
    defparam i1_2_lut_adj_1393.LUT_INIT = 16'h6666;
    SB_LUT4 i5_3_lut_adj_1394 (.I0(n27881), .I1(n10_adj_4477), .I2(n27853), 
            .I3(GND_net), .O(n31736));
    defparam i5_3_lut_adj_1394.LUT_INIT = 16'h6969;
    SB_LUT4 i11392_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[7]), 
            .I3(\data_in_frame[16] [7]), .O(n15595));
    defparam i11392_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1395 (.I0(\data_in_frame[18]_c [1]), .I1(\data_in_frame[18][3] ), 
            .I2(GND_net), .I3(GND_net), .O(n19));   // verilog/coms.v(99[12:25])
    defparam i1_2_lut_adj_1395.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1396 (.I0(\data_out_frame[25] [0]), .I1(\data_out_frame[24] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n5_adj_4478));
    defparam i1_2_lut_adj_1396.LUT_INIT = 16'h6666;
    SB_LUT4 select_441_Select_215_i3_4_lut (.I0(n5_adj_4478), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n30678), .I3(n27964), .O(n3_adj_4427));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_215_i3_4_lut.LUT_INIT = 16'h4884;
    SB_LUT4 i11389_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[6]), 
            .I3(\data_in_frame[16] [6]), .O(n15592));
    defparam i11389_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11386_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[5]), 
            .I3(\data_in_frame[16] [5]), .O(n15589));
    defparam i11386_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11383_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[4]), 
            .I3(\data_in_frame[16] [4]), .O(n15586));
    defparam i11383_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1397 (.I0(n27843), .I1(n30853), .I2(n30840), 
            .I3(n30706), .O(n30889));
    defparam i3_4_lut_adj_1397.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1398 (.I0(\data_in_frame[9] [7]), .I1(\data_in_frame[9] [6]), 
            .I2(n9803), .I3(n9799), .O(n12263));
    defparam i1_2_lut_4_lut_adj_1398.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1399 (.I0(\data_in_frame[9] [2]), .I1(n30904), 
            .I2(n27097), .I3(\data_in_frame[11] [7]), .O(n30784));
    defparam i3_4_lut_adj_1399.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut_adj_1400 (.I0(\data_in_frame[4][5] ), .I1(n30784), 
            .I2(\data_in_frame[13] [7]), .I3(Kp_23__N_669), .O(n20_adj_4479));
    defparam i8_4_lut_adj_1400.LUT_INIT = 16'h6996;
    SB_LUT4 i11380_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[3]), 
            .I3(\data_in_frame[16] [3]), .O(n15583));
    defparam i11380_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i7_4_lut_adj_1401 (.I0(n12253), .I1(n12661), .I2(\data_in_frame[14] [1]), 
            .I3(n30510), .O(n19_adj_4480));
    defparam i7_4_lut_adj_1401.LUT_INIT = 16'h6996;
    SB_LUT4 i9_4_lut_adj_1402 (.I0(n12263), .I1(n27804), .I2(\data_in_frame[11] [5]), 
            .I3(n32265), .O(n21));
    defparam i9_4_lut_adj_1402.LUT_INIT = 16'h9669;
    SB_LUT4 select_441_Select_213_i3_4_lut (.I0(\data_out_frame[24] [3]), 
            .I1(\FRAME_MATCHER.state[3] ), .I2(n8_adj_4446), .I3(n27910), 
            .O(n3_adj_4426));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_213_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i11_3_lut_adj_1403 (.I0(n21), .I1(n19_adj_4480), .I2(n20_adj_4479), 
            .I3(GND_net), .O(n27818));
    defparam i11_3_lut_adj_1403.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1404 (.I0(\data_in_frame[11] [5]), .I1(n27795), 
            .I2(\data_in_frame[9] [3]), .I3(n12426), .O(n27843));
    defparam i3_4_lut_adj_1404.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1405 (.I0(n27473), .I1(n9505), .I2(n6_adj_4372), 
            .I3(n6_adj_4391), .O(n30824));
    defparam i4_4_lut_adj_1405.LUT_INIT = 16'h9669;
    SB_LUT4 i11377_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[2]), 
            .I3(\data_in_frame[16] [2]), .O(n15580));
    defparam i11377_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11374_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[1]), 
            .I3(\data_in_frame[16] [1]), .O(n15577));
    defparam i11374_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11371_3_lut_4_lut (.I0(n30333), .I1(n30351), .I2(rx_data[0]), 
            .I3(\data_in_frame[16] [0]), .O(n15574));
    defparam i11371_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1406 (.I0(\data_in_frame[17] [2]), .I1(n30441), 
            .I2(n31736), .I3(\data_in_frame[12] [6]), .O(n12280));   // verilog/coms.v(99[12:25])
    defparam i3_4_lut_adj_1406.LUT_INIT = 16'h9669;
    SB_LUT4 i2_3_lut_4_lut_adj_1407 (.I0(n9505), .I1(n30873), .I2(n30452), 
            .I3(n30850), .O(n11888));   // verilog/coms.v(100[12:26])
    defparam i2_3_lut_4_lut_adj_1407.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_212_i3_4_lut (.I0(n26961), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n8_adj_4355), .I3(n30824), .O(n3_adj_4425));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_212_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 select_443_Select_0_i1_2_lut_3_lut (.I0(\byte_transmit_counter[0] ), 
            .I1(\FRAME_MATCHER.i_31__N_2381 ), .I2(\FRAME_MATCHER.state[3] ), 
            .I3(GND_net), .O(n1_adj_4450));   // verilog/coms.v(148[4] 304[11])
    defparam select_443_Select_0_i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i4_4_lut_adj_1408 (.I0(n30763), .I1(n27843), .I2(n27818), 
            .I3(n30853), .O(n10_adj_4481));
    defparam i4_4_lut_adj_1408.LUT_INIT = 16'h6996;
    SB_LUT4 i5_3_lut_adj_1409 (.I0(n30458), .I1(n10_adj_4481), .I2(\data_in_frame[15] [7]), 
            .I3(GND_net), .O(n27124));
    defparam i5_3_lut_adj_1409.LUT_INIT = 16'h9696;
    SB_LUT4 i2_3_lut_adj_1410 (.I0(\data_in_frame[20] [2]), .I1(n27124), 
            .I2(\data_in_frame[20] [1]), .I3(GND_net), .O(n30886));
    defparam i2_3_lut_adj_1410.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1411 (.I0(n11888), .I1(n32572), .I2(GND_net), 
            .I3(GND_net), .O(n30423));
    defparam i1_2_lut_adj_1411.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_1412 (.I0(\data_in_frame[18] [5]), .I1(n26989), 
            .I2(GND_net), .I3(GND_net), .O(n30800));   // verilog/coms.v(81[16:27])
    defparam i1_2_lut_adj_1412.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1413 (.I0(n11956), .I1(n30535), .I2(GND_net), 
            .I3(GND_net), .O(n26818));
    defparam i1_2_lut_adj_1413.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1414 (.I0(\data_in_frame[6] [0]), .I1(n30496), 
            .I2(n11620), .I3(n4_adj_4419), .O(n27320));   // verilog/coms.v(88[17:70])
    defparam i2_3_lut_4_lut_adj_1414.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1415 (.I0(n27992), .I1(n27956), .I2(n27860), 
            .I3(n27889), .O(n32572));
    defparam i3_4_lut_adj_1415.LUT_INIT = 16'h9669;
    SB_LUT4 i4_4_lut_adj_1416 (.I0(n30608), .I1(n11774), .I2(n12247), 
            .I3(n30818), .O(n10_adj_4482));
    defparam i4_4_lut_adj_1416.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut_adj_1417 (.I0(n30414), .I1(n30800), .I2(n30898), 
            .I3(\data_in_frame[18][7] ), .O(n21_adj_4483));
    defparam i8_4_lut_adj_1417.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1418 (.I0(\data_in_frame[17] [3]), .I1(n27881), 
            .I2(n10_adj_4482), .I3(n27793), .O(n30681));
    defparam i1_4_lut_adj_1418.LUT_INIT = 16'h9669;
    SB_LUT4 i11063_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [1]), 
            .I3(\data_in[1] [1]), .O(n15266));   // verilog/coms.v(130[12] 305[6])
    defparam i11063_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i7_3_lut (.I0(\data_in_frame[20] [6]), .I1(n30886), .I2(n27901), 
            .I3(GND_net), .O(n20_adj_4484));
    defparam i7_3_lut.LUT_INIT = 16'h6969;
    SB_LUT4 i1_2_lut_4_lut_adj_1419 (.I0(n27088), .I1(n30907), .I2(n32533), 
            .I3(\data_in_frame[20] [0]), .O(n4_adj_4277));
    defparam i1_2_lut_4_lut_adj_1419.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1420 (.I0(n27088), .I1(\data_in_frame[13] [3]), 
            .I2(\data_in_frame[13] [4]), .I3(n37119), .O(n6_adj_4275));
    defparam i1_2_lut_4_lut_adj_1420.LUT_INIT = 16'h9669;
    SB_LUT4 i11032_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in[3] [7]), .O(n15235));   // verilog/coms.v(130[12] 305[6])
    defparam i11032_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11042_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in[3] [6]), .O(n15245));   // verilog/coms.v(130[12] 305[6])
    defparam i11042_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11_4_lut_adj_1421 (.I0(n21_adj_4483), .I1(\data_in_frame[19] [2]), 
            .I2(n18_adj_4449), .I3(n30889), .O(n24));
    defparam i11_4_lut_adj_1421.LUT_INIT = 16'h6996;
    SB_LUT4 i12_4_lut_adj_1422 (.I0(n27922), .I1(n24), .I2(n20_adj_4484), 
            .I3(n19), .O(n12555));
    defparam i12_4_lut_adj_1422.LUT_INIT = 16'h9669;
    SB_LUT4 i3_4_lut_adj_1423 (.I0(\data_in_frame[20] [7]), .I1(n30379), 
            .I2(n27996), .I3(\data_in_frame[18][6] ), .O(n10997));   // verilog/coms.v(81[16:27])
    defparam i3_4_lut_adj_1423.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_4_lut_adj_1424 (.I0(\data_in_frame[18]_c [1]), .I1(\data_in_frame[20] [2]), 
            .I2(n27124), .I3(\data_in_frame[20] [1]), .O(n30870));
    defparam i1_2_lut_4_lut_adj_1424.LUT_INIT = 16'h6996;
    SB_LUT4 i11043_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in[3] [5]), .O(n15246));   // verilog/coms.v(130[12] 305[6])
    defparam i11043_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1425 (.I0(\data_in_frame[20] [6]), .I1(\data_in_frame[21][0] ), 
            .I2(GND_net), .I3(GND_net), .O(n30734));
    defparam i1_2_lut_adj_1425.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1426 (.I0(n27910), .I1(n26961), .I2(\data_out_frame[24] [1]), 
            .I3(n30721), .O(n10_adj_4485));
    defparam i4_4_lut_adj_1426.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1427 (.I0(n30681), .I1(\data_in_frame[19] [4]), 
            .I2(n12280), .I3(GND_net), .O(n32257));
    defparam i2_3_lut_adj_1427.LUT_INIT = 16'h9696;
    SB_LUT4 i11044_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in[3] [4]), .O(n15247));   // verilog/coms.v(130[12] 305[6])
    defparam i11044_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_4_lut_adj_1428 (.I0(n27830), .I1(\data_in_frame[16] [4]), 
            .I2(\data_in_frame[16] [5]), .I3(n32353), .O(n31969));
    defparam i2_3_lut_4_lut_adj_1428.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1429 (.I0(\data_in_frame[0] [6]), .I1(\data_in_frame[2][7] ), 
            .I2(GND_net), .I3(GND_net), .O(n30434));   // verilog/coms.v(80[16:27])
    defparam i1_2_lut_adj_1429.LUT_INIT = 16'h6666;
    SB_LUT4 i11045_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in[3] [3]), .O(n15248));   // verilog/coms.v(130[12] 305[6])
    defparam i11045_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 select_441_Select_211_i3_4_lut (.I0(n27812), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n10_adj_4485), .I3(\data_out_frame[24] [2]), .O(n3_adj_4424));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_211_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 byte_transmit_counter_0__bdd_4_lut (.I0(\byte_transmit_counter[0] ), 
            .I1(\data_out_frame[26] [7]), .I2(\data_out_frame[27] [7]), 
            .I3(\byte_transmit_counter[1] ), .O(n37395));
    defparam byte_transmit_counter_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i3_4_lut_adj_1430 (.I0(\data_in_frame[4][1] ), .I1(n11630), 
            .I2(\data_in_frame[2] [1]), .I3(\data_in_frame[0] [0]), .O(n30803));   // verilog/coms.v(81[16:27])
    defparam i3_4_lut_adj_1430.LUT_INIT = 16'h6996;
    SB_LUT4 i16_4_lut_adj_1431 (.I0(\data_in_frame[4][2] ), .I1(\data_in_frame[5][7] ), 
            .I2(\data_in_frame[4][7] ), .I3(\data_in_frame[2][6] ), .O(n40_adj_4486));   // verilog/coms.v(81[16:27])
    defparam i16_4_lut_adj_1431.LUT_INIT = 16'h6996;
    SB_LUT4 select_441_Select_210_i3_4_lut (.I0(n9545), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n8_adj_4387), .I3(n26952), .O(n3_adj_4423));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_210_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i11046_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in[3] [2]), .O(n15249));   // verilog/coms.v(130[12] 305[6])
    defparam i11046_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i14_4_lut_adj_1432 (.I0(n30806), .I1(n12130), .I2(n30374), 
            .I3(n12153), .O(n38_adj_4487));   // verilog/coms.v(81[16:27])
    defparam i14_4_lut_adj_1432.LUT_INIT = 16'h6996;
    SB_LUT4 i11047_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in[3] [1]), .O(n15250));   // verilog/coms.v(130[12] 305[6])
    defparam i11047_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i15_4_lut_adj_1433 (.I0(n30864), .I1(n30566), .I2(n30766), 
            .I3(Kp_23__N_642), .O(n39_adj_4488));   // verilog/coms.v(81[16:27])
    defparam i15_4_lut_adj_1433.LUT_INIT = 16'h6996;
    SB_LUT4 i1_rep_80_2_lut (.I0(\data_in_frame[21][3] ), .I1(\data_in_frame[21] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n37486));
    defparam i1_rep_80_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1434 (.I0(n27832), .I1(\data_out_frame[23] [4]), 
            .I2(n32149), .I3(GND_net), .O(n12212));
    defparam i1_2_lut_3_lut_adj_1434.LUT_INIT = 16'h6969;
    SB_LUT4 i11048_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in[3] [0]), .O(n15251));   // verilog/coms.v(130[12] 305[6])
    defparam i11048_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11049_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [7]), 
            .I3(\data_in[2] [7]), .O(n15252));   // verilog/coms.v(130[12] 305[6])
    defparam i11049_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i13_4_lut_adj_1435 (.I0(n11583), .I1(n30628), .I2(\data_in_frame[4][6] ), 
            .I3(\data_in_frame[3] [7]), .O(n37));   // verilog/coms.v(81[16:27])
    defparam i13_4_lut_adj_1435.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut_adj_1436 (.I0(n30464), .I1(\data_in_frame[2] [4]), 
            .I2(\data_in_frame[2][0] ), .I3(n11598), .O(n42_adj_4489));   // verilog/coms.v(81[16:27])
    defparam i18_4_lut_adj_1436.LUT_INIT = 16'h6996;
    SB_LUT4 i22_4_lut (.I0(n37), .I1(n39_adj_4488), .I2(n38_adj_4487), 
            .I3(n40_adj_4486), .O(n46));   // verilog/coms.v(81[16:27])
    defparam i22_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1437 (.I0(n30620), .I1(n27002), .I2(GND_net), 
            .I3(GND_net), .O(n27889));
    defparam i1_2_lut_adj_1437.LUT_INIT = 16'h6666;
    SB_LUT4 i17_4_lut_adj_1438 (.I0(n30417), .I1(\data_in_frame[2][2] ), 
            .I2(n30485), .I3(\data_in_frame[1] [5]), .O(n41_adj_4490));   // verilog/coms.v(81[16:27])
    defparam i17_4_lut_adj_1438.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1439 (.I0(n11551), .I1(n27002), .I2(GND_net), 
            .I3(GND_net), .O(n30513));
    defparam i1_2_lut_adj_1439.LUT_INIT = 16'h6666;
    SB_LUT4 i23_3_lut (.I0(n41_adj_4490), .I1(n46), .I2(n42_adj_4489), 
            .I3(GND_net), .O(n26984));   // verilog/coms.v(81[16:27])
    defparam i23_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i11050_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [6]), 
            .I3(\data_in[2] [6]), .O(n15253));   // verilog/coms.v(130[12] 305[6])
    defparam i11050_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i6_4_lut_adj_1440 (.I0(\data_in_frame[3] [7]), .I1(n11658), 
            .I2(n30803), .I3(\data_in_frame[6] [0]), .O(n16_adj_4491));
    defparam i6_4_lut_adj_1440.LUT_INIT = 16'h6996;
    SB_LUT4 i5_4_lut_adj_1441 (.I0(n30743), .I1(n30812), .I2(\data_out_frame[14] [0]), 
            .I3(n30724), .O(n12_adj_4492));
    defparam i5_4_lut_adj_1441.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1442 (.I0(n1191), .I1(n12_adj_4492), .I2(n30877), 
            .I3(n30675), .O(n32082));
    defparam i6_4_lut_adj_1442.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1443 (.I0(\data_in_frame[8] [1]), .I1(n30473), 
            .I2(n30809), .I3(\data_in_frame[8] [2]), .O(n17_adj_4493));
    defparam i7_4_lut_adj_1443.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1444 (.I0(n9490), .I1(n32082), .I2(GND_net), 
            .I3(GND_net), .O(n30715));
    defparam i1_2_lut_adj_1444.LUT_INIT = 16'h9999;
    SB_LUT4 i9_4_lut_adj_1445 (.I0(n17_adj_4493), .I1(n26984), .I2(n16_adj_4491), 
            .I3(\data_in_frame[8] [4]), .O(n27804));
    defparam i9_4_lut_adj_1445.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1446 (.I0(\data_out_frame[23] [6]), .I1(\data_out_frame[24] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30563));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_adj_1446.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1447 (.I0(reset), .I1(n1982), .I2(n10_adj_4401), 
            .I3(GND_net), .O(n30371));
    defparam i1_2_lut_3_lut_adj_1447.LUT_INIT = 16'hfbfb;
    SB_LUT4 i11051_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [5]), 
            .I3(\data_in[2] [5]), .O(n15254));   // verilog/coms.v(130[12] 305[6])
    defparam i11051_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11052_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [4]), 
            .I3(\data_in[2] [4]), .O(n15255));   // verilog/coms.v(130[12] 305[6])
    defparam i11052_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i3_3_lut_adj_1448 (.I0(n27035), .I1(n6_adj_4372), .I2(n12036), 
            .I3(GND_net), .O(n27473));
    defparam i3_3_lut_adj_1448.LUT_INIT = 16'h9696;
    SB_LUT4 i11053_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [3]), 
            .I3(\data_in[2] [3]), .O(n15256));   // verilog/coms.v(130[12] 305[6])
    defparam i11053_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11054_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [2]), 
            .I3(\data_in[2] [2]), .O(n15257));   // verilog/coms.v(130[12] 305[6])
    defparam i11054_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_4_lut_adj_1449 (.I0(reset), .I1(n1982), .I2(n10_adj_4412), 
            .I3(n25469), .O(n31932));
    defparam i2_3_lut_4_lut_adj_1449.LUT_INIT = 16'hfffb;
    SB_LUT4 i11055_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [1]), 
            .I3(\data_in[2] [1]), .O(n15258));   // verilog/coms.v(130[12] 305[6])
    defparam i11055_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_4_lut_adj_1450 (.I0(reset), .I1(n1982), .I2(n161), 
            .I3(n10_adj_4401), .O(n30368));
    defparam i2_3_lut_4_lut_adj_1450.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_4_lut_adj_1451 (.I0(\data_out_frame[4] [5]), .I1(n30631), 
            .I2(\data_out_frame[13] [2]), .I3(n12349), .O(n9505));   // verilog/coms.v(75[16:27])
    defparam i1_2_lut_4_lut_adj_1451.LUT_INIT = 16'h6996;
    SB_LUT4 i11056_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[3] [0]), 
            .I3(\data_in[2] [0]), .O(n15259));   // verilog/coms.v(130[12] 305[6])
    defparam i11056_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i2_3_lut_4_lut_adj_1452 (.I0(\data_in_frame[12] [5]), .I1(n27175), 
            .I2(\data_in_frame[16] [7]), .I3(\data_in_frame[14] [5]), .O(n30617));
    defparam i2_3_lut_4_lut_adj_1452.LUT_INIT = 16'h6996;
    SB_LUT4 i11057_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [7]), 
            .I3(\data_in[1] [7]), .O(n15260));   // verilog/coms.v(130[12] 305[6])
    defparam i11057_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_3_lut_adj_1453 (.I0(n30476), .I1(n12196), .I2(n30452), 
            .I3(GND_net), .O(n27860));
    defparam i1_3_lut_adj_1453.LUT_INIT = 16'h6969;
    SB_LUT4 i11058_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [6]), 
            .I3(\data_in[1] [6]), .O(n15261));   // verilog/coms.v(130[12] 305[6])
    defparam i11058_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1454 (.I0(\data_out_frame[24] [4]), .I1(\data_out_frame[24] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n30643));
    defparam i1_2_lut_adj_1454.LUT_INIT = 16'h6666;
    SB_LUT4 i5_4_lut_adj_1455 (.I0(\data_out_frame[13] [7]), .I1(n30605), 
            .I2(n27653), .I3(n1516), .O(n12_adj_4494));
    defparam i5_4_lut_adj_1455.LUT_INIT = 16'h6996;
    SB_LUT4 i6_4_lut_adj_1456 (.I0(n11850), .I1(n12_adj_4494), .I2(\data_out_frame[14] [1]), 
            .I3(n30393), .O(n30620));
    defparam i6_4_lut_adj_1456.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1457 (.I0(\data_out_frame[23] [1]), .I1(\data_out_frame[23] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30634));
    defparam i1_2_lut_adj_1457.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1458 (.I0(n26959), .I1(\data_out_frame[24] [7]), 
            .I2(\data_out_frame[23] [0]), .I3(GND_net), .O(n30386));
    defparam i2_3_lut_adj_1458.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1459 (.I0(n9803), .I1(n9799), .I2(GND_net), .I3(GND_net), 
            .O(n30582));
    defparam i1_2_lut_adj_1459.LUT_INIT = 16'h6666;
    SB_LUT4 i5_3_lut_adj_1460 (.I0(\data_in_frame[5] [0]), .I1(\data_in_frame[3] [0]), 
            .I2(\data_in_frame[2][6] ), .I3(GND_net), .O(n14_adj_4495));   // verilog/coms.v(99[12:25])
    defparam i5_3_lut_adj_1460.LUT_INIT = 16'h9696;
    SB_LUT4 i11059_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [5]), 
            .I3(\data_in[1] [5]), .O(n15262));   // verilog/coms.v(130[12] 305[6])
    defparam i11059_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11060_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [4]), 
            .I3(\data_in[1] [4]), .O(n15263));   // verilog/coms.v(130[12] 305[6])
    defparam i11060_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i6_4_lut_adj_1461 (.I0(\data_in_frame[17] [6]), .I1(\data_in_frame[20] [1]), 
            .I2(n37487), .I3(n27847), .O(n16));
    defparam i6_4_lut_adj_1461.LUT_INIT = 16'h9669;
    SB_LUT4 i6_4_lut_adj_1462 (.I0(n30434), .I1(\data_in_frame[7] [2]), 
            .I2(\data_in_frame[4][6] ), .I3(n30411), .O(n15_adj_4496));   // verilog/coms.v(99[12:25])
    defparam i6_4_lut_adj_1462.LUT_INIT = 16'h6996;
    SB_LUT4 i8_4_lut_adj_1463 (.I0(n15_adj_4496), .I1(\data_in_frame[2][5] ), 
            .I2(n14_adj_4495), .I3(\data_in_frame[5][1] ), .O(n12253));   // verilog/coms.v(99[12:25])
    defparam i8_4_lut_adj_1463.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1464 (.I0(n11818), .I1(n30628), .I2(n27320), 
            .I3(GND_net), .O(n27883));
    defparam i2_3_lut_adj_1464.LUT_INIT = 16'h9696;
    SB_LUT4 i11061_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [3]), 
            .I3(\data_in[1] [3]), .O(n15264));   // verilog/coms.v(130[12] 305[6])
    defparam i11061_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i6_4_lut_adj_1465 (.I0(n12253), .I1(Kp_23__N_937), .I2(n30582), 
            .I3(n30467), .O(n16_adj_4497));
    defparam i6_4_lut_adj_1465.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1466 (.I0(n27883), .I1(n30573), .I2(n30815), 
            .I3(n12225), .O(n17_adj_4498));
    defparam i7_4_lut_adj_1466.LUT_INIT = 16'h6996;
    SB_LUT4 i14_4_lut_adj_1467 (.I0(n30827), .I1(n30386), .I2(n30634), 
            .I3(\data_out_frame[23] [4]), .O(n37_adj_4499));
    defparam i14_4_lut_adj_1467.LUT_INIT = 16'h6996;
    SB_LUT4 i13_4_lut_adj_1468 (.I0(n30620), .I1(\data_out_frame[23] [3]), 
            .I2(n30643), .I3(\data_out_frame[23] [7]), .O(n36_adj_4500));
    defparam i13_4_lut_adj_1468.LUT_INIT = 16'h9669;
    SB_LUT4 i9_4_lut_adj_1469 (.I0(n17_adj_4498), .I1(n27097), .I2(n16_adj_4497), 
            .I3(n12426), .O(n27487));
    defparam i9_4_lut_adj_1469.LUT_INIT = 16'h6996;
    SB_LUT4 i7_4_lut_adj_1470 (.I0(\data_in_frame[22][2] ), .I1(n30692), 
            .I2(n30883), .I3(n30552), .O(n17));
    defparam i7_4_lut_adj_1470.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1471 (.I0(\data_in_frame[9] [0]), .I1(n27487), 
            .I2(GND_net), .I3(GND_net), .O(n30622));
    defparam i1_2_lut_adj_1471.LUT_INIT = 16'h6666;
    SB_LUT4 i19_4_lut_adj_1472 (.I0(n37_adj_4499), .I1(n29_adj_4370), .I2(n27940), 
            .I3(n6_adj_4372), .O(n42_adj_4501));
    defparam i19_4_lut_adj_1472.LUT_INIT = 16'h6996;
    SB_LUT4 i17_4_lut_adj_1473 (.I0(n27002), .I1(n27860), .I2(n27832), 
            .I3(n26961), .O(n40_adj_4502));
    defparam i17_4_lut_adj_1473.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1474 (.I0(\FRAME_MATCHER.i_31__N_2382 ), .I1(\FRAME_MATCHER.i_31__N_2384 ), 
            .I2(\FRAME_MATCHER.i_31__N_2378 ), .I3(GND_net), .O(n1982));   // verilog/coms.v(148[4] 304[11])
    defparam i1_2_lut_3_lut_adj_1474.LUT_INIT = 16'hfefe;
    SB_LUT4 i11064_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [0]), 
            .I3(\data_in[1] [0]), .O(n15267));   // verilog/coms.v(130[12] 305[6])
    defparam i11064_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11065_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [7]), 
            .I3(\data_in[0] [7]), .O(n15268));   // verilog/coms.v(130[12] 305[6])
    defparam i11065_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11066_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [6]), 
            .I3(\data_in[0] [6]), .O(n15269));   // verilog/coms.v(130[12] 305[6])
    defparam i11066_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_4_lut_4_lut_adj_1475 (.I0(\data_out_frame[5] [7]), .I1(\data_out_frame[5] [6]), 
            .I2(\data_out_frame[4] [2]), .I3(\data_out_frame[4] [3]), .O(n30740));   // verilog/coms.v(100[12:26])
    defparam i1_4_lut_4_lut_adj_1475.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1476 (.I0(\data_in_frame[9] [6]), .I1(\data_in_frame[12] [0]), 
            .I2(GND_net), .I3(GND_net), .O(n30904));
    defparam i1_2_lut_adj_1476.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_1477 (.I0(\data_out_frame[14] [6]), .I1(\data_out_frame[12] [4]), 
            .I2(\data_out_frame[4] [0]), .I3(\data_out_frame[5] [4]), .O(n30796));
    defparam i1_2_lut_4_lut_adj_1477.LUT_INIT = 16'h6996;
    SB_LUT4 i18_4_lut_adj_1478 (.I0(n27212), .I1(n36_adj_4500), .I2(n30563), 
            .I3(\data_out_frame[24] [6]), .O(n41_adj_4503));
    defparam i18_4_lut_adj_1478.LUT_INIT = 16'h6996;
    SB_LUT4 i2_3_lut_adj_1479 (.I0(\data_in_frame[8] [7]), .I1(\data_in_frame[8] [6]), 
            .I2(\data_in_frame[8] [0]), .I3(GND_net), .O(n12661));
    defparam i2_3_lut_adj_1479.LUT_INIT = 16'h9696;
    SB_LUT4 i16_4_lut_adj_1480 (.I0(n30715), .I1(n32149), .I2(n27009), 
            .I3(n30901), .O(n39_adj_4504));
    defparam i16_4_lut_adj_1480.LUT_INIT = 16'h9669;
    SB_LUT4 i22_4_lut_adj_1481 (.I0(n39_adj_4504), .I1(n41_adj_4503), .I2(n40_adj_4502), 
            .I3(n42_adj_4501), .O(n12172));
    defparam i22_4_lut_adj_1481.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1482 (.I0(\data_out_frame[12] [4]), .I1(\data_out_frame[4] [0]), 
            .I2(\data_out_frame[5] [4]), .I3(GND_net), .O(n30527));
    defparam i1_2_lut_3_lut_adj_1482.LUT_INIT = 16'h9696;
    SB_LUT4 i11067_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [5]), 
            .I3(\data_in[0] [5]), .O(n15270));   // verilog/coms.v(130[12] 305[6])
    defparam i11067_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i6_4_lut_adj_1483 (.I0(n30907), .I1(Kp_23__N_1259), .I2(n30870), 
            .I3(\data_in_frame[19] [7]), .O(n14_adj_4254));
    defparam i6_4_lut_adj_1483.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_3_lut_adj_1484 (.I0(\data_out_frame[12] [7]), .I1(\data_out_frame[14] [5]), 
            .I2(n12411), .I3(GND_net), .O(n30390));   // verilog/coms.v(100[12:26])
    defparam i1_2_lut_3_lut_adj_1484.LUT_INIT = 16'h9696;
    SB_LUT4 i11068_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [4]), 
            .I3(\data_in[0] [4]), .O(n15271));   // verilog/coms.v(130[12] 305[6])
    defparam i11068_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i9_4_lut_adj_1485 (.I0(\data_in_frame[10] [0]), .I1(n30755), 
            .I2(n30880), .I3(n30506), .O(n22_adj_4505));
    defparam i9_4_lut_adj_1485.LUT_INIT = 16'h6996;
    SB_LUT4 i11069_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [3]), 
            .I3(\data_in[0] [3]), .O(n15272));   // verilog/coms.v(130[12] 305[6])
    defparam i11069_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11070_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [2]), 
            .I3(\data_in[0] [2]), .O(n15273));   // verilog/coms.v(130[12] 305[6])
    defparam i11070_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i8_4_lut_adj_1486 (.I0(n30502), .I1(n30662), .I2(n30904), 
            .I3(n27887), .O(n21_adj_4506));
    defparam i8_4_lut_adj_1486.LUT_INIT = 16'h6996;
    SB_LUT4 i10_4_lut_adj_1487 (.I0(\data_in_frame[9] [7]), .I1(n27804), 
            .I2(\data_in_frame[5] [0]), .I3(n14_adj_4390), .O(n23_adj_4507));
    defparam i10_4_lut_adj_1487.LUT_INIT = 16'h6996;
    SB_LUT4 i11071_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [1]), 
            .I3(\data_in[0] [1]), .O(n15274));   // verilog/coms.v(130[12] 305[6])
    defparam i11071_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_adj_1488 (.I0(n27864), .I1(n26959), .I2(GND_net), 
            .I3(GND_net), .O(n27980));
    defparam i1_2_lut_adj_1488.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1489 (.I0(n30772), .I1(n30476), .I2(n9456), .I3(n11135), 
            .O(n27021));
    defparam i3_4_lut_adj_1489.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1490 (.I0(n27131), .I1(n27167), .I2(\data_out_frame[13] [6]), 
            .I3(n10950), .O(n27222));
    defparam i3_4_lut_adj_1490.LUT_INIT = 16'h6996;
    SB_LUT4 i1_4_lut_adj_1491 (.I0(\data_in_frame[14] [2]), .I1(n23_adj_4507), 
            .I2(n21_adj_4506), .I3(n22_adj_4505), .O(n27830));
    defparam i1_4_lut_adj_1491.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1492 (.I0(\data_in_frame[14] [3]), .I1(\data_in_frame[16] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30399));
    defparam i1_2_lut_adj_1492.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1493 (.I0(n30452), .I1(n27035), .I2(GND_net), 
            .I3(GND_net), .O(n27940));
    defparam i1_2_lut_adj_1493.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1494 (.I0(n30695), .I1(\data_in_frame[16] [7]), 
            .I2(n11811), .I3(GND_net), .O(n30585));
    defparam i2_3_lut_adj_1494.LUT_INIT = 16'h9696;
    SB_LUT4 i32460_2_lut_4_lut (.I0(\data_out_frame[4] [7]), .I1(\data_out_frame[5] [1]), 
            .I2(\data_out_frame[5] [3]), .I3(\data_out_frame[12] [1]), .O(n37115));   // verilog/coms.v(100[12:26])
    defparam i32460_2_lut_4_lut.LUT_INIT = 16'h6996;
    SB_LUT4 i11062_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[2] [2]), 
            .I3(\data_in[1] [2]), .O(n15265));   // verilog/coms.v(130[12] 305[6])
    defparam i11062_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i1_2_lut_4_lut_adj_1495 (.I0(n41_adj_4490), .I1(n46), .I2(n42_adj_4489), 
            .I3(\data_in_frame[4][5] ), .O(n6_adj_4258));   // verilog/coms.v(80[16:43])
    defparam i1_2_lut_4_lut_adj_1495.LUT_INIT = 16'h6996;
    SB_LUT4 i10922_3_lut_4_lut (.I0(rx_data_ready), .I1(reset), .I2(\data_in[1] [0]), 
            .I3(\data_in[0] [0]), .O(n15125));   // verilog/coms.v(130[12] 305[6])
    defparam i10922_3_lut_4_lut.LUT_INIT = 16'hfd20;
    SB_LUT4 i11275_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[0]), 
            .I3(\data_in_frame[12] [0]), .O(n15478));
    defparam i11275_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3_4_lut_adj_1496 (.I0(\data_out_frame[23] [7]), .I1(n11888), 
            .I2(n11890), .I3(n27940), .O(n30721));
    defparam i3_4_lut_adj_1496.LUT_INIT = 16'h9669;
    SB_LUT4 i11278_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[1]), 
            .I3(\data_in_frame[12] [1]), .O(n15481));
    defparam i11278_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11281_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[2]), 
            .I3(\data_in_frame[12] [2]), .O(n15484));
    defparam i11281_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_1497 (.I0(\data_out_frame[25] [6]), .I1(\data_out_frame[25] [7]), 
            .I2(\data_out_frame[25] [3]), .I3(GND_net), .O(n6_adj_1));   // verilog/coms.v(74[16:27])
    defparam i1_2_lut_3_lut_adj_1497.LUT_INIT = 16'h9696;
    SB_LUT4 i11284_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[3]), 
            .I3(\data_in_frame[12] [3]), .O(n15487));
    defparam i11284_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_adj_1498 (.I0(n27140), .I1(n26963), .I2(GND_net), 
            .I3(GND_net), .O(n27964));
    defparam i1_2_lut_adj_1498.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_1499 (.I0(n9490), .I1(\data_out_frame[13] [6]), 
            .I2(\data_out_frame[4] [0]), .I3(\data_out_frame[4] [2]), .O(n26));   // verilog/coms.v(74[16:62])
    defparam i2_3_lut_4_lut_adj_1499.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1500 (.I0(\data_in_frame[23] [2]), .I1(n30847), 
            .I2(n30731), .I3(n27820), .O(n31973));   // verilog/coms.v(81[16:27])
    defparam i3_4_lut_adj_1500.LUT_INIT = 16'h9669;
    SB_LUT4 select_441_Select_209_i3_4_lut (.I0(n12172), .I1(\FRAME_MATCHER.state[3] ), 
            .I2(n8_adj_4367), .I3(n32082), .O(n3_adj_4422));   // verilog/coms.v(148[4] 304[11])
    defparam select_441_Select_209_i3_4_lut.LUT_INIT = 16'h8448;
    SB_LUT4 i5_4_lut_adj_1501 (.I0(\data_in_frame[22] [3]), .I1(n30883), 
            .I2(n30790), .I3(n26818), .O(n13));
    defparam i5_4_lut_adj_1501.LUT_INIT = 16'h6996;
    SB_LUT4 i4_4_lut_adj_1502 (.I0(n11956), .I1(\data_in_frame[18][6] ), 
            .I2(n30585), .I3(n6_adj_4368), .O(n26989));
    defparam i4_4_lut_adj_1502.LUT_INIT = 16'h6996;
    SB_LUT4 i11_4_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[4]), 
            .I3(\data_in_frame[12] [4]), .O(n29967));
    defparam i11_4_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i2_2_lut_4_lut_adj_1503 (.I0(\data_out_frame[4] [5]), .I1(n30631), 
            .I2(\data_out_frame[13] [2]), .I3(n30476), .O(n6_adj_4372));   // verilog/coms.v(75[16:27])
    defparam i2_2_lut_4_lut_adj_1503.LUT_INIT = 16'h6996;
    SB_LUT4 i11290_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[5]), 
            .I3(\data_in_frame[12] [5]), .O(n15493));
    defparam i11290_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1_2_lut_3_lut_adj_1504 (.I0(\data_out_frame[13] [5]), .I1(n9456), 
            .I2(n10950), .I3(GND_net), .O(n27035));
    defparam i1_2_lut_3_lut_adj_1504.LUT_INIT = 16'h9696;
    SB_LUT4 i11293_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[6]), 
            .I3(\data_in_frame[12] [6]), .O(n15496));
    defparam i11293_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11296_3_lut_4_lut (.I0(n14153), .I1(reset), .I2(rx_data[7]), 
            .I3(\data_in_frame[12] [7]), .O(n15499));
    defparam i11296_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i11_4_lut_adj_1505 (.I0(n30910), .I1(\data_in_frame[21][2] ), 
            .I2(n30600), .I3(n30870), .O(n30_adj_4271));
    defparam i11_4_lut_adj_1505.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1506 (.I0(n32542), .I1(n26989), .I2(GND_net), 
            .I3(GND_net), .O(n27872));
    defparam i1_2_lut_adj_1506.LUT_INIT = 16'h9999;
    SB_LUT4 i1_2_lut_adj_1507 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[5] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30393));   // verilog/coms.v(77[16:43])
    defparam i1_2_lut_adj_1507.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_3_lut_adj_1508 (.I0(\data_out_frame[4] [3]), .I1(\data_out_frame[5] [0]), 
            .I2(\data_out_frame[4] [7]), .I3(GND_net), .O(n10950));   // verilog/coms.v(88[17:70])
    defparam i1_2_lut_3_lut_adj_1508.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1509 (.I0(\data_in_frame[21][3] ), .I1(\data_in_frame[23] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n6_adj_4272));
    defparam i1_2_lut_adj_1509.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1510 (.I0(\data_in_frame[16] [6]), .I1(n30585), 
            .I2(n32353), .I3(GND_net), .O(n31794));
    defparam i2_3_lut_adj_1510.LUT_INIT = 16'h6969;
    SB_LUT4 i4_4_lut_adj_1511 (.I0(n27851), .I1(\data_in_frame[22][0] ), 
            .I2(\data_in_frame[21] [7]), .I3(\data_in_frame[19] [6]), .O(n10_adj_4303));
    defparam i4_4_lut_adj_1511.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1512 (.I0(\data_in_frame[19] [2]), .I1(n27891), 
            .I2(GND_net), .I3(GND_net), .O(n30600));
    defparam i1_2_lut_adj_1512.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1513 (.I0(n31794), .I1(n30830), .I2(GND_net), 
            .I3(GND_net), .O(n27814));
    defparam i1_2_lut_adj_1513.LUT_INIT = 16'h9999;
    SB_LUT4 i2_3_lut_4_lut_adj_1514 (.I0(\data_out_frame[4] [2]), .I1(\data_out_frame[13] [3]), 
            .I2(n30430), .I3(\data_out_frame[4] [1]), .O(n12036));   // verilog/coms.v(88[17:28])
    defparam i2_3_lut_4_lut_adj_1514.LUT_INIT = 16'h6996;
    SB_LUT4 i3_3_lut_4_lut_adj_1515 (.I0(\data_out_frame[25] [6]), .I1(\data_out_frame[25] [7]), 
            .I2(n12212), .I3(n9545), .O(n8));   // verilog/coms.v(74[16:27])
    defparam i3_3_lut_4_lut_adj_1515.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1516 (.I0(\data_out_frame[5] [2]), .I1(\data_out_frame[13] [4]), 
            .I2(GND_net), .I3(GND_net), .O(n30877));
    defparam i1_2_lut_adj_1516.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1517 (.I0(n27847), .I1(n30681), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_4509));
    defparam i1_2_lut_adj_1517.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut_adj_1518 (.I0(\data_in_frame[20] [4]), .I1(\data_in_frame[22] [5]), 
            .I2(n30692), .I3(GND_net), .O(n8_adj_4304));
    defparam i3_3_lut_adj_1518.LUT_INIT = 16'h9696;
    SB_LUT4 i3_4_lut_adj_1519 (.I0(\data_in_frame[19] [1]), .I1(n27814), 
            .I2(\data_in_frame[17] [0]), .I3(n31886), .O(n32542));
    defparam i3_4_lut_adj_1519.LUT_INIT = 16'h9669;
    SB_LUT4 i4_4_lut_adj_1520 (.I0(\data_in_frame[17] [6]), .I1(\data_in_frame[22][1] ), 
            .I2(n30544), .I3(n6_adj_4509), .O(n32259));
    defparam i4_4_lut_adj_1520.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1521 (.I0(n11135), .I1(\data_out_frame[13] [5]), 
            .I2(GND_net), .I3(GND_net), .O(n27167));
    defparam i1_2_lut_adj_1521.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1522 (.I0(n11727), .I1(n12225), .I2(\data_in_frame[10] [4]), 
            .I3(GND_net), .O(n12168));   // verilog/coms.v(77[16:43])
    defparam i2_3_lut_adj_1522.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1523 (.I0(\data_in_frame[14] [7]), .I1(\data_in_frame[15] [1]), 
            .I2(GND_net), .I3(GND_net), .O(n30608));
    defparam i1_2_lut_adj_1523.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1524 (.I0(\data_in_frame[14] [6]), .I1(n30698), 
            .I2(\data_in_frame[12] [4]), .I3(n11933), .O(n30695));
    defparam i1_4_lut_adj_1524.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_adj_1525 (.I0(\data_in_frame[16] [1]), .I1(\data_in_frame[16] [2]), 
            .I2(GND_net), .I3(GND_net), .O(n30763));
    defparam i1_2_lut_adj_1525.LUT_INIT = 16'h6666;
    SB_LUT4 i2_2_lut_adj_1526 (.I0(n9456), .I1(n10950), .I2(GND_net), 
            .I3(GND_net), .O(n11874));
    defparam i2_2_lut_adj_1526.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut_adj_1527 (.I0(\data_in_frame[21] [4]), .I1(\data_in_frame[23] [6]), 
            .I2(n27908), .I3(GND_net), .O(n8_adj_4510));
    defparam i3_3_lut_adj_1527.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_1528 (.I0(Kp_23__N_742), .I1(Kp_23__N_745), .I2(GND_net), 
            .I3(GND_net), .O(n30579));   // verilog/coms.v(78[16:43])
    defparam i1_2_lut_adj_1528.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_1529 (.I0(n9490), .I1(\data_out_frame[13] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30772));
    defparam i1_2_lut_adj_1529.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut_adj_1530 (.I0(\data_in_frame[23] [0]), .I1(n12555), 
            .I2(n30734), .I3(n6_adj_4359), .O(n31978));
    defparam i4_4_lut_adj_1530.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1531 (.I0(\data_out_frame[4] [5]), .I1(\data_out_frame[4] [6]), 
            .I2(GND_net), .I3(GND_net), .O(n30430));   // verilog/coms.v(88[17:28])
    defparam i1_2_lut_adj_1531.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_1532 (.I0(\data_in_frame[6] [4]), .I1(n30579), 
            .I2(\data_in_frame[6] [3]), .I3(\data_in_frame[8] [5]), .O(n11650));   // verilog/coms.v(78[16:43])
    defparam i3_4_lut_adj_1532.LUT_INIT = 16'h6996;
    SB_LUT4 i1_2_lut_adj_1533 (.I0(n11650), .I1(n11731), .I2(GND_net), 
            .I3(GND_net), .O(Kp_23__N_937));   // verilog/coms.v(79[16:43])
    defparam i1_2_lut_adj_1533.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_adj_1534 (.I0(n27818), .I1(\data_in_frame[16] [3]), 
            .I2(n27830), .I3(GND_net), .O(n30535));
    defparam i2_3_lut_adj_1534.LUT_INIT = 16'h9696;
    SB_LUT4 i2_4_lut_adj_1535 (.I0(\data_out_frame[4] [3]), .I1(n12545), 
            .I2(\data_out_frame[4] [2]), .I3(\data_out_frame[4] [7]), .O(n30743));   // verilog/coms.v(74[16:62])
    defparam i2_4_lut_adj_1535.LUT_INIT = 16'h6996;
    SB_LUT4 i3_4_lut_adj_1536 (.I0(\data_in_frame[23] [5]), .I1(n11797), 
            .I2(n37486), .I3(n32542), .O(n32242));
    defparam i3_4_lut_adj_1536.LUT_INIT = 16'h9669;
    SB_LUT4 i1_2_lut_3_lut_3_lut_adj_1537 (.I0(n30620), .I1(n27002), .I2(n27802), 
            .I3(n11551), .O(n27009));
    defparam i1_2_lut_3_lut_3_lut_adj_1537.LUT_INIT = 16'ha55a;
    SB_LUT4 i29120_4_lut (.I0(\data_in_frame[21][5] ), .I1(n31978), .I2(n8_adj_4510), 
            .I3(n32257), .O(n33764));
    defparam i29120_4_lut.LUT_INIT = 16'hdeed;
    SB_LUT4 i1_2_lut_adj_1538 (.I0(\data_in_frame[16] [0]), .I1(\data_in_frame[15] [7]), 
            .I2(GND_net), .I3(GND_net), .O(n30706));
    defparam i1_2_lut_adj_1538.LUT_INIT = 16'h6666;
    uart_tx tx (.GND_net(GND_net), .r_Clock_Count({r_Clock_Count}), .n20810(n20810), 
            .clk16MHz(clk16MHz), .VCC_net(VCC_net), .r_SM_Main({r_SM_Main}), 
            .n31667(n31667), .\r_SM_Main_2__N_3415[0] (r_SM_Main_2__N_3415[0]), 
            .n6(n6_adj_2), .n2859(n2859), .n29(n29), .n23(n23), .\o_Rx_DV_N_3358[12] (\o_Rx_DV_N_3358[12] ), 
            .\o_Rx_DV_N_3358[24] (\o_Rx_DV_N_3358[24] ), .n27(n27), .tx_o(tx_o), 
            .tx_data({tx_data}), .\r_SM_Main_2__N_3406[1] (\r_SM_Main_2__N_3406[1] ), 
            .n15137(n15137), .tx_active(tx_active), .tx_enable(tx_enable)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(110[25:94])
    uart_rx rx (.GND_net(GND_net), .r_Clock_Count({r_Clock_Count_adj_15}), 
            .clk16MHz(clk16MHz), .VCC_net(VCC_net), .\o_Rx_DV_N_3358[12] (\o_Rx_DV_N_3358[12] ), 
            .baudrate({baudrate}), .r_SM_Main({r_SM_Main_adj_16}), .r_Rx_Data(r_Rx_Data), 
            .RX_N_2(RX_N_2), .\r_Bit_Index[0] (\r_Bit_Index[0] ), .n31807(n31807), 
            .\o_Rx_DV_N_3358[24] (\o_Rx_DV_N_3358[24] ), .n29(n29), .n23(n23), 
            .n32960(n32960), .\r_SM_Main_2__N_3316[1] (\r_SM_Main_2__N_3316[1] ), 
            .n27(n27), .\o_Rx_DV_N_3358[8] (\o_Rx_DV_N_3358[8] ), .\o_Rx_DV_N_3358[7] (\o_Rx_DV_N_3358[7] ), 
            .\o_Rx_DV_N_3358[6] (\o_Rx_DV_N_3358[6] ), .\o_Rx_DV_N_3358[5] (\o_Rx_DV_N_3358[5] ), 
            .n15362(n15362), .rx_data({rx_data}), .n15361(n15361), .n15360(n15360), 
            .n15359(n15359), .n15358(n15358), .n15357(n15357), .n15356(n15356), 
            .\o_Rx_DV_N_3358[4] (\o_Rx_DV_N_3358[4] ), .\o_Rx_DV_N_3358[3] (\o_Rx_DV_N_3358[3] ), 
            .\o_Rx_DV_N_3358[2] (\o_Rx_DV_N_3358[2] ), .n13594(n13594), 
            .\o_Rx_DV_N_3358[1] (\o_Rx_DV_N_3358[1] ), .n31122(n31122), 
            .\o_Rx_DV_N_3358[0] (\o_Rx_DV_N_3358[0] ), .n15900(n15900), 
            .n28009(n28009), .rx_data_ready(rx_data_ready), .n15875(n15875), 
            .n11389(n11389), .n2856(n2856), .n30308(n30308), .n6(n6_adj_14), 
            .n33248(n33248), .n33232(n33232), .n33302(n33302), .n33322(n33322), 
            .n33214(n33214), .n33250(n33250), .n13431(n13431), .n33286(n33286), 
            .n33304(n33304), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // verilog/coms.v(96[25:68])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (GND_net, r_Clock_Count, n20810, clk16MHz, VCC_net, 
            r_SM_Main, n31667, \r_SM_Main_2__N_3415[0] , n6, n2859, 
            n29, n23, \o_Rx_DV_N_3358[12] , \o_Rx_DV_N_3358[24] , n27, 
            tx_o, tx_data, \r_SM_Main_2__N_3406[1] , n15137, tx_active, 
            tx_enable) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [8:0]r_Clock_Count;
    input n20810;
    input clk16MHz;
    input VCC_net;
    output [2:0]r_SM_Main;
    input n31667;
    input \r_SM_Main_2__N_3415[0] ;
    output n6;
    input n2859;
    input n29;
    input n23;
    input \o_Rx_DV_N_3358[12] ;
    input \o_Rx_DV_N_3358[24] ;
    input n27;
    output tx_o;
    input [7:0]tx_data;
    input \r_SM_Main_2__N_3406[1] ;
    input n15137;
    output tx_active;
    output tx_enable;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [8:0]n41;
    
    wire n26514, n26515, n26513, n20796, n26512, n26511, n26510, 
        n26509, n26508, n33036, n33042, n3, n3_adj_4247, n10885;
    wire [7:0]r_Tx_Data;   // verilog/uart_tx.v(35[16:25])
    
    wire n28029;
    wire [2:0]r_Bit_Index;   // verilog/uart_tx.v(34[16:27])
    wire [2:0]n460;
    
    wire n31665, n32922, n32928, n3_adj_4248, n9, n37332, n37404, 
        o_Tx_Serial_N_3468, n37438, n37401, n37329, n31068, n15067, 
        n35412, n28035, n14, n15;
    
    SB_LUT4 r_Clock_Count_1116_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26514), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_9 (.CI(n26514), .I0(GND_net), .I1(r_Clock_Count[7]), 
            .CO(n26515));
    SB_LUT4 r_Clock_Count_1116_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26513), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR r_Clock_Count_1116__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n20810), .D(n41[0]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_CARRY r_Clock_Count_1116_add_4_8 (.CI(n26513), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26514));
    SB_LUT4 r_Clock_Count_1116_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26512), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_7 (.CI(n26512), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26513));
    SB_LUT4 r_Clock_Count_1116_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26511), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_6 (.CI(n26511), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26512));
    SB_LUT4 r_Clock_Count_1116_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26510), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_5 (.CI(n26510), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26511));
    SB_LUT4 r_Clock_Count_1116_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26509), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_4 (.CI(n26509), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26510));
    SB_LUT4 r_Clock_Count_1116_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26508), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_3 (.CI(n26508), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26509));
    SB_LUT4 r_Clock_Count_1116_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1116_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26508));
    SB_LUT4 i17_4_lut (.I0(r_SM_Main[0]), .I1(n31667), .I2(r_SM_Main[1]), 
            .I3(\r_SM_Main_2__N_3415[0] ), .O(n6));
    defparam i17_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i1_2_lut (.I0(n2859), .I1(r_SM_Main[0]), .I2(GND_net), .I3(GND_net), 
            .O(n33036));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut (.I0(n29), .I1(n23), .I2(\o_Rx_DV_N_3358[12] ), .I3(n33036), 
            .O(n33042));
    defparam i1_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i8_4_lut (.I0(\o_Rx_DV_N_3358[24] ), .I1(r_SM_Main[1]), .I2(n27), 
            .I3(n33042), .O(n3));   // verilog/uart_tx.v(32[16:25])
    defparam i8_4_lut.LUT_INIT = 16'hc9cc;
    SB_DFFE o_Tx_Serial_51 (.Q(tx_o), .C(clk16MHz), .E(n20810), .D(n3_adj_4247));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i0 (.Q(r_Tx_Data[0]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[0]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n28029), 
            .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i16660_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(r_Bit_Index[0]), 
            .I3(GND_net), .O(n460[2]));   // verilog/uart_tx.v(34[16:27])
    defparam i16660_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i26345_rep_29_2_lut (.I0(\r_SM_Main_2__N_3406[1] ), .I1(r_SM_Main[1]), 
            .I2(GND_net), .I3(GND_net), .O(n31665));
    defparam i26345_rep_29_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[0]), .I2(GND_net), 
            .I3(GND_net), .O(n460[1]));   // verilog/uart_tx.v(34[16:27])
    defparam i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[0]), .I2(r_Bit_Index[1]), 
            .I3(GND_net), .O(n32922));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i1_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_1026 (.I0(n23), .I1(\o_Rx_DV_N_3358[12] ), .I2(n2859), 
            .I3(n32922), .O(n32928));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i1_4_lut_adj_1026.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_adj_1027 (.I0(\o_Rx_DV_N_3358[24] ), .I1(n27), .I2(n29), 
            .I3(n32928), .O(n3_adj_4248));   // verilog/uart_tx.v(41[10] 144[8])
    defparam i1_4_lut_adj_1027.LUT_INIT = 16'h0100;
    SB_LUT4 i23_3_lut (.I0(\r_SM_Main_2__N_3415[0] ), .I1(n3_adj_4248), 
            .I2(r_SM_Main[1]), .I3(GND_net), .O(n9));   // verilog/uart_tx.v(32[16:25])
    defparam i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i22_3_lut (.I0(n9), .I1(\r_SM_Main_2__N_3406[1] ), .I2(r_SM_Main[0]), 
            .I3(GND_net), .O(n28029));   // verilog/uart_tx.v(32[16:25])
    defparam i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1831524_i1_3_lut (.I0(n37332), .I1(n37404), .I2(r_Bit_Index[1]), 
            .I3(GND_net), .O(o_Tx_Serial_N_3468));
    defparam i1831524_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16657_3_lut (.I0(r_SM_Main[0]), .I1(o_Tx_Serial_N_3468), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n3_adj_4247));   // verilog/uart_tx.v(32[16:25])
    defparam i16657_3_lut.LUT_INIT = 16'he5e5;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n37438));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 r_Bit_Index_0__bdd_4_lut (.I0(r_Bit_Index[0]), .I1(r_Tx_Data[6]), 
            .I2(r_Tx_Data[7]), .I3(r_Bit_Index[2]), .O(n37401));
    defparam r_Bit_Index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n37401_bdd_4_lut (.I0(n37401), .I1(r_Tx_Data[3]), .I2(r_Tx_Data[2]), 
            .I3(r_Bit_Index[2]), .O(n37404));
    defparam n37401_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR r_Clock_Count_1116__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n20810), .D(n41[1]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n20810), .D(n41[2]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n20810), .D(n41[3]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n20810), .D(n41[4]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n20810), .D(n41[5]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n20810), .D(n41[6]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n20810), .D(n41[7]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_DFFESR r_Clock_Count_1116__i8 (.Q(r_Clock_Count[8]), .C(clk16MHz), 
            .E(n20810), .D(n41[8]), .R(n20796));   // verilog/uart_tx.v(119[34:51])
    SB_LUT4 r_Bit_Index_0__bdd_4_lut_32723 (.I0(r_Bit_Index[0]), .I1(r_Tx_Data[4]), 
            .I2(r_Tx_Data[5]), .I3(r_Bit_Index[2]), .O(n37329));
    defparam r_Bit_Index_0__bdd_4_lut_32723.LUT_INIT = 16'he4aa;
    SB_LUT4 n37329_bdd_4_lut (.I0(n37329), .I1(r_Tx_Data[1]), .I2(r_Tx_Data[0]), 
            .I3(r_Bit_Index[2]), .O(n37332));
    defparam n37329_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n31068), 
            .D(n460[1]), .R(n15067));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n31068), 
            .D(n460[2]), .R(n15067));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFF r_Tx_Active_53 (.Q(tx_active), .C(clk16MHz), .D(n15137));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i31401_2_lut_3_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n35412));
    defparam i31401_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i1_3_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(r_SM_Main[1]), 
            .I3(n3_adj_4248), .O(n15067));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h1101;
    SB_LUT4 i2_3_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), .I2(\r_SM_Main_2__N_3415[0] ), 
            .I3(r_SM_Main[1]), .O(n10885));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_DFFE r_Bit_Index_i0 (.Q(r_Bit_Index[0]), .C(clk16MHz), .E(VCC_net), 
            .D(n28035));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 i32556_2_lut_3_lut_4_lut (.I0(r_SM_Main[2]), .I1(r_SM_Main[0]), 
            .I2(\r_SM_Main_2__N_3406[1] ), .I3(r_SM_Main[1]), .O(n31068));
    defparam i32556_2_lut_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3), .R(r_SM_Main[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i7 (.Q(r_Tx_Data[7]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[7]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i6 (.Q(r_Tx_Data[6]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[6]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i5 (.Q(r_Tx_Data[5]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[5]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i4 (.Q(r_Tx_Data[4]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[4]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i3 (.Q(r_Tx_Data[3]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[3]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i2 (.Q(r_Tx_Data[2]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[2]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_DFFE r_Tx_Data_i1 (.Q(r_Tx_Data[1]), .C(clk16MHz), .E(n10885), 
            .D(tx_data[1]));   // verilog/uart_tx.v(41[10] 144[8])
    SB_LUT4 r_Clock_Count_1116_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[8]), .I3(n26515), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1116_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut (.I0(n35412), .I1(n31068), .I2(r_Bit_Index[0]), 
            .I3(n31665), .O(n28035));   // verilog/uart_tx.v(32[16:25])
    defparam i12_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 o_Tx_Serial_I_0_1_lut (.I0(tx_o), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(tx_enable));   // verilog/uart_tx.v(39[24:36])
    defparam o_Tx_Serial_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3358[24] ), .I2(n27), 
            .I3(GND_net), .O(n14));
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_3358[12] ), .I2(n23), .I3(n2859), 
            .O(n15));
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i8_4_lut_adj_1028 (.I0(n15), .I1(n20810), .I2(n14), .I3(r_SM_Main[1]), 
            .O(n37438));
    defparam i8_4_lut_adj_1028.LUT_INIT = 16'h8000;
    SB_LUT4 i32512_4_lut (.I0(\r_SM_Main_2__N_3406[1] ), .I1(r_SM_Main[2]), 
            .I2(r_SM_Main[1]), .I3(r_SM_Main[0]), .O(n20796));
    defparam i32512_4_lut.LUT_INIT = 16'h1113;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (GND_net, r_Clock_Count, clk16MHz, VCC_net, \o_Rx_DV_N_3358[12] , 
            baudrate, r_SM_Main, r_Rx_Data, RX_N_2, \r_Bit_Index[0] , 
            n31807, \o_Rx_DV_N_3358[24] , n29, n23, n32960, \r_SM_Main_2__N_3316[1] , 
            n27, \o_Rx_DV_N_3358[8] , \o_Rx_DV_N_3358[7] , \o_Rx_DV_N_3358[6] , 
            \o_Rx_DV_N_3358[5] , n15362, rx_data, n15361, n15360, 
            n15359, n15358, n15357, n15356, \o_Rx_DV_N_3358[4] , \o_Rx_DV_N_3358[3] , 
            \o_Rx_DV_N_3358[2] , n13594, \o_Rx_DV_N_3358[1] , n31122, 
            \o_Rx_DV_N_3358[0] , n15900, n28009, rx_data_ready, n15875, 
            n11389, n2856, n30308, n6, n33248, n33232, n33302, 
            n33322, n33214, n33250, n13431, n33286, n33304, n4) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [7:0]r_Clock_Count;
    input clk16MHz;
    input VCC_net;
    output \o_Rx_DV_N_3358[12] ;
    input [31:0]baudrate;
    output [2:0]r_SM_Main;
    output r_Rx_Data;
    input RX_N_2;
    output \r_Bit_Index[0] ;
    output n31807;
    output \o_Rx_DV_N_3358[24] ;
    output n29;
    output n23;
    input n32960;
    input \r_SM_Main_2__N_3316[1] ;
    output n27;
    output \o_Rx_DV_N_3358[8] ;
    output \o_Rx_DV_N_3358[7] ;
    output \o_Rx_DV_N_3358[6] ;
    output \o_Rx_DV_N_3358[5] ;
    input n15362;
    output [7:0]rx_data;
    input n15361;
    input n15360;
    input n15359;
    input n15358;
    input n15357;
    input n15356;
    output \o_Rx_DV_N_3358[4] ;
    output \o_Rx_DV_N_3358[3] ;
    output \o_Rx_DV_N_3358[2] ;
    output n13594;
    output \o_Rx_DV_N_3358[1] ;
    output n31122;
    output \o_Rx_DV_N_3358[0] ;
    input n15900;
    input n28009;
    output rx_data_ready;
    input n15875;
    output n11389;
    input n2856;
    input n30308;
    output n6;
    input n33248;
    output n33232;
    input n33302;
    output n33322;
    output n33214;
    output n33250;
    output n13431;
    output n33286;
    output n33304;
    output n4;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    wire [23:0]n5340;
    
    wire n2829, n2867, n26341, n26342;
    wire [23:0]n5132;
    
    wire n1836, n1459, n26215, n26216, n2830, n2754, n26340, n2831, 
        n2638, n26339;
    wire [7:0]n1;
    
    wire n13469, n14741, n1837, n1460, n26214, n2832, n2519, n26338, 
        n2833, n2397, n26337, n1838, n1011, n26213, n2834, n2272, 
        n26336, n26507, n26506, n2835, n2144, n26335, n26505, 
        n2836, n2013, n26334, n26504, n26503, n26502, n2837, n1879, 
        n26333, n26501, n2838, n1742, n26332, n1839, n856, n26212, 
        n2839, n1602, n26331, n1840, n698, n26211, n2840, n26330, 
        n1841, n858, n26210, n2841, n26329, n32828, n538, n31202, 
        n2842, n26328, n2843, n26327;
    wire [23:0]n5106;
    
    wire n1693, n26209, n32872;
    wire [23:0]n294;
    
    wire n26072, n32870, n2844, n26326, n1694, n26208, n2845, 
        n26325, n26073, n32840, n31173, n1695, n26207, n26071, 
        n32868;
    wire [23:0]n5314;
    
    wire n2713, n2977, n26324, n2714, n26323, n1696, n26206, n32752, 
        n26070, n32750, n2715, n26322, n2716, n26321, n1697, n26205, 
        n2717, n26320, n2718, n26319, n2719, n26318, n1698, n26204, 
        n2720, n26317, n26069, n32866, n1699, n26203, n2721, n26316, 
        n2722, n26315, n26068;
    wire [24:0]o_Rx_DV_N_3358;
    
    wire n1700, n26202, n33899, n31193, n1701, n26201, n2723, 
        n26314, n26067, n1702, n2724, n26313;
    wire [23:0]n5080;
    
    wire n1552, n26200, n2725, n26312, n2726, n26311, n2727, n26310, 
        n1553, n26199, n2728, n26309, n2729, n26308, n2730, n26307, 
        n33372, n804, n22170, n7791, n7793, n960, n6882, n7801, 
        n7803, n21, n37, n32838, n31177, n25;
    wire [23:0]n5288;
    
    wire n2596, n26306, n2597, n26305, n23_c, n19, n27_c, n17, 
        n29_c, n31, n2598, n26304, n2599, n26303, n33, n39_adj_3974, 
        n41_adj_3975, n43_adj_3976, n35, n33975, n31169, n2600, 
        n26302, n33650, n32804, n32802, n33602, n11425, n31181, 
        n959, n31627, n44_adj_3977, n46, n1554, n26198, n2601, 
        n26301, n3, r_Rx_Data_R, n1555, n26197, n805, n961, n2354;
    wire [23:0]n5236;
    
    wire n2477, n33574, n33572, n33636;
    wire [23:0]n5262;
    
    wire n33638, n1556, n26196, n33590, n2602, n26300, n45_adj_3978;
    wire [2:0]r_Bit_Index;   // verilog/uart_rx.v(34[17:28])
    wire [2:0]n479;
    
    wire n40_adj_3979, n1114;
    wire [23:0]n5002;
    
    wire n1264;
    wire [23:0]n5028;
    
    wire n1411;
    wire [23:0]n5054;
    
    wire n11350, n31165, n1834, n33594, n2603, n26299, n33582, 
        n26066, n1557, n26195, n2604, n26298, n2605, n26297, n2606, 
        n26296, n1969, n2607, n26295, n1558, n26194, n2608, n26294, 
        n2609, n26293, n1559, n26193, n2610, n26292, n1560, n26192, 
        n2611, n26291, n26065, n2612, n26290, n32836, n2476, n26289, 
        n26064;
    wire [23:0]n5158;
    
    wire n2101, n1408, n26191, n26288, n1409, n26190, n30187, 
        n33886, n33989, n2, n1410, n26189, n2478, n26287, n26063, 
        n26188, n7004, n1412, n26187, n2479, n26286, n2480, n26285, 
        n1413, n26186, n33368, n33360, n33364, n33366, n3053;
    wire [23:0]n5392;
    
    wire n3158, n33790, n33_adj_3983, n26062, n3054, n3159, n31_adj_3984, 
        n3156, n37_adj_3985, n1414, n26185, n3052, n3157, n33792, 
        n35_adj_3986, n33362, n33945, n3056, n3161, n2481, n26284, 
        n3057, n3162, n25_adj_3987, n27_adj_3988, n33850, n33832, 
        n34003, n34007, n3058, n3163, n3059, n3164, n21_adj_3989, 
        n23_adj_3990, n3060, n3165, n19_adj_3991, n3064, n3169, 
        n42_adj_3992, n44_adj_3993, n3065, n3170, n3066, n3171, 
        n9, n11, n2482, n26283, n3055, n3160, n3061, n3166, 
        n3062, n3167, n3063, n3168, n13, n15, n17_adj_3994, n29_adj_3995, 
        n31700, n33680, n33684, n33686, n33592, n33682, n11383, 
        n35712, n36231, n2483, n26282, n36549, n26061, n36545, 
        n1415, n26184, n2484, n26281, n35725, n2485, n26280, n2486, 
        n26279, n33490, n3172, n6_c, n11431, n36826, n14, n32, 
        n35473, n37121, n48, n46_adj_3996, n2487, n26278, n30958, 
        n48_adj_3997, n2488, n26277, n33568, n33570, n26060, n2489, 
        n26276, n32826, n31211, n36827, n35701, n12, n35698, n37027, 
        n36779, n2490, n26275, n2491, n26274, n32834, n31185, 
        n2353, n26273, n8, n36828, n36829, n35740, n36213, n10, 
        n36587, n36777;
    wire [23:0]n5184;
    
    wire n2230, n36705, n37095, n36822, n37105, n1261, n26183, 
        n26272, n1262, n26182, n3155, n37106, n3154, n37102, n33512, 
        n33524, n3153, n36990, n3152, n36991, n3151, n48_adj_3998, 
        n1263, n26181, n33516, n33652, n11437, n3051, n26180, 
        n3050, n22172, n1265, n26179, n2355, n26271, n2356, n26270, 
        n42_adj_3999, n2357, n26269, n1266, n26178, n2358, n26268, 
        n2359, n26267, n1267, n26177, n3_adj_4000, n2360, n26266, 
        n32824, n31215, n2361, n26265, n2362, n26264, n2363, n26263, 
        n1111, n26176, n1112, n26175, n1113, n26174, n2364, n26262, 
        n26059, n26173, n2365, n26261, n30962, n48_adj_4001, n1115, 
        n26172;
    wire [23:0]n5210;
    
    wire n31189, n37443, n2366, n26260, n26058, n1116, n26171, 
        n32822, n31219, n2367, n26259, n48_adj_4002, n33943, n32832, 
        n2227, n26258, n1831, n1966, n2098, n2228, n26257, n2229, 
        n26256, n33911, n33866, n33554, n33985, n33156, n962, 
        n33923, n33184, n26057, n26255, n3084, n3049, n3188, n11428, 
        n2231, n26254, n48_adj_4003, n33967, n3048, n2232, n26253, 
        n2233, n26252, n3082, n3047;
    wire [23:0]n5418;
    
    wire n3186, n26407, n33544, n33336, n33356, n33596, n37070, 
        n11416, n26406, n2234, n26251, n26405, n26404, n35983, 
        n33854, n33997, n36451, n3046, n36637, n36635, n35657, 
        n35985, n36879, n11444, n33971, n48_adj_4004, n2235, n26250, 
        n14_adj_4005, n48_adj_4006, n34, n35948, n2938;
    wire [23:0]n5366;
    
    wire n2946, n2939, n2940, n16, n18, n37_adj_4007, n43_adj_4008, 
        n41_adj_4009, n35924, n39_adj_4010, n31_adj_4011, n33_adj_4012, 
        n35_adj_4013, n19_adj_4014, n21_adj_4015, n27_adj_4016, n29_adj_4017, 
        n23_adj_4018, n25_adj_4019, n17_adj_4020, n20, n36065, n36060, 
        n36810, n2941, n2944, n35_adj_4021, n16_adj_4022, n2942, 
        n39_adj_4023, n2945, n36679, n36680, n26403, n33_adj_4024, 
        n2943, n36063, n36463, n22, n36760, n26402, n36316, n37_adj_4025, 
        n2947, n20_adj_4026, n28, n2948, n18_adj_4027, n36054, n36980, 
        n36981, n27_adj_4028, n29_adj_4029, n36869, n36465, n2949, 
        n2950, n36866, n36314, n37029, n23_adj_4030, n37030, n2236, 
        n26249, n31161, n25_adj_4031, n39_adj_4032, n45_adj_4033, 
        n2956, n2957, n43_adj_4034, n41_adj_4035, n33_adj_4036, n35_adj_4037, 
        n37_adj_4038, n27_adj_4039, n29_adj_4040, n31_adj_4041, n11_adj_4042, 
        n2955, n13_adj_4043, n2951, n21_adj_4044, n23_adj_4045, n2237, 
        n26248, n26056, n21_adj_4046, n25_adj_4047, n2952, n2954, 
        n19_adj_4048, n2953, n44_adj_4049, n803, n15_adj_4050, n2238, 
        n26247, n35565, n35550, n17_adj_4051, n2239, n26246, n26401, 
        n19_adj_4052, n36659, n31_adj_4053, n18_adj_4054, n36683, 
        n36684, n35563, n36483, n24, n26, n35805, n36308, n12_adj_4055, 
        n35659, n36301, n2240, n26245, n26400, n22_adj_4056, n30, 
        n20_adj_4057, n35539, n36978, n35895, n36571, n36979, n36569, 
        n35807, n14_adj_4058, n36873, n16_adj_4059, n8_adj_4060, n36832, 
        n36833, n16_adj_4061, n34_adj_4062, n36487, n36757, n36306, 
        n36759, n35876, n33612, n35796, n14_adj_4063, n35794, n37025, 
        n36773, n41_adj_4064, n10_adj_4065, n36834, n39_adj_4066, 
        n36835, n35816, n36265, n11391, n37_adj_4067, n35_adj_4068, 
        n12_adj_4069, n20_adj_4070, n23_adj_4071, n26399, n26398, 
        n26397, n26396, n26395, n26_adj_4072, n18_adj_4073, n36719, 
        n37093, n36583, n32830, n26244, n37107, n37108, n25_adj_4074, 
        n37100, n36585, n27_adj_4075, n29_adj_4076, n31_adj_4077, 
        n33_adj_4078, n21_adj_4079, n35608, n35593, n30_adj_4080, 
        n20_adj_4081, n26_adj_4082, n28_adj_4083, n26394, n24_adj_4084, 
        n32_adj_4085, n35913, n2099, n26243, n26393, n32_adj_4086, 
        n22_adj_4087, n35588, n37019, n37020, n36965, n36665, n35602, 
        n36988, n36917, n37021, n37022, n26392, n36963, n14_adj_4088, 
        n36673, n36674, n1975, n28_adj_4089, n43_adj_4090, n41_adj_4091, 
        n2100, n26242, n26391, n32201, n39_adj_4092, n1970, n1974, 
        n35825, n37_adj_4093, n26241, n33_adj_4094, n26390, n2102, 
        n26240, n30_adj_4095, n26389, n35_adj_4096, n2103, n26239, 
        n26388, n25_adj_4097, n2104, n26238, n27_adj_4098, n29_adj_4099, 
        n31_adj_4100, n23_adj_4101, n35742, n26387, n2105, n26237, 
        n26386, n35730, n32846, n26385, n26079, n33642, n16_adj_4102, 
        n35998, n22_adj_4103, n40_adj_4104, n26384, n18_adj_4105, 
        n26383, n2106, n26236, n2107, n26235, n26078, n26382, 
        n26381, n2827, n26380, n2108, n26234, n2828, n2109, n26233, 
        n26379, n26378, n26377, n26376, n22_adj_4106, n28_adj_4107, 
        n30_adj_4108, n28_adj_4109, n37_adj_4110, n35777, n26_adj_4111, 
        n34_adj_4112, n41_adj_4113, n33606, n33624, n35_adj_4114, 
        n26375, n26374, n26077, n32876, n24_adj_4115, n35716, n37017, 
        n26373, n2110, n35976, n37018, n26372, n26232, n36967, 
        n36711, n35735, n36842, n42_adj_4116, n36992, n26371, n26370, 
        n1967, n26231, n20_adj_4117, n35972, n36762, n36993, n30_adj_4118, 
        n29_adj_4119, n31_adj_4120, n36326, n39_adj_4121, n37_adj_4122, 
        n35_adj_4123, n41_adj_4124, n39_adj_4125, n29_adj_4126, n31_adj_4127, 
        n1968, n26230, n33580, n33_adj_4128, n26369, n26368, n26229, 
        n26367, n26366, n26365, n27_adj_4129, n23_adj_4130, n35792, 
        n31222, n26364, n38_adj_4131, n26228, n32844, n31196, n26_adj_4132, 
        n36848, n36849, n35786, n37015, n36742, n42_adj_4133, n37089, 
        n37090, n26_adj_4134, n25_adj_4135, n27_adj_4136, n48_adj_4137, 
        n33646, n33654, n36892, n26363, n36982, n36983, n1971, 
        n26227, n36893, n37_adj_4138, n48_adj_4139, n1972, n35_adj_4140, 
        n41_adj_4141, n39_adj_4142, n26226, n26362, n26361, n26360, 
        n1973, n26225, n26359, n29_adj_4143, n36863, n31_adj_4144, 
        n26358, n36804, n37000, n26224, n33_adj_4145, n11398, n1976, 
        n27_adj_4146, n35887, n36324, n13_adj_4147, n37002, n15_adj_4148, 
        n38_adj_4149, n1977, n26_adj_4150, n36689, n36690, n26076, 
        n35848, n37013, n36300, n37087, n37088, n37072, n17_adj_4151, 
        n19_adj_4152, n21_adj_4153, n33_adj_4154, n33913, n26357, 
        n35883, n26223, n1835, n39_adj_4155, n37_adj_4156, n1833, 
        n43_adj_4157, n41_adj_4158, n31_adj_4159, n33_adj_4160, n35_adj_4161, 
        n26356, n29_adj_4162, n35922, n36373, n40_adj_4163, n28_adj_4164, 
        n36693, n36603, n36601, n26222, n35889, n36694, n35915, 
        n36972, n36295, n37073, n1832, n37074, n26075, n32874, 
        n26355, n10_adj_4165, n36663, n36664, n26074, n43_adj_4166, 
        n37_adj_4167, n41_adj_4168, n39_adj_4169, n26354, n26221, 
        n26353, n26352, n26351, n31205, n32_adj_4170, n36695, n36696, 
        n35950, n36405, n34_adj_4171, n36735, n36289, n36878, n26350, 
        n26349, n26348, n26347, n48_adj_4172, n33622, n26346, n26345, 
        n36, n35878, n37023, n36340, n26344, n22_adj_4173, n36986, 
        n36987, n36859, n36792, n37091, n43_adj_4174, n36338, n37_adj_4175, 
        n37109, n33370, n37110, n37104, n32842, n26220, n41_adj_4176, 
        n39_adj_4177, n14_adj_4178, n15_adj_4179, n42_adj_4180, n26219, 
        n32_adj_4181, n26218, n26217, n26343, n36900, n36697, n36698, 
        n35970, n36415, n34_adj_4182, n36733, n36280, n36880, n36881, 
        n39_adj_4184, n36901, n37_adj_4185, n43_adj_4186, n41_adj_4187, 
        n31_adj_4188, n33_adj_4189, n25_adj_4190, n27_adj_4191, n29_adj_4192, 
        n19_adj_4193, n21_adj_4194, n30960, n23_adj_4195, n35_adj_4196, 
        n15_adj_4197, n17_adj_4198, n35932, n36421, n45_adj_4199, 
        n36623, n36619, n39_adj_4200, n35934, n12_adj_4201, n36669, 
        n38_adj_4202, n36670, n35926, n36960, n43_adj_4203, n36332, 
        n41_adj_4204, n36699, n36700, n36014, n36433, n36_adj_4205, 
        n38_adj_4206, n36278, n36731, n24_adj_4207, n36984, n36985, 
        n36861, n35352, n36800, n37067, n36330, n37097, n37098, 
        n35349, n36903, n35456, n35462, n35453, n35459, n40_adj_4208, 
        n35714, n38_adj_4209, n36079, n41_adj_4210, n36_adj_4211, 
        n40_adj_4212, n36976, n36977, n36885, n43_adj_4213, n35376, 
        n35375, n33876, n38_adj_4214, n42_adj_4215, n36902, n41_adj_4216, 
        n39_adj_4217, n33_adj_4218, n35_adj_4219, n37_adj_4220, n29_adj_4221, 
        n31_adj_4222, n23_adj_4223, n25_adj_4224, n7, n33532, n33929, 
        n3_adj_4225, n45_adj_4226, n33536, n43_adj_4227, n9_adj_4228, 
        n17_adj_4229, n19_adj_4230, n5, n21_adj_4231, n33540, n8_adj_4232, 
        n11_adj_4233, n35362, n35359, n35356, n13_adj_4234, n32910, 
        n32916, n15_adj_4235, n27_adj_4236, n35638, n35644, n16_adj_4237, 
        n35611, n8_adj_4238, n24_adj_4239, n3274, n35673, n36178, 
        n36174, n36874, n36519, n36994, n12_adj_4240, n4_adj_4241, 
        n36818, n36819, n35631, n10_adj_4242, n30_adj_4243, n35634, 
        n37011, n36789, n37085, n37086, n6_adj_4244, n36820, n36821, 
        n35613, n36589, n36787, n37060, n35617, n36932, n40_adj_4245, 
        n32740, n3253, n36934, n32748, n32778, n32358, n33100, 
        n33118, n33999, n46_adj_4246, n31711, n33382, n33384, n33438;
    
    SB_LUT4 add_1545_19_lut (.I0(GND_net), .I1(n2829), .I2(n2867), .I3(n26341), 
            .O(n5340[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_19 (.CI(n26341), .I0(n2829), .I1(n2867), .CO(n26342));
    SB_LUT4 add_1537_8_lut (.I0(GND_net), .I1(n1836), .I2(n1459), .I3(n26215), 
            .O(n5132[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_8 (.CI(n26215), .I0(n1836), .I1(n1459), .CO(n26216));
    SB_LUT4 add_1545_18_lut (.I0(GND_net), .I1(n2830), .I2(n2754), .I3(n26340), 
            .O(n5340[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_18 (.CI(n26340), .I0(n2830), .I1(n2754), .CO(n26341));
    SB_LUT4 add_1545_17_lut (.I0(GND_net), .I1(n2831), .I2(n2638), .I3(n26339), 
            .O(n5340[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_17 (.CI(n26339), .I0(n2831), .I1(n2638), .CO(n26340));
    SB_DFFESR r_Clock_Count_1114__i0 (.Q(r_Clock_Count[0]), .C(clk16MHz), 
            .E(n13469), .D(n1[0]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 add_1537_7_lut (.I0(GND_net), .I1(n1837), .I2(n1460), .I3(n26214), 
            .O(n5132[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_16_lut (.I0(GND_net), .I1(n2832), .I2(n2519), .I3(n26338), 
            .O(n5340[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_16 (.CI(n26338), .I0(n2832), .I1(n2519), .CO(n26339));
    SB_LUT4 add_1545_15_lut (.I0(GND_net), .I1(n2833), .I2(n2397), .I3(n26337), 
            .O(n5340[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_7 (.CI(n26214), .I0(n1837), .I1(n1460), .CO(n26215));
    SB_LUT4 add_1537_6_lut (.I0(GND_net), .I1(n1838), .I2(n1011), .I3(n26213), 
            .O(n5132[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_6 (.CI(n26213), .I0(n1838), .I1(n1011), .CO(n26214));
    SB_CARRY add_1545_15 (.CI(n26337), .I0(n2833), .I1(n2397), .CO(n26338));
    SB_LUT4 add_1545_14_lut (.I0(GND_net), .I1(n2834), .I2(n2272), .I3(n26336), 
            .O(n5340[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_14 (.CI(n26336), .I0(n2834), .I1(n2272), .CO(n26337));
    SB_LUT4 r_Clock_Count_1114_add_4_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[7]), .I3(n26507), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1114_add_4_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[6]), .I3(n26506), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_8 (.CI(n26506), .I0(GND_net), .I1(r_Clock_Count[6]), 
            .CO(n26507));
    SB_LUT4 add_1545_13_lut (.I0(GND_net), .I1(n2835), .I2(n2144), .I3(n26335), 
            .O(n5340[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1114_add_4_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[5]), .I3(n26505), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_13 (.CI(n26335), .I0(n2835), .I1(n2144), .CO(n26336));
    SB_CARRY r_Clock_Count_1114_add_4_7 (.CI(n26505), .I0(GND_net), .I1(r_Clock_Count[5]), 
            .CO(n26506));
    SB_LUT4 add_1545_12_lut (.I0(GND_net), .I1(n2836), .I2(n2013), .I3(n26334), 
            .O(n5340[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1114_add_4_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[4]), .I3(n26504), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_6 (.CI(n26504), .I0(GND_net), .I1(r_Clock_Count[4]), 
            .CO(n26505));
    SB_CARRY add_1545_12 (.CI(n26334), .I0(n2836), .I1(n2013), .CO(n26335));
    SB_LUT4 r_Clock_Count_1114_add_4_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[3]), .I3(n26503), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_5 (.CI(n26503), .I0(GND_net), .I1(r_Clock_Count[3]), 
            .CO(n26504));
    SB_LUT4 r_Clock_Count_1114_add_4_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[2]), .I3(n26502), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_4 (.CI(n26502), .I0(GND_net), .I1(r_Clock_Count[2]), 
            .CO(n26503));
    SB_LUT4 add_1545_11_lut (.I0(GND_net), .I1(n2837), .I2(n1879), .I3(n26333), 
            .O(n5340[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_Clock_Count_1114_add_4_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[1]), .I3(n26501), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_3 (.CI(n26501), .I0(GND_net), .I1(r_Clock_Count[1]), 
            .CO(n26502));
    SB_LUT4 r_Clock_Count_1114_add_4_2_lut (.I0(GND_net), .I1(GND_net), 
            .I2(r_Clock_Count[0]), .I3(VCC_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam r_Clock_Count_1114_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY r_Clock_Count_1114_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(r_Clock_Count[0]), 
            .CO(n26501));
    SB_CARRY add_1545_11 (.CI(n26333), .I0(n2837), .I1(n1879), .CO(n26334));
    SB_LUT4 add_1545_10_lut (.I0(GND_net), .I1(n2838), .I2(n1742), .I3(n26332), 
            .O(n5340[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_10 (.CI(n26332), .I0(n2838), .I1(n1742), .CO(n26333));
    SB_LUT4 add_1537_5_lut (.I0(GND_net), .I1(n1839), .I2(n856), .I3(n26212), 
            .O(n5132[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_9_lut (.I0(GND_net), .I1(n2839), .I2(n1602), .I3(n26331), 
            .O(n5340[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_9 (.CI(n26331), .I0(n2839), .I1(n1602), .CO(n26332));
    SB_CARRY add_1537_5 (.CI(n26212), .I0(n1839), .I1(n856), .CO(n26213));
    SB_LUT4 add_1537_4_lut (.I0(GND_net), .I1(n1840), .I2(n698), .I3(n26211), 
            .O(n5132[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_8_lut (.I0(GND_net), .I1(n2840), .I2(n1459), .I3(n26330), 
            .O(n5340[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_8 (.CI(n26330), .I0(n2840), .I1(n1459), .CO(n26331));
    SB_CARRY add_1537_4 (.CI(n26211), .I0(n1840), .I1(n698), .CO(n26212));
    SB_LUT4 add_1537_3_lut (.I0(GND_net), .I1(n1841), .I2(n858), .I3(n26210), 
            .O(n5132[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_3 (.CI(n26210), .I0(n1841), .I1(n858), .CO(n26211));
    SB_LUT4 add_1545_7_lut (.I0(GND_net), .I1(n2841), .I2(n1460), .I3(n26329), 
            .O(n5340[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_7 (.CI(n26329), .I0(n2841), .I1(n1460), .CO(n26330));
    SB_LUT4 add_1537_2_lut (.I0(n31202), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32828)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_1545_6_lut (.I0(GND_net), .I1(n2842), .I2(n1011), .I3(n26328), 
            .O(n5340[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_6 (.CI(n26328), .I0(n2842), .I1(n1011), .CO(n26329));
    SB_LUT4 add_1545_5_lut (.I0(GND_net), .I1(n2843), .I2(n856), .I3(n26327), 
            .O(n5340[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_5 (.CI(n26327), .I0(n2843), .I1(n856), .CO(n26328));
    SB_CARRY add_1537_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26210));
    SB_LUT4 add_1536_11_lut (.I0(GND_net), .I1(n1693), .I2(n2013), .I3(n26209), 
            .O(n5106[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_19_lut (.I0(n32870), .I1(n294[17]), .I2(VCC_net), 
            .I3(n26072), .O(n32872)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1545_4_lut (.I0(GND_net), .I1(n2844), .I2(n698), .I3(n26326), 
            .O(n5340[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_4 (.CI(n26326), .I0(n2844), .I1(n698), .CO(n26327));
    SB_LUT4 add_1536_10_lut (.I0(GND_net), .I1(n1694), .I2(n1879), .I3(n26208), 
            .O(n5106[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1545_3_lut (.I0(GND_net), .I1(n2845), .I2(n858), .I3(n26325), 
            .O(n5340[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_10 (.CI(n26208), .I0(n1694), .I1(n1879), .CO(n26209));
    SB_CARRY add_1545_3 (.CI(n26325), .I0(n2845), .I1(n858), .CO(n26326));
    SB_CARRY sub_38_add_2_19 (.CI(n26072), .I0(n294[17]), .I1(VCC_net), 
            .CO(n26073));
    SB_LUT4 add_1545_2_lut (.I0(n31173), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32840)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1545_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26325));
    SB_LUT4 add_1536_9_lut (.I0(GND_net), .I1(n1695), .I2(n1742), .I3(n26207), 
            .O(n5106[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_9 (.CI(n26207), .I0(n1695), .I1(n1742), .CO(n26208));
    SB_LUT4 sub_38_add_2_18_lut (.I0(n32868), .I1(n294[16]), .I2(VCC_net), 
            .I3(n26071), .O(n32870)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1544_20_lut (.I0(GND_net), .I1(n2713), .I2(n2977), .I3(n26324), 
            .O(n5314[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_19_lut (.I0(GND_net), .I1(n2714), .I2(n2867), .I3(n26323), 
            .O(n5314[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1536_8_lut (.I0(GND_net), .I1(n1696), .I2(n1602), .I3(n26206), 
            .O(n5106[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_19 (.CI(n26323), .I0(n2714), .I1(n2867), .CO(n26324));
    SB_CARRY sub_38_add_2_18 (.CI(n26071), .I0(n294[16]), .I1(VCC_net), 
            .CO(n26072));
    SB_LUT4 sub_38_add_2_17_lut (.I0(n32750), .I1(n294[15]), .I2(VCC_net), 
            .I3(n26070), .O(n32752)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1544_18_lut (.I0(GND_net), .I1(n2715), .I2(n2754), .I3(n26322), 
            .O(n5314[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_8 (.CI(n26206), .I0(n1696), .I1(n1602), .CO(n26207));
    SB_CARRY add_1544_18 (.CI(n26322), .I0(n2715), .I1(n2754), .CO(n26323));
    SB_LUT4 add_1544_17_lut (.I0(GND_net), .I1(n2716), .I2(n2638), .I3(n26321), 
            .O(n5314[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_17 (.CI(n26321), .I0(n2716), .I1(n2638), .CO(n26322));
    SB_LUT4 add_1536_7_lut (.I0(GND_net), .I1(n1697), .I2(n1459), .I3(n26205), 
            .O(n5106[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_16_lut (.I0(GND_net), .I1(n2717), .I2(n2519), .I3(n26320), 
            .O(n5314[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_17 (.CI(n26070), .I0(n294[15]), .I1(VCC_net), 
            .CO(n26071));
    SB_CARRY add_1544_16 (.CI(n26320), .I0(n2717), .I1(n2519), .CO(n26321));
    SB_CARRY add_1536_7 (.CI(n26205), .I0(n1697), .I1(n1459), .CO(n26206));
    SB_LUT4 add_1544_15_lut (.I0(GND_net), .I1(n2718), .I2(n2397), .I3(n26319), 
            .O(n5314[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_15 (.CI(n26319), .I0(n2718), .I1(n2397), .CO(n26320));
    SB_LUT4 add_1544_14_lut (.I0(GND_net), .I1(n2719), .I2(n2272), .I3(n26318), 
            .O(n5314[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1536_6_lut (.I0(GND_net), .I1(n1698), .I2(n1460), .I3(n26204), 
            .O(n5106[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_14 (.CI(n26318), .I0(n2719), .I1(n2272), .CO(n26319));
    SB_LUT4 add_1544_13_lut (.I0(GND_net), .I1(n2720), .I2(n2144), .I3(n26317), 
            .O(n5314[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_16_lut (.I0(n32866), .I1(n294[14]), .I2(VCC_net), 
            .I3(n26069), .O(n32868)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1536_6 (.CI(n26204), .I0(n1698), .I1(n1460), .CO(n26205));
    SB_CARRY sub_38_add_2_16 (.CI(n26069), .I0(n294[14]), .I1(VCC_net), 
            .CO(n26070));
    SB_CARRY add_1544_13 (.CI(n26317), .I0(n2720), .I1(n2144), .CO(n26318));
    SB_LUT4 add_1536_5_lut (.I0(GND_net), .I1(n1699), .I2(n1011), .I3(n26203), 
            .O(n5106[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_12_lut (.I0(GND_net), .I1(n2721), .I2(n2013), .I3(n26316), 
            .O(n5314[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_12 (.CI(n26316), .I0(n2721), .I1(n2013), .CO(n26317));
    SB_CARRY add_1536_5 (.CI(n26203), .I0(n1699), .I1(n1011), .CO(n26204));
    SB_LUT4 add_1544_11_lut (.I0(GND_net), .I1(n2722), .I2(n1879), .I3(n26315), 
            .O(n5314[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_15_lut (.I0(o_Rx_DV_N_3358[10]), .I1(n294[13]), 
            .I2(VCC_net), .I3(n26068), .O(n32866)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_1544_11 (.CI(n26315), .I0(n2722), .I1(n1879), .CO(n26316));
    SB_LUT4 add_1536_4_lut (.I0(GND_net), .I1(n1700), .I2(n856), .I3(n26202), 
            .O(n5106[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_15 (.CI(n26068), .I0(n294[13]), .I1(VCC_net), 
            .CO(n26069));
    SB_CARRY add_1536_4 (.CI(n26202), .I0(n1700), .I1(n856), .CO(n26203));
    SB_LUT4 i29254_1_lut (.I0(n33899), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31193));
    defparam i29254_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_1536_3_lut (.I0(GND_net), .I1(n1701), .I2(n698), .I3(n26201), 
            .O(n5106[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_10_lut (.I0(GND_net), .I1(n2723), .I2(n1742), .I3(n26314), 
            .O(n5314[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_14_lut (.I0(GND_net), .I1(n294[12]), .I2(VCC_net), 
            .I3(n26067), .O(\o_Rx_DV_N_3358[12] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_10 (.CI(n26314), .I0(n2723), .I1(n1742), .CO(n26315));
    SB_CARRY add_1536_3 (.CI(n26201), .I0(n1701), .I1(n698), .CO(n26202));
    SB_CARRY sub_38_add_2_14 (.CI(n26067), .I0(n294[12]), .I1(VCC_net), 
            .CO(n26068));
    SB_LUT4 add_1536_2_lut (.I0(GND_net), .I1(n1702), .I2(n858), .I3(VCC_net), 
            .O(n5106[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1536_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_9_lut (.I0(GND_net), .I1(n2724), .I2(n1602), .I3(n26313), 
            .O(n5314[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1536_2 (.CI(VCC_net), .I0(n1702), .I1(n858), .CO(n26201));
    SB_CARRY add_1544_9 (.CI(n26313), .I0(n2724), .I1(n1602), .CO(n26314));
    SB_LUT4 add_1535_11_lut (.I0(GND_net), .I1(n1552), .I2(n1879), .I3(n26200), 
            .O(n5080[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1544_8_lut (.I0(GND_net), .I1(n2725), .I2(n1459), .I3(n26312), 
            .O(n5314[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_8 (.CI(n26312), .I0(n2725), .I1(n1459), .CO(n26313));
    SB_LUT4 add_1544_7_lut (.I0(GND_net), .I1(n2726), .I2(n1460), .I3(n26311), 
            .O(n5314[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_7 (.CI(n26311), .I0(n2726), .I1(n1460), .CO(n26312));
    SB_LUT4 add_1544_6_lut (.I0(GND_net), .I1(n2727), .I2(n1011), .I3(n26310), 
            .O(n5314[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1535_10_lut (.I0(GND_net), .I1(n1553), .I2(n1742), .I3(n26199), 
            .O(n5080[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_6 (.CI(n26310), .I0(n2727), .I1(n1011), .CO(n26311));
    SB_LUT4 add_1544_5_lut (.I0(GND_net), .I1(n2728), .I2(n856), .I3(n26309), 
            .O(n5314[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_5 (.CI(n26309), .I0(n2728), .I1(n856), .CO(n26310));
    SB_LUT4 add_1544_4_lut (.I0(GND_net), .I1(n2729), .I2(n698), .I3(n26308), 
            .O(n5314[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1544_4 (.CI(n26308), .I0(n2729), .I1(n698), .CO(n26309));
    SB_LUT4 add_1544_3_lut (.I0(GND_net), .I1(n2730), .I2(n858), .I3(n26307), 
            .O(n5314[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(baudrate[3]), .I1(baudrate[4]), .I2(GND_net), 
            .I3(GND_net), .O(n33372));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3898_4_lut (.I0(n804), .I1(n22170), .I2(n7791), .I3(baudrate[2]), 
            .O(n7793));   // verilog/uart_rx.v(119[33:55])
    defparam i3898_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i3905_4_lut (.I0(n960), .I1(n6882), .I2(n7801), .I3(n856), 
            .O(n7803));   // verilog/uart_rx.v(119[33:55])
    defparam i3905_4_lut.LUT_INIT = 16'haaa8;
    SB_CARRY add_1544_3 (.CI(n26307), .I0(n2730), .I1(n858), .CO(n26308));
    SB_LUT4 div_37_LessThan_1845_i21_2_lut (.I0(n2726), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n21));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i37_2_lut (.I0(n2718), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n37));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1544_2_lut (.I0(n31177), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32838)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1544_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1544_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26307));
    SB_LUT4 div_37_LessThan_1845_i25_2_lut (.I0(n2724), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n25));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1543_19_lut (.I0(GND_net), .I1(n2596), .I2(n2867), .I3(n26306), 
            .O(n5288[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_18_lut (.I0(GND_net), .I1(n2597), .I2(n2754), .I3(n26305), 
            .O(n5288[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i23_2_lut (.I0(n2725), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n23_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i19_2_lut (.I0(n2727), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n19));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i27_2_lut (.I0(n2723), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n27_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i27_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1543_18 (.CI(n26305), .I0(n2597), .I1(n2754), .CO(n26306));
    SB_LUT4 div_37_LessThan_1845_i17_2_lut (.I0(n2728), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n17));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i29_2_lut (.I0(n2722), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n29_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i31_2_lut (.I0(n2721), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n31));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1543_17_lut (.I0(GND_net), .I1(n2598), .I2(n2638), .I3(n26304), 
            .O(n5288[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_17 (.CI(n26304), .I0(n2598), .I1(n2638), .CO(n26305));
    SB_LUT4 add_1543_16_lut (.I0(GND_net), .I1(n2599), .I2(n2519), .I3(n26303), 
            .O(n5288[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i33_2_lut (.I0(n2720), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n33));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i33_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1543_16 (.CI(n26303), .I0(n2599), .I1(n2519), .CO(n26304));
    SB_LUT4 div_37_LessThan_1845_i39_2_lut (.I0(n2717), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_3974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i41_2_lut (.I0(n2716), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_3975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i43_2_lut (.I0(n2715), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_3976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1845_i35_2_lut (.I0(n2719), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i35_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1535_10 (.CI(n26199), .I0(n1553), .I1(n1742), .CO(n26200));
    SB_LUT4 i29330_1_lut (.I0(n33975), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31169));
    defparam i29330_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_1543_15_lut (.I0(GND_net), .I1(n2600), .I2(n2397), .I3(n26302), 
            .O(n5288[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(n33650), .I1(n32804), .I2(n32802), .I3(n33602), 
            .O(n11425));
    defparam i1_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i26569_1_lut (.I0(n11425), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31181));
    defparam i26569_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3004_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n31627), .I3(n44_adj_3977), 
            .O(n46));   // verilog/uart_rx.v(119[33:55])
    defparam i3004_4_lut.LUT_INIT = 16'hb3a0;
    SB_LUT4 add_1535_9_lut (.I0(GND_net), .I1(n1554), .I2(n1602), .I3(n26198), 
            .O(n5080[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1535_9 (.CI(n26198), .I0(n1554), .I1(n1602), .CO(n26199));
    SB_CARRY add_1543_15 (.CI(n26302), .I0(n2600), .I1(n2397), .CO(n26303));
    SB_LUT4 add_1543_14_lut (.I0(GND_net), .I1(n2601), .I2(n2272), .I3(n26301), 
            .O(n5288[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_14 (.CI(n26301), .I0(n2601), .I1(n2272), .CO(n26302));
    SB_DFFSR r_SM_Main_i0 (.Q(r_SM_Main[0]), .C(clk16MHz), .D(n3), .R(r_SM_Main[2]));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Data_56 (.Q(r_Rx_Data), .C(clk16MHz), .D(r_Rx_Data_R));   // verilog/uart_rx.v(42[10] 46[8])
    SB_DFF r_Rx_Data_R_55 (.Q(r_Rx_Data_R), .C(clk16MHz), .D(RX_N_2));   // verilog/uart_rx.v(42[10] 46[8])
    SB_LUT4 add_1535_8_lut (.I0(GND_net), .I1(n1555), .I2(n1459), .I3(n26197), 
            .O(n5080[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1535_8 (.CI(n26197), .I0(n1555), .I1(n1459), .CO(n26198));
    SB_LUT4 div_37_i642_4_lut (.I0(n805), .I1(baudrate[1]), .I2(n294[19]), 
            .I3(baudrate[0]), .O(n961));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i642_4_lut.LUT_INIT = 16'h9a6a;
    SB_LUT4 div_37_i1663_3_lut (.I0(n2354), .I1(n5236[22]), .I2(n294[8]), 
            .I3(GND_net), .O(n2477));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_933 (.I0(baudrate[6]), .I1(baudrate[7]), .I2(GND_net), 
            .I3(GND_net), .O(n33574));
    defparam i1_2_lut_adj_933.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_934 (.I0(baudrate[8]), .I1(baudrate[9]), .I2(GND_net), 
            .I3(GND_net), .O(n33572));
    defparam i1_2_lut_adj_934.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_935 (.I0(baudrate[22]), .I1(baudrate[23]), .I2(GND_net), 
            .I3(GND_net), .O(n33636));
    defparam i1_2_lut_adj_935.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1744_3_lut (.I0(n2477), .I1(n5262[22]), .I2(n294[7]), 
            .I3(GND_net), .O(n2597));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1823_3_lut (.I0(n2597), .I1(n5288[22]), .I2(n294[6]), 
            .I3(GND_net), .O(n2714));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_936 (.I0(baudrate[20]), .I1(baudrate[21]), .I2(GND_net), 
            .I3(GND_net), .O(n33638));
    defparam i1_2_lut_adj_936.LUT_INIT = 16'heeee;
    SB_LUT4 add_1535_7_lut (.I0(GND_net), .I1(n1556), .I2(n1460), .I3(n26196), 
            .O(n5080[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_937 (.I0(baudrate[30]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n33590));
    defparam i1_2_lut_adj_937.LUT_INIT = 16'heeee;
    SB_LUT4 add_1543_13_lut (.I0(GND_net), .I1(n2602), .I2(n2144), .I3(n26300), 
            .O(n5288[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_13 (.CI(n26300), .I0(n2602), .I1(n2144), .CO(n26301));
    SB_LUT4 div_37_LessThan_1845_i45_2_lut (.I0(n2714), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_3978));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1238_3_lut (.I0(r_Bit_Index[2]), .I1(r_Bit_Index[1]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n479[2]));   // verilog/uart_rx.v(103[36:51])
    defparam i1238_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1231_2_lut (.I0(r_Bit_Index[1]), .I1(\r_Bit_Index[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n479[1]));   // verilog/uart_rx.v(103[36:51])
    defparam i1231_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i745_4_lut (.I0(n961), .I1(n40_adj_3979), .I2(n294[18]), 
            .I3(baudrate[2]), .O(n1114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i745_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i846_3_lut (.I0(n1114), .I1(n5002[20]), .I2(n294[17]), 
            .I3(GND_net), .O(n1264));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i945_3_lut (.I0(n1264), .I1(n5028[20]), .I2(n294[16]), 
            .I3(GND_net), .O(n1411));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1042_3_lut (.I0(n1411), .I1(n5054[20]), .I2(n294[15]), 
            .I3(GND_net), .O(n1555));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26553_1_lut (.I0(n11350), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31165));
    defparam i26553_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1137_3_lut (.I0(n1555), .I1(n5080[20]), .I2(n294[14]), 
            .I3(GND_net), .O(n1696));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1230_3_lut (.I0(n1696), .I1(n5106[20]), .I2(n294[13]), 
            .I3(GND_net), .O(n1834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_938 (.I0(baudrate[29]), .I1(baudrate[24]), .I2(GND_net), 
            .I3(GND_net), .O(n33594));
    defparam i1_2_lut_adj_938.LUT_INIT = 16'heeee;
    SB_LUT4 add_1543_12_lut (.I0(GND_net), .I1(n2603), .I2(n2013), .I3(n26299), 
            .O(n5288[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_12 (.CI(n26299), .I0(n2603), .I1(n2013), .CO(n26300));
    SB_CARRY add_1535_7 (.CI(n26196), .I0(n1556), .I1(n1460), .CO(n26197));
    SB_LUT4 i1_2_lut_4_lut (.I0(baudrate[6]), .I1(baudrate[7]), .I2(baudrate[8]), 
            .I3(baudrate[9]), .O(n33582));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_38_add_2_13_lut (.I0(o_Rx_DV_N_3358[9]), .I1(n294[11]), 
            .I2(VCC_net), .I3(n26066), .O(n32750)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_13_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1535_6_lut (.I0(GND_net), .I1(n1557), .I2(n1011), .I3(n26195), 
            .O(n5080[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_11_lut (.I0(GND_net), .I1(n2604), .I2(n1879), .I3(n26298), 
            .O(n5288[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_11 (.CI(n26298), .I0(n2604), .I1(n1879), .CO(n26299));
    SB_LUT4 add_1543_10_lut (.I0(GND_net), .I1(n2605), .I2(n1742), .I3(n26297), 
            .O(n5288[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_10 (.CI(n26297), .I0(n2605), .I1(n1742), .CO(n26298));
    SB_LUT4 add_1543_9_lut (.I0(GND_net), .I1(n2606), .I2(n1602), .I3(n26296), 
            .O(n5288[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1535_6 (.CI(n26195), .I0(n1557), .I1(n1011), .CO(n26196));
    SB_CARRY sub_38_add_2_13 (.CI(n26066), .I0(n294[11]), .I1(VCC_net), 
            .CO(n26067));
    SB_CARRY add_1543_9 (.CI(n26296), .I0(n2606), .I1(n1602), .CO(n26297));
    SB_LUT4 div_37_i1321_3_lut (.I0(n1834), .I1(n5132[20]), .I2(n294[12]), 
            .I3(GND_net), .O(n1969));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1321_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1543_8_lut (.I0(GND_net), .I1(n2607), .I2(n1459), .I3(n26295), 
            .O(n5288[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_8 (.CI(n26295), .I0(n2607), .I1(n1459), .CO(n26296));
    SB_LUT4 add_1535_5_lut (.I0(GND_net), .I1(n1558), .I2(n856), .I3(n26194), 
            .O(n5080[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1543_7_lut (.I0(GND_net), .I1(n2608), .I2(n1460), .I3(n26294), 
            .O(n5288[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_7 (.CI(n26294), .I0(n2608), .I1(n1460), .CO(n26295));
    SB_CARRY add_1535_5 (.CI(n26194), .I0(n1558), .I1(n856), .CO(n26195));
    SB_LUT4 add_1543_6_lut (.I0(GND_net), .I1(n2609), .I2(n1011), .I3(n26293), 
            .O(n5288[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_6 (.CI(n26293), .I0(n2609), .I1(n1011), .CO(n26294));
    SB_LUT4 add_1535_4_lut (.I0(GND_net), .I1(n1559), .I2(n698), .I3(n26193), 
            .O(n5080[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1535_4 (.CI(n26193), .I0(n1559), .I1(n698), .CO(n26194));
    SB_LUT4 add_1543_5_lut (.I0(GND_net), .I1(n2610), .I2(n856), .I3(n26292), 
            .O(n5288[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1535_3_lut (.I0(GND_net), .I1(n1560), .I2(n858), .I3(n26192), 
            .O(n5080[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_5 (.CI(n26292), .I0(n2610), .I1(n856), .CO(n26293));
    SB_LUT4 add_1543_4_lut (.I0(GND_net), .I1(n2611), .I2(n698), .I3(n26291), 
            .O(n5288[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_12_lut (.I0(GND_net), .I1(n294[10]), .I2(VCC_net), 
            .I3(n26065), .O(o_Rx_DV_N_3358[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_4 (.CI(n26291), .I0(n2611), .I1(n698), .CO(n26292));
    SB_LUT4 add_1543_3_lut (.I0(GND_net), .I1(n2612), .I2(n858), .I3(n26290), 
            .O(n5288[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1543_3 (.CI(n26290), .I0(n2612), .I1(n858), .CO(n26291));
    SB_CARRY add_1535_3 (.CI(n26192), .I0(n1560), .I1(n858), .CO(n26193));
    SB_LUT4 add_1543_2_lut (.I0(n31181), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32836)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1543_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1543_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26290));
    SB_LUT4 add_1535_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n5080[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1535_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_18_lut (.I0(GND_net), .I1(n2476), .I2(n2754), .I3(n26289), 
            .O(n5262[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_12 (.CI(n26065), .I0(n294[10]), .I1(VCC_net), 
            .CO(n26066));
    SB_LUT4 sub_38_add_2_11_lut (.I0(GND_net), .I1(n294[9]), .I2(VCC_net), 
            .I3(n26064), .O(o_Rx_DV_N_3358[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1410_3_lut (.I0(n1969), .I1(n5158[20]), .I2(n294[11]), 
            .I3(GND_net), .O(n2101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1410_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1535_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26192));
    SB_LUT4 add_1534_10_lut (.I0(GND_net), .I1(n1408), .I2(n1742), .I3(n26191), 
            .O(n5054[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(\r_Bit_Index[0] ), 
            .I3(GND_net), .O(n31807));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 add_1542_17_lut (.I0(GND_net), .I1(n2477), .I2(n2638), .I3(n26288), 
            .O(n5262[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1534_9_lut (.I0(GND_net), .I1(n1409), .I2(n1602), .I3(n26190), 
            .O(n5054[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_17 (.CI(n26288), .I0(n2477), .I1(n2638), .CO(n26289));
    SB_CARRY sub_38_add_2_11 (.CI(n26064), .I0(n294[9]), .I1(VCC_net), 
            .CO(n26065));
    SB_CARRY add_1534_9 (.CI(n26190), .I0(n1409), .I1(n1602), .CO(n26191));
    SB_LUT4 i29240_2_lut (.I0(\o_Rx_DV_N_3358[12] ), .I1(n30187), .I2(GND_net), 
            .I3(GND_net), .O(n33886));
    defparam i29240_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i29343_4_lut (.I0(\o_Rx_DV_N_3358[24] ), .I1(n29), .I2(n23), 
            .I3(n33886), .O(n33989));
    defparam i29343_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i2_4_lut (.I0(n32960), .I1(\r_SM_Main_2__N_3316[1] ), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n2));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i2_4_lut.LUT_INIT = 16'hc0c5;
    SB_LUT4 add_1534_8_lut (.I0(GND_net), .I1(n1410), .I2(n1459), .I3(n26189), 
            .O(n5054[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_16_lut (.I0(GND_net), .I1(n2478), .I2(n2519), .I3(n26287), 
            .O(n5262[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_10_lut (.I0(GND_net), .I1(n294[8]), .I2(VCC_net), 
            .I3(n26063), .O(\o_Rx_DV_N_3358[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1534_8 (.CI(n26189), .I0(n1410), .I1(n1459), .CO(n26190));
    SB_LUT4 add_1534_7_lut (.I0(GND_net), .I1(n1411), .I2(n1460), .I3(n26188), 
            .O(n5054[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i1_4_lut (.I0(r_Rx_Data), .I1(n33989), 
            .I2(r_SM_Main[0]), .I3(n27), .O(n7004));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_CARRY add_1534_7 (.CI(n26188), .I0(n1411), .I1(n1460), .CO(n26189));
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_0_i3_3_lut (.I0(n7004), .I1(n2), .I2(r_SM_Main[1]), 
            .I3(GND_net), .O(n3));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_0_i3_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 add_1534_6_lut (.I0(GND_net), .I1(n1412), .I2(n1011), .I3(n26187), 
            .O(n5054[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_16 (.CI(n26287), .I0(n2478), .I1(n2519), .CO(n26288));
    SB_LUT4 add_1542_15_lut (.I0(GND_net), .I1(n2479), .I2(n2397), .I3(n26286), 
            .O(n5262[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1534_6 (.CI(n26187), .I0(n1412), .I1(n1011), .CO(n26188));
    SB_CARRY add_1542_15 (.CI(n26286), .I0(n2479), .I1(n2397), .CO(n26287));
    SB_LUT4 add_1542_14_lut (.I0(GND_net), .I1(n2480), .I2(n2272), .I3(n26285), 
            .O(n5262[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_14 (.CI(n26285), .I0(n2480), .I1(n2272), .CO(n26286));
    SB_LUT4 add_1534_5_lut (.I0(GND_net), .I1(n1413), .I2(n856), .I3(n26186), 
            .O(n5054[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_939 (.I0(baudrate[7]), .I1(baudrate[8]), .I2(GND_net), 
            .I3(GND_net), .O(n33368));
    defparam i1_2_lut_adj_939.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_940 (.I0(baudrate[15]), .I1(baudrate[16]), .I2(GND_net), 
            .I3(GND_net), .O(n33360));
    defparam i1_2_lut_adj_940.LUT_INIT = 16'heeee;
    SB_CARRY sub_38_add_2_10 (.CI(n26063), .I0(n294[8]), .I1(VCC_net), 
            .CO(n26064));
    SB_LUT4 i1_2_lut_adj_941 (.I0(baudrate[11]), .I1(baudrate[12]), .I2(GND_net), 
            .I3(GND_net), .O(n33364));
    defparam i1_2_lut_adj_941.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_942 (.I0(baudrate[9]), .I1(baudrate[10]), .I2(GND_net), 
            .I3(GND_net), .O(n33366));
    defparam i1_2_lut_adj_942.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i2125_3_lut (.I0(n3053), .I1(n5392[16]), .I2(n294[2]), 
            .I3(GND_net), .O(n3158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29146_2_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(GND_net), 
            .I3(GND_net), .O(n33790));
    defparam i29146_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_1534_5 (.CI(n26186), .I0(n1413), .I1(n856), .CO(n26187));
    SB_LUT4 div_37_LessThan_2141_i33_2_lut (.I0(n3158), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_3983));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 sub_38_add_2_9_lut (.I0(GND_net), .I1(n294[7]), .I2(VCC_net), 
            .I3(n26062), .O(\o_Rx_DV_N_3358[7] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2126_3_lut (.I0(n3054), .I1(n5392[15]), .I2(n294[2]), 
            .I3(GND_net), .O(n3159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2126_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i31_2_lut (.I0(n3159), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_3984));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i37_2_lut (.I0(n3156), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_3985));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1534_4_lut (.I0(GND_net), .I1(n1414), .I2(n698), .I3(n26185), 
            .O(n5054[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2124_3_lut (.I0(n3052), .I1(n5392[17]), .I2(n294[2]), 
            .I3(GND_net), .O(n3157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_943 (.I0(baudrate[17]), .I1(baudrate[18]), .I2(GND_net), 
            .I3(GND_net), .O(n33792));
    defparam i1_2_lut_adj_943.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2141_i35_2_lut (.I0(n3157), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_3986));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i29299_4_lut (.I0(n33366), .I1(n33362), .I2(n33364), .I3(n33360), 
            .O(n33945));
    defparam i29299_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2128_3_lut (.I0(n3056), .I1(n5392[13]), .I2(n294[2]), 
            .I3(GND_net), .O(n3161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2128_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1542_13_lut (.I0(GND_net), .I1(n2481), .I2(n2144), .I3(n26284), 
            .O(n5262[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2129_3_lut (.I0(n3057), .I1(n5392[12]), .I2(n294[2]), 
            .I3(GND_net), .O(n3162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i25_2_lut (.I0(n3162), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_3987));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i27_2_lut (.I0(n3161), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_3988));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i27_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1542_13 (.CI(n26284), .I0(n2481), .I1(n2144), .CO(n26285));
    SB_LUT4 i29357_4_lut (.I0(n33975), .I1(n33850), .I2(n33832), .I3(baudrate[4]), 
            .O(n34003));
    defparam i29357_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32488_4_lut (.I0(n33945), .I1(n33792), .I2(n34003), .I3(n33790), 
            .O(n34007));
    defparam i32488_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_i2130_3_lut (.I0(n3058), .I1(n5392[11]), .I2(n294[2]), 
            .I3(GND_net), .O(n3163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2131_3_lut (.I0(n3059), .I1(n5392[10]), .I2(n294[2]), 
            .I3(GND_net), .O(n3164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2131_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_9 (.CI(n26062), .I0(n294[7]), .I1(VCC_net), 
            .CO(n26063));
    SB_LUT4 div_37_LessThan_2141_i21_2_lut (.I0(n3164), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_3989));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i23_2_lut (.I0(n3163), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_3990));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2132_3_lut (.I0(n3060), .I1(n5392[9]), .I2(n294[2]), 
            .I3(GND_net), .O(n3165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i19_2_lut (.I0(n3165), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_3991));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2136_3_lut (.I0(n3064), .I1(n5392[5]), .I2(n294[2]), 
            .I3(GND_net), .O(n3169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2826_2_lut_3_lut_3_lut (.I0(baudrate[2]), .I1(n42_adj_3992), 
            .I2(n7793), .I3(GND_net), .O(n44_adj_3993));   // verilog/uart_rx.v(119[33:55])
    defparam i2826_2_lut_3_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 div_37_i2137_3_lut (.I0(n3065), .I1(n5392[4]), .I2(n294[2]), 
            .I3(GND_net), .O(n3170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2138_3_lut (.I0(n3066), .I1(n5392[3]), .I2(n294[2]), 
            .I3(GND_net), .O(n3171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i9_2_lut (.I0(n3170), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n9));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i9_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i11_2_lut (.I0(n3169), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1542_12_lut (.I0(GND_net), .I1(n2482), .I2(n2013), .I3(n26283), 
            .O(n5262[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2127_3_lut (.I0(n3055), .I1(n5392[14]), .I2(n294[2]), 
            .I3(GND_net), .O(n3160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2133_3_lut (.I0(n3061), .I1(n5392[8]), .I2(n294[2]), 
            .I3(GND_net), .O(n3166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2134_3_lut (.I0(n3062), .I1(n5392[7]), .I2(n294[2]), 
            .I3(GND_net), .O(n3167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2135_3_lut (.I0(n3063), .I1(n5392[6]), .I2(n294[2]), 
            .I3(GND_net), .O(n3168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2141_i13_2_lut (.I0(n3168), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n13));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i15_2_lut (.I0(n3167), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n15));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i17_2_lut (.I0(n3166), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_3994));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i29_2_lut (.I0(n3160), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_3995));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(baudrate[2]), .I1(n42_adj_3992), .I2(baudrate[3]), 
            .I3(n7793), .O(n31700));   // verilog/uart_rx.v(119[33:55])
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hff4f;
    SB_LUT4 i1_2_lut_adj_944 (.I0(baudrate[26]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n33680));
    defparam i1_2_lut_adj_944.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_945 (.I0(n33684), .I1(n33686), .I2(n33592), .I3(n33682), 
            .O(n11383));
    defparam i1_4_lut_adj_945.LUT_INIT = 16'hfffe;
    SB_LUT4 i31057_4_lut (.I0(n29_adj_3995), .I1(n17_adj_3994), .I2(n15), 
            .I3(n13), .O(n35712));
    defparam i31057_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_1542_12 (.CI(n26283), .I0(n2482), .I1(n2013), .CO(n26284));
    SB_CARRY add_1534_4 (.CI(n26185), .I0(n1414), .I1(n698), .CO(n26186));
    SB_LUT4 i31576_4_lut (.I0(n11), .I1(n9), .I2(n3171), .I3(baudrate[2]), 
            .O(n36231));
    defparam i31576_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 add_1542_11_lut (.I0(GND_net), .I1(n2483), .I2(n1879), .I3(n26282), 
            .O(n5262[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31894_4_lut (.I0(n17_adj_3994), .I1(n15), .I2(n13), .I3(n36231), 
            .O(n36549));
    defparam i31894_4_lut.LUT_INIT = 16'hfeff;
    SB_CARRY add_1542_11 (.CI(n26282), .I0(n2483), .I1(n1879), .CO(n26283));
    SB_LUT4 sub_38_add_2_8_lut (.I0(GND_net), .I1(n294[6]), .I2(VCC_net), 
            .I3(n26061), .O(\o_Rx_DV_N_3358[6] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31890_4_lut (.I0(n23_adj_3990), .I1(n21_adj_3989), .I2(n19_adj_3991), 
            .I3(n36549), .O(n36545));
    defparam i31890_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 add_1534_3_lut (.I0(GND_net), .I1(n1415), .I2(n858), .I3(n26184), 
            .O(n5054[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_10_lut (.I0(GND_net), .I1(n2484), .I2(n1742), .I3(n26281), 
            .O(n5262[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_10 (.CI(n26281), .I0(n2484), .I1(n1742), .CO(n26282));
    SB_LUT4 i31070_4_lut (.I0(n29_adj_3995), .I1(n27_adj_3988), .I2(n25_adj_3987), 
            .I3(n36545), .O(n35725));
    defparam i31070_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_1542_9_lut (.I0(GND_net), .I1(n2485), .I2(n1602), .I3(n26280), 
            .O(n5262[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_9 (.CI(n26280), .I0(n2485), .I1(n1602), .CO(n26281));
    SB_CARRY add_1534_3 (.CI(n26184), .I0(n1415), .I1(n858), .CO(n26185));
    SB_LUT4 add_1542_8_lut (.I0(GND_net), .I1(n2486), .I2(n1459), .I3(n26279), 
            .O(n5262[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_946 (.I0(baudrate[28]), .I1(baudrate[27]), .I2(baudrate[31]), 
            .I3(baudrate[26]), .O(n33490));
    defparam i1_4_lut_adj_946.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2141_i6_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3172), .I3(GND_net), .O(n6_c));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i6_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_947 (.I0(n33490), .I1(n33650), .I2(n33594), .I3(n33590), 
            .O(n11431));
    defparam i1_4_lut_adj_947.LUT_INIT = 16'hfffe;
    SB_LUT4 i32171_3_lut (.I0(n6_c), .I1(baudrate[13]), .I2(n29_adj_3995), 
            .I3(GND_net), .O(n36826));   // verilog/uart_rx.v(119[33:55])
    defparam i32171_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1542_8 (.CI(n26279), .I0(n2486), .I1(n1459), .CO(n26280));
    SB_LUT4 div_37_LessThan_2141_i32_3_lut (.I0(n14), .I1(baudrate[17]), 
            .I2(n37_adj_3985), .I3(GND_net), .O(n32));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_450_i46_4_lut (.I0(n35473), .I1(baudrate[2]), 
            .I2(n37121), .I3(n48), .O(n46_adj_3996));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i46_4_lut.LUT_INIT = 16'hc0e8;
    SB_LUT4 add_1542_7_lut (.I0(GND_net), .I1(n2487), .I2(n1460), .I3(n26278), 
            .O(n5262[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_450_i48_3_lut (.I0(n46_adj_3996), .I1(baudrate[3]), 
            .I2(n30958), .I3(GND_net), .O(n48_adj_3997));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_450_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_CARRY add_1542_7 (.CI(n26278), .I0(n2487), .I1(n1460), .CO(n26279));
    SB_LUT4 add_1542_6_lut (.I0(GND_net), .I1(n2488), .I2(n1011), .I3(n26277), 
            .O(n5262[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_948 (.I0(baudrate[12]), .I1(baudrate[13]), .I2(GND_net), 
            .I3(GND_net), .O(n33568));
    defparam i1_2_lut_adj_948.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1743_3_lut (.I0(n2476), .I1(n5262[23]), .I2(n294[7]), 
            .I3(GND_net), .O(n2596));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_949 (.I0(baudrate[10]), .I1(baudrate[11]), .I2(GND_net), 
            .I3(GND_net), .O(n33570));
    defparam i1_2_lut_adj_949.LUT_INIT = 16'heeee;
    SB_CARRY sub_38_add_2_8 (.CI(n26061), .I0(n294[6]), .I1(VCC_net), 
            .CO(n26062));
    SB_CARRY add_1542_6 (.CI(n26277), .I0(n2488), .I1(n1011), .CO(n26278));
    SB_LUT4 sub_38_add_2_7_lut (.I0(GND_net), .I1(n294[5]), .I2(VCC_net), 
            .I3(n26060), .O(\o_Rx_DV_N_3358[5] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1542_5_lut (.I0(GND_net), .I1(n2489), .I2(n856), .I3(n26276), 
            .O(n5262[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_5 (.CI(n26276), .I0(n2489), .I1(n856), .CO(n26277));
    SB_LUT4 add_1534_2_lut (.I0(n31211), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32826)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1534_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i32172_3_lut (.I0(n36826), .I1(baudrate[14]), .I2(n31_adj_3984), 
            .I3(GND_net), .O(n36827));   // verilog/uart_rx.v(119[33:55])
    defparam i32172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31046_4_lut (.I0(n35_adj_3986), .I1(n33_adj_3983), .I2(n31_adj_3984), 
            .I3(n35712), .O(n35701));
    defparam i31046_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32372_4_lut (.I0(n32), .I1(n12), .I2(n37_adj_3985), .I3(n35698), 
            .O(n37027));   // verilog/uart_rx.v(119[33:55])
    defparam i32372_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32124_3_lut (.I0(n36827), .I1(baudrate[15]), .I2(n33_adj_3983), 
            .I3(GND_net), .O(n36779));   // verilog/uart_rx.v(119[33:55])
    defparam i32124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1542_4_lut (.I0(GND_net), .I1(n2490), .I2(n698), .I3(n26275), 
            .O(n5262[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_4 (.CI(n26275), .I0(n2490), .I1(n698), .CO(n26276));
    SB_LUT4 add_1542_3_lut (.I0(GND_net), .I1(n2491), .I2(n858), .I3(n26274), 
            .O(n5262[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1542_3 (.CI(n26274), .I0(n2491), .I1(n858), .CO(n26275));
    SB_LUT4 add_1542_2_lut (.I0(n31185), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32834)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1542_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1542_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26274));
    SB_LUT4 add_1541_17_lut (.I0(GND_net), .I1(n2353), .I2(n2638), .I3(n26273), 
            .O(n5236[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32173_3_lut (.I0(n8), .I1(baudrate[10]), .I2(n23_adj_3990), 
            .I3(GND_net), .O(n36828));   // verilog/uart_rx.v(119[33:55])
    defparam i32173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32174_3_lut (.I0(n36828), .I1(baudrate[11]), .I2(n25_adj_3987), 
            .I3(GND_net), .O(n36829));   // verilog/uart_rx.v(119[33:55])
    defparam i32174_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31558_4_lut (.I0(n25_adj_3987), .I1(n23_adj_3990), .I2(n21_adj_3989), 
            .I3(n35740), .O(n36213));
    defparam i31558_4_lut.LUT_INIT = 16'heeef;
    SB_CARRY add_1534_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26184));
    SB_LUT4 i31932_3_lut (.I0(n10), .I1(baudrate[9]), .I2(n21_adj_3989), 
            .I3(GND_net), .O(n36587));   // verilog/uart_rx.v(119[33:55])
    defparam i31932_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32122_3_lut (.I0(n36829), .I1(baudrate[12]), .I2(n27_adj_3988), 
            .I3(GND_net), .O(n36777));   // verilog/uart_rx.v(119[33:55])
    defparam i32122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1497_3_lut (.I0(n2101), .I1(n5184[20]), .I2(n294[10]), 
            .I3(GND_net), .O(n2230));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32050_4_lut (.I0(n35_adj_3986), .I1(n33_adj_3983), .I2(n31_adj_3984), 
            .I3(n35725), .O(n36705));
    defparam i32050_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32440_4_lut (.I0(n36779), .I1(n37027), .I2(n37_adj_3985), 
            .I3(n35701), .O(n37095));   // verilog/uart_rx.v(119[33:55])
    defparam i32440_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32167_4_lut (.I0(n36777), .I1(n36587), .I2(n27_adj_3988), 
            .I3(n36213), .O(n36822));   // verilog/uart_rx.v(119[33:55])
    defparam i32167_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32450_4_lut (.I0(n36822), .I1(n37095), .I2(n37_adj_3985), 
            .I3(n36705), .O(n37105));   // verilog/uart_rx.v(119[33:55])
    defparam i32450_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_1533_9_lut (.I0(GND_net), .I1(n1261), .I2(n1602), .I3(n26183), 
            .O(n5028[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_16_lut (.I0(GND_net), .I1(n2354), .I2(n2519), .I3(n26272), 
            .O(n5236[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_16 (.CI(n26272), .I0(n2354), .I1(n2519), .CO(n26273));
    SB_LUT4 add_1533_8_lut (.I0(GND_net), .I1(n1262), .I2(n1459), .I3(n26182), 
            .O(n5028[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32451_3_lut (.I0(n37105), .I1(baudrate[18]), .I2(n3155), 
            .I3(GND_net), .O(n37106));   // verilog/uart_rx.v(119[33:55])
    defparam i32451_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32447_3_lut (.I0(n37106), .I1(baudrate[19]), .I2(n3154), 
            .I3(GND_net), .O(n37102));   // verilog/uart_rx.v(119[33:55])
    defparam i32447_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_950 (.I0(n33512), .I1(n33572), .I2(n33574), .I3(n33570), 
            .O(n33524));
    defparam i1_4_lut_adj_950.LUT_INIT = 16'hfffe;
    SB_CARRY add_1533_8 (.CI(n26182), .I0(n1262), .I1(n1459), .CO(n26183));
    SB_LUT4 i32335_3_lut (.I0(n37102), .I1(baudrate[20]), .I2(n3153), 
            .I3(GND_net), .O(n36990));   // verilog/uart_rx.v(119[33:55])
    defparam i32335_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32336_3_lut (.I0(n36990), .I1(baudrate[21]), .I2(n3152), 
            .I3(GND_net), .O(n36991));   // verilog/uart_rx.v(119[33:55])
    defparam i32336_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32130_3_lut (.I0(n36991), .I1(baudrate[22]), .I2(n3151), 
            .I3(GND_net), .O(n48_adj_3998));   // verilog/uart_rx.v(119[33:55])
    defparam i32130_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1533_7_lut (.I0(GND_net), .I1(n1263), .I2(n1460), .I3(n26181), 
            .O(n5028[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_951 (.I0(n33524), .I1(n11431), .I2(n33516), .I3(n33652), 
            .O(n11437));
    defparam i1_4_lut_adj_951.LUT_INIT = 16'hfffe;
    SB_CARRY add_1533_7 (.CI(n26181), .I0(n1263), .I1(n1460), .CO(n26182));
    SB_LUT4 div_37_i2123_3_lut (.I0(n3051), .I1(n5392[18]), .I2(n294[2]), 
            .I3(GND_net), .O(n3156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1533_6_lut (.I0(GND_net), .I1(n1264), .I2(n1011), .I3(n26180), 
            .O(n5028[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2122_3_lut (.I0(n3050), .I1(n5392[19]), .I2(n294[2]), 
            .I3(GND_net), .O(n3155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18038_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22172));
    defparam i18038_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_1533_6 (.CI(n26180), .I0(n1264), .I1(n1011), .CO(n26181));
    SB_LUT4 add_1533_5_lut (.I0(GND_net), .I1(n1265), .I2(n856), .I3(n26179), 
            .O(n5028[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1533_5 (.CI(n26179), .I0(n1265), .I1(n856), .CO(n26180));
    SB_DFF r_Rx_Byte_i7 (.Q(rx_data[7]), .C(clk16MHz), .D(n15362));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i6 (.Q(rx_data[6]), .C(clk16MHz), .D(n15361));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i5 (.Q(rx_data[5]), .C(clk16MHz), .D(n15360));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i4 (.Q(rx_data[4]), .C(clk16MHz), .D(n15359));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i3 (.Q(rx_data[3]), .C(clk16MHz), .D(n15358));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i2 (.Q(rx_data[2]), .C(clk16MHz), .D(n15357));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFF r_Rx_Byte_i1 (.Q(rx_data[1]), .C(clk16MHz), .D(n15356));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1541_15_lut (.I0(GND_net), .I1(n2355), .I2(n2397), .I3(n26271), 
            .O(n5236[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_15 (.CI(n26271), .I0(n2355), .I1(n2397), .CO(n26272));
    SB_LUT4 add_1541_14_lut (.I0(GND_net), .I1(n2356), .I2(n2272), .I3(n26270), 
            .O(n5236[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_14 (.CI(n26270), .I0(n2356), .I1(n2272), .CO(n26271));
    SB_LUT4 i2997_2_lut_3_lut_3_lut (.I0(baudrate[3]), .I1(n42_adj_3999), 
            .I2(n7803), .I3(GND_net), .O(n44_adj_3977));   // verilog/uart_rx.v(119[33:55])
    defparam i2997_2_lut_3_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 add_1541_13_lut (.I0(GND_net), .I1(n2357), .I2(n2144), .I3(n26269), 
            .O(n5236[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_13 (.CI(n26269), .I0(n2357), .I1(n2144), .CO(n26270));
    SB_LUT4 add_1533_4_lut (.I0(GND_net), .I1(n1266), .I2(n698), .I3(n26178), 
            .O(n5028[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1822_3_lut (.I0(n2596), .I1(n5288[23]), .I2(n294[6]), 
            .I3(GND_net), .O(n2713));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1822_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1533_4 (.CI(n26178), .I0(n1266), .I1(n698), .CO(n26179));
    SB_LUT4 add_1541_12_lut (.I0(GND_net), .I1(n2358), .I2(n2013), .I3(n26268), 
            .O(n5236[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_12 (.CI(n26268), .I0(n2358), .I1(n2013), .CO(n26269));
    SB_LUT4 add_1541_11_lut (.I0(GND_net), .I1(n2359), .I2(n1879), .I3(n26267), 
            .O(n5236[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1533_3_lut (.I0(GND_net), .I1(n1267), .I2(n858), .I3(n26177), 
            .O(n5028[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut (.I0(n11437), .I1(n48_adj_3997), .I2(baudrate[0]), 
            .I3(GND_net), .O(n805));
    defparam i1_3_lut.LUT_INIT = 16'hefef;
    SB_DFFESR r_Clock_Count_1114__i1 (.Q(r_Clock_Count[1]), .C(clk16MHz), 
            .E(n13469), .D(n1[1]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_DFFSR r_SM_Main_i1 (.Q(r_SM_Main[1]), .C(clk16MHz), .D(n3_adj_4000), 
            .R(r_SM_Main[2]));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1541_11 (.CI(n26267), .I0(n2359), .I1(n1879), .CO(n26268));
    SB_LUT4 add_1541_10_lut (.I0(GND_net), .I1(n2360), .I2(n1742), .I3(n26266), 
            .O(n5236[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1533_3 (.CI(n26177), .I0(n1267), .I1(n858), .CO(n26178));
    SB_LUT4 add_1533_2_lut (.I0(n31215), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32824)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1533_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1541_10 (.CI(n26266), .I0(n2360), .I1(n1742), .CO(n26267));
    SB_CARRY add_1533_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26177));
    SB_CARRY sub_38_add_2_7 (.CI(n26060), .I0(n294[5]), .I1(VCC_net), 
            .CO(n26061));
    SB_LUT4 add_1541_9_lut (.I0(GND_net), .I1(n2361), .I2(n1602), .I3(n26265), 
            .O(n5236[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_9 (.CI(n26265), .I0(n2361), .I1(n1602), .CO(n26266));
    SB_LUT4 add_1541_8_lut (.I0(GND_net), .I1(n2362), .I2(n1459), .I3(n26264), 
            .O(n5236[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_8 (.CI(n26264), .I0(n2362), .I1(n1459), .CO(n26265));
    SB_LUT4 add_1541_7_lut (.I0(GND_net), .I1(n2363), .I2(n1460), .I3(n26263), 
            .O(n5236[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1532_8_lut (.I0(GND_net), .I1(n1111), .I2(n1459), .I3(n26176), 
            .O(n5002[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_7 (.CI(n26263), .I0(n2363), .I1(n1460), .CO(n26264));
    SB_LUT4 add_1532_7_lut (.I0(GND_net), .I1(n1112), .I2(n1460), .I3(n26175), 
            .O(n5002[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1532_7 (.CI(n26175), .I0(n1112), .I1(n1460), .CO(n26176));
    SB_LUT4 add_1532_6_lut (.I0(GND_net), .I1(n1113), .I2(n1011), .I3(n26174), 
            .O(n5002[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_6_lut (.I0(GND_net), .I1(n2364), .I2(n1011), .I3(n26262), 
            .O(n5236[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1532_6 (.CI(n26174), .I0(n1113), .I1(n1011), .CO(n26175));
    SB_LUT4 sub_38_add_2_6_lut (.I0(GND_net), .I1(n294[4]), .I2(VCC_net), 
            .I3(n26059), .O(\o_Rx_DV_N_3358[4] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1541_6 (.CI(n26262), .I0(n2364), .I1(n1011), .CO(n26263));
    SB_LUT4 add_1532_5_lut (.I0(GND_net), .I1(n1114), .I2(n856), .I3(n26173), 
            .O(n5002[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1541_5_lut (.I0(GND_net), .I1(n2365), .I2(n856), .I3(n26261), 
            .O(n5236[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i742_4_lut (.I0(n30962), .I1(n294[18]), .I2(n46), .I3(baudrate[5]), 
            .O(n1111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i742_4_lut.LUT_INIT = 16'h9559;
    SB_LUT4 i1_3_lut_4_lut_4_lut_adj_952 (.I0(baudrate[3]), .I1(n42_adj_3999), 
            .I2(baudrate[4]), .I3(n7803), .O(n31627));   // verilog/uart_rx.v(119[33:55])
    defparam i1_3_lut_4_lut_4_lut_adj_952.LUT_INIT = 16'hff4f;
    SB_CARRY add_1541_5 (.CI(n26261), .I0(n2365), .I1(n856), .CO(n26262));
    SB_LUT4 i32591_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11425), .I3(n48_adj_4001), .O(n294[8]));
    defparam i32591_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1532_5 (.CI(n26173), .I0(n1114), .I1(n856), .CO(n26174));
    SB_LUT4 add_1532_4_lut (.I0(GND_net), .I1(n1115), .I2(n698), .I3(n26172), 
            .O(n5002[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1582_3_lut (.I0(n2230), .I1(n5210[20]), .I2(n294[9]), 
            .I3(GND_net), .O(n2356));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29253_2_lut_3_lut_4_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11425), .I3(baudrate[15]), .O(n33899));
    defparam i29253_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i29252_1_lut_2_lut_3_lut (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(n11425), .I3(GND_net), .O(n31189));
    defparam i29252_1_lut_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_DFF r_SM_Main_i2 (.Q(r_SM_Main[2]), .C(clk16MHz), .D(n37443));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 add_1541_4_lut (.I0(GND_net), .I1(n2366), .I2(n698), .I3(n26260), 
            .O(n5236[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1532_4 (.CI(n26172), .I0(n1115), .I1(n698), .CO(n26173));
    SB_CARRY sub_38_add_2_6 (.CI(n26059), .I0(n294[4]), .I1(VCC_net), 
            .CO(n26060));
    SB_LUT4 div_37_i1665_3_lut (.I0(n2356), .I1(n5236[20]), .I2(n294[8]), 
            .I3(GND_net), .O(n2479));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1665_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1541_4 (.CI(n26260), .I0(n2366), .I1(n698), .CO(n26261));
    SB_LUT4 sub_38_add_2_5_lut (.I0(GND_net), .I1(n294[3]), .I2(VCC_net), 
            .I3(n26058), .O(\o_Rx_DV_N_3358[3] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1532_3_lut (.I0(GND_net), .I1(n1116), .I2(n858), .I3(n26171), 
            .O(n5002[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1532_3 (.CI(n26171), .I0(n1116), .I1(n858), .CO(n26172));
    SB_LUT4 add_1532_2_lut (.I0(n31219), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32822)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1532_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1532_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26171));
    SB_LUT4 add_1541_3_lut (.I0(GND_net), .I1(n2367), .I2(n858), .I3(n26259), 
            .O(n5236[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32580_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n33899), .I3(n48_adj_4002), .O(n294[11]));
    defparam i32580_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_CARRY add_1541_3 (.CI(n26259), .I0(n2367), .I1(n858), .CO(n26260));
    SB_LUT4 i29297_2_lut_3_lut_4_lut (.I0(baudrate[13]), .I1(baudrate[14]), 
            .I2(n33899), .I3(baudrate[12]), .O(n33943));
    defparam i29297_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_1541_2_lut (.I0(n31189), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32832)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1541_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1541_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26259));
    SB_LUT4 add_1540_16_lut (.I0(GND_net), .I1(n2227), .I2(n2519), .I3(n26258), 
            .O(n5210[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1318_3_lut (.I0(n1831), .I1(n5132[23]), .I2(n294[12]), 
            .I3(GND_net), .O(n1966));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1318_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1407_3_lut (.I0(n1966), .I1(n5158[23]), .I2(n294[11]), 
            .I3(GND_net), .O(n2098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1540_15_lut (.I0(GND_net), .I1(n2228), .I2(n2397), .I3(n26257), 
            .O(n5210[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_15 (.CI(n26257), .I0(n2228), .I1(n2397), .CO(n26258));
    SB_LUT4 add_1540_14_lut (.I0(GND_net), .I1(n2229), .I2(n2272), .I3(n26256), 
            .O(n5210[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18036_2_lut (.I0(baudrate[1]), .I1(baudrate[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22170));
    defparam i18036_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1579_3_lut (.I0(n2227), .I1(n5210[23]), .I2(n294[9]), 
            .I3(GND_net), .O(n2353));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1579_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29265_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[29]), .I3(baudrate[24]), .O(n33911));
    defparam i29265_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1662_3_lut (.I0(n2353), .I1(n5236[23]), .I2(n294[8]), 
            .I3(GND_net), .O(n2476));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i942_3_lut (.I0(n1261), .I1(n5028[23]), .I2(n294[16]), 
            .I3(GND_net), .O(n1408));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i942_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_14 (.CI(n26256), .I0(n2229), .I1(n2272), .CO(n26257));
    SB_LUT4 i29220_2_lut (.I0(baudrate[21]), .I1(baudrate[22]), .I2(GND_net), 
            .I3(GND_net), .O(n33866));
    defparam i29220_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(baudrate[28]), .I1(baudrate[26]), 
            .I2(baudrate[24]), .I3(baudrate[31]), .O(n33554));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1746_3_lut (.I0(n2479), .I1(n5262[20]), .I2(n294[7]), 
            .I3(GND_net), .O(n2599));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1825_3_lut (.I0(n2599), .I1(n5288[20]), .I2(n294[6]), 
            .I3(GND_net), .O(n2716));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29339_4_lut (.I0(n33866), .I1(n33516), .I2(n33570), .I3(baudrate[9]), 
            .O(n33985));
    defparam i29339_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Clock_Count_1114__i2 (.Q(r_Clock_Count[2]), .C(clk16MHz), 
            .E(n13469), .D(n1[2]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i1_4_lut_adj_953 (.I0(baudrate[23]), .I1(baudrate[28]), .I2(baudrate[27]), 
            .I3(baudrate[0]), .O(n33156));
    defparam i1_4_lut_adj_953.LUT_INIT = 16'h0100;
    SB_LUT4 i2990_2_lut_4_lut (.I0(n961), .I1(baudrate[2]), .I2(n962), 
            .I3(baudrate[1]), .O(n42_adj_3999));   // verilog/uart_rx.v(119[33:55])
    defparam i2990_2_lut_4_lut.LUT_INIT = 16'hb2bb;
    SB_CARRY sub_38_add_2_5 (.CI(n26058), .I0(n294[3]), .I1(VCC_net), 
            .CO(n26059));
    SB_LUT4 i29277_4_lut (.I0(baudrate[25]), .I1(baudrate[31]), .I2(baudrate[24]), 
            .I3(baudrate[29]), .O(n33923));
    defparam i29277_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR r_Clock_Count_1114__i3 (.Q(r_Clock_Count[3]), .C(clk16MHz), 
            .E(n13469), .D(n1[3]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1114__i4 (.Q(r_Clock_Count[4]), .C(clk16MHz), 
            .E(n13469), .D(n1[4]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1114__i5 (.Q(r_Clock_Count[5]), .C(clk16MHz), 
            .E(n13469), .D(n1[5]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1114__i6 (.Q(r_Clock_Count[6]), .C(clk16MHz), 
            .E(n13469), .D(n1[6]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_DFFESR r_Clock_Count_1114__i7 (.Q(r_Clock_Count[7]), .C(clk16MHz), 
            .E(n13469), .D(n1[7]), .R(n14741));   // verilog/uart_rx.v(121[34:51])
    SB_LUT4 i2988_2_lut_3_lut (.I0(baudrate[2]), .I1(n962), .I2(baudrate[1]), 
            .I3(GND_net), .O(n6882));   // verilog/uart_rx.v(119[33:55])
    defparam i2988_2_lut_3_lut.LUT_INIT = 16'h4545;
    SB_LUT4 i1_4_lut_adj_954 (.I0(n33832), .I1(n33156), .I2(n33680), .I3(baudrate[16]), 
            .O(n33184));
    defparam i1_4_lut_adj_954.LUT_INIT = 16'h0004;
    SB_LUT4 sub_38_add_2_4_lut (.I0(GND_net), .I1(n294[2]), .I2(VCC_net), 
            .I3(n26057), .O(\o_Rx_DV_N_3358[2] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1540_13_lut (.I0(GND_net), .I1(n2230), .I2(n2144), .I3(n26255), 
            .O(n5210[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_13 (.CI(n26255), .I0(n2230), .I1(n2144), .CO(n26256));
    SB_LUT4 i29231_1_lut_2_lut (.I0(baudrate[17]), .I1(n11425), .I2(GND_net), 
            .I3(GND_net), .O(n31185));
    defparam i29231_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_i2156_1_lut (.I0(baudrate[19]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2156_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2121_3_lut (.I0(n3049), .I1(n5392[20]), .I2(n294[2]), 
            .I3(GND_net), .O(n3154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2155_1_lut (.I0(baudrate[20]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2155_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i26565_1_lut (.I0(n11428), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31177));
    defparam i26565_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_1540_12_lut (.I0(GND_net), .I1(n2231), .I2(n2013), .I3(n26254), 
            .O(n5210[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_12 (.CI(n26254), .I0(n2231), .I1(n2013), .CO(n26255));
    SB_LUT4 i32572_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n33943), .I3(n48_adj_4003), .O(n294[14]));
    defparam i32572_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i29321_2_lut_3_lut_4_lut (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(n33943), .I3(baudrate[9]), .O(n33967));
    defparam i29321_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY sub_38_add_2_4 (.CI(n26057), .I0(n294[2]), .I1(VCC_net), 
            .CO(n26058));
    SB_LUT4 div_37_i2120_3_lut (.I0(n3048), .I1(n5392[21]), .I2(n294[2]), 
            .I3(GND_net), .O(n3153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1540_11_lut (.I0(GND_net), .I1(n2232), .I2(n1879), .I3(n26253), 
            .O(n5210[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1540_11 (.CI(n26253), .I0(n2232), .I1(n1879), .CO(n26254));
    SB_LUT4 add_1540_10_lut (.I0(GND_net), .I1(n2233), .I2(n1742), .I3(n26252), 
            .O(n5210[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2083_1_lut (.I0(baudrate[21]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2083_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2119_3_lut (.I0(n3047), .I1(n5392[22]), .I2(n294[2]), 
            .I3(GND_net), .O(n3152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2119_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_10 (.CI(n26252), .I0(n2233), .I1(n1742), .CO(n26253));
    SB_LUT4 add_1548_25_lut (.I0(GND_net), .I1(n3151), .I2(n3186), .I3(n26407), 
            .O(n5418[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_955 (.I0(n33636), .I1(n33544), .I2(n33336), .I3(baudrate[19]), 
            .O(n33356));
    defparam i1_4_lut_adj_955.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_956 (.I0(n33356), .I1(n33596), .I2(n33638), .I3(n33594), 
            .O(n11428));
    defparam i1_4_lut_adj_956.LUT_INIT = 16'hfffe;
    SB_LUT4 i32540_2_lut_4_lut (.I0(n37070), .I1(baudrate[13]), .I2(n2098), 
            .I3(n11416), .O(n294[10]));   // verilog/uart_rx.v(119[33:55])
    defparam i32540_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 add_1548_24_lut (.I0(GND_net), .I1(n3152), .I2(n3082), .I3(n26406), 
            .O(n5418[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_24 (.CI(n26406), .I0(n3152), .I1(n3082), .CO(n26407));
    SB_LUT4 add_1540_9_lut (.I0(GND_net), .I1(n2234), .I2(n1602), .I3(n26251), 
            .O(n5210[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_23_lut (.I0(GND_net), .I1(n3153), .I2(n3188), .I3(n26405), 
            .O(n5418[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_23 (.CI(n26405), .I0(n3153), .I1(n3188), .CO(n26406));
    SB_LUT4 add_1548_22_lut (.I0(GND_net), .I1(n3154), .I2(n3084), .I3(n26404), 
            .O(n5418[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31328_4_lut (.I0(n37), .I1(n25), .I2(n23_c), .I3(n21), 
            .O(n35983));
    defparam i31328_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i29351_4_lut (.I0(n33923), .I1(n33850), .I2(n33854), .I3(n33792), 
            .O(n33997));
    defparam i29351_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31796_4_lut (.I0(n19), .I1(n17), .I2(n2729), .I3(baudrate[2]), 
            .O(n36451));
    defparam i31796_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 div_37_i2153_1_lut (.I0(baudrate[22]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2153_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2118_3_lut (.I0(n3046), .I1(n5392[23]), .I2(n294[2]), 
            .I3(GND_net), .O(n3151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2118_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_9 (.CI(n26251), .I0(n2234), .I1(n1602), .CO(n26252));
    SB_LUT4 i31982_4_lut (.I0(n25), .I1(n23_c), .I2(n21), .I3(n36451), 
            .O(n36637));
    defparam i31982_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31980_4_lut (.I0(n31), .I1(n29_c), .I2(n27_c), .I3(n36637), 
            .O(n36635));
    defparam i31980_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32466_4_lut (.I0(n33985), .I1(n35657), .I2(n33997), .I3(n33184), 
            .O(n37121));
    defparam i32466_4_lut.LUT_INIT = 16'hc9cc;
    SB_LUT4 i31330_4_lut (.I0(n37), .I1(n35), .I2(n33), .I3(n36635), 
            .O(n35985));
    defparam i31330_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32537_2_lut_4_lut (.I0(n36879), .I1(baudrate[10]), .I2(n1693), 
            .I3(n11444), .O(n294[13]));   // verilog/uart_rx.v(119[33:55])
    defparam i32537_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i32515_2_lut_3_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n33971), .I3(n48_adj_4004), .O(n294[19]));
    defparam i32515_2_lut_3_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 add_1540_8_lut (.I0(GND_net), .I1(n2235), .I2(n1459), .I3(n26250), 
            .O(n5210[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_22 (.CI(n26404), .I0(n3154), .I1(n3084), .CO(n26405));
    SB_LUT4 div_37_LessThan_1922_i14_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2843), .I3(GND_net), .O(n14_adj_4005));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_965_i34_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32824), .I3(n48_adj_4006), .O(n34));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i34_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i31293_2_lut_4_lut (.I0(n2838), .I1(baudrate[8]), .I2(n2842), 
            .I3(baudrate[4]), .O(n35948));
    defparam i31293_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i2047_3_lut (.I0(n2938), .I1(n5366[23]), .I2(n294[3]), 
            .I3(GND_net), .O(n3046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2055_3_lut (.I0(n2946), .I1(n5366[15]), .I2(n294[3]), 
            .I3(GND_net), .O(n3054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2048_3_lut (.I0(n2939), .I1(n5366[22]), .I2(n294[3]), 
            .I3(GND_net), .O(n3047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2049_3_lut (.I0(n2940), .I1(n5366[21]), .I2(n294[3]), 
            .I3(GND_net), .O(n3048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2157_1_lut (.I0(baudrate[18]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2977));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2157_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i26561_1_lut (.I0(n11431), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31173));
    defparam i26561_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2159_1_lut (.I0(baudrate[16]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2754));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2159_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1922_i16_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2838), .I3(GND_net), .O(n16));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1902_3_lut (.I0(n2716), .I1(n5314[20]), .I2(n294[5]), 
            .I3(GND_net), .O(n2830));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i18_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2840), .I3(GND_net), .O(n18));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1766_i37_2_lut (.I0(n2601), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4007));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i43_2_lut (.I0(n2598), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4008));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i41_2_lut (.I0(n2599), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4009));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31269_2_lut_4_lut (.I0(n2830), .I1(baudrate[16]), .I2(n2839), 
            .I3(baudrate[7]), .O(n35924));
    defparam i31269_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1766_i39_2_lut (.I0(n2600), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4010));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i31_2_lut (.I0(n2604), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i33_2_lut (.I0(n2603), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4012));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i35_2_lut (.I0(n2602), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i19_2_lut (.I0(n2610), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4014));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i21_2_lut (.I0(n2609), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4015));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i27_2_lut (.I0(n2606), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4016));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i29_2_lut (.I0(n2605), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4017));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i23_2_lut (.I0(n2608), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4018));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i25_2_lut (.I0(n2607), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4019));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i17_2_lut (.I0(n2611), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4020));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i20_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2830), .I3(GND_net), .O(n20));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31410_4_lut (.I0(n23_adj_4018), .I1(n21_adj_4015), .I2(n19_adj_4014), 
            .I3(n17_adj_4020), .O(n36065));
    defparam i31410_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31405_4_lut (.I0(n29_adj_4017), .I1(n27_adj_4016), .I2(n25_adj_4019), 
            .I3(n36065), .O(n36060));
    defparam i31405_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32155_4_lut (.I0(n35_adj_4013), .I1(n33_adj_4012), .I2(n31_adj_4011), 
            .I3(n36060), .O(n36810));
    defparam i32155_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i2050_3_lut (.I0(n2941), .I1(n5366[20]), .I2(n294[3]), 
            .I3(GND_net), .O(n3049));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2053_3_lut (.I0(n2944), .I1(n5366[17]), .I2(n294[3]), 
            .I3(GND_net), .O(n3052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2053_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_8 (.CI(n26250), .I0(n2235), .I1(n1459), .CO(n26251));
    SB_LUT4 div_37_LessThan_2070_i35_2_lut (.I0(n3052), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4021));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1766_i16_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2612), .I3(GND_net), .O(n16_adj_4022));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i16_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2051_3_lut (.I0(n2942), .I1(n5366[19]), .I2(n294[3]), 
            .I3(GND_net), .O(n3050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i39_2_lut (.I0(n3050), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4023));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2054_3_lut (.I0(n2945), .I1(n5366[16]), .I2(n294[3]), 
            .I3(GND_net), .O(n3053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32024_3_lut (.I0(n16_adj_4022), .I1(baudrate[13]), .I2(n39_adj_4010), 
            .I3(GND_net), .O(n36679));   // verilog/uart_rx.v(119[33:55])
    defparam i32024_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32025_3_lut (.I0(n36679), .I1(baudrate[14]), .I2(n41_adj_4009), 
            .I3(GND_net), .O(n36680));   // verilog/uart_rx.v(119[33:55])
    defparam i32025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1548_21_lut (.I0(GND_net), .I1(n3155), .I2(n2977), .I3(n26403), 
            .O(n5418[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2070_i33_2_lut (.I0(n3053), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4024));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2052_3_lut (.I0(n2943), .I1(n5366[18]), .I2(n294[3]), 
            .I3(GND_net), .O(n3051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2052_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31808_4_lut (.I0(n41_adj_4009), .I1(n39_adj_4010), .I2(n27_adj_4016), 
            .I3(n36063), .O(n36463));
    defparam i31808_4_lut.LUT_INIT = 16'heeef;
    SB_CARRY add_1548_21 (.CI(n26403), .I0(n3155), .I1(n2977), .CO(n26404));
    SB_LUT4 i32105_3_lut (.I0(n22), .I1(baudrate[7]), .I2(n27_adj_4016), 
            .I3(GND_net), .O(n36760));   // verilog/uart_rx.v(119[33:55])
    defparam i32105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1548_20_lut (.I0(GND_net), .I1(n3156), .I2(n2867), .I3(n26402), 
            .O(n5418[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1134_3_lut (.I0(n1552), .I1(n5080[23]), .I2(n294[14]), 
            .I3(GND_net), .O(n1693));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1134_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1548_20 (.CI(n26402), .I0(n3156), .I1(n2867), .CO(n26403));
    SB_LUT4 i31661_3_lut (.I0(n36680), .I1(baudrate[15]), .I2(n43_adj_4008), 
            .I3(GND_net), .O(n36316));   // verilog/uart_rx.v(119[33:55])
    defparam i31661_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i37_2_lut (.I0(n3051), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4025));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32610_2_lut_3_lut_4_lut (.I0(\r_SM_Main_2__N_3316[1] ), .I1(r_SM_Main[1]), 
            .I2(r_SM_Main[0]), .I3(r_SM_Main[2]), .O(n13594));
    defparam i32610_2_lut_3_lut_4_lut.LUT_INIT = 16'h0007;
    SB_LUT4 div_37_i2056_3_lut (.I0(n2947), .I1(n5366[14]), .I2(n294[3]), 
            .I3(GND_net), .O(n3055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1766_i28_3_lut (.I0(n20_adj_4026), .I1(baudrate[9]), 
            .I2(n31_adj_4011), .I3(GND_net), .O(n28));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2057_3_lut (.I0(n2948), .I1(n5366[13]), .I2(n294[3]), 
            .I3(GND_net), .O(n3056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32325_4_lut (.I0(n28), .I1(n18_adj_4027), .I2(n31_adj_4011), 
            .I3(n36054), .O(n36980));   // verilog/uart_rx.v(119[33:55])
    defparam i32325_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32326_3_lut (.I0(n36980), .I1(baudrate[10]), .I2(n33_adj_4012), 
            .I3(GND_net), .O(n36981));   // verilog/uart_rx.v(119[33:55])
    defparam i32326_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i27_2_lut (.I0(n3056), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4028));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i29_2_lut (.I0(n3055), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4029));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32214_3_lut (.I0(n36981), .I1(baudrate[11]), .I2(n35_adj_4013), 
            .I3(GND_net), .O(n36869));   // verilog/uart_rx.v(119[33:55])
    defparam i32214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31810_4_lut (.I0(n41_adj_4009), .I1(n39_adj_4010), .I2(n37_adj_4007), 
            .I3(n36810), .O(n36465));
    defparam i31810_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_i2058_3_lut (.I0(n2949), .I1(n5366[12]), .I2(n294[3]), 
            .I3(GND_net), .O(n3057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2059_3_lut (.I0(n2950), .I1(n5366[11]), .I2(n294[3]), 
            .I3(GND_net), .O(n3058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32211_4_lut (.I0(n36316), .I1(n36760), .I2(n43_adj_4008), 
            .I3(n36463), .O(n36866));   // verilog/uart_rx.v(119[33:55])
    defparam i32211_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31659_3_lut (.I0(n36869), .I1(baudrate[12]), .I2(n37_adj_4007), 
            .I3(GND_net), .O(n36314));   // verilog/uart_rx.v(119[33:55])
    defparam i31659_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32374_4_lut (.I0(n36314), .I1(n36866), .I2(n43_adj_4008), 
            .I3(n36465), .O(n37029));   // verilog/uart_rx.v(119[33:55])
    defparam i32374_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_2070_i23_2_lut (.I0(n3058), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4030));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32375_3_lut (.I0(n37029), .I1(baudrate[16]), .I2(n2597), 
            .I3(GND_net), .O(n37030));   // verilog/uart_rx.v(119[33:55])
    defparam i32375_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1540_7_lut (.I0(GND_net), .I1(n2236), .I2(n1460), .I3(n26249), 
            .O(n5210[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i26549_1_lut_4_lut (.I0(n33684), .I1(n33686), .I2(n33592), 
            .I3(n33682), .O(n31161));
    defparam i26549_1_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_i1916_3_lut (.I0(n2730), .I1(n5314[6]), .I2(n294[5]), 
            .I3(GND_net), .O(n2844));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1916_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i25_2_lut (.I0(n3057), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4031));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i39_2_lut (.I0(n2480), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4032));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i45_2_lut (.I0(n2477), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_4033));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i843_3_lut (.I0(n1111), .I1(n5002[23]), .I2(n294[17]), 
            .I3(GND_net), .O(n1261));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2065_3_lut (.I0(n2956), .I1(n5366[5]), .I2(n294[3]), 
            .I3(GND_net), .O(n3064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2066_3_lut (.I0(n2957), .I1(n5366[4]), .I2(n294[3]), 
            .I3(GND_net), .O(n3065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i43_2_lut (.I0(n2478), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4034));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i41_2_lut (.I0(n2479), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4035));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i33_2_lut (.I0(n2483), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4036));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i35_2_lut (.I0(n2482), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4037));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i37_2_lut (.I0(n2481), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4038));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i27_2_lut (.I0(n2486), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4039));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i29_2_lut (.I0(n2485), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4040));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i31_2_lut (.I0(n2484), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4041));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i11_2_lut (.I0(n3064), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n11_adj_4042));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2064_3_lut (.I0(n2955), .I1(n5366[6]), .I2(n294[3]), 
            .I3(GND_net), .O(n3063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2064_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i13_2_lut (.I0(n3063), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4043));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2060_3_lut (.I0(n2951), .I1(n5366[10]), .I2(n294[3]), 
            .I3(GND_net), .O(n3059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i21_2_lut (.I0(n2489), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4044));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i23_2_lut (.I0(n2488), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4045));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i23_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1540_7 (.CI(n26249), .I0(n2236), .I1(n1460), .CO(n26250));
    SB_LUT4 add_1540_6_lut (.I0(GND_net), .I1(n2237), .I2(n1011), .I3(n26248), 
            .O(n5210[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_3_lut (.I0(GND_net), .I1(n294[1]), .I2(VCC_net), 
            .I3(n26056), .O(\o_Rx_DV_N_3358[1] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_2070_i21_2_lut (.I0(n3059), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4046));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i25_2_lut (.I0(n2487), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4047));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i2061_3_lut (.I0(n2952), .I1(n5366[9]), .I2(n294[3]), 
            .I3(GND_net), .O(n3060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2063_3_lut (.I0(n2954), .I1(n5366[7]), .I2(n294[3]), 
            .I3(GND_net), .O(n3062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i19_2_lut (.I0(n2490), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4048));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i19_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY sub_38_add_2_3 (.CI(n26056), .I0(n294[1]), .I1(VCC_net), 
            .CO(n26057));
    SB_LUT4 div_37_i2062_3_lut (.I0(n2953), .I1(n5366[8]), .I2(n294[3]), 
            .I3(GND_net), .O(n3061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2062_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i535_4_lut (.I0(n37121), .I1(n44_adj_4049), .I2(n294[20]), 
            .I3(baudrate[2]), .O(n803));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i535_4_lut.LUT_INIT = 16'h9565;
    SB_CARRY add_1540_6 (.CI(n26248), .I0(n2237), .I1(n1011), .CO(n26249));
    SB_LUT4 div_37_LessThan_2070_i15_2_lut (.I0(n3062), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4050));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1540_5_lut (.I0(GND_net), .I1(n2238), .I2(n856), .I3(n26247), 
            .O(n5210[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30910_4_lut (.I0(n25_adj_4047), .I1(n23_adj_4045), .I2(n21_adj_4044), 
            .I3(n19_adj_4048), .O(n35565));
    defparam i30910_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_1540_5 (.CI(n26247), .I0(n2238), .I1(n856), .CO(n26248));
    SB_LUT4 i30895_4_lut (.I0(n31_adj_4041), .I1(n29_adj_4040), .I2(n27_adj_4039), 
            .I3(n35565), .O(n35550));
    defparam i30895_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2070_i17_2_lut (.I0(n3061), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4051));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1540_4_lut (.I0(GND_net), .I1(n2239), .I2(n698), .I3(n26246), 
            .O(n5210[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_19_lut (.I0(GND_net), .I1(n3157), .I2(n2754), .I3(n26401), 
            .O(n5418[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_19 (.CI(n26401), .I0(n3157), .I1(n2754), .CO(n26402));
    SB_LUT4 div_37_LessThan_2070_i19_2_lut (.I0(n3060), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4052));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32004_4_lut (.I0(n37_adj_4038), .I1(n35_adj_4037), .I2(n33_adj_4036), 
            .I3(n35550), .O(n36659));
    defparam i32004_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2070_i31_2_lut (.I0(n3054), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4053));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32028_3_lut (.I0(n18_adj_4054), .I1(baudrate[13]), .I2(n41_adj_4035), 
            .I3(GND_net), .O(n36683));   // verilog/uart_rx.v(119[33:55])
    defparam i32028_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32029_3_lut (.I0(n36683), .I1(baudrate[14]), .I2(n43_adj_4034), 
            .I3(GND_net), .O(n36684));   // verilog/uart_rx.v(119[33:55])
    defparam i32029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31828_4_lut (.I0(n43_adj_4034), .I1(n41_adj_4035), .I2(n29_adj_4040), 
            .I3(n35563), .O(n36483));
    defparam i31828_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_1685_i26_3_lut (.I0(n24), .I1(baudrate[7]), 
            .I2(n29_adj_4040), .I3(GND_net), .O(n26));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31150_4_lut (.I0(n31_adj_4053), .I1(n19_adj_4052), .I2(n17_adj_4051), 
            .I3(n15_adj_4050), .O(n35805));
    defparam i31150_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31653_3_lut (.I0(n36684), .I1(baudrate[15]), .I2(n45_adj_4033), 
            .I3(GND_net), .O(n36308));   // verilog/uart_rx.v(119[33:55])
    defparam i31653_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1540_4 (.CI(n26246), .I0(n2239), .I1(n698), .CO(n26247));
    SB_LUT4 div_37_LessThan_1997_i12_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2955), .I3(GND_net), .O(n12_adj_4055));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31004_2_lut (.I0(baudrate[1]), .I1(n294[20]), .I2(GND_net), 
            .I3(GND_net), .O(n35659));   // verilog/uart_rx.v(119[33:55])
    defparam i31004_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31646_4_lut (.I0(n13_adj_4043), .I1(n11_adj_4042), .I2(n3065), 
            .I3(baudrate[2]), .O(n36301));
    defparam i31646_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 add_1540_3_lut (.I0(GND_net), .I1(n2240), .I2(n858), .I3(n26245), 
            .O(n5210[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_18_lut (.I0(GND_net), .I1(n3158), .I2(n2638), .I3(n26400), 
            .O(n5418[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1685_i30_3_lut (.I0(n22_adj_4056), .I1(baudrate[9]), 
            .I2(n33_adj_4036), .I3(GND_net), .O(n30));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32323_4_lut (.I0(n30), .I1(n20_adj_4057), .I2(n33_adj_4036), 
            .I3(n35539), .O(n36978));   // verilog/uart_rx.v(119[33:55])
    defparam i32323_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31240_2_lut_4_lut (.I0(n2950), .I1(baudrate[8]), .I2(n2954), 
            .I3(baudrate[4]), .O(n35895));
    defparam i31240_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i31916_4_lut (.I0(n19_adj_4052), .I1(n17_adj_4051), .I2(n15_adj_4050), 
            .I3(n36301), .O(n36571));
    defparam i31916_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32324_3_lut (.I0(n36978), .I1(baudrate[10]), .I2(n35_adj_4037), 
            .I3(GND_net), .O(n36979));   // verilog/uart_rx.v(119[33:55])
    defparam i32324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31914_4_lut (.I0(n25_adj_4031), .I1(n23_adj_4030), .I2(n21_adj_4046), 
            .I3(n36571), .O(n36569));
    defparam i31914_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31152_4_lut (.I0(n31_adj_4053), .I1(n29_adj_4029), .I2(n27_adj_4028), 
            .I3(n36569), .O(n35807));
    defparam i31152_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1997_i14_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2950), .I3(GND_net), .O(n14_adj_4058));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32218_3_lut (.I0(n36979), .I1(baudrate[11]), .I2(n37_adj_4038), 
            .I3(GND_net), .O(n36873));   // verilog/uart_rx.v(119[33:55])
    defparam i32218_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i16_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2952), .I3(GND_net), .O(n16_adj_4059));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2070_i8_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n3066), .I3(GND_net), .O(n8_adj_4060));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i8_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32177_3_lut (.I0(n8_adj_4060), .I1(baudrate[13]), .I2(n31_adj_4053), 
            .I3(GND_net), .O(n36832));   // verilog/uart_rx.v(119[33:55])
    defparam i32177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32178_3_lut (.I0(n36832), .I1(baudrate[14]), .I2(n33_adj_4024), 
            .I3(GND_net), .O(n36833));   // verilog/uart_rx.v(119[33:55])
    defparam i32178_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i34_3_lut (.I0(n16_adj_4061), .I1(baudrate[17]), 
            .I2(n39_adj_4023), .I3(GND_net), .O(n34_adj_4062));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31832_4_lut (.I0(n43_adj_4034), .I1(n41_adj_4035), .I2(n39_adj_4032), 
            .I3(n36659), .O(n36487));
    defparam i31832_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32102_4_lut (.I0(n36308), .I1(n26), .I2(n45_adj_4033), .I3(n36483), 
            .O(n36757));   // verilog/uart_rx.v(119[33:55])
    defparam i32102_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31651_3_lut (.I0(n36873), .I1(baudrate[12]), .I2(n39_adj_4032), 
            .I3(GND_net), .O(n36306));   // verilog/uart_rx.v(119[33:55])
    defparam i31651_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32104_4_lut (.I0(n36306), .I1(n36757), .I2(n45_adj_4033), 
            .I3(n36487), .O(n36759));   // verilog/uart_rx.v(119[33:55])
    defparam i32104_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31221_2_lut_4_lut (.I0(n2942), .I1(baudrate[16]), .I2(n2951), 
            .I3(baudrate[7]), .O(n35876));
    defparam i31221_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_4_lut_adj_957 (.I0(baudrate[30]), .I1(baudrate[25]), 
            .I2(baudrate[31]), .I3(baudrate[26]), .O(n33612));
    defparam i1_2_lut_4_lut_adj_957.LUT_INIT = 16'hfffe;
    SB_LUT4 i31141_4_lut (.I0(n37_adj_4025), .I1(n35_adj_4021), .I2(n33_adj_4024), 
            .I3(n35805), .O(n35796));
    defparam i31141_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1838_3_lut (.I0(n2612), .I1(n5288[7]), .I2(n294[6]), 
            .I3(GND_net), .O(n2729));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32370_4_lut (.I0(n34_adj_4062), .I1(n14_adj_4063), .I2(n39_adj_4023), 
            .I3(n35794), .O(n37025));   // verilog/uart_rx.v(119[33:55])
    defparam i32370_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32118_3_lut (.I0(n36833), .I1(baudrate[15]), .I2(n35_adj_4021), 
            .I3(GND_net), .O(n36773));   // verilog/uart_rx.v(119[33:55])
    defparam i32118_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR r_Bit_Index_i1 (.Q(r_Bit_Index[1]), .C(clk16MHz), .E(n13594), 
            .D(n479[1]), .R(n31122));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFFESR r_Bit_Index_i2 (.Q(r_Bit_Index[2]), .C(clk16MHz), .E(n13594), 
            .D(n479[2]), .R(n31122));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 div_37_i1915_3_lut (.I0(n2729), .I1(n5314[7]), .I2(n294[5]), 
            .I3(GND_net), .O(n2843));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1915_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i41_2_lut (.I0(n2356), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4064));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i41_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1548_18 (.CI(n26400), .I0(n3158), .I1(n2638), .CO(n26401));
    SB_LUT4 i32179_3_lut (.I0(n10_adj_4065), .I1(baudrate[10]), .I2(n25_adj_4031), 
            .I3(GND_net), .O(n36834));   // verilog/uart_rx.v(119[33:55])
    defparam i32179_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i39_2_lut (.I0(n2357), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4066));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32180_3_lut (.I0(n36834), .I1(baudrate[11]), .I2(n27_adj_4028), 
            .I3(GND_net), .O(n36835));   // verilog/uart_rx.v(119[33:55])
    defparam i32180_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31610_4_lut (.I0(n27_adj_4028), .I1(n25_adj_4031), .I2(n23_adj_4030), 
            .I3(n35816), .O(n36265));
    defparam i31610_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31379_4_lut (.I0(n11391), .I1(n35659), .I2(n48), .I3(baudrate[0]), 
            .O(n804));
    defparam i31379_4_lut.LUT_INIT = 16'h3633;
    SB_LUT4 div_37_LessThan_1602_i37_2_lut (.I0(n2358), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4067));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i35_2_lut (.I0(n2359), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4068));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i20_3_lut (.I0(n12_adj_4069), .I1(baudrate[9]), 
            .I2(n23_adj_4030), .I3(GND_net), .O(n20_adj_4070));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i23_2_lut (.I0(n2365), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4071));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1548_17_lut (.I0(GND_net), .I1(n3159), .I2(n2519), .I3(n26399), 
            .O(n5418[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_17 (.CI(n26399), .I0(n3159), .I1(n2519), .CO(n26400));
    SB_LUT4 add_1548_16_lut (.I0(GND_net), .I1(n3160), .I2(n2397), .I3(n26398), 
            .O(n5418[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_16 (.CI(n26398), .I0(n3160), .I1(n2397), .CO(n26399));
    SB_LUT4 add_1548_15_lut (.I0(GND_net), .I1(n3161), .I2(n2272), .I3(n26397), 
            .O(n5418[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_15 (.CI(n26397), .I0(n3161), .I1(n2272), .CO(n26398));
    SB_LUT4 add_1548_14_lut (.I0(GND_net), .I1(n3162), .I2(n2144), .I3(n26396), 
            .O(n5418[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_14 (.CI(n26396), .I0(n3162), .I1(n2144), .CO(n26397));
    SB_LUT4 add_1548_13_lut (.I0(GND_net), .I1(n3163), .I2(n2013), .I3(n26395), 
            .O(n5418[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32116_3_lut (.I0(n36835), .I1(baudrate[12]), .I2(n29_adj_4029), 
            .I3(GND_net), .O(n26_adj_4072));   // verilog/uart_rx.v(119[33:55])
    defparam i32116_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i18_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2942), .I3(GND_net), .O(n18_adj_4073));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32064_4_lut (.I0(n37_adj_4025), .I1(n35_adj_4021), .I2(n33_adj_4024), 
            .I3(n35807), .O(n36719));
    defparam i32064_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32438_4_lut (.I0(n36773), .I1(n37025), .I2(n39_adj_4023), 
            .I3(n35796), .O(n37093));   // verilog/uart_rx.v(119[33:55])
    defparam i32438_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31928_4_lut (.I0(n26_adj_4072), .I1(n20_adj_4070), .I2(n29_adj_4029), 
            .I3(n36265), .O(n36583));   // verilog/uart_rx.v(119[33:55])
    defparam i31928_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1540_3 (.CI(n26245), .I0(n2240), .I1(n858), .CO(n26246));
    SB_CARRY add_1548_13 (.CI(n26395), .I0(n3163), .I1(n2013), .CO(n26396));
    SB_LUT4 add_1540_2_lut (.I0(n31193), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32830)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1540_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1540_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26245));
    SB_LUT4 add_1539_14_lut (.I0(GND_net), .I1(n2098), .I2(n2397), .I3(n26244), 
            .O(n5184[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32452_4_lut (.I0(n36583), .I1(n37093), .I2(n39_adj_4023), 
            .I3(n36719), .O(n37107));   // verilog/uart_rx.v(119[33:55])
    defparam i32452_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32453_3_lut (.I0(n37107), .I1(baudrate[18]), .I2(n3049), 
            .I3(GND_net), .O(n37108));   // verilog/uart_rx.v(119[33:55])
    defparam i32453_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i25_2_lut (.I0(n2364), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4074));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32445_3_lut (.I0(n37108), .I1(baudrate[19]), .I2(n3048), 
            .I3(GND_net), .O(n37100));   // verilog/uart_rx.v(119[33:55])
    defparam i32445_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31930_3_lut (.I0(n37100), .I1(baudrate[20]), .I2(n3047), 
            .I3(GND_net), .O(n36585));   // verilog/uart_rx.v(119[33:55])
    defparam i31930_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i27_2_lut (.I0(n2363), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4075));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i29_2_lut (.I0(n2362), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4076));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i31_2_lut (.I0(n2361), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4077));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i33_2_lut (.I0(n2360), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4078));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1602_i21_2_lut (.I0(n2366), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4079));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30953_4_lut (.I0(n27_adj_4075), .I1(n25_adj_4074), .I2(n23_adj_4071), 
            .I3(n21_adj_4079), .O(n35608));
    defparam i30953_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i30938_4_lut (.I0(n33_adj_4078), .I1(n31_adj_4077), .I2(n29_adj_4076), 
            .I3(n35608), .O(n35593));
    defparam i30938_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1250_i30_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1839), .I3(GND_net), .O(n30_adj_4080));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i20_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2367), .I3(GND_net), .O(n20_adj_4081));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i20_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i28_3_lut (.I0(n26_adj_4082), .I1(baudrate[7]), 
            .I2(n31_adj_4077), .I3(GND_net), .O(n28_adj_4083));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1548_12_lut (.I0(GND_net), .I1(n3164), .I2(n1879), .I3(n26394), 
            .O(n5418[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1602_i32_3_lut (.I0(n24_adj_4084), .I1(baudrate[9]), 
            .I2(n35_adj_4068), .I3(GND_net), .O(n32_adj_4085));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31258_2_lut_4_lut (.I0(n1834), .I1(baudrate[8]), .I2(n1838), 
            .I3(baudrate[4]), .O(n35913));
    defparam i31258_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1539_13_lut (.I0(GND_net), .I1(n2099), .I2(n2272), .I3(n26243), 
            .O(n5184[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_13 (.CI(n26243), .I0(n2099), .I1(n2272), .CO(n26244));
    SB_CARRY add_1548_12 (.CI(n26394), .I0(n3164), .I1(n1879), .CO(n26395));
    SB_LUT4 add_1548_11_lut (.I0(GND_net), .I1(n3165), .I2(n1742), .I3(n26393), 
            .O(n5418[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_11 (.CI(n26393), .I0(n3165), .I1(n1742), .CO(n26394));
    SB_LUT4 div_37_LessThan_1250_i32_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1834), .I3(GND_net), .O(n32_adj_4086));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i32_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32364_4_lut (.I0(n32_adj_4085), .I1(n22_adj_4087), .I2(n35_adj_4068), 
            .I3(n35588), .O(n37019));   // verilog/uart_rx.v(119[33:55])
    defparam i32364_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32365_3_lut (.I0(n37019), .I1(baudrate[10]), .I2(n37_adj_4067), 
            .I3(GND_net), .O(n37020));   // verilog/uart_rx.v(119[33:55])
    defparam i32365_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32310_3_lut (.I0(n37020), .I1(baudrate[11]), .I2(n39_adj_4066), 
            .I3(GND_net), .O(n36965));   // verilog/uart_rx.v(119[33:55])
    defparam i32310_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32010_4_lut (.I0(n39_adj_4066), .I1(n37_adj_4067), .I2(n35_adj_4068), 
            .I3(n35593), .O(n36665));
    defparam i32010_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32333_4_lut (.I0(n28_adj_4083), .I1(n20_adj_4081), .I2(n31_adj_4077), 
            .I3(n35602), .O(n36988));   // verilog/uart_rx.v(119[33:55])
    defparam i32333_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32262_3_lut (.I0(n36965), .I1(baudrate[12]), .I2(n41_adj_4064), 
            .I3(GND_net), .O(n36917));   // verilog/uart_rx.v(119[33:55])
    defparam i32262_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_958 (.I0(baudrate[27]), .I1(baudrate[30]), .I2(GND_net), 
            .I3(GND_net), .O(n33544));
    defparam i1_2_lut_adj_958.LUT_INIT = 16'heeee;
    SB_LUT4 i32366_4_lut (.I0(n36917), .I1(n36988), .I2(n41_adj_4064), 
            .I3(n36665), .O(n37021));   // verilog/uart_rx.v(119[33:55])
    defparam i32366_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32367_3_lut (.I0(n37021), .I1(baudrate[13]), .I2(n2355), 
            .I3(GND_net), .O(n37022));   // verilog/uart_rx.v(119[33:55])
    defparam i32367_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1548_10_lut (.I0(GND_net), .I1(n3166), .I2(n1602), .I3(n26392), 
            .O(n5418[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32308_3_lut (.I0(n37022), .I1(baudrate[14]), .I2(n2354), 
            .I3(GND_net), .O(n36963));   // verilog/uart_rx.v(119[33:55])
    defparam i32308_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32264_3_lut (.I0(n36963), .I1(baudrate[15]), .I2(n2353), 
            .I3(GND_net), .O(n48_adj_4001));   // verilog/uart_rx.v(119[33:55])
    defparam i32264_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_959 (.I0(n32832), .I1(n48_adj_4001), .I2(GND_net), 
            .I3(GND_net), .O(n2491));
    defparam i1_2_lut_adj_959.LUT_INIT = 16'h2222;
    SB_LUT4 div_37_i1758_3_lut (.I0(n2491), .I1(n5262[8]), .I2(n294[7]), 
            .I3(GND_net), .O(n2611));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1837_3_lut (.I0(n2611), .I1(n5288[8]), .I2(n294[6]), 
            .I3(GND_net), .O(n2728));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1914_3_lut (.I0(n2728), .I1(n5314[8]), .I2(n294[5]), 
            .I3(GND_net), .O(n2842));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29298_1_lut (.I0(n33943), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31202));
    defparam i29298_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_960 (.I0(baudrate[13]), .I1(baudrate[14]), .I2(GND_net), 
            .I3(GND_net), .O(n33362));
    defparam i1_2_lut_adj_960.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1845_i14_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2730), .I3(GND_net), .O(n14_adj_4088));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i14_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32018_3_lut (.I0(n14_adj_4088), .I1(baudrate[13]), .I2(n37), 
            .I3(GND_net), .O(n36673));   // verilog/uart_rx.v(119[33:55])
    defparam i32018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2175_1_lut (.I0(baudrate[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n538));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2175_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i32019_3_lut (.I0(n36673), .I1(baudrate[14]), .I2(n39_adj_3974), 
            .I3(GND_net), .O(n36674));   // verilog/uart_rx.v(119[33:55])
    defparam i32019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i640_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n294[19]), 
            .I3(n44_adj_3993), .O(n959));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i640_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_LessThan_1341_i28_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n1975), .I3(GND_net), .O(n28_adj_4089));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1517_i43_2_lut (.I0(n2229), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4090));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i743_4_lut (.I0(n959), .I1(baudrate[4]), .I2(n294[18]), 
            .I3(n44_adj_3977), .O(n1112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i743_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_LessThan_1517_i41_2_lut (.I0(n2230), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4091));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1539_12_lut (.I0(GND_net), .I1(n2100), .I2(n2144), .I3(n26242), 
            .O(n5184[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_10 (.CI(n26392), .I0(n3166), .I1(n1602), .CO(n26393));
    SB_LUT4 add_1548_9_lut (.I0(GND_net), .I1(n3167), .I2(n1459), .I3(n26391), 
            .O(n5418[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_2_lut (.I0(GND_net), .I1(n32201), .I2(GND_net), 
            .I3(VCC_net), .O(\o_Rx_DV_N_3358[0] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_961 (.I0(baudrate[25]), .I1(baudrate[29]), .I2(GND_net), 
            .I3(GND_net), .O(n33682));
    defparam i1_2_lut_adj_961.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1517_i39_2_lut (.I0(n2231), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4092));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i39_2_lut.LUT_INIT = 16'h6666;
    SB_DFF r_Rx_Byte_i0 (.Q(rx_data[0]), .C(clk16MHz), .D(n15900));   // verilog/uart_rx.v(50[10] 145[8])
    SB_DFFE r_Rx_DV_58 (.Q(rx_data_ready), .C(clk16MHz), .E(VCC_net), 
            .D(n28009));   // verilog/uart_rx.v(50[10] 145[8])
    SB_CARRY add_1539_12 (.CI(n26242), .I0(n2100), .I1(n2144), .CO(n26243));
    SB_DFFE r_Bit_Index_i0 (.Q(\r_Bit_Index[0] ), .C(clk16MHz), .E(VCC_net), 
            .D(n15875));   // verilog/uart_rx.v(50[10] 145[8])
    SB_LUT4 i31170_2_lut_4_lut (.I0(n1970), .I1(baudrate[8]), .I2(n1974), 
            .I3(baudrate[4]), .O(n35825));
    defparam i31170_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1517_i37_2_lut (.I0(n2232), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4093));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1539_11_lut (.I0(GND_net), .I1(n2101), .I2(n2013), .I3(n26241), 
            .O(n5184[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_9 (.CI(n26391), .I0(n3167), .I1(n1459), .CO(n26392));
    SB_CARRY add_1539_11 (.CI(n26241), .I0(n2101), .I1(n2013), .CO(n26242));
    SB_LUT4 div_37_LessThan_1517_i33_2_lut (.I0(n2234), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4094));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_962 (.I0(baudrate[24]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n33684));
    defparam i1_2_lut_adj_962.LUT_INIT = 16'heeee;
    SB_LUT4 add_1548_8_lut (.I0(GND_net), .I1(n3168), .I2(n1460), .I3(n26390), 
            .O(n5418[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_8 (.CI(n26390), .I0(n3168), .I1(n1460), .CO(n26391));
    SB_LUT4 add_1539_10_lut (.I0(GND_net), .I1(n2102), .I2(n1879), .I3(n26240), 
            .O(n5184[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1341_i30_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n1970), .I3(GND_net), .O(n30_adj_4095));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1548_7_lut (.I0(GND_net), .I1(n3169), .I2(n1011), .I3(n26389), 
            .O(n5418[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1517_i35_2_lut (.I0(n2233), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4096));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i35_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_1548_7 (.CI(n26389), .I0(n3169), .I1(n1011), .CO(n26390));
    SB_CARRY add_1539_10 (.CI(n26240), .I0(n2102), .I1(n1879), .CO(n26241));
    SB_LUT4 add_1539_9_lut (.I0(GND_net), .I1(n2103), .I2(n1742), .I3(n26239), 
            .O(n5184[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_6_lut (.I0(GND_net), .I1(n3170), .I2(n856), .I3(n26388), 
            .O(n5418[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_2 (.CI(VCC_net), .I0(n32201), .I1(GND_net), 
            .CO(n26056));
    SB_CARRY add_1539_9 (.CI(n26239), .I0(n2103), .I1(n1742), .CO(n26240));
    SB_LUT4 div_37_LessThan_1517_i25_2_lut (.I0(n2238), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4097));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1539_8_lut (.I0(GND_net), .I1(n2104), .I2(n1602), .I3(n26238), 
            .O(n5184[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_6 (.CI(n26388), .I0(n3170), .I1(n856), .CO(n26389));
    SB_LUT4 div_37_LessThan_1517_i27_2_lut (.I0(n2237), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4098));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i29_2_lut (.I0(n2236), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i31_2_lut (.I0(n2235), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1517_i23_2_lut (.I0(n2239), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4101));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31087_4_lut (.I0(n29_adj_4099), .I1(n27_adj_4098), .I2(n25_adj_4097), 
            .I3(n23_adj_4101), .O(n35742));
    defparam i31087_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_1548_5_lut (.I0(GND_net), .I1(n3171), .I2(n698), .I3(n26387), 
            .O(n5418[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_8 (.CI(n26238), .I0(n2104), .I1(n1602), .CO(n26239));
    SB_CARRY add_1548_5 (.CI(n26387), .I0(n3171), .I1(n698), .CO(n26388));
    SB_LUT4 add_1539_7_lut (.I0(GND_net), .I1(n2105), .I2(n1459), .I3(n26237), 
            .O(n5184[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1548_4_lut (.I0(GND_net), .I1(n3172), .I2(n858), .I3(n26386), 
            .O(n5418[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_4 (.CI(n26386), .I0(n3172), .I1(n858), .CO(n26387));
    SB_LUT4 i31075_4_lut (.I0(n35_adj_4096), .I1(n33_adj_4094), .I2(n31_adj_4100), 
            .I3(n35742), .O(n35730));
    defparam i31075_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 add_1548_3_lut (.I0(n31161), .I1(GND_net), .I2(n538), .I3(n26385), 
            .O(n32846)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1548_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_38_add_2_26_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n26079), .O(\o_Rx_DV_N_3358[24] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1548_3 (.CI(n26385), .I0(GND_net), .I1(n538), .CO(n26386));
    SB_CARRY add_1539_7 (.CI(n26237), .I0(n2105), .I1(n1459), .CO(n26238));
    SB_LUT4 i1_2_lut_adj_963 (.I0(baudrate[16]), .I1(baudrate[17]), .I2(GND_net), 
            .I3(GND_net), .O(n33642));
    defparam i1_2_lut_adj_963.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_964 (.I0(baudrate[18]), .I1(baudrate[19]), .I2(GND_net), 
            .I3(GND_net), .O(n33602));
    defparam i1_2_lut_adj_964.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1845_i16_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2728), .I3(GND_net), .O(n16_adj_4102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31343_2_lut_4_lut (.I0(n2723), .I1(baudrate[8]), .I2(n2727), 
            .I3(baudrate[4]), .O(n35998));
    defparam i31343_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1845_i40_3_lut (.I0(n22_adj_4103), .I1(baudrate[17]), 
            .I2(n45_adj_3978), .I3(GND_net), .O(n40_adj_4104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1548_2 (.CI(VCC_net), .I0(GND_net), .I1(VCC_net), .CO(n26385));
    SB_LUT4 add_1547_23_lut (.I0(GND_net), .I1(n3046), .I2(n3082), .I3(n26384), 
            .O(n5392[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1845_i18_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2723), .I3(GND_net), .O(n18_adj_4105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1547_22_lut (.I0(GND_net), .I1(n3047), .I2(n3188), .I3(n26383), 
            .O(n5392[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_22 (.CI(n26383), .I0(n3047), .I1(n3188), .CO(n26384));
    SB_LUT4 add_1539_6_lut (.I0(GND_net), .I1(n2106), .I2(n1460), .I3(n26236), 
            .O(n5184[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_6 (.CI(n26236), .I0(n2106), .I1(n1460), .CO(n26237));
    SB_LUT4 add_1539_5_lut (.I0(GND_net), .I1(n2107), .I2(n1011), .I3(n26235), 
            .O(n5184[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_25_lut (.I0(n32752), .I1(n11389), .I2(VCC_net), 
            .I3(n26078), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1547_21_lut (.I0(GND_net), .I1(n3048), .I2(n3084), .I3(n26382), 
            .O(n5392[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_21 (.CI(n26382), .I0(n3048), .I1(n3084), .CO(n26383));
    SB_LUT4 add_1547_20_lut (.I0(GND_net), .I1(n3049), .I2(n2977), .I3(n26381), 
            .O(n5392[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i29326_1_lut (.I0(n33971), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31219));
    defparam i29326_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1547_20 (.CI(n26381), .I0(n3049), .I1(n2977), .CO(n26382));
    SB_LUT4 div_37_i1974_3_lut (.I0(n2827), .I1(n5340[23]), .I2(n294[4]), 
            .I3(GND_net), .O(n2938));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1974_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1539_5 (.CI(n26235), .I0(n2107), .I1(n1011), .CO(n26236));
    SB_LUT4 add_1547_19_lut (.I0(GND_net), .I1(n3050), .I2(n2867), .I3(n26380), 
            .O(n5392[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1989_3_lut (.I0(n2842), .I1(n5340[8]), .I2(n294[4]), 
            .I3(GND_net), .O(n2953));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1539_4_lut (.I0(GND_net), .I1(n2108), .I2(n856), .I3(n26234), 
            .O(n5184[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_4 (.CI(n26234), .I0(n2108), .I1(n856), .CO(n26235));
    SB_CARRY add_1547_19 (.CI(n26380), .I0(n3050), .I1(n2867), .CO(n26381));
    SB_LUT4 div_37_i1975_3_lut (.I0(n2828), .I1(n5340[22]), .I2(n294[4]), 
            .I3(GND_net), .O(n2939));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1539_3_lut (.I0(GND_net), .I1(n2109), .I2(n698), .I3(n26233), 
            .O(n5184[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_18_lut (.I0(GND_net), .I1(n3051), .I2(n2754), .I3(n26379), 
            .O(n5392[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1539_3 (.CI(n26233), .I0(n2109), .I1(n698), .CO(n26234));
    SB_CARRY add_1547_18 (.CI(n26379), .I0(n3051), .I1(n2754), .CO(n26380));
    SB_LUT4 add_1547_17_lut (.I0(GND_net), .I1(n3052), .I2(n2638), .I3(n26378), 
            .O(n5392[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_17 (.CI(n26378), .I0(n3052), .I1(n2638), .CO(n26379));
    SB_LUT4 add_1547_16_lut (.I0(GND_net), .I1(n3053), .I2(n2519), .I3(n26377), 
            .O(n5392[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_16 (.CI(n26377), .I0(n3053), .I1(n2519), .CO(n26378));
    SB_LUT4 add_1547_15_lut (.I0(GND_net), .I1(n3054), .I2(n2397), .I3(n26376), 
            .O(n5392[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1976_3_lut (.I0(n2829), .I1(n5340[21]), .I2(n294[4]), 
            .I3(GND_net), .O(n2940));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i22_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2240), .I3(GND_net), .O(n22_adj_4106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i22_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1517_i30_3_lut (.I0(n28_adj_4107), .I1(baudrate[7]), 
            .I2(n33_adj_4094), .I3(GND_net), .O(n30_adj_4108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1547_15 (.CI(n26376), .I0(n3054), .I1(n2397), .CO(n26377));
    SB_LUT4 div_37_i1979_3_lut (.I0(n2832), .I1(n5340[18]), .I2(n294[4]), 
            .I3(GND_net), .O(n2943));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i28_3_lut_3_lut (.I0(baudrate[3]), .I1(baudrate[4]), 
            .I2(n2107), .I3(GND_net), .O(n28_adj_4109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i37_2_lut (.I0(n2943), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4110));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1977_3_lut (.I0(n2830), .I1(n5340[20]), .I2(n294[4]), 
            .I3(GND_net), .O(n2941));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31122_2_lut_4_lut (.I0(n2102), .I1(baudrate[9]), .I2(n2106), 
            .I3(baudrate[5]), .O(n35777));
    defparam i31122_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1517_i34_3_lut (.I0(n26_adj_4111), .I1(baudrate[9]), 
            .I2(n37_adj_4093), .I3(GND_net), .O(n34_adj_4112));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i41_2_lut (.I0(n2941), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1980_3_lut (.I0(n2833), .I1(n5340[17]), .I2(n294[4]), 
            .I3(GND_net), .O(n2944));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_965 (.I0(n33606), .I1(n33602), .I2(n33642), .I3(n33638), 
            .O(n33624));
    defparam i1_4_lut_adj_965.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1997_i35_2_lut (.I0(n2944), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4114));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i35_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY sub_38_add_2_25 (.CI(n26078), .I0(n11389), .I1(VCC_net), 
            .CO(n26079));
    SB_LUT4 add_1547_14_lut (.I0(GND_net), .I1(n3055), .I2(n2272), .I3(n26375), 
            .O(n5392[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_14 (.CI(n26375), .I0(n3055), .I1(n2272), .CO(n26376));
    SB_LUT4 add_1547_13_lut (.I0(GND_net), .I1(n3056), .I2(n2144), .I3(n26374), 
            .O(n5392[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_38_add_2_24_lut (.I0(n32876), .I1(n34007), .I2(VCC_net), 
            .I3(n26077), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i32362_4_lut (.I0(n34_adj_4112), .I1(n24_adj_4115), .I2(n37_adj_4093), 
            .I3(n35716), .O(n37017));   // verilog/uart_rx.v(119[33:55])
    defparam i32362_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1547_13 (.CI(n26374), .I0(n3056), .I1(n2144), .CO(n26375));
    SB_LUT4 add_1547_12_lut (.I0(GND_net), .I1(n3057), .I2(n2013), .I3(n26373), 
            .O(n5392[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_12 (.CI(n26373), .I0(n3057), .I1(n2013), .CO(n26374));
    SB_LUT4 add_1539_2_lut (.I0(GND_net), .I1(n2110), .I2(n858), .I3(VCC_net), 
            .O(n5184[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1539_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31321_4_lut (.I0(n43_adj_3976), .I1(n41_adj_3975), .I2(n39_adj_3974), 
            .I3(n35983), .O(n35976));
    defparam i31321_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32363_3_lut (.I0(n37017), .I1(baudrate[10]), .I2(n39_adj_4092), 
            .I3(GND_net), .O(n37018));   // verilog/uart_rx.v(119[33:55])
    defparam i32363_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1539_2 (.CI(VCC_net), .I0(n2110), .I1(n858), .CO(n26233));
    SB_LUT4 add_1547_11_lut (.I0(GND_net), .I1(n3058), .I2(n1879), .I3(n26372), 
            .O(n5392[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_14_lut (.I0(GND_net), .I1(n1966), .I2(n2272), .I3(n26232), 
            .O(n5158[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32312_3_lut (.I0(n37018), .I1(baudrate[11]), .I2(n41_adj_4091), 
            .I3(GND_net), .O(n36967));   // verilog/uart_rx.v(119[33:55])
    defparam i32312_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32056_4_lut (.I0(n41_adj_4091), .I1(n39_adj_4092), .I2(n37_adj_4093), 
            .I3(n35730), .O(n36711));
    defparam i32056_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32187_4_lut (.I0(n30_adj_4108), .I1(n22_adj_4106), .I2(n33_adj_4094), 
            .I3(n35735), .O(n36842));   // verilog/uart_rx.v(119[33:55])
    defparam i32187_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1547_11 (.CI(n26372), .I0(n3058), .I1(n1879), .CO(n26373));
    SB_LUT4 i32260_3_lut (.I0(n36967), .I1(baudrate[12]), .I2(n43_adj_4090), 
            .I3(GND_net), .O(n42_adj_4116));   // verilog/uart_rx.v(119[33:55])
    defparam i32260_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32337_4_lut (.I0(n42_adj_4116), .I1(n36842), .I2(n43_adj_4090), 
            .I3(n36711), .O(n36992));   // verilog/uart_rx.v(119[33:55])
    defparam i32337_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 add_1547_10_lut (.I0(GND_net), .I1(n3059), .I2(n1742), .I3(n26371), 
            .O(n5392[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_10 (.CI(n26371), .I0(n3059), .I1(n1742), .CO(n26372));
    SB_LUT4 add_1547_9_lut (.I0(GND_net), .I1(n3060), .I2(n1602), .I3(n26370), 
            .O(n5392[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i844_3_lut (.I0(n1112), .I1(n5002[22]), .I2(n294[17]), 
            .I3(GND_net), .O(n1262));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1538_13_lut (.I0(GND_net), .I1(n1967), .I2(n2144), .I3(n26231), 
            .O(n5158[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32107_4_lut (.I0(n40_adj_4104), .I1(n20_adj_4117), .I2(n45_adj_3978), 
            .I3(n35972), .O(n36762));   // verilog/uart_rx.v(119[33:55])
    defparam i32107_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32338_3_lut (.I0(n36992), .I1(baudrate[13]), .I2(n2228), 
            .I3(GND_net), .O(n36993));   // verilog/uart_rx.v(119[33:55])
    defparam i32338_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1430_i30_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[9]), 
            .I2(n2102), .I3(GND_net), .O(n30_adj_4118));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i30_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1982_3_lut (.I0(n2835), .I1(n5340[15]), .I2(n294[4]), 
            .I3(GND_net), .O(n2946));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1982_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1547_9 (.CI(n26370), .I0(n3060), .I1(n1602), .CO(n26371));
    SB_LUT4 div_37_i1983_3_lut (.I0(n2836), .I1(n5340[14]), .I2(n294[4]), 
            .I3(GND_net), .O(n2947));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i29_2_lut (.I0(n2947), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4119));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i31_2_lut (.I0(n2946), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4120));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31671_3_lut (.I0(n36674), .I1(baudrate[15]), .I2(n41_adj_3975), 
            .I3(GND_net), .O(n36326));   // verilog/uart_rx.v(119[33:55])
    defparam i31671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1517_i24_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2238), .I3(GND_net), .O(n24_adj_4115));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1676_3_lut (.I0(n2367), .I1(n5236[9]), .I2(n294[8]), 
            .I3(GND_net), .O(n2490));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1757_3_lut (.I0(n2490), .I1(n5262[9]), .I2(n294[7]), 
            .I3(GND_net), .O(n2610));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31061_2_lut_4_lut (.I0(n2233), .I1(baudrate[8]), .I2(n2237), 
            .I3(baudrate[4]), .O(n35716));
    defparam i31061_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1836_3_lut (.I0(n2610), .I1(n5288[9]), .I2(n294[6]), 
            .I3(GND_net), .O(n2727));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1913_3_lut (.I0(n2727), .I1(n5314[9]), .I2(n294[5]), 
            .I3(GND_net), .O(n2841));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1978_3_lut (.I0(n2831), .I1(n5340[19]), .I2(n294[4]), 
            .I3(GND_net), .O(n2942));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2174_1_lut (.I0(baudrate[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n858));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2174_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1997_i39_2_lut (.I0(n2942), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4121));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i943_3_lut (.I0(n1262), .I1(n5028[22]), .I2(n294[16]), 
            .I3(GND_net), .O(n1409));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i943_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1538_13 (.CI(n26231), .I0(n1967), .I1(n2144), .CO(n26232));
    SB_LUT4 div_37_LessThan_1517_i26_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2233), .I3(GND_net), .O(n26_adj_4111));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_966 (.I0(baudrate[28]), .I1(baudrate[25]), .I2(GND_net), 
            .I3(GND_net), .O(n33336));
    defparam i1_2_lut_adj_966.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1430_i37_2_lut (.I0(n2103), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4122));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i35_2_lut (.I0(n2104), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4123));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i41_2_lut (.I0(n2101), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4124));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i39_2_lut (.I0(n2102), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4125));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_967 (.I0(n33682), .I1(n33554), .I2(n33636), .I3(n33544), 
            .O(n11350));
    defparam i1_4_lut_adj_967.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1430_i29_2_lut (.I0(n2107), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4126));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1430_i31_2_lut (.I0(n2106), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4127));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1538_12_lut (.I0(GND_net), .I1(n1968), .I2(n2013), .I3(n26230), 
            .O(n5158[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_968 (.I0(baudrate[10]), .I1(baudrate[11]), 
            .I2(baudrate[12]), .I3(baudrate[13]), .O(n33580));
    defparam i1_2_lut_4_lut_adj_968.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1430_i33_2_lut (.I0(n2105), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4128));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1547_8_lut (.I0(GND_net), .I1(n3061), .I2(n1459), .I3(n26369), 
            .O(n5392[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_12 (.CI(n26230), .I0(n1968), .I1(n2013), .CO(n26231));
    SB_CARRY add_1547_8 (.CI(n26369), .I0(n3061), .I1(n1459), .CO(n26370));
    SB_LUT4 add_1547_7_lut (.I0(GND_net), .I1(n3062), .I2(n1460), .I3(n26368), 
            .O(n5392[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_11_lut (.I0(GND_net), .I1(n1969), .I2(n1879), .I3(n26229), 
            .O(n5158[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_7 (.CI(n26368), .I0(n3062), .I1(n1460), .CO(n26369));
    SB_LUT4 add_1547_6_lut (.I0(GND_net), .I1(n3063), .I2(n1011), .I3(n26367), 
            .O(n5392[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_11 (.CI(n26229), .I0(n1969), .I1(n1879), .CO(n26230));
    SB_CARRY add_1547_6 (.CI(n26367), .I0(n3063), .I1(n1011), .CO(n26368));
    SB_LUT4 add_1547_5_lut (.I0(GND_net), .I1(n3064), .I2(n856), .I3(n26366), 
            .O(n5392[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_5 (.CI(n26366), .I0(n3064), .I1(n856), .CO(n26367));
    SB_LUT4 div_37_i1985_3_lut (.I0(n2838), .I1(n5340[12]), .I2(n294[4]), 
            .I3(GND_net), .O(n2949));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1547_4_lut (.I0(GND_net), .I1(n3065), .I2(n698), .I3(n26365), 
            .O(n5392[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1984_3_lut (.I0(n2837), .I1(n5340[13]), .I2(n294[4]), 
            .I3(GND_net), .O(n2948));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1986_3_lut (.I0(n2839), .I1(n5340[11]), .I2(n294[4]), 
            .I3(GND_net), .O(n2950));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1430_i27_2_lut (.I0(n2108), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4129));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i23_2_lut (.I0(n2950), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4130));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31137_4_lut (.I0(n33_adj_4128), .I1(n31_adj_4127), .I2(n29_adj_4126), 
            .I3(n27_adj_4129), .O(n35792));
    defparam i31137_4_lut.LUT_INIT = 16'haaab;
    SB_CARRY add_1547_4 (.CI(n26365), .I0(n3065), .I1(n698), .CO(n26366));
    SB_LUT4 i18050_rep_4_2_lut (.I0(baudrate[0]), .I1(n294[19]), .I2(GND_net), 
            .I3(GND_net), .O(n31222));   // verilog/uart_rx.v(119[33:55])
    defparam i18050_rep_4_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_1547_3_lut (.I0(GND_net), .I1(n3066), .I2(n858), .I3(n26364), 
            .O(n5392[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1547_3 (.CI(n26364), .I0(n3066), .I1(n858), .CO(n26365));
    SB_LUT4 div_37_LessThan_1430_i38_3_lut (.I0(n30_adj_4118), .I1(baudrate[10]), 
            .I2(n41_adj_4124), .I3(GND_net), .O(n38_adj_4131));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1538_10_lut (.I0(GND_net), .I1(n1970), .I2(n1742), .I3(n26228), 
            .O(n5158[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1547_2_lut (.I0(n31165), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32844)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1547_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_1547_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26364));
    SB_LUT4 i18076_rep_2_2_lut (.I0(n5158[11]), .I1(n294[11]), .I2(GND_net), 
            .I3(GND_net), .O(n31196));   // verilog/uart_rx.v(119[33:55])
    defparam i18076_rep_2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_LessThan_1430_i26_4_lut (.I0(n31196), .I1(baudrate[2]), 
            .I2(n2109), .I3(baudrate[1]), .O(n26_adj_4132));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1430_i26_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32193_3_lut (.I0(n26_adj_4132), .I1(baudrate[6]), .I2(n33_adj_4128), 
            .I3(GND_net), .O(n36848));   // verilog/uart_rx.v(119[33:55])
    defparam i32193_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32194_3_lut (.I0(n36848), .I1(baudrate[7]), .I2(n35_adj_4123), 
            .I3(GND_net), .O(n36849));   // verilog/uart_rx.v(119[33:55])
    defparam i32194_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31131_4_lut (.I0(n39_adj_4125), .I1(n37_adj_4122), .I2(n35_adj_4123), 
            .I3(n35792), .O(n35786));
    defparam i31131_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32360_4_lut (.I0(n38_adj_4131), .I1(n28_adj_4109), .I2(n41_adj_4124), 
            .I3(n35777), .O(n37015));   // verilog/uart_rx.v(119[33:55])
    defparam i32360_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31080_2_lut_4_lut (.I0(n2235), .I1(baudrate[6]), .I2(n2236), 
            .I3(baudrate[5]), .O(n35735));
    defparam i31080_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i32087_3_lut (.I0(n36849), .I1(baudrate[8]), .I2(n37_adj_4122), 
            .I3(GND_net), .O(n36742));   // verilog/uart_rx.v(119[33:55])
    defparam i32087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_662_i42_4_lut (.I0(n31222), .I1(baudrate[2]), 
            .I2(n961), .I3(baudrate[1]), .O(n42_adj_4133));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_662_i42_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32434_4_lut (.I0(n36742), .I1(n37015), .I2(n41_adj_4124), 
            .I3(n35786), .O(n37089));   // verilog/uart_rx.v(119[33:55])
    defparam i32434_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32435_3_lut (.I0(n37089), .I1(baudrate[11]), .I2(n2100), 
            .I3(GND_net), .O(n37090));   // verilog/uart_rx.v(119[33:55])
    defparam i32435_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32415_3_lut (.I0(n37090), .I1(baudrate[12]), .I2(n2099), 
            .I3(GND_net), .O(n37070));   // verilog/uart_rx.v(119[33:55])
    defparam i32415_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1845_i26_3_lut (.I0(n18_adj_4105), .I1(baudrate[9]), 
            .I2(n29_c), .I3(GND_net), .O(n26_adj_4134));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i25_2_lut (.I0(n2949), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4135));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i27_2_lut (.I0(n2948), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4136));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32387_3_lut (.I0(n37070), .I1(baudrate[13]), .I2(n2098), 
            .I3(GND_net), .O(n48_adj_4137));   // verilog/uart_rx.v(119[33:55])
    defparam i32387_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_969 (.I0(baudrate[27]), .I1(baudrate[24]), .I2(baudrate[29]), 
            .I3(baudrate[30]), .O(n33646));
    defparam i1_4_lut_adj_969.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1517_i28_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2235), .I3(GND_net), .O(n28_adj_4107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1517_i28_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_adj_970 (.I0(n33596), .I1(n33606), .I2(n33336), .I3(GND_net), 
            .O(n33654));
    defparam i1_3_lut_adj_970.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1990_3_lut (.I0(n2843), .I1(n5340[7]), .I2(n294[4]), 
            .I3(GND_net), .O(n2954));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_971 (.I0(n33654), .I1(n33650), .I2(n33652), .I3(n33646), 
            .O(n11416));
    defparam i1_4_lut_adj_971.LUT_INIT = 16'hfffe;
    SB_LUT4 i32237_3_lut (.I0(n42_adj_4133), .I1(baudrate[3]), .I2(n960), 
            .I3(GND_net), .O(n36892));   // verilog/uart_rx.v(119[33:55])
    defparam i32237_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_3_lut_adj_972 (.I0(n11416), .I1(n48_adj_4137), .I2(baudrate[0]), 
            .I3(GND_net), .O(n2240));
    defparam i1_3_lut_adj_972.LUT_INIT = 16'hefef;
    SB_LUT4 div_37_i1592_3_lut (.I0(n2240), .I1(n5210[10]), .I2(n294[9]), 
            .I3(GND_net), .O(n2366));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1592_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1675_3_lut (.I0(n2366), .I1(n5236[10]), .I2(n294[8]), 
            .I3(GND_net), .O(n2489));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1756_3_lut (.I0(n2489), .I1(n5262[10]), .I2(n294[7]), 
            .I3(GND_net), .O(n2609));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1835_3_lut (.I0(n2609), .I1(n5288[10]), .I2(n294[6]), 
            .I3(GND_net), .O(n2726));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1546_22_lut (.I0(GND_net), .I1(n2938), .I2(n3188), .I3(n26363), 
            .O(n5366[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1912_3_lut (.I0(n2726), .I1(n5314[10]), .I2(n294[5]), 
            .I3(GND_net), .O(n2840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1912_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32327_4_lut (.I0(n26_adj_4134), .I1(n16_adj_4102), .I2(n29_c), 
            .I3(n35998), .O(n36982));   // verilog/uart_rx.v(119[33:55])
    defparam i32327_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1538_10 (.CI(n26228), .I0(n1970), .I1(n1742), .CO(n26229));
    SB_LUT4 i32328_3_lut (.I0(n36982), .I1(baudrate[10]), .I2(n31), .I3(GND_net), 
            .O(n36983));   // verilog/uart_rx.v(119[33:55])
    defparam i32328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1538_9_lut (.I0(GND_net), .I1(n1971), .I2(n1602), .I3(n26227), 
            .O(n5158[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i2173_1_lut (.I0(baudrate[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2173_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1538_9 (.CI(n26227), .I0(n1971), .I1(n1602), .CO(n26228));
    SB_LUT4 i32238_3_lut (.I0(n36892), .I1(baudrate[4]), .I2(n959), .I3(GND_net), 
            .O(n36893));   // verilog/uart_rx.v(119[33:55])
    defparam i32238_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1341_i37_2_lut (.I0(n1971), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4138));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32069_3_lut (.I0(n36893), .I1(baudrate[5]), .I2(n30962), 
            .I3(GND_net), .O(n48_adj_4139));   // verilog/uart_rx.v(119[33:55])
    defparam i32069_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 div_37_LessThan_1341_i35_2_lut (.I0(n1972), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4140));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i41_2_lut (.I0(n1969), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4141));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1341_i39_2_lut (.I0(n1970), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4142));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1538_8_lut (.I0(GND_net), .I1(n1972), .I2(n1459), .I3(n26226), 
            .O(n5158[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_8 (.CI(n26226), .I0(n1972), .I1(n1459), .CO(n26227));
    SB_LUT4 add_1546_21_lut (.I0(GND_net), .I1(n2939), .I2(n3084), .I3(n26362), 
            .O(n5366[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_21 (.CI(n26362), .I0(n2939), .I1(n3084), .CO(n26363));
    SB_LUT4 add_1546_20_lut (.I0(GND_net), .I1(n2940), .I2(n2977), .I3(n26361), 
            .O(n5366[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_20 (.CI(n26361), .I0(n2940), .I1(n2977), .CO(n26362));
    SB_LUT4 add_1546_19_lut (.I0(GND_net), .I1(n2941), .I2(n2867), .I3(n26360), 
            .O(n5366[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1538_7_lut (.I0(GND_net), .I1(n1973), .I2(n1460), .I3(n26225), 
            .O(n5158[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_19 (.CI(n26360), .I0(n2941), .I1(n2867), .CO(n26361));
    SB_LUT4 add_1546_18_lut (.I0(GND_net), .I1(n2942), .I2(n2754), .I3(n26359), 
            .O(n5366[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_18 (.CI(n26359), .I0(n2942), .I1(n2754), .CO(n26360));
    SB_LUT4 div_37_LessThan_1341_i29_2_lut (.I0(n1975), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4143));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32208_3_lut (.I0(n36983), .I1(baudrate[11]), .I2(n33), .I3(GND_net), 
            .O(n36863));   // verilog/uart_rx.v(119[33:55])
    defparam i32208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i31_2_lut (.I0(n1974), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1546_17_lut (.I0(GND_net), .I1(n2943), .I2(n2638), .I3(n26358), 
            .O(n5366[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_7 (.CI(n26225), .I0(n1973), .I1(n1460), .CO(n26226));
    SB_LUT4 i32149_4_lut (.I0(n43_adj_3976), .I1(n41_adj_3975), .I2(n39_adj_3974), 
            .I3(n35985), .O(n36804));
    defparam i32149_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32345_4_lut (.I0(n36326), .I1(n36762), .I2(n45_adj_3978), 
            .I3(n35976), .O(n37000));   // verilog/uart_rx.v(119[33:55])
    defparam i32345_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1845_i20_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2725), .I3(GND_net), .O(n20_adj_4117));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1538_6_lut (.I0(GND_net), .I1(n1974), .I2(n1011), .I3(n26224), 
            .O(n5158[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_17 (.CI(n26358), .I0(n2943), .I1(n2638), .CO(n26359));
    SB_LUT4 div_37_LessThan_1341_i33_2_lut (.I0(n1973), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4145));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1991_3_lut (.I0(n2844), .I1(n5340[6]), .I2(n294[4]), 
            .I3(GND_net), .O(n2955));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1991_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_973 (.I0(n33582), .I1(n11350), .I2(n33624), .I3(n33580), 
            .O(n11398));
    defparam i1_4_lut_adj_973.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_1341_i27_2_lut (.I0(n1976), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4146));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_974 (.I0(n11398), .I1(n48_adj_4139), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1116));
    defparam i1_3_lut_adj_974.LUT_INIT = 16'hefef;
    SB_LUT4 i31232_4_lut (.I0(n33_adj_4145), .I1(n31_adj_4144), .I2(n29_adj_4143), 
            .I3(n27_adj_4146), .O(n35887));
    defparam i31232_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31669_3_lut (.I0(n36863), .I1(baudrate[12]), .I2(n35), .I3(GND_net), 
            .O(n36324));   // verilog/uart_rx.v(119[33:55])
    defparam i31669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1992_3_lut (.I0(n2845), .I1(n5340[5]), .I2(n294[4]), 
            .I3(GND_net), .O(n2956));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1997_i13_2_lut (.I0(n2955), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n13_adj_4147));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32347_4_lut (.I0(n36324), .I1(n37000), .I2(n45_adj_3978), 
            .I3(n36804), .O(n37002));   // verilog/uart_rx.v(119[33:55])
    defparam i32347_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1997_i15_2_lut (.I0(n2954), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4148));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i15_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY sub_38_add_2_24 (.CI(n26077), .I0(n34007), .I1(VCC_net), 
            .CO(n26078));
    SB_LUT4 div_37_LessThan_1341_i38_3_lut (.I0(n30_adj_4095), .I1(baudrate[9]), 
            .I2(n41_adj_4141), .I3(GND_net), .O(n38_adj_4149));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1341_i26_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1977), .I3(GND_net), .O(n26_adj_4150));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1341_i26_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32034_3_lut (.I0(n26_adj_4150), .I1(baudrate[5]), .I2(n33_adj_4145), 
            .I3(GND_net), .O(n36689));   // verilog/uart_rx.v(119[33:55])
    defparam i32034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32035_3_lut (.I0(n36689), .I1(baudrate[6]), .I2(n35_adj_4140), 
            .I3(GND_net), .O(n36690));   // verilog/uart_rx.v(119[33:55])
    defparam i32035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1981_3_lut (.I0(n2834), .I1(n5340[16]), .I2(n294[4]), 
            .I3(GND_net), .O(n2945));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_38_add_2_23_lut (.I0(o_Rx_DV_N_3358[18]), .I1(n294[21]), 
            .I2(VCC_net), .I3(n26076), .O(n23)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 div_37_i1987_3_lut (.I0(n2840), .I1(n5340[10]), .I2(n294[4]), 
            .I3(GND_net), .O(n2951));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31193_4_lut (.I0(n39_adj_4142), .I1(n37_adj_4138), .I2(n35_adj_4140), 
            .I3(n35887), .O(n35848));
    defparam i31193_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1988_3_lut (.I0(n2841), .I1(n5340[9]), .I2(n294[4]), 
            .I3(GND_net), .O(n2952));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i848_3_lut (.I0(n1116), .I1(n5002[18]), .I2(n294[17]), 
            .I3(GND_net), .O(n1266));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i848_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i947_3_lut (.I0(n1266), .I1(n5028[18]), .I2(n294[16]), 
            .I3(GND_net), .O(n1413));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32358_4_lut (.I0(n38_adj_4149), .I1(n28_adj_4089), .I2(n41_adj_4141), 
            .I3(n35825), .O(n37013));   // verilog/uart_rx.v(119[33:55])
    defparam i32358_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31645_3_lut (.I0(n36690), .I1(baudrate[7]), .I2(n37_adj_4138), 
            .I3(GND_net), .O(n36300));   // verilog/uart_rx.v(119[33:55])
    defparam i31645_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32432_4_lut (.I0(n36300), .I1(n37013), .I2(n41_adj_4141), 
            .I3(n35848), .O(n37087));   // verilog/uart_rx.v(119[33:55])
    defparam i32432_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32433_3_lut (.I0(n37087), .I1(baudrate[10]), .I2(n1968), 
            .I3(GND_net), .O(n37088));   // verilog/uart_rx.v(119[33:55])
    defparam i32433_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32417_3_lut (.I0(n37088), .I1(baudrate[11]), .I2(n1967), 
            .I3(GND_net), .O(n37072));   // verilog/uart_rx.v(119[33:55])
    defparam i32417_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1997_i17_2_lut (.I0(n2953), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4151));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i19_2_lut (.I0(n2952), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4152));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31317_2_lut_4_lut (.I0(n2715), .I1(baudrate[16]), .I2(n2724), 
            .I3(baudrate[7]), .O(n35972));
    defparam i31317_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1997_i21_2_lut (.I0(n2951), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4153));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1997_i33_2_lut (.I0(n2945), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4154));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1044_3_lut (.I0(n1413), .I1(n5054[18]), .I2(n294[15]), 
            .I3(GND_net), .O(n1557));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1044_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1139_3_lut (.I0(n1557), .I1(n5080[18]), .I2(n294[14]), 
            .I3(GND_net), .O(n1698));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1139_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32385_3_lut (.I0(n37072), .I1(baudrate[12]), .I2(n1966), 
            .I3(GND_net), .O(n48_adj_4002));   // verilog/uart_rx.v(119[33:55])
    defparam i32385_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32534_2_lut_4_lut (.I0(n36893), .I1(baudrate[5]), .I2(n30962), 
            .I3(n11398), .O(n294[18]));   // verilog/uart_rx.v(119[33:55])
    defparam i32534_2_lut_4_lut.LUT_INIT = 16'h0017;
    SB_LUT4 div_37_i1506_3_lut (.I0(n2110), .I1(n5184[11]), .I2(n294[10]), 
            .I3(GND_net), .O(n2239));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1591_3_lut (.I0(n2239), .I1(n5210[11]), .I2(n294[9]), 
            .I3(GND_net), .O(n2365));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i22_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2365), .I3(GND_net), .O(n22_adj_4087));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i29267_3_lut (.I0(baudrate[31]), .I1(baudrate[21]), .I2(baudrate[27]), 
            .I3(GND_net), .O(n33913));
    defparam i29267_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i29329_4_lut (.I0(n33913), .I1(n33636), .I2(n33911), .I3(n33590), 
            .O(n33975));
    defparam i29329_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1674_3_lut (.I0(n2365), .I1(n5236[11]), .I2(n294[8]), 
            .I3(GND_net), .O(n2488));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1674_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1546_16_lut (.I0(GND_net), .I1(n2944), .I2(n2519), .I3(n26357), 
            .O(n5366[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1755_3_lut (.I0(n2488), .I1(n5262[11]), .I2(n294[7]), 
            .I3(GND_net), .O(n2608));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31228_4_lut (.I0(n33_adj_4154), .I1(n21_adj_4153), .I2(n19_adj_4152), 
            .I3(n17_adj_4151), .O(n35883));
    defparam i31228_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1834_3_lut (.I0(n2608), .I1(n5288[11]), .I2(n294[6]), 
            .I3(GND_net), .O(n2725));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1834_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1538_6 (.CI(n26224), .I0(n1974), .I1(n1011), .CO(n26225));
    SB_LUT4 div_37_i2168_1_lut (.I0(baudrate[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2168_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1546_16 (.CI(n26357), .I0(n2944), .I1(n2519), .CO(n26358));
    SB_LUT4 add_1538_5_lut (.I0(GND_net), .I1(n1975), .I2(n856), .I3(n26223), 
            .O(n5158[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i30933_2_lut_4_lut (.I0(n2360), .I1(baudrate[8]), .I2(n2364), 
            .I3(baudrate[4]), .O(n35588));
    defparam i30933_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1911_3_lut (.I0(n2725), .I1(n5314[11]), .I2(n294[5]), 
            .I3(GND_net), .O(n2839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1602_i24_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2360), .I3(GND_net), .O(n24_adj_4084));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i2169_1_lut (.I0(baudrate[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1459));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2169_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1232_3_lut (.I0(n1698), .I1(n5106[18]), .I2(n294[13]), 
            .I3(GND_net), .O(n1836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2172_1_lut (.I0(baudrate[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n856));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2172_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1250_i39_2_lut (.I0(n1835), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4155));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i37_2_lut (.I0(n1836), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4156));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i43_2_lut (.I0(n1833), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4157));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i41_2_lut (.I0(n1834), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4158));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i31_2_lut (.I0(n1839), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4159));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i33_2_lut (.I0(n1838), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4160));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1250_i35_2_lut (.I0(n1837), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4161));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_1546_15_lut (.I0(GND_net), .I1(n2945), .I2(n2397), .I3(n26356), 
            .O(n5366[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_5 (.CI(n26223), .I0(n1975), .I1(n856), .CO(n26224));
    SB_CARRY sub_38_add_2_23 (.CI(n26076), .I0(n294[21]), .I1(VCC_net), 
            .CO(n26077));
    SB_LUT4 div_37_LessThan_1250_i29_2_lut (.I0(n1840), .I1(baudrate[2]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4162));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31267_4_lut (.I0(n35_adj_4161), .I1(n33_adj_4160), .I2(n31_adj_4159), 
            .I3(n29_adj_4162), .O(n35922));
    defparam i31267_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31718_4_lut (.I0(n15_adj_4148), .I1(n13_adj_4147), .I2(n2956), 
            .I3(baudrate[2]), .O(n36373));
    defparam i31718_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 i30947_2_lut_4_lut (.I0(n2362), .I1(baudrate[6]), .I2(n2363), 
            .I3(baudrate[5]), .O(n35602));
    defparam i30947_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1250_i40_3_lut (.I0(n32_adj_4086), .I1(baudrate[9]), 
            .I2(n43_adj_4157), .I3(GND_net), .O(n40_adj_4163));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1250_i28_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1841), .I3(GND_net), .O(n28_adj_4164));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1250_i28_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32038_3_lut (.I0(n28_adj_4164), .I1(baudrate[5]), .I2(n35_adj_4161), 
            .I3(GND_net), .O(n36693));   // verilog/uart_rx.v(119[33:55])
    defparam i32038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31948_4_lut (.I0(n21_adj_4153), .I1(n19_adj_4152), .I2(n17_adj_4151), 
            .I3(n36373), .O(n36603));
    defparam i31948_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31946_4_lut (.I0(n27_adj_4136), .I1(n25_adj_4135), .I2(n23_adj_4130), 
            .I3(n36603), .O(n36601));
    defparam i31946_4_lut.LUT_INIT = 16'hfeff;
    SB_CARRY add_1546_15 (.CI(n26356), .I0(n2945), .I1(n2397), .CO(n26357));
    SB_LUT4 add_1538_4_lut (.I0(GND_net), .I1(n1976), .I2(n698), .I3(n26222), 
            .O(n5158[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i31234_4_lut (.I0(n33_adj_4154), .I1(n31_adj_4120), .I2(n29_adj_4119), 
            .I3(n36601), .O(n35889));
    defparam i31234_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32039_3_lut (.I0(n36693), .I1(baudrate[6]), .I2(n37_adj_4156), 
            .I3(GND_net), .O(n36694));   // verilog/uart_rx.v(119[33:55])
    defparam i32039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31260_4_lut (.I0(n41_adj_4158), .I1(n39_adj_4155), .I2(n37_adj_4156), 
            .I3(n35922), .O(n35915));
    defparam i31260_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32317_4_lut (.I0(n40_adj_4163), .I1(n30_adj_4080), .I2(n43_adj_4157), 
            .I3(n35913), .O(n36972));   // verilog/uart_rx.v(119[33:55])
    defparam i32317_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31640_3_lut (.I0(n36694), .I1(baudrate[7]), .I2(n39_adj_4155), 
            .I3(GND_net), .O(n36295));   // verilog/uart_rx.v(119[33:55])
    defparam i31640_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32418_4_lut (.I0(n36295), .I1(n36972), .I2(n43_adj_4157), 
            .I3(n35915), .O(n37073));   // verilog/uart_rx.v(119[33:55])
    defparam i32418_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32419_3_lut (.I0(n37073), .I1(baudrate[10]), .I2(n1832), 
            .I3(GND_net), .O(n37074));   // verilog/uart_rx.v(119[33:55])
    defparam i32419_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1602_i26_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2362), .I3(GND_net), .O(n26_adj_4082));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1602_i26_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 sub_38_add_2_22_lut (.I0(n32874), .I1(n294[20]), .I2(VCC_net), 
            .I3(n26075), .O(n32876)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_1546_14_lut (.I0(GND_net), .I1(n2946), .I2(n2272), .I3(n26355), 
            .O(n5366[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1997_i10_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2957), .I3(GND_net), .O(n10_adj_4165));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i10_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1418_3_lut (.I0(n1977), .I1(n5158[12]), .I2(n294[11]), 
            .I3(GND_net), .O(n2109));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1505_3_lut (.I0(n2109), .I1(n5184[12]), .I2(n294[10]), 
            .I3(GND_net), .O(n2238));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1590_3_lut (.I0(n2238), .I1(n5210[12]), .I2(n294[9]), 
            .I3(GND_net), .O(n2364));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1590_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1673_3_lut (.I0(n2364), .I1(n5236[12]), .I2(n294[8]), 
            .I3(GND_net), .O(n2487));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1673_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1754_3_lut (.I0(n2487), .I1(n5262[12]), .I2(n294[7]), 
            .I3(GND_net), .O(n2607));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1833_3_lut (.I0(n2607), .I1(n5288[12]), .I2(n294[6]), 
            .I3(GND_net), .O(n2724));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2167_1_lut (.I0(baudrate[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1742));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2167_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_1538_4 (.CI(n26222), .I0(n1976), .I1(n698), .CO(n26223));
    SB_CARRY add_1546_14 (.CI(n26355), .I0(n2946), .I1(n2272), .CO(n26356));
    SB_LUT4 div_37_i1910_3_lut (.I0(n2724), .I1(n5314[12]), .I2(n294[5]), 
            .I3(GND_net), .O(n2838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32008_3_lut (.I0(n10_adj_4165), .I1(baudrate[13]), .I2(n33_adj_4154), 
            .I3(GND_net), .O(n36663));   // verilog/uart_rx.v(119[33:55])
    defparam i32008_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_38_add_2_22 (.CI(n26075), .I0(n294[20]), .I1(VCC_net), 
            .CO(n26076));
    SB_LUT4 i32009_3_lut (.I0(n36663), .I1(baudrate[14]), .I2(n35_adj_4114), 
            .I3(GND_net), .O(n36664));   // verilog/uart_rx.v(119[33:55])
    defparam i32009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_975 (.I0(baudrate[27]), .I1(baudrate[28]), .I2(GND_net), 
            .I3(GND_net), .O(n33592));
    defparam i1_2_lut_adj_975.LUT_INIT = 16'heeee;
    SB_LUT4 sub_38_add_2_21_lut (.I0(n32872), .I1(n294[19]), .I2(VCC_net), 
            .I3(n26074), .O(n32874)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_2_lut_adj_976 (.I0(baudrate[31]), .I1(baudrate[26]), .I2(GND_net), 
            .I3(GND_net), .O(n33596));
    defparam i1_2_lut_adj_976.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_1157_i43_2_lut (.I0(n1695), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4166));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i37_2_lut (.I0(n1698), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4167));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i41_2_lut (.I0(n1696), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4168));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1157_i39_2_lut (.I0(n1697), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4169));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2070_i10_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3064), .I3(GND_net), .O(n10_adj_4065));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2070_i14_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3061), .I3(GND_net), .O(n14_adj_4063));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31139_2_lut_4_lut (.I0(n3051), .I1(baudrate[16]), .I2(n3060), 
            .I3(baudrate[7]), .O(n35794));
    defparam i31139_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 add_1546_13_lut (.I0(GND_net), .I1(n2947), .I2(n2144), .I3(n26354), 
            .O(n5366[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_13 (.CI(n26354), .I0(n2947), .I1(n2144), .CO(n26355));
    SB_LUT4 add_1538_3_lut (.I0(GND_net), .I1(n1977), .I2(n858), .I3(n26221), 
            .O(n5158[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1538_3 (.CI(n26221), .I0(n1977), .I1(n858), .CO(n26222));
    SB_LUT4 add_1546_12_lut (.I0(GND_net), .I1(n2948), .I2(n2013), .I3(n26353), 
            .O(n5366[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_12 (.CI(n26353), .I0(n2948), .I1(n2013), .CO(n26354));
    SB_LUT4 add_1546_11_lut (.I0(GND_net), .I1(n2949), .I2(n1879), .I3(n26352), 
            .O(n5366[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_11 (.CI(n26352), .I0(n2949), .I1(n1879), .CO(n26353));
    SB_LUT4 add_1546_10_lut (.I0(GND_net), .I1(n2950), .I2(n1742), .I3(n26351), 
            .O(n5366[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_21 (.CI(n26074), .I0(n294[19]), .I1(VCC_net), 
            .CO(n26075));
    SB_CARRY add_1546_10 (.CI(n26351), .I0(n2950), .I1(n1742), .CO(n26352));
    SB_LUT4 add_1538_2_lut (.I0(GND_net), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n5158[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1538_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18065_rep_3_2_lut (.I0(n5080[14]), .I1(n294[14]), .I2(GND_net), 
            .I3(GND_net), .O(n31205));   // verilog/uart_rx.v(119[33:55])
    defparam i18065_rep_3_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 div_37_LessThan_1157_i32_4_lut (.I0(n31205), .I1(baudrate[2]), 
            .I2(n1701), .I3(baudrate[1]), .O(n32_adj_4170));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i32_4_lut.LUT_INIT = 16'h4d0c;
    SB_LUT4 i32040_3_lut (.I0(n32_adj_4170), .I1(baudrate[6]), .I2(n39_adj_4169), 
            .I3(GND_net), .O(n36695));   // verilog/uart_rx.v(119[33:55])
    defparam i32040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32041_3_lut (.I0(n36695), .I1(baudrate[7]), .I2(n41_adj_4168), 
            .I3(GND_net), .O(n36696));   // verilog/uart_rx.v(119[33:55])
    defparam i32041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31750_4_lut (.I0(n41_adj_4168), .I1(n39_adj_4169), .I2(n37_adj_4167), 
            .I3(n35950), .O(n36405));
    defparam i31750_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32080_3_lut (.I0(n34_adj_4171), .I1(baudrate[5]), .I2(n37_adj_4167), 
            .I3(GND_net), .O(n36735));   // verilog/uart_rx.v(119[33:55])
    defparam i32080_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31634_3_lut (.I0(n36696), .I1(baudrate[8]), .I2(n43_adj_4166), 
            .I3(GND_net), .O(n36289));   // verilog/uart_rx.v(119[33:55])
    defparam i31634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32223_4_lut (.I0(n36289), .I1(n36735), .I2(n43_adj_4166), 
            .I3(n36405), .O(n36878));   // verilog/uart_rx.v(119[33:55])
    defparam i32223_4_lut.LUT_INIT = 16'haaac;
    SB_CARRY add_1538_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26221));
    SB_LUT4 add_1546_9_lut (.I0(GND_net), .I1(n2951), .I2(n1602), .I3(n26350), 
            .O(n5366[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_9 (.CI(n26350), .I0(n2951), .I1(n1602), .CO(n26351));
    SB_LUT4 add_1546_8_lut (.I0(GND_net), .I1(n2952), .I2(n1459), .I3(n26349), 
            .O(n5366[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_8 (.CI(n26349), .I0(n2952), .I1(n1459), .CO(n26350));
    SB_LUT4 add_1546_7_lut (.I0(GND_net), .I1(n2953), .I2(n1460), .I3(n26348), 
            .O(n5366[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_7 (.CI(n26348), .I0(n2953), .I1(n1460), .CO(n26349));
    SB_LUT4 add_1546_6_lut (.I0(GND_net), .I1(n2954), .I2(n1011), .I3(n26347), 
            .O(n5366[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32224_3_lut (.I0(n36878), .I1(baudrate[9]), .I2(n1694), .I3(GND_net), 
            .O(n36879));   // verilog/uart_rx.v(119[33:55])
    defparam i32224_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1157_i48_3_lut (.I0(n36879), .I1(baudrate[10]), 
            .I2(n1693), .I3(GND_net), .O(n48_adj_4172));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_2070_i16_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3051), .I3(GND_net), .O(n16_adj_4061));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i16_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_4_lut_adj_977 (.I0(n33636), .I1(n33592), .I2(n33594), .I3(baudrate[11]), 
            .O(n33622));
    defparam i1_4_lut_adj_977.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_978 (.I0(n33622), .I1(n33624), .I2(n33612), .I3(n33568), 
            .O(n11444));
    defparam i1_4_lut_adj_978.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_979 (.I0(n11444), .I1(n48_adj_4172), .I2(baudrate[0]), 
            .I3(GND_net), .O(n1841));
    defparam i1_3_lut_adj_979.LUT_INIT = 16'hefef;
    SB_LUT4 div_37_i1328_3_lut (.I0(n1841), .I1(n5132[13]), .I2(n294[12]), 
            .I3(GND_net), .O(n1976));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1328_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1546_6 (.CI(n26347), .I0(n2954), .I1(n1011), .CO(n26348));
    SB_LUT4 add_1546_5_lut (.I0(GND_net), .I1(n2955), .I2(n856), .I3(n26346), 
            .O(n5366[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_5 (.CI(n26346), .I0(n2955), .I1(n856), .CO(n26347));
    SB_LUT4 add_1546_4_lut (.I0(GND_net), .I1(n2956), .I2(n698), .I3(n26345), 
            .O(n5366[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1685_i20_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2489), .I3(GND_net), .O(n20_adj_4057));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1546_4 (.CI(n26345), .I0(n2956), .I1(n698), .CO(n26346));
    SB_LUT4 i30884_2_lut_4_lut (.I0(n2484), .I1(baudrate[8]), .I2(n2488), 
            .I3(baudrate[4]), .O(n35539));
    defparam i30884_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1997_i36_3_lut (.I0(n18_adj_4073), .I1(baudrate[17]), 
            .I2(n41_adj_4113), .I3(GND_net), .O(n36));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31223_4_lut (.I0(n39_adj_4121), .I1(n37_adj_4110), .I2(n35_adj_4114), 
            .I3(n35883), .O(n35878));
    defparam i31223_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32368_4_lut (.I0(n36), .I1(n16_adj_4059), .I2(n41_adj_4113), 
            .I3(n35876), .O(n37023));   // verilog/uart_rx.v(119[33:55])
    defparam i32368_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i31685_3_lut (.I0(n36664), .I1(baudrate[15]), .I2(n37_adj_4110), 
            .I3(GND_net), .O(n36340));   // verilog/uart_rx.v(119[33:55])
    defparam i31685_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1417_3_lut (.I0(n1976), .I1(n5158[13]), .I2(n294[11]), 
            .I3(GND_net), .O(n2108));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1504_3_lut (.I0(n2108), .I1(n5184[13]), .I2(n294[10]), 
            .I3(GND_net), .O(n2237));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1589_3_lut (.I0(n2237), .I1(n5210[13]), .I2(n294[9]), 
            .I3(GND_net), .O(n2363));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1589_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1672_3_lut (.I0(n2363), .I1(n5236[13]), .I2(n294[8]), 
            .I3(GND_net), .O(n2486));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1753_3_lut (.I0(n2486), .I1(n5262[13]), .I2(n294[7]), 
            .I3(GND_net), .O(n2606));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2070_i12_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3059), .I3(GND_net), .O(n12_adj_4069));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2070_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1546_3_lut (.I0(GND_net), .I1(n2957), .I2(n858), .I3(n26344), 
            .O(n5366[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_i1832_3_lut (.I0(n2606), .I1(n5288[13]), .I2(n294[6]), 
            .I3(GND_net), .O(n2723));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2166_1_lut (.I0(baudrate[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1879));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2166_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_1997_i22_3_lut (.I0(n14_adj_4058), .I1(baudrate[9]), 
            .I2(n25_adj_4135), .I3(GND_net), .O(n22_adj_4173));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1997_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32331_4_lut (.I0(n22_adj_4173), .I1(n12_adj_4055), .I2(n25_adj_4135), 
            .I3(n35895), .O(n36986));   // verilog/uart_rx.v(119[33:55])
    defparam i32331_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32332_3_lut (.I0(n36986), .I1(baudrate[10]), .I2(n27_adj_4136), 
            .I3(GND_net), .O(n36987));   // verilog/uart_rx.v(119[33:55])
    defparam i32332_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32204_3_lut (.I0(n36987), .I1(baudrate[11]), .I2(n29_adj_4119), 
            .I3(GND_net), .O(n36859));   // verilog/uart_rx.v(119[33:55])
    defparam i32204_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32137_4_lut (.I0(n39_adj_4121), .I1(n37_adj_4110), .I2(n35_adj_4114), 
            .I3(n35889), .O(n36792));
    defparam i32137_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1909_3_lut (.I0(n2723), .I1(n5314[13]), .I2(n294[5]), 
            .I3(GND_net), .O(n2837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1685_i22_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2484), .I3(GND_net), .O(n22_adj_4056));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31161_2_lut_4_lut (.I0(n3059), .I1(baudrate[8]), .I2(n3063), 
            .I3(baudrate[4]), .O(n35816));
    defparam i31161_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i32436_4_lut (.I0(n36340), .I1(n37023), .I2(n41_adj_4113), 
            .I3(n35878), .O(n37091));   // verilog/uart_rx.v(119[33:55])
    defparam i32436_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 div_37_LessThan_1685_i24_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2486), .I3(GND_net), .O(n24));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i24_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1062_i43_2_lut (.I0(n1554), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4174));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1685_i18_3_lut_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32832), .I3(n48_adj_4001), .O(n18_adj_4054));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1685_i18_3_lut_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i31683_3_lut (.I0(n36859), .I1(baudrate[12]), .I2(n31_adj_4120), 
            .I3(GND_net), .O(n36338));   // verilog/uart_rx.v(119[33:55])
    defparam i31683_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i37_2_lut (.I0(n1557), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4175));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32454_4_lut (.I0(n36338), .I1(n37091), .I2(n41_adj_4113), 
            .I3(n36792), .O(n37109));   // verilog/uart_rx.v(119[33:55])
    defparam i32454_4_lut.LUT_INIT = 16'hccca;
    SB_CARRY add_1546_3 (.CI(n26344), .I0(n2957), .I1(n858), .CO(n26345));
    SB_LUT4 i1_2_lut_adj_980 (.I0(baudrate[5]), .I1(baudrate[6]), .I2(GND_net), 
            .I3(GND_net), .O(n33370));
    defparam i1_2_lut_adj_980.LUT_INIT = 16'heeee;
    SB_LUT4 i32455_3_lut (.I0(n37109), .I1(baudrate[18]), .I2(n2940), 
            .I3(GND_net), .O(n37110));   // verilog/uart_rx.v(119[33:55])
    defparam i32455_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32449_3_lut (.I0(n37110), .I1(baudrate[19]), .I2(n2939), 
            .I3(GND_net), .O(n37104));   // verilog/uart_rx.v(119[33:55])
    defparam i32449_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1546_2_lut (.I0(n31169), .I1(GND_net), .I2(n538), .I3(VCC_net), 
            .O(n32842)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1546_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_1537_13_lut (.I0(GND_net), .I1(n1831), .I2(n2144), .I3(n26220), 
            .O(n5132[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 div_37_LessThan_1062_i41_2_lut (.I0(n1555), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4176));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1062_i39_2_lut (.I0(n1556), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4177));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i30908_2_lut_4_lut (.I0(n2486), .I1(baudrate[6]), .I2(n2487), 
            .I3(baudrate[5]), .O(n35563));
    defparam i30908_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i5_3_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3358[24] ), .I2(n27), 
            .I3(GND_net), .O(n14_adj_4178));
    defparam i5_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_4_lut (.I0(n11391), .I1(n48), .I2(baudrate[1]), .I3(baudrate[0]), 
            .O(n44_adj_4049));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i6_4_lut (.I0(n29), .I1(\o_Rx_DV_N_3358[12] ), .I2(n23), .I3(n2856), 
            .O(n15_adj_4179));
    defparam i6_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 div_37_LessThan_1845_i22_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n2715), .I3(GND_net), .O(n22_adj_4103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1845_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_557_i42_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n805), .I3(GND_net), .O(n42_adj_4180));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_557_i42_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i2819_2_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n42_adj_3992));   // verilog/uart_rx.v(119[33:55])
    defparam i2819_2_lut_3_lut.LUT_INIT = 16'h2b2b;
    SB_LUT4 add_1537_12_lut (.I0(GND_net), .I1(n1832), .I2(n2013), .I3(n26219), 
            .O(n5132[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1546_2 (.CI(VCC_net), .I0(GND_net), .I1(n538), .CO(n26344));
    SB_LUT4 div_37_LessThan_1062_i32_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1560), .I3(GND_net), .O(n32_adj_4181));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i32_3_lut.LUT_INIT = 16'h8e8e;
    SB_CARRY add_1537_12 (.CI(n26219), .I0(n1832), .I1(n2013), .CO(n26220));
    SB_LUT4 sub_38_add_2_20_lut (.I0(GND_net), .I1(n294[18]), .I2(VCC_net), 
            .I3(n26073), .O(o_Rx_DV_N_3358[18])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_38_add_2_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1537_11_lut (.I0(GND_net), .I1(n1833), .I2(n1879), .I3(n26218), 
            .O(n5132[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_11 (.CI(n26218), .I0(n1833), .I1(n1879), .CO(n26219));
    SB_LUT4 add_1537_10_lut (.I0(GND_net), .I1(n1834), .I2(n1742), .I3(n26217), 
            .O(n5132[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_38_add_2_20 (.CI(n26073), .I0(n294[18]), .I1(VCC_net), 
            .CO(n26074));
    SB_LUT4 add_1545_21_lut (.I0(GND_net), .I1(n2827), .I2(n3084), .I3(n26343), 
            .O(n5340[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1537_10 (.CI(n26217), .I0(n1834), .I1(n1742), .CO(n26218));
    SB_LUT4 i32245_3_lut (.I0(n42_adj_4180), .I1(baudrate[2]), .I2(n804), 
            .I3(GND_net), .O(n36900));   // verilog/uart_rx.v(119[33:55])
    defparam i32245_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 add_1537_9_lut (.I0(GND_net), .I1(n1835), .I2(n1602), .I3(n26216), 
            .O(n5132[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1537_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32042_3_lut (.I0(n32_adj_4181), .I1(baudrate[5]), .I2(n39_adj_4177), 
            .I3(GND_net), .O(n36697));   // verilog/uart_rx.v(119[33:55])
    defparam i32042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1545_20_lut (.I0(GND_net), .I1(n2828), .I2(n2977), .I3(n26342), 
            .O(n5340[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1545_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1545_20 (.CI(n26342), .I0(n2828), .I1(n2977), .CO(n26343));
    SB_CARRY add_1537_9 (.CI(n26216), .I0(n1835), .I1(n1602), .CO(n26217));
    SB_LUT4 i8_4_lut (.I0(n15_adj_4179), .I1(\o_Rx_DV_N_3358[8] ), .I2(n14_adj_4178), 
            .I3(n30308), .O(n37443));
    defparam i8_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 div_37_LessThan_1766_i18_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n2610), .I3(GND_net), .O(n18_adj_4027));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i18_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32043_3_lut (.I0(n36697), .I1(baudrate[6]), .I2(n41_adj_4176), 
            .I3(GND_net), .O(n36698));   // verilog/uart_rx.v(119[33:55])
    defparam i32043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31760_4_lut (.I0(n41_adj_4176), .I1(n39_adj_4177), .I2(n37_adj_4175), 
            .I3(n35970), .O(n36415));
    defparam i31760_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32078_3_lut (.I0(n34_adj_4182), .I1(baudrate[4]), .I2(n37_adj_4175), 
            .I3(GND_net), .O(n36733));   // verilog/uart_rx.v(119[33:55])
    defparam i32078_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31625_3_lut (.I0(n36698), .I1(baudrate[7]), .I2(n43_adj_4174), 
            .I3(GND_net), .O(n36280));   // verilog/uart_rx.v(119[33:55])
    defparam i31625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32225_4_lut (.I0(n36280), .I1(n36733), .I2(n43_adj_4174), 
            .I3(n36415), .O(n36880));   // verilog/uart_rx.v(119[33:55])
    defparam i32225_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32226_3_lut (.I0(n36880), .I1(baudrate[8]), .I2(n1553), .I3(GND_net), 
            .O(n36881));   // verilog/uart_rx.v(119[33:55])
    defparam i32226_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31399_2_lut_4_lut (.I0(n2605), .I1(baudrate[8]), .I2(n2609), 
            .I3(baudrate[4]), .O(n36054));
    defparam i31399_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1766_i20_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n2605), .I3(GND_net), .O(n20_adj_4026));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i20_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32563_4_lut_4_lut (.I0(\r_SM_Main_2__N_3316[1] ), .I1(r_SM_Main[1]), 
            .I2(n6), .I3(n31807), .O(n31122));
    defparam i32563_4_lut_4_lut.LUT_INIT = 16'h0703;
    SB_LUT4 div_37_LessThan_1766_i22_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n2607), .I3(GND_net), .O(n22));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1766_i22_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31408_2_lut_4_lut (.I0(n2607), .I1(baudrate[6]), .I2(n2608), 
            .I3(baudrate[5]), .O(n36063));
    defparam i31408_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_1062_i48_3_lut (.I0(n36881), .I1(baudrate[9]), 
            .I2(n1552), .I3(GND_net), .O(n48_adj_4003));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i48_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1899_3_lut (.I0(n2713), .I1(n5314[23]), .I2(n294[5]), 
            .I3(GND_net), .O(n2827));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1900_3_lut (.I0(n2714), .I1(n5314[22]), .I2(n294[5]), 
            .I3(GND_net), .O(n2828));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i39_2_lut (.I0(n2831), .I1(baudrate[15]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4184));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32246_3_lut (.I0(n36900), .I1(baudrate[3]), .I2(n803), .I3(GND_net), 
            .O(n36901));   // verilog/uart_rx.v(119[33:55])
    defparam i32246_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_1922_i37_2_lut (.I0(n2832), .I1(baudrate[14]), 
            .I2(GND_net), .I3(GND_net), .O(n37_adj_4185));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i37_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i43_2_lut (.I0(n2829), .I1(baudrate[17]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4186));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i41_2_lut (.I0(n2830), .I1(baudrate[16]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4187));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i31_2_lut (.I0(n2835), .I1(baudrate[11]), 
            .I2(GND_net), .I3(GND_net), .O(n31_adj_4188));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i31_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i33_2_lut (.I0(n2834), .I1(baudrate[12]), 
            .I2(GND_net), .I3(GND_net), .O(n33_adj_4189));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i33_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i25_2_lut (.I0(n2838), .I1(baudrate[8]), 
            .I2(GND_net), .I3(GND_net), .O(n25_adj_4190));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i25_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3897_2_lut_3_lut (.I0(n805), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n7791));   // verilog/uart_rx.v(119[33:55])
    defparam i3897_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 div_37_LessThan_1922_i27_2_lut (.I0(n2837), .I1(baudrate[9]), 
            .I2(GND_net), .I3(GND_net), .O(n27_adj_4191));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i27_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i29_2_lut (.I0(n2836), .I1(baudrate[10]), 
            .I2(GND_net), .I3(GND_net), .O(n29_adj_4192));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i29_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i19_2_lut (.I0(n2841), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n19_adj_4193));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i19_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i21_2_lut (.I0(n2840), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n21_adj_4194));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i21_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32067_3_lut (.I0(n36901), .I1(baudrate[4]), .I2(n30960), 
            .I3(GND_net), .O(n48_adj_4004));   // verilog/uart_rx.v(119[33:55])
    defparam i32067_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 div_37_LessThan_1922_i23_2_lut (.I0(n2839), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n23_adj_4195));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i23_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1236_3_lut (.I0(n1702), .I1(n5106[14]), .I2(n294[13]), 
            .I3(GND_net), .O(n1840));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i35_2_lut (.I0(n2833), .I1(baudrate[13]), 
            .I2(GND_net), .I3(GND_net), .O(n35_adj_4196));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i35_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i15_2_lut (.I0(n2843), .I1(baudrate[3]), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_4197));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_1922_i17_2_lut (.I0(n2842), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n17_adj_4198));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i17_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i1327_3_lut (.I0(n1840), .I1(n5132[14]), .I2(n294[12]), 
            .I3(GND_net), .O(n1975));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1327_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31277_4_lut (.I0(n35_adj_4196), .I1(n23_adj_4195), .I2(n21_adj_4194), 
            .I3(n19_adj_4193), .O(n35932));
    defparam i31277_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_i1416_3_lut (.I0(n1975), .I1(n5158[14]), .I2(n294[11]), 
            .I3(GND_net), .O(n2107));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1503_3_lut (.I0(n2107), .I1(n5184[14]), .I2(n294[10]), 
            .I3(GND_net), .O(n2236));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1588_3_lut (.I0(n2236), .I1(n5210[14]), .I2(n294[9]), 
            .I3(GND_net), .O(n2362));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1671_3_lut (.I0(n2362), .I1(n5236[14]), .I2(n294[8]), 
            .I3(GND_net), .O(n2485));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1752_3_lut (.I0(n2485), .I1(n5262[14]), .I2(n294[7]), 
            .I3(GND_net), .O(n2605));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1831_3_lut (.I0(n2605), .I1(n5288[14]), .I2(n294[6]), 
            .I3(GND_net), .O(n2722));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2165_1_lut (.I0(baudrate[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2013));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2165_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31002_2_lut_3_lut (.I0(baudrate[1]), .I1(n48), .I2(n11391), 
            .I3(GND_net), .O(n35657));   // verilog/uart_rx.v(119[33:55])
    defparam i31002_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 div_37_i1908_3_lut (.I0(n2722), .I1(n5314[14]), .I2(n294[5]), 
            .I3(GND_net), .O(n2836));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31766_4_lut (.I0(n17_adj_4198), .I1(n15_adj_4197), .I2(n2844), 
            .I3(baudrate[2]), .O(n36421));
    defparam i31766_4_lut.LUT_INIT = 16'heffe;
    SB_LUT4 div_37_LessThan_965_i45_2_lut (.I0(n1409), .I1(baudrate[7]), 
            .I2(GND_net), .I3(GND_net), .O(n45_adj_4199));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i45_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31968_4_lut (.I0(n23_adj_4195), .I1(n21_adj_4194), .I2(n19_adj_4193), 
            .I3(n36421), .O(n36623));
    defparam i31968_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i31964_4_lut (.I0(n29_adj_4192), .I1(n27_adj_4191), .I2(n25_adj_4190), 
            .I3(n36623), .O(n36619));
    defparam i31964_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 div_37_LessThan_965_i39_2_lut (.I0(n1412), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n39_adj_4200));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i39_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31279_4_lut (.I0(n35_adj_4196), .I1(n33_adj_4189), .I2(n31_adj_4188), 
            .I3(n36619), .O(n35934));
    defparam i31279_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_1922_i12_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n2845), .I3(GND_net), .O(n12_adj_4201));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i12_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32014_3_lut (.I0(n12_adj_4201), .I1(baudrate[13]), .I2(n35_adj_4196), 
            .I3(GND_net), .O(n36669));   // verilog/uart_rx.v(119[33:55])
    defparam i32014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1922_i38_3_lut (.I0(n20), .I1(baudrate[17]), 
            .I2(n43_adj_4186), .I3(GND_net), .O(n38_adj_4202));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32015_3_lut (.I0(n36669), .I1(baudrate[14]), .I2(n37_adj_4185), 
            .I3(GND_net), .O(n36670));   // verilog/uart_rx.v(119[33:55])
    defparam i32015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31271_4_lut (.I0(n41_adj_4187), .I1(n39_adj_4184), .I2(n37_adj_4185), 
            .I3(n35932), .O(n35926));
    defparam i31271_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32305_4_lut (.I0(n38_adj_4202), .I1(n18), .I2(n43_adj_4186), 
            .I3(n35924), .O(n36960));   // verilog/uart_rx.v(119[33:55])
    defparam i32305_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_965_i43_2_lut (.I0(n1410), .I1(baudrate[6]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4203));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31677_3_lut (.I0(n36670), .I1(baudrate[15]), .I2(n39_adj_4184), 
            .I3(GND_net), .O(n36332));   // verilog/uart_rx.v(119[33:55])
    defparam i31677_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_965_i41_2_lut (.I0(n1411), .I1(baudrate[5]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4204));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i32528_2_lut_4_lut (.I0(n46_adj_3996), .I1(baudrate[3]), .I2(n30958), 
            .I3(n11437), .O(n294[20]));   // verilog/uart_rx.v(119[33:55])
    defparam i32528_2_lut_4_lut.LUT_INIT = 16'h0017;
    SB_LUT4 i1_2_lut_3_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), .I2(n33248), 
            .I3(GND_net), .O(n33232));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 div_37_i1040_3_lut (.I0(n1409), .I1(n5054[22]), .I2(n294[15]), 
            .I3(GND_net), .O(n1553));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32044_3_lut (.I0(n34), .I1(baudrate[5]), .I2(n41_adj_4204), 
            .I3(GND_net), .O(n36699));   // verilog/uart_rx.v(119[33:55])
    defparam i32044_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32045_3_lut (.I0(n36699), .I1(baudrate[6]), .I2(n43_adj_4203), 
            .I3(GND_net), .O(n36700));   // verilog/uart_rx.v(119[33:55])
    defparam i32045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_981 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n33302), .I3(GND_net), .O(n33322));
    defparam i1_2_lut_3_lut_adj_981.LUT_INIT = 16'hf7f7;
    SB_LUT4 i31778_4_lut (.I0(n43_adj_4203), .I1(n41_adj_4204), .I2(n39_adj_4200), 
            .I3(n36014), .O(n36433));
    defparam i31778_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 div_37_LessThan_965_i38_3_lut (.I0(n36_adj_4205), .I1(baudrate[4]), 
            .I2(n39_adj_4200), .I3(GND_net), .O(n38_adj_4206));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31623_3_lut (.I0(n36700), .I1(baudrate[7]), .I2(n45_adj_4199), 
            .I3(GND_net), .O(n36278));   // verilog/uart_rx.v(119[33:55])
    defparam i31623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32076_4_lut (.I0(n36278), .I1(n38_adj_4206), .I2(n45_adj_4199), 
            .I3(n36433), .O(n36731));   // verilog/uart_rx.v(119[33:55])
    defparam i32076_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 div_37_LessThan_1922_i24_3_lut (.I0(n16), .I1(baudrate[9]), 
            .I2(n27_adj_4191), .I3(GND_net), .O(n24_adj_4207));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1922_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32329_4_lut (.I0(n24_adj_4207), .I1(n14_adj_4005), .I2(n27_adj_4191), 
            .I3(n35948), .O(n36984));   // verilog/uart_rx.v(119[33:55])
    defparam i32329_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32330_3_lut (.I0(n36984), .I1(baudrate[10]), .I2(n29_adj_4192), 
            .I3(GND_net), .O(n36985));   // verilog/uart_rx.v(119[33:55])
    defparam i32330_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_982 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n33302), .I3(GND_net), .O(n33214));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_982.LUT_INIT = 16'hfbfb;
    SB_LUT4 i32206_3_lut (.I0(n36985), .I1(baudrate[11]), .I2(n31_adj_4188), 
            .I3(GND_net), .O(n36861));   // verilog/uart_rx.v(119[33:55])
    defparam i32206_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31371_4_lut (.I0(\o_Rx_DV_N_3358[8] ), .I1(\o_Rx_DV_N_3358[12] ), 
            .I2(n2856), .I3(n30308), .O(n35352));
    defparam i31371_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i32145_4_lut (.I0(n41_adj_4187), .I1(n39_adj_4184), .I2(n37_adj_4185), 
            .I3(n35934), .O(n36800));
    defparam i32145_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32412_4_lut (.I0(n36332), .I1(n36960), .I2(n43_adj_4186), 
            .I3(n35926), .O(n37067));   // verilog/uart_rx.v(119[33:55])
    defparam i32412_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i31675_3_lut (.I0(n36861), .I1(baudrate[12]), .I2(n33_adj_4189), 
            .I3(GND_net), .O(n36330));   // verilog/uart_rx.v(119[33:55])
    defparam i31675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32442_4_lut (.I0(n36330), .I1(n37067), .I2(n43_adj_4186), 
            .I3(n36800), .O(n37097));   // verilog/uart_rx.v(119[33:55])
    defparam i32442_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32443_3_lut (.I0(n37097), .I1(baudrate[18]), .I2(n2828), 
            .I3(GND_net), .O(n37098));   // verilog/uart_rx.v(119[33:55])
    defparam i32443_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_4_lut_adj_983 (.I0(baudrate[12]), .I1(baudrate[13]), 
            .I2(baudrate[14]), .I3(baudrate[15]), .O(n33516));
    defparam i1_2_lut_4_lut_adj_983.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1142_3_lut (.I0(n1560), .I1(n5080[15]), .I2(n294[14]), 
            .I3(GND_net), .O(n1701));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1142_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1235_3_lut (.I0(n1701), .I1(n5106[15]), .I2(n294[13]), 
            .I3(GND_net), .O(n1839));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1235_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_984 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n33248), .I3(GND_net), .O(n33250));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_984.LUT_INIT = 16'hfbfb;
    SB_LUT4 div_37_i1326_3_lut (.I0(n1839), .I1(n5132[15]), .I2(n294[12]), 
            .I3(GND_net), .O(n1974));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1326_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1415_3_lut (.I0(n1974), .I1(n5158[15]), .I2(n294[11]), 
            .I3(GND_net), .O(n2106));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1502_3_lut (.I0(n2106), .I1(n5184[15]), .I2(n294[10]), 
            .I3(GND_net), .O(n2235));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1587_3_lut (.I0(n2235), .I1(n5210[15]), .I2(n294[9]), 
            .I3(GND_net), .O(n2361));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1670_3_lut (.I0(n2361), .I1(n5236[15]), .I2(n294[8]), 
            .I3(GND_net), .O(n2484));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1670_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1751_3_lut (.I0(n2484), .I1(n5262[15]), .I2(n294[7]), 
            .I3(GND_net), .O(n2604));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1830_3_lut (.I0(n2604), .I1(n5288[15]), .I2(n294[6]), 
            .I3(GND_net), .O(n2721));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2164_1_lut (.I0(baudrate[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2144));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2164_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31368_4_lut (.I0(n35352), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35349));
    defparam i31368_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 div_37_i1907_3_lut (.I0(n2721), .I1(n5314[15]), .I2(n294[5]), 
            .I3(GND_net), .O(n2835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut (.I0(r_SM_Main[1]), .I1(n35349), .I2(r_SM_Main[0]), 
            .I3(n27), .O(n13431));
    defparam i14_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 div_37_i1325_3_lut (.I0(n1838), .I1(n5132[16]), .I2(n294[12]), 
            .I3(GND_net), .O(n1973));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1414_3_lut (.I0(n1973), .I1(n5158[16]), .I2(n294[11]), 
            .I3(GND_net), .O(n2105));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32616_2_lut_4_lut (.I0(n36991), .I1(baudrate[22]), .I2(n3151), 
            .I3(n11383), .O(n294[1]));
    defparam i32616_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1501_3_lut (.I0(n2105), .I1(n5184[16]), .I2(n294[10]), 
            .I3(GND_net), .O(n2234));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_985 (.I0(n36903), .I1(baudrate[6]), .I2(n1111), 
            .I3(n32822), .O(n1267));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_985.LUT_INIT = 16'h7100;
    SB_LUT4 i31199_4_lut (.I0(r_SM_Main[0]), .I1(\o_Rx_DV_N_3358[12] ), 
            .I2(n2856), .I3(\o_Rx_DV_N_3358[8] ), .O(n35456));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31199_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i31342_4_lut (.I0(r_Rx_Data), .I1(\o_Rx_DV_N_3358[12] ), .I2(n30187), 
            .I3(r_SM_Main[0]), .O(n35462));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31342_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i31180_4_lut (.I0(n35456), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35453));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31180_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i32525_2_lut_4_lut (.I0(n36903), .I1(baudrate[6]), .I2(n1111), 
            .I3(n33971), .O(n294[17]));   // verilog/uart_rx.v(119[33:55])
    defparam i32525_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31203_4_lut (.I0(n35462), .I1(\o_Rx_DV_N_3358[24] ), .I2(n29), 
            .I3(n23), .O(n35459));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i31203_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 div_37_LessThan_765_i40_3_lut_3_lut (.I0(n1114), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n40_adj_4208));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i40_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 div_37_i1586_3_lut (.I0(n2234), .I1(n5210[16]), .I2(n294[9]), 
            .I3(GND_net), .O(n2360));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31059_3_lut_4_lut (.I0(n1114), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1115), .O(n35714));   // verilog/uart_rx.v(119[33:55])
    defparam i31059_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_i1669_3_lut (.I0(n2360), .I1(n5236[16]), .I2(n294[8]), 
            .I3(GND_net), .O(n2483));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1669_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1750_3_lut (.I0(n2483), .I1(n5262[16]), .I2(n294[7]), 
            .I3(GND_net), .O(n2603));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1829_3_lut (.I0(n2603), .I1(n5288[16]), .I2(n294[6]), 
            .I3(GND_net), .O(n2720));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_986 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n33248), .I3(GND_net), .O(n33286));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_986.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut_adj_987 (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(n33302), .I3(GND_net), .O(n33304));   // verilog/uart_rx.v(98[17:39])
    defparam i1_2_lut_3_lut_adj_987.LUT_INIT = 16'hfdfd;
    SB_LUT4 r_SM_Main_2__I_0_62_Mux_1_i3_4_lut (.I0(n35459), .I1(n35453), 
            .I2(r_SM_Main[1]), .I3(n27), .O(n3_adj_4000));   // verilog/uart_rx.v(53[7] 144[14])
    defparam r_SM_Main_2__I_0_62_Mux_1_i3_4_lut.LUT_INIT = 16'hf0ca;
    SB_LUT4 div_37_i2163_1_lut (.I0(baudrate[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2272));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2163_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1906_3_lut (.I0(n2720), .I1(n5314[16]), .I2(n294[5]), 
            .I3(GND_net), .O(n2834));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_988 (.I0(n33370), .I1(n33971), .I2(baudrate[0]), 
            .I3(n48_adj_4004), .O(n962));
    defparam i1_3_lut_4_lut_adj_988.LUT_INIT = 16'h0010;
    SB_LUT4 div_37_LessThan_2141_i8_3_lut_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n3170), .I3(GND_net), .O(n8));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i8_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_866_i38_3_lut_3_lut (.I0(n1265), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n38_adj_4209));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i38_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i31366_2_lut_3_lut (.I0(n11391), .I1(baudrate[1]), .I2(baudrate[0]), 
            .I3(GND_net), .O(n35473));   // verilog/uart_rx.v(119[33:55])
    defparam i31366_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i31424_3_lut_4_lut (.I0(n1265), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1266), .O(n36079));   // verilog/uart_rx.v(119[33:55])
    defparam i31424_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2141_i12_3_lut_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n3167), .I3(GND_net), .O(n12));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i12_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31043_2_lut_4_lut (.I0(n3157), .I1(baudrate[16]), .I2(n3166), 
            .I3(baudrate[7]), .O(n35698));
    defparam i31043_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2141_i14_3_lut_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n3157), .I3(GND_net), .O(n14));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i14_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_866_i41_2_lut (.I0(n1264), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n41_adj_4210));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i41_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2141_i10_3_lut_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n3165), .I3(GND_net), .O(n10));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2141_i10_3_lut_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31085_2_lut_4_lut (.I0(n3165), .I1(baudrate[8]), .I2(n3169), 
            .I3(baudrate[4]), .O(n35740));
    defparam i31085_2_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_866_i36_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1267), .I3(GND_net), .O(n36_adj_4211));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i36_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_866_i40_3_lut (.I0(n38_adj_4209), .I1(baudrate[4]), 
            .I2(n41_adj_4210), .I3(GND_net), .O(n40_adj_4212));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_866_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32321_4_lut (.I0(n40_adj_4212), .I1(n36_adj_4211), .I2(n41_adj_4210), 
            .I3(n36079), .O(n36976));   // verilog/uart_rx.v(119[33:55])
    defparam i32321_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32322_3_lut (.I0(n36976), .I1(baudrate[5]), .I2(n1263), .I3(GND_net), 
            .O(n36977));   // verilog/uart_rx.v(119[33:55])
    defparam i32322_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i32230_3_lut (.I0(n36977), .I1(baudrate[6]), .I2(n1262), .I3(GND_net), 
            .O(n36885));   // verilog/uart_rx.v(119[33:55])
    defparam i32230_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i31615_3_lut (.I0(n36885), .I1(baudrate[7]), .I2(n1261), .I3(GND_net), 
            .O(n48_adj_4006));   // verilog/uart_rx.v(119[33:55])
    defparam i31615_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 i1_2_lut_adj_989 (.I0(n32824), .I1(n48_adj_4006), .I2(GND_net), 
            .I3(GND_net), .O(n1415));
    defparam i1_2_lut_adj_989.LUT_INIT = 16'h2222;
    SB_LUT4 equal_117_i4_2_lut (.I0(r_Bit_Index[1]), .I1(r_Bit_Index[2]), 
            .I2(GND_net), .I3(GND_net), .O(n4));   // verilog/uart_rx.v(98[17:39])
    defparam equal_117_i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i1046_3_lut (.I0(n1415), .I1(n5054[16]), .I2(n294[15]), 
            .I3(GND_net), .O(n1559));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1824_3_lut (.I0(n2598), .I1(n5288[21]), .I2(n294[6]), 
            .I3(GND_net), .O(n2715));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1141_3_lut (.I0(n1559), .I1(n5080[16]), .I2(n294[14]), 
            .I3(GND_net), .O(n1700));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1135_3_lut (.I0(n1553), .I1(n5080[22]), .I2(n294[14]), 
            .I3(GND_net), .O(n1694));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1135_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2171_1_lut (.I0(baudrate[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1011));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2171_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1234_3_lut (.I0(n1700), .I1(n5106[16]), .I2(n294[13]), 
            .I3(GND_net), .O(n1838));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1324_3_lut (.I0(n1837), .I1(n5132[17]), .I2(n294[12]), 
            .I3(GND_net), .O(n1972));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1413_3_lut (.I0(n1972), .I1(n5158[17]), .I2(n294[11]), 
            .I3(GND_net), .O(n2104));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1500_3_lut (.I0(n2104), .I1(n5184[17]), .I2(n294[10]), 
            .I3(GND_net), .O(n2233));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_990 (.I0(baudrate[26]), .I1(baudrate[30]), 
            .I2(baudrate[23]), .I3(GND_net), .O(n33686));
    defparam i1_2_lut_3_lut_adj_990.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1585_3_lut (.I0(n2233), .I1(n5210[17]), .I2(n294[9]), 
            .I3(GND_net), .O(n2359));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1585_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2982_2_lut (.I0(n962), .I1(baudrate[1]), .I2(GND_net), .I3(GND_net), 
            .O(n40_adj_3979));   // verilog/uart_rx.v(119[33:55])
    defparam i2982_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 div_37_i1668_3_lut (.I0(n2359), .I1(n5236[17]), .I2(n294[8]), 
            .I3(GND_net), .O(n2482));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1668_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2158_1_lut (.I0(baudrate[17]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2867));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2158_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1749_3_lut (.I0(n2482), .I1(n5262[17]), .I2(n294[7]), 
            .I3(GND_net), .O(n2602));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1828_3_lut (.I0(n2602), .I1(n5288[17]), .I2(n294[6]), 
            .I3(GND_net), .O(n2719));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2162_1_lut (.I0(baudrate[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2397));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2162_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1905_3_lut (.I0(n2719), .I1(n5314[17]), .I2(n294[5]), 
            .I3(GND_net), .O(n2833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1323_3_lut (.I0(n1836), .I1(n5132[18]), .I2(n294[12]), 
            .I3(GND_net), .O(n1971));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1412_3_lut (.I0(n1971), .I1(n5158[18]), .I2(n294[11]), 
            .I3(GND_net), .O(n2103));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1499_3_lut (.I0(n2103), .I1(n5184[18]), .I2(n294[10]), 
            .I3(GND_net), .O(n2232));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1584_3_lut (.I0(n2232), .I1(n5210[18]), .I2(n294[9]), 
            .I3(GND_net), .O(n2358));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1667_3_lut (.I0(n2358), .I1(n5236[18]), .I2(n294[8]), 
            .I3(GND_net), .O(n2481));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1748_3_lut (.I0(n2481), .I1(n5262[18]), .I2(n294[7]), 
            .I3(GND_net), .O(n2601));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1827_3_lut (.I0(n2601), .I1(n5288[18]), .I2(n294[6]), 
            .I3(GND_net), .O(n2718));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2161_1_lut (.I0(baudrate[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2519));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2161_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1904_3_lut (.I0(n2718), .I1(n5314[18]), .I2(n294[5]), 
            .I3(GND_net), .O(n2832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_765_i43_2_lut (.I0(n1113), .I1(baudrate[4]), 
            .I2(GND_net), .I3(GND_net), .O(n43_adj_4213));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i43_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_i427_4_lut (.I0(n35376), .I1(n35375), .I2(n294[21]), 
            .I3(n33876), .O(n30958));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i427_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i29204_2_lut_4_lut (.I0(baudrate[5]), .I1(baudrate[6]), .I2(baudrate[7]), 
            .I3(baudrate[8]), .O(n33850));
    defparam i29204_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_991 (.I0(baudrate[16]), .I1(baudrate[17]), 
            .I2(baudrate[18]), .I3(baudrate[19]), .O(n33652));
    defparam i1_2_lut_4_lut_adj_991.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_765_i38_3_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n1116), .I3(GND_net), .O(n38_adj_4214));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i38_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_LessThan_765_i42_3_lut (.I0(n40_adj_4208), .I1(baudrate[4]), 
            .I2(n43_adj_4213), .I3(GND_net), .O(n42_adj_4215));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_765_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1901_3_lut (.I0(n2715), .I1(n5314[21]), .I2(n294[5]), 
            .I3(GND_net), .O(n2829));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32247_4_lut (.I0(n42_adj_4215), .I1(n38_adj_4214), .I2(n43_adj_4213), 
            .I3(n35714), .O(n36902));   // verilog/uart_rx.v(119[33:55])
    defparam i32247_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32248_3_lut (.I0(n36902), .I1(baudrate[5]), .I2(n1112), .I3(GND_net), 
            .O(n36903));   // verilog/uart_rx.v(119[33:55])
    defparam i32248_3_lut.LUT_INIT = 16'h8e8e;
    SB_LUT4 div_37_i1228_3_lut (.I0(n1694), .I1(n5106[22]), .I2(n294[13]), 
            .I3(GND_net), .O(n1832));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i948_3_lut (.I0(n1267), .I1(n5028[17]), .I2(n294[16]), 
            .I3(GND_net), .O(n1414));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1045_3_lut (.I0(n1414), .I1(n5054[17]), .I2(n294[15]), 
            .I3(GND_net), .O(n1558));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1140_3_lut (.I0(n1558), .I1(n5080[17]), .I2(n294[14]), 
            .I3(GND_net), .O(n1699));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2170_1_lut (.I0(baudrate[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1460));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2170_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_LessThan_2210_i41_4_lut (.I0(n3154), .I1(baudrate[20]), 
            .I2(n5418[20]), .I3(n294[1]), .O(n41_adj_4216));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i41_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i39_4_lut (.I0(n3155), .I1(baudrate[19]), 
            .I2(n5418[19]), .I3(n294[1]), .O(n39_adj_4217));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i39_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_i1233_3_lut (.I0(n1699), .I1(n5106[17]), .I2(n294[13]), 
            .I3(GND_net), .O(n1837));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i33_4_lut (.I0(n3158), .I1(baudrate[16]), 
            .I2(n5418[16]), .I3(n294[1]), .O(n33_adj_4218));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i33_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_2_lut_4_lut_adj_992 (.I0(baudrate[20]), .I1(baudrate[21]), 
            .I2(baudrate[22]), .I3(baudrate[23]), .O(n33650));
    defparam i1_2_lut_4_lut_adj_992.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2210_i35_4_lut (.I0(n3157), .I1(baudrate[17]), 
            .I2(n5418[17]), .I3(n294[1]), .O(n35_adj_4219));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i35_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_2_lut_4_lut_adj_993 (.I0(n37098), .I1(baudrate[19]), .I2(n2827), 
            .I3(n32840), .O(n2957));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_993.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_LessThan_2210_i37_4_lut (.I0(n3156), .I1(baudrate[18]), 
            .I2(n5418[18]), .I3(n294[1]), .O(n37_adj_4220));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i37_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i29_4_lut (.I0(n3160), .I1(baudrate[14]), 
            .I2(n5418[14]), .I3(n294[1]), .O(n29_adj_4221));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i29_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i32604_2_lut_4_lut (.I0(n37098), .I1(baudrate[19]), .I2(n2827), 
            .I3(n11431), .O(n294[4]));   // verilog/uart_rx.v(119[33:55])
    defparam i32604_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1319_3_lut (.I0(n1832), .I1(n5132[22]), .I2(n294[12]), 
            .I3(GND_net), .O(n1967));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32549_2_lut_4_lut (.I0(n36731), .I1(baudrate[8]), .I2(n1408), 
            .I3(n33967), .O(n294[15]));   // verilog/uart_rx.v(119[33:55])
    defparam i32549_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_2210_i31_4_lut (.I0(n3159), .I1(baudrate[15]), 
            .I2(n5418[15]), .I3(n294[1]), .O(n31_adj_4222));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i31_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i23_4_lut (.I0(n3163), .I1(baudrate[11]), 
            .I2(n5418[11]), .I3(n294[1]), .O(n23_adj_4223));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i23_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_2_lut_adj_994 (.I0(r_SM_Main[0]), .I1(r_SM_Main[2]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_adj_994.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i25_4_lut (.I0(n3162), .I1(baudrate[12]), 
            .I2(n5418[12]), .I3(n294[1]), .O(n25_adj_4224));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i25_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i7_4_lut (.I0(n3171), .I1(baudrate[3]), 
            .I2(n5418[3]), .I3(n294[1]), .O(n7));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_2_lut_4_lut_adj_995 (.I0(n36731), .I1(baudrate[8]), .I2(n1408), 
            .I3(n32826), .O(n1560));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_995.LUT_INIT = 16'h7100;
    SB_LUT4 i1_3_lut_4_lut_adj_996 (.I0(baudrate[30]), .I1(baudrate[31]), 
            .I2(baudrate[27]), .I3(baudrate[24]), .O(n32802));
    defparam i1_3_lut_4_lut_adj_996.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_997 (.I0(r_Clock_Count[1]), .I1(r_Clock_Count[0]), 
            .I2(\o_Rx_DV_N_3358[2] ), .I3(\o_Rx_DV_N_3358[1] ), .O(n33532));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_997.LUT_INIT = 16'h7bde;
    SB_LUT4 i29283_3_lut_4_lut (.I0(baudrate[30]), .I1(baudrate[31]), .I2(baudrate[26]), 
            .I3(baudrate[24]), .O(n33929));
    defparam i29283_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 equal_56_i3_2_lut (.I0(r_Clock_Count[2]), .I1(\o_Rx_DV_N_3358[3] ), 
            .I2(GND_net), .I3(GND_net), .O(n3_adj_4225));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31359_3_lut_4_lut (.I0(n1413), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1414), .O(n36014));   // verilog/uart_rx.v(119[33:55])
    defparam i31359_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i1_2_lut_adj_998 (.I0(baudrate[14]), .I1(baudrate[15]), .I2(GND_net), 
            .I3(GND_net), .O(n33606));
    defparam i1_2_lut_adj_998.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i45_4_lut (.I0(n3152), .I1(baudrate[22]), 
            .I2(n5418[22]), .I3(n294[1]), .O(n45_adj_4226));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i45_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_4_lut_adj_999 (.I0(r_Clock_Count[3]), .I1(n3_adj_4225), .I2(\o_Rx_DV_N_3358[4] ), 
            .I3(n33532), .O(n33536));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_999.LUT_INIT = 16'hffde;
    SB_LUT4 div_37_LessThan_2210_i43_4_lut (.I0(n3153), .I1(baudrate[21]), 
            .I2(n5418[21]), .I3(n294[1]), .O(n43_adj_4227));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i43_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i9_4_lut (.I0(n3170), .I1(baudrate[4]), 
            .I2(n5418[4]), .I3(n294[1]), .O(n9_adj_4228));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i9_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i17_4_lut (.I0(n3166), .I1(baudrate[8]), 
            .I2(n5418[8]), .I3(n294[1]), .O(n17_adj_4229));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i17_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i19_4_lut (.I0(n3165), .I1(baudrate[9]), 
            .I2(n5418[9]), .I3(n294[1]), .O(n19_adj_4230));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i19_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_965_i36_3_lut_3_lut (.I0(n1413), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n36_adj_4205));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_965_i36_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 equal_56_i5_2_lut (.I0(r_Clock_Count[4]), .I1(\o_Rx_DV_N_3358[5] ), 
            .I2(GND_net), .I3(GND_net), .O(n5));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i5_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_37_LessThan_2210_i21_4_lut (.I0(n3164), .I1(baudrate[10]), 
            .I2(n5418[10]), .I3(n294[1]), .O(n21_adj_4231));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i21_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_4_lut_adj_1000 (.I0(r_Clock_Count[5]), .I1(n5), .I2(\o_Rx_DV_N_3358[6] ), 
            .I3(n33536), .O(n33540));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1000.LUT_INIT = 16'hffde;
    SB_LUT4 equal_56_i8_2_lut (.I0(r_Clock_Count[7]), .I1(\o_Rx_DV_N_3358[8] ), 
            .I2(GND_net), .I3(GND_net), .O(n8_adj_4232));   // verilog/uart_rx.v(69[17:62])
    defparam equal_56_i8_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_1001 (.I0(r_Clock_Count[6]), .I1(n8_adj_4232), 
            .I2(n33540), .I3(\o_Rx_DV_N_3358[7] ), .O(n30187));   // verilog/uart_rx.v(69[17:62])
    defparam i1_4_lut_adj_1001.LUT_INIT = 16'hfdfe;
    SB_LUT4 div_37_LessThan_2210_i11_4_lut (.I0(n3169), .I1(baudrate[5]), 
            .I2(n5418[5]), .I3(n294[1]), .O(n11_adj_4233));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i11_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i31389_2_lut (.I0(n30187), .I1(r_Rx_Data), .I2(GND_net), .I3(GND_net), 
            .O(n35362));
    defparam i31389_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i31386_4_lut (.I0(n35362), .I1(n29), .I2(n23), .I3(\o_Rx_DV_N_3358[12] ), 
            .O(n35359));
    defparam i31386_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31217_4_lut (.I0(n35359), .I1(r_SM_Main[0]), .I2(n27), .I3(\o_Rx_DV_N_3358[24] ), 
            .O(n35356));
    defparam i31217_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 div_37_LessThan_2210_i13_4_lut (.I0(n3168), .I1(baudrate[6]), 
            .I2(n5418[6]), .I3(n294[1]), .O(n13_adj_4234));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i13_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i32485_4_lut (.I0(r_SM_Main[2]), .I1(n35356), .I2(\r_SM_Main_2__N_3316[1] ), 
            .I3(r_SM_Main[1]), .O(n14741));
    defparam i32485_4_lut.LUT_INIT = 16'h0511;
    SB_LUT4 i1_4_lut_adj_1002 (.I0(n30187), .I1(r_SM_Main[1]), .I2(r_Rx_Data), 
            .I3(r_SM_Main[0]), .O(n32910));
    defparam i1_4_lut_adj_1002.LUT_INIT = 16'h1000;
    SB_LUT4 i1_4_lut_adj_1003 (.I0(n29), .I1(n23), .I2(\o_Rx_DV_N_3358[12] ), 
            .I3(n32910), .O(n32916));
    defparam i1_4_lut_adj_1003.LUT_INIT = 16'h0100;
    SB_LUT4 div_37_LessThan_2210_i15_4_lut (.I0(n3167), .I1(baudrate[7]), 
            .I2(n5418[7]), .I3(n294[1]), .O(n15_adj_4235));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i15_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 div_37_LessThan_2210_i27_4_lut (.I0(n3161), .I1(baudrate[13]), 
            .I2(n5418[13]), .I3(n294[1]), .O(n27_adj_4236));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i27_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i30983_4_lut (.I0(n27_adj_4236), .I1(n15_adj_4235), .I2(n13_adj_4234), 
            .I3(n11_adj_4233), .O(n35638));
    defparam i30983_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32476_4_lut (.I0(r_SM_Main[2]), .I1(\o_Rx_DV_N_3358[24] ), 
            .I2(n27), .I3(n32916), .O(n13469));   // verilog/uart_rx.v(53[7] 144[14])
    defparam i32476_4_lut.LUT_INIT = 16'h5455;
    SB_LUT4 i30989_4_lut (.I0(n21_adj_4231), .I1(n19_adj_4230), .I2(n17_adj_4229), 
            .I3(n9_adj_4228), .O(n35644));
    defparam i30989_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 div_37_LessThan_2210_i16_3_lut (.I0(baudrate[9]), .I1(baudrate[21]), 
            .I2(n43_adj_4227), .I3(GND_net), .O(n16_adj_4237));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1004 (.I0(n37002), .I1(baudrate[18]), .I2(n2713), 
            .I3(n32838), .O(n2845));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1004.LUT_INIT = 16'h7100;
    SB_LUT4 i30956_2_lut (.I0(n43_adj_4227), .I1(n19_adj_4230), .I2(GND_net), 
            .I3(GND_net), .O(n35611));
    defparam i30956_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i32601_2_lut_4_lut (.I0(n37002), .I1(baudrate[18]), .I2(n2713), 
            .I3(n11428), .O(n294[5]));   // verilog/uart_rx.v(119[33:55])
    defparam i32601_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i31315_3_lut_4_lut (.I0(n1558), .I1(baudrate[3]), .I2(baudrate[2]), 
            .I3(n1559), .O(n35970));   // verilog/uart_rx.v(119[33:55])
    defparam i31315_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 div_37_LessThan_2210_i8_3_lut (.I0(baudrate[4]), .I1(baudrate[8]), 
            .I2(n17_adj_4229), .I3(GND_net), .O(n8_adj_4238));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_1062_i34_3_lut_3_lut (.I0(n1558), .I1(baudrate[3]), 
            .I2(baudrate[2]), .I3(GND_net), .O(n34_adj_4182));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1062_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i1_2_lut_4_lut_adj_1005 (.I0(n37104), .I1(baudrate[20]), .I2(n2938), 
            .I3(n32842), .O(n3066));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1005.LUT_INIT = 16'h7100;
    SB_LUT4 i32607_2_lut_4_lut (.I0(n37104), .I1(baudrate[20]), .I2(n2938), 
            .I3(n33975), .O(n294[3]));   // verilog/uart_rx.v(119[33:55])
    defparam i32607_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_LessThan_2210_i24_3_lut (.I0(n16_adj_4237), .I1(baudrate[22]), 
            .I2(n45_adj_4226), .I3(GND_net), .O(n24_adj_4239));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2208_3_lut (.I0(n3172), .I1(n5418[2]), .I2(n294[1]), 
            .I3(GND_net), .O(n3274));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i31018_3_lut (.I0(n7), .I1(n3274), .I2(baudrate[2]), .I3(GND_net), 
            .O(n35673));
    defparam i31018_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i31523_4_lut (.I0(n13_adj_4234), .I1(n11_adj_4233), .I2(n9_adj_4228), 
            .I3(n35673), .O(n36178));
    defparam i31523_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i31519_4_lut (.I0(n19_adj_4230), .I1(n17_adj_4229), .I2(n15_adj_4235), 
            .I3(n36178), .O(n36174));
    defparam i31519_4_lut.LUT_INIT = 16'heeef;
    SB_LUT4 i32219_4_lut (.I0(n25_adj_4224), .I1(n23_adj_4223), .I2(n21_adj_4231), 
            .I3(n36174), .O(n36874));
    defparam i32219_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i31864_4_lut (.I0(n31_adj_4222), .I1(n29_adj_4221), .I2(n27_adj_4236), 
            .I3(n36874), .O(n36519));
    defparam i31864_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i32339_4_lut (.I0(n37_adj_4220), .I1(n35_adj_4219), .I2(n33_adj_4218), 
            .I3(n36519), .O(n36994));
    defparam i32339_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_LessThan_2210_i12_3_lut (.I0(baudrate[7]), .I1(baudrate[16]), 
            .I2(n33_adj_4218), .I3(GND_net), .O(n12_adj_4240));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29324_1_lut_2_lut (.I0(baudrate[8]), .I1(n33967), .I2(GND_net), 
            .I3(GND_net), .O(n31215));
    defparam i29324_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 div_37_LessThan_2210_i4_4_lut (.I0(baudrate[0]), .I1(baudrate[1]), 
            .I2(n32846), .I3(n48_adj_3998), .O(n4_adj_4241));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i4_4_lut.LUT_INIT = 16'hee8e;
    SB_LUT4 i29325_2_lut_3_lut (.I0(baudrate[8]), .I1(n33967), .I2(baudrate[7]), 
            .I3(GND_net), .O(n33971));
    defparam i29325_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i32163_3_lut (.I0(n4_adj_4241), .I1(baudrate[13]), .I2(n27_adj_4236), 
            .I3(GND_net), .O(n36818));   // verilog/uart_rx.v(119[33:55])
    defparam i32163_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32164_3_lut (.I0(n36818), .I1(baudrate[14]), .I2(n29_adj_4221), 
            .I3(GND_net), .O(n36819));   // verilog/uart_rx.v(119[33:55])
    defparam i32164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30976_2_lut (.I0(n33_adj_4218), .I1(n15_adj_4235), .I2(GND_net), 
            .I3(GND_net), .O(n35631));
    defparam i30976_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_LessThan_2210_i10_3_lut (.I0(baudrate[5]), .I1(baudrate[6]), 
            .I2(n13_adj_4234), .I3(GND_net), .O(n10_adj_4242));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32546_2_lut_3_lut (.I0(baudrate[8]), .I1(n33967), .I2(n48_adj_4006), 
            .I3(GND_net), .O(n294[16]));
    defparam i32546_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 div_37_LessThan_2210_i30_3_lut (.I0(n12_adj_4240), .I1(baudrate[17]), 
            .I2(n35_adj_4219), .I3(GND_net), .O(n30_adj_4243));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_1006 (.I0(n33570), .I1(n33943), .I2(n5080[14]), 
            .I3(n48_adj_4003), .O(n1702));
    defparam i1_3_lut_4_lut_adj_1006.LUT_INIT = 16'h0010;
    SB_LUT4 i30979_4_lut (.I0(n33_adj_4218), .I1(n31_adj_4222), .I2(n29_adj_4221), 
            .I3(n35638), .O(n35634));
    defparam i30979_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32356_4_lut (.I0(n30_adj_4243), .I1(n10_adj_4242), .I2(n35_adj_4219), 
            .I3(n35631), .O(n37011));   // verilog/uart_rx.v(119[33:55])
    defparam i32356_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32134_3_lut (.I0(n36819), .I1(baudrate[15]), .I2(n31_adj_4222), 
            .I3(GND_net), .O(n36789));   // verilog/uart_rx.v(119[33:55])
    defparam i32134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32430_4_lut (.I0(n36789), .I1(n37011), .I2(n35_adj_4219), 
            .I3(n35634), .O(n37085));   // verilog/uart_rx.v(119[33:55])
    defparam i32430_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32431_3_lut (.I0(n37085), .I1(baudrate[18]), .I2(n37_adj_4220), 
            .I3(GND_net), .O(n37086));   // verilog/uart_rx.v(119[33:55])
    defparam i32431_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_LessThan_2210_i6_3_lut (.I0(baudrate[2]), .I1(baudrate[3]), 
            .I2(n7), .I3(GND_net), .O(n6_adj_4244));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_2210_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32165_3_lut (.I0(n6_adj_4244), .I1(baudrate[10]), .I2(n21_adj_4231), 
            .I3(GND_net), .O(n36820));   // verilog/uart_rx.v(119[33:55])
    defparam i32165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32166_3_lut (.I0(n36820), .I1(baudrate[11]), .I2(n23_adj_4223), 
            .I3(GND_net), .O(n36821));   // verilog/uart_rx.v(119[33:55])
    defparam i32166_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30958_4_lut (.I0(n43_adj_4227), .I1(n25_adj_4224), .I2(n23_adj_4223), 
            .I3(n35644), .O(n35613));
    defparam i30958_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i31934_4_lut (.I0(n24_adj_4239), .I1(n8_adj_4238), .I2(n45_adj_4226), 
            .I3(n35611), .O(n36589));   // verilog/uart_rx.v(119[33:55])
    defparam i31934_4_lut.LUT_INIT = 16'haaac;
    SB_LUT4 i32132_3_lut (.I0(n36821), .I1(baudrate[12]), .I2(n25_adj_4224), 
            .I3(GND_net), .O(n36787));   // verilog/uart_rx.v(119[33:55])
    defparam i32132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32405_3_lut (.I0(n37086), .I1(baudrate[19]), .I2(n39_adj_4217), 
            .I3(GND_net), .O(n37060));   // verilog/uart_rx.v(119[33:55])
    defparam i32405_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i30962_4_lut (.I0(n43_adj_4227), .I1(n41_adj_4216), .I2(n39_adj_4217), 
            .I3(n36994), .O(n35617));
    defparam i30962_4_lut.LUT_INIT = 16'haaab;
    SB_LUT4 i32277_4_lut (.I0(n36787), .I1(n36589), .I2(n45_adj_4226), 
            .I3(n35613), .O(n36932));   // verilog/uart_rx.v(119[33:55])
    defparam i32277_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i32401_3_lut (.I0(n37060), .I1(baudrate[20]), .I2(n41_adj_4216), 
            .I3(GND_net), .O(n40_adj_4245));   // verilog/uart_rx.v(119[33:55])
    defparam i32401_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_1007 (.I0(baudrate[25]), .I1(baudrate[31]), .I2(GND_net), 
            .I3(GND_net), .O(n32740));
    defparam i1_2_lut_adj_1007.LUT_INIT = 16'heeee;
    SB_LUT4 i29322_1_lut (.I0(n33967), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n31211));
    defparam i29322_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i2187_3_lut (.I0(n3151), .I1(n5418[23]), .I2(n294[1]), 
            .I3(GND_net), .O(n3253));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32279_4_lut (.I0(n40_adj_4245), .I1(n36932), .I2(n45_adj_4226), 
            .I3(n35617), .O(n36934));   // verilog/uart_rx.v(119[33:55])
    defparam i32279_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_adj_1008 (.I0(n33680), .I1(n33594), .I2(n32740), 
            .I3(n33592), .O(n32748));
    defparam i1_4_lut_adj_1008.LUT_INIT = 16'hfffe;
    SB_LUT4 i32543_4_lut (.I0(n32748), .I1(n36934), .I2(baudrate[23]), 
            .I3(n3253), .O(n32201));   // verilog/uart_rx.v(119[33:55])
    defparam i32543_4_lut.LUT_INIT = 16'h1501;
    SB_LUT4 i31295_3_lut_4_lut (.I0(n1699), .I1(baudrate[4]), .I2(baudrate[3]), 
            .I3(n1700), .O(n35950));   // verilog/uart_rx.v(119[33:55])
    defparam i31295_3_lut_4_lut.LUT_INIT = 16'h6ff6;
    SB_LUT4 i31378_3_lut (.I0(n962), .I1(baudrate[1]), .I2(n294[18]), 
            .I3(GND_net), .O(n1115));
    defparam i31378_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i32519_3_lut (.I0(n11391), .I1(baudrate[1]), .I2(baudrate[2]), 
            .I3(GND_net), .O(n11389));   // verilog/uart_rx.v(119[33:55])
    defparam i32519_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 div_37_LessThan_1157_i34_3_lut_3_lut (.I0(n1699), .I1(baudrate[4]), 
            .I2(baudrate[3]), .I3(GND_net), .O(n34_adj_4171));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_1157_i34_3_lut_3_lut.LUT_INIT = 16'hd4d4;
    SB_LUT4 i1_2_lut_4_lut_adj_1009 (.I0(n37074), .I1(baudrate[11]), .I2(n1831), 
            .I3(n32828), .O(n1977));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1009.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i847_3_lut (.I0(n1115), .I1(n5002[19]), .I2(n294[17]), 
            .I3(GND_net), .O(n1265));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i946_3_lut (.I0(n1265), .I1(n5028[19]), .I2(n294[16]), 
            .I3(GND_net), .O(n1412));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1043_3_lut (.I0(n1412), .I1(n5054[19]), .I2(n294[15]), 
            .I3(GND_net), .O(n1556));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32575_2_lut_4_lut (.I0(n37074), .I1(baudrate[11]), .I2(n1831), 
            .I3(n33943), .O(n294[12]));   // verilog/uart_rx.v(119[33:55])
    defparam i32575_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1138_3_lut (.I0(n1556), .I1(n5080[19]), .I2(n294[14]), 
            .I3(GND_net), .O(n1697));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1138_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1231_3_lut (.I0(n1697), .I1(n5106[19]), .I2(n294[13]), 
            .I3(GND_net), .O(n1835));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1322_3_lut (.I0(n1835), .I1(n5132[19]), .I2(n294[12]), 
            .I3(GND_net), .O(n1970));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1322_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1411_3_lut (.I0(n1970), .I1(n5158[19]), .I2(n294[11]), 
            .I3(GND_net), .O(n2102));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1498_3_lut (.I0(n2102), .I1(n5184[19]), .I2(n294[10]), 
            .I3(GND_net), .O(n2231));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1583_3_lut (.I0(n2231), .I1(n5210[19]), .I2(n294[9]), 
            .I3(GND_net), .O(n2357));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1666_3_lut (.I0(n2357), .I1(n5236[19]), .I2(n294[8]), 
            .I3(GND_net), .O(n2480));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1666_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1747_3_lut (.I0(n2480), .I1(n5262[19]), .I2(n294[7]), 
            .I3(GND_net), .O(n2600));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1826_3_lut (.I0(n2600), .I1(n5288[19]), .I2(n294[6]), 
            .I3(GND_net), .O(n2717));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i2160_1_lut (.I0(baudrate[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2638));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i2160_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_37_i1903_3_lut (.I0(n2717), .I1(n5314[19]), .I2(n294[5]), 
            .I3(GND_net), .O(n2831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3904_4_lut (.I0(n961), .I1(baudrate[2]), .I2(n962), .I3(baudrate[1]), 
            .O(n7801));   // verilog/uart_rx.v(119[33:55])
    defparam i3904_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 div_37_i641_4_lut (.I0(n804), .I1(n42_adj_3992), .I2(n294[19]), 
            .I3(baudrate[2]), .O(n960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i641_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i744_4_lut (.I0(n960), .I1(baudrate[3]), .I2(n294[18]), 
            .I3(n42_adj_3999), .O(n1113));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i744_4_lut.LUT_INIT = 16'h6a9a;
    SB_LUT4 div_37_i845_3_lut (.I0(n1113), .I1(n5002[21]), .I2(n294[17]), 
            .I3(GND_net), .O(n1263));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1010 (.I0(n36993), .I1(baudrate[14]), .I2(n2227), 
            .I3(n32830), .O(n2367));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1010.LUT_INIT = 16'h7100;
    SB_LUT4 div_37_i944_3_lut (.I0(n1263), .I1(n5028[21]), .I2(n294[16]), 
            .I3(GND_net), .O(n1410));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i32588_2_lut_4_lut (.I0(n36993), .I1(baudrate[14]), .I2(n2227), 
            .I3(n33899), .O(n294[9]));   // verilog/uart_rx.v(119[33:55])
    defparam i32588_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 div_37_i1041_3_lut (.I0(n1410), .I1(n5054[21]), .I2(n294[15]), 
            .I3(GND_net), .O(n1554));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1136_3_lut (.I0(n1554), .I1(n5080[21]), .I2(n294[14]), 
            .I3(GND_net), .O(n1695));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1229_3_lut (.I0(n1695), .I1(n5106[21]), .I2(n294[13]), 
            .I3(GND_net), .O(n1833));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1320_3_lut (.I0(n1833), .I1(n5132[21]), .I2(n294[12]), 
            .I3(GND_net), .O(n1968));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1320_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1409_3_lut (.I0(n1968), .I1(n5158[21]), .I2(n294[11]), 
            .I3(GND_net), .O(n2100));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_1011 (.I0(n33362), .I1(n33899), .I2(n5158[11]), 
            .I3(n48_adj_4002), .O(n2110));
    defparam i1_3_lut_4_lut_adj_1011.LUT_INIT = 16'h0010;
    SB_LUT4 div_37_i1496_3_lut (.I0(n2100), .I1(n5184[21]), .I2(n294[10]), 
            .I3(GND_net), .O(n2229));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1496_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1581_3_lut (.I0(n2229), .I1(n5210[21]), .I2(n294[9]), 
            .I3(GND_net), .O(n2355));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1664_3_lut (.I0(n2355), .I1(n5236[21]), .I2(n294[8]), 
            .I3(GND_net), .O(n2478));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1745_3_lut (.I0(n2478), .I1(n5262[21]), .I2(n294[7]), 
            .I3(GND_net), .O(n2598));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1012 (.I0(n2867), .I1(n33372), .I2(baudrate[2]), 
            .I3(n22170), .O(n32778));
    defparam i1_4_lut_adj_1012.LUT_INIT = 16'h0200;
    SB_LUT4 i1_4_lut_adj_1013 (.I0(n33945), .I1(n32778), .I2(n11425), 
            .I3(n33850), .O(n32358));
    defparam i1_4_lut_adj_1013.LUT_INIT = 16'h0004;
    SB_LUT4 i1_2_lut_4_lut_adj_1014 (.I0(n36585), .I1(baudrate[21]), .I2(n3046), 
            .I3(n32844), .O(n3172));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1014.LUT_INIT = 16'h7100;
    SB_LUT4 i32613_2_lut_4_lut (.I0(n36585), .I1(baudrate[21]), .I2(n3046), 
            .I3(n11350), .O(n294[2]));   // verilog/uart_rx.v(119[33:55])
    defparam i32613_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_4_lut_adj_1015 (.I0(baudrate[23]), .I1(baudrate[27]), .I2(baudrate[25]), 
            .I3(n22172), .O(n33100));
    defparam i1_4_lut_adj_1015.LUT_INIT = 16'h0100;
    SB_LUT4 i1_2_lut_4_lut_adj_1016 (.I0(n36759), .I1(baudrate[16]), .I2(n2476), 
            .I3(n32834), .O(n2612));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1016.LUT_INIT = 16'h7100;
    SB_LUT4 i32594_2_lut_4_lut (.I0(n36759), .I1(baudrate[16]), .I2(n2476), 
            .I3(n33876), .O(n294[7]));   // verilog/uart_rx.v(119[33:55])
    defparam i32594_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_3_lut_4_lut_adj_1017 (.I0(baudrate[28]), .I1(baudrate[25]), 
            .I2(baudrate[26]), .I3(baudrate[29]), .O(n32804));
    defparam i1_3_lut_4_lut_adj_1017.LUT_INIT = 16'hfffe;
    SB_LUT4 div_37_i1408_3_lut (.I0(n1967), .I1(n5158[22]), .I2(n294[11]), 
            .I3(GND_net), .O(n2099));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_1018 (.I0(n37030), .I1(baudrate[17]), .I2(n2596), 
            .I3(n32836), .O(n2730));   // verilog/uart_rx.v(119[33:55])
    defparam i1_2_lut_4_lut_adj_1018.LUT_INIT = 16'h7100;
    SB_LUT4 i32597_2_lut_4_lut (.I0(n37030), .I1(baudrate[17]), .I2(n2596), 
            .I3(n11425), .O(n294[6]));   // verilog/uart_rx.v(119[33:55])
    defparam i32597_2_lut_4_lut.LUT_INIT = 16'h0071;
    SB_LUT4 i1_4_lut_adj_1019 (.I0(n33100), .I1(baudrate[29]), .I2(baudrate[16]), 
            .I3(baudrate[28]), .O(n33118));
    defparam i1_4_lut_adj_1019.LUT_INIT = 16'h0002;
    SB_LUT4 i29353_4_lut (.I0(n33929), .I1(n33850), .I2(n33854), .I3(n33792), 
            .O(n33999));
    defparam i29353_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2833_4_lut (.I0(n803), .I1(baudrate[3]), .I2(n31700), .I3(n44_adj_3993), 
            .O(n46_adj_4246));   // verilog/uart_rx.v(119[33:55])
    defparam i2833_4_lut.LUT_INIT = 16'hb3a0;
    SB_LUT4 i1_4_lut_adj_1020 (.I0(n33985), .I1(n33999), .I2(n33832), 
            .I3(n33118), .O(n31711));
    defparam i1_4_lut_adj_1020.LUT_INIT = 16'h0100;
    SB_LUT4 i1_4_lut_adj_1021 (.I0(n33364), .I1(n33360), .I2(n33362), 
            .I3(n33792), .O(n33382));
    defparam i1_4_lut_adj_1021.LUT_INIT = 16'hfffe;
    SB_LUT4 i29208_2_lut_3_lut (.I0(baudrate[19]), .I1(baudrate[20]), .I2(baudrate[4]), 
            .I3(GND_net), .O(n33854));
    defparam i29208_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_1022 (.I0(n33372), .I1(n33368), .I2(n33370), 
            .I3(n33366), .O(n33384));
    defparam i1_4_lut_adj_1022.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_1023 (.I0(n33384), .I1(n11428), .I2(n33382), 
            .I3(GND_net), .O(n11391));
    defparam i1_3_lut_adj_1023.LUT_INIT = 16'hfefe;
    SB_LUT4 div_37_i1039_3_lut (.I0(n1408), .I1(n5054[23]), .I2(n294[15]), 
            .I3(GND_net), .O(n1552));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1494_3_lut (.I0(n2098), .I1(n5184[23]), .I2(n294[10]), 
            .I3(GND_net), .O(n2227));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i1495_3_lut (.I0(n2099), .I1(n5184[22]), .I2(n294[10]), 
            .I3(GND_net), .O(n2228));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1495_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_37_i639_4_lut (.I0(n30960), .I1(n294[19]), .I2(n46_adj_4246), 
            .I3(baudrate[4]), .O(n30962));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i639_4_lut.LUT_INIT = 16'h6aa6;
    SB_LUT4 div_37_LessThan_341_i48_3_lut (.I0(n31711), .I1(baudrate[2]), 
            .I2(n32358), .I3(GND_net), .O(n48));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_LessThan_341_i48_3_lut.LUT_INIT = 16'he8e8;
    SB_LUT4 div_37_i1580_3_lut (.I0(n2228), .I1(n5210[22]), .I2(n294[9]), 
            .I3(GND_net), .O(n2354));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i29230_2_lut (.I0(baudrate[17]), .I1(n11425), .I2(GND_net), 
            .I3(GND_net), .O(n33876));
    defparam i29230_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i32559_2_lut (.I0(n48), .I1(n11391), .I2(GND_net), .I3(GND_net), 
            .O(n294[21]));
    defparam i32559_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1_2_lut_adj_1024 (.I0(baudrate[4]), .I1(baudrate[5]), .I2(GND_net), 
            .I3(GND_net), .O(n33512));
    defparam i1_2_lut_adj_1024.LUT_INIT = 16'heeee;
    SB_LUT4 i29186_2_lut (.I0(baudrate[2]), .I1(baudrate[3]), .I2(GND_net), 
            .I3(GND_net), .O(n33832));
    defparam i29186_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 div_37_i534_3_lut (.I0(n30958), .I1(n294[20]), .I2(baudrate[3]), 
            .I3(GND_net), .O(n30960));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i534_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 div_37_i1227_3_lut (.I0(n1693), .I1(n5106[23]), .I2(n294[13]), 
            .I3(GND_net), .O(n1831));   // verilog/uart_rx.v(119[33:55])
    defparam div_37_i1227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_1025 (.I0(n33580), .I1(n33606), .I2(baudrate[16]), 
            .I3(n22170), .O(n33438));
    defparam i1_4_lut_adj_1025.LUT_INIT = 16'h0100;
    SB_LUT4 i31438_3_lut (.I0(n31711), .I1(n32358), .I2(baudrate[2]), 
            .I3(GND_net), .O(n35375));   // verilog/uart_rx.v(119[33:55])
    defparam i31438_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i31332_4_lut (.I0(n33832), .I1(n33438), .I2(n33582), .I3(n33512), 
            .O(n35376));   // verilog/uart_rx.v(119[33:55])
    defparam i31332_4_lut.LUT_INIT = 16'h0004;
    
endmodule
//
// Verilog Description of module \neopixel(CLOCK_SPEED_HZ=16000000) 
//

module \neopixel(CLOCK_SPEED_HZ=16000000)  (timer, GND_net, \neo_pixel_transmitter.done , 
            clk16MHz, VCC_net, \neo_pixel_transmitter.t0 , \state[1] , 
            n31136, \state[0] , \color_bit_N_423[2] , n14, \state_3__N_229[1] , 
            \one_wire_N_380[8] , \one_wire_N_380[10] , \one_wire_N_380[9] , 
            n22418, n31081, n13383, \bit_ctr[0] , n31830, start, 
            LED_c, \one_wire_N_380[5] , \one_wire_N_380[4] , \one_wire_N_380[7] , 
            \one_wire_N_380[6] , \color_bit_N_423[1] , \neopxl_color[22] , 
            \neopxl_color[23] , \neopxl_color[5] , \neopxl_color[4] , 
            \neopxl_color[17] , \neopxl_color[16] , \neopxl_color[1] , 
            \neopxl_color[0] , n15187, n15165, n15705, n15704, n15703, 
            n15702, n15701, n15700, n15699, n15698, n15697, n15696, 
            n15695, n15694, n15693, n15692, n15690, n15689, n15688, 
            n15687, n15686, n15685, n15684, n15683, n15682, n15681, 
            n15680, n15679, n15678, n15677, n15676, n15675, n15673, 
            n29597, NEOPXL_c, n31935, \neopxl_color[2] , \neopxl_color[3] , 
            \neopxl_color[18] , \neopxl_color[19] , \neopxl_color[6] , 
            \neopxl_color[7] , \neopxl_color[21] , \neopxl_color[20] ) /* synthesis syn_module_defined=1 */ ;
    output [31:0]timer;
    input GND_net;
    output \neo_pixel_transmitter.done ;
    input clk16MHz;
    input VCC_net;
    output [31:0]\neo_pixel_transmitter.t0 ;
    output \state[1] ;
    input n31136;
    output \state[0] ;
    output \color_bit_N_423[2] ;
    input n14;
    output \state_3__N_229[1] ;
    output \one_wire_N_380[8] ;
    output \one_wire_N_380[10] ;
    output \one_wire_N_380[9] ;
    output n22418;
    output n31081;
    output n13383;
    output \bit_ctr[0] ;
    output n31830;
    output start;
    input LED_c;
    output \one_wire_N_380[5] ;
    output \one_wire_N_380[4] ;
    output \one_wire_N_380[7] ;
    output \one_wire_N_380[6] ;
    output \color_bit_N_423[1] ;
    input \neopxl_color[22] ;
    input \neopxl_color[23] ;
    input \neopxl_color[5] ;
    input \neopxl_color[4] ;
    input \neopxl_color[17] ;
    input \neopxl_color[16] ;
    input \neopxl_color[1] ;
    input \neopxl_color[0] ;
    input n15187;
    input n15165;
    input n15705;
    input n15704;
    input n15703;
    input n15702;
    input n15701;
    input n15700;
    input n15699;
    input n15698;
    input n15697;
    input n15696;
    input n15695;
    input n15694;
    input n15693;
    input n15692;
    input n15690;
    input n15689;
    input n15688;
    input n15687;
    input n15686;
    input n15685;
    input n15684;
    input n15683;
    input n15682;
    input n15681;
    input n15680;
    input n15679;
    input n15678;
    input n15677;
    input n15676;
    input n15675;
    input n15673;
    input n29597;
    output NEOPXL_c;
    input n31935;
    input \neopxl_color[2] ;
    input \neopxl_color[3] ;
    input \neopxl_color[18] ;
    input \neopxl_color[19] ;
    input \neopxl_color[6] ;
    input \neopxl_color[7] ;
    input \neopxl_color[21] ;
    input \neopxl_color[20] ;
    
    wire clk16MHz /* synthesis SET_AS_NETWORK=clk16MHz, is_clock=1 */ ;   // verilog/TinyFPGA_B.v(33[6:14])
    
    wire n26102;
    wire [31:0]n1;
    
    wire n26103;
    wire [31:0]n133;
    
    wire n26144, \neo_pixel_transmitter.done_N_437 , n32684, n26145, 
        n26143, n26142, n26141, n26140, n22394, n31142, n91, n4_adj_3928, 
        n26595, n30313, n30163, n11311, n13399, \neo_pixel_transmitter.done_N_443 , 
        n37278, n37326, n36499;
    wire [31:0]bit_ctr;   // verilog/neopixel.v(18[12:19])
    
    wire n22360, n37945, n27092, n36661, n37338, n37290, n35416;
    wire [3:0]state_3__N_229;
    
    wire n31916, n8;
    wire [31:0]n133_adj_3973;
    
    wire n4343, n14779, n11219, n31082, n33750, n33744, n26132, 
        n33740, n26131, n33738, n26130, n33736, n13750;
    wire [31:0]one_wire_N_380;
    
    wire n4_adj_3935, n18, n20_adj_3936, n19, n14_adj_3937, n14_adj_3938, 
        n13, n12, n18_adj_3939, n19_adj_3940, n1401, n26129, n33734, 
        n33692, n33698, n22376, n4298, n35513, n26128, n33732, 
        n26127, n33730, n26438, n26437, n26436, n26435, n26434, 
        n26433, n26432, n26431, n26430, n26429, n26428, n26427, 
        n26126, n33728, n26125, n33726, n26124, n33724, n26426, 
        n26425, n26424, n26123, n33722, n26423, n26422, n26421, 
        n26122, n33720, n26420, n37287, n26419, n26418, n26121, 
        n33718, n26417, n26416, n37275, n26415, n26170, n26414, 
        n26169, n26413, n26412, n26168, n26120, n33716, n26167, 
        n26411, n26410, n26119, n33714, n26409, n26408, n26166, 
        n26118, n33712, n26117, n33710, n26165, n26164, n26163, 
        n26116, n33708, n37335, n37323, n26162, n26161, n26115, 
        n33706, n26114, n33704, n30363, n103, n26113, n26160, 
        n26112, n26159, n26111, n26158, n26157, n26156, n26110, 
        n26155, n26109, n26108, n26154, n26107, n26153, n26152, 
        n26106, n26151, n26150, n26149, n26148, n26105, n26104, 
        n26147, n14778, n26146;
    
    SB_CARRY sub_14_add_2_3 (.CI(n26102), .I0(timer[1]), .I1(n1[1]), .CO(n26103));
    SB_LUT4 timer_1108_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(timer[5]), 
            .I3(n26144), .O(n133[5])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE \neo_pixel_transmitter.done_104  (.Q(\neo_pixel_transmitter.done ), 
            .C(clk16MHz), .E(n32684), .D(\neo_pixel_transmitter.done_N_437 ));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_2 (.CI(VCC_net), .I0(timer[0]), .I1(n1[0]), 
            .CO(n26102));
    SB_CARRY timer_1108_add_4_7 (.CI(n26144), .I0(GND_net), .I1(timer[5]), 
            .CO(n26145));
    SB_LUT4 timer_1108_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(timer[4]), 
            .I3(n26143), .O(n133[4])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_6 (.CI(n26143), .I0(GND_net), .I1(timer[4]), 
            .CO(n26144));
    SB_LUT4 timer_1108_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(timer[3]), 
            .I3(n26142), .O(n133[3])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_5 (.CI(n26142), .I0(GND_net), .I1(timer[3]), 
            .CO(n26143));
    SB_LUT4 timer_1108_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(timer[2]), 
            .I3(n26141), .O(n133[2])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i30_1_lut (.I0(\neo_pixel_transmitter.t0 [29]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[29]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i30_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1108_add_4_4 (.CI(n26141), .I0(GND_net), .I1(timer[2]), 
            .CO(n26142));
    SB_LUT4 timer_1108_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(timer[1]), 
            .I3(n26140), .O(n133[1])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_3 (.CI(n26140), .I0(GND_net), .I1(timer[1]), 
            .CO(n26141));
    SB_LUT4 timer_1108_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(timer[0]), 
            .I3(VCC_net), .O(n133[0])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(timer[0]), 
            .CO(n26140));
    SB_LUT4 i116_4_lut (.I0(n22394), .I1(n31142), .I2(\neo_pixel_transmitter.done ), 
            .I3(\state[1] ), .O(n91));
    defparam i116_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i1_4_lut (.I0(n31136), .I1(n4_adj_3928), .I2(n26595), .I3(n30313), 
            .O(n30163));
    defparam i1_4_lut.LUT_INIT = 16'h1511;
    SB_LUT4 i1_4_lut_adj_919 (.I0(n11311), .I1(\state[0] ), .I2(n30163), 
            .I3(n91), .O(n13399));
    defparam i1_4_lut_adj_919.LUT_INIT = 16'h5150;
    SB_LUT4 i74_1_lut (.I0(\neo_pixel_transmitter.done ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_443 ));   // verilog/neopixel.v(35[12] 117[6])
    defparam i74_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31844_3_lut (.I0(n37278), .I1(n37326), .I2(\color_bit_N_423[2] ), 
            .I3(GND_net), .O(n36499));   // verilog/neopixel.v(22[26:38])
    defparam i31844_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_rep_539_2_lut (.I0(bit_ctr[3]), .I1(n22360), .I2(GND_net), 
            .I3(GND_net), .O(n37945));
    defparam i1_rep_539_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(bit_ctr[4]), .I1(bit_ctr[3]), .I2(n22360), .I3(GND_net), 
            .O(n27092));
    defparam i1_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i32006_4_lut (.I0(n36499), .I1(n14), .I2(bit_ctr[3]), .I3(n22360), 
            .O(n36661));   // verilog/neopixel.v(22[26:38])
    defparam i32006_4_lut.LUT_INIT = 16'hcaac;
    SB_LUT4 i30912_4_lut (.I0(n37338), .I1(n37945), .I2(n37290), .I3(\color_bit_N_423[2] ), 
            .O(n35416));
    defparam i30912_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i17956_4_lut (.I0(n35416), .I1(\state_3__N_229[1] ), .I2(n36661), 
            .I3(n27092), .O(state_3__N_229[0]));   // verilog/neopixel.v(40[18] 45[12])
    defparam i17956_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 sub_14_inv_0_i3_1_lut (.I0(\neo_pixel_transmitter.t0 [2]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[2]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i13_1_lut (.I0(\neo_pixel_transmitter.t0 [12]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[12]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i18254_3_lut (.I0(\one_wire_N_380[8] ), .I1(\one_wire_N_380[10] ), 
            .I2(\one_wire_N_380[9] ), .I3(GND_net), .O(n22394));
    defparam i18254_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i18276_2_lut (.I0(n22394), .I1(n11311), .I2(GND_net), .I3(GND_net), 
            .O(n22418));
    defparam i18276_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_920 (.I0(\state[1] ), .I1(n22418), .I2(\state[0] ), 
            .I3(\neo_pixel_transmitter.done ), .O(n31916));
    defparam i1_4_lut_adj_920.LUT_INIT = 16'hf5fd;
    SB_LUT4 i1_4_lut_adj_921 (.I0(n31916), .I1(n31081), .I2(\state[1] ), 
            .I3(n8), .O(n13383));
    defparam i1_4_lut_adj_921.LUT_INIT = 16'ha0a8;
    SB_DFFESR bit_ctr_1109__i0 (.Q(\bit_ctr[0] ), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[0]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i1 (.Q(bit_ctr[1]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[1]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_inv_0_i31_1_lut (.I0(\neo_pixel_transmitter.t0 [30]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[30]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i31_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i32_1_lut (.I0(\neo_pixel_transmitter.t0 [31]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[31]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i32_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i26471_4_lut (.I0(n11219), .I1(n4_adj_3928), .I2(n26595), 
            .I3(\state[0] ), .O(n31082));
    defparam i26471_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 sub_14_inv_0_i4_1_lut (.I0(\neo_pixel_transmitter.t0 [3]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[3]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_ctr_1109__i2 (.Q(bit_ctr[2]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[2]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 i1_4_lut_adj_922 (.I0(n33750), .I1(n33744), .I2(n31082), .I3(\state[1] ), 
            .O(n31830));
    defparam i1_4_lut_adj_922.LUT_INIT = 16'haa8a;
    SB_DFFESR bit_ctr_1109__i3 (.Q(bit_ctr[3]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[3]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i4 (.Q(bit_ctr[4]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[4]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i5 (.Q(bit_ctr[5]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[5]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i6 (.Q(bit_ctr[6]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[6]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_inv_0_i5_1_lut (.I0(\neo_pixel_transmitter.t0 [4]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[4]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_ctr_1109__i7 (.Q(bit_ctr[7]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[7]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i8 (.Q(bit_ctr[8]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[8]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i9 (.Q(bit_ctr[9]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[9]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i10 (.Q(bit_ctr[10]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[10]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i11 (.Q(bit_ctr[11]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[11]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i12 (.Q(bit_ctr[12]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[12]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i13 (.Q(bit_ctr[13]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[13]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i14 (.Q(bit_ctr[14]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[14]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i15 (.Q(bit_ctr[15]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[15]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i16 (.Q(bit_ctr[16]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[16]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i17 (.Q(bit_ctr[17]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[17]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i18 (.Q(bit_ctr[18]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[18]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i19 (.Q(bit_ctr[19]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[19]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i20 (.Q(bit_ctr[20]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[20]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i21 (.Q(bit_ctr[21]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[21]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i22 (.Q(bit_ctr[22]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[22]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i23 (.Q(bit_ctr[23]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[23]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i24 (.Q(bit_ctr[24]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[24]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i25 (.Q(bit_ctr[25]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[25]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i26 (.Q(bit_ctr[26]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[26]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i27 (.Q(bit_ctr[27]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[27]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i28 (.Q(bit_ctr[28]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[28]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i29 (.Q(bit_ctr[29]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[29]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i30 (.Q(bit_ctr[30]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[30]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_DFFESR bit_ctr_1109__i31 (.Q(bit_ctr[31]), .C(clk16MHz), .E(n4343), 
            .D(n133_adj_3973[31]), .R(n14779));   // verilog/neopixel.v(69[23:32])
    SB_LUT4 sub_14_add_2_33_lut (.I0(n33740), .I1(timer[31]), .I2(n1[31]), 
            .I3(n26132), .O(n11311)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_33_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_14_inv_0_i14_1_lut (.I0(\neo_pixel_transmitter.t0 [13]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[13]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_add_2_32_lut (.I0(n33738), .I1(timer[30]), .I2(n1[30]), 
            .I3(n26131), .O(n33740)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_32_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_32 (.CI(n26131), .I0(timer[30]), .I1(n1[30]), 
            .CO(n26132));
    SB_LUT4 sub_14_add_2_31_lut (.I0(n33736), .I1(timer[29]), .I2(n1[29]), 
            .I3(n26130), .O(n33738)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_31_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_31 (.CI(n26130), .I0(timer[29]), .I1(n1[29]), 
            .CO(n26131));
    SB_DFF timer_1108__i0 (.Q(timer[0]), .C(clk16MHz), .D(n133[0]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 i9557_2_lut (.I0(\state[0] ), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n13750));   // verilog/neopixel.v(36[4] 116[11])
    defparam i9557_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_2_lut (.I0(one_wire_N_380[2]), .I1(n4_adj_3935), .I2(GND_net), 
            .I3(GND_net), .O(n26595));
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i26470_4_lut (.I0(n11219), .I1(n26595), .I2(n4_adj_3928), 
            .I3(\state[0] ), .O(n31081));
    defparam i26470_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 equal_411_i8_2_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(GND_net), .I3(GND_net), .O(n8));
    defparam equal_411_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 sub_14_inv_0_i6_1_lut (.I0(\neo_pixel_transmitter.t0 [5]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[5]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_4_lut (.I0(bit_ctr[6]), .I1(bit_ctr[26]), .I2(bit_ctr[10]), 
            .I3(bit_ctr[9]), .O(n18));
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(bit_ctr[15]), .I1(n18), .I2(bit_ctr[13]), .I3(bit_ctr[11]), 
            .O(n20_adj_3936));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut (.I0(bit_ctr[18]), .I1(bit_ctr[19]), .I2(bit_ctr[8]), 
            .I3(bit_ctr[27]), .O(n19));
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut (.I0(bit_ctr[7]), .I1(bit_ctr[30]), .I2(bit_ctr[25]), 
            .I3(bit_ctr[24]), .O(n14_adj_3937));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_2_lut (.I0(bit_ctr[28]), .I1(bit_ctr[21]), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_3938));
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_ctr[22]), .I1(bit_ctr[14]), .I2(bit_ctr[5]), 
            .I3(bit_ctr[16]), .O(n13));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_923 (.I0(bit_ctr[3]), .I1(n19), .I2(bit_ctr[4]), 
            .I3(n20_adj_3936), .O(n12));
    defparam i1_4_lut_adj_923.LUT_INIT = 16'hffec;
    SB_LUT4 i7_4_lut_adj_924 (.I0(n13), .I1(n14_adj_3938), .I2(bit_ctr[17]), 
            .I3(n14_adj_3937), .O(n18_adj_3939));
    defparam i7_4_lut_adj_924.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_925 (.I0(bit_ctr[20]), .I1(bit_ctr[12]), .I2(bit_ctr[31]), 
            .I3(bit_ctr[29]), .O(n19_adj_3940));
    defparam i8_4_lut_adj_925.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(n19_adj_3940), .I1(bit_ctr[23]), .I2(n18_adj_3939), 
            .I3(n12), .O(\state_3__N_229[1] ));
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i296_2_lut (.I0(LED_c), .I1(\state_3__N_229[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n1401));   // verilog/neopixel.v(40[18] 45[12])
    defparam i296_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 sub_14_add_2_30_lut (.I0(n33734), .I1(timer[28]), .I2(n1[28]), 
            .I3(n26129), .O(n33736)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_30_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_2_lut (.I0(one_wire_N_380[2]), .I1(one_wire_N_380[3]), .I2(GND_net), 
            .I3(GND_net), .O(n4_adj_3928));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_926 (.I0(\one_wire_N_380[5] ), .I1(\one_wire_N_380[4] ), 
            .I2(GND_net), .I3(GND_net), .O(n33692));   // verilog/neopixel.v(104[14:39])
    defparam i1_2_lut_adj_926.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_927 (.I0(\one_wire_N_380[8] ), .I1(\one_wire_N_380[7] ), 
            .I2(\one_wire_N_380[6] ), .I3(n33692), .O(n33698));   // verilog/neopixel.v(104[14:39])
    defparam i1_4_lut_adj_927.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_928 (.I0(\one_wire_N_380[10] ), .I1(n11311), .I2(\one_wire_N_380[9] ), 
            .I3(n33698), .O(n11219));   // verilog/neopixel.v(104[14:39])
    defparam i1_4_lut_adj_928.LUT_INIT = 16'hfffe;
    SB_LUT4 i3092_4_lut (.I0(n22376), .I1(n1401), .I2(\state[1] ), .I3(n8), 
            .O(n4298));
    defparam i3092_4_lut.LUT_INIT = 16'h3f35;
    SB_LUT4 i3_4_lut (.I0(n4343), .I1(n1401), .I2(n4298), .I3(n13750), 
            .O(n14779));   // verilog/neopixel.v(69[23:32])
    defparam i3_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i26_4_lut (.I0(n8), .I1(n35513), .I2(\state[1] ), .I3(n31081), 
            .O(n4343));
    defparam i26_4_lut.LUT_INIT = 16'hc5c0;
    SB_CARRY sub_14_add_2_30 (.CI(n26129), .I0(timer[28]), .I1(n1[28]), 
            .CO(n26130));
    SB_LUT4 sub_14_add_2_29_lut (.I0(n33732), .I1(timer[27]), .I2(n1[27]), 
            .I3(n26128), .O(n33734)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_29_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_29 (.CI(n26128), .I0(timer[27]), .I1(n1[27]), 
            .CO(n26129));
    SB_LUT4 sub_14_add_2_28_lut (.I0(n33730), .I1(timer[26]), .I2(n1[26]), 
            .I3(n26127), .O(n33732)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_28_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1109_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[31]), 
            .I3(n26438), .O(n133_adj_3973[31])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1109_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[30]), 
            .I3(n26437), .O(n133_adj_3973[30])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_32 (.CI(n26437), .I0(GND_net), .I1(bit_ctr[30]), 
            .CO(n26438));
    SB_LUT4 bit_ctr_1109_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[29]), 
            .I3(n26436), .O(n133_adj_3973[29])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_31 (.CI(n26436), .I0(GND_net), .I1(bit_ctr[29]), 
            .CO(n26437));
    SB_LUT4 bit_ctr_1109_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[28]), 
            .I3(n26435), .O(n133_adj_3973[28])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_30 (.CI(n26435), .I0(GND_net), .I1(bit_ctr[28]), 
            .CO(n26436));
    SB_LUT4 bit_ctr_1109_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[27]), 
            .I3(n26434), .O(n133_adj_3973[27])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_29 (.CI(n26434), .I0(GND_net), .I1(bit_ctr[27]), 
            .CO(n26435));
    SB_LUT4 bit_ctr_1109_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[26]), 
            .I3(n26433), .O(n133_adj_3973[26])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_28 (.CI(n26433), .I0(GND_net), .I1(bit_ctr[26]), 
            .CO(n26434));
    SB_CARRY sub_14_add_2_28 (.CI(n26127), .I0(timer[26]), .I1(n1[26]), 
            .CO(n26128));
    SB_LUT4 bit_ctr_1109_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[25]), 
            .I3(n26432), .O(n133_adj_3973[25])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_27 (.CI(n26432), .I0(GND_net), .I1(bit_ctr[25]), 
            .CO(n26433));
    SB_LUT4 bit_ctr_1109_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[24]), 
            .I3(n26431), .O(n133_adj_3973[24])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_26 (.CI(n26431), .I0(GND_net), .I1(bit_ctr[24]), 
            .CO(n26432));
    SB_LUT4 bit_ctr_1109_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[23]), 
            .I3(n26430), .O(n133_adj_3973[23])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_25 (.CI(n26430), .I0(GND_net), .I1(bit_ctr[23]), 
            .CO(n26431));
    SB_LUT4 bit_ctr_1109_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[22]), 
            .I3(n26429), .O(n133_adj_3973[22])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_24 (.CI(n26429), .I0(GND_net), .I1(bit_ctr[22]), 
            .CO(n26430));
    SB_LUT4 bit_ctr_1109_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[21]), 
            .I3(n26428), .O(n133_adj_3973[21])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i7_1_lut (.I0(\neo_pixel_transmitter.t0 [6]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[6]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i8_1_lut (.I0(\neo_pixel_transmitter.t0 [7]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[7]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i9_1_lut (.I0(\neo_pixel_transmitter.t0 [8]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[8]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY bit_ctr_1109_add_4_23 (.CI(n26428), .I0(GND_net), .I1(bit_ctr[21]), 
            .CO(n26429));
    SB_LUT4 bit_ctr_1109_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[20]), 
            .I3(n26427), .O(n133_adj_3973[20])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i15_1_lut (.I0(\neo_pixel_transmitter.t0 [14]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[14]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_add_2_27_lut (.I0(n33728), .I1(timer[25]), .I2(n1[25]), 
            .I3(n26126), .O(n33730)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_27_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1109_add_4_22 (.CI(n26427), .I0(GND_net), .I1(bit_ctr[20]), 
            .CO(n26428));
    SB_CARRY sub_14_add_2_27 (.CI(n26126), .I0(timer[25]), .I1(n1[25]), 
            .CO(n26127));
    SB_LUT4 sub_14_add_2_26_lut (.I0(n33726), .I1(timer[24]), .I2(n1[24]), 
            .I3(n26125), .O(n33728)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_26_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_26 (.CI(n26125), .I0(timer[24]), .I1(n1[24]), 
            .CO(n26126));
    SB_LUT4 sub_14_add_2_25_lut (.I0(n33724), .I1(timer[23]), .I2(n1[23]), 
            .I3(n26124), .O(n33726)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_25_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1109_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[19]), 
            .I3(n26426), .O(n133_adj_3973[19])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_21 (.CI(n26426), .I0(GND_net), .I1(bit_ctr[19]), 
            .CO(n26427));
    SB_LUT4 i1_2_lut_adj_929 (.I0(bit_ctr[1]), .I1(\bit_ctr[0] ), .I2(GND_net), 
            .I3(GND_net), .O(\color_bit_N_423[1] ));
    defparam i1_2_lut_adj_929.LUT_INIT = 16'h6666;
    SB_LUT4 sub_14_inv_0_i16_1_lut (.I0(\neo_pixel_transmitter.t0 [15]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[15]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_1109_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[18]), 
            .I3(n26425), .O(n133_adj_3973[18])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_20 (.CI(n26425), .I0(GND_net), .I1(bit_ctr[18]), 
            .CO(n26426));
    SB_LUT4 bit_ctr_1109_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[17]), 
            .I3(n26424), .O(n133_adj_3973[17])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_25 (.CI(n26124), .I0(timer[23]), .I1(n1[23]), 
            .CO(n26125));
    SB_CARRY bit_ctr_1109_add_4_19 (.CI(n26424), .I0(GND_net), .I1(bit_ctr[17]), 
            .CO(n26425));
    SB_LUT4 sub_14_add_2_24_lut (.I0(n33722), .I1(timer[22]), .I2(n1[22]), 
            .I3(n26123), .O(n33724)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_24_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1109_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[16]), 
            .I3(n26423), .O(n133_adj_3973[16])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_24 (.CI(n26123), .I0(timer[22]), .I1(n1[22]), 
            .CO(n26124));
    SB_CARRY bit_ctr_1109_add_4_18 (.CI(n26423), .I0(GND_net), .I1(bit_ctr[16]), 
            .CO(n26424));
    SB_LUT4 bit_ctr_1109_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[15]), 
            .I3(n26422), .O(n133_adj_3973[15])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_17 (.CI(n26422), .I0(GND_net), .I1(bit_ctr[15]), 
            .CO(n26423));
    SB_LUT4 bit_ctr_1109_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[14]), 
            .I3(n26421), .O(n133_adj_3973[14])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_23_lut (.I0(n33720), .I1(timer[21]), .I2(n1[21]), 
            .I3(n26122), .O(n33722)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_23_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1109_add_4_16 (.CI(n26421), .I0(GND_net), .I1(bit_ctr[14]), 
            .CO(n26422));
    SB_LUT4 bit_ctr_1109_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[13]), 
            .I3(n26420), .O(n133_adj_3973[13])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32661_4_lut (.I0(\bit_ctr[0] ), .I1(\neopxl_color[22] ), 
            .I2(\neopxl_color[23] ), .I3(bit_ctr[1]), .O(n37287));
    defparam bit_ctr_0__bdd_4_lut_32661_4_lut.LUT_INIT = 16'heea0;
    SB_CARRY bit_ctr_1109_add_4_15 (.CI(n26420), .I0(GND_net), .I1(bit_ctr[13]), 
            .CO(n26421));
    SB_LUT4 bit_ctr_1109_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[12]), 
            .I3(n26419), .O(n133_adj_3973[12])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_23 (.CI(n26122), .I0(timer[21]), .I1(n1[21]), 
            .CO(n26123));
    SB_CARRY bit_ctr_1109_add_4_14 (.CI(n26419), .I0(GND_net), .I1(bit_ctr[12]), 
            .CO(n26420));
    SB_LUT4 bit_ctr_1109_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[11]), 
            .I3(n26418), .O(n133_adj_3973[11])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_22_lut (.I0(n33718), .I1(timer[20]), .I2(n1[20]), 
            .I3(n26121), .O(n33720)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_22_lut.LUT_INIT = 16'hebbe;
    SB_CARRY bit_ctr_1109_add_4_13 (.CI(n26418), .I0(GND_net), .I1(bit_ctr[11]), 
            .CO(n26419));
    SB_LUT4 bit_ctr_1109_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[10]), 
            .I3(n26417), .O(n133_adj_3973[10])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_12 (.CI(n26417), .I0(GND_net), .I1(bit_ctr[10]), 
            .CO(n26418));
    SB_LUT4 bit_ctr_1109_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[9]), 
            .I3(n26416), .O(n133_adj_3973[9])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32627_4_lut_4_lut (.I0(bit_ctr[1]), .I1(\bit_ctr[0] ), 
            .I2(\neopxl_color[5] ), .I3(\neopxl_color[4] ), .O(n37275));   // verilog/neopixel.v(19[6:15])
    defparam bit_ctr_0__bdd_4_lut_32627_4_lut_4_lut.LUT_INIT = 16'hd5c4;
    SB_CARRY bit_ctr_1109_add_4_11 (.CI(n26416), .I0(GND_net), .I1(bit_ctr[9]), 
            .CO(n26417));
    SB_LUT4 bit_ctr_1109_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[8]), 
            .I3(n26415), .O(n133_adj_3973[8])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_10 (.CI(n26415), .I0(GND_net), .I1(bit_ctr[8]), 
            .CO(n26416));
    SB_LUT4 timer_1108_add_4_33_lut (.I0(GND_net), .I1(GND_net), .I2(timer[31]), 
            .I3(n26170), .O(n133[31])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_ctr_1109_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[7]), 
            .I3(n26414), .O(n133_adj_3973[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1108_add_4_32_lut (.I0(GND_net), .I1(GND_net), .I2(timer[30]), 
            .I3(n26169), .O(n133[30])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_32 (.CI(n26169), .I0(GND_net), .I1(timer[30]), 
            .CO(n26170));
    SB_CARRY bit_ctr_1109_add_4_9 (.CI(n26414), .I0(GND_net), .I1(bit_ctr[7]), 
            .CO(n26415));
    SB_LUT4 bit_ctr_1109_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[6]), 
            .I3(n26413), .O(n133_adj_3973[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_8 (.CI(n26413), .I0(GND_net), .I1(bit_ctr[6]), 
            .CO(n26414));
    SB_LUT4 bit_ctr_1109_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[5]), 
            .I3(n26412), .O(n133_adj_3973[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1108_add_4_31_lut (.I0(GND_net), .I1(GND_net), .I2(timer[29]), 
            .I3(n26168), .O(n133[29])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_22 (.CI(n26121), .I0(timer[20]), .I1(n1[20]), 
            .CO(n26122));
    SB_LUT4 sub_14_add_2_21_lut (.I0(n33716), .I1(timer[19]), .I2(n1[19]), 
            .I3(n26120), .O(n33718)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_21_lut.LUT_INIT = 16'hebbe;
    SB_CARRY timer_1108_add_4_31 (.CI(n26168), .I0(GND_net), .I1(timer[29]), 
            .CO(n26169));
    SB_LUT4 timer_1108_add_4_30_lut (.I0(GND_net), .I1(GND_net), .I2(timer[28]), 
            .I3(n26167), .O(n133[28])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_7 (.CI(n26412), .I0(GND_net), .I1(bit_ctr[5]), 
            .CO(n26413));
    SB_LUT4 bit_ctr_1109_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[4]), 
            .I3(n26411), .O(n133_adj_3973[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_21 (.CI(n26120), .I0(timer[19]), .I1(n1[19]), 
            .CO(n26121));
    SB_CARRY bit_ctr_1109_add_4_6 (.CI(n26411), .I0(GND_net), .I1(bit_ctr[4]), 
            .CO(n26412));
    SB_LUT4 bit_ctr_1109_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[3]), 
            .I3(n26410), .O(n133_adj_3973[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_5 (.CI(n26410), .I0(GND_net), .I1(bit_ctr[3]), 
            .CO(n26411));
    SB_LUT4 sub_14_add_2_20_lut (.I0(n33714), .I1(timer[18]), .I2(n1[18]), 
            .I3(n26119), .O(n33716)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_20_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1109_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[2]), 
            .I3(n26409), .O(n133_adj_3973[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_20 (.CI(n26119), .I0(timer[18]), .I1(n1[18]), 
            .CO(n26120));
    SB_CARRY bit_ctr_1109_add_4_4 (.CI(n26409), .I0(GND_net), .I1(bit_ctr[2]), 
            .CO(n26410));
    SB_LUT4 bit_ctr_1109_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_ctr[1]), 
            .I3(n26408), .O(n133_adj_3973[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_ctr_1109_add_4_3 (.CI(n26408), .I0(GND_net), .I1(bit_ctr[1]), 
            .CO(n26409));
    SB_CARRY timer_1108_add_4_30 (.CI(n26167), .I0(GND_net), .I1(timer[28]), 
            .CO(n26168));
    SB_LUT4 timer_1108_add_4_29_lut (.I0(GND_net), .I1(GND_net), .I2(timer[27]), 
            .I3(n26166), .O(n133[27])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_19_lut (.I0(n33712), .I1(timer[17]), .I2(n1[17]), 
            .I3(n26118), .O(n33714)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_19_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 bit_ctr_1109_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(\bit_ctr[0] ), 
            .I3(VCC_net), .O(n133_adj_3973[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_ctr_1109_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_29 (.CI(n26166), .I0(GND_net), .I1(timer[27]), 
            .CO(n26167));
    SB_CARRY bit_ctr_1109_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(\bit_ctr[0] ), 
            .CO(n26408));
    SB_CARRY sub_14_add_2_19 (.CI(n26118), .I0(timer[17]), .I1(n1[17]), 
            .CO(n26119));
    SB_LUT4 sub_14_inv_0_i17_1_lut (.I0(\neo_pixel_transmitter.t0 [16]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[16]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i17_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_add_2_18_lut (.I0(n33710), .I1(timer[16]), .I2(n1[16]), 
            .I3(n26117), .O(n33712)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_18_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 timer_1108_add_4_28_lut (.I0(GND_net), .I1(GND_net), .I2(timer[26]), 
            .I3(n26165), .O(n133[26])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_28 (.CI(n26165), .I0(GND_net), .I1(timer[26]), 
            .CO(n26166));
    SB_CARRY sub_14_add_2_18 (.CI(n26117), .I0(timer[16]), .I1(n1[16]), 
            .CO(n26118));
    SB_LUT4 timer_1108_add_4_27_lut (.I0(GND_net), .I1(GND_net), .I2(timer[25]), 
            .I3(n26164), .O(n133[25])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i18_1_lut (.I0(\neo_pixel_transmitter.t0 [17]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[17]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i18_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY timer_1108_add_4_27 (.CI(n26164), .I0(GND_net), .I1(timer[25]), 
            .CO(n26165));
    SB_LUT4 sub_14_inv_0_i19_1_lut (.I0(\neo_pixel_transmitter.t0 [18]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[18]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i19_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 timer_1108_add_4_26_lut (.I0(GND_net), .I1(GND_net), .I2(timer[24]), 
            .I3(n26163), .O(n133[24])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_930 (.I0(\state[0] ), .I1(\neo_pixel_transmitter.done ), 
            .I2(GND_net), .I3(GND_net), .O(n30313));
    defparam i1_2_lut_adj_930.LUT_INIT = 16'h2222;
    SB_LUT4 sub_14_add_2_17_lut (.I0(n33708), .I1(timer[15]), .I2(n1[15]), 
            .I3(n26116), .O(n33710)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_17_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i1_2_lut_adj_931 (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(GND_net), .I3(GND_net), .O(n33744));
    defparam i1_2_lut_adj_931.LUT_INIT = 16'heeee;
    SB_LUT4 n37335_bdd_4_lut (.I0(n37335), .I1(\neopxl_color[17] ), .I2(\neopxl_color[16] ), 
            .I3(\color_bit_N_423[1] ), .O(n37338));
    defparam n37335_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY timer_1108_add_4_26 (.CI(n26163), .I0(GND_net), .I1(timer[24]), 
            .CO(n26164));
    SB_CARRY sub_14_add_2_17 (.CI(n26116), .I0(timer[15]), .I1(n1[15]), 
            .CO(n26117));
    SB_LUT4 n37323_bdd_4_lut (.I0(n37323), .I1(\neopxl_color[1] ), .I2(\neopxl_color[0] ), 
            .I3(\color_bit_N_423[1] ), .O(n37326));
    defparam n37323_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 timer_1108_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(timer[23]), 
            .I3(n26162), .O(n133[23])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_25 (.CI(n26162), .I0(GND_net), .I1(timer[23]), 
            .CO(n26163));
    SB_LUT4 timer_1108_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(timer[22]), 
            .I3(n26161), .O(n133[22])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_16_lut (.I0(n33706), .I1(timer[14]), .I2(n1[14]), 
            .I3(n26115), .O(n33708)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_16_lut.LUT_INIT = 16'hebbe;
    SB_CARRY timer_1108_add_4_24 (.CI(n26161), .I0(GND_net), .I1(timer[22]), 
            .CO(n26162));
    SB_CARRY sub_14_add_2_16 (.CI(n26115), .I0(timer[14]), .I1(n1[14]), 
            .CO(n26116));
    SB_LUT4 sub_14_add_2_15_lut (.I0(n33704), .I1(timer[13]), .I2(n1[13]), 
            .I3(n26114), .O(n33706)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_15_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_15 (.CI(n26114), .I0(timer[13]), .I1(n1[13]), 
            .CO(n26115));
    SB_LUT4 i1_4_lut_adj_932 (.I0(one_wire_N_380[2]), .I1(n30363), .I2(one_wire_N_380[3]), 
            .I3(n4_adj_3935), .O(n103));
    defparam i1_4_lut_adj_932.LUT_INIT = 16'h45cd;
    SB_DFF \neo_pixel_transmitter.t0_i0_i0  (.Q(\neo_pixel_transmitter.t0 [0]), 
           .C(clk16MHz), .D(n15187));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFE state_i1 (.Q(\state[1] ), .C(clk16MHz), .E(VCC_net), .D(n15165));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 sub_14_add_2_14_lut (.I0(one_wire_N_380[11]), .I1(timer[12]), 
            .I2(n1[12]), .I3(n26113), .O(n33704)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_14_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_14_add_2_14 (.CI(n26113), .I0(timer[12]), .I1(n1[12]), 
            .CO(n26114));
    SB_LUT4 timer_1108_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(timer[21]), 
            .I3(n26160), .O(n133[21])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i32577_3_lut (.I0(n31136), .I1(n103), .I2(n11311), .I3(GND_net), 
            .O(n32684));
    defparam i32577_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 sub_14_inv_0_i20_1_lut (.I0(\neo_pixel_transmitter.t0 [19]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[19]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i20_1_lut.LUT_INIT = 16'h5555;
    SB_DFF timer_1108__i31 (.Q(timer[31]), .C(clk16MHz), .D(n133[31]));   // verilog/neopixel.v(12[12:21])
    SB_CARRY timer_1108_add_4_23 (.CI(n26160), .I0(GND_net), .I1(timer[21]), 
            .CO(n26161));
    SB_DFF timer_1108__i30 (.Q(timer[30]), .C(clk16MHz), .D(n133[30]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i29 (.Q(timer[29]), .C(clk16MHz), .D(n133[29]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i28 (.Q(timer[28]), .C(clk16MHz), .D(n133[28]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i27 (.Q(timer[27]), .C(clk16MHz), .D(n133[27]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i26 (.Q(timer[26]), .C(clk16MHz), .D(n133[26]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i25 (.Q(timer[25]), .C(clk16MHz), .D(n133[25]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i24 (.Q(timer[24]), .C(clk16MHz), .D(n133[24]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i23 (.Q(timer[23]), .C(clk16MHz), .D(n133[23]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i22 (.Q(timer[22]), .C(clk16MHz), .D(n133[22]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i21 (.Q(timer[21]), .C(clk16MHz), .D(n133[21]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i20 (.Q(timer[20]), .C(clk16MHz), .D(n133[20]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i19 (.Q(timer[19]), .C(clk16MHz), .D(n133[19]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i18 (.Q(timer[18]), .C(clk16MHz), .D(n133[18]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i17 (.Q(timer[17]), .C(clk16MHz), .D(n133[17]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i16 (.Q(timer[16]), .C(clk16MHz), .D(n133[16]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i15 (.Q(timer[15]), .C(clk16MHz), .D(n133[15]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i14 (.Q(timer[14]), .C(clk16MHz), .D(n133[14]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i13 (.Q(timer[13]), .C(clk16MHz), .D(n133[13]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i12 (.Q(timer[12]), .C(clk16MHz), .D(n133[12]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i11 (.Q(timer[11]), .C(clk16MHz), .D(n133[11]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i10 (.Q(timer[10]), .C(clk16MHz), .D(n133[10]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i9 (.Q(timer[9]), .C(clk16MHz), .D(n133[9]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i8 (.Q(timer[8]), .C(clk16MHz), .D(n133[8]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i7 (.Q(timer[7]), .C(clk16MHz), .D(n133[7]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i6 (.Q(timer[6]), .C(clk16MHz), .D(n133[6]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i5 (.Q(timer[5]), .C(clk16MHz), .D(n133[5]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i4 (.Q(timer[4]), .C(clk16MHz), .D(n133[4]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i3 (.Q(timer[3]), .C(clk16MHz), .D(n133[3]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i2 (.Q(timer[2]), .C(clk16MHz), .D(n133[2]));   // verilog/neopixel.v(12[12:21])
    SB_DFF timer_1108__i1 (.Q(timer[1]), .C(clk16MHz), .D(n133[1]));   // verilog/neopixel.v(12[12:21])
    SB_LUT4 sub_14_add_2_13_lut (.I0(GND_net), .I1(timer[11]), .I2(n1[11]), 
            .I3(n26112), .O(one_wire_N_380[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_13 (.CI(n26112), .I0(timer[11]), .I1(n1[11]), 
            .CO(n26113));
    SB_LUT4 timer_1108_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(timer[20]), 
            .I3(n26159), .O(n133[20])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_22 (.CI(n26159), .I0(GND_net), .I1(timer[20]), 
            .CO(n26160));
    SB_LUT4 sub_14_inv_0_i10_1_lut (.I0(\neo_pixel_transmitter.t0 [9]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[9]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_add_2_12_lut (.I0(GND_net), .I1(timer[10]), .I2(n1[10]), 
            .I3(n26111), .O(\one_wire_N_380[10] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_12 (.CI(n26111), .I0(timer[10]), .I1(n1[10]), 
            .CO(n26112));
    SB_LUT4 timer_1108_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(timer[19]), 
            .I3(n26158), .O(n133[19])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_21 (.CI(n26158), .I0(GND_net), .I1(timer[19]), 
            .CO(n26159));
    SB_LUT4 timer_1108_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(timer[18]), 
            .I3(n26157), .O(n133[18])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_20 (.CI(n26157), .I0(GND_net), .I1(timer[18]), 
            .CO(n26158));
    SB_LUT4 timer_1108_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(timer[17]), 
            .I3(n26156), .O(n133[17])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_11_lut (.I0(GND_net), .I1(timer[9]), .I2(n1[9]), 
            .I3(n26110), .O(\one_wire_N_380[9] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_19 (.CI(n26156), .I0(GND_net), .I1(timer[17]), 
            .CO(n26157));
    SB_CARRY sub_14_add_2_11 (.CI(n26110), .I0(timer[9]), .I1(n1[9]), 
            .CO(n26111));
    SB_DFF \neo_pixel_transmitter.t0_i0_i1  (.Q(\neo_pixel_transmitter.t0 [1]), 
           .C(clk16MHz), .D(n15705));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i2  (.Q(\neo_pixel_transmitter.t0 [2]), 
           .C(clk16MHz), .D(n15704));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i3  (.Q(\neo_pixel_transmitter.t0 [3]), 
           .C(clk16MHz), .D(n15703));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i4  (.Q(\neo_pixel_transmitter.t0 [4]), 
           .C(clk16MHz), .D(n15702));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i5  (.Q(\neo_pixel_transmitter.t0 [5]), 
           .C(clk16MHz), .D(n15701));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i6  (.Q(\neo_pixel_transmitter.t0 [6]), 
           .C(clk16MHz), .D(n15700));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i7  (.Q(\neo_pixel_transmitter.t0 [7]), 
           .C(clk16MHz), .D(n15699));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i8  (.Q(\neo_pixel_transmitter.t0 [8]), 
           .C(clk16MHz), .D(n15698));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i9  (.Q(\neo_pixel_transmitter.t0 [9]), 
           .C(clk16MHz), .D(n15697));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i10  (.Q(\neo_pixel_transmitter.t0 [10]), 
           .C(clk16MHz), .D(n15696));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i11  (.Q(\neo_pixel_transmitter.t0 [11]), 
           .C(clk16MHz), .D(n15695));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i12  (.Q(\neo_pixel_transmitter.t0 [12]), 
           .C(clk16MHz), .D(n15694));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i13  (.Q(\neo_pixel_transmitter.t0 [13]), 
           .C(clk16MHz), .D(n15693));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i14  (.Q(\neo_pixel_transmitter.t0 [14]), 
           .C(clk16MHz), .D(n15692));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i15  (.Q(\neo_pixel_transmitter.t0 [15]), 
           .C(clk16MHz), .D(n15690));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i16  (.Q(\neo_pixel_transmitter.t0 [16]), 
           .C(clk16MHz), .D(n15689));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i17  (.Q(\neo_pixel_transmitter.t0 [17]), 
           .C(clk16MHz), .D(n15688));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i18  (.Q(\neo_pixel_transmitter.t0 [18]), 
           .C(clk16MHz), .D(n15687));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i19  (.Q(\neo_pixel_transmitter.t0 [19]), 
           .C(clk16MHz), .D(n15686));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i20  (.Q(\neo_pixel_transmitter.t0 [20]), 
           .C(clk16MHz), .D(n15685));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i21  (.Q(\neo_pixel_transmitter.t0 [21]), 
           .C(clk16MHz), .D(n15684));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i22  (.Q(\neo_pixel_transmitter.t0 [22]), 
           .C(clk16MHz), .D(n15683));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i23  (.Q(\neo_pixel_transmitter.t0 [23]), 
           .C(clk16MHz), .D(n15682));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i24  (.Q(\neo_pixel_transmitter.t0 [24]), 
           .C(clk16MHz), .D(n15681));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i25  (.Q(\neo_pixel_transmitter.t0 [25]), 
           .C(clk16MHz), .D(n15680));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_1108_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(timer[16]), 
            .I3(n26155), .O(n133[16])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_10_lut (.I0(GND_net), .I1(timer[8]), .I2(n1[8]), 
            .I3(n26109), .O(\one_wire_N_380[8] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_10 (.CI(n26109), .I0(timer[8]), .I1(n1[8]), 
            .CO(n26110));
    SB_CARRY timer_1108_add_4_18 (.CI(n26155), .I0(GND_net), .I1(timer[16]), 
            .CO(n26156));
    SB_LUT4 sub_14_add_2_9_lut (.I0(GND_net), .I1(timer[7]), .I2(n1[7]), 
            .I3(n26108), .O(\one_wire_N_380[7] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1108_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(timer[15]), 
            .I3(n26154), .O(n133[15])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_9 (.CI(n26108), .I0(timer[7]), .I1(n1[7]), .CO(n26109));
    SB_LUT4 sub_14_add_2_8_lut (.I0(GND_net), .I1(timer[6]), .I2(n1[6]), 
            .I3(n26107), .O(\one_wire_N_380[6] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_17 (.CI(n26154), .I0(GND_net), .I1(timer[15]), 
            .CO(n26155));
    SB_LUT4 timer_1108_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(timer[14]), 
            .I3(n26153), .O(n133[14])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_16 (.CI(n26153), .I0(GND_net), .I1(timer[14]), 
            .CO(n26154));
    SB_LUT4 timer_1108_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(timer[13]), 
            .I3(n26152), .O(n133[13])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_inv_0_i11_1_lut (.I0(\neo_pixel_transmitter.t0 [10]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[10]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_DFF \neo_pixel_transmitter.t0_i0_i26  (.Q(\neo_pixel_transmitter.t0 [26]), 
           .C(clk16MHz), .D(n15679));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i27  (.Q(\neo_pixel_transmitter.t0 [27]), 
           .C(clk16MHz), .D(n15678));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i28  (.Q(\neo_pixel_transmitter.t0 [28]), 
           .C(clk16MHz), .D(n15677));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i29  (.Q(\neo_pixel_transmitter.t0 [29]), 
           .C(clk16MHz), .D(n15676));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i30  (.Q(\neo_pixel_transmitter.t0 [30]), 
           .C(clk16MHz), .D(n15675));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFF \neo_pixel_transmitter.t0_i0_i31  (.Q(\neo_pixel_transmitter.t0 [31]), 
           .C(clk16MHz), .D(n15673));   // verilog/neopixel.v(35[12] 117[6])
    SB_CARRY sub_14_add_2_8 (.CI(n26107), .I0(timer[6]), .I1(n1[6]), .CO(n26108));
    SB_CARRY timer_1108_add_4_15 (.CI(n26152), .I0(GND_net), .I1(timer[13]), 
            .CO(n26153));
    SB_LUT4 sub_14_add_2_7_lut (.I0(GND_net), .I1(timer[5]), .I2(n1[5]), 
            .I3(n26106), .O(\one_wire_N_380[5] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 timer_1108_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(timer[12]), 
            .I3(n26151), .O(n133[12])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_7 (.CI(n26106), .I0(timer[5]), .I1(n1[5]), .CO(n26107));
    SB_CARRY timer_1108_add_4_14 (.CI(n26151), .I0(GND_net), .I1(timer[12]), 
            .CO(n26152));
    SB_LUT4 timer_1108_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(timer[11]), 
            .I3(n26150), .O(n133[11])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_13 (.CI(n26150), .I0(GND_net), .I1(timer[11]), 
            .CO(n26151));
    SB_LUT4 timer_1108_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(timer[10]), 
            .I3(n26149), .O(n133[10])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_12 (.CI(n26149), .I0(GND_net), .I1(timer[10]), 
            .CO(n26150));
    SB_LUT4 timer_1108_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(timer[9]), 
            .I3(n26148), .O(n133[9])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_14_add_2_6_lut (.I0(GND_net), .I1(timer[4]), .I2(n1[4]), 
            .I3(n26105), .O(\one_wire_N_380[4] )) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_6 (.CI(n26105), .I0(timer[4]), .I1(n1[4]), .CO(n26106));
    SB_CARRY timer_1108_add_4_11 (.CI(n26148), .I0(GND_net), .I1(timer[9]), 
            .CO(n26149));
    SB_LUT4 sub_14_add_2_5_lut (.I0(GND_net), .I1(timer[3]), .I2(n1[3]), 
            .I3(n26104), .O(one_wire_N_380[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_718_Mux_0_i3_3_lut_3_lut (.I0(\neo_pixel_transmitter.done ), 
            .I1(start), .I2(\state[1] ), .I3(GND_net), .O(\neo_pixel_transmitter.done_N_437 ));   // verilog/neopixel.v(36[4] 116[11])
    defparam mux_718_Mux_0_i3_3_lut_3_lut.LUT_INIT = 16'ha1a1;
    SB_DFF start_103 (.Q(start), .C(clk16MHz), .D(n29597));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_1108_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(timer[8]), 
            .I3(n26147), .O(n133[8])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_5 (.CI(n26104), .I0(timer[3]), .I1(n1[3]), .CO(n26105));
    SB_LUT4 sub_14_add_2_4_lut (.I0(GND_net), .I1(timer[2]), .I2(n1[2]), 
            .I3(n26103), .O(one_wire_N_380[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_10 (.CI(n26147), .I0(GND_net), .I1(timer[8]), 
            .CO(n26148));
    SB_LUT4 i1_3_lut_2_lut (.I0(\state[0] ), .I1(\neo_pixel_transmitter.done ), 
            .I2(GND_net), .I3(GND_net), .O(n30363));
    defparam i1_3_lut_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESS state_i0 (.Q(\state[0] ), .C(clk16MHz), .E(n13383), .D(state_3__N_229[0]), 
            .S(n14778));   // verilog/neopixel.v(35[12] 117[6])
    SB_DFFESR one_wire_108 (.Q(NEOPXL_c), .C(clk16MHz), .E(n13399), .D(\neo_pixel_transmitter.done_N_443 ), 
            .R(n31935));   // verilog/neopixel.v(35[12] 117[6])
    SB_LUT4 timer_1108_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(timer[7]), 
            .I3(n26146), .O(n133[7])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY timer_1108_add_4_9 (.CI(n26146), .I0(GND_net), .I1(timer[7]), 
            .CO(n26147));
    SB_LUT4 timer_1108_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(timer[6]), 
            .I3(n26145), .O(n133[6])) /* synthesis syn_instantiated=1 */ ;
    defparam timer_1108_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_14_add_2_4 (.CI(n26103), .I0(timer[2]), .I1(n1[2]), .CO(n26104));
    SB_CARRY timer_1108_add_4_8 (.CI(n26145), .I0(GND_net), .I1(timer[6]), 
            .CO(n26146));
    SB_LUT4 sub_14_add_2_3_lut (.I0(one_wire_N_380[3]), .I1(timer[1]), .I2(n1[1]), 
            .I3(n26102), .O(n4_adj_3935)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_14_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_14_inv_0_i21_1_lut (.I0(\neo_pixel_transmitter.t0 [20]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[20]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i21_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32670_4_lut (.I0(\bit_ctr[0] ), .I1(\neopxl_color[2] ), 
            .I2(\neopxl_color[3] ), .I3(bit_ctr[1]), .O(n37323));
    defparam bit_ctr_0__bdd_4_lut_32670_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 bit_ctr_0__bdd_4_lut_32694_4_lut (.I0(\bit_ctr[0] ), .I1(\neopxl_color[18] ), 
            .I2(\neopxl_color[19] ), .I3(bit_ctr[1]), .O(n37335));
    defparam bit_ctr_0__bdd_4_lut_32694_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 sub_14_inv_0_i22_1_lut (.I0(\neo_pixel_transmitter.t0 [21]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[21]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i22_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i23_1_lut (.I0(\neo_pixel_transmitter.t0 [22]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[22]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i23_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i1_1_lut (.I0(\neo_pixel_transmitter.t0 [0]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[0]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i31362_2_lut_3_lut (.I0(LED_c), .I1(\state_3__N_229[1] ), .I2(\state[0] ), 
            .I3(GND_net), .O(n35513));
    defparam i31362_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_2_lut_3_lut (.I0(n11219), .I1(one_wire_N_380[2]), .I2(one_wire_N_380[3]), 
            .I3(GND_net), .O(n22376));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 sub_14_inv_0_i2_1_lut (.I0(\neo_pixel_transmitter.t0 [1]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[1]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
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
    SB_LUT4 sub_14_inv_0_i12_1_lut (.I0(\neo_pixel_transmitter.t0 [11]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[11]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_14_inv_0_i28_1_lut (.I0(\neo_pixel_transmitter.t0 [27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[27]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i28_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_4_lut (.I0(\neo_pixel_transmitter.done ), .I1(start), 
            .I2(n31081), .I3(\state[1] ), .O(n33750));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hff13;
    SB_LUT4 sub_14_inv_0_i29_1_lut (.I0(\neo_pixel_transmitter.t0 [28]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(n1[28]));   // verilog/neopixel.v(53[15:25])
    defparam sub_14_inv_0_i29_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10575_2_lut_3_lut (.I0(n13383), .I1(\state[0] ), .I2(\state[1] ), 
            .I3(GND_net), .O(n14778));   // verilog/neopixel.v(35[12] 117[6])
    defparam i10575_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i18222_2_lut_3_lut (.I0(bit_ctr[1]), .I1(\bit_ctr[0] ), .I2(bit_ctr[2]), 
            .I3(GND_net), .O(n22360));
    defparam i18222_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_ctr[1]), .I1(\bit_ctr[0] ), .I2(bit_ctr[2]), 
            .I3(GND_net), .O(\color_bit_N_423[2] ));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1e1e;
    SB_LUT4 n37275_bdd_4_lut_4_lut (.I0(\color_bit_N_423[1] ), .I1(\neopxl_color[6] ), 
            .I2(\neopxl_color[7] ), .I3(n37275), .O(n37278));   // verilog/neopixel.v(19[6:15])
    defparam n37275_bdd_4_lut_4_lut.LUT_INIT = 16'hf588;
    SB_LUT4 n37287_bdd_4_lut (.I0(n37287), .I1(\neopxl_color[21] ), .I2(\neopxl_color[20] ), 
            .I3(\color_bit_N_423[1] ), .O(n37290));
    defparam n37287_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i26531_2_lut_3_lut (.I0(n31136), .I1(one_wire_N_380[2]), .I2(n4_adj_3935), 
            .I3(GND_net), .O(n31142));
    defparam i26531_2_lut_3_lut.LUT_INIT = 16'heaea;
    
endmodule
